<!DOCTYPE html>
<html lang="en"data-bs-theme="dark">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <style>
        /* Tambahkan gaya khusus di sini jika diperlukan */
        body {
            background-color: #f8f9fa; /* Warna latar belakang */
        }

        .navbar {
            box-shadow: 0 4px 8px rgba(0,0,0,0.1); /* Bayangan di navbar */
        }

        .container {
            background-color: #fff; /* Warna latar belakang konten */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1); /* Bayangan di konten */
            margin-top: 20px;
        }

        h2 {
            color: #007bff; /* Warna judul */
        }

        .btn-success {
            background-color: #28a745; /* Warna tombol tambah genre */
            border-color: #28a745;
        }

        .btn-success:hover {
            background-color: #218838; /* Warna tombol tambah genre saat dihover */
            border-color: #1e7e34;
        }
    </style>
	<title>Kategori</title>
</head>
<body>
 
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<nav  class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container shadow p-3 mb-5 bg-body-tertiary rounded">
    <a class="navbar-brand" href="#">WebRecc+</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="btn btn-light nav-link " aria-current="page" href="index.php">Dashboard</a>
        </li>
        <li class="nav-item">
          <a class="btn btn-light nav-link"  href="kategori.php" >Kategori</a>
        </li>
        <div class="dropdown-center">
  <button class="btn btn-dark dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    More
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="upcomingmovie.php">Up Coming</a></li>
    <li><a class="dropdown-item" href="top_rated.php">Top Rated</a></li>
  </ul>
</div>
        </li>
        
      </ul>

    </div>
    
 <div class="mb-2">
   

  </div>
</nav>

<div class="container mt-3 shadow p-3 mb-5 bg-body-tertiary rounded">
<h2>Genre</h2>
	
	<br/>
	<table class="table table-striped table-hover">
		<tr>
			<th>NO</th>
			<th>ID</th>
			<th>Genre</th>
			

			<th>OPSI</th>
		</tr>

		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from jenis_genre");
		while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['ID_Genre']; ?></td>	
				<td><?php echo $d['Genre']; ?></td>
				

			

			</tr>
			<?php 
				
		}
		?>
	</table>
	<a href="cetak_kategori.php" target="_blank" class="btn btn-dark">CETAK</a>
</div>
</body>
</html>