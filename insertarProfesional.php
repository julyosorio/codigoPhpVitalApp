<?php include ('conexion.php');

$registro=$_GET['registro'];
$especialidad=$_GET['especialidad'];

ejecutarSQLCommand("INSERT INTO  `profesional` (registro, especialidad)
VALUES (
'$registro',
'$especialidad')

 ON DUPLICATE KEY UPDATE `especialidad`= '$especialidad';");


 ?>