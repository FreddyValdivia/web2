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

	<div class='cabeza'>
		<img src='Imagenes/hacker.jpg' alt='hacker' style='width:1350px; height:350px'>
	</div>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='index.jsp'>Inicio</a></li>
			<li><a href='/registrar'>Registrarse</a></li>
			<li><a href='/indexLogin'>Login</a>
				<ul class='sub-opciones'>
					<li><a href='/indexLoginAdmin'>Login Admin</a>
					<li><a href='/indexLoginUser'>Login User</a>
				</ul>
			</li>
			<li><a href='/indexAtohmstore'>Atohm Store</a></li>
		</ul>
	</div>
	<div id='cuerpo'>
		<form method='post' action='/loginAdmin'>
			<fieldset style='border: 2px solid #595B5E'><legend>Login Administrador</legend>
				Username: <input type='text' id='username' name='username'><br>
				Password: <input type='password' id='password' name='password'><br>
				<input type='submit' id='ingresar' value='ingresar'>
			</fieldset>
		</form>
	</div>
</body>
</html>