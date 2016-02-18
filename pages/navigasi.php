<h3 id='navtitle'><center>NAVIGASI</center></h3><br/>
<ul id="menu">
	<?php 
		$user_management = "<a href='user_management'><li title='Menambah, Mengubah serta menghapus User Account' ><img src='img/user_management.png' width='30px' height='30px' class='middle' >&nbsp; DATA CABANG</li></a>";
		$import_data_ar = "<a href='import_ar'><li title='Import data AR ke SIAR'><img src='img/import.png' width='30px' height='30px' class='middle' >&nbsp; IMPORT DATA AR</li></a>";
		$report_ar = "<a href='report_ar'><li title='Melihat Report AR'><img src='img/report.png' width='30px' height='30px' class='middle' >&nbsp; REPORT AR</li></a>";
		$summary_report_ar = "<a href='summary_report_ar'><li title='Melihat Summary Report AR'><img src='img/summary-report.png' width='30px' height='30px' class='middle' >&nbsp; REPORT SUMMARY AR</li></a>";
		$submit_report_ar = "<a href='submit_komplain_ar'><li title='Submit Report AR'><img src='img/submit-report.png' width='30px' height='30px' class='middle' >&nbsp; KOMPLAIN DATA AR</li></a>";
		$request_new_user = "<a href='request_new_user'><li title='Permohonan Pembuatan User atau Perubahan Password'><img src='img/user_management.png' width='30px' height='30px' class='middle' >&nbsp; REQUEST NEW USER</li></a>";
		$level = $_SESSION['level'];
		if($level==1){
			echo $user_management.$import_data_ar.$report_ar.$summary_report_ar.$submit_report_ar;
		} elseif($level == 2){
			echo $summary_report_ar;
		} else{
			echo $report_ar.$submit_report_ar;
		}							
	?>					
</ul>
<br/>
<h3 id='navtitle1'>&nbsp;</h3>