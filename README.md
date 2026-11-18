# OWASP TOP MISCONFIGURATION
## Sistema de Gestión Comercial — Bomberos Voluntarios de Cali

## Descripción del Proyecto

Este repositorio contiene el desarrollo del proyecto académico de Bases de Datos para el diseño e implementación de un Sistema de Gestión Comercial inspirado en el Benemérito Cuerpo de Bomberos Voluntarios de Cali.

El proyecto busca modelar y gestionar los procesos relacionados con:

- Clientes
- Productos
- Inventario
- Proveedores
- Órdenes de venta
- Facturación
- Pagos
- Entregas
- Órdenes de compra a proveedores

Durante el desarrollo se realizaron las siguientes etapas:

- Modelado conceptual (MER)
- Diseño lógico (DER)
- Normalización
- Implementación física en PostgreSQL
- Desarrollo de la aplicación web utilizando Django
- Integración entre la aplicación y la base de datos PostgreSQL
- Implementación de operaciones CRUD
- Validaciones de negocio y restricciones de integridad

---

# Empresa de Referencia

El Benemérito Cuerpo de Bomberos Voluntarios de Cali es una institución fundada el 20 de julio de 1928.

Además de sus funciones de atención de emergencias, cuenta con una línea comercial dedicada a la venta de productos de seguridad industrial y prestación de servicios relacionados con prevención y protección contra incendios.

El sistema desarrollado busca apoyar la gestión comercial de esta dependencia mediante el control organizado de clientes, proveedores, inventario y ventas.

Sitio web:
https://www.bomberoscali.org.co

---

# Integrantes

| Nombre                    | Código  |
| ------------------------- | ------- |
| Dana Sofía Gomez Manrique | 2438171 |
| Hilary Herrera Erazo      | 2438987 |
| Santiago Duque            |         |
| Alejandro Escudero        |         |

---

# Tecnologías utilizadas

- Python 3.12
- Django 6
- PostgreSQL
- Bootstrap 5
- HTML5
- CSS3
- Git
- GitHub
- pgAdmin 4

---

# Modelo de Datos

El sistema está compuesto por las siguientes entidades principales:

- CLIENTE
- PRODUCTO
- INVENTARIO
- ORDEN
- DETALLE_ORDEN
- FACTURA
- PAGO
- ENTREGA
- EMPLEADO
- SEDE
- PROVEEDOR
- ORDEN_PROVEEDOR
- DETALLE_ORD_PROVEEDOR

**Total: 13 tablas**

---

# Funcionalidades implementadas

Actualmente el sistema permite:

- Registro de clientes
- Consulta de clientes
- Edición de clientes
- Eliminación segura de clientes
- Búsqueda por nombre, documento y ciudad
- Paginación de resultados
- Validaciones automáticas desde Django
- Mensajes de éxito y error
- Interfaz responsive utilizando Bootstrap

---

# Estructura del Proyecto

```
SGE-Bomberos-Cali-BD/

│
├── apps/
│ ├── clientes/
│ ├── proveedores/
│ ├── inventario/
│ └── ...
│
├── core/
│ └── settings/
│    ├── base.py
│    ├── dev.py
│    └── prod.py
│
├── templates/
│ └── registration/
│
├── static/
│ ├── css/
│ └── img/
│
├── db/
│ ├── ddl.sql
│ ├── roles.sql
│ ├── consultas.sql
│ └── insert/
│    ├── 00_reset.sql
│    ├── 01_bases.sql
│    ├── 02_transacciones_ventas.sql
│    └── 03_transacciones_compras.sql
│
├── .env.example
├── manage.py
└── requirements.txt
```

---

# Implementación en PostgreSQL

## 1. Crear la base de datos

```sql
CREATE DATABASE bomberos_cali;
```

---

## 2. Clonar el repositorio

```bash
git clone https://github.com/LauraBernal18/SGE-Bomberos-Cali-BD

cd SGE-Bomberos-Cali-BD
```

---

## 3. Crear el entorno virtual

Windows

```bash
python -m venv venv
```

Activar:

```bash
venv\Scripts\activate
```

Linux / Mac

```bash
python3 -m venv venv

source venv/bin/activate
```

---

## 4. Instalar las dependencias

```bash
pip install -r requirements.txt
```

---

## 5. Configurar PostgreSQL y el entorno

Crear una base de datos llamada `bomberos_cali` y copiar el ejemplo de variables:

```powershell
Copy-Item .env.example .env
```

Completar `.env` con los valores locales. Se usan estas variables:

- `DJANGO_SECRET_KEY` (obligatoria)
- `DJANGO_DEBUG` (solo desarrollo; por defecto `True`)
- `DJANGO_ALLOWED_HOSTS` (obligatoria en producción; en desarrollo tiene valores locales por defecto)
- `DB_NAME`, `DB_USER`, `DB_PASSWORD` (obligatorias)
- `DB_HOST` y `DB_PORT` (opcionales; por defecto `localhost` y `5432`)

El usuario normal de la aplicación es `app_bomberos`. No guardar `.env` ni claves reales en Git; `.env.example` solo debe tener valores de ejemplo.

`manage.py` usa `core.settings.dev` para desarrollo local. Producción usa `core.settings.prod`, que establece `DEBUG=False` y activa HTTPS, HSTS y cookies seguras. En GitHub Actions se debe definir `DJANGO_SETTINGS_MODULE=core.settings.prod` en el entorno del workflow, junto con `DJANGO_SECRET_KEY`, `DJANGO_ALLOWED_HOSTS`, `DB_NAME`, `DB_USER` y `DB_PASSWORD`. `DB_HOST` y `DB_PORT` se pueden definir si no se usan sus valores por defecto. `DJANGO_DEBUG` solo se usa en `core.settings.dev`.

---

## 6. Crear las tablas

Ejecutar `db/ddl.sql` conectado a la base `bomberos_cali`.

---

## 7. Cargar los datos

Los archivos se ejecutan en este orden:

1. `db/insert/01_bases.sql`
2. `db/insert/02_transacciones_ventas.sql`
3. `db/insert/03_transacciones_compras.sql`

Si se necesita vaciar y cargar de nuevo una base ya existente, ejecutar en la misma sesión de pgAdmin `SET app.permitir_reset = 'on';` y luego `db/insert/00_reset.sql`.

---

## 8. Crear los roles de la aplicación

Después de crear las tablas y cargar los datos, ejecutar `db/roles.sql` en pgAdmin. Sustituir `CAMBIAR_ESTA_CLAVE` y `CAMBIAR_ESTA_CLAVE_2` solo en el editor y no guardar el archivo con claves reales. Si una clave local tiene `#` u otros símbolos, escribirla entre comillas simples en `.env`. El rol `app_bomberos` no crea tablas; conserva los permisos de uso de la aplicación.

---

## 9. Consultas y migraciones

Ejecutar `db/consultas.sql` para revisar los datos. Las migraciones de Django se deben aplicar como propietario de la base (`postgres`), para que se creen las tablas de autenticación y sesión:

```powershell
$env:DB_USER = 'postgres'
$env:DB_PASSWORD = 'CLAVE_LOCAL_DE_POSTGRES'
py manage.py migrate
Remove-Item Env:DB_USER, Env:DB_PASSWORD
```

Después de eso, `.env` debe volver a usar `DB_USER=app_bomberos`. Crear el usuario administrador y correr la app en desarrollo:

```powershell
py manage.py createsuperuser
py manage.py runserver
```

Abrir `http://127.0.0.1:8000/`. Desarrollo usa HTTP; producción debe servirse por HTTPS.

Para revisar la configuración de producción, con las variables requeridas disponibles, ejecutar:

```powershell
py manage.py check --deploy --settings=core.settings.prod
```

En un workflow también se puede definir `DJANGO_SETTINGS_MODULE=core.settings.prod` en el entorno antes de ejecutar el comando. Para cargar producción son obligatorias `DJANGO_SECRET_KEY`, `DJANGO_ALLOWED_HOSTS`, `DB_NAME`, `DB_USER` y `DB_PASSWORD`; `DB_HOST` y `DB_PORT` tienen valores por defecto.

---

# Módulos implementados

Actualmente el proyecto cuenta con los siguientes módulos:

- Gestión de Clientes
- Gestión de Proveedores
- Gestión de Inventario
- Gestión de Ventas
- Gestión de Compras

Cada módulo mantiene la misma arquitectura basada en:

- Modelo
- Vista
- Formulario
- URLs
- Plantillas HTML

---

# Validaciones implementadas

Entre las principales validaciones se encuentran:

- Correos electrónicos únicos.
- Número de documento único.
- Validación del formato del correo.
- Validación de longitud de teléfono.
- Campos obligatorios.
- Confirmación antes de eliminar registros.
- Restricción para eliminar registros relacionados.
- Mensajes de éxito y error mediante Django Messages.

---

# Arquitectura utilizada

El proyecto sigue la arquitectura **MVT (Model - View - Template)** de Django.

- **Models:** representan las tablas de la base de datos.
- **Views:** contienen la lógica del sistema.
- **Templates:** generan la interfaz de usuario.
- **Forms:** administran formularios y validaciones.
- **URLs:** gestionan el enrutamiento de las páginas.

---

# Interfaz

La aplicación fue desarrollada utilizando Bootstrap 5 con el objetivo de ofrecer:

- Diseño responsive.
- Formularios organizados.
- Tablas con paginación.
- Búsquedas dinámicas.
- Alertas informativas.
- Navegación sencilla e intuitiva.

---
