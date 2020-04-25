-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2020 at 07:08 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid19`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`) VALUES
(1, 'saputra', 'saputraari@gmail.com', 'saputra');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(11) NOT NULL,
  `jenis` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `jenis`) VALUES
(1, 'Positif'),
(2, 'Negatif');

-- --------------------------------------------------------

--
-- Table structure for table `karantina`
--

CREATE TABLE `karantina` (
  `id` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `id_status` int(11) DEFAULT NULL,
  `suhu` int(2) DEFAULT NULL,
  `id_tempat` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karantina`
--

INSERT INTO `karantina` (`id`, `id_petugas`, `id_status`, `suhu`, `id_tempat`, `tanggal`, `keterangan`) VALUES
(13, 9, 1, 38, 225, '2020-04-24', 'Gejala-gejala ini membutuhkan perhatian segera. Anda harus segera menelepon Rumah Sakit Terdekat, atau langsung pergi ke instalasi gawat darurat terdekat.'),
(14, 10, 1, 38, 225, '2020-04-25', 'Gejala-gejala ini membutuhkan perhatian segera. Anda harus segera menelepon Rumah Sakit Terdekat, atau langsung pergi ke instalasi gawat darurat terdekat.'),
(15, 11, 3, 42, 150, '2020-04-25', 'Status Tidak Valid.Silahkan kunjungi dokter terdekat yang ada didaerah kalian.'),
(16, 12, 2, 38, 20, '2020-04-25', 'Gejala-gejala ini membutuhkan perhatian segera. Anda harus segera menelepon Rumah Sakit Terdekat, atau langsung pergi ke instalasi gawat darurat terdekat.'),
(17, 13, 1, 38, 20, '2020-04-25', 'Gejala-gejala ini membutuhkan perhatian segera. Anda harus segera menelepon Rumah Sakit Terdekat, atau langsung pergi ke instalasi gawat darurat terdekat.'),
(18, 14, 1, 38, 20, '2020-04-25', 'Gejala-gejala ini membutuhkan perhatian segera. Anda harus segera menelepon Rumah Sakit Terdekat, atau langsung pergi ke instalasi gawat darurat terdekat.'),
(19, 16, 2, 38, 20, '2020-04-25', 'Gejala-gejala ini membutuhkan perhatian segera. Anda harus segera menelepon Rumah Sakit Terdekat, atau langsung pergi ke instalasi gawat darurat terdekat.');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `provinsi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `provinsi`) VALUES
(1, 'Aceh'),
(2, 'Sumatera Utara'),
(3, 'Sumatera Barat'),
(4, 'Riau'),
(5, 'Jambi'),
(6, 'Sumatera Selatan'),
(7, 'Bengkulu'),
(8, 'Lampung'),
(9, 'Kepulauan Bangka Belitung'),
(10, 'Kepulauan Riau'),
(11, 'DKI Jakarta'),
(12, 'Jawa Barat'),
(13, 'Jawa Tengah'),
(14, 'DI Yogyakarta'),
(15, 'Jawa Timur'),
(16, 'Banten'),
(17, 'Bali'),
(18, 'Nusa Tenggara Barat'),
(19, 'Nusa Tenggara Timur'),
(20, 'Kalimantan Barat'),
(21, 'Kalimantan Tengah'),
(22, 'Kalimantan Selatan'),
(23, 'Kalimantan Timur'),
(24, 'Kalimantan Utara'),
(25, 'Sulawesi Utara'),
(26, 'Sulawesi Tengah'),
(27, 'Sulawesi Selatan'),
(28, 'Sulawesi Tenggara'),
(29, 'Gorontalo'),
(30, 'Sulawesi Barat'),
(31, 'Maluku'),
(32, 'Maluku Utara');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `nama` char(6) NOT NULL,
  `kondisi1` text NOT NULL,
  `kondisi2` text NOT NULL,
  `id_jenis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `nama`, `kondisi1`, `kondisi2`, `id_jenis`) VALUES
(1, 'ODP', 'Orang yang mengalami demam (≥38C) atau riwayat demam atau gejala gangguan sistem pernapasan seperti pilek/sakit tenggorokan/batuk DAN pada 14 hari terakhir sebelum timbul gejala memiliki riwayat perjalanan atau tinggal di negara/wilayah yang melaporkan transmisi lokal.  ', 'Orang yang mengalami gejala gangguan sistem pernapasan seperti pilek/sakit tenggorokan/batuk, dan pada 14 hari terakhir sebelum timbul gejala memiliki riwayat kontak dengan kasus konfirmasi atau probabel COVID-19.  ', 2),
(2, 'PDP', 'Orang dengan Infeksi Saluran Pernapasan Akut (ISPA) yaitu demam (≥38C) atau riwayat demam disertai batuk/sesak napas/sakit,tenggorokan/pilek/pneumonia ringan hingga berat, dan pada 14 hari terakhir sebelum timbul gejala memiliki riwayat perjalanan atau tinggal di negara/wilayah yang melaporkan transmisi lokal', 'Orang dengan demam (≥38oC) atau riwayat demam atau ISPA, dan pada 14 hari terakhir sebelum timbul gejala memiliki riwayat kontak dengan kasus konfirmasi atau probabel COVID-19 dan Orang dengan ISPA berat/pneumonia berat, yang membutuhkan perawatan di rumah sakit, dan tidak ada penyebab lain berdasarkan gambaran klinis yang meyakinkan.  \r\n\r\n ', 1),
(3, 'OTG', 'Orang yang tidak bergejala dan memiliki risiko tertular dari orang positif COVID- 19.', 'Orang tanpa gejala merupakan kontak erat dengan kasus positif COVID-19.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tempat`
--

CREATE TABLE `tempat` (
  `id_tempat` int(11) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `id_provinsi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tempat`
--

INSERT INTO `tempat` (`id_tempat`, `kota`, `id_provinsi`) VALUES
(1, 'Kota Banda Aceh', 1),
(2, 'Kota Sabang', 1),
(3, 'Kota Lhokseumawe', 1),
(4, 'Kota Langsa', 1),
(5, 'Kota Subulussalam', 1),
(6, 'Kab. Aceh Selatan', 1),
(7, 'Kab. Aceh Tenggara', 1),
(8, 'Kab. Aceh Timur', 1),
(9, 'Kab. Aceh Tengah', 1),
(10, 'Kab. Aceh Barat', 1),
(11, 'Kab. Aceh Besar', 1),
(12, 'Kab. Pidie', 1),
(13, 'Kab. Aceh Utara', 1),
(14, 'Kab. Simeulue', 1),
(15, 'Kab. Aceh Singkil', 1),
(16, 'Kab. Bireun', 1),
(17, 'Kab. Aceh Barat Daya', 1),
(18, 'Kab. Gayo Lues', 1),
(19, 'Kab. Aceh Jaya', 1),
(20, 'Kab. Nagan Raya', 1),
(21, 'Kab. Aceh Tamiang', 1),
(22, 'Kab. Bener Meriah', 1),
(23, 'Kab. Pidie Jaya', 1),
(24, 'Kota Medan', 2),
(25, 'Kota Pematang Sianta', 2),
(26, 'Kota Sibolga', 2),
(27, 'Kota Tanjung Balai', 2),
(28, 'Kota Binjai', 2),
(29, 'Kota Tebing Tinggi', 2),
(30, 'Kota Padang Sidempua', 2),
(31, 'Kota Gunung Sitoli', 2),
(32, 'Kab. Serdang Bedagai', 2),
(33, 'Kab. Samosir ', 2),
(34, 'Kab. Humbang Hasundu', 2),
(35, 'Kab. Pakpak Bharat', 2),
(36, 'Kab. Nias Selatan', 2),
(37, 'Kab. Mandailing Nata', 2),
(38, 'Kab. Toba Samosir', 2),
(39, 'Kab. Dairi', 2),
(40, 'Kab. Labuhan Batu', 2),
(41, 'Kab. Asahan', 2),
(42, 'Kab. Simalungun', 2),
(43, 'Kab. Deli Serdang', 2),
(44, 'Kab. Karo', 2),
(45, 'Kab. Langkat', 2),
(46, 'Kab. Nias', 2),
(47, 'Kab. Tapanuli Selata', 2),
(48, 'Kab. Tapanuli Utara', 2),
(49, 'Kab. Tapanuli Tengah', 2),
(50, 'Kab. Batu Bara', 2),
(51, 'Kab. Padang Lawas Ut', 2),
(52, 'Kab. Padang Lawas', 2),
(53, 'Kab. Labuhanbatu Sel', 2),
(54, 'Kab. Labuhanbatu Uta', 2),
(55, 'Kab. Nias Utara', 2),
(56, 'Kab. Nias Barat', 2),
(57, 'Kota Padang', 3),
(58, 'Kota Solok', 3),
(59, 'Kota Sawhlunto', 3),
(60, 'Kota Padang Panjang', 3),
(61, 'Kota Bukittinggi', 3),
(62, 'Kota Payakumbuh', 3),
(63, 'Kota Pariaman', 3),
(64, 'Kab. Pasaman Barat', 3),
(65, 'Kab. Solok Selatan', 3),
(66, 'Kab. Dharmasraya', 3),
(67, 'Kab. Kepulauan Menta', 3),
(68, 'Kab. Pasaman', 3),
(69, 'Kab. Lima Puluh Kota', 3),
(70, 'Kab. Agam', 3),
(71, 'Kab. Padang Pariaman', 3),
(72, 'Kab. Tanah Datar', 3),
(73, 'Kab. Sijunjung', 3),
(74, 'Kab. Solok', 3),
(75, 'Kab. Pesisir Selatan', 3),
(76, 'Kota Pekan Baru', 4),
(77, 'Kota Dumai', 4),
(78, 'Kab. Kepulauan Meran', 4),
(79, 'Kab. Kuantan Singing', 4),
(80, 'Kab. Siak', 4),
(81, 'Kab. Rokan Hilir', 4),
(82, 'Kab. Rokan Hulu', 4),
(83, 'Kab. Pelalawan', 4),
(84, 'Kab. Indragiri Hilir', 4),
(85, 'Kab. Bengkalis', 4),
(86, 'Kab. Indragiri Hulu', 4),
(87, 'Kab. Kampar', 4),
(88, 'Kota Jambi', 5),
(89, 'Kota Sungai Penuh', 5),
(90, 'Kab. Tebo', 5),
(91, 'Kab. Bungo', 5),
(92, 'Kab. Tanjung Jabung ', 5),
(93, 'Kab. Tanjung Jabung ', 5),
(94, 'Kab. Muaro Jambi', 5),
(95, 'Kab. Batanghari', 5),
(96, 'Kab. Sarolangun', 5),
(97, 'Kab. Merangin', 5),
(98, 'Kab. Kerinci', 5),
(99, 'Kota Palembang', 6),
(100, 'Kota Pagar Alam', 6),
(101, 'Kota Lubuk Linggau', 6),
(102, 'Kota Prabumulih', 6),
(103, 'Kab. Musi Rawas Utar', 6),
(104, 'Kab. Penukal Abab Le', 6),
(105, 'Kab. Empat Lawang', 6),
(106, 'Kab. Ogan Ilir ', 6),
(107, 'Kab. Ogan Komering U', 6),
(108, 'Kab. Ogan Komering U', 6),
(109, 'Kab. Banyuasin', 6),
(110, 'Kab. Musi Banyuasin', 6),
(111, 'Kab. Musi Rawas', 6),
(112, 'Kab. Lahat', 6),
(113, 'Kab. Muara Enim', 6),
(114, 'Kab. Ogan Komering I', 6),
(115, 'Kab. Ogan Komering U', 6),
(116, 'Kota Bengkulu', 7),
(117, 'Kab. Bengkulu Tengah', 7),
(118, 'Kab. Kepahiang ', 7),
(119, 'Kab. Lebong', 7),
(120, 'Kab. Muko Muko', 7),
(121, 'Kab. Seluma', 7),
(122, 'Kab. Kaur', 7),
(123, 'Kab. Bengkulu Utara', 7),
(124, 'Kab. Rejang Lebong', 7),
(125, 'Kab. Bengkulu Selata', 7),
(126, 'Kota Bandar Lampung', 8),
(127, 'Kota Metro', 8),
(128, 'Kab. Pesisir Barat', 8),
(129, 'Kab. Tulangbawang Ba', 8),
(130, 'Kab. Mesuji', 8),
(131, 'Kab. Pringsewu', 8),
(132, 'Kab. Pesawaran', 8),
(133, 'Kab. Way Kanan', 8),
(134, 'Kab. Lampung Timur', 8),
(135, 'Kab. Tanggamus', 8),
(136, 'Kab. Tulang Bawang', 8),
(137, 'Kab. Lampung Barat', 8),
(138, 'Kab. Lampung Utara', 8),
(139, 'Kab. Lampung Tengah', 8),
(140, 'Kab. Lampung Selatan', 8),
(141, 'Kota Pangkal Pinang', 9),
(142, 'Kab. Belitung Timur', 9),
(143, 'Kab. Bangka Barat', 9),
(144, 'Kab. Bangka Tengah', 9),
(145, 'Kab. Bangka Selatan', 9),
(146, 'Kab. Belitung', 9),
(147, 'Kab. Bangka', 9),
(148, 'Kota Batam', 10),
(149, 'Kota Tanjung Pinang', 10),
(150, 'Kab. Kepulauan Anamb', 10),
(151, 'Kab. Lingga ', 10),
(152, 'Kab. Natuna', 10),
(153, 'Kab. Karimun', 10),
(154, 'Kab. Bintan', 10),
(155, 'Kota Jakarta Timur', 11),
(156, 'Kota Jakarta Selatan', 11),
(157, 'Kota Jakarta Barat', 11),
(158, 'Kota Jakarta Utara', 11),
(159, 'Kota Jakarta Pusat', 11),
(160, 'Kab. Kepulauan Serib', 11),
(161, 'Kota Bandung', 12),
(162, 'Kota Banjar', 12),
(163, 'Kota Tasikmalaya', 12),
(164, 'Kota Cimahi', 12),
(165, 'Kota Depok', 12),
(166, 'Kota Bekasi', 12),
(167, 'Kota Cirebon', 12),
(168, 'Kota Sukabumi', 12),
(169, 'Kota Bogor', 12),
(170, 'Kab. Pangandaran', 12),
(171, 'Kab. Bandung Barat', 12),
(172, 'Kab. Bekasi', 12),
(173, 'Kab. Karawang', 12),
(174, 'Kab. Purwakarta', 12),
(175, 'Kab. Subang', 12),
(176, 'Kab. Indramayu', 12),
(177, 'Kab. Sumedang', 12),
(178, 'Kab. Majalengka', 12),
(179, 'Kab. Cirebon', 12),
(180, 'Kab. Kuningan', 12),
(181, 'Kab. Ciamis', 12),
(182, 'Kab. Tasikmalaya', 12),
(183, 'Kab. Garut', 12),
(184, 'Kab. Bandung', 12),
(185, 'Kab. Cianjur', 12),
(186, 'Kab. Sukabumi', 12),
(187, 'Kab. Bogor', 12),
(188, 'Kota Semarang', 13),
(189, 'Kota Tegal', 13),
(190, 'Kota Pekalongan', 13),
(191, 'Kota Salatiga', 13),
(192, 'Kota Surakarta', 13),
(193, 'Kota Magelang', 13),
(194, 'Kab. Brebes', 13),
(195, 'Kab. Tegal', 13),
(196, 'Kab. Pemalang', 13),
(197, 'Kab. Pekalongan', 13),
(198, 'Kab. Batang', 13),
(199, 'Kab. Kendal', 13),
(200, 'Kab. Temanggung', 13),
(201, 'Kab. Semarang', 13),
(202, 'Kab. Demak', 13),
(203, 'Kab. Jepara', 13),
(204, 'Kab. Kudus', 13),
(205, 'Kab. Pati', 13),
(206, 'Kab. Rembang', 13),
(207, 'Kab. Blora', 13),
(208, 'Kab. Grobogan', 13),
(209, 'Kab. Sragen', 13),
(210, 'Kab. Karanganyar', 13),
(211, 'Kab. Wonogiri', 13),
(212, 'Kab. Sukoharjo', 13),
(213, 'Kab. Klaten', 13),
(214, 'Kab. Boyolali', 13),
(215, 'Kab. Magelang', 13),
(216, 'Kab. Wonosobo', 13),
(217, 'Kab. Purworejo', 13),
(218, 'Kab. Kebumen', 13),
(219, 'Kab. Banjarnegara', 13),
(220, 'Kab. Purbalingga', 13),
(221, 'Kab. Banyumas', 13),
(222, 'Kab. Cilacap', 13),
(223, 'Kota Yogyakarta', 14),
(224, 'Kab. Sleman', 14),
(225, 'Kab. Gunung Kidul', 14),
(226, 'Kab. Bantul', 14),
(227, 'Kab. Kulon Progo', 14),
(228, 'Kota Surabaya', 15),
(229, 'Kota Batu', 15),
(230, 'Kota Madiun', 15),
(231, 'Kota Mojokerto', 15),
(232, 'Kota Pasuruan', 15),
(233, 'Kota Probolinggo', 15),
(234, 'Kota Malang', 15),
(235, 'Kota Blitar', 15),
(236, 'Kota Kediri', 15),
(237, 'Kab. Sumenep', 15),
(238, 'Kab. Pamekasan', 15),
(239, 'Kab. Sampang', 15),
(240, 'Kab. Bangkalan', 15),
(241, 'Kab. Gresik', 15),
(242, 'Kab. Lamongan', 15),
(243, 'Kab. Tuban', 15),
(244, 'Kab. Bojonegoro', 15),
(245, 'Kab. Ngawi', 15),
(246, 'Kab. Magetan', 15),
(247, 'Kab. Madiun', 15),
(248, 'Kab. Nganjuk', 15),
(249, 'Kab. Jombang', 15),
(250, 'Kab. Mojokerto', 15),
(251, 'Kab. Sidoarjo', 15),
(252, 'Kab. Pasuruan', 15),
(253, 'Kab. Probolinggo', 15),
(254, 'Kab. Situbondo', 15),
(255, 'Kab. Bondowoso', 15),
(256, 'Kab. Banyuwangi', 15),
(257, 'Kab. Jember', 15),
(258, 'Kab. Lumajang', 15),
(259, 'Kab. Malang', 15),
(260, 'Kab. Kediri', 15),
(261, 'Kab. Blitar', 15),
(262, 'Kab. Tulungagung', 15),
(263, 'Kab. Trenggalek', 15),
(264, 'Kab. Ponorogo', 15),
(265, 'Kab. Pacitan', 15),
(266, 'Kota Serang', 16),
(267, 'Kota Cilegon', 16),
(268, 'Kota Tangerang', 16),
(269, 'Kota Tangerang Selat', 16),
(270, 'Kab. Serang', 16),
(271, 'Kab. Tangerang', 16),
(272, 'Kab. Lebak', 16),
(273, 'Kab. Pandeglang', 16),
(274, 'Kota Denpasar', 17),
(275, 'Kab. Buleleng', 17),
(276, 'Kab. Karangasem', 17),
(277, 'Kab. Bangli', 17),
(278, 'Kab. Klungkung', 17),
(279, 'Kab. Gianyar', 17),
(280, 'Kab. Badung', 17),
(281, 'Kab. Tabanan', 17),
(282, 'Kab. Jembrana', 17),
(283, 'Kota Mataram', 18),
(284, 'Kota Bima', 18),
(285, 'Kab. Lombok Utara', 18),
(286, 'Kab. Sumbawa Barat', 18),
(287, 'Kab. Bima', 18),
(288, 'Kab. Dompu', 18),
(289, 'Kab. Sumbawa ', 18),
(290, 'Kab. Lombok Timur', 18),
(291, 'Kab. Lombok Tengah', 18),
(292, 'Kab. Lombok Barat', 18),
(293, 'Kota Kupang', 19),
(294, 'Kab. Malaka', 19),
(295, 'Kab. Sabu Raijua', 19),
(296, 'Kab. Manggarai Timur', 19),
(297, 'Kab. Sumba Barat Day', 19),
(298, 'Kab. Sumba Tengah', 19),
(299, 'Kab. Nagekeo', 19),
(300, 'Kab. Manggarai Barat', 19),
(301, 'Kab. Rote Ndao', 19),
(302, 'Kab. Lembata', 19),
(303, 'Kab. Sumba Barat', 19),
(304, 'Kab. Sumba Timur', 19),
(305, 'Kab. Manggarai', 19),
(306, 'Kab. Ngada', 19),
(307, 'Kab. Ende', 19),
(308, 'Kab. Sikka', 19),
(309, 'Kab. Flores Timur', 19),
(310, 'Kab. Alor', 19),
(311, 'Kab. Belu', 19),
(312, 'Kab. Timor Tengah Ut', 19),
(313, 'Kab. Timor Tengah Se', 19),
(314, 'Kab. Kupang', 19),
(315, 'Kota Pontianak', 20),
(316, 'Kota Singkawang', 20),
(317, 'Kab. Kubu Raya', 20),
(318, 'Kab. Kayong Utara', 20),
(319, 'Kab. Sekadau', 20),
(320, 'Kab. Melawi', 20),
(321, 'Kab. Landak', 20),
(322, 'Kab. Bengkayang', 20),
(323, 'Kab. Kapuas Hulu', 20),
(324, 'Kab. Sintang ', 20),
(325, 'Kab. Ketapang', 20),
(326, 'Kab. Sanggau ', 20),
(327, 'Kab. Mempawah', 20),
(328, 'Kab. Sambas', 20),
(329, 'Kota Palangkaraya', 21),
(330, 'Kab. Barito Timur', 21),
(331, 'Kab. Murung Raya', 21),
(332, 'Kab. Pulang Pisau', 21),
(333, 'Kab. Gunung Mas', 21),
(334, 'Kab. Lamandau', 21),
(335, 'Kab. Sukamara', 21),
(336, 'Kab. Seruyan', 21),
(337, 'Kab. Katingan', 21),
(338, 'Kab. Barito Utara', 21),
(339, 'Kab. Barito Selatan', 21),
(340, 'Kab. Kapuas', 21),
(341, 'Kab. Kotawaringin Ti', 21),
(342, 'Kab. Kotawaringin Ba', 21),
(343, 'Kota Banjarmasin', 22),
(344, 'Kota Banjarbaru', 22),
(345, 'Kab. Balangan', 22),
(346, 'Kab. Tanah Bambu', 22),
(347, 'Kab. Tabalong', 22),
(348, 'Kab. Hulu Sungai Uta', 22),
(349, 'Kab. Hulu Sungai Ten', 22),
(350, 'Kab. Hulu Sungai Sel', 22),
(351, 'Kab. Tapin', 22),
(352, 'Kab. Barito Kuala', 22),
(353, 'Kab. Banjar Baru', 22),
(354, 'Kab. Kotabaru', 22),
(355, 'Kab. Tanah Laut', 22),
(356, 'Kota Samarinda', 23),
(357, 'Kota Bontang', 23),
(358, 'Kota Balikpapan', 23),
(359, 'Kab. Mahakam Ulu', 23),
(360, 'Kab. Penajam Paser U', 23),
(361, 'Kab. Kutai Timur', 23),
(362, 'Kab. Kutai Barat', 23),
(363, 'Kab. Berau', 23),
(364, 'Kab. Kutai Kertanega', 23),
(365, 'Kab. Paser', 23),
(366, 'Kota Tarakan', 24),
(367, 'Kab. Tana Tidung', 24),
(368, 'Kab. Nunukan', 24),
(369, 'Kab. Malinau', 24),
(370, 'Kab. Bulungan', 24),
(371, 'Kota Manado', 25),
(372, 'Kota Tomohon', 25),
(373, 'Kota Bitung', 25),
(374, 'Kota Kotamobagu', 25),
(375, 'Kab. Bolaang Mangond', 25),
(376, 'Kab. Bolaang Mangond', 25),
(377, 'Kab. Kepulauan Siau ', 25),
(378, 'Kab. Bolaang Mangond', 25),
(379, 'Kab. Minahasa Tengga', 25),
(380, 'Kab. Minahasa Utara', 25),
(381, 'Kab. Minahasa Selata', 25),
(382, 'Kab. Kepulauan Talau', 25),
(383, 'Kab. Kepulauan Sangi', 25),
(384, 'Kab. Minahasa', 25),
(385, 'Kab. Bolaang Mangond', 25),
(386, 'Kota Palu', 26),
(387, 'Kab. Morowali Utara', 26),
(388, 'Kab. Banggai Laut', 26),
(389, 'Kab. Sigi', 26),
(390, 'Kab. Tojo Una-Una', 26),
(391, 'Kab. Parigi Moutong', 26),
(392, 'Kab. Banggai Kepulau', 26),
(393, 'Kab. Morowali', 26),
(394, 'Kab. Buol', 26),
(395, 'Kab. Toli-Toli', 26),
(396, 'Kab. Donggala', 26),
(397, 'Kab. Poso', 26),
(398, 'Kab. Banggai', 26),
(399, 'Kota Makasar', 27),
(400, 'Kota Palopo', 27),
(401, 'Kota Pare Pare', 27),
(402, 'Kab. Toraja Utara', 27),
(403, 'Kab. Luwu Timur', 27),
(404, 'Kab. Luwu Utara', 27),
(405, 'Kab. Tana Toraja', 27),
(406, 'Kab. Luwu', 27),
(407, 'Kab. Enrekang', 27),
(408, 'Kab. Pinrang', 27),
(409, 'Kab. Sidenreng Rappa', 27),
(410, 'Kab. Wajo', 27),
(411, 'Kab. Soppeng', 27),
(412, 'Kab. Barru', 27),
(413, 'Kab. Pangkajene Kepu', 27),
(414, 'Kab. Maros', 27),
(415, 'Kab. Bone', 27),
(416, 'Kab. Sinjai', 27),
(417, 'Kab. Gowa', 27),
(418, 'Kab. Takalar', 27),
(419, 'Kab. Jeneponto', 27),
(420, 'Kab. Bantaeng', 27),
(421, 'Kab. Bulukumba', 27),
(422, 'Kab. Kepulauan Selay', 27),
(423, 'Kota Kendari', 28),
(424, 'Kota Bau Bau', 28),
(425, 'Kab. Buton Selatan', 28),
(426, 'Kab. Buton Tengah', 28),
(427, 'Kab. Muna Barat', 28),
(428, 'Kab. Konawe Kepulaua', 28),
(429, 'Kab. Kolaka Timur', 28),
(430, 'Kab. Buton Utara', 28),
(431, 'Kab. Konawe Utara', 28),
(432, 'Kab. Kolaka Utara', 28),
(433, 'Kab. Wakatobi', 28),
(434, 'Kab. Bombana', 28),
(435, 'Kab. Konawe Selatan', 28),
(436, 'Kab. Buton', 28),
(437, 'Kab. Muna', 28),
(438, 'Kab. Konawe', 28),
(439, 'Kab. Kolaka', 28),
(440, 'Kota Gorontalo', 29),
(441, 'Kab. Pohuwato', 29),
(442, 'Kab. Bone Bolango', 29),
(443, 'Kab. Boalemo', 29),
(444, 'Kab. Gorontalo', 29),
(445, 'Kab. Gorontalo Utara', 29),
(446, 'Kab. Majene', 30),
(447, 'Kab. Polowali Mandar', 30),
(448, 'Kab. Mamasa', 30),
(449, 'Kab. Mamuju', 30),
(450, 'Kab. Mamuju Utara', 30),
(451, 'Kab. Mamuju Tengah', 30),
(452, 'Kota Ambon', 31),
(453, 'Kota Tual', 31),
(454, 'Kab. Buru Selatan', 31),
(455, 'Kab. Maluku Barat Da', 31),
(456, 'Kab. Kepulauan Aru', 31),
(457, 'Kab. Seram Bagian Ba', 31),
(458, 'Kab. Seram Bagian Ti', 31),
(459, 'Kab. Buru', 31),
(460, 'Kab. Maluku Tenggara', 31),
(461, 'Kab. Maluku Tenggara', 31),
(462, 'Kab. Maluku Tengah', 31),
(463, 'Kota Ternate', 32),
(464, 'Kota Tidore Kepulaua', 32),
(465, 'Kab. Pulau Taliabu', 32),
(466, 'Kab. Pulau Morotai', 32),
(467, 'Kab. Halmahera Timur', 32),
(468, 'Kab. Kepulauan Sula', 32),
(469, 'Kab. Halmahera Selat', 32),
(470, 'Kab. Halmahera Utara', 32),
(471, 'Kab. Halmahera Tenga', 32),
(472, 'Kab. Halmahera Barat', 32);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_petugas` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `telepon` int(30) NOT NULL,
  `id_tempat` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_petugas`, `nama`, `telepon`, `id_tempat`, `username`, `password`) VALUES
(9, 'saputra', -1671, 225, 'saputraari@gmail.com', 'saputra'),
(10, 'dino', 9392023, 173, 'dinoadi@gmail.com', 'dino'),
(11, 'danny', -5904, 20, 'danny123@gmail.com', 'danny'),
(12, 'ardy', -1119, 242, 'ardy@gmail.com', 'ardy'),
(13, 'dilla', -2000, 275, 'dilla12@gmail.com', 'dilla'),
(14, 'shiva', -2022, 224, 'intan@gmail.com', 'intan'),
(15, 'devi', -1779, 201, 'devinanda11@gmail.co', 'devi'),
(16, 'sava', -1816, 275, 'sava@gmail.com', 'sava');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD UNIQUE KEY `id_jenis` (`id_jenis`);

--
-- Indexes for table `karantina`
--
ALTER TABLE `karantina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_status` (`id_status`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `id_tempat` (`id_tempat`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_provinsi`),
  ADD UNIQUE KEY `id_kota` (`id_provinsi`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`),
  ADD KEY `id_status` (`id_status`),
  ADD KEY `id_jenis` (`id_jenis`);

--
-- Indexes for table `tempat`
--
ALTER TABLE `tempat`
  ADD PRIMARY KEY (`id_tempat`),
  ADD KEY `id_tempat` (`id_tempat`),
  ADD KEY `id_kota` (`id_provinsi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_petugas`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `id_tempat` (`id_tempat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `karantina`
--
ALTER TABLE `karantina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id_provinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tempat`
--
ALTER TABLE `tempat`
  MODIFY `id_tempat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `karantina`
--
ALTER TABLE `karantina`
  ADD CONSTRAINT `karantina_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `user` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `karantina_ibfk_2` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `karantina_ibfk_3` FOREIGN KEY (`id_tempat`) REFERENCES `tempat` (`id_tempat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tempat`
--
ALTER TABLE `tempat`
  ADD CONSTRAINT `tempat_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_tempat`) REFERENCES `tempat` (`id_tempat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
