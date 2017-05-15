<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, controller.HCarro, model.Carro, services.SCarro"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listagem de Carros</title>
</head>
<body>

<h3>Carros</h3>

	<table>
		<tr>
			<th>Marca</th>
			<th>Modelo</th>
			<th>Data de Registo</th>
			<th>Estado Carro</th>
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
			out.append("<tr><td>"+c.getMarca()+"</td><td>"+c.getModelo() +"</td><td>" +c.getPrimeiroRegisto()+"</td><td>"+estado+"</td></tr>" );
		}
		
	%>
</table>

<div>
	<form method="post"  action="rgCarro.jsp">
		<input type="submit" value="VOLTAR">
	</form>
</div>
</body>
</html>

