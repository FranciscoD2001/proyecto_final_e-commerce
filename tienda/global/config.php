<?php
define ("SERVIDOR","localhost");
define("KEY","UABCS");
define("COD","AES-128-ECB");
define("USUARIO","root");
define ("PASSWORD","");
define("BD","tienda");

$server="localhost";
$user="root";
$pass="";
$database="tienda";
$conn = mysqli_connect($server,$user,$pass,$database);

if(!$conn){
    die("Conexion fallida");
}
?>