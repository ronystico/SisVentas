create proc splogin
@usuario varchar(20),
@password varchar(20)
as
select idtrabajador,apellidos,nombre,acceso
from trabajador
where usuario=@usuario and password=@password
go