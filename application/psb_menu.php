<?php if ($_GET[act]==''){ ?> 
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data menu PSB </h3>
                  <?php if($_SESSION[level]!='kepala'){ ?>
                  <a class='pull-right btn btn-primary btn-sm' href='index.php?view=psbmenu&act=tambah'>Tambahkan Data</a>
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
                        <th>Nama menu</th>
                        <th>Sub Menu</th>
                        <th>Icon</th>
                        <th>Url menu</th>
                        <th>Aktif</th>
                        <th>Urutan</th>
                        <?php if($_SESSION[level]!='kepala'){ ?>
                        <th style='width:70px'>Action</th>
                        <?php } ?>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $tampil = mysql_query("SELECT * FROM rb_menu where status='psb' ORDER BY id_menu DESC");
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    $sub = mysql_fetch_array(mysql_query("SELECT * FROM rb_menu where id_menu='$r[id_parent]'"));
                    if ($sub[nama_menu] != ''){
                       $subkategori = $sub[nama_menu];
                    }else{
                       $subkategori = 'Menu Utama';
                    }

                    echo "<tr><td>$no</td>
                              <td>$r[nama_menu]</td>
                              <td>$subkategori</td>
                              <td>$r[icon]</td>
                              <td>$r[link]</td>
                              <td>$r[aktif]</td>
                              <td>$r[urutan]</td>";
                              if($_SESSION[level]!='kepala'){
                        echo "<td><center>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='index.php?view=psbmenu&act=edit&id=$r[id_menu]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='index.php?view=psbmenu&hapus=$r[id_menu]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }
                      if (isset($_GET[hapus])){
                          mysql_query("DELETE FROM rb_menu where id_menu='$_GET[hapus]'");
                          echo "<script>document.location='index.php?view=psbmenu';</script>";
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
        $query = mysql_query("UPDATE rb_menu SET id_parent = '$_POST[a]',
                                        nama_menu = '$_POST[b]',
                                        icon = '$_POST[c]',
                                        link = '$_POST[d]',
                                        aktif = '$_POST[e]',
                                        urutan = '$_POST[f]' where id_menu='$_POST[id]'");
        if ($query){
          echo "<script>document.location='index.php?view=psbmenu&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=psbmenu&gagal';</script>";
        }

    }
    $edit = mysql_query("SELECT * FROM rb_menu where id_menu='$_GET[id]'");
    $s = mysql_fetch_array($edit);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Menu PSB</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[id_menu]'>
                    <tr><th width='120px' scope='row'>Sub Menu</th> <td>
                            <select class='form-control' name='a'>
                              <option value='0'>Menu Utama</option>";
                        $sub = mysql_query("SELECT * FROM rb_menu where id_parent='0' AND status='psb'");
                        while ($su = mysql_fetch_array($sub)){
                          if ($s[id_parent]==$su[id_menu]){
                            echo "<option value='$su[id_menu]' selected>$su[nama_menu]</option>";
                          }else{
                            echo "<option value='$su[id_menu]'>$su[nama_menu]</option>";
                          }
                        }
                    echo "</select></td></tr>
                    <tr><th width='120px' scope='row'>Nama menu</th> <td><input type='text' class='form-control' name='b' value='$s[nama_menu]'> </td></tr>
                    <tr><th width='120px' scope='row'>Icon</th> <td><input type='text' class='form-control' name='c' value='$s[icon]'> </td></tr>
                    <tr><th width='120px' scope='row'>Url</th> <td><input type='text' class='form-control' name='d' value='$s[link]'> </td></tr>
                    <tr><th scope='row'>Aktif</th>                <td>";
                                                                  if ($s[aktif]=='Ya'){
                                                                      echo "<input type='radio' name='e' value='Ya' checked> Ya
                                                                             <input type='radio' name='e' value='Tidak'> Tidak";
                                                                  }else{
                                                                      echo "<input type='radio' name='e' value='Ya'> Ya
                                                                             <input type='radio' name='e' value='Tidak' checked> Tidak";
                                                                  }
                  echo "</td></tr>
                  <tr><th width='120px' scope='row'>Urutan</th> <td><input type='text' class='form-control' name='f' value='$s[urutan]'> </td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='update' class='btn btn-info'>Update</button>
                    <a href='index.php?view=psbmenu'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
              </form>
            </div>";
}elseif($_GET[act]=='tambah'){
    if (isset($_POST[tambah])){
        $query = mysql_query("INSERT INTO rb_menu VALUES('','$_POST[a]','$_POST[b]','$_POST[c]','$_POST[d]','$_POST[e]','$_POST[f]','psb')");
        if ($query){
          echo "<script>document.location='index.php?view=psbmenu&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=psbmenu&gagal';</script>";
        }
    }

    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Data Menu PSB</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr><th width='120px' scope='row'>Sub Menu</th> <td>
                            <select class='form-control' name='a'>
                              <option value='0'>Menu Utama</option>";
                        $sub = mysql_query("SELECT * FROM rb_menu where id_parent='0' AND status='psb'");
                        while ($su = mysql_fetch_array($sub)){
                            echo "<option value='$su[id_menu]'>$su[nama_menu]</option>";
                        }
                    echo "</select></td></tr>
                    <tr><th width='120px' scope='row'>Nama menu</th> <td><input type='text' class='form-control' name='b'> </td></tr>
                    <tr><th width='120px' scope='row'>Icon</th> <td><input type='text' class='form-control' name='c'> </td></tr>
                    <tr><th width='120px' scope='row'>Url</th> <td><input type='text' class='form-control' name='d'> </td></tr>
                    <tr><th scope='row'>Aktif</th>                <td><input type='radio' name='e' value='Ya' checked> Ya
                                                                             <input type='radio' name='e' value='Tidak'> Tidak</td></tr>
                  <tr><th width='120px' scope='row'>Urutan</th> <td><input type='text' class='form-control' name='f' value='$s[urutan]'> </td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php?view=psbmenu'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
              </form>
            </div>";
}
?>