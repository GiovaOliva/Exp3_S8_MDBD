-- Para Comprobar tablas pobladas

SELECT * FROM RepresentanteLegal;

SELECT * FROM Institucion;

SELECT * FROM Trabajador;

SELECT * FROM CuentaBancaria;

SELECT * FROM Donante;

SELECT * FROM Donacion;

SELECT * FROM GastosInstitucionales;

-- Consultas Simples

-- Mostrar las donaciones con los nombres de los donantes y el banco de destino
SELECT d.monto, d.fecha, dn.nombre AS donante, cb.banco AS banco_destino
FROM Donacion d
JOIN Donante dn ON d.donante_rut = dn.rut
JOIN CuentaBancaria cb ON d.cuenta_bancaria_destino = cb.numero_cuenta;

--Mostrar todas las instituciones y sus respectivos representantes legales
SELECT i.nombre_razon_social, i.direccion, r.nombre AS representante_legal, r.email
FROM Institucion i
JOIN RepresentanteLegal r ON i.representante_legal_rut = r.rut;

--Mostrar los trabajadores con el nombre de la institución a la que pertenecen
SELECT t.nombre AS trabajador, t.cargo, t.salario, i.nombre_razon_social AS institucion
FROM Trabajador t
JOIN Institucion i ON t.institucion_rut = i.rut;

--Consultar los gastos institucionales de una institución específica
SELECT g.descripcion, g.monto, g.fecha, i.nombre_razon_social AS institucion
FROM GastosInstitucionales g
JOIN Institucion i ON g.institucion_rut = i.rut
WHERE i.nombre_razon_social = 'Fundación Ejemplo';