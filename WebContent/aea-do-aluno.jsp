<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="imagens/icon.png">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="https://cdn.rawgit.com/mattdiamond/Recorderjs/08e7abd9/dist/recorder.js"></script>
    <script src="js/assistant.js"></script>
    <script src="js/overlay.js"></script>
    <title>Área do aluno</title>
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
			} catch(Exception e){
				nome = estado;
			}
		} else {
			nome = "";
			estado = "";
		}
	%>
    <header>
    	<%@include file="header.jsp" %>
    	<form action="Login" method="get">
    	<div class="username">
    		<p><span>Bem-vindo</span> <i><%=nome%></i></p>
    	</div>
        <a class="botao" href="index.jsp" name="acao" value="deslogar">Deslogar</a>  
    	</form>
    </header>
    <div id="imgTop">
    </div>
    <section class="fundo">
        <div class="informacoes">
            <div class="nivelamento" data-aos="fade-right" data-aos-duration="1000">
                <article>
                    <h2>O que vamos aprender</h2>
                    <p>
                    	Vamos começar a compreender toda a lógica que compôe um algoritmo para assim seguirmos adiante com
                    	assuntos mais complexos, como é de se esperar, desenvolver um algoritmo requer muita lógica de programação, porém as vezes pode ser que a lógica não possa ser implementada se não existe uma linguagem de pro
                    	gramação e através do VISUALG é possível aprender todo o básico de pseudocódigos e fluxogramas antes de partir
                    	para linguagens mais complexas. Encare esse curso como um pontapé para novas oportunidades na sua carreira emer
                    	gente como estudante de programação. Vamos passar por assuntos como os conceitos, estruturas de seleção com tomada
                    	s de decisão e comparadores lógicos que podem ser encontrados no dia a dia, como por exemplo na matemática.
                    </p>
                </article>
            </div>
            <hr>
            <div class="plataforma">
                <div class="capitulos">
                    <div class="capitulo" data-aos="fade-up" data-aos-duration="1100">
                        <a href="capitulo1.jsp">
                            <img class="desktop" src="imagens/cap1.svg">
                        	<img class="mobile" src="imagens/cap1mobile.svg">
                        </a>
                    </div>

                    <div class="capitulo" data-aos="fade-up" data-aos-duration="1200">
                        <a href="capitulo2.jsp">
                            <img class="desktop" src="imagens/cap2.svg">
                        	<img class="mobile" src="imagens/cap2mobile.svg">
                        </a>
                    </div>

                    <div class="capitulo" data-aos="fade-up" data-aos-duration="1300">
                        <a href="capitulo3.jsp">
                            <img class="desktop" src="imagens/cap3.svg">
                        	<img class="mobile" src="imagens/cap3mobile.svg">
                        </a>
                    </div>
                </div>
            </div>
            <hr>
            <div class="sobre_help" data-aos="fade-up" data-aos-duration="1000">
                <article>
                    <h2>Precisa de um help?</h2>
                    <div class="botao_help">
                        <img src="imagens/bot.svg">
                    </div>
                    <p>
                    	Sempre que houver uma dúvida, basta pressionar no botão de ajuda que você
                    	irá ser redirecionado para uma caixa de texto aonde é possível interagir tanto
                    	por voz e texto com nosso assistente sempre que houver alguma dificuldade ou curio
                    	sidade sobre alguma coisa relacionada ao curso e até mesmo algumas curiosidades que você
                    	possa encontrar no meio de seu aprendizado.
                    </p>
                </article>
            </div>
            <hr>
            <div class="resultados" data-aos="fade-up" data-aos-duration="1800">
                <article>
                    <h2>Resultados esperados</h2>
                    <p>
						Neste site vamos aprender sobre algoritmos, não se preocupe se você nunca teve contato com o 
						assunto ou se tem muita dificuldade porque do inicio ao fim você terá o suporte da EMMA, uma professora
						assistente que está à sua disposição à qualquer hora para que você não tenha nenhuma duvida sobre a 
						disciplina, sempre se lembre que independente de qualquer coisa, ela vai estar presente com você durante
						todo o seu processo de aprendizado então não tenha medo :D
					</p>
                    <div class="imagem">
                        <img src="imagens/resultados.svg">
                    </div>
                </article>
            </div>
        </div>
    </section>
    <aside class="bot">
        <div class="imagem">
            <img id="help" src="imagens/botao-bot.svg">
        </div>
    </aside>
    <div class="overlay">
        <div id="sair" class="botao-sair">
            <img src="imagens/quit.svg">
        </div>
        <div class="imagem-emma">
            <img src="imagens/emma2.svg">
        </div>
        <div class="contato-bot">
            <div class="respostas">
                <div id="respostas" class="conteudo-resposta">
					<!-- TODO O DIALOGO
					DO BOT E USUARIO
					VAI ESTAR CONTIDO AQUI -->
                </div>
                <div class="respostas-inputs">
                    <textarea type="text" id="duvida" placeholder="Digite sua dúvida"></textarea>
                    <div class="enviar-duvidas">
                        <img id="enviarPergunta" src="imagens/enviar.svg">
                    </div>
                    <div class="enviar-duvidas">
                        <img id="gravar" src="imagens/mic.svg">
                    </div>
                    <div class="enviar-duvidas">
                    	<img id="pausar" src="imagens/pause.svg">
                    </div>
                    <div class="enviar-duvidas">
                        <img src="imagens/enviarvoz.svg">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <%@include file="footer.jsp" %>
    </footer>
</body>

</html>