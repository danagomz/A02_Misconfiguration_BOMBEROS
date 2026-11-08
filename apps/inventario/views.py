from django.shortcuts import render, redirect, get_object_or_404
from django.db.models.deletion import ProtectedError
from django.contrib import messages
from django.core.paginator import Paginator
from django.db.models import Q
from django.db import connection

from .models import Inventario, Producto
from .forms import InventarioForm, ProductoForm


# ----------------------------------------------------------------------
# Regla de negocio: categorización del inventario según Días de Stock.
# NUNCA se guarda en la base de datos (el enunciado lo prohíbe explícitamente).
# Se calcula al vuelo cada vez que se necesita mostrar/consultar el dato.
# ----------------------------------------------------------------------
def calcular_estado_stock(stock_actual, demanda_diaria):
    if demanda_diaria in (0, None):
        return None, "Sin demanda diaria registrada"

    dias_stock = stock_actual / demanda_diaria

    if dias_stock <= 0:
        return "Agotado", "Pedido Inmediato"
    elif dias_stock < 5:
        return "Crítico", "Pedido de Emergencia"
    elif dias_stock <= 15:
        return "Alerta", "Realizar Pedido Normal"
    else:
        return "Seguro", "Mantener Monitoreo"


# ========================================================================
# INVENTARIO (stock)
# ========================================================================
def lista_inventario(request):
    busqueda = request.GET.get("buscar", "")
    items = Inventario.objects.select_related("id_producto").all()
    if busqueda:
        items = items.filter(Q(id_producto__nombre__icontains=busqueda))
    items = items.order_by("id_producto__nombre")

    paginador = Paginator(items, 10)
    numero_pagina = request.GET.get("page")
    items = paginador.get_page(numero_pagina)

    # Adjuntamos el cálculo a cada objeto de la página actual (no se guarda en BD)
    for item in items:
        dias = None
        if item.demanda_diaria:
            dias = round(item.stock_actual / item.demanda_diaria, 1)
        estado, accion = calcular_estado_stock(item.stock_actual, item.demanda_diaria)
        item.dias_stock_calculado = dias
        item.estado_calculado = estado
        item.accion_calculada = accion

    return render(request, "inventario/lista.html", {
        "items": items,
        "busqueda": busqueda
    })


def crear_inventario(request):
    if request.method == "POST":
        formulario = InventarioForm(request.POST)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Registro de inventario creado correctamente.")
            return redirect("lista_inventario")
    else:
        formulario = InventarioForm()
    return render(request, "inventario/editar.html", {
        "formulario": formulario,
        "titulo": "Nuevo Registro de Inventario"
    })


def editar_inventario(request, id_inventario):
    item = get_object_or_404(Inventario, pk=id_inventario)
    if request.method == "POST":
        formulario = InventarioForm(request.POST, instance=item)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Inventario actualizado correctamente.")
            return redirect("lista_inventario")
    else:
        formulario = InventarioForm(instance=item)
    return render(request, "inventario/editar.html", {
        "formulario": formulario,
        "titulo": "Editar Inventario"
    })


def eliminar_inventario(request, id_inventario):
    item = get_object_or_404(Inventario, pk=id_inventario)
    if request.method == "POST":
        item.delete()
        messages.success(request, "Registro de inventario eliminado.")
        return redirect("lista_inventario")
    return render(request, "inventario/eliminar.html", {"item": item})


# ========================================================================
# PRODUCTO (entidad propia, antes inexistente)
# ========================================================================
def lista_productos(request):
    busqueda = request.GET.get("buscar", "")
    mostrar_inactivos = request.GET.get("inactivos") == "1"

    productos = Producto.objects.select_related("id_proveedor").all()
    if not mostrar_inactivos:
        productos = productos.filter(activo=True)
    if busqueda:
        productos = productos.filter(
            Q(nombre__icontains=busqueda) | Q(categoria__icontains=busqueda)
        )
    productos = productos.order_by("nombre")

    paginador = Paginator(productos, 10)
    numero_pagina = request.GET.get("page")
    productos = paginador.get_page(numero_pagina)

    return render(request, "inventario/producto_lista.html", {
        "productos": productos,
        "busqueda": busqueda,
        "mostrar_inactivos": mostrar_inactivos,
    })


def crear_producto(request):
    if request.method == "POST":
        formulario = ProductoForm(request.POST)
        if formulario.is_valid():
            with connection.cursor() as cursor:
                cursor.execute("""
                               SELECT setval(pg_get_serial_sequence('producto', 'id_producto'),
                                             COALESCE(MAX(id_producto), 1))
                               FROM producto;
                               """)
            formulario.save()
            messages.success(request, "Producto registrado correctamente.")
            return redirect("lista_productos")
    else:
        formulario = ProductoForm()
    return render(request, "inventario/producto_form.html", {
        "formulario": formulario,
        "titulo": "Nuevo Producto"
    })


def editar_producto(request, id_producto):
    producto = get_object_or_404(Producto, pk=id_producto)
    if request.method == "POST":
        formulario = ProductoForm(request.POST, instance=producto)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Producto actualizado correctamente.")
            return redirect("lista_productos")
    else:
        formulario = ProductoForm(instance=producto)
    return render(request, "inventario/producto_form.html", {
        "formulario": formulario,
        "titulo": "Editar Producto"
    })


def eliminar_producto(request, id_producto):
    """
    Eliminación LÓGICA: nunca se hace .delete() físico sobre Producto,
    para no perder el histórico de movimientos de inventario/ventas/compras.
    """
    producto = get_object_or_404(Producto, pk=id_producto)
    if request.method == "POST":
        try:
            producto.activo = False
            producto.save()
            messages.success(request, "Producto marcado como inactivo.")
        except ProtectedError:
            messages.error(
                request,
                "No es posible modificar este producto por restricciones de integridad."
            )
        return redirect("lista_productos")
    return render(request, "inventario/producto_eliminar.html", {"producto": producto})


def activar_producto(request, id_producto):
    """Permite reactivar un producto dado de baja lógicamente."""
    producto = get_object_or_404(Producto, pk=id_producto)
    if request.method == "POST":
        producto.activo = True
        producto.save()
        messages.success(request, "Producto reactivado.")
        return redirect("lista_productos")
    return render(request, "inventario/producto_activar.html", {"producto": producto})