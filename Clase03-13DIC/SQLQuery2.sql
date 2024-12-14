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

create table PeruTraining.dbo.Matricula(	cur_id int not null,	alu_id int not null,	mat_fecha date not null ,	mat_precio decimal (10,2) not null,	mat_cuotas int not null,	mat_nota int null,	constraint PK_Matricula PRIMARY KEY(cur_id,alu_id),	constraint FK_Matricula_Curso		foreign key(cur_id) references Curso(cur_id),	constraint FK_Matricula_Alumno		foreign key(alu_id) references Alumno(alu_id));GO

CREATE TABLE PeruTraining.dbo.PAGO(	cur_id int not null,	alu_id int not null,	pag_cuota int not null,	pag_fecha datetime not null,	pag_importe decimal(10,2) not null,	constraint PK_PAGO PRIMARY key(cur_id,alu_id,pag_cuota),	constraint FK_PAGO_MATRICULA		foreign key(cur_id,alu_id) references Matricula(cur_id,alu_id));GO













