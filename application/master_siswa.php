
<?php 
if ($_GET[act]==''){ 
  cek_session_admin();
    if (isset($_POST[pindahkelas])){
      if ($_POST[angkatan]!='' AND $_POST[kelas] != ''){
        $jml = mysql_fetch_array(mysql_query("SELECT count(*) as jmlp FROM rb_siswa where kode_kelas='$_POST[kelas]' AND angkatan='$_POST[angkatan]'"));
      }elseif ($_POST[angkatan]=='' AND $_POST[kelas] != ''){
        $jml = mysql_fetch_array(mysql_query("SELECT count(*) as jmlp FROM rb_siswa where kode_kelas='$_POST[kelas]'"));
      }elseif ($_POST[angkatan]!='' AND $_POST[kelas] == ''){
        $jml = mysql_fetch_array(mysql_query("SELECT count(*) as jmlp FROM rb_siswa where angkatan='$_POST[angkatan]'"));
      }

       $n = $jml[jmlp];
       $kelas = $_POST['kelaspindah'];
       $angkatan = $_POST['angkatanpindah'];
       for ($i=0; $i<=$n; $i++){
         if (isset($_POST['pilih'.$i])){
           $nisn = $_POST['pilih'.$i];
           if ($angkatan != '' AND $kelas != ''){
              mysql_query("UPDATE rb_siswa SET angkatan='$angkatan', kode_kelas='$kelas' where nisn='$nisn'");
           }elseif ($angkatan == '' AND $kelas != ''){
              mysql_query("UPDATE rb_siswa SET kode_kelas='$kelas' where nisn='$nisn'");
           }elseif ($angkatan != '' AND $kelas == ''){
              mysql_query("UPDATE rb_siswa SET angkatan='$angkatan' where nisn='$nisn'");
           }
         }
       }
       echo "<script>document.location='index.php?view=siswa&angkatan=".$angkatan."&kelas=".$kelas."';</script>";
    }
?> 

            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Semua Data Siswa </h3>
                   <?php if($_SESSION[level]!='kepala'){ ?>
                  <a class='pull-right btn btn-success btn-sm' target='_BLANK' href='print-siswa.php?kelas=<?php echo $_GET[kelas]; ?>&angkatan=<?php echo $_GET[angkatan]; ?>'>Print Siswa</a>
                  <a style='margin-right:5px' class='pull-right btn btn-primary btn-sm' href='index.php?view=siswa&act=tambahsiswa'>Tambahkan Data Siswa</a>
				 
                  <?php } ?>

                  <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
                    <input type="hidden" name='view' value='siswa'>
                    <input type="number" name='angkatan' style='padding:3px' placeholder='Angkatan' value='<?php echo $_GET[angkatan]; ?>'>
                    <select name='kelas' style='padding:4px'>
                        <?php 
                            echo "<option value=''>- Filter Kelas -</option>";
                            $kelas = mysql_query("SELECT * FROM rb_kelas");
                            while ($k = mysql_fetch_array($kelas)){
                              if ($_GET[kelas]==$k[kode_kelas]){
                                echo "<option value='$k[kode_kelas]' selected>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }else{
                                echo "<option value='$k[kode_kelas]'>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }
                            }
                        ?>
                    </select>
                    <input type="submit" style='margin-top:-4px' class='btn btn-info btn-sm' value='Lihat'>
                  </form>
                </div><!-- /.box-header -->
                <div class="box-body">
                <form action='' method='POST'>
                <input type="hidden" name='angkatan' value='<?php echo $_GET[angkatan]; ?>'>
                <input type="hidden" name='kelas' value='<?php echo $_GET[kelas]; ?>'>
                <?php 
                  if (isset($_GET[kelas])){
                    echo "<table id='mastersiswa' class='table table-bordered table-striped'>
                            <thead>
                            <tr><th></th>";
                  }else{
                    echo "<table id='example' class='table table-bordered table-striped'>
                            <thead>
                              <tr>";
                  }
                  echo "<th>No</th>
                        <th>NIPD</th>
                        <th>NISN</th>
                        <th>Nama Siswa</th>
                        <th>Angkatan</th>
                        <th>Jurusan</th>
                        <th>Kelas</th>
                        <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>";

                  if ($_GET[kelas] != '' AND $_GET[angkatan] != ''){
                    $tampil = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                              LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                                LEFT JOIN rb_jurusan d ON b.kode_jurusan=d.kode_jurusan 
                                                  where a.kode_kelas='$_GET[kelas]' AND a.angkatan='$_GET[angkatan]' ORDER BY a.id_siswa");
                  }elseif ($_GET[kelas] != '' AND $_GET[angkatan] == ''){
                    $tampil = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                              LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                                LEFT JOIN rb_jurusan d ON b.kode_jurusan=d.kode_jurusan 
                                                  where a.kode_kelas='$_GET[kelas]' ORDER BY a.id_siswa");
                  }elseif ($_GET[kelas] == '' AND $_GET[angkatan] != ''){
                    $tampil = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                              LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                                LEFT JOIN rb_jurusan d ON b.kode_jurusan=d.kode_jurusan 
                                                  where a.angkatan='$_GET[angkatan]' ORDER BY a.id_siswa");
                  }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr>";
                            if (isset($_GET[kelas])){
                                echo "<td><input type='checkbox' name='pilih".$no."' value='$r[nisn]'/></td>";
                            }
                              echo "<td>$no</td>
                              <td>$r[nipd]</td>
                              <td>$r[nisn]</td>
                              <td>$r[nama]</td>
                              <td>$r[angkatan]</td>
                              <td>$r[nama_jurusan]</td>
                              <td>$r[nama_kelas]</td>";
                              if($_SESSION[level]!='kepala'){
                                echo "<td><center>
                                  <a class='btn btn-default btn-xs' title='Lihat Detail' href='?view=siswa&act=detailsiswa&id=$r[nisn]'><span class='glyphicon glyphicon-search'></span></a>
								  <a class='btn btn-default btn-xs' title='Cetak Kartu Pelajar' href='?view=siswa&act=card&id=$r[nisn]'><span class='glyphicon glyphicon-credit-card'></span></a>
								 
                                  <a class='btn btn-info btn-xs' title='Edit Siswa' href='?view=siswa&act=editsiswa&id=$r[nisn]'><span class='glyphicon glyphicon-edit'></span></a>
                                  <a class='btn btn-success btn-xs' title='Penilaian Diri' href='?view=siswa&act=penilaiandiri&id=$r[nisn]'><span class='glyphicon glyphicon-th-list'></span></a>
                                  <a class='btn btn-warning btn-xs' title='Penilaian Teman' href='?view=siswa&act=penilaianteman&id=$r[nisn]'><span class='glyphicon glyphicon-list'></span></a>
                                  <a class='btn btn-danger btn-xs' title='Delete Siswa' href='?view=siswa&hapus=$r[nisn]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                                </center></td>";
                              }else{
                                  echo "<td><center>
                                  <a class='btn btn-default btn-xs' title='Lihat Detail' href='?view=siswa&act=detailsiswa&id=$r[nisn]'><span class='glyphicon glyphicon-search'></span></a>
                                  <a class='btn btn-success btn-xs' title='Penilaian Diri' href='?view=siswa&act=penilaiandiri&id=$r[nisn]'><span class='glyphicon glyphicon-th-list'></span></a>
                                  <a class='btn btn-warning btn-xs' title='Penilaian Teman' href='?view=siswa&act=penilaianteman&id=$r[nisn]'><span class='glyphicon glyphicon-list'></span></a>
                                </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }
                      if (isset($_GET[hapus])){
                          mysql_query("DELETE FROM rb_siswa where nisn='$_GET[hapus]'");
                          echo "<script>document.location='index.php?view=siswa';</script>";
                      }
                  ?>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
                <?php 
                    if ($_GET[kelas] == '' AND $_GET[tahun] == ''){
                        echo "<center style='padding:60px; color:red'>Silahkan Input Angkatan dan Memilih Kelas Terlebih dahulu...</center>";
                    }
                ?>
              </div><!-- /.box -->
              <?php if($_SESSION[level]!='kepala'){
                    if (isset($_GET[kelas])){ ?>
              <div class='box-footer'>
                  Pindah Ke : 
                  <input type="number" name='angkatanpindah' style='padding:3px' placeholder='Angkatan' value='<?php echo $_GET[angkatan]; ?>'>
                  <select name='kelaspindah' style='padding:4px' required>
                        <?php 
                            echo "<option value=''>- Pilih Kelas -</option>";
                            $kelas = mysql_query("SELECT * FROM rb_kelas");
                            while ($k = mysql_fetch_array($kelas)){
                                echo "<option value='$k[kode_kelas]'>$k[kode_kelas] - $k[nama_kelas]</option>";
                            }
                        ?>
                    </select>
                  <button style='margin-top:-5px' type='submit' name='pindahkelas' class='btn btn-sm btn-info'>Proses</button>
                  <a href='index.php?view=siswa'><button type='button' class='btn btn-sm  btn-default pull-right'>Cancel</button></a>
              </div>
              <?php }} ?>

              </form>
            </div>
<?php 
}elseif($_GET[act]=='tambahsiswa'){
  cek_session_admin();
  if (isset($_POST[tambah])){
  include "Barcode39.php";
$bar = $_POST['ab'];
$mm = siswa.'_'.basename($bar);
// set object
$bc = new Barcode39($bar);

// set text size
$bc->barcode_text_size = 5;

// set barcode bar thickness (thick bars)
$bc->barcode_bar_thick = 4;

// set barcode bar thickness (thin bars)
$bc->barcode_bar_thin = 2;

// save barcode GIF file
$bc->draw("foto_siswa/barcode/".$mm.".gif");

      $rtrw = explode('/',$_POST[ai]);
      $rt = $rtrw[0];
      $rw = $rtrw[1];
      $dir_gambar = 'foto_siswa/';
      $filename = basename($_FILES['ao']['name']);
      $filenamee = srilangkat.'-'.basename($_FILES['ao']['name']);
      $uploadfile = $dir_gambar . $filenamee;
      if ($filename != ''){   
				  
        if (move_uploaded_file($_FILES['ao']['tmp_name'], $uploadfile)) {
			$file = "foto_siswa/".$filenamee;
			$gbr_asli = imagecreatefromjpeg($file);
			$lebar = imagesx($gbr_asli);
			$tinggi = imagesy($gbr_asli);
			
			$tum_lebar = 252;
			$tum_tinggi = 310;
			
			$gbr_thumb = imagecreatetruecolor($tum_lebar, $tum_tinggi);
			imagecopyresampled($gbr_thumb, $gbr_asli, 0, 0, 0, 0, $tum_lebar, $tum_tinggi, $lebar, $tinggi);
			
			imagejpeg($gbr_thumb, "foto_siswa/kecil/small_".$filenamee);
			
			imagedestroy($gbr_asli);
			imagedestroy($gbr_thumb);
  
           $query = mysql_query("INSERT INTO rb_siswa VALUES('','$_POST[aa]','$_POST[ac]','$_POST[ad]','$_POST[bd]','$_POST[ab]',
                               '$_POST[bb]','$_POST[bc]','$_POST[ba]','$_POST[be]','$_POST[bf]','$_POST[ah]','$rt','$rw',
                               '$_POST[aj]','$_POST[ak]','$_POST[al]','$_POST[am]','$_POST[bg]','$_POST[bh]','$_POST[bi]',
                               '$_POST[bj]','$_POST[bk]','$_POST[bl]','$_POST[bm]','$_POST[bn]','$filenamee','$_POST[ca]',
                               '$_POST[cb]','$_POST[cc]','$_POST[cd]','$_POST[ce]','$_POST[cf]','$_POST[cg]','$_POST[ch]',
                               '$_POST[ci]','$_POST[cj]','$_POST[ck]','$_POST[cl]','$_POST[cm]','$_POST[cn]','$_POST[co]',
                               '$_POST[cp]','$_POST[cq]','$_POST[cr]','$_POST[cs]','$_POST[af]','$_POST[an]','$_POST[bo]',
                               '','$_POST[ae]','$_POST[ag]','0')");
        }
      }else{
            $query = mysql_query("INSERT INTO rb_siswa VALUES('','$_POST[aa]','$_POST[ac]','$_POST[ad]','$_POST[bd]','$_POST[ab]',
                               '$_POST[bb]','$_POST[bc]','$_POST[ba]','$_POST[be]','$_POST[bf]','$_POST[ah]','$rt','$rw',
                               '$_POST[aj]','$_POST[ak]','$_POST[al]','$_POST[am]','$_POST[bg]','$_POST[bh]','$_POST[bi]',
                               '$_POST[bj]','$_POST[bk]','$_POST[bl]','$_POST[bm]','$_POST[bn]','','$_POST[ca]',
                               '$_POST[cb]','$_POST[cc]','$_POST[cd]','$_POST[ce]','$_POST[cf]','$_POST[cg]','$_POST[ch]',
                               '$_POST[ci]','$_POST[cj]','$_POST[ck]','$_POST[cl]','$_POST[cm]','$_POST[cn]','$_POST[co]',
                               '$_POST[cp]','$_POST[cq]','$_POST[cr]','$_POST[cs]','$_POST[af]','$_POST[an]','$_POST[bo]',
                               '','$_POST[ae]','$_POST[ag]','0')");
      }
        if ($query){
          echo "<script>document.location='index.php?view=siswa&act=detailsiswa&id=".$_POST[ab]."&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=siswa&act=detailsiswa&id=".$_POST[ab]."&gagal';</script>";
        }
  }

    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Data Siswa</h3>
                </div>
                <div class='box-body'>

                  <div class='panel-body'>
                    <ul id='myTabs' class='nav nav-tabs' role='tablist'>
                      <li role='presentation' class='active'><a href='#siswa' id='siswa-tab' role='tab' data-toggle='tab' aria-controls='siswa' aria-expanded='true'>Data Siswa </a></li>
											
                      <li role='presentation' class=''><a href='#ortu' role='tab' id='ortu-tab' data-toggle='tab' aria-controls='ortu' aria-expanded='false'>Data Orang Tua / Wali</a></li>
                    </ul><br>

                    <div id='myTabContent' class='tab-content'>
                      <div role='tabpanel' class='tab-pane fade active in' id='siswa' aria-labelledby='siswa-tab'>
                          <form action='' method='POST' enctype='multipart/form-data' class='form-horizontal'>
                          <div class='col-md-6'>
                            <table class='table table-condensed table-bordered'>
                            <tbody>
                              <tr><th width='130px' scope='row'>No Induk</th> <td><input type='text' class='form-control' name='aa'></td></tr>
                              <tr><th scope='row'>NISN</th> <td><input type='text' class='form-control' name='ab'></td></tr>
                              <tr><th scope='row'>Password</th> <td><input type='text' class='form-control' name='ac'></td></tr>
                              <tr><th scope='row'>Nama Siswa</th> <td><input type='text' class='form-control' name='ad'></td></tr>
                              <tr><th scope='row'>Kelas</th> <td><select class='form-control' name='ae'> 
                                                                            <option value='0' selected>- Pilih Kelas -</option>"; 
                                                                              $kelas = mysql_query("SELECT * FROM rb_kelas");
                                                                              while($a = mysql_fetch_array($kelas)){
                                                                                  echo "<option value='$a[kode_kelas]'>$a[nama_kelas]</option>";
                                                                              }
                                                                    echo "</select></td></tr>
                              <tr><th scope='row'>Angkatan</th>
                                <td>
                                  <select class='form-control' name='af'> 
                                    <option value='0' selected>- Pilih Angkatan -</option>"; 
                                      $angkatan = mysql_query("SELECT tahun_ajar FROM rb_tahun_akademik GROUP BY tahun_ajar");
                                      while($a = mysql_fetch_array($angkatan)){
                                        echo "<option value='$a[tahun_ajar]'>$a[tahun_ajar]</option>";
                                      }
                      echo "</select></td></tr>
                              <tr><th scope='row'>Jurusan</th> <td><select class='form-control' name='ag'> 
                                                                            <option value='0' selected>- Pilih Jurusan -</option>"; 
                                                                              $jurusan = mysql_query("SELECT * FROM rb_jurusan");
                                                                              while($a = mysql_fetch_array($jurusan)){
                                                                                  echo "<option value='$a[kode_jurusan]'>$a[nama_jurusan]</option>";
                                                                              }
                                                                    echo "</select></td></tr>
                              <tr><th scope='row'>Alamat Siswa</th> <td><input type='text' class='form-control' name='ah'></td></tr>
                              <tr><th scope='row'>RT/RW</th> <td><input type='text' class='form-control' value='00/00' name='ai'></td></tr>
                              <tr><th scope='row'>Dusun</th> <td><input type='text' class='form-control' name='aj'></td></tr>
                              <tr><th scope='row'>Kelurahan</th> <td><input type='text' class='form-control' name='ak'></td></tr>
                              <tr><th scope='row'>Kecamatan</th> <td><input type='text' class='form-control' name='al'></td></tr>
                              <tr><th scope='row'>Kode Pos</th> <td><input type='text' class='form-control' name='am'></td></tr>
                              <tr><th scope='row'>Status Awal</th> <td><input type='text' class='form-control' name='an'></td></tr>
															<tr><th scope='row'>Bahasa Sehari-hari</th> <td><input type='text' class='form-control' name='ce'></td></tr>
															<tr><th scope='row'>Jarak tempat tinggal (KM) </th> <td><input type='text' class='form-control' name='cg'></td></tr>
															<tr><th scope='row'>Tinggi Badan (Cm) </th> <td><input type='text' class='form-control' name='cj'></td></tr>
															<tr><th scope='row'>Berat Badan (kg) </th> <td><input type='text' class='form-control' name='ck'></td></tr>		
															<tr><th scope='row'>Pernah sakit </th> <td><input type='text' class='form-control' name='ci'></td></tr>
														<tr><th scope='row'>Golongan Darah </th> <td><select class='form-control' name='cf'> 
                                                                            <option value='0' selected>- Golongan Darah -</option> 
                                                                            <option value='A'>  A</option>
																																						<option value='B'>  B </option>
																																						<option value='O'>  O </option>
																																						<option value='AB'> AB </option>";
                                                                    echo "</select></td></tr>
															<tr><th scope='row'>Tinggal Bersama </th> <td><select class='form-control' name='ch'> 
                                                                            <option value='0' selected>- tinggal bersama -</option> 
                                                                            <option value='yatim'>  Orang Tua</option>
																																						<option value='piatu'>  Wali </option>
																																						<option value='yatimpiatu'>  kost </option>";
                                                                    echo "</select></td></tr>
                              <tr><th scope='row'>Foto</th>             <td><div style='position:relative;''>
                                                                            <a class='btn btn-primary' href='javascript:;'>
                                                                              <span class='glyphicon glyphicon-search'></span> Browse..."; ?>
                                                                              <input type='file' class='files' name='ao' onchange='$("#upload-file-info").html($(this).val());'>
                                                                            <?php echo "</a> <span style='width:155px' class='label label-info' id='upload-file-info'></span>
                                                                          </div>
										
                              </td></tr>
                            </tbody>
                            </table>
                          </div>
                          <div class='col-md-6'>
                            <table class='table table-condensed table-bordered'>
                            <tbody>
                              <tr><th width='130px' scope='row'>NIK</th> <td><input type='text' class='form-control' name='ba'></td></tr>
                              <tr><th scope='row'>Tempat Lahir</th> <td><input type='text' class='form-control' name='bb'></td></tr>
															<tr><th scope='row'>Anak Ke</th> <td><input type='text' class='form-control' name='ca'></td></tr>
                              <tr><th scope='row'>Jlh Saudara Kandung</th> <td><input type='text' class='form-control' name='cb'></td></tr>
															<tr><th scope='row'>Jlh Saudara Angkat</th> <td><input type='text' class='form-control' name='cc'></td></tr>
															<tr><th scope='row'>Tanggal Lahir</th> <td><input type='text'  class='datepicker form-control' name='bc' data-date-format='dd-mm-yyyy'></td></tr>
                              <tr><th scope='row'>Jenis Kelamin</th> <td><select class='form-control' name='bd'> 
                                                                            <option value='0' selected>- Pilih Jenis Kelamin -</option>"; 
                                                                              $jk = mysql_query("SELECT * FROM rb_jenis_kelamin");
                                                                              while($a = mysql_fetch_array($jk)){
                                                                                  echo "<option value='$a[id_jenis_kelamin]'>$a[jenis_kelamin]</option>";
                                                                              }
                                                                    echo "</select></td></tr>
                              <tr><th scope='row'>Agama</th> <td><select class='form-control' name='be'> 
                                                                            <option value='0' selected>- Pilih Agama -</option>"; 
                                                                              $agama = mysql_query("SELECT * FROM rb_agama");
                                                                              while($a = mysql_fetch_array($agama)){
                                                                                  echo "<option value='$a[id_agama]'>$a[nama_agama]</option>";
                                                                              }
                                                                    echo "</select></td></tr>
															<tr><th scope='row'>Status Yatim/piatu</th> <td><select class='form-control' name='bd'> 
                                                                            <option value='0' selected>- Status -</option> 
                                                                            <option value='yatim'>  yatim</option>
																																						<option value='piatu'>  piatu </option>
																																						<option value='yatimpiatu'>  Yatim/Piatu </option>";
                                                                    echo "</select></td></tr>
                              <tr><th scope='row'>Keb. Khusus</th> <td><input type='text' class='form-control' name='bf'></td></tr>
                              <tr><th scope='row'>Jenis Tinggal</th> <td><input type='text' class='form-control' name='bg'></td></tr>
                              <tr><th scope='row'>Transportasi</th> <td><input type='text' class='form-control' name='bh'></td></tr>
                              <tr><th scope='row'>No Telpon</th> <td><input type='text' class='form-control' name='bi'></td></tr>
                              <tr><th scope='row'>No Handpone</th> <td><input type='text' class='form-control' name='bj'></td></tr>
                              <tr><th scope='row'>Alamat Email</th> <td><input type='text' class='form-control' name='bk'></td></tr>
															 <tr><th scope='row'>Lama Belajar</th> <td><input type='text' class='form-control' name='za'></td></tr>
                              <tr><th scope='row'>No.STTB Ijazah</th> <td><input type='text' class='form-control' name='bl'></td></tr>
															<tr><th scope='row'>Tgl. Ijazah</th> <td><input type='text' class='form-control' name='bl'></td></tr>
															<tr><th scope='row'>Lama Belajar</th> <td><input type='text' class='form-control' name='zb'></td></tr>
															<tr><th scope='row'>lulusan dari</th> <td><input type='text' class='form-control' name='cl'></td></tr>
                              <tr><th scope='row'>Penerima KPS</th> <td><input type='text' class='form-control' name='bm'></td></tr>
                              <tr><th scope='row'>No KPS</th> <td><input type='text' class='form-control' name='bn'></td></tr>
                              <tr><th scope='row'>Status Siswa</th> <td><input type='radio' name='bo' value='Aktif' checked> Aktif
                                                                        <input type='radio' name='bo' value='Tidak Aktif'> Tidak Aktif </td></tr>
                            </tbody>
                            </table>
                          </div> <!--in baris yang di copy -->
													
                          <div style='clear:both'></div>
                          <div class='box-footer'>
                            <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                            <a href='index.php?view=siswa'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                          </div> 
                      </div>

                      <div role='tabpanel' class='tab-pane fade' id='ortu' aria-labelledby='ortu-tab'>
                          <div class='col-md-12'>
                            <table class='table table-condensed table-bordered'>
                            <tbody>
                              <tr bgcolor=#e3e3e3><th width='130px' scope='row'>Nama Ayah</th> <td><input type='text' class='form-control' name='ca'></td></tr>
                              <tr><th scope='row'>Tahun Lahir</th> <td><input type='text' class='form-control' name='cb'></td></tr>
                              <tr><th scope='row'>Pendidikan</th> <td><input type='text' class='form-control' name='cc'></td></tr>
                              <tr><th scope='row'>Pekerjaan</th> <td><input type='text' class='form-control' name='cd'></td></tr>
                              <tr><th scope='row'>Penghasilan</th> <td><input type='text' class='form-control' name='ce'></td></tr>
                              <tr><th scope='row'>Kebutuhan Khusus</th> <td><input type='text' class='form-control' name='cf'></td></tr>
                              <tr><th scope='row'>No Telpon</th> <td><input type='text' class='form-control' name='cg'></td></tr>
                              <tr><th scope='row' coslpan='2'><br></th></tr>
                              <tr bgcolor=#e3e3e3><th scope='row'>Nama Ibu</th> <td><input type='text' class='form-control' name='ch'></td></tr>
                              <tr><th scope='row'>Tahun Lahir</th> <td><input type='text' class='form-control' name='ci'></td></tr>
                              <tr><th scope='row'>Pendidikan</th> <td><input type='text' class='form-control' name='cj'></td></tr>
                              <tr><th scope='row'>Pekerjaan</th> <td><input type='text' class='form-control' name='ck'></td></tr>
                              <tr><th scope='row'>Penghasilan</th> <td><input type='text' class='form-control' name='cl'></td></tr>
                              <tr><th scope='row'>Kebutuhan Khusus</th> <td><input type='text' class='form-control' name='cm'></td></tr>
                              <tr><th scope='row'>No Telpon</th> <td><input type='text' class='form-control' name='cn'></td></tr>
                              <tr><th scope='row' coslpan='2'><br></th></tr>
                              <tr bgcolor=#e3e3e3><th scope='row'>Nama Wali</th> <td><input type='text' class='form-control' name='co'></td></tr>
                              <tr><th scope='row'>Tahun Lahir</th> <td><input type='text' class='form-control' name='cp'></td></tr>
                              <tr><th scope='row'>Pendidikan</th> <td><input type='text' class='form-control' name='cq'></td></tr>
                              <tr><th scope='row'>Pekerjaan</th> <td><input type='text' class='form-control' name='cr'></td></tr>
                              <tr><th scope='row'>Penghasilan</th> <td><input type='text' class='form-control' name='cs'></td></tr>
                            </tbody>
                            </table>
                          </div>
                          <div class='box-footer'>
                            <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                            <a href='index.php?view=siswa'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                          </div>
                          </form>
                      </div>
                    </div>
                  </div>

                </div>
            </div>
        </div>";
}elseif($_GET[act]=='card'){
  echo "<h4>Preview Kartu Tanda Pelajar (KTP)</h4>";
   cek_session_siswa();
    if ($_SESSION[level] == 'siswa'){
        $nisn = $_SESSION[id];
    }else{
        $nisn = $_GET[id];
    }
	$edit = mysql_query("SELECT nisn,nama, foto FROM rb_siswa where nisn='$nisn'");
    $s = mysql_fetch_array($edit);
	if ($s['foto'] == '' || $s['foto'] == NULL){
		echo "<div class='col-md-12'>
		<table class='table table-condensed table-bordered'>
                            <tbody>
							Pembuatan KTP gagal, foto belum tersedia untuk Siswa ini.
							</tbody>
			</table>
			</div>";
		exit();
	}	
	else{
		$background = imagecreatefromjpeg('img/ktm.jpg');
		$color1	= imagecolorallocate( $background, 255, 255, 255 );
		
		$font	= 'fungsi/fonts/MyriadPro-Regular.ttf';
		
		
		
		
		$foto = imagecreatefromjpeg('foto_siswa/kecil/small_'.$s['foto']);
		
		$sizejpeg = getimagesize('foto_siswa/kecil/small_'.$s['foto']);
		
		$jpegw = $sizejpeg[0];
		$jpegh = $sizejpeg[1];
		$placementX = 120;
		$placementY = 88;
		
		imagecopy($background, $foto, $placementX, $placementY, 0, 0, $jpegw, $jpegh);
		$save = imagejpeg($background, "foto/ktp/ktp_".$s['nisn'].".jpg");
		
		
		
		imagedestroy($foto);
		imagedestroy($background);
		
	}
		$back = imagecreatefromjpeg('foto/ktp/ktp_'.$s['nisn'].'.jpg');
		$color1	= imagecolorallocate( $back, 0, 0, 0 );
		
		$font	= 'fungsi/fonts/MyriadPro-Regular.ttf';
		
		imagettftext($back, 40, 0, 550, 200, $color1, $font, $s['nama']);
		
		
		$fotos = imagecreatefromgif("foto_siswa/barcode/siswa_".$s['nisn'].".gif");
		
		$sizejpeg = getimagesize("foto_siswa/barcode/siswa_".$s['nisn'].".gif");
		
		$jpegw = $sizejpeg[0];
		$jpegh = $sizejpeg[1];
		$placementX = 180;
		$placementY = 450;
		
		imagecopy($back, $fotos, $placementX, $placementY, 0, 0, $jpegw, $jpegh);
		$save = imagejpeg($back, "foto/ktp/kta_".$s['nisn'].".jpg");
		
		echo "<div class='col-md-12'>
		<table class='table table-condensed table-bordered'>
                            <tbody>
			<img src='foto/ktp/kta_$s[nisn].jpg' width='800'> <br><br>
			<a href='application/ktp.php?file=kta_$s[nisn].jpg'><button type='button' class='btn btn-success'>Download KTP</button></a>
			</tbody>
			</table>
		</div>";
		
		imagedestroy($foto);
		imagedestroy($background);
	
}elseif($_GET[act]=='editsiswa'){
  cek_session_siswa();
  if (isset($_POST[update1])){
  // include Barcode39 class
include "Barcode39.php";
$bar = $_POST['ab'];
$mm = siswa.'_'.basename($bar);
// set object
$bc = new Barcode39($bar);

// set text size
$bc->barcode_text_size = 5;

// set barcode bar thickness (thick bars)
$bc->barcode_bar_thick = 4;

// set barcode bar thickness (thin bars)
$bc->barcode_bar_thin = 2;

// save barcode GIF file
$bc->draw('foto_siswa/barcode/'.$mm.'.gif');

      $rtrw = explode('/',$_POST[ai]);
      $rt = $rtrw[0];
      $rw = $rtrw[1];
      $dir_gambar = 'foto_siswa/';
      $filename = basename($_FILES['ao']['name']);
      $filenamee = srilangkat.'-'.basename($_FILES['ao']['name']);
      $uploadfile = $dir_gambar . $filenamee;
	  
      if ($filename != ''){ 
			
        if (move_uploaded_file($_FILES['ao']['tmp_name'], $uploadfile)){
			$file = "foto_siswa/".$filenamee;
			$gbr_asli = imagecreatefromjpeg($file);
			$lebar = imagesx($gbr_asli);
			$tinggi = imagesy($gbr_asli);
			
			$tum_lebar = 252;
			$tum_tinggi = 310;
			
			$gbr_thumb = imagecreatetruecolor($tum_lebar, $tum_tinggi);
			imagecopyresampled($gbr_thumb, $gbr_asli, 0, 0, 0, 0, $tum_lebar, $tum_tinggi, $lebar, $tinggi);
			
			imagejpeg($gbr_thumb, "foto_siswa/kecil/small_".$filenamee);
			
			imagedestroy($gbr_asli);
			imagedestroy($gbr_thumb);
           $query = mysql_query("UPDATE rb_siswa SET 
                               nipd        = '$_POST[aa]',
                               nisn   = '$_POST[ab]',
                               password         = '$_POST[ac]',
                               nama       = '$_POST[ad]',
                               kode_kelas    = '$_POST[ae]',
                               angkatan   = '$_POST[af]',
                               kode_jurusan   = '$_POST[ag]',
                               alamat        = '$_POST[ah]',
                               rt         = '$rt',
                               rw   = '$rw',
                               dusun    = '$_POST[aj]',
                               kelurahan       = '$_POST[ak]',
                               kecamatan     = '$_POST[al]',
                               kode_pos      = '$_POST[am]',
                               status_awal   = '$_POST[an]',
                               foto = '$filenamee',

                               nik = '$_POST[ba]',
                               tempat_lahir = '$_POST[bb]',
                               tanggal_lahir = '$_POST[bc]',
                               id_jenis_kelamin = '$_POST[bd]',
                               id_agama = '$_POST[be]',
                               kebutuhan_khusus = '$_POST[bf]',
                               jenis_tinggal = '$_POST[bg]',
                               alat_transportasi = '$_POST[bh]',
                               telepon = '$_POST[bi]',
                               hp = '$_POST[bj]',
                               email = '$_POST[bk]',
                               skhun = '$_POST[bl]',
                               penerima_kps = '$_POST[bm]',
                               no_kps = '$_POST[bn]',
                               status_siswa = '$_POST[bo]' where nisn='$_POST[id]'");
        }
      }else{
            $query = mysql_query("UPDATE rb_siswa SET 
                                nipd        = '$_POST[aa]',
                               nisn   = '$_POST[ab]',
                               password         = '$_POST[ac]',
                               nama       = '$_POST[ad]',
                               kode_kelas    = '$_POST[ae]',
                               angkatan   = '$_POST[af]',
                               kode_jurusan   = '$_POST[ag]',
                               alamat        = '$_POST[ah]',
                               rt         = '$rt',
                               rw   = '$rw',
                               dusun    = '$_POST[aj]',
                               kelurahan       = '$_POST[ak]',
                               kecamatan     = '$_POST[al]',
                               kode_pos      = '$_POST[am]',
                               status_awal   = '$_POST[an]',

                               nik = '$_POST[ba]',
                               tempat_lahir = '$_POST[bb]',
                               tanggal_lahir = '$_POST[bc]',
                               id_jenis_kelamin = '$_POST[bd]',
                               id_agama = '$_POST[be]',
                               kebutuhan_khusus = '$_POST[bf]',
                               jenis_tinggal = '$_POST[bg]',
                               alat_transportasi = '$_POST[bh]',
                               telepon = '$_POST[bi]',
                               hp = '$_POST[bj]',
                               email = '$_POST[bk]',
                               skhun = '$_POST[bl]',
                               penerima_kps = '$_POST[bm]',
                               no_kps = '$_POST[bn]',
                               status_siswa = '$_POST[bo]' where nisn='$_POST[id]'");
      }
        if ($query){
          echo "<script>document.location='index.php?view=siswa&act=editsiswa&id=".$_POST[id]."&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=siswa&act=editsiswa&id=".$_POST[id]."&gagal';</script>";
        }
  }

  if (isset($_POST[update2])){
           $query = mysql_query("UPDATE rb_siswa SET 
                               nama_ayah        = '$_POST[ca]',
                               tahun_lahir_ayah   = '$_POST[cb]',
                               pendidikan_ayah         = '$_POST[cc]',
                               pekerjaan_ayah       = '$_POST[cd]',
                               penghasilan_ayah    = '$_POST[ce]',
                               kebutuhan_khusus_ayah   = '$_POST[cf]',
                               no_telpon_ayah   = '$_POST[cg]',

                               nama_ibu        = '$_POST[ch]',
                               tahun_lahir_ibu   = '$_POST[ci]',
                               pendidikan_ibu         = '$_POST[cj]',
                               pekerjaan_ibu       = '$_POST[ck]',
                               penghasilan_ibu    = '$_POST[cl]',
                               kebutuhan_khusus_ibu   = '$_POST[cm]',
                               no_telpon_ibu   = '$_POST[cn]',

                               nama_wali        = '$_POST[co]',
                               tahun_lahir_wali   = '$_POST[cp]',
                               pendidikan_wali         = '$_POST[cq]',
                               pekerjaan_wali       = '$_POST[cr]',
                               penghasilan_wali    = '$_POST[cs]' where nisn='$_POST[id]'");
        if ($query){
          echo "<script>document.location='index.php?view=siswa&act=editsiswa&id=".$_POST[id]."&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=siswa&act=editsiswa&id=".$_POST[id]."&gagal';</script>";
        }
  }
    if ($_SESSION[level] == 'siswa'){
        $nisn = $_SESSION[id];
        $close = 'readonly=on';
    }else{
        $nisn = $_GET[id];
        $close = '';
    }
    $edit = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                              LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                  LEFT JOIN rb_jurusan d ON b.kode_jurusan=d.kode_jurusan
                                    LEFT JOIN rb_agama e ON a.id_agama=e.id_agama 
                                      where a.nisn='$nisn'");
    $s = mysql_fetch_array($edit);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Siswa</h3>
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

                  if ($_SESSION[level] == 'siswa'){
                    echo "<div class='alert alert-warning alert-dismissible fade in' role='alert'> 
                          <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                          <span aria-hidden='true'>×</span></button> <strong>Perhatian!</strong> - Semua Data-data yang ada dibawah ini akan digunakan untuk keperluan pihak sekolah, jadi tolong di isi dengan data sebenarnya dan jika kedapatan data yang diisikan tidak seuai dengan yang sebenarnya, maka pihak sekolah akan memberikan sanksi tegas !!!
                    </div>";
                  }

                  echo "<div class='panel-body'>
                    <ul id='myTabs' class='nav nav-tabs' role='tablist'>
                      <li role='presentation' class='active'><a href='#siswa' id='siswa-tab' role='tab' data-toggle='tab' aria-controls='siswa' aria-expanded='true'>Data Siswa </a></li>
                      <li role='presentation' class=''><a href='#ortu' role='tab' id='ortu-tab' data-toggle='tab' aria-controls='ortu' aria-expanded='false'>Data Orang Tua / Wali</a></li>
                    </ul><br>

                    <div id='myTabContent' class='tab-content'>
                    <div role='tabpanel' class='tab-pane fade active in' id='siswa' aria-labelledby='siswa-tab'>
                        <form action='' method='POST' enctype='multipart/form-data' class='form-horizontal'>
                        <div class='col-md-7'>
                          <table class='table table-condensed table-bordered'>
                          <tbody>
                            <tr><th style='background-color:#E7EAEC' width='160px' rowspan='17'>";
                                if (trim($s[foto])==''){
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/no-image.jpg'>";
                                }else{
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/$s[foto]'>";
                                }
                            echo "</th></tr>
                            <input type='hidden' value='$s[nisn]' name='id'>
                            <tr><th width='120px' scope='row'>No Induk</th> <td><input type='text' class='form-control' value='$s[nipd]' name='aa' $close></td></tr>
                            <tr><th scope='row'>NISN</th> <td><input type='text' class='form-control' value='$s[nisn]' name='ab' $close></td></tr>
                            <tr><th scope='row'>Password</th> <td><input type='text' class='form-control' value='$s[password]' name='ac'></td></tr>
                            <tr><th scope='row'>Nama Siswa</th> <td><input type='text' class='form-control' value='$s[nama]' name='ad' $close></td></tr>
                            <tr><th scope='row'>Kelas</th> <td><select class='form-control' name='ae' $close> 
                                                                          <option value='0' selected>- Pilih Kelas -</option>"; 
                                                                            $kelas = mysql_query("SELECT * FROM rb_kelas");
                                                                            while($a = mysql_fetch_array($kelas)){
                                                                              if ($_SESSION[level] == 'siswa'){
                                                                                if ($a[kode_kelas] == $s[kode_kelas]){
                                                                                  echo "<option value='$a[kode_kelas]' selected>$a[nama_kelas]</option>";
                                                                                }
                                                                              }else{
                                                                                if ($a[kode_kelas] == $s[kode_kelas]){
                                                                                  echo "<option value='$a[kode_kelas]' selected>$a[nama_kelas]</option>";
                                                                                }else{
                                                                                  echo "<option value='$a[kode_kelas]'>$a[nama_kelas]</option>";
                                                                                }
                                                                              }
                                                                            }
                                                                  echo "</select></td></tr>
                            <tr><th scope='row'>Angkatan</th> <td><select class='form-control' name='af'> 
                            <option value='$s[angkatan]' selected>- $s[angkatan] -</option>"; 
                              $angkatan = mysql_query("SELECT tahun_ajar FROM rb_tahun_akademik GROUP BY tahun_ajar");
                              while($a = mysql_fetch_array($angkatan)){
                                echo "<option value='$a[tahun_ajar]'>$a[tahun_ajar]</option>";
                              }
                            echo "</select></td></tr>
                            <tr><th scope='row'>Jurusan</th> <td><select class='form-control' name='ag' $close> 
                                                                          <option value='0' selected>- Pilih Jurusan -</option>"; 
                                                                            $jurusan = mysql_query("SELECT * FROM rb_jurusan");
                                                                            while($a = mysql_fetch_array($jurusan)){
                                                                              if ($_SESSION[level] == 'siswa'){
                                                                                if ($a[kode_jurusan] == $s[kode_jurusan]){
                                                                                  echo "<option value='$a[kode_jurusan]' selected>$a[nama_jurusan]</option>";
                                                                                }
                                                                              }else{
                                                                                if ($a[kode_jurusan] == $s[kode_jurusan]){
                                                                                  echo "<option value='$a[kode_jurusan]' selected>$a[nama_jurusan]</option>";
                                                                                }else{
                                                                                  echo "<option value='$a[kode_jurusan]'>$a[nama_jurusan]</option>";
                                                                                }
                                                                              }
                                                                            }
                                                                  echo "</select></td></tr>
                            <tr><th scope='row'>Alamat Siswa</th> <td><input type='text' class='form-control' value='$s[alamat]' name='ah' $close></td></tr>
                            <tr><th scope='row'>RT/RW</th> <td><input type='text' class='form-control' value='$s[rt]/$s[rw]' name='ai' $close></td></tr>
                            <tr><th scope='row'>Dusun</th> <td><input type='text' class='form-control' value='$s[dusun]' name='aj' $close></td></tr>
                            <tr><th scope='row'>Kelurahan</th> <td><input type='text' class='form-control' value='$s[kelurahan]' name='ak' $close></td></tr>
                            <tr><th scope='row'>Kecamatan</th> <td><input type='text' class='form-control' value='$s[kecamatan]' name='al' $close></td></tr>
                            <tr><th scope='row'>Kode Pos</th> <td><input type='text' class='form-control' value='$s[kode_pos]' name='am' $close></td></tr>
                            <tr><th scope='row'>Status Awal</th> <td><input type='text' class='form-control' value='$s[status_awal]' name='an' $close></td></tr>
                            <tr><th scope='row'>Ganti Foto</th>             <td><div style='position:relative;''>
                                                                          <a class='btn btn-primary' href='javascript:;'>
                                                                            <span class='glyphicon glyphicon-search'></span> Browse..."; ?>
                                                                            <input type='file' class='files' name='ao' onchange='$("#upload-file-info").html($(this).val());'>
                                                                          <?php echo "</a> <span style='width:155px' class='label label-info' id='upload-file-info'></span>
                                                                        </div>
                            </td></tr>
                          </tbody>
                          </table>
                        </div>
                        <div class='col-md-5'>
                          <table class='table table-condensed table-bordered'>
                          <tbody>
                            <tr><th width='120px' scope='row'>NIK</th> <td><input type='text' class='form-control' value='$s[nik]' name='ba' $close></td></tr>
                            <tr><th scope='row'>Tempat Lahir</th> <td><input type='text' class='form-control' value='$s[tempat_lahir]' name='bb' $close></td></tr>
                            <tr><th scope='row'>Tanggal Lahir</th> <td><input type='text' class='form-control' value='$s[tanggal_lahir]' name='bc' $close></td></tr>
                            <tr><th scope='row'>Jenis Kelamin</th> <td><select class='form-control' name='bd' $close> 
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
                            <tr><th scope='row'>Agama</th> <td><select class='form-control' name='be' $close> 
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
                            <tr><th scope='row'>Keb. Khusus</th> <td><input type='text' class='form-control' value='$s[kebutuhan_khusus]' name='bf' $close></td></tr>
                            <tr><th scope='row'>Jenis Tinggal</th> <td><input type='text' class='form-control' value='$s[jenis_tinggal]' name='bg' $close></td></tr>
                            <tr><th scope='row'>Transportasi</th> <td><input type='text' class='form-control' value='$s[alat_transportasi]' name='bh' $close></td></tr>
                            <tr><th scope='row'>No Telpon</th> <td><input type='text' class='form-control' value='$s[telepon]' name='bi' $close></td></tr>
                            <tr><th scope='row'>No Handpone</th> <td><input type='text' class='form-control' value='$s[hp]' name='bj' $close></td></tr>
                            <tr><th scope='row'>Alamat Email</th> <td><input type='text' class='form-control' value='$s[email]' name='bk'></td></tr>
														<tr><th scope='row'>Lama Belajar</th> <td><input type='text' class='form-control' value='$s[lbelajar]' name='zb'></td></tr>
                            <tr><th scope='row'>No. STTB Ijazah</th> <td><input type='text' class='form-control' value='$s[nosttbijazah]' name='bl' $close></td></tr>
														<tr><th scope='row'>Tgl. Ijazah</th> <td><input type='text' class='form-control' value='$s[tglijazah]' name='za' $close></td></tr>
                            <tr><th scope='row'>Status Siswa</th> <td>";
                                                                    if ($s[status_siswa]=='Aktif'){
                                                                        echo "<input type='radio' name='bo' value='Aktif' checked> Aktif
                                                                              <input type='radio' name='bo' value='Tidak Aktif'> Tidak Aktif";
                                                                    }else{
                                                                        echo "<input type='radio' name='bo' value='Aktif'> Aktif
                                                                              <input type='radio' name='bo' value='Tidak Aktif' checked> Tidak Aktif";
                                                                    } 
                                                                    echo "</td></tr>
                          </tbody>
                          </table>
                        </div>  
                        <div style='clear:both'></div>
                        <div class='box-footer'>
                          <button type='submit' name='update1' class='btn btn-info'>Update</button>
                          <a href='index.php?view=siswa'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                        </div> 

                        </form>
                    </div>


                    <div role='tabpanel' class='tab-pane fade' id='ortu' aria-labelledby='ortu-tab'>
                        <form action='' method='POST' class='form-horizontal'>
                        <div class='col-md-12'>
                          <table class='table table-condensed table-bordered'>
                          <tbody>
                            <tr><th style='background-color:#E7EAEC' width='160px' rowspan='22'>";
                                if (trim($s[foto])==''){
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/no-image.jpg'>";
                                }else{
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/$s[foto]'>";
                                }
                            echo "</th></tr>
                            <input type='hidden' value='$s[nisn]' name='id'>
                            <tr bgcolor=#e3e3e3><th width='130px' scope='row'>Nama Ayah</th> <td><input type='text' class='form-control' value='$s[nama_ayah]' name='ca'></td></tr>
                            <tr><th scope='row'>Tahun Lahir</th> <td><input type='text' class='form-control' value='$s[tahun_lahir_ayah]' name='cb'></td></tr>
                            <tr><th scope='row'>Pendidikan</th> <td><input type='text' class='form-control' value='$s[pendidikan_ayah]' name='cc'></td></tr>
                            <tr><th scope='row'>Pekerjaan</th> <td><input type='text' class='form-control' value='$s[pekerjaan_ayah]' name='cd'></td></tr>
                            <tr><th scope='row'>Penghasilan</th> <td><input type='text' class='form-control' value='$s[penghasilan_ayah]' name='ce'></td></tr>
                            <tr><th scope='row'>Kebutuhan Khusus</th> <td><input type='text' class='form-control' value='$s[kebutuhan_khusus_ayah]' name='cf'></td></tr>
                            <tr><th scope='row'>No Telpon</th> <td><input type='text' class='form-control' value='$s[no_telpon_ayah]' name='cg'></td></tr>
                            <tr><th scope='row' coslpan='2'><br></th></tr>
                            <tr bgcolor=#e3e3e3><th scope='row'>Nama Ibu</th> <td><input type='text' class='form-control' value='$s[nama_ibu]' name='ch'></td></tr>
                            <tr><th scope='row'>Tahun Lahir</th> <td><input type='text' class='form-control' value='$s[tahun_lahir_ibu]' name='ci'></td></tr>
                            <tr><th scope='row'>Pendidikan</th> <td><input type='text' class='form-control' value='$s[pendidikan_ibu]' name='cj'></td></tr>
                            <tr><th scope='row'>Pekerjaan</th> <td><input type='text' class='form-control' value='$s[pekerjaan_ibu]' name='ck'></td></tr>
                            <tr><th scope='row'>Penghasilan</th> <td><input type='text' class='form-control' value='$s[penghasilan_ibu]' name='cl'></td></tr>
                            <tr><th scope='row'>Kebutuhan Khusus</th> <td><input type='text' class='form-control' value='$s[kebutuhan_khusus_ibu]' name='cm'></td></tr>
                            <tr><th scope='row'>No Telpon</th> <td><input type='text' class='form-control' value='$s[no_telpon_ibu]' name='cn'></td></tr>
                            <tr><th scope='row' coslpan='2'><br></th></tr>
                            <tr bgcolor=#e3e3e3><th scope='row'>Nama Wali</th> <td><input type='text' class='form-control' value='$s[nama_wali]' name='co'></td></tr>
                            <tr><th scope='row'>Tahun Lahir</th> <td><input type='text' class='form-control' value='$s[tahun_lahir_wali]' name='cp'></td></tr>
                            <tr><th scope='row'>Pendidikan</th> <td><input type='text' class='form-control' value='$s[pendidikan_wali]' name='cq'></td></tr>
                            <tr><th scope='row'>Pekerjaan</th> <td><input type='text' class='form-control' value='$s[pekerjaan_wali]' name='cr'></td></tr>
                            <tr><th scope='row'>Penghasilan</th> <td><input type='text' class='form-control' value='$s[penghasilan_wali]' name='cs'></td></tr>
                          </tbody>
                          </table>
                        </div>
                        <div class='box-footer'>
                          <button type='submit' name='update2' class='btn btn-info'>Update</button>
                          <a href='index.php?view=siswa'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                        </div>
                        </form>
                    </div>

                </div>
            </div>";

}elseif($_GET[act]=='detailsiswa'){
 cek_session_siswa();
    if ($_SESSION[level] == 'siswa'){
        $nisn = $_SESSION[id];
    }else{
        $nisn = $_GET[id];
    }
    $detail = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                              LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                  LEFT JOIN rb_jurusan d ON b.kode_jurusan=d.kode_jurusan
                                    LEFT JOIN rb_agama e ON a.id_agama=e.id_agama 
                                      where a.nisn='$nisn'");
    $s = mysql_fetch_array($detail);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Detail Data Siswa</h3>
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
                  echo "<div class='panel-body'>
                    <ul id='myTabs' class='nav nav-tabs' role='tablist'>
                      <li role='presentation' class='active'><a href='#siswa' id='siswa-tab' role='tab' data-toggle='tab' aria-controls='siswa' aria-expanded='true'>Data Siswa </a></li>
                      <li role='presentation' class=''><a href='#ortu' role='tab' id='ortu-tab' data-toggle='tab' aria-controls='ortu' aria-expanded='false'>Data Orang Tua / Wali</a></li>
                    </ul><br>

                    <div id='myTabContent' class='tab-content'>
                    <div role='tabpanel' class='tab-pane fade active in' id='siswa' aria-labelledby='siswa-tab'>
                        <form class='form-horizontal'>
                        <div class='col-md-7'>
                          <table class='table table-condensed table-bordered'>
                          <tbody>
                            <tr><th style='background-color:#E7EAEC' width='160px' rowspan='17'>";
                                if (trim($s[foto])==''){
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/no-image.jpg'>";
                                }else{
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/$s[foto]'>";
                                }
                              if($_SESSION[level]!='kepala'){
                                echo "<a href='index.php?view=siswa&act=editsiswa&id=$_GET[id]' class='btn btn-success btn-block'>Edit Profile</a>";
                              }
                                echo "</th>
                            </tr>
                            <tr><th width='120px' scope='row'>NIPD</th> <td>$s[nipd]</td></tr>
                            <tr><th scope='row'>NISN</th> <td>$s[nisn]</td></tr>
                            <tr><th scope='row'>Password</th> <td>$s[password]</td></tr>
                            <tr><th scope='row'>Nama Siswa</th> <td>$s[nama]</td></tr>
                            <tr><th scope='row'>Kelas</th> <td>$s[nama_kelas]</td></tr>
                            <tr><th scope='row'>Angkatan</th> <td>$s[angkatan]</td></tr>
                            <tr><th scope='row'>Jurusan</th> <td>$s[nama_jurusan]</td></tr>
                            <tr><th scope='row'>Alamat Siswa</th> <td>$s[alamat]</td></tr>
                            <tr><th scope='row'>RT/RW</th> <td>$s[rt]/$s[rw]</td></tr>
                            <tr><th scope='row'>Dusun</th> <td>$s[dusun]</td></tr>
                            <tr><th scope='row'>Kelurahan</th> <td>$s[kelurahan]</td></tr>
                            <tr><th scope='row'>Kecamatan</th> <td>$s[kecamatan]</td></tr>
                            <tr><th scope='row'>Kode Pos</th> <td>$s[kode_pos]</td></tr>
                            <tr><th scope='row'>Status Awal</th> <td>$s[status_awal]</td></tr>
                            <tr><th scope='row'>Status Siswa</th> <td>$s[status_siswa]</td></tr>
                          </tbody>
                          </table>
                        </div>
                        <div class='col-md-5'>
                          <table class='table table-condensed table-bordered'>
                          <tbody>
                            <tr><th width='120px' scope='row'>NIK</th> <td>$s[nik]</td></tr>
                            <tr><th scope='row'>Tempat Lahir</th> <td>$s[tempat_lahir]</td></tr>
                            <tr><th scope='row'>Tanggal Lahir</th> <td>".tgl_indo($s[tanggal_lahir])."</td></tr>
                            <tr><th scope='row'>Jenis Kelamin</th> <td>$s[jenis_kelamin]</td></tr>
                            <tr><th scope='row'>Agama</th> <td>$s[nama_agama]</td></tr>
                            <tr><th scope='row'>Keb. Khusus</th> <td>$s[kebutuhan_khusus]</td></tr>
                            <tr><th scope='row'>Jenis Tinggal</th> <td>$s[jenis_tinggal]</td></tr>
                            <tr><th scope='row'>Transportasi</th> <td>$s[alat_transportasi]</td></tr>
                            <tr><th scope='row'>No Telpon</th> <td>$s[telepon]</td></tr>
                            <tr><th scope='row'>No Handpone</th> <td>$s[hp]</td></tr>
                            <tr><th scope='row'>Alamat Email</th> <td>$s[email]</td></tr>
                            <tr><th scope='row'>SKHUN</th> <td>$s[skhun]</td></tr>
                            <tr><th scope='row'>Penerima KPS</th> <td>$s[penerima_kps]</td></tr>
                            <tr><th scope='row'>No KPS</th> <td>$s[no_kps]</td></tr>
                          </tbody>
                          </table>
                        </div>   
                        </form>
                    </div>

                    <div role='tabpanel' class='tab-pane fade' id='ortu' aria-labelledby='ortu-tab'>
                        <form class='form-horizontal'>
                        <div class='col-md-12'>
                          <table class='table table-condensed table-bordered'>
                          <tbody>
                            <tr><th style='background-color:#E7EAEC' width='160px' rowspan='20'>";
                                if (trim($s[foto])==''){
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/no-image.jpg'>";
                                }else{
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/$s[foto]'>";
                                }
                              if($_SESSION[level]!='kepala'){
                                echo "<a href='index.php?view=siswa&act=editsiswa&id=$_GET[id]' class='btn btn-success btn-block'>Edit Profile</a>";
                              }
                                echo "</th>
                            </tr>
                            <tr bgcolor=#e3e3e3><th width='120px' scope='row'>Nama Ayah</th> <td>$s[nama_ayah]</td></tr>
                            <tr><th scope='row'>Tahun Lahir</th> <td>$s[tahun_lahir_ayah]</td></tr>
                            <tr><th scope='row'>Pendidikan</th> <td>$s[pendidikan_ayah]</td></tr>
                            <tr><th scope='row'>Pekerjaan</th> <td>$s[pekerjaan_ayah]</td></tr>
                            <tr><th scope='row'>Penghasilan</th> <td>$s[penghasilan_ayah]</td></tr>
                            <tr><th scope='row'>No Telpon</th> <td>$s[no_telpon_ayah]</td></tr>
                            <tr><th scope='row' coslpan='2'><br></th></tr>
                            <tr bgcolor=#e3e3e3><th scope='row'>Nama Ibu</th> <td>$s[nama_ibu]</td></tr>
                            <tr><th scope='row'>Tahun Lahir</th> <td>$s[tahun_lahir_ibu]</td></tr>
                            <tr><th scope='row'>Pendidikan</th> <td>$s[pendidikan_ibu]</td></tr>
                            <tr><th scope='row'>Pekerjaan</th> <td>$s[pekerjaan_ibu]</td></tr>
                            <tr><th scope='row'>Penghasilan</th> <td>$s[penghasilan_ibu]</td></tr>
                            <tr><th scope='row'>No Telpon</th> <td>$s[no_telpon_ibu]</td></tr>
                            <tr><th scope='row' coslpan='2'><br></th></tr>
                            <tr bgcolor=#e3e3e3><th scope='row'>Nama Wali</th> <td>$s[nama_wali]</td></tr>
                            <tr><th scope='row'>Tahun Lahir</th> <td>$s[tahun_lahir_wali]</td></tr>
                            <tr><th scope='row'>Pendidikan</th> <td>$s[pendidikan_wali]</td></tr>
                            <tr><th scope='row'>Pekerjaan</th> <td>$s[pekerjaan_wali]</td></tr>
                            <tr><th scope='row'>Penghasilan</th> <td>$s[penghasilan_wali]</td></tr>
                          </tbody>
                          </table>
                        </div>
                        </form>
                    </div>

                </div>
            </div>";
}elseif($_GET[act]=='penilaiandiri'){
            $t = mysql_fetch_array(mysql_query("SELECT * FROM rb_siswa a JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas where a.nisn='$_GET[id]'"));
            echo "<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
                  <h3 class='box-title'>Data Pertanyaan dan Jawaban Penilaian Diri </h3>
                </div>
                <div class='box-body'>

                        <div class='col-md-12'>
                            <table class='table table-condensed table-hover'>
                                <tbody>
                                  <tr><th width='120px' scope='row'>NISN</th> <td>$t[nisn]</td></tr>
                                  <tr><th scope='row'>Nama Siswa</th>           <td>$t[nama]</td></tr>
                                  <tr><th scope='row'>Kelas</th>           <td>$t[nama_kelas]</td></tr>
                                </tbody>
                            </table>
                        </div>

                  <table id='example2' class='table table-bordered table-striped'>
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Pertanyaan</th>
                      </tr>
                    </thead>
                    <tbody>";

                    $tampil = mysql_query("SELECT * FROM rb_pertanyaan_penilaian where status='diri' ORDER BY id_pertanyaan_penilaian DESC");
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    $jwb = mysql_fetch_array(mysql_query("SELECT * FROM rb_pertanyaan_penilaian_jawab where nisn='$_GET[id]' AND id_pertanyaan_penilaian='$r[id_pertanyaan_penilaian]' AND status='diri' AND kode_kelas='$t[kode_kelas]'"));
                    if (trim($jwb[jawaban])==''){
                      $jawab = "<i style='color:red'>Belum Ada Jawaban...</i>";
                    }else{
                      $jawab = "<i>$jwb[jawaban]</i>";
                    }
                    echo "<tr><td>$no</td>
                              <td>$r[pertanyaan] <br> <strong>Jawaban :</strong> <br>$jawab</td>
                          </tr>";
                      $no++;
                      }
                    echo "</tbody>
                  </table>
                </div>
              </div>
            </div>";
}elseif($_GET[act]=='penilaianteman'){
           echo "<div class='col-xs-12'>  
              <div class='box'>
              <form action='' method='POST'>
                <div class='box-header'>
                  <h3 class='box-title'>Semua Data Teman Kelas anda </h3>
                </div>
                <div class='box-body'>
                  <table class='table table-bordered table-striped'>
                    <thead>
                      <tr>
                        <th style='width:40px'>No</th>
                        <th>NIPD</th>
                        <th>NISN</th>
                        <th>Nama Siswa</th>
                        <th>Angkatan</th>
                        <th>Jurusan</th>
                        <th>Kelas</th>
                        <th width='135px'></th>
                      </tr>
                    </thead>
                    <tbody>";

                    $cs = mysql_fetch_array(mysql_query("SELECT * FROM rb_siswa where nisn='$_GET[id]'"));
                    $tampil = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                              LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                                LEFT JOIN rb_jurusan d ON b.kode_jurusan=d.kode_jurusan 
                                                  where a.kode_kelas='$cs[kode_kelas]' AND a.angkatan='$cs[angkatan]' AND nisn!='$_GET[id]' ORDER BY a.id_siswa");
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[nipd]</td>
                              <td>$r[nisn]</td>
                              <td>$r[nama]</td>
                              <td>$r[angkatan]</td>
                              <td>$r[nama_jurusan]</td>
                              <td>$r[nama_kelas]</td>
                              <td align=center><a class='btn btn-success btn-xs' title='Lihat Penilaian' href='index.php?view=siswa&act=pertanyaan&nisn=$r[nisn]&id=$_GET[id]'><span class='glyphicon glyphicon-search'></span> Lihat Penilaian</a></td>
                          </tr>";
                      $no++;
                      }
                    echo "</tbody>
                  </table>
                </div>
              </form>
              </div>
            </div>";
}elseif($_GET[act]=='pertanyaan'){ ?>
            <div class="col-xs-12">  
              <div class="box">
              <form action='' method='POST'>
                <div class="box-header">
                  <h3 class="box-title">Data Pertanyan dan Jawaban Penilaian Teman </h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <?php
                      echo "<input type='hidden' value='$_GET[nisn]' name='nisnteman'>";
                      $t = mysql_fetch_array(mysql_query("SELECT * FROM rb_siswa where nisn='$_GET[nisn]'"));
                      $tt = mysql_fetch_array(mysql_query("SELECT * FROM rb_siswa where nisn='$_GET[id]'"));
                      echo "<div class='col-md-12'>
                            <table class='table table-condensed table-hover'>
                                <tbody>
                                  <tr><th scope='row'>NISN Penilai</th>           <td>$tt[nisn]</td></tr>
                                  <tr><th scope='row'>Nama Penilai</th>           <td>$tt[nama]</td></tr>

                                  <tr bgcolor=#f4f4f4><th width='120px' scope='row'>NISN Teman</th> <td style='color:blue'>$t[nisn]</td></tr>
                                  <tr bgcolor=#f4f4f4><th scope='row'>Nama Teman</th>           <td style='color:blue'>$t[nama]</td></tr>
                                </tbody>
                            </table>
                            </div>";
                  ?>
                  <table id="example3" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Pertanyaan</th>
                      </tr>
                    </thead>
                    <tbody>

                  <?php 
                    $tampil = mysql_query("SELECT * FROM rb_pertanyaan_penilaian where status='teman' ORDER BY id_pertanyaan_penilaian DESC");
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    $jwb = mysql_fetch_array(mysql_query("SELECT * FROM rb_pertanyaan_penilaian_jawab where nisn='$_GET[id]' AND nisn_teman='$_GET[nisn]' AND id_pertanyaan_penilaian='$r[id_pertanyaan_penilaian]' AND status='teman' AND kode_kelas='$tt[kode_kelas]'"));
                    if (trim($jwb[jawaban])==''){
                      $jawab = "<i style='color:red'>Belum Ada Jawaban...</i>";
                    }else{
                      $jawab = "<i>$jwb[jawaban]</i>";
                    }
                    echo "<tr><td>$no</td>
                              <td>$r[pertanyaan] <br> <strong>Jawaban :</strong> <br>$jawab</td>
                          </tr>";
                      $no++;
                      }
                  ?>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
<?php
}
?>