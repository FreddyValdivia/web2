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
<%@include file='./css/estilo-verusuarios.css'%>
<%@include file='./css/estilo-index2.css'%>
<%@include file='./css/estilo-form2.css'%>
</style>
<title>Ver Cursos</title>
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
	<div class="Table">
		<div class="Title"><p>Mostrando <%=cursos.size() %>Cursos</p></div>
		<div class="Heading">
			<div class="Cell"><p>Nombre</p></div>
			<div class="Cell"><p>Costo</p></div>
		</div>
		<%for(Cursos p : cursos) {%>
		<div class="Row">
			<div class="Cell"><p><%= p.getNombre() %></p></div>
			<div class="Cell"><p><%= p.getCosto() %></p></div>
		</div>
		<%}%>

	</div>
	
	<div id='importante'>
	<form method='post' action="/eliminarCurso">
		<fieldset><legend>Eliminar Curso</legend>
			<div id="formulario">
				<div class="fila">
					<div class="etiqueta"><label for="nomb">Nombre :</label></div>
					<div class="control"><input type="text" name="nombre" maxlength="18" 
						pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)" title="Solo letras" required=""/></div>
				<br>
				<div class="fila">
					<div id="action"><input type="submit" value="Eliminar"/></div>
				</div>
			</div>
		</fieldset>
	</form>
	</div>
	
	
<br>
<br>
</body>
</html>