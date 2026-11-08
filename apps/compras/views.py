from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from django.core.paginator import Paginator
from django.db.models import Q, Sum
from django.utils import timezone
from django.db import connection

from .models import OrdenProveedor, DetalleOrdProveedor
from .forms import OrdenProveedorForm, DetalleOrdProveedorForm


def _recalcular_total(orden):
    total = orden.detalles.aggregate(suma=Sum("subtotal"))["suma"] or 0
    orden.total = total
    orden.save(update_fields=["total"])


# ========================================================================
# ORDEN DE PEDIDO A PROVEEDOR (documento)
# ========================================================================
def lista_ordenes(request):
    busqueda = request.GET.get("buscar", "")
    ordenes = OrdenProveedor.objects.select_related("id_proveedor", "id_empleado").all()
    if busqueda:
        ordenes = ordenes.filter(
            Q(id_proveedor__razon_social__icontains=busqueda) |
            Q(estado__icontains=busqueda)
        )
    ordenes = ordenes.order_by("-fecha_orden")

    paginador = Paginator(ordenes, 10)
    numero_pagina = request.GET.get("page")
    ordenes = paginador.get_page(numero_pagina)

    return render(request, "compras/lista.html", {
        "ordenes": ordenes,
        "busqueda": busqueda,
    })


def crear_orden(request):
    if request.method == "POST":
        formulario = OrdenProveedorForm(request.POST)
        if formulario.is_valid():
            with connection.cursor() as cursor:
                cursor.execute("""
                               SELECT setval(pg_get_serial_sequence('orden_proveedor', 'id_ord_prov'),
                                             COALESCE(MAX(id_ord_prov), 1))
                               FROM orden_proveedor;
                               """)
            orden = formulario.save()
            messages.success(
                request,
                f"Orden de pedido #{orden.id_ord_prov} creada. "
                f"Ahora agrega los productos solicitados."
            )
            return redirect("detalle_orden", id_ord_prov=orden.id_ord_prov)
    else:
        formulario = OrdenProveedorForm()
    return render(request, "compras/crear.html", {
        "formulario": formulario,
        "titulo": "Nueva Orden de Pedido"
    })


def detalle_orden(request, id_ord_prov):
    """
    Pantalla principal de una orden: muestra sus datos, sus líneas de
    producto, y (solo si sigue Pendiente) el formulario para agregar más
    líneas y los botones de Recibir/Cancelar.
    """
    orden = get_object_or_404(OrdenProveedor, pk=id_ord_prov)
    detalles = orden.detalles.select_related("id_producto").all()

    formulario = None
    if orden.es_editable and request.method == "POST":
        formulario = DetalleOrdProveedorForm(request.POST)
        if formulario.is_valid():
            detalle = formulario.save(commit=False)
            detalle.id_ord_prov = orden
            detalle.save()
            _recalcular_total(orden)
            messages.success(request, "Producto agregado a la orden.")
            return redirect("detalle_orden", id_ord_prov=orden.id_ord_prov)
    elif orden.es_editable:
        formulario = DetalleOrdProveedorForm()

    return render(request, "compras/detalle.html", {
        "orden": orden,
        "detalles": detalles,
        "formulario": formulario,
    })


def eliminar_detalle(request, id_detalle_prov):
    """
    Solo se puede quitar una línea mientras la orden siga Pendiente
    (documento no finalizado). Si ya fue Recibida o Cancelada, no se toca.
    """
    detalle = get_object_or_404(DetalleOrdProveedor, pk=id_detalle_prov)
    orden = detalle.id_ord_prov

    if not orden.es_editable:
        messages.error(request, "No se puede modificar una orden ya finalizada.")
        return redirect("detalle_orden", id_ord_prov=orden.id_ord_prov)

    if request.method == "POST":
        detalle.delete()
        _recalcular_total(orden)
        messages.success(request, "Línea eliminada de la orden.")
        return redirect("detalle_orden", id_ord_prov=orden.id_ord_prov)

    return render(request, "compras/eliminar_detalle.html", {"detalle": detalle})


def recibir_orden(request, id_ord_prov):
    """
    Transición de estado Pendiente -> Recibida.
    congela la orden (no se puede modificar)
    """
    orden = get_object_or_404(OrdenProveedor, pk=id_ord_prov)
    if request.method == "POST":
        if orden.estado != "Pendiente":
            messages.error(request, "Solo se pueden recibir órdenes en estado Pendiente.")
        elif not orden.detalles.exists():
            messages.error(request, "No puedes recibir una orden sin productos.")
        else:
            orden.estado = "Recibida"


            ahora = timezone.localtime(timezone.now())
            #Si la fecha de orden no se encuentra se hace la actualización
            if not (orden.fecha_orden and timezone.is_aware(orden.fecha_orden)):
                ahora = ahora.replace(tzinfo=None)

            # Validamos que no sea menor a la fecha del pedido
                fecha_final = orden.fecha_orden
            else:
                fecha_final = ahora

            # Forzar a que ambas fechas compartan exactamente el mismo instante matemático
            orden.fecha_recepcion = fecha_final
            orden.fecha_entrega = fecha_final

            # copia automáticamente las cantidades pedidas a la columna de recibidas
            for d in orden.detalles.all():
                d.cantidad_recibida = d.cantidad_pedida
                d.save()

                # Modifica el inventario del producto
                inv = d.id_producto.inventario
                inv.stock_actual += d.cantidad_pedida
                inv.save()
            orden.save()
            messages.success(request, f"Orden #{orden.id_ord_prov} marcada como Recibida.")
        return redirect("detalle_orden", id_ord_prov=orden.id_ord_prov)
    return render(request, "compras/recibir.html", {"orden": orden})


def cancelar_orden(request, id_ord_prov):
    orden = get_object_or_404(OrdenProveedor, pk=id_ord_prov)
    if request.method == "POST":
        if orden.estado != "Pendiente":
            messages.error(request, "Solo se pueden cancelar órdenes en estado Pendiente.")
        else:
            orden.estado = "Cancelada"
            orden.save()
            messages.success(request, f"Orden #{orden.id_ord_prov} cancelada.")
        return redirect("detalle_orden", id_ord_prov=orden.id_ord_prov)
    return render(request, "compras/cancelar.html", {"orden": orden})
