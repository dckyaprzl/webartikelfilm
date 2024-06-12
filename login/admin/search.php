<?php
include 'koneksi.php';

if(isset($_GET['cari'])){
    $cari = $_GET['cari'];
    $data = mysqli_query($koneksi, "SELECT * FROM recommend_film WHERE Judul_Film LIKE '%$cari%'");
} else {
    $data = mysqli_query($koneksi, "SELECT * FROM recommend_film");
}





    

?>