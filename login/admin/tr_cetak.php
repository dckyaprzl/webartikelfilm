<!DOCTYPE html>
<html>
<head>
	<title>PRINT DATA FILM</title>
</head>
<body>
 
	<center>
 
		<h2>Top Rated Movie</h2>
 
	</center>
 
	<?php 
	include 'koneksi.php';
	?>
 
	<table border="1" style="width: 100%">
		<tr>
			<th width="1%">NO</th>
			<th>KODE</th>			
			<th> Judul</th>
			<th>Rating</th>
			<th> Tahun_Rilis</th>
			<th> Genre</th>
			
		</tr>
		<?php 

		$no = 1;
		$query = mysqli_query($koneksi,"SELECT * FROM top_rated, jenis_genre
		WHERE top_rated.ID_Genre = jenis_genre.ID_Genre");
		while($data = mysqli_fetch_array($query)){
		?>
		<tr>
			<td><?php echo $no++; ?></td>
			<td><?php echo $data['Kode_Film']; ?></td>
			<td><?php echo $data['Judul_Film']; ?></td>
			<td><?php echo $data['Rating']; ?></td>
			<td><?php echo $data['Tahun_Rilis']; ?></td>
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