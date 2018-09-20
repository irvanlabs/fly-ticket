<?php

include ("../koneksi.php");
// menyimpan data kedalam variabel
$kodekelas = $_POST['kodekelas'];
$namakelas = $_POST['namakelas'];
// query SQL untuk insert data
$query="INSERT INTO kelas (`id`, `kode_kelas`, `nama_kelas`) VALUES ('', '$kodekelas', '$namakelas')";
$kueri= mysql_query($query); 
if ($kueri){
	echo "Berhasil";
	header("location:data-kelas.php");
} else {
	echo "Gagal";
}
?>