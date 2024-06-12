
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
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
	<title>WebRecc+</title>
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
          <a class="btn btn-light nav-link" aria-current="page" href="index.php">Dashboard</a>
        </li>
        <li class="nav-item">
          <a class="btn btn-light nav-link"  href="kategori.php" >Kategori</a>
        </li>
        <div class="dropdown-center">
  <button class="btn btn-dark dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">More</button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="upcomingmovie.php">Up Coming</a></li>
    <li><a class="dropdown-item" href="top_rated.php">Top Rated</a></li>

  </ul>
</div>
       </li>
     </ul>
    </div>
    
 
<ul>
	<a href="logout.php"class="btn btn-primary btn-sm" ">LOGOUT</a>
</ul>
  </div>
</nav>
<!-- cek apakah sudah login -->
	
 
	
	<br/><div class="container mt-3 shadow p-3 mb-5 bg-body-tertiary rounded">
  <form method="GET" action="index.php" class="d-flex">
    <label for="search" class="form-label"><b>Search Movie:</b></label>
    <input type="text" class="form-control me-2" id="search" name="search" placeholder="Enter movie title or genre...">

    <!-- Dropdown for Genre Filtering -->
    <select class="form-select" name="genre_filter">
        <option value="all">All Genres</option>
        <option value="Romance">Romance</option>
        <option value="Drama">Drama</option>
        <option value="Action, Adventure, Science Fiction">Action</option>
    </select>

    <button class="btn btn-success" type="submit" class="spinner-border spinner-border-sm">Search</button>
    <?php if (isset($_GET['search'])): ?>
        <a href="index.php" class="btn btn-danger ml-2">X</a>
    <?php endif; ?>
</form>

</div>
 
	
	

<div class="container mt-3 shadow p-3 mb-5 bg-body-tertiary rounded">	
	 <div class="container-inner">
<h2>Recommended Movie</h2>


 

	
<br>

	<a href="tambah.php"type="button" class="btn btn-success">+ TAMBAH JUDUL</a>
	<br/>
	<br>

	<table class="table table-striped table-hover">
<thead>
		

		
		<tr>
			<th>NO</th>
			 <th>KODE</th>
			 <th>THUMB</th>
			 <th>Judul</th>
			 <th>Rating</th>
			 <th>Tahun Rilis</th>
			 <th>Genre</th>

			<th>OPSI</th>
		</tr>
		

 		

<?php
		
include 'koneksi.php';


		$no = 1;
		if (isset($_GET['search']) || isset($_GET['genre_filter'])) {
      $search = mysqli_real_escape_string($koneksi, $_GET['search']);
      $genre_filter = mysqli_real_escape_string($koneksi, $_GET['genre_filter']);
  
      // Modify the SQL query to include search and genre filter conditions
      $query = "SELECT * FROM recommend_film, jenis_genre
                WHERE recommend_film.ID_Genre = jenis_genre.ID_Genre
                AND (Judul_Film LIKE '%$search%' OR Genre LIKE '%$search%')";
  
      // Include genre filter condition if selected
      if ($genre_filter !== 'all  ') {
          $query .= " AND jenis_genre.Genre = '$genre_filter'";
      }
  } else {
      // Default query without search and genre filter
      $query = "SELECT * FROM recommend_film, jenis_genre
                WHERE recommend_film.ID_Genre = jenis_genre.ID_Genre";
}

$data = mysqli_query($koneksi, $query) or die(mysqli_error($koneksi));




		
		while($d = mysqli_fetch_array($data)){
		

			
			?>
			
			<tr>
				<td><?php echo $no++; ?></td>
				 <td><?php echo $d['Kode_Film']; ?></td>
         <td><img src="file/<?php echo $d['thumbnail']; ?>" alt="Thumbnail" style="max-width: 100px; max-height: 100px;"></td>
				 <td><?php echo $d['Judul_Film']; ?></td>
				 <td><?php echo $d['Rating']; ?></td>
				 <td><?php echo $d['Tahun_Rilis']; ?></td>
				 <td><?php echo $d['Genre']; ?></td>
				<td>
					<a href="edit.php?Kode_Film=<?php echo $d['Kode_Film']; ?>"type="button" class="btn btn-warning">EDIT</a>
					<a href="hapus.php?Kode_Film=<?php echo $d['Kode_Film']; ?>"type="button" class="btn btn-danger">HAPUS</a>
				</td>
		</tr>

			<?php 
				
		
		}

		?>
	
		
	</table>
<a href="cetak.php" target="_blank" class="btn btn-dark">CETAK</a>
</html>
	</table>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-gN5T5R5/gSFkfe8b1TKxHTxw0LvS6ZpxPZlFVsw0SLDb3XTjjEJ1XUn5Jddw0z8l" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
</body>
</html>