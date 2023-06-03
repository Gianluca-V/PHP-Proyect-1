<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styleMostrarAlumno.css">
    <title>Document</title>
</head>
<body>
    <form action="" method="post">
        <label for="1">DNI del alumno</label>
        <input type="number" name="dni" id="1">
        <input type="submit" name="enviar"  class="enviar">
    </form>
    <?php
        
        if(isset($_POST['enviar'])){
            include "conexion.php";
            $dni = $_POST['dni'];
                $consulta = "SELECT `name`,`surname`,'dni','image'
                             FROM `alumn`
                             WHERE 'dni' = $dni";
                $resultado = mysqli_query($conexion,$consulta);
                if($resultado != false) $mostrar2=mysqli_fetch_array($resultado);
                else echo "ERROR";
                if($resultado){
                    echo '<tr><td>'.$mostrar2['name'].' '.$mostrar2['surname'].' '.$mostrar2['dni'].'</td>  <td>'.$mostrar2['average'].' '.$mostrar2['image'].'</td></tr>' ;
    
                    $consulta2 = "SELECT subject.name AS subject_name, AVG(notes.note) AS average_note FROM subject join notes on subject.id = notes.subjectID join alumn on notes.alumnId = alumn.dni WHere alumn.dni = $dni  GROUP BY subject.name;";
                    $result3=mysqli_query($conexion, $consulta2);
                    if($result3 != false){
                    $mostrar3=mysqli_fetch_array($result3);
                    ?>
                    <table>
                    <thead>
                        <th>Materia</th>
                        <th>Nota</th>
                    </thead>
                    <tbody>
    
                    <?php
                    while($mostrar3=mysqli_fetch_array($result3)){
                    ?>
                        <tr>
                            <td> <?php echo $mostrar3['subject_name']?> </td>
                            <td> <?php echo $mostrar3['average_note']?> </td>
                        </tr>
                        <?php  } ?>
                    </tbody>
                </table>
                <?php
                }
                else{echo "ERROR";}
            }
        }
    ?>
</body>
</html>