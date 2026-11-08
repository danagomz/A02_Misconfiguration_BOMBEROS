from django.db import models


class Cliente(models.Model):
    id_cliente = models.AutoField(primary_key=True)

    num_doc = models.CharField(max_length=20, unique=True)

    tipo_doc = models.CharField(max_length=20)

    nombre_razon_social = models.CharField(max_length=100)

    telefono = models.CharField(max_length=20)

    correo = models.EmailField(max_length=100, unique=True)

    direccion_operativa = models.CharField(
        max_length=150,
        blank=True,
        null=True
    )

    direccion_residencial = models.CharField(
        max_length=150,
        blank=True,
        null=True
    )

    tipo_cliente = models.CharField(max_length=30)

    habeas_data = models.BooleanField(default=False)

    ciudad = models.CharField(max_length=50)

    repre_legal = models.CharField(
        max_length=100,
        blank=True,
        null=True
    )

    regimen_tributario = models.CharField(
        max_length=50,
        blank=True,
        null=True
    )

    class Meta:
        managed = False
        db_table = "cliente"

    def __str__(self):
        return self.nombre_razon_social