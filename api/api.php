<?php
// Cabeçalhos para permitir acesso externo
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");

// Lê o arquivo com as perguntas
$perguntas = json_decode(file_get_contents("perguntas.json"), true);

// Escolhe uma pergunta aleatória
$perguntaAleatoria = $perguntas[array_rand($perguntas)];

// Retorna como JSON
echo json_encode($perguntaAleatoria);