<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.sinensia.model.Alumno" %>
<%@ page import="com.sinensia.utilities.SingletonArrayAlumnos" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  	<meta name="viewport" content="width=device-width, initial-scale=1"/>
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<title>Mostrar Alumno</title>
</head>
<body>
	<%List<Alumno> listaAlumnos = SingletonArrayAlumnos.getInstance();
	Alumno al =new Alumno();
	al.setNombre(request.getParameter("nombre"));
	al.setId(Integer.valueOf(request.getParameter("id")));
	al.setApellidos(request.getParameter("apellidos"));
	al.setDni(request.getParameter("dni"));
	al.setFechaNacimiento(LocalDate.parse(request.getParameter("fechaNacimiento")));
	listaAlumnos.add(al);
	%>
<div class="container mt-3">
		<h3>ALUMNO INSERTADO</h3>
		<div class="mb-3 mb-3">
			<label for="id">Id:</label>
			<input type="number" class="form-control" id="id" readonly="readonly" placeholder="<%=al.getId()%>" name="id">
		</div>
		<div class="mb-3">
			<label for="nombre">Nombre:</label>
			<input type="text" class="form-control" id="nombre" readonly="readonly" placeholder="<%=al.getNombre()%>" name="nombre">
		</div>
		<div class="mb-3">
			<label for="apellidos">Apellidos:</label>
			<input type="text" class="form-control" id="apellidos" readonly="readonly"  placeholder="<%=al.getApellidos()%>" name="apellidos">
		</div>
		<div class="mb-3 ">
			<label for="dni">DNI:</label>
			<input type="text" class="form-control" id="dni" readonly="readonly" placeholder="<%=al.getDni()%>" name="dni">
		</div>
		<div class="mb-3">
			<label for="fechaNacimiento">Fecha Nacimiento:</label>
			<input type="text" class="form-control" id="fechaNacimiento" readonly="readonly" placeholder="<%=al.getFechaNacimiento()%>" name="fechaNacimiento">
		</div>
		<a href="ListarAlumnos.jsp">
		<button type="submit" class="btn btn-primary">Ver Listado</button>
		</a>
</div>
</body>
</html>