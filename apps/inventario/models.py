from django.db import models
from apps.proveedores.models import Proveedor

class Producto(models.Model):
    id_producto = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=200, blank=True, null=True)
    precio = models.DecimalField(max_digits=10, decimal_places=2)
    categoria = models.CharField(max_length=50, blank=True, null=True)
    activo = models.BooleanField(default=True)
    id_proveedor = models.ForeignKey(
        Proveedor, on_delete=models.DO_NOTHING, db_column="id_proveedor"
    )

    class Meta:
        managed = False
        db_table = "producto"

    def __str__(self):
        return self.nombre


class Inventario(models.Model):
    id_inventario = models.AutoField(primary_key=True)
    stock_actual = models.IntegerField()
    stock_minimo = models.IntegerField()
    demanda_diaria = models.IntegerField()
    estado_stock = models.CharField(max_length=20, blank=True, null=True)
    id_producto = models.OneToOneField(
        Producto, on_delete=models.DO_NOTHING, db_column="id_producto"
    )

    class Meta:
        managed = False
        db_table = "inventario"

    def __str__(self):
        return f"Inventario de {self.id_producto.nombre}"