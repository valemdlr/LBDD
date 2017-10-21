create database ESC
GO
USE ESC 
GO 
create table alumno (idAlu int not null, nombre varchar(50), fecha date)
create table materia (idMAt int not null, nomMat varchar(50), sem int)
create table profesor (idProf int not null, nomProf varchar(50))
create table carrera (idCar int not null, nomCar varchar(50), semestre tinyint)

insert into alumno values (1678575, 'valeria', '02/10/1998')
insert into alumno values (1678576, 'sofia', '16/02/1998')
insert into alumno values (1678577, 'Andrea', '02/03/1998')

insert into materia values (1, 'BDD', 3)
insert into materia values (2, 'LBDD', 3)
insert into materia values (3, 'SO', 3)

insert into profesor values (127, 'Ricado')
insert into profesor values (128, 'Caroline')
insert into profesor values (129, 'Alfredo')

insert into carrera values(1, 'LSTI', 8)
insert into carrera values (2, 'LCC', 8)
insert into carrera values (3, 'LF', 9)

update alumno 
set fecha = '10/02/1998' 
where nombre = 'valeria'
go
update alumno 
set fecha = '03/02/1998' 
where nombre = 'Andrea'
go

update alumno 
set idAlu = 1678578 
where nombre = 'sofia'
go

update profesor 
set idProf = 130 
where nomProf = 'Caroline'
go

update profesor 
set nomProf = 'Jhosban' 
where idProf = 127
go

select * from profesor 
