<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./estilos/estilo1.css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js"></script> 
		<script type="text/javascript">
			$(document).ready(function(){
				$("a[rel=modal]").click( function(ev){
					ev.preventDefault();

					//alterado
					var id = '.window';

					var alturaTela = $(document).height();
					var larguraTela = $(window).width();
	
					//colocando o fundo preto
					$('#mascara').css({'width':larguraTela,'height':alturaTela});
					$('#mascara').fadeIn(1000);	
					$('#mascara').fadeTo("slow",0.8);

					var left = ($(window).width() /2) - ( $(id).width() / 2 );
					var top = ($(window).height() / 2) - ( $(id).height() / 2 );
					
					$(id).css({'top':top,'left':left});
					
					//inserido 
					href = $(this).attr("href");
					$('.window').load(href);

					
					$(id).show();	
 				});

 				$("#mascara").click( function(){
 					$(this).hide();
 					$(".window").hide();
 				});

 				$('.fechar').click(function(ev){
 					ev.preventDefault();
 					$("#mascara").hide();
 					$(".window").hide();
 				});
			});
</script>
<title>SOLIDARIO</title>

</head>
<body>
	<div class="imghome">
		<a href="login.jsp" target="_blank" rel="modal" text-decoration="none"><img id="imgh"  style="width:250px;height:250px;border:0;" src="./img/proposta.png"/></a>
	</div>
	<div class="window" id="janela1">
	</div>
	<!-- mascara para cobrir o site -->	
	<div id="mascara">
	</div>
</body>
</html>