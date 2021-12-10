<?php
include 'global/config.php';
include 'global/conexion.php';
include 'template/cabecera.php';
include 'carrito.php';

?>
<br>
<?php if($mensaje!=""){?>
    <div class="alert alert-success">
    <?php echo @$mensaje; ?>
        <div class="container">
            <div class="row">
                <span class="msg"><?php echo @$mensaje ?></span>
            </div>
        

        <a href="mostrarCarrito.php" class="badge badge-success">Ver carrito</a>
        </div>
     </div>
     <?php }?>

    <div class="row">

    <?php
        $sentencia=$pdo->prepare("SELECT* FROM `tblaudifonos`");
        $sentencia->execute();
        $listaProductos=$sentencia->fetchAll(PDO:: FETCH_ASSOC);
        //print_r($listaProductos);
    ?>

    <?php foreach($listaProductos as $producto){ ?>

        <div class="col-3">
            <div class="card">
                <img
                title="<?php echo $producto['Nombre'];?>"
                alt="<?php echo $producto[ 'Nombre'];?>"
                class="card-img-top"
                src="<?php echo $producto['Imagen'];?>"
                data-toggle="popover"
                data-trigger="hover"
                data-content="<?php echo $producto['Descripcion'];?>"

                height="317px"

                >
                <div class="card-body">
                    <span><?php echo $producto['Nombre'];?></span>
                    <h5 class="card-title">$<?php echo $producto['Precio'];?></h5>
                    <p class="card-text">Descripcion</p>
                    
                <form action="" method="post">

                <input type="hidden" name="id" id="id" value="<?php echo ($prpducto['ID']);?>">
                <input type="hidden" name="nombre" id="nombre" value="<?php echo  ($producto['Nombre']);?>" >
                <input type="hidden" name="precio" id="precio" value="<?php echo ($producto['Precio']);?>">
                <input type="hidden" name="cantidad" id%="cantidad" value="<?php echo (1);?>">

                <button class="btn btn-primary"
                    name="btnAccion"
                    value="Agregar"
                    type="submit"
                    >
                    Agregar al carrito
                </button>

                </form>

                    

                </div>
            </div>
        </div>

    <?php } ?>

    </div>

    <script>
    $(function () {
            $('[data-toggle="popover"]').popover()
    });
                
    </script>

<?php include 'template/pie.php';?>