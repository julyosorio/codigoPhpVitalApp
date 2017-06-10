<?php include ('conexion.php');

$user=$_GET['user'];

if ($resultado=getSQLResultset("SELECT * FROM `usuario` WHERE user='$user'")) {
	while ($row=$resultado->fetch_array(MYSQLI_NUM)){
		echo json_encode($row);
	}
}


?>