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

	date_default_timezone_set("Asia/Jakarta");

function masuk($var){
	if($var=='Y'){
		$status="Sudah";
		return $status;
	}
	else if($var=='N'){
		$status="Belum";
		return $status;
	}
}

function keterangan($var){
	if($var=='I'){
		$status="IZIN";
		return $status;
	}
	else if($var=='S'){
		$status="SAKIT";
		return $status;
	}
	else if($var=='M'){
		$status="HADIR";
		return $status;
	} else {
		$status="-";
		return $status;
	}
}

function kehadiran($var){
	if($var=='I'){
		$status="Tidak Masuk";
		return $status;
	}
	else if($var=='S'){
		$status="Tidak Masuk";
		return $status;
	}
	else if($var=='M'){
		$status="Masuk";
		return $status;
	} else {
		$status="-";
		return $status;
	}
}

    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Daftar Siswa Keluar : <b style='color:red'>".tgl_indo("$filtertgl")."</b></h3>
                </div>
              <div class='box-body'>";

                  if (isset($_GET['sukses'])){
                      echo "<div class='alert alert-success alert-dismissible fade in' role='alert'> 
                          <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                          <span aria-hidden='true'>×</span></button> <strong>Sukses!</strong> - Data telah Berhasil Di Proses,..
                          </div>";
                  }elseif(isset($_GET['gagal'])){
                      echo "<div class='alert alert-danger alert-dismissible fade in' role='alert'> 
                          <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                          <span aria-hidden='true'>×</span></button> <strong>Gagal!</strong> - Data tidak Di Proses, terjadi kesalahan dengan data..
                          </div>";
                  }
 
                  echo "

              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
              <div class='col-md-12'>
              <table class='table table-condensed table-hover'>
                  <tbody>
                    <tr><th scope='row'>No Induk</th>  <td><input type='text' class='form-control' value='' name='cc' size='1' autofocus></td></tr>
                  </tbody>
              </table>
              </div>

              <input type='hidden' name='tgla' value='$tglc'>
              <input type='hidden' name='blna' value='$blnc'>
              <input type='hidden' name='thna' value='$thn'>
             
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered table-striped'>
                      <thead>
                      <tr>
                        <th>No</th>
                        <th>NISN</th>
                        <th>Nama Siswa</th>
						<th>Status Keluar</th>
						
                      </tr>
                    </thead>
                    <tbody>";
                     $sekarangabsen = date("Y-m-d");
                    $no = 1;
                    $tampil = mysql_query("SELECT * FROM rb_siswa a JOIN rb_barcode b ON a.nisn=b.nisn where b.status_keluar='Y' ORDER BY a.id_siswa,b.status_keluar,b.tanggal_absen ASC");
                    while($r=mysql_fetch_array($tampil)){
                    if ($_GET[gettgl]){
                      $sekarangabsen = $_GET[gettgl];
                    }else{
                      if (isset($_POST[lihat])){
                        $sekarangabsen = $thn."-".$blnc."-".$tglc;
                      }else{
                        $sekarangabsen = date("Y-m-d");
                      }
                    }

                    $a = mysql_fetch_array(mysql_query("SELECT * FROM rb_barcode where tanggal_absen='$sekarangabsen' AND nisn='$r[nisn]'"));
                    echo "<tr bgcolor=$warna>
                            <td>$no</td>
                            <td>$r[nisn]</td>
                            <td>$r[nama]</td>
                           
							<td>".masuk($r['status_keluar'])."</td>
                             ";
							 $no++;
                      }

                    echo "</tbody>
                  </table>
                </div>
              </div>";
              if($_SESSION[level]!='kepala'){ 
                echo "<div class='box-footer'>
                      <button type='hidden' name='simpann' class=''> </button>
                     
                </div>";
              }
              echo "</form>
            </div>";
				$waktu= date ('H:i:s');
				$tgl = date('Y-m-d');
                if (isset($_POST[simpann])){
                    mysql_query("UPDATE rb_barcode SET jam_keluar='$waktu',
														status_keluar='Y' where nisn='$_POST[cc]' ");
               

                   
                    if ($query){
                      echo "<script>document.location='index.php?view=absen_kel';</script>";
                    }else{
                      echo "<script>document.location='index.php?view=absen_kel';</script>";
                    }
                }
}