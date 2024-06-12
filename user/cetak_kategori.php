<!DOCTYPE html>
<html>
<head>
	<title>PRINT DATA FILM</title>
</head>
<body>
 
	<center>
 
		<h2>Kategori</h2>
 
	</center>
 
	<?php 
	include 'koneksi.php';
	?>
 
	<table border="1" style="width: 100%">
		<tr>
			<th width="1%">NO</th>
			<th>ID</th>
			<th>Genre</th>
			
		</tr>
		<?php 

		$no = 1;
		$query = mysqli_query($koneksi,"select * from jenis_genre");
		while($data = mysqli_fetch_array($query)){
		?>
		<tr>
			<td><?php echo $no++; ?></td>
			<td><?php echo $data['ID_Genre']; ?></td>	
				<td><?php echo $data['Genre']; ?></td>
		</tr>
		<?php 
		}
		?>
	</table>
 
	<script>
		window.print();
	</script>
 
</body>
</html>