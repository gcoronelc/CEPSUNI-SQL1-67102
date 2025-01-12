-- GROUP BY y HAVING
-- ==============================

USE Northwind
GO

-- ¿Cuanto se ha vendido por ciudad?

SELECT 
    o.ShipCity AS Ciudad,
    SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS TotalVendido
FROM Orders o
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
GROUP BY o.ShipCity
ORDER BY 1 ASC;
GO

SELECT 
    c.City AS Ciudad,
    SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS TotalVendido
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
GROUP BY c.City
ORDER BY 1 ASC;
GO


/*
Ejercicio 6
Desarrolle una sentencia SELECT para encontrar el salario promedio por departamento.
Base de datos RH.
*/

USE RH;
GO

SELECT iddepartamento, AVG(sueldo) [SALARIO PROMEDIO]
FROM RH..empleado
GROUP BY iddepartamento;
GO

-- Necesito el nombre del departamento

SELECT E.iddepartamento, D.nombre, AVG(sueldo) [SALARIO PROMEDIO] 
FROM RH..empleado E
JOIN RH..departamento D ON E.iddepartamento=D.iddepartamento
GROUP BY E.iddepartamento, D.nombre;
GO

/*
Ejercicio 7
Desarrolle una sentencia SELECT para encontrar la cantidad de trabajadores por departamento. 
Base de datos RH.
*/

SELECT iddepartamento, COUNT(1) [CANTIDAD TRABAJADORES]
FROM RH..empleado
GROUP BY iddepartamento;
GO

SELECT iddepartamento, SUM(1) [CANTIDAD TRABAJADORES]
FROM RH..empleado
GROUP BY iddepartamento;
GO

-- ¿Y cuales son los departamentos con mas de 5 trabajadores?

SELECT iddepartamento, COUNT(1) [CANTIDAD TRABAJADORES]
FROM RH..empleado
GROUP BY iddepartamento
HAVING COUNT(1) > 5;
GO

SELECT iddepartamento, SUM(1) [CANTIDAD TRABAJADORES]
FROM RH..empleado
GROUP BY iddepartamento
HAVING SUM(1) > 5;
GO

-- Reto: Agrgar el nombre del departamento.

SELECT D.iddepartamento, D.nombre, COUNT(1) [CANTIDAD TRABAJADORES]
FROM RH..empleado E
JOIN RH..departamento D ON E.iddepartamento=D.iddepartamento
GROUP BY D.iddepartamento, D.nombre;
GO


/*
Ejercicio 9
Desarrolle una sentencia SELECT para encontrar el importe recaudado por curso. 
Base de datos EDUCA2.
*/


-- Lizbeth Arana Jurado 16:36

select c.cur_id, c.cur_nombre, sum (p.pag_importe) [RECAUDADO]from EDUCA2..CURSO Cjoin EDUCA2..PAGO P on C.cur_id=P.cur_idgroup by c.cur_id, c.cur_nombre;go



















