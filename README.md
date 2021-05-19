# Sistema de ventas en C# / 2019/09/03

Este sistema es del curso de Juan Carlos Arcila Díaz. Todos los créditos son para el, puedes hallar el curso [aquí](https://www.youtube.com/playlist?list=PLZPrWDz1Molqn16IORKg8nFYTejgYCHJp).

La diferencia con sus videos es que:
* Arreglé errores que pasarían si pones el código exactamente como en los videos
* Lo hice funcionar en Visual Studio 2019
* Busqué íconos diferentes
* Pequeños detalles como iniciar sesión presionando la tecla Enter

# Ejecución del sistema
1. Ejecuta el script en SQL Server
2. Compila el programa en Visual Studio 2019
3. Ejecuta SisVentas.exe desde el directorio SisVentas/bin/Debug

Puedes crear un instalador si deseas, pero eso no se cubre aquí.


# Herramientas utilizadas
* Visual Studio 2017, continuado en Visual Studio 2019
* SQL Server 2014 

# Usuarios y Contraseñas

* admin - admin
* administrador - administrador
* vendedor - vendedor
* almacenero - almacenero

# Problemas/Soluciones/Detalles
La etiqueta <rd:SchemaPath> en los archivos rptArticulos.rdlc y rptComprobanteFactura.rdlc tienen un directorio absoluto de mi computadora en ese tiempo. Si los reportes (como facturas) te dan problemas, esto puede ser una pista.

El proyecto fue creado originalmente en Visual Studio 2017. Para abrirlo en versiones más antiguas, se podría requerir .NET Framework 4.6

Para manejar los archivos rdlc, necesitas [Microsoft RDLC Report Designer](https://marketplace.visualstudio.com/items?itemName=ProBITools.MicrosoftRdlcReportDesignerforVisualStudio-18001)

El instalador de SQL Server que usé se llama "SQLEXPRWT_x64_ENU.exe" por si te preguntas. Trae tanto SQL Server como SQL Server Management Studio.