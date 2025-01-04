-- SELECT
-- Consultar datos.
-- =======================================================

USE EDUCA2;
GO

sp_help pago;
go


-- Sintaxis basica
/*
	SELECT [TOP n] */<lista de columnas> 
	FROM <nombre de tabla>
	WHERE <filtro de filas>
	ORDER BY <columnas de ordenamiento>
*/

SELECT * 
FROM Northwind..Products;
GO

SELECT * 
FROM Northwind..Products
ORDER BY UnitsInStock;
GO

SELECT * 
FROM Northwind..Products
ORDER BY UnitsInStock DESC;
GO


SELECT TOP 5 * 
FROM Northwind..Products
ORDER BY UnitsInStock DESC;
GO

SELECT TOP 5 PERCENT * 
FROM Northwind..Products
ORDER BY UnitsInStock DESC;
GO

SELECT 77*0.05

SELECT TOP 1 WITH TIES * 
FROM EDUTEC..CursoProgramado
WHERE IdCiclo LIKE '2024%'
ORDER BY 6 DESC;
GO


SELECT * 
FROM RH..empleado;
GO

SELECT idempleado, apellido, nombre, sueldo, comision
FROM RH..empleado;
GO


SELECT idempleado ID, apellido, nombre, sueldo, comision
FROM RH..empleado;
GO


SELECT 
	idempleado ID, 
	apellido + ', ' + nombre nombre, 
	sueldo, comision
FROM RH..empleado;
GO

SELECT 
	idempleado ID, 
	concat(apellido,', ',nombre) nombre, 
	sueldo, comision
FROM RH..empleado;
GO


SELECT 
	idempleado ID, 
	concat(apellido,', ',nombre) nombre, 
	sueldo, comision,
	sueldo + comision "total a pagar"
FROM RH..empleado;
GO


SELECT 
	idempleado ID, 
	concat(apellido,', ',nombre) nombre, 
	sueldo, ISNULL(comision,0) comision,
	sueldo + ISNULL(comision,0) "total a pagar"
FROM RH..empleado;
GO


SELECT COALESCE(NULL,NULL,45,21,89);
GO

SELECT 
	idempleado ID, 
	concat(apellido,', ',nombre) nombre, 
	sueldo, COALESCE(comision,0) comision,
	sueldo + COALESCE(comision,0) [total a pagar]
FROM RH..empleado;
GO











