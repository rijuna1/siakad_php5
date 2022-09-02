<html>
<head>
<meta http-equiv="refresh" content="3" />
<?php 
if($_GET[act]==''){
  if ($_GET[gettgl]){
    $filtertgl = $_GET[gettgl];
    $exp = explode('-',$_GET[gettgl]);
    $tglc = $exp[2];
    $blnc = $exp[1];
    $thn = $exp[0];
  }else{
    if (isset($_POST[tgl])){ $tgl = $_POST[tgl]; }else{ $tgl = date("d"); }
    if (isset($_POST[bln])){ $bln = $_POST[bln]; }else{ $bln = date("m"); }
    if (isset($_POST[thn])){ $thn = $_POST[thn]; }else{ $thn = date("Y"); }
    $lebartgl=strlen($tgl);
    $lebarbln=strlen($bln);

    switch($lebartgl){ 
      case 1: { $tglc="0".$tgl; break; }
      case 2: { $tglc=$tgl; break; }      
    } 

    switch($lebarbln){ 
      case 1: { $blnc="0".$bln; break; }
      case 2: { $blnc=$bln; break; }      
    }

    $filtertgl = $thn."-".$blnc."-".$tglc;
  }

  

    $ex = explode('-',$filtertgl);
    $tahun = $ex[0];
    $bulane = $ex[1];
    $tanggal = $ex[2];
    if (substr($tanggal,0,1) == '0'){ $tgle = substr($tanggal,1,1); }else{ $tgle = substr($tanggal,0,2); }
    if (substr($bulane,0,1) == '0'){ $blnee = substr($bulane,1,1); }else{ $blnee = substr($bulane,0,2); }

    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Daftar Siswa Keluar : <b style='color:red'>".tgl_indo("$filtertgl")."</b></h3>
                </div>
              <div class='box-body'>";

              
 
            echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered table-striped'>
                      <thead>
                      <tr>
                        <th>No</th>
                        <th>NISN</th>
                        <th>Nama Siswa</th>
						
						
                      </tr>
                    </thead>
                    <tbody>";
                     $sekarangabsen = date("Y-m-d");
                    $no = 1;
                    $tampil = mysql_query("SELECT * FROM rb_siswa a JOIN rb_barcode b ON a.nisn=b.nisn where b.tanggal_absen='$sekarangabsen' ORDER BY a.id_siswa,b.status_keluar,b.tanggal_absen ASC");
                    while($r=mysql_fetch_array($tampil)){
					
                   if ($r['status_masuk']== 'Y' AND $r['status_keluar']=='N'){
                    echo "<tr bgcolor=$warna>
                            <td>$no</td>
                            <td>$r[nisn]</td>
                            <td>$r[nama]</td>
                             ";
							 $no++;
                      }
					  }

                    echo "</tbody>
                  </table>
                </div>
              </div>";
             
              echo "</form>
            </div>";
				$waktu= date ('H:i:s');
				$tgl = date('Y-m-d');
                if (isset($_POST[simpann])){
                   
               

                   
                    if ($query){
                      echo "<script>document.location='index.php?view=absen_kel';</script>";
                    }else{
                      echo "<script>document.location='index.php?view=absen_kel';</script>";
                    }
                }
}
?>
</head>
</html>