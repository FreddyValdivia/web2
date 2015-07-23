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
<title>Agregar Admin</title>
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
					<li><a href='/verCursos'>Ver Cursos</a></li>			
				</ul>
			</li>
			<li><a href='/indexAdmin'>Usuarios</a>
				<ul class='sub-opciones'>
					<li><a href='/verUsuarios'>Ver Usuarios</a></li>
				</ul>
			</li>
			<li><a href='/indexAdmin'>Administradores</a>
				<ul class='sub-opciones'>
					<li><a href='/indexAgregarAdmin'>Agregar Administrador</a></li>
					<li><a href='/verAdmin'>Ver Administrador</a></li>
				</ul>
			</li>
			<li><a href='/indexReportes'>Reportes</a>
				<ul class='sub-opciones'>
					<li><a href='/indexReporteUsuarios'>Reportes de Usuarios</a>
					<li><a href='/indexReporteCursos'>Reporte de Cursos</a></li>
				</ul>
			</li>
			<li><a href='/indexComentarios'>Comentarios</a></li>
			<li><a href='/indexAtohmAdmin'>AtohmStore</a></li>
			<li><a href='/indexCerrarSesion'>Cerrar Sesion</a></li>
		</ul>
	</div>
	<div id='importante'>
		<form method='post' action="saveAdministrador">
			<fieldset><legend>Registro de Administradores</legend>
			<div id="formulario">
				<div class="fila">
					<div class="etiqueta"><label for="nombre">Nombre :</label></div>
					<div class="control"><input type="text" name="nombre" maxlength="14" 
					pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)" title="Solo letras" required=""/></div>
				</div>
				<div class="fila">
					<div class="etiqueta"><label for="apellido">Apellido :</label></div>
					<div class="control"><input type="text" name="apellido" maxlength="20" 
					pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)" title="Solo letras" required=""/></div>
				</div>
				<div class="fila">
					<div class="etiqueta"><label for="username">Username :</label></div>
					<div class="control"><input type="text" name="username" maxlength="10" required=""/></div>
				</div>
				<div class="fila">
					<div class="etiqueta"><label for="pass">Password:</label></div>
					<div class="control"><input type="password" name="password" maxlength="8" pattern="[A-Za-z0-9]{8}" title="8 digitos( letras(mayusculas y/o minusculas) y/o numeros)" required=""/></div>
				</div>
				<div class="fila">
					<div class="etiqueta"><label for="celular">Celular :</label></div>
					<div class="control"><input type="text" name="celular" maxlength="9" pattern="[0-9]{9}" title="Solo numeros" required=""/></div>
				</div>
				<div class="fila">
					<div class="etiqueta"><label for="dni">DNI :</label></div>
					<div class="control"><input type="text" name="dni" maxlength="8" 
					pattern="[0-9]{8}" title="Solo numeros" required=""/></div>
				</div>
				<div class="fila">
					<div class="etiqueta"><label for="estado">Estado :</label></div>
					<div class="control"><input type="text" name="estado" maxlength="1" 
					pattern="[0-1]{1}" title="Solo numeros" required=""/></div>
				</div>
				<br>
				<div class="fila">
					<div id="action"><input type="submit" value="Enviar"/></div>
				</div>
			</div>
			</fieldset>
		</form>
	</div>
</body>
</html>