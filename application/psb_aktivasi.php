<?php if ($_GET[act]==''){ ?> 
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Aktivasi Pendaftaran </h3>
                  <?php if($_SESSION[level]!='kepala'){ ?>
                    <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='POST'>
                      <input type="text" name='nama' style='padding:3px; width:250px' placeholder='Nama Calon Siswa' value='<?php echo $_GET[angkatan]; ?>'>
                      <select name='status' style='padding:4px'>
                          <option value='' selected>- Pilih Status -</option>
                          <option value='sma'>SMA</option>
                          <option value='smk'>SMK</option>
                          <option value='smp'>SMP</option>
                      </select>
                      <input type="submit" name='tambahkan' style='margin-top:-4px' class='btn btn-info btn-sm' value='Tambahkan'>
                    </form>
                  <?php } ?>
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
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:30px'>No</th>
                        <th>Kode Aktivasi</th>
                        <th>Nama Lengkap</th>
                        <th>Status</th>
                        <th>Proses</th>
                        <th>Waktu Input</th>
                        <?php if($_SESSION[level]!='kepala'){ ?>
                        <th style='width:95px'>Action</th>
                        <?php } ?>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $tampil = mysql_query("SELECT * FROM rb_psb_aktivasi ORDER BY id_aktivasi DESC");
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    if ($r[proses]==1){
                      $proses = '<i style="color:green">Terdaftar</i>';
                    }else{
                      $proses = '<i style="color:red">Pending</i>';
                    }
                    $ex = explode(' ', $r[waktu_input]);
                    echo "<tr><td>$no</td>
                              <td>$r[kode_pendaftaran]</td>
                              <td>$r[nama_lengkap]</td>
                              <td>$r[status]</td>
                              <td>$proses</td>
                              <td>".tgl_indo($ex[0]).", ".$ex[1]."</td>";
                              if($_SESSION[level]!='kepala'){
                        echo "<td><center>
                                <a target='_BLANK' class='btn btn-success btn-xs' title='Print Kartu' href='print-psb3.php?id=$r[id_aktivasi]'><span class='glyphicon glyphicon-print'></span> Print</a>
                                <a class='btn btn-info btn-xs' title='Edit Data' href='?view=psbaktivasi&act=edit&id=$r[id_aktivasi]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='?view=psbaktivasi&hapus=$r[id_aktivasi]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }
                      if (isset($_GET[hapus])){
                          mysql_query("DELETE FROM rb_psb_aktivasi where id_aktivasi='$_GET[hapus]'");
                          echo "<script>document.location='index.php?view=psbaktivasi';</script>";
                      }

                      if (isset($_POST[tambahkan])){
                          if ($_POST[status] == 'sma'){
                              $kode = "SMA-".date('YmdHis');
                          }elseif($_POST[status] == 'smk'){
                              $kode = "SMK-".date('YmdHis');
                          }else{
                              $kode = "SMP-".date('YmdHis');
                          }
                          $query = mysql_query("INSERT INTO rb_psb_aktivasi VALUES('','$kode','$_POST[nama]','$_POST[status]','0','".date('Y-m-d H:i:s')."')");
                          if ($query){
                            echo "<script>document.location='index.php?view=psbaktivasi&sukses';</script>";
                          }else{
                            echo "<script>document.location='index.php?view=psbaktivasi&gagal';</script>";
                          }
                      }

                  ?>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
<?php 
}elseif($_GET[act]=='edit'){
    if (isset($_POST[update])){
      $cek = mysql_fetch_array(mysql_query("SELECT * FROM rb_psb_aktivasi where id_aktivasi='$_POST[id]'"));
      if ($cek[status]==$_POST[b]){
          $kodea = $_POST[kode];
      }else{
        if ($_POST[b] == 'sma'){
          $kodea = "SMA-".date('YmdHis');
        }elseif($_POST[b] == 'smk'){
          $kodea = "SMK-".date('YmdHis');
        }else{
          $kodea = "SMP-".date('YmdHis');
        }
      }
        $query = mysql_query("UPDATE rb_psb_aktivasi SET kode_pendaftaran = '$kodea',
                                                nama_lengkap = '$_POST[a]',
                                                status = '$_POST[b]' where id_aktivasi='$_POST[id]'");
        if ($query){
          echo "<script>document.location='index.php?view=psbaktivasi&sukses';</script>";
        }else{
           echo "<script>document.location='index.php?view=psbaktivasi&gagal';</script>";
        }
    }
    $edit = mysql_query("SELECT * FROM rb_psb_aktivasi where id_aktivasi='$_GET[id]'");
    $s = mysql_fetch_array($edit);
    if ($s[status] == 'sma'){
        $kode = "SMA";
    }elseif($s[status] == 'smk'){
        $kode = "SMK";
    }else{
        $kode = "SMP";
    }
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Aktivasi</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[id_aktivasi]'>
                    <input type='hidden' name='kode' value='$s[kode_pendaftaran]'>
                    <tr><th width='120px' scope='row'>Kode Aktivasi</th> <td><input type='text' class='form-control' value='$s[kode_pendaftaran]' disabled> </td></tr>
                    <tr><th width='120px' scope='row'>Nama Lengkap</th> <td><input type='text' class='form-control' name='a' value='$s[nama_lengkap]'> </td></tr>
                    <tr><th width='120px' scope='row'>Status</th> <td>
                      <select name='b' style='padding:4px'>
                          <option value='$s[status]' selected>$kode</option>
                          <option value='sma'>SMA</option>
                          <option value='smk'>SMK</option>
                          <option value='smp'>SMP</option>
                      </select>
                    </td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='update' class='btn btn-info'>Update</button>
                    <a href='index.php?view=kelas'><button class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
              </form>
            </div>";
}
?>