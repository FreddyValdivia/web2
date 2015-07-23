<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="keywords" content="Google app engine,Servlets,Java,GAE,HTML,CSS,JSP,Eclipse">
<style type="text/css">
<%@include file='./css/estilo-index2.css'%>
<%@include file='./css/estilo-form2.css'%>
</style>
<title>Agregar Cursos</title>
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
	<div id='importante'>
	<form method='post' action="/saveCursos">
		<fieldset><legend>Agregar Cursos</legend>
			<div id="formulario">
				<div class="fila">
					<div class="etiqueta"><label for="nomb">Nombre :</label></div>
					<div class="control"><input type="text" name="nombre" maxlength="18" 
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
	</div>
</body>
</html>