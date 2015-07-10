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
<title>Agregar Cursos</title>
</head>
<body>
	<div class='cabeza'>
		<img src='Imagenes/hacker.jpg' alt='hacker' style='width:1350px; height:350px'>
	</div>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='/indexAgregarCursos'>Agregar Cursos</a></li>
			<li><a href='/verCursos'>Ver Cursos</a></li>
			<li><a href='/verUsuarios'>Ver Usuarios</a></li>
			<li><a href='/indexAgregarAdmin'>Nuevo Administrador</a></li>
		</ul>
		<ul id='opciones1'>
			<li><a href='/indexAdmin'>Inicio Admin</a></li>
			<li><a href='/indexCerrarSesion'>Cerrar Sesion</a></li>
		</ul>
	</div>
	<form method='post' action="saveCursos">
	<fieldset><legend>Agregar Cursos</legend>
	<div id="formulario">
		<div class="fila">
		<div class="etiqueta"><label for="nomb">Nombre :</label></div>
		<div class="control"><input type="text" name="nomb" maxlength="14" 
			pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)" title="Solo letras" required=""/></div>
		</div>
		<div class="fila">
		<div class="etiqueta"><label for="costo">Costo :</label></div>
		<div class="control"><input type="text" name="costo" maxlength="9" pattern="[0-9]{3}" title="Solo numeros" required=""/></div>
		</div>
		<br>
		<div class="fila">
		<div id="action"><input type="submit" value="Agregar"/></div>
		</div>
	</div>
	</fieldset>
	</form>
	
	
</body>
</html>