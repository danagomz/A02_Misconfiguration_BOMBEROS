-- ============================================================
-- TRANSACCIONES DE COMPRA A PROVEEDORES - 150 órdenes
-- Requiere haber corrido antes 01_maestros.sql
-- ============================================================

BEGIN;

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (1, 8, 11, '2024-03-13', '2024-03-13'::timestamp + interval '5 days', '2024-03-13'::timestamp + interval '7 days', 4029000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (1, 20, 79, 79, 51000.00, 4029000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (2, 7, 12, '2024-05-09', '2024-05-09'::timestamp + interval '5 days', '2024-05-09'::timestamp + interval '7 days', 16800000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (2, 18, 10, 10, 1680000.00, 16800000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (3, 8, 3, '2024-07-08', '2024-07-08'::timestamp + interval '5 days', '2024-07-08'::timestamp + interval '7 days', 1368000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (3, 5, 24, 24, 57000.00, 1368000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (4, 8, 1, '2024-06-27', '2024-06-27'::timestamp + interval '5 days', '2024-06-27'::timestamp + interval '7 days', 16014000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (4, 7, 75, 75, 90000.00, 6750000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (4, 6, 16, 16, 33000.00, 528000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (4, 17, 28, 28, 312000.00, 8736000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (5, 4, 3, '2024-03-02', '2024-03-02'::timestamp + interval '10 days', NULL, 1287000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (5, 6, 39, 0, 33000.00, 1287000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (6, 3, 1, '2024-01-23', '2024-01-23'::timestamp + interval '5 days', '2024-01-23'::timestamp + interval '7 days', 5364000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (6, 14, 24, 24, 108000.00, 2592000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (6, 13, 11, 11, 252000.00, 2772000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (7, 1, 9, '2024-12-20', '2024-12-20'::timestamp + interval '5 days', '2024-12-20'::timestamp + interval '7 days', 11964000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (7, 16, 10, 10, 228000.00, 2280000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (7, 13, 27, 27, 252000.00, 6804000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (7, 4, 15, 15, 192000.00, 2880000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (8, 5, 4, '2024-06-26', '2024-06-26'::timestamp + interval '5 days', '2024-06-26'::timestamp + interval '7 days', 2160000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (8, 8, 80, 80, 27000.00, 2160000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (9, 5, 6, '2024-09-21', NULL, NULL, 20220000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (9, 17, 18, 0, 312000.00, 5616000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (9, 2, 23, 0, 288000.00, 6624000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (9, 16, 35, 0, 228000.00, 7980000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (10, 3, 4, '2024-06-14', '2024-06-14'::timestamp + interval '10 days', NULL, 15804000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (10, 11, 10, 0, 870000.00, 8700000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (10, 4, 22, 0, 192000.00, 4224000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (10, 2, 10, 0, 288000.00, 2880000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (11, 8, 14, '2024-11-06', '2024-11-06'::timestamp + interval '5 days', '2024-11-06'::timestamp + interval '7 days', 16110000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (11, 11, 10, 10, 870000.00, 8700000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (11, 19, 13, 13, 570000.00, 7410000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (12, 2, 6, '2024-01-23', '2024-01-23'::timestamp + interval '5 days', '2024-01-23'::timestamp + interval '7 days', 6804000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (12, 13, 18, 18, 252000.00, 4536000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (12, 14, 21, 21, 108000.00, 2268000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (13, 2, 1, '2024-12-13', NULL, NULL, 6378000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (13, 3, 24, 0, 168000.00, 4032000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (13, 20, 46, 0, 51000.00, 2346000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (14, 1, 13, '2024-06-11', '2024-06-11'::timestamp + interval '5 days', '2024-06-11'::timestamp + interval '7 days', 19008000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (14, 19, 10, 10, 570000.00, 5700000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (14, 9, 18, 18, 372000.00, 6696000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (14, 16, 29, 29, 228000.00, 6612000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (15, 1, 6, '2024-11-25', '2024-11-25'::timestamp + interval '5 days', '2024-11-25'::timestamp + interval '7 days', 24000000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (15, 18, 10, 10, 1680000.00, 16800000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (15, 7, 80, 80, 90000.00, 7200000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (16, 3, 7, '2024-07-19', '2024-07-19'::timestamp + interval '5 days', '2024-07-19'::timestamp + interval '7 days', 8919000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (16, 6, 87, 87, 33000.00, 2871000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (16, 13, 24, 24, 252000.00, 6048000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (17, 1, 9, '2024-04-14', '2024-04-14'::timestamp + interval '5 days', '2024-04-14'::timestamp + interval '7 days', 23832000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (17, 19, 14, 14, 570000.00, 7980000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (17, 4, 41, 41, 192000.00, 7872000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (17, 16, 35, 35, 228000.00, 7980000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (18, 2, 6, '2024-01-26', '2024-01-26'::timestamp + interval '5 days', '2024-01-26'::timestamp + interval '7 days', 7920000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (18, 12, 11, 11, 720000.00, 7920000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (19, 2, 10, '2024-06-13', '2024-06-13'::timestamp + interval '5 days', '2024-06-13'::timestamp + interval '7 days', 9819000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (19, 8, 21, 21, 27000.00, 567000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (19, 5, 26, 26, 57000.00, 1482000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (19, 1, 37, 37, 210000.00, 7770000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (20, 6, 8, '2024-12-21', '2024-12-21'::timestamp + interval '5 days', '2024-12-21'::timestamp + interval '7 days', 6708000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (20, 6, 48, 48, 33000.00, 1584000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (20, 13, 12, 12, 252000.00, 3024000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (20, 1, 10, 10, 210000.00, 2100000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (21, 6, 3, '2024-12-26', '2024-12-26'::timestamp + interval '5 days', '2024-12-26'::timestamp + interval '7 days', 12756000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (21, 17, 13, 13, 312000.00, 4056000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (21, 11, 10, 10, 870000.00, 8700000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (22, 8, 8, '2024-05-03', '2024-05-03'::timestamp + interval '5 days', '2024-05-03'::timestamp + interval '7 days', 4332000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (22, 16, 19, 19, 228000.00, 4332000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (23, 7, 10, '2024-03-03', '2024-03-03'::timestamp + interval '5 days', '2024-03-03'::timestamp + interval '7 days', 29571000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (23, 18, 10, 10, 1680000.00, 16800000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (23, 5, 87, 87, 57000.00, 4959000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (23, 9, 21, 21, 372000.00, 7812000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (24, 7, 3, '2024-06-06', '2024-06-06'::timestamp + interval '5 days', '2024-06-06'::timestamp + interval '7 days', 22572000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (24, 16, 28, 28, 228000.00, 6384000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (24, 11, 10, 10, 870000.00, 8700000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (24, 17, 24, 24, 312000.00, 7488000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (25, 1, 13, '2024-10-09', '2024-10-09'::timestamp + interval '5 days', '2024-10-09'::timestamp + interval '7 days', 8652000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (25, 9, 11, 11, 372000.00, 4092000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (25, 5, 80, 80, 57000.00, 4560000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (26, 6, 11, '2024-05-16', '2024-05-16'::timestamp + interval '10 days', NULL, 8700000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (26, 11, 10, 0, 870000.00, 8700000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (27, 3, 1, '2024-12-05', '2024-12-05'::timestamp + interval '5 days', '2024-12-05'::timestamp + interval '7 days', 9606000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (27, 16, 32, 32, 228000.00, 7296000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (27, 1, 11, 11, 210000.00, 2310000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (28, 1, 2, '2024-09-08', NULL, NULL, 8052000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (28, 14, 16, 0, 108000.00, 1728000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (28, 9, 17, 0, 372000.00, 6324000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (29, 3, 4, '2024-12-09', '2024-12-09'::timestamp + interval '10 days', NULL, 9414000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (29, 6, 30, 0, 33000.00, 990000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (29, 17, 27, 0, 312000.00, 8424000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (30, 6, 12, '2024-12-09', '2024-12-09'::timestamp + interval '5 days', '2024-12-09'::timestamp + interval '7 days', 5928000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (30, 16, 26, 26, 228000.00, 5928000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (31, 3, 3, '2024-10-23', '2024-10-23'::timestamp + interval '5 days', '2024-10-23'::timestamp + interval '7 days', 3591000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (31, 5, 63, 63, 57000.00, 3591000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (32, 2, 7, '2024-12-18', NULL, NULL, 5448000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (32, 1, 14, 0, 210000.00, 2940000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (32, 16, 11, 0, 228000.00, 2508000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (33, 6, 9, '2024-09-25', NULL, NULL, 8832000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (33, 4, 46, 0, 192000.00, 8832000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (34, 6, 1, '2024-08-28', '2024-08-28'::timestamp + interval '5 days', '2024-08-28'::timestamp + interval '7 days', 5040000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (34, 3, 30, 30, 168000.00, 5040000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (35, 3, 7, '2024-02-02', '2024-02-02'::timestamp + interval '5 days', '2024-02-02'::timestamp + interval '7 days', 720000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (35, 15, 16, 16, 45000.00, 720000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (36, 3, 4, '2024-01-15', '2024-01-15'::timestamp + interval '5 days', '2024-01-15'::timestamp + interval '7 days', 17250000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (36, 19, 15, 15, 570000.00, 8550000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (36, 11, 10, 10, 870000.00, 8700000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (37, 1, 8, '2024-05-23', '2024-05-23'::timestamp + interval '10 days', NULL, 17364000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (37, 3, 45, 0, 168000.00, 7560000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (37, 17, 20, 0, 312000.00, 6240000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (37, 10, 99, 0, 36000.00, 3564000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (38, 5, 4, '2024-11-05', '2024-11-05'::timestamp + interval '10 days', NULL, 24531000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (38, 15, 83, 0, 45000.00, 3735000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (38, 14, 37, 0, 108000.00, 3996000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (38, 18, 10, 0, 1680000.00, 16800000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (39, 6, 3, '2024-08-09', NULL, NULL, 2268000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (39, 14, 21, 0, 108000.00, 2268000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (40, 3, 8, '2024-04-10', '2024-04-10'::timestamp + interval '10 days', NULL, 1710000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (40, 7, 19, 0, 90000.00, 1710000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (41, 1, 5, '2024-06-05', '2024-06-05'::timestamp + interval '5 days', '2024-06-05'::timestamp + interval '7 days', 9213000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (41, 20, 97, 97, 51000.00, 4947000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (41, 13, 15, 15, 252000.00, 3780000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (41, 8, 18, 18, 27000.00, 486000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (42, 8, 5, '2024-04-26', '2024-04-26'::timestamp + interval '10 days', NULL, 11649000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (42, 15, 77, 0, 45000.00, 3465000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (42, 9, 22, 0, 372000.00, 8184000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (43, 4, 6, '2024-12-05', '2024-12-05'::timestamp + interval '5 days', '2024-12-05'::timestamp + interval '7 days', 4536000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (43, 13, 18, 18, 252000.00, 4536000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (44, 7, 1, '2024-10-15', '2024-10-15'::timestamp + interval '5 days', '2024-10-15'::timestamp + interval '7 days', 10053000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (44, 8, 79, 79, 27000.00, 2133000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (44, 9, 18, 18, 372000.00, 6696000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (44, 10, 34, 34, 36000.00, 1224000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (45, 5, 3, '2024-06-08', '2024-06-08'::timestamp + interval '5 days', '2024-06-08'::timestamp + interval '7 days', 8580000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (45, 10, 79, 79, 36000.00, 2844000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (45, 13, 11, 11, 252000.00, 2772000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (45, 5, 52, 52, 57000.00, 2964000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (46, 6, 1, '2024-06-15', NULL, NULL, 22140000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (46, 2, 24, 0, 288000.00, 6912000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (46, 13, 29, 0, 252000.00, 7308000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (46, 12, 11, 0, 720000.00, 7920000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (47, 6, 2, '2024-06-13', '2024-06-13'::timestamp + interval '5 days', '2024-06-13'::timestamp + interval '7 days', 14877000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (47, 6, 79, 79, 33000.00, 2607000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (47, 1, 31, 31, 210000.00, 6510000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (47, 2, 20, 20, 288000.00, 5760000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (48, 2, 1, '2024-06-23', '2024-06-23'::timestamp + interval '5 days', '2024-06-23'::timestamp + interval '7 days', 1173000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (48, 20, 23, 23, 51000.00, 1173000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (49, 4, 2, '2024-12-04', '2024-12-04'::timestamp + interval '5 days', '2024-12-04'::timestamp + interval '7 days', 15360000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (49, 13, 14, 14, 252000.00, 3528000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (49, 4, 31, 31, 192000.00, 5952000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (49, 1, 28, 28, 210000.00, 5880000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (50, 8, 11, '2024-06-22', '2024-06-22'::timestamp + interval '5 days', '2024-06-22'::timestamp + interval '7 days', 7350000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (50, 1, 35, 35, 210000.00, 7350000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (51, 6, 4, '2024-06-09', '2024-06-09'::timestamp + interval '5 days', '2024-06-09'::timestamp + interval '7 days', 330000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (51, 6, 10, 10, 33000.00, 330000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (52, 2, 11, '2024-03-15', NULL, NULL, 16554000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (52, 12, 10, 0, 720000.00, 7200000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (52, 2, 23, 0, 288000.00, 6624000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (52, 1, 13, 0, 210000.00, 2730000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (53, 2, 6, '2024-02-07', '2024-02-07'::timestamp + interval '10 days', NULL, 8640000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (53, 12, 12, 0, 720000.00, 8640000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (54, 5, 8, '2024-09-20', '2024-09-20'::timestamp + interval '5 days', '2024-09-20'::timestamp + interval '7 days', 6372000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (54, 10, 73, 73, 36000.00, 2628000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (54, 2, 13, 13, 288000.00, 3744000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (55, 8, 12, '2024-04-05', '2024-04-05'::timestamp + interval '5 days', '2024-04-05'::timestamp + interval '7 days', 22110000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (55, 2, 30, 30, 288000.00, 8640000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (55, 12, 10, 10, 720000.00, 7200000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (55, 19, 11, 11, 570000.00, 6270000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (56, 2, 1, '2024-01-13', '2024-01-13'::timestamp + interval '5 days', '2024-01-13'::timestamp + interval '7 days', 7329000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (56, 20, 11, 11, 51000.00, 561000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (56, 7, 36, 36, 90000.00, 3240000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (56, 10, 98, 98, 36000.00, 3528000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (57, 2, 1, '2024-05-05', NULL, NULL, 1620000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (57, 14, 15, 0, 108000.00, 1620000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (58, 5, 2, '2024-02-10', '2024-02-10'::timestamp + interval '5 days', '2024-02-10'::timestamp + interval '7 days', 2511000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (58, 8, 93, 93, 27000.00, 2511000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (59, 6, 10, '2024-08-06', NULL, NULL, 10539000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (59, 12, 11, 0, 720000.00, 7920000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (59, 8, 97, 0, 27000.00, 2619000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (60, 6, 3, '2024-01-13', '2024-01-13'::timestamp + interval '5 days', '2024-01-13'::timestamp + interval '7 days', 7776000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (60, 14, 72, 72, 108000.00, 7776000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (61, 1, 11, '2024-01-19', '2024-01-19'::timestamp + interval '5 days', '2024-01-19'::timestamp + interval '7 days', 29520000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (61, 2, 22, 22, 288000.00, 6336000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (61, 3, 38, 38, 168000.00, 6384000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (61, 18, 10, 10, 1680000.00, 16800000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (62, 5, 1, '2024-11-08', NULL, NULL, 16758000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (62, 9, 20, 0, 372000.00, 7440000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (62, 5, 34, 0, 57000.00, 1938000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (62, 7, 82, 0, 90000.00, 7380000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (63, 5, 5, '2024-08-12', '2024-08-12'::timestamp + interval '10 days', NULL, 7350000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (63, 1, 35, 0, 210000.00, 7350000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (64, 8, 8, '2024-06-28', '2024-06-28'::timestamp + interval '10 days', NULL, 12900000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (64, 11, 10, 0, 870000.00, 8700000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (64, 1, 20, 0, 210000.00, 4200000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (65, 6, 14, '2024-01-16', '2024-01-16'::timestamp + interval '5 days', '2024-01-16'::timestamp + interval '7 days', 17628000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (65, 11, 10, 10, 870000.00, 8700000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (65, 9, 24, 24, 372000.00, 8928000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (66, 7, 3, '2024-05-15', '2024-05-15'::timestamp + interval '5 days', '2024-05-15'::timestamp + interval '7 days', 5700000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (66, 19, 10, 10, 570000.00, 5700000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (67, 3, 11, '2024-12-23', '2024-12-23'::timestamp + interval '10 days', NULL, 1323000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (67, 8, 49, 0, 27000.00, 1323000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (68, 6, 14, '2024-02-01', '2024-02-01'::timestamp + interval '5 days', '2024-02-01'::timestamp + interval '7 days', 5700000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (68, 19, 10, 10, 570000.00, 5700000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (69, 7, 14, '2024-09-12', '2024-09-12'::timestamp + interval '5 days', '2024-09-12'::timestamp + interval '7 days', 20079000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (69, 18, 10, 10, 1680000.00, 16800000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (69, 20, 41, 41, 51000.00, 2091000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (69, 14, 11, 11, 108000.00, 1188000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (70, 3, 2, '2024-02-13', '2024-02-13'::timestamp + interval '5 days', '2024-02-13'::timestamp + interval '7 days', 510000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (70, 20, 10, 10, 51000.00, 510000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (71, 5, 11, '2024-06-15', '2024-06-15'::timestamp + interval '5 days', '2024-06-15'::timestamp + interval '7 days', 22467000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (71, 18, 10, 10, 1680000.00, 16800000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (71, 20, 82, 82, 51000.00, 4182000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (71, 15, 33, 33, 45000.00, 1485000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (72, 2, 3, '2024-08-19', '2024-08-19'::timestamp + interval '10 days', NULL, 4779000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (72, 6, 15, 0, 33000.00, 495000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (72, 13, 17, 0, 252000.00, 4284000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (73, 4, 7, '2024-09-06', '2024-09-06'::timestamp + interval '10 days', NULL, 13755000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (73, 5, 55, 0, 57000.00, 3135000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (73, 15, 76, 0, 45000.00, 3420000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (73, 12, 10, 0, 720000.00, 7200000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (74, 2, 5, '2024-06-15', '2024-06-15'::timestamp + interval '10 days', NULL, 7884000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (74, 20, 66, 0, 51000.00, 3366000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (74, 5, 24, 0, 57000.00, 1368000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (74, 1, 15, 0, 210000.00, 3150000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (75, 6, 14, '2024-03-23', '2024-03-23'::timestamp + interval '10 days', NULL, 1122000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (75, 6, 34, 0, 33000.00, 1122000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (76, 7, 12, '2024-12-04', '2024-12-04'::timestamp + interval '5 days', '2024-12-04'::timestamp + interval '7 days', 14037000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (76, 6, 77, 77, 33000.00, 2541000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (76, 3, 17, 17, 168000.00, 2856000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (76, 12, 12, 12, 720000.00, 8640000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (77, 8, 12, '2024-01-12', '2024-01-12'::timestamp + interval '5 days', '2024-01-12'::timestamp + interval '7 days', 11379000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (77, 4, 42, 42, 192000.00, 8064000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (77, 20, 65, 65, 51000.00, 3315000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (78, 4, 9, '2024-06-18', '2024-06-18'::timestamp + interval '5 days', '2024-06-18'::timestamp + interval '7 days', 18645000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (78, 19, 15, 15, 570000.00, 8550000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (78, 11, 10, 10, 870000.00, 8700000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (78, 15, 31, 31, 45000.00, 1395000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (79, 2, 7, '2024-07-02', '2024-07-02'::timestamp + interval '5 days', '2024-07-02'::timestamp + interval '7 days', 9858000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (79, 8, 78, 78, 27000.00, 2106000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (79, 16, 34, 34, 228000.00, 7752000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (80, 4, 2, '2024-07-13', '2024-07-13'::timestamp + interval '5 days', '2024-07-13'::timestamp + interval '7 days', 8736000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (80, 17, 28, 28, 312000.00, 8736000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (81, 8, 3, '2024-11-09', '2024-11-09'::timestamp + interval '5 days', '2024-11-09'::timestamp + interval '7 days', 10944000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (81, 2, 26, 26, 288000.00, 7488000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (81, 4, 18, 18, 192000.00, 3456000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (82, 3, 12, '2024-11-06', '2024-11-06'::timestamp + interval '5 days', '2024-11-06'::timestamp + interval '7 days', 16800000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (82, 18, 10, 10, 1680000.00, 16800000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (83, 5, 9, '2024-03-27', NULL, NULL, 969000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (83, 5, 17, 0, 57000.00, 969000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (84, 5, 2, '2024-05-16', NULL, NULL, 10362000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (84, 7, 24, 0, 90000.00, 2160000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (84, 5, 18, 0, 57000.00, 1026000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (84, 17, 23, 0, 312000.00, 7176000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (85, 6, 10, '2024-08-07', '2024-08-07'::timestamp + interval '5 days', '2024-08-07'::timestamp + interval '7 days', 6444000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (85, 5, 14, 14, 57000.00, 798000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (85, 1, 23, 23, 210000.00, 4830000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (85, 20, 16, 16, 51000.00, 816000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (86, 5, 12, '2024-10-08', '2024-10-08'::timestamp + interval '10 days', NULL, 3285000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (86, 15, 73, 0, 45000.00, 3285000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (87, 6, 14, '2024-12-23', '2024-12-23'::timestamp + interval '10 days', NULL, 8640000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (87, 12, 12, 0, 720000.00, 8640000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (88, 4, 1, '2024-12-25', '2024-12-25'::timestamp + interval '5 days', '2024-12-25'::timestamp + interval '7 days', 5616000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (88, 14, 52, 52, 108000.00, 5616000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (89, 1, 7, '2024-05-07', '2024-05-07'::timestamp + interval '5 days', '2024-05-07'::timestamp + interval '7 days', 8640000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (89, 12, 12, 12, 720000.00, 8640000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (90, 4, 14, '2024-06-15', '2024-06-15'::timestamp + interval '5 days', '2024-06-15'::timestamp + interval '7 days', 22875000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (90, 4, 18, 18, 192000.00, 3456000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (90, 18, 10, 10, 1680000.00, 16800000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (90, 8, 97, 97, 27000.00, 2619000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (91, 1, 11, '2024-03-20', '2024-03-20'::timestamp + interval '5 days', '2024-03-20'::timestamp + interval '7 days', 17280000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (91, 3, 34, 34, 168000.00, 5712000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (91, 16, 37, 37, 228000.00, 8436000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (91, 10, 87, 87, 36000.00, 3132000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (92, 1, 14, '2024-12-19', '2024-12-19'::timestamp + interval '5 days', '2024-12-19'::timestamp + interval '7 days', 14340000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (92, 7, 43, 43, 90000.00, 3870000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (92, 4, 25, 25, 192000.00, 4800000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (92, 1, 27, 27, 210000.00, 5670000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (93, 2, 10, '2024-06-06', '2024-06-06'::timestamp + interval '5 days', '2024-06-06'::timestamp + interval '7 days', 2250000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (93, 7, 25, 25, 90000.00, 2250000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (94, 7, 8, '2024-01-02', '2024-01-02'::timestamp + interval '5 days', '2024-01-02'::timestamp + interval '7 days', 15084000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (94, 12, 11, 11, 720000.00, 7920000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (94, 14, 15, 15, 108000.00, 1620000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (94, 13, 22, 22, 252000.00, 5544000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (95, 4, 12, '2024-06-05', '2024-06-05'::timestamp + interval '5 days', '2024-06-05'::timestamp + interval '7 days', 18672000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (95, 13, 11, 11, 252000.00, 2772000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (95, 12, 11, 11, 720000.00, 7920000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (95, 19, 14, 14, 570000.00, 7980000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (96, 5, 13, '2024-11-09', '2024-11-09'::timestamp + interval '5 days', '2024-11-09'::timestamp + interval '7 days', 2925000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (96, 15, 65, 65, 45000.00, 2925000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (97, 7, 4, '2024-09-20', '2024-09-20'::timestamp + interval '10 days', NULL, 12342000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (97, 8, 54, 0, 27000.00, 1458000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (97, 19, 10, 0, 570000.00, 5700000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (97, 14, 48, 0, 108000.00, 5184000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (98, 7, 3, '2024-06-05', '2024-06-05'::timestamp + interval '10 days', NULL, 3693000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (98, 5, 25, 0, 57000.00, 1425000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (98, 14, 21, 0, 108000.00, 2268000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (99, 5, 3, '2024-05-26', '2024-05-26'::timestamp + interval '5 days', '2024-05-26'::timestamp + interval '7 days', 8700000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (99, 11, 10, 10, 870000.00, 8700000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (100, 5, 11, '2024-03-22', '2024-03-22'::timestamp + interval '5 days', '2024-03-22'::timestamp + interval '7 days', 32676000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (100, 2, 29, 29, 288000.00, 8352000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (100, 18, 10, 10, 1680000.00, 16800000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (100, 16, 33, 33, 228000.00, 7524000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (101, 7, 3, '2024-09-24', '2024-09-24'::timestamp + interval '5 days', '2024-09-24'::timestamp + interval '7 days', 14670000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (101, 3, 26, 26, 168000.00, 4368000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (101, 19, 11, 11, 570000.00, 6270000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (101, 13, 16, 16, 252000.00, 4032000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (102, 6, 13, '2024-04-05', '2024-04-05'::timestamp + interval '5 days', '2024-04-05'::timestamp + interval '7 days', 5655000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (102, 15, 56, 56, 45000.00, 2520000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (102, 6, 95, 95, 33000.00, 3135000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (103, 1, 6, '2024-07-08', '2024-07-08'::timestamp + interval '5 days', '2024-07-08'::timestamp + interval '7 days', 4896000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (103, 2, 17, 17, 288000.00, 4896000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (104, 2, 2, '2024-10-12', '2024-10-12'::timestamp + interval '10 days', NULL, 18774000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (104, 16, 21, 0, 228000.00, 4788000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (104, 13, 33, 0, 252000.00, 8316000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (104, 1, 27, 0, 210000.00, 5670000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (105, 6, 14, '2024-06-24', '2024-06-24'::timestamp + interval '5 days', '2024-06-24'::timestamp + interval '7 days', 20496000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (105, 19, 12, 12, 570000.00, 6840000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (105, 9, 22, 22, 372000.00, 8184000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (105, 16, 24, 24, 228000.00, 5472000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (106, 7, 10, '2024-10-24', '2024-10-24'::timestamp + interval '10 days', NULL, 12300000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (106, 11, 10, 0, 870000.00, 8700000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (106, 7, 40, 0, 90000.00, 3600000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (107, 7, 6, '2024-08-28', '2024-08-28'::timestamp + interval '5 days', '2024-08-28'::timestamp + interval '7 days', 6702000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (107, 20, 58, 58, 51000.00, 2958000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (107, 17, 12, 12, 312000.00, 3744000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (108, 7, 4, '2024-12-05', '2024-12-05'::timestamp + interval '5 days', '2024-12-05'::timestamp + interval '7 days', 9072000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (108, 10, 12, 12, 36000.00, 432000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (108, 12, 12, 12, 720000.00, 8640000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (109, 1, 10, '2024-06-27', NULL, NULL, 9768000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (109, 17, 20, 0, 312000.00, 6240000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (109, 3, 21, 0, 168000.00, 3528000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (110, 7, 10, '2024-03-26', NULL, NULL, 8595000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (110, 13, 24, 0, 252000.00, 6048000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (110, 20, 33, 0, 51000.00, 1683000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (110, 10, 24, 0, 36000.00, 864000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (111, 4, 1, '2024-06-09', '2024-06-09'::timestamp + interval '5 days', '2024-06-09'::timestamp + interval '7 days', 10872000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (111, 19, 12, 12, 570000.00, 6840000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (111, 4, 21, 21, 192000.00, 4032000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (112, 7, 2, '2024-12-10', '2024-12-10'::timestamp + interval '5 days', '2024-12-10'::timestamp + interval '7 days', 27306000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (112, 9, 13, 13, 372000.00, 4836000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (112, 18, 10, 10, 1680000.00, 16800000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (112, 7, 63, 63, 90000.00, 5670000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (113, 2, 5, '2024-11-10', '2024-11-10'::timestamp + interval '5 days', '2024-11-10'::timestamp + interval '7 days', 3690000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (113, 15, 82, 82, 45000.00, 3690000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (114, 7, 4, '2024-09-15', '2024-09-15'::timestamp + interval '5 days', '2024-09-15'::timestamp + interval '7 days', 24093000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (114, 1, 17, 17, 210000.00, 3570000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (114, 20, 73, 73, 51000.00, 3723000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (114, 18, 10, 10, 1680000.00, 16800000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (115, 3, 3, '2024-12-03', '2024-12-03'::timestamp + interval '5 days', '2024-12-03'::timestamp + interval '7 days', 23865000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (115, 15, 45, 45, 45000.00, 2025000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (115, 3, 30, 30, 168000.00, 5040000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (115, 18, 10, 10, 1680000.00, 16800000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (116, 4, 6, '2024-12-22', '2024-12-22'::timestamp + interval '5 days', '2024-12-22'::timestamp + interval '7 days', 7992000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (116, 14, 74, 74, 108000.00, 7992000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (117, 8, 5, '2024-05-22', '2024-05-22'::timestamp + interval '5 days', '2024-05-22'::timestamp + interval '7 days', 14148000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (117, 16, 25, 25, 228000.00, 5700000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (117, 2, 16, 16, 288000.00, 4608000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (117, 4, 20, 20, 192000.00, 3840000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (118, 1, 12, '2024-07-26', '2024-07-26'::timestamp + interval '5 days', '2024-07-26'::timestamp + interval '7 days', 6912000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (118, 5, 69, 69, 57000.00, 3933000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (118, 8, 67, 67, 27000.00, 1809000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (118, 15, 26, 26, 45000.00, 1170000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (119, 7, 7, '2024-09-14', '2024-09-14'::timestamp + interval '5 days', '2024-09-14'::timestamp + interval '7 days', 8166000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (119, 1, 27, 27, 210000.00, 5670000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (119, 4, 13, 13, 192000.00, 2496000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (120, 1, 13, '2024-09-12', '2024-09-12'::timestamp + interval '10 days', NULL, 22344000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (120, 18, 10, 0, 1680000.00, 16800000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (120, 3, 33, 0, 168000.00, 5544000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (121, 6, 11, '2024-07-02', '2024-07-02'::timestamp + interval '5 days', '2024-07-02'::timestamp + interval '7 days', 8436000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (121, 16, 37, 37, 228000.00, 8436000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (122, 3, 12, '2024-03-10', '2024-03-10'::timestamp + interval '5 days', '2024-03-10'::timestamp + interval '7 days', 7872000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (122, 7, 64, 64, 90000.00, 5760000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (122, 4, 11, 11, 192000.00, 2112000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (123, 5, 4, '2024-12-23', '2024-12-23'::timestamp + interval '10 days', NULL, 6552000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (123, 13, 26, 0, 252000.00, 6552000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (124, 2, 8, '2024-12-02', '2024-12-02'::timestamp + interval '5 days', '2024-12-02'::timestamp + interval '7 days', 7308000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (124, 13, 29, 29, 252000.00, 7308000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (125, 6, 6, '2024-10-17', '2024-10-17'::timestamp + interval '10 days', NULL, 4410000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (125, 1, 21, 0, 210000.00, 4410000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (126, 8, 13, '2024-04-05', '2024-04-05'::timestamp + interval '5 days', '2024-04-05'::timestamp + interval '7 days', 10773000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (126, 12, 10, 10, 720000.00, 7200000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (126, 7, 31, 31, 90000.00, 2790000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (126, 8, 29, 29, 27000.00, 783000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (127, 8, 4, '2024-10-07', '2024-10-07'::timestamp + interval '10 days', NULL, 12594000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (127, 20, 46, 0, 51000.00, 2346000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (127, 6, 56, 0, 33000.00, 1848000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (127, 1, 40, 0, 210000.00, 8400000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (128, 4, 13, '2024-06-05', '2024-06-05'::timestamp + interval '5 days', '2024-06-05'::timestamp + interval '7 days', 8808000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (128, 3, 32, 32, 168000.00, 5376000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (128, 17, 11, 11, 312000.00, 3432000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (129, 8, 7, '2024-02-02', '2024-02-02'::timestamp + interval '5 days', '2024-02-02'::timestamp + interval '7 days', 11184000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (129, 2, 15, 15, 288000.00, 4320000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (129, 17, 22, 22, 312000.00, 6864000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (130, 8, 13, '2024-12-25', '2024-12-25'::timestamp + interval '5 days', '2024-12-25'::timestamp + interval '7 days', 5220000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (130, 7, 58, 58, 90000.00, 5220000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (131, 1, 2, '2024-01-04', '2024-01-04'::timestamp + interval '5 days', '2024-01-04'::timestamp + interval '7 days', 8640000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (131, 12, 12, 12, 720000.00, 8640000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (132, 4, 9, '2024-09-21', NULL, NULL, 15168000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (132, 3, 26, 0, 168000.00, 4368000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (132, 16, 27, 0, 228000.00, 6156000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (132, 14, 43, 0, 108000.00, 4644000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (133, 7, 8, '2024-04-15', '2024-04-15'::timestamp + interval '10 days', NULL, 2052000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (133, 5, 36, 0, 57000.00, 2052000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (134, 4, 12, '2024-12-05', NULL, NULL, 15036000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (134, 17, 19, 0, 312000.00, 5928000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (134, 1, 26, 0, 210000.00, 5460000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (134, 4, 19, 0, 192000.00, 3648000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (135, 6, 9, '2024-12-28', '2024-12-28'::timestamp + interval '5 days', '2024-12-28'::timestamp + interval '7 days', 1056000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (135, 6, 32, 32, 33000.00, 1056000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (136, 6, 7, '2024-01-06', '2024-01-06'::timestamp + interval '10 days', NULL, 21210000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (136, 11, 10, 0, 870000.00, 8700000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (136, 7, 59, 0, 90000.00, 5310000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (136, 12, 10, 0, 720000.00, 7200000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (137, 8, 14, '2024-11-03', '2024-11-03'::timestamp + interval '10 days', NULL, 16800000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (137, 18, 10, 0, 1680000.00, 16800000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (138, 5, 7, '2024-09-16', '2024-09-16'::timestamp + interval '5 days', '2024-09-16'::timestamp + interval '7 days', 8610000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (138, 1, 41, 41, 210000.00, 8610000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (139, 6, 4, '2024-12-10', '2024-12-10'::timestamp + interval '10 days', NULL, 27666000.00, 'Pendiente', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (139, 18, 10, 0, 1680000.00, 16800000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (139, 11, 10, 0, 870000.00, 8700000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (139, 5, 38, 0, 57000.00, 2166000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (140, 7, 3, '2024-06-02', '2024-06-02'::timestamp + interval '5 days', '2024-06-02'::timestamp + interval '7 days', 8946000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (140, 13, 28, 28, 252000.00, 7056000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (140, 8, 70, 70, 27000.00, 1890000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (141, 6, 7, '2024-02-24', '2024-02-24'::timestamp + interval '5 days', '2024-02-24'::timestamp + interval '7 days', 13680000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (141, 2, 20, 20, 288000.00, 5760000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (141, 12, 11, 11, 720000.00, 7920000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (142, 2, 13, '2024-03-21', '2024-03-21'::timestamp + interval '5 days', '2024-03-21'::timestamp + interval '7 days', 6588000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (142, 3, 27, 27, 168000.00, 4536000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (142, 14, 19, 19, 108000.00, 2052000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (143, 2, 10, '2024-11-22', '2024-11-22'::timestamp + interval '5 days', '2024-11-22'::timestamp + interval '7 days', 10218000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (143, 9, 19, 19, 372000.00, 7068000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (143, 1, 15, 15, 210000.00, 3150000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (144, 7, 10, '2024-12-19', '2024-12-19'::timestamp + interval '5 days', '2024-12-19'::timestamp + interval '7 days', 10758000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (144, 16, 11, 11, 228000.00, 2508000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (144, 12, 11, 11, 720000.00, 7920000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (144, 6, 10, 10, 33000.00, 330000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (145, 3, 1, '2024-05-14', NULL, NULL, 13908000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (145, 1, 16, 0, 210000.00, 3360000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (145, 3, 18, 0, 168000.00, 3024000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (145, 16, 33, 0, 228000.00, 7524000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (146, 2, 3, '2024-05-07', '2024-05-07'::timestamp + interval '5 days', '2024-05-07'::timestamp + interval '7 days', 19620000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (146, 14, 78, 78, 108000.00, 8424000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (146, 13, 28, 28, 252000.00, 7056000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (146, 15, 92, 92, 45000.00, 4140000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (147, 8, 7, '2024-01-17', '2024-01-17'::timestamp + interval '5 days', '2024-01-17'::timestamp + interval '7 days', 2112000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (147, 6, 64, 64, 33000.00, 2112000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (148, 8, 8, '2024-04-26', '2024-04-26'::timestamp + interval '5 days', '2024-04-26'::timestamp + interval '7 days', 3762000.00, 'Recibida', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (148, 5, 66, 66, 57000.00, 3762000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (149, 7, 11, '2024-11-15', NULL, NULL, 32580000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (149, 19, 14, 0, 570000.00, 7980000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (149, 17, 25, 0, 312000.00, 7800000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (149, 18, 10, 0, 1680000.00, 16800000.00);

INSERT INTO ORDEN_PROVEEDOR (id_ord_prov, id_proveedor, id_empleado, fecha_orden, fecha_entrega, fecha_recepcion, total, estado, lugar_entrega) VALUES (150, 6, 4, '2024-12-07', NULL, NULL, 10722000.00, 'Cancelada', 'Bodega Principal - Cali');
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (150, 19, 10, 0, 570000.00, 5700000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (150, 10, 87, 0, 36000.00, 3132000.00);
INSERT INTO DETALLE_ORD_PROVEEDOR (id_ord_prov, id_producto, cantidad_pedida, cantidad_recibida, precio_unidad, subtotal) VALUES (150, 7, 21, 0, 90000.00, 1890000.00);

COMMIT;