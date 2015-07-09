<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beans.*" %>
<%@ page import="java.util.List"%>
<% List<Administrador> admin = (List<Administrador>)request.getAttribute("admin");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="keywords" content="Google app engine,Servlets,Java,GAE,HTML,CSS,JSP,Eclipse">
<style type="text/css">
<%@include file='./css/estilo-index.css'%>
</style>
<title>Bienvenido Administrador</title>
</head>
<body>
	<div class='cabeza'>
		<img src='Imagenes/hacker.jpg' alt='hacker' style='width:1350px; height:350px'>
	</div>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='/indexAgregarCursos'>Agregar Cursos</a></li>
			<li><a href='/indexVerCursos'>Ver Cursos</a></li>
			<li><a href='/indexVerUsuarios'>Ver Usuarios</a></li>
			<li><a href='/indexAgregarAdmin'>Administradores</a></li>
		</ul>
		<ul id='opciones1'>
			<li><a href='/indexAdmin'>Inicio Admin</a></li>
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
		<div class="Cell"><p>Dni</p></div>
		<div class="Cell"><p>Estado</p></div>
		
	</div>

<%for( Administrador ad : admin ) {%>
	<div class="Row">
		<div class="Cell"><p><%= ad.getNombre() %></p></div>
		<div class="Cell"><p><%= ad.getApellido() %></p></div>
		<div class="Cell"><p><%= ad.getUsername() %></p></div>
		<div class="Cell"><p><%= ad.getPassword() %></p></div>
		<div class="Cell"><p><%= ad.getCelular() %></p></div>
		<div class="Cell"><p><%= ad.getDni() %></p></div>
		<div class="Cell"><p><%= ad.getEstado() %></p></div>
		
	</div>
<%}%>
	<div id='cuerpo'>
		<form method='post' action='/saveAdministrador'>
			<fieldset><legend>Login</legend>
				Nombre: <input type='text' id='nombre' name='nombre'><br>
				Apellido: <input type='text' id='apellido' name='apellido'><br>
				Username: <input type='text' id='username' name='username'><br>
				Password: <input type='password' id='password' name='password'><br>
				Celular: <input type='text' id='celular' name='celular'><br>
				DNI: <input type='text' id='dni' name='dni'><br>
				Estado:<input type='text' id='estado' name='estado'><br>
				<input type='submit' id='registrar' value='registrar'>
			</fieldset>
		</form>
	</div>
</body>
</html>