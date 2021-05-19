create proc spstock_articulos
as
SELECT dbo.articulo.codigo, dbo.articulo.nombre, 
dbo.categoria.nombre AS Categoria,
sum(dbo.detalle_ingreso.stock_inicial) as Cantidad_Ingreso, 
sum(dbo.detalle_ingreso.stock_actual) as Cantidad_Stock,
(sum(dbo.detalle_ingreso.stock_inicial)-
sum(dbo.detalle_ingreso.stock_actual)) as Cantidad_Venta
FROM dbo.articulo INNER JOIN dbo.categoria 
ON dbo.articulo.idcategoria = dbo.categoria.idcategoria 
INNER JOIN dbo.detalle_ingreso 
ON dbo.articulo.idarticulo = dbo.detalle_ingreso.idarticulo 
INNER JOIN dbo.ingreso 
ON dbo.detalle_ingreso.idingreso = dbo.ingreso.idingreso
where ingreso.estado<>'ANULADO'
group by dbo.articulo.codigo, dbo.articulo.nombre, 
dbo.categoria.nombre