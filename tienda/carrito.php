<?php
session_start();
@$mensaje="";
if(isset($_POST['btnAccion'])){
    
    switch($_POST['btnAccion']){

        case 'Agregar':{

            if(is_numeric($_POST['id'])){
                $ID=($_POST['id']);
                @$mensaje.="Ok ID correcto".$ID."<br/>";
            }else{
                @$mensaje.="Upss... ID incorrecto".$ID."<br/>";
            }
            if(is_string($_POST['nombre'])){
                $NOMBRE=($_POST['nombre']);
                @$mensaje.="Ok NOMBRE".$NOMBRE."<br/>";
                }else{ @$mensaje.="Upps.. algo pasa con el nombre"."<br/>"; break;}

               if(is_numeric($_POST['cantidad'])){
                     $CANTIDAD=($_POST['cantidad']);
                     @$mensaje.="Ok CANTIDAD".$CANTIDAD."<br/>";
                 }else{ @$mensaje.="Upps.. algo pasa con el cantidad"."<br/>"; break;}

               if(is_numeric($_POST['precio'])){
                     $PRECIO=($_POST['precio']);
                     @$mensaje.="Ok precio".$PRECIO."<br/>";
                }else{ @$mensaje.="Upps.. algo pasa con el precio"."<br/>"; break;}

            if(!isset($_SESSION['CARRITO'])){
            $ID = null;
            $producto=array(
                'ID'=>$ID,
                'NOMBRE'=>$NOMBRE,
                'CANTIDAD'=>$CANTIDAD,
                'PRECIO'=>$PRECIO
                );
                $_SESSION['CARRITO'][0]=$producto;
                
            }
            else{
                $ID = null;
                $NumeroProductos=count($_SESSION['CARRITO']);
                $producto=array(
                    'ID'=>$ID,
                    'NOMBRE'=>$NOMBRE,
                    'CANTIDAD'=>$CANTIDAD,
                    'PRECIO'=>$PRECIO
                    );
        
                    $_SESSION['CARRITO'][$NumeroProductos]=$producto;
                    @$mensaje= "Producto agregado al carrito";
                
            }
            @$mensaje= "Producto agregado al carrito";
            
        break;
        }
        case 'Eliminar':{
            
            if(!is_numeric($_POST['id'])){
                    $ID=($_POST['id']);
                foreach($_SESSION['CARRITO'] as $indice=>$producto){
                    if($producto['ID']==$ID){
                        unset ($_SESSION['CARRITO'][$indice]);
                        echo "<script>alert('Elemento borrado...');</script>";
                        break;
                    }else{
                        echo "<script>alert('No se borro esa mamada...');</script>";
                    }
                }
            }
            else{
                echo "<script>alert('id incorrecto...');</script>";
            }

        break;
        }
    }
}

?>

