<?php
	include "../func/function.php";
	connect();
	$nip = $_POST['nip'];
	$nama = $_POST['nama'];
	$username = $_POST['username'];
	$password = $_POST['password'];
	$level = $_POST['level'];
	$jabatan = $_POST['jabatan'];
	$id_cab = $_POST['kd_cab'];
	//$nip.$username.$password.$level.$nama.$jabatan.$id_cab;
	simpan_data_user($nip, $nama, $username, $password, $level, $jabatan, $id_cab);
?>