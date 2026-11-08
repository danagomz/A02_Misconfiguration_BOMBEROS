-- 10 consultas básicas + 10 consultas complejas (JOIN / subconsultas)

-- BLOQUE 1: CONSULTAS BÁSICAS (sin JOIN, filtros y orden simples)

-- 1. Listado de clientes tipo Empresa
SELECT id_cliente, nombre_razon_social, num_doc, ciudad, telefono
FROM CLIENTE
WHERE tipo_cliente = 'Empresa'
ORDER BY nombre_razon_social;


-- 2. Productos activos con precio superior a $300.000
SELECT id_producto, nombre, categoria, precio
FROM PRODUCTO
WHERE activo = TRUE
  AND precio > 300000
ORDER BY precio DESC;


-- 3. Proveedores activos con la calificación máxima (5)
SELECT id_proveedor, razon_social, tipo_proveedor, calificacion, tiempo_entrega
FROM PROVEEDOR
WHERE activo = TRUE
  AND calificacion = 5
ORDER BY razon_social;


-- 4. Órdenes de venta canceladas
SELECT id_orden, fecha, total, estado, observaciones
FROM ORDEN
WHERE estado = 'Cancelada'
ORDER BY fecha DESC;


-- 5. Facturas generadas durante el año 2026
SELECT id_factura, num_consec, fecha_generacion, subtotal, total_iva, total
FROM FACTURA
WHERE EXTRACT(YEAR FROM fecha_generacion) = 2026
ORDER BY fecha_generacion;


-- 6. Listado completo de sedes registradas
SELECT id_sede, nombre_sede, direccion, telefono
FROM SEDE
ORDER BY nombre_sede;


-- 7. Productos cuyo inventario está por debajo del stock mínimo definido
SELECT id_inventario, id_producto, stock_actual, stock_minimo, demanda_diaria
FROM INVENTARIO
WHERE stock_actual < stock_minimo
ORDER BY stock_actual ASC;


-- 8. Proveedores dedicados al suministro de extintores
SELECT id_proveedor, razon_social, telefono, correo, tipo_proveedor
FROM PROVEEDOR
WHERE tipo_proveedor ILIKE '%extintor%'
ORDER BY razon_social;


-- 9. Cantidad de productos registrados por categoría
SELECT categoria, COUNT(*) AS total_productos
FROM PRODUCTO
WHERE activo = TRUE
GROUP BY categoria
ORDER BY total_productos DESC;


-- 10. Entregas cuyo estado sigue Pendiente
SELECT id_entrega, id_orden, fecha_llegada, direccion_entrega, estado_entrega
FROM ENTREGA
WHERE estado_entrega = 'Pendiente'
ORDER BY fecha_llegada;

--CONSULTAS COMPLEJAS (JOIN, subconsultas y consultas relacionadas)

-- 1. Clientes que nunca han generado una orden (subconsulta con NOT IN)
SELECT c.id_cliente, c.nombre_razon_social, c.num_doc, c.ciudad
FROM CLIENTE c
WHERE c.id_cliente NOT IN (
    SELECT DISTINCT o.id_cliente FROM ORDEN o
)
ORDER BY c.nombre_razon_social;


-- 2. Productos activos que nunca se han vendido (subconsulta con NOT EXISTS)
SELECT p.id_producto, p.nombre, p.categoria
FROM PRODUCTO p
WHERE p.activo = TRUE
  AND NOT EXISTS (
    SELECT 1 FROM DETALLE_ORDEN d WHERE d.id_producto = p.id_producto
)
ORDER BY p.nombre;


-- 3. Empleados cuyo salario supera el promedio general de la nómina
-- (subconsulta escalar en la cláusula WHERE)
SELECT e.id_empleado, e.nombre, e.apellido, e.cargo, e.salario, s.nombre_sede
FROM EMPLEADO e
         JOIN SEDE s ON e.id_sede = s.id_sede
WHERE e.salario > (
    SELECT AVG(salario) FROM EMPLEADO
)
ORDER BY e.salario DESC;


-- 4. Proveedores cuyo tiempo de entrega es menor al promedio de todos los proveedores
SELECT pv.id_proveedor, pv.razon_social, pv.tiempo_entrega, pv.calificacion
FROM PROVEEDOR pv
WHERE pv.tiempo_entrega < (
    SELECT AVG(tiempo_entrega) FROM PROVEEDOR WHERE activo = TRUE
)
  AND pv.activo = TRUE
ORDER BY pv.tiempo_entrega ASC;


-- 5. Órdenes cuyo total supera el promedio de todas las órdenes no canceladas
SELECT o.id_orden, o.fecha, o.total, c.nombre_razon_social AS cliente
FROM ORDEN o
         JOIN CLIENTE c ON o.id_cliente = c.id_cliente
WHERE o.total > (
    SELECT AVG(total) FROM ORDEN WHERE estado != 'Cancelada'
)
  AND o.estado != 'Cancelada'
ORDER BY o.total DESC;


-- 6. Producto más vendido dentro de cada categoría
-- (JOIN + GROUP BY, comparado contra el máximo por categoría mediante subconsulta)
SELECT p.categoria, p.nombre AS producto, SUM(d.cantidad) AS unidades_vendidas
FROM PRODUCTO p
         JOIN DETALLE_ORDEN d ON p.id_producto = d.id_producto
GROUP BY p.categoria, p.nombre
HAVING SUM(d.cantidad) = (
    SELECT MAX(total_categoria)
    FROM (
             SELECT SUM(d2.cantidad) AS total_categoria
             FROM PRODUCTO p2
                      JOIN DETALLE_ORDEN d2 ON p2.id_producto = d2.id_producto
             WHERE p2.categoria = p.categoria
             GROUP BY p2.id_producto
         ) AS ventas_por_producto
)
ORDER BY p.categoria;


-- 7. Clientes que han comprado en más de una sede distinta (JOIN + GROUP BY + HAVING)
SELECT c.id_cliente, c.nombre_razon_social, COUNT(DISTINCT o.id_sede) AS sedes_distintas
FROM CLIENTE c
         JOIN ORDEN o ON c.id_cliente = o.id_cliente
WHERE o.estado != 'Cancelada'
GROUP BY c.id_cliente, c.nombre_razon_social
HAVING COUNT(DISTINCT o.id_sede) > 1
ORDER BY sedes_distintas DESC;


-- 8. Facturas cuyo valor de IVA supera el promedio de IVA de todas las facturas generadas
SELECT f.id_factura, f.num_consec, f.total_iva, f.total, c.nombre_razon_social AS cliente
FROM FACTURA f
         JOIN ORDEN o ON f.id_orden = o.id_orden
         JOIN CLIENTE c ON o.id_cliente = c.id_cliente
WHERE f.total_iva > (
    SELECT AVG(total_iva) FROM FACTURA WHERE estado_factura IN ('Generada', 'Pagada')
)
ORDER BY f.total_iva DESC;


-- 9. Proveedores que nunca han recibido una orden de compra (subconsulta con NOT EXISTS)
SELECT pv.id_proveedor, pv.razon_social, pv.tipo_proveedor
FROM PROVEEDOR pv
WHERE pv.activo = TRUE
  AND NOT EXISTS (
    SELECT 1 FROM ORDEN_PROVEEDOR op WHERE op.id_proveedor = pv.id_proveedor
)
ORDER BY pv.razon_social;


-- 10. Órdenes de compra con más líneas de producto que el promedio de líneas por orden
-- (JOIN + GROUP BY comparado contra una subconsulta escalar)
SELECT op.id_ord_prov, pv.razon_social AS proveedor, op.fecha_orden, op.estado,
       COUNT(dp.id_detalle_prov) AS lineas_producto
FROM ORDEN_PROVEEDOR op
         JOIN PROVEEDOR pv ON op.id_proveedor = pv.id_proveedor
         JOIN DETALLE_ORD_PROVEEDOR dp ON op.id_ord_prov = dp.id_ord_prov
GROUP BY op.id_ord_prov, pv.razon_social, op.fecha_orden, op.estado
HAVING COUNT(dp.id_detalle_prov) > (
    SELECT AVG(lineas) FROM (
                                SELECT COUNT(*) AS lineas
                                FROM DETALLE_ORD_PROVEEDOR
                                GROUP BY id_ord_prov
                            ) AS lineas_por_orden
)
ORDER BY lineas_producto DESC;