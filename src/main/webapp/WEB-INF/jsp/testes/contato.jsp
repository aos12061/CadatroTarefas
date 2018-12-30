<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE-edge">
	<meta http-equiv="Progma" content="no-cache">
	<meta http-equiv="Cache-Control" content="no-cache">
	<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
	
	<title>Contato Prevent Senior</title>
	
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">	

</head>
<body>
	<!-- container -->
	<div class="container-fluid">
		<div class="col-md-6 col-md-offset-3">
			<h4>Gostaria de receber o contato da nossa equipe de vendas?</h4>
		</div>
		<div class="col-md-6 col-md-offset-3">
			<h5>Preencha os dados abaixo.</h5>
		</div>
		<div class="form-group col-md-6 col-md-offset-3">
			<label class="control-label">Nome</label>
			<input class="form-control" type="text" name="nome" id="nome"/>
		</div>
		<div class="form-group col-md-6 col-md-offset-3">
			<label class="control-label">Telefone</label>
			<input class="form-control" type="text" name="telefone" id="nome"/>
		</div>
		<div class="form-group col-md-6 col-md-offset-3">
			<label class="control-label">E-mail</label>
			<input class="form-control" type="text" name="email" id="nome"/>
		</div>
		<div class="form-group col-md-6 col-md-offset-3">
			<label class="control-label">Qual é seu grau de parentesco como futuro beneficiário?</label>
			<select class="form-control">
				<option>Selecione</option>
				<option>Eu souo futuro beneficiário</option>
				<option>Pai</option>
				<option>Mãe/option>
				<option>Avó</option>
			</select>
		</div>
		<div class="form-group col-md-6 col-md-offset-3">
			<label class="control-label">Como conheceu a Prevent Senior?</label>
			<select class="form-control">
				<option>Selecione</option>
				<option>Corretores</option>
				<option>Médicos</option>
			</select>
		</div>
		<div class="form-group col-md-6 col-md-offset-3">
			<label class="control-label">Viu ou ouviu alguma propaganda?</label><br/>
			<input type="checkbox" name="chkOpt"/><label class="control-label">&nbsp;Não viu</label><br/>
			<input type="checkbox" name="chkOpt"/><label class="control-label">&nbsp;Relógio de Rua</label><br/>
			<input type="checkbox" name="chkOpt"  class="btn-toggle" data-element="#enjoi"/><label class="control-label">&nbsp;Televisão</label><br/>
			<div id="enjoi" style="display: none;">
				<ul>
					<li><input type="checkbox"/><label class="control-label">&nbsp;Rit</label></li>
					<li><input type="checkbox"/><label class="control-label">&nbsp;Record</label></li>
					<li><input type="checkbox"/><label class="control-label">&nbsp;SBT</label></li>
				</ul>
			</div>
			<input type="checkbox" name="chkOpt"/><label class="control-label">&nbsp;Cinemark</label><br/>
			<input type="checkbox" name="chkOpt"/><label class="control-label">&nbsp;Internet</label>
		</div>
		<div class="form-group col-md-6 col-md-offset-3">
			<input class="btn btn-outline-light btn-lg" type="submit" value="Enviar">
		</div>
	</div><!-- container -->
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
		<script>
			$(function(){
		        $(".btn-toggle").click(function(e){
		            e.preventDefault();
		            el = $(this).data('element');
		            $(el).toggle();
		        });
		    });
		/*
		function Mudarestado(el) {
	        var display = document.getElementById(el).style.display;
	        if(display == "none")
	            document.getElementById(el).style.display = 'block';
	        else
	            document.getElementById(el).style.display = 'none';
	    }
		*/
	</script>
	
</body>
</html>