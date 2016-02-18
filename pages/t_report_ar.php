<?php
session_start();
require_once "../func/function.php";
is_user();
$nip = $_GET['nip'];
$period = $_GET['period'];
?>
	<table width='95%' id='tbl-data-user' cellpadding='2px'>
		<tr>
			<th width='4%' >No</th>
			<th width='8%' >Date</th>
			<th width='10%' >Voucher</th>
			<th width='40%' >Description</th>
			<th width='10%' >Debit</th>
			<th width='10%' >Credit</th>
			<th width='20%' >Infos</th>				
		</tr>
	<?php
		connect();
		$i=1;
		foreach(tampil_data_ar($nip,$period) as $data){
			echo "<tr>";
			echo "<td align='center'>".$i."</td>";
			echo "<td align='center'>".$data['tgl']."</td>";
			echo "<td align='center'>".$data['voucher']."</td>";
			echo "<td align='left'>".$data['deskripsi']."</td>";
			echo "<td class='amount' align='right'>".$data['debit']."</td>";
			echo "<td class='amount' align='right'>".$data['credit']."</td>";
			echo "<td align='left'>".$data['remarks']."</td>	";
			echo "</tr>";
			$i+=1;
		}
		foreach(subtotal_ar($nip,$period) as $jumlah);
	?>
		<tr>
			<th align='center' colspan='4'>SUBTOTAL</th>
			<th class='amount' align='center'><?php echo $jumlah['jdebit']; ?></th>
			<th class='amount' align='center'><?php echo $jumlah['jcredit']; ?></th>
			<th align='left'></th>			
		</tr>
	</table>
<script language="JavaScript">
$(document).ready(function(){
$('.amount').priceFormat({ 
		prefix: '', 
		centsSeparator: ',', 
		thousandsSeparator: '.', 
		centsLimit: 0,
		allowNegative: true		
	});
});
</script>