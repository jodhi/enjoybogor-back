<?php

require_once '../../connect/db_connect.php';

if($_GET['menu_id'])
{
	$menu_id = $_GET['menu_id'];
	
	$sql = "SELECT * FROM menus WHERE menu_id = {$menu_id}";
	$result = $connect->query($sql);
	$data = $result->fetch_assoc();
	
	$connect->close();
?>

<!DOCTYPE html>
<html>
<head>
	<title>Delete Menu</title>
</head>
<body>

<h3> Do you really want to remove this Menu?</h3>
<form action="php_action/remove.php" method="post">

	<input type="hidden" name="menu_id" value="<?php echo $data['menu_id'] ?>" />
	<button type="submit">Delete</button>
	<a href="index.php"><button type="button">Back</button></a>
</form>

</body>
</html>

<?php
}
?>