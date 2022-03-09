package com.sinensia.model;

import java.time.LocalDate;

public class Alumno {
	
	private int Id;
	private String nombre;
	private String Apellidos;
	private String dni;
	private LocalDate fechaNacimiento;
	
	public Alumno(int id, String nombre, String apellidos, String dni, LocalDate fechaNacimiento) {
		super();
		Id = id;
		this.nombre = nombre;
		Apellidos = apellidos;
		this.dni = dni;
		this.fechaNacimiento = fechaNacimiento;
	}
	
	public Alumno() {		
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return Apellidos;
	}

	public void setApellidos(String apellidos) {
		Apellidos = apellidos;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public LocalDate getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(LocalDate fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}
}
