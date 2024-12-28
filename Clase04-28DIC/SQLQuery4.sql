-- MANTENIMIENTO DE DATOS
-- ==========================

-- INSERT
-- Para insertar nuevos registros en una tabla
-- =================================================

USE EDUCA2;
GO

SELECT * FROM ALUMNO;
GO

SP_HELP ALUMNO;
GO

SELECT * FROM ALUMNO;
GO

INSERT INTO ALUMNO
VALUES('GUSTAVO CORONEL','LIMA','978435784','gustavo@gmail.com');
GO

INSERT INTO ALUMNOVALUES('LILIANA PABLO', 'LA VICTORIA', '939615540','cpablocastillejo@gmail.com');GO


USE RH;
GO

SP_HELP CARGO;
GO

SELECT * FROM CARGO;
GO

INSERT INTO CARGO 
VALUES('C11','COCINERO',3500.00, 10000.00)
GO

INSERT INTO CARGO(idcargo,nombre,sueldo_min,sueldo_max) 
VALUES('C12','LAVANDERO',3500.00, 10000.00)
GO

