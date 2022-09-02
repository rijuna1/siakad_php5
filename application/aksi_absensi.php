<?php 
error_reporting(0);
ini_set('max_execution_time', 300);
session_start();
include "../../../config/class_database.php";
include "../../../config/serverconfig.php";
include "../../../config/debug.php";

$module=$_GET['mod'];
$act=$_GET['act'];


if($module=='absensi' AND $act=='masuk' ){


if(isset($_POST['masuk'])){
	 
		$max=date('04:00:00');
		if($_POST['jam']<$max){
		mysql_query("insert into absen set no_induk='$_POST[nis]',
											 tanggal_absen='$_POST[tgl]',
											 jam_masuk='$_POST[jam]',
											 status_masuk='Y',
											 status_keluar='N'");
		header("location:../../index.php?mod=absensi");
		}else {
				
				mysql_query("insert into absen set no_induk='$_POST[nis]',
											 tanggal_absen='$_POST[tgl]',
											 jam_masuk='$_POST[jam]',
											 status_masuk='Y',
											 status_keluar='N',
											 terlambat='Y'");
				echo "<script>alert('Anda Telat ! Tolong Jangan Ulangi Lagi ^_^ '); window.location = '../../index.php?mod=absensi'</script>";
			}
		}

	
 if(isset($_POST['izin'])){
	$absen=mysql_query("select * from absen where tanggal_absen='$_POST[tgl]' 
	and nip='$_POST[nip]'");
	if(mysql_num_rows($absen)>0){
	echo "<script>alert('Anda telah melakukan absen!!'); window.location = '../../index.php?mod=absensi'</script>";
	}else { 
		mysql_query("insert into absen set no_induk='$_POST[nis]',
											 tanggal_absen='$_POST[tgl]',
											 jam_masuk='$_POST[jam]',
											 status_masuk='N',
											 status_keluar='N',
											 ket='I'");
		header("location:../../index.php?mod=absensi");
	}
 }
 
 if(isset($_POST['sakit'])){
	$absen=mysql_query("select * from absen where tanggal_absen='$_POST[tgl]' 
	and nip='$_POST[nis]'");
	if(mysql_num_rows($absen)>0){
	echo "<script>alert('Anda telah melakukan absen!!'); window.location =' ../../index.php?mod=absensi'</script>";
	}else { 
		mysql_query("insert into absen set no_induk='$_POST[nis]',
											 tanggal_absen='$_POST[tgl]',
											 jam_masuk='$_POST[jam]',
											 status_masuk='N',
											 status_keluar='N',
											 ket='S'");
		header("location:../../index.php?mod=absensi");
	}
 }
}
 
 




if($module=='absensi' AND $act=='keluar' ){
	date_default_timezone_set("Asia/Jakarta");
	$waktu= date ('H:i:s');
	$absen=mysql_query("select * from absensi where status_keluar='Y' and 
	id_absensi='$_GET[id]'");
	$absen2=mysql_query("select * from absensi where ket='I' and 
	id_absensi='$_GET[id]'");
	$absen3=mysql_query("select * from absensi where ket='S' and 
	id_absensi='$_GET[id]'");
if(mysql_num_rows($absen)>0){
    echo "<script>alert('Anda telah melakukan absen keluar'); window.location = '../../index.php?mod=absensi'</script>";
}else if(mysql_num_rows($absen2)>0){
    echo "<script>alert('Anda tidak bisa melakukan absen keluar'); window.location = '../../index.php?mod=absensi'</script>";
}else if(mysql_num_rows($absen3)>0){
    echo "<script>alert('Anda tidak bisa melakukan absen keluar'); window.location = '../../index.php?mod=absensi'</script>";
}else {
	mysql_query("update absen set jam_keluar ='$waktu', status_keluar='Y', ket='M' where id_absensi='$_GET[id]'");
	echo "<script>alert('Absen Keluar OK !'); window.location = '../../index.php?mod=absensi'</script>";
	}
}


?>