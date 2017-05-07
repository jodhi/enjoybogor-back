<?php

$localhost = "127.0.0.1";
$username_db = "root";
$password_db = "root";
$dbname = "enjoybogor_data";

	// buat koneksi
	$connect = new mysqli($localhost,$username_db,$password_db,$dbname);
	
	// cek koneksi
	if($connect->connect_error)
	{
		die("connection failed : " . $connect->connect_error);
	}
	else
	{
		// echo "Sucsessfully Connected";
	}
	
?>
