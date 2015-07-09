<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beans.*" %>
<%@ page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="keywords" content="Google app engine,Servlets,Java,GAE,HTML,CSS,JSP,Eclipse">
<style type="text/css">
<%@include file='./css/estilo-index.css'%>
</style>
<title>Agregar Cursos</title>
</head>
<body>
	<div class='cabeza'>
		<img src='Imagenes/hacker.jpg' alt='hacker' style='width:1350px; height:350px'>
	</div>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='/indexAgregarCursos'>Agregar Cursos</a></li>
			<li><a href='/indexVerCursos'>Ver Cursos</a></li>
			<li><a href='/indexVerUsuarios'>atras</a></li>
		</ul>
	</div>
	<div id='cuerpo'>
		<form method='post' action='/saveCursos'>
			<fieldset><legend>Login</legend>
				Nombre del Curso: <input type='text' id='nombre' name='nombre'><br>
				Costo del Curso <input type='text' id='costo' name='costo'><br>
				<input type='submit' id='Agregar' value='Agregar'>
			</fieldset>
		</form>
	</div>
	
</body>
</html>