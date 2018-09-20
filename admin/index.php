<?php include('sesi-admin.php'); ?>
<html>
<head>
	<title>Area Admin</title>
</head>
<body>
 
	<div style="text-align:center">
		<h2>Admin Area</h2>
		<p><a href="index.php">Home</a> / <a href="../logout.php">keluar</a></p>
 
		<p>Anda Login Sebagai <?php echo $_SESSION['admin']; ?></p>
	</div>
 
</body>
</html>