<?php
	include "../func/function.php";
	connect();
	
	$nip = $_POST['nip'];
	$period = $_POST['period'];
	$voucher = $_POST['voucher'];
	$isi_komplain = $_POST['isi_komplain'];
	//echo $nip.$period.$voucher.$isi_komplain.$submit;
	simpan_data_komplain($nip, $period, $voucher, $isi_komplain);
?>