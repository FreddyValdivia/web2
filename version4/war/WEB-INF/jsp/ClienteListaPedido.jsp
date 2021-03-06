<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beans.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%>
<% String nombre=(String) session.getAttribute("nombre");
	String apellidop=(String) session.getAttribute("apellidop");
	String apellidom=(String) session.getAttribute("apellidom");
	List<Pedido> pedidos = (List<Pedido>)request.getAttribute("pedidos");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-indexTabla.css'%>
<%@include file='./css/estilo-indexAdminProductos.css'%>
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
	<div id='cssmenu'>
		<ul>
		   <li><a href='/clienteListaPedido'><span>Ver Pedidos</span></a></li>
		   <li><a href='/clienteProducto'><span>Realizar Pedido</span></a></li>
		   <li class='last'><a href='/clienteEliminarPedido'><span>Eliminar Pedidos</span></a></li>
		</ul>
	</div>
	
	<div class="Table">
		<div class="Title"><p>Mostrando <%= pedidos.size() %> pedidos</p></div>
		<div class="Heading">
			<div class="Cell"><p>Cliente</p></div>
			<div class="Cell"><p>Productos</p></div>
		</div>
	
	<%for( Pedido c : pedidos ) {%>
		<div class="Row">
			<div class="Cell"><p><%= c.getNombreCliente()%></p></div>
			<div class="Cell"><p><%= c.getListaProductos()%></p></div>
		</div>
	<%}%>
	</div>
</body>
</html>