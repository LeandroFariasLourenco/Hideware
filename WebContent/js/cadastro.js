function scrollDivDown(elemento) {
	window.scrollTo({
		top : elemento.offsetTop - 50
	})
}

function validar() {
	/* VARIAVEIS COM O VALOR DOS INPUTS */
	let nome = document.querySelector('#nome').value
	let telefone = document.querySelector('#telefone').value
	let email = document.querySelector('#email').value
	let cpf = document.querySelector('#cpf').value
	let senha = document.querySelector("#senha").value
	let confirmarSenha = document.querySelector("#confirmarSenha").value
	let masculino = document.querySelector("#masculino").checked
	let feminino = document.querySelector("#feminino").checked
	let cep = document.querySelector("#cep").value
	let nascimento = document.querySelector("#dtNascimento").value;

	/* VARIAVEIS COM O AVISO */
	let aviso = document.querySelector('.aviso')
	let span = document.querySelector('#spanAviso')

	/* VARIAVEIS COM OS INPUTS */
	let inputNome = document.querySelector('#nome')
	let inputTelefone = document.querySelector('#telefone')
	let inputEmail = document.querySelector('#email')
	let inputCpf = document.querySelector('#cpf')
	let inputSenha = document.querySelector('#senha')
	let inputConfirmarSenha = document.querySelector('#confirmarSenha')
	let inputCep = document.querySelector("#cep")
	let inputRua = document.querySelector("#endereco")
	let inputCidade = document.querySelector("#cidade")
	let inputUf = document.querySelector("#uf")
	let inputNascimento = document.querySelector("#dtNascimento");
	
	/* VARIAVEIS PARA MANIPULAÇÃO DAS BORDAS */
	let estiloBordaInvalida = "1px solid red"
	let estiloBordaValida = "1px solid black"

	// VALIDAÇÕES COM NOME
	if (nome === "" | nome === null) {
		span.innerHTML = "O campo nome está vázio!"
		inputNome.style.border = estiloBordaInvalida
		aviso.style.opacity = "1"
		scrollDivDown(span)
		return false
	} else {
		inputNome.style.border = estiloBordaValida
	}
	if (nome.indexOf(" ") === -1) {
		span.innerHTML = "Digite seu nome completo!"
		inputNome.style.border = estiloBordaInvalida
		aviso.style.opacity = "1"
		scrollDivDown(span)
		return false
	} else {
		inputNome.style.border = estiloBordaValida
	}

	// VALIDAÇÕES COM TELEFONE
	if (telefone.length < 11) {
		span.innerHTML = "O campo de telefone está inválido!"
			inputTelefone.style.border = estiloBordaInvalida
			aviso.style.opacity = "1"
			scrollDivDown(span)
			return false;
		if (telefone.indexOf("9") === -1) {
			span.innerHTML = "O campo de telefone está inválido!"
			inputTelefone.style.border = estiloBordaInvalida
			aviso.style.opacity = "1"
			scrollDivDown(span)
			return false
		} else {
			inputTelefone.style.border = estiloBordaValida
		}
	} else {
		inputTelefone.style.border = estiloBordaValida
	}

	// VALIDAÇÕES COM EMAIL
	if (email === "" | email === null) {
		span.innerHTML = "O campo email está vázio"
		inputEmail.style.border = estiloBordaInvalida
		aviso.style.opacity = "1"
		scrollDivDown(span)
		return false
	} else {
		inputEmail.style.border = estiloBordaValida
	}
	if (email.indexOf("@") === -1 || email.indexOf(".com") === -1) {
		span.innerHTML = "O campo email está inválido"
		inputEmail.style.border = estiloBordaInvalida
		aviso.style.opacity = "1"
		scrollDivDown(span)
		return false
	} else {
		inputEmail.style.border = estiloBordaValida
	}

	// VALIDAÇÕES COM CPF
	if (cpf.length != 11) {
		let filtroCpf = /^\d.\d.\d-\d$/i;
		if (!filtroCpf.test(cpf)) {
			span.innerHTML = "O campo cpf está inválido"
			inputCpf.style.border = estiloBordaInvalida
			aviso.style.opacity = "1"
			scrollDivDown(span)
			return false
		}
	} else {
		inputCpf.style.border = estiloBordaValida
	}

	// VALIDAÇÕES COM SENHA
	if (senha === "" | senha == null | confirmarSenha === ""
			| confirmarSenha === null) {
		span.innerHTML = "Digite sua senha!"
		inputSenha.style.border = estiloBordaInvalida
		inputConfirmarSenha.style.border = estiloBordaInvalida
		aviso.style.opacity = "1"
		scrollDivDown(span)
		return false
	} else {
		inputSenha.style.border = estiloBordaInvalida
		inputConfirmarSenha.style.border = estiloBordaValida
	}
	if (senha != confirmarSenha) {
		span.innerHTML = "As senhas não conferem!"
		inputSenha.style.border = estiloBordaInvalida
		inputConfirmarSenha.style.border = estiloBordaInvalida
		aviso.style.opacity = "1"
		scrollDivDown(span)
		return false
	} else {
		inputSenha.style.border = estiloBordaValida
		inputConfirmarSenha.style.border = estiloBordaValida
	}

	// VALIDAÇÕES COM RADIO
	if (masculino === false && feminino === false) {
		span.innerHTML = "Selecione uma opção de gênero!"
		aviso.style.opacity = "1"
		scrollDivDown(span);
		return false
	}

	// VALIDAÇÕES COM CEP
	if (cep === null || cep === "") {
		span.innerHTML = "O campo de CEP está vázio!"
		aviso.style.opacity = "1"
		inputCep.style.border = estiloBordaInvalida
		scrollDivDown(span);
		return false
	} else {
		inputCep.style.border = estiloBordaValida
	}
	
	if(nascimento === "" || nascimento === ""){
		span.innerHTML = "Digite a data de nascimento"
			aviso.style.opacity = "1"
			inputCep.style.border = estiloBordaInvalida
			scrollDivDown(span);
			return false
	} else {
		inputNascimento.style.border = estiloBordaValida
	}
	
	let p = document.getElementById("spanBanco");
		if(p.innerHTML === "Cadastrado com sucesso"){
			ativarOverlay();
		}
		
	return true;
}

function ativarOverlay() {
	document.getElementById("notificacao").style.display = "flex";
}

function pegarCep() {
	var endereco = document.getElementById("endereco");
	var cidade = document.getElementById("cidade");
	var estado = document.getElementById("estado");
	var cep = document.getElementById("cep");
	var bairro = document.getElementById("bairro");

	if (cep.value.length == 8) {
		var xhr = new XMLHttpRequest();
		xhr.open("GET", "https://viacep.com.br/ws/" + cep.value + "/json/", true);
		xhr.setRequestHeader("Accept", "application/json");
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				xhr.responseText
				let json = JSON.parse(xhr.responseText)
				endereco.value = json.logradouro;
				cidade.value = json.localidade;
				estado.value = json.uf;
				bairro.value = json.bairro;
			}
		}
		xhr.send(null);
	}
}