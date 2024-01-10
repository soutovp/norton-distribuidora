<?php

require_once '../../vendor/autoload.php'; // Certifique-se de ajustar o caminho conforme necessário

$loader = new \Twig\Loader\FilesystemLoader('../templates'); // Certifique-se de ajustar o caminho conforme necessário
// $twig = new \Twig\Environment($loader);
$twig = new \Twig\Environment($loader, [
    'cache' => false, // Desativar cache em ambiente de desenvolvimento
]);
echo $twig->render('index.tpl', ['variavel' => 'valor']);
