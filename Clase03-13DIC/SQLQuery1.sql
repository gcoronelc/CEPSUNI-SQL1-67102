create database "DB 2026";
go

select 
	 DB_NAME() AS "BD ACTUAL",
	SYSTEM_USER "INICIO DE SESION", 
	SESSION_USER "USUARIO DE BASE DE DATOS"
go

GRANT CONNECT TO GUEST;
GO


