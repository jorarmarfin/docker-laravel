<?php
$usuario = "root";
$contrasena = "root";  // en mi caso tengo contraseña pero en casa caso introducidla aquí.
$host = "localhost";
$puerto = "3306";
if (!($link = mysqli_connect($host.":".$puerto, $usuario, $contrasena)))
 {
    echo "Error conectando a la base de datos.<br>";
    exit();
    }
 else
 {
    echo "Listo, estamos conectados.<br>";
 }