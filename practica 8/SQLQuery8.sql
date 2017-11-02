USE Escolar_Horarios
select * from  Alumno
select * from Calificaciones
select * from Carrera
select * from Materia
select * from Maestro
select * from Materia_Maestro
select * from Titulo
select * from Maestro_Titulo

create view Registro as
select a.IdAlumno, a.NomAlu, u.NombreL as [user], u.pass
from Alumno a inner join Usuario u
on a.IdUsuario = u.IdUsuario

create view Maestros as
select m.NomMaestro, m.Apellidos, t.nomTitulo
from Maestro m inner join Maestro_Titulo mt
on m.IdMaestro = mt.IdMaestro
inner join Titulo t
on  mt.IdTitulo = t.IdTitulo

create view plan_de_estudio as
select m.MatNom, m.NumSemestre, c.NomCarrera, c.SemCarrera, n.nomNivel
from Materia m inner join Carrera c
on m.IdCarrera = c.IdCarrera
inner join Nivel n
on c.IdNivel = n.IdNivel

create view maestros_material as
select m.NomMaestro, ma.MatNom
from Maestro m inner join Materia_Maestro mm
on m.IdMaestro = mm.IdMaestro
inner join Materia ma 
on mm.IdMateria = ma.IdMateria

create view calificacionesXSem as
select c.Calificación, a.NomAlu
from Calificaciones c inner join Grupo_Alumno ga
on c.IdGrupoaMateria = ga.IdGrupoMateria
inner join Alumno a
on ga.IdAlumno = a.IdAlumno

create view MaxcalificacionesXSem as
select MAX(c.Calificación) as [caliMax]
from Calificaciones c inner join Grupo_Alumno ga
on c.IdGrupoaMateria = ga.IdGrupoMateria
inner join Alumno a
on ga.IdAlumno = a.IdAlumno
group by c.Calificación

select * from Alumno where Alumno.Edad = (select Edad from Alumno where Edad = 23)
select * from Alumno where Alumno.Edad in (select Edad from Alumno where Edad = 20)
select * from Alumno where Alumno.Edad not in (select Edad from Alumno where Edad = 20)

create table #Horario(idHorario int not null, totalMateriasxsem int, semestreactual int )
insert into #Horario values (1, 10, 3)
select * from #Horario 