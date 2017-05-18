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
								<input type="hidden" id="inserido" name="inserido" value="1">
								<input type="hidden" id="tipo" name="tipo" value="1">
								<input type="hidden" id="idR" name="idR" value="">
								<div class="form-group">
									<label>Carro</label>
									<select  class="form-control" id="list" name="listCar">
									<%
										ArrayList arC = (ArrayList)request.getAttribute("listaCar");
										if(arC != null){
											for(int i=0; i<arC.size();i++){
												Carro c = (Carro) arC.get(i);
												out.append("<option value='"+i+"'>" + c.getMatricula() + "</option>");
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
																	 + "<form method='POST' action='HReparar'>"
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
																	 + "<form method='POST' action='HReparar'>"
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
								<div class="form-group">
									<label>Data Inicio</label>
									<input class="form-control" type="date" name="dataIn" id="dataIn" value="" requerid>
								</div>
								<div class="form-group">
									<label>Data Fim  </label>
									<input class="form-control" type="date" name="dataFim" id="dataFim" value="" requerid>
								</div>
								<div class="form-group">
								<label>Mão de Obra:</label>
								<input class="form-control" type="text" name="totalm" id="totalm" value="" required>
							</div>
								<div>
									<input class="btn btn-info" id="btnSubRep" type="submit" name="inserir" value="Inserir">
									<input class="btn btn-info" id="btnEditRep" type="submit" name="editar" value="Editar" style="display: none;">
								</div>
							</form>
						</div>
						<div class="col-lg-8">
							<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<tr>
									<th>Carro</th>
									<th>Pecas Retiradas</th>
									<th>Pecas Repostas</th>
									<th>Data Inicio</th>
									<th>Data Fim</th>
									<th>Mao Obra</th>
									<th>Opcoes</th>
								</tr>
								<%
								
								ArrayList arRep = (ArrayList) request.getAttribute("listaRep");
								for(int i=0;  i < arRep.size() ; i++){
								Reparar rep = (Reparar) arRep.get(i);
									out.append("<tr>"
											 + "<td class='carro" + rep.getIrReparacao() + "'>" + rep.getCarro().getMatricula() + "</td>"
											 + "<td class='pRetirada" + rep.getIrReparacao() + "'>" + rep.getPecasTiradas().size()+ "</td>"
											 + "<td class='pReposta" + rep.getIrReparacao() + "'>" + rep.getPecasMetidas().size()+ "</td>"
											 + "<td class='dataIn" + rep.getIrReparacao() + "'>" + rep.getDataInicio() + "</td>"
											 + "<td class='dataFim" + rep.getIrReparacao() + "'>" + rep.getDataFim()+ "</td>"
											 + "<td class='precoM" + rep.getIrReparacao() + "'>" + rep.getCustoMaoDeObra()+"</td>"
											 + "<td>"
												 + "<form method='POST' action='HReparar'>"
												    + "<input type='hidden' id='inserido' name='inserido' value='1'>"
												 	+ "<input name='elimRP' id='elimRP' type='hidden' value='" + rep.getIrReparacao() + "'>"
												 	+ "<input class='btn btn-default' type='submit' value='Apagar'>"
												 	+ "</form>"
														 	+ "<button class='btn btn-default' id='" + rep.getIrReparacao()+"' onclick='editarReparacao(this)'>Editar</button>"
												 + "</form>"	
											+ "</td></tr>");
									}
								%>
							</table>
						</div>
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