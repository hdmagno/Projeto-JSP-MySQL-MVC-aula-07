<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<script src="https://code.jquery.com/jquery-
3.4.1.slim.min.js"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/boots
trap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="jumbortron">
			<h2>Saída OK Logado</h2>
		</div>
		<table class="table table-striped">
			<tr>
				<th>Id Usuário</th>
				<th>Nome</th>
				<th>Email</th>
			</tr>
			<tr>
				<th>${usuario.id}</th>
				<th>${usuario.nome}</th>
				<th>${usuario.email}</th>
			</tr>
		</table>
		<div class="bg-primary text-white">${msg}</div>
		<br> <a href="sistema.jsp">Cadastro</a>
	</div>
</body>
</html>