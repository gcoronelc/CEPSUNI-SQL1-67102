CREATE DATABASE PERUTraining;
GO

USE PERUTraining;
GO

CREATE TABLE PERUTraining.dbo.CURSO(
	cur_id int not null identity(1,1),
	cur_nombre varchar(100) not null,
	cur_vacantes int not null,
	cur_matriculados int not null,
	cur_profesor varchar(100) not null,
	cur_precio decimal(10,2) not null,
	constraint PK_CURSO PRIMARY KEY(cur_id)
);
GO

CREATE TABLE PERUTraining.dbo.ALUMNO(	alu_id INT NOT NUll,	alu_nombre Varchar(100) NOT NULL,
	alu_direccion varchar(100) not null,
	alu_telefono varchar(20) null,
	alu_email varchar(50) null,
	constraint PK_ALUMNO PRIMARY KEY(alu_id)
);
GO

create table PeruTraining.dbo.MATRICULA(	cur_id int not null,	alu_id int not null,	mat_fecha date not null ,	mat_precio decimal (10,2) not null,	mat_cuotas int not null,	mat_nota int null,	constraint PK_Matricula PRIMARY KEY(cur_id,alu_id),	constraint FK_Matricula_Curso		foreign key(cur_id) references Curso(cur_id),	constraint FK_Matricula_Alumno		foreign key(alu_id) references Alumno(alu_id),	constraint CHK_MATRICULA_PRECIO CHECK(mat_precio>0),	constraint CHK_MATRICULA_CUOTAS CHECK(mat_cuotas IN (1,2,3)));GO

CREATE TABLE PeruTraining.dbo.PAGO(	cur_id int not null,	alu_id int not null,	pag_cuota int not null,	pag_fecha datetime not null,	pag_importe decimal(10,2) not null,	constraint PK_PAGO PRIMARY key(cur_id,alu_id,pag_cuota),	constraint FK_PAGO_MATRICULA		foreign key(cur_id,alu_id) references Matricula(cur_id,alu_id));GO


-- Agregar cursos

insert into PeruTraining.dbo.curso(cur_nombre,cur_vacantes,cur_matriculados,cur_profesor,cur_precio)
values('SQL SERVER I',20,12,'Gustavo Coronel',500.0);
go

insert into PeruTraining.dbo.curso(cur_nombre,cur_vacantes,cur_matriculados,cur_profesor,cur_precio)
values('SQL SERVER II',20,10,'Gustavo Coronel',600.0);
go

insert into PeruTraining.dbo.curso(cur_nombre,cur_vacantes,cur_matriculados,cur_profesor,cur_precio)
values('SQL SERVER III',20,8,'Gustavo Coronel',700.0);
go

insert into PeruTraining.dbo.curso(cur_nombre,cur_vacantes,cur_matriculados,cur_profesor,cur_precio)
values('SQL SERVER III',20,6,'Gustavo Coronel',800.0);
go

insert into PeruTraining.dbo.curso(cur_nombre,cur_vacantes,cur_matriculados,cur_profesor,cur_precio)
values('EXCEL Basico',20,18,'César Oceda',400.0);
go

insert into PeruTraining.dbo.curso(cur_nombre,cur_vacantes,cur_matriculados,cur_profesor,cur_precio)
values('Java Basico',20,15,'Ricardo Marcelo',500.0);
go

insert into PeruTraining.dbo.curso(cur_nombre,cur_vacantes,cur_matriculados,cur_profesor,cur_precio)
values('Java Cliente-Servidor',20,12,'Ricardo Marcelo',600.0);
go

select * from PeruTraining.dbo.CURSO;
go


-- Insertando Alumnos

insert into PeruTraining.dbo.ALUMNO(alu_id,alu_nombre,alu_direccion,alu_telefono,alu_email)
values(1,'Juan Perez','Rimac','983456129','jperez@gmail.com');
go

insert into PeruTraining.dbo.ALUMNO(alu_id,alu_nombre,alu_direccion,alu_telefono,alu_email)values(2,'MARCOS CARRILLO','MAGDALENA','999471341','carrillo_marcos@gmail.com');GO

insert into PeruTraining.dbo.ALUMNO(alu_id,alu_nombre,alu_direccion,alu_telefono,alu_email)values(3,'Carlo Jimenez','San Miguel','997147797','Cjimenez@gmail.com');go

insert into PeruTraining.dbo.ALUMNO(alu_id,alu_nombre,alu_direccion,alu_telefono,alu_email)values(4,'Elizabeth Pozo','La Victoria','9589451545','eli_pozo@gmail.com');go

select * from PeruTraining.dbo.ALUMNO;
go


-- Insertando matriculas

INSERT INTO PeruTraining.dbo.Matricula(cur_id,alu_id,mat_fecha,mat_precio,mat_cuotas)
values(1,1,getdate()-10,1000.0,2);
GO


INSERT INTO PeruTraining.dbo.Matricula(cur_id,alu_id,mat_fecha,mat_precio,mat_cuotas)
values(1,2,getdate()-9,-1000.0,2);
GO

INSERT INTO PeruTraining.dbo.Matricula(cur_id,alu_id,mat_fecha,mat_precio,mat_cuotas)
values(1,3,getdate()-8,1000.0,-2);
GO

select * from PeruTraining.dbo.Matricula;
go






