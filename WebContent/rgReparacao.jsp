<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, controller.HCarro, model.Carro, services.SCarro"%>
<%@ page import="controller.HPeca, model.Peca, services.SPeca"%>
<%@ page import="controller.HReparar, model.Reparar, services.SReparacao" %>
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
<title>REPARAÇÕES</title>
</head>
<body>
<!-- Template Inicio -->
	<nav class="navbar navbar-default navbar-static-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="HReparar" class="navbar-brand">Solidário</a>
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
            <div class="panel-heading"> <!-- Titulo -->
   				<h1>Reparação</h1>
   			</div>
		    	<div class="panel-body"> <!-- Conteudo -->
			   		<div class="row">
			    		<div class="col-lg-4"> <!-- Coluna de Formulario -->
							<form action="HReparar" method="POST" role="form" id="form_Reparacao">
								<input type="hidden" id="tipo" name="tipo" value="1">
								<input type="hidden" id="idC" name="idC" value="">
								<div class="form-group">
									<label>Carro</label>
									<select  class="form-control" id="list">
									<%
										ArrayList arC = (ArrayList)request.getAttribute("listaCar");
										if(arC != null){
											for(int i=0; i<arC.size();i++){
												Carro c = (Carro) arC.get(i);
												out.append("<option value='i'>" + c.getMatricula() + "</option>");
											}
										}
									%>		
									</select>
								</div>
								<div class="form-group">
									<a class="btn btn-info" href="rgPecaT.jsp">Registar Pecas Tiradas</a>
								</div>
								<div class="col-lg-12"> 
									<div class="table-responsive">
										<table class="table table-striped table-bordered table-hover">
											<tr>
												<th>Nome</th>
												<th>Descrição</th>
												<th>Preço</th>
												<th>Opçoes</th>
											</tr>
											<%
												ArrayList arRepT = (ArrayList)request.getAttribute("listaPecaT");
												if(arRepT != null){
													for(int i=0; i<arRepT.size();i++){
														Peca p = (Peca) arRepT.get(i);
														//out.append("<tr><td>"+ p.getNomePeca()+"</td><<td>"+p.getDescricaoPeca()+"</td><td>"+p.getPrecoPeca()+"</td></tr>");
														out.append("<tr>"
																 + "<td class='nome" + p.getIdPeca() + "'>" + p.getNomePeca()  + "</td>"
																 + "<td class='decricao" + p.getIdPeca() + "'>" + p.getDescricaoPeca() + "</td>"
																 + "<td class='preco" + p.getIdPeca() + "'>" + p.getPrecoPeca() + "</td>"
																 + "<td>"
																	 + "<form method='POST' action='HPeca'>"
																	 	+ "<input name='elimPT' id='elimPT' type='hidden' value='" + p.getIdPeca() + "'>"
																	 	+ "<input class='btn btn-default' type='submit' value='Apagar'>"
																	 	+ "</form>"
																			 	+ "<button class='btn btn-default' id='" +  p.getIdPeca()  +"' onclick='editarPecaT(this)'>Editar</button>"
																	 + "</form>"	
																+ "</td></tr>");
														}
												}
												
											%>
										</table>
									</div>
								</div>
								<div class="form-group">
									<a class="btn btn-info" href="rgPecaM.jsp">Registar Pecas Metidas</a>
								</div>
								<div class="col-lg-12"> 
									<div class="table-responsive">
										<table class="table table-striped table-bordered table-hover">
											<tr>
												<th>Nome</th>
												<th>Descrição</th>
												<th>Preço</th>
												<th>Opçoes</th>
											</tr>
											<%
												ArrayList arRepM = (ArrayList)request.getAttribute("listaPecaM");
												if(arRepM != null){
													for(int i=0; i<arRepM.size();i++){
														Peca p = (Peca) arRepM.get(i);
														//out.append("<tr><td>"+ p.getNomePeca()+"</td><<td>"+p.getDescricaoPeca()+"</td><td>"+p.getPrecoPeca()+"</td></tr>");
														out.append("<tr>"
																 + "<td class='nome" + p.getIdPeca() + "'>" + p.getNomePeca()  + "</td>"
																 + "<td class='decricao" + p.getIdPeca() + "'>" + p.getDescricaoPeca() + "</td>"
																 + "<td class='preco" + p.getIdPeca() + "'>" + p.getPrecoPeca() + "</td>"
																 + "<td>"
																	 + "<form method='POST' action='HPeca'>"
																	 	+ "<input name='elimPM' id='elimPM' type='hidden' value='" + p.getIdPeca() + "'>"
																	 	+ "<input class='btn btn-default' type='submit' value='Apagar'>"
																	 	+ "</form>"
																			 	+ "<button class='btn btn-default' id='" +  p.getIdPeca()  +"' onclick='editarPecaM(this)'>Editar</button>"
																	 + "</form>"	
																+ "</td></tr>");
														}
												}
												
											%>
											
										</table>
									</div>
								</div>
							</form>
						</div>
						<div class="col-lg-8">
						yrdfyvygv
						</div>
					</div>
				</div>
			</div>
		</div>	
	<script>
		document.getElementById("form_Reparacao").reset();
	</script>
	<script>
		document.getElementById("form_PecaT").reset();
	</script>
	<script>
		document.getElementById("form_PecaM").reset();
	</script>
	
	<!-- Final Template -->


</body>
</html>