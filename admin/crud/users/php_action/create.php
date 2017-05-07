<?php

require_once '../../../connect/db_connect.php';

if($_POST)
{
	$user_name = $_POST['user_name'];
	$user_contact = $_POST['user_contact'];
	$email = $_POST['email'];
	$hashpassword = $_POST['password'];
	
	$password = hash('sha256', $hashpassword);
	
	$sql = "INSERT INTO users (user_id,user_name,date_signup,points,user_contact,email,password,active) VALUES ('','$user_name',NOW(),0, '$user_contact', '$email', '$password',1)";
	if($connect->query($sql) === TRUE)
	{
		echo "<p> New User Successfully Created</p>";
		echo "<a href='../create.php'><button type='button'>Back</button></a>";
		echo "<a href='../index.php'><button type='button'>User</button></a>";
		echo "<a href='../../../home.php'><button type='button'>Home</button></a>";
	}
	else
	{
		echo "Error " . $sql . ' ' . $connect->connect_error;
	}
	
	$connect->close();
}

?>