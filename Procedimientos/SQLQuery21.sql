-- Mostrar
create proc spmostrar_trabajador
as
select top 100 * from trabajador
order by apellidos asc
go
-- Buscar Apellidos
create proc spbuscar_trabajador_apellidos
@textobuscar varchar(50)
as
select * from trabajador
where apellidos like @textobuscar + '%'
order by apellidos asc
go
-- Buscar Num_Documento
create proc spbuscar_trabajador_num_documento
@textobuscar varchar(50)
as
select * from trabajador
where num_documento like @textobuscar + '%'
order by apellidos asc
go
-- Insertar
create proc spinsertar_trabajador
@idtrabajador int output,
@nombre varchar(20),
@apellidos varchar(40),
@sexo varchar(1),
@fecha_nacimiento date,
@num_documento varchar(20),
@direccion varchar(100),
@telefono varchar(10),
@email varchar(50),
@acceso varchar(20),
@usuario varchar(20),
@password varchar(20)
as
insert into trabajador (nombre,apellidos,sexo,fecha_nac,num_documento,
direccion,telefono,email,acceso,usuario,password)
values (@nombre,@apellidos,@sexo,@fecha_nacimiento,@num_documento,
@direccion,@telefono,@email,@acceso,@usuario,@password)
go
-- Editar
create proc speditar_trabajador
@idtrabajador int,
@nombre varchar(20),
@apellidos varchar(40),
@sexo varchar(1),
@fecha_nacimiento date,
@num_documento varchar(20),
@direccion varchar(100),
@telefono varchar(10),
@email varchar(50),
@acceso varchar(20),
@usuario varchar(20),
@password varchar(20)
as
update trabajador set nombre=@nombre,apellidos=@apellidos,
sexo=@sexo,fecha_nac=@fecha_nacimiento,num_documento=@num_documento,
direccion=@direccion,telefono=@telefono,email=@email,
acceso=@acceso,usuario=@usuario,password=@password
where idtrabajador=@idtrabajador
go
-- Eliminar
create proc speliminar_trabajador
@idtrabajador int
as
delete from trabajador
where idtrabajador=@idtrabajador
go