<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='WEB-INF/jsp/css/estilo-index.css'%>
</style>
<title>Bienvenido a HackerSpace</title>
</head>
<body>
	<div id='cabeza'>
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
	<div id='ques'>
		<div id='contenido'>
			<br><h1>Bienvenidos a HackerSpace</h1>
			<p>
			Un Hacker Space es un sitio f�sico donde gente con intereses en�ciencia,�nuevas tecnolog�as, 
			y�artes digitales o electr�nicas�se puede conocer, socializar y colaborar.
			Puede ser visto como un laboratorio de comunidad abierta, un espacio donde gente de
			diversos trasfondos puede unirse. Pone al alcance de aficionados y estudiantes de 
			diferentes niveles la infraestructura y ambiente necesarios para desarrollar sus 
			proyectos tecnol�gicos. El prop�sito de un hackspace es concentrar recursos y conocimiento
			para fomentar la investigaci�n y el desarrollo.<br>
			<br>
			La filosof�a de Hackerspace es bastante abierta, en teor�a cualquiera podr�a ir,
			a cualquier hora del d�a o de la noche y utilizar las instalaciones para crear sus
			proyectos, ya sea con una sierra el�ctrica haciendo una mesa de madera que so�� a las 3
			de la ma�ana y se despert� para ir a hacerla, hasta un complejo proyecto de programaci�n
			o impresi�n 3D.
		</div>
		<div id='imagen'>
			<img src='Imagenes/logo.jpg' alt='logo'  style='width:305px; height:305px'>
		</div>
	</div>
	<div id='conforman'>
		<div id='contenido1'>
			<h1>�Quienes lo Conforman?</h1>
			<p>
			Lo conforma un equipo multidisciplinario que sigue creciendo liderado por su 
			fundador Edwin Gutierrez Linares, junto con �l un gran grupo humano que lo apoya
			y se encarga de la administraci�n y desarrollo de las m�ltiples actividades
			que abarca esta organizaci�n.<br>
			<br>
			Se tienen m�s de 40 miembros entre ellos estudiantes y egresados de carreras
			de ingenier�a de sistemas, electr�nica, industrial, ciencias de la computaci�n,
			mec�nica, civil y f�sica. Cada miembro aporta un valioso contenido a todos los
			proyectos que se realizan mediante trabajo en equipo que se ve reflejado en la
			diversidad de sus proyectos.
			</p>
		</div>
		<div id='imagen1'>
			<img src='Imagenes/grupo.jpg' alt='logo'  style='width:450px; height:305px'>
		</div>
	</div>
</body>
</html>