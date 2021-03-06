<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beans.*"%>
    
<%@ page import="java.util.List"%>
<% List<UserCursos> Ucursos = (List<UserCursos>)request.getAttribute("cursos");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-index2.css'%>
<%@include file='./css/estilo-form2.css'%>
<%@include file="./css/estilo-verusuarios.css" %>
</style>
<title>cursos inscritos</title>
</head>
<body>
<div class='cabeza'>
		<img src='Imagenes/hackerscholar.jpg' alt='hackerscholar' style='width:1350px; height:350px'>
	</div>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='/indexUser'>HackerScholar</a>
				<ul class='sub-opciones'>
					<li><a href='/hackerscholar'>�Que es el HackerScholar?</a></li>
					<li><a href='/verCursosHS'>Registrarse en Cursos</a></li>
					<li><a href='/verCursosInscritos'>Ver cursos en los que esta inscrito</a></li>
					<li><a href='/encuestaHS'>Encuesta para nuevos cursos</a></li>				
				</ul>
			</li>
			<li><a href='/indexUser'>Contactenos</a>
				<ul class='sub-opciones'>
					<li><a href='/....'>HackerSpace</a></li>
					<li><a href='/contactenos'>HackerScholar</a></li>
				</ul>
			</li>
			<li><a href='/indexUser'>Perfil</a>
				<ul class='sub-opciones'>
					<li><a href='/....'>Editar mi Perfil</a></li>
				</ul>
			</li>
			<li><a href='/indexUser'>Sugerencias y Reclamos</a>
				<ul class='sub-opciones'>
					<li><a href='/....'>Agregar una Sugerencia</a>
					<li><a href='/....'>Establecer un Reclamo</a></li>
				</ul>
			
			<li><a href='/indexCerrarSesion'>Cerrar Sesion</a></li>
		</ul>
	</div>


<div class="Table">
	<div class="Title"><p>Mostrando <%=Ucursos.size() %> Cursos Inscritos</p></div>
	<div class="Heading">
		<div class="Cell"><p>Nombre</p></div>
		
	</div>

	<%for( UserCursos c : Ucursos ) {%>
	<div class="Row">
		<div class="Cell"><p><%= c.getCurso() %></p></div>

	</div>
	<%}%>

</div>


</body>
</html>