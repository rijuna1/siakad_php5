<?php if ($_GET[act]==''){ ?> 
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Semua Data Guru </h3>
                  <?php if($_SESSION[level]!='kepala'){ ?>
                  <a class='pull-right btn btn-primary btn-sm' href='index.php?view=guru&act=tambahguru'>Tambahkan Data Guru</a>
                  <?php } ?>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>NIP</th>
                        <th>Nama Lengkap</th>
                        <th>No Telpon</th>
                        <th>Status Pegawai</th>
                        <th>Jenis PTK</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $tampil = mysql_query("SELECT * FROM rb_guru a 
                                          LEFT JOIN rb_jenis_kelamin b ON a.id_jenis_kelamin=b.id_jenis_kelamin 
                                            LEFT JOIN rb_status_kepegawaian c ON a.id_status_kepegawaian=c.id_status_kepegawaian 
                                              LEFT JOIN rb_jenis_ptk d ON a.id_jenis_ptk=d.id_jenis_ptk
                                              ORDER BY a.nip DESC");
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    $tanggal = tgl_indo($r[tgl_posting]);
                    echo "<tr><td>$no</td>
                              <td>$r[nip]</td>
                              <td>$r[nama_guru]</td>
                              <td>$r[hp]</td>
                              <td>$r[status_kepegawaian]</td>
                              <td>$r[jenis_ptk]</td>";
                              if($_SESSION[level]!='kepala'){
                        echo "<td><center>
                                <a class='btn btn-info btn-xs' title='Lihat Detail' href='?view=guru&act=detailguru&id=$r[nip]'><span class='glyphicon glyphicon-search'></span></a>
								 <a class='btn btn-default btn-xs' title='Cetak Kartu Pegawai' href='?view=guru&act=card&id=$r[nip]'><span class='glyphicon glyphicon-credit-card'></span></a>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='?view=guru&act=editguru&id=$r[nip]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-warning btn-xs' title='Akses Khusus' href='?view=guru&act=akses&id=$r[nip]'><span class='glyphicon glyphicon-lock'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='?view=guru&hapus=$r[nip]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>";
                              }else{
                                echo "<td><center>
                                <a class='btn btn-info btn-xs' title='Lihat Detail' href='?view=guru&act=detailguru&id=$r[nip]'><span class='glyphicon glyphicon-search'></span></a>
                              </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }
                      if (isset($_GET[hapus])){
                          mysql_query("DELETE FROM rb_guru where nip='$_GET[hapus]'");
                          echo "<script>document.location='index.php?view=guru';</script>";
                      }

                  ?>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
<?php 
}elseif($_GET[act]=='tambahguru'){
  if (isset($_POST[tambah])){
  
  include "Barcode39.php";
$bar = $_POST['aa'];
$mm = guru.'-'.basename($bar);
// set object
$bc = new Barcode39($bar);

// set text size
$bc->barcode_text_size = 5;

// set barcode bar thickness (thick bars)
$bc->barcode_bar_thick = 4;

// set barcode bar thickness (thin bars)
$bc->barcode_bar_thin = 2;

// save barcode GIF file
$bc->draw("foto_pegawai/barcode/".$mm.".gif");
  
      $rtrw = explode('/',$_POST[al]);
      $rt = $rtrw[0];
      $rw = $rtrw[1];
      $dir_gambar = 'foto_pegawai/';
      $filename = basename($_FILES['ax']['name']);
      $filenamee = srilangkat.'-'.basename($_FILES['ax']['name']);
      $uploadfile = $dir_gambar . $filenamee;
      if ($filename != ''){      
        if (move_uploaded_file($_FILES['ax']['tmp_name'], $uploadfile)) {
		$file = "foto_pegawai/".$filenamee;
			$gbr_asli = imagecreatefromjpeg($file);
			$lebar = imagesx($gbr_asli);
			$tinggi = imagesy($gbr_asli);
			
			$tum_lebar = 252;
			$tum_tinggi = 310;
			
			$gbr_thumb = imagecreatetruecolor($tum_lebar, $tum_tinggi);
			imagecopyresampled($gbr_thumb, $gbr_asli, 0, 0, 0, 0, $tum_lebar, $tum_tinggi, $lebar, $tinggi);
			
			imagejpeg($gbr_thumb, "foto_pegawai/kecil/small_".$filenamee);
			
			imagedestroy($gbr_asli);
			imagedestroy($gbr_thumb);
          $query = mysql_query("INSERT INTO rb_guru VALUES('$_POST[aa]','$_POST[ab]','$_POST[ac]','$_POST[af]','$_POST[ad]',
                           '$_POST[ae]','$_POST[ba]','$_POST[bv]','$_POST[aq]','$_POST[au]','$_POST[as]','$_POST[ar]', 
                           '$_POST[ag]','$_POST[ak]','$rt','$rw','$_POST[am]','$_POST[an]','$_POST[ao]','$_POST[ap]',
                           '$_POST[ai]','$_POST[ah]','$_POST[aj]','$_POST[at]','$_POST[av]','$_POST[bb]','$_POST[bc]', 
                           '$_POST[bd]','$_POST[be]','$_POST[bf]','$_POST[bg]','$_POST[bi]','$_POST[bh]','$_POST[bj]',
                           '$_POST[aw]','$_POST[bk]','$_POST[bl]','$_POST[bm]','$_POST[bn]','$_POST[bo]','$_POST[bp]',
                           '$_POST[bq]','$_POST[br]','$_POST[bs]','$_POST[bt]','$_POST[bw]','$_POST[bu]','$filenamee')");
        }
      }else{
          $query = mysql_query("INSERT INTO rb_guru VALUES('$_POST[aa]','$_POST[ab]','$_POST[ac]','$_POST[af]','$_POST[ad]',
                           '$_POST[ae]','$_POST[ba]','$_POST[bv]','$_POST[aq]','$_POST[au]','$_POST[as]','$_POST[ar]', 
                           '$_POST[ag]','$_POST[ak]','$rt','$rw','$_POST[am]','$_POST[an]','$_POST[ao]','$_POST[ap]',
                           '$_POST[ai]','$_POST[ah]','$_POST[aj]','$_POST[at]','$_POST[av]','$_POST[bb]','$_POST[bc]', 
                           '$_POST[bd]','$_POST[be]','$_POST[bf]','$_POST[bg]','$_POST[bi]','$_POST[bh]','$_POST[bj]',
                           '$_POST[aw]','$_POST[bk]','$_POST[bl]','$_POST[bm]','$_POST[bn]','$_POST[bo]','$_POST[bp]',
                           '$_POST[bq]','$_POST[br]','$_POST[bs]','$_POST[bt]','$_POST[bw]','$_POST[bu]','')");
      }
        if ($query){
          echo "<script>document.location='index.php?view=guru&act=detailguru&id=".$_POST[aa]."&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=guru&act=detailguru&id=".$_POST[aa]."&gagal';</script>";
        }
  }

    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Data Guru</h3>
                </div>
              <div class='box-body'>

              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-6'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[nip]'>
                    <tr><th width='120px' scope='row'>Nip</th>      <td><input type='text' class='form-control' name='aa'></td></tr>
                    <tr><th scope='row'>Password</th>               <td><input type='text' class='form-control' name='ab'></td></tr>
                    <tr><th scope='row'>Nama Lengkap</th>           <td><input type='text' class='form-control' name='ac'></td></tr>
                    <tr><th scope='row'>Tempat Lahir</th>           <td><input type='text' class='form-control' name='ad'></td></tr>
                    <tr><th scope='row'>Tanggal Lahir</th>          <td><input type='text' class='datepicker form-control' name='ae' data-date-format='dd-mm-yyyy'></td></tr>
                    <tr><th scope='row'>Jenis Kelamin</th>          <td><select class='form-control' name='af'> 
                                                                          <option value='0' selected>- Pilih Jenis Kelamin -</option>"; 
                                                                            $jk = mysql_query("SELECT * FROM rb_jenis_kelamin");
                                                                            while($a = mysql_fetch_array($jk)){
                                                                                echo "<option value='$a[id_jenis_kelamin]'>$a[jenis_kelamin]</option>";
                                                                            }
                                                                            echo "</select></td></tr>
                    <tr><th scope='row'>Agama</th>                  <td><select class='form-control' name='ag'> 
                                                                          <option value='0' selected>- Pilih Agama -</option>"; 
                                                                            $agama = mysql_query("SELECT * FROM rb_agama");
                                                                            while($a = mysql_fetch_array($agama)){
                                                                                echo "<option value='$a[id_agama]'>$a[nama_agama]</option>";
                                                                            }
                                                                  echo "</select></td></tr>
                    <tr><th scope='row'>No Hp</th>                  <td><input type='text' class='form-control' name='ah'></td></tr>
                    <tr><th scope='row'>No Telpon</th>              <td><input type='text' class='form-control' name='ai'></td></tr>
                    <tr><th scope='row'>Alamat Email</th>           <td><input type='text' class='form-control' name='aj'></td></tr>
                    <tr><th scope='row'>Alamat</th>                 <td><input type='text' class='form-control' name='ak'></td></tr>
                    <tr><th scope='row'>RT/RW</th>                  <td><input type='text' class='form-control' value='00/00' name='al'></td></tr>
                    <tr><th scope='row'>Dusun</th>                  <td><input type='text' class='form-control' name='am'></td></tr>
                    <tr><th scope='row'>Kelurahan</th>              <td><input type='text' class='form-control' name='an'></td></tr>
                    <tr><th scope='row'>Kecamatan</th>              <td><input type='text' class='form-control' name='ao'></td></tr>
                    <tr><th scope='row'>Kode Pos</th>               <td><input type='text' class='form-control' name='ap'></td></tr>
                    <tr><th scope='row'>NUPTK</th>                  <td><input type='text' class='form-control' name='aq'></td></tr>
                    <tr><th scope='row'>Bidang Studi</th>           <td><input type='text' class='form-control' name='ar'></td></tr>
                    <tr><th scope='row'>Jenis PTK</th>              <td><select class='form-control' name='as'> 
                                                                          <option value='0' selected>- Pilih Jenis PTK -</option>"; 
                                                                            $ptk = mysql_query("SELECT * FROM rb_jenis_ptk");
                                                                            while($a = mysql_fetch_array($ptk)){
                                                                                echo "<option value='$a[id_jenis_ptk]'>$a[jenis_ptk]</option>";
                                                                            }
                                                                  echo "</select></td></tr>
                    <tr><th scope='row'>Tugas Tambahan</th>         <td><input type='text' class='form-control' name='at'></td></tr>
                    <tr><th scope='row'>Status Pegawai</th>         <td><select class='form-control' name='au'> 
                                                                          <option value='0' selected>- Pilih Status Kepegawaian -</option>"; 
                                                                            $status_kepegawaian = mysql_query("SELECT * FROM rb_status_kepegawaian");
                                                                            while($a = mysql_fetch_array($status_kepegawaian)){
                                                                                echo "<option value='$a[id_status_kepegawaian]'>$a[status_kepegawaian]</option>";
                                                                            }
                                                                  echo "</select></td></tr>
                    <tr><th scope='row'>Status Keaktifan</th>       <td><select class='form-control' name='av'> 
                                                                          <option value='0' selected>- Pilih Status Keaktifan -</option>"; 
                                                                            $status_keaktifan = mysql_query("SELECT * FROM rb_status_keaktifan");
                                                                            while($a = mysql_fetch_array($status_keaktifan)){
                                                                                echo "<option value='$a[id_status_keaktifan]'>$a[nama_status_keaktifan]</option>";
                                                                            }
                                                                  echo "</select></td></tr>
                    <tr><th scope='row'>Status Nikah</th>           <td><select class='form-control' name='aw'> 
                                                                          <option value='0' selected>- Pilih Status Pernikahan -</option>"; 
                                                                            $status_pernikahan = mysql_query("SELECT * FROM rb_status_pernikahan");
                                                                            while($a = mysql_fetch_array($status_pernikahan)){
                                                                                echo "<option value='$a[id_status_pernikahan]'>$a[status_pernikahan]</option>";
                                                                            }
                                                                  echo "</select></td></tr>
                    <tr><th scope='row'>Foto</th>             <td><div style='position:relative;''>
                                                                          <a class='btn btn-primary' href='javascript:;'>
                                                                            <span class='glyphicon glyphicon-search'></span> Browse..."; ?>
                                                                            <input type='file' class='files' name='ax' onchange='$("#upload-file-info").html($(this).val());'>
                                                                          <?php echo "</a> <span style='width:155px' class='label label-info' id='upload-file-info'></span>
                                                                        </div>
                    </td></tr>
                  </tbody>
                  </table>
                </div>

                <div class='col-md-6'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr><th width='150px' scope='row'>NIK</th>      <td><input type='text' class='form-control' name='ba'></td></tr>
                    <tr><th scope='row'>SK CPNS</th>                <td><input type='text' class='form-control' name='bb'></td></tr>
                    <tr><th scope='row'>Tanggal CPNS</th>           <td><input type='text' class='form-control' name='bc'></td></tr>
                    <tr><th scope='row'>SK Pengangkat</th>          <td><input type='text' class='form-control' name='bd'></td></tr>
                    <tr><th scope='row'>TMT Pengangkat</th>         <td><input type='text' class='form-control' name='be'></td></tr>
                    <tr><th scope='row'>Lemb. Pengangkat</th>       <td><input type='text' class='form-control' name='bf'></td></tr>
                    <tr><th scope='row'>Golongan</th>               <td><select class='form-control' name='bg'> 
                                                                          <option value='0' selected>- Pilih Golongan -</option>"; 
                                                                            $golongan = mysql_query("SELECT * FROM rb_golongan");
                                                                            while($a = mysql_fetch_array($golongan)){
                                                                                echo "<option value='$a[id_golongan]'>$a[nama_golongan]</option>";
                                                                            }
                                                                  echo "</select></td></tr>
                    <tr><th scope='row'>Sumber Gaji</th>            <td><input type='text' class='form-control' value='$s[sumber_gaji]' name='bh'></td></tr>

                    <tr><th scope='row'>Ahli Laboratorium</th>      <td><input type='text' class='form-control' name='bi'></td></tr>
                    <tr><th scope='row'>Nama Ibu Kandung</th>       <td><input type='text' class='form-control' name='bj'></td></tr>
                    <tr><th scope='row'>Nama Suami/Istri</th>       <td><input type='text' class='form-control' name='bk'></td></tr>
                    <tr><th scope='row'>Nip Suami/Istri</th>        <td><input type='text' class='form-control' name='bl'></td></tr>
                    <tr><th scope='row'>Pekerjaan Suami/Istri</th>  <td><input type='text' class='form-control' name='bm'></td></tr>
                    <tr><th scope='row'>TMT PNS</th>                <td><input type='text' class='form-control' name='bn'></td></tr>
                    <tr><th scope='row'>Lisensi Kepsek</th>         <td><input type='text' class='form-control' name='bo'></td></tr>
                    <tr><th scope='row'>Jml Sekolah Binaan</th>     <td><input type='text' class='form-control' name='bp'></td></tr>
                    <tr><th scope='row'>Diklat Kepengawasan</th>    <td><input type='text' class='form-control' name='bq'></td></tr>
                    <tr><th scope='row'>Mampu Handle KK</th>        <td><input type='text' class='form-control' name='br'></td></tr>
                    <tr><th scope='row'>Keahlian Breile</th>        <td><input type='text' class='form-control' name='bs'></td></tr>
                    <tr><th scope='row'>Keahlian B.Isyarat</th>     <td><input type='text' class='form-control' name='bt'></td></tr>
                    <tr><th scope='row'>Kewarganegaraan</th>        <td><input type='text' class='form-control' name='bu'></td></tr>
                    <tr><th scope='row'>NIY NIGK</th>               <td><input type='text' class='form-control' name='bv'></td></tr>
                    <tr><th scope='row'>NPWP</th>                   <td><input type='text' class='form-control' name='bw'></td></tr>

                  </tbody>
                  </table>
                </div> 
                <div style='clear:both'></div>
                        <div class='box-footer'>
                          <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                          <a href='index.php?view=siswa'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                        </div> 
              </div>
            </form>
            </div>";
			
}elseif($_GET[act]=='card'){
  echo "<h4>Preview Kartu Tanda Pegawai (KTP)</h4>";
	$edit = mysql_query("SELECT nip,nama_guru, foto FROM rb_guru where nip='$_GET[id]'");
    $s = mysql_fetch_array($edit);
	if ($s['foto'] == '' || $s['foto'] == NULL){
		echo "<div class='col-md-12'>
		<table class='table table-condensed table-bordered'>
                            <tbody>
							Pembuatan KTP gagal, foto belum tersedia untuk Pegawai ini.
							</tbody>
			</table>
			</div>";
		exit();
	}	
	else{
		$background = imagecreatefromjpeg('img/ktmg.jpg');
		$color1	= imagecolorallocate( $background, 255, 255, 255 );
		
		$font	= 'fungsi/fonts/MyriadPro-Regular.ttf';
		
		
		
		
		$foto = imagecreatefromjpeg('foto_pegawai/kecil/small_'.$s['foto']);
		
		$sizejpeg = getimagesize('foto_pegawai/kecil/small_'.$s['foto']);
		
		$jpegw = $sizejpeg[0];
		$jpegh = $sizejpeg[1];
		$placementX = 120;
		$placementY = 80;
		
		imagecopy($background, $foto, $placementX, $placementY, 0, 0, $jpegw, $jpegh);
		$save = imagejpeg($background, "foto/ktp/ktp_".$s['nip'].".jpg");
		
		
		
		imagedestroy($foto);
		imagedestroy($background);
		
	}
		$back = imagecreatefromjpeg('foto/ktp/ktp_'.$s['nip'].'.jpg');
		$color1	= imagecolorallocate( $back, 0, 0, 0 );
		
		$font	= 'fungsi/fonts/MyriadPro-Regular.ttf';
		
		imagettftext($back, 40, 0, 70, 550, $color1, $font, $s['nama_guru']);
		
		
		$fotos = imagecreatefromgif("foto_pegawai/barcode/guru-".$s['nip'].".gif");
		
		$sizejpeg = getimagesize("foto_pegawai/barcode/guru-".$s['nip'].".gif");
		
		$jpegw = $sizejpeg[0];
		$jpegh = $sizejpeg[1];
		$placementX = 750;
		$placementY = 200;
		
		imagecopy($back, $fotos, $placementX, $placementY, 0, 0, $jpegw, $jpegh);
		$save = imagejpeg($back, "foto/ktp/ktg_".$s['nip'].".jpg");
		
		echo "<div class='col-md-12'>
		<table class='table table-condensed table-bordered'>
                            <tbody>
			<img src='foto/ktp/ktg_$s[nip].jpg' width='800'> <br><br>
			<a href='application/ktp.php?file=ktg_$s[nip].jpg'><button type='button' class='btn btn-success'>Download KTP</button></a>
			</tbody>
			</table>
		</div>";
		
		imagedestroy($foto);
		imagedestroy($background);
}elseif($_GET[act]=='editguru'){
  if (isset($_POST[update1])){
  
  include "Barcode39.php";
$bar = $_POST['aa'];
$mm = guru.'-'.basename($bar);
// set object
$bc = new Barcode39($bar);

// set text size
$bc->barcode_text_size = 5;

// set barcode bar thickness (thick bars)
$bc->barcode_bar_thick = 4;

// set barcode bar thickness (thin bars)
$bc->barcode_bar_thin = 2;

// save barcode GIF file
$bc->draw("foto_pegawai/barcode/".$mm.".gif");
  
      $rtrw = explode('/',$_POST[al]);
      $rt = $rtrw[0];
      $rw = $rtrw[1];
      $dir_gambar = 'foto_pegawai/';
      $filename = basename($_FILES['ax']['name']);
      $filenamee = srilangkat.'-'.basename($_FILES['ax']['name']);
      $uploadfile = $dir_gambar . $filenamee;
      if ($filename != ''){      
        if (move_uploaded_file($_FILES['ax']['tmp_name'], $uploadfile)) {
		$file = "foto_pegawai/".$filenamee;
			$gbr_asli = imagecreatefromjpeg($file);
			$lebar = imagesx($gbr_asli);
			$tinggi = imagesy($gbr_asli);
			
			$tum_lebar = 252;
			$tum_tinggi = 310;
			
			$gbr_thumb = imagecreatetruecolor($tum_lebar, $tum_tinggi);
			imagecopyresampled($gbr_thumb, $gbr_asli, 0, 0, 0, 0, $tum_lebar, $tum_tinggi, $lebar, $tinggi);
			
			imagejpeg($gbr_thumb, "foto_pegawai/kecil/small_".$filenamee);
			
			imagedestroy($gbr_asli);
			imagedestroy($gbr_thumb);
          $query = mysql_query("UPDATE rb_guru SET 
                           nip          = '$_POST[aa]',
                           password     = '$_POST[ab]',
                           nama_guru         = '$_POST[ac]',
                           tempat_lahir       = '$_POST[ad]',
                           tanggal_lahir = '$_POST[ae]',
                           id_jenis_kelamin       = '$_POST[af]',
                           id_agama           = '$_POST[ag]',
                           hp         = '$_POST[ah]',
                           telepon       = '$_POST[ai]',
                           email        = '$_POST[aj]',
                           alamat_jalan      = '$_POST[ak]',
                           rt = '$rt',
                           rw          = '$rw',
                           nama_dusun = '$_POST[am]',
                           desa_kelurahan = '$_POST[an]',
                           kecamatan = '$_POST[ao]',
                           kode_pos = '$_POST[ap]',
                           nuptk = '$_POST[aq]',
                           pengawas_bidang_studi = '$_POST[ar]', 
                           id_jenis_ptk = '$_POST[as]',
                           tugas_tambahan = '$_POST[at]', 
                           id_status_kepegawaian = '$_POST[au]',
                           id_status_keaktifan = '$_POST[av]',
                           id_status_pernikahan = '$_POST[aw]', 
                           foto = '$filenamee', 

                           nik = '$_POST[ba]', 
                           sk_cpns = '$_POST[bb]', 
                           tanggal_cpns = '$_POST[bc]', 
                           sk_pengangkatan = '$_POST[bd]', 
                           tmt_pengangkatan = '$_POST[be]', 
                           lembaga_pengangkatan = '$_POST[bf]',
                           id_golongan = '$_POST[bg]', 
                           sumber_gaji = '$_POST[bh]',
                           keahlian_laboratorium = '$_POST[bi]',
                           nama_ibu_kandung = '$_POST[bj]',
                           nama_suami_istri = '$_POST[bk]',
                           nip_suami_istri = '$_POST[bl]',
                           pekerjaan_suami_istri = '$_POST[bm]',
                           tmt_pns = '$_POST[bn]',
                           lisensi_kepsek = '$_POST[bo]',
                           jumlah_sekolah_binaan = '$_POST[bp]',
                           diklat_kepengawasan = '$_POST[bq]',
                           mampu_handle_kk = '$_POST[br]',
                           keahlian_breile = '$_POST[bs]',
                           keahlian_bahasa_isyarat = '$_POST[bt]',
                           kewarganegaraan = '$_POST[bu]',
                           niy_nigk = '$_POST[bv]',
                           npwp = '$_POST[bw]' where nip='$_POST[id]'");
        }
      }else{
          $query = mysql_query("UPDATE rb_guru SET 
                           nip          = '$_POST[aa]',
                           password     = '$_POST[ab]',
                           nama_guru         = '$_POST[ac]',
                           tempat_lahir       = '$_POST[ad]',
                           tanggal_lahir = '$_POST[ae]',
                           id_jenis_kelamin       = '$_POST[af]',
                           id_agama           = '$_POST[ag]',
                           hp         = '$_POST[ah]',
                           telepon       = '$_POST[ai]',
                           email        = '$_POST[aj]',
                           alamat_jalan      = '$_POST[ak]',
                           rt = '$rt',
                           rw          = '$rw',
                           nama_dusun = '$_POST[am]',
                           desa_kelurahan = '$_POST[an]',
                           kecamatan = '$_POST[ao]',
                           kode_pos = '$_POST[ap]',
                           nuptk = '$_POST[aq]',
                           pengawas_bidang_studi = '$_POST[ar]', 
                           id_jenis_ptk = '$_POST[as]',
                           tugas_tambahan = '$_POST[at]', 
                           id_status_kepegawaian = '$_POST[au]',
                           id_status_keaktifan = '$_POST[av]',
                           id_status_pernikahan = '$_POST[aw]',

                           nik = '$_POST[ba]', 
                           sk_cpns = '$_POST[bb]', 
                           tanggal_cpns = '$_POST[bc]', 
                           sk_pengangkatan = '$_POST[bd]', 
                           tmt_pengangkatan = '$_POST[be]', 
                           lembaga_pengangkatan = '$_POST[bf]',
                           id_golongan = '$_POST[bg]', 
                           sumber_gaji = '$_POST[bh]',
                           keahlian_laboratorium = '$_POST[bi]',
                           nama_ibu_kandung = '$_POST[bj]',
                           nama_suami_istri = '$_POST[bk]',
                           nip_suami_istri = '$_POST[bl]',
                           pekerjaan_suami_istri = '$_POST[bm]',
                           tmt_pns = '$_POST[bn]',
                           lisensi_kepsek = '$_POST[bo]',
                           jumlah_sekolah_binaan = '$_POST[bp]',
                           diklat_kepengawasan = '$_POST[bq]',
                           mampu_handle_kk = '$_POST[br]',
                           keahlian_breile = '$_POST[bs]',
                           keahlian_bahasa_isyarat = '$_POST[bt]',
                           kewarganegaraan = '$_POST[bu]',
                           niy_nigk = '$_POST[bv]',
                           npwp = '$_POST[bw]' where nip='$_POST[id]'");
      }
        if ($query){
          echo "<script>document.location='index.php?view=guru&act=detailguru&id=".$_POST[id]."&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=guru&act=detailguru&id=".$_POST[id]."&gagal';</script>";
        }
  }
    $close = 'readonly=on';
    $detail = mysql_query("SELECT * FROM rb_guru where nip='$_GET[id]'");
    $s = mysql_fetch_array($detail);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Guru</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-7'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[nip]'>
                    <tr><th style='background-color:#E7EAEC' width='160px' rowspan='25'>";
                        if (trim($s[foto])==''){
                          echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/no-image.jpg'>";
                        }else{
                          echo "<img class='img-thumbnail' style='width:155px' src='foto_pegawai/$s[foto]'>";
                        }
                        echo "</th>
                    </tr>
                    <input type='hidden' name='id' value='$s[nip]'>
                    <tr><th width='120px' scope='row'>Nip</th>      <td><input type='text' class='form-control' value='$s[nip]' name='aa' $close></td></tr>
                    <tr><th scope='row'>Password</th>               <td><input type='text' class='form-control' value='$s[password]' name='ab'></td></tr>
                    <tr><th scope='row'>Nama Lengkap</th>           <td><input type='text' class='form-control' value='$s[nama_guru]' name='ac' $close></td></tr>
                    <tr><th scope='row'>Tempat Lahir</th>           <td><input type='text' class='form-control' value='$s[tempat_lahir]' name='ad' $close></td></tr>
                    <tr><th scope='row'>Tanggal Lahir</th>          <td><input type='text' class='form-control' value='$s[tanggal_lahir]' name='ae' $close></td></tr>
                    <tr><th scope='row'>Jenis Kelamin</th>          <td><select class='form-control' name='af' $close> 
                                                                          <option value='0' selected>- Pilih Jenis Kelamin -</option>"; 
                                                                            $jk = mysql_query("SELECT * FROM rb_jenis_kelamin");
                                                                            while($a = mysql_fetch_array($jk)){
                                                                              if ($a[id_jenis_kelamin] == $s[id_jenis_kelamin]){
                                                                                echo "<option value='$a[id_jenis_kelamin]' selected>$a[jenis_kelamin]</option>";
                                                                              }else{
                                                                                echo "<option value='$a[id_jenis_kelamin]'>$a[jenis_kelamin]</option>";
                                                                              }
                                                                            }
                                                                            echo "</select></td></tr>
                    <tr><th scope='row'>Agama</th>                  <td><select class='form-control' name='ag' $close> 
                                                                          <option value='0' selected>- Pilih Agama -</option>"; 
                                                                            $agama = mysql_query("SELECT * FROM rb_agama");
                                                                            while($a = mysql_fetch_array($agama)){
                                                                              if ($a[id_agama] == $s[id_agama]){
                                                                                echo "<option value='$a[id_agama]' selected>$a[nama_agama]</option>";
                                                                              }else{
                                                                                echo "<option value='$a[id_agama]'>$a[nama_agama]</option>";
                                                                              }
                                                                            }
                                                                  echo "</select></td></tr>
                    <tr><th scope='row'>No Hp</th>                  <td><input type='text' class='form-control' value='$s[hp]' name='ah' $close></td></tr>
                    <tr><th scope='row'>No Telpon</th>              <td><input type='text' class='form-control' value='$s[telepon]' name='ai' $close></td></tr>
                    <tr><th scope='row'>Alamat Email</th>           <td><input type='text' class='form-control' value='$s[email]' name='aj' $close></td></tr>
                    <tr><th scope='row'>Alamat</th>                 <td><input type='text' class='form-control' value='$s[alamat_jalan]' name='ak' $close></td></tr>
                    <tr><th scope='row'>RT/RW</th>                  <td><input type='text' class='form-control' value='$s[rt]/$s[rw]' name='al' $close></td></tr>
                    <tr><th scope='row'>Dusun</th>                  <td><input type='text' class='form-control' value='$s[nama_dusun]' name='am' $close></td></tr>
                    <tr><th scope='row'>Kelurahan</th>              <td><input type='text' class='form-control' value='$s[desa_kelurahan]' name='an' $close></td></tr>
                    <tr><th scope='row'>Kecamatan</th>              <td><input type='text' class='form-control' value='$s[kecamatan]' name='ao' $close></td></tr>
                    <tr><th scope='row'>Kode Pos</th>               <td><input type='text' class='form-control' value='$s[kode_pos]' name='ap' $close></td></tr>
                    <tr><th scope='row'>NUPTK</th>                  <td><input type='text' class='form-control' value='$s[nuptk]' name='aq' $close></td></tr>
                    <tr><th scope='row'>Bidang Studi</th>           <td><input type='text' class='form-control' value='$s[pengawas_bidang_studi]' name='ar' $close></td></tr>
                    <tr><th scope='row'>Jenis PTK</th>              <td><select class='form-control' name='as' $close> 
                                                                          <option value='0' selected>- Pilih Jenis PTK -</option>"; 
                                                                            $ptk = mysql_query("SELECT * FROM rb_jenis_ptk");
                                                                            while($a = mysql_fetch_array($ptk)){
                                                                              if ($a[id_jenis_ptk] == $s[id_jenis_ptk]){
                                                                                echo "<option value='$a[id_jenis_ptk]' selected>$a[jenis_ptk]</option>";
                                                                              }else{
                                                                                echo "<option value='$a[id_jenis_ptk]'>$a[jenis_ptk]</option>";
                                                                              }
                                                                            }
                                                                  echo "</select></td></tr>
                    <tr><th scope='row'>Tugas Tambahan</th>         <td><input type='text' class='form-control' value='$s[tugas_tambahan]' name='at' $close></td></tr>
                    <tr><th scope='row'>Status Pegawai</th>         <td><select class='form-control' name='au' $close> 
                                                                          <option value='0' selected>- Pilih Status Kepegawaian -</option>"; 
                                                                            $status_kepegawaian = mysql_query("SELECT * FROM rb_status_kepegawaian");
                                                                            while($a = mysql_fetch_array($status_kepegawaian)){
                                                                              if ($a[id_status_kepegawaian] == $s[id_status_kepegawaian]){
                                                                                echo "<option value='$a[id_status_kepegawaian]' selected>$a[status_kepegawaian]</option>";
                                                                              }else{
                                                                                echo "<option value='$a[id_status_kepegawaian]'>$a[status_kepegawaian]</option>";
                                                                              }
                                                                            }
                                                                  echo "</select></td></tr>
                    <tr><th scope='row'>Status Keaktifan</th>       <td><select class='form-control' name='av' $close> 
                                                                          <option value='0' selected>- Pilih Status Keaktifan -</option>"; 
                                                                            $status_keaktifan = mysql_query("SELECT * FROM rb_status_keaktifan");
                                                                            while($a = mysql_fetch_array($status_keaktifan)){
                                                                              if ($a[id_status_keaktifan] == $s[id_status_keaktifan]){
                                                                                echo "<option value='$a[id_status_keaktifan]' selected>$a[nama_status_keaktifan]</option>";
                                                                              }else{
                                                                                echo "<option value='$a[id_status_keaktifan]'>$a[nama_status_keaktifan]</option>";
                                                                              }
                                                                            }
                                                                  echo "</select></td></tr>
                    <tr><th scope='row'>Status Nikah</th>           <td><select class='form-control' name='aw' $close> 
                                                                          <option value='0' selected>- Pilih Status Pernikahan -</option>"; 
                                                                            $status_pernikahan = mysql_query("SELECT * FROM rb_status_pernikahan");
                                                                            while($a = mysql_fetch_array($status_pernikahan)){
                                                                              if ($a[id_status_pernikahan] == $s[id_status_pernikahan]){
                                                                                echo "<option value='$a[id_status_pernikahan]' selected>$a[status_pernikahan]</option>";
                                                                              }else{
                                                                                echo "<option value='$a[id_status_pernikahan]'>$a[status_pernikahan]</option>";
                                                                              }
                                                                            }
                                                                  echo "</select></td></tr>
                    <tr><th scope='row'>Ganti Foto</th>             <td><div style='position:relative;''>
                                                                          <a class='btn btn-primary' href='javascript:;'>
                                                                            <span class='glyphicon glyphicon-search'></span> Browse..."; ?>
                                                                            <input type='file' class='files' name='ax' onchange='$("#upload-file-info").html($(this).val());'>
                                                                          <?php echo "</a> <span style='width:155px' class='label label-info' id='upload-file-info'></span>
                                                                        </div>
                    </td></tr>
                  </tbody>
                  </table>
                </div>

                <div class='col-md-5'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr><th width='150px' scope='row'>NIK</th>      <td><input type='text' class='form-control' value='$s[nik]' name='ba' $close></td></tr>
                    <tr><th scope='row'>SK CPNS</th>                <td><input type='text' class='form-control' value='$s[sk_cpns]' name='bb' $close></td></tr>
                    <tr><th scope='row'>Tanggal CPNS</th>           <td><input type='text' class='form-control' value='$s[tanggal_cpns]' name='bc' $close></td></tr>
                    <tr><th scope='row'>SK Pengangkat</th>          <td><input type='text' class='form-control' value='$s[sk_pengangkatan]' name='bd' $close></td></tr>
                    <tr><th scope='row'>TMT Pengangkat</th>         <td><input type='text' class='form-control' value='$s[tmt_pengangkatan]' name='be' $close></td></tr>
                    <tr><th scope='row'>Lemb. Pengangkat</th>       <td><input type='text' class='form-control' value='$s[lembaga_pengangkatan]' name='bf' $close></td></tr>
                    <tr><th scope='row'>Golongan</th>               <td><select class='form-control' name='bg' $close> 
                                                                          <option value='0' selected>- Pilih Golongan -</option>"; 
                                                                            $golongan = mysql_query("SELECT * FROM rb_golongan");
                                                                            while($a = mysql_fetch_array($golongan)){
                                                                              if ($a[id_golongan] == $s[id_golongan]){
                                                                                echo "<option value='$a[id_golongan]' selected>$a[nama_golongan]</option>";
                                                                              }else{
                                                                                echo "<option value='$a[id_golongan]'>$a[nama_golongan]</option>";
                                                                              }
                                                                            }
                                                                  echo "</select></td></tr>
                    <tr><th scope='row'>Sumber Gaji</th>            <td><input type='text' class='form-control' value='$s[sumber_gaji]' name='bh' $close></td></tr>

                    <tr><th scope='row'>Ahli Laboratorium</th>      <td><input type='text' class='form-control' value='$s[keahlian_laboratorium]' name='bi' $close> </td></tr>
                    <tr><th scope='row'>Nama Ibu Kandung</th>       <td><input type='text' class='form-control' value='$s[nama_ibu_kandung]' name='bj' $close></td></tr>
                    <tr><th scope='row'>Nama Suami/Istri</th>       <td><input type='text' class='form-control' value='$s[nama_suami_istri]' name='bk' $close></td></tr>
                    <tr><th scope='row'>Nip Suami/Istri</th>        <td><input type='text' class='form-control' value='$s[nip_suami_istri]' name='bl' $close></td></tr>
                    <tr><th scope='row'>Pekerjaan Suami/Istri</th>  <td><input type='text' class='form-control' value='$s[pekerjaan_suami_istri]' name='bm' $close></td></tr>
                    <tr><th scope='row'>TMT PNS</th>                <td><input type='text' class='form-control' value='$s[tmt_pns]' name='bn' $close></td></tr>
                    <tr><th scope='row'>Lisensi Kepsek</th>         <td><input type='text' class='form-control' value='$s[lisensi_kepsek]' name='bo' $close></td></tr>
                    <tr><th scope='row'>Jml Sekolah Binaan</th>     <td><input type='text' class='form-control' value='$s[jumlah_sekolah_binaan]' name='bp' $close></td></tr>
                    <tr><th scope='row'>Diklat Kepengawasan</th>    <td><input type='text' class='form-control' value='$s[diklat_kepengawasan]' name='bq' $close></td></tr>
                    <tr><th scope='row'>Mampu Handle KK</th>        <td><input type='text' class='form-control' value='$s[mampu_handle_kk]' name='br' $close></td></tr>
                    <tr><th scope='row'>Keahlian Breile</th>        <td><input type='text' class='form-control' value='$s[keahlian_breile]' name='bs' $close></td></tr>
                    <tr><th scope='row'>Keahlian B.Isyarat</th>     <td><input type='text' class='form-control' value='$s[keahlian_bahasa_isyarat]' name='bt' $close></td></tr>
                    <tr><th scope='row'>Kewarganegaraan</th>        <td><input type='text' class='form-control' value='$s[kewarganegaraan]' name='bu' $close></td></tr>
                    <tr><th scope='row'>NIY NIGK</th>               <td><input type='text' class='form-control' value='$s[niy_nigk]' name='bv' $close></td></tr>
                    <tr><th scope='row'>NPWP</th>                   <td><input type='text' class='form-control' value='$s[npwp]' name='bw' $close></td></tr>

                  </tbody>
                  </table>
                </div> 
                <div style='clear:both'></div>
                        <div class='box-footer'>
                          <button type='submit' name='update1' class='btn btn-info'>Update</button>
                          <a href='index.php?view=siswa'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                        </div> 
              </div>
            </form>
            </div>";
}elseif($_GET[act]=='detailguru'){
    $detail = mysql_query("SELECT a.*, b.jenis_kelamin, c.status_kepegawaian, d.jenis_ptk, e.nama_agama, f.nama_status_keaktifan, g.nama_golongan, h.status_pernikahan 
                                FROM rb_guru a LEFT JOIN rb_jenis_kelamin b ON a.id_jenis_kelamin=b.id_jenis_kelamin 
                                  LEFT JOIN rb_status_kepegawaian c ON a.id_status_kepegawaian=c.id_status_kepegawaian 
                                    LEFT JOIN rb_jenis_ptk d ON a.id_jenis_ptk=d.id_jenis_ptk 
                                      LEFT JOIN rb_agama e ON a.id_agama=e.id_agama 
                                        LEFT JOIN rb_status_keaktifan f ON a.id_status_keaktifan=f.id_status_keaktifan 
                                          LEFT JOIN rb_golongan g ON a.id_golongan=g.id_golongan
                                            LEFT JOIN rb_status_pernikahan h ON a.id_status_pernikahan=h.id_status_pernikahan
                                              where a.nip='$_GET[id]'");
    $s = mysql_fetch_array($detail);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Detail Data Guru</h3>
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
              echo "<form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-7'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[nip]'>
                    <tr><th style='background-color:#E7EAEC' width='160px' rowspan='25'>";
                        if (trim($s[foto])==''){
                          echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/no-image.jpg'>";
                        }else{
                          echo "<img class='img-thumbnail' style='width:155px' src='foto_pegawai/$s[foto]'>";
                        }
                      if($_SESSION[level]!='kepala'){
                        echo "<a href='index.php?view=guru&act=editguru&id=$_GET[id]' class='btn btn-success btn-block'>Edit Profile</a>";
                      }
                        echo "</th>
                    </tr>
                    <tr><th width='120px' scope='row'>Nip</th>      <td>$s[nip]</td></tr>
                    <tr><th scope='row'>Password</th>               <td>$s[password]</td></tr>
                    <tr><th scope='row'>Nama Lengkap</th>           <td>$s[nama_guru]</td></tr>
                    <tr><th scope='row'>Tempat Lahir</th>           <td>$s[tempat_lahir]</td></tr>
                    <tr><th scope='row'>Tanggal Lahir</th>          <td>$s[tanggal_lahir]</td></tr>
                    <tr><th scope='row'>Jenis Kelamin</th>          <td>$s[jenis_kelamin]</td></tr>
                    <tr><th scope='row'>Agama</th>                  <td>$s[nama_agama]</td></tr>
                    <tr><th scope='row'>No Hp</th>                  <td>$s[hp]</td></tr>
                    <tr><th scope='row'>No Telpon</th>              <td>$s[telepon]</td></tr>
                    <tr><th scope='row'>Alamat Email</th>           <td>$s[email]</td></tr>
                    <tr><th scope='row'>Alamat</th>                 <td>$s[alamat_jalan]</td></tr>
                    <tr><th scope='row'>RT/RW</th>                  <td>$s[rt]/$s[rw]</td></tr>
                    <tr><th scope='row'>Dusun</th>                  <td>$s[nama_dusun]</td></tr>
                    <tr><th scope='row'>Kelurahan</th>              <td>$s[desa_kelurahan]</td></tr>
                    <tr><th scope='row'>Kecamatan</th>              <td>$s[kecamatan]</td></tr>
                    <tr><th scope='row'>Kode Pos</th>               <td>$s[kode_pos]</td></tr>
                    <tr><th scope='row'>NUPTK</th>                  <td>$s[nuptk]</td></tr>
                    <tr><th scope='row'>Bidang Studi</th>           <td>$s[pengawas_bidang_studi]</td></tr>
                    <tr><th scope='row'>Jenis PTK</th>              <td>$s[jenis_ptk]</td></tr>
                    <tr><th scope='row'>Tugas Tambahan</th>         <td>$s[tugas_tambahan]</td></tr>
                    <tr><th scope='row'>Status Pegawai</th>         <td>$s[status_kepegawaian]</td></tr>
                    <tr><th scope='row'>Status Keaktifan</th>       <td>$s[nama_status_keaktifan]</td></tr>
                    <tr><th scope='row'>Status Nikah</th>           <td>$s[status_pernikahan]</td></tr>
                  </tbody>
                  </table>
                </div>

                <div class='col-md-5'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr><th width='150px' scope='row'>NIK</th>      <td>$s[nik]</td></tr>
                    <tr><th scope='row'>SK CPNS</th>                <td>$s[sk_cpns]</td></tr>
                    <tr><th scope='row'>Tanggal CPNS</th>           <td>$s[tanggal_cpns]</td></tr>
                    <tr><th scope='row'>SK Pengangkat</th>          <td>$s[sk_pengangkatan]</td></tr>
                    <tr><th scope='row'>TMT Pengangkat</th>         <td>$s[tmt_pengangkatan]</td></tr>
                    <tr><th scope='row'>Lemb. Pengangkat</th>       <td>$s[lembaga_pengangkatan]</td></tr>
                    <tr><th scope='row'>Golongan</th>               <td>$s[nama_golongan]</td></tr>
                    <tr><th scope='row'>Sumber Gaji</th>            <td>$s[sumber_gaji]</td></tr>

                    <tr><th scope='row'>Ahli Laboratorium</th>  <td>$s[keahlian_laboratorium]</td></tr>
                    <tr><th scope='row'>Nama Ibu Kandung</th>            <td>$s[nama_ibu_kandung]</td></tr>
                    <tr><th scope='row'>Nama Suami/Istri</th>            <td>$s[nama_suami_istri]</td></tr>
                    <tr><th scope='row'>Nip Suami/Istri</th>            <td>$s[nip_suami_istri]</td></tr>
                    <tr><th scope='row'>Pekerjaan Suami/Istri</th>            <td>$s[pekerjaan_suami_istri]</td></tr>
                    <tr><th scope='row'>TMT PNS</th>            <td>$s[tmt_pns]</td></tr>
                    <tr><th scope='row'>Lisensi Kepsek</th>            <td>$s[lisensi_kepsek]</td></tr>
                    <tr><th scope='row'>Jml Sekolah Binaan</th>            <td>$s[jumlah_sekolah_binaan]</td></tr>
                    <tr><th scope='row'>Diklat Kepengawasan</th>            <td>$s[diklat_kepengawasan]</td></tr>
                    <tr><th scope='row'>Mampu Handle KK</th>            <td>$s[mampu_handle_kk]</td></tr>
                    <tr><th scope='row'>Keahlian Breile</th>            <td>$s[keahlian_breile]</td></tr>
                    <tr><th scope='row'>Keahlian B.Isyarat</th>            <td>$s[keahlian_bahasa_isyarat]</td></tr>
                    <tr><th scope='row'>Kewarganegaraan</th>            <td>$s[kewarganegaraan]</td></tr>
                    <tr><th scope='row'>NIY NIGK</th>            <td>$s[niy_nigk]</td></tr>
                    <tr><th scope='row'>NPWP</th>                   <td>$s[npwp]</td></tr>

                  </tbody>
                  </table>
                </div> 
              </div>
            </form>
            </div>";
}elseif($_GET[act]=='akses'){
      $d = mysql_fetch_array(mysql_query("SELECT * FROM `rb_guru` where nip='$_GET[id]'"));
      if (isset($_POST[tambahkan])){
        $cek = mysql_num_rows(mysql_query("SELECT * FROM rb_guru_akses where nip='$_POST[nip]' AND id_modul='$_POST[modul]'"));
        if ($cek >= 1){
          echo "<script>window.alert('Maaf, Modul Tersebut sudah ada untuk guru ini.');
                                  window.location=('index.php?view=guru&act=akses&id=".$_POST[nip]."')</script>";
        }else{
          $query = mysql_query("INSERT INTO rb_guru_akses VALUES('','$_POST[nip]','$_POST[modul]')");
          if ($query){
            echo "<script>document.location='index.php?view=guru&act=akses&id=".$_POST[nip]."&sukses';</script>";
          }else{
            echo "<script>document.location='index.php?view=guru&act=akses&id=".$_POST[nip]."&gagal';</script>";
          }
        }
      }
            echo "<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
                  <h3 class='box-title'>Setting Hak Akses Khusus untuk Guru</h3>";
                  if($_SESSION[level]!='kepala'){
                      echo "<form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='POST'>
                              <select name='modul' style='padding:4px'>
                                  <option value='' selected>- Pilih Modul -</option>";
                                  $tmod = mysql_query("SELECT * FROM rb_modul where aktif='Ya' ORDER BY id_modul");
                                  $nom = 1;
                                  while ($m = mysql_fetch_array($tmod)){
                                      echo "<option value='$m[id_modul]'>$nom. $m[nama_modul]</option>";
                                    $nom++;
                                  }
                              echo "</select>
                              <input type='hidden' value='$_GET[id]' name='nip'>
                              <input type='submit' name='tambahkan' style='margin-top:-4px' class='btn btn-primary btn-sm' value='Tambahkan'>
                            </form>";
                  }
                echo "</div>
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

                  echo "<div class='col-md-12'>
                  <table class='table table-condensed table-hover'>
                      <tbody>
                        <tr><th width='120px' scope='row'>NIP</th> <td>$d[nip]</td></tr>
                        <tr><th scope='row'>Nama Guru</th>           <td>$d[nama_guru]</td></tr>
                      </tbody>
                  </table>
                  </div>

                  <table id='example' class='table table-bordered table-striped'>
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Nama Modul</th>
                        <th>URL Modul</th>";
                        if($_SESSION[level]!='kepala'){
                            echo "<th>Action</th>";
                        }
                      echo "</tr>
                    </thead>
                    <tbody>";
                      $tampil = mysql_query("SELECT * FROM rb_guru_akses a JOIN rb_modul b ON a.id_modul=b.id_modul where a.nip='$_GET[id]' ORDER BY a.id_modul DESC");
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[nama_modul]</td>
                              <td><a href='$r[url]'>$r[url]</a></td>";
                              if($_SESSION[level]!='kepala'){
                                echo "<td style='width:80px !important'><center>
                                        <a class='btn btn-danger btn-xs' title='Delete Data' href='index.php?view=guru&act=akses&hapus=$r[id_guru_akses]&nip=$r[nip]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                                      </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }

                      if (isset($_GET[hapus])){
                        mysql_query("DELETE FROM rb_guru_akses where id_guru_akses='$_GET[hapus]'");
                        echo "<script>document.location='index.php?view=guru&act=akses&id=$_GET[nip]';</script>";
                      }

                    echo "<tbody>
                  </table>
                </div>
                </div>
            </div>";
}
?>