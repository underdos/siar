<?php

error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
function connect() {
	global $pdo;	
	try{
		$pdo = new PDO("mysql:host=localhost; dbname=siar", 'root', '261291net');
	}catch(PDOException $e){
		die('koneksi gagal'.$e->getMessage());
	}
}
	
function login($username, $password){
	global $pdo;
	$stmt = "select nip, username, nama, level from user where username='$username' and password='$password' limit 1";
	$qry = $pdo->prepare($stmt);
	$qry->execute();
	if($data = $qry->fetch(PDO::FETCH_OBJ)){
		$_SESSION['username'] = $data->username;
		$_SESSION['nip'] = $data->nip;
		$_SESSION['level'] = $data->level;
		$_SESSION['nama'] = $data->nama;
		return true;
	} else{
		return false;
	}	
}

function is_user(){
	if (isset($_SESSION['username']))
		return true;
}

function simpan_data_user($nip, $nama, $username, $password, $level, $jabatan, $id_cab) {
	global $pdo;
	$stmt = "insert into user values('$nip', '$username', '$password', $level, '$nama', '$jabatan', $id_cab)";
	$qry = $pdo->prepare($stmt);
	
	if($qry->execute()){
		return true;
	}else{
		return false;
	}
}

function simpan_data_komplain($nip, $period, $voucher, $isi_komplain) {
	global $pdo;
	$stmt = "insert into data_komplain values('', '$nip', '$voucher', '$period', '$isi_komplain' )";
	$qry = $pdo->prepare($stmt);
	
	if($qry->execute()){
		return true;
	}else{
		return false;
	}
}

function tampil_data_user(){
	global $pdo;
	$stmt = "select * from user order by level, id_cab asc";
	$qry = $pdo->prepare($stmt);
	try{
		$qry->execute();
	} catch(PDOException $e){
		die($e->getMessage());
	}
	return $qry->fetchAll();	
}

function getName($nip){
	global $pdo;
	$stmt = "select nama from  user where nip='$nip'";
	$qry = $pdo->prepare($stmt);
	try{
		$qry->execute();
	} catch(PDOException $e){
		die($e->getMessage());
	}
	return $qry->fetchAll();	
}

function tampil_data_ar($nip, $period){
	global $pdo;
	$stmt = "select * from data_ar where nip='$nip' and period='$period'";
	$qry = $pdo->prepare($stmt);
	try{
		$qry->execute();
	} catch(PDOException $e){
		die($e->getMessage());
	}
	return $qry->fetchAll();	
}

function subtotal_ar($nip, $period){
	global $pdo;
	$stmt = "select sum(debit) as jdebit, sum(credit) as jcredit from data_ar where nip='$nip' and period='$period'";
	$qry = $pdo->prepare($stmt);
	try{
		$qry->execute();
	} catch(PDOException $e){
		die($e->getMessage());
	}
	return $qry->fetchAll();	
}

function tampil_summary_ar($period){
	global $pdo;
	$stmt = "select user.nip, user.nama, user.jabatan,cabang.id_cab , cabang.nama_cab, summary_data_ar.amount, summary_data_ar.period from user, summary_data_ar, cabang where user.nip = summary_data_ar.nip and user.id_cab = cabang.id_cab and summary_data_ar.period='$period' order by id_cab, nip asc" ;
	$qry = $pdo->prepare($stmt);
	try{
		$qry->execute();
	} catch(PDOException $e){
		die($e->getMessage());
	}
	return $qry->fetchAll();	
}

function subtotal_summary_ar($period){
	global $pdo;
	$stmt = "select sum(amount) as jamount from summary_data_ar where period='$period'" ;
	$qry = $pdo->prepare($stmt);
	try{
		$qry->execute();
	} catch(PDOException $e){
		die($e->getMessage());
	}
	return $qry->fetchAll();	
}

function tampil_data_komplain(){
	global $pdo;
	$stmt = "select * from summary_data_komplain";
	$qry = $pdo->prepare($stmt);
	try{
		$qry->execute();
	} catch(PDOException $e){
		die($e->getMessage());
	}
	return $qry->fetchAll();	
}


function delete_user($id) {
	global $pdo;
	$stmt = "delete from user where nip='$id'";
	$qry = $pdo->prepare($stmt);
	
	if($qry->execute()){
		return true;
	}else{
		return false;
	}	
}

function import($data1, $data2, $data3, $data4, $data5, $data6, $data7, $data8, $data9){
	global $pdo;
	$stmt = "INSERT INTO data_ar (nip, id_cab, tgl, voucher, deskripsi, debit, credit, remarks, period) VALUES 
                ( 
                    '".addslashes($data1)."', 
                    '".addslashes($data2)."', 
                    '".addslashes($data3)."',
                    '".addslashes($data4)."',
                    '".addslashes($data5)."',
                    '".addslashes($data6)."',
                    '".addslashes($data7)."',
										'".addslashes($data8)."',
                    '".addslashes($data9)."'										
                ) 
            ";
	$qry = $pdo->prepare($stmt);
	if($qry->execute()){
		return true;
	}else{
		return false;
	}
}

?>
