-- Tabla Representate Legal
INSERT INTO RepresentanteLegal (rut, nombre, telefono, email) 
VALUES ('654321987', 'Juan Pérez', '912345678', 'juan.perez@ejemplo.com');

INSERT INTO RepresentanteLegal (rut, nombre, telefono, email) 
VALUES ('789456123', 'Ana Gómez', '923456789', 'ana.gomez@ejemplo.com');

INSERT INTO RepresentanteLegal (rut, nombre, telefono, email) 
VALUES ('456789123', 'Carlos Rivera', '934567890', 'carlos.rivera@ejemplo.com');

INSERT INTO RepresentanteLegal (rut, nombre, telefono, email) 
VALUES ('321654987', 'Lucía Martínez', '945678901', 'lucia.martinez@ejemplo.com');

-- Tabla Institucion
INSERT INTO Institucion (rut, nombre_razon_social, direccion, telefono, email, representante_legal_rut)
VALUES ('987654321', 'Fundación Ejemplo', 'Calle Falsa 123', '123456789', 'contacto@fundacion.cl', '654321987');

INSERT INTO Institucion (rut, nombre_razon_social, direccion, telefono, email, representante_legal_rut)
VALUES ('123456789', 'Asociación Ayuda', 'Av. Central 456', '987654321', 'ayuda@asociacion.cl', '789456123');

INSERT INTO Institucion (rut, nombre_razon_social, direccion, telefono, email, representante_legal_rut)
VALUES ('741852963', 'Fundación Manos Unidas', 'Calle Esperanza 789', '321654987', 'contacto@manosunidas.cl', '456789123');

INSERT INTO Institucion (rut, nombre_razon_social, direccion, telefono, email, representante_legal_rut)
VALUES ('852963741', 'Comité de Solidaridad', 'Calle Libertad 456', '963852741', 'solidaridad@comite.cl', '321654987');

-- Tabla Trabajador
INSERT INTO Trabajador (rut, nombre, cargo, salario, institucion_rut)
VALUES ('123456789', 'Pedro García', 'Gerente', 1500.00, '987654321');

INSERT INTO Trabajador (rut, nombre, cargo, salario, institucion_rut)
VALUES ('987654321', 'María López', 'Administradora', 1200.00, '123456789');

INSERT INTO Trabajador (rut, nombre, cargo, salario, institucion_rut)
VALUES ('741852963', 'Carlos Sánchez', 'Coordinador', 1300.00, '741852963');

INSERT INTO Trabajador (rut, nombre, cargo, salario, institucion_rut)
VALUES ('852963741', 'Ana Torres', 'Asistente', 1000.00, '852963741');

-- Tabla Cuenta Bancaria
INSERT INTO CuentaBancaria (numero_cuenta, institucion_rut, banco)
VALUES ('0987654321', '987654321', 'Banco Estado');

INSERT INTO CuentaBancaria (numero_cuenta, institucion_rut, banco)
VALUES ('1234567890', '123456789', 'Banco Santander');

INSERT INTO CuentaBancaria (numero_cuenta, institucion_rut, banco)
VALUES ('9876543210', '741852963', 'Banco Chile');

INSERT INTO CuentaBancaria (numero_cuenta, institucion_rut, banco)
VALUES ('7418529630', '852963741', 'Banco BBVA');

-- Tabla Donante
INSERT INTO Donante (rut, nombre, email)
VALUES ('159753456', 'José Pérez', 'jose.perez@correo.com');

INSERT INTO Donante (rut, nombre, email)
VALUES ('258963147', 'Laura Martínez', 'laura.martinez@correo.com');

INSERT INTO Donante (rut, nombre, email)
VALUES ('357159258', 'Miguel Gómez', 'miguel.gomez@correo.com');

INSERT INTO Donante (rut, nombre, email)
VALUES ('456258789', 'Carmen Torres', 'carmen.torres@correo.com');

-- Tabla Donacion
INSERT INTO Donacion (monto, fecha, donante_rut, cuenta_bancaria_destino)
VALUES (1000.50, TO_DATE('2024-09-30', 'YYYY-MM-DD'), '159753456', '0987654321');

INSERT INTO Donacion (monto, fecha, donante_rut, cuenta_bancaria_destino)
VALUES (1500.00, TO_DATE('2024-09-30', 'YYYY-MM-DD'), '258963147', '1234567890');

INSERT INTO Donacion (monto, fecha, donante_rut, cuenta_bancaria_destino)
VALUES (500.75, TO_DATE('2024-09-30', 'YYYY-MM-DD'), '357159258', '9876543210');

INSERT INTO Donacion (monto, fecha, donante_rut, cuenta_bancaria_destino)
VALUES (200.25, TO_DATE('2024-09-30', 'YYYY-MM-DD'), '456258789', '7418529630');

-- Tabla Gastos Institucionales
INSERT INTO GastosInstitucionales (descripcion, monto, fecha, institucion_rut)
VALUES ('Pago de Servicios Básicos', 200.00, TO_DATE('2024-09-30', 'YYYY-MM-DD'), '987654321');

INSERT INTO GastosInstitucionales (descripcion, monto, fecha, institucion_rut)
VALUES ('Compra de Equipos', 1500.00, TO_DATE('2024-09-30', 'YYYY-MM-DD'), '123456789');

INSERT INTO GastosInstitucionales (descripcion, monto, fecha, institucion_rut)
VALUES ('Pago de Nómina', 5000.00, TO_DATE('2024-09-30', 'YYYY-MM-DD'), '741852963');

INSERT INTO GastosInstitucionales (descripcion, monto, fecha, institucion_rut)
VALUES ('Mantenimiento de Infraestructura', 800.00, TO_DATE('2024-09-30', 'YYYY-MM-DD'), '852963741');