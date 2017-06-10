<?php
include('conexion.php');
$registro=$_GET["registro"];


if($resultset=getSQLResultSet("SELECT * FROM `profesional` WHERE registro='$registro'")){
	while ($row = $resultset->fetch_array(MYSQLI_NUM)){
		echo json_encode($row);
	}
}

?>