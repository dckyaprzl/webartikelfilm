<?php 
// koneksi database
include 'koneksi.php';
 
// menangkap data yang di kirim dari form
$ID_Genre = $_POST['ID_Genre'];
$Genre = $_POST['Genre'];

 
// update data ke database
mysqli_query($koneksi,"UPDATE jenis_genre set Genre='$Genre' where ID_Genre='$ID_Genre'");
 
// mengalihkan halaman kembali ke index.php
header("location:kategori.php");
 
?>