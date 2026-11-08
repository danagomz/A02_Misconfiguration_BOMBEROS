from django.shortcuts import render, redirect, get_object_or_404
from .models import Proveedor
from .forms import ProveedorForm
from django.contrib import messages
from django.core.paginator import Paginator
from django.db.models.deletion import ProtectedError, IntegrityError
from django.db.models import Q
from django.db import connection

def lista_proveedores(request):
    busqueda = request.GET.get("buscar", "")
    proveedores = Proveedor.objects.all()
    if busqueda:
        proveedores = proveedores.filter(
            Q(razon_social__icontains=busqueda) | Q(nit__icontains=busqueda)
        )
    proveedores = proveedores.order_by("razon_social")
    paginador = Paginator(proveedores, 10)
    numero_pagina = request.GET.get("page")
    proveedores = paginador.get_page(numero_pagina)
    return render(request, "proveedores/lista.html", {
        "proveedores": proveedores,
        "busqueda": busqueda
    })

def crear_proveedor(request):
    if request.method == "POST":
        formulario = ProveedorForm(request.POST)
        if formulario.is_valid():

            # contador de IDs en para evitar fallos
            with connection.cursor() as cursor:
                cursor.execute("""
                               SELECT setval(pg_get_serial_sequence('proveedor', 'id_proveedor'),
                                             COALESCE(MAX(id_proveedor), 1))
                               FROM proveedor;
                               """)

            formulario.save()
            messages.success(request, "Proveedor registrado correctamente.")
            return redirect("lista_proveedores")
    else:
        formulario = ProveedorForm()
    return render(request, "proveedores/crear.html", {
        "formulario": formulario,
        "titulo": "Nuevo Proveedor"
    })

def editar_proveedor(request, id_proveedor):
    proveedor = get_object_or_404(Proveedor, pk=id_proveedor)
    if request.method == "POST":
        formulario = ProveedorForm(request.POST, instance=proveedor)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Proveedor actualizado correctamente.")
            return redirect("lista_proveedores")
    else:
        formulario = ProveedorForm(instance=proveedor)
    return render(request, "proveedores/editar.html", {
        "formulario": formulario,
        "titulo": "Editar Proveedor"
    })

def eliminar_proveedor(request, id_proveedor):
    proveedor = get_object_or_404(Proveedor, pk=id_proveedor)
    if request.method == "POST":
        try:
            proveedor.delete()
            messages.success(request, "Proveedor eliminado correctamente.")
        except (ProtectedError, IntegrityError):
            messages.error(request, "No es posible eliminar este proveedor porque tiene registros asociados.")
        return redirect("lista_proveedores")
    return render(request, "proveedores/eliminar.html", {"proveedor": proveedor})
