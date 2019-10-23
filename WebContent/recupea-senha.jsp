<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="imagens/icon.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="js/script.js"></script>
    <script src="js/cadastro.js"></script>
    <title>Recuperar senha</title>
</head>

<body>
	<%
		String retorno;
		if(request.getAttribute("retorno") != null){
			retorno = (String) request.getAttribute("retorno");
		} else {
			retorno = "";
		}
	%>
    <header>
    	<%@include file="header.jsp" %>
        <a class="botao" href="index.jsp">Voltar</a>
    </header>

    <section class="fundo_formulario">
        <fieldset>
            <legend>
                <h2>Recuperar senha</h2>
            </legend>
            <div class="formulario_login">
                <form class="login" onsubmit="return validar()" action="RecuperarSenha" method="POST">
                    <div class="dados_pessoais">
                        <h3>Área do aluno</h3>
    					<div class="aviso">
        					<span id="spanAviso"><%=retorno%></span>
    					</div>
                        <input type="text" placeholder="Email" maxlength="40" name="email" id="email">
                        <input type="text" maxlength="14" placeholder="Cpf" name="cpf" id="cpf" maxlength="30">
                        <input type="password" placeholder="Nova senha" name="senha" id="senha" maxlength="30">
                        <input type="password" placeholder="Confirme a senha" name="senha2" id="confirmarSenha" maxlength="30">
                    </div>
                    <div class="enviar">
                        <button type="submit">Solicitar recuperação de acesso</button>
                    </div>
                    <div class="opcoes">
                        <a href="login.jsp">Voltar a tela de login</a>
                        <a href="cadastro.jsp">Criar uma conta</a>
                    </div>
                </form>
            </div>
        </fieldset>
    </section>
    <footer>
    	<%@include file="footer.jsp" %>
    </footer>
    <script>
        window.onload = evento => {
            let formulario = document.getElementsByClassName("formulario_login")[0]
            window.scrollTo({
                top : formulario.offsetTop - 100
            })
        }
        
        function validar(){
        	senha = document.querySelector("#senha");
        	senha2 = document.querySelector("#confimarSenha");
        	if(senha.value != senha2.value){
        		document.querySelector("#spanAviso").innerHTML = "As senhas não conferem";
        		return false;
        	}
        	return false;
        }
    </script>
</body>
</html>