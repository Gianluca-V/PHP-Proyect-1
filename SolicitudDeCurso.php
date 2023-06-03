<?php
    include("conexion.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styleSolicitudDeCurso.css">
    <title>Document</title>
</head>
<body>
    <section>
        
        <div class="materias">
        <h2>Mejor alumno por curso</h2>
                <?php 
                 $courseId = $_POST["curso"];

                $consulta="SELECT name, surname, dni, average, image FROM alumn WHERE course = $courseId ORDER BY average DESC LIMIT 1;";

                $result2=mysqli_query($conexion, $consulta);
                $mostrar2=mysqli_fetch_array($result2);

                echo '<div class="data"><tr><td>'.$mostrar2['name'].' '.$mostrar2['surname'].'<br><br> DNI: '.$mostrar2['dni'].'</td> <br><br> <td> Promedio: '.$mostrar2['average'].' <br><br> <img src="'.$mostrar2['image'].'" alt="Imgaen"> </td></tr> </div>' ;
                
                $dni = $mostrar2['dni'];

                $consulta2 = "SELECT subject.name AS subject_name, AVG(notes.note) AS average_note FROM subject join notes on subject.id = notes.subjectID join alumn on notes.alumnId = alumn.dni WHere alumn.dni =$dni  GROUP BY subject.name;";
                $result3=mysqli_query($conexion, $consulta2);
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
        </div>   
    </section>

</body>
</html>