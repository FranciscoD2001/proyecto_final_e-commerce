<?php
session_start();

if(!isset($_GET['id']) OR !is_numeric($_GET['id']))
    header('Location: mostrarCarrito.php');

if(isset($_SESSION['carrito'])){
    unset($_SESSION['carrito'][$id]);
} else{
    header('Location: index.php');
} 
$id = $_GET['id'];