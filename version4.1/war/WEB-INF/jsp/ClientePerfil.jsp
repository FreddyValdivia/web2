<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beans.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%>
<% List<Cliente> clientes=(List<Cliente>)request.getAttribute("clientes");
	String cliente=(String) session.getAttribute("cliente");
	String nombre=(String) session.getAttribute("nombre");
	String apellidop=(String) session.getAttribute("apellidop");
	String apellidom=(String) session.getAttribute("apellidom");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-index.css'%>
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
	
	<div class="Table">
		<div class="Title"><p>Mostrando datos personales</p></div>

	
	<%for( Cliente c : clientes ) {
		if(c.getIdCliente().equals(cliente)){%>
		<div class="Row">
			<div class="Cell"><p>Nombre :</p></div>
			<div class="Cell"><p><%= c.getNombre() %></p></div>
		</div>
		<div class="Row">
			<div class="Cell"><p>Apellido Paterno :</p></div>
			<div class="Cell"><p><%= c.getApellidop() %></p></div>
		</div>
		<div class="Row">
			<div class="Cell"><p>Apellido Materno :</p></div>
			<div class="Cell"><p><%= c.getApellidom() %></p></div>
		</div>
		<div class="Row">
			<div class="Cell"><p>DNI :</p></div>
			<div class="Cell"><p><%= c.getDNI() %></p></div>
		</div>
		<div class="Row">
			<div class="Cell"><p>Direccion :</p></div>
			<div class="Cell"><p><%= c.getDireccion() %></p></div>
		</div>
		<div class="Row">
			<div class="Cell"><p>Email :</p></div>
			<div class="Cell"><p><%= c.getEmail() %></p></div>
		</div>
		<div class="Row">
			<div class="Cell"><p>Celular :</p></div>
			<div class="Cell"><p><%= c.getCelular() %></p></div>
		</div>
		<div class="Row">
			<div class="Cell"><p>Centro de Estudios :</p></div>
			<div class="Cell"><p><%= c.getCEstudios() %></p></div>
		</div>
		<div class="Row">
			<div class="Cell"><p>Sexo :</p></div>
			<div class="Cell"><p><%= c.getSexo() %></p></div>
		</div>
	<%}
	}%>
	</div>
</body>
</html>