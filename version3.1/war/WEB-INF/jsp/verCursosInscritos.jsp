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
<title>Hackerscholar</title>
</head>
<body>
	<div class='cabeza'>
		<img src='Imagenes/hackerscholar.jpg' alt='hackerscholar' style='width:1350px; height:350px'>
	</div>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='/verCursosHS'>Cursos</a></li>
			<li><a href='/registrarCursos'>Inscripcion de Cursos</a></li>
			<li><a href='/verCursosInscritos'>Cursos que lleva</a></li>
			<li><a href='/indexUser'>Atras</a></li>
		</ul>
	</div>
	
	<div class="Table">
	<h3>Cursos que usted esta llevando</h3>
	<div class="Heading">
		<div class="Cell"><p>Nombre</p></div>
	</div>
	
<%for(Cursos p : cursos) {%>
	<div class="Row">
		<div class="Cell"><p><%= p.getNombre() %></p></div>
	</div>
<%}%>
	
</body>
</html>