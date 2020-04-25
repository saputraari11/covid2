<?php
session_start();

?>

<!DOCTYPE html>
<html>

<head>
  <script src="http://localhost/covid/asset/jquery.js"></script>
  <link rel="stylesheet" href="http://localhost/covid/asset/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="http://localhost/covid/asset/index.css">
  <link rel="stylesheet" href="http://localhost/covid/asset/fontawesome/css/all.min.css">
  <title>Covid</title>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-dark " style="background-color: #6dd5ed">
    <a class="navbar-brand ml-5 "><i class="fas fa-shield-alt"></i> 19COVID</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item ">
          <a class="nav-link" href="http://localhost/covid/index.php">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="http://localhost/covid/content.php">Start Here</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="http://localhost/covid/hasil.php">Conclusion</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="http://localhost/covid/about.php">About</a>
        </li>
        <?php
        if (!isset($_SESSION["id"])) :

        ?>
          <li class="nav-item">
            <a class="nav-link " href="http://localhost/covid/login/form-login.php">Login</a>
          </li>
        <?php endif; ?>
        <?php
        if (isset($_SESSION["id"])) :

        ?>
        <li class="nav-item ">
          <a class="nav-link" href="http://localhost/covid/login/logout.php">Logout</a>
        </li>
        <?php endif; ?>
      </ul>
  </nav>

</body>

<body class="bg-light">

</html>