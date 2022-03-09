package com.sinensia.utilities;

import java.util.ArrayList;

import com.sinensia.model.Alumno;

public class SingletonArrayAlumnos {

	private static ArrayList<Alumno> innstance;

	
	
	synchronized public static ArrayList<Alumno>  getInstance() {
		if (innstance == null) {
			innstance = new ArrayList<Alumno>();
		}
		return innstance;
	}
	
	private SingletonArrayAlumnos() {
		innstance = new ArrayList<Alumno>();
	}
	
}
