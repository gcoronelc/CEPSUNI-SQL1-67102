USE Northwind;
GO

SELECT TOP 3 * FROM Products;
SELECT * FROM Orders WHERE OrderID=10248;
SELECT * FROM [Order Details]  WHERE OrderID=10248;
GO