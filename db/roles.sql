-- Rol de la aplicación: solo lee y escribe datos, no cambia el esquema
CREATE ROLE app_bomberos LOGIN PASSWORD 'CAMBIAR_ESTA_CLAVE';

GRANT CONNECT ON DATABASE bomberos_cali TO app_bomberos;
GRANT USAGE ON SCHEMA public TO app_bomberos;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO app_bomberos;
GRANT USAGE, SELECT, UPDATE ON ALL SEQUENCES IN SCHEMA public TO app_bomberos;

-- Las tablas que se creen después (por ejemplo las de Django) quedan cubiertas
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public
    GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO app_bomberos;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public
    GRANT USAGE, SELECT, UPDATE ON SEQUENCES TO app_bomberos;

-- Rol opcional solo para reportes
CREATE ROLE app_lectura LOGIN PASSWORD 'CAMBIAR_ESTA_CLAVE_2';
GRANT CONNECT ON DATABASE bomberos_cali TO app_lectura;
GRANT USAGE ON SCHEMA public TO app_lectura;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO app_lectura;