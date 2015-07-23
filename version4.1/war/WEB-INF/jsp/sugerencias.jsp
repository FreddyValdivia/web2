<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-index2.css'%>
<%@include file='./css/estilo-form2.css'%>
</style>
<title>sugerencias o comentarios</title>
</head>
<body>
	<div class='cabeza'>
		<img src='Imagenes/hacker.jpg' alt='hacker' style='width:1350px; height:350px'>
	</div>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='/indexUser'>HackerScholar</a>
				<ul class='sub-opciones'>
					<li><a href='/hackerscholar'>¿Que es el HackerScholar?</a></li>
					<li><a href='/verCursosHS'>Registrarse en Cursos</a></li>
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
					<li><a href='/sugerencias'>Agregar una Sugerencia o comentario</a>
					<li><a href='/reclamos'>Establecer un Reclamo</a></li>
				</ul>
			
			<li><a href='/indexCerrarSesion'>Cerrar Sesion</a></li>
		</ul>
	</div>
<br><br><br><br>
<form method='post' action="saveSugerencia">
<fieldset><legend>Sugerencias o Comentarios</legend>
<div id="formulario">
	<div class="fila">
		<div class="etiqueta"><label for="user">Usuario :</label></div>
		<div class="control"><input type="text" name="user" maxlength="14" pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)" title="Solo letras" required=""/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="sugerencia">Sugerencias :</label></div> 
 		<div class="control"><textarea name="sugerencia" id="sugerencia" required="" rows="4" cols="50" ></textarea></div>
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