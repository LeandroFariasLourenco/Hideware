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
    <title>Index</title>
</head>

<body>
    <header>
        <%@ include file="header.jsp" %>
        <a class="botao" href="login.jsp">Entrar</a>
    </header>
    <section class="fundo">
        <div class="informacoes">
            <div class="nivelamento" data-aos="fade-up" data-aos-duration="1000">
                <article>
                    <h2>Nivelamento</h2>
                    <p>
                        Cursos de nivelamento são necessários para introduzir novos estudos, seja em um técnico,
                        graduação ou até
                        mesmo para o mercado de trabalho onde treinamentos acontecem o tempo todo para imersão em novas
                        tecnologias e
                        recrutamento de novos colaboradores. Podemos definir que são cursos de curta duração, servindo para recordar
                        alguns conteúdos básicos diversos, podendo ser de diversos assuntos como: Matemática, Língua Portuguesa, 
                        Língua Inglesa, Informática ou de Ciências, como Física, Química ou Biologia, que os alunos deveriam ter 
                        conhecimento para ingressar no ensino superior e poder acompanhar melhor as matérias do curso que escolheu.
                    </p>
                </article>
            </div>
            <hr>
            <div class="plataforma" data-aos="fade-up" data-aos-duration="1000">
                <article>
                    <h2>O Assistente</h2>
                    <p>
                        Pensada e desenvolvida para melhor experiência do  usuário de  onde ele estiver, seja no trânsito, a caminho 
                        da escola, faculdade ou trabalho e a qualquer hora.
                        EMMA é uma professora assistente  especializada em algoritmos e sua missão é prestar suporte aos alunos,
                        auxilio aos professores, e qualidade de ensino a instituições ou centro de treinamentos, de uma forma interativa e
                        com uma solução totalmente inovadora através da API IBM Watson que foi desenvolvida por pessoas que convivem no ambi
                   		ente universitário e fascinados pela tecnologia, modernidade e principalmente o futuro.                        
                   </p>
                </article>
            </div>
            <hr>
            <div class="algoritmos" data-aos="fade-up" data-aos-duration="1000">
                <article>
                    <div class="imagem">
                        <img src="imagens/algoritmos.svg">
                    </div>
                </article>
            </div>
            <hr>
            <div class="resultados" data-aos="fade-up" data-aos-duration="1800">
                <article>
                    <h2>Resultados esperados</h2>
                    <p>Estimasse que o resultado dos estudos venha a ser mais aproveitado com a interação do bot nas
                        disciplinas, mas também que a presença de um assistente possa deixar o usuário se sentindo
                        mais a vontade para perguntar dúvidas que normalmente ele se sentiria inseguro em um ambiente
                        de aula. No geral ele pode esperar grandes impactos em seu desempenho acadêmico ao final desse
                        mini curso de nivelamento.</p>
                    <div class="imagem">
                        <img src="imagens/resultados.svg">
                    </div>
                </article>
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