<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file='./css/estilo-form.css'%>
</style>
<title>registroHS</title>
</head>
<body>
<br><br><br><br>
<form method='post' action="saveRegCurso">
<fieldset><legend>Registro de Cursos del HackerScholar</legend>
<div id="formulario">
	<div class="fila">
		<div class="etiqueta"><label for="nombC">Nombre del Curso :</label></div>
		<div class="control"><input type="text" name="nombC" maxlength="20" 
			pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)" title="Solo letras" required=""/></div>
	</div>
	
	<div class="fila">
		<div id="action"><input type="reset" value="Limpiar"/><input type="submit" value="Enviar"/></div>
	</div>
</div>
</fieldset>
</form>


<br>
     
</body>
</html>
