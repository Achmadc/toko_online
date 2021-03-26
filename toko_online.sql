-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 04:07 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

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
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(2, 'Kamera', 'kamera canon eos 700d', 'Elektronik', 5200000, 7, 'kamera.jpg'),
(3, 'Handphone', 'Samsung Galaxy A20', 'Elektronik', 1899000, 18, 'hp.jpg'),
(4, 'Laptop Toshiba', 'Laptop Asus ram 2gb', 'Elektronik', 4500000, 14, 'laptop.jpg'),
(17, 'TV', 'TV Polytron 32inch', 'Elektronik', 1700000, 10, 'tv1.jpg'),
(18, 'Kemeja', 'Kemeja bahan cutton', 'Pakaian Pria', 200000, 35, 'kemeja2.jpg'),
(19, 'Celana', 'Celana Jeans', 'Pakaian Pria', 300000, 25, 'celana1.jpg'),
(21, 'Sepatu', 'Sepatu Air Jordan', 'Pakaian Pria', 600000, 22, 'sepatu21.jpg'),
(22, 'Jam Tangan', 'Jam Tangan Anti air', 'Pakaian Pria', 300000, 10, 'jam1.jpg'),
(23, 'Tas', 'Tas selempang cewek', 'Pakaian Wanita', 300000, 15, 'tas21.jpg'),
(24, 'Topi', 'Topi Baseball wanita', 'Pakaian Wanita', 75000, 20, 'topi1.jpg'),
(25, 'Kerudung', 'Hijab instan', 'Pakaian Wanita', 100000, 15, 'kerudung1.jpg'),
(26, 'Sepatu', 'Sepatu Olahraga Cewek', 'Pakaian Wanita', 500000, 20, 'sepatu11.jpg'),
(27, 'Sendal', 'sendal anak-anak', 'Pakaian Anak-anak', 45000, 15, 'sendal1.jpg'),
(28, 'Masker', 'masker anak-anak', 'Pakaian Anak-anak', 15000, 35, 'masker1.jpg'),
(29, 'Kaos', 'Kaos anak-anak', 'Pakaian Anak-anak', 60000, 20, 'caos1.jpg'),
(30, 'Sepatu', 'Vans Kids', 'Pakaian Anak-anak', 100000, 25, 'sepatu41.jpg'),
(31, 'Raket Badminton', 'YONEX Astrox 6', 'Peralatan Olahraga', 200000, 35, 'raket1.jpg'),
(32, 'Bola Sepak', 'adidas F15 Train 4', 'Peralatan Olahraga', 650000, 15, 'bola1.jpg'),
(33, 'Bola Voli', 'MIKASA Bola Voli [MVA 330]', 'Peralatan Olahraga', 300000, 25, 'bolavoli1.jpg'),
(34, 'Raket Tenis ', 'Raket Tenis Dewasa Artengo', 'Peralatan Olahraga', 490000, 20, 'rakettenis1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(2, 'Choir', 'Wilangan, Nganjuk', '2021-03-12 08:54:31', '2021-03-13 08:54:31'),
(3, 'Achmad Khoiron', 'Wilangan Nganjuk, Jawa Timur', '2021-03-12 09:35:29', '2021-03-13 09:35:29'),
(9, 'Udin', 'Wilangan, Nganjuk', '2021-03-19 08:45:03', '2021-03-20 08:45:03'),
(12, 'Achmad', 'Nganjuk ,Jawa Timur', '2021-03-23 10:23:15', '2021-03-24 10:23:15'),
(13, 'Andri Saputa', 'Wilangan, Nganjuk', '2021-03-23 11:11:28', '2021-03-24 11:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'Sepatu ', 1, 300000, ''),
(2, 2, 2, 'Kamera', 1, 5200000, ''),
(3, 3, 1, 'Sepatu ', 1, 300000, ''),
(4, 3, 2, 'Kamera', 1, 5200000, ''),
(5, 3, 3, 'Handphone', 1, 1899000, ''),
(6, 3, 4, 'Laptop Toshiba', 1, 4500000, ''),
(7, 4, 1, 'Sepatu ', 1, 300000, ''),
(8, 5, 1, 'Sepatu ', 1, 300000, ''),
(9, 6, 2, 'Kamera', 1, 5200000, ''),
(10, 7, 3, 'Handphone', 1, 1899000, ''),
(11, 8, 21, 'Sepatu', 1, 600000, ''),
(12, 9, 3, 'Handphone', 1, 1899000, ''),
(13, 10, 21, 'Sepatu', 1, 600000, ''),
(14, 11, 4, 'Laptop Toshiba', 1, 4500000, ''),
(15, 12, 2, 'Kamera', 1, 5200000, ''),
(16, 13, 21, 'Sepatu', 1, 600000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok- NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'choir', 'madzchoir', '123', 2),
(4, 'Budi', 'Budiman', '123', 2),
(5, 'Andi', 'Andi Saputra', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
