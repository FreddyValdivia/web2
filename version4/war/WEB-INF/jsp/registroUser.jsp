<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-form.css'%>
</style>
<title>Registrar Usuario</title>
</head>
<body>
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
	<br><br><br><br>
<form method='post' action="saveuser">
<fieldset><legend>Registro de miembros del HackerSpace</legend>
<div id="formulario">
	<div class="fila">
		<div class="etiqueta"><label for="dni">DNI :</label></div>
		<div class="control"><input type="text" name="dni" maxlength="8" 
			pattern="[0-9]{8}" title="Solo numeros" required=""/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="nomb">Nombre(s) :</label></div>
		<div class="control"><input type="text" name="nomb" maxlength="14" 
			pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)" title="Solo letras" required=""/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="apellp">Apellido Paterno:</label></div>
		<div class="control"><input type="text" name="apellp" maxlength="15" 
		pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)" title="Solo letras" required=""/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="apellm">Apellido Materno:</label></div>
		<div class="control"><input type="text" name="apellm" maxlength="15" pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)" title="Solo letras" required=""/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="direccion">Direccion :</label></div>
		<div class="control"><input type="text" placeholder="calle,Av. o Jr./#" name="direccion" maxlength="22" required=""/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="email">Email :</label></div>
		<div class="control"><input type="email" name="email" placeholder="ejemplo@ejemplo.com" pattern="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$" required=""/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="user">Username :</label></div>
		<div class="control"><input type="text" name="user" maxlength="10" required=""/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="pass">Contraseña:</label></div>
		<div class="control"><input type="password" name="pass" maxlength="8" pattern="[A-Za-z0-9]{8}" title="8 digitos( letras(mayusculas y/o minusculas) y/o numeros)" required=""/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="cel">Celular :</label></div>
		<div class="control"><input type="text" name="cel" maxlength="9" pattern="[0-9]{9}" title="Solo numeros" required=""/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="cestudios">Centro de Estudios :</label></div>
		<div class="control"><input type="text" name="cestudios" maxlength="20" required=""/></div>
	</div>
	<div class="fila">
		<div class="etiqueta"><label for="sexo">Sexo :</label></div>
		<div class="control">
			<select name="sexo" size="1">
				<option value=""></option>
	 			<option value="femenino">Femenino</option>
				<option value="masculino">Masculino</option>
			</select>
		</div>
	</div>
	<br>
	<div class="fila">
		<div id="action"><input type="reset" value="Limpiar"/><input type="submit" value="Enviar"/></div>
	</div>
</div>
</fieldset>
</form>


<br>
<center>
<p>
    <a href="http://jigsaw.w3.org/css-validator/check/referer">
        <img style="border:0;width:88px;height:31px"
            src="http://jigsaw.w3.org/css-validator/images/vcss"
            alt="Ã‚Â¡CSS VÃƒÂ¡lido!" />
    </a>
</p>
<p>
<a href="http://jigsaw.w3.org/css-validator/check/referer">
    <img style="border:0;width:88px;height:31px"
        src="http://jigsaw.w3.org/css-validator/images/vcss-blue"
        alt="Ã‚Â¡CSS VÃƒÂ¡lido!" />
    </a>
</p>
<p>
    <a href="http://validator.w3.org/check?uri=referer"><img
      src="http://www.w3.org/Icons/valid-html401" alt="Valid HTML 4.01 Transitional" height="31" width="88"></a>
</p>
</center>      
</body>
</html>
