const icone = document.querySelector(".icone");
const opcoes = document.querySelector(".opcoes");

icone.addEventListener("click", () =>{
    icone.classList.toggle('active')
    opcoes.classList.toggle('active')
})