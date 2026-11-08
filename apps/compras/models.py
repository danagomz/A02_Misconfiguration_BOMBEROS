from django.db import models

from apps.proveedores.models import Proveedor
from apps.ventas.models import Empleado
from apps.inventario.models import Producto


class OrdenProveedor(models.Model):
    ESTADOS = [
        ("Pendiente", "Pendiente"),
        ("Recibida", "Recibida"),
        ("Cancelada", "Cancelada"),
    ]

    id_ord_prov = models.AutoField(primary_key=True)
    id_proveedor = models.ForeignKey(
        Proveedor, on_delete=models.DO_NOTHING, db_column="id_proveedor"
    )
    id_empleado = models.ForeignKey(
        Empleado, on_delete=models.DO_NOTHING, db_column="id_empleado"
    )
    fecha_orden = models.DateTimeField()
    fecha_entrega = models.DateTimeField(blank=True, null=True)
    fecha_recepcion = models.DateTimeField(blank=True, null=True)
    total = models.DecimalField(max_digits=12, decimal_places=2, blank=True, null=True)
    estado = models.CharField(max_length=20, choices=ESTADOS, default="Pendiente")
    lugar_entrega = models.CharField(max_length=150)

    class Meta:
        managed = False
        db_table = "orden_proveedor"

    def __str__(self):
        return f"Orden de Compra #{self.id_ord_prov} - {self.id_proveedor.razon_social}"

    @property
    def es_editable(self):
        """
        Regla del enunciado: una orden de pedido finalizada no debe poder
        editarse. Mientras esté 'Pendiente' sí se le pueden seguir agregando
        líneas de detalle; una vez Recibida o Cancelada, queda congelada.
        """
        return self.estado == "Pendiente"


class DetalleOrdProveedor(models.Model):
    id_detalle_prov = models.AutoField(primary_key=True)
    id_ord_prov = models.ForeignKey(
        OrdenProveedor,
        on_delete=models.DO_NOTHING,
        db_column="id_ord_prov",
        related_name="detalles",
    )
    id_producto = models.ForeignKey(
        Producto, on_delete=models.DO_NOTHING, db_column="id_producto"
    )
    cantidad_pedida = models.IntegerField()
    cantidad_recibida = models.IntegerField(blank=True, null=True)
    precio_unidad = models.DecimalField(max_digits=10, decimal_places=2)
    subtotal = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        managed = False
        db_table = "detalle_ord_proveedor"

    def __str__(self):
        return f"Detalle #{self.id_detalle_prov} de Orden #{self.id_ord_prov_id}"
