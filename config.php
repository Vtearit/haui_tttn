<?php 
	$hostname = "localhost";
	$user = "root";
	$password = "";
	$database = "hungphat_computer";
	$db = mysqli_connect($hostname,$user,$password,$database);
	mysqli_set_charset($db,"UTF8");