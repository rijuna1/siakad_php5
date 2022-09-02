<html>
<head>
<meta http-equiv="refresh" content="3" />
<?php
	$tgl= date('Y-m-d');
			$sql_siswa = $db->database_prepare("select * from absen,siswa where 
						 siswa.no_induk=absen.no_induk
						 order by absen.no_induk ASC")->execute();
			
	echo "<h4>Monitoring Siswa</h4>
	
	<div class='box round first fullpage'>
	<div class='box round first fullpage'><b><b>".tgl_indo($tgl)."</b></b></div>
	<br>
		
	</div>
	";
	echo"
	<table class='data display datatable' id='example'>
	<thead>
  <tr>
    <td>Nis</td>
	<td>Nama Siswa</td>
	
  </tr>
  </thead>";

  while ($data_siswa = $db->database_fetch_array($sql_siswa)){
	   if ($data_siswa['status_masuk']== 'Y' AND $data_siswa['status_keluar']=='N'){
  echo "<tr>
    <td>".$data_siswa['no_induk']."</td>
	<td>".$data_siswa['nama_lengkap']."</td>

	
  </tr>";
	   } else {
		   echo ""; 
	   }
  }
  
echo "  
</table>
	";
?>
</head>
</html>