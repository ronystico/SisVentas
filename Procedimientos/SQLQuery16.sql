-- Mostrar
create proc spmostrar_proveedor
as
select top 100 * from proveedor
order by razon_social asc
go
--Buscar_Razon_Social
create proc spbuscar_proveedor_razon_social
@textobuscar varchar(50)
as
select * from proveedor
where razon_social like @textobuscar + '%'
go
--Buscar_num_documento
create proc spbuscar_proveedor_num_documento
@textobuscar varchar(11)
as
select * from proveedor
where num_documento like @textobuscar + '%'
go
--insertar
create proc spinsertar_proveedor
@idproveedor int output,
@razon_social varchar(150),
@sector_comercial varchar(50),
@tipo_documento varchar(20),
@num_documento varchar(11),
@direccion varchar(100),
@telefono varchar(10),
@email varchar(50),
@url varchar(100)
as
insert into proveedor (razon_social,sector_comercial,tipo_documento,
num_documento,direccion,telefono,email,url)
values (@razon_social,@sector_comercial,@tipo_documento,
@num_documento,@direccion,@telefono,@email,@url)
go
--editar
create proc speditar_proveedor
@idproveedor int,
@razon_social varchar(150),
@sector_comercial varchar(50),
@tipo_documento varchar(20),
@num_documento varchar(11),
@direccion varchar(100),
@telefono varchar(10),
@email varchar(50),
@url varchar(100)
as
update proveedor set razon_social=@razon_social,sector_comercial=@sector_comercial,
tipo_documento=@tipo_documento,num_documento=@num_documento,direccion=@direccion,
telefono=@telefono,email=@email,url=@url
where idproveedor=@idproveedor
go
--eliminar
create proc speliminar_proveedor
@idproveedor int
as
delete from proveedor
where idproveedor=@idproveedor
go