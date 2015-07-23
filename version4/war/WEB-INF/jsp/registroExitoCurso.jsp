<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-index2.css'%>
</style>
<title>Agregado Curso</title>
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
	<div id='cuerpo'>
		<h1>¡El curso ha sido creado con exito!</h1>
	</div>
	
</body>
</html>