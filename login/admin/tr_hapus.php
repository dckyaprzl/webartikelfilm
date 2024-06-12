<?php
require 'koneksi.php';

$Kode_Film = $_GET["Kode_Film"];

if( tr_hapus($Kode_Film
) > 0){
    
    echo "
    <script>
    alert('data berhasil dihapus');
    document.location.href = 'top_rated.php'
    </script>
";

}else{
    echo ("Deskripsi error : " .mysqli_error($koneksi));
}
 
?>