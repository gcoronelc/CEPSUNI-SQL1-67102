
create database dbprueba;
go

create table mensaje(
mensaje varchar(500) not null
);
go


create table producto(
idprod int not null identity(1,2),
nombre varchar(20) not null,
precio numeric(10,2) not null,
stock int not null
);
go

insert into producto values('Papaya',5.0, 100);
go

insert into producto values('menu dina',10.0, 1000);
go

select * from producto;
go








