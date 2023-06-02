<?php
    include("conexion.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Document</title>
</head>
<body>
    <header>
        <div class="imagen">
            <div class="img1">
            <img src="img.jpg" alt="">
            </div>
        </div>
        </div class="datosAlum">
            <div class="tabla">
                <table>
                    <tr>
                        <td>dni</td>
                        <td>Nombre</td>
                        <td>Apellido</td>
                        <td>Promedio</td>
                        <td>Curso</td>
                    </tr>
                    <?php 
                    $consultaAlumno="SELECT dni,name,surname,average,course FROM alumn";
                    $result=mysqli_query($conexion,$consultaAlumno);
                    while($mostrar=mysqli_fetch_array($result)){
                    ?>
                    <tr>
                        <td> <?php echo $mostrar['dni']?> </td>
                        <td> <?php echo $mostrar['name']?> </td>
                        <td> <?php echo $mostrar['surname']?> </td>
                        <td> <?php echo $mostrar['average']?> </td>
                        <td> <?php echo $mostrar['course']?> </td>
                    </tr>
                    <?php
                    }
                    ?>
                </table>
            </div>   
        </div>
    </header>

    <section>
        <h2>Mejor alumno por curso</h2>
        <div class="materias">
            <table>
                <thead>
                    <th>Materia</th>
                    <th>Nota</th>
                </thead>
                <tbody>
                <?php 

                $consulta="SELECT s.name AS subject_name,
                AVG(n.note) AS average_note,
                a.name AS student_name,
                a.surname AS student_surname,
                a.dni AS student_dni,
                a.average AS student_average
                FROM subject s
                JOIN notes n ON s.id = n.subjectId
                JOIN alumn a ON n.alumnId = a.dni
                JOIN (
                    SELECT course, MAX(average) AS max_average
                    FROM alumn
                    GROUP BY course
                ) sub ON a.course = sub.course AND a.average = sub.max_average
                GROUP BY a.name, a.surname, a.dni, s.name, a.average;
                ";

                $result2=mysqli_query($conexion, $consulta);
                $mostrar2=mysqli_fetch_array($result2);
                ?>
                
                <?php
                $prevName = "";
                while($mostrar2=mysqli_fetch_array($result2)){
                ?>
                <?php if($mostrar2['student_name'] != $prevName) echo '<tr><td>'.$mostrar2['student_name'].' '.$mostrar2['student_surname'].'</td>  <td>'.$mostrar2['student_average'].'</td></tr>'; $prevName=$mostrar2['student_name'] ?>
                <tr>
                    <td><?php echo $mostrar2['subject_name'] ?></td>
                    <td><?php echo $mostrar2['average_note'] ?></td>
                </tr>
                
                <?php
                }
                ?>
                </tbody>
            </table>
        </div>   
    </section>

    <section>
        <h2>Mejor alumno</h2>
        <div class="materias">
            <table>
                <thead>
                    <th>Materia</th>
                    <th>Nota</th>
                </thead>
                <tbody>
                <?php 

                $consulta="SELECT subject.name AS subject_name, 
                AVG(notes.note) AS average_note, 
                alumn.name AS student_name, 
                alumn.surname AS student_surname, 
                alumn.dni AS student_dni,
                alumn.average AS student_average
                FROM subject
                JOIN notes ON subject.id = notes.subjectId
                JOIN alumn ON notes.alumnId = alumn.dni
                WHERE alumn.dni = (
                    SELECT dni
                    FROM alumn
                    ORDER BY average DESC
                    LIMIT 1
                )
                GROUP BY subject.name, alumn.name, alumn.surname, alumn.dni;
                ";


                $result2=mysqli_query($conexion, $consulta);
                $mostrar2=mysqli_fetch_array($result2);
                ?>
                <?php echo $mostrar2['student_name'].' '.$mostrar2['student_surname'] ?>
                <?php echo $mostrar2['student_average'] ?>
                <?php
                while($mostrar2=mysqli_fetch_array($result2)){
                ?>
                
                <tr>
                    <td><?php echo $mostrar2['subject_name'] ?></td>
                    <td><?php echo $mostrar2['average_note'] ?></td>
                </tr>
                
                <?php
                }
                ?>
                </tbody>
            </table>
            
        </div>   
    </section>
</body>
</html>