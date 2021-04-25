package com.Rafa.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Rafa.DAO.PersonasCLS;
import com.Rafa.Entidades.personas;

/**
 * Servlet implementation class controllerPersona
 */
public class controllerPersona extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public controllerPersona() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	ArrayList<personas> lista = new ArrayList<personas>();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String dui = request.getParameter("DUI");
		personas per = new personas();
		per.setDui(dui);
		PersonasCLS cls = new PersonasCLS();
		lista = cls.mostrar(per);
		if (lista.size() == 1) {
		response.sendRedirect("Beneficiado.jsp");
		}else {
			response.sendRedirect("Error.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		
			for (var i : lista) {
				request.getSession().setAttribute("Nombre", i.getNombres());
				request.getSession().setAttribute("Apellido", i.getApellidos());
				request.getSession().setAttribute("Direccion", i.getDireccion());
			}
		
	}

}
