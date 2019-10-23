<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
    <header>
    	<%@include file="header.jsp" %>
        <a class="botao" href="index.jsp">Deslogar</a>
        <a class="botao" href="aea-professor.jsp">Voltar</a>
    </header>
    <section class="fundo_formulario">
        		<h1>${resposta.nome}</h1>
        	
        <table class="tabela_relatorio">
        	<tr>
        
        		<td>Aluno</td>
        		<td>Disciplina</td>
        		<td>Email</td>
        		<td>Contato</td>
        		<td>Opções</td>
        	</tr>
        	<c:forEach items="${dados}" var="resposta">
        		<tr>
        			<span id="cdUsuario">${resposta.getCodigo()}</span>
        			<td>${resposta.getNome()}</td>
        			<td>${resposta.getDisciplina()}</td>
        			<td>${resposta.getEmail()}</td>
        			<td>${resposta.getNumeroCelular()}</td>
        			<td>
        			<form action="Relatorio" >
        				<input type="hidden" name="email" value="${resposta.getEmail()}">
        				<input type="hidden" name="codigo" value="${resposta.getCodigo()}">
        				<input type="hidden" name="acao" value="remover">
        				<button class="btnUsuario">Remover</button>
        			</form>
        		</tr>
        	</c:forEach>
        </table>
    </section>
    <footer>
    	<%@include file="footer.jsp" %>
    </footer>
</body>

</html>