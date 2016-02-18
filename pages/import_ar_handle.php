<?php  
include "../func/function.php";
connect();
$size = $_FILES[imp_ar][size];
$temp_name = $_FILES[imp_ar][tmp_name];
if ($size > 0) { 
    //get the csv file 
    $file = $temp_name; 
    $handle = fopen($file,"r");      
    //perulangan untuk menginput row pada file csv ke database
    do { 
        if ($data[0]) { 
					$data1=$data[0];
					$data2=$data[1];
					$data3=$data[2];
					$data4=$data[3];
					$data5=$data[4];
					$data6=$data[5];
					$data7=$data[6];
					$data8=$data[7];
					$data9=$data[8];					
					$hasil=import($data1, $data2, $data3, $data4, $data5, $data6, $data7, $data8, $data9);
        } 
    } while ($data = fgetcsv($handle,1000,",","'")); 
} 
?> 