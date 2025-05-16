<?php

define('SERVIDOR', 'localhost');
define('USUARIO', 'root');
define('PASSWORD', '');
define('BD', 'integrapro');

define('APP_NAME', 'INTEGRA PRO');
define('APP_URL', 'http://localhost/sistemauniversidad/app/config.php');
define('KEY_API_MAPS', '');

$servidor = "mysql:dbname=" . BD . ";host=" . SERVIDOR;

try {
    $pdo = new PDO($servidor, USUARIO, PASSWORD, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    echo "Conexión exitosa a la base de datos";
} catch (PDOException $e) {
    echo "Error: no se pudo conectar a la base de datos. " . $e->getMessage();
}

date_default_timezone_set("America/Caracas");
$fechaHora = date('y-m-d H:i:s');

$fecharActual = date('Y-m-d');
$diaActual = date('d');
$mesActual = date('m');
$anoActual = date('y');