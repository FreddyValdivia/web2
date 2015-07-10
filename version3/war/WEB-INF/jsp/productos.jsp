<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
<%@include file='/WEB-INF/jsp/css/estilo-index.css'%>
<%@include file='/WEB-INF/jsp/css/estilo-atohm.css'%>
</style>
    <title>Atohm Store</title>
    <div id='barra'>
		<ul id='opciones'>
			<li><a href='/indexAtohm'>Inicio</a></li>
			<li><a href='/indexProductos'>Productos</a></li>
			<li><a href='/indexHackerspace'>Hackerspace</a></li>		
		</ul>
	</div>
</head>
<body>
	<div id='cuerpo' style="height: 200px;">
		<br>
		<h1>Productos en Venta</h1>
		<br>
		<p>
		Seleccione los productos que desee comprar y presione el botón de Realizar Compra.
		</p>
	</div>
	<form action="/listaProductos" method='post'>
	<div align="center">
	<input id="btn" style="align-content:center" type="submit" value="Realizar Compra">
	</div>
	<br>
	<div class="imagen">
		<input type="checkbox" id="raspBerryPiB+" name="raspBerryPiB"/> RaspBerry Pi B+<br>
        <img  src="/Imagenes/RaspberryPiB.jpg">
    </div>
	<div class="imagen">
		<input type="checkbox" id="arduinoMega" name="arduinoMega"/> Arduino Mega<br>
        <img  src="/Imagenes/ArduinoMega2560.jpg">
    </div>
    <div class="imagen">
		<input type="checkbox" id="ethernetShield" name="ethernetShield"/> Ethernet Shield<br>
        <img  src="/Imagenes/ethernetShield.jpg">
    </div>
    <div class="imagen">
		<input type="checkbox" id="arduinoUno" name="arduinoUno"/> Arduino Uno R3<br>
        <img  src="/Imagenes/ArduinoUno.jpg">
    </div>
    <div class="imagen">
		<input type="checkbox" id="arduinoNano" name="arduinoNano"/> Arduino Nano<br>
        <img  src="/Imagenes/ArduinoNano.jpg">
    </div>
    <div class="imagen">
		<input type="checkbox" id="arduinoMiniPro" name="arduinoMiniPro"/> Arduino MiniPro<br>
        <img  src="/Imagenes/ArduinoMiniPro.jpg">
    </div>
    <div class="imagen">
		<input type="checkbox" id="imuMpu" name="imuMpu"/> IMU MPU-6050<br>
        <img  src="/Imagenes/ImuMpu.jpg">
    </div>
    <div class="imagen">
		<input type="checkbox" id="adaptadorUSBSerial" name="adaptadorUSBSerial"/> Adaptador USB-Serial<br>
        <img  src="/Imagenes/AdaptadorUSBSerial.jpg">
    </div>
    <div class="imagen">
		<input type="checkbox" id="moduloUltrasonico" name="moduloUltrasonico"/> M&oacute;dulo Ultras&oacute;nico SH-04<br>
        <img  src="/Imagenes/ModuloUltrasonido.jpg">
    </div>
    <div class="imagen">
		<input type="checkbox" id="moduloShieldL293D" name="moduloShieldL293D"/> M&oacute;dulo shield con driver L293D<br>
        <img  src="/Imagenes/ModuloShieldL293D.jpg">
    </div>
    <div class="imagen">
		<input type="checkbox" id="reductorVoltajeLM2596" name="reductorVoltajeLM2596"/> Reductor de Voltaje LM2596<br>
        <img  src="/Imagenes/ReductorDeVolatjeLM2596.jpg">
    </div>
    <div class="imagen">
		<input type="checkbox" id="driverL298N" name="driverL298N"/> Driver para motor DC y PAP con L298N<br>
        <img  src="/Imagenes/DriverParaMotorDCyPAP.jpg">
    </div>
    <div class="imagen">
		<input type="checkbox" id="reductorVoltajeMini260" name="reductorVoltajeMini360"/> Reductor de Voltaje Mini 360<br>
        <img  src="/Imagenes/ReductorDeVoltajeMini.jpg">
    </div>
    </form>
</body>
</html>