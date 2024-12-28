
USE EDUCA2;
GO


SELECT 
	idempleado ID, 
	concat(apellido,', ',nombre) nombre, 
	sueldo, COALESCE(comision,0) comision,
	sueldo + COALESCE(comision,0) [total a pagar]
FROM RH..empleado
WHERE sueldo < 2500;
GO


-- Quien es el empleado con el mayor sueldo.


SELECT top 1 
	idempleado ID, 
	concat(apellido,', ',nombre) nombre, 
	sueldo, COALESCE(comision,0) comision,
	sueldo + COALESCE(comision,0) [total a pagar]
FROM RH..empleado
ORDER BY sueldo desc;
GO

-- Quien es el empleado con mas tiempo de servicio

SELECT top 1 with ties
	idempleado ID, 
	concat(apellido,', ',nombre) nombre, 
	sueldo, COALESCE(comision,0) comision,
	sueldo + COALESCE(comision,0) [Total a pagar],
	DATEDIFF(MONTH, fecingreso, GETDATE()) [Meses de servicio]
FROM RH..empleado 
ORDER BY 6 DESC;
GO





