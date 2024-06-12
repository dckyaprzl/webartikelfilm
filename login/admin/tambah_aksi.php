	<?php 
// koneksi database
include 'koneksi.php';
 
// menangkap data yang di kirim dari form
$thumbnail = $_FILES['thumbnail']['name'];
$file_tmp = $_FILES['thumbnail']['tmp_name'];
$Judul_Film = $_POST['Judul_Film'];
$Rating = $_POST['Rating'];
$Tahun_Rilis = $_POST['Tahun_Rilis'];
$ID_Genre = $_POST['ID_Genre'];
move_uploaded_file($file_tmp, 'file/'.$thumbnail);
 


// menginput data ke database
$query = "INSERT into recommend_film SET 
					thumbnail = '$thumbnail',
					Judul_Film = '$Judul_Film',
					Rating = '$Rating',
					Tahun_Rilis = '$Tahun_Rilis',
					ID_Genre = '$ID_Genre'
					";
        mysqli_query($koneksi, $query)
        or die("SQL Error " .mysqli_error());




 
// mengalihkan halaman kembali ke index.php
header("location:index.php");


 
?>