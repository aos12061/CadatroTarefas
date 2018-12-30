<!DOCTYPE HTML>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE-edge">
	<meta http-equiv="Progma" content="no-cache">
	<meta http-equiv="Cache-Control" content="no-cache">
	<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
	
	<title>Task Manager | Home</title>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">	
	
	<!-- [if lt IE 9]>
		<script src="static/js/html5shiv.min.js"></script>
		<script src="static/js/respond.min.js"></script>
	 <![endif]-->

<script>
$(document).ready(function (){

	$("#btSave").click(function () {		
		
		name = $("#name").val();
		description = $("#description").val();
		
		if ($("#name").val() == '') {
			window.alert('Favor preencher o campo Nome');
			$("#name").focus();
			return;
		}

		if ($("#description").val() == '') {
			window.alert('Favor preencher o campo Descrição');
			$("#description").focus();
			return;
		}
		
		$("#form-horizontal").submit();

	});
	
});

function funcDeleta(id) {

	if (window.confirm("Tem certeza que deseja excluir?")) {		
		window.location.href="delete-task?id="+id;
		window.alert("Excluído com Sucesso");	
	}
	
}

</script>

</head>
<body>

	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Home</a>
			<!-- div class="nav-collapse collapse"-->			
				<ul class="nav navbar-nav">
					<li><a href="new-task">Nova tarefa</a></li>
					<li><a href="all-tasks">Todas tarefas</a></li>
				</ul>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${ mode == 'MODE_HOME' }">
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h3>Bem Vindo ao Gerenciador de Tarefas</h3>
				</div>		
			</div>
		</c:when>
		<c:when test="${ mode == 'MODE_TASKS' }">
			<div class="container text-center" id="taskDiv">
				<h3>Todas Tarefas</h3>
				<hr/>	
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tbody>
								<tr>
									<th>Id</th>
									<th>Nome</th>
									<th>Descrição</th>
									<th>Data de Criação</th>
									<th>Finalizado</th>
									<th></th>
									<th></th>
								</tr>
							</tbody>
						</thead>
						<tbody>
							<c:forEach var="task" items="${tasks}">
								<tr>
									<td>${task.id}</td>
									<td>${task.name}</td>
									<td>${task.description}</td>
									<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${task.dateCreated}"/></td>
									<c:if test="${task.finished == true}">
										<td class="text-center"><span class="glyphicon glyphicon-ok"></td>
									</c:if>
									<c:if test="${task.finished == false}">
										<td class="text-center"><span class="glyphicon glyphicon-remove"></td>
									</c:if>
									<td><div class="text-center"><a href="update-task?id=${task.id}"><span class="glyphicon glyphicon-pencil"></span></a></div></td>
									<!--td><div class="text-center"><a href="delete-task?id=${task.id}"><span class="glyphicon glyphicon-trash"></span></a></div></td-->
									<td><div class="text-center"><a href="javascript:funcDeleta(${task.id})"><span class="glyphicon glyphicon-trash"></span></a></div></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		<c:when test="${ mode == 'MODE_NEW' || mode == 'MODE_UPDATE' }">
			<div class="container text-center">
				<h3>Nova Tarefa</h3>
				<hr/>
				<form class="form-horizontal" id="form-horizontal" method="POST" action="save-task">
					<input type="hidden" name="id" value="${task.id}"/>
					<div class="form-group">
						<label class="control-label col-md-3">Nome</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name" id="name" value="${task.name}"/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Descrição</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="description" id="description" value="${task.description}"/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Finalizado</label>
						<div class="col-md-7">
							<c:if test="${task.finished == true}">
								<input type="radio" class="col-sm-1" name="finished" value="true" checked/>
								<div class="col-md-1">Yes</div>
								<input type="radio" class="col-sm-1" name="finished" value="false" />
								<div class="col-md-1">No</div>
							</c:if>
							<c:if test="${task.finished == false || task.finished == null}">
								<input type="radio" class="col-sm-1" name="finished" value="true" />
								<div class="col-md-1">Yes</div>
								<input type="radio" class="col-sm-1" name="finished" value="false" checked/>
								<div class="col-md-1">No</div>
							</c:if>
						</div>
					</div>
					<div class="pull-right">
						<!--input type="submit" class="btn btn-primary" value="Save"/-->
						<input type="button" id="btSave" class="btn btn-primary" value="Save"/>
					</div>
				</form>
			</div>
			
		</c:when>
	</c:choose>
	
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>