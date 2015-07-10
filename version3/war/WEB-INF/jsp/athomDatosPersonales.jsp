<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel = "icon" type = "image/png" href = "Imagenes/hackerSpace.jpg">
	<style type="text/css">
		<%@include file='./css/estilo-form2.css'%>
	</style>
	<title> Athom Datos Personales</title>
</head>

<body>
	<a href = "/getList"> 
		Mostrar relación 
	</a> <br/>
	<a href = "/getInstructionsFormAthomDatosPersonales"> 
		Instrucciones para llenar este formulario 
	</a>
	<br><br><br><br>
	<form action="save" method = "post">
		<fieldset><legend>Registro de clientes de Athom Store</legend>
			<div id="formulario">
	
				<div class="fila">
					<div class="etiqueta"> Nombres: </div>
					<div class="control">
						<input type="text" name="name" maxlength="30" required
						pattern = "\s*[A-Za-záéíóúÁÉÍÓÚüÜñÑ]{2,}(\s+[A-Za-záéíóúÁÉÍÓÚüÜñÑ]*\s*)*"
						title = "Ingresar sólo letras y colocar espacio entre los nombres. 
						Como mínimo, al inicio debe ir 2 letras"/>
					</div>
				</div>
				
				<div class="fila">
					<div class="etiqueta"> Apellidos:</div>
					<div class="control">
						<input type="text" name="lastName" maxlength="30" required
						pattern = "\s*[A-Za-záéíóúÁÉÍÓÚüÜñÑ]{2,}(\s+[A-Za-záéíóúÁÉÍÓÚüÜñÑ]*\s*)*"
						title = "Ingresar sólo letras y colocar espacio entre los apellidos. 
						Como mínimo, al inicio debe ir 2 letras"/>
					</div>
				</div>
				
				<div class="fila">
					<div class="etiqueta"> DNI: </div>
					<div class="control">
						<input type = "text" name = "dni" required
						pattern = "\s*\d{8}\s*" 
						title = "El número a ingresar sólo puede tener 8 dígitos"/>
					</div>
				</div>
				
				<div class="fila">
					<div class="etiqueta"> Dirección </div>
					<div class="control"></div>
				</div>
				
				<div class="fila">
					<div class="etiqueta"> Provincia: </div>
					<div class="control">
						<input type="text" name="province" maxlength="30" required 
						pattern = "\s*[A-Za-záéíóúÁÉÍÓÚüÜñÑ]{2,}(\s+[A-Za-záéíóúÁÉÍÓÚüÜñÑ]*\s*)*"
						title = "Ingresar sólo letras. 
						Como mínimo, al inicio debe ir 2 letras"/>
					</div>
				</div>
				
				<div class="fila">
					<div class="etiqueta"> Distrito: </div>
					<div class="control">
						<input type="text" name="district" maxlength="30" required 
						pattern = "\s*[A-Za-záéíóúÁÉÍÓÚüÜñÑ]{2,}(\s+[A-Za-záéíóúÁÉÍÓÚüÜñÑ]*\s*)*"
						title = "Ingresar sólo letras. 
						Como mínimo, al inicio debe ir 2 letras"/>
					</div>
				</div>
				
				<div class="fila">
					<div class="etiqueta"> 
						Ingresar el nombre o de la avenida o de la calle: <br/>
					</div>
					<div class="control">
						<input type = "radio" name = "avenueOrStreet"  value = "avenida" required/> Avenida  
						<input type = "radio" name = "avenueOrStreet"  value = "calle" required/> Calle <br/>
						<input type="text" name="nameAvenueOrStreet" maxlength="30" required/>
					</div>
				</div>
				
				<div class="fila">
					<div class="etiqueta"> N° de domicilio: </div>
					<div class="control">
						<input type="text" name="houseNumber" maxlength="20" required
						pattern = "\s*\d*\s*" 
						title = "sólo se puede ingresar números"/>
					</div>
				</div>
	
				<div class="fila">
					<div class="etiqueta"> Información de contacto </div>
					<div class="control"></div>
				</div>
				
				<div class="fila">
					<div class="etiqueta"> Teléfono: </div>
					<div class="control">
						<input type="text" name="telephone"
						pattern = "\s*\d{6}\s*" 
						title="El número a ingresar sólo puede tener 6 dígitos"/>
					</div>
				</div>
				
				<div class="fila">
					<div class="etiqueta"> Celular: </div>
					<div class="control">
						<input type="text" name="cellphone"
						pattern = "\s*\d{9}\s*" 
						title="El número a ingresar sólo puede tener 9 dígitos"/>
					</div>
				</div>
			
				<div class="fila">
					<div class="etiqueta"> Email: </div>
					<div class="control">
						<input type="email" name="email" maxlength="20" required/>
					</div>
				</div>
				<br>
				<div class="fila">
					<div id="action">
						<input type="reset" value="Limpiar"/>
						<input type="submit" value="Enviar"/>
					</div>
				</div>
			</div>
		</fieldset>
	</form>    
	
</body>
</html>