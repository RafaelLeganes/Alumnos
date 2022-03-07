package utilities;

import java.util.ArrayList;

import model.Alumno;

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
