<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
<%@include file="/WEB-INF/jsp/css/estilo-index.css" %>
<%@include file="/WEB-INF/jsp/css/estilo-atohm.css" %>
</style>
<title>Atohm Store</title>    
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
		<h1>¡Reg&iacute;strese primero para realizar alguna compra!</h1>
	</div>
</body>
</html>

