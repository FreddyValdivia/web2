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
</style>
<title>Insert title here</title>
</head>
<body>
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
<br>
<br>
<p>
	<center><a href="/indexAdmin" >Regresar</a></center>
</p>
</body>
</html>>