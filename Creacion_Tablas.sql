-- Creación de la tabla RepresentanteLegal
CREATE TABLE RepresentanteLegal (
    rut VARCHAR(12) PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(15),
    email VARCHAR(100)
);

-- Creación de la tabla Institucion
CREATE TABLE Institucion (
    rut VARCHAR(12) PRIMARY KEY,
    nombre_razon_social VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(15),
    email VARCHAR(100),
    representante_legal_rut VARCHAR(12),
    FOREIGN KEY (representante_legal_rut) REFERENCES RepresentanteLegal(rut) ON DELETE CASCADE
);

-- Creación de la tabla Trabajador
CREATE TABLE Trabajador (
    rut VARCHAR(12) PRIMARY KEY,
    nombre VARCHAR(100),
    cargo VARCHAR(100),
    salario DECIMAL(10, 2),
    institucion_rut VARCHAR(12),
    FOREIGN KEY (institucion_rut) REFERENCES Institucion(rut) ON DELETE CASCADE
);

-- Creación de la tabla CuentaBancaria
CREATE TABLE CuentaBancaria (
    numero_cuenta VARCHAR(20) PRIMARY KEY,
    institucion_rut VARCHAR(12),
    banco VARCHAR(100),
    FOREIGN KEY (institucion_rut) REFERENCES Institucion(rut) ON DELETE CASCADE
);

-- Creación de la tabla Donante
CREATE TABLE Donante (
    rut VARCHAR(12) PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100)
);

-- Creación de la tabla Donacion
CREATE TABLE Donacion (
    id INT PRIMARY KEY,
    monto DECIMAL(10,2),
    fecha DATE,
    donante_rut VARCHAR(12),
    cuenta_bancaria_destino VARCHAR(20),
    FOREIGN KEY (donante_rut) REFERENCES Donante(rut) ON DELETE SET NULL,
    FOREIGN KEY (cuenta_bancaria_destino) REFERENCES CuentaBancaria(numero_cuenta) ON DELETE CASCADE
);

-- Creación de la tabla Gastos Institucionales
CREATE TABLE GastosInstitucionales (
    id INT PRIMARY KEY,
    descripcion VARCHAR(255),
    monto DECIMAL(10,2),
    fecha DATE,
    institucion_rut VARCHAR(12),
    FOREIGN KEY (institucion_rut) REFERENCES Institucion(rut) ON DELETE CASCADE
);

-- Creación de las secuencias para IDs automáticos
CREATE SEQUENCE seq_donacion_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_gastos_institucionales_id START WITH 1 INCREMENT BY 1;

-- Triggers para la inserción automática de IDs
CREATE OR REPLACE TRIGGER trg_donacion_id
BEFORE INSERT ON Donacion
FOR EACH ROW
BEGIN
    :NEW.id := seq_donacion_id.NEXTVAL;
END;

CREATE OR REPLACE TRIGGER trg_gastos_institucionales_id
BEFORE INSERT ON GastosInstitucionales
FOR EACH ROW
BEGIN
    :NEW.id := seq_gastos_institucionales_id.NEXTVAL;
END;