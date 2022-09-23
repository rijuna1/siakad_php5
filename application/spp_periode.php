<?php 
  $data_tahun_ajar = mysql_query("SELECT tahun_ajar FROM rb_tahun_akademik a where a.aktif='Ya' and not EXISTS (select * from rb_spp_periode b where a.tahun_ajar = b.tahun_ajar)");
  $fetch = mysql_fetch_array($data_tahun_ajar);
  $tahun_ajar = [$fetch[tahun_ajar]];
  if ($_GET[act]==''){ 
?> 
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Periode SPP </h3>
                  <?php if($_SESSION[level]!='kepala'){ ?>
                  <a class='pull-right btn btn-primary btn-sm' href='index.php?view=sppperiode&act=tambah'>Tambahkan Periode SPP</a>
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
                        <th style='width:40px'>No</th>
                        <th>Tahun Ajar</th>
                        <th>Periode SPP</th>
                        <th>Biaya SPP</th>
                        <?php if($_SESSION[level]!='kepala'){ ?>
                          <th style='width:70px'>Action</th>
                        <?php } ?>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $tampil = mysql_query("SELECT * FROM `rb_spp_periode` ORDER BY id_spp_periode");
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[tahun_ajar]</td>
                              <td>$r[periode_spp]</td>
                              <td>$r[biaya_spp]</td>";
                              if($_SESSION[level]!='kepala'){
                        echo "<td><center>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='index.php?view=sppperiode&act=edit&id=$r[id_spp_periode]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='index.php?view=sppperiode&hapus=$r[id_spp_periode]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }
                      if (isset($_GET[hapus])){
                          mysql_query("DELETE FROM rb_spp_periode where id_spp_periode='$_GET[hapus]'");
                          echo "<script>document.location='index.php?view=sppperiode';</script>";
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
        $query = mysql_query("UPDATE rb_spp_periode SET tahun_ajar = '$_POST[a]',
                                         periode_spp = '$_POST[b]', biaya_spp = '$_POST[c]' where id_spp_periode='$_POST[id]'");
        if ($query){
          echo "<script>document.location='index.php?view=sppperiode&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=sppperiode&gagal';</script>";
        }
    }
    $edit = mysql_query("SELECT * FROM rb_spp_periode where id_spp_periode='$_GET[id]'");
    $s = mysql_fetch_array($edit);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                <h3 class='box-title'>Edit Data Periode SPP</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[id_spp_periode]'>
                    <tr>
                      <th width='120px' scope='row'>Tahun Ajar</th> 
                      <td>
                        <select class='form-control' name='a'  readonly> 
                            <option value='$s[tahun_ajar]' selected>$s[tahun_ajar]</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <th scope='row'>Periode SPP</th> 
                      <td>
                        <div class='input-group date' id='datetimepicker'>
                          <input type='text' class='form-control' name='b' value= '$s[periode_spp]' readonly>
                          <span class='input-group-addon'>
                            <span class='glyphicon glyphicon-calendar'></span>
                          </span>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th width='120px' scope='row'>Biaya SPP</th> 
                      <td>
                        <input type='number' class='form-control' name='c' value= '$s[biaya_spp]'>
                      </td>
                    </tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='update' class='btn btn-info'>Update</button>
                    <a href='index.php?view=jeniskeuangan'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
              </form>
            </div>";
}elseif($_GET[act]=='tambah'){
    if (isset($_POST[tambah])){
        $tahun_ajar = [$_POST[a]];
        $bulan = [$_POST[b1]];
        $biaya = [$_POST[c]];
        $tanggal1 = strtotime($_POST[b1]);
        $tanggal2 = strtotime($_POST[b2]);
        $hitung = $tanggal2 - $tanggal1 ;
        $selisih = round($hitung /60/60/24/30);
        
        for ($x = 1; $x <= $selisih; $x++ )
        {
          array_push($bulan,date('Y-m', strtotime($x .' month', strtotime($_POST[b1]))));
        }

        $count = count($bulan);

        for ($i = 0; $i < $count; $i++)
        {
          $periode_spp = $bulan[$i];
          $query = mysql_query("INSERT INTO rb_spp_periode VALUES('','$_POST[a]','$periode_spp','$_POST[c]')");
        }
        if ($query){
          echo "<script>document.location='index.php?view=sppperiode&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=sppperiode&gagal';</script>";
        }
    }
    var_dump($tahun_ajar);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Data Periode SPP</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr>
                      <th width='120px' scope='row'>Tahun Ajar</th> 
                      <td colspan='3'>
                        <select class='form-control' name='a'> 
                            <option value='0' selected>- Pilih Tahun Ajar -</option>";
                            for($x = 0; $x < count($tahun_ajar); $x++) {
                              echo "<option value='$tahun_ajar[$x]'>$tahun_ajar[$x]</option>";}
                          echo "</select>
                      </td>
                    </tr>
                    <tr>
                      <th scope='row'>Periode SPP</th> 
                      <td>
                        <div class='input-group date' id='datetimepicker'>
                          <input type='text' class='form-control' name='b1'>
                          <span class='input-group-addon'>
                            <span class='glyphicon glyphicon-calendar'></span>
                          </span>
                        </div>
                      </td>
                      <td>
                        <div> - </div>
                      </td>
                      <td>
                        <div class='input-group date' id='datetimepicker2'>
                          <input type='text' class='form-control' name='b2'>
                          <span class='input-group-addon'>
                            <span class='glyphicon glyphicon-calendar'></span>
                          </span>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th width='120px' scope='row'>Biaya SPP</th> 
                      <td colspan='3'>
                        <input type='number' class='form-control' name='c'>
                      </td>
                    </tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php?view=jeniskeuangan'><button type='button' class='btn btn-default pull-right'>Cancel</button></a> 
                  </div>
              </form>
            </div>
            <script type='text/javascript'>
              $(function () {
                $('#datetimepicker').datepicker({
                  format:'yyyy-mm',
                  startView: 'months',
                  minViewMode: 'months'
                }).on('change', function(){
                  $('.datepicker').hide();
                });
              });
              $(function () {
                $('#datetimepicker2').datepicker({
                  format:'yyyy-mm',
                  startView: 'months',
                  minViewMode: 'months'
                }).on('change', function(){
                  $('.datepicker').hide();
                });
              });
            </script>
            ";
}
?>