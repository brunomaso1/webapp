<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- Importaciones, declaracion de contenido, etc. --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="">
		<meta name="author" content="">
		<meta name="keywords" content="">

		<title>DeliverIT</title>

		<!-- Tags de Facebook, google, etc. -->
		<meta property="og:title" content="">
		<meta property="og:type" content="website">
		<meta property="og:url" content="">
		<meta property="og:site_name" content="">
		<meta property="og:description" content="">

		<!-- Bootstrap Core CSS -->
		<link href="../res/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Bootstrap Core CSS -->
		<link href="../res/css/plugins/bootstrap-toggle.min.css" rel="stylesheet">
		
		<!-- Custom CSS -->
		<link href="../res/css/viajeNuevo.css" rel="stylesheet">

		<!-- Morris Charts CSS -->
		<link href="../res/css/plugins/morris.css" rel="stylesheet">

		<!-- Custom Fonts -->
		<link href="../res/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

		<!-- Favicon -->
		<link rel="shortcut icon" type="image/png" href="../res/img/favicon.png">
	</head>
	<body>
		<div id="wrapper">
			<!-- Navigation -->
			<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand bottom-padding-1" href="viaje.html"><img src="../res/img/logo-navibar.png"> </a>
				</div>
				<!-- Top Menu Items -->
				<ul class="nav navbar-right top-nav">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
						<ul class="dropdown-menu message-dropdown">
							<li class="message-preview">
								<a href="#">
									<div class="media">
										<span class="pull-left">
											<img class="media-object" src="http://placehold.it/50x50" alt="">
										</span>
										<div class="media-body">
											<h5 class="media-heading"><strong> Venecia Pizzeria Rodo</strong>
											</h5>
											<p class="small text-muted"><i class="fa fa-clock-o"></i> Ayer a las 4:32 PM</p>
											<p> Mañana voy a necesitar 30 cajas, vos tenes alguna caja que te sobre?</p>
										</div>
									</div>
								</a>
							</li>
							<li class="message-preview">
								<a href="#">
									<div class="media">
										<span class="pull-left">
											<img class="media-object" src="http://placehold.it/50x50" alt="">
										</span>
										<div class="media-body">
											<h5 class="media-heading"><strong> Barack Obama</strong>
											</h5>
											<p class="small text-muted"><i class="fa fa-clock-o"></i> Hoy a las 00:32 AM</p>
											<p> Se me quedó la moto, te llamé pero se ve que estas ocupado. Cuando veas llamame.</p>
										</div>
									</div>
								</a>
							</li>
							<li class="message-preview">
								<a href="#">
									<div class="media">
										<span class="pull-left">
											<img class="media-object" src="http://placehold.it/50x50" alt="">
										</span>
										<div class="media-body">
											<h5 class="media-heading"><strong> DeliverIT</strong>
											</h5>
											<p class="small text-muted"><i class="fa fa-clock-o"></i> Hoy a las 00:50 PM</p>
											<p> Michelle Obama ha terminado el viaje 5 correctamente y sin problemas reportados.</p>
										</div>
									</div>
								</a>
							</li>
							<li class="message-footer">
								<a href="#"> Marcar todos como leidos</a>
							</li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
						<ul class="dropdown-menu alert-dropdown">
							<li>
								<a href="#">Jose Villegas <span class="label label-primary">No entregado</span></a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="#"> Ver todas las alertas</a>
							</li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Pizzeria Venecia 18 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li>
								<a href="#"><i class="fa fa-fw fa-user"></i> Perfil</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-fw fa-envelope"></i> Mensajes</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-fw fa-gear"></i> Configuración</a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="#"><i class="fa fa-fw fa-power-off"></i> Salir</a>
							</li>
						</ul>
					</li>
				</ul>
				<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
				<div class="collapse navbar-collapse navbar-ex1-collapse">
					<ul class="nav navbar-nav side-nav">
						<li class="active">
							<a href="../viaje.html"><i class="fa fa-fw fa-motorcycle " aria-hidden="true"></i> Viajes</a> <span class="sr-only">(current)</span>
						</li>
						<li>
							<a href="calificacion.html"><i class="fa fa-fw fa-star" aria-hidden="true"></i> Calificaciones</a>
						</li>
						<li>
							<a href="estadoCuenta.html"><i class="fa fa-fw fa-credit-card-alt" aria-hidden="true"></i> Estado de cuenta</a>
						</li>
						<li>
							<a href="javascript:;" data-toggle="collapse" data-target="#droplist1"><i class="fa fa-fw fa-history" aria-hidden="true"></i> Historial <i class="fa fa-fw fa-caret-down"></i></a>
							<ul id="droplist1" class="collapse">
								<li>
									<a href="#">Viajes</a>
								</li>
								<li>
									<a href="#">Clientes</a>
								</li>
								<li>
									<a href="#">Deliverys</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
			<div id="page-wrapper">
				<div class="container-fluid">
					<!-- Page Heading -->
					<div class="row">
						<div class="col-lg-3">
							<h1 class="headline">
								Mis viajes <small>Nuevo viaje</small>
							</h1>
						</div>
						<form action="./viajeNuevo.html" method="POST" onsubmit="return validarPagina()">
							<div class="col-lg-2 col-lg-offset-5 text-right top-padding-1">
								<div class="input-group">
									<input type="number" class="form-control" id="precio" name="precio" placeholder="Ingresa el precio">
									<div class="input-group-btn">
										<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-usd" aria-hidden="true"></i><span class="caret"></span></button>
										<ul class="dropdown-menu">
											<li><a onclick="document.getElementById('precio').value = '10';"href="#">$ 10</a></li>
											<li><a onclick="document.getElementById('precio').value = '20';"href="#">$ 20</a></li>
											<li><a onclick="document.getElementById('precio').value = '30';"href="#">$ 30</a></li>
											<li><a onclick="document.getElementById('precio').value = '50';"href="#">$ 50</a></li>
											<li><a onclick="document.getElementById('precio').value = '80';"href="#">$ 80</a></li>
											<li><a onclick="document.getElementById('precio').value = '130';"href="#">$ 130</a></li>
										</ul>
									</div><!-- /btn-group -->
								</div><!-- /input-group -->
							</div>
							<div class="col-lg-2  text-right top-padding-1 ">
								<button type="submit" name="tipo" value="guardar" class="btn btn-secondary btn-md">Guardar</button>
								<button type="submit" name="tipo" value="publicar" class="btn btn-danger btn-md">Publicar</button>
							</div>
						</form>
					</div>
					<!-- /.row -->
					<div class="row">
						<div class="col-lg-6">
							<div class="panel panel-green panel-height">
								<div class="panel-heading">
									<h3 class="panel-title"><i class="fa fa-fw fa-cutlery" aria-hidden="true"></i> Pedidos</h3>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table id="pedidos" class="table table-striped table-hover">
											<thead>
												<tr>
													<th>#</th>
													<th>Cliente</th>
													<th>Direccion</th>
													<th>Telefono</th>
												</tr>
											</thead>
											<tbody>
												${datosTablaPedido}
											</tbody>
										</table>
									</div>
								</div>
								<div class="panel-footer">
									<button type="button" data-toggle="modal" data-target="#popupNuevoPedido" id="agregarPedido" class="btn btn-warning btn-md pull-right">Agregar Pedido</button>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="panel panel-green panel-height">
								<div class="panel-heading">
									<h3 class="panel-title"><i class="fa fa-users fa-fw"></i> Clientes</h3>
								</div>
								<div class="panel-body">
									<div class="map-responsive" id="map"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /#page-wrapper -->
		</div>
		<!-- /#wrapper -->

		<%-- Se incluyen los modals --%>
		<%@include file="viajeNuevoModal.html" %>

		<!-- jQuery -->
		<script src="../res/js/jquery-3.1.1.min.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="../res/js/bootstrap.min.js"></script>

		<!-- Default page javascripts -->
		<script src="../res/js/viajeNuevo.js"></script>	

		<!-- Google Maps -->
		<script src="../res/js/viajeNuevoMapa.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA2NCnQBRCbuXHbNeUY7mW-lvP-v4V3x8A&callback=initMap"></script>
		
		<!-- Bootstrap togle JavaScript -->
		<script src="../res/js/plugins/bootstrap-toggle.min.js"></script>
		<script>activarModal("agregarPedido","pedidos");</script>
		<!-- Test -->
		
		<script>ingresarDatos();</script>
	</body>
</html>