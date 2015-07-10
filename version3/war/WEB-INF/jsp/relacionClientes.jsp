<%@ page
	language="java" 
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ page import="beans.*"%>
<%@ page import="java.util.List"%>
<% List<Cliente> clientes = (List<Cliente>)request.getAttribute("clientes");%>
<!DOCTYPE html>
<html>
<head>
	<meta charset = "UTF-8">
	<title> Relación Clientes</title>
	<link rel = "icon" type = "image/png" href = "Imagenes/hackerSpace.jpg">
	<style type="text/css">
		<%@include file='css/nuestroEstilo.css'%>
	</style>
</head>

<body>	
	<ul class="navbar">
  		<li><a href = "../../athomDatosPersonales.jsp">Registro Tienda</a>
	</ul>

	<div class="Table">
		<div class="Title"><p>Mostrando <%= clientes.size() %> clientes</p></div>
		<div class="Heading">
			<div class="Cell"><p>Key</p></div>
			<div class="Cell"><p>Name</p></div>
			<div class="Cell"><p>LastName</p></div>
			<div class="Cell"><p>DNI</p></div>
			<div class="Cell"><p>Province</p></div>
			<div class="Cell"><p>District</p></div>
			<div class="Cell"><p>AvenueOrStreet</p></div>
			<div class="Cell"><p>NameAvenueOrStreet</p></div>
			<div class="Cell"><p>N°</p></div>
			<div class="Cell"><p>Telephone</p></div>
			<div class="Cell"><p>Cellphone</p></div>
			<div class="Cell"><p>Email</p></div>
		</div>

<%for( Cliente p : clientes ) {%>
		<div class="Row">
			<div class="Cell"><p> <%= p.getKey() %> </p></div>
			<div class="Cell"><p> <%= p.getName() %> </p></div>
			<div class="Cell"><p> <%= p.getLastName() %> </p></div>
			<div class="Cell"><p> <%= p.getDni() %> </p></div>
			<div class="Cell"><p> <%= p.getProvince() %> </p></div>
			<div class="Cell"><p> <%= p.getDistrict() %> </p></div>
			<div class="Cell"><p> <%= p.getAvenueOrStreet() %> </p></div>
			<div class="Cell"><p> <%= p.getNameAvenueOrStreet() %> </p></div>
			<div class="Cell"><p> <%= p.getHouseNumber() %> </p></div>
			<div class="Cell"><p> <%= p.getTelephone() %> </p></div>
			<div class="Cell"><p> <%= p.getCellphone() %> </p></div>
			<div class="Cell"><p> <%= p.getEmail() %> </p></div>
		</div>
<%}%>
</div>
</body>
</html>