<?php

//Recebe os campos do formulário
$nome = $_POST['nome'];
$email = $_POST['email'];
$sexo = $_POST['sexo'];
$telefone = $_POST['telefone'];
$senha = $_POST['senha'];
$idade = $_POST['idade'];
$estado = $_POST['estado'];
$cidade = $_POST['cidade'];
$destinos = $_POST['destinos'];
$hospedagem = $_POST['hospedagem'];
$mensagem = $_POST['mensagem'];
$dt_cadastro = $_POST['dt-cadastro'];

//para investigar variáveis e expressões
//var_dump($_POST);

//CONECTA AO BANCO E GRAVA OS DADOS (insert com PDO)
try {
    //instancia o banco por meio do PDO
    $pdo = new PDO('mysql:host=localhost;dbname=explore', 'root', '');
    //INSERT na tabela users
    $sql = $pdo->prepare('INSERT into users 
    (nome, email, sexo, telefone, senha, idade, estado, cidade, 
    destinos, hospedagem, mensagem, dt_cadastro)
    values(:nome, :email, :sexo, :telefone, :senha, :idade, :estado, :cidade, 
    :destinos, :hospedagem, :mensagem, :dt_cadastro)');
    $sql->execute(array(
        ':nome' => $nome,
        ':email' => $email, 
        ':sexo' => $sexo, 
        ':telefone' => $telefone, 
        ':senha'=> md5($senha), 
        ':idade'=> $idade, 
        ':estado'=> $estado, 
        ':cidade'=> $cidade,
        ':destinos'=> implode(',', $destinos), //converte array em texto 
        ':hospedagem'=> $hospedagem, 
        ':mensagem'=> $mensagem, 
        ':dt_cadastro'=> date('Y-m-d', strtotime($dt_cadastro))
    ));

    // echo '<h1>Usuário cadastrado</h1>';
    // var_dump($_POST);    
    

    //carrega a pagina index.html enviando varável GET cadastro 
    header('location:index.html?cadastro=ok');

    $_GET['cadastro'];

} catch (PDOException $erro) {
    //se der erro, exibe o erro aqui
    echo $erro;
} 
