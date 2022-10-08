<?php 
if ($_GET[act]==''){ 
?> 
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Pembayaran SPP Siswa </h3>
                  <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
                    <input type="hidden" name='view' value='sppbayar'>
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

                <?php 
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
                ?>

                <form action='' method='POST'>
                <input type="hidden" name='kelas' value='<?php echo $_GET[kelas]; ?>'>
                <?php 
                $j = mysql_fetch_array(mysql_query("SELECT * FROM `rb_keuangan_jenis` where id_keuangan_jenis='$_GET[biaya]'"));
                $th = mysql_fetch_array(mysql_query("SELECT * FROM rb_tahun_akademik where aktif='Ya'"));
                echo "<table id='example1' class='table table-bordered table-striped'>
                    <thead>
                    <tr><th width='30px'>No</th>
                        <th>NIPD</th>
                        <th>NISN</th>
                        <th>Nama Siswa</th>
                        <th>Kelas</th>
                        <th>Status</th>
                        <th width='140px'>Action</th>
                        </tr>
                    </thead>
                    <tbody>";

                  if ($_GET[kelas] != ''){
                    $tampil = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                              LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                                LEFT JOIN rb_jurusan d ON b.kode_jurusan=d.kode_jurusan 
                                                  where a.kode_kelas='$_GET[kelas]' ORDER BY a.id_siswa");
                  }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    $checking = mysql_fetch_array(mysql_query("SELECT a.* FROM rb_siswa a where EXISTS (SELECT * from rb_spp_bayar b where a.id_siswa = b.id_siswa) and a.nisn = '$r[nisn]'"));
                    $tunggak1 = mysql_fetch_array(mysql_query("WITH sub AS (
                                SELECT a.id_siswa, b.periode_spp FROM rb_spp_bayar a LEFT JOIN rb_spp_periode b ON a.id_spp_periode = b.id_spp_periode WHERE a.id_siswa = $r[id_siswa] ORDER BY b.periode_spp DESC LIMIT 1)
                                SELECT date_format(concat(periode_spp,'-01'), '%Y %m %d') as periode, TIMESTAMPDIFF(MONTH, date_format(concat(periode_spp,'-01'), '%Y-%m-%d'), now()) as tunggak FROM sub"));
                    $tunggak2 = mysql_fetch_array(mysql_query("WITH sub AS( SELECT a.id_siswa, b.periode_spp FROM rb_siswa a LEFT JOIN rb_spp_periode b ON a.angkatan = b.tahun_ajar WHERE a.id_siswa = $r[id_siswa] ORDER BY b.periode_spp ASC LIMIT 1) SELECT date_format(concat(periode_spp,'-01'), '%Y %m %d') as periode, TIMESTAMPDIFF(MONTH, date_format(concat(periode_spp,'-01'), '%Y-%m-%d'), now()) + 1 as tunggak FROM sub"));
                    if($checking){
                      if($tunggak1[tunggak] > 0){
                        $status = 'Tunggakan ' . $tunggak1[tunggak] . ' bulan';
                        $class = 'red';
                      }else{
                        $status = 'Tunggakan ' . $tunggak2[tunggak] . ' bulan';
                        $class = 'red';
                      }
                    }else{
                      $status = 'Lunas';
                      $class = 'green';
                    }
                    $t = mysql_fetch_array(mysql_query("SELECT sum(total_bayar) as total FROM `rb_keuangan_bayar` where id_keuangan_jenis='$_GET[biaya]' AND kode_kelas='$r[kode_kelas]' AND nisn='$r[nisn]' AND tahun_akademik='$th[id_tahun_akademik]'"));
                    ##untuk edit status pembayaran SPP
                    echo "<tr><td>$no</td>
                              <td>$r[nipd]</td>
                              <td>$r[nisn]</td>
                              <td>$r[nama]</td>
                              <td>$r[nama_kelas]</td>
                              <td><i style='color:$class'>$status</i></td>";
                              if ($_GET[kelas] != '' AND $_GET[biaya] != ''){
                                if ($j[total_beban] != '0'){
                                  echo "<td><i style='color:$class'>$status</i></td>";
                                }
                              }

                              echo "<td>
                                      <center>
                                        <a class='btn btn-info btn-xs' title='Lihat Detail' href='index.php?view=sppbayar&act=detail&nisn=$r[nisn]'><span class='glyphicon glyphicon-search'></span> Lihat Detail</a> 
                                      </center>
                                    </td>
                          </tr>";
                      $no++;
                      }
                  ?>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
                <?php 
                    if ($_GET[kelas] == '' AND $_GET[biaya] == ''){
                        echo "<center style='padding:60px; color:red'>Silahkan Memilih Kelas Terlebih dahulu...</center>";
                    }
                ?>
              </div><!-- /.box -->
              </form>
            </div>
<?php 
}elseif($_GET[act]=='detail'){
    if (isset($_POST[proses])){
        $query = mysql_query("INSERT INTO rb_spp_bayar VALUES('','$_POST[id_siswa]','$_POST[id_spp_periode]','$_POST[biaya_spp]','$_POST[bayar_spp]','".date('Y-m-d H:i:s')."')");
        if ($query){
          echo "<script>document.location='index.php?view=sppbayar&act=detail&nisn=$_POST[nisn]&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=sppbayar&act=detail&nisn=$_POST[nisn]&gagal';</script>";
        }
    }

    $checking = mysql_fetch_array(mysql_query("SELECT a.* FROM rb_siswa a where EXISTS (SELECT * from rb_spp_bayar b where a.id_siswa = b.id_siswa) and a.nisn = '$_GET[nisn]'"));
    $check_periode = mysql_fetch_array(mysql_query("SELECT b.* FROM rb_siswa a LEFT JOIN rb_spp_periode b on a.angkatan = b.tahun_ajar WHERE a.nisn = '$_GET[nisn]' ORDER BY b.periode_spp ASC LIMIT 1"));
    $check_siswa = mysql_fetch_array(mysql_query("SELECT * FROM `rb_siswa` a JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas where a.nisn='$_GET[nisn]'"));
    
    $check_periode_exist = mysql_fetch_array(mysql_query("SELECT * FROM rb_spp_periode x where x.periode_spp > (SELECT c.periode_spp FROM rb_siswa a LEFT JOIN rb_spp_bayar b on a.id_siswa = b.id_siswa LEFT JOIN rb_spp_periode c on b.id_spp_periode = c.id_spp_periode ORDER BY c.periode_spp DESC LIMIT 1) ORDER BY x.periode_spp ASC LIMIT 1")); 
            echo "<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
                  <h3 class='box-title'>Data Pembayaran SPP Siswa</h3>
                  <a class='pull-right btn btn-sm btn-warning' href='index.php?view=sppbayar&kelas=$check_siswa[kode_kelas]'>Kembali</a>
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

                  if (!$checking){
                    echo "
                      <div class='col-md-12'>
                        <form action='' method='POST'>
                          <table class='table table-condensed table-hover'>
                            <tbody>
                              <input type='hidden' name='id_siswa' value='$check_siswa[id_siswa]'>
                              <input type='hidden' name='id_spp_periode' value='$check_periode[id_spp_periode]'>
                              <input type='hidden' name='biaya_spp' value='$check_periode[biaya_spp]'>
                              <input type='hidden' name='nisn' value='$check_siswa[nisn]'>
                              <tr><th width='120px' scope='row'>Nama Kelas</th> <td>$check_siswa[nama_kelas]</td></tr>
                              <tr><th scope='row'>Nama Siswa</th> <td>$check_siswa[nama]</td></tr>
                              <tr><th scope='row'>Tahun Ajar</th> <td>$check_periode[tahun_ajar]</td></tr>
                              <tr><th scope='row'>Periode SPP</th> <td>$check_periode[periode_spp]</td></tr>
                              <tr><th scope='row'>Biaya SPP</th> <td>$check_periode[biaya_spp]</td></tr>
                              <tr><th scope='row'>Tunggak</th> <td>$check_periode[biaya_spp]</td></tr>
                              <tr><th scope='row'>Bayar SPP</th> <td>
                                <input type='text' name='bayar_spp' value='$check_periode[biaya_spp]' readonly> 
                                <input type='submit' name='proses' value='Proses'>
                              </td></tr>
                            </tbody>
                          </table>
                        </form>
                      </div>";
                  } else {
                    echo "
                      <div class='col-md-12'>
                        <form action='' method='POST'>
                          <table class='table table-condensed table-hover'>
                            <tbody>
                              <input type='hidden' name='id_siswa' value='$check_siswa[id_siswa]'>
                              <input type='hidden' name='id_spp_periode' value='$check_periode_exist[id_spp_periode]'>
                              <input type='hidden' name='biaya_spp' value='$check_periode_exist[biaya_spp]'>
                              <input type='hidden' name='nisn' value='$check_siswa[nisn]'>
                              <tr><th width='120px' scope='row'>Nama Kelas</th> <td>$check_siswa[nama_kelas]</td></tr>
                              <tr><th scope='row'>Nama Siswa</th> <td>$check_siswa[nama]</td></tr>
                              <tr><th scope='row'>Tahun Ajar</th> <td>$check_periode_exist[tahun_ajar]</td></tr>
                              <tr><th scope='row'>Periode SPP</th> <td>$check_periode_exist[periode_spp]</td></tr>
                              <tr><th scope='row'>Biaya SPP</th> <td>$check_periode_exist[biaya_spp]</td></tr>
                              <tr><th scope='row'>Tunggak</th> <td>$check_periode_exist[biaya_spp]</td></tr>
                              <tr><th scope='row'>Bayar SPP</th> <td>
                                <input type='text' name='bayar_spp' value='$check_periode_exist[biaya_spp]' readonly> 
                                <input type='submit' name='proses' value='Proses'>
                              </td></tr>
                            </tbody>
                          </table>
                        </form>
                      </div>";
                  }
                      echo "
                      <table id='example' class='table table-bordered table-striped'>
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Periode SPP</th>
                        <th>Total Bayar</th>
                        <th>Tanggal Bayar</th>";
                        if($_SESSION[level]!='kepala'){
                            echo "<th>Action</th>";
                        }
                      echo "</tr>
                    </thead>
                    <tbody>";
                      $tampil = mysql_query("SELECT a.id_spp_bayar, b.nisn, c.periode_spp, a.bayar_spp, a.waktu_bayar FROM rb_spp_bayar a LEFT JOIN rb_siswa b ON a.id_siswa = b.id_siswa LEFT JOIN rb_spp_periode c ON a.id_spp_periode = c.id_spp_periode WHERE b.nisn = '220001' ORDER BY c.periode_spp DESC");
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    $ex = explode(' ',$r[waktu_bayar]);
                    echo "<tr><td>$no</td>
                              <td>$r[periode_spp]</td>
                              <td>Rp ".number_format($r[bayae_spp])."</td>
                              <td>".tgl_indo($ex[0])." ".$ex[1]." WIB</td>";
                              if($_SESSION[level]!='kepala'){
                                if($no == 1) {
                                echo "<td style='width:80px !important'><center>
                                        <a class='btn btn-danger btn-xs' title='Delete Data' href='index.php?view=sppbayar&act=detail&nisn=$_GET[nisn]&hapus=$r[id_spp_bayar]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                                      </center></td>";
                                } else {
                                  echo "<td style='width:80px !important'><center>
                                        <div class='btn btn-danger btn-xs disabled'><span class='glyphicon glyphicon-remove'></span></div>
                                      </center></td>";
                                }
                            }
                            echo "</tr>";
                      $no++;
                      }

                      if (isset($_GET[hapus])){
                        mysql_query("DELETE FROM rb_spp_bayar where id_spp_bayar='$_GET[hapus]'");
                        echo "<script>document.location='index.php?view=sppbayar&act=detail&nisn=$_GET[nisn]';</script>";
                      }

                    echo "<tbody>
                  </table>
                </div>
                </div>
            </div>";
}
?>