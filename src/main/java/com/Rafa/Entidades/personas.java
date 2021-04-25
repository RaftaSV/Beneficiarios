package com.Rafa.Entidades;

import lombok.Data;

@Data
public class personas {

	public int id;
	public String nombres;
	public String apellidos;
	public String Dui;
	public String Direccion;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getDui() {
		return Dui;
	}

	public void setDui(String dui) {
		Dui = dui;
	}

	public String getDireccion() {
		return Direccion;
	}

	public void setDireccion(String direccion) {
		Direccion = direccion;
	}

}
