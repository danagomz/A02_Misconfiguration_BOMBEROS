BEGIN;

-- Orden 1
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (1, '2024-09-06', 4034100.00, 'Entregada', 45, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 1, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 1, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 1, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (1, 1, 'FBV', '000001', 'CUFE00000001', '2024-09-06 12:00:00', 3390000.00, 644100.00, 4034100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-09-06', 4034100.00, 'REF00000001', 'Pagado', 1, 45);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (1, 12, '2024-09-06', 'Calle 104 # 35-65, Buga', 'Entregada');

-- Orden 2
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (2, '2024-12-13', 303450.00, 'Entregada', 1, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 2, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (2, 2, 'FBV', '000002', 'CUFE00000002', '2024-12-13 12:00:00', 255000.00, 48450.00, 303450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-13', 303450.00, 'REF00000002', 'Pendiente', 2, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (2, 5, '2024-12-13', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 3
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (3, '2024-09-24', 1332800.00, 'En Proceso', 11, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 3, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 3, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (3, 3, 'FBV', '000003', 'CUFE00000003', '2024-09-24 12:00:00', 1120000.00, 212800.00, 1332800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-24', 1332800.00, 'REF00000003', 'Pendiente', 3, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (3, 4, '2024-09-24', 'Calle 90 # 83-66, Tuluá', 'En Ruta');

-- Orden 4
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (4, '2024-07-12', 2510900.00, 'Entregada', 3, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 4, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 4, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 4, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (4, 4, 'FBV', '000004', 'CUFE00000004', '2024-07-12 12:00:00', 2110000.00, 400900.00, 2510900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-07-12', 2510900.00, 'REF00000004', 'Pagado', 4, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (4, 4, '2024-07-12', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 5
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (5, '2024-11-12', 14601300.00, 'Entregada', 55, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 5, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 5, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 5, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (5, 5, 'FBV', '000005', 'CUFE00000005', '2024-11-12 12:00:00', 12270000.00, 2331300.00, 14601300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-11-12', 14601300.00, 'REF00000005', 'Pagado', 5, 55);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (5, 12, '2024-11-12', 'Calle 99 # 85-84, Cartago', 'Entregada');

-- Orden 6
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (6, '2024-04-03', 1713600.00, 'Entregada', 47, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 6, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 6, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 6, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 380000.00, 6, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (6, 6, 'FBV', '000006', 'CUFE00000006', '2024-04-03 12:00:00', 1440000.00, 273600.00, 1713600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-04-03', 1713600.00, 'REF00000006', 'Pagado', 6, 47);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (6, 6, '2024-04-03', 'Calle 47 # 75-56, Buga', 'Entregada');

-- Orden 7
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (7, '2024-12-20', 2748900.00, 'Entregada', 12, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 7, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 7, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 7, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (7, 7, 'FBV', '000007', 'CUFE00000007', '2024-12-20 12:00:00', 2310000.00, 438900.00, 2748900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-20', 2748900.00, 'REF00000007', 'Pagado', 7, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (7, 12, '2024-12-20', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 8
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (8, '2024-12-03', 1713600.00, 'Entregada', 53, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 8, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (8, 8, 'FBV', '000008', 'CUFE00000008', '2024-12-03 12:00:00', 1440000.00, 273600.00, 1713600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-03', 1713600.00, 'REF00000008', 'Pagado', 8, 53);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (8, 2, '2024-12-03', 'Calle 73 # 93-39, Cartago', 'Entregada');

-- Orden 9
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (9, '2024-12-08', 618800.00, 'Entregada', 11, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 9, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 9, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (9, 9, 'FBV', '000009', 'CUFE00000009', '2024-12-08 12:00:00', 520000.00, 98800.00, 618800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-08', 618800.00, 'REF00000009', 'Pagado', 9, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (9, 10, '2024-12-08', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 10
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (10, '2024-11-08', 196350.00, 'Entregada', 1, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 10, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (10, 10, 'FBV', '000010', 'CUFE00000010', '2024-11-08 12:00:00', 165000.00, 31350.00, 196350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-11-08', 196350.00, 'REF00000010', 'Pagado', 10, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (10, 10, '2024-11-08', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 11
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (11, '2024-02-17', 1237600.00, 'Entregada', 9, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 11, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (11, 11, 'FBV', '000011', 'CUFE00000011', '2024-02-17 12:00:00', 1040000.00, 197600.00, 1237600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-02-17', 1237600.00, 'REF00000011', 'Anulado', 11, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (11, 6, '2024-02-17', 'Calle 7 # 23-95, Cartago', 'No Entregada');

-- Orden 12
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (12, '2024-06-15', 5176500.00, 'Entregada', 12, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 12, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (12, 12, 'FBV', '000012', 'CUFE00000012', '2024-06-15 12:00:00', 4350000.00, 826500.00, 5176500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-15', 5176500.00, 'REF00000012', 'Pagado', 12, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (12, 12, '2024-06-15', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 13
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (13, '2024-08-04', 9996000.00, 'En Proceso', 8, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 13, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (13, 13, 'FBV', '000013', 'CUFE00000013', '2024-08-04 12:00:00', 8400000.00, 1596000.00, 9996000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (13, 5, '2024-08-04', 'Calle 11 # 46-27, Buga', 'En Ruta');

-- Orden 14
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (14, '2024-02-14', 3534300.00, 'Entregada', 8, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 14, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 14, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 14, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (14, 14, 'FBV', '000014', 'CUFE00000014', '2024-02-14 12:00:00', 2970000.00, 564300.00, 3534300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-02-14', 3534300.00, 'REF00000013', 'Pagado', 14, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (14, 12, '2024-02-14', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 15
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (15, '2024-06-28', 4403000.00, 'Entregada', 12, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 15, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 15, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 15, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 15, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (15, 15, 'FBV', '000015', 'CUFE00000015', '2024-06-28 12:00:00', 3700000.00, 703000.00, 4403000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-28', 4403000.00, 'REF00000014', 'Pagado', 15, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (15, 6, '2024-06-28', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 16
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (16, '2024-12-27', 303450.00, 'Entregada', 36, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 16, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (16, 16, 'FBV', '000016', 'CUFE00000016', '2024-12-27 12:00:00', 255000.00, 48450.00, 303450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-27', 303450.00, 'REF00000015', 'Pagado', 16, 36);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (16, 7, '2024-12-27', 'Calle 85 # 46-90, Buenaventura', 'Entregada');

-- Orden 17
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (17, '2024-03-05', 2677500.00, 'Entregada', 7, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 17, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 17, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 17, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 17, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (17, 17, 'FBV', '000017', 'CUFE00000017', '2024-03-05 12:00:00', 2250000.00, 427500.00, 2677500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-03-05', 2677500.00, 'REF00000016', 'Pagado', 17, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (17, 11, '2024-03-05', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 18
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (18, '2024-05-22', 3558100.00, 'Entregada', 12, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 18, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 18, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 18, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 18, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (18, 18, 'FBV', '000018', 'CUFE00000018', '2024-05-22 12:00:00', 2990000.00, 568100.00, 3558100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-05-22', 3558100.00, 'REF00000017', 'Pagado', 18, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (18, 1, '2024-05-22', 'Calle 112 # 45-94, Cali', 'No Entregada');

-- Orden 19
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (19, '2024-04-05', 5462100.00, 'En Proceso', 6, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 19, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 19, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 19, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (19, 19, 'FBV', '000019', 'CUFE00000019', '2024-04-05 12:00:00', 4590000.00, 872100.00, 5462100.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (19, 4, '2024-04-05', 'Calle 24 # 82-55, Tuluá', 'Pendiente');

-- Orden 20
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (20, '2024-06-03', 3486700.00, 'Pendiente', 8, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 20, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 20, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 20, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 20, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (20, 20, 'FBV', '000020', 'CUFE00000020', '2024-06-03 12:00:00', 2930000.00, 556700.00, 3486700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-03', 3486700.00, 'REF00000018', 'Pagado', 20, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (20, 1, '2024-06-03', 'Calle 11 # 46-27, Buga', 'Pendiente');

-- Orden 21
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (21, '2024-06-10', 1790950.00, 'En Proceso', 10, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 21, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 21, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (21, 21, 'FBV', '000021', 'CUFE00000021', '2024-06-10 12:00:00', 1505000.00, 285950.00, 1790950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-10', 1790950.00, 'REF00000019', 'Pagado', 21, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (21, 7, '2024-06-10', 'Calle 10 # 61-29, Tuluá', 'En Ruta');

-- Orden 22
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (22, '2024-04-05', 743750.00, 'Entregada', 32, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 340000.00, 22, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 22, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (22, 22, 'FBV', '000022', 'CUFE00000022', '2024-04-05 12:00:00', 625000.00, 118750.00, 743750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-04-05', 743750.00, 'REF00000020', 'Pagado', 22, 32);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (22, 14, '2024-04-05', 'Calle 83 # 32-12, Buenaventura', 'Entregada');

-- Orden 23
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (23, '2024-08-28', 1737400.00, 'Cancelada', 12, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 23, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 23, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1120000.00, 23, 3);

-- Orden 24
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (24, '2024-01-12', 999600.00, 'En Proceso', 9, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 24, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (23, 24, 'FBV', '000023', 'CUFE00000023', '2024-01-12 12:00:00', 840000.00, 159600.00, 999600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (24, 5, '2024-01-12', 'Calle 7 # 23-95, Cartago', 'Pendiente');

-- Orden 25
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (25, '2024-11-21', 1594600.00, 'Entregada', 8, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 25, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 25, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 25, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 25, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (24, 25, 'FBV', '000024', 'CUFE00000024', '2024-11-21 12:00:00', 1340000.00, 254600.00, 1594600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-11-21', 1594600.00, 'REF00000021', 'Pagado', 24, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (25, 9, '2024-11-21', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 26
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (26, '2024-05-14', 1725500.00, 'En Proceso', 7, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 26, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (25, 26, 'FBV', '000025', 'CUFE00000025', '2024-05-14 12:00:00', 1450000.00, 275500.00, 1725500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-05-14', 1725500.00, 'REF00000022', 'Pendiente', 25, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (26, 6, '2024-05-14', 'Calle 29 # 10-89, Buga', 'Pendiente');

-- Orden 27
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (27, '2024-06-19', 940100.00, 'Entregada', 41, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 27, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 27, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 27, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (26, 27, 'FBV', '000026', 'CUFE00000026', '2024-06-19 12:00:00', 790000.00, 150100.00, 940100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-19', 940100.00, 'REF00000023', 'Pagado', 26, 41);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (27, 13, '2024-06-19', 'Calle 58 # 67-49, Palmira', 'Entregada');

-- Orden 28
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (28, '2024-12-03', 5045600.00, 'Entregada', 60, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 28, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 28, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 28, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 28, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (27, 28, 'FBV', '000027', 'CUFE00000027', '2024-12-03 12:00:00', 4240000.00, 805600.00, 5045600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-03', 5045600.00, 'REF00000024', 'Pagado', 27, 60);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (28, 14, '2024-12-03', 'Calle 37 # 30-60, Cartago', 'Entregada');

-- Orden 29
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (29, '2024-12-20', 10591000.00, 'Entregada', 12, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 29, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 29, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 29, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 29, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (28, 29, 'FBV', '000028', 'CUFE00000028', '2024-12-20 12:00:00', 8900000.00, 1691000.00, 10591000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-20', 10591000.00, 'REF00000025', 'Pagado', 28, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (29, 1, '2024-12-20', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 30
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (30, '2024-04-22', 4284000.00, 'Pendiente', 46, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 30, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 30, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1680000.00, 30, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 30, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (29, 30, 'FBV', '000029', 'CUFE00000029', '2024-04-22 12:00:00', 3600000.00, 684000.00, 4284000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-04-22', 4284000.00, 'REF00000026', 'Pendiente', 29, 46);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (30, 8, '2024-04-22', 'Calle 148 # 76-3, Cali', 'Pendiente');

-- Orden 31
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (31, '2024-05-25', 2487100.00, 'Entregada', 37, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 31, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 31, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 31, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 31, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (30, 31, 'FBV', '000030', 'CUFE00000030', '2024-05-25 12:00:00', 2090000.00, 397100.00, 2487100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-05-25', 2487100.00, 'REF00000027', 'Pagado', 30, 37);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (31, 13, '2024-05-25', 'Calle 124 # 36-93, Palmira', 'Entregada');

-- Orden 32
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (32, '2024-09-26', 142800.00, 'Entregada', 35, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 32, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (31, 32, 'FBV', '000031', 'CUFE00000031', '2024-09-26 12:00:00', 120000.00, 22800.00, 142800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-09-26', 142800.00, 'REF00000028', 'Pagado', 31, 35);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (32, 2, '2024-09-26', 'Calle 57 # 52-89, Buenaventura', 'Entregada');

-- Orden 33
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (33, '2024-04-05', 2195550.00, 'Entregada', 1, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 33, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 33, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 33, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 33, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (32, 33, 'FBV', '000032', 'CUFE00000032', '2024-04-05 12:00:00', 1845000.00, 350550.00, 2195550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-04-05', 2195550.00, 'REF00000029', 'Pagado', 32, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (33, 2, '2024-04-05', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 34
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (34, '2024-01-12', 5777450.00, 'Entregada', 6, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 34, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 34, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 34, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 34, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (33, 34, 'FBV', '000033', 'CUFE00000033', '2024-01-12 12:00:00', 4855000.00, 922450.00, 5777450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-12', 5777450.00, 'REF00000030', 'Pagado', 33, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (34, 3, '2024-01-12', 'Calle 24 # 82-55, Tuluá', 'No Entregada');

-- Orden 35
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (35, '2024-02-08', 3391500.00, 'En Proceso', 7, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 35, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (34, 35, 'FBV', '000034', 'CUFE00000034', '2024-02-08 12:00:00', 2850000.00, 541500.00, 3391500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-08', 3391500.00, 'REF00000031', 'Pagado', 34, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (35, 1, '2024-02-08', 'Calle 29 # 10-89, Buga', 'Pendiente');

-- Orden 36
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (36, '2024-09-23', 1338750.00, 'Entregada', 34, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 36, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 36, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (35, 36, 'FBV', '000035', 'CUFE00000035', '2024-09-23 12:00:00', 1125000.00, 213750.00, 1338750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-09-23', 1338750.00, 'REF00000032', 'Pagado', 35, 34);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (36, 10, '2024-09-23', 'Calle 62 # 93-53, Yumbo', 'Entregada');

-- Orden 37
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (37, '2024-12-18', 357000.00, 'Entregada', 9, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 37, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (36, 37, 'FBV', '000036', 'CUFE00000036', '2024-12-18 12:00:00', 300000.00, 57000.00, 357000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-18', 357000.00, 'REF00000033', 'Pagado', 36, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (37, 5, '2024-12-18', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 38
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (38, '2024-10-13', 1309000.00, 'Entregada', 43, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 38, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 340000.00, 38, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (37, 38, 'FBV', '000037', 'CUFE00000037', '2024-10-13 12:00:00', 1100000.00, 209000.00, 1309000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-13', 1309000.00, 'REF00000034', 'Pagado', 37, 43);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (38, 12, '2024-10-13', 'Calle 121 # 38-5, Tuluá', 'Entregada');

-- Orden 39
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (39, '2024-06-03', 981750.00, 'Entregada', 10, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 39, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 39, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 39, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (38, 39, 'FBV', '000038', 'CUFE00000038', '2024-06-03 12:00:00', 825000.00, 156750.00, 981750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-03', 981750.00, 'REF00000035', 'Pagado', 38, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (39, 3, '2024-06-03', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 40
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (40, '2024-09-12', 1588650.00, 'Entregada', 2, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 40, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 40, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (39, 40, 'FBV', '000039', 'CUFE00000039', '2024-09-12 12:00:00', 1335000.00, 253650.00, 1588650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-12', 1588650.00, 'REF00000036', 'Pagado', 39, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (40, 9, '2024-09-12', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 41
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (41, '2024-09-12', 1130500.00, 'Entregada', 11, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 41, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (40, 41, 'FBV', '000040', 'CUFE00000040', '2024-09-12 12:00:00', 950000.00, 180500.00, 1130500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-12', 1130500.00, 'REF00000037', 'Pagado', 40, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (41, 9, '2024-09-12', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 42
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (42, '2024-06-18', 874650.00, 'Entregada', 9, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 42, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 42, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 42, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (41, 42, 'FBV', '000041', 'CUFE00000041', '2024-06-18 12:00:00', 735000.00, 139650.00, 874650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-18', 874650.00, 'REF00000038', 'Pagado', 41, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (42, 3, '2024-06-18', 'Calle 7 # 23-95, Cartago', 'No Entregada');

-- Orden 43
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (43, '2024-10-18', 1790950.00, 'Entregada', 12, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 43, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 43, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 43, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (42, 43, 'FBV', '000042', 'CUFE00000042', '2024-10-18 12:00:00', 1505000.00, 285950.00, 1790950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-18', 1790950.00, 'REF00000039', 'Pagado', 42, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (43, 11, '2024-10-18', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 44
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (44, '2024-02-10', 4736200.00, 'Entregada', 11, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 44, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 44, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 44, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 44, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (43, 44, 'FBV', '000043', 'CUFE00000043', '2024-02-10 12:00:00', 3980000.00, 756200.00, 4736200.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (44, 10, '2024-02-10', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 45
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (45, '2024-12-02', 404600.00, 'En Proceso', 8, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 45, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 45, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (44, 45, 'FBV', '000044', 'CUFE00000044', '2024-12-02 12:00:00', 340000.00, 64600.00, 404600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (45, 10, '2024-12-02', 'Calle 11 # 46-27, Buga', 'En Ruta');

-- Orden 46
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (46, '2024-07-05', 1856400.00, 'Entregada', 12, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 46, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (45, 46, 'FBV', '000045', 'CUFE00000045', '2024-07-05 12:00:00', 1560000.00, 296400.00, 1856400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-05', 1856400.00, 'REF00000040', 'Pendiente', 45, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (46, 4, '2024-07-05', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 47
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (47, '2024-12-25', 3819900.00, 'Entregada', 2, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 47, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 47, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (46, 47, 'FBV', '000046', 'CUFE00000046', '2024-12-25 12:00:00', 3210000.00, 609900.00, 3819900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-25', 3819900.00, 'REF00000041', 'Pagado', 46, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (47, 1, '2024-12-25', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 48
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (48, '2024-06-23', 1868300.00, 'Entregada', 8, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 48, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 48, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 48, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 48, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (47, 48, 'FBV', '000047', 'CUFE00000047', '2024-06-23 12:00:00', 1570000.00, 298300.00, 1868300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-23', 1868300.00, 'REF00000042', 'Pagado', 47, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (48, 14, '2024-06-23', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 49
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (49, '2024-05-08', 142800.00, 'Entregada', 9, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 49, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (48, 49, 'FBV', '000048', 'CUFE00000048', '2024-05-08 12:00:00', 120000.00, 22800.00, 142800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-05-08', 142800.00, 'REF00000043', 'Pagado', 48, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (49, 4, '2024-05-08', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 50
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (50, '2024-11-16', 2118200.00, 'Cancelada', 6, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 50, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 50, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 50, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 50, 1);

-- Orden 51
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (51, '2024-01-04', 3129700.00, 'Entregada', 5, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 51, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 51, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 51, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (49, 51, 'FBV', '000049', 'CUFE00000049', '2024-01-04 12:00:00', 2630000.00, 499700.00, 3129700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-04', 3129700.00, 'REF00000044', 'Pagado', 49, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (51, 8, '2024-01-04', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 52
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (52, '2024-02-12', 6414100.00, 'En Proceso', 3, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 52, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 52, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 52, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (50, 52, 'FBV', '000050', 'CUFE00000050', '2024-02-12 12:00:00', 5390000.00, 1024100.00, 6414100.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (52, 2, '2024-02-12', 'Calle 19 # 69-28, Palmira', 'Pendiente');

-- Orden 53
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (53, '2024-08-06', 9805600.00, 'Entregada', 6, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 53, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 53, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 53, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (51, 53, 'FBV', '000051', 'CUFE00000051', '2024-08-06 12:00:00', 8240000.00, 1565600.00, 9805600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-08-06', 9805600.00, 'REF00000045', 'Pagado', 51, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (53, 3, '2024-08-06', 'Calle 24 # 82-55, Tuluá', 'No Entregada');

-- Orden 54
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (54, '2024-05-21', 5105100.00, 'En Proceso', 11, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 54, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 54, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (52, 54, 'FBV', '000052', 'CUFE00000052', '2024-05-21 12:00:00', 4290000.00, 815100.00, 5105100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-05-21', 5105100.00, 'REF00000046', 'Pendiente', 52, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (54, 1, '2024-05-21', 'Calle 90 # 83-66, Tuluá', 'En Ruta');

-- Orden 55
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (55, '2024-06-14', 2499000.00, 'Entregada', 4, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 55, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 55, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (53, 55, 'FBV', '000053', 'CUFE00000053', '2024-06-14 12:00:00', 2100000.00, 399000.00, 2499000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-14', 2499000.00, 'REF00000047', 'Pagado', 53, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (55, 9, '2024-06-14', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 56
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (56, '2024-06-06', 13637400.00, 'Entregada', 10, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 56, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 56, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 56, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (54, 56, 'FBV', '000054', 'CUFE00000054', '2024-06-06 12:00:00', 11460000.00, 2177400.00, 13637400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-06', 13637400.00, 'REF00000048', 'Anulado', 54, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (56, 12, '2024-06-06', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 57
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (57, '2024-06-12', 4236400.00, 'Entregada', 14, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 57, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 57, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 57, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (55, 57, 'FBV', '000055', 'CUFE00000055', '2024-06-12 12:00:00', 3560000.00, 676400.00, 4236400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-12', 4236400.00, 'REF00000049', 'Pagado', 55, 14);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (57, 14, '2024-06-12', 'Calle 81 # 85-16, Tuluá', 'Entregada');

-- Orden 58
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (58, '2024-04-27', 1475600.00, 'Entregada', 21, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 58, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 58, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 58, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (56, 58, 'FBV', '000056', 'CUFE00000056', '2024-04-27 12:00:00', 1240000.00, 235600.00, 1475600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-04-27', 1475600.00, 'REF00000050', 'Pagado', 56, 21);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (58, 5, '2024-04-27', 'Calle 113 # 10-92, Yumbo', 'Entregada');

-- Orden 59
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (59, '2024-12-06', 6330800.00, 'Entregada', 55, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 59, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 59, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 59, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 59, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (57, 59, 'FBV', '000057', 'CUFE00000057', '2024-12-06 12:00:00', 5320000.00, 1010800.00, 6330800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-06', 6330800.00, 'REF00000051', 'Pagado', 57, 55);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (59, 9, '2024-12-06', 'Calle 99 # 85-84, Cartago', 'Entregada');

-- Orden 60
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (60, '2024-06-16', 3177300.00, 'Entregada', 60, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 60, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 60, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 60, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (58, 60, 'FBV', '000058', 'CUFE00000058', '2024-06-16 12:00:00', 2670000.00, 507300.00, 3177300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-16', 3177300.00, 'REF00000052', 'Pagado', 58, 60);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (60, 9, '2024-06-16', 'Calle 37 # 30-60, Cartago', 'Entregada');

-- Orden 61
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (61, '2024-06-24', 6140400.00, 'Entregada', 31, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 61, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 61, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 61, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (59, 61, 'FBV', '000059', 'CUFE00000059', '2024-06-24 12:00:00', 5160000.00, 980400.00, 6140400.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (61, 4, '2024-06-24', 'Calle 112 # 23-94, Palmira', 'Entregada');

-- Orden 62
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (62, '2024-06-08', 6128500.00, 'Entregada', 58, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 62, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 62, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 62, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 62, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (60, 62, 'FBV', '000060', 'CUFE00000060', '2024-06-08 12:00:00', 5150000.00, 978500.00, 6128500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-08', 6128500.00, 'REF00000053', 'Pagado', 60, 58);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (62, 10, '2024-06-08', 'Calle 26 # 57-22, Yumbo', 'Entregada');

-- Orden 63
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (63, '2024-10-21', 4926600.00, 'Pendiente', 25, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 63, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 63, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 63, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (61, 63, 'FBV', '000061', 'CUFE00000061', '2024-10-21 12:00:00', 4140000.00, 786600.00, 4926600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (63, 14, '2024-10-21', 'Calle 145 # 85-4, Buga', 'Pendiente');

-- Orden 64
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (64, '2024-11-22', 1237600.00, 'En Proceso', 33, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 64, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (62, 64, 'FBV', '000062', 'CUFE00000062', '2024-11-22 12:00:00', 1040000.00, 197600.00, 1237600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (64, 14, '2024-11-22', 'Calle 125 # 28-46, Cartago', 'En Ruta');

-- Orden 65
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (65, '2024-07-06', 4010300.00, 'Entregada', 4, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 65, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 65, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 65, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1120000.00, 65, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (63, 65, 'FBV', '000063', 'CUFE00000063', '2024-07-06 12:00:00', 3370000.00, 640300.00, 4010300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-06', 4010300.00, 'REF00000054', 'Pagado', 63, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (65, 13, '2024-07-06', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 66
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (66, '2024-08-02', 3332000.00, 'Entregada', 21, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 66, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (64, 66, 'FBV', '000064', 'CUFE00000064', '2024-08-02 12:00:00', 2800000.00, 532000.00, 3332000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-08-02', 3332000.00, 'REF00000055', 'Pagado', 64, 21);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (66, 1, '2024-08-02', 'Calle 113 # 10-92, Yumbo', 'Entregada');

-- Orden 67
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (67, '2024-12-21', 1868300.00, 'Cancelada', 24, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 67, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 67, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 67, 20);

-- Orden 68
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (68, '2024-06-05', 1552950.00, 'En Proceso', 59, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 68, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 68, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (65, 68, 'FBV', '000065', 'CUFE00000065', '2024-06-05 12:00:00', 1305000.00, 247950.00, 1552950.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (68, 3, '2024-06-05', 'Calle 145 # 88-24, Cali', 'En Ruta');

-- Orden 69
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (69, '2024-12-25', 1552950.00, 'Entregada', 4, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 69, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 69, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 69, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 69, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (66, 69, 'FBV', '000066', 'CUFE00000066', '2024-12-25 12:00:00', 1305000.00, 247950.00, 1552950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-25', 1552950.00, 'REF00000056', 'Pagado', 66, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (69, 5, '2024-12-25', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 70
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (70, '2024-12-08', 7544600.00, 'En Proceso', 3, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 70, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 70, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 70, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (67, 70, 'FBV', '000067', 'CUFE00000067', '2024-12-08 12:00:00', 6340000.00, 1204600.00, 7544600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-08', 7544600.00, 'REF00000057', 'Pagado', 67, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (70, 1, '2024-12-08', 'Calle 19 # 69-28, Palmira', 'Pendiente');

-- Orden 71
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (71, '2024-06-21', 1172150.00, 'Entregada', 1, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 71, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 71, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 71, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (68, 71, 'FBV', '000068', 'CUFE00000068', '2024-06-21 12:00:00', 985000.00, 187150.00, 1172150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-21', 1172150.00, 'REF00000058', 'Pagado', 68, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (71, 8, '2024-06-21', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 72
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (72, '2024-03-08', 3367700.00, 'Entregada', 10, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 72, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 72, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 72, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (69, 72, 'FBV', '000069', 'CUFE00000069', '2024-03-08 12:00:00', 2830000.00, 537700.00, 3367700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-03-08', 3367700.00, 'REF00000059', 'Pagado', 69, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (72, 7, '2024-03-08', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 73
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (73, '2024-04-07', 844900.00, 'Pendiente', 12, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 73, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 73, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 73, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (70, 73, 'FBV', '000070', 'CUFE00000070', '2024-04-07 12:00:00', 710000.00, 134900.00, 844900.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (73, 14, '2024-04-07', 'Calle 112 # 45-94, Cali', 'Pendiente');

-- Orden 74
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (74, '2024-11-13', 6711600.00, 'Entregada', 10, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 74, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 74, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 74, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (71, 74, 'FBV', '000071', 'CUFE00000071', '2024-11-13 12:00:00', 5640000.00, 1071600.00, 6711600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (74, 4, '2024-11-13', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 75
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (75, '2024-01-18', 4242350.00, 'Pendiente', 20, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 75, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 75, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 75, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 75, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (72, 75, 'FBV', '000072', 'CUFE00000072', '2024-01-18 12:00:00', 3565000.00, 677350.00, 4242350.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (75, 4, '2024-01-18', 'Calle 141 # 58-21, Jamundí', 'Pendiente');

-- Orden 76
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (76, '2024-10-12', 6301050.00, 'Entregada', 8, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 76, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 76, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1920000.00, 76, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 76, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (73, 76, 'FBV', '000073', 'CUFE00000073', '2024-10-12 12:00:00', 5295000.00, 1006050.00, 6301050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-12', 6301050.00, 'REF00000060', 'Pendiente', 73, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (76, 8, '2024-10-12', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 77
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (77, '2024-09-20', 11876200.00, 'Pendiente', 2, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 77, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 340000.00, 77, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 77, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 77, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (74, 77, 'FBV', '000074', 'CUFE00000074', '2024-09-20 12:00:00', 9980000.00, 1896200.00, 11876200.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (77, 6, '2024-09-20', 'Calle 102 # 17-86, Palmira', 'Pendiente');

-- Orden 78
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (78, '2024-04-20', 3474800.00, 'Entregada', 10, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 78, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 78, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 78, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (75, 78, 'FBV', '000075', 'CUFE00000075', '2024-04-20 12:00:00', 2920000.00, 554800.00, 3474800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-04-20', 3474800.00, 'REF00000061', 'Pagado', 75, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (78, 2, '2024-04-20', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 79
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (79, '2024-06-18', 65450.00, 'Entregada', 2, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 79, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (76, 79, 'FBV', '000076', 'CUFE00000076', '2024-06-18 12:00:00', 55000.00, 10450.00, 65450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-18', 65450.00, 'REF00000062', 'Pagado', 76, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (79, 9, '2024-06-18', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 80
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (80, '2024-12-08', 4456550.00, 'Entregada', 44, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 80, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 80, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 80, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 80, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (77, 80, 'FBV', '000077', 'CUFE00000077', '2024-12-08 12:00:00', 3745000.00, 711550.00, 4456550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-08', 4456550.00, 'REF00000063', 'Pagado', 77, 44);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (80, 9, '2024-12-08', 'Calle 140 # 29-83, Buenaventura', 'No Entregada');

-- Orden 81
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (81, '2024-12-22', 2504950.00, 'Pendiente', 10, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 81, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 81, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 81, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (78, 81, 'FBV', '000078', 'CUFE00000078', '2024-12-22 12:00:00', 2105000.00, 399950.00, 2504950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-22', 2504950.00, 'REF00000064', 'Pagado', 78, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (81, 4, '2024-12-22', 'Calle 10 # 61-29, Tuluá', 'Pendiente');

-- Orden 82
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (82, '2024-05-15', 5688200.00, 'Entregada', 1, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 82, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 82, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 82, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (79, 82, 'FBV', '000079', 'CUFE00000079', '2024-05-15 12:00:00', 4780000.00, 908200.00, 5688200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-05-15', 5688200.00, 'REF00000065', 'Pagado', 79, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (82, 11, '2024-05-15', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 83
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (83, '2024-06-04', 3819900.00, 'Entregada', 20, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 83, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 83, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 83, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (80, 83, 'FBV', '000080', 'CUFE00000080', '2024-06-04 12:00:00', 3210000.00, 609900.00, 3819900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-04', 3819900.00, 'REF00000066', 'Pagado', 80, 20);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (83, 3, '2024-06-04', 'Calle 141 # 58-21, Jamundí', 'Entregada');

-- Orden 84
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (84, '2024-01-14', 3332000.00, 'Entregada', 39, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 84, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (81, 84, 'FBV', '000081', 'CUFE00000081', '2024-01-14 12:00:00', 2800000.00, 532000.00, 3332000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-14', 3332000.00, 'REF00000067', 'Pagado', 81, 39);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (84, 6, '2024-01-14', 'Calle 147 # 37-61, Yumbo', 'Entregada');

-- Orden 85
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (85, '2024-02-14', 6188000.00, 'Entregada', 9, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 85, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 85, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 85, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (82, 85, 'FBV', '000082', 'CUFE00000082', '2024-02-14 12:00:00', 5200000.00, 988000.00, 6188000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-02-14', 6188000.00, 'REF00000068', 'Pagado', 82, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (85, 5, '2024-02-14', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 86
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (86, '2024-06-28', 1094800.00, 'Entregada', 36, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 86, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 380000.00, 86, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 86, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (83, 86, 'FBV', '000083', 'CUFE00000083', '2024-06-28 12:00:00', 920000.00, 174800.00, 1094800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-28', 1094800.00, 'REF00000069', 'Pagado', 83, 36);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (86, 11, '2024-06-28', 'Calle 85 # 46-90, Buenaventura', 'Entregada');

-- Orden 87
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (87, '2024-11-11', 5152700.00, 'Entregada', 55, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 87, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 87, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 87, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 87, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (84, 87, 'FBV', '000084', 'CUFE00000084', '2024-11-11 12:00:00', 4330000.00, 822700.00, 5152700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-11-11', 5152700.00, 'REF00000070', 'Pagado', 84, 55);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (87, 12, '2024-11-11', 'Calle 99 # 85-84, Cartago', 'Entregada');

-- Orden 88
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (88, '2024-03-10', 1713600.00, 'Entregada', 12, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 88, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 88, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (85, 88, 'FBV', '000085', 'CUFE00000085', '2024-03-10 12:00:00', 1440000.00, 273600.00, 1713600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-03-10', 1713600.00, 'REF00000071', 'Pagado', 85, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (88, 12, '2024-03-10', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 89
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (89, '2024-11-20', 380800.00, 'Entregada', 14, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 89, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (86, 89, 'FBV', '000086', 'CUFE00000086', '2024-11-20 12:00:00', 320000.00, 60800.00, 380800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-11-20', 380800.00, 'REF00000072', 'Pagado', 86, 14);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (89, 11, '2024-11-20', 'Calle 81 # 85-16, Tuluá', 'Entregada');

-- Orden 90
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (90, '2024-06-26', 761600.00, 'Entregada', 55, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 90, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (87, 90, 'FBV', '000087', 'CUFE00000087', '2024-06-26 12:00:00', 640000.00, 121600.00, 761600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-26', 761600.00, 'REF00000073', 'Pagado', 87, 55);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (90, 7, '2024-06-26', 'Calle 99 # 85-84, Cartago', 'Entregada');

-- Orden 91
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (91, '2024-01-04', 1523200.00, 'Entregada', 6, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1280000.00, 91, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (88, 91, 'FBV', '000088', 'CUFE00000088', '2024-01-04 12:00:00', 1280000.00, 243200.00, 1523200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-04', 1523200.00, 'REF00000074', 'Pagado', 88, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (91, 3, '2024-01-04', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 92
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (92, '2024-06-23', 71400.00, 'Entregada', 9, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 92, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (89, 92, 'FBV', '000089', 'CUFE00000089', '2024-06-23 12:00:00', 60000.00, 11400.00, 71400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-23', 71400.00, 'REF00000075', 'Pagado', 89, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (92, 6, '2024-06-23', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 93
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (93, '2024-10-17', 6783000.00, 'Entregada', 50, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 93, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 93, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (90, 93, 'FBV', '000090', 'CUFE00000090', '2024-10-17 12:00:00', 5700000.00, 1083000.00, 6783000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-17', 6783000.00, 'REF00000076', 'Pagado', 90, 50);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (93, 10, '2024-10-17', 'Calle 141 # 17-37, Buenaventura', 'Entregada');

-- Orden 94
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (94, '2024-12-15', 7032900.00, 'Entregada', 20, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 94, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 94, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 94, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 94, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (91, 94, 'FBV', '000091', 'CUFE00000091', '2024-12-15 12:00:00', 5910000.00, 1122900.00, 7032900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-15', 7032900.00, 'REF00000077', 'Pagado', 91, 20);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (94, 1, '2024-12-15', 'Calle 141 # 58-21, Jamundí', 'Entregada');

-- Orden 95
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (95, '2024-08-12', 2011100.00, 'Entregada', 11, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 340000.00, 95, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 95, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 95, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1120000.00, 95, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (92, 95, 'FBV', '000092', 'CUFE00000092', '2024-08-12 12:00:00', 1690000.00, 321100.00, 2011100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-08-12', 2011100.00, 'REF00000078', 'Pagado', 92, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (95, 7, '2024-08-12', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 96
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (96, '2024-10-21', 6794900.00, 'Pendiente', 12, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 96, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 96, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (93, 96, 'FBV', '000093', 'CUFE00000093', '2024-10-21 12:00:00', 5710000.00, 1084900.00, 6794900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-21', 6794900.00, 'REF00000079', 'Pendiente', 93, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (96, 8, '2024-10-21', 'Calle 112 # 45-94, Cali', 'Pendiente');

-- Orden 97
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (97, '2024-12-18', 2921450.00, 'Entregada', 3, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 97, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1520000.00, 97, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 97, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 97, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (94, 97, 'FBV', '000094', 'CUFE00000094', '2024-12-18 12:00:00', 2455000.00, 466450.00, 2921450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-18', 2921450.00, 'REF00000080', 'Pagado', 94, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (97, 12, '2024-12-18', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 98
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (98, '2024-02-04', 11977350.00, 'Entregada', 10, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 98, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 98, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 98, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (95, 98, 'FBV', '000095', 'CUFE00000095', '2024-02-04 12:00:00', 10065000.00, 1912350.00, 11977350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-02-04', 11977350.00, 'REF00000081', 'Pagado', 95, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (98, 12, '2024-02-04', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 99
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (99, '2024-12-25', 6247500.00, 'En Proceso', 8, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 99, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 99, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (96, 99, 'FBV', '000096', 'CUFE00000096', '2024-12-25 12:00:00', 5250000.00, 997500.00, 6247500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-25', 6247500.00, 'REF00000082', 'Pagado', 96, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (99, 2, '2024-12-25', 'Calle 11 # 46-27, Buga', 'Pendiente');

-- Orden 100
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (100, '2024-05-18', 4343500.00, 'Entregada', 7, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 100, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 100, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 100, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (97, 100, 'FBV', '000097', 'CUFE00000097', '2024-05-18 12:00:00', 3650000.00, 693500.00, 4343500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-05-18', 4343500.00, 'REF00000083', 'Pagado', 97, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (100, 13, '2024-05-18', 'Calle 29 # 10-89, Buga', 'No Entregada');

-- Orden 101
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (101, '2024-03-05', 1404200.00, 'En Proceso', 14, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 101, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 101, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (98, 101, 'FBV', '000098', 'CUFE00000098', '2024-03-05 12:00:00', 1180000.00, 224200.00, 1404200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-03-05', 1404200.00, 'REF00000084', 'Pendiente', 98, 14);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (101, 10, '2024-03-05', 'Calle 81 # 85-16, Tuluá', 'En Ruta');

-- Orden 102
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (102, '2024-06-16', 999600.00, 'Entregada', 51, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 102, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (99, 102, 'FBV', '000099', 'CUFE00000099', '2024-06-16 12:00:00', 840000.00, 159600.00, 999600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-16', 999600.00, 'REF00000085', 'Pagado', 99, 51);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (102, 14, '2024-06-16', 'Calle 30 # 60-16, Tuluá', 'Entregada');

-- Orden 103
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (103, '2024-06-07', 13732600.00, 'Entregada', 4, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 240000.00, 103, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 103, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 103, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (100, 103, 'FBV', '000100', 'CUFE00000100', '2024-06-07 12:00:00', 11540000.00, 2192600.00, 13732600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-07', 13732600.00, 'REF00000086', 'Pagado', 100, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (103, 12, '2024-06-07', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 104
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (104, '2024-01-14', 410550.00, 'Entregada', 8, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 104, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 104, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (101, 104, 'FBV', '000101', 'CUFE00000101', '2024-01-14 12:00:00', 345000.00, 65550.00, 410550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-01-14', 410550.00, 'REF00000087', 'Pagado', 101, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (104, 10, '2024-01-14', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 105
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (105, '2024-02-04', 2403800.00, 'Entregada', 8, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 105, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 105, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 105, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 105, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (102, 105, 'FBV', '000102', 'CUFE00000102', '2024-02-04 12:00:00', 2020000.00, 383800.00, 2403800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-02-04', 2403800.00, 'REF00000088', 'Pagado', 102, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (105, 4, '2024-02-04', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 106
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (106, '2024-06-10', 1338750.00, 'Entregada', 2, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 106, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 106, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (103, 106, 'FBV', '000103', 'CUFE00000103', '2024-06-10 12:00:00', 1125000.00, 213750.00, 1338750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-10', 1338750.00, 'REF00000089', 'Pagado', 103, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (106, 9, '2024-06-10', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 107
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (107, '2024-06-07', 113050.00, 'Entregada', 11, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 107, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (104, 107, 'FBV', '000104', 'CUFE00000104', '2024-06-07 12:00:00', 95000.00, 18050.00, 113050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-07', 113050.00, 'REF00000090', 'Pagado', 104, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (107, 7, '2024-06-07', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 108
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (108, '2024-04-20', 1677900.00, 'Entregada', 12, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 108, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 108, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 108, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (105, 108, 'FBV', '000105', 'CUFE00000105', '2024-04-20 12:00:00', 1410000.00, 267900.00, 1677900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-04-20', 1677900.00, 'REF00000091', 'Pagado', 105, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (108, 5, '2024-04-20', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 109
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (109, '2024-02-01', 1154300.00, 'Cancelada', 12, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 109, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 109, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 109, 14);

-- Orden 110
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (110, '2024-12-26', 5890500.00, 'Entregada', 4, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 110, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 110, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 110, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (106, 110, 'FBV', '000106', 'CUFE00000106', '2024-12-26 12:00:00', 4950000.00, 940500.00, 5890500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-26', 5890500.00, 'REF00000092', 'Pagado', 106, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (110, 5, '2024-12-26', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 111
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (111, '2024-06-21', 285600.00, 'En Proceso', 10, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 240000.00, 111, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (107, 111, 'FBV', '000107', 'CUFE00000107', '2024-06-21 12:00:00', 240000.00, 45600.00, 285600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-21', 285600.00, 'REF00000093', 'Pendiente', 107, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (111, 3, '2024-06-21', 'Calle 10 # 61-29, Tuluá', 'En Ruta');

-- Orden 112
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (112, '2024-01-22', 2356200.00, 'En Proceso', 11, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1280000.00, 112, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 112, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (108, 112, 'FBV', '000108', 'CUFE00000108', '2024-01-22 12:00:00', 1980000.00, 376200.00, 2356200.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (112, 8, '2024-01-22', 'Calle 90 # 83-66, Tuluá', 'Pendiente');

-- Orden 113
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (113, '2024-10-28', 833000.00, 'Entregada', 7, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 113, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (109, 113, 'FBV', '000109', 'CUFE00000109', '2024-10-28 12:00:00', 700000.00, 133000.00, 833000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-10-28', 833000.00, 'REF00000094', 'Pagado', 109, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (113, 10, '2024-10-28', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 114
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (114, '2024-06-12', 3052350.00, 'Entregada', 2, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 114, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 114, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (110, 114, 'FBV', '000110', 'CUFE00000110', '2024-06-12 12:00:00', 2565000.00, 487350.00, 3052350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-12', 3052350.00, 'REF00000095', 'Pagado', 110, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (114, 14, '2024-06-12', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 115
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (115, '2024-06-05', 9996000.00, 'Entregada', 1, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 115, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (111, 115, 'FBV', '000111', 'CUFE00000111', '2024-06-05 12:00:00', 8400000.00, 1596000.00, 9996000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-05', 9996000.00, 'REF00000096', 'Pagado', 111, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (115, 10, '2024-06-05', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 116
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (116, '2024-02-12', 65450.00, 'Entregada', 5, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 116, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (112, 116, 'FBV', '000112', 'CUFE00000112', '2024-02-12 12:00:00', 55000.00, 10450.00, 65450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-02-12', 65450.00, 'REF00000097', 'Anulado', 112, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (116, 11, '2024-02-12', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 117
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (117, '2024-05-03', 1428000.00, 'Entregada', 25, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 117, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (113, 117, 'FBV', '000113', 'CUFE00000113', '2024-05-03 12:00:00', 1200000.00, 228000.00, 1428000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-05-03', 1428000.00, 'REF00000098', 'Pagado', 113, 25);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (117, 5, '2024-05-03', 'Calle 145 # 85-4, Buga', 'Entregada');

-- Orden 118
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (118, '2024-11-24', 2005150.00, 'Pendiente', 60, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 118, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1400000.00, 118, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (114, 118, 'FBV', '000114', 'CUFE00000114', '2024-11-24 12:00:00', 1685000.00, 320150.00, 2005150.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (118, 8, '2024-11-24', 'Calle 37 # 30-60, Cartago', 'Pendiente');

-- Orden 119
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (119, '2024-06-24', 535500.00, 'En Proceso', 23, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 119, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (115, 119, 'FBV', '000115', 'CUFE00000115', '2024-06-24 12:00:00', 450000.00, 85500.00, 535500.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (119, 9, '2024-06-24', 'Calle 77 # 97-50, Tuluá', 'Pendiente');

-- Orden 120
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (120, '2024-12-28', 2879800.00, 'Entregada', 2, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 120, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 120, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1280000.00, 120, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (116, 120, 'FBV', '000116', 'CUFE00000116', '2024-12-28 12:00:00', 2420000.00, 459800.00, 2879800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-28', 2879800.00, 'REF00000099', 'Pagado', 116, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (120, 5, '2024-12-28', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 121
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (121, '2024-06-27', 1041250.00, 'En Proceso', 49, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 121, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 121, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 180000.00, 121, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (117, 121, 'FBV', '000117', 'CUFE00000117', '2024-06-27 12:00:00', 875000.00, 166250.00, 1041250.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-27', 1041250.00, 'REF00000100', 'Pagado', 117, 49);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (121, 6, '2024-06-27', 'Calle 119 # 53-7, Yumbo', 'En Ruta');

-- Orden 122
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (122, '2024-04-10', 333200.00, 'Entregada', 55, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 122, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (118, 122, 'FBV', '000118', 'CUFE00000118', '2024-04-10 12:00:00', 280000.00, 53200.00, 333200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-04-10', 333200.00, 'REF00000101', 'Pagado', 118, 55);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (122, 6, '2024-04-10', 'Calle 99 # 85-84, Cartago', 'Entregada');

-- Orden 123
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (123, '2024-04-12', 142800.00, 'Entregada', 2, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 123, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (119, 123, 'FBV', '000119', 'CUFE00000119', '2024-04-12 12:00:00', 120000.00, 22800.00, 142800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-04-12', 142800.00, 'REF00000102', 'Pagado', 119, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (123, 10, '2024-04-12', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 124
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (124, '2024-02-26', 1142400.00, 'Entregada', 2, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 124, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (120, 124, 'FBV', '000120', 'CUFE00000120', '2024-02-26 12:00:00', 960000.00, 182400.00, 1142400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-02-26', 1142400.00, 'REF00000103', 'Pendiente', 120, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (124, 4, '2024-02-26', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 125
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (125, '2024-02-21', 5842900.00, 'Entregada', 1, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 125, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 125, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (121, 125, 'FBV', '000121', 'CUFE00000121', '2024-02-21 12:00:00', 4910000.00, 932900.00, 5842900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-02-21', 5842900.00, 'REF00000104', 'Pendiente', 121, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (125, 2, '2024-02-21', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 126
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (126, '2024-04-06', 2189600.00, 'Entregada', 3, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 126, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 126, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 126, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 126, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (122, 126, 'FBV', '000122', 'CUFE00000122', '2024-04-06 12:00:00', 1840000.00, 349600.00, 2189600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-04-06', 2189600.00, 'REF00000105', 'Pagado', 122, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (126, 7, '2024-04-06', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 127
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (127, '2024-11-12', 10400600.00, 'Entregada', 59, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 127, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 127, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 127, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 127, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (123, 127, 'FBV', '000123', 'CUFE00000123', '2024-11-12 12:00:00', 8740000.00, 1660600.00, 10400600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-11-12', 10400600.00, 'REF00000106', 'Anulado', 123, 59);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (127, 9, '2024-11-12', 'Calle 145 # 88-24, Cali', 'Entregada');

-- Orden 128
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (128, '2024-09-09', 160650.00, 'Entregada', 2, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 128, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (124, 128, 'FBV', '000124', 'CUFE00000124', '2024-09-09 12:00:00', 135000.00, 25650.00, 160650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-09', 160650.00, 'REF00000107', 'Pagado', 124, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (128, 10, '2024-09-09', 'Calle 102 # 17-86, Palmira', 'No Entregada');

-- Orden 129
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (129, '2024-08-26', 7497000.00, 'En Proceso', 4, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 129, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 129, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 129, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (125, 129, 'FBV', '000125', 'CUFE00000125', '2024-08-26 12:00:00', 6300000.00, 1197000.00, 7497000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-08-26', 7497000.00, 'REF00000108', 'Pagado', 125, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (129, 10, '2024-08-26', 'Calle 140 # 91-39, Palmira', 'En Ruta');

-- Orden 130
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (130, '2024-06-11', 5628700.00, 'Pendiente', 1, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 380000.00, 130, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 130, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (126, 130, 'FBV', '000126', 'CUFE00000126', '2024-06-11 12:00:00', 4730000.00, 898700.00, 5628700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-11', 5628700.00, 'REF00000109', 'Pagado', 126, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (130, 4, '2024-06-11', 'Calle 104 # 16-73, Buga', 'Pendiente');

-- Orden 131
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (131, '2024-12-12', 6235600.00, 'En Proceso', 39, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 131, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 131, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 131, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 131, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (127, 131, 'FBV', '000127', 'CUFE00000127', '2024-12-12 12:00:00', 5240000.00, 995600.00, 6235600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-12', 6235600.00, 'REF00000110', 'Pagado', 127, 39);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (131, 13, '2024-12-12', 'Calle 147 # 37-61, Yumbo', 'En Ruta');

-- Orden 132
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (132, '2024-10-10', 2261000.00, 'Entregada', 7, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 132, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (128, 132, 'FBV', '000128', 'CUFE00000128', '2024-10-10 12:00:00', 1900000.00, 361000.00, 2261000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-10-10', 2261000.00, 'REF00000111', 'Pagado', 128, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (132, 3, '2024-10-10', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 133
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (133, '2024-02-16', 107100.00, 'Entregada', 12, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 133, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (129, 133, 'FBV', '000129', 'CUFE00000129', '2024-02-16 12:00:00', 90000.00, 17100.00, 107100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-02-16', 107100.00, 'REF00000112', 'Pagado', 129, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (133, 4, '2024-02-16', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 134
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (134, '2024-06-09', 2856000.00, 'Entregada', 43, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 134, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (130, 134, 'FBV', '000130', 'CUFE00000130', '2024-06-09 12:00:00', 2400000.00, 456000.00, 2856000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-09', 2856000.00, 'REF00000113', 'Pagado', 130, 43);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (134, 14, '2024-06-09', 'Calle 121 # 38-5, Tuluá', 'Entregada');

-- Orden 135
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (135, '2024-06-13', 1886150.00, 'Entregada', 42, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 135, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 135, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 135, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 135, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (131, 135, 'FBV', '000131', 'CUFE00000131', '2024-06-13 12:00:00', 1585000.00, 301150.00, 1886150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-13', 1886150.00, 'REF00000114', 'Pagado', 131, 42);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (135, 10, '2024-06-13', 'Calle 26 # 98-27, Cartago', 'Entregada');

-- Orden 136
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (136, '2024-12-16', 2362150.00, 'En Proceso', 6, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 136, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 136, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 136, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 136, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (132, 136, 'FBV', '000132', 'CUFE00000132', '2024-12-16 12:00:00', 1985000.00, 377150.00, 2362150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-16', 2362150.00, 'REF00000115', 'Pendiente', 132, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (136, 2, '2024-12-16', 'Calle 24 # 82-55, Tuluá', 'En Ruta');

-- Orden 137
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (137, '2024-06-14', 1594600.00, 'Entregada', 3, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 137, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 137, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 137, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 137, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (133, 137, 'FBV', '000133', 'CUFE00000133', '2024-06-14 12:00:00', 1340000.00, 254600.00, 1594600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-14', 1594600.00, 'REF00000116', 'Pendiente', 133, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (137, 8, '2024-06-14', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 138
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (138, '2024-01-15', 4867100.00, 'Entregada', 4, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 138, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 138, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (134, 138, 'FBV', '000134', 'CUFE00000134', '2024-01-15 12:00:00', 4090000.00, 777100.00, 4867100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-01-15', 4867100.00, 'REF00000117', 'Pagado', 134, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (138, 11, '2024-01-15', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 139
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (139, '2024-12-27', 2915500.00, 'Entregada', 10, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 139, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 180000.00, 139, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 139, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 139, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (135, 139, 'FBV', '000135', 'CUFE00000135', '2024-12-27 12:00:00', 2450000.00, 465500.00, 2915500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-27', 2915500.00, 'REF00000118', 'Pagado', 135, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (139, 4, '2024-12-27', 'Calle 10 # 61-29, Tuluá', 'No Entregada');

-- Orden 140
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (140, '2024-11-05', 214200.00, 'Entregada', 56, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 140, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (136, 140, 'FBV', '000136', 'CUFE00000136', '2024-11-05 12:00:00', 180000.00, 34200.00, 214200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-11-05', 214200.00, 'REF00000119', 'Pagado', 136, 56);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (140, 3, '2024-11-05', 'Calle 105 # 84-20, Jamundí', 'Entregada');

-- Orden 141
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (141, '2024-07-18', 2957150.00, 'Entregada', 2, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 141, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 141, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 141, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (137, 141, 'FBV', '000137', 'CUFE00000137', '2024-07-18 12:00:00', 2485000.00, 472150.00, 2957150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-07-18', 2957150.00, 'REF00000120', 'Pagado', 137, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (141, 9, '2024-07-18', 'Calle 102 # 17-86, Palmira', 'No Entregada');

-- Orden 142
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (142, '2024-12-12', 5747700.00, 'Pendiente', 27, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 142, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 142, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 142, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (138, 142, 'FBV', '000138', 'CUFE00000138', '2024-12-12 12:00:00', 4830000.00, 917700.00, 5747700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-12', 5747700.00, 'REF00000121', 'Pendiente', 138, 27);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (142, 2, '2024-12-12', 'Calle 8 # 32-26, Palmira', 'Pendiente');

-- Orden 143
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (143, '2024-12-12', 3046400.00, 'Entregada', 21, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 143, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 143, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 143, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (139, 143, 'FBV', '000139', 'CUFE00000139', '2024-12-12 12:00:00', 2560000.00, 486400.00, 3046400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-12', 3046400.00, 'REF00000122', 'Pendiente', 139, 21);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (143, 9, '2024-12-12', 'Calle 113 # 10-92, Yumbo', 'Entregada');

-- Orden 144
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (144, '2024-12-24', 2623950.00, 'Entregada', 4, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 144, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 144, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 144, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (140, 144, 'FBV', '000140', 'CUFE00000140', '2024-12-24 12:00:00', 2205000.00, 418950.00, 2623950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-24', 2623950.00, 'REF00000123', 'Pagado', 140, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (144, 8, '2024-12-24', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 145
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (145, '2024-06-12', 3564050.00, 'En Proceso', 5, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 145, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 145, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 145, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (141, 145, 'FBV', '000141', 'CUFE00000141', '2024-06-12 12:00:00', 2995000.00, 569050.00, 3564050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-12', 3564050.00, 'REF00000124', 'Pendiente', 141, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (145, 1, '2024-06-12', 'Calle 142 # 20-35, Yumbo', 'Pendiente');

-- Orden 146
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (146, '2024-05-27', 3201100.00, 'Entregada', 35, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 146, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 146, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1920000.00, 146, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (142, 146, 'FBV', '000142', 'CUFE00000142', '2024-05-27 12:00:00', 2690000.00, 511100.00, 3201100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-05-27', 3201100.00, 'REF00000125', 'Pagado', 142, 35);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (146, 3, '2024-05-27', 'Calle 57 # 52-89, Buenaventura', 'Entregada');

-- Orden 147
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (147, '2024-12-21', 107100.00, 'Entregada', 1, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 147, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (143, 147, 'FBV', '000143', 'CUFE00000143', '2024-12-21 12:00:00', 90000.00, 17100.00, 107100.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (147, 14, '2024-12-21', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 148
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (148, '2024-06-07', 6640200.00, 'Entregada', 37, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 148, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 148, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 148, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 148, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (144, 148, 'FBV', '000144', 'CUFE00000144', '2024-06-07 12:00:00', 5580000.00, 1060200.00, 6640200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-07', 6640200.00, 'REF00000126', 'Pagado', 144, 37);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (148, 7, '2024-06-07', 'Calle 124 # 36-93, Palmira', 'No Entregada');

-- Orden 149
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (149, '2024-10-21', 779450.00, 'Entregada', 5, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 149, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 149, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (145, 149, 'FBV', '000145', 'CUFE00000145', '2024-10-21 12:00:00', 655000.00, 124450.00, 779450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-21', 779450.00, 'REF00000127', 'Pagado', 145, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (149, 5, '2024-10-21', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 150
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (150, '2024-06-13', 5283600.00, 'En Proceso', 5, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 150, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 150, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (146, 150, 'FBV', '000146', 'CUFE00000146', '2024-06-13 12:00:00', 4440000.00, 843600.00, 5283600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (150, 11, '2024-06-13', 'Calle 142 # 20-35, Yumbo', 'Pendiente');

-- Orden 151
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (151, '2024-02-05', 2725100.00, 'En Proceso', 4, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 151, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 151, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (147, 151, 'FBV', '000147', 'CUFE00000147', '2024-02-05 12:00:00', 2290000.00, 435100.00, 2725100.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (151, 13, '2024-02-05', 'Calle 140 # 91-39, Palmira', 'En Ruta');

-- Orden 152
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (152, '2024-06-28', 452200.00, 'Entregada', 37, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 152, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (148, 152, 'FBV', '000148', 'CUFE00000148', '2024-06-28 12:00:00', 380000.00, 72200.00, 452200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-28', 452200.00, 'REF00000128', 'Pendiente', 148, 37);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (152, 8, '2024-06-28', 'Calle 124 # 36-93, Palmira', 'Entregada');

-- Orden 153
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (153, '2024-04-14', 2861950.00, 'Cancelada', 3, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 153, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 153, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 153, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 153, 3);

-- Orden 154
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (154, '2024-06-25', 731850.00, 'En Proceso', 24, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 154, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 154, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (149, 154, 'FBV', '000149', 'CUFE00000149', '2024-06-25 12:00:00', 615000.00, 116850.00, 731850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-25', 731850.00, 'REF00000129', 'Pendiente', 149, 24);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (154, 13, '2024-06-25', 'Calle 8 # 50-44, Tuluá', 'Pendiente');

-- Orden 155
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (155, '2024-07-01', 3016650.00, 'Entregada', 23, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 155, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 155, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (150, 155, 'FBV', '000150', 'CUFE00000150', '2024-07-01 12:00:00', 2535000.00, 481650.00, 3016650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-07-01', 3016650.00, 'REF00000130', 'Pagado', 150, 23);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (155, 11, '2024-07-01', 'Calle 77 # 97-50, Tuluá', 'Entregada');

-- Orden 156
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (156, '2024-07-17', 3903200.00, 'Entregada', 8, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 156, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 156, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (151, 156, 'FBV', '000151', 'CUFE00000151', '2024-07-17 12:00:00', 3280000.00, 623200.00, 3903200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-07-17', 3903200.00, 'REF00000131', 'Pendiente', 151, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (156, 5, '2024-07-17', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 157
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (157, '2024-08-06', 1499400.00, 'Entregada', 19, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 157, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (152, 157, 'FBV', '000152', 'CUFE00000152', '2024-08-06 12:00:00', 1260000.00, 239400.00, 1499400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-08-06', 1499400.00, 'REF00000132', 'Pagado', 152, 19);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (157, 10, '2024-08-06', 'Calle 32 # 59-18, Palmira', 'Entregada');

-- Orden 158
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (158, '2024-01-23', 16184000.00, 'Entregada', 12, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 158, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 158, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 11200000.00, 158, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 158, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (153, 158, 'FBV', '000153', 'CUFE00000153', '2024-01-23 12:00:00', 13600000.00, 2584000.00, 16184000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-01-23', 16184000.00, 'REF00000133', 'Pagado', 153, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (158, 2, '2024-01-23', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 159
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (159, '2024-02-24', 1035300.00, 'Entregada', 34, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 159, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 159, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 159, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (154, 159, 'FBV', '000154', 'CUFE00000154', '2024-02-24 12:00:00', 870000.00, 165300.00, 1035300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-02-24', 1035300.00, 'REF00000134', 'Pagado', 154, 34);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (159, 12, '2024-02-24', 'Calle 62 # 93-53, Yumbo', 'Entregada');

-- Orden 160
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (160, '2024-06-08', 1142400.00, 'Entregada', 12, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 160, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (155, 160, 'FBV', '000155', 'CUFE00000155', '2024-06-08 12:00:00', 960000.00, 182400.00, 1142400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-08', 1142400.00, 'REF00000135', 'Pagado', 155, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (160, 4, '2024-06-08', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 161
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (161, '2024-09-15', 1969450.00, 'Cancelada', 46, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 161, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 161, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 161, 2);

-- Orden 162
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (162, '2024-11-02', 5307400.00, 'Entregada', 2, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 162, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 162, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (156, 162, 'FBV', '000156', 'CUFE00000156', '2024-11-02 12:00:00', 4460000.00, 847400.00, 5307400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-11-02', 5307400.00, 'REF00000136', 'Pagado', 156, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (162, 2, '2024-11-02', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 163
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (163, '2024-06-27', 2255050.00, 'Entregada', 7, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 163, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 163, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 163, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 163, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (157, 163, 'FBV', '000157', 'CUFE00000157', '2024-06-27 12:00:00', 1895000.00, 360050.00, 2255050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-27', 2255050.00, 'REF00000137', 'Pagado', 157, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (163, 7, '2024-06-27', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 164
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (164, '2024-06-14', 2213400.00, 'Entregada', 9, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 164, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (158, 164, 'FBV', '000158', 'CUFE00000158', '2024-06-14 12:00:00', 1860000.00, 353400.00, 2213400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-14', 2213400.00, 'REF00000138', 'Pagado', 158, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (164, 3, '2024-06-14', 'Calle 7 # 23-95, Cartago', 'No Entregada');

-- Orden 165
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (165, '2024-10-20', 5640600.00, 'Entregada', 9, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 165, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 165, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (159, 165, 'FBV', '000159', 'CUFE00000159', '2024-10-20 12:00:00', 4740000.00, 900600.00, 5640600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (165, 11, '2024-10-20', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 166
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (166, '2024-06-16', 904400.00, 'Pendiente', 9, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 166, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (160, 166, 'FBV', '000160', 'CUFE00000160', '2024-06-16 12:00:00', 760000.00, 144400.00, 904400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-16', 904400.00, 'REF00000139', 'Pendiente', 160, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (166, 3, '2024-06-16', 'Calle 7 # 23-95, Cartago', 'Pendiente');

-- Orden 167
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (167, '2024-04-15', 3593800.00, 'Entregada', 7, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 167, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 167, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 167, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 167, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (161, 167, 'FBV', '000161', 'CUFE00000161', '2024-04-15 12:00:00', 3020000.00, 573800.00, 3593800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-04-15', 3593800.00, 'REF00000140', 'Pagado', 161, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (167, 7, '2024-04-15', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 168
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (168, '2024-07-07', 9609250.00, 'Entregada', 6, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 168, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 168, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 168, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 168, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (162, 168, 'FBV', '000162', 'CUFE00000162', '2024-07-07 12:00:00', 8075000.00, 1534250.00, 9609250.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-07-07', 9609250.00, 'REF00000141', 'Pagado', 162, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (168, 14, '2024-07-07', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 169
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (169, '2024-06-04', 1695750.00, 'Entregada', 10, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 169, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 169, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (163, 169, 'FBV', '000163', 'CUFE00000163', '2024-06-04 12:00:00', 1425000.00, 270750.00, 1695750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-04', 1695750.00, 'REF00000142', 'Pagado', 163, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (169, 5, '2024-06-04', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 170
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (170, '2024-11-23', 6033300.00, 'Entregada', 8, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 170, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 170, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 170, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 170, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (164, 170, 'FBV', '000164', 'CUFE00000164', '2024-11-23 12:00:00', 5070000.00, 963300.00, 6033300.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (170, 10, '2024-11-23', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 171
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (171, '2024-03-27', 7616000.00, 'Entregada', 12, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 171, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 171, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 171, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 171, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (165, 171, 'FBV', '000165', 'CUFE00000165', '2024-03-27 12:00:00', 6400000.00, 1216000.00, 7616000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-03-27', 7616000.00, 'REF00000143', 'Pagado', 165, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (171, 3, '2024-03-27', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 172
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (172, '2024-07-11', 940100.00, 'En Proceso', 36, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 172, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 340000.00, 172, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (166, 172, 'FBV', '000166', 'CUFE00000166', '2024-07-11 12:00:00', 790000.00, 150100.00, 940100.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (172, 5, '2024-07-11', 'Calle 85 # 46-90, Buenaventura', 'Pendiente');

-- Orden 173
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (173, '2024-09-23', 11781000.00, 'Entregada', 10, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 173, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 173, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 173, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (167, 173, 'FBV', '000167', 'CUFE00000167', '2024-09-23 12:00:00', 9900000.00, 1881000.00, 11781000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-09-23', 11781000.00, 'REF00000144', 'Pagado', 167, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (173, 13, '2024-09-23', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 174
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (174, '2024-11-06', 898450.00, 'Cancelada', 4, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 174, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 174, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 174, 10);

-- Orden 175
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (175, '2024-04-21', 2070600.00, 'Entregada', 10, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 175, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 175, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (168, 175, 'FBV', '000168', 'CUFE00000168', '2024-04-21 12:00:00', 1740000.00, 330600.00, 2070600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-04-21', 2070600.00, 'REF00000145', 'Anulado', 168, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (175, 14, '2024-04-21', 'Calle 10 # 61-29, Tuluá', 'No Entregada');

-- Orden 176
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (176, '2024-12-28', 5414500.00, 'Pendiente', 4, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 176, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 176, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (169, 176, 'FBV', '000169', 'CUFE00000169', '2024-12-28 12:00:00', 4550000.00, 864500.00, 5414500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-28', 5414500.00, 'REF00000146', 'Pendiente', 169, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (176, 5, '2024-12-28', 'Calle 140 # 91-39, Palmira', 'Pendiente');

-- Orden 177
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (177, '2024-03-17', 428400.00, 'Entregada', 4, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 177, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (170, 177, 'FBV', '000170', 'CUFE00000170', '2024-03-17 12:00:00', 360000.00, 68400.00, 428400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-03-17', 428400.00, 'REF00000147', 'Pagado', 170, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (177, 9, '2024-03-17', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 178
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (178, '2024-12-20', 8080100.00, 'Entregada', 1, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 178, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 178, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 178, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (171, 178, 'FBV', '000171', 'CUFE00000171', '2024-12-20 12:00:00', 6790000.00, 1290100.00, 8080100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-20', 8080100.00, 'REF00000148', 'Pagado', 171, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (178, 3, '2024-12-20', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 179
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (179, '2024-12-22', 2713200.00, 'Entregada', 7, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 179, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 600000.00, 179, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 179, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (172, 179, 'FBV', '000172', 'CUFE00000172', '2024-12-22 12:00:00', 2280000.00, 433200.00, 2713200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-22', 2713200.00, 'REF00000149', 'Pagado', 172, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (179, 2, '2024-12-22', 'Calle 29 # 10-89, Buga', 'No Entregada');

-- Orden 180
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (180, '2024-11-04', 5343100.00, 'Entregada', 7, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 180, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 180, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 180, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (173, 180, 'FBV', '000173', 'CUFE00000173', '2024-11-04 12:00:00', 4490000.00, 853100.00, 5343100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-11-04', 5343100.00, 'REF00000150', 'Pagado', 173, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (180, 11, '2024-11-04', 'Calle 29 # 10-89, Buga', 'No Entregada');

-- Orden 181
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (181, '2024-04-21', 8841700.00, 'En Proceso', 11, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 181, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 181, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 181, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 181, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (174, 181, 'FBV', '000174', 'CUFE00000174', '2024-04-21 12:00:00', 7430000.00, 1411700.00, 8841700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-04-21', 8841700.00, 'REF00000151', 'Pagado', 174, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (181, 1, '2024-04-21', 'Calle 90 # 83-66, Tuluá', 'En Ruta');

-- Orden 182
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (182, '2024-04-09', 8282400.00, 'Entregada', 10, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 182, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 182, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 182, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 182, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (175, 182, 'FBV', '000175', 'CUFE00000175', '2024-04-09 12:00:00', 6960000.00, 1322400.00, 8282400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-04-09', 8282400.00, 'REF00000152', 'Pagado', 175, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (182, 2, '2024-04-09', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 183
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (183, '2024-05-03', 4075750.00, 'Entregada', 27, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 183, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 183, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1400000.00, 183, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1520000.00, 183, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (176, 183, 'FBV', '000176', 'CUFE00000176', '2024-05-03 12:00:00', 3425000.00, 650750.00, 4075750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-05-03', 4075750.00, 'REF00000153', 'Pagado', 176, 27);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (183, 5, '2024-05-03', 'Calle 8 # 32-26, Palmira', 'No Entregada');

-- Orden 184
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (184, '2024-01-20', 71400.00, 'Entregada', 3, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 184, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (177, 184, 'FBV', '000177', 'CUFE00000177', '2024-01-20 12:00:00', 60000.00, 11400.00, 71400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-20', 71400.00, 'REF00000154', 'Pendiente', 177, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (184, 3, '2024-01-20', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 185
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (185, '2024-04-27', 196350.00, 'Entregada', 3, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 185, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (178, 185, 'FBV', '000178', 'CUFE00000178', '2024-04-27 12:00:00', 165000.00, 31350.00, 196350.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (185, 10, '2024-04-27', 'Calle 19 # 69-28, Palmira', 'No Entregada');

-- Orden 186
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (186, '2024-02-22', 535500.00, 'Entregada', 12, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 186, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (179, 186, 'FBV', '000179', 'CUFE00000179', '2024-02-22 12:00:00', 450000.00, 85500.00, 535500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-22', 535500.00, 'REF00000155', 'Anulado', 179, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (186, 12, '2024-02-22', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 187
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (187, '2024-02-07', 7990850.00, 'Entregada', 5, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 187, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 187, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 187, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 187, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (180, 187, 'FBV', '000180', 'CUFE00000180', '2024-02-07 12:00:00', 6715000.00, 1275850.00, 7990850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-07', 7990850.00, 'REF00000156', 'Pagado', 180, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (187, 9, '2024-02-07', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 188
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (188, '2024-06-10', 196350.00, 'Entregada', 9, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 188, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (181, 188, 'FBV', '000181', 'CUFE00000181', '2024-06-10 12:00:00', 165000.00, 31350.00, 196350.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (188, 12, '2024-06-10', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 189
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (189, '2024-09-24', 2475200.00, 'Entregada', 19, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 2080000.00, 189, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (182, 189, 'FBV', '000182', 'CUFE00000182', '2024-09-24 12:00:00', 2080000.00, 395200.00, 2475200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-09-24', 2475200.00, 'REF00000157', 'Pagado', 182, 19);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (189, 5, '2024-09-24', 'Calle 32 # 59-18, Palmira', 'Entregada');

-- Orden 190
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (190, '2024-07-18', 2927400.00, 'Entregada', 10, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 190, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 190, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (183, 190, 'FBV', '000183', 'CUFE00000183', '2024-07-18 12:00:00', 2460000.00, 467400.00, 2927400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-07-18', 2927400.00, 'REF00000158', 'Pagado', 183, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (190, 1, '2024-07-18', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 191
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (191, '2024-09-28', 1576750.00, 'Cancelada', 9, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 191, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 191, 5);

-- Orden 192
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (192, '2024-06-12', 4771900.00, 'Entregada', 19, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 192, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 192, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 192, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 192, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (184, 192, 'FBV', '000184', 'CUFE00000184', '2024-06-12 12:00:00', 4010000.00, 761900.00, 4771900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-12', 4771900.00, 'REF00000159', 'Pagado', 184, 19);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (192, 10, '2024-06-12', 'Calle 32 # 59-18, Palmira', 'Entregada');

-- Orden 193
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (193, '2024-12-09', 1100750.00, 'Entregada', 34, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 193, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 193, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (185, 193, 'FBV', '000185', 'CUFE00000185', '2024-12-09 12:00:00', 925000.00, 175750.00, 1100750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-09', 1100750.00, 'REF00000160', 'Pagado', 185, 34);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (193, 14, '2024-12-09', 'Calle 62 # 93-53, Yumbo', 'Entregada');

-- Orden 194
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (194, '2024-06-20', 440300.00, 'Entregada', 9, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 194, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 194, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (186, 194, 'FBV', '000186', 'CUFE00000186', '2024-06-20 12:00:00', 370000.00, 70300.00, 440300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-20', 440300.00, 'REF00000161', 'Pagado', 186, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (194, 6, '2024-06-20', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 195
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (195, '2024-06-11', 1868300.00, 'En Proceso', 12, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 195, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 195, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 195, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 195, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (187, 195, 'FBV', '000187', 'CUFE00000187', '2024-06-11 12:00:00', 1570000.00, 298300.00, 1868300.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (195, 9, '2024-06-11', 'Calle 112 # 45-94, Cali', 'En Ruta');

-- Orden 196
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (196, '2024-06-19', 1713600.00, 'Entregada', 9, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 196, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 196, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 196, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (188, 196, 'FBV', '000188', 'CUFE00000188', '2024-06-19 12:00:00', 1440000.00, 273600.00, 1713600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-19', 1713600.00, 'REF00000162', 'Pagado', 188, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (196, 3, '2024-06-19', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 197
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (197, '2024-06-15', 107100.00, 'Entregada', 17, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 197, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (189, 197, 'FBV', '000189', 'CUFE00000189', '2024-06-15 12:00:00', 90000.00, 17100.00, 107100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-15', 107100.00, 'REF00000163', 'Pagado', 189, 17);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (197, 3, '2024-06-15', 'Calle 80 # 29-26, Tuluá', 'Entregada');

-- Orden 198
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (198, '2024-03-04', 9996000.00, 'Entregada', 8, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 198, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (190, 198, 'FBV', '000190', 'CUFE00000190', '2024-03-04 12:00:00', 8400000.00, 1596000.00, 9996000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-03-04', 9996000.00, 'REF00000164', 'Pagado', 190, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (198, 14, '2024-03-04', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 199
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (199, '2024-11-21', 4450600.00, 'Entregada', 44, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 199, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 199, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 199, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 199, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (191, 199, 'FBV', '000191', 'CUFE00000191', '2024-11-21 12:00:00', 3740000.00, 710600.00, 4450600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (199, 1, '2024-11-21', 'Calle 140 # 29-83, Buenaventura', 'Entregada');

-- Orden 200
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (200, '2024-02-20', 11257400.00, 'Pendiente', 46, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 200, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 600000.00, 200, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1400000.00, 200, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 200, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (192, 200, 'FBV', '000192', 'CUFE00000192', '2024-02-20 12:00:00', 9460000.00, 1797400.00, 11257400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-02-20', 11257400.00, 'REF00000165', 'Pagado', 192, 46);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (200, 4, '2024-02-20', 'Calle 148 # 76-3, Cali', 'Pendiente');

-- Orden 201
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (201, '2024-07-19', 2677500.00, 'Entregada', 5, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 201, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 201, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 201, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (193, 201, 'FBV', '000193', 'CUFE00000193', '2024-07-19 12:00:00', 2250000.00, 427500.00, 2677500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-19', 2677500.00, 'REF00000166', 'Pagado', 193, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (201, 11, '2024-07-19', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 202
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (202, '2024-12-22', 309400.00, 'Entregada', 19, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 202, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 202, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (194, 202, 'FBV', '000194', 'CUFE00000194', '2024-12-22 12:00:00', 260000.00, 49400.00, 309400.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (202, 12, '2024-12-22', 'Calle 32 # 59-18, Palmira', 'Entregada');

-- Orden 203
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (203, '2024-01-03', 8181250.00, 'En Proceso', 55, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 203, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 203, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 203, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 203, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (195, 203, 'FBV', '000195', 'CUFE00000195', '2024-01-03 12:00:00', 6875000.00, 1306250.00, 8181250.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (203, 7, '2024-01-03', 'Calle 99 # 85-84, Cartago', 'Pendiente');

-- Orden 204
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (204, '2024-06-07', 3439100.00, 'Pendiente', 12, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 204, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1920000.00, 204, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 204, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (196, 204, 'FBV', '000196', 'CUFE00000196', '2024-06-07 12:00:00', 2890000.00, 549100.00, 3439100.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (204, 10, '2024-06-07', 'Calle 112 # 45-94, Cali', 'Pendiente');

-- Orden 205
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (205, '2024-06-13', 2272900.00, 'Entregada', 26, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 205, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 205, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (197, 205, 'FBV', '000197', 'CUFE00000197', '2024-06-13 12:00:00', 1910000.00, 362900.00, 2272900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-13', 2272900.00, 'REF00000167', 'Pagado', 197, 26);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (205, 5, '2024-06-13', 'Calle 87 # 98-49, Buenaventura', 'Entregada');

-- Orden 206
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (206, '2024-04-13', 1541050.00, 'Entregada', 11, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 206, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 206, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 206, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (198, 206, 'FBV', '000198', 'CUFE00000198', '2024-04-13 12:00:00', 1295000.00, 246050.00, 1541050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-04-13', 1541050.00, 'REF00000168', 'Anulado', 198, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (206, 10, '2024-04-13', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 207
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (207, '2024-04-11', 3308200.00, 'Cancelada', 9, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 207, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 207, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 207, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 207, 16);

-- Orden 208
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (208, '2024-01-27', 4284000.00, 'Entregada', 9, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 208, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 208, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 208, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (199, 208, 'FBV', '000199', 'CUFE00000199', '2024-01-27 12:00:00', 3600000.00, 684000.00, 4284000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-01-27', 4284000.00, 'REF00000169', 'Pagado', 199, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (208, 6, '2024-01-27', 'Calle 7 # 23-95, Cartago', 'No Entregada');

-- Orden 209
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (209, '2024-04-24', 541450.00, 'Entregada', 9, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 209, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 209, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 209, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (200, 209, 'FBV', '000200', 'CUFE00000200', '2024-04-24 12:00:00', 455000.00, 86450.00, 541450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-04-24', 541450.00, 'REF00000170', 'Pagado', 200, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (209, 10, '2024-04-24', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 210
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (210, '2024-12-12', 5164600.00, 'Entregada', 54, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 210, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 210, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 210, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 210, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (201, 210, 'FBV', '000201', 'CUFE00000201', '2024-12-12 12:00:00', 4340000.00, 824600.00, 5164600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-12', 5164600.00, 'REF00000171', 'Pagado', 201, 54);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (210, 13, '2024-12-12', 'Calle 140 # 49-59, Buenaventura', 'Entregada');

-- Orden 211
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (211, '2024-02-17', 1666000.00, 'Entregada', 8, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1400000.00, 211, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (202, 211, 'FBV', '000202', 'CUFE00000202', '2024-02-17 12:00:00', 1400000.00, 266000.00, 1666000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-17', 1666000.00, 'REF00000172', 'Pagado', 202, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (211, 10, '2024-02-17', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 212
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (212, '2024-04-16', 3956750.00, 'Cancelada', 10, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 212, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 212, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 212, 16);

-- Orden 213
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (213, '2024-12-22', 737800.00, 'Entregada', 10, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 213, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (203, 213, 'FBV', '000203', 'CUFE00000203', '2024-12-22 12:00:00', 620000.00, 117800.00, 737800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-22', 737800.00, 'REF00000173', 'Pendiente', 203, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (213, 3, '2024-12-22', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 214
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (214, '2024-12-28', 4450600.00, 'Entregada', 9, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 214, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 214, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 2480000.00, 214, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (204, 214, 'FBV', '000204', 'CUFE00000204', '2024-12-28 12:00:00', 3740000.00, 710600.00, 4450600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-28', 4450600.00, 'REF00000174', 'Pagado', 204, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (214, 7, '2024-12-28', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 215
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (215, '2024-05-12', 2891700.00, 'Entregada', 21, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 215, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 215, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 215, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (205, 215, 'FBV', '000205', 'CUFE00000205', '2024-05-12 12:00:00', 2430000.00, 461700.00, 2891700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-05-12', 2891700.00, 'REF00000175', 'Pagado', 205, 21);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (215, 8, '2024-05-12', 'Calle 113 # 10-92, Yumbo', 'No Entregada');

-- Orden 216
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (216, '2024-06-24', 1499400.00, 'Entregada', 12, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 216, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (206, 216, 'FBV', '000206', 'CUFE00000206', '2024-06-24 12:00:00', 1260000.00, 239400.00, 1499400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-24', 1499400.00, 'REF00000176', 'Pagado', 206, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (216, 6, '2024-06-24', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 217
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (217, '2024-08-13', 333200.00, 'En Proceso', 8, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 217, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (207, 217, 'FBV', '000207', 'CUFE00000207', '2024-08-13 12:00:00', 280000.00, 53200.00, 333200.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (217, 6, '2024-08-13', 'Calle 11 # 46-27, Buga', 'Pendiente');

-- Orden 218
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (218, '2024-06-28', 4700500.00, 'Pendiente', 5, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 218, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 218, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 218, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 218, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (208, 218, 'FBV', '000208', 'CUFE00000208', '2024-06-28 12:00:00', 3950000.00, 750500.00, 4700500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-28', 4700500.00, 'REF00000177', 'Pendiente', 208, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (218, 7, '2024-06-28', 'Calle 142 # 20-35, Yumbo', 'Pendiente');

-- Orden 219
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (219, '2024-07-03', 2165800.00, 'Entregada', 25, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 219, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 219, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (209, 219, 'FBV', '000209', 'CUFE00000209', '2024-07-03 12:00:00', 1820000.00, 345800.00, 2165800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-07-03', 2165800.00, 'REF00000178', 'Pagado', 209, 25);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (219, 1, '2024-07-03', 'Calle 145 # 85-4, Buga', 'Entregada');

-- Orden 220
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (220, '2024-12-11', 6116600.00, 'Pendiente', 12, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 220, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 220, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 220, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 220, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (210, 220, 'FBV', '000210', 'CUFE00000210', '2024-12-11 12:00:00', 5140000.00, 976600.00, 6116600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-11', 6116600.00, 'REF00000179', 'Pendiente', 210, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (220, 1, '2024-12-11', 'Calle 112 # 45-94, Cali', 'Pendiente');

-- Orden 221
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (221, '2024-11-15', 2356200.00, 'Entregada', 10, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 221, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 221, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 221, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 221, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (211, 221, 'FBV', '000211', 'CUFE00000211', '2024-11-15 12:00:00', 1980000.00, 376200.00, 2356200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-11-15', 2356200.00, 'REF00000180', 'Pendiente', 211, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (221, 12, '2024-11-15', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 222
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (222, '2024-01-12', 1921850.00, 'Entregada', 5, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 222, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 222, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 222, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 222, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (212, 222, 'FBV', '000212', 'CUFE00000212', '2024-01-12 12:00:00', 1615000.00, 306850.00, 1921850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-01-12', 1921850.00, 'REF00000181', 'Pagado', 212, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (222, 13, '2024-01-12', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 223
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (223, '2024-12-06', 267750.00, 'Entregada', 8, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 223, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (213, 223, 'FBV', '000213', 'CUFE00000213', '2024-12-06 12:00:00', 225000.00, 42750.00, 267750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-06', 267750.00, 'REF00000182', 'Pagado', 213, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (223, 5, '2024-12-06', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 224
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (224, '2024-01-04', 1011500.00, 'Entregada', 56, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 224, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 224, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (214, 224, 'FBV', '000214', 'CUFE00000214', '2024-01-04 12:00:00', 850000.00, 161500.00, 1011500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-01-04', 1011500.00, 'REF00000183', 'Pagado', 214, 56);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (224, 1, '2024-01-04', 'Calle 105 # 84-20, Jamundí', 'Entregada');

-- Orden 225
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (225, '2024-11-11', 3927000.00, 'Entregada', 9, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 225, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 225, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (215, 225, 'FBV', '000215', 'CUFE00000215', '2024-11-11 12:00:00', 3300000.00, 627000.00, 3927000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-11-11', 3927000.00, 'REF00000184', 'Pendiente', 215, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (225, 6, '2024-11-11', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 226
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (226, '2024-12-08', 357000.00, 'En Proceso', 7, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 226, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (216, 226, 'FBV', '000216', 'CUFE00000216', '2024-12-08 12:00:00', 300000.00, 57000.00, 357000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-08', 357000.00, 'REF00000185', 'Pagado', 216, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (226, 4, '2024-12-08', 'Calle 29 # 10-89, Buga', 'En Ruta');

-- Orden 227
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (227, '2024-03-24', 1475600.00, 'Entregada', 51, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 227, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (217, 227, 'FBV', '000217', 'CUFE00000217', '2024-03-24 12:00:00', 1240000.00, 235600.00, 1475600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-03-24', 1475600.00, 'REF00000186', 'Pagado', 217, 51);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (227, 11, '2024-03-24', 'Calle 30 # 60-16, Tuluá', 'Entregada');

-- Orden 228
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (228, '2024-06-01', 4141200.00, 'Entregada', 5, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 228, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 228, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 228, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (218, 228, 'FBV', '000218', 'CUFE00000218', '2024-06-01 12:00:00', 3480000.00, 661200.00, 4141200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-01', 4141200.00, 'REF00000187', 'Pagado', 218, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (228, 2, '2024-06-01', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 229
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (229, '2024-08-25', 4284000.00, 'Entregada', 2, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 229, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (219, 229, 'FBV', '000219', 'CUFE00000219', '2024-08-25 12:00:00', 3600000.00, 684000.00, 4284000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-08-25', 4284000.00, 'REF00000188', 'Pagado', 219, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (229, 8, '2024-08-25', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 230
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (230, '2024-06-07', 7806400.00, 'Entregada', 30, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 230, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 380000.00, 230, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 230, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1920000.00, 230, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (220, 230, 'FBV', '000220', 'CUFE00000220', '2024-06-07 12:00:00', 6560000.00, 1246400.00, 7806400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-07', 7806400.00, 'REF00000189', 'Pagado', 220, 30);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (230, 6, '2024-06-07', 'Calle 18 # 65-83, Cali', 'Entregada');

-- Orden 231
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (231, '2024-07-15', 7705250.00, 'Entregada', 3, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 231, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 231, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 231, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (221, 231, 'FBV', '000221', 'CUFE00000221', '2024-07-15 12:00:00', 6475000.00, 1230250.00, 7705250.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-15', 7705250.00, 'REF00000190', 'Pagado', 221, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (231, 13, '2024-07-15', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 232
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (232, '2024-07-13', 8901200.00, 'Entregada', 12, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 232, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 232, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 240000.00, 232, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 232, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (222, 232, 'FBV', '000222', 'CUFE00000222', '2024-07-13 12:00:00', 7480000.00, 1421200.00, 8901200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-07-13', 8901200.00, 'REF00000191', 'Pagado', 222, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (232, 2, '2024-07-13', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 233
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (233, '2024-07-23', 1428000.00, 'Entregada', 12, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 233, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (223, 233, 'FBV', '000223', 'CUFE00000223', '2024-07-23 12:00:00', 1200000.00, 228000.00, 1428000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-07-23', 1428000.00, 'REF00000192', 'Pagado', 223, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (233, 7, '2024-07-23', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 234
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (234, '2024-09-12', 5117000.00, 'Entregada', 9, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 234, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 234, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 234, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 234, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (224, 234, 'FBV', '000224', 'CUFE00000224', '2024-09-12 12:00:00', 4300000.00, 817000.00, 5117000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-09-12', 5117000.00, 'REF00000193', 'Pagado', 224, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (234, 9, '2024-09-12', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 235
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (235, '2024-12-18', 4057900.00, 'En Proceso', 10, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 235, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 235, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 235, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 235, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (225, 235, 'FBV', '000225', 'CUFE00000225', '2024-12-18 12:00:00', 3410000.00, 647900.00, 4057900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-18', 4057900.00, 'REF00000194', 'Pagado', 225, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (235, 4, '2024-12-18', 'Calle 10 # 61-29, Tuluá', 'Pendiente');

-- Orden 236
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (236, '2024-06-12', 10864700.00, 'Entregada', 59, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 236, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 180000.00, 236, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 236, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 236, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (226, 236, 'FBV', '000226', 'CUFE00000226', '2024-06-12 12:00:00', 9130000.00, 1734700.00, 10864700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-12', 10864700.00, 'REF00000195', 'Pagado', 226, 59);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (236, 13, '2024-06-12', 'Calle 145 # 88-24, Cali', 'Entregada');

-- Orden 237
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (237, '2024-12-07', 2213400.00, 'Pendiente', 1, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 237, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (227, 237, 'FBV', '000227', 'CUFE00000227', '2024-12-07 12:00:00', 1860000.00, 353400.00, 2213400.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (237, 5, '2024-12-07', 'Calle 104 # 16-73, Buga', 'Pendiente');

-- Orden 238
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (238, '2024-03-12', 1636250.00, 'Pendiente', 7, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 238, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 238, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (228, 238, 'FBV', '000228', 'CUFE00000228', '2024-03-12 12:00:00', 1375000.00, 261250.00, 1636250.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-03-12', 1636250.00, 'REF00000196', 'Pagado', 228, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (238, 8, '2024-03-12', 'Calle 29 # 10-89, Buga', 'Pendiente');

-- Orden 239
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (239, '2024-12-23', 404600.00, 'En Proceso', 3, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 340000.00, 239, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (229, 239, 'FBV', '000229', 'CUFE00000229', '2024-12-23 12:00:00', 340000.00, 64600.00, 404600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (239, 12, '2024-12-23', 'Calle 19 # 69-28, Palmira', 'En Ruta');

-- Orden 240
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (240, '2024-12-14', 160650.00, 'Pendiente', 7, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 240, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (230, 240, 'FBV', '000230', 'CUFE00000230', '2024-12-14 12:00:00', 135000.00, 25650.00, 160650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-14', 160650.00, 'REF00000197', 'Pendiente', 230, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (240, 6, '2024-12-14', 'Calle 29 # 10-89, Buga', 'Pendiente');

-- Orden 241
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (241, '2024-08-11', 1481550.00, 'Entregada', 6, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 241, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 241, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (231, 241, 'FBV', '000231', 'CUFE00000231', '2024-08-11 12:00:00', 1245000.00, 236550.00, 1481550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-08-11', 1481550.00, 'REF00000198', 'Pagado', 231, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (241, 1, '2024-08-11', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 242
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (242, '2024-06-16', 6664000.00, 'Entregada', 3, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 242, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (232, 242, 'FBV', '000232', 'CUFE00000232', '2024-06-16 12:00:00', 5600000.00, 1064000.00, 6664000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-16', 6664000.00, 'REF00000199', 'Pagado', 232, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (242, 7, '2024-06-16', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 243
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (243, '2024-04-13', 4569600.00, 'Entregada', 9, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 243, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 243, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (233, 243, 'FBV', '000233', 'CUFE00000233', '2024-04-13 12:00:00', 3840000.00, 729600.00, 4569600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-04-13', 4569600.00, 'REF00000200', 'Pagado', 233, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (243, 3, '2024-04-13', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 244
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (244, '2024-06-20', 1868300.00, 'Entregada', 7, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 244, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 244, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 244, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (234, 244, 'FBV', '000234', 'CUFE00000234', '2024-06-20 12:00:00', 1570000.00, 298300.00, 1868300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-20', 1868300.00, 'REF00000201', 'Pagado', 234, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (244, 6, '2024-06-20', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 245
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (245, '2024-12-01', 142800.00, 'Entregada', 40, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 245, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (235, 245, 'FBV', '000235', 'CUFE00000235', '2024-12-01 12:00:00', 120000.00, 22800.00, 142800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-01', 142800.00, 'REF00000202', 'Pagado', 235, 40);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (245, 3, '2024-12-01', 'Calle 14 # 20-20, Cali', 'Entregada');

-- Orden 246
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (246, '2024-08-05', 1499400.00, 'Entregada', 10, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 246, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (236, 246, 'FBV', '000236', 'CUFE00000236', '2024-08-05 12:00:00', 1260000.00, 239400.00, 1499400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-08-05', 1499400.00, 'REF00000203', 'Pagado', 236, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (246, 5, '2024-08-05', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 247
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (247, '2024-09-01', 4831400.00, 'Entregada', 1, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 247, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 247, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 247, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (237, 247, 'FBV', '000237', 'CUFE00000237', '2024-09-01 12:00:00', 4060000.00, 771400.00, 4831400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-01', 4831400.00, 'REF00000204', 'Pagado', 237, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (247, 5, '2024-09-01', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 248
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (248, '2024-07-15', 571200.00, 'Entregada', 4, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 248, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (238, 248, 'FBV', '000238', 'CUFE00000238', '2024-07-15 12:00:00', 480000.00, 91200.00, 571200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-07-15', 571200.00, 'REF00000205', 'Pagado', 238, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (248, 2, '2024-07-15', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 249
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (249, '2024-06-10', 3784200.00, 'Entregada', 12, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 249, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 249, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 249, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (239, 249, 'FBV', '000239', 'CUFE00000239', '2024-06-10 12:00:00', 3180000.00, 604200.00, 3784200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-10', 3784200.00, 'REF00000206', 'Pagado', 239, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (249, 6, '2024-06-10', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 250
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (250, '2024-08-14', 10198300.00, 'Cancelada', 8, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 250, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 250, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 250, 5);

-- Orden 251
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (251, '2024-12-25', 6509300.00, 'Entregada', 8, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 251, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1120000.00, 251, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (240, 251, 'FBV', '000240', 'CUFE00000240', '2024-12-25 12:00:00', 5470000.00, 1039300.00, 6509300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-25', 6509300.00, 'REF00000207', 'Pagado', 240, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (251, 3, '2024-12-25', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 252
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (252, '2024-05-24', 1904000.00, 'Pendiente', 54, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 252, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 252, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 252, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (241, 252, 'FBV', '000241', 'CUFE00000241', '2024-05-24 12:00:00', 1600000.00, 304000.00, 1904000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-05-24', 1904000.00, 'REF00000208', 'Pagado', 241, 54);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (252, 12, '2024-05-24', 'Calle 140 # 49-59, Buenaventura', 'Pendiente');

-- Orden 253
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (253, '2024-10-16', 5866700.00, 'Entregada', 7, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 253, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 253, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 253, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 253, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (242, 253, 'FBV', '000242', 'CUFE00000242', '2024-10-16 12:00:00', 4930000.00, 936700.00, 5866700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-16', 5866700.00, 'REF00000209', 'Anulado', 242, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (253, 1, '2024-10-16', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 254
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (254, '2024-12-15', 4254250.00, 'Pendiente', 2, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 254, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 254, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 254, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 254, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (243, 254, 'FBV', '000243', 'CUFE00000243', '2024-12-15 12:00:00', 3575000.00, 679250.00, 4254250.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (254, 10, '2024-12-15', 'Calle 102 # 17-86, Palmira', 'Pendiente');

-- Orden 255
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (255, '2024-06-27', 4569600.00, 'Pendiente', 10, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 255, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 255, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (244, 255, 'FBV', '000244', 'CUFE00000244', '2024-06-27 12:00:00', 3840000.00, 729600.00, 4569600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (255, 1, '2024-06-27', 'Calle 10 # 61-29, Tuluá', 'Pendiente');

-- Orden 256
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (256, '2024-12-25', 2338350.00, 'En Proceso', 8, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 256, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 256, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 256, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 256, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (245, 256, 'FBV', '000245', 'CUFE00000245', '2024-12-25 12:00:00', 1965000.00, 373350.00, 2338350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-25', 2338350.00, 'REF00000210', 'Pagado', 245, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (256, 5, '2024-12-25', 'Calle 11 # 46-27, Buga', 'En Ruta');

-- Orden 257
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (257, '2024-08-23', 5991650.00, 'Pendiente', 4, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 257, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 257, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 257, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 257, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (246, 257, 'FBV', '000246', 'CUFE00000246', '2024-08-23 12:00:00', 5035000.00, 956650.00, 5991650.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (257, 1, '2024-08-23', 'Calle 140 # 91-39, Palmira', 'Pendiente');

-- Orden 258
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (258, '2024-06-25', 1779050.00, 'Entregada', 7, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 258, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 380000.00, 258, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 258, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (247, 258, 'FBV', '000247', 'CUFE00000247', '2024-06-25 12:00:00', 1495000.00, 284050.00, 1779050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-25', 1779050.00, 'REF00000211', 'Pagado', 247, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (258, 3, '2024-06-25', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 259
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (259, '2024-01-25', 12804400.00, 'Entregada', 54, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 259, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 259, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 259, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 259, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (248, 259, 'FBV', '000248', 'CUFE00000248', '2024-01-25 12:00:00', 10760000.00, 2044400.00, 12804400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-01-25', 12804400.00, 'REF00000212', 'Pagado', 248, 54);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (259, 3, '2024-01-25', 'Calle 140 # 49-59, Buenaventura', 'Entregada');

-- Orden 260
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (260, '2024-03-21', 4545800.00, 'Entregada', 1, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1920000.00, 260, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 260, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (249, 260, 'FBV', '000249', 'CUFE00000249', '2024-03-21 12:00:00', 3820000.00, 725800.00, 4545800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-03-21', 4545800.00, 'REF00000213', 'Pagado', 249, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (260, 4, '2024-03-21', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 261
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (261, '2024-10-12', 214200.00, 'Pendiente', 55, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 261, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (250, 261, 'FBV', '000250', 'CUFE00000250', '2024-10-12 12:00:00', 180000.00, 34200.00, 214200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-12', 214200.00, 'REF00000214', 'Pendiente', 250, 55);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (261, 3, '2024-10-12', 'Calle 99 # 85-84, Cartago', 'Pendiente');

-- Orden 262
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (262, '2024-03-23', 1779050.00, 'Pendiente', 6, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 262, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 262, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 262, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (251, 262, 'FBV', '000251', 'CUFE00000251', '2024-03-23 12:00:00', 1495000.00, 284050.00, 1779050.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (262, 9, '2024-03-23', 'Calle 24 # 82-55, Tuluá', 'Pendiente');

-- Orden 263
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (263, '2024-12-09', 3052350.00, 'Entregada', 8, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 263, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 263, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 263, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (252, 263, 'FBV', '000252', 'CUFE00000252', '2024-12-09 12:00:00', 2565000.00, 487350.00, 3052350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-09', 3052350.00, 'REF00000215', 'Pagado', 252, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (263, 5, '2024-12-09', 'Calle 11 # 46-27, Buga', 'No Entregada');

-- Orden 264
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (264, '2024-11-24', 6366500.00, 'En Proceso', 9, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 264, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 264, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 264, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 264, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (253, 264, 'FBV', '000253', 'CUFE00000253', '2024-11-24 12:00:00', 5350000.00, 1016500.00, 6366500.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (264, 1, '2024-11-24', 'Calle 7 # 23-95, Cartago', 'En Ruta');

-- Orden 265
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (265, '2024-10-20', 3808000.00, 'Cancelada', 6, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 265, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 265, 11);

-- Orden 266
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (266, '2024-03-15', 2713200.00, 'Pendiente', 3, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 266, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 266, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 266, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (254, 266, 'FBV', '000254', 'CUFE00000254', '2024-03-15 12:00:00', 2280000.00, 433200.00, 2713200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-03-15', 2713200.00, 'REF00000216', 'Pagado', 254, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (266, 14, '2024-03-15', 'Calle 19 # 69-28, Palmira', 'Pendiente');

-- Orden 267
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (267, '2024-03-27', 13387500.00, 'Entregada', 2, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 267, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 267, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 267, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 267, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (255, 267, 'FBV', '000255', 'CUFE00000255', '2024-03-27 12:00:00', 11250000.00, 2137500.00, 13387500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-03-27', 13387500.00, 'REF00000217', 'Pagado', 255, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (267, 11, '2024-03-27', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 268
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (268, '2024-05-04', 178500.00, 'Entregada', 4, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 268, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (256, 268, 'FBV', '000256', 'CUFE00000256', '2024-05-04 12:00:00', 150000.00, 28500.00, 178500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-05-04', 178500.00, 'REF00000218', 'Pagado', 256, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (268, 11, '2024-05-04', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 269
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (269, '2024-10-17', 1957550.00, 'Entregada', 49, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 269, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 269, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 269, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (257, 269, 'FBV', '000257', 'CUFE00000257', '2024-10-17 12:00:00', 1645000.00, 312550.00, 1957550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-17', 1957550.00, 'REF00000219', 'Pendiente', 257, 49);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (269, 6, '2024-10-17', 'Calle 119 # 53-7, Yumbo', 'No Entregada');

-- Orden 270
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (270, '2024-06-02', 3724700.00, 'Entregada', 41, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 270, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 270, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 270, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (258, 270, 'FBV', '000258', 'CUFE00000258', '2024-06-02 12:00:00', 3130000.00, 594700.00, 3724700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-02', 3724700.00, 'REF00000220', 'Pagado', 258, 41);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (270, 13, '2024-06-02', 'Calle 58 # 67-49, Palmira', 'Entregada');

-- Orden 271
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (271, '2024-01-20', 535500.00, 'Entregada', 5, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 271, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (259, 271, 'FBV', '000259', 'CUFE00000259', '2024-01-20 12:00:00', 450000.00, 85500.00, 535500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-01-20', 535500.00, 'REF00000221', 'Pagado', 259, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (271, 3, '2024-01-20', 'Calle 142 # 20-35, Yumbo', 'No Entregada');

-- Orden 272
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (272, '2024-02-20', 5230050.00, 'Pendiente', 5, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1920000.00, 272, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 272, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 272, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 272, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (260, 272, 'FBV', '000260', 'CUFE00000260', '2024-02-20 12:00:00', 4395000.00, 835050.00, 5230050.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (272, 13, '2024-02-20', 'Calle 142 # 20-35, Yumbo', 'Pendiente');

-- Orden 273
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (273, '2024-06-07', 357000.00, 'En Proceso', 7, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 273, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (261, 273, 'FBV', '000261', 'CUFE00000261', '2024-06-07 12:00:00', 300000.00, 57000.00, 357000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (273, 13, '2024-06-07', 'Calle 29 # 10-89, Buga', 'En Ruta');

-- Orden 274
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (274, '2024-12-05', 5414500.00, 'Pendiente', 9, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 274, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 274, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 274, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (262, 274, 'FBV', '000262', 'CUFE00000262', '2024-12-05 12:00:00', 4550000.00, 864500.00, 5414500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-05', 5414500.00, 'REF00000222', 'Pagado', 262, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (274, 8, '2024-12-05', 'Calle 7 # 23-95, Cartago', 'Pendiente');

-- Orden 275
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (275, '2024-03-25', 1618400.00, 'Entregada', 8, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 275, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 275, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (263, 275, 'FBV', '000263', 'CUFE00000263', '2024-03-25 12:00:00', 1360000.00, 258400.00, 1618400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-03-25', 1618400.00, 'REF00000223', 'Pagado', 263, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (275, 8, '2024-03-25', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 276
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (276, '2024-04-06', 5331200.00, 'Cancelada', 5, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 276, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 276, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 276, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 276, 14);

-- Orden 277
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (277, '2024-02-20', 178500.00, 'Entregada', 35, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 277, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (264, 277, 'FBV', '000264', 'CUFE00000264', '2024-02-20 12:00:00', 150000.00, 28500.00, 178500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-02-20', 178500.00, 'REF00000224', 'Pagado', 264, 35);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (277, 13, '2024-02-20', 'Calle 57 # 52-89, Buenaventura', 'Entregada');

-- Orden 278
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (278, '2024-09-02', 1963500.00, 'Entregada', 6, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 278, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 278, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (265, 278, 'FBV', '000265', 'CUFE00000265', '2024-09-02 12:00:00', 1650000.00, 313500.00, 1963500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-09-02', 1963500.00, 'REF00000225', 'Pagado', 265, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (278, 7, '2024-09-02', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 279
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (279, '2024-11-22', 5723900.00, 'Entregada', 6, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 279, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 279, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 279, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 279, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (266, 279, 'FBV', '000266', 'CUFE00000266', '2024-11-22 12:00:00', 4810000.00, 913900.00, 5723900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-11-22', 5723900.00, 'REF00000226', 'Pendiente', 266, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (279, 11, '2024-11-22', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 280
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (280, '2024-10-13', 1035300.00, 'Entregada', 11, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 280, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 280, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (267, 280, 'FBV', '000267', 'CUFE00000267', '2024-10-13 12:00:00', 870000.00, 165300.00, 1035300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-13', 1035300.00, 'REF00000227', 'Pagado', 267, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (280, 7, '2024-10-13', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 281
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (281, '2024-01-21', 4129300.00, 'Entregada', 3, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 281, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 281, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 281, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 281, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (268, 281, 'FBV', '000268', 'CUFE00000268', '2024-01-21 12:00:00', 3470000.00, 659300.00, 4129300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-21', 4129300.00, 'REF00000228', 'Pagado', 268, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (281, 14, '2024-01-21', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 282
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (282, '2024-06-01', 3451000.00, 'Entregada', 4, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 282, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 282, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (269, 282, 'FBV', '000269', 'CUFE00000269', '2024-06-01 12:00:00', 2900000.00, 551000.00, 3451000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-01', 3451000.00, 'REF00000229', 'Anulado', 269, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (282, 6, '2024-06-01', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 283
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (283, '2024-02-24', 1886150.00, 'En Proceso', 55, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 283, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 283, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 283, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (270, 283, 'FBV', '000270', 'CUFE00000270', '2024-02-24 12:00:00', 1585000.00, 301150.00, 1886150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-24', 1886150.00, 'REF00000230', 'Pendiente', 270, 55);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (283, 8, '2024-02-24', 'Calle 99 # 85-84, Cartago', 'Pendiente');

-- Orden 284
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (284, '2024-06-17', 5212200.00, 'Pendiente', 26, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 284, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 284, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 240000.00, 284, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (271, 284, 'FBV', '000271', 'CUFE00000271', '2024-06-17 12:00:00', 4380000.00, 832200.00, 5212200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-17', 5212200.00, 'REF00000231', 'Pendiente', 271, 26);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (284, 13, '2024-06-17', 'Calle 87 # 98-49, Buenaventura', 'Pendiente');

-- Orden 285
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (285, '2024-05-24', 2927400.00, 'Entregada', 12, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1520000.00, 285, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 285, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 380000.00, 285, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (272, 285, 'FBV', '000272', 'CUFE00000272', '2024-05-24 12:00:00', 2460000.00, 467400.00, 2927400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-05-24', 2927400.00, 'REF00000232', 'Pendiente', 272, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (285, 1, '2024-05-24', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 286
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (286, '2024-06-26', 1487500.00, 'Entregada', 3, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 286, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 286, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (273, 286, 'FBV', '000273', 'CUFE00000273', '2024-06-26 12:00:00', 1250000.00, 237500.00, 1487500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-26', 1487500.00, 'REF00000233', 'Anulado', 273, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (286, 14, '2024-06-26', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 287
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (287, '2024-04-15', 1666000.00, 'En Proceso', 25, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 287, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 287, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (274, 287, 'FBV', '000274', 'CUFE00000274', '2024-04-15 12:00:00', 1400000.00, 266000.00, 1666000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-04-15', 1666000.00, 'REF00000234', 'Pendiente', 274, 25);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (287, 12, '2024-04-15', 'Calle 145 # 85-4, Buga', 'En Ruta');

-- Orden 288
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (288, '2024-11-18', 4914700.00, 'Entregada', 21, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 288, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 288, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 288, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 288, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (275, 288, 'FBV', '000275', 'CUFE00000275', '2024-11-18 12:00:00', 4130000.00, 784700.00, 4914700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-11-18', 4914700.00, 'REF00000235', 'Pagado', 275, 21);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (288, 8, '2024-11-18', 'Calle 113 # 10-92, Yumbo', 'No Entregada');

-- Orden 289
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (289, '2024-05-04', 1648150.00, 'Entregada', 6, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 289, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 289, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 289, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 289, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (276, 289, 'FBV', '000276', 'CUFE00000276', '2024-05-04 12:00:00', 1385000.00, 263150.00, 1648150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-05-04', 1648150.00, 'REF00000236', 'Pagado', 276, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (289, 5, '2024-05-04', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 290
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (290, '2024-01-20', 684250.00, 'Entregada', 5, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 290, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 290, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (277, 290, 'FBV', '000277', 'CUFE00000277', '2024-01-20 12:00:00', 575000.00, 109250.00, 684250.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-01-20', 684250.00, 'REF00000237', 'Pagado', 277, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (290, 5, '2024-01-20', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 291
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (291, '2024-09-03', 5140800.00, 'Entregada', 6, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 291, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 291, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 291, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (278, 291, 'FBV', '000278', 'CUFE00000278', '2024-09-03 12:00:00', 4320000.00, 820800.00, 5140800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-03', 5140800.00, 'REF00000238', 'Anulado', 278, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (291, 11, '2024-09-03', 'Calle 24 # 82-55, Tuluá', 'No Entregada');

-- Orden 292
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (292, '2024-12-07', 1213800.00, 'Entregada', 2, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 292, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 292, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (279, 292, 'FBV', '000279', 'CUFE00000279', '2024-12-07 12:00:00', 1020000.00, 193800.00, 1213800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-07', 1213800.00, 'REF00000239', 'Pagado', 279, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (292, 8, '2024-12-07', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 293
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (293, '2024-10-25', 4956350.00, 'Entregada', 2, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 293, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 293, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1920000.00, 293, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 293, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (280, 293, 'FBV', '000280', 'CUFE00000280', '2024-10-25 12:00:00', 4165000.00, 791350.00, 4956350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-25', 4956350.00, 'REF00000240', 'Pagado', 280, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (293, 2, '2024-10-25', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 294
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (294, '2024-01-23', 17302600.00, 'En Proceso', 10, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 294, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 294, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 294, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 294, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (281, 294, 'FBV', '000281', 'CUFE00000281', '2024-01-23 12:00:00', 14540000.00, 2762600.00, 17302600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (294, 9, '2024-01-23', 'Calle 10 # 61-29, Tuluá', 'Pendiente');

-- Orden 295
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (295, '2024-01-13', 5497800.00, 'Entregada', 4, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 295, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 295, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 295, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (282, 295, 'FBV', '000282', 'CUFE00000282', '2024-01-13 12:00:00', 4620000.00, 877800.00, 5497800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-01-13', 5497800.00, 'REF00000241', 'Pagado', 282, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (295, 4, '2024-01-13', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 296
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (296, '2024-12-26', 1713600.00, 'Entregada', 9, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 296, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (283, 296, 'FBV', '000283', 'CUFE00000283', '2024-12-26 12:00:00', 1440000.00, 273600.00, 1713600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-26', 1713600.00, 'REF00000242', 'Pagado', 283, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (296, 5, '2024-12-26', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 297
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (297, '2024-12-18', 3617600.00, 'Entregada', 51, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1120000.00, 297, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1920000.00, 297, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (284, 297, 'FBV', '000284', 'CUFE00000284', '2024-12-18 12:00:00', 3040000.00, 577600.00, 3617600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (297, 8, '2024-12-18', 'Calle 30 # 60-16, Tuluá', 'Entregada');

-- Orden 298
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (298, '2024-01-10', 357000.00, 'En Proceso', 3, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 298, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (285, 298, 'FBV', '000285', 'CUFE00000285', '2024-01-10 12:00:00', 300000.00, 57000.00, 357000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (298, 1, '2024-01-10', 'Calle 19 # 69-28, Palmira', 'En Ruta');

-- Orden 299
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (299, '2024-04-11', 14053900.00, 'En Proceso', 2, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 299, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 299, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 299, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 299, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (286, 299, 'FBV', '000286', 'CUFE00000286', '2024-04-11 12:00:00', 11810000.00, 2243900.00, 14053900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-04-11', 14053900.00, 'REF00000243', 'Pagado', 286, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (299, 4, '2024-04-11', 'Calle 102 # 17-86, Palmira', 'En Ruta');

-- Orden 300
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (300, '2024-12-02', 2570400.00, 'Entregada', 8, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 300, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 300, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 300, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 300, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (287, 300, 'FBV', '000287', 'CUFE00000287', '2024-12-02 12:00:00', 2160000.00, 410400.00, 2570400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-02', 2570400.00, 'REF00000244', 'Pagado', 287, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (300, 3, '2024-12-02', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 301
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (301, '2024-06-06', 101150.00, 'Entregada', 10, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 301, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (288, 301, 'FBV', '000288', 'CUFE00000288', '2024-06-06 12:00:00', 85000.00, 16150.00, 101150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-06', 101150.00, 'REF00000245', 'Pagado', 288, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (301, 5, '2024-06-06', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 302
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (302, '2024-07-07', 202300.00, 'Entregada', 8, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 302, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (289, 302, 'FBV', '000289', 'CUFE00000289', '2024-07-07 12:00:00', 170000.00, 32300.00, 202300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-07-07', 202300.00, 'REF00000246', 'Anulado', 289, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (302, 11, '2024-07-07', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 303
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (303, '2024-04-26', 4623150.00, 'Entregada', 5, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 303, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 303, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 303, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 303, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (290, 303, 'FBV', '000290', 'CUFE00000290', '2024-04-26 12:00:00', 3885000.00, 738150.00, 4623150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-04-26', 4623150.00, 'REF00000247', 'Pagado', 290, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (303, 4, '2024-04-26', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 304
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (304, '2024-04-15', 2475200.00, 'Entregada', 2, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 304, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 304, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 304, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (291, 304, 'FBV', '000291', 'CUFE00000291', '2024-04-15 12:00:00', 2080000.00, 395200.00, 2475200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-04-15', 2475200.00, 'REF00000248', 'Pendiente', 291, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (304, 2, '2024-04-15', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 305
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (305, '2024-03-20', 5515650.00, 'Entregada', 43, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 305, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 305, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 305, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 600000.00, 305, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (292, 305, 'FBV', '000292', 'CUFE00000292', '2024-03-20 12:00:00', 4635000.00, 880650.00, 5515650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-03-20', 5515650.00, 'REF00000249', 'Pagado', 292, 43);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (305, 1, '2024-03-20', 'Calle 121 # 38-5, Tuluá', 'Entregada');

-- Orden 306
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (306, '2024-05-06', 11126500.00, 'En Proceso', 4, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 306, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 306, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (293, 306, 'FBV', '000293', 'CUFE00000293', '2024-05-06 12:00:00', 9350000.00, 1776500.00, 11126500.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (306, 6, '2024-05-06', 'Calle 140 # 91-39, Palmira', 'Pendiente');

-- Orden 307
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (307, '2024-04-11', 3617600.00, 'Entregada', 19, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 307, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 307, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (294, 307, 'FBV', '000294', 'CUFE00000294', '2024-04-11 12:00:00', 3040000.00, 577600.00, 3617600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-04-11', 3617600.00, 'REF00000250', 'Pagado', 294, 19);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (307, 7, '2024-04-11', 'Calle 32 # 59-18, Palmira', 'Entregada');

-- Orden 308
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (308, '2024-06-26', 267750.00, 'Entregada', 10, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 308, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (295, 308, 'FBV', '000295', 'CUFE00000295', '2024-06-26 12:00:00', 225000.00, 42750.00, 267750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-26', 267750.00, 'REF00000251', 'Pagado', 295, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (308, 7, '2024-06-26', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 309
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (309, '2024-05-21', 1356600.00, 'Cancelada', 3, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 309, 16);

-- Orden 310
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (310, '2024-01-15', 1195950.00, 'Entregada', 21, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 310, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 310, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (296, 310, 'FBV', '000296', 'CUFE00000296', '2024-01-15 12:00:00', 1005000.00, 190950.00, 1195950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-01-15', 1195950.00, 'REF00000252', 'Pendiente', 296, 21);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (310, 13, '2024-01-15', 'Calle 113 # 10-92, Yumbo', 'Entregada');

-- Orden 311
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (311, '2024-08-19', 202300.00, 'En Proceso', 13, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 311, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (297, 311, 'FBV', '000297', 'CUFE00000297', '2024-08-19 12:00:00', 170000.00, 32300.00, 202300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-08-19', 202300.00, 'REF00000253', 'Pagado', 297, 13);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (311, 5, '2024-08-19', 'Calle 112 # 1-67, Palmira', 'Pendiente');

-- Orden 312
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (312, '2024-01-12', 9996000.00, 'Entregada', 9, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 312, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (298, 312, 'FBV', '000298', 'CUFE00000298', '2024-01-12 12:00:00', 8400000.00, 1596000.00, 9996000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-01-12', 9996000.00, 'REF00000254', 'Pagado', 298, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (312, 6, '2024-01-12', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 313
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (313, '2024-11-28', 5283600.00, 'Cancelada', 20, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 313, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 313, 11);

-- Orden 314
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (314, '2024-06-17', 1356600.00, 'Entregada', 7, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 314, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (299, 314, 'FBV', '000299', 'CUFE00000299', '2024-06-17 12:00:00', 1140000.00, 216600.00, 1356600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (314, 2, '2024-06-17', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 315
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (315, '2024-12-03', 476000.00, 'Entregada', 4, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 315, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 315, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (300, 315, 'FBV', '000300', 'CUFE00000300', '2024-12-03 12:00:00', 400000.00, 76000.00, 476000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-03', 476000.00, 'REF00000255', 'Pagado', 300, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (315, 2, '2024-12-03', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 316
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (316, '2024-09-05', 1166200.00, 'Entregada', 8, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 316, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 316, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 316, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 316, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (301, 316, 'FBV', '000301', 'CUFE00000301', '2024-09-05 12:00:00', 980000.00, 186200.00, 1166200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-05', 1166200.00, 'REF00000256', 'Pagado', 301, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (316, 5, '2024-09-05', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 317
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (317, '2024-06-10', 1779050.00, 'Entregada', 36, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 317, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 317, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 317, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (302, 317, 'FBV', '000302', 'CUFE00000302', '2024-06-10 12:00:00', 1495000.00, 284050.00, 1779050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-10', 1779050.00, 'REF00000257', 'Pagado', 302, 36);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (317, 13, '2024-06-10', 'Calle 85 # 46-90, Buenaventura', 'Entregada');

-- Orden 318
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (318, '2024-03-23', 238000.00, 'Entregada', 4, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 318, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 318, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (303, 318, 'FBV', '000303', 'CUFE00000303', '2024-03-23 12:00:00', 200000.00, 38000.00, 238000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-03-23', 238000.00, 'REF00000258', 'Pagado', 303, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (318, 5, '2024-03-23', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 319
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (319, '2024-12-05', 3474800.00, 'Entregada', 12, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 319, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 319, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (304, 319, 'FBV', '000304', 'CUFE00000304', '2024-12-05 12:00:00', 2920000.00, 554800.00, 3474800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-05', 3474800.00, 'REF00000259', 'Pagado', 304, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (319, 1, '2024-12-05', 'Calle 112 # 45-94, Cali', 'No Entregada');

-- Orden 320
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (320, '2024-05-10', 2528750.00, 'Cancelada', 12, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 320, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 320, 15);

-- Orden 321
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (321, '2024-06-27', 7889700.00, 'Entregada', 6, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 321, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 321, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 321, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (305, 321, 'FBV', '000305', 'CUFE00000305', '2024-06-27 12:00:00', 6630000.00, 1259700.00, 7889700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-27', 7889700.00, 'REF00000260', 'Pagado', 305, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (321, 2, '2024-06-27', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 322
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (322, '2024-06-20', 4284000.00, 'Entregada', 7, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 322, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (306, 322, 'FBV', '000306', 'CUFE00000306', '2024-06-20 12:00:00', 3600000.00, 684000.00, 4284000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-20', 4284000.00, 'REF00000261', 'Pendiente', 306, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (322, 13, '2024-06-20', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 323
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (323, '2024-12-03', 1231650.00, 'Entregada', 57, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 323, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 323, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 323, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 323, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (307, 323, 'FBV', '000307', 'CUFE00000307', '2024-12-03 12:00:00', 1035000.00, 196650.00, 1231650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-03', 1231650.00, 'REF00000262', 'Pagado', 307, 57);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (323, 5, '2024-12-03', 'Calle 139 # 5-80, Cartago', 'Entregada');

-- Orden 324
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (324, '2024-12-25', 642600.00, 'Entregada', 2, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 324, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (308, 324, 'FBV', '000308', 'CUFE00000308', '2024-12-25 12:00:00', 540000.00, 102600.00, 642600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-25', 642600.00, 'REF00000263', 'Pagado', 308, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (324, 11, '2024-12-25', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 325
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (325, '2024-12-10', 285600.00, 'Entregada', 4, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 240000.00, 325, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (309, 325, 'FBV', '000309', 'CUFE00000309', '2024-12-10 12:00:00', 240000.00, 45600.00, 285600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-10', 285600.00, 'REF00000264', 'Pagado', 309, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (325, 10, '2024-12-10', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 326
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (326, '2024-12-27', 214200.00, 'Entregada', 5, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 326, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (310, 326, 'FBV', '000310', 'CUFE00000310', '2024-12-27 12:00:00', 180000.00, 34200.00, 214200.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (326, 10, '2024-12-27', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 327
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (327, '2024-02-24', 8127700.00, 'Entregada', 60, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 327, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 327, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 2480000.00, 327, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 327, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (311, 327, 'FBV', '000311', 'CUFE00000311', '2024-02-24 12:00:00', 6830000.00, 1297700.00, 8127700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-24', 8127700.00, 'REF00000265', 'Pagado', 311, 60);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (327, 12, '2024-02-24', 'Calle 37 # 30-60, Cartago', 'Entregada');

-- Orden 328
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (328, '2024-05-14', 5176500.00, 'Entregada', 3, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 328, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 328, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 328, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (312, 328, 'FBV', '000312', 'CUFE00000312', '2024-05-14 12:00:00', 4350000.00, 826500.00, 5176500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-05-14', 5176500.00, 'REF00000266', 'Pagado', 312, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (328, 11, '2024-05-14', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 329
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (329, '2024-05-23', 9996000.00, 'Entregada', 29, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 329, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (313, 329, 'FBV', '000313', 'CUFE00000313', '2024-05-23 12:00:00', 8400000.00, 1596000.00, 9996000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-05-23', 9996000.00, 'REF00000267', 'Pagado', 313, 29);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (329, 14, '2024-05-23', 'Calle 63 # 14-90, Cartago', 'Entregada');

-- Orden 330
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (330, '2024-12-06', 779450.00, 'Entregada', 8, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 330, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 330, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (314, 330, 'FBV', '000314', 'CUFE00000314', '2024-12-06 12:00:00', 655000.00, 124450.00, 779450.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (330, 8, '2024-12-06', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 331
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (331, '2024-12-04', 904400.00, 'En Proceso', 8, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 331, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (315, 331, 'FBV', '000315', 'CUFE00000315', '2024-12-04 12:00:00', 760000.00, 144400.00, 904400.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (331, 2, '2024-12-04', 'Calle 11 # 46-27, Buga', 'Pendiente');

-- Orden 332
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (332, '2024-05-24', 654500.00, 'En Proceso', 3, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 380000.00, 332, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 332, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (316, 332, 'FBV', '000316', 'CUFE00000316', '2024-05-24 12:00:00', 550000.00, 104500.00, 654500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-05-24', 654500.00, 'REF00000268', 'Pendiente', 316, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (332, 6, '2024-05-24', 'Calle 19 # 69-28, Palmira', 'En Ruta');

-- Orden 333
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (333, '2024-02-26', 452200.00, 'Entregada', 1, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 333, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (317, 333, 'FBV', '000317', 'CUFE00000317', '2024-02-26 12:00:00', 380000.00, 72200.00, 452200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-26', 452200.00, 'REF00000269', 'Pagado', 317, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (333, 12, '2024-02-26', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 334
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (334, '2024-04-07', 2362150.00, 'Entregada', 48, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 334, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 334, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 334, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (318, 334, 'FBV', '000318', 'CUFE00000318', '2024-04-07 12:00:00', 1985000.00, 377150.00, 2362150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-04-07', 2362150.00, 'REF00000270', 'Pagado', 318, 48);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (334, 9, '2024-04-07', 'Calle 74 # 85-52, Jamundí', 'Entregada');

-- Orden 335
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (335, '2024-10-10', 380800.00, 'Entregada', 10, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 335, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (319, 335, 'FBV', '000319', 'CUFE00000319', '2024-10-10 12:00:00', 320000.00, 60800.00, 380800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-10', 380800.00, 'REF00000271', 'Pendiente', 319, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (335, 1, '2024-10-10', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 336
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (336, '2024-12-14', 1023400.00, 'Entregada', 35, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 336, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 336, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (320, 336, 'FBV', '000320', 'CUFE00000320', '2024-12-14 12:00:00', 860000.00, 163400.00, 1023400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-14', 1023400.00, 'REF00000272', 'Pagado', 320, 35);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (336, 10, '2024-12-14', 'Calle 57 # 52-89, Buenaventura', 'Entregada');

-- Orden 337
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (337, '2024-06-13', 3760400.00, 'Entregada', 2, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 337, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 337, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 337, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (321, 337, 'FBV', '000321', 'CUFE00000321', '2024-06-13 12:00:00', 3160000.00, 600400.00, 3760400.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (337, 1, '2024-06-13', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 338
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (338, '2024-06-17', 380800.00, 'Entregada', 12, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 338, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (322, 338, 'FBV', '000322', 'CUFE00000322', '2024-06-17 12:00:00', 320000.00, 60800.00, 380800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-17', 380800.00, 'REF00000273', 'Pagado', 322, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (338, 8, '2024-06-17', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 339
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (339, '2024-12-11', 2469250.00, 'Entregada', 2, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 339, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 339, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 339, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 339, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (323, 339, 'FBV', '000323', 'CUFE00000323', '2024-12-11 12:00:00', 2075000.00, 394250.00, 2469250.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-11', 2469250.00, 'REF00000274', 'Pagado', 323, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (339, 10, '2024-12-11', 'Calle 102 # 17-86, Palmira', 'No Entregada');

-- Orden 340
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (340, '2024-02-09', 946050.00, 'Entregada', 24, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 340, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 340, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (324, 340, 'FBV', '000324', 'CUFE00000324', '2024-02-09 12:00:00', 795000.00, 151050.00, 946050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-02-09', 946050.00, 'REF00000275', 'Pagado', 324, 24);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (340, 3, '2024-02-09', 'Calle 8 # 50-44, Tuluá', 'Entregada');

-- Orden 341
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (341, '2024-08-25', 1558900.00, 'Entregada', 6, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 341, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 600000.00, 341, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 341, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 341, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (325, 341, 'FBV', '000325', 'CUFE00000325', '2024-08-25 12:00:00', 1310000.00, 248900.00, 1558900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-08-25', 1558900.00, 'REF00000276', 'Pendiente', 325, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (341, 10, '2024-08-25', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 342
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (342, '2024-03-22', 1249500.00, 'Pendiente', 1, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 342, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 342, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 342, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (326, 342, 'FBV', '000326', 'CUFE00000326', '2024-03-22 12:00:00', 1050000.00, 199500.00, 1249500.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (342, 8, '2024-03-22', 'Calle 104 # 16-73, Buga', 'Pendiente');

-- Orden 343
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (343, '2024-12-17', 4117400.00, 'Entregada', 9, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 343, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 343, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 343, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (327, 343, 'FBV', '000327', 'CUFE00000327', '2024-12-17 12:00:00', 3460000.00, 657400.00, 4117400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-17', 4117400.00, 'REF00000277', 'Pagado', 327, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (343, 8, '2024-12-17', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 344
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (344, '2024-09-13', 2058700.00, 'Entregada', 24, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 344, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 344, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 344, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (328, 344, 'FBV', '000328', 'CUFE00000328', '2024-09-13 12:00:00', 1730000.00, 328700.00, 2058700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-13', 2058700.00, 'REF00000278', 'Pendiente', 328, 24);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (344, 9, '2024-09-13', 'Calle 8 # 50-44, Tuluá', 'Entregada');

-- Orden 345
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (345, '2024-09-14', 4307800.00, 'Entregada', 1, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 345, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 345, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 345, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 345, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (329, 345, 'FBV', '000329', 'CUFE00000329', '2024-09-14 12:00:00', 3620000.00, 687800.00, 4307800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-09-14', 4307800.00, 'REF00000279', 'Pagado', 329, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (345, 6, '2024-09-14', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 346
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (346, '2024-05-14', 3332000.00, 'Entregada', 3, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 346, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (330, 346, 'FBV', '000330', 'CUFE00000330', '2024-05-14 12:00:00', 2800000.00, 532000.00, 3332000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-05-14', 3332000.00, 'REF00000280', 'Pagado', 330, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (346, 11, '2024-05-14', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 347
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (347, '2024-08-19', 3391500.00, 'Entregada', 16, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 347, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (331, 347, 'FBV', '000331', 'CUFE00000331', '2024-08-19 12:00:00', 2850000.00, 541500.00, 3391500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-08-19', 3391500.00, 'REF00000281', 'Pagado', 331, 16);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (347, 2, '2024-08-19', 'Calle 54 # 56-75, Yumbo', 'Entregada');

-- Orden 348
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (348, '2024-07-07', 1190000.00, 'Entregada', 8, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 348, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 348, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 348, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (332, 348, 'FBV', '000332', 'CUFE00000332', '2024-07-07 12:00:00', 1000000.00, 190000.00, 1190000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (348, 5, '2024-07-07', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 349
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (349, '2024-05-21', 5616800.00, 'Entregada', 51, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 349, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 349, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 349, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 349, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (333, 349, 'FBV', '000333', 'CUFE00000333', '2024-05-21 12:00:00', 4720000.00, 896800.00, 5616800.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (349, 14, '2024-05-21', 'Calle 30 # 60-16, Tuluá', 'Entregada');

-- Orden 350
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (350, '2024-09-09', 1106700.00, 'Entregada', 33, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 350, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 350, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (334, 350, 'FBV', '000334', 'CUFE00000334', '2024-09-09 12:00:00', 930000.00, 176700.00, 1106700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-09-09', 1106700.00, 'REF00000282', 'Pendiente', 334, 33);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (350, 11, '2024-09-09', 'Calle 125 # 28-46, Cartago', 'Entregada');

-- Orden 351
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (351, '2024-03-09', 10698100.00, 'En Proceso', 3, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 351, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 351, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 351, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (335, 351, 'FBV', '000335', 'CUFE00000335', '2024-03-09 12:00:00', 8990000.00, 1708100.00, 10698100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-03-09', 10698100.00, 'REF00000283', 'Pagado', 335, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (351, 10, '2024-03-09', 'Calle 19 # 69-28, Palmira', 'Pendiente');

-- Orden 352
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (352, '2024-12-13', 541450.00, 'Pendiente', 12, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 352, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 352, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (336, 352, 'FBV', '000336', 'CUFE00000336', '2024-12-13 12:00:00', 455000.00, 86450.00, 541450.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (352, 6, '2024-12-13', 'Calle 112 # 45-94, Cali', 'Pendiente');

-- Orden 353
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (353, '2024-02-20', 8437100.00, 'Entregada', 9, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 353, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 353, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 353, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (337, 353, 'FBV', '000337', 'CUFE00000337', '2024-02-20 12:00:00', 7090000.00, 1347100.00, 8437100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-02-20', 8437100.00, 'REF00000284', 'Anulado', 337, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (353, 11, '2024-02-20', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 354
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (354, '2024-06-04', 2201500.00, 'Entregada', 9, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 354, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 354, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 354, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 380000.00, 354, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (338, 354, 'FBV', '000338', 'CUFE00000338', '2024-06-04 12:00:00', 1850000.00, 351500.00, 2201500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-04', 2201500.00, 'REF00000285', 'Pagado', 338, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (354, 9, '2024-06-04', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 355
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (355, '2024-06-21', 7532700.00, 'Cancelada', 5, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 355, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 355, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 355, 8);

-- Orden 356
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (356, '2024-12-06', 2832200.00, 'Pendiente', 6, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 356, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 356, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 356, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (339, 356, 'FBV', '000339', 'CUFE00000339', '2024-12-06 12:00:00', 2380000.00, 452200.00, 2832200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-06', 2832200.00, 'REF00000286', 'Pendiente', 339, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (356, 10, '2024-12-06', 'Calle 24 # 82-55, Tuluá', 'Pendiente');

-- Orden 357
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (357, '2024-02-14', 4218550.00, 'Entregada', 5, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 357, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1400000.00, 357, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1920000.00, 357, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (340, 357, 'FBV', '000340', 'CUFE00000340', '2024-02-14 12:00:00', 3545000.00, 673550.00, 4218550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-14', 4218550.00, 'REF00000287', 'Pagado', 340, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (357, 14, '2024-02-14', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 358
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (358, '2024-10-25', 1059100.00, 'En Proceso', 5, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 358, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 358, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (341, 358, 'FBV', '000341', 'CUFE00000341', '2024-10-25 12:00:00', 890000.00, 169100.00, 1059100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-25', 1059100.00, 'REF00000288', 'Pagado', 341, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (358, 3, '2024-10-25', 'Calle 142 # 20-35, Yumbo', 'Pendiente');

-- Orden 359
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (359, '2024-06-13', 1654100.00, 'Pendiente', 7, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 359, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 340000.00, 359, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (342, 359, 'FBV', '000342', 'CUFE00000342', '2024-06-13 12:00:00', 1390000.00, 264100.00, 1654100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-13', 1654100.00, 'REF00000289', 'Pagado', 342, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (359, 7, '2024-06-13', 'Calle 29 # 10-89, Buga', 'Pendiente');

-- Orden 360
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (360, '2024-08-20', 1428000.00, 'Entregada', 1, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 360, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (343, 360, 'FBV', '000343', 'CUFE00000343', '2024-08-20 12:00:00', 1200000.00, 228000.00, 1428000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-08-20', 1428000.00, 'REF00000290', 'Pagado', 343, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (360, 3, '2024-08-20', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 361
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (361, '2024-04-07', 1594600.00, 'Entregada', 9, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 361, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 361, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 361, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (344, 361, 'FBV', '000344', 'CUFE00000344', '2024-04-07 12:00:00', 1340000.00, 254600.00, 1594600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-04-07', 1594600.00, 'REF00000291', 'Pagado', 344, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (361, 14, '2024-04-07', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 362
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (362, '2024-04-15', 1975400.00, 'Pendiente', 57, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 362, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 362, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 362, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (345, 362, 'FBV', '000345', 'CUFE00000345', '2024-04-15 12:00:00', 1660000.00, 315400.00, 1975400.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (362, 5, '2024-04-15', 'Calle 139 # 5-80, Cartago', 'Pendiente');

-- Orden 363
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (363, '2024-07-02', 5640600.00, 'Entregada', 2, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 363, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 363, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (346, 363, 'FBV', '000346', 'CUFE00000346', '2024-07-02 12:00:00', 4740000.00, 900600.00, 5640600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-07-02', 5640600.00, 'REF00000292', 'Pendiente', 346, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (363, 11, '2024-07-02', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 364
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (364, '2024-12-02', 2725100.00, 'Entregada', 3, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 364, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 364, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 364, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (347, 364, 'FBV', '000347', 'CUFE00000347', '2024-12-02 12:00:00', 2290000.00, 435100.00, 2725100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-02', 2725100.00, 'REF00000293', 'Pagado', 347, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (364, 6, '2024-12-02', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 365
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (365, '2024-12-24', 3831800.00, 'Entregada', 40, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 365, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 365, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 365, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 365, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (348, 365, 'FBV', '000348', 'CUFE00000348', '2024-12-24 12:00:00', 3220000.00, 611800.00, 3831800.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (365, 12, '2024-12-24', 'Calle 14 # 20-20, Cali', 'Entregada');

-- Orden 366
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (366, '2024-01-09', 4403000.00, 'Entregada', 4, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 366, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 366, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 366, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 366, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (349, 366, 'FBV', '000349', 'CUFE00000349', '2024-01-09 12:00:00', 3700000.00, 703000.00, 4403000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-01-09', 4403000.00, 'REF00000294', 'Pagado', 349, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (366, 1, '2024-01-09', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 367
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (367, '2024-12-19', 4224500.00, 'Pendiente', 21, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 367, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 367, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (350, 367, 'FBV', '000350', 'CUFE00000350', '2024-12-19 12:00:00', 3550000.00, 674500.00, 4224500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-19', 4224500.00, 'REF00000295', 'Pagado', 350, 21);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (367, 3, '2024-12-19', 'Calle 113 # 10-92, Yumbo', 'Pendiente');

-- Orden 368
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (368, '2024-09-22', 8199100.00, 'Entregada', 1, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 368, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 368, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 368, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (351, 368, 'FBV', '000351', 'CUFE00000351', '2024-09-22 12:00:00', 6890000.00, 1309100.00, 8199100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-22', 8199100.00, 'REF00000296', 'Pagado', 351, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (368, 11, '2024-09-22', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 369
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (369, '2024-12-11', 1285200.00, 'Pendiente', 12, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 600000.00, 369, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 369, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (352, 369, 'FBV', '000352', 'CUFE00000352', '2024-12-11 12:00:00', 1080000.00, 205200.00, 1285200.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (369, 1, '2024-12-11', 'Calle 112 # 45-94, Cali', 'Pendiente');

-- Orden 370
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (370, '2024-12-28', 178500.00, 'Entregada', 4, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 370, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (353, 370, 'FBV', '000353', 'CUFE00000353', '2024-12-28 12:00:00', 150000.00, 28500.00, 178500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-28', 178500.00, 'REF00000297', 'Pagado', 353, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (370, 5, '2024-12-28', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 371
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (371, '2024-12-22', 5093200.00, 'Entregada', 19, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 371, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 371, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 371, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (354, 371, 'FBV', '000354', 'CUFE00000354', '2024-12-22 12:00:00', 4280000.00, 813200.00, 5093200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-22', 5093200.00, 'REF00000298', 'Pagado', 354, 19);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (371, 7, '2024-12-22', 'Calle 32 # 59-18, Palmira', 'Entregada');

-- Orden 372
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (372, '2024-02-17', 2980950.00, 'Entregada', 11, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 372, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 372, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 372, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 372, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (355, 372, 'FBV', '000355', 'CUFE00000355', '2024-02-17 12:00:00', 2505000.00, 475950.00, 2980950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-17', 2980950.00, 'REF00000299', 'Anulado', 355, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (372, 7, '2024-02-17', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 373
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (373, '2024-07-02', 3415300.00, 'Entregada', 10, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 373, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 373, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 373, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 373, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (356, 373, 'FBV', '000356', 'CUFE00000356', '2024-07-02 12:00:00', 2870000.00, 545300.00, 3415300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-07-02', 3415300.00, 'REF00000300', 'Pagado', 356, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (373, 5, '2024-07-02', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 374
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (374, '2024-10-25', 4426800.00, 'Entregada', 6, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 374, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 374, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 600000.00, 374, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (357, 374, 'FBV', '000357', 'CUFE00000357', '2024-10-25 12:00:00', 3720000.00, 706800.00, 4426800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-10-25', 4426800.00, 'REF00000301', 'Pagado', 357, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (374, 5, '2024-10-25', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 375
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (375, '2024-06-22', 2171750.00, 'Cancelada', 8, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 375, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 375, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 375, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 375, 20);

-- Orden 376
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (376, '2024-06-21', 1213800.00, 'Pendiente', 12, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 376, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 376, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (358, 376, 'FBV', '000358', 'CUFE00000358', '2024-06-21 12:00:00', 1020000.00, 193800.00, 1213800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-21', 1213800.00, 'REF00000302', 'Pagado', 358, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (376, 3, '2024-06-21', 'Calle 112 # 45-94, Cali', 'Pendiente');

-- Orden 377
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (377, '2024-06-28', 749700.00, 'Entregada', 55, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 377, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 377, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (359, 377, 'FBV', '000359', 'CUFE00000359', '2024-06-28 12:00:00', 630000.00, 119700.00, 749700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-28', 749700.00, 'REF00000303', 'Pagado', 359, 55);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (377, 12, '2024-06-28', 'Calle 99 # 85-84, Cartago', 'No Entregada');

-- Orden 378
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (378, '2024-10-10', 2737000.00, 'Entregada', 11, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1520000.00, 378, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 378, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 378, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 378, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (360, 378, 'FBV', '000360', 'CUFE00000360', '2024-10-10 12:00:00', 2300000.00, 437000.00, 2737000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-10', 2737000.00, 'REF00000304', 'Pagado', 360, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (378, 14, '2024-10-10', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 379
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (379, '2024-06-06', 2332400.00, 'Entregada', 8, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 379, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 379, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (361, 379, 'FBV', '000361', 'CUFE00000361', '2024-06-06 12:00:00', 1960000.00, 372400.00, 2332400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-06', 2332400.00, 'REF00000305', 'Pagado', 361, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (379, 6, '2024-06-06', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 380
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (380, '2024-12-22', 1326850.00, 'Entregada', 54, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 380, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 380, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 380, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (362, 380, 'FBV', '000362', 'CUFE00000362', '2024-12-22 12:00:00', 1115000.00, 211850.00, 1326850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-22', 1326850.00, 'REF00000306', 'Pagado', 362, 54);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (380, 7, '2024-12-22', 'Calle 140 # 49-59, Buenaventura', 'Entregada');

-- Orden 381
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (381, '2024-04-02', 6580700.00, 'Cancelada', 6, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 381, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 4800000.00, 381, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 381, 6);

-- Orden 382
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (382, '2024-04-09', 11305000.00, 'Cancelada', 3, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 382, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 382, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 382, 9);

-- Orden 383
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (383, '2024-12-25', 303450.00, 'Entregada', 29, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 383, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (363, 383, 'FBV', '000363', 'CUFE00000363', '2024-12-25 12:00:00', 255000.00, 48450.00, 303450.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (383, 12, '2024-12-25', 'Calle 63 # 14-90, Cartago', 'Entregada');

-- Orden 384
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (384, '2024-12-06', 3367700.00, 'En Proceso', 40, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 384, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 384, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 384, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 384, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (364, 384, 'FBV', '000364', 'CUFE00000364', '2024-12-06 12:00:00', 2830000.00, 537700.00, 3367700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-06', 3367700.00, 'REF00000307', 'Pagado', 364, 40);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (384, 2, '2024-12-06', 'Calle 14 # 20-20, Cali', 'En Ruta');

-- Orden 385
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (385, '2024-10-14', 844900.00, 'Entregada', 5, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 385, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 385, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (365, 385, 'FBV', '000365', 'CUFE00000365', '2024-10-14 12:00:00', 710000.00, 134900.00, 844900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-14', 844900.00, 'REF00000308', 'Pagado', 365, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (385, 2, '2024-10-14', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 386
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (386, '2024-06-01', 1237600.00, 'Entregada', 28, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 386, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (366, 386, 'FBV', '000366', 'CUFE00000366', '2024-06-01 12:00:00', 1040000.00, 197600.00, 1237600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-01', 1237600.00, 'REF00000309', 'Pagado', 366, 28);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (386, 13, '2024-06-01', 'Calle 30 # 21-40, Buenaventura', 'Entregada');

-- Orden 387
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (387, '2024-09-19', 4760000.00, 'Entregada', 12, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 387, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 387, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 387, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (367, 387, 'FBV', '000367', 'CUFE00000367', '2024-09-19 12:00:00', 4000000.00, 760000.00, 4760000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (387, 1, '2024-09-19', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 388
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (388, '2024-08-20', 1570800.00, 'Entregada', 43, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 388, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 388, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 388, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (368, 388, 'FBV', '000368', 'CUFE00000368', '2024-08-20 12:00:00', 1320000.00, 250800.00, 1570800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-08-20', 1570800.00, 'REF00000310', 'Pagado', 368, 43);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (388, 4, '2024-08-20', 'Calle 121 # 38-5, Tuluá', 'Entregada');

-- Orden 389
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (389, '2024-11-06', 714000.00, 'Entregada', 10, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 180000.00, 389, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 389, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 389, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (369, 389, 'FBV', '000369', 'CUFE00000369', '2024-11-06 12:00:00', 600000.00, 114000.00, 714000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-11-06', 714000.00, 'REF00000311', 'Pagado', 369, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (389, 5, '2024-11-06', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 390
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (390, '2024-10-15', 3694950.00, 'Entregada', 6, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 390, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 390, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (370, 390, 'FBV', '000370', 'CUFE00000370', '2024-10-15 12:00:00', 3105000.00, 589950.00, 3694950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-15', 3694950.00, 'REF00000312', 'Pendiente', 370, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (390, 12, '2024-10-15', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 391
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (391, '2024-03-13', 4593400.00, 'Entregada', 10, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 391, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 391, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (371, 391, 'FBV', '000371', 'CUFE00000371', '2024-03-13 12:00:00', 3860000.00, 733400.00, 4593400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-03-13', 4593400.00, 'REF00000313', 'Pagado', 371, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (391, 14, '2024-03-13', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 392
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (392, '2024-03-07', 12852000.00, 'Entregada', 8, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 392, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 392, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 392, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (372, 392, 'FBV', '000372', 'CUFE00000372', '2024-03-07 12:00:00', 10800000.00, 2052000.00, 12852000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-03-07', 12852000.00, 'REF00000314', 'Pagado', 372, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (392, 1, '2024-03-07', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 393
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (393, '2024-03-23', 357000.00, 'Entregada', 3, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 393, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (373, 393, 'FBV', '000373', 'CUFE00000373', '2024-03-23 12:00:00', 300000.00, 57000.00, 357000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-03-23', 357000.00, 'REF00000315', 'Pagado', 373, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (393, 3, '2024-03-23', 'Calle 19 # 69-28, Palmira', 'No Entregada');

-- Orden 394
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (394, '2024-06-10', 3617600.00, 'Entregada', 2, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 394, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 394, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (374, 394, 'FBV', '000374', 'CUFE00000374', '2024-06-10 12:00:00', 3040000.00, 577600.00, 3617600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-10', 3617600.00, 'REF00000316', 'Pagado', 374, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (394, 7, '2024-06-10', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 395
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (395, '2024-05-10', 10698100.00, 'Entregada', 51, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 395, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 395, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 395, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 395, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (375, 395, 'FBV', '000375', 'CUFE00000375', '2024-05-10 12:00:00', 8990000.00, 1708100.00, 10698100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-05-10', 10698100.00, 'REF00000317', 'Pagado', 375, 51);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (395, 1, '2024-05-10', 'Calle 30 # 60-16, Tuluá', 'Entregada');

-- Orden 396
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (396, '2024-09-05', 2261000.00, 'Pendiente', 23, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 396, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 396, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 396, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (376, 396, 'FBV', '000376', 'CUFE00000376', '2024-09-05 12:00:00', 1900000.00, 361000.00, 2261000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (396, 8, '2024-09-05', 'Calle 77 # 97-50, Tuluá', 'Pendiente');

-- Orden 397
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (397, '2024-09-25', 3332000.00, 'En Proceso', 1, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 397, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (377, 397, 'FBV', '000377', 'CUFE00000377', '2024-09-25 12:00:00', 2800000.00, 532000.00, 3332000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (397, 14, '2024-09-25', 'Calle 104 # 16-73, Buga', 'En Ruta');

-- Orden 398
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (398, '2024-07-01', 3046400.00, 'Entregada', 22, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 398, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 398, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (378, 398, 'FBV', '000378', 'CUFE00000378', '2024-07-01 12:00:00', 2560000.00, 486400.00, 3046400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-07-01', 3046400.00, 'REF00000318', 'Pagado', 378, 22);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (398, 4, '2024-07-01', 'Calle 17 # 54-53, Palmira', 'Entregada');

-- Orden 399
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (399, '2024-06-01', 2106300.00, 'Entregada', 11, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 399, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 399, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (379, 399, 'FBV', '000379', 'CUFE00000379', '2024-06-01 12:00:00', 1770000.00, 336300.00, 2106300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-01', 2106300.00, 'REF00000319', 'Anulado', 379, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (399, 7, '2024-06-01', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 400
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (400, '2024-12-22', 3159450.00, 'Entregada', 3, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 400, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 400, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 400, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (380, 400, 'FBV', '000380', 'CUFE00000380', '2024-12-22 12:00:00', 2655000.00, 504450.00, 3159450.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (400, 2, '2024-12-22', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 401
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (401, '2024-11-13', 7247100.00, 'Pendiente', 9, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 401, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 401, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 401, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (381, 401, 'FBV', '000381', 'CUFE00000381', '2024-11-13 12:00:00', 6090000.00, 1157100.00, 7247100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-11-13', 7247100.00, 'REF00000320', 'Pendiente', 381, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (401, 4, '2024-11-13', 'Calle 7 # 23-95, Cartago', 'Pendiente');

-- Orden 402
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (402, '2024-06-03', 1767150.00, 'En Proceso', 6, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 402, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 402, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (382, 402, 'FBV', '000382', 'CUFE00000382', '2024-06-03 12:00:00', 1485000.00, 282150.00, 1767150.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (402, 3, '2024-06-03', 'Calle 24 # 82-55, Tuluá', 'En Ruta');

-- Orden 403
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (403, '2024-08-21', 1713600.00, 'Cancelada', 54, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 403, 2);

-- Orden 404
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (404, '2024-12-07', 5747700.00, 'Entregada', 60, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1920000.00, 404, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 404, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 404, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (383, 404, 'FBV', '000383', 'CUFE00000383', '2024-12-07 12:00:00', 4830000.00, 917700.00, 5747700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-07', 5747700.00, 'REF00000321', 'Pagado', 383, 60);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (404, 7, '2024-12-07', 'Calle 37 # 30-60, Cartago', 'Entregada');

-- Orden 405
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (405, '2024-12-21', 9406950.00, 'Entregada', 42, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 405, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 405, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 405, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 405, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (384, 405, 'FBV', '000384', 'CUFE00000384', '2024-12-21 12:00:00', 7905000.00, 1501950.00, 9406950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-21', 9406950.00, 'REF00000322', 'Pagado', 384, 42);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (405, 6, '2024-12-21', 'Calle 26 # 98-27, Cartago', 'Entregada');

-- Orden 406
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (406, '2024-07-26', 3332000.00, 'Pendiente', 23, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 406, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (385, 406, 'FBV', '000385', 'CUFE00000385', '2024-07-26 12:00:00', 2800000.00, 532000.00, 3332000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-07-26', 3332000.00, 'REF00000323', 'Pendiente', 385, 23);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (406, 8, '2024-07-26', 'Calle 77 # 97-50, Tuluá', 'Pendiente');

-- Orden 407
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (407, '2024-06-06', 761600.00, 'En Proceso', 34, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 407, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (386, 407, 'FBV', '000386', 'CUFE00000386', '2024-06-06 12:00:00', 640000.00, 121600.00, 761600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-06', 761600.00, 'REF00000324', 'Pagado', 386, 34);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (407, 7, '2024-06-06', 'Calle 62 # 93-53, Yumbo', 'En Ruta');

-- Orden 408
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (408, '2024-10-07', 1719550.00, 'Entregada', 12, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 408, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 408, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 408, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (387, 408, 'FBV', '000387', 'CUFE00000387', '2024-10-07 12:00:00', 1445000.00, 274550.00, 1719550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-07', 1719550.00, 'REF00000325', 'Pagado', 387, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (408, 5, '2024-10-07', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 409
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (409, '2024-04-24', 1463700.00, 'Entregada', 3, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 409, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 409, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (388, 409, 'FBV', '000388', 'CUFE00000388', '2024-04-24 12:00:00', 1230000.00, 233700.00, 1463700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-04-24', 1463700.00, 'REF00000326', 'Pagado', 388, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (409, 8, '2024-04-24', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 410
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (410, '2024-09-23', 8270500.00, 'Entregada', 4, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 410, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 410, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 410, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (389, 410, 'FBV', '000389', 'CUFE00000389', '2024-09-23 12:00:00', 6950000.00, 1320500.00, 8270500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-23', 8270500.00, 'REF00000327', 'Anulado', 389, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (410, 11, '2024-09-23', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 411
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (411, '2024-11-24', 4242350.00, 'Entregada', 7, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 411, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 411, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 411, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (390, 411, 'FBV', '000390', 'CUFE00000390', '2024-11-24 12:00:00', 3565000.00, 677350.00, 4242350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-11-24', 4242350.00, 'REF00000328', 'Anulado', 390, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (411, 8, '2024-11-24', 'Calle 29 # 10-89, Buga', 'No Entregada');

-- Orden 412
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (412, '2024-04-11', 1249500.00, 'Entregada', 48, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 412, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (391, 412, 'FBV', '000391', 'CUFE00000391', '2024-04-11 12:00:00', 1050000.00, 199500.00, 1249500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-04-11', 1249500.00, 'REF00000329', 'Pagado', 391, 48);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (412, 2, '2024-04-11', 'Calle 74 # 85-52, Jamundí', 'Entregada');

-- Orden 413
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (413, '2024-06-02', 690200.00, 'En Proceso', 5, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 413, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 413, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (392, 413, 'FBV', '000392', 'CUFE00000392', '2024-06-02 12:00:00', 580000.00, 110200.00, 690200.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (413, 8, '2024-06-02', 'Calle 142 # 20-35, Yumbo', 'En Ruta');

-- Orden 414
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (414, '2024-03-26', 1624350.00, 'Entregada', 2, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 414, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 414, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 414, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (393, 414, 'FBV', '000393', 'CUFE00000393', '2024-03-26 12:00:00', 1365000.00, 259350.00, 1624350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-03-26', 1624350.00, 'REF00000330', 'Pagado', 393, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (414, 14, '2024-03-26', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 415
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (415, '2024-06-14', 5176500.00, 'Pendiente', 8, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 415, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (394, 415, 'FBV', '000394', 'CUFE00000394', '2024-06-14 12:00:00', 4350000.00, 826500.00, 5176500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-14', 5176500.00, 'REF00000331', 'Pendiente', 394, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (415, 1, '2024-06-14', 'Calle 11 # 46-27, Buga', 'Pendiente');

-- Orden 416
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (416, '2024-08-03', 3617600.00, 'Entregada', 2, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 416, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 416, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (395, 416, 'FBV', '000395', 'CUFE00000395', '2024-08-03 12:00:00', 3040000.00, 577600.00, 3617600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-08-03', 3617600.00, 'REF00000332', 'Pagado', 395, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (416, 2, '2024-08-03', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 417
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (417, '2024-05-14', 9067800.00, 'Entregada', 2, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 417, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 417, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 417, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (396, 417, 'FBV', '000396', 'CUFE00000396', '2024-05-14 12:00:00', 7620000.00, 1447800.00, 9067800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-05-14', 9067800.00, 'REF00000333', 'Pagado', 396, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (417, 1, '2024-05-14', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 418
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (418, '2024-04-07', 5509700.00, 'Entregada', 8, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 418, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 418, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (397, 418, 'FBV', '000397', 'CUFE00000397', '2024-04-07 12:00:00', 4630000.00, 879700.00, 5509700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-04-07', 5509700.00, 'REF00000334', 'Pagado', 397, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (418, 1, '2024-04-07', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 419
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (419, '2024-06-06', 452200.00, 'Entregada', 11, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 419, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (398, 419, 'FBV', '000398', 'CUFE00000398', '2024-06-06 12:00:00', 380000.00, 72200.00, 452200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-06', 452200.00, 'REF00000335', 'Pagado', 398, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (419, 6, '2024-06-06', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 420
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (420, '2024-12-11', 3415300.00, 'En Proceso', 19, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 420, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 420, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 420, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 420, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (399, 420, 'FBV', '000399', 'CUFE00000399', '2024-12-11 12:00:00', 2870000.00, 545300.00, 3415300.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (420, 8, '2024-12-11', 'Calle 32 # 59-18, Palmira', 'En Ruta');

-- Orden 421
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (421, '2024-04-09', 6836550.00, 'En Proceso', 5, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 421, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 421, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 421, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (400, 421, 'FBV', '000400', 'CUFE00000400', '2024-04-09 12:00:00', 5745000.00, 1091550.00, 6836550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-04-09', 6836550.00, 'REF00000336', 'Pagado', 400, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (421, 4, '2024-04-09', 'Calle 142 # 20-35, Yumbo', 'En Ruta');

-- Orden 422
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (422, '2024-11-22', 11650100.00, 'Entregada', 5, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 422, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 422, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 422, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 422, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (401, 422, 'FBV', '000401', 'CUFE00000401', '2024-11-22 12:00:00', 9790000.00, 1860100.00, 11650100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-11-22', 11650100.00, 'REF00000337', 'Pagado', 401, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (422, 8, '2024-11-22', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 423
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (423, '2024-01-26', 2368100.00, 'Entregada', 6, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 423, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 423, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (402, 423, 'FBV', '000402', 'CUFE00000402', '2024-01-26 12:00:00', 1990000.00, 378100.00, 2368100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-01-26', 2368100.00, 'REF00000338', 'Pagado', 402, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (423, 3, '2024-01-26', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 424
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (424, '2024-06-11', 3635450.00, 'En Proceso', 9, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 424, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 424, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 424, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 424, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (403, 424, 'FBV', '000403', 'CUFE00000403', '2024-06-11 12:00:00', 3055000.00, 580450.00, 3635450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-11', 3635450.00, 'REF00000339', 'Pagado', 403, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (424, 6, '2024-06-11', 'Calle 7 # 23-95, Cartago', 'En Ruta');

-- Orden 425
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (425, '2024-12-09', 737800.00, 'Entregada', 3, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 425, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 425, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (404, 425, 'FBV', '000404', 'CUFE00000404', '2024-12-09 12:00:00', 620000.00, 117800.00, 737800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-09', 737800.00, 'REF00000340', 'Pagado', 404, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (425, 13, '2024-12-09', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 426
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (426, '2024-06-09', 285600.00, 'Entregada', 7, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 426, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 426, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (405, 426, 'FBV', '000405', 'CUFE00000405', '2024-06-09 12:00:00', 240000.00, 45600.00, 285600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-09', 285600.00, 'REF00000341', 'Pagado', 405, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (426, 7, '2024-06-09', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 427
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (427, '2024-06-18', 5664400.00, 'Entregada', 3, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 427, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 427, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (406, 427, 'FBV', '000406', 'CUFE00000406', '2024-06-18 12:00:00', 4760000.00, 904400.00, 5664400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-18', 5664400.00, 'REF00000342', 'Pagado', 406, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (427, 9, '2024-06-18', 'Calle 19 # 69-28, Palmira', 'No Entregada');

-- Orden 428
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (428, '2024-05-25', 1933750.00, 'Entregada', 10, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 428, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 428, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 428, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (407, 428, 'FBV', '000407', 'CUFE00000407', '2024-05-25 12:00:00', 1625000.00, 308750.00, 1933750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-05-25', 1933750.00, 'REF00000343', 'Pagado', 407, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (428, 14, '2024-05-25', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 429
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (429, '2024-06-26', 618800.00, 'Entregada', 17, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 429, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 340000.00, 429, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (408, 429, 'FBV', '000408', 'CUFE00000408', '2024-06-26 12:00:00', 520000.00, 98800.00, 618800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-26', 618800.00, 'REF00000344', 'Pagado', 408, 17);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (429, 8, '2024-06-26', 'Calle 80 # 29-26, Tuluá', 'Entregada');

-- Orden 430
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (430, '2024-12-11', 8853600.00, 'Entregada', 31, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1680000.00, 430, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 430, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 430, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 430, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (409, 430, 'FBV', '000409', 'CUFE00000409', '2024-12-11 12:00:00', 7440000.00, 1413600.00, 8853600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-11', 8853600.00, 'REF00000345', 'Pagado', 409, 31);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (430, 12, '2024-12-11', 'Calle 112 # 23-94, Palmira', 'No Entregada');

-- Orden 431
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (431, '2024-06-16', 1124550.00, 'Entregada', 2, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 431, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 431, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 431, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 431, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (410, 431, 'FBV', '000410', 'CUFE00000410', '2024-06-16 12:00:00', 945000.00, 179550.00, 1124550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-16', 1124550.00, 'REF00000346', 'Pendiente', 410, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (431, 7, '2024-06-16', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 432
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (432, '2024-06-01', 2748900.00, 'Entregada', 8, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 432, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 432, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 432, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 432, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (411, 432, 'FBV', '000411', 'CUFE00000411', '2024-06-01 12:00:00', 2310000.00, 438900.00, 2748900.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (432, 9, '2024-06-01', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 433
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (433, '2024-07-22', 1475600.00, 'Entregada', 11, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 433, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 433, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (412, 433, 'FBV', '000412', 'CUFE00000412', '2024-07-22 12:00:00', 1240000.00, 235600.00, 1475600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-22', 1475600.00, 'REF00000347', 'Pagado', 412, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (433, 5, '2024-07-22', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 434
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (434, '2024-01-03', 4331600.00, 'Entregada', 9, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 434, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 434, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 434, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 434, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (413, 434, 'FBV', '000413', 'CUFE00000413', '2024-01-03 12:00:00', 3640000.00, 691600.00, 4331600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-03', 4331600.00, 'REF00000348', 'Pagado', 413, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (434, 12, '2024-01-03', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 435
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (435, '2024-09-10', 357000.00, 'Entregada', 5, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 435, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (414, 435, 'FBV', '000414', 'CUFE00000414', '2024-09-10 12:00:00', 300000.00, 57000.00, 357000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-09-10', 357000.00, 'REF00000349', 'Pagado', 414, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (435, 3, '2024-09-10', 'Calle 142 # 20-35, Yumbo', 'No Entregada');

-- Orden 436
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (436, '2024-11-14', 4105500.00, 'Entregada', 9, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 436, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 436, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 436, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (415, 436, 'FBV', '000415', 'CUFE00000415', '2024-11-14 12:00:00', 3450000.00, 655500.00, 4105500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-11-14', 4105500.00, 'REF00000350', 'Pagado', 415, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (436, 2, '2024-11-14', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 437
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (437, '2024-10-05', 8621550.00, 'Entregada', 5, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 437, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 437, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 437, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 437, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (416, 437, 'FBV', '000416', 'CUFE00000416', '2024-10-05 12:00:00', 7245000.00, 1376550.00, 8621550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-10-05', 8621550.00, 'REF00000351', 'Pagado', 416, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (437, 1, '2024-10-05', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 438
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (438, '2024-06-03', 737800.00, 'Entregada', 10, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 438, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (417, 438, 'FBV', '000417', 'CUFE00000417', '2024-06-03 12:00:00', 620000.00, 117800.00, 737800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-03', 737800.00, 'REF00000352', 'Pagado', 417, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (438, 2, '2024-06-03', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 439
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (439, '2024-12-26', 1499400.00, 'Entregada', 13, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 439, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (418, 439, 'FBV', '000418', 'CUFE00000418', '2024-12-26 12:00:00', 1260000.00, 239400.00, 1499400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-26', 1499400.00, 'REF00000353', 'Pagado', 418, 13);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (439, 8, '2024-12-26', 'Calle 112 # 1-67, Palmira', 'Entregada');

-- Orden 440
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (440, '2024-06-08', 214200.00, 'Entregada', 49, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 440, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (419, 440, 'FBV', '000419', 'CUFE00000419', '2024-06-08 12:00:00', 180000.00, 34200.00, 214200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-08', 214200.00, 'REF00000354', 'Pagado', 419, 49);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (440, 4, '2024-06-08', 'Calle 119 # 53-7, Yumbo', 'Entregada');

-- Orden 441
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (441, '2024-12-06', 856800.00, 'En Proceso', 29, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 441, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (420, 441, 'FBV', '000420', 'CUFE00000420', '2024-12-06 12:00:00', 720000.00, 136800.00, 856800.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (441, 2, '2024-12-06', 'Calle 63 # 14-90, Cartago', 'En Ruta');

-- Orden 442
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (442, '2024-02-07', 2510900.00, 'Entregada', 51, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 442, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 442, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 442, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (421, 442, 'FBV', '000421', 'CUFE00000421', '2024-02-07 12:00:00', 2110000.00, 400900.00, 2510900.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (442, 7, '2024-02-07', 'Calle 30 # 60-16, Tuluá', 'Entregada');

-- Orden 443
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (443, '2024-11-16', 9996000.00, 'Cancelada', 8, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 443, 18);

-- Orden 444
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (444, '2024-09-13', 5438300.00, 'Entregada', 6, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 444, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 444, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (422, 444, 'FBV', '000422', 'CUFE00000422', '2024-09-13 12:00:00', 4570000.00, 868300.00, 5438300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-13', 5438300.00, 'REF00000355', 'Pendiente', 422, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (444, 13, '2024-09-13', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 445
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (445, '2024-09-08', 53550.00, 'Entregada', 7, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 445, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (423, 445, 'FBV', '000423', 'CUFE00000423', '2024-09-08 12:00:00', 45000.00, 8550.00, 53550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-09-08', 53550.00, 'REF00000356', 'Pendiente', 423, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (445, 12, '2024-09-08', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 446
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (446, '2024-06-07', 1820700.00, 'Entregada', 3, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 446, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 446, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (424, 446, 'FBV', '000424', 'CUFE00000424', '2024-06-07 12:00:00', 1530000.00, 290700.00, 1820700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-07', 1820700.00, 'REF00000357', 'Pagado', 424, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (446, 1, '2024-06-07', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 447
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (447, '2024-12-21', 160650.00, 'En Proceso', 10, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 447, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (425, 447, 'FBV', '000425', 'CUFE00000425', '2024-12-21 12:00:00', 135000.00, 25650.00, 160650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-21', 160650.00, 'REF00000358', 'Pagado', 425, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (447, 9, '2024-12-21', 'Calle 10 # 61-29, Tuluá', 'Pendiente');

-- Orden 448
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (448, '2024-10-08', 7871850.00, 'Entregada', 30, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 2080000.00, 448, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 448, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 448, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 448, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (426, 448, 'FBV', '000426', 'CUFE00000426', '2024-10-08 12:00:00', 6615000.00, 1256850.00, 7871850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-08', 7871850.00, 'REF00000359', 'Pagado', 426, 30);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (448, 10, '2024-10-08', 'Calle 18 # 65-83, Cali', 'Entregada');

-- Orden 449
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (449, '2024-02-24', 589050.00, 'Entregada', 5, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 449, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 449, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (427, 449, 'FBV', '000427', 'CUFE00000427', '2024-02-24 12:00:00', 495000.00, 94050.00, 589050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-02-24', 589050.00, 'REF00000360', 'Pagado', 427, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (449, 10, '2024-02-24', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 450
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (450, '2024-06-13', 2207450.00, 'Entregada', 53, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 450, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 450, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 450, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 450, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (428, 450, 'FBV', '000428', 'CUFE00000428', '2024-06-13 12:00:00', 1855000.00, 352450.00, 2207450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-13', 2207450.00, 'REF00000361', 'Pagado', 428, 53);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (450, 9, '2024-06-13', 'Calle 73 # 93-39, Cartago', 'Entregada');

-- Orden 451
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (451, '2024-07-16', 809200.00, 'Entregada', 5, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 451, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 451, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (429, 451, 'FBV', '000429', 'CUFE00000429', '2024-07-16 12:00:00', 680000.00, 129200.00, 809200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-16', 809200.00, 'REF00000362', 'Pagado', 429, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (451, 8, '2024-07-16', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 452
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (452, '2024-06-16', 214200.00, 'Entregada', 56, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 452, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (430, 452, 'FBV', '000430', 'CUFE00000430', '2024-06-16 12:00:00', 180000.00, 34200.00, 214200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-16', 214200.00, 'REF00000363', 'Pagado', 430, 56);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (452, 12, '2024-06-16', 'Calle 105 # 84-20, Jamundí', 'Entregada');

-- Orden 453
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (453, '2024-11-12', 7854000.00, 'Entregada', 25, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 453, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 453, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 453, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 453, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (431, 453, 'FBV', '000431', 'CUFE00000431', '2024-11-12 12:00:00', 6600000.00, 1254000.00, 7854000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-11-12', 7854000.00, 'REF00000364', 'Pagado', 431, 25);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (453, 5, '2024-11-12', 'Calle 145 # 85-4, Buga', 'Entregada');

-- Orden 454
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (454, '2024-08-22', 380800.00, 'En Proceso', 5, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 454, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (432, 454, 'FBV', '000432', 'CUFE00000432', '2024-08-22 12:00:00', 320000.00, 60800.00, 380800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-08-22', 380800.00, 'REF00000365', 'Pendiente', 432, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (454, 3, '2024-08-22', 'Calle 142 # 20-35, Yumbo', 'Pendiente');

-- Orden 455
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (455, '2024-06-23', 2701300.00, 'Entregada', 3, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 455, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 455, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 455, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 455, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (433, 455, 'FBV', '000433', 'CUFE00000433', '2024-06-23 12:00:00', 2270000.00, 431300.00, 2701300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-23', 2701300.00, 'REF00000366', 'Pagado', 433, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (455, 7, '2024-06-23', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 456
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (456, '2024-06-14', 3123750.00, 'Entregada', 25, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 456, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 456, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 456, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 456, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (434, 456, 'FBV', '000434', 'CUFE00000434', '2024-06-14 12:00:00', 2625000.00, 498750.00, 3123750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-14', 3123750.00, 'REF00000367', 'Pagado', 434, 25);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (456, 2, '2024-06-14', 'Calle 145 # 85-4, Buga', 'Entregada');

-- Orden 457
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (457, '2024-12-04', 547400.00, 'Pendiente', 8, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 457, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 457, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (435, 457, 'FBV', '000435', 'CUFE00000435', '2024-12-04 12:00:00', 460000.00, 87400.00, 547400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-04', 547400.00, 'REF00000368', 'Pagado', 435, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (457, 7, '2024-12-04', 'Calle 11 # 46-27, Buga', 'Pendiente');

-- Orden 458
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (458, '2024-05-01', 380800.00, 'Entregada', 1, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 458, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (436, 458, 'FBV', '000436', 'CUFE00000436', '2024-05-01 12:00:00', 320000.00, 60800.00, 380800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-05-01', 380800.00, 'REF00000369', 'Pagado', 436, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (458, 2, '2024-05-01', 'Calle 104 # 16-73, Buga', 'No Entregada');

-- Orden 459
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (459, '2024-06-22', 3962700.00, 'Pendiente', 11, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 459, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 459, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 459, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (437, 459, 'FBV', '000437', 'CUFE00000437', '2024-06-22 12:00:00', 3330000.00, 632700.00, 3962700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-22', 3962700.00, 'REF00000370', 'Pendiente', 437, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (459, 6, '2024-06-22', 'Calle 90 # 83-66, Tuluá', 'Pendiente');

-- Orden 460
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (460, '2024-05-23', 4462500.00, 'En Proceso', 40, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 460, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 460, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (438, 460, 'FBV', '000438', 'CUFE00000438', '2024-05-23 12:00:00', 3750000.00, 712500.00, 4462500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-05-23', 4462500.00, 'REF00000371', 'Pendiente', 438, 40);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (460, 2, '2024-05-23', 'Calle 14 # 20-20, Cali', 'En Ruta');

-- Orden 461
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (461, '2024-10-22', 7140000.00, 'Entregada', 56, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 461, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 461, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 461, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 461, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (439, 461, 'FBV', '000439', 'CUFE00000439', '2024-10-22 12:00:00', 6000000.00, 1140000.00, 7140000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-10-22', 7140000.00, 'REF00000372', 'Pagado', 439, 56);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (461, 1, '2024-10-22', 'Calle 105 # 84-20, Jamundí', 'Entregada');

-- Orden 462
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (462, '2024-12-28', 5283600.00, 'Entregada', 34, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 462, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 462, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 462, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 180000.00, 462, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (440, 462, 'FBV', '000440', 'CUFE00000440', '2024-12-28 12:00:00', 4440000.00, 843600.00, 5283600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-28', 5283600.00, 'REF00000373', 'Pendiente', 440, 34);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (462, 11, '2024-12-28', 'Calle 62 # 93-53, Yumbo', 'Entregada');

-- Orden 463
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (463, '2024-12-22', 4236400.00, 'Entregada', 12, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 463, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 463, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (441, 463, 'FBV', '000441', 'CUFE00000441', '2024-12-22 12:00:00', 3560000.00, 676400.00, 4236400.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (463, 5, '2024-12-22', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 464
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (464, '2024-10-24', 3718750.00, 'Entregada', 46, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 464, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 464, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 464, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 464, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (442, 464, 'FBV', '000442', 'CUFE00000442', '2024-10-24 12:00:00', 3125000.00, 593750.00, 3718750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-24', 3718750.00, 'REF00000374', 'Pagado', 442, 46);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (464, 7, '2024-10-24', 'Calle 148 # 76-3, Cali', 'Entregada');

-- Orden 465
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (465, '2024-05-19', 10442250.00, 'Entregada', 19, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 465, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 465, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 465, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 465, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (443, 465, 'FBV', '000443', 'CUFE00000443', '2024-05-19 12:00:00', 8775000.00, 1667250.00, 10442250.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-05-19', 10442250.00, 'REF00000375', 'Pendiente', 443, 19);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (465, 13, '2024-05-19', 'Calle 32 # 59-18, Palmira', 'Entregada');

-- Orden 466
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (466, '2024-09-26', 303450.00, 'En Proceso', 3, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 466, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (444, 466, 'FBV', '000444', 'CUFE00000444', '2024-09-26 12:00:00', 255000.00, 48450.00, 303450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-09-26', 303450.00, 'REF00000376', 'Pendiente', 444, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (466, 5, '2024-09-26', 'Calle 19 # 69-28, Palmira', 'Pendiente');

-- Orden 467
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (467, '2024-06-26', 1767150.00, 'Entregada', 14, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 467, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 467, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (445, 467, 'FBV', '000445', 'CUFE00000445', '2024-06-26 12:00:00', 1485000.00, 282150.00, 1767150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-26', 1767150.00, 'REF00000377', 'Anulado', 445, 14);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (467, 5, '2024-06-26', 'Calle 81 # 85-16, Tuluá', 'No Entregada');

-- Orden 468
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (468, '2024-06-12', 9734200.00, 'En Proceso', 8, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 468, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 468, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 468, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 468, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (446, 468, 'FBV', '000446', 'CUFE00000446', '2024-06-12 12:00:00', 8180000.00, 1554200.00, 9734200.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (468, 6, '2024-06-12', 'Calle 11 # 46-27, Buga', 'Pendiente');

-- Orden 469
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (469, '2024-08-15', 4557700.00, 'Entregada', 12, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 380000.00, 469, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 600000.00, 469, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 469, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (447, 469, 'FBV', '000447', 'CUFE00000447', '2024-08-15 12:00:00', 3830000.00, 727700.00, 4557700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-08-15', 4557700.00, 'REF00000378', 'Pagado', 447, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (469, 12, '2024-08-15', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 470
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (470, '2024-12-04', 3784200.00, 'Entregada', 36, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 470, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 470, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 470, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 470, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (448, 470, 'FBV', '000448', 'CUFE00000448', '2024-12-04 12:00:00', 3180000.00, 604200.00, 3784200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-04', 3784200.00, 'REF00000379', 'Pagado', 448, 36);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (470, 14, '2024-12-04', 'Calle 85 # 46-90, Buenaventura', 'Entregada');

-- Orden 471
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (471, '2024-06-23', 357000.00, 'Cancelada', 12, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 471, 15);

-- Orden 472
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (472, '2024-02-03', 3510500.00, 'Entregada', 7, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 472, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 472, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (449, 472, 'FBV', '000449', 'CUFE00000449', '2024-02-03 12:00:00', 2950000.00, 560500.00, 3510500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-02-03', 3510500.00, 'REF00000380', 'Pagado', 449, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (472, 8, '2024-02-03', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 473
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (473, '2024-08-04', 2249100.00, 'Entregada', 8, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 473, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 473, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (450, 473, 'FBV', '000450', 'CUFE00000450', '2024-08-04 12:00:00', 1890000.00, 359100.00, 2249100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-08-04', 2249100.00, 'REF00000381', 'Pagado', 450, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (473, 14, '2024-08-04', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 474
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (474, '2024-04-22', 297500.00, 'Pendiente', 22, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 474, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 474, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (451, 474, 'FBV', '000451', 'CUFE00000451', '2024-04-22 12:00:00', 250000.00, 47500.00, 297500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-04-22', 297500.00, 'REF00000382', 'Pagado', 451, 22);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (474, 2, '2024-04-22', 'Calle 17 # 54-53, Palmira', 'Pendiente');

-- Orden 475
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (475, '2024-12-02', 1237600.00, 'Entregada', 10, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 475, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (452, 475, 'FBV', '000452', 'CUFE00000452', '2024-12-02 12:00:00', 1040000.00, 197600.00, 1237600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-02', 1237600.00, 'REF00000383', 'Pagado', 452, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (475, 9, '2024-12-02', 'Calle 10 # 61-29, Tuluá', 'No Entregada');

-- Orden 476
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (476, '2024-12-17', 10400600.00, 'Pendiente', 6, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 476, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 476, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 476, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (453, 476, 'FBV', '000453', 'CUFE00000453', '2024-12-17 12:00:00', 8740000.00, 1660600.00, 10400600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (476, 10, '2024-12-17', 'Calle 24 # 82-55, Tuluá', 'Pendiente');

-- Orden 477
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (477, '2024-04-10', 6777050.00, 'Pendiente', 5, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 477, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 477, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (454, 477, 'FBV', '000454', 'CUFE00000454', '2024-04-10 12:00:00', 5695000.00, 1082050.00, 6777050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-04-10', 6777050.00, 'REF00000384', 'Pendiente', 454, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (477, 9, '2024-04-10', 'Calle 142 # 20-35, Yumbo', 'Pendiente');

-- Orden 478
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (478, '2024-02-09', 3689000.00, 'Entregada', 7, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 478, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 478, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (455, 478, 'FBV', '000455', 'CUFE00000455', '2024-02-09 12:00:00', 3100000.00, 589000.00, 3689000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-02-09', 3689000.00, 'REF00000385', 'Pagado', 455, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (478, 3, '2024-02-09', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 479
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (479, '2024-03-26', 202300.00, 'Entregada', 8, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 479, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (456, 479, 'FBV', '000456', 'CUFE00000456', '2024-03-26 12:00:00', 170000.00, 32300.00, 202300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-03-26', 202300.00, 'REF00000386', 'Pagado', 456, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (479, 3, '2024-03-26', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 480
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (480, '2024-06-11', 844900.00, 'En Proceso', 12, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 480, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 480, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (457, 480, 'FBV', '000457', 'CUFE00000457', '2024-06-11 12:00:00', 710000.00, 134900.00, 844900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-11', 844900.00, 'REF00000387', 'Pagado', 457, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (480, 6, '2024-06-11', 'Calle 112 # 45-94, Cali', 'En Ruta');

-- Orden 481
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (481, '2024-11-04', 6687800.00, 'Entregada', 11, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 481, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 481, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 481, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (458, 481, 'FBV', '000458', 'CUFE00000458', '2024-11-04 12:00:00', 5620000.00, 1067800.00, 6687800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-11-04', 6687800.00, 'REF00000388', 'Pagado', 458, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (481, 11, '2024-11-04', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 482
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (482, '2024-10-22', 10174500.00, 'Entregada', 12, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 482, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 482, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 482, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 482, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (459, 482, 'FBV', '000459', 'CUFE00000459', '2024-10-22 12:00:00', 8550000.00, 1624500.00, 10174500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-22', 10174500.00, 'REF00000389', 'Pagado', 459, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (482, 1, '2024-10-22', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 483
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (483, '2024-12-10', 2332400.00, 'Entregada', 6, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 483, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 483, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 483, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (460, 483, 'FBV', '000460', 'CUFE00000460', '2024-12-10 12:00:00', 1960000.00, 372400.00, 2332400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-10', 2332400.00, 'REF00000390', 'Pagado', 460, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (483, 4, '2024-12-10', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 484
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (484, '2024-12-05', 499800.00, 'Entregada', 12, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 484, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (461, 484, 'FBV', '000461', 'CUFE00000461', '2024-12-05 12:00:00', 420000.00, 79800.00, 499800.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (484, 7, '2024-12-05', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 485
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (485, '2024-12-22', 202300.00, 'Cancelada', 6, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 485, 20);

-- Orden 486
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (486, '2024-03-12', 3498600.00, 'En Proceso', 45, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 486, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 486, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 486, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (462, 486, 'FBV', '000462', 'CUFE00000462', '2024-03-12 12:00:00', 2940000.00, 558600.00, 3498600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (486, 13, '2024-03-12', 'Calle 104 # 35-65, Buga', 'En Ruta');

-- Orden 487
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (487, '2024-01-21', 1927800.00, 'Entregada', 5, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 487, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 487, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (463, 487, 'FBV', '000463', 'CUFE00000463', '2024-01-21 12:00:00', 1620000.00, 307800.00, 1927800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-01-21', 1927800.00, 'REF00000391', 'Pagado', 463, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (487, 5, '2024-01-21', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 488
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (488, '2024-06-24', 2606100.00, 'Entregada', 2, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 488, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 488, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 488, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (464, 488, 'FBV', '000464', 'CUFE00000464', '2024-06-24 12:00:00', 2190000.00, 416100.00, 2606100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-24', 2606100.00, 'REF00000392', 'Pendiente', 464, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (488, 6, '2024-06-24', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 489
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (489, '2024-12-18', 267750.00, 'En Proceso', 7, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 489, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (465, 489, 'FBV', '000465', 'CUFE00000465', '2024-12-18 12:00:00', 225000.00, 42750.00, 267750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-18', 267750.00, 'REF00000393', 'Pagado', 465, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (489, 5, '2024-12-18', 'Calle 29 # 10-89, Buga', 'Pendiente');

-- Orden 490
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (490, '2024-05-05', 1695750.00, 'Entregada', 2, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 490, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 490, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 490, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (466, 490, 'FBV', '000466', 'CUFE00000466', '2024-05-05 12:00:00', 1425000.00, 270750.00, 1695750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-05-05', 1695750.00, 'REF00000394', 'Pagado', 466, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (490, 4, '2024-05-05', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 491
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (491, '2024-12-27', 963900.00, 'En Proceso', 9, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 491, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 491, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (467, 491, 'FBV', '000467', 'CUFE00000467', '2024-12-27 12:00:00', 810000.00, 153900.00, 963900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-27', 963900.00, 'REF00000395', 'Pendiente', 467, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (491, 12, '2024-12-27', 'Calle 7 # 23-95, Cartago', 'En Ruta');

-- Orden 492
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (492, '2024-05-16', 2272900.00, 'Entregada', 8, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 492, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 492, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 492, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 492, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (468, 492, 'FBV', '000468', 'CUFE00000468', '2024-05-16 12:00:00', 1910000.00, 362900.00, 2272900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-05-16', 2272900.00, 'REF00000396', 'Pagado', 468, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (492, 1, '2024-05-16', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 493
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (493, '2024-12-21', 1255450.00, 'Entregada', 4, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 493, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 493, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (469, 493, 'FBV', '000469', 'CUFE00000469', '2024-12-21 12:00:00', 1055000.00, 200450.00, 1255450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-21', 1255450.00, 'REF00000397', 'Pagado', 469, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (493, 3, '2024-12-21', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 494
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (494, '2024-10-08', 4831400.00, 'Entregada', 10, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1520000.00, 494, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 494, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 494, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 494, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (470, 494, 'FBV', '000470', 'CUFE00000470', '2024-10-08 12:00:00', 4060000.00, 771400.00, 4831400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-10-08', 4831400.00, 'REF00000398', 'Pagado', 470, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (494, 7, '2024-10-08', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 495
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (495, '2024-06-20', 2380000.00, 'Entregada', 4, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 495, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 495, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (471, 495, 'FBV', '000471', 'CUFE00000471', '2024-06-20 12:00:00', 2000000.00, 380000.00, 2380000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-20', 2380000.00, 'REF00000399', 'Pagado', 471, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (495, 6, '2024-06-20', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 496
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (496, '2024-08-20', 3308200.00, 'Entregada', 20, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 496, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 496, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1680000.00, 496, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (472, 496, 'FBV', '000472', 'CUFE00000472', '2024-08-20 12:00:00', 2780000.00, 528200.00, 3308200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-08-20', 3308200.00, 'REF00000400', 'Pagado', 472, 20);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (496, 11, '2024-08-20', 'Calle 141 # 58-21, Jamundí', 'Entregada');

-- Orden 497
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (497, '2024-07-11', 11834550.00, 'Entregada', 2, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 497, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 497, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 497, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 497, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (473, 497, 'FBV', '000473', 'CUFE00000473', '2024-07-11 12:00:00', 9945000.00, 1889550.00, 11834550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-07-11', 11834550.00, 'REF00000401', 'Pagado', 473, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (497, 2, '2024-07-11', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 498
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (498, '2024-05-05', 535500.00, 'Entregada', 3, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 498, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (474, 498, 'FBV', '000474', 'CUFE00000474', '2024-05-05 12:00:00', 450000.00, 85500.00, 535500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-05-05', 535500.00, 'REF00000402', 'Pagado', 474, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (498, 1, '2024-05-05', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 499
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (499, '2024-06-20', 1927800.00, 'Entregada', 10, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1400000.00, 499, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 499, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (475, 499, 'FBV', '000475', 'CUFE00000475', '2024-06-20 12:00:00', 1620000.00, 307800.00, 1927800.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (499, 12, '2024-06-20', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 500
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (500, '2024-04-23', 130900.00, 'Entregada', 6, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 500, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (476, 500, 'FBV', '000476', 'CUFE00000476', '2024-04-23 12:00:00', 110000.00, 20900.00, 130900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-04-23', 130900.00, 'REF00000403', 'Pagado', 476, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (500, 11, '2024-04-23', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 501
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (501, '2024-05-26', 7021000.00, 'Entregada', 49, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 501, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 501, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (477, 501, 'FBV', '000477', 'CUFE00000477', '2024-05-26 12:00:00', 5900000.00, 1121000.00, 7021000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-05-26', 7021000.00, 'REF00000404', 'Anulado', 477, 49);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (501, 11, '2024-05-26', 'Calle 119 # 53-7, Yumbo', 'Entregada');

-- Orden 502
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (502, '2024-03-20', 1249500.00, 'Entregada', 5, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 502, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (478, 502, 'FBV', '000478', 'CUFE00000478', '2024-03-20 12:00:00', 1050000.00, 199500.00, 1249500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-03-20', 1249500.00, 'REF00000405', 'Anulado', 478, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (502, 13, '2024-03-20', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 503
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (503, '2024-10-21', 428400.00, 'Entregada', 17, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 503, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 503, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (479, 503, 'FBV', '000479', 'CUFE00000479', '2024-10-21 12:00:00', 360000.00, 68400.00, 428400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-21', 428400.00, 'REF00000406', 'Pendiente', 479, 17);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (503, 2, '2024-10-21', 'Calle 80 # 29-26, Tuluá', 'Entregada');

-- Orden 504
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (504, '2024-06-16', 910350.00, 'Entregada', 3, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 504, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 600000.00, 504, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (480, 504, 'FBV', '000480', 'CUFE00000480', '2024-06-16 12:00:00', 765000.00, 145350.00, 910350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-16', 910350.00, 'REF00000407', 'Pagado', 480, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (504, 11, '2024-06-16', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 505
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (505, '2024-04-05', 589050.00, 'Entregada', 12, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 505, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 505, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (481, 505, 'FBV', '000481', 'CUFE00000481', '2024-04-05 12:00:00', 495000.00, 94050.00, 589050.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (505, 7, '2024-04-05', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 506
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (506, '2024-09-02', 737800.00, 'Entregada', 24, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 506, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (482, 506, 'FBV', '000482', 'CUFE00000482', '2024-09-02 12:00:00', 620000.00, 117800.00, 737800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-09-02', 737800.00, 'REF00000408', 'Pagado', 482, 24);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (506, 1, '2024-09-02', 'Calle 8 # 50-44, Tuluá', 'No Entregada');

-- Orden 507
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (507, '2024-02-05', 5973800.00, 'Entregada', 38, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 507, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 507, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 507, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 507, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (483, 507, 'FBV', '000483', 'CUFE00000483', '2024-02-05 12:00:00', 5020000.00, 953800.00, 5973800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-05', 5973800.00, 'REF00000409', 'Pagado', 483, 38);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (507, 6, '2024-02-05', 'Calle 4 # 91-69, Tuluá', 'Entregada');

-- Orden 508
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (508, '2024-12-01', 4914700.00, 'Entregada', 3, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 380000.00, 508, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 508, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 508, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 508, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (484, 508, 'FBV', '000484', 'CUFE00000484', '2024-12-01 12:00:00', 4130000.00, 784700.00, 4914700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-01', 4914700.00, 'REF00000410', 'Anulado', 484, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (508, 12, '2024-12-01', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 509
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (509, '2024-12-03', 476000.00, 'Pendiente', 7, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 509, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 509, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (485, 509, 'FBV', '000485', 'CUFE00000485', '2024-12-03 12:00:00', 400000.00, 76000.00, 476000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-03', 476000.00, 'REF00000411', 'Pagado', 485, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (509, 2, '2024-12-03', 'Calle 29 # 10-89, Buga', 'Pendiente');

-- Orden 510
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (510, '2024-02-16', 2504950.00, 'Entregada', 7, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1120000.00, 510, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 510, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 510, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (486, 510, 'FBV', '000486', 'CUFE00000486', '2024-02-16 12:00:00', 2105000.00, 399950.00, 2504950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-02-16', 2504950.00, 'REF00000412', 'Anulado', 486, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (510, 5, '2024-02-16', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 511
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (511, '2024-06-05', 8306200.00, 'Entregada', 3, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 511, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 511, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 511, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 511, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (487, 511, 'FBV', '000487', 'CUFE00000487', '2024-06-05 12:00:00', 6980000.00, 1326200.00, 8306200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-05', 8306200.00, 'REF00000413', 'Pagado', 487, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (511, 5, '2024-06-05', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 512
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (512, '2024-08-14', 1053150.00, 'Entregada', 7, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 512, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 512, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (488, 512, 'FBV', '000488', 'CUFE00000488', '2024-08-14 12:00:00', 885000.00, 168150.00, 1053150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-08-14', 1053150.00, 'REF00000414', 'Pagado', 488, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (512, 4, '2024-08-14', 'Calle 29 # 10-89, Buga', 'No Entregada');

-- Orden 513
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (513, '2024-12-25', 3825850.00, 'En Proceso', 7, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 513, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 513, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 513, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (489, 513, 'FBV', '000489', 'CUFE00000489', '2024-12-25 12:00:00', 3215000.00, 610850.00, 3825850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-25', 3825850.00, 'REF00000415', 'Pendiente', 489, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (513, 6, '2024-12-25', 'Calle 29 # 10-89, Buga', 'Pendiente');

-- Orden 514
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (514, '2024-09-03', 1475600.00, 'Entregada', 14, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 514, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 514, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (490, 514, 'FBV', '000490', 'CUFE00000490', '2024-09-03 12:00:00', 1240000.00, 235600.00, 1475600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-09-03', 1475600.00, 'REF00000416', 'Pagado', 490, 14);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (514, 1, '2024-09-03', 'Calle 81 # 85-16, Tuluá', 'Entregada');

-- Orden 515
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (515, '2024-10-10', 1915900.00, 'Entregada', 21, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 515, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1400000.00, 515, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 515, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (491, 515, 'FBV', '000491', 'CUFE00000491', '2024-10-10 12:00:00', 1610000.00, 305900.00, 1915900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-10', 1915900.00, 'REF00000417', 'Pagado', 491, 21);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (515, 3, '2024-10-10', 'Calle 113 # 10-92, Yumbo', 'Entregada');

-- Orden 516
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (516, '2024-05-19', 690200.00, 'Entregada', 15, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 516, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 516, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (492, 516, 'FBV', '000492', 'CUFE00000492', '2024-05-19 12:00:00', 580000.00, 110200.00, 690200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-05-19', 690200.00, 'REF00000418', 'Anulado', 492, 15);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (516, 13, '2024-05-19', 'Calle 50 # 54-86, Jamundí', 'Entregada');

-- Orden 517
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (517, '2024-10-18', 267750.00, 'Entregada', 4, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 517, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (493, 517, 'FBV', '000493', 'CUFE00000493', '2024-10-18 12:00:00', 225000.00, 42750.00, 267750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-18', 267750.00, 'REF00000419', 'Pagado', 493, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (517, 7, '2024-10-18', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 518
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (518, '2024-05-04', 595000.00, 'Entregada', 8, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 518, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 518, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 518, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (494, 518, 'FBV', '000494', 'CUFE00000494', '2024-05-04 12:00:00', 500000.00, 95000.00, 595000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-05-04', 595000.00, 'REF00000420', 'Pagado', 494, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (518, 14, '2024-05-04', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 519
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (519, '2024-08-02', 6033300.00, 'Entregada', 2, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 519, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 519, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 519, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 519, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (495, 519, 'FBV', '000495', 'CUFE00000495', '2024-08-02 12:00:00', 5070000.00, 963300.00, 6033300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-08-02', 6033300.00, 'REF00000421', 'Pagado', 495, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (519, 5, '2024-08-02', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 520
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (520, '2024-07-17', 2380000.00, 'En Proceso', 44, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 520, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 520, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (496, 520, 'FBV', '000496', 'CUFE00000496', '2024-07-17 12:00:00', 2000000.00, 380000.00, 2380000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-07-17', 2380000.00, 'REF00000422', 'Pagado', 496, 44);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (520, 7, '2024-07-17', 'Calle 140 # 29-83, Buenaventura', 'En Ruta');

-- Orden 521
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (521, '2024-11-21', 2159850.00, 'Entregada', 42, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 521, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 521, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (497, 521, 'FBV', '000497', 'CUFE00000497', '2024-11-21 12:00:00', 1815000.00, 344850.00, 2159850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-11-21', 2159850.00, 'REF00000423', 'Pagado', 497, 42);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (521, 4, '2024-11-21', 'Calle 26 # 98-27, Cartago', 'Entregada');

-- Orden 522
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (522, '2024-10-22', 1100750.00, 'Entregada', 1, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 522, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 522, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (498, 522, 'FBV', '000498', 'CUFE00000498', '2024-10-22 12:00:00', 925000.00, 175750.00, 1100750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-22', 1100750.00, 'REF00000424', 'Pagado', 498, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (522, 7, '2024-10-22', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 523
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (523, '2024-06-06', 2475200.00, 'Pendiente', 9, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 523, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 523, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (499, 523, 'FBV', '000499', 'CUFE00000499', '2024-06-06 12:00:00', 2080000.00, 395200.00, 2475200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-06', 2475200.00, 'REF00000425', 'Pendiente', 499, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (523, 9, '2024-06-06', 'Calle 7 # 23-95, Cartago', 'Pendiente');

-- Orden 524
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (524, '2024-03-04', 8496600.00, 'Cancelada', 12, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 524, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 4800000.00, 524, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 524, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 524, 13);

-- Orden 525
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (525, '2024-05-22', 160650.00, 'Entregada', 9, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 525, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (500, 525, 'FBV', '000500', 'CUFE00000500', '2024-05-22 12:00:00', 135000.00, 25650.00, 160650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-05-22', 160650.00, 'REF00000426', 'Pagado', 500, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (525, 7, '2024-05-22', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 526
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (526, '2024-04-28', 2856000.00, 'Entregada', 38, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 526, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (501, 526, 'FBV', '000501', 'CUFE00000501', '2024-04-28 12:00:00', 2400000.00, 456000.00, 2856000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-04-28', 2856000.00, 'REF00000427', 'Pagado', 501, 38);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (526, 7, '2024-04-28', 'Calle 4 # 91-69, Tuluá', 'Entregada');

-- Orden 527
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (527, '2024-12-25', 9710400.00, 'Entregada', 48, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 527, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 527, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 527, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 527, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (502, 527, 'FBV', '000502', 'CUFE00000502', '2024-12-25 12:00:00', 8160000.00, 1550400.00, 9710400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-25', 9710400.00, 'REF00000428', 'Pendiente', 502, 48);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (527, 2, '2024-12-25', 'Calle 74 # 85-52, Jamundí', 'Entregada');

-- Orden 528
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (528, '2024-11-26', 3129700.00, 'Entregada', 2, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 528, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 528, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 528, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 528, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (503, 528, 'FBV', '000503', 'CUFE00000503', '2024-11-26 12:00:00', 2630000.00, 499700.00, 3129700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-11-26', 3129700.00, 'REF00000429', 'Pagado', 503, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (528, 7, '2024-11-26', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 529
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (529, '2024-01-14', 2094400.00, 'Entregada', 4, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 529, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 529, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 529, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (504, 529, 'FBV', '000504', 'CUFE00000504', '2024-01-14 12:00:00', 1760000.00, 334400.00, 2094400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-14', 2094400.00, 'REF00000430', 'Pagado', 504, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (529, 5, '2024-01-14', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 530
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (530, '2024-09-20', 1529150.00, 'Entregada', 2, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 530, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 530, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 530, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (505, 530, 'FBV', '000505', 'CUFE00000505', '2024-09-20 12:00:00', 1285000.00, 244150.00, 1529150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-09-20', 1529150.00, 'REF00000431', 'Pagado', 505, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (530, 4, '2024-09-20', 'Calle 102 # 17-86, Palmira', 'No Entregada');

-- Orden 531
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (531, '2024-09-19', 749700.00, 'Entregada', 11, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 531, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 531, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (506, 531, 'FBV', '000506', 'CUFE00000506', '2024-09-19 12:00:00', 630000.00, 119700.00, 749700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-09-19', 749700.00, 'REF00000432', 'Pagado', 506, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (531, 10, '2024-09-19', 'Calle 90 # 83-66, Tuluá', 'No Entregada');

-- Orden 532
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (532, '2024-06-12', 3522400.00, 'Entregada', 53, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 532, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 532, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 532, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (507, 532, 'FBV', '000507', 'CUFE00000507', '2024-06-12 12:00:00', 2960000.00, 562400.00, 3522400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-12', 3522400.00, 'REF00000433', 'Pagado', 507, 53);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (532, 13, '2024-06-12', 'Calle 73 # 93-39, Cartago', 'Entregada');

-- Orden 533
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (533, '2024-07-06', 1743350.00, 'Entregada', 7, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 533, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 533, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 533, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 533, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (508, 533, 'FBV', '000508', 'CUFE00000508', '2024-07-06 12:00:00', 1465000.00, 278350.00, 1743350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-07-06', 1743350.00, 'REF00000434', 'Pagado', 508, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (533, 7, '2024-07-06', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 534
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (534, '2024-12-07', 8960700.00, 'Entregada', 12, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 534, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 534, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 534, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 534, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (509, 534, 'FBV', '000509', 'CUFE00000509', '2024-12-07 12:00:00', 7530000.00, 1430700.00, 8960700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-07', 8960700.00, 'REF00000435', 'Pagado', 509, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (534, 1, '2024-12-07', 'Calle 112 # 45-94, Cali', 'No Entregada');

-- Orden 535
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (535, '2024-12-09', 3296300.00, 'Entregada', 5, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 535, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 535, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 535, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 535, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (510, 535, 'FBV', '000510', 'CUFE00000510', '2024-12-09 12:00:00', 2770000.00, 526300.00, 3296300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-09', 3296300.00, 'REF00000436', 'Pagado', 510, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (535, 13, '2024-12-09', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 536
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (536, '2024-06-02', 5313350.00, 'En Proceso', 11, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 536, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 536, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 536, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 536, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (511, 536, 'FBV', '000511', 'CUFE00000511', '2024-06-02 12:00:00', 4465000.00, 848350.00, 5313350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-02', 5313350.00, 'REF00000437', 'Pendiente', 511, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (536, 10, '2024-06-02', 'Calle 90 # 83-66, Tuluá', 'Pendiente');

-- Orden 537
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (537, '2024-02-14', 3748500.00, 'Entregada', 4, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 537, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 537, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (512, 537, 'FBV', '000512', 'CUFE00000512', '2024-02-14 12:00:00', 3150000.00, 598500.00, 3748500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-02-14', 3748500.00, 'REF00000438', 'Pagado', 512, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (537, 6, '2024-02-14', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 538
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (538, '2024-12-10', 2737000.00, 'Entregada', 5, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1680000.00, 538, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 538, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (513, 538, 'FBV', '000513', 'CUFE00000513', '2024-12-10 12:00:00', 2300000.00, 437000.00, 2737000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-10', 2737000.00, 'REF00000439', 'Pagado', 513, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (538, 10, '2024-12-10', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 539
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (539, '2024-05-06', 6533100.00, 'Entregada', 2, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 539, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 539, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1680000.00, 539, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 539, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (514, 539, 'FBV', '000514', 'CUFE00000514', '2024-05-06 12:00:00', 5490000.00, 1043100.00, 6533100.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (539, 9, '2024-05-06', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 540
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (540, '2024-03-19', 761600.00, 'Entregada', 1, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 540, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (515, 540, 'FBV', '000515', 'CUFE00000515', '2024-03-19 12:00:00', 640000.00, 121600.00, 761600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-03-19', 761600.00, 'REF00000440', 'Pagado', 515, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (540, 5, '2024-03-19', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 541
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (541, '2024-01-01', 1606500.00, 'Entregada', 4, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 541, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 541, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (516, 541, 'FBV', '000516', 'CUFE00000516', '2024-01-01 12:00:00', 1350000.00, 256500.00, 1606500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-01-01', 1606500.00, 'REF00000441', 'Pagado', 516, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (541, 9, '2024-01-01', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 542
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (542, '2024-07-10', 4533900.00, 'Entregada', 7, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 542, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 542, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 542, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 542, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (517, 542, 'FBV', '000517', 'CUFE00000517', '2024-07-10 12:00:00', 3810000.00, 723900.00, 4533900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-10', 4533900.00, 'REF00000442', 'Pagado', 517, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (542, 2, '2024-07-10', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 543
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (543, '2024-06-20', 2564450.00, 'En Proceso', 8, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 543, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 543, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 543, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (518, 543, 'FBV', '000518', 'CUFE00000518', '2024-06-20 12:00:00', 2155000.00, 409450.00, 2564450.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (543, 8, '2024-06-20', 'Calle 11 # 46-27, Buga', 'Pendiente');

-- Orden 544
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (544, '2024-12-21', 2094400.00, 'Cancelada', 6, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 544, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 544, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 544, 4);

-- Orden 545
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (545, '2024-11-04', 1725500.00, 'Entregada', 7, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 545, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (519, 545, 'FBV', '000519', 'CUFE00000519', '2024-11-04 12:00:00', 1450000.00, 275500.00, 1725500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-11-04', 1725500.00, 'REF00000443', 'Pagado', 519, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (545, 6, '2024-11-04', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 546
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (546, '2024-02-09', 3391500.00, 'En Proceso', 10, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 546, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (520, 546, 'FBV', '000520', 'CUFE00000520', '2024-02-09 12:00:00', 2850000.00, 541500.00, 3391500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-09', 3391500.00, 'REF00000444', 'Pendiente', 520, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (546, 4, '2024-02-09', 'Calle 10 # 61-29, Tuluá', 'En Ruta');

-- Orden 547
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (547, '2024-12-14', 3647350.00, 'Entregada', 9, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 547, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 547, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 547, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 547, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (521, 547, 'FBV', '000521', 'CUFE00000521', '2024-12-14 12:00:00', 3065000.00, 582350.00, 3647350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-14', 3647350.00, 'REF00000445', 'Pendiente', 521, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (547, 8, '2024-12-14', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 548
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (548, '2024-11-24', 5950000.00, 'Entregada', 2, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 548, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 548, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 548, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (522, 548, 'FBV', '000522', 'CUFE00000522', '2024-11-24 12:00:00', 5000000.00, 950000.00, 5950000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-11-24', 5950000.00, 'REF00000446', 'Anulado', 522, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (548, 8, '2024-11-24', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 549
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (549, '2024-12-04', 833000.00, 'Entregada', 36, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 549, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (523, 549, 'FBV', '000523', 'CUFE00000523', '2024-12-04 12:00:00', 700000.00, 133000.00, 833000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-04', 833000.00, 'REF00000447', 'Pagado', 523, 36);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (549, 9, '2024-12-04', 'Calle 85 # 46-90, Buenaventura', 'Entregada');

-- Orden 550
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (550, '2024-07-01', 1475600.00, 'Pendiente', 32, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 550, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (524, 550, 'FBV', '000524', 'CUFE00000524', '2024-07-01 12:00:00', 1240000.00, 235600.00, 1475600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-01', 1475600.00, 'REF00000448', 'Pendiente', 524, 32);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (550, 6, '2024-07-01', 'Calle 83 # 32-12, Buenaventura', 'Pendiente');

-- Orden 551
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (551, '2024-03-05', 226100.00, 'Entregada', 5, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 551, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (525, 551, 'FBV', '000525', 'CUFE00000525', '2024-03-05 12:00:00', 190000.00, 36100.00, 226100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-03-05', 226100.00, 'REF00000449', 'Pagado', 525, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (551, 12, '2024-03-05', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 552
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (552, '2024-08-22', 2737000.00, 'Entregada', 10, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 552, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 552, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 552, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (526, 552, 'FBV', '000526', 'CUFE00000526', '2024-08-22 12:00:00', 2300000.00, 437000.00, 2737000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (552, 13, '2024-08-22', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 553
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (553, '2024-06-07', 1588650.00, 'Entregada', 2, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 553, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 553, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (527, 553, 'FBV', '000527', 'CUFE00000527', '2024-06-07 12:00:00', 1335000.00, 253650.00, 1588650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-07', 1588650.00, 'REF00000450', 'Pagado', 527, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (553, 2, '2024-06-07', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 554
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (554, '2024-12-04', 4855200.00, 'Pendiente', 12, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 554, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1680000.00, 554, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (528, 554, 'FBV', '000528', 'CUFE00000528', '2024-12-04 12:00:00', 4080000.00, 775200.00, 4855200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-04', 4855200.00, 'REF00000451', 'Pendiente', 528, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (554, 8, '2024-12-04', 'Calle 112 # 45-94, Cali', 'Pendiente');

-- Orden 555
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (555, '2024-08-04', 761600.00, 'Entregada', 53, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 555, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (529, 555, 'FBV', '000529', 'CUFE00000529', '2024-08-04 12:00:00', 640000.00, 121600.00, 761600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-08-04', 761600.00, 'REF00000452', 'Pagado', 529, 53);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (555, 5, '2024-08-04', 'Calle 73 # 93-39, Cartago', 'Entregada');

-- Orden 556
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (556, '2024-02-18', 3825850.00, 'Entregada', 7, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 556, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 556, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 556, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 556, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (530, 556, 'FBV', '000530', 'CUFE00000530', '2024-02-18 12:00:00', 3215000.00, 610850.00, 3825850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-02-18', 3825850.00, 'REF00000453', 'Pendiente', 530, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (556, 12, '2024-02-18', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 557
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (557, '2024-02-02', 107100.00, 'Entregada', 9, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 557, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (531, 557, 'FBV', '000531', 'CUFE00000531', '2024-02-02 12:00:00', 90000.00, 17100.00, 107100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-02', 107100.00, 'REF00000454', 'Pagado', 531, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (557, 8, '2024-02-02', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 558
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (558, '2024-08-23', 2814350.00, 'Entregada', 4, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 558, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 558, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 558, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 558, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (532, 558, 'FBV', '000532', 'CUFE00000532', '2024-08-23 12:00:00', 2365000.00, 449350.00, 2814350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-08-23', 2814350.00, 'REF00000455', 'Pagado', 532, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (558, 5, '2024-08-23', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 559
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (559, '2024-06-03', 1439900.00, 'Entregada', 5, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 559, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 559, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 559, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (533, 559, 'FBV', '000533', 'CUFE00000533', '2024-06-03 12:00:00', 1210000.00, 229900.00, 1439900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-03', 1439900.00, 'REF00000456', 'Pagado', 533, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (559, 14, '2024-06-03', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 560
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (560, '2024-12-16', 3391500.00, 'Entregada', 1, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 560, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (534, 560, 'FBV', '000534', 'CUFE00000534', '2024-12-16 12:00:00', 2850000.00, 541500.00, 3391500.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (560, 13, '2024-12-16', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 561
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (561, '2024-11-11', 8306200.00, 'Entregada', 2, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 561, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 561, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 561, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (535, 561, 'FBV', '000535', 'CUFE00000535', '2024-11-11 12:00:00', 6980000.00, 1326200.00, 8306200.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (561, 2, '2024-11-11', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 562
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (562, '2024-05-17', 226100.00, 'En Proceso', 9, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 562, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (536, 562, 'FBV', '000536', 'CUFE00000536', '2024-05-17 12:00:00', 190000.00, 36100.00, 226100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-05-17', 226100.00, 'REF00000457', 'Pendiente', 536, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (562, 13, '2024-05-17', 'Calle 7 # 23-95, Cartago', 'En Ruta');

-- Orden 563
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (563, '2024-10-07', 10198300.00, 'Pendiente', 7, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 563, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 563, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 563, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 563, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (537, 563, 'FBV', '000537', 'CUFE00000537', '2024-10-07 12:00:00', 8570000.00, 1628300.00, 10198300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-07', 10198300.00, 'REF00000458', 'Pagado', 537, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (563, 7, '2024-10-07', 'Calle 29 # 10-89, Buga', 'Pendiente');

-- Orden 564
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (564, '2024-02-26', 940100.00, 'Entregada', 35, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 564, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 564, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 564, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (538, 564, 'FBV', '000538', 'CUFE00000538', '2024-02-26 12:00:00', 790000.00, 150100.00, 940100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-02-26', 940100.00, 'REF00000459', 'Pagado', 538, 35);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (564, 6, '2024-02-26', 'Calle 57 # 52-89, Buenaventura', 'Entregada');

-- Orden 565
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (565, '2024-01-10', 1142400.00, 'En Proceso', 1, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 565, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (539, 565, 'FBV', '000539', 'CUFE00000539', '2024-01-10 12:00:00', 960000.00, 182400.00, 1142400.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (565, 5, '2024-01-10', 'Calle 104 # 16-73, Buga', 'En Ruta');

-- Orden 566
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (566, '2024-11-17', 1071000.00, 'Entregada', 42, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 566, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 566, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (540, 566, 'FBV', '000540', 'CUFE00000540', '2024-11-17 12:00:00', 900000.00, 171000.00, 1071000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-11-17', 1071000.00, 'REF00000460', 'Pendiente', 540, 42);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (566, 6, '2024-11-17', 'Calle 26 # 98-27, Cartago', 'Entregada');

-- Orden 567
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (567, '2024-12-04', 511700.00, 'Pendiente', 8, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 567, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 567, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 567, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (541, 567, 'FBV', '000541', 'CUFE00000541', '2024-12-04 12:00:00', 430000.00, 81700.00, 511700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-04', 511700.00, 'REF00000461', 'Pagado', 541, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (567, 7, '2024-12-04', 'Calle 11 # 46-27, Buga', 'Pendiente');

-- Orden 568
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (568, '2024-02-19', 5819100.00, 'Pendiente', 6, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 568, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 568, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 568, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 568, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (542, 568, 'FBV', '000542', 'CUFE00000542', '2024-02-19 12:00:00', 4890000.00, 929100.00, 5819100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-02-19', 5819100.00, 'REF00000462', 'Pendiente', 542, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (568, 4, '2024-02-19', 'Calle 24 # 82-55, Tuluá', 'Pendiente');

-- Orden 569
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (569, '2024-06-25', 5408550.00, 'Entregada', 54, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 569, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 569, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 569, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (543, 569, 'FBV', '000543', 'CUFE00000543', '2024-06-25 12:00:00', 4545000.00, 863550.00, 5408550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-25', 5408550.00, 'REF00000463', 'Pendiente', 543, 54);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (569, 1, '2024-06-25', 'Calle 140 # 49-59, Buenaventura', 'Entregada');

-- Orden 570
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (570, '2024-01-02', 6902000.00, 'Entregada', 8, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 5800000.00, 570, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (544, 570, 'FBV', '000544', 'CUFE00000544', '2024-01-02 12:00:00', 5800000.00, 1102000.00, 6902000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-02', 6902000.00, 'REF00000464', 'Pagado', 544, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (570, 13, '2024-01-02', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 571
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (571, '2024-09-24', 2195550.00, 'En Proceso', 20, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 571, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 571, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (545, 571, 'FBV', '000545', 'CUFE00000545', '2024-09-24 12:00:00', 1845000.00, 350550.00, 2195550.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (571, 9, '2024-09-24', 'Calle 141 # 58-21, Jamundí', 'En Ruta');

-- Orden 572
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (572, '2024-08-07', 339150.00, 'Entregada', 30, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 572, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (546, 572, 'FBV', '000546', 'CUFE00000546', '2024-08-07 12:00:00', 285000.00, 54150.00, 339150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-08-07', 339150.00, 'REF00000465', 'Pagado', 546, 30);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (572, 1, '2024-08-07', 'Calle 18 # 65-83, Cali', 'Entregada');

-- Orden 573
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (573, '2024-12-10', 10103100.00, 'Entregada', 7, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 573, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 573, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (547, 573, 'FBV', '000547', 'CUFE00000547', '2024-12-10 12:00:00', 8490000.00, 1613100.00, 10103100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-10', 10103100.00, 'REF00000466', 'Pagado', 547, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (573, 8, '2024-12-10', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 574
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (574, '2024-10-08', 1005550.00, 'Entregada', 3, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 574, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 574, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (548, 574, 'FBV', '000548', 'CUFE00000548', '2024-10-08 12:00:00', 845000.00, 160550.00, 1005550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-08', 1005550.00, 'REF00000467', 'Pagado', 548, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (574, 3, '2024-10-08', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 575
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (575, '2024-12-05', 6449800.00, 'Entregada', 9, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 575, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 575, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 575, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 575, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (549, 575, 'FBV', '000549', 'CUFE00000549', '2024-12-05 12:00:00', 5420000.00, 1029800.00, 6449800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-05', 6449800.00, 'REF00000468', 'Pagado', 549, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (575, 9, '2024-12-05', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 576
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (576, '2024-03-17', 3474800.00, 'Pendiente', 1, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 576, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 576, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (550, 576, 'FBV', '000550', 'CUFE00000550', '2024-03-17 12:00:00', 2920000.00, 554800.00, 3474800.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (576, 11, '2024-03-17', 'Calle 104 # 16-73, Buga', 'Pendiente');

-- Orden 577
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (577, '2024-11-10', 904400.00, 'Pendiente', 5, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 577, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (551, 577, 'FBV', '000551', 'CUFE00000551', '2024-11-10 12:00:00', 760000.00, 144400.00, 904400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-11-10', 904400.00, 'REF00000469', 'Pendiente', 551, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (577, 3, '2024-11-10', 'Calle 142 # 20-35, Yumbo', 'Pendiente');

-- Orden 578
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (578, '2024-08-19', 2969050.00, 'Entregada', 11, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 578, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 578, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1400000.00, 578, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 578, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (552, 578, 'FBV', '000552', 'CUFE00000552', '2024-08-19 12:00:00', 2495000.00, 474050.00, 2969050.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (578, 6, '2024-08-19', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 579
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (579, '2024-06-14', 303450.00, 'Pendiente', 18, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 579, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (553, 579, 'FBV', '000553', 'CUFE00000553', '2024-06-14 12:00:00', 255000.00, 48450.00, 303450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-14', 303450.00, 'REF00000470', 'Pendiente', 553, 18);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (579, 10, '2024-06-14', 'Calle 127 # 52-32, Buenaventura', 'Pendiente');

-- Orden 580
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (580, '2024-06-23', 7794500.00, 'Entregada', 49, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 580, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 580, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (554, 580, 'FBV', '000554', 'CUFE00000554', '2024-06-23 12:00:00', 6550000.00, 1244500.00, 7794500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-23', 7794500.00, 'REF00000471', 'Pagado', 554, 49);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (580, 1, '2024-06-23', 'Calle 119 # 53-7, Yumbo', 'Entregada');

-- Orden 581
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (581, '2024-01-22', 226100.00, 'Entregada', 2, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 581, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (555, 581, 'FBV', '000555', 'CUFE00000555', '2024-01-22 12:00:00', 190000.00, 36100.00, 226100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-01-22', 226100.00, 'REF00000472', 'Pagado', 555, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (581, 4, '2024-01-22', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 582
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (582, '2024-06-27', 6146350.00, 'Entregada', 12, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 582, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 582, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 582, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 582, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (556, 582, 'FBV', '000556', 'CUFE00000556', '2024-06-27 12:00:00', 5165000.00, 981350.00, 6146350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-27', 6146350.00, 'REF00000473', 'Pagado', 556, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (582, 14, '2024-06-27', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 583
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (583, '2024-12-10', 2261000.00, 'Pendiente', 1, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 583, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 583, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 583, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (557, 583, 'FBV', '000557', 'CUFE00000557', '2024-12-10 12:00:00', 1900000.00, 361000.00, 2261000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (583, 6, '2024-12-10', 'Calle 104 # 16-73, Buga', 'Pendiente');

-- Orden 584
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (584, '2024-12-19', 4117400.00, 'Entregada', 10, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 584, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 584, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 584, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (558, 584, 'FBV', '000558', 'CUFE00000558', '2024-12-19 12:00:00', 3460000.00, 657400.00, 4117400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-19', 4117400.00, 'REF00000474', 'Pagado', 558, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (584, 1, '2024-12-19', 'Calle 10 # 61-29, Tuluá', 'No Entregada');

-- Orden 585
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (585, '2024-02-19', 1428000.00, 'Pendiente', 5, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 585, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (559, 585, 'FBV', '000559', 'CUFE00000559', '2024-02-19 12:00:00', 1200000.00, 228000.00, 1428000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (585, 9, '2024-02-19', 'Calle 142 # 20-35, Yumbo', 'Pendiente');

-- Orden 586
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (586, '2024-05-02', 4414900.00, 'Entregada', 52, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 586, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 586, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 586, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 586, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (560, 586, 'FBV', '000560', 'CUFE00000560', '2024-05-02 12:00:00', 3710000.00, 704900.00, 4414900.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (586, 8, '2024-05-02', 'Calle 131 # 96-18, Yumbo', 'Entregada');

-- Orden 587
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (587, '2024-06-05', 4611250.00, 'Entregada', 7, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 587, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 587, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 587, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 587, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (561, 587, 'FBV', '000561', 'CUFE00000561', '2024-06-05 12:00:00', 3875000.00, 736250.00, 4611250.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-05', 4611250.00, 'REF00000475', 'Pagado', 561, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (587, 1, '2024-06-05', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 588
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (588, '2024-12-01', 1475600.00, 'Pendiente', 10, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 588, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 588, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (562, 588, 'FBV', '000562', 'CUFE00000562', '2024-12-01 12:00:00', 1240000.00, 235600.00, 1475600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (588, 13, '2024-12-01', 'Calle 10 # 61-29, Tuluá', 'Pendiente');

-- Orden 589
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (589, '2024-06-22', 666400.00, 'Entregada', 3, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 589, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (563, 589, 'FBV', '000563', 'CUFE00000563', '2024-06-22 12:00:00', 560000.00, 106400.00, 666400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-22', 666400.00, 'REF00000476', 'Pagado', 563, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (589, 11, '2024-06-22', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 590
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (590, '2024-12-25', 4188800.00, 'Entregada', 16, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 590, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 2480000.00, 590, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (564, 590, 'FBV', '000564', 'CUFE00000564', '2024-12-25 12:00:00', 3520000.00, 668800.00, 4188800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-25', 4188800.00, 'REF00000477', 'Pagado', 564, 16);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (590, 12, '2024-12-25', 'Calle 54 # 56-75, Yumbo', 'Entregada');

-- Orden 591
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (591, '2024-12-27', 10138800.00, 'Cancelada', 2, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 591, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 591, 18);

-- Orden 592
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (592, '2024-09-15', 452200.00, 'Cancelada', 13, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 592, 16);

-- Orden 593
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (593, '2024-02-09', 7021000.00, 'Pendiente', 34, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 593, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 593, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 593, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 593, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (565, 593, 'FBV', '000565', 'CUFE00000565', '2024-02-09 12:00:00', 5900000.00, 1121000.00, 7021000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-09', 7021000.00, 'REF00000478', 'Pagado', 565, 34);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (593, 5, '2024-02-09', 'Calle 62 # 93-53, Yumbo', 'Pendiente');

-- Orden 594
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (594, '2024-06-27', 4700500.00, 'Pendiente', 22, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 594, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 594, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (566, 594, 'FBV', '000566', 'CUFE00000566', '2024-06-27 12:00:00', 3950000.00, 750500.00, 4700500.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (594, 13, '2024-06-27', 'Calle 17 # 54-53, Palmira', 'Pendiente');

-- Orden 595
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (595, '2024-12-22', 4450600.00, 'Entregada', 10, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 595, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 595, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 595, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 595, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (567, 595, 'FBV', '000567', 'CUFE00000567', '2024-12-22 12:00:00', 3740000.00, 710600.00, 4450600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-22', 4450600.00, 'REF00000479', 'Pagado', 567, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (595, 9, '2024-12-22', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 596
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (596, '2024-06-20', 2689400.00, 'Entregada', 6, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 596, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 596, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 596, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (568, 596, 'FBV', '000568', 'CUFE00000568', '2024-06-20 12:00:00', 2260000.00, 429400.00, 2689400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-20', 2689400.00, 'REF00000480', 'Pagado', 568, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (596, 5, '2024-06-20', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 597
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (597, '2024-07-14', 2213400.00, 'Entregada', 12, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 597, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (569, 597, 'FBV', '000569', 'CUFE00000569', '2024-07-14 12:00:00', 1860000.00, 353400.00, 2213400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-07-14', 2213400.00, 'REF00000481', 'Anulado', 569, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (597, 12, '2024-07-14', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 598
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (598, '2024-06-08', 1344700.00, 'Entregada', 5, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 598, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 598, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (570, 598, 'FBV', '000570', 'CUFE00000570', '2024-06-08 12:00:00', 1130000.00, 214700.00, 1344700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-08', 1344700.00, 'REF00000482', 'Pagado', 570, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (598, 11, '2024-06-08', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 599
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (599, '2024-10-09', 4284000.00, 'Cancelada', 2, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 599, 12);

-- Orden 600
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (600, '2024-07-04', 5712000.00, 'Entregada', 2, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 600, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 600, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (571, 600, 'FBV', '000571', 'CUFE00000571', '2024-07-04 12:00:00', 4800000.00, 912000.00, 5712000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-04', 5712000.00, 'REF00000483', 'Pagado', 571, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (600, 6, '2024-07-04', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 601
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (601, '2024-06-21', 850850.00, 'Entregada', 6, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 601, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 601, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 601, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (572, 601, 'FBV', '000572', 'CUFE00000572', '2024-06-21 12:00:00', 715000.00, 135850.00, 850850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-21', 850850.00, 'REF00000484', 'Pagado', 572, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (601, 6, '2024-06-21', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 602
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (602, '2024-10-07', 226100.00, 'Entregada', 27, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 602, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (573, 602, 'FBV', '000573', 'CUFE00000573', '2024-10-07 12:00:00', 190000.00, 36100.00, 226100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-10-07', 226100.00, 'REF00000485', 'Pagado', 573, 27);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (602, 13, '2024-10-07', 'Calle 8 # 32-26, Palmira', 'No Entregada');

-- Orden 603
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (603, '2024-08-18', 618800.00, 'En Proceso', 9, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 603, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (574, 603, 'FBV', '000574', 'CUFE00000574', '2024-08-18 12:00:00', 520000.00, 98800.00, 618800.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (603, 13, '2024-08-18', 'Calle 7 # 23-95, Cartago', 'En Ruta');

-- Orden 604
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (604, '2024-06-26', 5694150.00, 'En Proceso', 47, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 604, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 604, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 604, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (575, 604, 'FBV', '000575', 'CUFE00000575', '2024-06-26 12:00:00', 4785000.00, 909150.00, 5694150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-26', 5694150.00, 'REF00000486', 'Pendiente', 575, 47);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (604, 5, '2024-06-26', 'Calle 47 # 75-56, Buga', 'Pendiente');

-- Orden 605
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (605, '2024-11-08', 6878200.00, 'Entregada', 4, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 605, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 180000.00, 605, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (576, 605, 'FBV', '000576', 'CUFE00000576', '2024-11-08 12:00:00', 5780000.00, 1098200.00, 6878200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-11-08', 6878200.00, 'REF00000487', 'Pagado', 576, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (605, 13, '2024-11-08', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 606
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (606, '2024-12-19', 398650.00, 'Entregada', 8, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 606, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 606, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (577, 606, 'FBV', '000577', 'CUFE00000577', '2024-12-19 12:00:00', 335000.00, 63650.00, 398650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-19', 398650.00, 'REF00000488', 'Pagado', 577, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (606, 7, '2024-12-19', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 607
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (607, '2024-01-06', 1541050.00, 'Cancelada', 35, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 607, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 607, 20);

-- Orden 608
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (608, '2024-02-27', 571200.00, 'Pendiente', 16, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 608, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (578, 608, 'FBV', '000578', 'CUFE00000578', '2024-02-27 12:00:00', 480000.00, 91200.00, 571200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-02-27', 571200.00, 'REF00000489', 'Pendiente', 578, 16);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (608, 10, '2024-02-27', 'Calle 54 # 56-75, Yumbo', 'Pendiente');

-- Orden 609
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (609, '2024-06-05', 113050.00, 'En Proceso', 6, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 609, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (579, 609, 'FBV', '000579', 'CUFE00000579', '2024-06-05 12:00:00', 95000.00, 18050.00, 113050.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (609, 7, '2024-06-05', 'Calle 24 # 82-55, Tuluá', 'En Ruta');

-- Orden 610
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (610, '2024-02-10', 3391500.00, 'Entregada', 52, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 610, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (580, 610, 'FBV', '000580', 'CUFE00000580', '2024-02-10 12:00:00', 2850000.00, 541500.00, 3391500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-02-10', 3391500.00, 'REF00000490', 'Pagado', 580, 52);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (610, 5, '2024-02-10', 'Calle 131 # 96-18, Yumbo', 'Entregada');

-- Orden 611
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (611, '2024-01-24', 2284800.00, 'Pendiente', 53, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 611, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 611, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (581, 611, 'FBV', '000581', 'CUFE00000581', '2024-01-24 12:00:00', 1920000.00, 364800.00, 2284800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-01-24', 2284800.00, 'REF00000491', 'Pendiente', 581, 53);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (611, 3, '2024-01-24', 'Calle 73 # 93-39, Cartago', 'Pendiente');

-- Orden 612
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (612, '2024-03-09', 214200.00, 'Cancelada', 4, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 180000.00, 612, 8);

-- Orden 613
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (613, '2024-12-18', 1737400.00, 'Entregada', 1, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 613, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 613, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (582, 613, 'FBV', '000582', 'CUFE00000582', '2024-12-18 12:00:00', 1460000.00, 277400.00, 1737400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-18', 1737400.00, 'REF00000492', 'Pagado', 582, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (613, 3, '2024-12-18', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 614
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (614, '2024-10-28', 2088450.00, 'Entregada', 48, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 614, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 614, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 614, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 614, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (583, 614, 'FBV', '000583', 'CUFE00000583', '2024-10-28 12:00:00', 1755000.00, 333450.00, 2088450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-28', 2088450.00, 'REF00000493', 'Pagado', 583, 48);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (614, 11, '2024-10-28', 'Calle 74 # 85-52, Jamundí', 'Entregada');

-- Orden 615
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (615, '2024-06-02', 5009900.00, 'Entregada', 15, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 615, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 615, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 615, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (584, 615, 'FBV', '000584', 'CUFE00000584', '2024-06-02 12:00:00', 4210000.00, 799900.00, 5009900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-02', 5009900.00, 'REF00000494', 'Pagado', 584, 15);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (615, 2, '2024-06-02', 'Calle 50 # 54-86, Jamundí', 'Entregada');

-- Orden 616
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (616, '2024-05-07', 1856400.00, 'Entregada', 19, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 616, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (585, 616, 'FBV', '000585', 'CUFE00000585', '2024-05-07 12:00:00', 1560000.00, 296400.00, 1856400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-05-07', 1856400.00, 'REF00000495', 'Pagado', 585, 19);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (616, 3, '2024-05-07', 'Calle 32 # 59-18, Palmira', 'Entregada');

-- Orden 617
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (617, '2024-10-20', 4736200.00, 'Entregada', 1, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 617, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 617, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (586, 617, 'FBV', '000586', 'CUFE00000586', '2024-10-20 12:00:00', 3980000.00, 756200.00, 4736200.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (617, 3, '2024-10-20', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 618
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (618, '2024-07-10', 142800.00, 'Entregada', 11, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 618, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (587, 618, 'FBV', '000587', 'CUFE00000587', '2024-07-10 12:00:00', 120000.00, 22800.00, 142800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-07-10', 142800.00, 'REF00000496', 'Pagado', 587, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (618, 7, '2024-07-10', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 619
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (619, '2024-06-13', 2528750.00, 'En Proceso', 12, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 619, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 619, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 619, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 619, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (588, 619, 'FBV', '000588', 'CUFE00000588', '2024-06-13 12:00:00', 2125000.00, 403750.00, 2528750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-13', 2528750.00, 'REF00000497', 'Pendiente', 588, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (619, 6, '2024-06-13', 'Calle 112 # 45-94, Cali', 'En Ruta');

-- Orden 620
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (620, '2024-10-11', 214200.00, 'Entregada', 5, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 620, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (589, 620, 'FBV', '000589', 'CUFE00000589', '2024-10-11 12:00:00', 180000.00, 34200.00, 214200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-11', 214200.00, 'REF00000498', 'Pagado', 589, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (620, 1, '2024-10-11', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 621
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (621, '2024-08-11', 1249500.00, 'Entregada', 52, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 621, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (590, 621, 'FBV', '000590', 'CUFE00000590', '2024-08-11 12:00:00', 1050000.00, 199500.00, 1249500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-08-11', 1249500.00, 'REF00000499', 'Pagado', 590, 52);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (621, 9, '2024-08-11', 'Calle 131 # 96-18, Yumbo', 'Entregada');

-- Orden 622
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (622, '2024-06-07', 1880200.00, 'Cancelada', 9, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 622, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 622, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 622, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 622, 12);

-- Orden 623
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (623, '2024-01-10', 1249500.00, 'Entregada', 28, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 623, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 623, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (591, 623, 'FBV', '000591', 'CUFE00000591', '2024-01-10 12:00:00', 1050000.00, 199500.00, 1249500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-01-10', 1249500.00, 'REF00000500', 'Pagado', 591, 28);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (623, 7, '2024-01-10', 'Calle 30 # 21-40, Buenaventura', 'Entregada');

-- Orden 624
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (624, '2024-10-18', 4153100.00, 'Entregada', 1, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 624, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 624, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (592, 624, 'FBV', '000592', 'CUFE00000592', '2024-10-18 12:00:00', 3490000.00, 663100.00, 4153100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-18', 4153100.00, 'REF00000501', 'Pagado', 592, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (624, 7, '2024-10-18', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 625
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (625, '2024-02-21', 1838550.00, 'Entregada', 8, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 625, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 625, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 625, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 625, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (593, 625, 'FBV', '000593', 'CUFE00000593', '2024-02-21 12:00:00', 1545000.00, 293550.00, 1838550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-02-21', 1838550.00, 'REF00000502', 'Anulado', 593, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (625, 5, '2024-02-21', 'Calle 11 # 46-27, Buga', 'No Entregada');

-- Orden 626
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (626, '2024-04-01', 4462500.00, 'Entregada', 2, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 626, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 626, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (594, 626, 'FBV', '000594', 'CUFE00000594', '2024-04-01 12:00:00', 3750000.00, 712500.00, 4462500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-04-01', 4462500.00, 'REF00000503', 'Pagado', 594, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (626, 14, '2024-04-01', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 627
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (627, '2024-02-13', 5319300.00, 'Entregada', 11, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 627, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 627, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 627, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 627, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (595, 627, 'FBV', '000595', 'CUFE00000595', '2024-02-13 12:00:00', 4470000.00, 849300.00, 5319300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-02-13', 5319300.00, 'REF00000504', 'Pagado', 595, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (627, 8, '2024-02-13', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 628
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (628, '2024-06-21', 5735800.00, 'Entregada', 10, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 628, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 628, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 628, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1120000.00, 628, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (596, 628, 'FBV', '000596', 'CUFE00000596', '2024-06-21 12:00:00', 4820000.00, 915800.00, 5735800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-21', 5735800.00, 'REF00000505', 'Pagado', 596, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (628, 8, '2024-06-21', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 629
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (629, '2024-07-05', 3296300.00, 'En Proceso', 11, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 629, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 629, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 240000.00, 629, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 629, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (597, 629, 'FBV', '000597', 'CUFE00000597', '2024-07-05 12:00:00', 2770000.00, 526300.00, 3296300.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (629, 3, '2024-07-05', 'Calle 90 # 83-66, Tuluá', 'En Ruta');

-- Orden 630
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (630, '2024-12-12', 1529150.00, 'Entregada', 30, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 630, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 630, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 630, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (598, 630, 'FBV', '000598', 'CUFE00000598', '2024-12-12 12:00:00', 1285000.00, 244150.00, 1529150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-12', 1529150.00, 'REF00000506', 'Pagado', 598, 30);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (630, 4, '2024-12-12', 'Calle 18 # 65-83, Cali', 'Entregada');

-- Orden 631
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (631, '2024-12-01', 1297100.00, 'Entregada', 9, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 631, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 631, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (599, 631, 'FBV', '000599', 'CUFE00000599', '2024-12-01 12:00:00', 1090000.00, 207100.00, 1297100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-01', 1297100.00, 'REF00000507', 'Pagado', 599, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (631, 3, '2024-12-01', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 632
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (632, '2024-01-07', 4403000.00, 'Entregada', 6, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 632, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 632, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 632, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 632, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (600, 632, 'FBV', '000600', 'CUFE00000600', '2024-01-07 12:00:00', 3700000.00, 703000.00, 4403000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-01-07', 4403000.00, 'REF00000508', 'Pagado', 600, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (632, 4, '2024-01-07', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 633
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (633, '2024-11-19', 1505350.00, 'Entregada', 6, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 633, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 633, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 633, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 633, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (601, 633, 'FBV', '000601', 'CUFE00000601', '2024-11-19 12:00:00', 1265000.00, 240350.00, 1505350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-11-19', 1505350.00, 'REF00000509', 'Pendiente', 601, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (633, 7, '2024-11-19', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 634
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (634, '2024-02-18', 6497400.00, 'Entregada', 9, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 634, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 634, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 634, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 634, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (602, 634, 'FBV', '000602', 'CUFE00000602', '2024-02-18 12:00:00', 5460000.00, 1037400.00, 6497400.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (634, 5, '2024-02-18', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 635
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (635, '2024-12-21', 2856000.00, 'Entregada', 3, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 635, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (603, 635, 'FBV', '000603', 'CUFE00000603', '2024-12-21 12:00:00', 2400000.00, 456000.00, 2856000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-21', 2856000.00, 'REF00000510', 'Pagado', 603, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (635, 14, '2024-12-21', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 636
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (636, '2024-03-24', 4641000.00, 'Cancelada', 7, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 636, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 636, 12);

-- Orden 637
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (637, '2024-07-01', 2213400.00, 'Entregada', 47, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 637, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (604, 637, 'FBV', '000604', 'CUFE00000604', '2024-07-01 12:00:00', 1860000.00, 353400.00, 2213400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-01', 2213400.00, 'REF00000511', 'Pagado', 604, 47);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (637, 6, '2024-07-01', 'Calle 47 # 75-56, Buga', 'Entregada');

-- Orden 638
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (638, '2024-12-20', 5200300.00, 'Entregada', 39, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 638, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 638, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 638, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 638, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (605, 638, 'FBV', '000605', 'CUFE00000605', '2024-12-20 12:00:00', 4370000.00, 830300.00, 5200300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-20', 5200300.00, 'REF00000512', 'Pagado', 605, 39);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (638, 1, '2024-12-20', 'Calle 147 # 37-61, Yumbo', 'Entregada');

-- Orden 639
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (639, '2024-01-04', 3094000.00, 'Pendiente', 12, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 639, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 639, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 639, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (606, 639, 'FBV', '000606', 'CUFE00000606', '2024-01-04 12:00:00', 2600000.00, 494000.00, 3094000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (639, 8, '2024-01-04', 'Calle 112 # 45-94, Cali', 'Pendiente');

-- Orden 640
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (640, '2024-09-02', 1404200.00, 'Entregada', 8, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 640, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 640, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (607, 640, 'FBV', '000607', 'CUFE00000607', '2024-09-02 12:00:00', 1180000.00, 224200.00, 1404200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-09-02', 1404200.00, 'REF00000513', 'Pagado', 607, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (640, 7, '2024-09-02', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 641
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (641, '2024-07-04', 2261000.00, 'Entregada', 6, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 641, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (608, 641, 'FBV', '000608', 'CUFE00000608', '2024-07-04 12:00:00', 1900000.00, 361000.00, 2261000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-07-04', 2261000.00, 'REF00000514', 'Pendiente', 608, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (641, 9, '2024-07-04', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 642
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (642, '2024-11-07', 1552950.00, 'Entregada', 24, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 642, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 642, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 642, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 642, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (609, 642, 'FBV', '000609', 'CUFE00000609', '2024-11-07 12:00:00', 1305000.00, 247950.00, 1552950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-11-07', 1552950.00, 'REF00000515', 'Pagado', 609, 24);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (642, 1, '2024-11-07', 'Calle 8 # 50-44, Tuluá', 'Entregada');

-- Orden 643
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (643, '2024-05-23', 904400.00, 'Entregada', 4, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 643, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (610, 643, 'FBV', '000610', 'CUFE00000610', '2024-05-23 12:00:00', 760000.00, 144400.00, 904400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-05-23', 904400.00, 'REF00000516', 'Pagado', 610, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (643, 4, '2024-05-23', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 644
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (644, '2024-12-13', 3498600.00, 'Entregada', 1, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 644, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 644, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (611, 644, 'FBV', '000611', 'CUFE00000611', '2024-12-13 12:00:00', 2940000.00, 558600.00, 3498600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-13', 3498600.00, 'REF00000517', 'Pagado', 611, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (644, 10, '2024-12-13', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 645
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (645, '2024-05-04', 1130500.00, 'Entregada', 4, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 645, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 645, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (612, 645, 'FBV', '000612', 'CUFE00000612', '2024-05-04 12:00:00', 950000.00, 180500.00, 1130500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-05-04', 1130500.00, 'REF00000518', 'Pagado', 612, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (645, 11, '2024-05-04', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 646
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (646, '2024-01-14', 2451400.00, 'Entregada', 40, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 646, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 646, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 646, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (613, 646, 'FBV', '000613', 'CUFE00000613', '2024-01-14 12:00:00', 2060000.00, 391400.00, 2451400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-14', 2451400.00, 'REF00000519', 'Pagado', 613, 40);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (646, 6, '2024-01-14', 'Calle 14 # 20-20, Cali', 'Entregada');

-- Orden 647
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (647, '2024-06-11', 2011100.00, 'Entregada', 5, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 647, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 647, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 647, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 647, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (614, 647, 'FBV', '000614', 'CUFE00000614', '2024-06-11 12:00:00', 1690000.00, 321100.00, 2011100.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (647, 4, '2024-06-11', 'Calle 142 # 20-35, Yumbo', 'No Entregada');

-- Orden 648
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (648, '2024-08-05', 1451800.00, 'Entregada', 53, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 648, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 648, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 648, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (615, 648, 'FBV', '000615', 'CUFE00000615', '2024-08-05 12:00:00', 1220000.00, 231800.00, 1451800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-08-05', 1451800.00, 'REF00000520', 'Pagado', 615, 53);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (648, 10, '2024-08-05', 'Calle 73 # 93-39, Cartago', 'Entregada');

-- Orden 649
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (649, '2024-06-24', 2867900.00, 'Entregada', 38, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 649, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 649, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 649, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (616, 649, 'FBV', '000616', 'CUFE00000616', '2024-06-24 12:00:00', 2410000.00, 457900.00, 2867900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-24', 2867900.00, 'REF00000521', 'Pagado', 616, 38);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (649, 4, '2024-06-24', 'Calle 4 # 91-69, Tuluá', 'Entregada');

-- Orden 650
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (650, '2024-06-05', 2713200.00, 'Entregada', 7, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 240000.00, 650, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 650, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1680000.00, 650, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (617, 650, 'FBV', '000617', 'CUFE00000617', '2024-06-05 12:00:00', 2280000.00, 433200.00, 2713200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-05', 2713200.00, 'REF00000522', 'Pendiente', 617, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (650, 9, '2024-06-05', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 651
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (651, '2024-11-03', 987700.00, 'Entregada', 11, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 651, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 651, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (618, 651, 'FBV', '000618', 'CUFE00000618', '2024-11-03 12:00:00', 830000.00, 157700.00, 987700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-11-03', 987700.00, 'REF00000523', 'Pagado', 618, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (651, 1, '2024-11-03', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 652
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (652, '2024-06-09', 3504550.00, 'Cancelada', 12, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 652, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 652, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1680000.00, 652, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 652, 17);

-- Orden 653
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (653, '2024-07-22', 3141600.00, 'Entregada', 3, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 653, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 653, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 653, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 653, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (619, 653, 'FBV', '000619', 'CUFE00000619', '2024-07-22 12:00:00', 2640000.00, 501600.00, 3141600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (653, 6, '2024-07-22', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 654
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (654, '2024-06-22', 5176500.00, 'Entregada', 10, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 654, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (620, 654, 'FBV', '000620', 'CUFE00000620', '2024-06-22 12:00:00', 4350000.00, 826500.00, 5176500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-22', 5176500.00, 'REF00000524', 'Pagado', 620, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (654, 7, '2024-06-22', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 655
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (655, '2024-06-12', 4153100.00, 'Entregada', 3, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 655, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 655, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 655, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (621, 655, 'FBV', '000621', 'CUFE00000621', '2024-06-12 12:00:00', 3490000.00, 663100.00, 4153100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-12', 4153100.00, 'REF00000525', 'Pagado', 621, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (655, 1, '2024-06-12', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 656
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (656, '2024-01-24', 3998400.00, 'Entregada', 7, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 656, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 656, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (622, 656, 'FBV', '000622', 'CUFE00000622', '2024-01-24 12:00:00', 3360000.00, 638400.00, 3998400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-01-24', 3998400.00, 'REF00000526', 'Pagado', 622, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (656, 2, '2024-01-24', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 657
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (657, '2024-12-24', 9579500.00, 'En Proceso', 48, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 657, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 657, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 657, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 4800000.00, 657, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (623, 657, 'FBV', '000623', 'CUFE00000623', '2024-12-24 12:00:00', 8050000.00, 1529500.00, 9579500.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (657, 4, '2024-12-24', 'Calle 74 # 85-52, Jamundí', 'En Ruta');

-- Orden 658
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (658, '2024-10-03', 2272900.00, 'En Proceso', 17, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 658, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 658, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 658, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 658, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (624, 658, 'FBV', '000624', 'CUFE00000624', '2024-10-03 12:00:00', 1910000.00, 362900.00, 2272900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-03', 2272900.00, 'REF00000527', 'Pendiente', 624, 17);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (658, 5, '2024-10-03', 'Calle 80 # 29-26, Tuluá', 'En Ruta');

-- Orden 659
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (659, '2024-03-10', 2867900.00, 'Entregada', 7, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 659, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 659, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 659, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 659, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (625, 659, 'FBV', '000625', 'CUFE00000625', '2024-03-10 12:00:00', 2410000.00, 457900.00, 2867900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-03-10', 2867900.00, 'REF00000528', 'Pagado', 625, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (659, 13, '2024-03-10', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 660
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (660, '2024-09-11', 13393450.00, 'Entregada', 11, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 660, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 660, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 660, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 660, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (626, 660, 'FBV', '000626', 'CUFE00000626', '2024-09-11 12:00:00', 11255000.00, 2138450.00, 13393450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-11', 13393450.00, 'REF00000529', 'Pagado', 626, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (660, 8, '2024-09-11', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 661
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (661, '2024-09-18', 535500.00, 'Cancelada', 55, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 661, 7);

-- Orden 662
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (662, '2024-06-15', 1731450.00, 'Entregada', 22, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 662, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 662, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (627, 662, 'FBV', '000627', 'CUFE00000627', '2024-06-15 12:00:00', 1455000.00, 276450.00, 1731450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-15', 1731450.00, 'REF00000530', 'Pagado', 627, 22);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (662, 5, '2024-06-15', 'Calle 17 # 54-53, Palmira', 'No Entregada');

-- Orden 663
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (663, '2024-12-04', 1094800.00, 'Entregada', 7, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 600000.00, 663, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 663, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (628, 663, 'FBV', '000628', 'CUFE00000628', '2024-12-04 12:00:00', 920000.00, 174800.00, 1094800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-04', 1094800.00, 'REF00000531', 'Anulado', 628, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (663, 3, '2024-12-04', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 664
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (664, '2024-08-11', 5176500.00, 'En Proceso', 8, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 664, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (629, 664, 'FBV', '000629', 'CUFE00000629', '2024-08-11 12:00:00', 4350000.00, 826500.00, 5176500.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (664, 4, '2024-08-11', 'Calle 11 # 46-27, Buga', 'En Ruta');

-- Orden 665
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (665, '2024-12-13', 1071000.00, 'Entregada', 3, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 665, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 665, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 665, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (630, 665, 'FBV', '000630', 'CUFE00000630', '2024-12-13 12:00:00', 900000.00, 171000.00, 1071000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-13', 1071000.00, 'REF00000532', 'Pagado', 630, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (665, 8, '2024-12-13', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 666
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (666, '2024-10-01', 1326850.00, 'Entregada', 11, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 666, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 666, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (631, 666, 'FBV', '000631', 'CUFE00000631', '2024-10-01 12:00:00', 1115000.00, 211850.00, 1326850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-01', 1326850.00, 'REF00000533', 'Pagado', 631, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (666, 2, '2024-10-01', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 667
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (667, '2024-10-08', 5402600.00, 'Entregada', 8, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 667, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 667, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (632, 667, 'FBV', '000632', 'CUFE00000632', '2024-10-08 12:00:00', 4540000.00, 862600.00, 5402600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-08', 5402600.00, 'REF00000534', 'Pagado', 632, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (667, 10, '2024-10-08', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 668
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (668, '2024-12-17', 517650.00, 'Entregada', 29, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 668, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 668, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 668, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (633, 668, 'FBV', '000633', 'CUFE00000633', '2024-12-17 12:00:00', 435000.00, 82650.00, 517650.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (668, 4, '2024-12-17', 'Calle 63 # 14-90, Cartago', 'Entregada');

-- Orden 669
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (669, '2024-12-18', 178500.00, 'Entregada', 54, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 669, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (634, 669, 'FBV', '000634', 'CUFE00000634', '2024-12-18 12:00:00', 150000.00, 28500.00, 178500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-18', 178500.00, 'REF00000535', 'Pagado', 634, 54);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (669, 7, '2024-12-18', 'Calle 140 # 49-59, Buenaventura', 'Entregada');

-- Orden 670
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (670, '2024-10-17', 2927400.00, 'Entregada', 7, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 670, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 670, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 670, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 670, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (635, 670, 'FBV', '000635', 'CUFE00000635', '2024-10-17 12:00:00', 2460000.00, 467400.00, 2927400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-17', 2927400.00, 'REF00000536', 'Pagado', 635, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (670, 9, '2024-10-17', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 671
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (671, '2024-10-15', 6884150.00, 'Pendiente', 6, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 671, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 671, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 671, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 671, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (636, 671, 'FBV', '000636', 'CUFE00000636', '2024-10-15 12:00:00', 5785000.00, 1099150.00, 6884150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-15', 6884150.00, 'REF00000537', 'Pagado', 636, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (671, 2, '2024-10-15', 'Calle 24 # 82-55, Tuluá', 'Pendiente');

-- Orden 672
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (672, '2024-10-10', 2546600.00, 'Pendiente', 10, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 672, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 240000.00, 672, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (637, 672, 'FBV', '000637', 'CUFE00000637', '2024-10-10 12:00:00', 2140000.00, 406600.00, 2546600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (672, 6, '2024-10-10', 'Calle 10 # 61-29, Tuluá', 'Pendiente');

-- Orden 673
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (673, '2024-05-08', 1344700.00, 'Entregada', 39, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 673, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 673, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (638, 673, 'FBV', '000638', 'CUFE00000638', '2024-05-08 12:00:00', 1130000.00, 214700.00, 1344700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-05-08', 1344700.00, 'REF00000538', 'Pagado', 638, 39);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (673, 5, '2024-05-08', 'Calle 147 # 37-61, Yumbo', 'Entregada');

-- Orden 674
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (674, '2024-08-17', 2469250.00, 'Entregada', 12, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 674, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 674, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 674, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (639, 674, 'FBV', '000639', 'CUFE00000639', '2024-08-17 12:00:00', 2075000.00, 394250.00, 2469250.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-08-17', 2469250.00, 'REF00000539', 'Pagado', 639, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (674, 11, '2024-08-17', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 675
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (675, '2024-10-04', 3290350.00, 'Entregada', 11, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 675, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 675, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1400000.00, 675, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (640, 675, 'FBV', '000640', 'CUFE00000640', '2024-10-04 12:00:00', 2765000.00, 525350.00, 3290350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-04', 3290350.00, 'REF00000540', 'Pagado', 640, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (675, 5, '2024-10-04', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 676
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (676, '2024-07-18', 1142400.00, 'En Proceso', 2, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 676, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (641, 676, 'FBV', '000641', 'CUFE00000641', '2024-07-18 12:00:00', 960000.00, 182400.00, 1142400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-18', 1142400.00, 'REF00000541', 'Pagado', 641, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (676, 13, '2024-07-18', 'Calle 102 # 17-86, Palmira', 'Pendiente');

-- Orden 677
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (677, '2024-10-06', 11067000.00, 'Entregada', 4, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 677, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 677, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 677, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (642, 677, 'FBV', '000642', 'CUFE00000642', '2024-10-06 12:00:00', 9300000.00, 1767000.00, 11067000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-06', 11067000.00, 'REF00000542', 'Pagado', 642, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (677, 4, '2024-10-06', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 678
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (678, '2024-07-26', 535500.00, 'Entregada', 9, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 678, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (643, 678, 'FBV', '000643', 'CUFE00000643', '2024-07-26 12:00:00', 450000.00, 85500.00, 535500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-07-26', 535500.00, 'REF00000543', 'Pagado', 643, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (678, 12, '2024-07-26', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 679
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (679, '2024-01-14', 357000.00, 'Pendiente', 6, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 679, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (644, 679, 'FBV', '000644', 'CUFE00000644', '2024-01-14 12:00:00', 300000.00, 57000.00, 357000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (679, 8, '2024-01-14', 'Calle 24 # 82-55, Tuluá', 'Pendiente');

-- Orden 680
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (680, '2024-06-09', 5307400.00, 'Entregada', 5, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 680, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 680, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (645, 680, 'FBV', '000645', 'CUFE00000645', '2024-06-09 12:00:00', 4460000.00, 847400.00, 5307400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-09', 5307400.00, 'REF00000544', 'Pendiente', 645, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (680, 1, '2024-06-09', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 681
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (681, '2024-11-06', 2653700.00, 'Entregada', 2, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 681, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 681, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 681, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (646, 681, 'FBV', '000646', 'CUFE00000646', '2024-11-06 12:00:00', 2230000.00, 423700.00, 2653700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-11-06', 2653700.00, 'REF00000545', 'Pagado', 646, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (681, 8, '2024-11-06', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 682
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (682, '2024-07-11', 1309000.00, 'En Proceso', 4, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 682, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 682, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 682, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 682, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (647, 682, 'FBV', '000647', 'CUFE00000647', '2024-07-11 12:00:00', 1100000.00, 209000.00, 1309000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-07-11', 1309000.00, 'REF00000546', 'Pendiente', 647, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (682, 4, '2024-07-11', 'Calle 140 # 91-39, Palmira', 'Pendiente');

-- Orden 683
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (683, '2024-12-10', 8038450.00, 'Entregada', 9, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 683, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 683, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 683, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (648, 683, 'FBV', '000648', 'CUFE00000648', '2024-12-10 12:00:00', 6755000.00, 1283450.00, 8038450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-10', 8038450.00, 'REF00000547', 'Pendiente', 648, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (683, 5, '2024-12-10', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 684
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (684, '2024-01-23', 4319700.00, 'Entregada', 24, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 684, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 684, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 684, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (649, 684, 'FBV', '000649', 'CUFE00000649', '2024-01-23 12:00:00', 3630000.00, 689700.00, 4319700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-23', 4319700.00, 'REF00000548', 'Pagado', 649, 24);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (684, 12, '2024-01-23', 'Calle 8 # 50-44, Tuluá', 'Entregada');

-- Orden 685
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (685, '2024-10-24', 1499400.00, 'Entregada', 3, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 685, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (650, 685, 'FBV', '000650', 'CUFE00000650', '2024-10-24 12:00:00', 1260000.00, 239400.00, 1499400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-24', 1499400.00, 'REF00000549', 'Pagado', 650, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (685, 4, '2024-10-24', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 686
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (686, '2024-01-11', 1695750.00, 'Entregada', 2, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 686, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 240000.00, 686, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 686, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (651, 686, 'FBV', '000651', 'CUFE00000651', '2024-01-11 12:00:00', 1425000.00, 270750.00, 1695750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-01-11', 1695750.00, 'REF00000550', 'Pagado', 651, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (686, 7, '2024-01-11', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 687
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (687, '2024-06-18', 14161000.00, 'En Proceso', 8, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 11200000.00, 687, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 687, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 687, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (652, 687, 'FBV', '000652', 'CUFE00000652', '2024-06-18 12:00:00', 11900000.00, 2261000.00, 14161000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (687, 2, '2024-06-18', 'Calle 11 # 46-27, Buga', 'Pendiente');

-- Orden 688
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (688, '2024-06-15', 2415700.00, 'Entregada', 4, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 688, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 688, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (653, 688, 'FBV', '000653', 'CUFE00000653', '2024-06-15 12:00:00', 2030000.00, 385700.00, 2415700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-15', 2415700.00, 'REF00000551', 'Pagado', 653, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (688, 4, '2024-06-15', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 689
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (689, '2024-01-17', 6699700.00, 'Entregada', 34, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 689, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 2080000.00, 689, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 689, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 689, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (654, 689, 'FBV', '000654', 'CUFE00000654', '2024-01-17 12:00:00', 5630000.00, 1069700.00, 6699700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-01-17', 6699700.00, 'REF00000552', 'Pagado', 654, 34);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (689, 1, '2024-01-17', 'Calle 62 # 93-53, Yumbo', 'Entregada');

-- Orden 690
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (690, '2024-11-14', 6158250.00, 'En Proceso', 22, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 690, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 690, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 690, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 690, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (655, 690, 'FBV', '000655', 'CUFE00000655', '2024-11-14 12:00:00', 5175000.00, 983250.00, 6158250.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-11-14', 6158250.00, 'REF00000553', 'Pendiente', 655, 22);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (690, 4, '2024-11-14', 'Calle 17 # 54-53, Palmira', 'En Ruta');

-- Orden 691
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (691, '2024-12-19', 10620750.00, 'Entregada', 3, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 691, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 691, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 691, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (656, 691, 'FBV', '000656', 'CUFE00000656', '2024-12-19 12:00:00', 8925000.00, 1695750.00, 10620750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-19', 10620750.00, 'REF00000554', 'Pagado', 656, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (691, 7, '2024-12-19', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 692
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (692, '2024-07-03', 1826650.00, 'Entregada', 26, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 692, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 692, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 692, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (657, 692, 'FBV', '000657', 'CUFE00000657', '2024-07-03 12:00:00', 1535000.00, 291650.00, 1826650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-07-03', 1826650.00, 'REF00000555', 'Pagado', 657, 26);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (692, 1, '2024-07-03', 'Calle 87 # 98-49, Buenaventura', 'Entregada');

-- Orden 693
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (693, '2024-10-24', 267750.00, 'Entregada', 8, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 693, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (658, 693, 'FBV', '000658', 'CUFE00000658', '2024-10-24 12:00:00', 225000.00, 42750.00, 267750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-24', 267750.00, 'REF00000556', 'Pagado', 658, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (693, 9, '2024-10-24', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 694
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (694, '2024-08-17', 2499000.00, 'Entregada', 9, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 694, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 694, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (659, 694, 'FBV', '000659', 'CUFE00000659', '2024-08-17 12:00:00', 2100000.00, 399000.00, 2499000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-08-17', 2499000.00, 'REF00000557', 'Pagado', 659, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (694, 3, '2024-08-17', 'Calle 7 # 23-95, Cartago', 'No Entregada');

-- Orden 695
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (695, '2024-07-15', 7782600.00, 'Entregada', 9, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 695, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 695, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 695, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 4800000.00, 695, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (660, 695, 'FBV', '000660', 'CUFE00000660', '2024-07-15 12:00:00', 6540000.00, 1242600.00, 7782600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-07-15', 7782600.00, 'REF00000558', 'Pagado', 660, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (695, 11, '2024-07-15', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 696
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (696, '2024-12-02', 1261400.00, 'Entregada', 18, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 696, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 696, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (661, 696, 'FBV', '000661', 'CUFE00000661', '2024-12-02 12:00:00', 1060000.00, 201400.00, 1261400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-02', 1261400.00, 'REF00000559', 'Pagado', 661, 18);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (696, 5, '2024-12-02', 'Calle 127 # 52-32, Buenaventura', 'Entregada');

-- Orden 697
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (697, '2024-06-14', 1332800.00, 'En Proceso', 12, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 697, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 340000.00, 697, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 697, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 697, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (662, 697, 'FBV', '000662', 'CUFE00000662', '2024-06-14 12:00:00', 1120000.00, 212800.00, 1332800.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (697, 14, '2024-06-14', 'Calle 112 # 45-94, Cali', 'Pendiente');

-- Orden 698
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (698, '2024-01-01', 339150.00, 'Pendiente', 1, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 698, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (663, 698, 'FBV', '000663', 'CUFE00000663', '2024-01-01 12:00:00', 285000.00, 54150.00, 339150.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (698, 6, '2024-01-01', 'Calle 104 # 16-73, Buga', 'Pendiente');

-- Orden 699
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (699, '2024-06-08', 761600.00, 'Entregada', 2, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 699, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (664, 699, 'FBV', '000664', 'CUFE00000664', '2024-06-08 12:00:00', 640000.00, 121600.00, 761600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-08', 761600.00, 'REF00000560', 'Pagado', 664, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (699, 3, '2024-06-08', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 700
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (700, '2024-06-09', 1796900.00, 'Entregada', 6, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 700, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 700, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 700, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (665, 700, 'FBV', '000665', 'CUFE00000665', '2024-06-09 12:00:00', 1510000.00, 286900.00, 1796900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-09', 1796900.00, 'REF00000561', 'Pendiente', 665, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (700, 1, '2024-06-09', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 701
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (701, '2024-02-08', 5973800.00, 'Entregada', 43, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 701, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 701, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 701, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (666, 701, 'FBV', '000666', 'CUFE00000666', '2024-02-08 12:00:00', 5020000.00, 953800.00, 5973800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-02-08', 5973800.00, 'REF00000562', 'Pagado', 666, 43);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (701, 11, '2024-02-08', 'Calle 121 # 38-5, Tuluá', 'Entregada');

-- Orden 702
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (702, '2024-11-21', 898450.00, 'Entregada', 21, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 702, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 702, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (667, 702, 'FBV', '000667', 'CUFE00000667', '2024-11-21 12:00:00', 755000.00, 143450.00, 898450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-11-21', 898450.00, 'REF00000563', 'Pagado', 667, 21);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (702, 9, '2024-11-21', 'Calle 113 # 10-92, Yumbo', 'Entregada');

-- Orden 703
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (703, '2024-04-20', 6188000.00, 'Entregada', 8, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 703, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 703, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 703, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 703, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (668, 703, 'FBV', '000668', 'CUFE00000668', '2024-04-20 12:00:00', 5200000.00, 988000.00, 6188000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-04-20', 6188000.00, 'REF00000564', 'Pagado', 668, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (703, 7, '2024-04-20', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 704
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (704, '2024-01-18', 1231650.00, 'Entregada', 8, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 704, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 704, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (669, 704, 'FBV', '000669', 'CUFE00000669', '2024-01-18 12:00:00', 1035000.00, 196650.00, 1231650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-18', 1231650.00, 'REF00000565', 'Pagado', 669, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (704, 6, '2024-01-18', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 705
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (705, '2024-12-06', 386750.00, 'Entregada', 55, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 705, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 705, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (670, 705, 'FBV', '000670', 'CUFE00000670', '2024-12-06 12:00:00', 325000.00, 61750.00, 386750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-06', 386750.00, 'REF00000566', 'Pagado', 670, 55);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (705, 9, '2024-12-06', 'Calle 99 # 85-84, Cartago', 'Entregada');

-- Orden 706
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (706, '2024-06-08', 1624350.00, 'Entregada', 29, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 706, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 706, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (671, 706, 'FBV', '000671', 'CUFE00000671', '2024-06-08 12:00:00', 1365000.00, 259350.00, 1624350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-08', 1624350.00, 'REF00000567', 'Pagado', 671, 29);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (706, 1, '2024-06-08', 'Calle 63 # 14-90, Cartago', 'Entregada');

-- Orden 707
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (707, '2024-05-13', 7050750.00, 'Entregada', 38, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 707, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 707, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 707, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 707, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (672, 707, 'FBV', '000672', 'CUFE00000672', '2024-05-13 12:00:00', 5925000.00, 1125750.00, 7050750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-05-13', 7050750.00, 'REF00000568', 'Pagado', 672, 38);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (707, 12, '2024-05-13', 'Calle 4 # 91-69, Tuluá', 'Entregada');

-- Orden 708
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (708, '2024-03-26', 1761200.00, 'Cancelada', 9, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 708, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 708, 6);

-- Orden 709
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (709, '2024-12-05', 3391500.00, 'Pendiente', 4, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 709, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (673, 709, 'FBV', '000673', 'CUFE00000673', '2024-12-05 12:00:00', 2850000.00, 541500.00, 3391500.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (709, 9, '2024-12-05', 'Calle 140 # 91-39, Palmira', 'Pendiente');

-- Orden 710
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (710, '2024-07-17', 1475600.00, 'Entregada', 12, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 710, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 710, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 240000.00, 710, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 710, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (674, 710, 'FBV', '000674', 'CUFE00000674', '2024-07-17 12:00:00', 1240000.00, 235600.00, 1475600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-17', 1475600.00, 'REF00000569', 'Pagado', 674, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (710, 9, '2024-07-17', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 711
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (711, '2024-10-26', 2671550.00, 'Entregada', 41, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 711, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 711, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 711, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (675, 711, 'FBV', '000675', 'CUFE00000675', '2024-10-26 12:00:00', 2245000.00, 426550.00, 2671550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-26', 2671550.00, 'REF00000570', 'Pendiente', 675, 41);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (711, 3, '2024-10-26', 'Calle 58 # 67-49, Palmira', 'Entregada');

-- Orden 712
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (712, '2024-10-09', 4069800.00, 'Entregada', 36, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 712, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 712, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 712, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (676, 712, 'FBV', '000676', 'CUFE00000676', '2024-10-09 12:00:00', 3420000.00, 649800.00, 4069800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-09', 4069800.00, 'REF00000571', 'Pagado', 676, 36);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (712, 5, '2024-10-09', 'Calle 85 # 46-90, Buenaventura', 'Entregada');

-- Orden 713
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (713, '2024-12-13', 14339500.00, 'Entregada', 10, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 713, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 713, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 713, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 713, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (677, 713, 'FBV', '000677', 'CUFE00000677', '2024-12-13 12:00:00', 12050000.00, 2289500.00, 14339500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-13', 14339500.00, 'REF00000572', 'Pagado', 677, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (713, 8, '2024-12-13', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 714
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (714, '2024-07-13', 2040850.00, 'En Proceso', 10, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 714, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 714, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 714, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 714, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (678, 714, 'FBV', '000678', 'CUFE00000678', '2024-07-13 12:00:00', 1715000.00, 325850.00, 2040850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-13', 2040850.00, 'REF00000573', 'Pendiente', 678, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (714, 12, '2024-07-13', 'Calle 10 # 61-29, Tuluá', 'En Ruta');

-- Orden 715
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (715, '2024-01-15', 7395850.00, 'Entregada', 8, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 715, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 715, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 715, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (679, 715, 'FBV', '000679', 'CUFE00000679', '2024-01-15 12:00:00', 6215000.00, 1180850.00, 7395850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-15', 7395850.00, 'REF00000574', 'Pagado', 679, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (715, 11, '2024-01-15', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 716
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (716, '2024-05-24', 4212600.00, 'Entregada', 6, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 716, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 716, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 716, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 716, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (680, 716, 'FBV', '000680', 'CUFE00000680', '2024-05-24 12:00:00', 3540000.00, 672600.00, 4212600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-05-24', 4212600.00, 'REF00000575', 'Anulado', 680, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (716, 4, '2024-05-24', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 717
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (717, '2024-10-18', 1999200.00, 'Entregada', 46, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 717, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 717, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (681, 717, 'FBV', '000681', 'CUFE00000681', '2024-10-18 12:00:00', 1680000.00, 319200.00, 1999200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-18', 1999200.00, 'REF00000576', 'Pendiente', 681, 46);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (717, 5, '2024-10-18', 'Calle 148 # 76-3, Cali', 'Entregada');

-- Orden 718
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (718, '2024-12-04', 2796500.00, 'En Proceso', 7, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 718, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 718, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 718, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (682, 718, 'FBV', '000682', 'CUFE00000682', '2024-12-04 12:00:00', 2350000.00, 446500.00, 2796500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-04', 2796500.00, 'REF00000577', 'Pendiente', 682, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (718, 6, '2024-12-04', 'Calle 29 # 10-89, Buga', 'En Ruta');

-- Orden 719
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (719, '2024-04-21', 630700.00, 'En Proceso', 5, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 719, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 719, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (683, 719, 'FBV', '000683', 'CUFE00000683', '2024-04-21 12:00:00', 530000.00, 100700.00, 630700.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (719, 10, '2024-04-21', 'Calle 142 # 20-35, Yumbo', 'Pendiente');

-- Orden 720
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (720, '2024-08-21', 4063850.00, 'Entregada', 37, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 720, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 720, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 720, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 720, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (684, 720, 'FBV', '000684', 'CUFE00000684', '2024-08-21 12:00:00', 3415000.00, 648850.00, 4063850.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (720, 3, '2024-08-21', 'Calle 124 # 36-93, Palmira', 'Entregada');

-- Orden 721
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (721, '2024-12-17', 2731050.00, 'En Proceso', 2, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 721, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 721, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 721, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (685, 721, 'FBV', '000685', 'CUFE00000685', '2024-12-17 12:00:00', 2295000.00, 436050.00, 2731050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-17', 2731050.00, 'REF00000578', 'Pendiente', 685, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (721, 3, '2024-12-17', 'Calle 102 # 17-86, Palmira', 'En Ruta');

-- Orden 722
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (722, '2024-06-21', 2475200.00, 'Entregada', 1, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 722, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 380000.00, 722, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 722, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (686, 722, 'FBV', '000686', 'CUFE00000686', '2024-06-21 12:00:00', 2080000.00, 395200.00, 2475200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-21', 2475200.00, 'REF00000579', 'Pagado', 686, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (722, 3, '2024-06-21', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 723
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (723, '2024-04-15', 5468050.00, 'Entregada', 58, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 723, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 723, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 723, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (687, 723, 'FBV', '000687', 'CUFE00000687', '2024-04-15 12:00:00', 4595000.00, 873050.00, 5468050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-04-15', 5468050.00, 'REF00000580', 'Pagado', 687, 58);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (723, 10, '2024-04-15', 'Calle 26 # 57-22, Yumbo', 'Entregada');

-- Orden 724
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (724, '2024-02-03', 589050.00, 'Entregada', 25, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 724, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 724, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (688, 724, 'FBV', '000688', 'CUFE00000688', '2024-02-03 12:00:00', 495000.00, 94050.00, 589050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-02-03', 589050.00, 'REF00000581', 'Pagado', 688, 25);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (724, 2, '2024-02-03', 'Calle 145 # 85-4, Buga', 'Entregada');

-- Orden 725
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (725, '2024-08-22', 7758800.00, 'Entregada', 52, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 725, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 725, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 725, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 725, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (689, 725, 'FBV', '000689', 'CUFE00000689', '2024-08-22 12:00:00', 6520000.00, 1238800.00, 7758800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-08-22', 7758800.00, 'REF00000582', 'Pagado', 689, 52);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (725, 2, '2024-08-22', 'Calle 131 # 96-18, Yumbo', 'Entregada');

-- Orden 726
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (726, '2024-06-04', 101150.00, 'Entregada', 2, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 726, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (690, 726, 'FBV', '000690', 'CUFE00000690', '2024-06-04 12:00:00', 85000.00, 16150.00, 101150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-04', 101150.00, 'REF00000583', 'Pagado', 690, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (726, 14, '2024-06-04', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 727
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (727, '2024-06-01', 1600550.00, 'En Proceso', 1, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 727, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 727, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 727, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (691, 727, 'FBV', '000691', 'CUFE00000691', '2024-06-01 12:00:00', 1345000.00, 255550.00, 1600550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-01', 1600550.00, 'REF00000584', 'Pendiente', 691, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (727, 1, '2024-06-01', 'Calle 104 # 16-73, Buga', 'Pendiente');

-- Orden 728
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (728, '2024-11-17', 5117000.00, 'Entregada', 36, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 728, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 728, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 728, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 728, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (692, 728, 'FBV', '000692', 'CUFE00000692', '2024-11-17 12:00:00', 4300000.00, 817000.00, 5117000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-11-17', 5117000.00, 'REF00000585', 'Pagado', 692, 36);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (728, 14, '2024-11-17', 'Calle 85 # 46-90, Buenaventura', 'No Entregada');

-- Orden 729
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (729, '2024-07-13', 3332000.00, 'En Proceso', 49, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 729, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (693, 729, 'FBV', '000693', 'CUFE00000693', '2024-07-13 12:00:00', 2800000.00, 532000.00, 3332000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-07-13', 3332000.00, 'REF00000586', 'Pendiente', 693, 49);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (729, 12, '2024-07-13', 'Calle 119 # 53-7, Yumbo', 'En Ruta');

-- Orden 730
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (730, '2024-12-16', 618800.00, 'En Proceso', 2, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 730, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (694, 730, 'FBV', '000694', 'CUFE00000694', '2024-12-16 12:00:00', 520000.00, 98800.00, 618800.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (730, 6, '2024-12-16', 'Calle 102 # 17-86, Palmira', 'Pendiente');

-- Orden 731
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (731, '2024-09-10', 1999200.00, 'Entregada', 23, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 731, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 731, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 731, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 731, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (695, 731, 'FBV', '000695', 'CUFE00000695', '2024-09-10 12:00:00', 1680000.00, 319200.00, 1999200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-10', 1999200.00, 'REF00000587', 'Pagado', 695, 23);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (731, 7, '2024-09-10', 'Calle 77 # 97-50, Tuluá', 'Entregada');

-- Orden 732
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (732, '2024-04-03', 8044400.00, 'Entregada', 34, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 5800000.00, 732, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 732, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (696, 732, 'FBV', '000696', 'CUFE00000696', '2024-04-03 12:00:00', 6760000.00, 1284400.00, 8044400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-04-03', 8044400.00, 'REF00000588', 'Pagado', 696, 34);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (732, 13, '2024-04-03', 'Calle 62 # 93-53, Yumbo', 'Entregada');

-- Orden 733
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (733, '2024-07-06', 178500.00, 'Entregada', 20, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 733, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (697, 733, 'FBV', '000697', 'CUFE00000697', '2024-07-06 12:00:00', 150000.00, 28500.00, 178500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-07-06', 178500.00, 'REF00000589', 'Pagado', 697, 20);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (733, 12, '2024-07-06', 'Calle 141 # 58-21, Jamundí', 'Entregada');

-- Orden 734
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (734, '2024-08-20', 1915900.00, 'Entregada', 9, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 734, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 734, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 734, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 734, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (698, 734, 'FBV', '000698', 'CUFE00000698', '2024-08-20 12:00:00', 1610000.00, 305900.00, 1915900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-08-20', 1915900.00, 'REF00000590', 'Pagado', 698, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (734, 4, '2024-08-20', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 735
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (735, '2024-06-19', 2403800.00, 'En Proceso', 42, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 600000.00, 735, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 735, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 735, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (699, 735, 'FBV', '000699', 'CUFE00000699', '2024-06-19 12:00:00', 2020000.00, 383800.00, 2403800.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (735, 5, '2024-06-19', 'Calle 26 # 98-27, Cartago', 'Pendiente');

-- Orden 736
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (736, '2024-10-03', 196350.00, 'Entregada', 3, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 736, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (700, 736, 'FBV', '000700', 'CUFE00000700', '2024-10-03 12:00:00', 165000.00, 31350.00, 196350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-03', 196350.00, 'REF00000591', 'Pagado', 700, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (736, 8, '2024-10-03', 'Calle 19 # 69-28, Palmira', 'No Entregada');

-- Orden 737
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (737, '2024-05-28', 761600.00, 'Entregada', 5, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 737, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (701, 737, 'FBV', '000701', 'CUFE00000701', '2024-05-28 12:00:00', 640000.00, 121600.00, 761600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (737, 7, '2024-05-28', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 738
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (738, '2024-01-16', 2641800.00, 'Entregada', 9, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 738, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 738, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (702, 738, 'FBV', '000702', 'CUFE00000702', '2024-01-16 12:00:00', 2220000.00, 421800.00, 2641800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-01-16', 2641800.00, 'REF00000592', 'Pagado', 702, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (738, 3, '2024-01-16', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 739
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (739, '2024-07-07', 4081700.00, 'En Proceso', 12, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 739, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 739, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 739, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (703, 739, 'FBV', '000703', 'CUFE00000703', '2024-07-07 12:00:00', 3430000.00, 651700.00, 4081700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-07-07', 4081700.00, 'REF00000593', 'Pendiente', 703, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (739, 1, '2024-07-07', 'Calle 112 # 45-94, Cali', 'En Ruta');

-- Orden 740
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (740, '2024-09-11', 2713200.00, 'Entregada', 4, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 740, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 740, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 740, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 740, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (704, 740, 'FBV', '000704', 'CUFE00000704', '2024-09-11 12:00:00', 2280000.00, 433200.00, 2713200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-09-11', 2713200.00, 'REF00000594', 'Pagado', 704, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (740, 2, '2024-09-11', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 741
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (741, '2024-03-04', 499800.00, 'Entregada', 7, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 741, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (705, 741, 'FBV', '000705', 'CUFE00000705', '2024-03-04 12:00:00', 420000.00, 79800.00, 499800.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (741, 6, '2024-03-04', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 742
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (742, '2024-02-21', 3349850.00, 'En Proceso', 10, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 742, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 742, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 240000.00, 742, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 742, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (706, 742, 'FBV', '000706', 'CUFE00000706', '2024-02-21 12:00:00', 2815000.00, 534850.00, 3349850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-21', 3349850.00, 'REF00000595', 'Pendiente', 706, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (742, 1, '2024-02-21', 'Calle 10 # 61-29, Tuluá', 'En Ruta');

-- Orden 743
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (743, '2024-06-09', 1475600.00, 'Pendiente', 55, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 743, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 743, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 743, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (707, 743, 'FBV', '000707', 'CUFE00000707', '2024-06-09 12:00:00', 1240000.00, 235600.00, 1475600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-09', 1475600.00, 'REF00000596', 'Pendiente', 707, 55);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (743, 3, '2024-06-09', 'Calle 99 # 85-84, Cartago', 'Pendiente');

-- Orden 744
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (744, '2024-06-24', 9698500.00, 'Entregada', 8, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 300000.00, 744, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 744, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 744, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 744, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (708, 744, 'FBV', '000708', 'CUFE00000708', '2024-06-24 12:00:00', 8150000.00, 1548500.00, 9698500.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (744, 7, '2024-06-24', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 745
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (745, '2024-11-14', 2374050.00, 'Entregada', 10, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 745, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 745, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 745, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (709, 745, 'FBV', '000709', 'CUFE00000709', '2024-11-14 12:00:00', 1995000.00, 379050.00, 2374050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-11-14', 2374050.00, 'REF00000597', 'Pagado', 709, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (745, 8, '2024-11-14', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 746
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (746, '2024-06-15', 5390700.00, 'Entregada', 51, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1680000.00, 746, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 746, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (710, 746, 'FBV', '000710', 'CUFE00000710', '2024-06-15 12:00:00', 4530000.00, 860700.00, 5390700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-15', 5390700.00, 'REF00000598', 'Pagado', 710, 51);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (746, 7, '2024-06-15', 'Calle 30 # 60-16, Tuluá', 'Entregada');

-- Orden 747
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (747, '2024-06-28', 5021800.00, 'En Proceso', 8, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 747, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 747, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 747, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 747, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (711, 747, 'FBV', '000711', 'CUFE00000711', '2024-06-28 12:00:00', 4220000.00, 801800.00, 5021800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-28', 5021800.00, 'REF00000599', 'Pendiente', 711, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (747, 10, '2024-06-28', 'Calle 11 # 46-27, Buga', 'Pendiente');

-- Orden 748
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (748, '2024-12-19', 6735400.00, 'Pendiente', 7, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 748, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 748, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 748, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 748, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (712, 748, 'FBV', '000712', 'CUFE00000712', '2024-12-19 12:00:00', 5660000.00, 1075400.00, 6735400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-19', 6735400.00, 'REF00000600', 'Pendiente', 712, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (748, 2, '2024-12-19', 'Calle 29 # 10-89, Buga', 'Pendiente');

-- Orden 749
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (749, '2024-12-04', 940100.00, 'Entregada', 12, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 749, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 749, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (713, 749, 'FBV', '000713', 'CUFE00000713', '2024-12-04 12:00:00', 790000.00, 150100.00, 940100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-04', 940100.00, 'REF00000601', 'Pagado', 713, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (749, 11, '2024-12-04', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 750
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (750, '2024-08-06', 1356600.00, 'Entregada', 50, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 750, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (714, 750, 'FBV', '000714', 'CUFE00000714', '2024-08-06 12:00:00', 1140000.00, 216600.00, 1356600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (750, 11, '2024-08-06', 'Calle 141 # 17-37, Buenaventura', 'Entregada');

-- Orden 751
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (751, '2024-09-05', 5319300.00, 'Entregada', 11, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 751, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 751, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (715, 751, 'FBV', '000715', 'CUFE00000715', '2024-09-05 12:00:00', 4470000.00, 849300.00, 5319300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-09-05', 5319300.00, 'REF00000602', 'Anulado', 715, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (751, 3, '2024-09-05', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 752
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (752, '2024-06-09', 3010700.00, 'Entregada', 59, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 752, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 752, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 752, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (716, 752, 'FBV', '000716', 'CUFE00000716', '2024-06-09 12:00:00', 2530000.00, 480700.00, 3010700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-09', 3010700.00, 'REF00000603', 'Pagado', 716, 59);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (752, 12, '2024-06-09', 'Calle 145 # 88-24, Cali', 'Entregada');

-- Orden 753
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (753, '2024-06-02', 1130500.00, 'Entregada', 12, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 753, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (717, 753, 'FBV', '000717', 'CUFE00000717', '2024-06-02 12:00:00', 950000.00, 180500.00, 1130500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-02', 1130500.00, 'REF00000604', 'Pagado', 717, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (753, 8, '2024-06-02', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 754
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (754, '2024-06-26', 5777450.00, 'Entregada', 13, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 754, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 754, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 754, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 754, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (718, 754, 'FBV', '000718', 'CUFE00000718', '2024-06-26 12:00:00', 4855000.00, 922450.00, 5777450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-26', 5777450.00, 'REF00000605', 'Pagado', 718, 13);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (754, 5, '2024-06-26', 'Calle 112 # 1-67, Palmira', 'Entregada');

-- Orden 755
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (755, '2024-11-04', 1761200.00, 'Entregada', 31, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 755, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 755, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (719, 755, 'FBV', '000719', 'CUFE00000719', '2024-11-04 12:00:00', 1480000.00, 281200.00, 1761200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-11-04', 1761200.00, 'REF00000606', 'Pendiente', 719, 31);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (755, 9, '2024-11-04', 'Calle 112 # 23-94, Palmira', 'Entregada');

-- Orden 756
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (756, '2024-09-28', 2969050.00, 'Cancelada', 3, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1280000.00, 756, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 756, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 756, 2);

-- Orden 757
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (757, '2024-09-07', 999600.00, 'Entregada', 8, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 757, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (720, 757, 'FBV', '000720', 'CUFE00000720', '2024-09-07 12:00:00', 840000.00, 159600.00, 999600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-09-07', 999600.00, 'REF00000607', 'Pagado', 720, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (757, 9, '2024-09-07', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 758
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (758, '2024-10-19', 89250.00, 'Pendiente', 9, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 758, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (721, 758, 'FBV', '000721', 'CUFE00000721', '2024-10-19 12:00:00', 75000.00, 14250.00, 89250.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-19', 89250.00, 'REF00000608', 'Pagado', 721, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (758, 3, '2024-10-19', 'Calle 7 # 23-95, Cartago', 'Pendiente');

-- Orden 759
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (759, '2024-10-03', 1790950.00, 'Entregada', 14, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 759, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 759, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 759, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (722, 759, 'FBV', '000722', 'CUFE00000722', '2024-10-03 12:00:00', 1505000.00, 285950.00, 1790950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-03', 1790950.00, 'REF00000609', 'Pagado', 722, 14);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (759, 4, '2024-10-03', 'Calle 81 # 85-16, Tuluá', 'Entregada');

-- Orden 760
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (760, '2024-12-22', 2618000.00, 'Entregada', 1, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 760, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1920000.00, 760, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (723, 760, 'FBV', '000723', 'CUFE00000723', '2024-12-22 12:00:00', 2200000.00, 418000.00, 2618000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-22', 2618000.00, 'REF00000610', 'Pagado', 723, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (760, 13, '2024-12-22', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 761
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (761, '2024-12-22', 2445450.00, 'Entregada', 8, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 761, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 761, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 761, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (724, 761, 'FBV', '000724', 'CUFE00000724', '2024-12-22 12:00:00', 2055000.00, 390450.00, 2445450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-22', 2445450.00, 'REF00000611', 'Pagado', 724, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (761, 14, '2024-12-22', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 762
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (762, '2024-03-23', 3004750.00, 'Entregada', 4, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 762, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 762, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 762, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 762, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (725, 762, 'FBV', '000725', 'CUFE00000725', '2024-03-23 12:00:00', 2525000.00, 479750.00, 3004750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-03-23', 3004750.00, 'REF00000612', 'Pagado', 725, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (762, 10, '2024-03-23', 'Calle 140 # 91-39, Palmira', 'No Entregada');

-- Orden 763
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (763, '2024-06-27', 1356600.00, 'Entregada', 7, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 763, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 763, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (726, 763, 'FBV', '000726', 'CUFE00000726', '2024-06-27 12:00:00', 1140000.00, 216600.00, 1356600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-27', 1356600.00, 'REF00000613', 'Pagado', 726, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (763, 7, '2024-06-27', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 764
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (764, '2024-12-18', 1005550.00, 'Entregada', 6, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 764, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 764, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (727, 764, 'FBV', '000727', 'CUFE00000727', '2024-12-18 12:00:00', 845000.00, 160550.00, 1005550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-18', 1005550.00, 'REF00000614', 'Pagado', 727, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (764, 3, '2024-12-18', 'Calle 24 # 82-55, Tuluá', 'No Entregada');

-- Orden 765
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (765, '2024-08-05', 3808000.00, 'Entregada', 15, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 765, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 765, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 765, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1400000.00, 765, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (728, 765, 'FBV', '000728', 'CUFE00000728', '2024-08-05 12:00:00', 3200000.00, 608000.00, 3808000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-08-05', 3808000.00, 'REF00000615', 'Pagado', 728, 15);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (765, 6, '2024-08-05', 'Calle 50 # 54-86, Jamundí', 'Entregada');

-- Orden 766
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (766, '2024-12-03', 892500.00, 'Entregada', 7, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 766, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 766, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 766, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (729, 766, 'FBV', '000729', 'CUFE00000729', '2024-12-03 12:00:00', 750000.00, 142500.00, 892500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-03', 892500.00, 'REF00000616', 'Pagado', 729, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (766, 3, '2024-12-03', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 767
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (767, '2024-08-08', 612850.00, 'En Proceso', 26, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 767, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 767, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (730, 767, 'FBV', '000730', 'CUFE00000730', '2024-08-08 12:00:00', 515000.00, 97850.00, 612850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-08-08', 612850.00, 'REF00000617', 'Pendiente', 730, 26);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (767, 11, '2024-08-08', 'Calle 87 # 98-49, Buenaventura', 'Pendiente');

-- Orden 768
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (768, '2024-12-24', 2255050.00, 'Entregada', 9, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 768, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 768, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 768, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 768, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (731, 768, 'FBV', '000731', 'CUFE00000731', '2024-12-24 12:00:00', 1895000.00, 360050.00, 2255050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-24', 2255050.00, 'REF00000618', 'Pagado', 731, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (768, 8, '2024-12-24', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 769
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (769, '2024-08-18', 1344700.00, 'Entregada', 58, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 769, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 769, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (732, 769, 'FBV', '000732', 'CUFE00000732', '2024-08-18 12:00:00', 1130000.00, 214700.00, 1344700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-08-18', 1344700.00, 'REF00000619', 'Pagado', 732, 58);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (769, 12, '2024-08-18', 'Calle 26 # 57-22, Yumbo', 'Entregada');

-- Orden 770
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (770, '2024-04-10', 5241950.00, 'Entregada', 6, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 770, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 770, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 770, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 770, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (733, 770, 'FBV', '000733', 'CUFE00000733', '2024-04-10 12:00:00', 4405000.00, 836950.00, 5241950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-04-10', 5241950.00, 'REF00000620', 'Pagado', 733, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (770, 1, '2024-04-10', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 771
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (771, '2024-06-01', 6116600.00, 'Entregada', 11, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 771, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 771, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 771, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (734, 771, 'FBV', '000734', 'CUFE00000734', '2024-06-01 12:00:00', 5140000.00, 976600.00, 6116600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-01', 6116600.00, 'REF00000621', 'Pagado', 734, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (771, 3, '2024-06-01', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 772
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (772, '2024-06-25', 339150.00, 'Entregada', 12, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 772, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (735, 772, 'FBV', '000735', 'CUFE00000735', '2024-06-25 12:00:00', 285000.00, 54150.00, 339150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-25', 339150.00, 'REF00000622', 'Pagado', 735, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (772, 1, '2024-06-25', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 773
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (773, '2024-06-12', 9972200.00, 'Entregada', 2, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 5800000.00, 773, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 773, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 773, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 773, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (736, 773, 'FBV', '000736', 'CUFE00000736', '2024-06-12 12:00:00', 8380000.00, 1592200.00, 9972200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-12', 9972200.00, 'REF00000623', 'Pendiente', 736, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (773, 4, '2024-06-12', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 774
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (774, '2024-09-18', 1023400.00, 'Entregada', 5, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 774, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 774, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (737, 774, 'FBV', '000737', 'CUFE00000737', '2024-09-18 12:00:00', 860000.00, 163400.00, 1023400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-09-18', 1023400.00, 'REF00000624', 'Anulado', 737, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (774, 10, '2024-09-18', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 775
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (775, '2024-11-16', 14410900.00, 'Entregada', 1, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 11200000.00, 775, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 775, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 775, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 775, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (738, 775, 'FBV', '000738', 'CUFE00000738', '2024-11-16 12:00:00', 12110000.00, 2300900.00, 14410900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-11-16', 14410900.00, 'REF00000625', 'Pagado', 738, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (775, 7, '2024-11-16', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 776
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (776, '2024-10-10', 1749300.00, 'Entregada', 47, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 776, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 776, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 776, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (739, 776, 'FBV', '000739', 'CUFE00000739', '2024-10-10 12:00:00', 1470000.00, 279300.00, 1749300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-10', 1749300.00, 'REF00000626', 'Pagado', 739, 47);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (776, 1, '2024-10-10', 'Calle 47 # 75-56, Buga', 'Entregada');

-- Orden 777
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (777, '2024-02-13', 3927000.00, 'En Proceso', 4, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 777, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 777, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (740, 777, 'FBV', '000740', 'CUFE00000740', '2024-02-13 12:00:00', 3300000.00, 627000.00, 3927000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (777, 7, '2024-02-13', 'Calle 140 # 91-39, Palmira', 'En Ruta');

-- Orden 778
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (778, '2024-12-09', 142800.00, 'Entregada', 10, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 778, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (741, 778, 'FBV', '000741', 'CUFE00000741', '2024-12-09 12:00:00', 120000.00, 22800.00, 142800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-09', 142800.00, 'REF00000627', 'Pagado', 741, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (778, 4, '2024-12-09', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 779
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (779, '2024-06-13', 1660050.00, 'Entregada', 17, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 779, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 779, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (742, 779, 'FBV', '000742', 'CUFE00000742', '2024-06-13 12:00:00', 1395000.00, 265050.00, 1660050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-13', 1660050.00, 'REF00000628', 'Pagado', 742, 17);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (779, 12, '2024-06-13', 'Calle 80 # 29-26, Tuluá', 'Entregada');

-- Orden 780
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (780, '2024-01-09', 809200.00, 'Pendiente', 1, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 780, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 780, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 780, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (743, 780, 'FBV', '000743', 'CUFE00000743', '2024-01-09 12:00:00', 680000.00, 129200.00, 809200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-01-09', 809200.00, 'REF00000629', 'Pendiente', 743, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (780, 13, '2024-01-09', 'Calle 104 # 16-73, Buga', 'Pendiente');

-- Orden 781
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (781, '2024-05-09', 1594600.00, 'Entregada', 45, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 781, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 781, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (744, 781, 'FBV', '000744', 'CUFE00000744', '2024-05-09 12:00:00', 1340000.00, 254600.00, 1594600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-05-09', 1594600.00, 'REF00000630', 'Pagado', 744, 45);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (781, 1, '2024-05-09', 'Calle 104 # 35-65, Buga', 'Entregada');

-- Orden 782
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (782, '2024-10-07', 2701300.00, 'Entregada', 2, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 782, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 782, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 782, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 782, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (745, 782, 'FBV', '000745', 'CUFE00000745', '2024-10-07 12:00:00', 2270000.00, 431300.00, 2701300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-10-07', 2701300.00, 'REF00000631', 'Pagado', 745, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (782, 12, '2024-10-07', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 783
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (783, '2024-04-23', 1713600.00, 'Entregada', 55, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 783, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (746, 783, 'FBV', '000746', 'CUFE00000746', '2024-04-23 12:00:00', 1440000.00, 273600.00, 1713600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-04-23', 1713600.00, 'REF00000632', 'Pagado', 746, 55);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (783, 5, '2024-04-23', 'Calle 99 # 85-84, Cartago', 'Entregada');

-- Orden 784
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (784, '2024-06-20', 14512050.00, 'Entregada', 1, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 784, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 784, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 784, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 784, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (747, 784, 'FBV', '000747', 'CUFE00000747', '2024-06-20 12:00:00', 12195000.00, 2317050.00, 14512050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-20', 14512050.00, 'REF00000633', 'Pagado', 747, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (784, 14, '2024-06-20', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 785
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (785, '2024-06-14', 6943650.00, 'Entregada', 12, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 785, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 785, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 785, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (748, 785, 'FBV', '000748', 'CUFE00000748', '2024-06-14 12:00:00', 5835000.00, 1108650.00, 6943650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-14', 6943650.00, 'REF00000634', 'Pagado', 748, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (785, 8, '2024-06-14', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 786
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (786, '2024-08-27', 4165000.00, 'En Proceso', 37, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1120000.00, 786, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 786, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 786, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 786, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (749, 786, 'FBV', '000749', 'CUFE00000749', '2024-08-27 12:00:00', 3500000.00, 665000.00, 4165000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (786, 3, '2024-08-27', 'Calle 124 # 36-93, Palmira', 'Pendiente');

-- Orden 787
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (787, '2024-11-18', 6217750.00, 'Pendiente', 19, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 787, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 787, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 787, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 787, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (750, 787, 'FBV', '000750', 'CUFE00000750', '2024-11-18 12:00:00', 5225000.00, 992750.00, 6217750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-11-18', 6217750.00, 'REF00000635', 'Pagado', 750, 19);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (787, 6, '2024-11-18', 'Calle 32 # 59-18, Palmira', 'Pendiente');

-- Orden 788
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (788, '2024-06-03', 696150.00, 'Entregada', 29, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 788, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 788, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 788, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (751, 788, 'FBV', '000751', 'CUFE00000751', '2024-06-03 12:00:00', 585000.00, 111150.00, 696150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-03', 696150.00, 'REF00000636', 'Pagado', 751, 29);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (788, 13, '2024-06-03', 'Calle 63 # 14-90, Cartago', 'Entregada');

-- Orden 789
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (789, '2024-05-04', 2046800.00, 'Entregada', 2, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 789, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 789, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 789, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (752, 789, 'FBV', '000752', 'CUFE00000752', '2024-05-04 12:00:00', 1720000.00, 326800.00, 2046800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-05-04', 2046800.00, 'REF00000637', 'Pagado', 752, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (789, 14, '2024-05-04', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 790
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (790, '2024-01-23', 12233200.00, 'Entregada', 6, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 790, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 790, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 790, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 790, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (753, 790, 'FBV', '000753', 'CUFE00000753', '2024-01-23 12:00:00', 10280000.00, 1953200.00, 12233200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-01-23', 12233200.00, 'REF00000638', 'Pagado', 753, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (790, 12, '2024-01-23', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 791
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (791, '2024-06-24', 4361350.00, 'Entregada', 48, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 791, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 791, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 791, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 791, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (754, 791, 'FBV', '000754', 'CUFE00000754', '2024-06-24 12:00:00', 3665000.00, 696350.00, 4361350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-24', 4361350.00, 'REF00000639', 'Pendiente', 754, 48);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (791, 14, '2024-06-24', 'Calle 74 # 85-52, Jamundí', 'Entregada');

-- Orden 792
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (792, '2024-07-24', 1237600.00, 'Entregada', 30, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 792, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (755, 792, 'FBV', '000755', 'CUFE00000755', '2024-07-24 12:00:00', 1040000.00, 197600.00, 1237600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-07-24', 1237600.00, 'REF00000640', 'Pagado', 755, 30);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (792, 12, '2024-07-24', 'Calle 18 # 65-83, Cali', 'Entregada');

-- Orden 793
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (793, '2024-03-27', 2742950.00, 'Entregada', 2, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 793, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 793, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 793, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 793, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (756, 793, 'FBV', '000756', 'CUFE00000756', '2024-03-27 12:00:00', 2305000.00, 437950.00, 2742950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-03-27', 2742950.00, 'REF00000641', 'Pagado', 756, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (793, 7, '2024-03-27', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 794
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (794, '2024-03-24', 267750.00, 'Cancelada', 2, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 794, 15);

-- Orden 795
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (795, '2024-12-12', 642600.00, 'Entregada', 15, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 795, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (757, 795, 'FBV', '000757', 'CUFE00000757', '2024-12-12 12:00:00', 540000.00, 102600.00, 642600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-12', 642600.00, 'REF00000642', 'Pagado', 757, 15);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (795, 9, '2024-12-12', 'Calle 50 # 54-86, Jamundí', 'Entregada');

-- Orden 796
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (796, '2024-07-08', 1178100.00, 'Pendiente', 9, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 796, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 796, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (758, 796, 'FBV', '000758', 'CUFE00000758', '2024-07-08 12:00:00', 990000.00, 188100.00, 1178100.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (796, 6, '2024-07-08', 'Calle 7 # 23-95, Cartago', 'Pendiente');

-- Orden 797
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (797, '2024-12-22', 5860750.00, 'Entregada', 9, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 797, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 797, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 797, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 797, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (759, 797, 'FBV', '000759', 'CUFE00000759', '2024-12-22 12:00:00', 4925000.00, 935750.00, 5860750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-22', 5860750.00, 'REF00000643', 'Pagado', 759, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (797, 5, '2024-12-22', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 798
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (798, '2024-04-16', 1005550.00, 'En Proceso', 6, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 798, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 798, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (760, 798, 'FBV', '000760', 'CUFE00000760', '2024-04-16 12:00:00', 845000.00, 160550.00, 1005550.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (798, 3, '2024-04-16', 'Calle 24 # 82-55, Tuluá', 'Pendiente');

-- Orden 799
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (799, '2024-03-25', 1130500.00, 'Entregada', 38, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 799, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (761, 799, 'FBV', '000761', 'CUFE00000761', '2024-03-25 12:00:00', 950000.00, 180500.00, 1130500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-03-25', 1130500.00, 'REF00000644', 'Pagado', 761, 38);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (799, 3, '2024-03-25', 'Calle 4 # 91-69, Tuluá', 'No Entregada');

-- Orden 800
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (800, '2024-06-28', 3938900.00, 'Entregada', 2, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 800, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 800, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 800, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 800, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (762, 800, 'FBV', '000762', 'CUFE00000762', '2024-06-28 12:00:00', 3310000.00, 628900.00, 3938900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-28', 3938900.00, 'REF00000645', 'Pagado', 762, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (800, 12, '2024-06-28', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 801
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (801, '2024-06-01', 452200.00, 'Entregada', 25, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 380000.00, 801, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (763, 801, 'FBV', '000763', 'CUFE00000763', '2024-06-01 12:00:00', 380000.00, 72200.00, 452200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-01', 452200.00, 'REF00000646', 'Pagado', 763, 25);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (801, 8, '2024-06-01', 'Calle 145 # 85-4, Buga', 'Entregada');

-- Orden 802
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (802, '2024-07-11', 3932950.00, 'Pendiente', 6, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 802, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 802, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 802, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 802, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (764, 802, 'FBV', '000764', 'CUFE00000764', '2024-07-11 12:00:00', 3305000.00, 627950.00, 3932950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-11', 3932950.00, 'REF00000647', 'Pagado', 764, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (802, 11, '2024-07-11', 'Calle 24 # 82-55, Tuluá', 'Pendiente');

-- Orden 803
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (803, '2024-04-11', 1642200.00, 'Pendiente', 11, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 803, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 803, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (765, 803, 'FBV', '000765', 'CUFE00000765', '2024-04-11 12:00:00', 1380000.00, 262200.00, 1642200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-04-11', 1642200.00, 'REF00000648', 'Pagado', 765, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (803, 11, '2024-04-11', 'Calle 90 # 83-66, Tuluá', 'Pendiente');

-- Orden 804
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (804, '2024-12-05', 6902000.00, 'En Proceso', 24, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 600000.00, 804, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 804, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 804, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (766, 804, 'FBV', '000766', 'CUFE00000766', '2024-12-05 12:00:00', 5800000.00, 1102000.00, 6902000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-05', 6902000.00, 'REF00000649', 'Pendiente', 766, 24);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (804, 10, '2024-12-05', 'Calle 8 # 50-44, Tuluá', 'En Ruta');

-- Orden 805
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (805, '2024-09-16', 6545000.00, 'Entregada', 4, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 805, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 805, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 805, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 805, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (767, 805, 'FBV', '000767', 'CUFE00000767', '2024-09-16 12:00:00', 5500000.00, 1045000.00, 6545000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-16', 6545000.00, 'REF00000650', 'Pagado', 767, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (805, 11, '2024-09-16', 'Calle 140 # 91-39, Palmira', 'No Entregada');

-- Orden 806
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (806, '2024-06-09', 1915900.00, 'Entregada', 9, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 806, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 806, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 806, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 806, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (768, 806, 'FBV', '000768', 'CUFE00000768', '2024-06-09 12:00:00', 1610000.00, 305900.00, 1915900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-09', 1915900.00, 'REF00000651', 'Pagado', 768, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (806, 5, '2024-06-09', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 807
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (807, '2024-09-07', 833000.00, 'Entregada', 49, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 807, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (769, 807, 'FBV', '000769', 'CUFE00000769', '2024-09-07 12:00:00', 700000.00, 133000.00, 833000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-07', 833000.00, 'REF00000652', 'Pagado', 769, 49);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (807, 2, '2024-09-07', 'Calle 119 # 53-7, Yumbo', 'Entregada');

-- Orden 808
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (808, '2024-08-09', 1636250.00, 'Pendiente', 11, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 808, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 808, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 808, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (770, 808, 'FBV', '000770', 'CUFE00000770', '2024-08-09 12:00:00', 1375000.00, 261250.00, 1636250.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (808, 4, '2024-08-09', 'Calle 90 # 83-66, Tuluá', 'Pendiente');

-- Orden 809
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (809, '2024-02-08', 303450.00, 'En Proceso', 31, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 180000.00, 809, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 809, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (771, 809, 'FBV', '000771', 'CUFE00000771', '2024-02-08 12:00:00', 255000.00, 48450.00, 303450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-02-08', 303450.00, 'REF00000653', 'Pagado', 771, 31);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (809, 5, '2024-02-08', 'Calle 112 # 23-94, Palmira', 'En Ruta');

-- Orden 810
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (810, '2024-04-28', 11923800.00, 'Entregada', 8, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 810, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 810, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 810, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 810, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (772, 810, 'FBV', '000772', 'CUFE00000772', '2024-04-28 12:00:00', 10020000.00, 1903800.00, 11923800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-04-28', 11923800.00, 'REF00000654', 'Pagado', 772, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (810, 7, '2024-04-28', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 811
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (811, '2024-02-27', 8716750.00, 'Entregada', 3, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 811, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 811, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 811, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 811, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (773, 811, 'FBV', '000773', 'CUFE00000773', '2024-02-27 12:00:00', 7325000.00, 1391750.00, 8716750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-02-27', 8716750.00, 'REF00000655', 'Pagado', 773, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (811, 6, '2024-02-27', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 812
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (812, '2024-11-13', 3153500.00, 'Entregada', 8, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 812, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 812, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 812, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (774, 812, 'FBV', '000774', 'CUFE00000774', '2024-11-13 12:00:00', 2650000.00, 503500.00, 3153500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-11-13', 3153500.00, 'REF00000656', 'Pagado', 774, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (812, 2, '2024-11-13', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 813
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (813, '2024-12-12', 595000.00, 'Entregada', 36, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 813, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 813, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (775, 813, 'FBV', '000775', 'CUFE00000775', '2024-12-12 12:00:00', 500000.00, 95000.00, 595000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-12', 595000.00, 'REF00000657', 'Pagado', 775, 36);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (813, 4, '2024-12-12', 'Calle 85 # 46-90, Buenaventura', 'Entregada');

-- Orden 814
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (814, '2024-12-08', 1951600.00, 'Entregada', 5, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 814, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1120000.00, 814, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (776, 814, 'FBV', '000776', 'CUFE00000776', '2024-12-08 12:00:00', 1640000.00, 311600.00, 1951600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-08', 1951600.00, 'REF00000658', 'Pagado', 776, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (814, 7, '2024-12-08', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 815
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (815, '2024-04-26', 333200.00, 'Cancelada', 44, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 815, 3);

-- Orden 816
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (816, '2024-06-25', 3558100.00, 'Entregada', 3, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 816, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 816, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (777, 816, 'FBV', '000777', 'CUFE00000777', '2024-06-25 12:00:00', 2990000.00, 568100.00, 3558100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-25', 3558100.00, 'REF00000659', 'Pagado', 777, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (816, 13, '2024-06-25', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 817
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (817, '2024-03-16', 3016650.00, 'Entregada', 7, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 817, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 817, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (778, 817, 'FBV', '000778', 'CUFE00000778', '2024-03-16 12:00:00', 2535000.00, 481650.00, 3016650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-03-16', 3016650.00, 'REF00000660', 'Pagado', 778, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (817, 1, '2024-03-16', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 818
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (818, '2024-06-01', 14059850.00, 'Entregada', 2, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 818, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 818, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 818, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 818, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (779, 818, 'FBV', '000779', 'CUFE00000779', '2024-06-01 12:00:00', 11815000.00, 2244850.00, 14059850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-01', 14059850.00, 'REF00000661', 'Pagado', 779, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (818, 1, '2024-06-01', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 819
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (819, '2024-01-03', 1999200.00, 'Entregada', 3, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 819, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 819, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 819, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (780, 819, 'FBV', '000780', 'CUFE00000780', '2024-01-03 12:00:00', 1680000.00, 319200.00, 1999200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-03', 1999200.00, 'REF00000662', 'Pagado', 780, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (819, 8, '2024-01-03', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 820
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (820, '2024-11-24', 886550.00, 'Entregada', 39, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 820, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 820, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 820, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (781, 820, 'FBV', '000781', 'CUFE00000781', '2024-11-24 12:00:00', 745000.00, 141550.00, 886550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-11-24', 886550.00, 'REF00000663', 'Pagado', 781, 39);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (820, 12, '2024-11-24', 'Calle 147 # 37-61, Yumbo', 'Entregada');

-- Orden 821
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (821, '2024-03-21', 4670750.00, 'Pendiente', 5, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 821, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 821, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 821, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (782, 821, 'FBV', '000782', 'CUFE00000782', '2024-03-21 12:00:00', 3925000.00, 745750.00, 4670750.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (821, 1, '2024-03-21', 'Calle 142 # 20-35, Yumbo', 'Pendiente');

-- Orden 822
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (822, '2024-06-10', 1558900.00, 'Pendiente', 2, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 822, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 822, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (783, 822, 'FBV', '000783', 'CUFE00000783', '2024-06-10 12:00:00', 1310000.00, 248900.00, 1558900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-10', 1558900.00, 'REF00000664', 'Pagado', 783, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (822, 8, '2024-06-10', 'Calle 102 # 17-86, Palmira', 'Pendiente');

-- Orden 823
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (823, '2024-06-26', 5622750.00, 'Entregada', 1, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 823, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 823, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 823, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (784, 823, 'FBV', '000784', 'CUFE00000784', '2024-06-26 12:00:00', 4725000.00, 897750.00, 5622750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-26', 5622750.00, 'REF00000665', 'Pagado', 784, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (823, 6, '2024-06-26', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 824
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (824, '2024-03-27', 3516450.00, 'Entregada', 60, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 824, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 824, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 824, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 824, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (785, 824, 'FBV', '000785', 'CUFE00000785', '2024-03-27 12:00:00', 2955000.00, 561450.00, 3516450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-03-27', 3516450.00, 'REF00000666', 'Pagado', 785, 60);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (824, 2, '2024-03-27', 'Calle 37 # 30-60, Cartago', 'Entregada');

-- Orden 825
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (825, '2024-08-07', 130900.00, 'Entregada', 8, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 825, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (786, 825, 'FBV', '000786', 'CUFE00000786', '2024-08-07 12:00:00', 110000.00, 20900.00, 130900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-08-07', 130900.00, 'REF00000667', 'Pagado', 786, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (825, 10, '2024-08-07', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 826
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (826, '2024-06-03', 5842900.00, 'Entregada', 49, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 826, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 826, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 826, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (787, 826, 'FBV', '000787', 'CUFE00000787', '2024-06-03 12:00:00', 4910000.00, 932900.00, 5842900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-03', 5842900.00, 'REF00000668', 'Pagado', 787, 49);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (826, 10, '2024-06-03', 'Calle 119 # 53-7, Yumbo', 'Entregada');

-- Orden 827
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (827, '2024-05-20', 940100.00, 'En Proceso', 10, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 827, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 827, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (788, 827, 'FBV', '000788', 'CUFE00000788', '2024-05-20 12:00:00', 790000.00, 150100.00, 940100.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (827, 13, '2024-05-20', 'Calle 10 # 61-29, Tuluá', 'Pendiente');

-- Orden 828
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (828, '2024-05-27', 208250.00, 'Entregada', 30, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 828, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 828, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (789, 828, 'FBV', '000789', 'CUFE00000789', '2024-05-27 12:00:00', 175000.00, 33250.00, 208250.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-05-27', 208250.00, 'REF00000669', 'Pagado', 789, 30);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (828, 5, '2024-05-27', 'Calle 18 # 65-83, Cali', 'Entregada');

-- Orden 829
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (829, '2024-04-20', 1725500.00, 'Entregada', 6, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 829, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (790, 829, 'FBV', '000790', 'CUFE00000790', '2024-04-20 12:00:00', 1450000.00, 275500.00, 1725500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-04-20', 1725500.00, 'REF00000670', 'Pendiente', 790, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (829, 6, '2024-04-20', 'Calle 24 # 82-55, Tuluá', 'No Entregada');

-- Orden 830
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (830, '2024-04-16', 3593800.00, 'Pendiente', 3, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 830, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 830, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 830, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 830, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (791, 830, 'FBV', '000791', 'CUFE00000791', '2024-04-16 12:00:00', 3020000.00, 573800.00, 3593800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-04-16', 3593800.00, 'REF00000671', 'Pendiente', 791, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (830, 6, '2024-04-16', 'Calle 19 # 69-28, Palmira', 'Pendiente');

-- Orden 831
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (831, '2024-06-03', 2546600.00, 'Pendiente', 3, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 831, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 831, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (792, 831, 'FBV', '000792', 'CUFE00000792', '2024-06-03 12:00:00', 2140000.00, 406600.00, 2546600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (831, 9, '2024-06-03', 'Calle 19 # 69-28, Palmira', 'Pendiente');

-- Orden 832
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (832, '2024-08-02', 7854000.00, 'Entregada', 7, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 5800000.00, 832, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 832, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 832, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (793, 832, 'FBV', '000793', 'CUFE00000793', '2024-08-02 12:00:00', 6600000.00, 1254000.00, 7854000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (832, 14, '2024-08-02', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 833
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (833, '2024-07-27', 1088850.00, 'Entregada', 11, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 833, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 833, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (794, 833, 'FBV', '000794', 'CUFE00000794', '2024-07-27 12:00:00', 915000.00, 173850.00, 1088850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-07-27', 1088850.00, 'REF00000672', 'Pagado', 794, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (833, 5, '2024-07-27', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 834
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (834, '2024-12-22', 3796100.00, 'Entregada', 1, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 834, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 834, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 834, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 834, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (795, 834, 'FBV', '000795', 'CUFE00000795', '2024-12-22 12:00:00', 3190000.00, 606100.00, 3796100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-22', 3796100.00, 'REF00000673', 'Pagado', 795, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (834, 5, '2024-12-22', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 835
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (835, '2024-12-05', 1368500.00, 'Entregada', 2, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 835, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 340000.00, 835, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 835, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 835, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (796, 835, 'FBV', '000796', 'CUFE00000796', '2024-12-05 12:00:00', 1150000.00, 218500.00, 1368500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-05', 1368500.00, 'REF00000674', 'Pagado', 796, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (835, 2, '2024-12-05', 'Calle 102 # 17-86, Palmira', 'No Entregada');

-- Orden 836
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (836, '2024-06-13', 571200.00, 'Entregada', 12, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 836, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (797, 836, 'FBV', '000797', 'CUFE00000797', '2024-06-13 12:00:00', 480000.00, 91200.00, 571200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-13', 571200.00, 'REF00000675', 'Pendiente', 797, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (836, 8, '2024-06-13', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 837
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (837, '2024-06-27', 5015850.00, 'Entregada', 39, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 837, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 837, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 837, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 837, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (798, 837, 'FBV', '000798', 'CUFE00000798', '2024-06-27 12:00:00', 4215000.00, 800850.00, 5015850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-27', 5015850.00, 'REF00000676', 'Pagado', 798, 39);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (837, 14, '2024-06-27', 'Calle 147 # 37-61, Yumbo', 'Entregada');

-- Orden 838
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (838, '2024-01-12', 5497800.00, 'En Proceso', 1, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 838, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1400000.00, 838, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 838, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (799, 838, 'FBV', '000799', 'CUFE00000799', '2024-01-12 12:00:00', 4620000.00, 877800.00, 5497800.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (838, 12, '2024-01-12', 'Calle 104 # 16-73, Buga', 'Pendiente');

-- Orden 839
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (839, '2024-12-26', 7413700.00, 'Entregada', 8, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 839, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 839, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 839, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (800, 839, 'FBV', '000800', 'CUFE00000800', '2024-12-26 12:00:00', 6230000.00, 1183700.00, 7413700.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (839, 4, '2024-12-26', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 840
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (840, '2024-12-08', 2665600.00, 'Entregada', 49, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 840, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 180000.00, 840, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 840, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (801, 840, 'FBV', '000801', 'CUFE00000801', '2024-12-08 12:00:00', 2240000.00, 425600.00, 2665600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-08', 2665600.00, 'REF00000677', 'Pagado', 801, 49);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (840, 4, '2024-12-08', 'Calle 119 # 53-7, Yumbo', 'Entregada');

-- Orden 841
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (841, '2024-05-27', 2308600.00, 'Pendiente', 30, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 841, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 841, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 240000.00, 841, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 841, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (802, 841, 'FBV', '000802', 'CUFE00000802', '2024-05-27 12:00:00', 1940000.00, 368600.00, 2308600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-05-27', 2308600.00, 'REF00000678', 'Pendiente', 802, 30);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (841, 2, '2024-05-27', 'Calle 18 # 65-83, Cali', 'Pendiente');

-- Orden 842
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (842, '2024-06-11', 2409750.00, 'Entregada', 1, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 842, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 842, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 842, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 620000.00, 842, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (803, 842, 'FBV', '000803', 'CUFE00000803', '2024-06-11 12:00:00', 2025000.00, 384750.00, 2409750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-11', 2409750.00, 'REF00000679', 'Pagado', 803, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (842, 4, '2024-06-11', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 843
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (843, '2024-03-04', 53550.00, 'Pendiente', 2, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 843, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (804, 843, 'FBV', '000804', 'CUFE00000804', '2024-03-04 12:00:00', 45000.00, 8550.00, 53550.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (843, 2, '2024-03-04', 'Calle 102 # 17-86, Palmira', 'Pendiente');

-- Orden 844
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (844, '2024-06-17', 4117400.00, 'En Proceso', 24, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 844, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 844, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 844, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 844, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (805, 844, 'FBV', '000805', 'CUFE00000805', '2024-06-17 12:00:00', 3460000.00, 657400.00, 4117400.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (844, 9, '2024-06-17', 'Calle 8 # 50-44, Tuluá', 'Pendiente');

-- Orden 845
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (845, '2024-03-11', 3308200.00, 'Entregada', 59, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 845, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 845, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (806, 845, 'FBV', '000806', 'CUFE00000806', '2024-03-11 12:00:00', 2780000.00, 528200.00, 3308200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-03-11', 3308200.00, 'REF00000680', 'Pagado', 806, 59);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (845, 9, '2024-03-11', 'Calle 145 # 88-24, Cali', 'Entregada');

-- Orden 846
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (846, '2024-10-03', 10900400.00, 'Cancelada', 25, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 846, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 846, 18);

-- Orden 847
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (847, '2024-01-12', 4295900.00, 'Entregada', 8, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 847, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 847, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 847, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (807, 847, 'FBV', '000807', 'CUFE00000807', '2024-01-12 12:00:00', 3610000.00, 685900.00, 4295900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-01-12', 4295900.00, 'REF00000681', 'Pagado', 807, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (847, 9, '2024-01-12', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 848
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (848, '2024-11-26', 6967450.00, 'En Proceso', 3, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 848, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 848, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 848, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (808, 848, 'FBV', '000808', 'CUFE00000808', '2024-11-26 12:00:00', 5855000.00, 1112450.00, 6967450.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (848, 6, '2024-11-26', 'Calle 19 # 69-28, Palmira', 'Pendiente');

-- Orden 849
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (849, '2024-06-03', 2118200.00, 'Cancelada', 6, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 849, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 849, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 849, 10);

-- Orden 850
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (850, '2024-08-28', 761600.00, 'Entregada', 50, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 850, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (809, 850, 'FBV', '000809', 'CUFE00000809', '2024-08-28 12:00:00', 640000.00, 121600.00, 761600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-08-28', 761600.00, 'REF00000682', 'Pagado', 809, 50);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (850, 10, '2024-08-28', 'Calle 141 # 17-37, Buenaventura', 'Entregada');

-- Orden 851
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (851, '2024-05-27', 9996000.00, 'En Proceso', 5, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 851, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (810, 851, 'FBV', '000810', 'CUFE00000810', '2024-05-27 12:00:00', 8400000.00, 1596000.00, 9996000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (851, 2, '2024-05-27', 'Calle 142 # 20-35, Yumbo', 'Pendiente');

-- Orden 852
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (852, '2024-01-14', 4099550.00, 'Entregada', 22, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 852, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1920000.00, 852, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 852, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (811, 852, 'FBV', '000811', 'CUFE00000811', '2024-01-14 12:00:00', 3445000.00, 654550.00, 4099550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-01-14', 4099550.00, 'REF00000683', 'Pendiente', 811, 22);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (852, 7, '2024-01-14', 'Calle 17 # 54-53, Palmira', 'Entregada');

-- Orden 853
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (853, '2024-03-21', 1249500.00, 'Pendiente', 2, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 853, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (812, 853, 'FBV', '000812', 'CUFE00000812', '2024-03-21 12:00:00', 1050000.00, 199500.00, 1249500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-03-21', 1249500.00, 'REF00000684', 'Pendiente', 812, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (853, 4, '2024-03-21', 'Calle 102 # 17-86, Palmira', 'Pendiente');

-- Orden 854
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (854, '2024-12-19', 4236400.00, 'En Proceso', 12, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 854, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 854, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (813, 854, 'FBV', '000813', 'CUFE00000813', '2024-12-19 12:00:00', 3560000.00, 676400.00, 4236400.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (854, 9, '2024-12-19', 'Calle 112 # 45-94, Cali', 'En Ruta');

-- Orden 855
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (855, '2024-05-08', 428400.00, 'Entregada', 47, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 855, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (814, 855, 'FBV', '000814', 'CUFE00000814', '2024-05-08 12:00:00', 360000.00, 68400.00, 428400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-05-08', 428400.00, 'REF00000685', 'Pagado', 814, 47);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (855, 7, '2024-05-08', 'Calle 47 # 75-56, Buga', 'Entregada');

-- Orden 856
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (856, '2024-08-27', 53550.00, 'Entregada', 12, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 856, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (815, 856, 'FBV', '000815', 'CUFE00000815', '2024-08-27 12:00:00', 45000.00, 8550.00, 53550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-08-27', 53550.00, 'REF00000686', 'Pagado', 815, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (856, 5, '2024-08-27', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 857
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (857, '2024-12-09', 714000.00, 'Cancelada', 7, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 600000.00, 857, 7);

-- Orden 858
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (858, '2024-04-05', 2856000.00, 'Entregada', 2, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 858, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (816, 858, 'FBV', '000816', 'CUFE00000816', '2024-04-05 12:00:00', 2400000.00, 456000.00, 2856000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-04-05', 2856000.00, 'REF00000687', 'Pagado', 816, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (858, 12, '2024-04-05', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 859
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (859, '2024-06-28', 1207850.00, 'Entregada', 4, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 859, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 859, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (817, 859, 'FBV', '000817', 'CUFE00000817', '2024-06-28 12:00:00', 1015000.00, 192850.00, 1207850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-28', 1207850.00, 'REF00000688', 'Pagado', 817, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (859, 3, '2024-06-28', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 860
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (860, '2024-05-14', 3135650.00, 'Entregada', 8, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 860, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 860, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 2480000.00, 860, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (818, 860, 'FBV', '000818', 'CUFE00000818', '2024-05-14 12:00:00', 2635000.00, 500650.00, 3135650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-05-14', 3135650.00, 'REF00000689', 'Pagado', 818, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (860, 14, '2024-05-14', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 861
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (861, '2024-12-09', 428400.00, 'Entregada', 35, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 861, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 861, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (819, 861, 'FBV', '000819', 'CUFE00000819', '2024-12-09 12:00:00', 360000.00, 68400.00, 428400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-09', 428400.00, 'REF00000690', 'Pagado', 819, 35);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (861, 5, '2024-12-09', 'Calle 57 # 52-89, Buenaventura', 'Entregada');

-- Orden 862
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (862, '2024-02-28', 2998800.00, 'Entregada', 5, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 862, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 862, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 862, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (820, 862, 'FBV', '000820', 'CUFE00000820', '2024-02-28 12:00:00', 2520000.00, 478800.00, 2998800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-02-28', 2998800.00, 'REF00000691', 'Pagado', 820, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (862, 13, '2024-02-28', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 863
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (863, '2024-01-25', 8460900.00, 'Entregada', 3, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 863, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 863, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 863, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 863, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (821, 863, 'FBV', '000821', 'CUFE00000821', '2024-01-25 12:00:00', 7110000.00, 1350900.00, 8460900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-01-25', 8460900.00, 'REF00000692', 'Pagado', 821, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (863, 9, '2024-01-25', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 864
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (864, '2024-06-28', 15559250.00, 'Entregada', 43, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 864, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 11200000.00, 864, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 864, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 864, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (822, 864, 'FBV', '000822', 'CUFE00000822', '2024-06-28 12:00:00', 13075000.00, 2484250.00, 15559250.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-28', 15559250.00, 'REF00000693', 'Pendiente', 822, 43);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (864, 4, '2024-06-28', 'Calle 121 # 38-5, Tuluá', 'Entregada');

-- Orden 865
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (865, '2024-12-15', 838950.00, 'En Proceso', 12, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 865, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 865, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (823, 865, 'FBV', '000823', 'CUFE00000823', '2024-12-15 12:00:00', 705000.00, 133950.00, 838950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-15', 838950.00, 'REF00000694', 'Pendiente', 823, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (865, 9, '2024-12-15', 'Calle 112 # 45-94, Cali', 'Pendiente');

-- Orden 866
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (866, '2024-12-20', 6925800.00, 'Entregada', 2, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 866, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 866, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 866, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (824, 866, 'FBV', '000824', 'CUFE00000824', '2024-12-20 12:00:00', 5820000.00, 1105800.00, 6925800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-20', 6925800.00, 'REF00000695', 'Pagado', 824, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (866, 10, '2024-12-20', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 867
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (867, '2024-02-17', 2903600.00, 'Entregada', 43, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 867, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 867, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 867, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (825, 867, 'FBV', '000825', 'CUFE00000825', '2024-02-17 12:00:00', 2440000.00, 463600.00, 2903600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-02-17', 2903600.00, 'REF00000696', 'Anulado', 825, 43);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (867, 7, '2024-02-17', 'Calle 121 # 38-5, Tuluá', 'Entregada');

-- Orden 868
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (868, '2024-01-06', 696150.00, 'Entregada', 5, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 868, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 868, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (826, 868, 'FBV', '000826', 'CUFE00000826', '2024-01-06 12:00:00', 585000.00, 111150.00, 696150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-01-06', 696150.00, 'REF00000697', 'Pagado', 826, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (868, 3, '2024-01-06', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 869
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (869, '2024-11-25', 2760800.00, 'Entregada', 7, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 869, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 869, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 55000.00, 869, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 869, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (827, 869, 'FBV', '000827', 'CUFE00000827', '2024-11-25 12:00:00', 2320000.00, 440800.00, 2760800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-11-25', 2760800.00, 'REF00000698', 'Pagado', 827, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (869, 10, '2024-11-25', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 870
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (870, '2024-12-09', 10460100.00, 'En Proceso', 4, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 870, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 870, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 870, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (828, 870, 'FBV', '000828', 'CUFE00000828', '2024-12-09 12:00:00', 8790000.00, 1670100.00, 10460100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-09', 10460100.00, 'REF00000699', 'Pendiente', 828, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (870, 7, '2024-12-09', 'Calle 140 # 91-39, Palmira', 'Pendiente');

-- Orden 871
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (871, '2024-05-25', 1130500.00, 'Entregada', 4, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 871, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (829, 871, 'FBV', '000829', 'CUFE00000829', '2024-05-25 12:00:00', 950000.00, 180500.00, 1130500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-05-25', 1130500.00, 'REF00000700', 'Pagado', 829, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (871, 9, '2024-05-25', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 872
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (872, '2024-06-21', 1190000.00, 'Entregada', 10, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 872, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 872, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (830, 872, 'FBV', '000830', 'CUFE00000830', '2024-06-21 12:00:00', 1000000.00, 190000.00, 1190000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-06-21', 1190000.00, 'REF00000701', 'Pagado', 830, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (872, 9, '2024-06-21', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 873
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (873, '2024-07-11', 1475600.00, 'Entregada', 5, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 873, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (831, 873, 'FBV', '000831', 'CUFE00000831', '2024-07-11 12:00:00', 1240000.00, 235600.00, 1475600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-07-11', 1475600.00, 'REF00000702', 'Pagado', 831, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (873, 2, '2024-07-11', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 874
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (874, '2024-11-23', 368900.00, 'Entregada', 3, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 85000.00, 874, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 874, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (832, 874, 'FBV', '000832', 'CUFE00000832', '2024-11-23 12:00:00', 310000.00, 58900.00, 368900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-11-23', 368900.00, 'REF00000703', 'Pagado', 832, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (874, 4, '2024-11-23', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 875
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (875, '2024-11-25', 833000.00, 'Entregada', 1, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 875, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (833, 875, 'FBV', '000833', 'CUFE00000833', '2024-11-25 12:00:00', 700000.00, 133000.00, 833000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-11-25', 833000.00, 'REF00000704', 'Pagado', 833, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (875, 11, '2024-11-25', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 876
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (876, '2024-12-21', 339150.00, 'Entregada', 8, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 876, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (834, 876, 'FBV', '000834', 'CUFE00000834', '2024-12-21 12:00:00', 285000.00, 54150.00, 339150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-21', 339150.00, 'REF00000705', 'Pagado', 834, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (876, 2, '2024-12-21', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 877
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (877, '2024-03-22', 2665600.00, 'Entregada', 10, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 877, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 877, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 877, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 877, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (835, 877, 'FBV', '000835', 'CUFE00000835', '2024-03-22 12:00:00', 2240000.00, 425600.00, 2665600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-03-22', 2665600.00, 'REF00000706', 'Pagado', 835, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (877, 2, '2024-03-22', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 878
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (878, '2024-06-21', 3873450.00, 'Entregada', 43, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 878, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 2480000.00, 878, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 878, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (836, 878, 'FBV', '000836', 'CUFE00000836', '2024-06-21 12:00:00', 3255000.00, 618450.00, 3873450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-21', 3873450.00, 'REF00000707', 'Pagado', 836, 43);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (878, 5, '2024-06-21', 'Calle 121 # 38-5, Tuluá', 'No Entregada');

-- Orden 879
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (879, '2024-12-26', 13328000.00, 'Entregada', 7, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 11200000.00, 879, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (837, 879, 'FBV', '000837', 'CUFE00000837', '2024-12-26 12:00:00', 11200000.00, 2128000.00, 13328000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-26', 13328000.00, 'REF00000708', 'Pagado', 837, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (879, 1, '2024-12-26', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 880
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (880, '2024-11-01', 559300.00, 'En Proceso', 11, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 880, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 880, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (838, 880, 'FBV', '000838', 'CUFE00000838', '2024-11-01 12:00:00', 470000.00, 89300.00, 559300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-11-01', 559300.00, 'REF00000709', 'Pendiente', 838, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (880, 8, '2024-11-01', 'Calle 90 # 83-66, Tuluá', 'Pendiente');

-- Orden 881
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (881, '2024-09-09', 7116200.00, 'Cancelada', 1, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 881, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 881, 16);

-- Orden 882
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (882, '2024-02-09', 339150.00, 'Entregada', 10, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 882, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (839, 882, 'FBV', '000839', 'CUFE00000839', '2024-02-09 12:00:00', 285000.00, 54150.00, 339150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-02-09', 339150.00, 'REF00000710', 'Pagado', 839, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (882, 4, '2024-02-09', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 883
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (883, '2024-03-08', 4093600.00, 'Pendiente', 8, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 883, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 883, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (840, 883, 'FBV', '000840', 'CUFE00000840', '2024-03-08 12:00:00', 3440000.00, 653600.00, 4093600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-03-08', 4093600.00, 'REF00000711', 'Pagado', 840, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (883, 5, '2024-03-08', 'Calle 11 # 46-27, Buga', 'Pendiente');

-- Orden 884
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (884, '2024-12-13', 1987300.00, 'Entregada', 6, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 884, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 884, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 110000.00, 884, 6);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (841, 884, 'FBV', '000841', 'CUFE00000841', '2024-12-13 12:00:00', 1670000.00, 317300.00, 1987300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-13', 1987300.00, 'REF00000712', 'Pagado', 841, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (884, 12, '2024-12-13', 'Calle 24 # 82-55, Tuluá', 'No Entregada');

-- Orden 885
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (885, '2024-06-10', 4224500.00, 'Entregada', 12, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 885, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 885, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 885, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (842, 885, 'FBV', '000842', 'CUFE00000842', '2024-06-10 12:00:00', 3550000.00, 674500.00, 4224500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-10', 4224500.00, 'REF00000713', 'Pagado', 842, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (885, 9, '2024-06-10', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 886
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (886, '2024-12-02', 2159850.00, 'Entregada', 9, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 886, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 886, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 886, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (843, 886, 'FBV', '000843', 'CUFE00000843', '2024-12-02 12:00:00', 1815000.00, 344850.00, 2159850.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-02', 2159850.00, 'REF00000714', 'Pagado', 843, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (886, 3, '2024-12-02', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 887
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (887, '2024-11-03', 4801650.00, 'Entregada', 30, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 887, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 887, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 887, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 887, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (844, 887, 'FBV', '000844', 'CUFE00000844', '2024-11-03 12:00:00', 4035000.00, 766650.00, 4801650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-11-03', 4801650.00, 'REF00000715', 'Pagado', 844, 30);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (887, 4, '2024-11-03', 'Calle 18 # 65-83, Cali', 'No Entregada');

-- Orden 888
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (888, '2024-10-03', 7907550.00, 'Pendiente', 38, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 888, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 888, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 888, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 888, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (845, 888, 'FBV', '000845', 'CUFE00000845', '2024-10-03 12:00:00', 6645000.00, 1262550.00, 7907550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-10-03', 7907550.00, 'REF00000716', 'Pagado', 845, 38);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (888, 7, '2024-10-03', 'Calle 4 # 91-69, Tuluá', 'Pendiente');

-- Orden 889
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (889, '2024-06-14', 1439900.00, 'Entregada', 11, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 889, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 889, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (846, 889, 'FBV', '000846', 'CUFE00000846', '2024-06-14 12:00:00', 1210000.00, 229900.00, 1439900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-14', 1439900.00, 'REF00000717', 'Pagado', 846, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (889, 9, '2024-06-14', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 890
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (890, '2024-12-01', 2927400.00, 'Pendiente', 54, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 890, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 890, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (847, 890, 'FBV', '000847', 'CUFE00000847', '2024-12-01 12:00:00', 2460000.00, 467400.00, 2927400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-01', 2927400.00, 'REF00000718', 'Pagado', 847, 54);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (890, 2, '2024-12-01', 'Calle 140 # 49-59, Buenaventura', 'Pendiente');

-- Orden 891
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (891, '2024-08-04', 660450.00, 'Entregada', 12, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 891, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 891, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (848, 891, 'FBV', '000848', 'CUFE00000848', '2024-08-04 12:00:00', 555000.00, 105450.00, 660450.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-08-04', 660450.00, 'REF00000719', 'Pagado', 848, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (891, 13, '2024-08-04', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 892
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (892, '2024-08-17', 1743350.00, 'Entregada', 51, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 892, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 892, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (849, 892, 'FBV', '000849', 'CUFE00000849', '2024-08-17 12:00:00', 1465000.00, 278350.00, 1743350.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (892, 10, '2024-08-17', 'Calle 30 # 60-16, Tuluá', 'Entregada');

-- Orden 893
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (893, '2024-01-12', 3915100.00, 'Entregada', 51, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 893, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1520000.00, 893, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1680000.00, 893, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (850, 893, 'FBV', '000850', 'CUFE00000850', '2024-01-12 12:00:00', 3290000.00, 625100.00, 3915100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-12', 3915100.00, 'REF00000720', 'Pagado', 850, 51);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (893, 7, '2024-01-12', 'Calle 30 # 60-16, Tuluá', 'Entregada');

-- Orden 894
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (894, '2024-12-02', 3355800.00, 'Entregada', 52, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 894, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 894, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (851, 894, 'FBV', '000851', 'CUFE00000851', '2024-12-02 12:00:00', 2820000.00, 535800.00, 3355800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-02', 3355800.00, 'REF00000721', 'Pagado', 851, 52);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (894, 1, '2024-12-02', 'Calle 131 # 96-18, Yumbo', 'Entregada');

-- Orden 895
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (895, '2024-04-06', 5450200.00, 'En Proceso', 51, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 895, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 895, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 895, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (852, 895, 'FBV', '000852', 'CUFE00000852', '2024-04-06 12:00:00', 4580000.00, 870200.00, 5450200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-04-06', 5450200.00, 'REF00000722', 'Pendiente', 852, 51);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (895, 6, '2024-04-06', 'Calle 30 # 60-16, Tuluá', 'Pendiente');

-- Orden 896
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (896, '2024-12-04', 1237600.00, 'Entregada', 6, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 896, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (853, 896, 'FBV', '000853', 'CUFE00000853', '2024-12-04 12:00:00', 1040000.00, 197600.00, 1237600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-04', 1237600.00, 'REF00000723', 'Pagado', 853, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (896, 11, '2024-12-04', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 897
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (897, '2024-07-14', 3617600.00, 'Entregada', 19, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 897, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 897, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (854, 897, 'FBV', '000854', 'CUFE00000854', '2024-07-14 12:00:00', 3040000.00, 577600.00, 3617600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-07-14', 3617600.00, 'REF00000724', 'Pagado', 854, 19);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (897, 13, '2024-07-14', 'Calle 32 # 59-18, Palmira', 'Entregada');

-- Orden 898
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (898, '2024-11-10', 178500.00, 'Entregada', 15, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 898, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (855, 898, 'FBV', '000855', 'CUFE00000855', '2024-11-10 12:00:00', 150000.00, 28500.00, 178500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-11-10', 178500.00, 'REF00000725', 'Pagado', 855, 15);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (898, 13, '2024-11-10', 'Calle 50 # 54-86, Jamundí', 'Entregada');

-- Orden 899
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (899, '2024-09-27', 3367700.00, 'Entregada', 40, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 899, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 899, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 240000.00, 899, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 899, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (856, 899, 'FBV', '000856', 'CUFE00000856', '2024-09-27 12:00:00', 2830000.00, 537700.00, 3367700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-27', 3367700.00, 'REF00000726', 'Pagado', 856, 40);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (899, 7, '2024-09-27', 'Calle 14 # 20-20, Cali', 'Entregada');

-- Orden 900
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (900, '2024-12-04', 553350.00, 'Entregada', 53, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 900, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 900, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (857, 900, 'FBV', '000857', 'CUFE00000857', '2024-12-04 12:00:00', 465000.00, 88350.00, 553350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-04', 553350.00, 'REF00000727', 'Pagado', 857, 53);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (900, 10, '2024-12-04', 'Calle 73 # 93-39, Cartago', 'No Entregada');

-- Orden 901
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (901, '2024-06-14', 89250.00, 'Cancelada', 12, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 75000.00, 901, 15);

-- Orden 902
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (902, '2024-04-22', 1005550.00, 'Entregada', 10, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 902, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 902, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 902, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (858, 902, 'FBV', '000858', 'CUFE00000858', '2024-04-22 12:00:00', 845000.00, 160550.00, 1005550.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (902, 4, '2024-04-22', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 903
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (903, '2024-08-14', 2130100.00, 'Entregada', 45, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 903, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 903, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (859, 903, 'FBV', '000859', 'CUFE00000859', '2024-08-14 12:00:00', 1790000.00, 340100.00, 2130100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-08-14', 2130100.00, 'REF00000728', 'Pagado', 859, 45);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (903, 3, '2024-08-14', 'Calle 104 # 35-65, Buga', 'Entregada');

-- Orden 904
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (904, '2024-04-18', 2403800.00, 'Entregada', 49, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 904, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 904, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 904, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 904, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (860, 904, 'FBV', '000860', 'CUFE00000860', '2024-04-18 12:00:00', 2020000.00, 383800.00, 2403800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-04-18', 2403800.00, 'REF00000729', 'Pagado', 860, 49);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (904, 2, '2024-04-18', 'Calle 119 # 53-7, Yumbo', 'Entregada');

-- Orden 905
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (905, '2024-12-06', 1451800.00, 'Entregada', 38, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 905, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 905, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (861, 905, 'FBV', '000861', 'CUFE00000861', '2024-12-06 12:00:00', 1220000.00, 231800.00, 1451800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-06', 1451800.00, 'REF00000730', 'Pendiente', 861, 38);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (905, 1, '2024-12-06', 'Calle 4 # 91-69, Tuluá', 'Entregada');

-- Orden 906
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (906, '2024-02-22', 2879800.00, 'Entregada', 9, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 906, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 906, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 906, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (862, 906, 'FBV', '000862', 'CUFE00000862', '2024-02-22 12:00:00', 2420000.00, 459800.00, 2879800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-22', 2879800.00, 'REF00000731', 'Pagado', 862, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (906, 12, '2024-02-22', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 907
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (907, '2024-07-28', 5979750.00, 'Entregada', 39, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 907, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 907, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 907, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 907, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (863, 907, 'FBV', '000863', 'CUFE00000863', '2024-07-28 12:00:00', 5025000.00, 954750.00, 5979750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-07-28', 5979750.00, 'REF00000732', 'Pagado', 863, 39);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (907, 3, '2024-07-28', 'Calle 147 # 37-61, Yumbo', 'Entregada');

-- Orden 908
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (908, '2024-08-12', 1356600.00, 'Entregada', 12, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 908, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (864, 908, 'FBV', '000864', 'CUFE00000864', '2024-08-12 12:00:00', 1140000.00, 216600.00, 1356600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-08-12', 1356600.00, 'REF00000733', 'Pagado', 864, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (908, 12, '2024-08-12', 'Calle 112 # 45-94, Cali', 'No Entregada');

-- Orden 909
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (909, '2024-08-25', 1499400.00, 'En Proceso', 14, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 909, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (865, 909, 'FBV', '000865', 'CUFE00000865', '2024-08-25 12:00:00', 1260000.00, 239400.00, 1499400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-08-25', 1499400.00, 'REF00000734', 'Pagado', 865, 14);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (909, 13, '2024-08-25', 'Calle 81 # 85-16, Tuluá', 'En Ruta');

-- Orden 910
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (910, '2024-12-11', 4819500.00, 'Entregada', 51, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 910, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 910, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (866, 910, 'FBV', '000866', 'CUFE00000866', '2024-12-11 12:00:00', 4050000.00, 769500.00, 4819500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-11', 4819500.00, 'REF00000735', 'Pagado', 866, 51);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (910, 2, '2024-12-11', 'Calle 30 # 60-16, Tuluá', 'Entregada');

-- Orden 911
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (911, '2024-02-06', 160650.00, 'Entregada', 12, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 911, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (867, 911, 'FBV', '000867', 'CUFE00000867', '2024-02-06 12:00:00', 135000.00, 25650.00, 160650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-06', 160650.00, 'REF00000736', 'Pagado', 867, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (911, 10, '2024-02-06', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 912
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (912, '2024-04-15', 2998800.00, 'Entregada', 7, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 912, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 912, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 912, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (868, 912, 'FBV', '000868', 'CUFE00000868', '2024-04-15 12:00:00', 2520000.00, 478800.00, 2998800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-04-15', 2998800.00, 'REF00000737', 'Pagado', 868, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (912, 6, '2024-04-15', 'Calle 29 # 10-89, Buga', 'No Entregada');

-- Orden 913
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (913, '2024-01-15', 3379600.00, 'Entregada', 5, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1280000.00, 913, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 913, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 913, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (869, 913, 'FBV', '000869', 'CUFE00000869', '2024-01-15 12:00:00', 2840000.00, 539600.00, 3379600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-01-15', 3379600.00, 'REF00000738', 'Pagado', 869, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (913, 5, '2024-01-15', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 914
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (914, '2024-12-27', 1297100.00, 'Entregada', 12, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 914, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 914, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (870, 914, 'FBV', '000870', 'CUFE00000870', '2024-12-27 12:00:00', 1090000.00, 207100.00, 1297100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-27', 1297100.00, 'REF00000739', 'Pagado', 870, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (914, 3, '2024-12-27', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 915
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (915, '2024-06-27', 1618400.00, 'Entregada', 5, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 915, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 915, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (871, 915, 'FBV', '000871', 'CUFE00000871', '2024-06-27 12:00:00', 1360000.00, 258400.00, 1618400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-27', 1618400.00, 'REF00000740', 'Pagado', 871, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (915, 12, '2024-06-27', 'Calle 142 # 20-35, Yumbo', 'No Entregada');

-- Orden 916
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (916, '2024-12-04', 1499400.00, 'Entregada', 7, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 916, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (872, 916, 'FBV', '000872', 'CUFE00000872', '2024-12-04 12:00:00', 1260000.00, 239400.00, 1499400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-04', 1499400.00, 'REF00000741', 'Pagado', 872, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (916, 7, '2024-12-04', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 917
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (917, '2024-03-22', 1535100.00, 'En Proceso', 7, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 917, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 917, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (873, 917, 'FBV', '000873', 'CUFE00000873', '2024-03-22 12:00:00', 1290000.00, 245100.00, 1535100.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (917, 1, '2024-03-22', 'Calle 29 # 10-89, Buga', 'En Ruta');

-- Orden 918
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (918, '2024-09-13', 1856400.00, 'Entregada', 51, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 918, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (874, 918, 'FBV', '000874', 'CUFE00000874', '2024-09-13 12:00:00', 1560000.00, 296400.00, 1856400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-09-13', 1856400.00, 'REF00000742', 'Pagado', 874, 51);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (918, 8, '2024-09-13', 'Calle 30 # 60-16, Tuluá', 'Entregada');

-- Orden 919
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (919, '2024-12-18', 3653300.00, 'Entregada', 22, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 919, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 919, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 919, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (875, 919, 'FBV', '000875', 'CUFE00000875', '2024-12-18 12:00:00', 3070000.00, 583300.00, 3653300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-18', 3653300.00, 'REF00000743', 'Pagado', 875, 22);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (919, 8, '2024-12-18', 'Calle 17 # 54-53, Palmira', 'Entregada');

-- Orden 920
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (920, '2024-09-18', 1719550.00, 'Entregada', 18, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 920, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 920, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 920, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (876, 920, 'FBV', '000876', 'CUFE00000876', '2024-09-18 12:00:00', 1445000.00, 274550.00, 1719550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-09-18', 1719550.00, 'REF00000744', 'Pagado', 876, 18);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (920, 14, '2024-09-18', 'Calle 127 # 52-32, Buenaventura', 'Entregada');

-- Orden 921
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (921, '2024-11-02', 4266150.00, 'Entregada', 55, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 921, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 921, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 921, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 180000.00, 921, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (877, 921, 'FBV', '000877', 'CUFE00000877', '2024-11-02 12:00:00', 3585000.00, 681150.00, 4266150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-11-02', 4266150.00, 'REF00000745', 'Pendiente', 877, 55);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (921, 8, '2024-11-02', 'Calle 99 # 85-84, Cartago', 'Entregada');

-- Orden 922
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (922, '2024-09-15', 5914300.00, 'Entregada', 17, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 922, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 922, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 922, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 922, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (878, 922, 'FBV', '000878', 'CUFE00000878', '2024-09-15 12:00:00', 4970000.00, 944300.00, 5914300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-09-15', 5914300.00, 'REF00000746', 'Anulado', 878, 17);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (922, 9, '2024-09-15', 'Calle 80 # 29-26, Tuluá', 'Entregada');

-- Orden 923
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (923, '2024-03-21', 4438700.00, 'En Proceso', 7, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 923, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 923, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 923, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (879, 923, 'FBV', '000879', 'CUFE00000879', '2024-03-21 12:00:00', 3730000.00, 708700.00, 4438700.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (923, 1, '2024-03-21', 'Calle 29 # 10-89, Buga', 'Pendiente');

-- Orden 924
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (924, '2024-12-06', 5164600.00, 'En Proceso', 3, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 924, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 924, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 924, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (880, 924, 'FBV', '000880', 'CUFE00000880', '2024-12-06 12:00:00', 4340000.00, 824600.00, 5164600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (924, 2, '2024-12-06', 'Calle 19 # 69-28, Palmira', 'En Ruta');

-- Orden 925
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (925, '2024-10-28', 11019400.00, 'Entregada', 12, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 925, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 925, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 925, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 925, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (881, 925, 'FBV', '000881', 'CUFE00000881', '2024-10-28 12:00:00', 9260000.00, 1759400.00, 11019400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-28', 11019400.00, 'REF00000747', 'Pagado', 881, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (925, 3, '2024-10-28', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 926
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (926, '2024-08-13', 5337150.00, 'Pendiente', 3, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 926, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 926, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (882, 926, 'FBV', '000882', 'CUFE00000882', '2024-08-13 12:00:00', 4485000.00, 852150.00, 5337150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-08-13', 5337150.00, 'REF00000748', 'Pagado', 882, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (926, 12, '2024-08-13', 'Calle 19 # 69-28, Palmira', 'Pendiente');

-- Orden 927
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (927, '2024-01-21', 10614800.00, 'Entregada', 7, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 927, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 927, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 927, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (883, 927, 'FBV', '000883', 'CUFE00000883', '2024-01-21 12:00:00', 8920000.00, 1694800.00, 10614800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-01-21', 10614800.00, 'REF00000749', 'Pagado', 883, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (927, 7, '2024-01-21', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 928
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (928, '2024-02-16', 2070600.00, 'Entregada', 49, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 928, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 928, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (884, 928, 'FBV', '000884', 'CUFE00000884', '2024-02-16 12:00:00', 1740000.00, 330600.00, 2070600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-02-16', 2070600.00, 'REF00000750', 'Pagado', 884, 49);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (928, 2, '2024-02-16', 'Calle 119 # 53-7, Yumbo', 'Entregada');

-- Orden 929
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (929, '2024-06-15', 2058700.00, 'Entregada', 6, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 600000.00, 929, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 929, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 929, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (885, 929, 'FBV', '000885', 'CUFE00000885', '2024-06-15 12:00:00', 1730000.00, 328700.00, 2058700.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (929, 7, '2024-06-15', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 930
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (930, '2024-12-09', 975800.00, 'Cancelada', 1, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 930, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 930, 10);

-- Orden 931
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (931, '2024-07-18', 1320900.00, 'Entregada', 13, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 931, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 931, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (886, 931, 'FBV', '000886', 'CUFE00000886', '2024-07-18 12:00:00', 1110000.00, 210900.00, 1320900.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-18', 1320900.00, 'REF00000751', 'Pagado', 886, 13);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (931, 2, '2024-07-18', 'Calle 112 # 1-67, Palmira', 'Entregada');

-- Orden 932
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (932, '2024-12-25', 5176500.00, 'Entregada', 10, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 932, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (887, 932, 'FBV', '000887', 'CUFE00000887', '2024-12-25 12:00:00', 4350000.00, 826500.00, 5176500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-25', 5176500.00, 'REF00000752', 'Pagado', 887, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (932, 11, '2024-12-25', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 933
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (933, '2024-10-17', 10971800.00, 'Entregada', 3, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 933, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 933, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 933, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (888, 933, 'FBV', '000888', 'CUFE00000888', '2024-10-17 12:00:00', 9220000.00, 1751800.00, 10971800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-17', 10971800.00, 'REF00000753', 'Pagado', 888, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (933, 3, '2024-10-17', 'Calle 19 # 69-28, Palmira', 'No Entregada');

-- Orden 934
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (934, '2024-06-11', 1142400.00, 'Entregada', 31, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 934, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (889, 934, 'FBV', '000889', 'CUFE00000889', '2024-06-11 12:00:00', 960000.00, 182400.00, 1142400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-11', 1142400.00, 'REF00000754', 'Pagado', 889, 31);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (934, 9, '2024-06-11', 'Calle 112 # 23-94, Palmira', 'Entregada');

-- Orden 935
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (935, '2024-03-27', 5176500.00, 'Pendiente', 54, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 935, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (890, 935, 'FBV', '000890', 'CUFE00000890', '2024-03-27 12:00:00', 4350000.00, 826500.00, 5176500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-03-27', 5176500.00, 'REF00000755', 'Pagado', 890, 54);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (935, 9, '2024-03-27', 'Calle 140 # 49-59, Buenaventura', 'Pendiente');

-- Orden 936
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (936, '2024-06-24', 214200.00, 'Entregada', 11, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 936, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (891, 936, 'FBV', '000891', 'CUFE00000891', '2024-06-24 12:00:00', 180000.00, 34200.00, 214200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-06-24', 214200.00, 'REF00000756', 'Pagado', 891, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (936, 4, '2024-06-24', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 937
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (937, '2024-12-23', 910350.00, 'Cancelada', 3, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 937, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 937, 15);

-- Orden 938
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (938, '2024-03-28', 1499400.00, 'Entregada', 21, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1200000.00, 938, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 60000.00, 938, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (892, 938, 'FBV', '000892', 'CUFE00000892', '2024-03-28 12:00:00', 1260000.00, 239400.00, 1499400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-03-28', 1499400.00, 'REF00000757', 'Pendiente', 892, 21);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (938, 3, '2024-03-28', 'Calle 113 # 10-92, Yumbo', 'Entregada');

-- Orden 939
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (939, '2024-08-27', 2249100.00, 'Entregada', 3, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 939, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 939, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 939, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (893, 939, 'FBV', '000893', 'CUFE00000893', '2024-08-27 12:00:00', 1890000.00, 359100.00, 2249100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-08-27', 2249100.00, 'REF00000758', 'Pagado', 893, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (939, 2, '2024-08-27', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 940
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (940, '2024-10-22', 4212600.00, 'Entregada', 8, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 940, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 940, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (894, 940, 'FBV', '000894', 'CUFE00000894', '2024-10-22 12:00:00', 3540000.00, 672600.00, 4212600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-22', 4212600.00, 'REF00000759', 'Pagado', 894, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (940, 8, '2024-10-22', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 941
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (941, '2024-08-17', 5646550.00, 'En Proceso', 6, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 941, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 941, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 941, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 941, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (895, 941, 'FBV', '000895', 'CUFE00000895', '2024-08-17 12:00:00', 4745000.00, 901550.00, 5646550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-08-17', 5646550.00, 'REF00000760', 'Pendiente', 895, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (941, 1, '2024-08-17', 'Calle 24 # 82-55, Tuluá', 'Pendiente');

-- Orden 942
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (942, '2024-12-11', 3593800.00, 'Entregada', 54, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 942, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 942, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (896, 942, 'FBV', '000896', 'CUFE00000896', '2024-12-11 12:00:00', 3020000.00, 573800.00, 3593800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-11', 3593800.00, 'REF00000761', 'Anulado', 896, 54);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (942, 10, '2024-12-11', 'Calle 140 # 49-59, Buenaventura', 'Entregada');

-- Orden 943
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (943, '2024-05-18', 1987300.00, 'Entregada', 2, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 943, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 943, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (897, 943, 'FBV', '000897', 'CUFE00000897', '2024-05-18 12:00:00', 1670000.00, 317300.00, 1987300.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (943, 13, '2024-05-18', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 944
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (944, '2024-06-21', 1457750.00, 'Entregada', 8, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 944, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 944, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 944, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 944, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (898, 944, 'FBV', '000898', 'CUFE00000898', '2024-06-21 12:00:00', 1225000.00, 232750.00, 1457750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-21', 1457750.00, 'REF00000762', 'Pagado', 898, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (944, 11, '2024-06-21', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 945
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (945, '2024-08-15', 1725500.00, 'Entregada', 1, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 945, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (899, 945, 'FBV', '000899', 'CUFE00000899', '2024-08-15 12:00:00', 1450000.00, 275500.00, 1725500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-08-15', 1725500.00, 'REF00000763', 'Pagado', 899, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (945, 8, '2024-08-15', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 946
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (946, '2024-12-17', 1178100.00, 'Entregada', 3, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 946, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 946, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (900, 946, 'FBV', '000900', 'CUFE00000900', '2024-12-17 12:00:00', 990000.00, 188100.00, 1178100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-17', 1178100.00, 'REF00000764', 'Pagado', 900, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (946, 6, '2024-12-17', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 947
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (947, '2024-07-20', 5200300.00, 'En Proceso', 5, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 947, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 947, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 947, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 947, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (901, 947, 'FBV', '000901', 'CUFE00000901', '2024-07-20 12:00:00', 4370000.00, 830300.00, 5200300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-07-20', 5200300.00, 'REF00000765', 'Pagado', 901, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (947, 1, '2024-07-20', 'Calle 142 # 20-35, Yumbo', 'Pendiente');

-- Orden 948
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (948, '2024-05-10', 8068200.00, 'Entregada', 4, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 948, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 948, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 948, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 948, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (902, 948, 'FBV', '000902', 'CUFE00000902', '2024-05-10 12:00:00', 6780000.00, 1288200.00, 8068200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-05-10', 8068200.00, 'REF00000766', 'Pagado', 902, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (948, 9, '2024-05-10', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 949
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (949, '2024-09-03', 5081300.00, 'Entregada', 21, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 949, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 949, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 450000.00, 949, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 949, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (903, 949, 'FBV', '000903', 'CUFE00000903', '2024-09-03 12:00:00', 4270000.00, 811300.00, 5081300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-09-03', 5081300.00, 'REF00000767', 'Pagado', 903, 21);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (949, 13, '2024-09-03', 'Calle 113 # 10-92, Yumbo', 'Entregada');

-- Orden 950
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (950, '2024-02-06', 2421650.00, 'Entregada', 19, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 950, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 950, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 190000.00, 950, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 950, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (904, 950, 'FBV', '000904', 'CUFE00000904', '2024-02-06 12:00:00', 2035000.00, 386650.00, 2421650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-02-06', 2421650.00, 'REF00000768', 'Pendiente', 904, 19);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (950, 3, '2024-02-06', 'Calle 32 # 59-18, Palmira', 'Entregada');

-- Orden 951
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (951, '2024-07-15', 380800.00, 'Pendiente', 20, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 951, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 150000.00, 951, 7);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (905, 951, 'FBV', '000905', 'CUFE00000905', '2024-07-15 12:00:00', 320000.00, 60800.00, 380800.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (951, 14, '2024-07-15', 'Calle 141 # 58-21, Jamundí', 'Pendiente');

-- Orden 952
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (952, '2024-09-10', 339150.00, 'En Proceso', 12, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 952, 5);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (906, 952, 'FBV', '000906', 'CUFE00000906', '2024-09-10 12:00:00', 285000.00, 54150.00, 339150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-09-10', 339150.00, 'REF00000769', 'Pagado', 906, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (952, 12, '2024-09-10', 'Calle 112 # 45-94, Cali', 'Pendiente');

-- Orden 953
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (953, '2024-12-28', 886550.00, 'Entregada', 10, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 285000.00, 953, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 340000.00, 953, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 953, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (907, 953, 'FBV', '000907', 'CUFE00000907', '2024-12-28 12:00:00', 745000.00, 141550.00, 886550.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-28', 886550.00, 'REF00000770', 'Pagado', 907, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (953, 14, '2024-12-28', 'Calle 10 # 61-29, Tuluá', 'Entregada');

-- Orden 954
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (954, '2024-04-22', 2147950.00, 'Entregada', 30, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 954, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 950000.00, 954, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 760000.00, 954, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (908, 954, 'FBV', '000908', 'CUFE00000908', '2024-04-22 12:00:00', 1805000.00, 342950.00, 2147950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-04-22', 2147950.00, 'REF00000771', 'Pagado', 908, 30);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (954, 1, '2024-04-22', 'Calle 18 # 65-83, Cali', 'Entregada');

-- Orden 955
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (955, '2024-12-07', 1279250.00, 'En Proceso', 6, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 955, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 955, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 955, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (909, 955, 'FBV', '000909', 'CUFE00000909', '2024-12-07 12:00:00', 1075000.00, 204250.00, 1279250.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (955, 7, '2024-12-07', 'Calle 24 # 82-55, Tuluá', 'En Ruta');

-- Orden 956
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (956, '2024-10-03', 428400.00, 'Entregada', 8, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 956, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (910, 956, 'FBV', '000910', 'CUFE00000910', '2024-10-03 12:00:00', 360000.00, 68400.00, 428400.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (956, 1, '2024-10-03', 'Calle 11 # 46-27, Buga', 'No Entregada');

-- Orden 957
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (957, '2024-12-27', 160650.00, 'Pendiente', 5, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 135000.00, 957, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (911, 957, 'FBV', '000911', 'CUFE00000911', '2024-12-27 12:00:00', 135000.00, 25650.00, 160650.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-27', 160650.00, 'REF00000772', 'Pagado', 911, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (957, 6, '2024-12-27', 'Calle 142 # 20-35, Yumbo', 'Pendiente');

-- Orden 958
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (958, '2024-12-13', 4379200.00, 'Cancelada', 11, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 958, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 958, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 958, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 958, 3);

-- Orden 959
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (959, '2024-02-27', 3938900.00, 'En Proceso', 9, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 959, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 350000.00, 959, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1280000.00, 959, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 960000.00, 959, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (912, 959, 'FBV', '000912', 'CUFE00000912', '2024-02-27 12:00:00', 3310000.00, 628900.00, 3938900.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (959, 11, '2024-02-27', 'Calle 7 # 23-95, Cartago', 'Pendiente');

-- Orden 960
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (960, '2024-12-16', 3332000.00, 'Entregada', 5, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 960, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (913, 960, 'FBV', '000913', 'CUFE00000913', '2024-12-16 12:00:00', 2800000.00, 532000.00, 3332000.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (960, 7, '2024-12-16', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 961
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (961, '2024-02-11', 3451000.00, 'En Proceso', 40, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 961, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 961, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 961, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 480000.00, 961, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (914, 961, 'FBV', '000914', 'CUFE00000914', '2024-02-11 12:00:00', 2900000.00, 551000.00, 3451000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-02-11', 3451000.00, 'REF00000773', 'Pendiente', 914, 40);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (961, 1, '2024-02-11', 'Calle 14 # 20-20, Cali', 'En Ruta');

-- Orden 962
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (962, '2024-10-01', 13732600.00, 'Entregada', 4, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 220000.00, 962, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 962, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 8400000.00, 962, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 520000.00, 962, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (915, 962, 'FBV', '000915', 'CUFE00000915', '2024-10-01 12:00:00', 11540000.00, 2192600.00, 13732600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-10-01', 13732600.00, 'REF00000774', 'Pagado', 915, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (962, 7, '2024-10-01', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 963
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (963, '2024-03-26', 6223700.00, 'Pendiente', 11, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 963, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 963, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 963, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 963, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (916, 963, 'FBV', '000916', 'CUFE00000916', '2024-03-26 12:00:00', 5230000.00, 993700.00, 6223700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-03-26', 6223700.00, 'REF00000775', 'Pagado', 916, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (963, 10, '2024-03-26', 'Calle 90 # 83-66, Tuluá', 'Pendiente');

-- Orden 964
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (964, '2024-02-11', 666400.00, 'Entregada', 8, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 964, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (917, 964, 'FBV', '000917', 'CUFE00000917', '2024-02-11 12:00:00', 560000.00, 106400.00, 666400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-02-11', 666400.00, 'REF00000776', 'Pagado', 917, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (964, 12, '2024-02-11', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 965
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (965, '2024-05-08', 3391500.00, 'Entregada', 21, 1, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 965, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (918, 965, 'FBV', '000918', 'CUFE00000918', '2024-05-08 12:00:00', 2850000.00, 541500.00, 3391500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-05-08', 3391500.00, 'REF00000777', 'Pagado', 918, 21);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (965, 1, '2024-05-08', 'Calle 113 # 10-92, Yumbo', 'Entregada');

-- Orden 966
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (966, '2024-03-09', 2261000.00, 'Entregada', 6, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 966, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (919, 966, 'FBV', '000919', 'CUFE00000919', '2024-03-09 12:00:00', 1900000.00, 361000.00, 2261000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-03-09', 2261000.00, 'REF00000778', 'Pagado', 919, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (966, 2, '2024-03-09', 'Calle 24 # 82-55, Tuluá', 'No Entregada');

-- Orden 967
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (967, '2024-09-07', 1951600.00, 'Entregada', 12, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 320000.00, 967, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 967, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 967, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 120000.00, 967, 10);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (920, 967, 'FBV', '000920', 'CUFE00000920', '2024-09-07 12:00:00', 1640000.00, 311600.00, 1951600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-09-07', 1951600.00, 'REF00000779', 'Pagado', 920, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (967, 8, '2024-09-07', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 968
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (968, '2024-04-23', 4355400.00, 'Cancelada', 8, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 968, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 170000.00, 968, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 968, 4);

-- Orden 969
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (969, '2024-06-17', 1475600.00, 'Entregada', 1, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 969, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 280000.00, 969, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (921, 969, 'FBV', '000921', 'CUFE00000921', '2024-06-17 12:00:00', 1240000.00, 235600.00, 1475600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-17', 1475600.00, 'REF00000780', 'Pagado', 921, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (969, 3, '2024-06-17', 'Calle 104 # 16-73, Buga', 'Entregada');

-- Orden 970
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (970, '2024-11-08', 2522800.00, 'Entregada', 52, 13, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 95000.00, 970, 5);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 960000.00, 970, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 970, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 970, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (922, 970, 'FBV', '000922', 'CUFE00000922', '2024-11-08 12:00:00', 2120000.00, 402800.00, 2522800.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (970, 13, '2024-11-08', 'Calle 131 # 96-18, Yumbo', 'No Entregada');

-- Orden 971
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (971, '2024-03-25', 2213400.00, 'Entregada', 6, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1560000.00, 971, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 971, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 45000.00, 971, 8);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (923, 971, 'FBV', '000923', 'CUFE00000923', '2024-03-25 12:00:00', 1860000.00, 353400.00, 2213400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-03-25', 2213400.00, 'REF00000781', 'Pagado', 923, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (971, 11, '2024-03-25', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 972
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (972, '2024-09-27', 2760800.00, 'En Proceso', 6, 8, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 420000.00, 972, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 972, 19);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (924, 972, 'FBV', '000924', 'CUFE00000924', '2024-09-27 12:00:00', 2320000.00, 440800.00, 2760800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-09-27', 2760800.00, 'REF00000782', 'Pendiente', 924, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (972, 8, '2024-09-27', 'Calle 24 # 82-55, Tuluá', 'Pendiente');

-- Orden 973
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (973, '2024-08-14', 1767150.00, 'Entregada', 28, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 973, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 973, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (925, 973, 'FBV', '000925', 'CUFE00000925', '2024-08-14 12:00:00', 1485000.00, 282150.00, 1767150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-08-14', 1767150.00, 'REF00000783', 'Pagado', 925, 28);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (973, 5, '2024-08-14', 'Calle 30 # 21-40, Buenaventura', 'Entregada');

-- Orden 974
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (974, '2024-05-26', 7401800.00, 'Entregada', 16, 4, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 974, 4);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 974, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 974, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 974, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (926, 974, 'FBV', '000926', 'CUFE00000926', '2024-05-26 12:00:00', 6220000.00, 1181800.00, 7401800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-05-26', 7401800.00, 'REF00000784', 'Pagado', 926, 16);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (974, 4, '2024-05-26', 'Calle 54 # 56-75, Yumbo', 'Entregada');

-- Orden 975
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (975, '2024-12-22', 3195150.00, 'Entregada', 11, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 975, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 240000.00, 975, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1920000.00, 975, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 975, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (927, 975, 'FBV', '000927', 'CUFE00000927', '2024-12-22 12:00:00', 2685000.00, 510150.00, 3195150.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-22', 3195150.00, 'REF00000785', 'Pagado', 927, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (975, 12, '2024-12-22', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 976
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (976, '2024-03-11', 4480350.00, 'Entregada', 8, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 165000.00, 976, 6);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 976, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (928, 976, 'FBV', '000928', 'CUFE00000928', '2024-03-11 12:00:00', 3765000.00, 715350.00, 4480350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-03-11', 4480350.00, 'REF00000786', 'Pagado', 928, 8);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (976, 2, '2024-03-11', 'Calle 11 # 46-27, Buga', 'Entregada');

-- Orden 977
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (977, '2024-06-23', 214200.00, 'Entregada', 5, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 180000.00, 977, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (929, 977, 'FBV', '000929', 'CUFE00000929', '2024-06-23 12:00:00', 180000.00, 34200.00, 214200.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-06-23', 214200.00, 'REF00000787', 'Pagado', 929, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (977, 10, '2024-06-23', 'Calle 142 # 20-35, Yumbo', 'No Entregada');

-- Orden 978
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (978, '2024-02-01', 999600.00, 'Entregada', 11, 12, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 978, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (930, 978, 'FBV', '000930', 'CUFE00000930', '2024-02-01 12:00:00', 840000.00, 159600.00, 999600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-02-01', 999600.00, 'REF00000788', 'Anulado', 930, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (978, 12, '2024-02-01', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 979
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (979, '2024-09-20', 785400.00, 'Entregada', 5, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 300000.00, 979, 7);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 979, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (931, 979, 'FBV', '000931', 'CUFE00000931', '2024-09-20 12:00:00', 660000.00, 125400.00, 785400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-09-20', 785400.00, 'REF00000789', 'Pendiente', 931, 5);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (979, 14, '2024-09-20', 'Calle 142 # 20-35, Yumbo', 'Entregada');

-- Orden 980
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (980, '2024-11-23', 5069400.00, 'Entregada', 7, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 980, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 980, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (932, 980, 'FBV', '000932', 'CUFE00000932', '2024-11-23 12:00:00', 4260000.00, 809400.00, 5069400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-11-23', 5069400.00, 'REF00000790', 'Pagado', 932, 7);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (980, 2, '2024-11-23', 'Calle 29 # 10-89, Buga', 'Entregada');

-- Orden 981
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (981, '2024-01-19', 1356600.00, 'Entregada', 6, 14, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1140000.00, 981, 16);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (933, 981, 'FBV', '000933', 'CUFE00000933', '2024-01-19 12:00:00', 1140000.00, 216600.00, 1356600.00, 'Generada');
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (981, 14, '2024-01-19', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 982
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (982, '2024-08-18', 999600.00, 'Entregada', 11, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 982, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (934, 982, 'FBV', '000934', 'CUFE00000934', '2024-08-18 12:00:00', 840000.00, 159600.00, 999600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-08-18', 999600.00, 'REF00000791', 'Pagado', 934, 11);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (982, 5, '2024-08-18', 'Calle 90 # 83-66, Tuluá', 'Entregada');

-- Orden 983
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (983, '2024-12-20', 7901600.00, 'Entregada', 27, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1260000.00, 983, 13);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1860000.00, 983, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 983, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 983, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (935, 983, 'FBV', '000935', 'CUFE00000935', '2024-12-20 12:00:00', 6640000.00, 1261600.00, 7901600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-20', 7901600.00, 'REF00000792', 'Pagado', 935, 27);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (983, 2, '2024-12-20', 'Calle 8 # 32-26, Palmira', 'Entregada');

-- Orden 984
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (984, '2024-12-11', 4200700.00, 'Entregada', 12, 5, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 984, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 984, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 640000.00, 984, 4);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (936, 984, 'FBV', '000936', 'CUFE00000936', '2024-12-11 12:00:00', 3530000.00, 670700.00, 4200700.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-11', 4200700.00, 'REF00000793', 'Pagado', 936, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (984, 5, '2024-12-11', 'Calle 112 # 45-94, Cali', 'No Entregada');

-- Orden 985
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (985, '2024-01-04', 642600.00, 'Entregada', 43, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 985, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (937, 985, 'FBV', '000937', 'CUFE00000937', '2024-01-04 12:00:00', 540000.00, 102600.00, 642600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-01-04', 642600.00, 'REF00000794', 'Pagado', 937, 43);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (985, 7, '2024-01-04', 'Calle 121 # 38-5, Tuluá', 'Entregada');

-- Orden 986
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (986, '2024-09-04', 8020600.00, 'Entregada', 57, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2900000.00, 986, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 986, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1440000.00, 986, 2);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (938, 986, 'FBV', '000938', 'CUFE00000938', '2024-09-04 12:00:00', 6740000.00, 1280600.00, 8020600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-09-04', 8020600.00, 'REF00000795', 'Pagado', 938, 57);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (986, 7, '2024-09-04', 'Calle 139 # 5-80, Cartago', 'Entregada');

-- Orden 987
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (987, '2024-05-13', 9353400.00, 'Cancelada', 4, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 987, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 987, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1900000.00, 987, 19);

-- Orden 988
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (988, '2024-12-16', 7764750.00, 'En Proceso', 6, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 988, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 700000.00, 988, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 988, 15);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (939, 988, 'FBV', '000939', 'CUFE00000939', '2024-12-16 12:00:00', 6525000.00, 1239750.00, 7764750.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-12-16', 7764750.00, 'REF00000796', 'Pagado', 939, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (988, 11, '2024-12-16', 'Calle 24 # 82-55, Tuluá', 'En Ruta');

-- Orden 989
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (989, '2024-12-26', 2582300.00, 'Entregada', 29, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 989, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 1450000.00, 989, 11);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (940, 989, 'FBV', '000940', 'CUFE00000940', '2024-12-26 12:00:00', 2170000.00, 412300.00, 2582300.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-12-26', 2582300.00, 'REF00000797', 'Pagado', 940, 29);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (989, 11, '2024-12-26', 'Calle 63 # 14-90, Cartago', 'Entregada');

-- Orden 990
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (990, '2024-03-06', 821100.00, 'Entregada', 3, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 150000.00, 990, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 990, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (941, 990, 'FBV', '000941', 'CUFE00000941', '2024-03-06 12:00:00', 690000.00, 131100.00, 821100.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-03-06', 821100.00, 'REF00000798', 'Pagado', 941, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (990, 7, '2024-03-06', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 991
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (991, '2024-05-04', 10138800.00, 'Entregada', 2, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 991, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 2080000.00, 991, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 840000.00, 991, 13);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (942, 991, 'FBV', '000942', 'CUFE00000942', '2024-05-04 12:00:00', 8520000.00, 1618800.00, 10138800.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-05-04', 10138800.00, 'REF00000799', 'Anulado', 942, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (991, 2, '2024-05-04', 'Calle 102 # 17-86, Palmira', 'Entregada');

-- Orden 992
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (992, '2024-02-19', 3409350.00, 'Entregada', 4, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 225000.00, 992, 15);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 1400000.00, 992, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 992, 9);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (943, 992, 'FBV', '000943', 'CUFE00000943', '2024-02-19 12:00:00', 2865000.00, 544350.00, 3409350.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-02-19', 3409350.00, 'REF00000800', 'Pagado', 943, 4);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (992, 10, '2024-02-19', 'Calle 140 # 91-39, Palmira', 'Entregada');

-- Orden 993
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (993, '2024-07-08', 10424400.00, 'En Proceso', 1, 10, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 993, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 90000.00, 993, 8);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (4, 720000.00, 993, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 3600000.00, 993, 12);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (944, 993, 'FBV', '000944', 'CUFE00000944', '2024-07-08 12:00:00', 8760000.00, 1664400.00, 10424400.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-08', 10424400.00, 'REF00000801', 'Pendiente', 944, 1);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (993, 10, '2024-07-08', 'Calle 104 # 16-73, Buga', 'Pendiente');

-- Orden 994
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (994, '2024-07-25', 4635050.00, 'Entregada', 3, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1240000.00, 994, 9);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 2400000.00, 994, 12);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 994, 20);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (945, 994, 'FBV', '000945', 'CUFE00000945', '2024-07-25 12:00:00', 3895000.00, 740050.00, 4635050.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-07-25', 4635050.00, 'REF00000802', 'Pagado', 945, 3);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (994, 3, '2024-07-25', 'Calle 19 # 69-28, Palmira', 'Entregada');

-- Orden 995
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (995, '2024-12-05', 8330000.00, 'Pendiente', 2, 9, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 180000.00, 995, 10);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 995, 18);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 380000.00, 995, 16);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 840000.00, 995, 3);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (946, 995, 'FBV', '000946', 'CUFE00000946', '2024-12-05 12:00:00', 7000000.00, 1330000.00, 8330000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Transferencia', '2024-12-05', 8330000.00, 'REF00000803', 'Pendiente', 946, 2);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (995, 9, '2024-12-05', 'Calle 102 # 17-86, Palmira', 'Pendiente');

-- Orden 996
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (996, '2024-12-16', 3332000.00, 'Entregada', 12, 7, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (1, 2800000.00, 996, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (947, 996, 'FBV', '000947', 'CUFE00000947', '2024-12-16 12:00:00', 2800000.00, 532000.00, 3332000.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-16', 3332000.00, 'REF00000804', 'Pagado', 947, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (996, 7, '2024-12-16', 'Calle 112 # 45-94, Cali', 'No Entregada');

-- Orden 997
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (997, '2024-09-02', 11840500.00, 'Entregada', 6, 11, 2);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 4350000.00, 997, 11);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 5600000.00, 997, 18);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (948, 997, 'FBV', '000948', 'CUFE00000948', '2024-09-02 12:00:00', 9950000.00, 1890500.00, 11840500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Tarjeta', '2024-09-02', 11840500.00, 'REF00000805', 'Pagado', 948, 6);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (997, 11, '2024-09-02', 'Calle 24 # 82-55, Tuluá', 'Entregada');

-- Orden 998
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (998, '2024-10-13', 2546600.00, 'Entregada', 9, 2, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 998, 17);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 560000.00, 998, 3);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 540000.00, 998, 14);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (949, 998, 'FBV', '000949', 'CUFE00000949', '2024-10-13 12:00:00', 2140000.00, 406600.00, 2546600.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-10-13', 2546600.00, 'REF00000806', 'Pagado', 949, 9);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (998, 2, '2024-10-13', 'Calle 7 # 23-95, Cartago', 'Entregada');

-- Orden 999
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (999, '2024-06-20', 1249500.00, 'Entregada', 12, 6, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 1050000.00, 999, 1);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (950, 999, 'FBV', '000950', 'CUFE00000950', '2024-06-20 12:00:00', 1050000.00, 199500.00, 1249500.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('Efectivo', '2024-06-20', 1249500.00, 'REF00000807', 'Pagado', 950, 12);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (999, 6, '2024-06-20', 'Calle 112 # 45-94, Cali', 'Entregada');

-- Orden 1000
INSERT INTO ORDEN (id_orden, fecha, total, estado, id_cliente, id_empleado, id_sede) VALUES (1000, '2024-12-17', 5360950.00, 'Entregada', 10, 3, 1);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 255000.00, 1000, 20);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (3, 2850000.00, 1000, 19);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 360000.00, 1000, 14);
INSERT INTO DETALLE_ORDEN (cantidad, subtotal, id_orden, id_producto) VALUES (2, 1040000.00, 1000, 17);
INSERT INTO FACTURA (id_factura, id_orden, prefijo, num_consec, cufe, fecha_generacion, subtotal, total_iva, total, estado_factura) VALUES (951, 1000, 'FBV', '000951', 'CUFE00000951', '2024-12-17 12:00:00', 4505000.00, 855950.00, 5360950.00, 'Generada');
INSERT INTO PAGO (metodo_pago, fecha_pago, valor, referencia_pago, estado_pago, id_factura, id_cliente) VALUES ('PSE', '2024-12-17', 5360950.00, 'REF00000808', 'Pagado', 951, 10);
INSERT INTO ENTREGA (id_orden, id_empleado, fecha_llegada, direccion_entrega, estado_entrega) VALUES (1000, 3, '2024-12-17', 'Calle 10 # 61-29, Tuluá', 'Entregada');

COMMIT;