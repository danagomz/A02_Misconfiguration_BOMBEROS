-- ============================================================
-- RESET: deja la base lista para repoblar sin errores de llave
-- Es SEGURO ejecutar este archivo las veces que quieras.
-- ============================================================
TRUNCATE TABLE
    PAGO, ENTREGA, FACTURA, DETALLE_ORDEN, ORDEN,
    DETALLE_ORD_PROVEEDOR, ORDEN_PROVEEDOR,
    INVENTARIO, PRODUCTO, EMPLEADO, PROVEEDOR, CLIENTE, SEDE
    RESTART IDENTITY CASCADE;
