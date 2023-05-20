<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Campus</title>
</head>
<body>
    <form method="POST">
        <input type="submit" value="Cargar alumno" name="enviar">
    </form>

    <?php

    if(isset($_POST['enviar'])){
        $enviar = $_POST['enviar'];
        
        echo '<form method="POST">';
        echo '<input type="text" placeholder="Nombre" name="nombre">';
        echo '<input type="text" placeholder="Apellido" name="apellido">';
        echo '<input type="text" placeholder="DNI" name="dni">';
        echo '<select name="curso">

                <option>1ro</option>

                <option>2do</option>

                <option>3ro</option>

                <option>4to</option>

                <option>5to</option>

                <option>6to</option>

                <option>7mo</option>

            </select>';

        echo '<input type="text" placeholder="Imágen del alumno (link)" name="imagen">';

        echo '<input type="submit" value="Enviar" name="enviarForm">';

        echo '</form>';

        include "conexion.php";
        if(isset($_POST['enviarForm'])){
            $enviarForm = $_POST['enviarForm'];

            $nombre=$_POST['nombre'];
            $apellido=$_POST['apellido'];
            $dni=$_POST['dni'];
            $curso=$_POST['curso'];
            $imagen=$_POST['imagen'];

            $query_consulta=mysqli_query($conexion, "SELECT * FROM alumn WHERE
            dni='$dni'");
            $fila=mysqli_num_rows($query_consulta);
            if($fila == 1){ 

            echo 'El usuario ya existe. Intente nuevamente';
            }
            else{
                $query_consulta=mysqli_query($conexion, "INSERT INTO alumn (name, surname, dni, course, image)
                                     VALUES('$nombre', '$apellido', '$dni', '$curso', '$imagen')");
                                     mysqli_error($conexion);
            echo 'Se logró el registro';
            }

        }
    }

    ?>
</body>
</html>