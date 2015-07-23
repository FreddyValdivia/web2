<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-index.css'%>
<%@include file='./css/estilo-indexAdminProductos.css'%>
</style>
<title>Bienvenido Administrador</title>
</head>
<body>
	<div class='cabeza'>
		<img src='Imagenes/hacker.jpg' alt='hacker' style='width:1350px; height:350px'>
	</div>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='/indexAdmin'>Inicio</a></li>
			<li><a href='/indexAdminProductos'>Productos</a></li>
			<li><a href=#>Reportes</a>
				<ul class='sub-opciones'>
					<li><a href='/indexAdminReporteCliente'>Reporte de Clientes</a>
					<li><a href='/indexAdminReporteProducto'>Reporte de Productos</a></li>
				</ul>
			</li>
			<li><a href='/indexCerrarSesion'>Cerrar Sesion</a></li>
		</ul>
	</div>
	<div id='cssmenu'>
		<ul>
		   <li><a href='/adminListaProducto'><span>Ver Productos</span></a></li>
		   <li><a href='/adminAgregarProductos'><span>Agregar Productos</span></a></li>
		   <li><a href='/adminModificarProducto'><span>Modificar Productos</span></a></li>
		   <li><a href='/adminEliminarUnProducto'><span>Eliminar un Producto</span></a></li>
		   <li class='last'><a href='/adminEliminarProducto'><span>Eliminar Productos</span></a></li>
		</ul>
	</div>
	
	<div id='cuerpo'>
		<h1>¡El producto no se pudo agregar!</h1>
	</div>
	
</body>
</html>