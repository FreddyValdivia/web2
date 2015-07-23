<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beans.*"%>
    
<%@ page import="java.util.List"%>
<% List<Cursos> cursos = (List<Cursos>)request.getAttribute("cursos");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-index2.css'%>
<%@include file='./css/estilo-form2.css'%>
<%@include file="./css/estilo-verusuarios.css" %>
</style>
<title>registroHS</title>
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
					<li><a href='/sugerencias'>Agregar una Sugerencia</a>
					<li><a href='/reclamos'>Establecer un Reclamo</a></li>
				</ul>
			
			<li><a href='/indexCerrarSesion'>Cerrar Sesion</a></li>
		</ul>
	</div>


<div class="Table">
	<div class="Title"><p>Mostrando <%=cursos.size() %> Cursos</p></div>
	<div class="Heading">
		<div class="Cell"><p>Nombre</p></div>
		<div class="Cell"><p>Costo</p></div>
		
	</div>

	<%for( Cursos c : cursos ) {%>
	<div class="Row">
		<div class="Cell"><p><%= c.getNombre() %></p></div>
		<div class="Cell"><p><%= c.getCosto() %></p></div>
		
	</div>
	<%}%>

</div>


<form method='post' action="saveRegCurso">
<br><br>
<fieldset><legend>Registro de Cursos del HackerScholar</legend>

<div id="formulario">
	<div class="fila">
		<div class="etiqueta"><label for="nomb">Nombre del Alumno :</label></div>
		<div class="control"><input type="text" name="nomb" maxlength="20" 
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
		<div class="etiqueta"><label for="email">Email :</label></div>
		<div class="control"><input type="email" name="email" placeholder="ejemplo@ejemplo.com" pattern="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$" required=""/></div>
	</div>
	
	<div class="fila">
		<div class="etiqueta"><label for="cursos">Seleccione Curso :</label></div>
		<div class="control">
		<select name="cursos" size="1">
						<option value=""></option>
						<%for(Cursos curso : cursos ) {%>
                  		<option><%=curso.getNombre() %></option>
                		<%}%>         	
		</select>
		</div>
	</div>
	<div class="fila">
		<div id="action"><input type="reset" value="Limpiar"/><input type="submit" value="Registrar"/></div>
	</div>
</div>
</fieldset>
</form>


<br>
     
</body>
</html>
