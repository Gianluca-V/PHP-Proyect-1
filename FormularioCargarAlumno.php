<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styleCarga.css">
    <title>Campus</title>
</head>
<body>

       <form method="POST">
        <h1>Carga de Alumno</h1>
        <input type="text" placeholder="Nombre" name="nombre">
        <input type="text" placeholder="Apellido" name="apellido">
        <input type="text" placeholder="DNI" name="dni">
        <select name="curso">

                <option value ="1">4to 1ra PROG</option>

                <option value ="2">6to 2da IPP</option>

                <option value ="3">7mo 1ra ADO</option>

            </select>

        <input type="text" placeholder="Imágen del alumno (link)" name="imagen">

        <input type="submit" value="Enviar" name="enviarForm" class="enviar">

        </form>

        <?php

        include "conexion.php";
        

        if(isset($_POST['enviarForm'])){         
            $nombre = mysqli_real_escape_string($conexion, $_POST['nombre']);
            $apellido = mysqli_real_escape_string($conexion, $_POST['apellido']);
            $dni = mysqli_real_escape_string($conexion, $_POST['dni']);
            $curso = mysqli_real_escape_string($conexion, $_POST['curso']);
            $imagen = mysqli_real_escape_string($conexion, $_POST['imagen']);

            $query_consulta=mysqli_query($conexion, "SELECT * FROM alumn WHERE dni='$dni'");
            $fila=mysqli_num_rows($query_consulta);
            if($fila == 1){ 
                mysqli_error($conexion);
                echo 'El usuario ya existe. Intente nuevamente';
            }
            else{
                $query_consulta=mysqli_query($conexion, "INSERT INTO alumn (dni, name, surname, image, course)
                                VALUES('$dni', '$nombre', '$apellido',  '$imagen', '$curso')");

                

                if(!$query_consulta){
                    echo 'Error en el registro: ' . mysqli_error($conexion);
                } else {
                    echo 'Se logró el registro';
                }
            }

        }

    ?>
</body>
</html>