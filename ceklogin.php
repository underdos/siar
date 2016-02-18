<?php
	session_start();
	$username = $_POST['username'];
	$password = $_POST['password'];
	require_once "func/function.php";
	connect();	
	if(login($username,$password)){
		header('location:index.php');
	} else{
		header('location:login.php');		
	}
?>