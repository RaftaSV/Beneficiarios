<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<LINK REL=StyleSheet HREF="CCS/Estilo.css" TYPE="text/css" />
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<head>
<meta charset="UTF-8">
<title>Beneficiario</title>
</head>
<body>
	<%
	HttpSession sesion = (HttpSession) request.getSession();
	String usuSession = String.valueOf(sesion.getAttribute("Nombre"));
	System.out.print(usuSession + " Nombre usuario");
	String consulta = String.valueOf(sesion.getAttribute("Consulta"));
	if (usuSession.equals(null) || usuSession.equals("null") || consulta.equals("Error")) {

		response.sendRedirect("Consulta.jsp");

	}
	%>
	<div class="col-lg-12 color">
		<center>
			<h2>
				GOBIERNO DE <img src="Imagenes/logo.png" height="80px" width="80px">
				EL SALVADOR
			</h2>
		</center>
	</div>
	<div>
		<form action="controllerPersona" method="post">
			<%
			String nombre = (String) session.getAttribute("Nombre");
			String apellido = (String) session.getAttribute("Apellido");
			String direccion = (String) session.getAttribute("Direccion");
			%>
			<center>
				<h3>
					En hora buena
					<%=nombre%>
					<%=apellido%>
					eres beneficiario de los $300 del apoyo
				</h3>
				<h3>economico que esta haciendo entrega el Gobierno de El
					Salvador.</h3>
				<h3>
					Acercate a la agencia Banco Hipotecario en
					<%=direccion%>
				</h3>
				<i class="far fa-smile-beam fa-10x"></i>
			</center>
		</form>
	</div>

	<div class="p-5">
		<center>
			<form action="controllerCerrar" method="post">
				<button class="btn btn-success " name="btnConsultar"
					value="Consultar">Nueva consulta</button>
			</form>
		</center>
	</div>
</body>
</html>