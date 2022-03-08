<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Alumno" %>
<%@ page import="utilities.SingletonArrayAlumnos" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  	<meta name="viewport" content="width=device-width, initial-scale=1"/>
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<title>Lista Alumnos</title>
	<style type="text/css">
		table {
			width: 100%;
			font-size: 1.1em;
			font-weight: bold;
			border: solid 2px black;
			
		}
		
		#negro{
			background-color: black !important;
		}
		
		
		th{
			background-color: black;
			color: white;
			font-size: 2em;
			font-weight: bold;
			text-align: center;
		}
		
		tr:nth-child(odd){
			background-color:#C3C8C7;
		}
		
		tr:nth-child(even){
			background-color:#fbfbfb;
		}
		
		td{
			padding:5px;
			text-align: center;
		}
	</style>
</head>
<body>
<div class="container mt-3">
		<h3>LISTA ALUMNOS</h3>
		<%
		List<Alumno> listaAlumnos = SingletonArrayAlumnos.getInstance();
		String tabla = "<table border='1' cellspacing='2' cellpadding='2' class='table'>";
		tabla += "<thead>";
		tabla += "<tr id='negro'>";
		tabla += "<th>ID</th>";
		tabla += "<th>NOMBRE</th>";
		tabla += "<th>APELLIDOS</th>";
		tabla += "<th>DNI</th>";
		tabla += "<th>FECHA NACIMIENTO</th>";
		tabla += "</tr>";
		tabla += "</thead>";
		tabla += "<tbody>";
		for(Alumno al: listaAlumnos){
			tabla += "<tr><td scope='row'>"+al.getId()+"</td>";
			tabla += "<td>"+al.getNombre()+"</td>";
			tabla += "<td>"+al.getApellidos()+"</td>";
			tabla += "<td>"+al.getDni()+"</td>";
			tabla += "<td>"+al.getFechaNacimiento()+"</td>";
			tabla += "</tr>";
		}
		tabla += "</tbody>";
		tabla += "</table>";
		%>
		<%=tabla%>	
</div>
</body>
</html>