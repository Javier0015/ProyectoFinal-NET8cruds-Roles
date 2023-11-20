USE [proyectoFinal]
GO

/****** Objeto: SqlProcedure [dbo].[sp_registrar] Fecha del script: 08/11/2023 11:36:47 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER procedure sp_registrar
@Nombre varchar (50),
@Edad int,
@Correo varchar (50),
@Contraseña varchar (max),
@Id_Rol int = 2,
@Patron varchar (50)
as begin
insert into Usuarios values ( @Nombre, @Edad, @Correo, ENCRYPTBYPASSPHRASE(@Patron, @Contraseña), @Id_Rol)
end
