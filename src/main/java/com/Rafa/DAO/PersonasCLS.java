package com.Rafa.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.util.*;

import com.Rafa.ConexionBD.ConexionBD;
import com.Rafa.Entidades.personas;
import java.sql.ResultSet;

public class PersonasCLS {
	ConexionBD con = new ConexionBD();
	Connection coneccion = con.retornarConexion();

	public ArrayList<personas> mostrar(personas p) {
		ArrayList<personas> lista = new ArrayList<personas>();
		try {

			CallableStatement call = coneccion.prepareCall("call SP_S_PERSONAS(?)");
			call.setString("pdui", p.getDui());
			ResultSet resultado = call.executeQuery();
			while(resultado.next()) {
				personas person = new personas();
				person.setId(resultado.getInt("idpersona"));
				person.setNombres(resultado.getString("nombres"));
				person.setApellidos(resultado.getString("apellidos"));
				person.setDireccion(resultado.getString("municipio"));
				person.setDui(resultado.getString("DUI"));
				
				lista.add(person);
				
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		return lista;

	}

}
