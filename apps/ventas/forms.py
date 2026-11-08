from django import forms
from .models import Orden
from .models import DetalleOrden
from apps.inventario.models import Producto

class OrdenForm(forms.ModelForm):
    class Meta:
        model = Orden
        fields = ["fecha", "estado", "observaciones", "id_cliente", "id_empleado", "id_sede"]
        widgets = {
            "fecha": forms.DateInput(attrs={"class": "form-control", "type": "date"}),
            "total": forms.NumberInput(attrs={"class": "form-control", "readonly": "readonly", "placeholder": "Se calculará en automatico"}),
            "estado": forms.Select(attrs={"class": "form-select"}),
            "observaciones": forms.TextInput(attrs={"class": "form-control"}),
            "id_cliente": forms.Select(attrs={"class": "form-select"}),
            "id_empleado": forms.Select(attrs={"class": "form-select"}),
            "id_sede": forms.Select(attrs={"class": "form-select"}),
        }
class DetalleOrdenForm(forms.ModelForm):
    class Meta:
        model = DetalleOrden
        fields = ["id_producto", "cantidad"]
        widgets = {
            "id_producto": forms.Select(attrs={"class": "form-select"}),
            "cantidad": forms.NumberInput(attrs={"class": "form-control", "min": 1}),
        }
        labels = {
            "id_producto": "Producto",
            "cantidad": "Cantidad",
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields["id_producto"].queryset = Producto.objects.filter(activo=True)

    def clean_cantidad(self):
        cantidad = self.cleaned_data["cantidad"]
        if cantidad < 1:
            raise forms.ValidationError("La cantidad mínima es 1.")
        return cantidad

    def save(self, commit=True):
        detalle = super().save(commit=False)
        detalle.subtotal = detalle.cantidad * detalle.id_producto.precio
        if commit:
            detalle.save()
        return detalle