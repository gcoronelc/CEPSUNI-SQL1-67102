
create database EPIES;
go

use epies;
go

CREATE TABLE EPIES.DBO.NOTAS(
	EVALUACION varchar(5),
	ESTUDIANTE varchar(5),
	NOTA int
);
go

insert into epies.dbo.notas values('P1', 'A01', 10);
insert into epies.dbo.notas values('P1', 'A02', 13);
insert into epies.dbo.notas values('P1', 'A03', 12);
insert into epies.dbo.notas values('P1', 'A04', 10);
insert into epies.dbo.notas values('P1', 'A05', 11);
insert into epies.dbo.notas values('P1', 'A06', 8);
insert into epies.dbo.notas values('P1', 'A07', 5);
insert into epies.dbo.notas values('P1', 'A08', 18);
insert into epies.dbo.notas values('P1', 'A09', 14);
insert into epies.dbo.notas values('P1', 'A10', 10);
go

insert into epies.dbo.notas values('P2', 'A01', 15);
insert into epies.dbo.notas values('P2', 'A02', 16);
insert into epies.dbo.notas values('P2', 'A03', 14);
insert into epies.dbo.notas values('P2', 'A04', 19);
insert into epies.dbo.notas values('P2', 'A05', 20);
insert into epies.dbo.notas values('P2', 'A06', 13);
insert into epies.dbo.notas values('P2', 'A07', 18);
insert into epies.dbo.notas values('P2', 'A08', 17);
insert into epies.dbo.notas values('P2', 'A09', 16);
insert into epies.dbo.notas values('P2', 'A10', 16);
go

insert into epies.dbo.notas values('P3', 'A01', 10);
insert into epies.dbo.notas values('P3', 'A02', 8);
insert into epies.dbo.notas values('P3', 'A03', 11);
insert into epies.dbo.notas values('P3', 'A04', 7);
insert into epies.dbo.notas values('P3', 'A05', 6);
insert into epies.dbo.notas values('P3', 'A06', 5);
insert into epies.dbo.notas values('P3', 'A07', 5);
insert into epies.dbo.notas values('P3', 'A08', 6);
insert into epies.dbo.notas values('P3', 'A09', 5);
insert into epies.dbo.notas values('P3', 'A10', 10);
go


select * from epies.dbo.NOTAS;
go

select EVALUACION, sum(nota) SUMA, avg(nota) PROMEDIO 
from epies.dbo.notas 
group by evaluacion;


WITH V1 AS (
	SELECT 
		EVALUACION, 
		MAX(NOTA) MAYOR, 
		MIN(NOTA) MENOR 
	FROM EPIES.DBO.NOTAS 
	GROUP BY EVALUACION
)
SELECT 
	EVALUACION, MAYOR, MENOR, 
	(MAYOR - MENOR) RANGO
FROM V1;



WITH 
V1 AS (
	SELECT EVALUACION, NOTA, COUNT(1) FRECUENCIA
	FROM EPIES.DBO.NOTAS 
	GROUP BY EVALUACION, NOTA
),
V2 AS (
	SELECT EVALUACION, MAX(FRECUENCIA) MAYOR_FRECUENCIA
	FROM V1
	GROUP BY EVALUACION
)
SELECT V1.EVALUACION, V1.NOTA MODA, V1.FRECUENCIA 
FROM V1 JOIN V2 
ON V1.EVALUACION = V2.EVALUACION
AND V1.FRECUENCIA = V2.MAYOR_FRECUENCIA
ORDER BY 1, 2;


SELECT 
	EVALUACION, 
	VAR(NOTA) "VAR", 
	VARP(NOTA) "VARP"
FROM EPIES.DBO.NOTAS 
GROUP BY EVALUACION;


SELECT 
	EVALUACION, 
	STDEV(NOTA) DSM, 
	STDEVP(NOTA) DSP
FROM EPIES.DBO.NOTAS 
GROUP BY EVALUACION;



