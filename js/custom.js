////////////////  FUNÇÕES   //////////////////// 

//Ao carregar a página verifica o parâmetro "cadastro"
//se o valor for "ok" exibe um alert

const urlParams = new URLSearchParams(window.location.search)
var parCadastro =  urlParams.get('cadastro')

if(parCadastro == 'ok'){
  let listaClasses = document.getElementById('msg').classList
  listaClasses.remove('d-none');
};


const aviso = (msg)=> {
    alert(msg)
}


const mostraIdade = ()=>{
    let span = document.getElementById('txt-idade')
    let campoIdade = document.getElementById('idade')
    span.innerText = campoIdade.value
}

var dataAtual = new Date()
const monstraData = ()=> {
  let dia = dataAtual.getDay()
  let mes = dataAtual.getMonth() + 1
  let ano = dataAtual.getFullYear()
  let hora = dataAtual.getHours()
  let valor = dia +'/'+ mes + '/' + ano

  document.getElementById('dt-cadastro').value = valor
}

//Preenche o select "estado" com os estados da API do IBGE
const getEstados = ()=>{
  let api = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados'
  let select = document.getElementById('estado')

  //Lê a API através do fetch(), 1o then captura os dados, 2o then trata os dados
  fetch(api).then(resposta => resposta.json()).then(json => {
    let options = '<option>Selecione</option>'

    //Percorre o objeto JSON com os estados do Brasil
    for (const index in json) {
      options += `<option value=${json[index].sigla}>${json[index].nome}</option>`
    }    
    select.innerHTML = options
  })
}


//Preenche o select de cidades de acordo com o UF selecionado
//A função recebe um parâmetro (uf) com a sigla da UF
const getCidadesByUf = (uf)=>{
  let api = `https://servicodados.ibge.gov.br/api/v1/localidades/estados/${uf}/municipios`
  let select = document.getElementById('cidade')
  
  fetch(api).then(resposta => resposta.json()).then(json => {
    let options = '<option>Selecione</option>'
    
    for (const index in json) {
      options += `<option value=${json[index].nome}>${json[index].nome}</option>`
    }    
    select.innerHTML = options
  })  
}

const rolagem = ()=> {
  const html = document.documentElement
  const seta = document.getElementById('go-top')

  /* Se a rolagem for maior que 550, a seta aparece 
  abaixo de 550 esconde */
  if (html.scrollTop > 550 ) {
    seta.style.display = 'block'
  } else {
    seta.style.display = 'none'
  }
}


/* ---------------------------------------------------- */




getEstados()

mostraIdade()
document.getElementById('idade').addEventListener('change', mostraIdade)

monstraData()

//Inicializa animações scroll do AOS
AOS.init();

// Impede o envio do formulário quando os campos estão inválidos
/* ( ()=> {
    'use strict'
  
    //váriavel captura as tags <form> que contém a classe "needs-validation"
    var forms = document.querySelectorAll('.needs-validation')
  
    // Executa para cada formulário da variável forms
    Array.prototype.slice.call(forms)
      .forEach(function (form) {
        form.addEventListener('submit', function (event) {
          //Se houver campos inválidos, interrompe o SUBMIT
          if (!form.checkValidity()) {
            event.preventDefault()
            event.stopPropagation()
          }
  
          form.classList.add('was-validated')
        }, false)
      })
  })() */


document.getElementById('estado').addEventListener('change', function(){
  getCidadesByUf(this.value)
})

//window.addEventListener('scroll', rolagem)
window.onscroll = ()=> rolagem()



