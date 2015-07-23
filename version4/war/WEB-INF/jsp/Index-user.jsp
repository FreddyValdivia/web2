<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-index.css'%>
</style>
<title>Bienvenido Usuario</title>
</head>
<body>
	<% HttpSession misesion= request.getSession();%>
	
	<div class='cabeza'>
		<img src='Imagenes/hacker.jpg' alt='hacker' style='width:1350px; height:350px'>
	</div>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='/hackerscholar'>HackerScholar</a></li>
			<li><a href='/.....'>Ver cursos inscritos</a></li>
			<li><a href='/.......'>Perfil</a></li>
			<li><a href='/....'>Contactenos</a></li>
		</ul>
		<ul id='opciones1'>
			<li><a href='/.....'>Comentarios</a></li>
			<li><a href='/indexCerrarSesion'>Cerrar session</a></li>
		</ul>
	</div>
</body>
</html>