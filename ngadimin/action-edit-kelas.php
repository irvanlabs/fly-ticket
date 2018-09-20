<?php 
	include '../koneksi.php';
	$id = $_GET['id'];
	$kode_kelas = $_POST['kodekelas'];
	$nama_kelas = $_POST['namakelas'];
	$edit = mysql_query("update kelas set kode_kelas='$kode_kelas', nama_kelas='$nama_kelas' where id='$id'");
	
	if ($edit){
		echo "<script>alert('Data BERHASIL di Update!');window.location='index.php';</script>";
		header("location:data-kelas.php");
	}else{
		echo "<script>alert('Data GAGAL di Update!');window.location='index.php';</script>";
	}
?>