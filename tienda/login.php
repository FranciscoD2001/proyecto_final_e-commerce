<?php
include 'template/cabecera.php';
include 'global/config.php';

error_reporting(0);
session_start();

if(isset($_SESSION["username"]))
{
    header("Location: index.php");
}
if(isset($_POST["submit"])){
    $username=$_POST["username"];
    $email=$_POST["email"];
    $password= md5($_POST["password"]);
    $cpassword= md5($_POST["cpassword"]);

    if($password==$cpassword){
        $sql="SELECT * FROM users WHERE email='$email'";
        $result= mysqli_query($conn, $sql);
        if(!$result->num_rows>0){
            
            $sql="INSERT INTO users
            (username,email,password)
            VALUE('$username', '$email', '$password')";
            $result=mysqli_query($conn,$sql);
            if($result){
                echo "<script>alert('Usuario registrado con exito')</script>";
                $username="";
                $email="";
                $_POST["password"]="";
                $_POST["cpassword"]="";

            }else{
                echo "<script>alert('Hay un error')</script>";
            }
        }else{
            echo "<script>alert('El correo ya existe')</script>";
        }
    }else{
        echo "<script>alert('Las contrase;as no coinciden')</script>";
    }
}

?>




<link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">

    <div class="containeraa">
            <div style="margin-bottom: 5%;">
                <a href="index.php">
                <img src="https://cdn.discordapp.com/attachments/811841181159391242/911379188571844769/door.png" width="350 px">
                </a>
                <h2 id="coloraa">Cyberdoor, Buildea tu pc Ahora Mismo.</h2>
                <h3 id="textoaa">Venta de accesorios de computadoras y más</h3>
            </div>








            <div class="container2aa">
                    <form method="POST" class="formularioaa" action="">
                        <input placeholder="Nombre de usuario" type="username" name="username"></input><br> 
                        <input placeholder="Correo electrónico" type="email" name="email">  </input><br>
                        <input placeholder="Contraseña" type="password" name="password">  </input><br>
                        <input placeholder="Confirmar contraseña" type="password" name="cpassword"> </input><br>
                        <button type="submit" name="submit" class="btnLoginaa"> Crear Cuenta </button><br>
                    </form>
                    <p id="iniciaraa">¿Ya tienes cuenta?&nbsp;<a href="login2.php">Inicia Sesión</a></p>   
            </div>



?>










            <div class="listafooter">
                <ul class="ordenarListaaa">
                    <li>  
                        <a class="nav" href="https://www.cyberpuerta.mx">
                        Tienda de marcas |
                        </a>
                    </li> 
            
                    <li> 
                        <a class="nav" href="https://www.cyberpuerta.mx/Como-comprar/">
                            ¿Cómo comprar? |
                        </a>
            
                    </li> 
                
                    <li>  
                        <a class="nav" href="https://www.cyberpuerta.mx/Quienes-somos/">
                        ¿Quiénes somos? |
                        </a>
                    </li> 
                    <li>  
                        <a class="nav" href="contacto.php">
                        Contactanos
                        </a>
                    </li> 
                </ul>
            </div>
    </div>    
</body>
</html>