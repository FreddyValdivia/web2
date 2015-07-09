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
<%@include file="/WEB-INF/css/estilo-getlist.css" %>
</style>
<title>Lista de Administradores</title>
</head>
<body>
<div class="Table">
	<div class="Title"><p>Mostrando <%=admin.size() %> Administrador</p></div>
	<div class="Heading">
		<div class="Cell"><p>Nombre</p></div>
		<div class="Cell"><p>Apellido</p></div>
		<div class="Cell"><p>Username</p></div>
		<div class="Cell"><p>Password</p></div>
		<div class="Cell"><p>Celular</p></div>
		<div class="Cell"><p>Dni</p></div>
		<div class="Cell"><p>Estado</p></div>
		
	</div>

<%for( Administrador ad : admin ) {%>
	<div class="Row">
		<div class="Cell"><p><%= ad.getNombre() %></p></div>
		<div class="Cell"><p><%= ad.getApellido() %></p></div>
		<div class="Cell"><p><%= ad.getUsername() %></p></div>
		<div class="Cell"><p><%= ad.getPassword() %></p></div>
		<div class="Cell"><p><%= ad.getCelular() %></p></div>
		<div class="Cell"><p><%= ad.getDni() %></p></div>
		<div class="Cell"><p><%= ad.getEstado() %></p></div>
		
	</div>
<%}%>

</div>

</body>
</html>