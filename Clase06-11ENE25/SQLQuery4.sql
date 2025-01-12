-- TRANSACCION A NIVEL DE BD
/*
Es un conjunto de operaciones que deben funcionar como una sola operacion
indivisible.
*/

-- Por defecto, las operaciones se confirman de manera automatica.

update EDUCA2..CURSO
set cur_precio = 1500
where cur_id = 2;
go

-- Pero no sucede asi cuando gestionas transacciones

-- Inicia TX
BEGIN TRAN;
GO

SELECT @@TRANCOUNT;
GO

update EDUCA2..CURSO
set cur_precio = 2500
where cur_id = 2;
go


SELECT * FROM EDUCA2..CURSO;
GO

-- Confirma TX
COMMIT;
GO

-- Cancela TX
ROLLBACK;
GO

-- Para matricular a un alumno nuevo

-- Paso 1
BEGIN TRAN;
GO

-- Paso 2
INSERT INTO ALUMNO(...) VALUES(...);
GO

-- Paso 3
INSERT INTO MATRICULA(...) VALUES(...);
GO

-- Paso 4
COMMIT;
GO


