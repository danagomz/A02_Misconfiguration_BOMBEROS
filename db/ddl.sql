CREATE TABLE SEDE (
    id_sede SERIAL PRIMARY KEY,
    nombre_sede VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL
);


CREATE TABLE CLIENTE (
    id_cliente SERIAL PRIMARY KEY,
    num_doc VARCHAR(20) NOT NULL UNIQUE,
    tipo_doc VARCHAR(20) NOT NULL,
    nombre_razon_social VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    direccion_operativa VARCHAR(150),
    direccion_residencial VARCHAR(150),
    tipo_cliente VARCHAR(30) NOT NULL,
    habeas_data BOOLEAN,
    ciudad VARCHAR(50) NOT NULL,
    repre_legal VARCHAR(100),
    regimen_tributario VARCHAR(50),

    CONSTRAINT chk_cliente_tipo_doc
        CHECK (tipo_doc IN ('CC','NIT','CE')),

    CONSTRAINT chk_cliente_tipo
        CHECK (tipo_cliente IN ('Persona','Empresa'))

);

CREATE TABLE PROVEEDOR (
    id_proveedor SERIAL PRIMARY KEY,
    nit VARCHAR(20) NOT NULL UNIQUE,
    razon_social VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    direccion VARCHAR(150),
    rut VARCHAR(20),
    tipo_proveedor VARCHAR(50) NOT NULL,
    tiempo_entrega INTEGER,
    contacto_comercial VARCHAR(100),
    contacto_cartera VARCHAR(100),
    contacto_logistico VARCHAR(100),
    condiciones_pago INTEGER,
    calificacion INTEGER,
    banco VARCHAR(50),
    tipo_cuenta VARCHAR(30),
    numero_cuenta VARCHAR(30),
    activo BOOLEAN,

    CONSTRAINT chk_proveedor_tiempo
        CHECK (tiempo_entrega >= 0),

    CONSTRAINT chk_proveedor_condiciones
        CHECK (condiciones_pago >= 0),

    CONSTRAINT chk_proveedor_calificacion
        CHECK (calificacion BETWEEN 1 AND 5)
);

CREATE TABLE EMPLEADO (
    id_empleado SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    telefono VARCHAR(20),
    correo VARCHAR(100) NOT NULL UNIQUE,
    salario DECIMAL(10,2) NOT NULL,
    id_sede INTEGER NOT NULL,

    CONSTRAINT chk_salario
        CHECK (salario > 0),

    CONSTRAINT chk_cargo_empleado
        CHECK (
            cargo IN (
                    'Asesor Comercial',
                    'Auxiliar Comercial',
                    'Coordinador Comercial',
                    'Jefe Comercial',
                    'Administrador'
            )
        ),

    CONSTRAINT fk_empleado_sede
        FOREIGN KEY (id_sede)
            REFERENCES SEDE(id_sede)
);



CREATE TABLE PRODUCTO (
    id_producto SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200),
    precio DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50),
    activo BOOLEAN,
    id_proveedor INTEGER NOT NULL,

    CONSTRAINT chk_precio
        CHECK (precio > 0),

    CONSTRAINT fk_producto_proveedor
        FOREIGN KEY (id_proveedor)
            REFERENCES PROVEEDOR(id_proveedor)

);


CREATE TABLE INVENTARIO (
    id_inventario SERIAL PRIMARY KEY,
    stock_actual INTEGER NOT NULL,
    stock_minimo INTEGER NOT NULL,
    demanda_diaria INTEGER NOT NULL,
    estado_stock VARCHAR(20),
    id_producto INTEGER NOT NULL UNIQUE,

    CONSTRAINT chk_stock_actual
        CHECK (stock_actual >= 0),

    CONSTRAINT chk_stock_minimo
        CHECK (stock_minimo >= 0),

    CONSTRAINT chk_demanda
        CHECK (demanda_diaria >= 0),

    CONSTRAINT chk_estado_stock
        CHECK (estado_stock IN ('Agotado','Crítico','Alerta','Seguro')),

    CONSTRAINT fk_producto_inventario
        FOREIGN KEY (id_producto)
            REFERENCES PRODUCTO(id_producto)

);

CREATE TABLE ORDEN_PROVEEDOR (
    id_ord_prov SERIAL PRIMARY KEY,
    id_proveedor INTEGER NOT NULL,
    id_empleado INTEGER NOT NULL,
    fecha_orden TIMESTAMP NOT NULL,
    fecha_entrega TIMESTAMP,
    fecha_recepcion TIMESTAMP,
    total DECIMAL(12,2),
    estado VARCHAR(20) NOT NULL,
    lugar_entrega VARCHAR(150) NOT NULL,

    CONSTRAINT chk_total_ord_prov
        CHECK (total >= 0),

    CONSTRAINT chk_estado_ord_prov
        CHECK (estado IN ('Pendiente','Recibida','Cancelada')),

    CONSTRAINT chk_fechas_ord_prov
        CHECK (
            (fecha_entrega IS NULL OR fecha_entrega >= fecha_orden)
                AND
            (fecha_recepcion IS NULL OR fecha_recepcion >= fecha_entrega)
        ),

    CONSTRAINT fk_ordprov_proveedor
        FOREIGN KEY (id_proveedor)
            REFERENCES PROVEEDOR(id_proveedor),

    CONSTRAINT fk_ordprov_empleado
        FOREIGN KEY (id_empleado)
            REFERENCES EMPLEADO(id_empleado)
);


CREATE TABLE DETALLE_ORD_PROVEEDOR (
    id_detalle_prov SERIAL PRIMARY KEY,
    id_ord_prov INTEGER NOT NULL,
    id_producto INTEGER NOT NULL,
    cantidad_pedida INTEGER NOT NULL,
    cantidad_recibida INTEGER,
    precio_unidad DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,

    CONSTRAINT chk_cant_pedida
        CHECK (cantidad_pedida > 0),

    CONSTRAINT chk_cant_recibida
        CHECK (cantidad_recibida >= 0),

    CONSTRAINT chk_precio_unidad
        CHECK (precio_unidad > 0),

    CONSTRAINT chk_subtotal_prov
        CHECK (subtotal >= 0),

    CONSTRAINT fk_detprov_orden
        FOREIGN KEY (id_ord_prov)
            REFERENCES ORDEN_PROVEEDOR(id_ord_prov),

    CONSTRAINT fk_detprov_producto
        FOREIGN KEY (id_producto)
            REFERENCES PRODUCTO(id_producto)
);

CREATE TABLE ORDEN (
    id_orden SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    total DECIMAL(12,2) NOT NULL,
    estado VARCHAR(20) NOT NULL,
    observaciones VARCHAR(200),
    fecha_creacion TIMESTAMP,
    id_cliente INTEGER NOT NULL,
    id_empleado INTEGER NOT NULL,
    id_sede INTEGER NOT NULL,

    CONSTRAINT chk_total_orden
        CHECK (total >= 0),

    CONSTRAINT chk_estado_orden
        CHECK (
            estado IN (
                      'Pendiente',
                      'En Proceso',
                      'Entregada',
                      'Cancelada'
            )
        ),

    CONSTRAINT fk_orden_cliente
        FOREIGN KEY (id_cliente)
            REFERENCES CLIENTE(id_cliente),

    CONSTRAINT fk_orden_empleado
        FOREIGN KEY (id_empleado)
            REFERENCES EMPLEADO(id_empleado),

    CONSTRAINT fk_orden_sede
        FOREIGN KEY (id_sede)
            REFERENCES SEDE(id_sede)

);

CREATE TABLE FACTURA (
    id_factura SERIAL PRIMARY KEY,
    id_orden INTEGER NOT NULL,
    prefijo VARCHAR(10),
    num_consec VARCHAR(30) NOT NULL UNIQUE,
    cufe VARCHAR(100) NOT NULL UNIQUE,
    fecha_generacion TIMESTAMP NOT NULL,
    fecha_exped TIMESTAMP,
    subtotal DECIMAL(12,2) NOT NULL,
    total_iva DECIMAL(12,2),
    total DECIMAL(12,2) NOT NULL,
    estado_factura VARCHAR(20) NOT NULL,

    CONSTRAINT chk_subtotal_factura
        CHECK (subtotal >= 0),

    CONSTRAINT chk_iva_factura
        CHECK (total_iva >= 0),

    CONSTRAINT chk_total_factura
        CHECK (total >= 0),

    CONSTRAINT chk_estado_factura
        CHECK (estado_factura IN ('Generada','Pagada','Anulada')),

    CONSTRAINT fk_factura_orden
        FOREIGN KEY (id_orden)
            REFERENCES ORDEN(id_orden)
);


CREATE TABLE PAGO (
    id_pago SERIAL PRIMARY KEY,
    metodo_pago VARCHAR(30) NOT NULL,
    fecha_pago DATE NOT NULL,
    valor DECIMAL(12,2) NOT NULL,
    referencia_pago VARCHAR(50),
    estado_pago VARCHAR(20) NOT NULL,
    id_factura INTEGER NOT NULL,
    id_cliente INTEGER NOT NULL,

    CONSTRAINT chk_valor_pago
        CHECK (valor > 0),

    CONSTRAINT chk_estado_pago
        CHECK (estado_pago IN ('Pendiente','Pagado','Anulado')),

    CONSTRAINT fk_pago_factura
        FOREIGN KEY (id_factura)
            REFERENCES FACTURA(id_factura),

    CONSTRAINT fk_pago_cliente
        FOREIGN KEY (id_cliente)
            REFERENCES CLIENTE(id_cliente)

);




CREATE TABLE DETALLE_ORDEN (
    id_detalle SERIAL PRIMARY KEY,
    cantidad INTEGER NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    id_orden INTEGER NOT NULL,
    id_producto INTEGER NOT NULL,

    CONSTRAINT chk_cantidad_orden
        CHECK (cantidad > 0),

    CONSTRAINT chk_subtotal_orden
        CHECK (subtotal >= 0),

    CONSTRAINT fk_detalle_orden
        FOREIGN KEY (id_orden)
            REFERENCES ORDEN(id_orden),

    CONSTRAINT fk_detalle_producto
        FOREIGN KEY (id_producto)
            REFERENCES PRODUCTO(id_producto)

);


CREATE TABLE ENTREGA (
    id_entrega SERIAL PRIMARY KEY,
    id_orden INTEGER NOT NULL,
    id_empleado INTEGER NOT NULL,
    fecha_llegada DATE NOT NULL,
    direccion_entrega VARCHAR(150) NOT NULL,
    nombre_receptor VARCHAR(100),
    documento_recep VARCHAR(20),
    estado_entrega VARCHAR(20) NOT NULL,

    CONSTRAINT chk_estado_entrega
        CHECK (
            estado_entrega IN (
                            'Pendiente',
                            'En Ruta',
                            'Entregada',
                            'No Entregada'
            )
        ),

    CONSTRAINT fk_entrega_orden
        FOREIGN KEY (id_orden)
            REFERENCES ORDEN(id_orden),

    CONSTRAINT fk_entrega_empleado
        FOREIGN KEY (id_empleado)
            REFERENCES EMPLEADO(id_empleado)
);
