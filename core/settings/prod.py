"""Configuración de producción y validación de despliegue."""

import os

from django.core.exceptions import ImproperlyConfigured

from .base import *  # noqa: F403

DEBUG = False
ALLOWED_HOSTS = [
    host.strip()
    for host in os.environ.get("DJANGO_ALLOWED_HOSTS", "").split(",")
    if host.strip()
]
if not ALLOWED_HOSTS:
    raise ImproperlyConfigured(
        "Define DJANGO_ALLOWED_HOSTS con los dominios permitidos en producción."
    )

STATIC_ROOT = BASE_DIR / "staticfiles"  # noqa: F405


SECURE_SSL_REDIRECT = True
SECURE_HSTS_SECONDS = 31536000
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
