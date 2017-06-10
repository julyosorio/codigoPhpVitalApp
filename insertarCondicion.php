<?php include ('conexion.php');


$tipo_condicion=$_GET['tipo_condicion'];
$enfermedad=$_GET['enfermedad'];
$medicamentos=$_GET['medicamentos'];


ejecutarSQLCommand("INSERT INTO  `condicion` (tipo_condicion, enfermedad, medicamentos)

VALUES ('$tipo_condicion', '$enfermedad', '$medicamentos')


 ON DUPLICATE KEY UPDATE `tipo_condicion`= '$tipo_condicion';");

 ?>