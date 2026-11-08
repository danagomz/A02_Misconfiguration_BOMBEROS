from django import forms
from .models import Proveedor

class ProveedorForm(forms.ModelForm):
    #no editable en nit para proveedores
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        existe = self.instance and self.instance.pk

        self.fields['nit'].disabled = existe

    class Meta:
        model = Proveedor
        fields = "__all__"
        exclude = ["id_proveedor"]
        widgets = {
            field: forms.TextInput(attrs={"class": "form-control"})
            for field in [
                "nit", "razon_social", "telefono", "correo", "direccion",
                "rut", "tipo_proveedor", "contacto_comercial",
                "contacto_cartera", "contacto_logistico", "banco",
                "tipo_cuenta", "numero_cuenta"
            ]
        }
        widgets.update({
            "tiempo_entrega": forms.NumberInput(attrs={"class": "form-control"}),
            "condiciones_pago": forms.NumberInput(attrs={"class": "form-control"}),
            "calificacion": forms.NumberInput(attrs={"class": "form-control"}),
            "activo": forms.CheckboxInput(attrs={"class": "form-check-input"}),
        })