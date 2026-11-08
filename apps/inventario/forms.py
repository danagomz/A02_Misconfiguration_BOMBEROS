from django import forms
from django.db.models import Q
from .models import Inventario, Producto


class ProductoForm(forms.ModelForm):
    class Meta:
        model = Producto
        # 'activo' NO va en el formulario: la baja se maneja por la vista
        # eliminar_producto (eliminación lógica), nunca a mano desde el form.
        fields = ["nombre", "descripcion", "precio", "categoria", "id_proveedor"]
        widgets = {
            "nombre": forms.TextInput(attrs={"class": "form-control"}),
            "descripcion": forms.TextInput(attrs={"class": "form-control"}),
            "precio": forms.NumberInput(attrs={"class": "form-control", "step": "0.01"}),
            "categoria": forms.TextInput(attrs={"class": "form-control"}),
            "id_proveedor": forms.Select(attrs={"class": "form-select"}),
        }
        labels = {
            "id_proveedor": "Proveedor asociado",
        }


class InventarioForm(forms.ModelForm):
    class Meta:
        model = Inventario
        # 'estado_stock' se elimina del formulario: el enunciado prohíbe
        # almacenar/editar manualmente ese dato. Se calcula en views.py
        # a partir de stock_actual y demanda_diaria, y nunca se persiste.
        fields = ["stock_actual", "stock_minimo", "demanda_diaria", "id_producto"]
        widgets = {
            "stock_actual": forms.NumberInput(attrs={"class": "form-control"}),
            "stock_minimo": forms.NumberInput(attrs={"class": "form-control"}),
            "demanda_diaria": forms.NumberInput(attrs={"class": "form-control"}),
            "id_producto": forms.Select(attrs={"class": "form-select"}),
        }
        labels = {
            "id_producto": "Producto",
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        queryset = Producto.objects.filter(activo=True)

        if self.instance.pk:
            # Edición: dejamos ver el producto actual aunque ya tenga inventario
            # (si no, desaparecería del selector al no estar "disponible").
            queryset = queryset.filter(
                Q(pk=self.instance.id_producto_id) | Q(inventario__isnull=True)
            )
        else:
            # Creación: solo productos que TODAVÍA no tienen registro de inventario,
            # para no violar la restricción UNIQUE de INVENTARIO.id_producto.
            queryset = queryset.filter(inventario__isnull=True)

        self.fields["id_producto"].queryset = queryset.distinct()