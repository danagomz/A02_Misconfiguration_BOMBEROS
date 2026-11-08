from django import forms
from .models import Cliente


class ClienteForm(forms.ModelForm):

    def __init__(self, *args, **kwargs):
        #formulario normal
        super().__init__(*args, **kwargs)
        # revisar si es edición o es creación (si tiene ID es T, si no lo tiene es F)
        existe = self.instance and self.instance.pk

        #si ya existe se bloquean los campos de datos sensibles y no editables
        self.fields['tipo_doc'].disabled = existe
        self.fields['num_doc'].disabled = existe


    def clean_num_doc(self):

        num_doc = self.cleaned_data["num_doc"]

        if Cliente.objects.exclude(
            pk=self.instance.pk
        ).filter(num_doc=num_doc).exists():

            raise forms.ValidationError(
                "Ya existe un cliente con ese documento."
            )

        return num_doc


    def clean_correo(self):

        correo = self.cleaned_data["correo"]

        if Cliente.objects.exclude(
            pk=self.instance.pk
        ).filter(correo=correo).exists():

            raise forms.ValidationError(
                "Ese correo ya está registrado."
            )

        return correo

    TIPO_DOC = [
        ("CC", "Cédula de Ciudadanía"),
        ("CE", "Cédula de Extranjería"),
        ("NIT", "NIT"),
    ]

    TIPO_CLIENTE = [
        ("Persona", "Persona"),
        ("Empresa", "Empresa"),
    ]

    SI_NO = [
        (True, "Sí"),
        (False, "No"),
    ]

    tipo_doc = forms.ChoiceField(
        choices=TIPO_DOC,
        widget=forms.Select(attrs={"class": "form-select"})
    )

    tipo_cliente = forms.ChoiceField(
        choices=TIPO_CLIENTE,
        widget=forms.Select(attrs={"class": "form-select"})
    )

    habeas_data = forms.TypedChoiceField(
        choices=SI_NO,
        coerce=lambda x: x == "True",
        widget=forms.Select(attrs={"class": "form-select"})
    )

    class Meta:

        model = Cliente

        exclude = ["id_cliente"]

        widgets = {

            "num_doc": forms.TextInput(attrs={
                "class": "form-control",
                "placeholder": "Ej: 1143856987"
            }),

            "nombre_razon_social": forms.TextInput(attrs={
                "class": "form-control",
                "placeholder": "Nombre completo o razón social"
            }),

            "telefono": forms.TextInput(attrs={
                "class": "form-control",
                "placeholder": "3001234567"
            }),

            "correo": forms.EmailInput(attrs={
                "class": "form-control",
                "placeholder": "correo@empresa.com"
            }),

            "direccion_operativa": forms.TextInput(attrs={
                "class": "form-control"
            }),

            "direccion_residencial": forms.TextInput(attrs={
                "class": "form-control"
            }),

            "ciudad": forms.TextInput(attrs={
                "class": "form-control",
                "placeholder": "Cali"
            }),

            "repre_legal": forms.TextInput(attrs={
                "class": "form-control"
            }),

            "regimen_tributario": forms.TextInput(attrs={
                "class": "form-control"
            }),

        }