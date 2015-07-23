<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beans.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%>
<% String nombre=(String) session.getAttribute("nombre");
	String apellidop=(String) session.getAttribute("apellidop");
	String apellidom=(String) session.getAttribute("apellidom");
%>
<% List<Producto> productos = (List<Producto>)request.getAttribute("productos");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-indexTabla.css'%>
<%@include file='/WEB-INF/jsp/css/estilo-atohm.css'%>
</style>
<title>Bienvenido Usuario</title>
</head>
<body>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='/clientePerfil'>Mi Perfil</a></li>
			<li><a href='/clienteProducto'>Productos Disponibles</a></li>
			<li><a href='/clientePedido'>Mis Pedidos</a></li>
			<li><a href='/clienteCerrarSesion'>Cerrar Sesi&oacute;n</a></li>
		</ul>
	</div>
	<div id="sesion">
		<span class="tit">Cliente Logueado:</span>
				<div class="ll"><span class="tt">Nombre: </span><span class="tc"> 
				<%=nombre+" "+apellidop+" "+apellidom %></span></div>
	</div>
	<div id='cuerpo' style="height: 200px;">
		<br>
		<h1>Productos en Venta</h1>
		<br>
		<p>
		Seleccione los productos que desee comprar y presione el botón de Realizar Compra.
		</p>
	</div>
	<form action="/savePedidoCliente" method='post'>
		<div align="center">
		<input id="btn" style="align-content:center" type="submit" value="Realizar Compra">
		</div>
		<br>
	
		<%for(int i=0;i<productos.size();i++ ) {%>
		<div class="imagen">
			<input type="checkbox" id=<%= "producto"+i%> value=<%= productos.get(i).getIdProducto()%> name="productos"/><p><%= productos.get(i).getNombre() %><br>
	        <img  src=<%= "/Imagenes/"+productos.get(i).getImagen() %>>
	    </div>    
		<%}%>
	</form>
</body>
</html>