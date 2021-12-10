<?php
include 'template/cabecera.php';
include 'global/config.php';

session_start();
error_reporting(0);

if(isset($_SESSION["username"])){
    header("Location: index.php");

}
if(isset($_POST["submit"])){
    $email=$_POST["email"];
    $password= md5($_POST["password"]);
    
    $sql="SELECT * FROM users WHERE email='$email' AND password='$password'";
    $result= mysqli_query($conn, $sql);

    if($result->num_rows>0){
        $row = mysqli_fetch_assoc($result);
        $_SESSION['username'] = $row['username'];
        header("Location: index.php");

    }else{
        echo "<script>alert('La contrase;a o el email son incorrectos ')</script>";
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
                <form method="POST" action="<?php echo$_SERVER['PHP_SELF'];?>" class="formularioaa">

                    <input placeholder="Correo electrónico" name="email" type="email">  </input><br>
                    <input placeholder="Contraseña" name="password" type="password">  </input><br>
                    <button name="submit" type="submit" class="btnLoginaa" > Iniciar Sesion </button><br>
                </form>
                <p id="iniciaraa">¿No tienes una cuenta?&nbsp;<a href="login.php">Registrate</a></p> 

        </div>
        <div class="listafooter" style="margin-top: 15.5%;">
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