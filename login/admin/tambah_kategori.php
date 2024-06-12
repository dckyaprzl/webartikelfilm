<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CRUD PHP dan MySQLi - WWW.MALASNGODING.COM</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
  <nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">MyTv+</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.php">ALL</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="tambah.php">Tambah Judul</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="kategori.php">Kategori</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Dropdown
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" aria-disabled="true">Disabled</a>
          </li>
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>
  <div class="container mt-5">
     <a href="kategori.php" class="btn btn-secondary">BACK</a>
        <div class="row justify-content-center">
            <div class="col-md-8 mt-5">
                <div class="col-md-12 text-center">

                    <h2>Tambah Genre</h2>
                </div>
    <form method="post" action="tambah_aksi2.php">
      <div class="mb-3">
        <label for="ID_Genre" class="form-label">ID</label>
        <input type="text" name="ID_Genre" class="form-control">
      </div>
      <div class="mb-3">
        <label for="Genre" class="form-label">GENRE</label>
        <input type="text" name="Genre" class="form-control">
      </div>
      <div class="mb-3 text-end">
        <input type="submit" class="btn btn-success" value="SIMPAN">
      </div>
    </form>
  </div>
</body>
</html>
