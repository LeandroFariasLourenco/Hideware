<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="imagens/icon.png">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="https://cdn.rawgit.com/mattdiamond/Recorderjs/08e7abd9/dist/recorder.js"></script>
    <script src="js/script.js"></script>
    <script src="js/overlay.js"></script>
    <script src="js/assistant.js"></script>
    <title>Capítulo 3</title>
</head>

<body>
    <header>
        <%@include file="header.jsp" %>
        <a class="botao" href="index.jsp">Deslogar</a>
        <a class="botao" href="aea-do-aluno.jsp">Voltar</a>
    </header>
    <section class="fundo">
        <div class="informacoes">
            <h2 class="titulo_usuario">Conteúdo exclusivo para <i><%=session.getAttribute("username") %></i></h2>
            <h2 class="titulo_capitulo">Estrutura de Seleção</h2>
            <div class="link_download">
                <a href="pdfs/EstruturaSelecao.pdf" download>Baixar como pdf</a>
            </div>
            <div class="conteudo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_titulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Estruturas de
                        Seleção</b>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Introdução</b>
                    <p data-aos="fade-in" data-aos-duration="1000ms">
                        Estruturas de seleção ou decisão são utilizadas quando existe a necessidade de verificar
                        condições para a realização de uma instrução ou de uma sequência de instruções.

                        Permite a escolha de um grupo de ações (blocos) a ser executado quando determinadas condições,
                        representadas por expressões lógicas ou relacionais são ou não satisfeitas.
                    </p>
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Exemplo</b>
                    <p>
                        Imagine que uma pessoa esteja jogando através do computador.
                        Para que o jogador passe de uma fase para outra, é necessário atingir uma determinada pontuação,
                        ou seja, existe uma condição para a realização de uma sequência de instruções para liberar o
                        acesso para a próxima fase do jogo.
                    </p>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">As estruturas de seleção
                        podem ter</b>
                    <ul class="lista_capitulo" data-aos="fade-in" data-aos-duration="1000ms">
                        <li>Simples</li>
                        <li>Composta</li>
                        <li>Encadeada</li>
                        <li>Múltipla escolha</li>
                    </ul>
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Estrutura de seleção
                        simples (Se - Então)</b>
                    <p>
                        São utilizadas para verificar se dada condição é atendida: se for, um conjunto de instruções
                        deverá ser executado; se não for, o fluxo da execução do algoritmo seguirá após o fim do bloco
                        de decisão.
                        Quando precisamos testar uma certa condição antes de executas uma ação, usamos uma seleção
                        simples.
                    </p>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Fluxograma</b>
                    <img class="imagem_larga" src="imagens/selecao.png" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Pseudocódigo</b>
                    <img src="imagens/selecao2.png" data-aos="fade-in" data-aos-duration="1000ms">
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Estrutura de seleção
                        composta (Se - Então - Senão)</b>
                    <p>
                        Quando tivermos situações em que duas alternativas dependem de uma mesma condição, uma de a
                        condição ser verdadeira e outra de a condição ser falsa, usamos a estrutura de seleção composta.

                        Prevê dois conjuntos de instruções para serem realizados de acordo com a avaliação da condição:
                        um conjunto de instruções que será realizado quando a condição for verdadeiro e um conjunto de
                        instruções para o resultado falso.
                    </p>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Fluxograma</b>
                    <img src="imagens/selecao3.png" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Pseudocódigo</b>
                    <img src="imagens/selecao4.png" data-aos="fade-in" data-aos-duration="1000ms">
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Estrutura de seleção
                        encadeada</b>
                    <p data-aos="fade-in" data-aos-duration="1000ms">
                        Quando devido a necessidade de processamento, agrupamos várias seleções.
                        É uma sequência de testes de seleção, os quais serão executados ou não de acordo com o resultado
                        das condições e com o encadeamento dos testes.

                        Isto é, um teste de seleção pode ter dois conjuntos de instruções, uma para o resultado
                        verdadeiro e outro para o falso, porém esses conjuntos de instruções podem conter outros testes
                        de seleção, que, por sua vez, também podem conter outros, e assim por diante.
                    </p>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Fluxograma</b>
                    <img src="imagens/selecao5.png" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Pseudocódigo</b>
                    <img src="imagens/selecao6.png" data-aos="fade-in" data-aos-duration="1000ms">
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Estrutura de seleção
                        múltipla escolha</b>
                    <p data-aos="fade-in" data-aos-duration="1000ms">
                        Quando um conjunto de valores precisa ser testado e ações diferentes são associadas a esses
                        valores, estamos diante de uma seleção de múltipla escolha.
                        É uma estrutura de seleção que funciona como um conjunto de opções para escolha, é também
                        chamada de estrutura de seleção homogênea.
                        Podemos representar utilizando encadeamento de instruções ou a instrução escolha caso.
                    </p>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Fluxograma</b>
                    <img src="imagens/selecao7.png" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Pseudocódigo (com
                        encadeamento)</b>
                    <img src="imagens/selecao8.png" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Pseudocódigo (com
                        múltipla escolha)</b>
                    <img src="imagens/selecao9.png" data-aos="fade-in" data-aos-duration="1000ms">
                    <p data-aos="fade-in" data-aos-duration="1000ms">
                        Este é o capítulo final por enquanto. Esperamos que tenha aproveitado o conteúdo e
                        aprendido bastante sobre os básicos de lógica de programação.
                    </p>
                </div>
            </div>
        </div>
        
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
    </section>
    <footer>
        <%@include file="footer.jsp" %>
    </footer>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>