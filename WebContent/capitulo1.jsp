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
    <script src="js/script.js"></script>
    <script src="https://cdn.rawgit.com/mattdiamond/Recorderjs/08e7abd9/dist/recorder.js"></script>
    <script src="js/overlay.js"></script>
    <script src="js/assistant.js"></script>
    <title>Capítulo 1</title>
</head>

<body>
    <header>
        <%@include file="header.jsp" %>
        <a class="botao" href="index.jsp">Deslogar</a>
        <a class="botao" href="aea-do-aluno.jsp">Voltar</a>
    </header>
    <section class="fundo">
        <div class="informacoes">
            <h2 class="titulo_usuario">Conteúdo exclusivo para <i><%=session.getAttribute("username")%></i></h2>
            <h2 class="titulo_capitulo">O que é lógica de programação?</h2>
            <div class="link_download">
                <a href="pdfs/introducao.pdf" download>Baixar como pdf</a>
                <a href="pdfs/exercicios.pdf" download>Baixar exercicios</a>
            </div>
            <div class="conteudo_capitulo">
                <div class="imagem_capitulo" data-aos="fade-in" data-aos-duration="1000ms">
                    <img src="imagens/introducao.png">
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <p>
                        É a ciência que estuda as leis e critérios de validade que regem o pensamento e a demonstração,
                        ou
                        seja, ciência dos princípios formais do pensamento.
                    </p>
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <p>
                        A palavra lógica é originária do grego logos, que significa linguagem racional. Lógica é a
                        análise
                        das formas e leis do pensamento. Não se preocupa com a produção do pensamento, mas sim com a
                        maneira
                        pela qual um pensamento ou ideia é organizado e apresentado.
                    </p>
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo">Lógica aplicada à informática</b>
                    <p>
                        A lógica é utilizada em diversas ciências, principalmente na informática, onde pode ser
                        encontrada
                        em todas as suas áreas, desde a criação do hardware até o software.
                    </p>
                </div>
                <div class="imagem_capitulo">
                    <img src="imagens/introducao2.jpg" data-aos="fade-in" data-aos-duration="1000ms">
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <p>
                        É muito importante o uso da lógica para os profissionais de TI (desenvolvedores e analistas) que
                        possuem como princípio entender a necessidade dos usuários e trazer uma solução rápida,
                        eficiente e
                        eficaz.
                    </p>
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <p>
                        Na construção de software utilizaremos raciocínio lógico, onde serão construídos algoritmos, que
                        serão transformados em programas de computador capazes de solucionar problemas complexos. É esta
                        área específica que estudaremos ao longo desse curso
                    </p>
                </div>

                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo">O que é algoritmo?</b>
                    <p>
                        Algoritmo é uma sequência de passos que visam atingir um objetivo bem definido, representa um
                        conjunto de regras para a solução de um problema.
                    </p>
                    <img src="imagens/introducao3.jpg" data-aos="fade-in" data-aos-duration="1000ms">
                </div>

                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b>Importância da construção de um algoritmo</b>
                    <p class="subtitulo_capitulo">
                        Um algoritmo tem por objetivo representar fielmente o raciocínio envolvido na lógica de
                        programação.
                        O estudo de algoritmos e lógica de programação é essencial no contexto do processo de criação de
                        um
                        software.
                    </p>
                </div>

                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <p>
                        Uma vez concebida uma solução algorítmica para um problema, esta pode ser traduzida para
                        qualquer
                        linguagem de programação.
                    </p>
                </div>

                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo">Tipos de algoritmos</b>
                    <ul class="lista_capitulo">
                        <li>Descrição narrativa</li>
                        <li>Pseudocódigo</li>
                        <li>Fluxograma</li>
                    </ul>
                    <b class="subtitulo_capitulo">Descrição narrativa</b>
                    <p>
                        Utiliza linguagem natural para especificar os passos para a realização das tarefas.
                    </p>
                    <b class="subtitulo_capitulo">Exemplo</b>
                    <p>
                        Algoritmo para calcular a área de um triângulo
                    </p>
                    <p>Início</p>
                    <ol class="lista_ordenada_capitulo">
                        <li>Pedir para o usuário digitar os valores de b e de h</li>
                        <li>Calcular a área de s usando a fórmula s = (b X h)/2</li>
                        <li>Exibir o valor de s na tela</li>
                    </ol>
                    <p>Fim</p>
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo">Pseudocódigo ou português estruturado</b>
                    <p>
                        Utiliza linguagem estruturada, assemelha-se a um programa escrito em uma linguagem de
                        computador. Este é o tipo de algoritmo que usaremos durante o nosso curso.
                    </p>
                    <b class="subtitulo_capitulo">Exemplo</b>
                    <p>Inicio</p>
                    <ol class="lista_ordenada_capitulo">
                        <li>Leia (b,h)</li>
                        <li>s ← (b * h)/2</li>
                        <li>Exiba (s)</li>
                    </ol>
                    <p>Fim</p>
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo">Fluxograma (diagrama de blocos)</b>
                    <p>
                        Forma universal de representação, pois utiliza figuras geométricas para ilustrar os passos a
                        serem seguidos para a resolução de problemas.
                    </p>
                    <b class="subtitulo_capitulo">Algoritmo para calcular a área de um triângulo </b>
                    <img class="imagem_larga" src="imagens/introducao4.png" data-aos="fade-in"
                        data-aos-duration="1000ms">
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_titulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Boas práticas
                        para construção de algoritmos - pseudocódigo</b>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Identificação do
                        algoritmo</b>
                    <p>Nome que representa o algoritmo. Normalmente é um número pequeno que seja autoexplicativo o
                        suficiente para a pessoa que for interpretar o código, saber o que esperar.</p>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Declarção de
                        variáveis</b>
                    <p>Todas as variáveis utilizadas para a solução de problemas devem ser previamente declaradas.</p>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Corpo do algoritmo</b>
                    <p data-aos="fade-in" data-aos-duration="1000ms">
                        Área reservada para a solução do problema, deverão constar nesta área: entrada de valores para
                        as
                        variáveis, operações de atribuição, lógicas e matemáticas, abertura e fechamento de arquivos,
                        laços de repetição e exibição de resultados.
                    </p>
                    <pre class="code" data-aos="fade-in" data-aos-duration="1000ms"><code>Algoritmo Exemplo_1<br><mark>identificação do algoritmo</mark>
                        Variaveis
                            nome, cargo : literal;                          
                            idade, n_pessoas, tot_pessoas : inteiro;      <mark class="highlight-red_background">declaração das variáveis</mark>
                            salario : real;
                        Inicio
                            n_pessoas &lt;- 1
                            tot_pessoas &lt;- 0
                            Enquanto (n_pessoas &lt;= 50)Faca                <mark class="highlight-red_background">corpo do algoritmo</mark>
                                Ler(nome, idade, cargo, salario);
                                    Se(idade &lt;=30) e (salario &gt;= 3000.00)Entao
                                        tot_pessoas &lt;- tot_pessoas + 1;
                            Fim-Enquanto
                            Mostrar("O total de pessoas que atendem a condição é ", tot_pessoas);
                        Fim</code></pre>
                    <b class="subtitulo_titulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Solucionando
                        problemas com algoritmos</b>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Ao se deparar com um
                        problema novo, tente entende-lo </b>
                    <ul class="lista_ordenada_capitulo" data-aos="fade-in" data-aos-duration="1000ms">
                        <li>Faça um esboço informal de como ligar os dados às condições.</li>
                        <li>É importante desenhar, rascunhar e usar de todos os artifícios para montar a "lógica" que
                            leve a solução</li>
                        <li>Essa é a primeira etapa, a análise do problema que consiste na compreensão e estratégia</li>
                    </ul>
                    <p>
                        Lembre-se que o algoritmo nada mais é que uma forma de representar a lógica que desejamos
                        aplicar. Assim, antes de construir um algoritmo, precisamos definir alguma estratégia.
                    </p>
                    <b class="subtitulo_titulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Estratégia →
                        Algoritmo → Programa</b>
                    <img src="imagens/introducao6.png" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Linguagens de
                        programção</b>
                    <p>
                        Existe diversas linguagens de programação, muitas das quais não estão mais em uso e outras que
                        estão em alta.
                        Alguns exemplos são:
                    </p>
                    <ul class="lista_ordenada_capitulo" data-aos="fade-in" data-aos-duration="1000ms">
                        <li>JAVA</li>
                        <li>PYTHON</li>
                        <li>JAVASCRIPT</li>
                        <li>C#</li>
                        <li>C++</li>
                        <li>PHP</li>
                    </ul>
                    <p>
                        Isso é tudo por enquanto, através desse capítulo você vai estar capaz de responder o que é um
                        algoritmo.
                        Se quiser se aprofundar mais...
                        <a href="capitulo2.jsp">Clique aqui</a>
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