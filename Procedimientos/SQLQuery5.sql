-- Procedimiento Mostrar Presentaciones
create proc spmostrar_presentacion
as
select top 100 * from presentacion
order by idpresentacion desc
go
-- Procedimiento Buscar Presentaciones - Nombre
create proc spbuscar_presentacion_nombre
@textobuscar varchar(50)
as
select * from presentacion
where nombre like @textobuscar + '%'
go
--Procedimiento Insertar Presentaciones
create proc spinsertar_presentacion
@idpresentacion int output,
@nombre varchar(50),
@descripcion varchar(256)
as
insert into presentacion (nombre,descripcion)
values (@nombre,@descripcion)
go
-- Procedimiento Editar Presentaciones
create proc speditar_presentacion
@idpresentacion int,
@nombre varchar(50),
@descripcion varchar(256)
as
update presentacion set nombre=@nombre,descripcion=@descripcion
where idpresentacion=@idpresentacion
go
-- Procecimiento Eliminar Presentaciones
create proc speliminar_presentacion
@idpresentacion int
as
delete from presentacion
where idpresentacion=@idpresentacion
go