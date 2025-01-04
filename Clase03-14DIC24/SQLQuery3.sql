use Northwind;
go

-- Cuantos clientes hay en Northwind?

select * from Customers;
go

select count(1) "Cantidad de Clientes" from Customers;
go