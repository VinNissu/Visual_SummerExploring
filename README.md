# summer-exploring
Site single page - HTML, CSS e JS utilizando o BOOTSTRAP.

passo-a-passo

1-bs5-$
2-mudando title(summer-exploring)
3-criando css(começo) e javascript(fim) ,incorporando no index.html
3.1-criando navbar.


4-pegando fonte do fonts.google.com para carregar no site.
4.1-colocando o codigo da fonte no style.css acima do BOOTSTRAP.
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,700;0,800;1,300;1,700&display=swap" rel="stylesheet">)

4.2-colocando a biblioteca de icones.
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">


5-criando  um body no css, sem necessidade de reset pq BOOTSTRAP da reset. 
body{
    font-family: 'Open Sans', sans-serif;
    }



6-colocando a barra de search no site.
https://bootsnipp.com/snippets/GaeQR
6.1-colocando no html 
<div class="searchbar">
              <input class="search_input" type="text" name="" placeholder="Search...">
              <a href="#" class="search_icon"><i class="fas fa-search"></i></a>

6.1-colocando no css o retoque
    .searchbar{
    margin-bottom: auto;
    margin-top: auto;
    height: 60px;
    background-color: #353b48;
    border-radius: 30px;
    padding: 10px;
    }

    .search_input{
    color: white;
    border: 0;
    outline: 0;
    background: none;
    width: 0;
    caret-color:transparent;
    line-height: 40px;
    transition: width 0.4s linear;
    }

    .searchbar:hover > .search_input{
    padding: 0 10px;
    width: 450px;
    caret-color:red;
    transition: width 0.4s linear;
    }

    .searchbar:hover > .search_icon{
    background: white;
    color: #e74c3c;
    }

    .search_icon{
    height: 40px;
    width: 40px;
    float: right;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    color:white;
    text-decoration:none;
    }



