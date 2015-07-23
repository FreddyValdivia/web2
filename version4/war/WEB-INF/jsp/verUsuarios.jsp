<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beans.*"%>
    
<%@ page import="java.util.List"%>
<% List<User> usuarios = (List<User>)request.getAttribute("user");%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-verusuarios.css'%>
<%@include file='./css/estilo-index2.css'%>
<%@include file='./css/estilo-form2.css'%>
</style>
<title>Ver Usuarios</title>
</head>
<body>
<% HttpSession misesion= request.getSession();%>
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
	<div class="Title"><p>Mostrando <%=usuarios.size() %>Usuarios</p></div>
	<div class="Heading">
		<div class="Cell"><p>Username</p></div>
		<div class="Cell"><p>Contraseña</p></div>
		<div class="Cell"><p>Nombre</p></div>
		<div class="Cell"><p>Apellido Paterno</p></div>
		<div class="Cell"><p>Apellido Materno</p></div>
		<div class="Cell"><p>Email</p></div>
		<div class="Cell"><p>Celular</p></div>
		<div class="Cell"><p>Centro de estudios</p></div>
		<div class="Cell"><p>Sexo</p></div>
	</div>

<%for(User p : usuarios) {%>
	<div class="Row">
		<div class="Cell"><p><%= p.getUsername() %></p></div>
		<div class="Cell"><p><%= p.getPassword() %></p></div>
		<div class="Cell"><p><%= p.getNombre() %></p></div>
		<div class="Cell"><p><%= p.getApellidop() %></p></div>
		<div class="Cell"><p><%= p.getApellidom() %></p></div>
		<div class="Cell"><p><%= p.getEmail() %></p></div>
		<div class="Cell"><p><%= p.getCelular() %></p></div>
		<div class="Cell"><p><%= p.getCEstudios() %></p></div>
		<div class="Cell"><p><%= p.getSexo() %></p></div>
	</div>
<%}%>

</div>



<div id='importante'>
	<form method='post' action="/eliminarUser">
		<fieldset><legend>Eliminar Usuario</legend>
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