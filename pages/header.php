<div id="logo">
	<img src="img/logo.png" width="200px" height="70px" />
</div>
<div id="profile">
	<?php 
				$username = $_SESSION['username']; 
				$level = $_SESSION['level'];
				$nama = $_SESSION['nama'];
				$nip = $_SESSION['nip'];
				if($level==1){
					$label_level = "Administrator";
				} elseif($level == 2){
					$label_level = "Privilege User";
				} else{
					$label_level = "User";
				}
				echo "Hi, ".$username." &nbsp<i>( You Logged As ".$label_level." )</i>";
			?>
	&nbsp; &nbsp;
	<a href="logout.php"><img title="LOGOUT" class="middle" src="img/padlock.png" width="45px" height="45px" /></a>
</div>