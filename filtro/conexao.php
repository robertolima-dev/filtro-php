<?php

$dsn = "mysql:host=localhost;dbname=filtro";
$user = "root";
$pass = "";

try {

	$conexao = new PDO($dsn, $user, $pass);

} catch(PDOException $e) {

	echo 'Erro: '.$e->getCode().' Mensagem: '.$e->getMessage();
}

?>