<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Cadastro</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="imagens/icon.png">
    <script src="js/script.js"></script>
    <script src="js/cadastro.js"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
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
		<%@ include file="header.jsp" %>
        <a class="botao" href="login.jsp">Voltar</a>
    </header>
    <section class="fundo_formulario">
		<fieldset>
            <legend>
                <h2>Cadastro</h2>
            </legend>
            <div class="formulario">
                <form action="Cadastro" onsubmit="return validar()" method="post">
                    <h3>Dados Pessoais</h3>
                    <div class="aviso">
                        <span id="spanAviso"></span>
                        <br>
                        <p><%=retorno%></p>
                    </div>
                    <input type="text" placeholder="Nome completo" maxlength="40" name="nome" id="nome">
                    <input type="text" placeholder="Número de celular" 
                        id="telefone" maxlength="11" name="telefone">
                    <input type="text" placeholder="Email" id="email" maxlength="40" name="email">
                    <input type="text" placeholder="CPF"  id="cpf" maxlength="11" name="cpf">
                    <input type="password" placeholder="Senha" id="senha" maxlength="30" name="senha">
                    <input type="password" placeholder="Confirme sua senha" id="confirmarSenha" maxlength="30" name="senha2">
                    <input type="text" onkeyup="mascaraData(this)" placeholder="Digite sua data nascimento" id="dtNascimento" name="dtNascimento">
                    <div class="radios">
                        <input type="radio" value="M" name="genero" id="masculino" value=""><label
                            for="masculino">Masculino</label>
                        <input type="radio" value="F" name="genero" id="feminino"><label
                            for="feminino">Feminino</label>
                    </div>
                    <h3>Endereco</h3>
                    <input type="text" id="cep" onkeyup="pegarCep()" placeholder="CEP" id="cep" maxlength="9"
                        name="cep">
                    <input type="text" readonly id="endereco" placeholder="Rua/Avenida" maxlength="50" name="rua">
                    <input type="text" readonly id="bairro" placeholder="Bairro" maxlength="30" name="bairro">
                    <input type="text" readonly id="cidade" placeholder="Cidade" maxlength="30" name="cidade">
                    <input type="text" readonly id="estado" placeholder="Estado" maxlength="30" name="estado">
					<input type="hidden" name="acao" value="cadastrar">
                    <div class="enviar">
                        <button type="submit">Cadastrar</button>
                    </div>
                </form>
            </div>
        </fieldset>
    </section>
    <footer>
		<%@ include file="footer.jsp" %>
    </footer>
    <script>
        window.onload = evento => {
        	let formulario = document.getElementsByClassName("formulario")[0]
            window.scrollTo({
                top: formulario.offsetTop
            }) 
        }

        var date = document.getElementById('dtNascimento');
        
        function checkValue(str, max) {
          if (str.charAt(0) !== '0' || str == '00') {
            var num = parseInt(str);
            if (isNaN(num) || num <= 0 || num > max) num = 1;
            str = num > parseInt(max.toString().charAt(0)) && num.toString().length == 1 ? '0' + num : num.toString();
          };
          return str;
        };

        date.addEventListener('input', function(e) {
          this.type = 'text';
          var input = this.value;
          if (/\D\/$/.test(input)) input = input.substr(0, input.length - 3);
          var values = input.split('/').map(function(v) {
            return v.replace(/\D/g, '')
          });
          if (values[0]) values[0] = checkValue(values[0], 12);
          if (values[1]) values[1] = checkValue(values[1], 31);
          var output = values.map(function(v, i) {
            return v.length == 2 && i < 2 ? v + ' / ' : v;
          });
          this.value = output.join('').substr(0, 14);
        });

        date.addEventListener('blur', function(e) {
          this.type = 'text';
          var input = this.value;
          var values = input.split('/').map(function(v, i) {
            return v.replace(/\D/g, '')
          });
          var output = '';
          
          if (values.length == 3) {
            var year = values[2].length !== 4 ? parseInt(values[2]) + 2000 : parseInt(values[2]);
            var month = parseInt(values[0]) - 1;
            var day = parseInt(values[1]);
            var d = new Date(year, month, day);
            if (!isNaN(d)) {
              document.getElementById('result').innerText = d.toString();
              var dates = [d.getMonth() + 1, d.getDate(), d.getFullYear()];
              output = dates.map(function(v) {
                v = v.toString();
                return v.length == 1 ? '0' + v : v;
              }).join('/');
            };
          };
          this.value = output;
        });
    </script>
</body>

</html>