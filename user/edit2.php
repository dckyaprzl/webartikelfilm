<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Kategori</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+Wy25l2iBE5EF8Rj2I21VrYYdIcW6n9iN" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        h2 {
            color: #007bff;
            font-size: 2em;
        }

        a {
            text-decoration: none;
            padding: 12px 24px;
            background-color: #007bff;
            color: #fff;
            border-radius: 4px;
            transition: background-color 0.3s;
            font-size: 1.2em;
        }

        a:hover {
            background-color: #0056b3;
        }

        h3 {
            color: #333;
            font-size: 1.5em;
        }

        table {
            width: 80%;
            margin-top: 20px;
            border-collapse: collapse;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 16px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        input[type="text"] {
            width: 100%;
            padding: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 24px;
            font-size: 1.2em;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 16px 24px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-size: 1.2em;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
 
    <div class="container">
        <h2 class="mt-4">Edit Kategori</h2>
        <a href="kategori.php" class="btn btn-primary mb-4">KEMBALI</a>
        <h3>EDIT Genre</h3>
 
        <?php
        include 'koneksi.php';
        $ID_Genre = $_GET['ID_Genre'];
        $data = mysqli_query($koneksi, "SELECT * FROM jenis_genre WHERE ID_Genre='$ID_Genre'");
        while ($d = mysqli_fetch_array($data)) {
        ?>
        <form method="post" action="update2.php">
            <table class="table">
                <tr>            
                    <td>Genre</td>
                    <td>
                        <input type="hidden" name="ID_Genre" value="<?php echo $d['ID_Genre']; ?>">
                        <input type="text" name="Genre" value="<?php echo $d['Genre']; ?>">
                    </td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" class="btn btn-success" value="SIMPAN"></td>
                </tr>       
            </table>
        </form>
        <?php 
        }
        ?>
    </div>

</body>
</html>
