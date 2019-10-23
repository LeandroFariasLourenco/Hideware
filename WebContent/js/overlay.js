window.addEventListener("DOMContentLoaded", (evento) => {
    let botaoHelp = document.getElementById("help");
    botaoHelp.addEventListener("click", (evento) => {
        chamarOverlay();
        botaoHelp.style.display = "none";
    })
})


function chamarOverlay() {
    let duvidas = document.getElementsByClassName("enviar-duvidas");
	let overlay = document.getElementsByClassName("overlay");
    let botaoHelp = document.getElementById("help");
    let sair = document.getElementById("sair");
    let botoes = document.getElementsByClassName("enviar-duvidas");
    let duvida = document.getElementById("duvida");
    let containerCaixa = document.getElementById("respostas")
    let caixaMensagemUsuario = "";
    let caixaMensagemBot = "";

    overlay[0].style.right = "0px";
    document.body.style.overflow = 'hidden'
    sair.addEventListener("click", (evento) => {
        overlay[0].style.transition = "200ms";
        overlay[0].style.right = "-20000px";
        botaoHelp.style.display = "initial";
        document.body.style.overflow = 'auto';
    })
    
}