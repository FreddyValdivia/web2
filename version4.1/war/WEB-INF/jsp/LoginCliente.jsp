<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file="/WEB-INF/jsp/css/estilo-index.css" %>
<%@include file="/WEB-INF/jsp/css/estilo-atohm.css" %>
</style>
<title>Bienvenido a Atohmstore</title>
</head>
<body>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='/indexAtohm'>Inicio</a></li>
			<li><a href='/indexProducto'>Productos</a></li>
			<li><a href='/indexHackerspace'>Hackerspace</a></li>
			<li><a href=#>Login</a>
				<ul id='subopciones'>
					<li><a href='/indexLoguearCliente'>Loguear</a></li>
					<li><a href='/indexRegistrarCliente'>Registrar</a></li>
				</ul>
			</li>		
		</ul>
	</div>
	<div id='cuerpo'>
		<form method='post' action='/loginCliente'>
			<fieldset><legend>Login</legend>
				Username: <input type='text' id='username' name='username'><br>
				Password: <input type='password' id='password' name='password'><br>
				<input type='submit' id='ingresar' value='ingresar'>
			</fieldset>
		</form>
	</div>
</body>
</html>