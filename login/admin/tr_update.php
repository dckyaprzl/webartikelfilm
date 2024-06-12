<?php 
// koneksi database
include 'koneksi.php';
 
// menangkap data yang di kirim dari form

$Kode_Film = $_POST['Kode_Film'];
$Judul_Film = $_POST['Judul_Film'];
$Rating = $_POST['Rating'];
$Tahun_Rilis = $_POST['Tahun_Rilis'];
$ID_Genre = $_POST['ID_Genre'];
 
// update data ke database
$query="UPDATE top_rated set 
 Judul_Film='$Judul_Film',
 Rating='$Rating', 
 Tahun_Rilis='$Tahun_Rilis',
  ID_Genre='$ID_Genre'
   where 
   Kode_Film='$Kode_Film'
   ";

  mysqli_query($koneksi, $query)
        or die("SQL Error " .mysqli_error());
// mengalihkan halaman kembali ke index.php
header("location:top_rated.php");
 
?>