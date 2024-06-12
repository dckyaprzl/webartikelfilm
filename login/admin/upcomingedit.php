<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Data Film</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<form method="post" action="upcomingupdate.php">
    <div class="container mt-5">
     <a href="upcomingmovie.php" class="btn btn-secondary">BACK</a>
        <div class="row justify-content-center">
            <div class="col-md-8 mt-5">
                <div class="col-md-12 text-center">

                    <h2>Edit Data Film</h2>
                </div>

                <?php
                include 'koneksi.php';
                $Kode_Film = $_GET['Kode_Film'];
                $data = mysqli_query($koneksi, "SELECT * FROM upcoming WHERE Kode_Film='$Kode_Film'");
                while($d = mysqli_fetch_array($data)){
                ?>

               
                    <div class="mb-3">
                        <label for="Judul_Film" class="form-label">Judul</label>
                        <input type="hidden" name="Kode_Film" value="<?php echo $d['Kode_Film']; ?>">
                        <input type="text" class="form-control" name="Judul_Film" value="<?php echo $d['Judul_Film']; ?>">
                    </div>
                    
                    <div class="mb-3">
                        <label for="Tahun_Rilis" class="form-label">Tahun Rilis</label>
                        <input type="date" class="form-control" name="Tahun_Rilis" value="<?php echo $d['Tahun_Rilis']; ?>">
                    </div>
                    <div class="mb-3">
                        <label for="ID_Genre" class="form-label">Genre</label>
                        <input type="text" class="form-control" name="ID_Genre" value="<?php echo $d['ID_Genre']; ?>">
                    </div>
                    <div class="mb-3 text-center">
                        <button type="submit" class="btn btn-primary">SIMPAN</button>
                    </div>
                </form>

                <?php 
                }
                ?>

            </div>
        </div>
    </div>

</body>
</html>
