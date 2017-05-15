function checkNumTlm(field){ //Verificar se o campo de telemovel é numérico
	if(isNaN(field.value)){
		$('#contacto-numerico').css("display","block");
		$('#btnSub').attr("disabled","true");
	}else{
		$('#contacto-numerico').css("display","none");
		$('#btnSub').removeAttr("disabled");
	}
}

function checkNumNif(field){ //Verificar se o campo de nif é numérico
	if(isNaN(field.value)){
		$('#nif-numerico').css("display","block");
		$('#btnSub').attr("disabled","true");
	}else{
		$('#nif-numerico').css("display","none");
		$('#btnSub').removeAttr("disabled");
	}
}

function checkNumNiss(field){ //Verificar se o campo de niss é numérico
	if(isNaN(field.value)){
		$('#niss-numerico').css("display","block");
		$('#btnSub').attr("disabled","true");
	}else{
		$('#niss-numerico').css("display","none");
		$('#btnSub').removeAttr("disabled");
	}
}

function checkPass(field, field2){ //Verificar se o 2º campo da password é igual ao primeiro
	if(field.value != field2.value){
		$('#password-incorreta').css("display","block");
		$('#btnSub').attr("disabled","true");

	}else{
		$('#password-incorreta').css("display","none");
		$('#btnSub').removeAttr("disabled");
	}
}


function checkPotencia(field){ //Verificar se o campo da Potencia é numérico
	if(isNaN(field.value)){
		$('#potencia').css("display","block");
		$('#btnSub').attr("disabled","true");
	}else{
		$('#potencia').css("display","none");
		$('#btnSub').removeAttr("disabled");
	}
}

function checkCilindrada(field){ //Verificar se o campo da Cilindrada é numérico
	if(isNaN(field.value)){
		$('#cilindrada').css("display","block");
		$('#btnSub').attr("disabled","true");
	}else{
		$('#cilindrada').css("display","none");
		$('#btnSub').removeAttr("disabled");
	}
}

function checkLugares(field){ //Verificar se o campo da Cilindrada é numérico
	if(isNaN(field.value)){
		$('#lg').css("display","block");
		$('#btnSub').attr("disabled","true");
	}else{
		$('#lg').css("display","none");
		$('#btnSub').removeAttr("disabled");
	}
}

function checkKms(field){
	if(isNaN(field.value)){
		$('#kms').css("display","block");
		$('#btnSub').attr("disabled","true");
	}else{
		$('#kms').css("display","none");
		$('#btnSub').removeAttr("disabled");
	}
}

function editarFunc(field) { //Mandar dados da tabela para o formulário
	
	$("#password").attr("disabled","true");
	$("#password2").attr("disabled","true");
	$("#idF").attr("value",$(field).attr('id'));
	$("#tipo").attr("value","2");
	$("#btnSubFunc").css("display","none");
	$("#btnEditFunc").css("display","block");
	$("#nome").attr("value",$("td.nome"+$(field).attr('id')).html());
	$("#morada").attr("value",$("td.morada"+$(field).attr('id')).html());
	$("#codigoPostal").attr("value",$("td.codigo"+$(field).attr('id')).html());
	$("#nif").attr("value",$("td.nif"+$(field).attr('id')).html());
	$("#niss").attr("value",$("td.niss"+$(field).attr('id')).html());
	$("#contacto").attr("value",$("td.tlm"+$(field).attr('id')).html());
	$("#email").attr("value",$("td.mail"+$(field).attr('id')).html());
}


function editarCarro(field){
	alert(field);
	$("#idC").attr("value",$(field).attr('id'));
	$("#tipo").attr("value","2");
	$("#btnSubCarro").css("display","none");
	$("#btnEditCarro").css("display","block");
	$("#marca").attr("value",$("td.marca"+$(field).attr('id')).html());
	$("#modelo").attr("value",$("td.modelo"+$(field).attr('id')).html());
	$("#cv").attr("value",$("td.cv"+$(field).attr('id')).html());
	$("#cc").attr("value",$("td.cc"+$(field).attr('id')).html());
	$("#lugares").attr("value",$("td.lugares"+$(field).attr('id')).html());
	$("#matricula").attr("value",$("td.matricula"+$(field).attr('id')).html());
	$("#combustivel").attr("value",$("td.combustivel"+$(field).attr('id')).html());
	$("#dataPReg").attr("value",$("td.dataPReg"+$(field).attr('id')).html());
	$("#kmi").attr("value",$("td.kmi"+$(field).attr('id')).html());
	$("#estado").attr("value",$("td.estado"+$(field).attr('id')).html());
}
