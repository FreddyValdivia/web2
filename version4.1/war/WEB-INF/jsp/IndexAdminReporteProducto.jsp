<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beans.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%>
<% 
	List<Producto> productos = (List<Producto>)request.getAttribute("productos");
	List<Integer> cantidades = (List<Integer>)request.getAttribute("cantidades");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-index2.css'%>
<%@include file='./css/estilo-indexTabla.css'%>
</style>
<title>Bienvenido Administrador</title>
</head>
<body>
	<div class='cabeza'>
		<img src='Imagenes/hacker.jpg' alt='hacker' style='width:1350px; height:350px'>
	</div>
	<div id='barra'>
		<ul id='opciones'>
			
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
	<div class="Table">
		<div class="Title"><p>Mostrando Reporte de <%= productos.size() %> productos</p></div>
		<div class="Heading">
			<div class="Cell"><p>Nombre</p></div>
			<div class="Cell"><p>N&uacute;mero de Ventas</p></div>
		</div>
	
	<%for(int i=0;i<productos.size();i++) {%>
		<div class="Row">
			<div class="Cell"><p><%= productos.get(i).getNombre() %></p></div>
			<div class="Cell"><p><%= cantidades.get(i)%></p></div>
		</div>
	<%}%>
</body>
</html>