

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cyberdoor</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</head>
<body>

    <nav class="navbar navbar-expand-1g navbar-light bg-light fixed-top">
        <a class="navbar-brand" href="index.php"><img src="https://cdn.discordapp.com/attachments/811841181159391242/911379188571844769/door.png"></a>
        <button class="navbar-toggler" data-target="#my-nav" data-toggle="collapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div id="my-nav" class="collapse navbar-collapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="mostrarCarrito.php">Carrito(<?php
                    echo (empty($_SESSION['CARRITO']))?:count($_SESSION['CARRITO']);
                     ?>)</a>
            </li>
            <li class="nav-item active">
            <hr>
                <a class="nav-link" href="">Administrar Sesión ---></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="login2.php">Iniciar Sesion</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="login.php">Crear una cuenta</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="cerrarsesion.php">Cerrar Sesion</a>
            </li>
            <li class="nav-item active">
            <hr>
                <a class="nav-link" href="">Categorias         ---></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="monitores.php">Monitores</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="pcs.php">Componentes de PC</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="audifonos.php">Audifonos</a>
                <hr>
            </li>
        </ul>
        </div>
    </nav>
    <br>
    <br>

    <div class="container">
  