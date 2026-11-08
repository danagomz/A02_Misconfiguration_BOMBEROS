from django.db import models

class Proveedor(models.Model):
    id_proveedor = models.AutoField(primary_key=True)
    nit = models.CharField(max_length=20, unique=True)
    razon_social = models.CharField(max_length=100)
    telefono = models.CharField(max_length=20)
    correo = models.EmailField(max_length=100, unique=True)
    direccion = models.CharField(max_length=150, blank=True, null=True)
    rut = models.CharField(max_length=20, blank=True, null=True)
    tipo_proveedor = models.CharField(max_length=50)
    tiempo_entrega = models.IntegerField(blank=True, null=True)
    contacto_comercial = models.CharField(max_length=100, blank=True, null=True)
    contacto_cartera = models.CharField(max_length=100, blank=True, null=True)
    contacto_logistico = models.CharField(max_length=100, blank=True, null=True)
    condiciones_pago = models.IntegerField(blank=True, null=True)
    calificacion = models.IntegerField(blank=True, null=True)
    banco = models.CharField(max_length=50, blank=True, null=True)
    tipo_cuenta = models.CharField(max_length=30, blank=True, null=True)
    numero_cuenta = models.CharField(max_length=30, blank=True, null=True)
    activo = models.BooleanField(default=True)

    class Meta:
        managed = False
        db_table = "proveedor"

    def __str__(self):
        return self.razon_social