<?php
include('conexion.php');
$identificacion=$_GET["identificacion"];


if($resultset=getSQLResultSet("SELECT * FROM `dependiente` WHERE identificacion='$identificacion'")){
	while ($row = $resultset->fetch_array(MYSQLI_NUM)){
		echo json_encode($row);
	}
}

?>