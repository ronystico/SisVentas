--Procedimiento mostrar
create proc spmostrar_categoria
as
select top 200 * from categoria
order by idcategoria desc
go

--Procedimiento buscar Nombre
create proc spbuscar_categoria
@textobuscar varchar(50)
as
select * from categoria
where nombre like @textobuscar + '%'
go

-- Procedimiento Insertar
create proc spinsertar_categoria
@idcategoria int output,
@nombre varchar(50),
@descripcion varchar(256)
as
insert into categoria (nombre,descripcion)
values (@nombre,@descripcion)
go

-- Procedimiento Editar
create proc speditar_categoria
@idcategoria int,
@nombre varchar(50),
@descripcion varchar(256)
as
update categoria set nombre=@nombre,
descripcion=@descripcion
where idcategoria=@idcategoria
go

-- Procedimiento Eliminar
create proc speliminar_categoria
@idcategoria int
as
delete from categoria
where idcategoria=@idcategoria
go