<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beans.*"%>
    
<%@ page import="java.util.List"%>
<% List<Administrador> admin = (List<Administrador>)request.getAttribute("admin");%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-verusuarios.css'%>
<%@include file='./css/estilo-index2.css'%>
</style>
<title>Ver Administrador</title>
</head>
<body>

	<div class='cabeza'>
		<img src='Imagenes/hacker.jpg' alt='hacker' style='width:1350px; height:350px'>
	</div>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='/indexAdmin'>Cursos</a>
				<ul class='sub-opciones'>
					<li><a href='/indexAgregarCursos'>Agregar Cursos</a></li>
					<li><a href='/verCursos'>Borrar Cursos</a></li>				
				</ul>
			</li>
			<li><a href='/indexAdmin'>Usuarios</a>
				<ul class='sub-opciones'>
					<li><a href='/verUsuarios'>Borrar Usuarios</a></li>
				</ul>
			</li>
			<li><a href='/indexAdmin'>Administradores</a>
				<ul class='sub-opciones'>
					<li><a href='/indexAgregarAdmin'>Agregar Administrador</a></li>
					<li><a href='/verAdmin'>Borrar Administrador</a></li>
				</ul>
			</li>
		
	
			<li><a href='/indexAtohmAdmin'>Atohm Store</a></li>
			<li><a href='/indexCerrarSesion'>Cerrar Sesion</a></li>
		</ul>
	</div>
	<div class="Table">
		<div class="Title"><p>Mostrando <%=admin.size() %> Administrador</p></div>
		<div class="Heading">
			<div class="Cell"><p>Nombre</p></div>
			<div class="Cell"><p>Apellido</p></div>
			<div class="Cell"><p>Username</p></div>
			<div class="Cell"><p>Password</p></div>
			<div class="Cell"><p>Celular</p></div>
			<div class="Cell"><p>DNI</p></div>
			<div class="Cell"><p>Estado</p></div>
		</div>
		<%for(Administrador p : admin) {%>
		<div class="Row">
			<div class="Cell"><p><%= p.getNombre() %></p></div>
			<div class="Cell"><p><%= p.getApellido() %></p></div>
			<div class="Cell"><p><%= p.getUsername() %></p></div>
			<div class="Cell"><p><%= p.getPassword() %></p></div>
			<div class="Cell"><p><%= p.getCelular() %></p></div>
			<div class="Cell"><p><%= p.getDni() %></p></div>
			<div class="Cell"><p><%= p.getEstado() %></p></div>
		</div>
		<%}%>

	</div>
<br>
<br>
</body>
</html>