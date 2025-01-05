/*
Funciones:
- COUNT
- SUM
- AVG
- MAX
- MIN
*/

SELECT COUNT(*) [FILAS]
FROM RH..empleado;
GO

SELECT COUNT(idempleado) [EMPLEADOS]
FROM RH..empleado;
GO

SELECT COUNT(comision) [EMPLEADOS CON COMISION]
FROM RH..empleado;
GO

SELECT COUNT(comision) [EMPLEADOS CON COMISION]
FROM RH..empleado
WHERE ISNULL(COMISION,0) > 0;
GO


-- Datos estadisticos por grupos

-- ¿Cuantos empleados por departamento existen?

select 
	iddepartamento, count(1) empleados
from rh..empleado
group by iddepartamento;
go

-- ¿Cuantos empleados por departamento tienen sueldo menor a 2500.00?

select 
	iddepartamento, count(1) empleados
from rh..empleado
where sueldo <= 2000.0
group by iddepartamento;
go



select iddepartamento, count(1) empleados from rh..empleado group by iddepartamento;
go
select iddepartamento, count(*) empleados from rh..empleado group by iddepartamento;
go
select iddepartamento, count(idempleado) empleados from rh..empleado group by iddepartamento;
go




