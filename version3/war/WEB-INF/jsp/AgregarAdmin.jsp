<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="keywords" content="Google app engine,Servlets,Java,GAE,HTML,CSS,JSP,Eclipse">
<style type="text/css">
<%@include file='./css/estilo-index.css'%>
</style>
<title>Agregar Admin</title>
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
			<li><a href='/indexAgregarAdmin'>Nuevo Administrador</a></li>
		</ul>
		<ul id='opciones1'>
			<li><a href='/indexAdmin'>Inicio Admin</a></li>
			<li><a href='/indexCerrarSesion'>Cerrar Sesion</a></li>
		</ul>
	</div>
	
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