from django.contrib.auth.decorators import login_required
from django.shortcuts import render


@login_required
def inicio(request):
    return render(request, "inicio.html")

def vista_error_404(request, exception):
    return render(request, "404.html", status=404)

def vista_error_500(request):
    return render(request, "500.html", status=500)