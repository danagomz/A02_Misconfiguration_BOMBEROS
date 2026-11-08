from django.urls import path
from . import views

urlpatterns = [
    # Inventario (stock)
    path("", views.lista_inventario, name="lista_inventario"),
    path("crear/", views.crear_inventario, name="crear_inventario"),
    path("editar/<int:id_inventario>/", views.editar_inventario, name="editar_inventario"),

    # Producto (entidad propia)
    path("productos/", views.lista_productos, name="lista_productos"),
    path("productos/crear/", views.crear_producto, name="crear_producto"),
    path("productos/editar/<int:id_producto>/", views.editar_producto, name="editar_producto"),
    path("productos/eliminar/<int:id_producto>/", views.eliminar_producto, name="eliminar_producto"),
    path("productos/activar/<int:id_producto>/", views.activar_producto, name="activar_producto"),
]