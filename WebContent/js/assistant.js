//webkitURL é legado 
URL = window.URL || window.webkitURL;
// stream é criado a partir getUserMedia()
var gumStream;
// Objeto do Record.js
var rec;
// MediaStreamAudioSourceNode
var input;
// criar novo AudioContext
var AudioContext = window.AudioContext || window.webkitAudioContext; // Classe
var audioContext; // objeto
// selecionar os botoes

window.onload = function() {
	AOS.init();
	callBot("inicializacao")
	var botoes = document.getElementsByClassName("enviar-duvidas");
	var duvida = document.getElementById("duvida");
	
	botoes[0].addEventListener('click' , (evento) => {
		var question = document.getElementById("duvida");
		if(question.value != "" && question.value != " " && question.value != null){
			createMessage(question.value, "pergunta-usuario");
			callBot(question.value);
			question.value = "";
		} else {
			createMessage("Opa, tente digitar algo..." , "resposta-bot")
		}
	});

	botoes[2].style.display = "none";
	botoes[1].addEventListener("click", function() {
		constraints = {
				audio : true,
				video : false
		}
		
		
		botoes[1].disabled = true;	
		botoes[1].style.display = "none";
		botoes[2].style.display = "flex";

		botoes[2].classList.add("gravando");

		duvida.style.transition = "200ms"
		botoes[0].style.transition = "200ms"
		botoes[3].style.transition = "200ms"
		
		duvida.style.opacity = ".3";
		botoes[0].style.opacity = ".3";
		botoes[3].style.opacity = ".3";

		chamarRecorder();
	});
	

	botoes[2].addEventListener("click", function() {
		botoes[1].disabled = false;
		botoes[2].disabled = true;
		botoes[1].style.display = "flex";
		botoes[2].style.display = "none";

		duvida.style.transition = "200ms"
		botoes[0].style.transition = "200ms"
		botoes[3].style.transition = "200ms"
		
		duvida.style.opacity = "initial";
		botoes[0].style.opacity = "initial";
		botoes[3].style.opacity = "initial";
		fecharRecorder();
	});

	
	botoes[3].addEventListener("click", function(){
		if(duvida.value != null && duvida.value != "" && duvida.value != " "){
			sendMessageToVoice(duvida.value , "audio-usuario");
			callBotVoz(duvida.value , "audio-bot");
			duvida.value = "";
		} else {
			createMessage("Opa, tente digitar algo..." , "resposta-bot");
		}
	})
	

}

function chamarRecorder(){
		navigator.mediaDevices.getUserMedia(constraints).then(function(stream) {
		audioContext = new AudioContext;
		gumStream = stream;
		input = audioContext.createMediaStreamSource(stream);
		rec = new Recorder(input, {
		numChannels : 1
		});
		rec.record();
	}).catch(function(err){
		console.log(err);
	});
}

function fecharRecorder(){
	rec.stop;
	gumStream.getAudioTracks()[0].stop();
	rec.exportWAV(generateBlob);
}

function scrollDivDown(msg) {
	let div = document.getElementsByClassName("conteudo-resposta")[0]
	msg.scrollIntoView({
		behavior : 'smooth',
		block : 'start'
	})
}

function createMessage(message, type) {
	var chat = document.querySelector(".conteudo-resposta");
	var p = createP(message, type);
	chat.appendChild(p);
	scrollDivDown(p);
}

function createP(text, type) {
	var p = document.createElement("p");
	p.classList.add(type);
	p.textContent = text;
	return p;
}

function generateBlob(blob) {
	createAudioElement(blob , "audio-usuario");
	sendBlobToText(blob);
}

function createAudioElement(blob , type) {
	var url = URL.createObjectURL(blob);
	var audio = document.createElement("audio");
	
	audio.controls = true;
	audio.src = url;
	
	var chat = document.querySelector(".conteudo-resposta");
	audio.classList.add(type);
	chat.appendChild(audio);
	scrollDivDown(audio);
}

function callBotVoz(msg ,type){
	var xhr = new XMLHttpRequest();
	xhr.open("POST", "v1", true);
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
	xhr.addEventListener("load", function() {
		if(xhr.status == 200) {
			// Codigo de sucesso
			var respostas = JSON.parse(xhr.responseText);
			respostas.forEach(function(resposta) {
				sendMessageToVoice(resposta , type)
			});
		}else{
			// Codigo de deu ruim!
			console.log(xhr.status);
			console.log(xhr.responseText);
		}
	});
	var data = "question=" + msg;
	xhr.send(data);	
}

function callBot(msg) {
	var xhr = new XMLHttpRequest();
	xhr.open("POST", "v1", true);
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
	xhr.addEventListener("load", function() {
		if(xhr.status == 200) {
			// Codigo de sucesso
			var respostas = JSON.parse(xhr.responseText);
			respostas.forEach(function(resposta) {
				createMessage(resposta, "resposta-bot");
			});
		}else{
			// Codigo de deu ruim!
			console.log(xhr.status);
			console.log(xhr.responseText);
		}
	});
	var data = "question=" + msg;
	xhr.send(data);
}

function sendBlobToText(blob) {
	var xhr = new XMLHttpRequest();
	xhr.open("POST", "stt", true);
	xhr.setRequestHeader("Content-type", "audio/wav");
	xhr.addEventListener("load", function() {
		if(xhr.status == 200) {
			// Deu bom
			var resposta = JSON.parse(xhr.responseText);
			if(resposta.length === 0){
			 	createMessage("Opa, não entendi o que você quis dizer..." , "resposta-bot")
			} else {
				resposta[0].alternatives.forEach(function(transcript) {
					callBotVoz(transcript.transcript , "audio-bot");
				});
			}
		} else {
			// Deu ruim
			console.log(xhr.status);
			console.log(xhr.responseText);
		}
	});
	xhr.send(blob);
}

function sendMessageToVoice(msg , type) {
	var xhr = new XMLHttpRequest();
	xhr.open("POST", "tts", true);
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
	xhr.addEventListener("load", function() {
		if(xhr.status == 200) {
			// Codigo de sucesso
			var blob = new Blob([xhr.response], {type : "audio/wav"});
			createAudioElement(blob , type);
		}else{
			// Codigo de deu ruim!
			console.log(xhr.status);
			console.log(xhr.responseText);
		}
	});
	xhr.responseType = 'blob';
	var data = "question=" + msg;
	xhr.send(data);
}
