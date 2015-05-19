ECCines
=======

V1.0.0.10-Mar.11/2015

Sitios para la administraci�n de cartelera de Cine EL COLOMBIANO
Debe tener en cuenta lo siguiente:

ECCines.Admin es el sitio administrativo y solo debe ser accesible por la red interna de EL COLOMBIANO.
EcCines es el sitio p�blico.

Siempre que vaya a actualizar el sitio debe realizar una publicaci�n (despliegue en las carpetas indicadas) y de ah� debe 
coger los contenidos para paso a producci�n.


Required Components
Javascript
- jQuery (http://jquery.com)
- jQuery Mask (https://github.com/igorescobar/jQuery-Mask-Plugin )
- jQuery iFrameResizer (https://github.com/davidjbradshaw/iframe-resizer)

C# Retrieved via NuGET
- JSon.NET V6.0.8

A continuaci�n van los archivos y carpetas que deben ir en los sitios de producci�n

ECCines (sitio p�blico) con URL=http://cines.elcolombiano.com --> p�gina por defecto es 'readjson.aspx'
========================================================================================================
/Content --> Van todos los archivos y subcarpeta aqu�.
/css --> Van todos los archivos y subcarpeta aqu�.
/images --> Van todos los archivos y subcarpeta aqu�.
/recursos --> Esta carpeta debe existir junto con 'json' y 'poster'.
/Scripts --> Van todos los archivos y subcarpeta aqu�.
ecmoviesearch.aspx
readjson.aspx
showmoviedetail.aspx
Web.config

ECCines.Admin (sitio administrativo) con URL=http://cines.elcolombiano.com/admin --> p�gina por defecto 'Default.aspx'.
=====================================================================================================================
/Content --> Van todos los archivos y subcarpeta aqu�.
/css --> Van todos los archivos y subcarpeta aqu�.
/images --> Van todos los archivos y subcarpeta aqu�.
/recursos --> Esta carpeta debe existir junto con 'json' y 'poster'.
/Scripts --> Van todos los archivos y subcarpeta aqu�.
cine.aspx
Default.aspx
ecmovies.aspx (No se debe desplegar, es de uso interno.)
entidad.aspx
Horario.aspx
moviedetailiframe.aspx
showmoviedetail.aspx
showmoviewidget.aspx (no se debe desplegar, es de uso interno.)
teatro.aspx



