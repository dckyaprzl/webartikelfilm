<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tambah Judul</title>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 50px;
        }

        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        .form-container h2 {
            color: #007bff;
        }

        .form-container label {
            font-weight: bold;
        }

        .form-container select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .form-container button {
            background-color: #28a745;
            border-color: #28a745;
        }

        .form-container button:hover {
            background-color: #218838;
            border-color: #1e7e34;
        }
    </style>
</head>
<body>
    <div class="container">
        <a href="index.php" class="btn btn-secondary">BACK</a>
        <div class="row justify-content-center">
            <div class="col-md-8 mt-5 form-container">
                <div class="text-center">
                    <h2>Upload+</h2>
                </div>
                <form enctype="multipart/form-data" method="post" action="tambah_aksi.php">
                    <div class="mb-3">
                        <label for="thumbnail" class="form-label">Foto</label>
                        <input type="file" name="thumbnail" class="form-control" id="thumbnail">
                    </div>
                    <div class="mb-3">
                        <label for="Judul_Film" class="form-label">Judul</label>
                        <input type="text" name="Judul_Film" class="form-control" id="Judul_Film">
                    </div>
                    <div class="mb-3">
                        <label for="Rating" class="form-label">Rating</label>
                        <input type="text" name="Rating" class="form-control" id="Rating">
                    </div>
                    <div class="mb-3">
                        <label for="Tahun_Rilis" class="form-label">Tahun Rilis</label>
                        <input type="date" name="Tahun_Rilis" class="form-control" id="Tahun_Rilis">
                    </div>
                    <div class="mb-3">
                        <label for="ID_Genre" class="form-label">Genre</label>
                        <select name="ID_Genre" class="form-control" id="ID_Genre">
                            <option>----</option>
                            <?php
                                include 'koneksi.php';
                                $query = mysqli_query($koneksi, "SELECT * FROM jenis_genre") or die (mysqli_error($koneksi));
                  
                                while($data = mysqli_fetch_array($query)){
                                    echo "<option value=$data[ID_Genre]> $data[Genre]</option>";
                                }                          
                            ?>
                        </select>
                    </div>
                    <div class="mb-3 text-end">
                        <button type="submit" class="btn btn-success">Upload</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
