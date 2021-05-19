-- Procedimiento Mostrar Artículos
create proc spmostrar_articulo
as
SELECT top 100    dbo.articulo.idarticulo, dbo.articulo.codigo, dbo.articulo.nombre, dbo.articulo.descripcion, dbo.articulo.idcategoria, dbo.categoria.nombre AS Categoria, 
                      dbo.articulo.idpresentacion, dbo.presentacion.nombre AS Presentacion
FROM         dbo.articulo INNER JOIN
                      dbo.categoria 
					  ON dbo.articulo.idcategoria = dbo.categoria.idcategoria INNER JOIN
                      dbo.presentacion 
					  ON dbo.articulo.idpresentacion = dbo.presentacion.idpresentacion
order by dbo.articulo.idarticulo desc
go
-- Procedimiento Buscar Artículos - Nombre
create proc spbuscar_articulo_nombre
@textobuscar varchar(50)
as
SELECT    dbo.articulo.idarticulo, dbo.articulo.codigo, dbo.articulo.nombre, dbo.articulo.descripcion, dbo.articulo.idcategoria, dbo.categoria.nombre AS Categoria, 
                      dbo.articulo.idpresentacion, dbo.presentacion.nombre AS Presentacion
FROM         dbo.articulo INNER JOIN
                      dbo.categoria 
					  ON dbo.articulo.idcategoria = dbo.categoria.idcategoria INNER JOIN
                      dbo.presentacion 
					  ON dbo.articulo.idpresentacion = dbo.presentacion.idpresentacion
where dbo.articulo.nombre like @textobuscar + '%'
order by dbo.articulo.idarticulo desc
go
--Procedimiento Insertar Artículos
create proc spinsertar_articulo
@idarticulo int output,
@codigo varchar(50),
@nombre varchar(50),
@descripcion varchar(1024),
@imagen image,
@idcategoria int,
@idpresentacion int
as
insert into articulo (codigo,nombre,descripcion,imagen,idcategoria,idpresentacion)
values (@codigo,@nombre,@descripcion,@imagen,@idcategoria,@idpresentacion)
go
-- Procedimiento Editar Artículos
create proc speditar_articulo
@idarticulo int,
@codigo varchar(50),
@nombre varchar(50),
@descripcion varchar(1024),
@imagen image,
@idcategoria int,
@idpresentacion int
as
update articulo set codigo=@codigo,nombre=@nombre,descripcion=@descripcion,imagen=@imagen,idcategoria=@idcategoria,idpresentacion=@idpresentacion
where idarticulo=@idarticulo
go
-- Procecimiento Eliminar Artículos
create proc speliminar_articulo
@idarticulo int
as
delete from articulo
where idarticulo=@idarticulo
go