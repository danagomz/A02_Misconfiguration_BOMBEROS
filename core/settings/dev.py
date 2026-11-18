"""Configuración local de desarrollo."""

import os

from .base import *  # noqa: F403


def env_bool(name, default=False):
    value = os.environ.get(name)
    if value is None:
        return default
    return value.strip().lower() in {"1", "true", "yes", "on"}


DEBUG = env_bool("DJANGO_DEBUG", default=True)
ALLOWED_HOSTS = [
    host.strip()
    for host in os.environ.get("DJANGO_ALLOWED_HOSTS", "127.0.0.1,localhost").split(",")
    if host.strip()
]


SECURE_SSL_REDIRECT = False
SECURE_HSTS_SECONDS = 0
CSRF_COOKIE_SECURE = False
SESSION_COOKIE_SECURE = False
