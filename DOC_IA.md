# DOC_IA.md

# Bitácora de Uso de Inteligencia Artificial

## Proyecto

**Sistema de Gestión Comercial — Bomberos Voluntarios de Cali**

**Grupo:** 4

**Empresa de referencia:** Benemérito Cuerpo de Bomberos Voluntarios de Cali (División Comercial)

**Integrantes**

- Dana Sofía Gomez Manrique
- Hilary Herrera Erazo
- Laura Valentina Bernal Lozada

**Fecha de inicio:** Abril de 2026

---

## Introducción

Este documento registra el uso de herramientas de Inteligencia Artificial durante el desarrollo del proyecto **Sistema de Gestión Comercial para el Benemérito Cuerpo de Bomberos Voluntarios de Cali**.

La IA fue utilizada como una herramienta de apoyo para resolver dudas de diseño, validar decisiones de arquitectura, generar propuestas de implementación y mejorar distintos módulos del sistema. Sin embargo, todas las respuestas obtenidas fueron analizadas, adaptadas y validadas por el equipo antes de incorporarlas al proyecto.

Para cada intervención se registra:

- **Prompt utilizado:** instrucción dada a la herramienta de IA.
- **Resultado obtenido:** respuesta o propuesta entregada.
- **Ajuste manual / Validación:** modificaciones realizadas por el equipo para adaptar la solución al proyecto y garantizar su correcto funcionamiento.

---

# Fase 1 · Diseño y Modelado de la Base de Datos

## 1. Cómo evitar perder el historial al dar de baja un producto

**Herramienta utilizada:** ChatGPT

### Prompt utilizado

> "Tengo una tabla PRODUCTO en PostgreSQL que está relacionada mediante llave foránea con INVENTARIO, DETALLE_ORDEN y DETALLE_ORD_PROVEEDOR. Necesito que, cuando un producto deje de venderse, no se pierdan los registros de ventas ni de inventario que ya tiene asociados. Explícame en español sencillo qué opciones de diseño existen para esto en una base de datos relacional, y cuál es la más recomendable para un sistema comercial real."

### Resultado obtenido

La IA explicó dos alternativas:

- Eliminar físicamente el producto utilizando **ON DELETE CASCADE**, lo que eliminaría también todos los registros relacionados.
- Agregar un campo booleano denominado **activo** para indicar que el producto ya no se comercializa, conservando toda la información histórica.

La herramienta recomendó la segunda alternativa, ya que los sistemas comerciales requieren conservar el historial de ventas e inventario.

### Ajuste manual / Validación

Se decidió implementar la segunda opción mediante el atributo **activo** dentro de la tabla **PRODUCTO**.

Posteriormente se modificaron manualmente las vistas de Django, específicamente la función **eliminar_producto** ubicada en `apps/inventario/views.py`, para que en lugar de eliminar el registro simplemente cambiara el valor del campo **activo** a **False**, manteniendo toda la información histórica almacenada en la base de datos.

---

## 2. Separar el inventario del producto para no repetir información

**Herramienta utilizada:** Gemini

### Prompt utilizado

> "Estoy diseñando el modelo entidad-relación de un sistema de bomberos que vende extintores y equipos de seguridad. Tengo dudas de si el stock actual, el stock mínimo y la demanda diaria de cada producto deberían ir como columnas dentro de la misma tabla PRODUCTO, o si conviene separarlos en una tabla aparte. Explícame las ventajas de cada opción pensando en las reglas de normalización de bases de datos."

### Resultado obtenido

La IA explicó que almacenar la información del inventario dentro de la tabla PRODUCTO mezcla atributos con comportamientos diferentes:

- Los datos propios del producto cambian muy pocas veces.
- El stock y la demanda cambian constantemente.

También indicó que separar esta información favorece el cumplimiento de la **Tercera Forma Normal (3FN)** y evita redundancia e inconsistencias.

### Ajuste manual / Validación

Se creó la tabla **INVENTARIO**, relacionada mediante una relación **uno a uno** con PRODUCTO.

Además, esta misma decisión fue replicada posteriormente en Django mediante una relación **OneToOneField**, garantizando que un producto únicamente pudiera tener un registro de inventario asociado.

---

## 3. Diseño de las órdenes de compra a proveedores y sus estados

**Herramienta utilizada:** ChatGPT

### Prompt utilizado

> "Necesito diseñar en PostgreSQL una tabla para registrar los pedidos que una empresa le hace a sus proveedores (orden de compra), con una tabla de detalle para los productos de cada pedido. El pedido debe empezar siempre en un estado 'Pendiente' y solo debe poder pasar a 'Recibida' o 'Cancelada', nunca a cualquier otro texto libre. ¿Cómo defino esa restricción directamente en la base de datos, no solo en el código de la aplicación?"

### Resultado obtenido

La IA propuso utilizar restricciones **CHECK** sobre el atributo **estado**, permitiendo únicamente los valores:

- Pendiente
- Recibida
- Cancelada

También recomendó validar mediante restricciones CHECK que las fechas de entrega y recepción respetaran el orden cronológico correspondiente.

### Ajuste manual / Validación

Se implementaron ambas restricciones CHECK dentro de la tabla **ORDEN_PROVEEDOR** del archivo `ddl.sql`.

Posteriormente, durante el desarrollo del formulario **OrdenProveedorForm** en Django, se decidió además que el usuario no pudiera escoger el estado al momento de crear una orden. Todas las órdenes nuevas se registran automáticamente con estado **Pendiente**, dejando la modificación del estado únicamente para los procesos correspondientes.

---

## 4. Revisión completa del cumplimiento de la Tercera Forma Normal

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "Aquí tienes el DDL completo de mi base de datos con 13 tablas para un sistema comercial de bomberos. Revisa tabla por tabla si existen dependencias transitivas y dime específicamente si hay algún caso donde no se cumpla la Tercera Forma Normal."

### Resultado obtenido

La IA revisó las trece tablas del modelo y concluyó que no existían dependencias transitivas que violaran la Tercera Forma Normal.

Además destacó como aspectos importantes:

- La separación entre PRODUCTO e INVENTARIO.
- El uso correcto de tablas intermedias para resolver relaciones muchos a muchos.
- La adecuada separación entre entidades maestras y entidades transaccionales.

### Ajuste manual / Validación

La revisión fue utilizada únicamente como guía.

El equipo verificó manualmente cada observación comparándola con el DDL desarrollado y posteriormente redactó con sus propias palabras la explicación de normalización incluida en el informe del proyecto.

---

## 5. Comparación entre el DDL y los modelos de Django

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "Aquí está mi archivo models.py de la app inventario en Django y aquí está mi archivo ddl.sql con la tabla PRODUCTO. Compara ambos archivos y dime si el modelo representa exactamente las mismas columnas y restricciones que la base de datos."

### Resultado obtenido

La IA detectó que el modelo **Producto** en Django no incluía el campo **id_proveedor**, a pesar de que en PostgreSQL la tabla PRODUCTO lo definía como una llave foránea obligatoria.

También explicó que esta diferencia produciría errores al intentar guardar productos desde la aplicación.

### Ajuste manual / Validación

Se agregó el campo correspondiente utilizando **ForeignKey** hacia el modelo **Proveedor**.

Posteriormente también se modificó el formulario **ProductoForm**, incorporando un selector desplegable para escoger el proveedor durante la creación y edición de productos, garantizando que la estructura del modelo coincidiera completamente con la base de datos.

---

# Fase 2 · Generación y Carga de Datos

## 6. Script en Python para generar todos los datos de prueba

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "Tengo el siguiente DDL de PostgreSQL para un sistema de gestión de ventas y compras del Benemérito Cuerpo de Bomberos en Cali, con 13 tablas (SEDE, CLIENTE, PROVEEDOR, EMPLEADO, PRODUCTO, INVENTARIO, ORDEN, DETALLE_ORDEN, FACTURA, PAGO, ENTREGA, ORDEN_PROVEEDOR, DETALLE_ORD_PROVEEDOR). Genera un script en Python que produzca archivos separados en formato .sql con sentencias INSERT para poblar toda la base de datos, con datos principales variados (mínimo 60 clientes, 8 proveedores, 10 empleados, 20 productos, no solo 10 o 15 registros repetidos), 1000 órdenes de venta y 150 órdenes de compra con sus tablas dependientes, sesgos estadísticos intencionales como picos de venta en ciertos meses y productos más populares que otros, y respetando estrictamente todas las restricciones UNIQUE y llaves foráneas definidas en el DDL, dividiendo la salida en archivos independientes para que un error en un bloque no afecte a los demás."

### Resultado obtenido

La IA entregó cuatro archivos separados:

- **00_reset.sql**, para limpiar la base de datos antes de una nueva carga.
- **01_bases.sql**, con los datos maestros como clientes, proveedores, empleados y productos.
- **02_transacciones_ventas.sql**, con las ventas y sus tablas relacionadas.
- **03_transacciones_compras.sql**, con las órdenes de compra y sus registros asociados.

Además generó datos variados, respetó las relaciones entre tablas y simuló comportamientos reales como temporadas de mayor venta y productos con diferentes niveles de popularidad.

### Ajuste manual / Validación

Antes de cargar los archivos en PostgreSQL se revisó manualmente una muestra de las órdenes generadas para verificar que los subtotales y los valores almacenados en las tablas coincidieran correctamente.

También se corrigieron algunos casos donde el total de la orden presentaba pequeñas diferencias ocasionadas por redondeos durante la generación automática.

---

## 7. Corregir fechas inconsistentes en las órdenes de compra generadas

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "En el archivo 03_transacciones_compras.sql que generamos para poblar ORDEN_PROVEEDOR, necesito verificar que en cada fila la fecha_entrega nunca sea anterior a la fecha_orden, y que la fecha_recepcion nunca sea anterior a la fecha_entrega, porque nuestra base de datos tiene una restricción CHECK que exige ese orden cronológico. Ayúdame a revisar el archivo y decirme si hay filas que violen esa regla antes de intentar cargarlas."

### Resultado obtenido

La IA revisó el archivo y detectó varias filas donde las fechas generadas aleatoriamente incumplían el orden cronológico exigido por las restricciones CHECK implementadas en la base de datos.

Indicó exactamente cuáles registros producirían errores al momento de ejecutar los INSERT.

### Ajuste manual / Validación

Las filas señaladas fueron corregidas manualmente antes de realizar la carga.

Se modificaron únicamente las fechas necesarias para que todas las órdenes respetaran el siguiente orden cronológico:

- Fecha de orden.
- Fecha de entrega.
- Fecha de recepción.

De esta manera fue posible mantener activas las restricciones CHECK sin necesidad de eliminarlas.

---

## 8. Decidir entre usar INSERT o COPY para cargar los datos

**Herramienta utilizada:** ChatGPT

### Prompt utilizado

> "Tengo miles de filas de datos sintéticos para cargar en mi base de datos PostgreSQL desde pgAdmin. ¿Cuál es la diferencia práctica entre usar muchas sentencias INSERT una por una, o generar un archivo CSV y usar el comando COPY? ¿Cuál me conviene más para un proyecto universitario que se va a ejecutar solo una vez en un entorno local?"

### Resultado obtenido

La IA explicó que:

- **COPY** ofrece un mejor rendimiento cuando se deben cargar grandes cantidades de datos.
- **INSERT** facilita la lectura, depuración y corrección de registros individuales durante el proceso de desarrollo.

También recomendó escoger la alternativa dependiendo del objetivo del proyecto.

### Ajuste manual / Validación

Se decidió utilizar sentencias **INSERT** debido a que durante el desarrollo fue necesario corregir registros específicos varias veces.

Esta decisión facilitó localizar rápidamente errores dentro de los archivos SQL y realizar ajustes sin necesidad de regenerar completamente los datos.

---

## 9. Agregar una columna que faltaba en la tabla de órdenes de compra

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "El enunciado de mi proyecto exige que toda orden de pedido a un proveedor tenga un campo de 'lugar de entrega' (una bodega específica), pero al revisar mi tabla ORDEN_PROVEEDOR en el ddl.sql me di cuenta de que esa columna no existe. Ya tengo datos cargados en esa tabla. Ayúdame a escribir el script para agregar esa columna sin dañar ni perder las filas que ya existen."

### Resultado obtenido

La IA propuso realizar el cambio mediante tres pasos:

1. Agregar inicialmente la nueva columna permitiendo valores nulos.
2. Actualizar los registros existentes asignando un valor por defecto.
3. Modificar posteriormente la definición de la columna para convertirla en un campo obligatorio.

### Ajuste manual / Validación

El procedimiento fue ejecutado sobre la base de datos ya existente sin afectar la información previamente cargada.

Finalmente también se actualizó el archivo **ddl.sql** para que cualquier nueva instalación del sistema incluyera desde el inicio la columna **lugar_entrega**, evitando repetir posteriormente el procedimiento de migración.

---

# Fase 3 · CRUD de Productos e Inventario en Django

## 10. Crear las pantallas para administrar productos, no solo el inventario

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "En mi aplicación Django tengo un modelo Producto y un modelo Inventario relacionados uno a uno, pero solo construí las pantallas (listar, editar, eliminar) para Inventario. Necesito crear también las pantallas completas para administrar Producto como una entidad propia: ver la lista, crear uno nuevo, editarlo y darlo de baja, siguiendo el mismo estilo visual que ya tengo en las demás pantallas de la aplicación."

### Resultado obtenido

La IA generó las funciones:

- **lista_productos**
- **crear_producto**
- **editar_producto**
- **eliminar_producto**

Además propuso los formularios correspondientes y las plantillas HTML necesarias, reutilizando el mismo diseño visual utilizado en el resto de la aplicación, incluyendo tablas, botones y paginación.

### Ajuste manual / Validación

Se modificó la función **eliminar_producto** para que no eliminara físicamente el registro de la base de datos.

En su lugar, la aplicación cambia el valor del campo **activo** a **False**, conservando el historial del producto.

Adicionalmente se implementó una opción para **reactivar** productos dados de baja, funcionalidad que no estaba incluida en la propuesta inicial.

---

## 11. Calcular los días de stock sin almacenarlos en la base de datos

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "El enunciado de mi proyecto dice explícitamente que NO se debe almacenar el dato de 'días de stock' junto con los productos, porque cambia todo el tiempo según las ventas. Sin embargo, mi aplicación actual sí tiene una columna 'estado_stock' que el usuario llena a mano en un formulario. Ayúdame a rediseñar esa parte para que el estado del inventario (Agotado, Crítico, Alerta o Seguro) se calcule automáticamente en cada consulta usando la fórmula de inventario actual entre demanda diaria, y no se guarde en ningún campo de la tabla."

### Resultado obtenido

La IA propuso eliminar el campo **estado_stock** del formulario y reemplazarlo por una función en Python encargada de calcular automáticamente:

- Días de stock.
- Estado del inventario.
- Acción recomendada.

El cálculo se realiza utilizando el stock actual y la demanda diaria del producto.

### Ajuste manual / Validación

La lógica fue implementada dentro de la vista **lista_inventario**, calculando la información en tiempo de ejecución antes de mostrar cada registro.

Posteriormente se verificaron manualmente distintos casos de prueba para confirmar que los estados mostrados coincidieran con los cálculos esperados.

---

## 12. Evitar que se puedan crear dos registros de inventario para el mismo producto

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "Mi modelo Inventario tiene una relación uno a uno con Producto, pero noté que el formulario de 'Nuevo Registro de Inventario' en mi aplicación deja elegir en el selector cualquier producto activo, incluso los que ya tienen un registro de inventario creado. Si selecciono uno de esos y guardo, me va a dar un error de la base de datos por violar la restricción de unicidad. ¿Cómo filtro el selector para que solo se puedan elegir productos que todavía no tengan inventario asignado?"

### Resultado obtenido

La IA recomendó sobrescribir el método **__init__** del formulario **InventarioForm**, modificando el **queryset** del campo correspondiente para excluir los productos que ya tuvieran un registro de inventario asociado.

También indicó cómo permitir que el producto actual continuara apareciendo cuando el formulario se utilizara para editar un registro existente.

### Ajuste manual / Validación

El filtro fue implementado siguiendo esa propuesta.

Después se realizaron pruebas desde la aplicación verificando que:

- Los productos nuevos aparecieran disponibles.
- Los productos con inventario ya registrado dejaran de mostrarse.
- Durante la edición del inventario el producto asociado continuara siendo visible.

---

## 13. Corregir una plantilla HTML que quedó duplicada por error

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "Después de crear las pantallas nuevas de Producto, al entrar a la lista de productos en mi navegador me sigue apareciendo la tabla de Inventario (con columnas de stock y demanda), en vez de la tabla de Producto (con columnas de nombre, categoría y precio). Aquí está mi views.py y aquí está mi archivo producto_lista.html, dime qué está mal."

### Resultado obtenido

La IA encontró que el archivo **producto_lista.html** contenía exactamente el mismo contenido utilizado por la plantilla del inventario, debido a un error de copiado.

También verificó que la vista apuntaba correctamente al archivo correspondiente.

### Ajuste manual / Validación

Se reemplazó completamente el contenido de **producto_lista.html** por la versión correcta.

Adicionalmente se revisaron las demás plantillas creadas para el módulo de productos con el fin de asegurar que ninguna presentara el mismo problema.

---

## 14. Permitir reactivar un producto que fue dado de baja por error

**Herramienta utilizada:** ChatGPT

### Prompt utilizado

> "Ya tengo la función para desactivar un producto marcando su campo 'activo' en falso. ¿Cómo agrego, siguiendo el mismo patrón de vistas de Django que ya uso, una función para reactivar un producto que fue desactivado por error, sin tener que editarlo manualmente desde la base de datos?"

### Resultado obtenido

La IA propuso crear una nueva vista denominada **activar_producto**, similar a la utilizada para desactivar productos.

También sugirió incluir una pantalla de confirmación antes de realizar el cambio.

### Ajuste manual / Validación

Se implementó la nueva vista junto con su ruta correspondiente dentro de **urls.py**.

Además se modificó la plantilla de listado de productos para mostrar únicamente el botón adecuado según el estado del producto:

- **Desactivar** cuando el producto está activo.
- **Reactivar** cuando el producto se encuentra inactivo.

Con ello se evitó que ambos botones aparecieran simultáneamente para un mismo registro.

---

# Fase 4 · Módulo de Compras a Proveedores

## 15. Crear desde cero la app de órdenes de compra, que no existía

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "Mi base de datos ya tiene las tablas ORDEN_PROVEEDOR y DETALLE_ORD_PROVEEDOR definidas en el DDL, pero en mi aplicación Django no existe ninguna app que las administre. Ayúdame a crear una app nueva llamada 'compras' completa: modelos, formularios, vistas y plantillas, para poder registrar órdenes de pedido a proveedores desde la aplicación web, respetando que el proveedor y el empleado deben elegirse de una lista ya existente."

### Resultado obtenido

La IA generó la estructura completa de la nueva aplicación **compras**, incluyendo:

- Modelos.
- Formularios.
- Vistas.
- Plantillas HTML.

Los modelos fueron construidos respetando las columnas definidas en el DDL de PostgreSQL y los formularios incluyeron listas desplegables para seleccionar proveedores y empleados existentes.

### Ajuste manual / Validación

La nueva aplicación fue registrada manualmente en **INSTALLED_APPS** dentro de **settings.py** y posteriormente se agregaron las rutas correspondientes en **urls.py**, permitiendo que Django reconociera correctamente el nuevo módulo.

---

## 16. Que el total de la orden de compra se recalcule automáticamente al agregar productos

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "En mi app de compras, cuando agrego un producto nuevo a una orden ya creada, necesito que el campo 'total' de la orden se actualice automáticamente sumando todas las líneas de detalle, sin que el usuario tenga que calcularlo ni escribirlo a mano. ¿Cómo implemento eso en la vista de Django, considerando que puedo agregar varios productos uno por uno?"

### Resultado obtenido

La IA propuso crear una función auxiliar encargada de sumar automáticamente todos los subtotales registrados en **DetalleOrdProveedor** y almacenar el resultado en el campo **total** de la orden.

También indicó que esta función debía ejecutarse cada vez que se agregara o eliminara un producto de la orden.

### Ajuste manual / Validación

La función fue implementada y conectada tanto al proceso de agregar productos como al de eliminarlos.

Posteriormente se realizaron pruebas creando órdenes con varios productos para verificar que el total mostrado coincidiera exactamente con la suma de todos los subtotales registrados.

---

## 17. Impedir que una orden ya recibida pueda seguir editándose

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "El enunciado de mi proyecto exige que una orden de pedido, una vez finalizada, no se pueda editar ni eliminar. Ya tengo la lógica para cambiar el estado de la orden entre Pendiente, Recibida y Cancelada, pero necesito asegurarme de que, apenas deje de estar en Pendiente, ya no se puedan agregar ni quitar productos de esa orden, sin importar si alguien intenta hacerlo directamente desde la dirección web."

### Resultado obtenido

La IA recomendó crear una propiedad denominada **es_editable** dentro del modelo **OrdenProveedor**, utilizada tanto para controlar la interfaz gráfica como para validar desde la vista si una orden todavía podía modificarse.

### Ajuste manual / Validación

Además de ocultar los botones en la interfaz, se implementó la validación directamente en las vistas de Django para impedir modificaciones incluso cuando un usuario intentara acceder manualmente mediante la URL.

Con ello la restricción quedó protegida desde el servidor y no únicamente desde el navegador.

---

## 18. Agregar los botones para marcar una orden como recibida o cancelada

**Herramienta utilizada:** ChatGPT

### Prompt utilizado

> "Necesito dos acciones nuevas en mi app de compras: una para marcar una orden de pedido como 'Recibida' cuando llega la mercancía, y otra para 'Cancelarla'. Ambas deben registrar la fecha real en que ocurrió el cambio, y ninguna de las dos debe poder aplicarse si la orden ya no está en estado Pendiente."

### Resultado obtenido

La IA propuso implementar dos vistas independientes:

- **recibir_orden**
- **cancelar_orden**

Cada una con su respectiva pantalla de confirmación y con una validación previa del estado de la orden antes de permitir el cambio.

### Ajuste manual / Validación

Además de la solución propuesta, se agregó una validación adicional que impide marcar una orden como **Recibida** cuando todavía no posee productos asociados.

Esta condición fue incorporada para garantizar que únicamente puedan finalizarse órdenes con contenido válido desde el punto de vista del negocio.


---

# Fase 5 · Facturación y Cálculo de IVA

## 19. Calcular el IVA diferente según el tipo de producto vendido

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "Actualmente mi aplicación calcula el IVA de cada venta aplicando un 19% fijo sobre el total completo de la orden, sin importar qué se vendió. Necesito que el cálculo sea diferenciado: algunos productos no deberían pagar IVA (como los cursos de capacitación), otros deberían pagar una tarifa reducida (como los botiquines), y el resto debe seguir con el 19% general. No quiero agregar columnas nuevas a la base de datos, quiero usar la columna 'categoria' que ya existe en mi tabla Producto. ¿Cuál es la forma más simple de implementar esto sin complicar el código?"

### Resultado obtenido

La IA propuso crear un diccionario en Python que asociara determinadas categorías de productos con su tarifa correspondiente de IVA, utilizando una tarifa general como respaldo para cualquier categoría no contemplada.

También sugirió recorrer cada línea del detalle de la venta para calcular el impuesto de manera individual según la categoría del producto.

### Ajuste manual / Validación

La asignación de las tarifas no fue tomada directamente de la IA.

Se revisó la normativa colombiana vigente y se definió manualmente que:

- Capacitación → 0%
- Botiquines → 5%
- Demás productos → 19%

Posteriormente se realizaron pruebas para verificar que el cálculo coincidiera con los valores esperados en las facturas generadas.

---

## 20. Bloquear la edición de una orden de venta que ya fue facturada

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "Tengo una función editar_venta en mi aplicación que permite modificar una orden de venta. El problema es que, aunque en la pantalla escondo el botón de 'Editar' cuando la orden ya fue facturada, si alguien entra directamente escribiendo la dirección web en el navegador, todavía puede editar una orden que ya debería estar cerrada. ¿Cómo cierro completamente esa posibilidad?"

### Resultado obtenido

La IA recomendó agregar una validación al inicio de la vista **editar_venta**, verificando si la venta seguía siendo editable antes de mostrar el formulario.

En caso contrario, debía redirigir al usuario hacia la lista de ventas mostrando un mensaje de error.

### Ajuste manual / Validación

La validación fue implementada directamente en la vista para impedir modificaciones incluso cuando un usuario intentara ingresar manualmente mediante la URL.

Con ello se protegió completamente la integridad de las ventas ya facturadas.

---

## 21. Qué campos debe tener obligatoriamente la Factura Electrónica de Venta

**Herramienta utilizada:** ChatGPT

### Prompt utilizado

> "Necesito que mi tabla FACTURA en PostgreSQL cumpla con lo que exige la normativa colombiana de facturación electrónica para el año 2026: debe decir explícitamente 'Factura Electrónica de Venta', tener un número consecutivo único, un código CUFE, y registrar por separado la fecha y hora de generación y la fecha y hora de expedición del documento. Ayúdame a confirmar que mi diseño de tabla ya cumple con esto o qué me falta agregar."

### Resultado obtenido

La IA revisó el diseño de la tabla FACTURA y detectó que era necesario agregar nuevos campos para almacenar:

- Código CUFE.
- Fecha y hora de generación.
- Fecha y hora de expedición.

También recomendó utilizar un consecutivo único para identificar cada factura electrónica.

### Ajuste manual / Validación

Las nuevas columnas fueron agregadas al archivo **ddl.sql** y posteriormente se ajustó la plantilla utilizada para generar la factura dentro de la aplicación, incluyendo el título fijo **"Factura Electrónica de Venta"**, tal como exige la normativa colombiana.

Las modificaciones fueron verificadas ejecutando nuevamente la creación de la base de datos y comprobando que todas las restricciones continuaran funcionando correctamente.


---

# Fase 6 · Seguridad y Protección de Datos Críticos

## 22. Que el NIT o cédula no se pueda cambiar una vez el tercero ya existe

**Herramienta utilizada:** ChatGPT

### Prompt utilizado

> "Tengo un formulario de Django para el modelo Cliente. Necesito que el campo num_doc (el número de documento) se pueda escribir libremente al crear un cliente nuevo, pero que quede completamente bloqueado para edición una vez ese cliente ya existe en la base de datos, sin depender de JavaScript en el navegador, porque quiero que la protección sea real y no solo visual."

### Resultado obtenido

La IA explicó que en Django es posible sobrescribir el método de inicialización del formulario y verificar si el objeto ya existe en la base de datos.

Si el registro ya existe, el campo correspondiente puede marcarse como **deshabilitado** directamente desde el formulario de Python, evitando que pueda modificarse durante la edición.

### Ajuste manual / Validación

Se aplicó el mismo patrón tanto al formulario de **Cliente** como al de **Proveedor**, bloqueando respectivamente los campos **num_doc** y **nit** cuando el registro ya existía.

Además, se comprobó que al estar deshabilitados estos campos no fueran enviados nuevamente durante el envío del formulario, ajustando la lógica de las vistas para que el resto de la información pudiera actualizarse correctamente.

---

## 23. Impedir borrar un cliente o proveedor que ya tiene movimientos

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "El enunciado de mi proyecto exige que no se pueda eliminar un cliente o un proveedor si ya tiene facturas u órdenes asociadas, para proteger la integridad de la información contable. ¿Cómo implemento esa restricción en Django, aprovechando que ya tengo llaves foráneas definidas entre esas tablas?"

### Resultado obtenido

La IA explicó que, cuando las relaciones entre modelos están configuradas con protección frente al borrado, Django lanza automáticamente la excepción **ProtectedError** al intentar eliminar un registro que posee información relacionada.

También indicó que dicha excepción debía capturarse dentro de la vista para mostrar un mensaje amigable al usuario en lugar de un error técnico.

### Ajuste manual / Validación

La solución fue implementada mediante bloques **try/except** dentro de las vistas **eliminar_cliente** y **eliminar_proveedor**.

Además de impedir el borrado, se agregó un mensaje claro para informar al usuario que el registro no podía eliminarse porque tenía información asociada dentro del sistema.

Finalmente se realizaron pruebas intentando eliminar clientes y proveedores con órdenes registradas, verificando que la aplicación mostrara el mensaje correspondiente sin generar errores internos.

---


---

# Fase 7 · Consultas SQL y Documentación Final

## 24. Escribir consultas SQL más avanzadas usando subconsultas

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "Ya tengo diez consultas SQL con JOIN y GROUP BY para el Avance 3 de mi proyecto. Para la Entrega Final necesito otras diez consultas más complejas que además usen subconsultas, no solo JOIN, sobre mi misma base de datos de Bomberos Cali. Por ejemplo, quiero encontrar clientes que nunca han comprado, empleados que ganan más que el promedio de la nómina, o proveedores que nunca han recibido una orden de compra."

### Resultado obtenido

La IA generó un conjunto de diez consultas SQL utilizando subconsultas junto con JOIN, GROUP BY y operadores como **NOT EXISTS** y **NOT IN**.

Las consultas permitían obtener información de interés para el negocio, como:

- Clientes que nunca han realizado compras.
- Empleados con salarios superiores al promedio.
- Proveedores que no han recibido órdenes de compra.
- Otros análisis sobre ventas y compras del sistema.

Cada consulta incluía una breve explicación sobre el propósito de la información obtenida.

### Ajuste manual / Validación

Todas las consultas fueron ejecutadas manualmente en PostgreSQL utilizando los datos reales del proyecto.

Se verificó que cada consulta produjera resultados coherentes y acordes con la información almacenada antes de incorporarlas al documento final.

---

## 25. Redactar la explicación del diseño de la base de datos en palabras simples

**Herramienta utilizada:** Claude (Sonnet 5)

### Prompt utilizado

> "Con base en mi archivo ddl.sql completo y las reglas de negocio que ya redactamos en el reporte, ayúdame a escribir la sección 'Bases de Datos Diseñada' explicando en un texto narrativo, sin usar demasiados subtítulos ni viñetas, cómo se conectan las trece tablas entre sí y por qué se diseñaron de esa manera, de forma que se entienda incluso sin conocimientos técnicos de bases de datos."

### Resultado obtenido

La IA generó un texto continuo explicando la estructura general de la base de datos, describiendo cómo se relacionan las entidades principales del sistema, los módulos de ventas y compras, y la organización general del modelo.

También integró una explicación sobre la normalización y la distribución de las trece tablas dentro del diseño de la base de datos.

### Ajuste manual / Validación

El texto fue revisado completamente por el equipo.

Durante la revisión se detectó que la IA hacía referencia a un apartado de normalización perteneciente al informe del Avance 3 y no al documento final.

Por esta razón se modificó manualmente la redacción para integrar la explicación de normalización dentro del mismo texto, evitando referencias a documentos externos y manteniendo la coherencia del reporte final.

---
