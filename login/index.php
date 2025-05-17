<?php
include ('../app/config.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?=APP_NAME;?></title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?= APP_URL;?>/public/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="<?= APP_URL;?>/public/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?= APP_URL;?>/public/dist/css/adminlte.min.css">
<!-- Estilos propios -->
<link rel="stylesheet" href="<?= APP_URL;?>/public/css/custom.css">

</head>
<body class="login-page-custom">
  <div class="login-container">
    
    <!-- SECCIÓN IZQUIERDA: Imagen y bienvenida -->
    <div class="left-section">
      <div class="welcome-text">
        <h2>Bienvenido al area de pasantes y tesistas</h2>
      </div>
    </div>
    
    <!-- SECCIÓN DERECHA: Formulario -->
    <div class="right-section">
      <div class="login-box-custom">
        <h2>Iniciar sesion</h2>
        
        <form action="controller_login.php" method="post">
          <div class="input-group-custom">
            <input type="email" name="email" placeholder="Username or email" required>
          </div>
          <div class="input-group-custom">
            <input type="password" name="password" placeholder="Password" required>
          </div>
          <button type="submit" class="btn-login">iniciar sesion</button>
        </form>
      </div>
    </div>

<!-- Alerta -->
<?php
session_start();
if (isset($_SESSION['mensaje']) && isset($_SESSION['icono'])):
    $mensaje = $_SESSION['mensaje'];
    $icono = $_SESSION['icono']; // success, error, warning, info
?>
<div class="alerta-custom <?= $icono ?>">
  <span class="icono-alerta"></span>
  <p><?= $mensaje ?></p>
  <span class="cerrar-alerta" onclick="this.parentElement.style.display='none';">&times;</span>
</div>
<?php
unset($_SESSION['mensaje']);
unset($_SESSION['icono']);
endif;
?>


  </div>
</body>
<!-- /.login-box -->

<!-- jQuery -->
<script src="<?= APP_URL;?>/public/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?= APP_URL;?>/public/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= APP_URL;?>/public/dist/js/adminlte.min.js"></script>
</body>
</html>
