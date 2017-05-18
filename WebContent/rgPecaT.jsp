<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, controller.HPeca, model.Peca, services.SPeca"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="dist/css/sb-admin-2.min.css"> <!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"> <!-- Bootstrap -->
<link rel="stylesheet"  href="vendor/metisMenu/metisMenu.min.css"> <!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="vendor/font-awesome/css/font-awesome.min.css"> <!-- Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> <!-- Link que permite o uso de Jquery para as funções de validação etc -->
<script src="js/validacoes.js" ></script> <!-- Ficheiro com as validações -->
<title>PECAS TIRADAS</title>
</head>
<body>
<!-- Template Inicio -->
	<nav class="navbar navbar-default navbar-static-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="HPeca" class="navbar-brand">Solidário</a>
			</div>
			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="rgReparacao.jsp">
						<i class="fa fa-sign-out fa-fw"></i>Sair
					</a>
				</li>
			</ul>
		</div>
	</nav>
	<!-- Template  -->
	
	<div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading"> <!-- Titulo -->
   				<h1>Peças Tiradas</h1>
   			</div>
		    <div class="panel-body"> <!-- Conteudo -->
			    <div class="row">
			    	<div class="col-lg-4"> <!-- Coluna de Formulario -->
						<form action="HPeca" method="POST" role="form" id="form_PecasT">
							<input type="hidden" id="tipo" name="tipo" value="1">
							<input type="hidden" id="idPT" name="idPT" value="">
							<div class="form-group">
								<label>Nome:</label>
								<input class="form-control" type="text" name="momeP" id="nomeP" value="" autofocus required>
							</div>
							<div class="form-group">
								<label>Descrição</label>
								<input class="form-control" type="text" name="descricao" id="descricao" value="" autofocus required>
							</div>
							<div class="form-group">
								<label>Preco</label>
								<input class="form-control" type="text" name="preco" id="preco" value="" autofocus requerid>
							</div>
							<div>
								<input class="btn btn-info" id="btnSubPecaT" type="submit" name="inserir" value="Inserir">
								<input class="btn btn-info" id="btnEdiPecaT" type="submit" name="editar" value="Editar" style="display: none;">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>	
	
	<script>
		document.getElementById("form_PecasT").reset();
	</script>
	<!-- Final Template -->
	

</body>
</html>