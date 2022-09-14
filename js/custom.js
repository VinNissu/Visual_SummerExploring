/*\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\FUNÇÕES//////////////////////////////// */
const aviso = (msg) => [
  alert(msg)
]


const mostraIdade = () => {
  let span = document.getElementById('txt-idade')
  let campoIdade = document.getElementById('idade')
  span.innerText = campoIdade.value
}

var dataAtual = new Date()
const mostraData = () => {

  let dia = dataAtual.getDay()
  let mes = dataAtual.getMonth() + 1
  let ano = dataAtual.getFullYear()
  let hora = dataAtual.getHours()
  let valor = dia + '/' + mes + '/' + ano + ' - ' + hora

  document.getElementById('dt-cadastro').value = valor
}


//Popula o select "estado" com os estados da API do IBGE\\
const getEstados = () => {
  let api = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados'
  let select = document.getElementById('estado')

  //Lê a API atravês do Fetch(), 1º then captura os dados, 2º then trata os dados
  fetch(api).then(resposta => resposta.json()).then(json => {
    let options = '<option>Selecione </option >'

    //console.log(json)

    for (const index in json) {
      // console.log(json [index].nome)
      options += `<option value = ${json[index].sigla}>${json[index].nome}</option>`
    }


    select.innerHTML = options
  })
}


// Preencha o select de cidades de acordo com o UF selecionado 
//A função recebe um parâmetro com o ID da UF

const getCidadesByUf = (uf) => {
  let api = `https://servicodados.ibge.gov.br/api/v1/localidades/estados/${uf}/municipios`
  let select = document.getElementById('cidade')

  fetch(api).then(resposta => resposta.json()).then(json => {
    let options = '<option>Selecione </option >'


    for (const index in json) {

      options += `<option value = ${json[index].nome}>${json[index].nome}</option>`
    }


    select.innerHTML = options
  })
}


/* EXEMPLO LAÇO FOR
var xuxu = ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun"];
var texto = ''
for (let index = 0; index < xuxu.length; index++) {
  const element = xuxu[index];
  texto += element + '<br>'

  document.getElementById('explorar').innerHTML = texto
} */

/*\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\FIM//////////////////////////////// */



/*\\\\\\\\\\EVENTOS E EXECUÇÕES AUTOMÁTICAS////////// */


// aviso("Tenha um bom dia DAVE Jones"); 
// document.getElementById('nome').addEventListener('click', function(){
//     aviso('Hello World, este é o planeta Terra???')
// });



/* ------------------------------------------------*/

/* const getEstados = () => {
  let api = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados'
  let select = document.getElementById('estado')

  //Lê a API atravês do Fetch(), 1º then captura os dados, 2º then trata os dados
  fetch(api).then(resposta => resposta.json()).then(json => {
    let options = '<option>Selecione </option >'

    //console.log(json)

    for (const index in json) {
      // console.log(json [index].nome)
      options += '<option>' + json[index].nome + '</option>'
    }


    select.innerHTML = options
  })
}
 */

getEstados()
/* -------------------------------------------------------------------------------------------- */















/* ------------------------------------------------*/

// const mostraIdade = () => {
//   let span = document.getElementById('txt-idade')
//   let campoIdade = document.getElementById('idade')
//   span.innerText = campoIdade.value
// }

mostraIdade()
document.getElementById('idade').addEventListener('change', mostraIdade)

mostraData()
/* -------------------------------------------------------------------------------------------- */











/* ------------------------------------------------*/
// inicializa animações do AOS 
AOS.init();

/* -------------------------------------------------------------------------------------------- */










/* ------------------------------------------------*/
////Impede o envio do formulário quando os campos estão inválidos\\\\
(function () {
  'use strict'
  /* -------------------------------------------------------------------------------------------- */






  /* ------------------------------------------------*/

  ////variável  captura as tags <form que contém a classe "needs-validation"\\\\\
  var forms = document.querySelectorAll('.needs-validation')




  //// Executa para cada formulário da variável forms\\\\
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        ////Se houver campos inválidos, interrompa o submit\\\\\
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()


/* -------------------------------------------------------------------------------------------- */









/* ------------------------------------------------*/
// \\

// const getCidadesByUf = (uf) => { 
//   alert(uf)
// }

document.getElementById('estado').addEventListener('change', function () {
  getCidadesByUf(this.value)
})

// 'this' represeta     objeto  'estado'
// \\
/* -------------------------------------------------------------------------------------------- */