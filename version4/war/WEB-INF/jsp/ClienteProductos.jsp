<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="beans.*"%>
<%@ page import="java.util.List"%>
<% List<Producto> productos = (List<Producto>)request.getAttribute("productos");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
<%@include file='/WEB-INF/jsp/css/estilo-indexTabla.css'%>
<%@include file='/WEB-INF/jsp/css/estilo-atohm.css'%>
</style>
    <title>Atohm Store</title>
    <div id='barra'>
		<ul id='opciones'>
			<li><a href='/indexAtohm'>Inicio</a></li>
			<li><a href='/indexProducto'>Productos</a></li>
			<li><a href='/indexHackerspace'>Hackerspace</a></li>
			<li><a href=#>Login</a>
				<ul id='subopciones'>
					<li><a href='/indexLoguearCliente'>Loguear</a></li>
					<li><a href='/indexRegistrarCliente'>Registrar</a></li>
				</ul>
			</li>		
		</ul>
	</div>
</head>
<body>
	<div id='cuerpo' style="height: 200px;">
		<br>
		<h1>Productos en Venta</h1>
		<br>
		<p>
		Seleccione los productos que desee comprar y presione el botón de Realizar Compra.
		</p>
	</div>
	<form action="/clienteNoRegistrado" method='post'>
		<div align="center">
		<input id="btn" style="align-content:center" type="submit" value="Realizar Compra">
		</div>
		<br>
		
		<%for(int i=0;i<productos.size();i++ ) {%>
		<div class="imagen">
			<input type="checkbox" id=<%= "producto"+i%> name=<%= "producto"+i%>/><p><%= productos.get(i).getNombre() %><br>
		    <img  src=<%= "/Imagenes/"+productos.get(i).getImagen() %>>
		</div>
		<%}%>
    </form>
</body>
</html>