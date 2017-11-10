update Usuario
set pass = 'piedequeso1'
where IdUsuario = 1667093
go 

update Maestro
set NomMaestro= 'Maria'
where  IdMaestro = 44441
go
 
update Maestro
set Apellidos = 'Pecina Jimenez'
where IdMaestro = 44442
go 

update Calificaciones
set Calificación = 70
where IdGrupoAlumno = 88883
go