-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 02, 2024 at 08:49 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weather_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `rekomendasi_kegiatan`
--

CREATE TABLE `rekomendasi_kegiatan` (
  `id` int NOT NULL,
  `kategori_cuaca` varchar(50) DEFAULT NULL,
  `suhu_min` int DEFAULT NULL,
  `suhu_max` int DEFAULT NULL,
  `rekomendasi` text,
  `waktu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rekomendasi_kegiatan`
--

INSERT INTO `rekomendasi_kegiatan` (`id`, `kategori_cuaca`, `suhu_min`, `suhu_max`, `rekomendasi`, `waktu`) VALUES
(1, 'salju', -30, 0, 'Bermain ski atau membuat boneka salju.', 'siang'),
(2, 'salju ringan', 0, 5, 'Minum cokelat hangat di rumah, membaca buku, atau berkemah di dekat pegunungan.', 'malam'),
(3, 'mendung', 10, 20, 'Minum cokelat hangat di rumah, membaca buku, atau menikmati waktu santai.', 'malam'),
(4, 'sejuk', 20, 25, 'Jalan santai di taman dengan jaket hangat, atau membaca buku di luar ruangan.', 'sore'),
(5, 'sejuk', 20, 25, 'Jogging ringan, piknik, atau berjalan-jalan di taman.', 'pagi'),
(6, 'cerah', 25, 30, 'Bersepeda, hiking, atau bermain olahraga seperti voli.', 'siang'),
(7, 'cerah', 25, 30, 'Pergi ke pantai, berenang, atau minum minuman dingin.', 'siang'),
(8, 'terik', 30, 40, 'Mengunjungi tempat indoor ber-AC, atau istirahat di rumah.', 'siang'),
(9, 'hujan ringan', 15, 25, 'Menonton film di rumah, membaca buku, atau minum teh hangat.', 'malam'),
(10, 'hujan sedang', 20, 30, 'Mengunjungi kafe dengan teman, belajar di perpustakaan, atau melakukan yoga di dalam ruangan.', 'siang'),
(11, 'hujan deras', 18, 25, 'Bekerja dari rumah, bermain game, atau mencoba resep masakan baru.', 'pagi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rekomendasi_kegiatan`
--
ALTER TABLE `rekomendasi_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rekomendasi_kegiatan`
--
ALTER TABLE `rekomendasi_kegiatan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
