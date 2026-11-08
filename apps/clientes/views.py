from django.shortcuts import render, redirect, get_object_or_404

from .models import Cliente
from .forms import ClienteForm
from django.contrib import messages
from django.core.paginator import Paginator
from django.db.models.deletion import ProtectedError
from django.db.models import Q
from django.db import connection


def lista_clientes(request):

    busqueda = request.GET.get("buscar", "")

    clientes = Cliente.objects.all()

    if busqueda:

        clientes = clientes.filter(

            Q(nombre_razon_social__icontains=busqueda) |
            Q(num_doc__icontains=busqueda) |
            Q(ciudad__icontains=busqueda)

        )

    clientes = clientes.order_by("nombre_razon_social")

    paginador = Paginator(clientes, 10)

    numero_pagina = request.GET.get("page")

    clientes = paginador.get_page(numero_pagina)

    return render(
        request,
        "clientes/lista.html",
        {
            "clientes": clientes,
            "busqueda": busqueda
        }
    )


def crear_cliente(request):

    if request.method == "POST":

        formulario = ClienteForm(request.POST)

        if formulario.is_valid():

            with connection.cursor() as cursor:
                cursor.execute("""
                               SELECT setval(pg_get_serial_sequence('cliente', 'id_cliente'),
                                             COALESCE(MAX(id_cliente), 1))
                               FROM cliente;
                               """)
            formulario.save()
            messages.success(
                  request,
                  "Cliente registrado correctamente."
            )
            return redirect("lista_clientes")

    else:

        formulario = ClienteForm()

    return render(
            request,
            "clientes/formulario.html",
            {
                "formulario": formulario,
                "titulo": "Nuevo Cliente"
            }
    )


def editar_cliente(request, id_cliente):

    cliente = get_object_or_404(
        Cliente,
        pk=id_cliente
    )

    if request.method == "POST":

        formulario = ClienteForm(
            request.POST,
            instance=cliente
        )

        if formulario.is_valid():

            formulario.save()
            messages.success(
                request,
                "Cliente actualizado correctamente."
            )

            return redirect("lista_clientes")

    else:

        formulario = ClienteForm(instance=cliente)

    return render(
        request,
        "clientes/formulario.html",
        {
            "formulario": formulario,
            "titulo": "Editar Cliente"
        }
    )

def eliminar_cliente(request, id_cliente):

    cliente = get_object_or_404(
        Cliente,
        pk=id_cliente
    )

    if request.method == "POST":

        try:

            cliente.delete()

            messages.success(
                request,
                "Cliente eliminado correctamente."
            )

        except ProtectedError:

            messages.error(
                request,
                "No es posible eliminar este cliente porque tiene registros asociados."
            )

        except Exception:

            messages.error(
                request,
                "No fue posible eliminar el cliente."
            )

        return redirect("lista_clientes")

    return render(
        request,
        "clientes/confirmar_eliminar.html",
        {
            "cliente": cliente
        }
    )