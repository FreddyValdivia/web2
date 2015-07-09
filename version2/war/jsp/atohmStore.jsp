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
<script type="text/javascript"> 
function enviarFormulario(elemento){
	document.getElementsByName("botonSeleccionado").value=elemento.name;
	document.formulario1.submit();
} 
function seleccionOpcion(elemento){
	//document.getElementsByName("botonSeleccionado").value=elemento.id;
	var elem=document.getElementById("botonSeleccionado");
	elem.value=elemento.id;
}
</script>
    <title>Atohm Store</title>
   <div id='barra'>
		<ul id='opciones2'>			
			<li><div onMouseOver="seleccionOpcion(this)" onclick="enviarFormulario(this)" id="inicio">Inicio</div></li>
			<li><div onMouseOver="seleccionOpcion(this)" onclick="enviarFormulario(this)" id="productos">Productos</div></li>
			<li><div onMouseOver="seleccionOpcion(this)" onclick="enviarFormulario(this)" id="hackerspace">HackerSpace</div></li>				
		</ul>
	</div>
</head>
<body>
	<div id='cuerpo'>
		<br>
		<br>
		<h1 >Atohm Store Arequipa</h1>
		<h2>Te damos la bienvenida a la Tienda Atohm Store - Arequipa</h2>
		<br>
		<br>
		<p>
		Atohm Store es una tienda Online de artículos electrónicos, suministros para robótica, novedades tecnológicas y muchas cosas más!!
		</p>
		<br>
        <div class="banner">
        </div>
        <br>
	</div>
	<form action="tiendaAtohm" method=get name="formulario1"> 
		<input type="hidden" name="botonSeleccionado" id="botonSeleccionado" value="valor">
	</form>
</body>
</html>

