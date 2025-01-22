-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jan 2025 pada 05.24
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(10, 'Laptop Lenovo'),
(11, 'Laptop Asus'),
(12, 'Mouse'),
(13, 'Keyboard');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `ketersediaan_stok` enum('habis','tersedia') DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `nama`, `harga`, `foto`, `detail`, `ketersediaan_stok`) VALUES
(8, 10, 'Lenovo Legion 5 Pro - Laptop', 20000000, 'L07EBd9gPLCIJvIwPZ3c.jpg', 'NAMA LAPTOP:	Lenovo Legion 5 Pro\r\nPROCESSOR:	13th Gen Intel core i9-13900HX\r\nSTORAGE:	1TB/16GB DDR5\r\nGRAPHIC:	Nvidia GeForce RTX4070,8GB,GDDR6Vram', 'tersedia'),
(9, 10, 'Lenovo IdeaPad Slim 3 - Laptop', 14000000, 'DIAWmnOSD3aYWi8rw28H.jpg', 'NAMA LAPTOP:	Lenovo IdeaPad Slim 3\r\nPROCESSOR:	13th Gen Intel core i9-13900HX\r\nSTORAGE:	1TB/16GB DDR5\r\nGRAPHIC:	Nvidia GeForce RTX4070,8GB,GDDR6Vram', 'tersedia'),
(10, 11, 'ASUS TUF Gaming F15 - Laptop', 20000000, 'wGzPCCrjUSb9jp7RFusA.jpg', 'NAMA LAPTOP:	ASUS TUF Gaming F15\r\nPROCESSOR:	13th Gen Intel core i9-13900HX\r\nSTORAGE:	1TB/16GB DDR5\r\nGRAPHIC:	Nvidia GeForce RTX4070,8GB,GDDR6Vram\r\n', 'tersedia'),
(11, 11, 'ASUS M415 - Laptop', 6000000, 'YerguGCFIzLrFs39LRuK.jpg', 'NAMA LAPTOP:	ASUS M415\r\nPROCESSOR:	13th Gen Intel core i9-13900HX\r\nSTORAGE:	1TB/16GB DDR5\r\nGRAPHIC:	Nvidia GeForce RTX4070,8GB,GDDR6Vram', 'tersedia'),
(12, 12, 'Steelseries Aerox 3 Snow 2022 - Mouse', 200000, 'f60NAgHSMrtZtIaIarIT.jpg', 'Mouse gaming terbaru di 2022', 'tersedia'),
(13, 12, 'Logitech G102, G-102, G 102 Lightsync Gaming Mouse', 300000, 'DVjvMpM7BZMQ50Ep9bUg.jpg', 'Mouse gaming', 'tersedia'),
(14, 10, 'Lenovo Yoga 9i - Laptop', 38000000, '2wniiM3yMaJwMEu2J3iT.jpg', 'NAMA LAPTOP:	Lenovo Yoga 9i\r\nPROCESSOR:	13th Gen Intel core i9-13900HX\r\nSTORAGE:	1TB/16GB DDR5\r\nGRAPHIC:	Nvidia GeForce RTX4070,8GB,GDDR6Vram', 'tersedia'),
(15, 13, 'JETE SK1 - Keyboard', 200000, '640yvYLOKhgrvshZUPkc.jpg', 'Keyboard minimaslis', 'tersedia'),
(16, 11, 'ASUS ROG Zephyrus M16 - Laptop', 33000000, 'fsJMJyrjZvbjAv1A3TzO.jpg', 'NAMA LAPTOP:	ASUS ROG Zephyrus M16\r\nPROCESSOR:	13th Gen Intel core i9-13900HX\r\nSTORAGE:	1TB/16GB DDR5\r\nGRAPHIC:	Nvidia GeForce RTX4070,8GB,GDDR6Vram', 'tersedia'),
(17, 10, 'Lenovo IdeaPad Gaming 3 - Laptop', 20000000, 'Jlm1dGwXIb0z6za6Xyip.jpg', 'NAMA LAPTOP:	Acer Predator Helios 16\r\nPROCESSOR:	13th Gen Intel core i9-13900HX\r\nSTORAGE:	1TB/16GB DDR5\r\nGRAPHIC:	Nvidia GeForce RTX4070,8GB,GDDR6Vram', 'tersedia'),
(18, 12, 'Razer Basilisk V3 Razer Chroma™ RGB - Mouse', 400000, 'Oy4sHGPwoS2aae1gT4qG.jpg', 'Mouse gaming RGB', 'tersedia'),
(19, 13, 'Armaggeddon Lofree Dot - Keyboard', 400000, 'AnTrz8Dk3AewWbGGEBba.jpg', 'Keyboard dengan ketikan mantap', 'tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$njDHbcqFxoephS64QoRJGekStlpGBF4uMoneHuI2KFZZKtmYJ9o2C');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `kategori_produk` (`kategori_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `kategori_produk` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
