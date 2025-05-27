console.log("Script inicializado");

const inputNome = document.getElementsById("inputNome");
const inputIdade = document.getElementsById("inputIdade");
const btnSalvar = document.getElementsById("btnSalvar");
const divResponse = document.getElementsById("responseContainer");

btnSalvar.addEventListener("click", btnAction);

function btnAction(){
    alert("heitorbobão");
    console.log("text");

    let nome = inputNome.value;
    let idade = inputIdade.value;

    console.log(nome);
    console.log(idade);
}
