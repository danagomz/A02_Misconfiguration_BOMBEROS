from django.shortcuts import render, redirect, get_object_or_404
from .models import Orden, DetalleOrden, Factura
from .forms import OrdenForm, DetalleOrdenForm
from django.contrib import messages
from django.core.paginator import Paginator
from django.db.models import Q
from django.db import connection
from django.db import IntegrityError
from decimal import Decimal
from django.db.models import Sum, F
from django.db import transaction
from django.utils import timezone
from apps.inventario.models import Inventario
import uuid

# ------------------------------------------------------------------
# Tarifas de IVA vigentes en Colombia, aplicadas según la categoría
# del producto (columna ya existente en PRODUCTO, sin tocar el esquema).
#   - Capacitación: son servicios educativos -> Exento (0%)
#   - Botiquines: insumos básicos de salud -> Diferencial (5%)
#   - Cualquier otra categoría (Extintores, Camillas, EPP, Señalización,
#     Sistemas Fijos, Detección de Incendios, Accesorios, Mangueras, etc.)
#     -> Tarifa General (19%), que es la que aplica a la mayoría de
#     productos de seguridad industrial.
# ------------------------------------------------------------------
TARIFAS_IVA_POR_CATEGORIA = {
    "Capacitación": Decimal("0.00"),
    "Botiquines": Decimal("0.05"),
}
TARIFA_IVA_GENERAL = Decimal("0.19")


def obtener_tarifa_iva(categoria):
    return TARIFAS_IVA_POR_CATEGORIA.get(categoria, TARIFA_IVA_GENERAL)

def lista_ventas(request):
    busqueda = request.GET.get("buscar", "")
    ordenes = Orden.objects.select_related("id_cliente", "id_empleado", "id_sede").all()
    if busqueda:
        ordenes = ordenes.filter(
            Q(id_cliente_nombre_razon_social_icontains=busqueda) |
            Q(estado__icontains=busqueda)
        )
    ordenes = ordenes.order_by("-fecha")
    paginador = Paginator(ordenes, 10)
    numero_pagina = request.GET.get("page")
    ordenes = paginador.get_page(numero_pagina)
    return render(request, "ventas/lista.html", {
        "ordenes": ordenes,
        "busqueda": busqueda
    })

def crear_venta(request):
    if request.method == "POST":
        formulario = OrdenForm(request.POST)
        if formulario.is_valid():

            with connection.cursor() as cursor:
                cursor.execute("""
                               SELECT setval(pg_get_serial_sequence('orden', 'id_orden'),
                                             COALESCE(MAX(id_orden), 1))
                               FROM orden;
                               """)
            orden = formulario.save(commit=False) #por el momento no guardar
            orden.total = 0 #total está en 0 al inicio
            orden.save()
            messages.success(request, f"Orden #{orden.id_orden} creada. Ahora agrega los productos vendidos.")
            return redirect("detalle_venta", id_orden=orden.id_orden)
    else:
        formulario = OrdenForm()
    return render(request, "ventas/crear.html", {
        "formulario": formulario,
        "titulo": "Nueva Orden"
    })

def editar_venta(request, id_orden):
    orden = get_object_or_404(Orden, pk=id_orden)

    if not orden.es_editable:
        messages.error(request, "Esta orden ya fue facturada y no puede editarse.")
        return redirect("lista_ventas")

    if request.method == "POST":
        formulario = OrdenForm(request.POST, instance=orden)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Orden actualizada correctamente.")
            return redirect("lista_ventas")
    else:
        formulario = OrdenForm(instance=orden)
    return render(request, "ventas/editar.html", {
        "formulario": formulario,
        "titulo": "Editar Orden"
    })

def eliminar_venta(request, id_orden):
    orden = get_object_or_404(Orden, pk=id_orden)

    if request.method == "POST":
        if orden.estado == "Entregada":
            messages.error(request, "Restricción de Auditoría: No se puede eliminar una orden en estado 'Entregada'.")
            return redirect("lista_ventas")

        try:
            orden.delete()
            messages.success(request, "Orden eliminada correctamente.")
        except IntegrityError:
            # Captura si la orden ya tiene una FACTURA amarrada
            messages.error(request, "No es posible eliminar esta orden porque ya tiene una Factura Electrónica emitida en el histórico.")
        return redirect("lista_ventas")

    # Si entra por GET (solo dando clic al botón inicial), muestra la pantalla de confirmación normal
    return render(request, "ventas/eliminar.html", {"orden": orden})

def _recalcular_total(orden):
    total = orden.detalles.aggregate(suma=Sum("subtotal"))["suma"] or 0
    orden.total = total
    orden.save(update_fields=["total"])

def detalle_venta(request, id_orden):
    orden = get_object_or_404(Orden, pk=id_orden)
    detalles = orden.detalles.select_related("id_producto").all()
    factura = Factura.objects.filter(id_orden=orden).first()
    formulario = None

    detalles_con_iva = []
    for d in detalles:
        tarifa = obtener_tarifa_iva(d.id_producto.categoria)
        iva_linea = (d.subtotal * tarifa).quantize(Decimal("0.01"))
        detalles_con_iva.append({
            "producto": d.id_producto.nombre,
            "cantidad": d.cantidad,
            "valor_unitario": d.id_producto.precio,
            "subtotal": d.subtotal,
            "tarifa_iva": tarifa * 100,
            "iva_linea": iva_linea,
        })

    if orden.es_editable and request.method == "POST":
        formulario = DetalleOrdenForm(request.POST)
        if formulario.is_valid():

            producto = formulario.cleaned_data["id_producto"]
            cantidad = formulario.cleaned_data["cantidad"]

            inventario = Inventario.objects.filter(id_producto=producto).first()
            if inventario and inventario.stock_actual < cantidad:
                messages.error(request, f"Stock insuficiente de {producto.nombre}. Disponible: {inventario.stock_actual}.")
                return redirect("detalle_venta", id_orden=orden.id_orden)

            detalle = formulario.save(commit=False)
            detalle.id_orden = orden
            detalle.save()

            if inventario:
                Inventario.objects.filter(pk=inventario.pk).update(
                    stock_actual=F("stock_actual") - cantidad
                )

            _recalcular_total(orden)
            messages.success(request, "Producto agregado a la orden.")
            return redirect("detalle_venta", id_orden=orden.id_orden)
    elif orden.es_editable:
        formulario = DetalleOrdenForm()

    return render(request, "ventas/detalle.html", {
        "orden": orden,
        "detalles": detalles,
        "detalles_con_iva": detalles_con_iva,
        "formulario": formulario,
        "factura": factura,
    })


def eliminar_detalle_venta(request, id_detalle):
    detalle = get_object_or_404(DetalleOrden, pk=id_detalle)
    orden = detalle.id_orden
    if not orden.es_editable:
        messages.error(request, "No se puede modificar una orden ya facturada.")
        return redirect("detalle_venta", id_orden=orden.id_orden)

    if request.method == "POST":
        inventario = Inventario.objects.filter(id_producto=detalle.id_producto).first()
        if inventario:
            Inventario.objects.filter(pk=inventario.pk).update(
                stock_actual=F("stock_actual") + detalle.cantidad
            )
        detalle.delete()
        _recalcular_total(orden)
        messages.success(request, "Línea eliminada de la orden.")
        return redirect("detalle_venta", id_orden=orden.id_orden)

    return render(request, "ventas/eliminar_detalle.html", {"detalle": detalle})


def finalizar_venta(request, id_orden):
    orden = get_object_or_404(Orden, pk=id_orden)

    if request.method == "POST":
        if orden.estado != "En Proceso":
            messages.error(request, "Esta orden ya fue facturada.")
        elif not orden.detalles.exists():
            messages.error(request, "No puedes facturar una orden sin productos.")
        else:
            with transaction.atomic():
                with connection.cursor() as cursor:
                    cursor.execute("""
                                   SELECT setval(pg_get_serial_sequence('factura', 'id_factura'), COALESCE(MAX(id_factura), 1))
                                   FROM factura;
                                   """)

                subtotal = Decimal("0.00")
                iva = Decimal("0.00")
                for detalle in orden.detalles.select_related("id_producto"):
                    tarifa = obtener_tarifa_iva(detalle.id_producto.categoria)
                    iva_linea = (detalle.subtotal * tarifa).quantize(Decimal("0.01"))
                    subtotal += detalle.subtotal
                    iva += iva_linea
                total_con_iva = subtotal + iva

                Factura.objects.create(
                    id_orden=orden,
                    prefijo="FE",
                    num_consec=str(orden.id_orden),
                    cufe=str(uuid.uuid4()),
                    fecha_generacion=timezone.now(),
                    subtotal=subtotal,
                    total_iva=iva,
                    total=total_con_iva,
                    estado_factura="Generada",
                )
                orden.estado = "Entregada"
                orden.total = total_con_iva
                orden.save()

            messages.success(request, f"Factura FE-{orden.id_orden} generada correctamente.")
        return redirect("detalle_venta", id_orden=orden.id_orden)

    return render(request, "ventas/finalizar.html", {"orden": orden})