<?php
session_start();
require_once "../func/function.php";
is_user();
?>
<h6 id='navtitle'>&nbsp;</center></h6>
<div>
	<h3><img src='img/submit-report.png' width='30px' height='30px' class='middle' >&nbsp;&nbsp; Komplain Data AR</h3><hr/>
	<h4 class='subtitle' id='add-user'>Komplain Data AR</h4>
	<div id="loader" >
		<img src="img/loaders.gif" alt="Loading...." title="Loading...." width="100px" height="100px"/>
	</div>	
	<div id='form-komplain-ar'>
		<h5>Form Input Komplain</h5>
		<form id='form-komplain' name='form-komplain' action='pages/simpan_komplain.php' method='post'>
			<table cellpadding='1' width='100%'>
				<tr>
					<td width='25%'>Period</td>
					<td width='5%'> : </td>
					<td width='70%'>
						<select name='period' required='' class='txtfield2' id='period'>
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
				<tr>
					<td>Voucher</td>
					<td> : </td>
					<td><input type='text' name='voucher' required='' class='txtfield2' size='20' autocomplete="off" /></td>
				</tr>
				<tr>
					<td>Isi Komplain</td>
					<td> : </td>
					<td>
						<textarea name='isi_komplain' id='isi_komplain' class='txtarea' cols='50' rows='8'>
						</textarea>
					</td>
				</tr>
				<tr>
					<td colspan='3' align='right'>
						<hr/>
						<input type='image' id='save' src='img/save.png' width='100px' height='40px' />
						<input type='hidden' name='nip' value="<?php echo $_SESSION['nip']; ?>" />
					</td>
				</tr>
			</table>
		</form>
	</div>
	<h4 class='subtitle' id='data-user'>Records Data Komplain AR Cabang PT. Luxindo Raya</h4>
	<div >
		<table width='95%' id='tbl-data-user' cellpadding='2px'>
			<tr>
				<th width='4%' >No</th>
				<th width='10%' >NIP</th>
				<th width='15%' >Nama</th>
				<th width='10%' >Voucher</th>
				<th width='10%' >Period</th>
				<th width='5%' >Cab</th>
				<th width='46%' >Isi Komplain</th>
			</tr>
			<?php
				connect();
				$i=1;
				foreach(tampil_data_komplain() as $data){
					echo "<tr>";
					echo "<td align='center'>".$i."</td>";
					echo "<td align='center'>".$data['nip']."</td>";
					echo "<td>".$data['nama']."</td>";
					echo "<td align='center'>".$data['voucher']."</td>";
					echo "<td align='center'>".$data['period']."</td>";
					echo "<td align='center'>".$data['id_cab']."</td>";
					echo "<td>".$data['isi_komplain']."</td>";
					echo "</tr>";
					$i+=1;
				}
			?>
		</table>
	</div>
<h6 id='navtitle1'>&nbsp;</center></h6>	
	<script type='text/javascript'>
	
	//save data komplain
	var f = $('#form-komplain');
	var l = $('#loader'); // loader
	var b = $('#save'); // save button
	b.click(function(){				
		// action ketika proses saving
				f.ajaxForm({
				beforeSend: function(){
					l.show();
					b.attr('disabled', 'disabled');	
				},
				success: function(e){
					l.hide();
					f.resetForm();
					b.removeAttr('disabled');
					$('#main-content').load('pages/submit_komplain_ar.php');					
				},
				error: function(e){
					b.removeAttr('disabled');
				}
			});
	});
	</script>
</div>