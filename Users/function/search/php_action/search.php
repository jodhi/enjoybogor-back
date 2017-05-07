
<?php
function search($search)
{
    require_once '../../../connect/db_connect.php';
    $sql = "SELECT * FROM restaurants WHERE (restaurant_name LIKE '%".$search."%' OR restaurant_address LIKE '%".$search."%' OR restaurant_category LIKE '%".$search."%' OR restaurant_description LIKE '%".$search."%') AND active = 2";
    $result = $connect->query($sql);

    if ($result->num_rows >0) {
        while ($row = $result->fetch_assoc()) {
            echo "
		<tr>
			<td> ".$row['restaurant_name']."</td>
			<td> ".$row['restaurant_address']."</td>
			<td>".$row['restaurant_category']."</td>
			<td>".$row['restaurant_contact']."</td>
		</tr>";
        }
    } else {
        echo "<tr><td colspan='5'><center>No Data Available</center></td></tr>";
    }
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Enjoy Bogor</title>

	<style type="text/css">
		.manageMember
		{
			width: 50%;
			margin: auto;
		}

		table
		{
			width: 100%;
			margin-top: 20px;
		}
	</style>

</head>
<body>

<div class="manageMember">
	<a href="create.php"><button type="button">Add Member</button></a>
	<a href="../../home.php"><button type="button">Home</button></a>
	<table border="1" cellspacing="0" cellpadding="0">
		<thead>
			<tr>
				<th>Name</th>
				<th>Contact</th>
				<th>E-mail</th>
				<th>Option</th>
			</tr>
		</thead>
		<tbody>
		<?php

        $search = $_POST['search'];
        search($search);
        ?>
		</tbody>
	</table>
</div>

</body>
</html>
</html>
