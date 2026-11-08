from django.contrib import admin
from django.urls import path, include
from .views import inicio

urlpatterns = [
    path('admin/', admin.site.urls),
    path("", inicio),
    path("clientes/", include("apps.clientes.urls")),
    path("proveedores/", include("apps.proveedores.urls")),
    path("inventario/", include("apps.inventario.urls")),
    path("ventas/", include("apps.ventas.urls")),
    path("compras/", include("apps.compras.urls")),
]