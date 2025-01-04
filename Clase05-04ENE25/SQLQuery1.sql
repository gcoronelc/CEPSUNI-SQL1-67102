/*
Ejercicio 1
Desarrolle una sentencia SELECT para consultar el nombre, 
apellido y correo de los empleados de la base de datos RH
*/

SELECT nombre, apellido, email correo  
FROM RH..empleado;
GO

/*
Ejercicio 3
Desarrollar una sentencia SELECT que permita obtener el importe que se obtendría 
en cada curso, si se logra vender todas las vacantes por cada curso. 
Base de datos EDUCA.
*/

select 
	cur_id ID, cur_nombre NOMBRE,
	cur_vacantes VACANTES, cur_precio PRECIO,
	cur_vacantes * cur_precio [INGRESO PROYECTADO],
	cur_matriculados * cur_precio [INGRESO REAL],
	(cur_matriculados * cur_precio / (cur_vacantes * cur_precio)) * 100 [PORCENTE INGRESO]
from EDUCA2..CURSO;
go


/*
Ejercicio 4
Desarrollar una consulta que permita mostrar las vacantes programas, 
los matriculados y las vacantes disponibles de cada curso programado 
de la base de datos EDUTEC.
*/

select TOP 10 * 
from EduTec..CursoProgramado;
go

select 
	IdCursoProg ID,
	Vacantes + Matriculados [Vacantes programadas],
	Matriculados, Vacantes [Vacantes disponibles],
	Matriculados * 100 / (Vacantes + Matriculados) [Avance de matricua]
from EduTec..CursoProgramado
where IdCiclo = '2024-12';
go

/*
Ejercicio 5 - Valeria Ortiz
El área de recursos humanos necesita una consulta que permita 
mostrar de cada empleado su sueldo actual y cuanto sería su 
incremento si se proyecta un aumento del 20% a cada uno respectivamente.
*/

SELECT idempleado id, concat(apellido, ' ', nombre) nombre,sueldo "sueldo actual",sueldo + (0.2 * sueldo) "sueldo proyectado"from RH..empleado;go

SELECT idempleado id, concat(apellido, ' ', nombre) nombre,sueldo "sueldo actual",0.2 * sueldo "incremento",sueldo + (0.2 * sueldo) "sueldo proyectado"from RH..empleado;go

/*
Ejercicio 6
Desarrollar una sentencia SELECT para consultar el nombre y apellido 
de los empleados en una sola columna. 
Base de datos RH.
*/

select * 
from RH..empleado;
go

select 
	idempleado ID,
	CONCAT(nombre,', ',apellido) [NOMBRE COMPLETO]
from RH..empleado;
go

SELECT 
    CONCAT('Hola', ' ', 'Mundo') AS Resultado;
GO

SELECT 
    CONCAT('Hola', NULL, ' Mundo') AS Resultado1,
	'Hola' + NULL + ' Mundo' AS Resultado2;
GO

select 10 + 20 + NULL Resultado;
go

/*
Ejercicio 8
Desarrollar una sentencia SELECT para consultar los datos de la tabla CURSOPROGRAMADO, 
pero se solicita las siguientes columnas (Base de datos: EDUTEC):
CODIGO   Columna IDCURSOPROG
CURSO    Se debe concatenar las columnas IDCICLO y IDCURSO en el siguiente formato: IDCICLO/IDCURSO
VACANTES Debe tener el siguiente formato: AA/BB
         Donde:
           AA : Cantidad de matriculados
           BB : Cantidad de vacantes programadas
*/

select * from EduTec..CursoProgramado;
go

select 
	IdCursoProg CODIGO,
	CONCAT(IdCiclo,'/',IdCurso) CURSO,
	CONCAT(Matriculados,'/',Vacantes+Matriculados) VACANTES
from EduTec..CursoProgramado
where IdCiclo = '2024-12'
order by 2;
go


/*
Ejercicio 9
Desarrollar una sentencia SELECT para consultar los empleados del 
departamento de contabilidad. 
Base de datos RH.
*/

select * from RH..departamento;
go

-- 101 - Contabilidad

select * 
from RH..empleado
where iddepartamento = 101;
go

/*
Ejercicio 11
Desarrollar una sentencia SELECT que permita averiguar los cursos 
que aún no tienen alumnos matriculados. 
Base de datos EDUCA.
*/

select * 
from EDUCA2..CURSO
where cur_matriculados = 0;
go

/*
Lista de productos cuyo precio esté entre 20 y 40.
Muestra ProductID, ProductName, y UnitPrice.
*/

Select * 
from Northwind..Products
where UnitPrice>20 and UnitPrice<40
order by UnitPrice;
go

/*
Pedidos realizados antes del 1 de enero de 1998.
Muestra OrderID, OrderDate, y CustomerID.
*/

select OrderID, OrderDate, CustomerID
from Northwind..Orders
where OrderDate < CONVERT(DATE, '01/01/1998', 103);
go


/*
Ejercicio 12
Desarrollar una sentencia SELECT para consultar los empleados de 
contabilidad cuyo sueldo es mayor a 10,000.00. 
Base de datos RH.
*/

select * 
from rh..empleado
where iddepartamento=101 AND sueldo>10000.00;
go

/*
Ejercicio extra
Desarrollar una sentencia SELECT para consultar los empleados de 
contabilidad y los empleados del departamento de sistemas. 
Base de datos RH.

¿Cuantas filas tiene el resultado?

Rpta. ________

A) 10
B) 0
C) 9
D) 15
E) 5
*/

select * 
from rh..empleado
where iddepartamento=101 OR iddepartamento=105;
go

select * 
from rh..empleado
where iddepartamento IN (101, 105);
go

select * 
from rh..empleado
where iddepartamento NOT IN (101, 105);
go

select * 
from RH..empleado;
go

select * 
from RH..empleado
where nombre like 'G%';
go

select * 
from RH..empleado
where nombre like '%r';
go

select * 
from RH..empleado
where nombre like '%la%';
go

select * 
from RH..empleado
where nombre like '_[ae]%';
go

select * 
from RH..empleado
where nombre not like '_[ae]%';
go



select * 
from rh..empleado
where iddepartamento >= 102 AND iddepartamento <= 104
order by iddepartamento;
go

select * 
from rh..empleado
where iddepartamento between 102 AND 104
order by iddepartamento;
go

select * 
from rh..empleado
where iddepartamento not between 102 AND 104
order by iddepartamento;
go


select * 
from RH..empleado
where nombre like '%ea%';
go





