<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<LINK REL=StyleSheet HREF="CCS/Estilo.css" TYPE="text/css" />
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>

<head>

<title>Consulta</title>

<script type="text/javascript">
	
	$(document).ready(function(){
		
		$("#btn").click(function(){ 
			
			var caja = $("#duip").val();
			
			$.post('controllerPersona',{
				
			var cantidad = $("#duip").val().length;
			
			if(cantidad == 10){
				caja
			}
				
				
			)
				
			}, function(response){
				//Recibir informacion
				var modificarh = document.getElementById('mod');
				
				try{
				console.log(response);
				
				let datos = JSON.parse(response);
				
				for(let i of datos){
				 
				modificarh.innerHTML = i.nombres + " Eres beneficiario de los $300 ";
				
					
				}
				}catch (err){
					
					modificarh.innerHTML= "No eres beneficiario";
				}
					
				
			});
		});
			
		});
		
		
	
</script>
</head>

<body class="bg-ligth">
	<div class="col-lg-12 color">
		<center>
			<h2>
				GOBIERNO DE <img src="Imagenes/logo.png" height="80px" width="80px">
				EL SALVADOR
			</h2>
		</center>
	</div>

	<div class="p-5">
		<center>
			<h3>Consulta quien de tu familia es el beneficiario del apoyo</h3>
			<h3>económico para la alimentación en la emergencia</h3>
		</center>

		<div class=" centrar ">
			<center>
				<h3 style="color: white">COVID-19</h3>
			</center>
		</div>

		<div class="input-group">

			<input type="text"
				placeholder=" Ingresa tu numero de DUI - 00000000-0" class="DUI"
				name="DUI" id="duip">
			<button class="consultar" value="consultar" id="btn"
				data-bs-toggle="modal" data-bs-target="#exampleModal">
				CONSULTAR</button>

		</div>
		<div class="p-5">
			<div class="p-5">
				<center>
					<h6>El apoyo económico brindado por el Gobierno de El Salvador
						está dirigido a personas afectadas por la pandemia del COVID-19.
						Dicho beneficio</h6>
					<h6>corresponde a $300 por vivienda.</h6>
				</center>
			</div>
		</div>
	</div>

	<!-- Button trigger modal -->


	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Resultado</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<h3 id="mod"></h3>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

</body>

</html>