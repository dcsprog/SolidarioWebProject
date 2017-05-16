<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Template Inicio -->
	<nav class="navbar navbar-default navbar-static-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="HandlerFuncionario" class="navbar-brand">Solidário</a>
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
						<form action="HCarro" method="POST" role="form" id="form_Carros">
							<input type="hidden" id="tipo" name="tipo" value="1">
							<input type="hidden" id="idC" name="idC" value="">
							<div class="form-group">
								<label>Carro</label>
									<select  class="form-control" name="Carro">
										<option value=""></option>
									</select>
							</div>
							<div class="form-group">
								<label>Pecas Tiradas</label>
								<input class="btn btn-info" id="btnSubPeca" type="submit" name="inserir" value="Inserir">
								<input class="btn btn-info" id="btnEditPeca" type="submit" name="editar" value="Editar" style="display: none;">
							</div>
							<div class="form-group">
								<label>Pecas Repostas</label> 
  								<select class="form-control" name="combustivel">
   				 						<option value=""></option>
   										<option value=""></option>
  								</select>							
							</div>
							<div class="form-group">
								<label>Data de Registo:</label>
								<input class="form-control" type="text" name="dataPReg" id="dataPReg" value="" required>
							</div>
							<div class="form-group">
								<label>Kilometros Marcados:</label> 
								<input class="form-control" type="text" name="kmi" id="kmi"  minlength="10" maxlength="10" oninput="checkKms(this)" value="" required>
								<label class="label label-danger" id="kms" style="display: none">Campo Numérico</label>
							</div>
							<div class="form-group">
								<label>Estado :</label>
								<label>Ativo
								<input class="form-control" type="checkbox" name="estado" value="true">
								</label>
								<label>Inativo
								<input class="form-control" type="checkbox" name="estado" value="false">
								</label>
							</div>
							<div>
								<input class="btn btn-info" id="btnSubCarro" type="submit" name="inserir" value="Inserir">
								<input class="btn btn-info" id="btnEditCarro" type="submit" name="editar" value="Editar" style="display: none;">
							</div>
						</form>
					</div>
					<div class="col-lg-8"> <!-- Coluna Tabela -->
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<tr>
									<th>Marca</th>
									<th>Modelo</th>
									<th>Potencia</th>
									<th>Cilindrada</th>
									<th>Numero de Lugares</th>
									<th>Matricula</th>
									<th>Combustivel</th>
									<th>Data de Registo</th>
									<th>Kilometros Marcados</th>
									<th>Estado Carro</th>
									<th>Opcoes</th>
								</tr>
							<%
							
								ArrayList arCarros = (ArrayList) request.getAttribute("listaCarros");
								for(int i=0;  i < arCarros.size(); i++){
								Carro c = (Carro) arCarros.get(i);
								String estado="";
								if(c.getEstadoCarro() == true){
									estado ="Ativo";	
								}else{
									estado = "Inativo";
								}
									//out.append("<tr><td>"+c.getMarca()+"</td><td>"+c.getModelo() +"</td><td>" +c.getPrimeiroRegisto()+"</td><td>"+estado+"</td></tr>" );
									out.append("<tr>"
											 + "<td class='marca" + c.getIdCarro() + "'>" + c.getMarca()  + "</td>"
											 + "<td class='modelo" +c.getIdCarro() + "'>" + c.getModelo() + "</td>"
											 + "<td class='cv" + c.getIdCarro() + "'>" + c.getCv() + "</td>"
											 + "<td class='cc" + c.getIdCarro() + "'>" + c.getCc() + "</td>"
											 + "<td class='lugares" + c.getIdCarro() + "'>" + c.getLugares() + "</td>"
											 + "<td class='matricula" + c.getIdCarro() + "'>" + c.getMatricula() + "</td>"
											 + "<td class='combustivel" + c.getIdCarro() + "'>" + c.getCombustivel() + "</td>"
											 + "<td class='dataPReg" + c.getIdCarro() + "'>" + c.getPrimeiroRegisto()+ "</td>"
										     + "<td class='kmi" + c.getIdCarro() + "'>" + c.getKmsInicial()+ "</td>"
										     + "<td class='dataPReg" + c.getIdCarro() + "'>" + estado + "</td>"
											 + "<td>"
												 + "<form method='POST' action='HCarro'>"
												 	+ "<input name='elim' id='elim' type='hidden' value='" + c.getIdCarro() + "'>"
												 	+ "<input class='btn btn-default' type='submit' value='Apagar'>"
												 	+ "</form>"
														 	+ "<button class='btn btn-default' id='" +  c.getIdCarro()  +"' onclick='editarCarro(this)'>Editar</button>"
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
		document.getElementById("form_Carros").reset();
	</script>
	<!-- Final Template -->


</body>
</html>