-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 16, 2022 at 02:29 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_praktek`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_masuk`
--

CREATE TABLE `tb_surat_masuk` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `no_surat` varchar(100) DEFAULT NULL,
  `tgl_surat` date DEFAULT NULL,
  `surat_from` varchar(100) DEFAULT NULL,
  `surat_to` varchar(100) DEFAULT NULL,
  `tgl_terima` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `perihal` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `is_active` int(2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_surat_masuk`
--

INSERT INTO `tb_surat_masuk` (`id`, `no_surat`, `tgl_surat`, `surat_from`, `surat_to`, `tgl_terima`, `perihal`, `keterangan`, `image`, `is_active`, `user_id`) VALUES
(1, '3242424', '2022-05-11', 'Prodi Teknik', 'UPT-IT', '2022-05-10 17:00:00', 'Permohonan Izin sakit', 'Permohonan          ', '3242424.png', 1, NULL),
(2, '1', '2022-05-11', '1', '1', '2022-05-10 17:00:00', 'w', '2 ', '1.png', 1, NULL),
(3, '111/22', '2022-05-16', 'Kepala Dinas', 'Sekolah SMP', '2022-05-15 17:00:00', 'Permohonan Izin sakit', 'Undangan Rapat', 'no_image.jpg', 1, NULL),
(4, '212121', '2022-05-16', 'Sekolah SMK', 'Kepala Dinas', '0000-00-00 00:00:00', 'Permohonan', 'Undangan Wisuda murid', '212121.jpg', 1, 2),
(5, '12133DAA', '2022-05-16', 'Sekolah SMA', 'Kepala Dinas', '0000-00-00 00:00:00', 'Permohonan  Dana Wisuda', 'Permononan Kejasama Bidang IT', '12133DAA.jpg', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_template_surat`
--

CREATE TABLE `tb_template_surat` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `name` varchar(60) DEFAULT NULL,
  `tujuan_surat` varchar(100) DEFAULT NULL,
  `tgl_kirim` datetime DEFAULT NULL,
  `perihal` varchar(150) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `is_active` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_template_surat`
--

INSERT INTO `tb_template_surat` (`id`, `name`, `tujuan_surat`, `tgl_kirim`, `perihal`, `keterangan`, `is_active`) VALUES
(1, 'ABDULLAH', 'DINAS PENDIDIKAN', '2022-05-16 00:00:00', 'PERMHONAN DANA ', 'PERMOAHONAN DANA WISUDA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` enum('admin','sekretaris') DEFAULT 'admin',
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='newTable';

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `email`, `full_name`, `phone`, `role`, `last_login`, `is_active`) VALUES
(1, 'andi', '$2y$10$XYZCwAoTplLmMDYNKl91qORVHYXyzRllFHlLqp9j1cVeu39F1NiNO', 'andi@gmail.com', 'muhammad andi', '08636136163', 'admin', '2022-05-12 01:59:14', 1),
(2, 'Abdullah', '$2y$10$VFtpXJjaaOhLQw5HsWmMCOmxipv6QJ.3z7cCbDCcFzAhLuAcPYlhO', 'admin.abdullah@gmail.com', 'Muhammad Abdullah', '081183112121', 'sekretaris', '2022-05-16 04:54:23', 1),
(5, 'ahmadi', '$2y$10$xoiwwJMHMmnmrjaEGdV8t.7fwkgKRzUQv6D7wxOhLtmBvV48uW3jW', 'ahmadi@gmail.com', 'Ahmadi', '081349685149', 'admin', '2022-05-16 04:54:55', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_template_surat`
--
ALTER TABLE `tb_template_surat`
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
-- AUTO_INCREMENT for table `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_template_surat`
--
ALTER TABLE `tb_template_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
