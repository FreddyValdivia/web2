<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-index.css'%>
</style>
<title>Bienvenido a HackerSpace</title>
</head>
<body>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='/indexAtohmstore'>Atohm Store</a></li>
			<li><a href='/indexRegistrarCliente'>Registrarse</a></li>
			<li><a href='/indexLoguearCliente'>Login</a></li>
			<li><a href='index.jsp'>HackerSpace</a></li>
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