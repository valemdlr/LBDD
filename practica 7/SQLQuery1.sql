USE ESC
GO
select * from alumno
select * from carrera
select * from materia
select * from profesor

select count(idAlu) As 'loquesea' , nombre
from alumno
group by nombre

select MIN(fecha) As 'fecha min'
from alumno 

select Max(fecha) As 'fecha max'
from alumno 

select AVG(semestre) as 'prom'
from carrera

select SUM(idCar)
from carrera
where semestre = 8

select Min(idCar)
from carrera
where semestre = 8

select Max(idCar)
from carrera
where semestre = 8

select semestre As '4 años' 
from carrera 
group by semestre
having semestre >= 8

select idAlu
from alumno
group by idAlu
having idAlu >1678577

select materia.sem
from materia
group by materia.sem
having sem >2 

SELECT TOP 1 * 
from carrera 

select *
from alumno
order by nombre desc 