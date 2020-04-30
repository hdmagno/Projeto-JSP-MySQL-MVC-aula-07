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
		<div class="jumbotron">
			<h2>Formulário de Cadastro</h2>
		</div>
		<form method="post" class="form-horizintal"
			action="ControllerUsuarioCadastro">
			<div class="form-group">
				<label for="id">IdUsuario</label> <input type="number" name="id"
					id="id" size="50" required class="form-control" />
			</div>
			<div class="form-group">
				<label for="nome">Nome</label> <input type="text" name="nome"
					id="nome" size="50" required class="form-control" />
			</div>
			<div class="form-group">
				<label for="email">Email</label> <input type="email" name="email"
					id="email" size="50" required class="form-control" />
			</div>
			<div class="form-group">
				<label for=senha>Senha</label> <input type="password" name="senha"
					id="senha" size="50" required class="form-control" />
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-danger">Enviar os
					Dados</button>
			</div>
		</form>
		<div class="alert alert-success">Saída: ${msg}</div>
		<br>
		<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
			<ul class="navbar-nav">
				<li class="nat-item"><a class="nav-link" href="sistema.jsp">Cadastrar</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="logar.jsp">Logar</a>
				</li>
			</ul>
		</nav>
		<br>
	</div>
</body>
</html>