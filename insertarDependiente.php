<?php include ('conexion.php');

$identificacion=$_GET['identificacion'];
$nombre=$_GET['nombre'];
$fecha=$_GET['fecha'];
$tipo=$_GET['tipo'];
$eps=$_GET['eps'];
$correo=$_GET['correo'];
$telefono=$_GET['telefono'];
$direccion=$_GET['direccion'];
$condicion=$_GET['condicion'];
$enfermedad=$_GET['enfermedad'];
$medicamentos=$_GET['medicamentos'];

ejecutarSQLCommand("INSERT INTO `dependiente` (`identificacion`, `nombre`, `fecha`, `tipo`, `eps`, `correo`, `telefono`, `direccion`, `condicion`, `enfermedad`, `medicamentos`)
VALUES ('$identificacion','$nombre','$fecha','$tipo','$eps','$correo','$telefono','$direccion','$condicion','$enfermedad', '$medicamentos')

 ON DUPLICATE KEY UPDATE `nombre`= '$nombre';");

 ?>
