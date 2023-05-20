<?php

    $host='localhost';
    $usuario='root';
    $password='';
    $base='school';
    $conexion=mysqli_connect($host, $usuario, $password, $base);

    if(!$conexion){
        echo 'Error de conexion';
    }

?>