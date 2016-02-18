<h6 id='navtitle'>&nbsp;</center></h6>	
<div>
	<div id="loader" >
		<img src="img/loaders.gif" alt="Loading...." title="Loading...." width="100px" height="100px"/>
	</div>
	<h3><img src='img/import.png' width='30px' height='30px' class='middle' >&nbsp;&nbsp; Import Data AR</h3><hr/>
	<center>
	<h4 class='subtitle' id='add-user'>Form Import Data AR</h4>
	<form id='form-import' name='form-import' action='pages/import_ar_handle.php' enctype='multipart/form-data' method='post'>
		<table cellpadding='5' width='100%'>
			<tr>
				<td width='30%'>File AR to Import</td>
				<td width='5%'> : </td>
				<td width='65%'><input type='file' name='imp_ar' size='10' required='' /></td>
			</tr>
			<tr>
				<td width='65%' colspan='3' align='center'><input type='image' id='import' src='img/btn_import.png' width='100px' height='40px' /></td>
			</tr>
		</table>
	</form>
	</center><br/>
	<div id="sukses" >
		<h4 class="alert_success">Import Data AR Berhasil..!</h4>
	</div>
</div>
<h6 id='navtitle1'>&nbsp;</center></h6>	
<script language='JavaScript' type='text/javascript'>
$(document).ready(function(){
	//imporr data ar
	var f = $('#form-import');
	var l = $('#loader'); // loader
	var s = $('#sukses'); //sukses
	var b = $('#import'); // import button	
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
					s.show();										
				},
				error: function(e){
					b.removeAttr('disabled');
				}
			});
	});
});
</script>
