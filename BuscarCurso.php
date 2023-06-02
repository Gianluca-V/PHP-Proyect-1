<?php
    include("conexion.php");
?>
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
<div class="container">
        <h1>Ingresar curso</h1>
        <form action="SolicitudDeCurso.php" method="post">
            <select name="curso">

                <option value ="1">4to 1ra PROG</option>

                <option value ="2">6to 2da IPP</option>

                <option value ="3">7mo 1ra ADO</option>

            </select>
            <input type="submit" value="submit">
            
        </form>
        <?php
            if(isset($_POST["submit"]))
               echo '<input type="hidden" name="consulta" value = "'.$_POST["curso"].'">';
        ?>
    </div>
</body>
</html>
