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
</style>
<title>Ver Cursos</title>
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
<br>
<br>
</body>
</html>