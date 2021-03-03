<?php
	$hostname="localhost";
	$username="root";
	$password="v";
	$database="smartphone";

	$db = mysqli_connect($hostname, $username, $password, $database);
	mysqli_set_charset($db, "UTF8");
?>