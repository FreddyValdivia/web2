<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="controladorv2.*"%>
<%@ page import="java.util.List"%>
<% List<Persona> personas = (List<Persona>)request.getAttribute("personas");%>
<!DOCTYPE html>
<html>
<head>
	<meta charset = "UTF-8">
	<title> Ticket</title>
	<meta charset = "UTF-8">
	<link rel="icon" type="image/png" href="Imagenes/hackerSpace.jpg"> 
	<link rel="stylesheet" type="text/css" href="jsp/css/styleAthomTicket.css">
</head>
<body>
	<!-- ticket para HackerSpace -->
	<div id = "divTicketDocument">
		<div class="Table">
			<div class="Row">
				<div id="divLogo">
					<div id = "divImagen">
						<img src = "Imagenes/hackerSpace.jpg" width = "200" alt="HackerSpace"/>
					</div>
					<div id = "divDireccionEmpresa">
						Dirección Empresa
					</div>
					<div id = "divDatosCliente">
						Datos Cliente
					</div>
				</div>
				<div id="divTicket"> 
					RUC: <hr/>
					Ticket N° <hr/>
					Fecha: 22 de junio del 2015
				</div>
			</div>
		</div>
		<br />
		<div class="Table">
			<div class="Heading">
				<div class="Cell"><p> CANT. </p></div>
				<div id="DivDescripcion"><p> DESCRIPCIÓN</p></div>
				<div class="Cell"><p> PRECIO UNITARIO </p></div>
				<div class="Cell"><p> IMPORTE </p></div>
			</div>
			
			
		<%for( Persona p : personas ) {%>
			<div class="Row">
				<div class="Cell"><p> <%= p.getKey() %> </p></div>
				<div class="Cell"><p> <%= p.getLastName() %> </p></div>
				<div class="Cell"><p> <%= p.getDni() %> </p></div>
				<div class="Cell"><p> <%= p.getHouseNumber() %> </p></div>	
			</div>
		<%}%>
			<div class="Row">
				<div class="Cell"><p></p></div>
				<div class="Cell"><p>  </p></div>
				<div class="Cell"><p> TOTAL </p></div>
				<div class="Cell"><p> 12345 </p></div>
			</div>
		</div>
	</div>
	<a href = "../../athomDatosPersonales.jsp"> Registrarse </a>
</body>
</html>