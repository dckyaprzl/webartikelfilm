<?php 
$koneksi = mysqli_connect("localhost","root","","web_artikelfilm");
 
// Check connection
if (mysqli_connect_errno()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}



 function hapus($Kode_Film)
{
    global $koneksi;
    mysqli_query($koneksi, "DELETE FROM recommend_film WHERE Kode_Film = $Kode_Film");
    return mysqli_affected_rows($koneksi);
}

function hapus_genre($ID_Genre)
{
    global $koneksi;
    mysqli_query($koneksi, "DELETE FROM jenis_genre WHERE ID_Genre = $ID_Genre");
    return mysqli_affected_rows($koneksi);
}

 function upcoming_hapus($Kode_Film)
{
    global $koneksi;
    mysqli_query($koneksi, "DELETE FROM upcoming WHERE Kode_Film = $Kode_Film");
    return mysqli_affected_rows($koneksi);
}
function tr_hapus($Kode_Film)
{
    global $koneksi;
    mysqli_query($koneksi, "DELETE FROM top_rated WHERE Kode_Film = $Kode_Film");
    return mysqli_affected_rows($koneksi);
}
?>

