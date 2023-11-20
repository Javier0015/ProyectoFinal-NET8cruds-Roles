use proyectoFinal

drop table materia1

create table materia1 (
Id_Materia int identity (1,1),
Nombre_Alumno varchar (15),
Horas_Por_Semana int,
Calificacion_Final int
)
go
create procedure sp_loadM1
as begin
select * from materia1
end
GO
-- CRUD: CREATE, READ, UPDATE, DELETE

Create procedure sp_createM1
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
insert into materia1 VALUES(@NombreM1, @HorasporsemanaM1, @CalificacionfinalM1)
END
go

create procedure sp_readM1
@IdM1 int 
as begin
select * from materia1 where Id_Materia = @IdM1
END
GO
Create procedure sp_updateM1
@IdM1 int,
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
Update materia1 set Nombre_Alumno = @NombreM1, Horas_Por_Semana = @HorasporsemanaM1, Calificacion_Final= @CalificacionfinalM1
where Id_Materia = @IdM1
END
go

create procedure sp_deleteM1
@IdM1 INT 
as begin
delete from materia1 where Id_Materia=@IdM1
end


-------------materia 2-------------

create table materia2 (
Id_Materia int identity (1,1),
Nombre_Alumno varchar (15),
Horas_Por_Semana int,
Calificacion_Final int
)
go
create procedure sp_loadM2
as begin
select * from materia2
end
GO
-- CRUD: CREATE, READ, UPDATE, DELETE

Create procedure sp_createM2
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
insert into materia2 VALUES(@NombreM1, @HorasporsemanaM1, @CalificacionfinalM1)
END
go

create procedure sp_readM2
@IdM1 int 
as begin
select * from materia2 where Id_Materia = @IdM1
END
GO
Create procedure sp_updateM2
@IdM1 int,
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
Update materia2 set Nombre_Alumno = @NombreM1, Horas_Por_Semana = @HorasporsemanaM1, Calificacion_Final= @CalificacionfinalM1
where Id_Materia = @IdM1
END
go

create procedure sp_deleteM2
@IdM1 INT 
as begin
delete from materia12 where Id_Materia=@IdM1
end

---------Materia 3-------------------------


create table materia3 (
Id_Materia int identity (1,1),
Nombre_Alumno varchar (15),
Horas_Por_Semana int,
Calificacion_Final int
)
go
create procedure sp_loadM3
as begin
select * from materia3
end
GO
-- CRUD: CREATE, READ, UPDATE, DELETE

Create procedure sp_createM3
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
insert into materia3 VALUES(@NombreM1, @HorasporsemanaM1, @CalificacionfinalM1)
END
go

create procedure sp_readM3
@IdM1 int 
as begin
select * from materia3 where Id_Materia = @IdM1
END
GO
Create procedure sp_updateM3
@IdM1 int,
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
Update materia3 set Nombre_Alumno = @NombreM1, Horas_Por_Semana = @HorasporsemanaM1, Calificacion_Final= @CalificacionfinalM1
where Id_Materia = @IdM1
END
go

create procedure sp_deleteM3
@IdM1 INT 
as begin
delete from materia3 where Id_Materia=@IdM1
end

--------materia 4------------


create table materia4 (
Id_Materia int identity (1,1),
Nombre_Alumno varchar (15),
Horas_Por_Semana int,
Calificacion_Final int
)
go
create procedure sp_loadM4
as begin
select * from materia4
end
GO
-- CRUD: CREATE, READ, UPDATE, DELETE

Create procedure sp_createM4
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
insert into materia4 VALUES(@NombreM1, @HorasporsemanaM1, @CalificacionfinalM1)
END
go

create procedure sp_readM4
@IdM1 int 
as begin
select * from materia4 where Id_Materia = @IdM1
END
GO
Create procedure sp_updateM4
@IdM1 int,
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
Update materia4 set Nombre_Alumno = @NombreM1, Horas_Por_Semana = @HorasporsemanaM1, Calificacion_Final= @CalificacionfinalM1
where Id_Materia = @IdM1
END
go

create procedure sp_deleteM4
@IdM1 INT 
as begin
delete from materia4 where Id_Materia=@IdM1
end

------------Materia 5-------------- 

create table materia5 (
Id_Materia int identity (1,1),
Nombre_Alumno varchar (15),
Horas_Por_Semana int,
Calificacion_Final int
)
go
create procedure sp_loadM5
as begin
select * from materia5
end
GO
-- CRUD: CREATE, READ, UPDATE, DELETE

Create procedure sp_createM5
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
insert into materia5 VALUES(@NombreM1, @HorasporsemanaM1, @CalificacionfinalM1)
END
go

create procedure sp_readM5
@IdM1 int 
as begin
select * from materia5 where Id_Materia = @IdM1
END
GO


Create procedure sp_updateM5
@IdM1 int,
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
Update materia5 set Nombre_Alumno = @NombreM1, Horas_Por_Semana = @HorasporsemanaM1, Calificacion_Final= @CalificacionfinalM1
where Id_Materia = @IdM1
END
go

create procedure sp_deleteM5
@IdM1 INT 
as begin
delete from materia5 where Id_Materia=@IdM1
end

-----------------Materia 6-----------

create table materia6 (
Id_Materia int identity (1,1),
Nombre_Alumno varchar (15),
Horas_Por_Semana int,
Calificacion_Final int
)
go
create procedure sp_loadM6
as begin
select * from materia6
end
GO
-- CRUD: CREATE, READ, UPDATE, DELETE

Create procedure sp_createM6
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
insert into materia6 VALUES(@NombreM1, @HorasporsemanaM1, @CalificacionfinalM1)
END
go

create procedure sp_readM6
@IdM1 int 
as begin
select * from materia6 where Id_Materia = @IdM1
END
GO


Create procedure sp_updateM6
@IdM1 int,
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
Update materia6 set Nombre_Alumno = @NombreM1, Horas_Por_Semana = @HorasporsemanaM1, Calificacion_Final= @CalificacionfinalM1
where Id_Materia = @IdM1
END
go

create procedure sp_deleteM6
@IdM1 INT 
as begin
delete from materia6 where Id_Materia=@IdM1
end
-----------materia 7 --------------

create table materia7 (
Id_Materia int identity (1,1),
Nombre_Alumno varchar (15),
Horas_Por_Semana int,
Calificacion_Final int
)
go
create procedure sp_loadM7
as begin
select * from materia7
end
GO
-- CRUD: CREATE, READ, UPDATE, DELETE

Create procedure sp_createM7
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
insert into materia7 VALUES(@NombreM1, @HorasporsemanaM1, @CalificacionfinalM1)
END
go

create procedure sp_readM7
@IdM1 int 
as begin
select * from materia7 where Id_Materia = @IdM1
END
GO


Create procedure sp_updateM7
@IdM1 int,
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
Update materia7 set Nombre_Alumno = @NombreM1, Horas_Por_Semana = @HorasporsemanaM1, Calificacion_Final= @CalificacionfinalM1
where Id_Materia = @IdM1
END
go

create procedure sp_deleteM7
@IdM1 INT 
as begin
delete from materia7 where Id_Materia=@IdM1
end

---------Materia 8-----


create table materia8 (
Id_Materia int identity (1,1),
Nombre_Alumno varchar (15),
Horas_Por_Semana int,
Calificacion_Final int
)
go
create procedure sp_loadM8
as begin
select * from materia8
end
GO
-- CRUD: CREATE, READ, UPDATE, DELETE

Create procedure sp_createM8
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
insert into materia8 VALUES(@NombreM1, @HorasporsemanaM1, @CalificacionfinalM1)
END
go

create procedure sp_readM8
@IdM1 int 
as begin
select * from materia8 where Id_Materia = @IdM1
END
GO


Create procedure sp_updateM8
@IdM1 int,
@NombreM1 varchar (15),
@HorasporsemanaM1 int,
@CalificacionfinalM1 int
as begin
Update materia8 set Nombre_Alumno = @NombreM1, Horas_Por_Semana = @HorasporsemanaM1, Calificacion_Final= @CalificacionfinalM1
where Id_Materia = @IdM1
END
go

create procedure sp_deleteM8
@IdM1 INT 
as begin
delete from materia8 where Id_Materia=@IdM1
end