<?php
require 'koneksi.php';

$ID_Genre = $_GET["ID_Genre"];

if( hapus_genre($ID_Genre
) > 0){
    
    echo "
    <script>
    alert('data berhasil dihapus');
    document.location.href = 'kategori.php'
    </script>
";

}else{
    echo ("Deskripsi error : " .mysqli_error($koneksi));
}
 
?>