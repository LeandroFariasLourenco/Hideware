<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="js/script.js"></script>
<script src="js/login.js"></script>
<link rel="icon" href="imagens/icon.png">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<title>Login</title>
</head>

<body>
	<%
		String msg;
		String cadastro;
		if (request.getAttribute("msg") != null) {
			msg = (String) request.getAttribute("msg");
			cadastro = "";
		} 
		else {
			msg = "";
		}
		if (request.getAttribute("retorno") != null) {
			msg = "";
			cadastro = (String) request.getAttribute("retorno");
		}
		else {
			cadastro = "";
		}
	%>
	<header>
		<%@include file="header.jsp"%>
		<a class="botao" href="index.jsp">Voltar</a>
	</header>
	<section class="fundo_formulario">
		<fieldset>
			<legend>
				<h2>LOGIN</h2>
			</legend>
			<span id="respostalogin"></span>
			<div class="formulario_login">
				<form action="Login" method="post" class="login">
					<div class="dados_pessoais">
						<h3>Área do aluno</h3>
						<div class="aviso">
							<span><%=msg%></span>
							<span id="cadastroSucesso"><%=cadastro%></span>
						</div>
						<input type="text" placeholder="Email" maxlength="40" id="email"
							name="email"> <input type="password" placeholder="Senha"
							id="senha" maxlength="30" name="senha"> <input
							type="hidden" value="logar" name="acao">
					</div>
					<div class="enviar">
						<button type="submit">Login</button>
					</div>
					<div class="opcoes">
						<a href="cadastro.jsp">Não possuo cadastro</a> <a
							href="recupea-senha.jsp">Esqueci a minha senha</a>
					</div>
				</form>
			</div>
		</fieldset>
	</section>
	<footer>
		<%@include file="footer.jsp"%>
	</footer>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script>
        window.onload = evento => {
            let formulario = document.getElementsByClassName("formulario_login")[0];
            window.scrollTo({
                top : formulario.offsetTop - 100
            })
        }
    </script>
</body>

</html>