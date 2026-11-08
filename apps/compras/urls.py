from django.urls import path
from . import views

urlpatterns = [
    path("", views.lista_ordenes, name="lista_ordenes"),
    path("crear/", views.crear_orden, name="crear_orden"),
    path("<int:id_ord_prov>/", views.detalle_orden, name="detalle_orden"),
    path("<int:id_ord_prov>/recibir/", views.recibir_orden, name="recibir_orden"),
    path("<int:id_ord_prov>/cancelar/", views.cancelar_orden, name="cancelar_orden"),
    path("detalle/<int:id_detalle_prov>/eliminar/", views.eliminar_detalle, name="eliminar_detalle_compra"),
]
