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

<%@include file="./css/estilo-verusuarios.css" %>
</style>
<title>Cursos Hackerscholar</title>
</head>
<body>

	
	<div class="Table">
	<div class="Title"><p>Mostrando <%=cursos.size() %> Cursos</p></div>
	<div class="Heading">
		<div class="Cell"><p>Nombre</p></div>
		<div class="Cell"><p>Costo</p></div>
		
	</div>

	<%for( Cursos c : cursos ) {%>
	<div class="Row">
		<div class="Cell"><p><%= c.getNombre() %></p></div>
		<div class="Cell"><p><%= c.getCosto() %></p></div>
		
	</div>
	<%}%>

	</div>
	
</body>
</html>