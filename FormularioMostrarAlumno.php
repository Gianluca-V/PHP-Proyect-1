<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>
<body>
    <form action="" method="post">
        <label for="1">DNI del alumno</label>
        <input type="number" name="dni" id="1">
        <input type="submit" name="enviar">
    </form>
    <?php
        
        if(isset($_POST['enviar'])){
            $conex = mysqli_connect("localhost","root","","school");
            $dni = $_POST['dni'];
            if($conex){
                $consulta = "SELECT `name`,`surname`,'dni'
                             FROM `alumn`
                             WHERE 'dni' = $dni";
                $resultado = mysqli_query($conex,$consulta);
                if($resultado){
                    
                }
            }
        }
    ?>
</body>
</html>