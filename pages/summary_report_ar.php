<?php
session_start();
require_once "../func/function.php";
is_user();
?>
<h6 id='navtitle'>&nbsp;</center></h6>	
<div>
	<h3><img src='img/summary-report.png' width='30px' height='30px' class='middle' >&nbsp;&nbsp; Report Summary AR</h3><hr/>
	<h4 class='subtitle' id='data-user'>Report Summary AR (Account Receivable) All Branchs</h4>
	<table width='30%' id='tbl-data-user' cellpadding='2px'>
		<tr>
			<th align='left'>Period</th>
			<td > 
				<select name='period' required='' class='report_box' id='period'>
					<option value='2015-01-31'>Januari 2015</option>
					<option value='2015-02-31'>Februari 2015</option>
					<option value='2015-03-31'>Maret 2015</option>
					<option value='2015-04-31'>April 2015</option>
					<option value='2015-05-31'>Mei 2015</option>
					<option value='2015-06-31'>Juni 2015</option>
					<option value='2015-07-31'>Juli 2015</option>
					<option value='2015-08-31'>Agustus 2015</option>
					<option value='2015-09-31'>September 2015</option>
					<option value='2015-10-31'>Oktober 2015</option>
					<option value='2015-11-31'>November 2015</option>
					<option value='2015-12-31'>Desember 2015</option>
					<option value='' selected></option>
				</select>		 
			</td>
		</tr>
	</table><br/>	
	<div id='content-summary-ar'>
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
			<tr>
				<th colspan='6'>Total Outstanding AR</th>
				<th>-</th>
				<th></th>
			</tr>			
		</table>
	</div>	
</div>
<h6 id='navtitle1'>&nbsp;</center></h6>	
<script language="JavaScript">
$(document).ready(function(){
	$('.amount').priceFormat({ 
		prefix: '', 
		centsSeparator: ',', 
		thousandsSeparator: '.', 
		centsLimit: 0 ,
		allowNegative: true		
	});
	$('#period').change(function(){
		var period = this.value;
		$('#content-summary-ar').load('pages/t_summary_report_ar.php?period='+period);
	});
});
</script>