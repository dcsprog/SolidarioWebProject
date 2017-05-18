<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="dist/css/sb-admin-2.min.css"> <!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"> <!-- Bootstrap -->
<link rel="stylesheet"  href="vendor/metisMenu/metisMenu.min.css"> <!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="vendor/font-awesome/css/font-awesome.min.css"> <!-- Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> <!-- Link que permite o uso de Jquery para as fun��es de valida��o etc -->
<script src="js/validacoes.js" ></script> <!-- Ficheiro com as valida��es -->
<title>REPARA��ES</title>
</head>
<body>
<!-- Template Inicio -->
	<nav class="navbar navbar-default navbar-static-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="#" class="navbar-brand">Solid�rio</a>
			</div>
			
			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="index.jsp">
						<i class="fa fa-sign-out fa-fw"></i>Sair
					</a>
				</li>
			</ul>
		</div>
	</nav>
	
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h1>Repara��es</h1>
			</div>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-lg-4" style="background-color:red">
					<form action="HCarro" method="POST" role="form" id="form_Carros">
							<input type="hidden" id="tipo" name="tipo" value="1">
							<input type="hidden" id="idC" name="idC" value="">
							<div class="col-lg-12"> 
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<tr>
											<th>Nome</th>
											<th>Descri��o</th>
											<th>Pre�o</th>
										</tr>
									</table>
								</div>
							</div>
							
					</form>		
				</div>
			</div>
		</div>
		
	</div>

</body>
</html>