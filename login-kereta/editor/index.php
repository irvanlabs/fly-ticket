<?php include('sesi.php'); ?>
<html>
<head>
	<title>Area Editor</title>
</head>
<body>
 
	<div style="text-align:center">
		<h2>Area Editor</h2>
		<p><a href="index.php">Home</a> / <a href="../logout.php">keluar</a></p>
 
		<p>Anda Login Sebagai <?php echo $_SESSION['editor']; ?></p>
	</div>
 
</body>
</html>