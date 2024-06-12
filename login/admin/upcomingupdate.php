<?php 
// koneksi database
include 'koneksi.php';
 
// menangkap data yang di kirim dari form
$Kode_Film = $_POST['Kode_Film'];
$Judul_Film = $_POST['Judul_Film'];
$Tahun_Rilis = $_POST['Tahun_Rilis'];
$ID_Genre = $_POST['ID_Genre'];
 
// update data ke database
mysqli_query($koneksi,"update upcoming set Judul_Film='$Judul_Film', Tahun_Rilis='$Tahun_Rilis', ID_Genre='$ID_Genre' where Kode_Film='$Kode_Film'");
 
// mengalihkan halaman kembali ke index.php
header("location:upcomingmovie.php");
 
?>