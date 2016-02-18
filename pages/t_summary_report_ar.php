<?php
session_start();
require_once "../func/function.php";
is_user();
$period = $_GET['period'];
?>
		<table width='90%' id='tbl-data-user' cellpadding='2px'>
			<tr>
				<th width='4%' >No</th>
				<th width='10%' >NIP</th>
				<th width='25%' >Nama</th>
				<th width='17%' >Jabatan</th>
				<th width='4%' >Kode</th>				
				<th width='17%' >Cabang</th>
				<th width='15%' >Saldo</th>
				<th width='10%' >Detail</th>
			</tr>
			<?php
				connect();
				$i=1;
				foreach(tampil_summary_ar($period) as $data){
					echo "<tr>";
					echo "<td align='center'>".$i."</td>";
					echo "<td align='center'>".$data['nip']."</td>";
					echo "<td>".$data['nama']."</td>";
					echo "<td align='center'>".$data['jabatan']."</td>";
					echo "<td align='center'>".$data['id_cab']."</td>";
					echo "<td align='center'>".$data['nama_cab']."</td>";
					echo "<td class='amount' align='right'>".$data['amount']."</td>";
					echo "<td align='center' id='detail'><a href='report_ar_s.php?nip=".$data['nip']."&period=".$data['period']."' >Detail AR</a></td>	";
					echo "</tr>";
					$i+=1;
				}
			?>
			<tr>
				<th colspan='6'>Total Outstanding AR</th>
				<th align='right' class='amount'><?php foreach(subtotal_summary_ar($period) as $jumlah); echo $jumlah['jamount']; ?></th>
				<th></th>
			</tr>			
		</table>
<script language="JavaScript">
$(document).ready(function(){
	$('.amount').priceFormat({ 
		prefix: '', 
		centsSeparator: ',', 
		thousandsSeparator: '.', 
		centsLimit: 0 ,
		allowNegative: true		
	});
	$('#detail a').click(function(){
			//var nip = $(this).attr('id').value;
			//var period = $(this).attr('id').value;
			//var nama = $(this).attr('id').value;
			var page = $(this).attr('href');
			$('#main-content').load('pages/'+page);
				 document.title = "ADMIN - " + $(this).text();
				 document.location.hash= page;
				 return false;
	});
});
</script>