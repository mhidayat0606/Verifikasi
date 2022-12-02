-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 03:06 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peminjaman`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `stok`, `deskripsi`, `foto`) VALUES
(3, 'Projector BenQ', 3, 'BenQ Smart Projector for Business is equipped with a built-in Android operating system, enabling easy wireless projection, internet connectivity, productivity apps, and over-the-air (OTA) updates.', '2331325_ce2b26b6-e279-469d-9058-9d7a6c6dd8cc_400_400.jpg'),
(4, 'Laptop Dell', 2, 'Merek laptop Dell ini berasal dari Amerika yang pertama kali diprakarsai oleh Michael Dell di tahun 1984. Brand inilah yang kemudian mengakuisisi produk laptop Alienware tepatnya di tahun 2006.', 'Dell-Latitude-9330-001-860x484.jpg'),
(5, 'Sound System', 5, 'Sound System untuk keperluan Acara FILKOM', 'HPro_APACInstallLanding_Product_PRX800.jpeg'),
(6, 'Macbook Pro', 20, 'Macbook Pro', 'macbook-pro-2021.jpeg'),
(7, 'Kabel Panjang', 20, 'Kabel panjang untuk membantu menyalurkan listrik', '368a53c7-0b3f-4600-aab0-73de380fed18.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pinjambarang`
--

CREATE TABLE `pinjambarang` (
  `id` int(11) NOT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `lokasi_barang` text DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pinjambarang`
--

INSERT INTO `pinjambarang` (`id`, `id_barang`, `id_user`, `qty`, `tgl_mulai`, `tgl_selesai`, `lokasi_barang`, `status`) VALUES
(12, 1, 2, 5, '2021-04-04 12:42:47', '2021-04-06 12:42:00', 'gudang', 'approve'),
(13, 1, 2, 1, '2021-04-06 11:11:43', '2021-04-23 11:16:00', 'ads', 'selesai'),
(15, 3, 2, 2, '2022-11-16 00:00:00', '2022-11-20 00:00:00', '', 'approve'),
(16, 4, 2, 3, '2022-11-16 00:00:00', '2022-11-22 00:00:00', '', 'approve'),
(17, 5, 2, 10, '2022-11-16 00:00:00', '2022-11-26 00:00:00', '', 'denied'),
(18, 3, 2, 5, '2022-11-16 00:00:00', '2022-11-28 00:00:00', '', 'menunggu'),
(19, 4, 2, 5, '2022-11-16 00:00:00', '2022-11-29 00:00:00', '', 'menunggu'),
(20, 5, 2, 5, '2022-11-16 00:00:00', '2022-11-26 00:00:00', '', 'menunggu');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nohp` varchar(15) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama_lengkap`, `email`, `nohp`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin@gmail.com', '089654362', 'admin', 'admin', 'admin'),
(2, 'user', 'kangit77@gmail.com', '085434243', 'user', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pinjambarang`
--
ALTER TABLE `pinjambarang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pinjambarang`
--
ALTER TABLE `pinjambarang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
