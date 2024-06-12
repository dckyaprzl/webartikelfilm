<?php 
// koneksi database
include 'koneksi.php';
 
// menangkap data yang di kirim dari form
$ID_Genre = $_POST['ID_Genre'];
$Genre = $_POST['Genre'];

 
// menginput data ke database
mysqli_query($koneksi,"insert into jenis_genre (ID_Genre,Genre)values('$ID_Genre','$Genre')");
 
// mengalihkan halaman kembali ke index.php
header("location:kategori.php");
 
?>