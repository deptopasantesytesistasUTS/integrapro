<?php

include ('../app/config.php');

session_start();

$email = $_POST['email'] ?? '';
$password = $_POST['password'] ?? '';

if (!empty($email) && !empty($password)) {
    $sql = "SELECT * FROM usuarios WHERE email = :email AND estado = 'activo'";
    $query = $pdo->prepare($sql);
    $query->bindParam(':email', $email);
    $query->execute();

    $usuario = $query->fetch(PDO::FETCH_ASSOC);

    if ($usuario && password_verify($password, $usuario['password'])) {
        $_SESSION['mensaje'] = "Bienvenido al sistema";
        $_SESSION['icono'] = "success";
        $_SESSION['sesion_email'] = $email;
        header('Location: ' . APP_URL . "/admin");
        exit;
    } else {
        $_SESSION['mensaje'] = "Los datos introducidos son incorrectos, vuelva a intentarlo";
        $_SESSION['icono'] = "error";
        header('Location: ' . APP_URL . "/login");
        exit;
    }
} else {
    $_SESSION['mensaje'] = "Debe completar todos los campos";
    $_SESSION['icono'] = "warning";
    header('Location: ' . APP_URL . "/login");
    exit;
}