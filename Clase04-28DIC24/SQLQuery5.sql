-- UPDATE
-- Actualizar datos de las tablas.
-- ========================================

USE EDUCA2;
GO

SELECT * FROM CURSO;
GO

-- El curso de SQL Server Administracion costara 1500,
-- actualiza la base de datos.

UPDATE CURSO 
SET cur_precio=1500.00
WHERE cur_id=2;
GO

SELECT * FROM CURSO;
GO


/*
El curso de programacion con Python costara 50 Soles
y las aumenta a 80 vacantes
*/

UPDATE CURSO
SET cur_vacantes=80, cur_precio=50.00
WHERE cur_id=8;
GO

SELECT * FROM CURSO;
GO













