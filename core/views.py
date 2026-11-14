from django.shortcuts import render


def inicio(request):
    return render(request, "inicio.html")

def vista_error_404(request, exception):
    return render(request, "404.html")

def vista_error_500(request, exception):
    return render(request, "500.html")