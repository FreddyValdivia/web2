<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beans.*"%>
    
<%@ page import="java.util.List"%>
<% List<Administrador> admin = (List<Administrador>)request.getAttribute("admin");%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-verusuarios.css'%>
<%@include file='./css/estilo-index2.css'%>
<%@include file='./css/estilo-form2.css'%>
</style>
<title>Ver Administrador</title>
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
		<div class="Title"><p>Mostrando <%=admin.size() %> Administradores</p></div>
		<div class="Heading">
			<div class="Cell"><p>Nombre</p></div>
			<div class="Cell"><p>Apellido</p></div>
			<div class="Cell"><p>Username</p></div>
			<div class="Cell"><p>Password</p></div>
			<div class="Cell"><p>Celular</p></div>
			<div class="Cell"><p>DNI</p></div>
		</div>
		<%for(Administrador ad : admin) {%>
		<div class="Row">
			<div class="Cell"><p><%= ad.getNombre() %></p></div>
			<div class="Cell"><p><%= ad.getApellido() %></p></div>
			<div class="Cell"><p><%= ad.getUsername() %></p></div>
			<div class="Cell"><p><%= ad.getPassword() %></p></div>
			<div class="Cell"><p><%= ad.getCelular() %></p></div>
			<div class="Cell"><p><%= ad.getDni() %></p></div>
		</div>
		<%}%>

	</div>
	
	<div id='importante'>
	<form method='post' action="/eliminarAdmin">
		<fieldset><legend>Eliminar Administrador</legend>
			<div id="formulario">
				<div class="fila">
					<div class="fila">
					<div class="etiqueta"><label for="username">Username :</label></div>
					<div class="control"><input type="text" name="username" maxlength="10" required=""/></div>
				</div>
				<br>
				<div class="fila">
					<div id="action"><input type="submit" value="Eliminar"/></div>
				</div>
				</div>
			</div>
		</fieldset>
	</form>
	</div>
	
	
<br>
<br>
</body>
</html>