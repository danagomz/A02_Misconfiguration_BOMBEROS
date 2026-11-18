from django.contrib import admin
from django.conf import settings
from django.contrib.auth import views as auth_views
from django.urls import path, include
from .views import inicio

urlpatterns = [
    path(settings.ADMIN_PATH, admin.site.urls),
    path("acceso/", auth_views.LoginView.as_view(template_name="registration/login.html"), name="login"),
    path("salir/", auth_views.LogoutView.as_view(), name="logout"),
    path("", inicio),
    path("clientes/", include("apps.clientes.urls")),
    path("proveedores/", include("apps.proveedores.urls")),
    path("inventario/", include("apps.inventario.urls")),
    path("ventas/", include("apps.ventas.urls")),
    path("compras/", include("apps.compras.urls")),
]
