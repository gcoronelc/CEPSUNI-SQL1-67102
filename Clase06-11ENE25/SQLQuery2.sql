USE EDUCA2;
GO

SELECT * FROM CURSO;
GO

update cursoset cur_profesor = 'Valeria Ortiz'where cur_id =2;go


USE Northwind;
GO

SELECT * FROM Products;
GO

/*
Se necesita una sentencia SELECT para consultar los productos
que su stock esta entre 22 y 39 inclusive.
*/

select * from Productswhere UnitsInStock >= 22 and UnitsInStock <= 39order by UnitsInStock;goselect * from Productswhere UnitsInStock between 22 and 39order by UnitsInStock;GO