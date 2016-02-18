<?php
session_start();
require_once "../func/function.php";
is_user();
?>
<h6 id='navtitle'>&nbsp;</center></h6>
<div>
	<h3><img src='img/user_management.png' width='30px' height='30px' class='middle' >&nbsp;&nbsp; Data Cabang</h3><hr/>
	<h4 class='subtitle' id='add-user'>+ Tambah Data Cabang</h4>
	<div id="loader" >
		<img src="img/loaders.gif" alt="Loading...." title="Loading...." width="100px" height="100px"/>
	</div>	
	<div id='form-add-user'>
		<h5>Form Input Data Cabang</h5>
		<form id='form-user' name='form-user' action='pages/simpan.php' method='post'>
			<table cellpadding='1' width='100%'>
				<tr>
					<td width='25%'>NIP</td>
					<td width='5%'> : </td>
					<td width='70%'><input type='text' required='' name='nip' class='txtfield2' size='10' autocomplete="off" /></td>
				</tr>
				<tr>
					<td>NAMA</td>
					<td> : </td>
					<td><input type='text' name='nama' required='' class='txtfield2' size='20' autocomplete="off" /></td>
				</tr>
				<tr>
					<td>USERNAME</td>
					<td> : </td>
					<td><input type='text' name='username' required='' class='txtfield2' size='20' autocomplete="off" /></td>
				</tr>
				<tr>
					<td>PASSWORD</td>
					<td> : </td>
					<td><input type='text' name='password' required='' class='txtfield2' size='20' autocomplete="off" /></td>
				</tr>
				<tr>
					<td>USER LEVEL</td>
					<td> : </td>
					<td>
						<select name='level' required='' class='txtfield2'>
							<option value='1'>Administrator</option>
							<option value='2'>User</option>
							<option value='3'>Guest</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>JABATAN</td>
					<td> : </td>
					<td>
						<select name='jabatan' required='' class='txtfield2'>
							<option value='Staff Accounting'>Staff Accounting</option>
							<option value='Manajer Accounting'>Manajer Accounting</option>
							<option value='Branch Controller'>Branch Controller</option>
						</select>				
					</td>
				</tr>
				<tr>
					<td>KODE CABANG</td>
					<td> : </td>
					<td><input type='text' name='kd_cab' required='' class='txtfield' size='5' autocomplete="off" /></td>
				</tr>
				<tr>
					<td colspan='3' align='right'>
						<hr/>
						<input type='image' id='save' src='img/save.png' width='100px' height='40px' />
					</td>
				</tr>
			</table>
		</form>
	</div>
	<h4 class='subtitle' id='data-user'>Records Data Cabang PT. Luxindo Raya</h4>
	<div >
		<table width='95%' id='tbl-data-user' cellpadding='2px'>
			<tr>
				<th width='4%' >No</th>
				<th width='11%' >NIP</th>
				<th width='25%' >Nama</th>
				<th width='10%' >Username</th>
				<th width='10%' >Password</th>
				<th width='5%' >Level</th>
				<th width='20%' >Jabatan</th>
				<th width='5%' >Cab</th>
				<th width='10%' >Control</th>
			</tr>
			<?php
				connect();
				$i=1;
				foreach(tampil_data_user() as $data){
					echo "<tr>";
					echo "<td align='center'>".$i."</td>";
					echo "<td align='center'>".$data['nip']."</td>";
					echo "<td>".$data['nama']."</td>";
					echo "<td align='center'>".$data['username']."</td>";
					echo "<td align='center'>".$data['password']."</td>";
					echo "<td align='center'>".$data['level']."</td>";
					echo "<td>".$data['jabatan']."</td>";
					echo "<td align='center'>".$data['id_cab']."</td>";
					echo "<td align='center'><input type='image' src='img/delete.png' class='delete' value = '".$data['nip']."' /></td>";
					echo "</tr>";
					$i+=1;
				}
			?>
		</table>
	</div>
<h6 id='navtitle1'>&nbsp;</center></h6>	
	<script type='text/javascript'>
	//show hide form add user
	$(document).ready(function(){
		$('#add-user').click(function(){
			$('#form-add-user').toggle(1000);
		});
	});
	//ketika tombol trash diklik
	$('.delete').click(function(){
		var delete_id = this.value;
		var konfirm = confirm('Apakah Anda Yakin Akan Menghapus User dengan NIP '+delete_id+' ini ?');
		var url = "pages/hapus.php";					
		if(konfirm){
			$.post(url,{id: delete_id})
				.done(function(data) {
				console.log(data);
				$('#main-content').load('pages/user_management.php');
			});
		}else{
		}				
	});
	//save data user
	var f = $('#form-user');
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
					$('#main-content').load('pages/user_management.php');					
				},
				error: function(e){
					b.removeAttr('disabled');
				}
			});
	});		
	</script>
</div>