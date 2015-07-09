<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-index.css'%>
</style>
<title>Bienvenido Administrador</title>
</head>
<body>
	<%HttpSession sesion = request.getSession(); %>
	<%!String tiempo=""; %>
	<%!String cambiouser="";%>
	<%if(sesion.getAttribute("username")!=null){
		cambiouser = (String)sesion.getAttribute("username");
	}else{
		cambiouser="Iniciar Sesion";
	} %>
	<div class='cabeza'>
		<img src='Imagenes/hacker.jpg' alt='hacker' style='width:1350px; height:350px'>
	</div>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='/indexAgregarCursos'>Agregar Cursos</a></li>
			<li><a href='/verCursos'>Ver Cursos</a></li>
			<li><a href='/verUsuarios'>Ver Usuarios</a></li>
			<li><a href='/indexAgregarAdmin'>Administradores</a></li>
		</ul>
		<ul id='opciones1'>
			<li><a href='/indexAdmin'>Inicio Admin</a></li>
			<li><a href='/indexCerrarSesion'>Cerrar Sesion</a></li>
		</ul>
	</div>
</body>
</html>