# Sistema de Gestión Comercial — Bomberos Voluntarios de Cali

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

| Nombre | Código |
|--------|--------|
| Dana Sofía Gomez Manrique | 2438171 |
| Hilary Herrera Erazo | 2438987 |
| Laura Valentina Bernal Lozada | 2437088 |

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
- IntelliJ IDEA
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
│
├── templates/
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
│
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

## 5. Configurar PostgreSQL y el archivo .env

Crear una base de datos llamada:

```
bomberos_cali
```

Copiar `.env.example` como `.env` y completar los valores locales. La aplicación lee ahí la conexión y la configuración de seguridad; no guardes la contraseña real en Git. El usuario de ejecución recomendado es `app_bomberos`, creado con `db/roles.sql`.

Si la contraseña contiene `#` o símbolos especiales, escribirla entre comillas simples en `.env`.

En desarrollo local por HTTP, conservar `DEBUG=True`, `SECURE_SSL_REDIRECT=False`, `SECURE_HSTS_SECONDS=0`, `CSRF_COOKIE_SECURE=False` y `SESSION_COOKIE_SECURE=False`.

---

## 6. Crear las tablas

Ejecutar el archivo

```
db/ddl.sql
```

---

## 7. Cargar los datos

Si se va a vaciar y volver a cargar una base ya creada, abrir `db/insert/00_reset.sql` en Query Tool. En esa misma sesión, ejecutar primero `SET app.permitir_reset = 'on';` y luego el archivo.

### 01_bases.sql

Carga la información principal:

- Clientes
- Empleados
- Sedes
- Productos
- Proveedores

---

### 02_transacciones_ventas.sql

Carga:

- Órdenes
- Detalles de orden
- Facturas
- Pagos
- Entregas

---

### 03_transacciones_compras.sql

Carga:

- Órdenes de compra
- Detalles de compra
- Facturas de proveedores
- Pagos a proveedores

---

## 8. Crear los roles de la aplicación

Después de crear el esquema y cargar los datos, ejecutar `db/roles.sql` en Query Tool conectado a `bomberos_cali`. Cambiar los valores `CAMBIAR_ESTA_CLAVE` solo en el editor antes de ejecutar; no guardar el archivo con contraseñas reales.

El rol `app_bomberos` tiene permisos de lectura y escritura, pero no puede crear tablas. Por eso las migraciones de Django se ejecutan una vez como el propietario de la base (`postgres`) para que se creen las tablas de autenticación y sesión. Luego la aplicación funciona con `app_bomberos`.

## 9. Ejecutar las consultas de validación

Abrir:

```
db/consultas.sql
```

y ejecutar todas las consultas.

---

# Ejecutar la aplicación

Una vez cargados los datos y creados los roles, instalar o activar el entorno de Python y completar `.env`.

En PowerShell, sobreescribir temporalmente la conexión para aplicar migraciones como `postgres`:

```powershell
$env:DB_USER = 'postgres'
$env:DB_PASSWORD = 'CLAVE_LOCAL_DE_POSTGRES'
py manage.py migrate
Remove-Item Env:DB_USER, Env:DB_PASSWORD
```

Después, `.env` debe quedar con `DB_USER=app_bomberos` y la clave correspondiente al rol. Crear el usuario de Django e iniciar el servidor:

```powershell
py manage.py createsuperuser
py manage.py runserver
```

Abrir el navegador en:

```
http://127.0.0.1:8000/
```

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
