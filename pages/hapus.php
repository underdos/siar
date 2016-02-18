<?php
	include "../func/function.php";
	connect();
	$nip = $_POST['id'];
	delete_user($nip);
?>