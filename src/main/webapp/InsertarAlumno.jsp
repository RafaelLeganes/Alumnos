<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  	<meta name="viewport" content="width=device-width, initial-scale=1"/>
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<title>Insertar Alumnos</title>
</head>
<body>
<div class="container mt-3">
	<h3>INSERTAR ALUMNOS</h3>
	<form action="MostrarAlumnoInsertado.jsp">
		<div class="mb-3 mb-3">
			<label for="id">Id:</label>
			<input type="number" class="form-control" required id="id" placeholder="Introduce Id" name="id">
		</div>
		<div class="mb-3">
			<label for="nombre">Nombre:</label>
			<input type="text" class="form-control" required pattern="[a-zA-Z]*" id="nombre" placeholder="Introduce Nombre" name="nombre">
		</div>
		<div class="mb-3">
			<label for="apellidos">Apellidos:</label>
			<input type="text" class="form-control" required pattern="[a-zA-Z]*" id="apellidos" placeholder="Introduce Apellidos" name="apellidos">
		</div>
		<div class="mb-3 ">
			<label for="dni">DNI:</label>
			<input type="text" class="form-control" required pattern="[0-9]{8}[a-zA-Z]{1}" id="dni" placeholder="Introduce DNI" name="dni">
		</div>
		<div class="mb-3">
			<label for="fechaNacimiento">Fecha Nacimiento:</label>
			<input type="date" class="form-control" required id="fechaNacimiento" placeholder="dd/mm/aaaa" name="fechaNacimiento">
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>
</body>
</html>