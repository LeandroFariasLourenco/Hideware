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
    <title>Capítulo 2</title>
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
            <h2 class="titulo_capitulo">Expressões</h2>
            <div class="link_download">
                <a href="pdfs/Expressoes.pdf" download>Baixar como pdf</a>
            </div>
            <div class="conteudo_capitulo">
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo">Dados</b>
                    <p data-aos="fade-in" data-aos-duration="1000ms" >
                        Utilizado para se referir ao que realmente está armazenado.
                    </p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">
                        Exemplo: primeiro nome e sobrenome, logradouro, número, complemento.
                    </p>
                    <b class="subtitulo_capitulo">Informações</b>
                    <p>
                        Utilizado para se referir ao significado dos dados para um determinado usuário.
                    </p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">
                        Exemplo: nome e endereço.
                    </p>
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">INFORMAÇÕES x DADOS</b>
                    <p data-aos="fade-in" data-aos-duration="1000ms">
                        Observamos que nossa função, basicamente, é transformar informações iniciais, que usualmente
                        chamamos de dados, em informações finais, as respostas que serão usadas por quem utiliza um
                        programa de computador.
                    </p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">
                        Toda informação para ser útil deve ser: FTP (Fidedigna, Temporal e Pertinente).
                    </p>
                    <ul class="lista_capitulo" data-aos="fade-in" data-aos-duration="1000ms">
                        <li>Fidedigna: autêntico, genupino, real, verdadeiro.</li>
                        <li>Temporal: que passa com o tempo, transitório.</li>
                        <li>Pertinente: apropriado, adequado.</li>
                    </ul>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Dados de entrada</b>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Conjunto de informações que o programa precisa para o início de processamento.</p>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Dados de saída</b>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Conjunto de informações que o programa devolve como resposta após o processamento.</p>
                    <b class="subtitulo_capitulo">Exemplos</b>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Para cada algoritmo pense qual a entrada e qual a saída:</p>
                    <ul class="lista_capitulo" data-aos="fade-in" data-aos-duration="1000ms">
                        <li>Algoritmo para calcular a idade de uma pessoa.</li>
                        <li>Algoritmo que valida o login e senha de uma pessoa.</li>
                        <li>Algoritmo para calcular a somatória de uma sequência de números.</li>
                    </ul>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Tipos de dados</b>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Refere-se ao conjunto de valores que uma constante, variável ou expressão possam assumir. No
                        programa de computador devemos especificar os tipos de dados que serão utilizados como entrada e
                        saída.</p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Exemplo: a linguagem Java é uma linguagem fortemente "tipada", ou seja, caso vê tente fazer uma
                        operação ilegal (multiplicar um caractere) o compilador dirá a você.</p>
                    <b class="subtitulo_capitulo">Tipos básico de dados (Primitivos)</b>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Inteiro: Toda e qualquer formação numérica que pertença ao conjunto dos números inteiros
                        relativos (negativo, nula ou positiva).</p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Real: Toda e qualquer informação numérica que pertença ao conjuntos dos números reais (negativa,
                        nula ou positiva).</p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Caractere ou Literal: Toda e qualquer informação composta de um conjunto de caracteres
                        alfanuméricos (0 a 9), alfabéticos (A ... Z, a ... z) e especiais (exemplos: , . $ # ? ! @ ...).
                    </p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Lógico: Toda e qualquer informação que pode assumir apenas duas situações: verdadeiro ou falso,
                        sim ou não.</p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Constantes: É considerado constante um valor que não é modificado durante toda a execução de um
                        algoritmo.</p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Exemplo: Valor do número PI = 3,1415</p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Exemplo em pseudocódigo</p>
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_titulo" data-aos="fade-in" data-aos-duration="1000ms">Variáveis</b>
                    <p>São utilizadas para representar valores desconhecidos, porém necessários para a resolução de um
                        problema. Armazenam dados temporariamente.
                        Contém valores que podem ser alterados durante a execução do algoritmo.
                    </p>
                    <p>Exemplo: Idade de uma pessoa, cotação do dólar, índice de inflação.</p>
                    <b class="subtitulo_titulo" data-aos="fade-in" data-aos-duration="1000ms">Convenção para nomes das variáveis</b>
                    <p>Os nomes devem ser iniciados por um caractere alfabético (letra) ou pelo caractere (_) sublinhado
                        ou $ cifrão (dólar).</p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Os nomes podem possuir números, desde que seja utilizado após o primeiro caractere da palavra.
                    </p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Além de letras, números e (A ... Z, a ... z), cifrão ($), o caractere sublinhado (_) e os números
                        (0 a 9), não é aceito nenhum outro símbolo.</p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Para nome de variáveis devemos utilizar a primeira letra minúscula. As palavras compostas
                        internas devem iniciar com letra maiúscula.</p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Letras fora do alfabeto ocidental, como letras gregas, não são aceitas.</p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Se fará diferenciação entre as letras maiúsculas e minúsculas nos nomes de variáveis. (Exemplo: o
                        Java é "case sensitive", ou seja, faz diferenciação entre maiúsculas e minúsculas).</p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Não podem ser utilizadas palavras reservadas (palavras chaves) das linguagens.</p>
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <p data-aos="fade-in" data-aos-duration="1000ms">São utilizados para representar expressões de cálculo, comparação, condição e atribuição.</p>
                    <ul class="lista_capitulo" data-aos="fade-in" data-aos-duration="1000ms">
                        <li>Atribuição</li>
                        <li>Aritméticos</li>
                        <li>Relacionais</li>
                        <li>Lógicos</li>
                    </ul>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Operadores de atribuição (=)</b>
                    <p data-aos="fade-in" data-aos-duration="1000ms">É a operação que permite armazenar um valor em uma variável e constantes.</p>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Operadores aritméticos</b>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Soma (+), subtração (-), multiplicação (*) e divisão (/)

                        São utilizados para realizar as operações matemáticas básicas.

                    </p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Incremento: Utiliza-se uma expressão.

                        Por exemplo: a + 1

                        Adiciona 1 ao valor de a.</p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Decremento: Utiliza-se uma expressão.

                        Por exemplo: a - 1

                        Subtrai 1 do valor de a.</p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Exponenciação: Usa-se o símbolo ^.

                        Por exemplo: 2³ é 2^3</p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Módulo: Usa-se a palavra "mod".

                        Por exemplo: a mod b

                        Retorna o resto da divisão inteira de a por b.</p>
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Operadores relacionais</b>
                    <p  data-aos="fade-in" data-aos-duration="1000ms">Permitem efetuar comparações entre duas variáveis. O resultado da comparação é sempre um valor lógico (booleano) verdadeiro ou falso.</p>
                    <p  data-aos="fade-in" data-aos-duration="1000ms">
                        Igualdade          (=)
                        Menor               (<)
                        Maior                (>)
                        Menor igual      (<=)
                        Maior igual       (>=)
                        Diferente           (<>)
                    </p>
                    <p  data-aos="fade-in" data-aos-duration="1000ms">Maior (>): Se o valor de a for maior do que o valor de b, retornará verdadeiro. Senão, retornará falso.</p>
                    <p  data-aos="fade-in" data-aos-duration="1000ms">Menor (<): Se o valor de a for menor do que o valor de b, retornará verdadeiro. Senão, retornará falso.</p>
                    <p  data-aos="fade-in" data-aos-duration="1000ms">Igual a (=): Se o valor de a for igual ao valor de b, retornará verdadeiro. Senão, retornará falso.</p>
                    <p  data-aos="fade-in" data-aos-duration="1000ms">Maior ou igual (>=): Se o valor de a for maior ou igual ao valor de b, retornará verdadeiro. Senão, retornará falso.</p>
                    <p  data-aos="fade-in" data-aos-duration="1000ms">Menor ou igual (<=): Se o valor de a for menor ou igual ao valor de b, retornará verdadeiro. Senão, retornará falso.</p>
                    <p  data-aos="fade-in" data-aos-duration="1000ms">Diferente de (<>): Se o valor de a dor diferente do valor de b, retornará verdadeiro. Senão, retornará falso.</p>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Operadores lógicos</b>
                    <p  data-aos="fade-in" data-aos-duration="1000ms">São operações efetuadas com valores booleanos (true/false), resultando em valores booleanos. (E  &&) , (Ou  ||) , (Negação !)</p>
                    <p  data-aos="fade-in" data-aos-duration="1000ms">E (&&): Caso o valor de a seja igual a 5 e o valor de b seja diferente de 9, então retornará verdadeiro. Caso contrário, retornará falso.</p>
                    <p  data-aos="fade-in" data-aos-duration="1000ms">Ou (||): Caso o valor de a seja igual a 5 ou o valor de b seja diferente de 9, então retornará verdadeiro. Se ambas as comparações retornarem falso, o resultado será falso.</p>
                    <p data-aos="fade-in" data-aos-duration="1000ms">Não (!): Se o valor de a for maior do que 5, retornará falso. Caso contrário, retornará verdadeiro.</p>
                </div>
                <div class="texto_capitulo_conteudo" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Tabela Verdade</b>
                    <p>Deduz-se: Para o operador && (e) o resultado será verdadeiro apenas se as duas expressões assumirem o valor verdadeiro. <br> Para o operador || (ou) o resultado será verdadeiro se pelo menos uma das expressões assumir o resultado verdadeiro.</p>
                    <img src="imagens/expressoes1.png" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Pseudocódigo - Nomenclatura</b>
                    <img src="imagens/expressoes2.png" data-aos="fade-in" data-aos-duration="1000ms">
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Comandos de entrada e saída de dados</b>
                    <p>Objetivo: Permitir a entrada e saída de dados (interação com usuário) durante a execução de um algoritmo.</p>
                    <p>Comando para entrada de dados: Permite capturar os dados informados através do teclado do computador.</p>
                    <p>Comando para saída de dados: Permite apresentar os dados resultantes do processamento realizado pelo algoritmo.</p>
                    <b class="subtitulo_capitulo" data-aos="fade-in" data-aos-duration="1000ms">Ferramenta para treinar - VISUALG</b>
                    <img src="imagens/expressoes.png" data-aos="fade-in" data-aos-duration="1000ms">
                    <p>Agora que você já possuí uma lógica mais estruturada, podemos seguir para o próximo tópico... <a href="capitulo3.jsp">Clique aqui</a></p>
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