-- Crear usuario
CREATE USER institucional_user IDENTIFIED BY Pepito123456;

-- Otorgar permisos básicos
GRANT CONNECT, RESOURCE TO institucional_user;

-- Otorgar permisos sobre las tablas
GRANT SELECT, INSERT, UPDATE, DELETE ON Donacion TO institucional_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON GastosInstitucionales TO institucional_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON CuentaBancaria TO institucional_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON Donante TO institucional_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON Trabajador TO institucional_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON Institucion TO institucional_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON RepresentanteLegal TO institucional_user;

-- Establecer el tablespace predeterminado
ALTER USER institucional_user DEFAULT TABLESPACE users;