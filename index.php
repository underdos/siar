<html>
<?php
session_start();
require "func/function.php";
if(! is_user()){
	header('location:login.php');
}
?>
	<head>
		<title>SI-AR - PT. Luxindo</title>
		<link rel="stylesheet" href="css/siar.css" />
		<script src="js/jquery-1.5.2.min.js" type="text/javascript"></script>
		<script src="js/jquery.form.js" type="text/javascript"></script>
		<script src="js/jquery.price_format.2.0.js" type="text/javascript"></script>
	</head>
	<body class="index">
		<div id="container">
			<div id="header">
				<?php 
					include "pages/header.php"; 
				?>
			</div><br/>
			<div id="main">
				<div id="nav">
				<?php 
					include "pages/navigasi.php"; 
				?>
				</div>
				<div id="main-content">
				
				</div>
			</div>
			<br>
			<div id="footer">
				<?php 
					include "pages/footer.php"; 
				?>			
			</div>
		</div>
		<script type="text/javascript">	
		$(document).ready(function(){
				$('#menu a').click(function(e){
						e.preventDefault();
						var page = $(this).attr('href');
						$('#main-content').load('pages/'+page+'.php');
							 document.title = "ADMIN - " + $(this).text();
							 document.location.hash= page;
							 return false;
				});
		});
		</script>
	</body>
</html>