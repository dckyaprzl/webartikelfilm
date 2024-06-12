<?php
require 'koneksi.php';

$Kode_Film = $_GET["Kode_Film"];

if( upcoming_hapus($Kode_Film
) > 0){
    
    echo "
    <script>
    alert('data berhasil dihapus');
    document.location.href = 'upcomingmovie.php'
    </script>
";

}else{
    echo ("Deskripsi error : " .mysqli_error($koneksi));
}
 
?>