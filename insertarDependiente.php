<?php include ('conexion.php');

$identificacion=$_GET['identificacion'];
$nombre=$_GET['nombre'];
$fecha=$_GET['fecha'];
$tipo=$_GET['tipo'];
$eps=$_GET['eps'];
$correo=$_GET['correo'];
$telefono=$_GET['telefono'];
$direccion=$_GET['direccion'];
$usuariofk=$_GET['usuariofk'];

ejecutarSQLCommand("INSERT INTO `dependiente` (identificacion, nombre, fecha, tipo, eps, 
	correo, telefono, direccion, usuariofk)
VALUES ( '$identificacion', '$nombre', '$fecha', '$tipo', '$eps', '$correo', 
	'$telefono','$direccion','$usuariofk')

 ON DUPLICATE KEY UPDATE `nombre`= '$nombre';");

 ?>