<?php

$host    = "localhost";
$user    = "naufal";
$pass    = "naufalroot";
$db      = "tiket";
$koneksi = mysql_connect($host, $user, $pass);
if ($koneksi) {
	echo "berhasil";
}
?>