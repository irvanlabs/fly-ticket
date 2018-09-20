<?php
include('koneksi.php');
session_start();
if(isset($_POST['login'])){
	$user = mysql_real_escape_string(htmlentities($_POST['email']));
	$pass = mysql_real_escape_string(htmlentities(sha1($_POST['password'])));
 
	$perintah= "SELECT * FROM users WHERE (username='$user' OR email='$user' )AND password='$pass'"; 
	$sql=mysql_query($perintah)or die(mysql_error());
	if(mysql_num_rows($sql) == 0){ 
		echo '<script language="javascript">alert("User tidak ditemukan!"); document.location="login.php";</script>';
	}else{
		$row = mysql_fetch_assoc($sql);
		if($row['id_level'] == adm){ 
			$_SESSION['admin']=$user;
		header("location:./ngadimin");
		}elseif($row['id_level'] == edt){
			$_SESSION['editor']=$user;
		header("location:./editor");
		}
		else{
			if($row['id_level']== usr){
			$_SESSION['user']=$user;
		header("location:./user");
		}
		}
	}
}
?>