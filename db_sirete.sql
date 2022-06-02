-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 5.7.33 - MySQL Community Server (GPL)
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk sirete
CREATE DATABASE IF NOT EXISTS `sirete` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sirete`;

-- membuang struktur untuk table sirete.imam
CREATE TABLE IF NOT EXISTS `imam` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `penduduk_id` int(11) DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status` text,
  `is_active` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel sirete.imam: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `imam` DISABLE KEYS */;
/*!40000 ALTER TABLE `imam` ENABLE KEYS */;

-- membuang struktur untuk table sirete.iuran
CREATE TABLE IF NOT EXISTS `iuran` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `tanggal` date DEFAULT NULL,
  `status` text,
  `keperluan` varchar(255) DEFAULT NULL,
  `tipeiuran` varchar(255) DEFAULT NULL,
  `nominal` double(50,0) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel sirete.iuran: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `iuran` DISABLE KEYS */;
/*!40000 ALTER TABLE `iuran` ENABLE KEYS */;

-- membuang struktur untuk table sirete.iuranhistori
CREATE TABLE IF NOT EXISTS `iuranhistori` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `tgl_terima` date DEFAULT NULL,
  `status` text,
  `keluarga_id` int(11) DEFAULT NULL,
  `penduduk_id` int(11) DEFAULT NULL,
  `iuran_id` int(11) DEFAULT NULL,
  `nominal` double(50,0) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel sirete.iuranhistori: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `iuranhistori` DISABLE KEYS */;
/*!40000 ALTER TABLE `iuranhistori` ENABLE KEYS */;

-- membuang struktur untuk table sirete.kegiatan
CREATE TABLE IF NOT EXISTS `kegiatan` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kabupaten` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `is_active` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel sirete.kegiatan: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `kegiatan` DISABLE KEYS */;
REPLACE INTO `kegiatan` (`id`, `name`, `address`, `kecamatan`, `kabupaten`, `provinsi`, `tanggal`, `is_active`) VALUES
	(1, 'Yasinan', 'JL. A.Yani', 'Banjarmasin', 'Banjarmasin', 'Banjarmasin', '2022-05-05', '1');
/*!40000 ALTER TABLE `kegiatan` ENABLE KEYS */;

-- membuang struktur untuk table sirete.keluarga
CREATE TABLE IF NOT EXISTS `keluarga` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `no_kk` varchar(100) DEFAULT NULL,
  `address` text,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kabupaten` varchar(255) DEFAULT NULL,
  `provinsi` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel sirete.keluarga: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `keluarga` DISABLE KEYS */;
/*!40000 ALTER TABLE `keluarga` ENABLE KEYS */;

-- membuang struktur untuk table sirete.kematian
CREATE TABLE IF NOT EXISTS `kematian` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `tanggal` date DEFAULT NULL,
  `status` text,
  `penduduk_id` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel sirete.kematian: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `kematian` DISABLE KEYS */;
/*!40000 ALTER TABLE `kematian` ENABLE KEYS */;

-- membuang struktur untuk table sirete.penduduk
CREATE TABLE IF NOT EXISTS `penduduk` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `nik` int(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `home_number` int(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `kawin` varchar(100) DEFAULT NULL,
  `agama` varchar(150) DEFAULT NULL,
  `profesi` varchar(255) DEFAULT NULL,
  `keluarga_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel sirete.penduduk: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `penduduk` DISABLE KEYS */;
/*!40000 ALTER TABLE `penduduk` ENABLE KEYS */;

-- membuang struktur untuk table sirete.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='newTable';

-- Membuang data untuk tabel sirete.user: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`id`, `username`, `password`, `email`, `full_name`, `phone`, `role`, `last_login`, `is_active`) VALUES
	(1, 'andi', '$2y$10$XYZCwAoTplLmMDYNKl91qORVHYXyzRllFHlLqp9j1cVeu39F1NiNO', 'andi@gmail.com', 'muhammad andi', '08636136163', 'admin', '2022-05-12 01:59:14', 1),
	(2, 'Abdullah', '$2y$10$VFtpXJjaaOhLQw5HsWmMCOmxipv6QJ.3z7cCbDCcFzAhLuAcPYlhO', 'admin.abdullah@gmail.com', 'Muhammad Abdullah', '081183112121', 'user', '2022-05-31 05:26:01', 1),
	(5, 'ahmadi', '$2y$10$xoiwwJMHMmnmrjaEGdV8t.7fwkgKRzUQv6D7wxOhLtmBvV48uW3jW', 'ahmadi@gmail.com', 'Ahmadi', '081349685149', 'admin', '2022-05-31 06:11:04', 1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
