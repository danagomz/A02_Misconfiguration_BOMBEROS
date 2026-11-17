DO $$
    BEGIN
        IF current_setting('app.permitir_reset', true) IS DISTINCT FROM 'on' THEN
            RAISE EXCEPTION 'Reset bloqueado en la base %. Ejecuta antes: SET app.permitir_reset = ''on'';', current_database();
        END IF;
    END $$;
-- ============================================================
-- RESET: deja la base lista para repoblar sin errores de llave
-- Es SEGURO ejecutar este archivo las veces que quieras.
-- ============================================================
TRUNCATE TABLE
    PAGO, ENTREGA, FACTURA, DETALLE_ORDEN, ORDEN,
    DETALLE_ORD_PROVEEDOR, ORDEN_PROVEEDOR,
    INVENTARIO, PRODUCTO, EMPLEADO, PROVEEDOR, CLIENTE, SEDE
    RESTART IDENTITY CASCADE;
