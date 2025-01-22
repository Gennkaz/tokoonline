<?php 
    require "koneksi.php";
    $queryProduk = mysqli_query($con, "SELECT id, nama, harga, foto, detail FROM produk LIMIT 6");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Toko Online | Home</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <?php require "navbar.php"; ?>

    <div class="container-fluid banner d-flex align-items-center">
        <div class="container text-center text-white">
            <h1>Toko online laptop</h1>
            <h3>Mau Cari apa?</h3>
            <div class="col-md-8 offset-md-2">
                <form method="get" action="product.php">
                    <div class="input-group input-group-lg my-4">
                        <input type="text" class="form-control" placeholder="Nama Barang" aria-label="Recipent's username" aria-describedby="basic-addon2" name="keyword" autocomplete="off">
                        <button type="submit" class="btn warna6 text-white">Telusuri</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="container-fluid py-5">
        <div class="container text-center">
            <h3>Kategori terlaris</h3>

            <div class="row mt-5">
                <div class="col-md-4 mb-3">
                    <div class="highlighted-kategori kategori-laptop-lenovo d-flex justify-content-center align-items-end">
                        <h4 class="text-white"><a class="no-decoration" href="product.php?kategori=Laptop Lenovo">Laptop lenovo</a></h4>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="highlighted-kategori kategori-laptop-asus d-flex justify-content-center align-items-end">
                        <h4 class="text-white"><a class="no-decoration" href="product.php?kategori=Laptop Asus">Laptop Asus</a></h4>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="highlighted-kategori kategori-mouse d-flex justify-content-center align-items-end">
                        <h4 class="text-white"><a class="no-decoration" href="product.php?kategori=Mouse">Mouse</a></h4>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid warna6 py-5">
        <div class="container text-center text-white">
            <h3>Tentang Kami</h3>
            <p class="fs-5 mt-3">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad eligendi fuga voluptatem obcaecati sunt incidunt earum consectetur quam ducimus saepe veritatis temporibus, deleniti aliquid quaerat ex possimus harum est perspiciatis, provident repellendus unde quae! Provident illo iste possimus, unde sit soluta deserunt atque hic quis sunt dolorem ullam alias in, vitae molestiae odit cum itaque quo nisi, ipsam labore. Delectus harum, accusamus neque perferendis rem aperiam. Autem expedita ipsum reprehenderit nobis modi enim eum eius necessitatibus. Quas culpa laborum nostrum.
            </p>
        </div>
    </div>

    <div class="container-fluid py-5">
        <div class="container text-center">
            <h3>Produk</h3>

            <div class="row mt-5">
                <?php while($data = mysqli_fetch_array($queryProduk)){ ?>
                <div class="col-sm-6 col-md-4 mb-3">
                    <div class="card h-100">
                        <div class="image-box">
                            <img src="image/<?php echo $data['foto']; ?>" class="card-img-top" alt="">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $data['nama']; ?></h5>
                            <p class="card-text text-truncate"><?php echo $data['detail']; ?></p>
                            <p class="card-text text-harga">Rp <?php echo $data['harga']; ?></p>
                            <a href="product-detail.php?nama=<?php echo $data['nama'] ?>" class="btn warna6 text-white">Detail</a>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
            <a class="btn btn-outline-dark mt-3" href="product.php">See more</a>
        </div>
    </div>
                
    <?php require "footer.php"?>

    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="fontawesome/js/all.min.js"></script>
</body>
</html>