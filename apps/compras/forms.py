from django import forms
from django.utils import timezone

from .models import OrdenProveedor, DetalleOrdProveedor
from apps.proveedores.models import Proveedor
from apps.inventario.models import Producto


class OrdenProveedorForm(forms.ModelForm):
    class Meta:
        model = OrdenProveedor
        # 'estado' NO se expone: toda orden nueva nace en "Pendiente".
        # El cambio de estado se maneja con acciones dedicadas
        # (recibir_orden / cancelar_orden), nunca editando el formulario.
        # 'total' tampoco se expone: se calcula a partir de los detalles.
        fields = ["id_proveedor", "id_empleado", "lugar_entrega"]
        widgets = {
            "id_proveedor": forms.Select(attrs={"class": "form-select"}),
            "id_empleado": forms.Select(attrs={"class": "form-select"}),
            "lugar_entrega": forms.TextInput(attrs={
                "class": "form-control",
                "placeholder": "Ej: Bodega de Insumos - Cali"
            }),
        }
        labels = {
            "id_proveedor": "Proveedor",
            "id_empleado": "Empleado responsable",
            "lugar_entrega": "Lugar de entrega",
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Restricción de integridad del enunciado: solo proveedores
        # ya registrados y activos pueden recibir una orden de pedido.
        self.fields["id_proveedor"].queryset = Proveedor.objects.all()

    def save(self, commit=True):
        orden = super().save(commit=False)
        if not orden.pk:
            orden.fecha_orden = timezone.now()
            orden.estado = "Pendiente"
        if commit:
            orden.save()
        return orden


class DetalleOrdProveedorForm(forms.ModelForm):
    class Meta:
        model = DetalleOrdProveedor
        fields = ["id_producto", "cantidad_pedida", "precio_unidad"]
        widgets = {
            "id_producto": forms.Select(attrs={"class": "form-select"}),
            "cantidad_pedida": forms.NumberInput(attrs={"class": "form-control", "min": 1}),
            "precio_unidad": forms.NumberInput(attrs={"class": "form-control", "step": "0.01", "min": 0}),
        }
        labels = {
            "id_producto": "Producto / Insumo",
            "cantidad_pedida": "Cantidad",
            "precio_unidad": "Costo unitario",
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Restricción de integridad: no se pueden pedir productos
        # que no existan / no estén activos en el catálogo.
        self.fields["id_producto"].queryset = Producto.objects.filter(activo=True)

    def clean_cantidad_pedida(self):
        cantidad = self.cleaned_data["cantidad_pedida"]
        if cantidad < 1:
            raise forms.ValidationError("La cantidad mínima a pedir es 1.")
        return cantidad

    def save(self, commit=True):
        detalle = super().save(commit=False)
        detalle.subtotal = detalle.cantidad_pedida * detalle.precio_unidad
        if commit:
            detalle.save()
        return detalle
