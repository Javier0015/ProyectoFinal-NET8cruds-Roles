select * from Usuarios

select * from Roles_Permisos

Update Roles_Permisos set Estado=0 where Id_rol_permiso = 5
Update Roles_Permisos set Estado=1 where Id_rol_permiso = 6
Update Roles_Permisos set Estado=0 where Id_rol_permiso = 7
Update Roles_Permisos set Estado=0 where Id_rol_permiso = 8

update Usuarios set Id_rol=1 where  Id_Usuario = 2