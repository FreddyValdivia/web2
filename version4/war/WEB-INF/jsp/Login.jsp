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
	<div id='login'>
		<div id='contenido2'>
				<img src='Imagenes/administrator.jpg' alt='admin' style='width:300px; height:350px'>
				<fieldset style='border: 4px solid #0D0F10;text-decoration:none;font-weight:bold'><legend>Login Admin</legend>
					<button style='width:200px; height:50px;background:#333'><a href='/indexLoginAdmin'   style='color:#fff;text-decoration:none;font-weight:bold; text-align:center; font-size:20px;'>Login Administrador</a></button>
				</fieldset>
		</div>	
		<div id='contenido3'>
			<img src='Imagenes/user.jpg' alt='user' style='width:300px; height:350px'>
				<fieldset style='border: 4px solid #0D0F10;text-decoration:none;font-weight:bold'><legend>Login Usuario</legend>
					<button style='width:200px; height:50px;background:#333'><a href='/indexLoginUser'   style='color:#fff;text-decoration:none;font-weight:bold; text-align:center; font-size:20px;'>Login Usuario</a></button>
				</fieldset>
		</div>		
	</div>
</body>
</html>