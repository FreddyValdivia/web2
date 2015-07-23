<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
<%@include file='./css/estilo-index2.css'%>
<%@include file='./css/estilo-form2.css'%>
</style>
<title>encuesta</title>
</head>
<body>
<div class='cabeza'>
		<img src='Imagenes/hackerscholar.jpg' alt='hackerscholar' style='width:1350px; height:350px'>
	</div>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='/indexUser'>HackerScholar</a>
				<ul class='sub-opciones'>
					<li><a href='/hackerscholar'>¿Que es el HackerScholar?</a></li>
					<li><a href='/verCursosHS'>Registrarse en Cursos</a><min="1" max="5"/li>
					<li><a href='/verCursosInscritos'>Ver cursos en los que esta inscrito</a></li>
					<li><a href='/encuestaHS'>Encuesta para nuevos cursos</a></li>				
				</ul>
			</li>
			<li><a href='/indexUser'>Contactenos</a>
				<ul class='sub-opciones'>
					<li><a href='/contactenos1'>HackerSpace</a></li>
					<li><a href='/contactenos2'>HackerScholar</a></li>
				</ul>
			</li>
			
			<li><a href='/indexUser'>Sugerencias y Reclamos</a>
				<ul class='sub-opciones'>
					<li><a href='/sugerencias'>Agregar una Sugerencia</a>
					<li><a href='/reclamos'>Establecer un Reclamo</a></li>
				</ul>
			<li><a href='/indexCerrarSesion'>Cerrar Sesion</a></li>
		</ul>
	</div>
<br><br><br><br>
<form method='post' action="saveEncuesta">
<fieldset><legend>Encuesta</legend>
<div id="formulario">
	<div class="fila">
		<div class="etiqueta"><label for="nomb">Nombre(s) :</label></div>
		<div class="control"><input type="text" name="nomb" maxlength="14" 
			pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)" title="Solo letras" required=""/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="apellp">Apellido Paterno:</label></div>
		<div class="control"><input type="text" name="apellp" maxlength="15" 
		pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)" title="Solo letras" required=""/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="apellm">Apellido Materno:</label></div>
		<div class="control"><input type="text" name="apellm" maxlength="15" pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)" title="Solo letras" required=""/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="calificacion">Como califica la enseñanza en Hackerscholar (del 1 - 10) :</label></div>
		<div class="control"><input type="number" name="calificacion" maxlength="2" min="1" max="10"  title="calificacion del 1 al 10" required=""/></div>
	</div>
		<div class="fila">
		<div class="etiqueta"><label for="otros">Algun otro curso que desearia que se enseñe:</label></div>
		<div class="control"><input type="text" name="otros" maxlength="20" pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)" title="Solo letras" required=""/></div>
	</div>
	
	<br>
	<div class="fila">
		<div id="action"><input type="reset" value="Limpiar"/><input type="submit" value="Enviar"/></div>
	</div>
</div>
</fieldset>
</form>

</body>
</html>