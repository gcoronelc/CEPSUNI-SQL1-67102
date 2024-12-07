CREATE DATABASE PRUEBA2024;
GO

USE PRUEBA2024;
GO

CREATE TABLE MENSAJE(
	ID INT NOT NULL IDENTITY(1,1),
	ORIGEN VARCHAR(20),
	DESTINO VARCHAR(20),
	MENSAJE VARCHAR(500)
);
GO

sp_help mensaje;
go

alter table mensaje
alter column ORIGEN VARCHAR(30) NOT NULL;
GO

CREATE TABLE MENSAJE2(
	mensaje varchar(100) not null
) on ventas;
go

sp_help mensaje2;
go

SELECT * FROM mensaje;
go

insert into mensaje 
values('gustavo','todos','SQL ES MO MAXIMO');
GO








