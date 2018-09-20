<?php

$host="localhost";
$user="root";
$pass="";
$db="test";
$koneksi=mysql_connect($host,$user,$pass);
if(!$koneksi){
	echo "Gagal koneksi:".mysql_error();
	exit();
}
$pilihdb=mysql_select_db($db,$koneksi);
if(!$pilihdb){
	exit("Gagal memilih database:".mysql_error());
}

?>