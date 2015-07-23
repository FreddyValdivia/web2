<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="beans.*"%>
<%@ page import="Redirigir.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%>
<% List<Producto> productos = (List<Producto>)request.getAttribute("productos");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-index.css'%>
<%@include file='./css/estilo-indexAdminProductos.css'%>
</style>
<title>Bienvenido Administrador</title>
</head>
<body>
	<div class='cabeza'>
		<img src='Imagenes/hacker.jpg' alt='hacker' style='width:1350px; height:350px'>
	</div>
	<div id='barra'>
		<ul id='opciones'>
			<li><a href='/indexAdmin'>Inicio</a></li>
			<li><a href='/indexAdminProductos'>Productos</a></li>
			<li><a href=#>Reportes</a>
				<ul class='sub-opciones'>
					<li><a href='/indexAdminReporteCliente'>Reporte de Clientes</a>
					<li><a href='/indexAdminReporteProducto'>Reporte de Productos</a></li>
				</ul>
			</li>
			<li><a href='/indexCerrarSesion'>Cerrar Sesion</a></li>
		</ul>
	</div>
	<div id='cssmenu'>
		<ul>
		   <li><a href='/adminListaProducto'><span>Ver Productos</span></a></li>
		   <li><a href='/adminAgregarProductos'><span>Agregar Productos</span></a></li>
		   <li><a href='/adminModificarProducto'><span>Modificar Productos</span></a></li>
		   <li><a href='/adminEliminarUnProducto'><span>Eliminar un Producto</span></a></li>
		   <li class='last'><a href='/adminEliminarProducto'><span>Eliminar Productos</span></a></li>
		</ul>
	</div>
	<div id='importante'>
	<form action="registroModificarProducto" method="post">
		<fieldset><legend>Registro con Nuevos Datos para el Producto</legend>
		<div id="formulario">
			<div class="fila">
				<div class="etiqueta"><label for="name">Nombre del Producto :</label></div>
				<div class="control"><input type="text" name="name" maxlength="14" 
					pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)" title="Solo letras" required=""/></div>
			</div>
			<div class="fila">
				<div class="etiqueta"><label for="costo">Costo :</label></div>
				<div class="control"><input type="text" name="costo" maxlength="9" pattern="[0-9]{2,3}" title="Solo numeros" required=""/></div>
			</div>
			<div class="fila">
				<div class="etiqueta"><label for="imagen">Seleccione una imagen para el producto:</label></div>
				<div class="control">
					<select name="imagen" size="1">
			 			<option value="Ultrasonido-b.png">Ultrasonido-b.png</option>
						<option value="Ultrasonido.png">Ultrasonido.png</option>
						<option value="TCRT5000.png">TCRT5000.png</option>
						<option value="Sharp.png">Sharp.png</option>
						<option value="Servomotor.png">Servomotor.png</option>
						<option value="Servomotor9g-b.png">Servomotor9g-b.png</option>
						<option value="Servomotor9g.png">Servomotor9g.png</option>
						<option value="SensorPIRHCSR501.png">SensorPIRHCSR501.png</option>
						<option value="SensorDeHumedadYTemperatura.png">SensorDeHumedadYTemperatura.png</option>
						<option value="Regulador5vL7805CV.png">Regulador5vL7805CV.png</option>
						
						<option value="RaspberryPi.png">RaspberryPi.png</option>
						<option value="QRD1114.png">QRD1114.png</option>
						<option value="Pickit3.png">Pickit3.png</option>
						<option value="Pic18f4550.png">Pic18f4550.png</option>
						<option value="PIC16F628A.png">PIC16F628A.png</option>
						<option value="NRF.png">NRF.png</option>
						<option value="NRFConAntena.png">NRFConAntena.png</option>
						<option value="MotorReductor.png">MotorReductor.png</option>
						<option value="MosuloBluetooh.png">MosuloBluetooh.png</option>
						<option value="Lm2596.png">Lm2596.png</option>
						
						<option value="L293D.png">L293D.png</option>
						<option value="FuenteDeAlimentacionParaProtoboard.png">FuenteDeAlimentacionParaProtoboard.png</option>
						<option value="FlatRainbow.png">FlatRainbow.png</option>
						<option value="EthernetShield.png">EthernetShield.png</option>
						<option value="DriverShieldDc.png">DriverShieldDc.png</option>
						<option value="DriverL293.png">DriverL293.png</option>
						<option value="DiodeLaser.png">DiodeLaser.png</option>
						<option value="Cristal16Mhz.png">Cristal16Mhz.png</option>
						<option value="ConversorDeVoltaje4A23V.png">ConversorDeVoltaje4A23V.png</option>
						<option value="Cables.png">Cables.png</option>
						
						<option value="Atmega328p.png">Atmega328p.png</option>
						<option value="ArduinoUnoR3.png">ArduinoUnoR3.png</option>
						<option value="ArduinoNano.png">ArduinoNano.png</option>
						<option value="ArduinoMini.png">ArduinoMini.png</option>
						<option value="Adaptador.png">Adaptador.png</option>
						<option value="Acelerometro.png">Acelerometro.png</option>
						<option value="ArduinoMega.png">ArduinoMega.png</option>
					</select>
				</div>
			</div>
			<div class="fila">
				<div id="action"><input type="reset" value="Limpiar"/><input type="submit" value="Enviar"/></div>
			</div>
		</div>
		</fieldset>
	</form>
	
</body>
</html>