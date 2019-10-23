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
    <title>Professor</title>
</head>

<body>

	<%
		String estado;
		String nome;
		if(session.getAttribute("username") != null){
			estado = (String) session.getAttribute("username");
			try{
			int indice = estado.indexOf(" ");
				nome = estado.substring(0 , indice);
			} catch (Exception e){
				nome = estado;
			}
		} else {
			nome = "";
			estado = "";
		}
	%>
    <header>
    	<%@include file="header.jsp" %>
    	<div class="username">
    		<p><span>Bem-vindo</span><i><%=nome%></i></p>
    	</div>
        <a class="botao" href="index.jsp">Voltar</a>
    </header>

    <section class="fundo_formulario">
        <fieldset>
            <legend>
                <h2>Área do professor</h2>
            </legend>
            <div class="aviso">
                <span id="spanAviso"></span>
            </div>
            <div class="formulario_login">
            	<div class="button_prof">
            		<a href="aea-do-aluno.jsp">Página de conteúdo</a>
            		<a href="Relatorio">Relatório</a>
            	</div>
            </div>
        </fieldset>
    </section>
    <footer>
    	<%@include file="footer.jsp" %>
    </footer>
    <script>
        window.onload = evento => {
            window.scrollTo({
                top : document.getElementsByClassName("formulario_login")[0].offsetTop - 100
            })
        }
    </script>
</body>

</html>