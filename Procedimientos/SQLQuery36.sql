-- Reporte de factura
create proc spreporte_factura
@idventa int
as
select
v.idventa,(t.apellidos+' '+t.nombre) as Trabajador,
(c.apellidos+' '+c.nombre) as Cliente,
c.direccion,c.telefono,c.num_documento,
v.fecha,v.tipo_comprobante,v.serie,v.correlativo,
v.igv,a.nombre,dv.precio_venta,dv.cantidad,dv.descuento,
(dv.cantidad*dv.precio_venta-dv.descuento) as Total_Parcial

from detalle_venta dv inner join detalle_ingreso di
on dv.iddetalle_ingreso=di.iddetalle_ingreso
inner join articulo a
on a.idarticulo=di.idarticulo
inner join venta v
on v.idventa=dv.idventa
inner join cliente c
on v.idcliente=c.idcliente
inner join trabajador t
on t.idtrabajador=v.idtrabajador
where v.idventa=@idventa
go