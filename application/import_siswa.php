
 <?php
include "Barcode39.php";
include "../config/koneksi.php";
   //memanggil file excel_reader
if(isset($_POST['submit'])){



include "excel_reader.php";
 
    $target = basename($_FILES['filepegawaiall']['name']) ;
    move_uploaded_file($_FILES['filepegawaiall']['tmp_name'], $target);
    
    $data = new Spreadsheet_Excel_Reader($_FILES['filepegawaiall']['name'],false);
    
//    menghitung jumlah baris file xls
    $baris = $data->rowcount($sheet_index=0);
    
//    import data excel mulai baris ke-2 (karena tabel xls ada header pada baris 1)
    for ($i=2; $i<=$baris; $i++)
    {
//       membaca data (kolom ke-1 sd terakhir)
      $aa  = $data->val($i, 1);
      $ab  = $data->val($i, 2);
      $ac  = $data->val($i, 3);
      $ad  = $data->val($i, 4);
      $ae  = $data->val($i, 5);
      $af  = $data->val($i, 6);
      $ag  = $data->val($i, 7);
      $ah  = $data->val($i, 8);
      $ai  = $data->val($i, 9);
      $aj  = $data->val($i, 10);
      $ak  = $data->val($i, 11);
      $al  = $data->val($i, 12);
      $am  = $data->val($i, 13);
      $an  = $data->val($i, 14);
      $ao  = $data->val($i, 15);
      $ap  = $data->val($i, 16);
      $aq  = $data->val($i, 17);
      $ar  = $data->val($i, 18);
      $as  = $data->val($i, 19);
      $at  = $data->val($i, 20);
      $au  = $data->val($i, 21);
      $av  = $data->val($i, 22);
	  $aw  = $data->val($i, 23);
	  $ax  = $data->val($i, 24);
	  $ay  = $data->val($i, 25);
	  $az  = $data->val($i, 26); 
	  $ba  = $data->val($i, 27);
      $bb  = $data->val($i, 28);
      $bc  = $data->val($i, 29);
      $bd  = $data->val($i, 30);
      $be  = $data->val($i, 31);
      $bf  = $data->val($i, 32);
      $bg  = $data->val($i, 33);
      $bh  = $data->val($i, 34);
      $bi  = $data->val($i, 35);
      $bj  = $data->val($i, 36);
      $bk  = $data->val($i, 37);
      $bl  = $data->val($i, 38);
      $bm  = $data->val($i, 39);
      $bn  = $data->val($i, 40);
      $bo  = $data->val($i, 41);
      $bp  = $data->val($i, 42);
      $bq  = $data->val($i, 43);
      $br  = $data->val($i, 44);
      $bs  = $data->val($i, 45);
      $bt  = $data->val($i, 46);
      $bu  = $data->val($i, 47);
      $bv  = $data->val($i, 48);
	  $bw  = $data->val($i, 49);
	  $bx  = $data->val($i, 50);
	  $by  = $data->val($i, 51);
	  $bz  = $data->val($i, 52); 
	  
	  $bar = $ae;
$mm = siswa.'-'.basename($bar);
// set object
$zz = new Barcode39($bar);

// set text size
$zz->barcode_text_size = 5;

// set barcode bar thickness (thick bars)
$zz->barcode_bar_thick = 4;

// set barcode bar thickness (thin bars)
$zz->barcode_bar_thin = 2;

// save barcode GIF file
$zz->draw("foto_siswa/barcode/".$mm.".png");
	  
 if($aa != "" && $ab != ""){

//      setelah data dibaca, masukkan ke tabel pegawai sql
      $query = "INSERT INTO rb_siswa (nipd, password, nama, id_jenis_kelamin, nisn, tempat_lahir, tanggal_lahir, nik, id_agama, kebutuhan_khusus, alamat, rt, rw, dusun, kelurahan, kecamatan, kode_pos, jenis_tinggal, alat_transportasi, telepon, hp, email, skhun, 
										penerima_kps, no_kps, foto, nama_ayah, tahun_lahir_ayah, pendidikan_ayah, pekerjaan_ayah, penghasilan_ayah, kebutuhan_khusus_ayah, no_telpon_ayah,
										nama_ibu, tahun_lahir_ibu, pendidikan_ibu, pekerjaan_ibu, penghasilan_ibu, kebutuhan_khusus_ibu, no_telpon_ibu,
										nama_wali, tahun_lahir_wali, pendidikan_wali, pekerjaan_wali, penghasilan_wali, angkatan, status_awal, status_siswa, tingkat, kode_kelas, kode_jurusan, id_sesi) VALUES 
                      ('$aa', '$ab', '$ac', '$ad', '$ae', '$af', '$ag', '$ah', '$ai', '$aj', '$ak', '$al', '$am', '$an', '$ao', '$ap', '$aq', '$ar', '$as', '$at', '$au', '$av', '$aw', '$ax', '$ay', '$az', '$ba','$bb', '$bc', '$bd', '$be',
						'$bf', '$bg', '$bh', '$bi', '$bj', '$bk', '$bl', '$bm', '$bn', '$bo', '$bp', '$bq','$br', '$bs','$bt', '$bu', '$bv', '$bw', '$bx', '$by', '$bz')";
        
	  $hasil = mysql_query($query);
	  }
	  }
    if($hasil){
//          jika import gagal
           echo "<script>document.location='index.php?view=upload&sukses';</script>";
      }else{
//          jika impor berhasil
         echo "<script>document.location='index.php?view=upload&gagal';</script>";
    }
			}
			echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Import Siswa</h3>
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
			
echo"
              <form name='myForm' id='myForm' onSubmit='return validateForm()' action='' method='post' enctype='multipart/form-data'>
    <input type='file' id='filepegawaiall' class='form-control' name='filepegawaiall' required /><br />
    <input type='submit' name='submit' class='brn btn-sm btn-success' value='Import' /><br/>
   
</form>
<script type='text/javascript'>
//    validasi form (hanya file .xls yang diijinkan)
    function validateForm()
    {
        function hasExtension(inputID, exts) {
            var fileName = document.getElementById(inputID).value;
            return (new RegExp('(' + exts.join('|').replace(/\./g, '\\.') + ')$')).test(fileName);
        }
 
        if(!hasExtension('filepegawaiall', ['.xls'])){
            alert('Hanya file XLS (Excel 2003) yang diijinkan.');
            return false;
        }
    }
</script>
                ";
			
?>
 