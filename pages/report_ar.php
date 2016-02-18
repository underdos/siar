<?php
session_start();
?>
<h6 id='navtitle'>&nbsp;</center></h6>	
<div>
<h3><img src='img/report.png' width='30px' height='30px' class='middle' >&nbsp;&nbsp;Report AR</h3><hr/>
	<div id="loader" >
		<img src="img/loaders.gif" alt="Loading...." title="Loading...." width="100px" height="100px"/>
	</div>
	<h4 class='subtitle' id='data-user'>Detail AR ( Account Receivable )</h4>
	<div >
		<form name='report_ar' id='report_ar' method='post' action='' />
			<table width='30%' id='tbl-data-user' cellpadding='2px'>
				<tr>
					<th width='30%' align='left'>NIP</th>
					<td width='70%' > <input disabled value="<?php echo $_SESSION['nip']; ?>" type="text" name="nip" id='nip' class="report_box" width="100%" /> </td>
				</tr>
				<tr>
					<th align='left'>Nama</th>
					<td > <input disabled value="<?php echo $_SESSION['nama']; ?>" type="text" name="nama" class="report_box" width="100%" /> </td>
				</tr>
				<tr>
					<th align='left'>Type</th>
					<td > <input disabled value="Advance" type="text" name="type" class="report_box" width="100%" /> </td>
				</tr>
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
		</form>
		<div id='content-data-ar' >		
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
				<tr>
					<th align='center' colspan='4'>SUBTOTAL</th>
					<th align='center'>-</th>
					<th align='center'>-</th>
					<th align='left'></th>			
				</tr>
			</table>
		</div><br/>
		&nbsp;&nbsp;<a id='print' href='' target='_blank' ><input type='image' src='img/save_pdf.png' width='100px' height='40px' /></a>
	</div>	
</div>
<h6 id='navtitle1'>&nbsp;</center></h6>	
<script language="JavaScript">
$(document).ready(function(){
	$('.amount').priceFormat({ 
		prefix: 'Rp. ', 
		centsSeparator: ',', 
		thousandsSeparator: '.', 
		centsLimit: 2 
	});
	$('#period').change(function(){
		var nip = document.getElementById('nip').value;
		var period = this.value;
		document.getElementById('print').href='pages/p_report_ar.php?nip='+nip+'&period='+period;
		$('#content-data-ar').load('pages/t_report_ar.php?nip='+nip+'&period='+period);
	});
});
</script>