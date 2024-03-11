-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Mar 2024 pada 02.30
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `satoacoi_kunjungan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bujets`
--

CREATE TABLE `bujets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pronyek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_traksaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl` date NOT NULL,
  `material` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_products`
--

CREATE TABLE `category_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `category_products`
--

INSERT INTO `category_products` (`id`, `name`, `description`, `id_user`, `created_at`, `updated_at`) VALUES
(20, 'Non Cair', 'Non Cair', 1, '2023-03-27 07:46:38', '2023-03-27 07:46:38'),
(27, 'Cair', 'Cair', 1, '2023-06-22 04:15:21', '2023-06-22 04:15:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_pt` int(11) NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_cust` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `nama`, `alamat`, `email`, `phone`, `id_user`, `id_pt`, `type`, `status_cust`, `created_at`, `updated_at`) VALUES
(1, 'AAA, CV', 'Jl. Untung Suropati Gg. Kyai Sulaiman 53 Bojonegoro', NULL, '313943270', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(2, 'Aborigin, CV', 'Jl. Tanjung Batu 9 (Pt. Trans Papua Jaya) Surabaya Indonesia', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(3, 'Agrofarm Nusa Raya, PT', 'Jl. KH Ahmad Dahlan No 53 Nologaten Kec. Ponorogo, Ponorogo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(4, 'Agus Suparmanta', 'Sunten, Jomblangan Rt 008 Rw 000 Kel. Baguntapan Kec. Banguntapan , Bantul Jogyakarta', NULL, NULL, 1, 1, 'perorangan', 'Pemasok, Pelanggan', NULL, '2023-07-11 03:17:48'),
(5, 'Ajinex International, PT', 'Desa Mlirip, Mojokerto', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(6, 'Ajinomoto Indonesia, PT', 'Desa Mlirip, Mojokerto', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(7, 'Alfi Dwi Ningrum', 'Baureno Rt 06 Rw 05, Jatirejo Mojokerto', NULL, NULL, 1, 1, 'perorangan', 'Pemasok, Pelanggan', NULL, '2023-07-11 03:18:15'),
(8, 'Alfiatul Faizah', 'Perum Graha Suryanata Blok H No.27, Surabaya', NULL, NULL, 1, 1, 'perorangan', 'Pemasok, Pelanggan', NULL, '2023-07-11 03:18:31'),
(9, 'Alim Susanto', 'Jl. Anggrek Ry. Bx. 15 Solo Baru, Jateng', NULL, NULL, 1, 1, 'perorangan', 'Pemasok, Pelanggan', NULL, '2023-07-11 03:18:57'),
(10, 'Alp Petro Industry, PT', 'Jl.Raya Tempel Rt02,Rw07 Ds,Legok,Kec,Gempol Pasuruan 67155 Indonesia, Pasuruan', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(11, 'Amir Syarifudin', 'Jl. Jambu Rt 002 Rw 006 Jiyu Kutorejo- Mojokrto', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(12, 'Aneka Kimia Inti, PT', 'Graha SA 9th Floor, Jalan Raya Gubeng No.19 - 21,', NULL, '031-503-7767/Fax 031-503-2234', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(13, 'Anggoro Andy', 'Jl.Stadion No.150 Kemiri Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(14, 'Anugerah Jaya Sinergi, PT', 'Jalan Lemper Tengah No 659 Kel. Lemper Tengah, Kec. Semarang Tenggah Jawa Tengah, Semarang,', 'pt.anugerahjayasinergi@gmail.com', '81917700384', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(15, 'Anugerah Libra Kimia, CV', 'Gudang Anugrerah Libra Lik 20 No. 878 - Semarang', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(16, 'Anugrah Lestari Jaya, CV', 'Jl. Pecinan No. 8 Desa Raos, Gempol - Pasuruan', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(17, 'Asiamarco Pasifik Indonesia, PT', 'Villa Taman Telaga Tj 6 No. 1 Rt. 006 Rw. 006, Laskar Santri - Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(18, 'Asli Mandiri, UD', 'Jl. Kedinding Jaya 3 Timur No. 26, Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(19, 'Asli, UD', 'Jl. Kalijudan No. 144, Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(20, 'Atria Irianti Citra Bahari', 'Jl. Dusun Kedung Pawon Rt.003/Rw.004 Sumber Kembar. Kec.Pakuniran, Probolinggo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(21, 'Bagus Putra Brilliant', 'Ds.Tambak Asri RT.04 RW.02 Tajinan, Malang', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(22, 'Beni Iskandar', 'Ds Krajan Rt003 Rw008 Rowo Tengah Kec.Sumber Baru Mojokerto', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(23, 'Berondong Inti Perkasa, PT', 'Ds. Tlogoretno, Kec. Brondong - Lamongan', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(24, 'Bima Sejati, CV', 'Jl. Agung Raya  I No 27B Rt 011 Rw 003, Leteng Agung Jagakarsa', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(25, 'Bina Usaha Lancar, UD', 'Jl. Darmo Permai Timur Iv No. 34, Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(26, 'Bogi Romainur', 'Ds. Semanggi Rt 02 / 010 Pasar Kliwon - Surakarta', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(27, 'Bondi Svad Mulia, PT', 'JL Mayjend Sungkono GG XIV NO 34  Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(28, 'Bondvast Indo Sukses', 'Sampang Agung - Kutorejo - Mojokerto', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(29, 'Budi Handoko', 'Jl. Sidorejo, Rejodadi Rt 005 Ngestiharjo, Kasihan, Bantul -Yogyakarta', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(30, 'Bumi Subur Sentosa, PT', 'Jl. Jenderal Sudirman No. 78 Rt. 003/Rw 001 Kepatihan Ponorogo, Ponorogo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(31, 'Busindo Jaya, CV', 'Jl.Manyar Tirtoasri Viii/28, Klampis Ngasem,Sukolilo Surabaya Indonesia', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(32, 'Cahaya Abadi, CV', 'Jl.Raya Cangkir Rt.15 Rw.005 Cangkir, Driyorejo , Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(33, 'Cahaya Advchem, PT', 'Bungtomo,No 06 Kav,26 Ngagel,Wonokromo Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(34, 'Cahaya Kimia Lestari, UD', 'Jl. Kapuas No.21-I Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(35, 'Cahaya Kimia Raya, CV', 'Jl. Sunrise Residence Kav. 34 C, Sedati, Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(36, 'Cahaya Semesta, CV', 'Jl. Pagesangan Timur No. 58, Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(37, 'Cakrawala Sakti, CV', 'Jl,Sawunggaling.Iii.No,86.Jemundo/Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(38, 'Cheil Jedang Indonesia, PT', 'Desa Jati Gedong, Kecamatan Ploso Kab. Jombang', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(39, 'Cheil Jedang Indonesia, PT', 'Jl. Raya Arjosari, Rejoso Pasuruan', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(40, 'Cipta Makmur Pertiwi, PT', 'Jl. Raya Daendels - Pantura Ds.Wotan, Panceng, Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(41, 'Damaitex, PT', 'Jl. Simongan No. 100, Ngmplak Simongan. Kec. Semarang Barat,  Jateng', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(42, 'Daya Manunggal, PT', 'Jl. Argobusono No. 1 Jurang Gunting  Kel. Ledok Kec. Argomulyo, Salatiga Jawa Tengah', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(43, 'Delta Rasindo, CV', 'P. Bumi Suko Indah C1-55 - Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(44, 'Denie Yulianto', 'Jl. Sukomanunggal No.116, Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(45, 'Dingsheng Metal Indonesia,PT', 'Dsn, Glatik Rt.20 Rw.05 Ds.Watesnegoro, Ngoro, Mojokerto', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(46, 'Dirgaputra Ekapratama PT', 'Jl. Pulo Buaran Raya Blok Ee Kav.I No.4 Kip Jatinegara Cakung Jakarta Timur', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(47, 'Dita Aprilyana Wangling', 'Jl,Kaliurang No.042, Rt.004/Rw. 001 Malang  Lowokwaru', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(48, 'Djagad Samudra, CV', 'Grand Deltasari, Aster No 14, Waru - Sidorajo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(49, 'Duta Gemini, CV', 'Jl. Kancil Utara No 44 Bonto Biraeng, Mamajang  Makasar', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(50, 'Duta Prima Labsains. PT', 'Jl. Kh Wachid Hasyim No. 512 B Lebo - Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(51, 'Dwi Jaya Ekaprima, PT', 'Jl. Raya Belitung No.6 Kota Baru, Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(52, 'Dwi Jaya Star, UD', 'Bp. Rudi Hermawan, Pgd Meico Abadi 2 Blok A/9 Jl. Industri Buduran - Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(53, 'Edi Mulyo Utomo', 'Jl. Dr Wahidin Sh Gg 14K/24 Rt.7 Rw.3 Randu Agung,Kebomas, Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(54, 'Eli Trifino', 'Jl. Jetis Industri Gg Anggrek I, Dsn. Dadapan, Ds. Mojojelebak, Jetis, Mojokerto', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(55, 'Enerco Inter Selaras, PT', 'Jl. Raya Serpong -Pasuruan Gn Sindur-Bogor', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(56, 'Energi Argo Nusantara, PT', 'Gempolkerep , Kelurahan Gempol Kerep Kecamatan Gedek Kabupaten Mojokerto Jawa Timur', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(57, 'Faiq Romli', 'Kedung Ules Rt 12 Rw 006 Kedung ', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(58, 'Gemah Ripah Loh Jinawi, PT', 'Manyar Raya Resort Blok A2 No.1 Manyar, Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(59, 'Goenawan Hartanto', 'Jl. Dr. Sutomo ( Wisma Dr.Sutomo 6A ) Kediri - Kediri', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(60, 'Grace Irene Warouw', 'Jl. Gora No.22 Selagalas, Ds. Selagalas, Kec. Sandubaya- Mataram Lombok Ntb', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(61, 'Gresik Cipta Sejahtera, PT', 'Jl. Raya Selatan  A5, Kig ( Kawasan Industri Gresik ) Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(62, 'Harijanto Soelistijo / UD. Hasil Kimia', 'Jl. Semarang No. 29 Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(63, 'Hengki Wering', 'Wisma Lidah Kulon No.69, Lakarsantri Surabaya Indonesia', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(64, 'Herbivor Satu Nusa, PT', 'Gudang Balongbendo Jl. Surabaya-Mojokerto Km 35  Sidoarjo Indonesia', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(65, 'Heri Irawan', 'Dsn Mojo Rt.004/Rw.002 Desa Ngadirejo,Kec. Widang - Tuban', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(66, 'Heru Supriyanto', 'Jl Bebekan  Jagalan No 018 Bebekan Taman Sda', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(67, 'Huaxin Mineral Industry, PT', 'Jl. Raya Gempol Pandaan Km 140 Kepulungan Pasuruan', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(68, 'Imam Wahyudi', 'Turen - Malang', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(69, 'Indah Prasetyaningrum', 'Perumahan Bumi Suko Inah C I/55, Suko - Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(70, 'Indal Aluminium Industry, PT', 'Ds. Sawotratap, Gedangan Sidoarjo 61254', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(71, 'Ing Wibisono', 'Jl. Kapuas No. 21-I, Keputran-Tegalsari', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(72, 'Intanwijaya Internasional Tbk, PT', 'Wisma Iwi 5Th Floor, Jl Arjuna Selatan Kav 75 Jakarta 11530, Indonesia', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(73, 'Inti Surya Sentosa, PT', 'Jl. Raya Manyar Sembayat, Betoyo Kauman Manyar Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(74, 'Irwan Dwi Sulistyo', 'Jl Dupak Jaya 33 Rt 002/ Rw 003 Kel.Jepara Kec. Bubutan Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(75, 'Iwan Subagijo', 'Petemon Kalibuntu 12 Rt.1 Rw.4 Sby', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(76, 'Jatim Tiga Manunggal .PT', 'Jl. Margomulyo Permai Blok N-20 Surabaya Indonesia', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(77, 'Jaya Prima Kimia, CV', 'Jl. Kamboja Kemendung Rt. 04 Rw. 01 ', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(78, 'Jeffry Chandra', 'Jl. Tembaan 57 C, Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(79, 'Juharmadi', 'Jl. Mangga Rt.16/Rw.02 Geluran.Kec Taman - Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(80, 'Julungwangi Tirta Wahana, PT', 'Jl. Raya Tenggilis No.92, Tenggilis Mejoyo, Kec. Tenggilis Mejoyo, Kota SBY,', NULL, '(031) 8496040 ext. 8492869', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(81, 'Kage Mc Manufacturing, PT', 'Jl. Raya Gilang No. 148 - 158 - Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(82, 'Kalam Leverage Mulia, PT', 'Perumahan Istana Candimas Regency B5-7, Ngampelsari Candi Sidoarjo Indonesia', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(83, 'Kanaka Indoutama, CV', 'Gunung Arjuna Kav.19 Kelurahan Mimbaan Kecamatan Panji  Kabupaten Situbondo Jawa Timur', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(84, 'Kartini', 'Tembok Sayuran Gg Mei Buntu 8 B/ Rt003/Rw005 Tembok Dukuh - Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(85, 'Karunia Abadi, CV', 'Jl. Center Point No. 25 Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(86, 'Kasih Karunia Chemindo, CV', 'Jl. Nanas Viii / 720, Pondok Thjandra Indah. Tambakrejo, Waru, Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(87, 'Kertopaten Kencana, PT', 'Jl. Ambengan No. 20 , Ketabang - Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(88, 'Khoirul Anam', 'Dsn Pandaan Rt.002/Rw.001 Kec.Kutorejo, Mojokerto', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(89, 'Kimart, CV', 'Setro  Baru No 016 Rt 007 Rw 004 , Gading Tambaksari Surabaya Indonesia', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(90, 'Kreasi Presisindo, CV', 'Kebon Rojo No.8A Rt.0 Rw.0 Krembangan Selatan Sby', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(91, 'Kristade, UD', 'Jl. Pramuka 190 Dsn. Sawahan Ds. Purwokerto, Ngadiluwih, Kediri', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(92, 'Kusdam Taryanto', 'Bangak Rt. 003 Rw. 001 Sine - Sragen - Jawa Tengah', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(93, 'Langgeng Makmur Alumunium . PT', 'Jl. Semeru No. 126 Bambe - Driyorejo - Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(94, 'Lewis Soegianto', 'Mulyosari Utara 5/2 Rt,005/Rw001 Kalisari-Mulyorejo-Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(95, 'Long Xing  Logam Indonesia, PT', 'Jl. Wringinanom Km 34 Rt .4 Ew 01 Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(96, 'Lugito Prasodjo W. / Langgeng,UD', 'Jl. Ra. Kartini No. 64 Rt. 4 Rw.9 Dr Sutomo, Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(97, 'Makhmudi', 'Dlanggu Rt/Rw 001/004, Deket Lamongan', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(98, 'Marion Indonesia, CV', 'Kupang Indah I / 25 - Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(99, 'Marjuki Eka Saputra', 'Dsn Jatisarileres,Jatisari Tuban', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(100, 'Martin Hadinugroho', 'Jl. Rinjani Raya No.28 B Rt.005 Rw.018 Kec Jebres Kel. Mojosongo, Solo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(101, 'Maryono', 'Desa Wonocolo Rt.03 Rw.01, Kedewan Bojonegoro', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(102, 'Mathius Dakke - Accu D, UD', 'Jl. Kalimantan No. 5B Rt.01, Rw.01, Kepolorejo, Magetan', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(103, 'Mega Surya Eratama, PT', 'Ds. Jasem Ngoro Kab. Mojokerto', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(104, 'Mina Jaya, CV', 'Perum Pesona Taman Mandiri Merapi M3 Mororejo, Kaliwungu Kendal, Jateng', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(105, 'Mitra Sarana Abadi , CV', 'Jl, Semampir Gang 4 No. 1 - Kediri', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(106, 'Mitra Terang, CV', 'Jl. Panji Suroso 6 Malang', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(107, 'Mohammad Amir', 'Kel. Lemah Duwur Kecamatan Adiwerna Kab. Tegal  Jawa Tenggah', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(108, 'Molindo Raya Industrial, PT', 'Jl. Sumberwaras No.225, Lawang - Malang', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(109, 'Moya Alumina Fortuna, PT', 'Dusun Rancak Rt,001/Rw.006  Kanigoro Rembang Kab.Pasuruan', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(110, 'Muhammad Safrizal Alam Hudi', 'Yosowinangun Rt 001/ Rw 001/Kel Jajag Kec. Gambiran Banyuwangi', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(111, 'Multidaya Putra Sejahtera, PT', 'Jl. Raya Bungah Km.35, Desa Gunung Sari Kec. Bungah Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(112, 'Mulyono Sarjono Tunardy', 'Jl. Prapat Kurung Selatan No 10 -Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(113, 'Mutiara Sinar Mandiri, CV', 'Perum Graha Suryanata Blok Hno.27 Rt.001/Rw005 Sumber Rejo-Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(114, 'Nanok Setiono', 'Jalan Ketiduri Gg 5 Kutorejo, Mojosari, Mojokerto', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(115, 'Nardi Santoso', 'Jl. Manggis No. 8, Kejaten Gedangan-Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(116, 'Nareswara Inti Persada, CV', 'Jl. Pisang I Blok O-273, Cerme, Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(117, 'Nestle Indonesia, PT', 'Jl Raya Pasuruan Km 9.5 Tembero  Kejayan ', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(118, 'Nihaya', 'Randusanga Wetan, Rt.003/Rw002 Kec,Brebes', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(119, 'Noviana Arifin', 'Demeling Rt/Rw 004/003, Purworejo Pacitan Indonesia', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(120, 'Nur Aulia Hamzah', 'Jl. Usman Salengke Sunggu Minasa - Gowa', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(121, 'Nusa Indah Megah, PT', 'Jl. Raya Menganti Kedurus, Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(122, 'Onny Meuliade Rollando', 'Dusun Taragan RT 2 RW 2 Prunggahanwetan, Semanding, Tuban', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(123, 'Paiman', 'Jl. Karya Darma Rt.04 Rw. 04, Lik Magetan', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(124, 'Parkmumin, PT', 'Jl.Sumber Dsn Buluresik Ds Manduro, Mg Ngoro Mojokerto', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(125, 'Pegasus Hikari Indonesia, CV', 'Wisata Bukit Mas Ii E 1 No. 6, Surabaya Indonesia', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(126, 'Perdana Chemindo ', 'Jl. Tembaan 57 C, Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(127, 'Perfect Resource Option, PT', 'Damean, Kepulungan, Kec. Gempol, Pasuruan, Jawa Timur 67155,', NULL, '(0343) 631880', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(128, 'Petrosida, PT', 'Jl.Kig Raya Utara No.5 Sekarsore, Roomo, Manyar - Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(129, 'Petrowidada, PT', 'Jl. Prof. Dr. Moch Yamin.Sh , Roomo , Manyar - Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(130, 'Poly Artha Chemicals, PT', 'Jalan Raya Sedati No 37 Desa Wedi Gedangan, Sidoarjo 61254,', NULL, '(031) 8918000 8919000', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(131, 'Ratogo Indo Makmur, PT', 'Jl. Janti Krajan Rt.04 Rw.02 Kec. Tulangan, Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(132, 'Roasi Sinergi Industri, PT', 'Jl. Raya PLN Kesamben Wetan, Desa/Kelurahan Sumput, Kec. Driyorejo, Kab. Gresik, Provinsi Jawa Timur, Gresik 61177', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(133, 'Rodame Indonesia, PT', 'Jl Nusantara 1 ,Kecamatan Garum, Blitar', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(134, 'Rotama Duta Niaga, PT', 'JL Raya Driyorejo No 134, Driyorejo, Gresik 61177', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(135, 'Ryan Adilisa Putra', 'Gg Pacal - Kapas - Bojonegoro', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(136, 'Samsul Arifin', 'Dusun Timur Rt 02 Rw 01, Curah Jeru - Panji Situbondo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(137, 'Sarkosi', 'Dusun I Rt/Rw 001/001, Dukuh Dalem,Japara Kuningan Indonesia', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(138, 'Sativa Dewi, CV', 'Perum Sun Safira B2/41 Jl. Kesatrian Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(139, 'Sejahtera Jaya Lestari, CV', 'Perum Graha Pesona Blok A-1 No.26 Modong, Tulangan, Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(140, 'Sejahtra Jaya Lestari, CV', 'Perum, Graha Pesona A-1 No. ', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(141, 'Sentosa Kimia, UD', 'Margomulyo 44Ee', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(142, 'Sido Agung Alumi, PT', 'Jl raya Beji, Dusun Luwung, Beji, Beji, Kabupaten Pasuruan, Jawa Timur, 97154', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(143, 'Sila Anugerah Mandiri, PT', 'Pondok Jati H No.10 Rt.015 Rw.005, Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(144, 'Sinar Kimia Utama, PT', 'Jl. Margomulyo Blok Iv No.44 ', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(145, 'Sinar Pancaran Semesta, PT', 'Ruko Mandiri Residence Blok A3 No.03, Krian Sidoarjo Indonesia', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(146, 'Sindu Wiryo Gunawan', 'Krembangan Selatan- Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(147, 'Smart Mitra Abadi, CV', 'Kawasan Industri Candi Blok 20, No 10A Semarang Kel. Ngaliyan Kec Ngaliyan Semarang Jawa Tenggah', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(148, 'Steel Pipe Industry Of Indonesia (SPINDO), PT', 'Jl. Kalibutuh 189 - 191, Surabaya 60292 Indonesia', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(149, 'Steel Pipe Industry Of Indonesia (SPINDO), PT', 'Warugunung Rt 01 Rw 02, Karangpilang-Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(150, 'Steel Pipe Industry Of Indonesia (SPINDO), PT', 'Rungkut Industry I/28-30, Tenggilis Mejoyo-Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(151, 'Sudan, PT', 'Jl.Gatot Subroto No.346 Denpasar, Bali', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(152, 'Sudarsono/Iman', 'Kedewan Rt.003/Rw.001 Kel/Desa Kedewan Kec. Kedewan-Bojonegoro', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(153, 'Sumber Berkat Jaya, PT', 'Jl. Penjaringan Asri Vii No. 35 ', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(154, 'Sumber Primatirta Lestari, PT', 'Jl. Raya Industri No.15, Tambak Sawah - Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(155, 'Sumber Rejeki, CV', 'Jl. Raya Karah No.99, Jambangan, Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(156, 'Sumber Sandang Artoguna, PT', 'Jl.Raya Solo-Baki Km.6 Jlopo-Gedangan-Baki-Sukoharjo 57556', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(157, 'Sun Rise Mill, PT', 'By Pass Mojokerto Km 54, Mojokerto Kode Pos 613361, Mojokerto', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(158, 'Suparma, PT', 'Jl. Mastrip No. 856 Karangpilang Warugunung - Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(159, 'Susanto, UD', 'Jl Raya Karah No 99 - Rt 002/Rw 006 Karah Jambangan  Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(160, 'Sutrisno', 'Jl. Sumokali Rt.18 Rw.4 Candi, Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(161, 'Synergy Langgeng Sejahtera, CV', 'Jl. Mulyosari Utara 5 No. 2, Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(162, 'Thoriq/Nogosari Leather, UD', 'Jl. Yosowilangun Km 11 Nogosari - Rowokangkung - Lumajang', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(163, 'Timuraya Tunggal, PT', 'Jl.Halim Perdana Kusuma No.5 Rt.003 Rw.003,Kebon Besar,Batuceper ', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(164, 'Toya Arum Lestari, PT', 'Citra Sentosa I-02 RT 4 RW 3 Lakarsantri Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(165, 'Tri Sakti Lestari, PT', 'Waterplace Residence Tower A-0217 Jl. Pakuwon Indah Lontar Timur 3-5. Sby', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(166, 'Unggul Regantris Digdjoyo, PT', 'Jl. Palemwatu No 199 Mengganti-Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(167, 'Viktor Robertho', 'Ry. Dukuh Kupang Barat 6- Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(168, 'Wachyuddin / UD. Mhd Sedia Jaya', 'Jl, Ps.No 331 Rw.05,Brakung,Duduk Sampeyan,Kabupaten Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(169, 'Warna Sari Andal Cemerlang, PT', 'Ds. Chairil Anwar Blok A No.23 Bekasi Timur', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(170, 'Warna Sari Andal, PT', 'Ds Cukang Galih Curug , Tangerang', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(171, 'Wisentono', 'Jl. Sukomanunggal Jaya I/59 Rt.1 Rw.3, Surabaya', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(172, 'Yakop Sukmariani', 'Desa Karangrejo Rt.12 Rw. 02 Wungu - Madiun', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(173, 'Yemmy Warauw', 'Jl. Gora No. 22 Cakranegara - Lombok', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(174, 'Yuliana', 'Sumput Asri Ax-33', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(175, 'Yunita Sara', 'Setro Baru Utara 5/77A, Rt 009/Rw 003 Surabaya Indonesia', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(179, 'Agun Supriono', 'Jl Pahlawan Sunaryo, Dsn Tudan RT.01 RW.08 Kemirisewu, Pandaan, Pasuruan', 'championsuksesbersama@gmail.com', '+62 813-3534-2200', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', '2023-05-04 04:16:19', '2023-05-04 04:16:19'),
(181, 'H P Metals Indonesia, PT', 'Ngoro Industri Persada Blok L-2 Ngoro – Mojokerto 61385, Jawa Timur, Indonesia', NULL, '+62321-6819277, +62321-6819278', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', '2023-05-16 01:55:33', '2023-05-16 01:55:33'),
(182, 'AAA, CV', 'Jl. Untung Suropati Gg. Kyai Sulaiman 53 Bojonegoro', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(183, 'Agrofarm Nusa Raya, PT', 'Jl. KH Ahmad Dahlan No 53 Nologaten Kec. Ponorogo, Ponorogo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(184, 'Aneka Kimia Inti, PT', 'Graha SA 9th Floor, Jalan Raya Gubeng No.19 - 21,', NULL, '031-503-7767/Fax 031-503-2234', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(185, 'Artha Christa, PT', 'Jl. Raya Kopo No.372, Kopo, Kec. Bojongloa Kaler,', NULL, ' (022) 6011972', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(186, 'Berlian Biru, CV', 'Jl raya krian-prambon desa wonoplintahan kec, prambon kab. Sidoarjo jawa timur,', NULL, '081-331385000, 085852523111', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(187, 'Bintang Cemerlang, PT', 'Jl. Rotan 1 Blok F27 No.20D Kawasan Delta Silicon 3 Lippo Cikarang,', NULL, '021-89913528/Fax 021-89913671', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(188, 'Cakrawala Sakti, CV', 'Jl,Sawunggaling.Iii.No,86.Jemundo/Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(189, 'Gresik Cipta Sejahtera, PT', 'Jalan A.P Pettarani Kompleks ruko zamrud A18-19, Makassar,', NULL, '(0411) 4662438', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(190, 'Insoclay Acidatama Indonesia, PT', 'CoHive Green Office Park 9, Jl. BSD Green Office Park Boulevard, Sampora, Kec. Cisauk, Tangerang, Banten,', NULL, '02150805941, 081213609885', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(191, 'Julungwangi Tirta Wahana, PT', 'Jl. Raya Tenggilis No.92, Tenggilis Mejoyo, Kec. Tenggilis Mejoyo, Kota SBY,', NULL, '(031) 8496040 ext. 8492869', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(192, 'Kartika Cemerlang Sejati, PT', 'Ruko Chofa, Jalan Raya Suko Manunggal Jaya 3U CSH22, Suko Manunggal, Sukomanunggal, Kec. Sukomanunggal, Kota SBY, Jawa Timur 60188,', NULL, '(031) 7393788', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(193, 'Multidaya Putra Sejahtera, PT', 'Jl. Raya Bungah Km.35, Desa Gunung Sari Kec. Bungah Gresik', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(194, 'Parna Raya , PT', 'Jl. HR Rasuna Said Kav 1, RT.1/RW.6 Guntur Setiabudi Jakarta Selatan,DKI Jakarta, Indonesia,', NULL, '021-8354086', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(195, 'Perfect Resource Option, PT', 'Damean, Kepulungan, Kec. Gempol, Pasuruan, Jawa Timur 67155,', NULL, '(0343) 631880', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(196, 'Petrokimia Gresik, PT', 'Jl. Jenderal Ahmad Yani - Gresik 61119,', NULL, '031-3981811, 3982100, 3982200', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(197, 'Poly Artha Chemicals, PT', 'Jalan Raya Sedati No 37 Desa Wedi Gedangan, Sidoarjo 61254,', NULL, '(031) 8918000 8919000', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(198, 'Rejeki Anugrah Prima, PT', 'JL. NGADI 23 KENJERAN SURABAYA,', NULL, '031-382850', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(199, 'Roasi Sinergi Industri, PT', 'Jl. Raya PLN Kesamben Wetan, Desa/Kelurahan Sumput, Kec. Driyorejo, Kab. Gresik, Provinsi Jawa Timur, Gresik 61177', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(200, 'Rodame Indonesia, PT', 'Jl Nusantara 1 ,Kecamatan Garum, Blitar', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(201, 'Rotama Duta Niaga, PT', 'JL Raya Driyorejo No 134, Driyorejo, Gresik 61177', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(202, 'Sabanusa Mitra Mandiri, PT', 'Jl. Multi Sarana Plaza B-30,', NULL, '0812-1213-4569', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(203, 'Samator Intiperoksida, PT', 'JL. KIG Raya Utara, Blok K Kav. 12-20 RT 002/01, Kawisanyar, ', NULL, '031 3950911', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(204, 'Sejahtera Jaya Lestari, CV', 'Perum, Graha Pesona A-1 No. 26, Sidoarjo', NULL, NULL, 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(205, 'Semesta Jaya Abadi, PT', 'Office88 Casablanca ,', NULL, '622129631621', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', NULL, NULL),
(211, 'Rizal Ubaidillah Razak', 'Desa Pekarungan RT 13 RW 04 No. 03, Sukodono Depan Masjid Baitut Taubah', NULL, '081937940760', 1, 1, 'badan usaha', 'Pemasok, Pelanggan', '2023-05-25 02:42:36', '2023-05-25 02:42:36'),
(222, 'Kemika Gondang Persada, PT', 'Jalan Raya Narogong KM 6,8 Rawa Lumbu, Kota Bekasi, Jawa Barat, Indonesia', 'sales@kgpchemicals.co.id', '0218204074', 5, 1, 'badan usaha', 'Pelanggan', '2023-07-21 02:57:16', '2023-07-21 02:57:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `file_regristasis`
--

CREATE TABLE `file_regristasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_cust` bigint(20) UNSIGNED NOT NULL,
  `name_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_pt` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `file_regristasis`
--

INSERT INTO `file_regristasis` (`id`, `id_cust`, `name_file`, `photo`, `id_user`, `id_pt`, `created_at`, `updated_at`) VALUES
(18, 3, 'npwp_perushaan', 'public/E8ez472QC2uBwSGzwOzGfh7zz5oLEwpwrJER8lOp.pdf', 5, 1, '2023-07-13 07:52:51', '2023-07-13 07:52:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gudangs`
--

CREATE TABLE `gudangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gudang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gudangs`
--

INSERT INTO `gudangs` (`id`, `gudang`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'gudang 1', 'gudang 1', '2023-04-28 02:03:59', '2023-04-28 02:03:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatans`
--

CREATE TABLE `jabatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jabatans`
--

INSERT INTO `jabatans` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'manager', NULL, NULL),
(2, 'Asisten Manajer', '2023-03-16 04:50:41', '2023-03-16 04:50:54'),
(3, 'Staf Customer Care', '2023-03-16 04:55:02', '2023-03-16 04:55:02'),
(4, 'Staf pengadaan Barang', '2023-03-16 04:55:10', '2023-03-16 04:55:10'),
(5, 'Ast. Manajer Pengadaan  Barang Dagang', '2023-03-16 04:55:19', '2023-03-16 04:55:19'),
(6, 'Ast. Manajer Pemasaran', '2023-03-16 04:55:25', '2023-03-16 04:55:25'),
(7, 'Manajer Pemasaran', '2023-03-16 04:55:31', '2023-03-16 04:55:31'),
(8, 'Direktur keuangan SDM dan umum', '2023-03-16 04:57:38', '2023-03-16 04:57:38'),
(10, 'Staf IT', '2023-03-22 02:44:00', '2023-03-22 02:44:00'),
(11, 'Asisten Manajer IT', '2023-03-22 06:35:11', '2023-03-22 08:38:37'),
(12, 'Direktur Utama', '2023-03-27 07:31:58', '2023-03-27 07:31:58'),
(13, 'Direksi PT Rodame', '2023-03-27 07:32:18', '2023-03-27 07:32:18'),
(14, 'Direksi PT Roasi', '2023-03-27 07:32:27', '2023-03-27 07:32:27'),
(15, 'Direksi PT Rotama', '2023-03-27 07:32:38', '2023-03-27 07:32:38'),
(16, 'Marketing Staff', '2023-04-04 03:58:46', '2023-04-04 03:58:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kertas_kerjas`
--

CREATE TABLE `kertas_kerjas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idBarang` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `id_pt` bigint(20) UNSIGNED DEFAULT NULL,
  `idCustomer` bigint(20) UNSIGNED DEFAULT NULL,
  `awal` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akhir` date DEFAULT NULL,
  `nomor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hargaBeli` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persenmargin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kuantitasp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalmargin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diskonpersen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diskonbarang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diskonmargin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hargakemasan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beratbersih` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tarifbank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlahhari` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tarifbunga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `feeExternal1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feeExternal2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginDiskon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hargaJualBarang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ongkosAngkut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ongkosAngkut1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biayaBongkar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biayaMuat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biayaKemasan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biayaHandling` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biayaAsuransi` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biayaCadangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harpokJasa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BiayaAdminJasa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BiayaAdminJasa1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hargaJualJasaTunai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bayarTunai1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bayarTunai2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uangMuka` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uangMuka1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sisaPembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sisaPembayaran1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terminSisa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `com` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hargaJualBarangPPN` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hargaJualBarangPPN2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kunjungan_rekanans`
--

CREATE TABLE `kunjungan_rekanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kunjungan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kunjungan_ke` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `visituser` int(11) NOT NULL,
  `id_pegawai` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pt` bigint(20) UNSIGNED NOT NULL,
  `namapic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatanpic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nopic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitpt` int(11) NOT NULL,
  `id_produk` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kebutuhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_approved` int(11) NOT NULL,
  `user_approved` int(11) DEFAULT NULL,
  `user_pt` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kunjungan_rekanans`
--

INSERT INTO `kunjungan_rekanans` (`id`, `no_kunjungan`, `kunjungan_ke`, `tanggal`, `jam`, `id_user`, `visituser`, `id_pegawai`, `id_pt`, `namapic`, `jabatanpic`, `nopic`, `visitpt`, `id_produk`, `status`, `kebutuhan`, `keterangan`, `status_approved`, `user_approved`, `user_pt`, `created_at`, `updated_at`) VALUES
(157, 'KJ-STN-2023710000001', 1, '2023-04-03', '14:00:00', 4, 1, 'Wawan, Yudha', 40, 'Ibu Ima', 'Purchasing Produksi', '0812-3434-5200', 1, 1, 'Pembeli', '250 Ton/Bulan', '-PT CMP membutuhkan Asam Sulfat hingga 250 ton dalam satu bulan.\r\n-PT Satona kedepannya akan di berikan PO 200 ton dengan pengiriman parsial sesuai jadwal yang ditentukan. \r\n-PT CMP memiliki 12 storage Asam Sulfat dengan ukuran kecil yang tersebar di tiga titik dalam pabrik. \r\n-PT CMP memiliki tiga supplier yaitu PT Lamtara (barang smelting), PT Liku Telaga dan PT Satona \r\n-Supplier lainnya menawarkan harga mendekati harga jual PT Satona ke PT CMP sehingga akan terjadi persaingan harga yang ketat. \r\n-PT Liku Telaga sedang melakukan pendekatan untuk pembuatan instalasi pemipaan dan storage Asam Sulfat.\r\n-Asam Sulfat PT Satona masih kurang bening dibandingkan dengan Asam Sulfat milik PT Liku Telaga.\r\n-Asam Sulfat milik PT Satona masih di dalam proses trial dalam proses produksi pupuk. \r\n-PT CMP membutuhkan angkutan bak terbuka untuk pendistribusian pupuk.  Penawaran bisa langsung ditujukan kepada Ibu Bella.', 2, 3, 1, NULL, '2023-07-07 03:03:10'),
(158, 'KJ-STN-2023710000002', 1, '2023-04-05', '13:00:00', 3, 1, 'Wawan, Yudha', 108, 'Ibu Irma', 'Purchasing', '0818-0387-6446', 1, 1, 'Pembeli', '80 ton/bulan', 'Estimasi berkisar 40 ton hingga 80 ton per bulan\r\nTerdapat empat suplier Asam Sulfat yang masuk ke PT Molindo', 2, 3, 1, NULL, '2023-07-06 15:35:45'),
(159, 'KJ-STN-2023710000002', 1, '2023-04-05', '13:00:00', 3, 1, 'Wawan, Yudha', 108, 'Ibu Irma', 'Purchasing', '0818-0387-6446', 1, 19, 'Pembeli', '30ton/3bulan', 'Pembelian dilakukan dalam 3 bulan sekali', 2, 3, 1, NULL, '2023-07-06 15:36:50'),
(160, 'KJ-STN-2023710000002', 1, '2023-04-05', '13:00:00', 3, 1, 'Wawan, Yudha', 108, 'Ibu Irma', 'Purchasing', '0818-0387-6446', 1, 13, 'Pembeli', '7ton/bulan', 'Estimasi berkisar 7 ton hingga 10 ton per bulan', 2, 3, 1, NULL, '2023-07-06 15:37:05'),
(161, 'KJ-STN-2023710000002', 1, '2023-04-05', '13:00:00', 3, 1, 'Wawan, Yudha', 108, 'Ibu Irma', 'Purchasing', '0818-0387-6446', 1, 18, 'Pembeli', '7ton/bulan', 'Estimasi berkisar 7 ton hingga 10 ton per bulan', 2, 3, 1, NULL, '2023-07-06 15:45:15'),
(162, 'KJ-STN-2023710000002', 1, '2023-04-05', '13:00:00', 3, 1, 'Wawan, Yudha', 108, 'Ibu Irma', 'Purchasing', '0818-0387-6446', 1, 4, 'Pembeli', '7ton/bulan', '7ton/bulan', 2, 3, 1, NULL, '2023-07-06 15:45:26'),
(163, 'KJ-STN-2023710000003', 1, '2023-04-14', '10:19:00', 4, 1, 'Rissa, Wawan', 179, 'Bapak Tjondro', 'direktur', '+62 813-3534-2200', 1, 1, 'Pembeli', '8 ton/bulan', '1. Asam sulfat digunakan untuk pembuatan Air Zuur.\r\n2. Kapasitas storage asam sulfat mencapai 15 ton.', 2, 3, 1, NULL, '2023-07-06 15:45:35'),
(164, 'KJ-STN-2023710000004', 1, '2023-05-04', '14:43:00', 6, 1, 'Wawan, Lika', 84, 'Ibu Kartini', 'Pemilik', '085100529642', 1, 15, 'Pembeli', '1 ton/Bulan', '1. Penjualan Copper Sulfat oleh Ibu kartini mencapai 1.000 KG hingga 1.500 secara rutin tiap bulan.\r\n2. Adanya kompetitor dari Jakarta memberikan harga Rp37.000 (include PPN 11%) dengan fasilitas free ongkir dan termin pembayaran 3 Minggu s.d. 1 Bulan.', 2, 3, 1, NULL, '2023-07-06 15:45:44'),
(165, 'KJ-STN-2023710000004', 1, '2023-05-04', '14:43:00', 6, 1, 'Wawan, Lika', 84, 'Ibu Kartini', 'Pemilik', '085100529642', 1, 1, 'Pembeli', '1.750 Kg/Bulan', '1. Menggunakan kemasan jeriken dengan berat @35Kg\r\n2. Ibu Kartini disuplai oleh PT Nuranex', 2, 3, 1, NULL, NULL),
(166, 'KJ-STN-2023710000004', 1, '2023-05-04', '14:43:00', 6, 1, 'Wawan, Lika', 84, 'Ibu Kartini', 'Pemilik', '085100529642', 1, 21, 'Pembeli', '3.500 Kg/Bulan', '1. Menggunakan kemasan jeriken dengan berat @35Kg\r\n2. Kebutuhan Asam Klorida mencapai 100 Jeriken hingga 150 Jeriken tiap bulan', 2, 3, 1, NULL, '2023-07-06 09:59:04'),
(167, 'KJ-STN-2023710000004', 1, '2023-05-04', '14:43:00', 6, 1, 'Wawan, Lika', 84, 'Ibu Kartini', 'Purchasing', '085100529642', 1, 5, 'Pembeli', '3.500 Kg/Bulan', '1. Menggunakan kemasan jeriken dengan berat @35Kg\r\n2. Kebutuhan Sodium Hipoklorit mencapai 100 Jeriken hingga 150 Jeriken tiap bulan', 2, 3, 1, NULL, NULL),
(168, 'KJ-STN-2023710000005', 1, '2023-05-10', '16:05:00', 6, 1, 'Lika', 119, 'Bapak Wahyu', 'Pemilik', '081332275713', 1, 15, 'Pembeli', '200Kg/Bulan', '1. Kompetitor dari Bogor (PT Nebraska) memberikan harga ke Pak Wahyu sebesar Rp36.000 exclude PPN belum termasuk ongkir.\r\n2. Copper sulfat untuk dijual kembali dalam kemasan 1 Kg.\r\n3. Kebutuhan Copper meningkat hingga 1.000Kg karena muncul wabah Penyakit Mulut dan Kuku (PMK) yang menyerang hewan ternak.', 2, 3, 1, NULL, NULL),
(169, 'KJ-STN-2023710000006', 1, '2023-05-10', '11:27:00', 4, 1, 'Yudha', 18, 'Bapak Hamza', 'Pemilik', '0812-3012-6661', 1, 1, 'Pembeli', '8 ton/bulan', '1. Penurunan volume pembelian Asam Sulfat ke PT Satona dikarenakan harga kurang bersaing dibandingkan kompetitor.\r\n2. UD Asli Mandiri tidak lagi melayani pembelian Asam Sulfat luar Pulau Jawa karena pembayaran dengan melebihi jatuh tempo yang terlalu lama.', 2, 3, 1, NULL, '2023-07-06 15:17:58'),
(170, 'KJ-STN-2023710000007', 1, '2023-05-11', '15:00:00', 4, 1, 'Yudha', 11, 'Bapak Amir', 'Pemilik', '0813-3616-2523', 1, 1, 'Pembeli', '6 ton/bulan', '1. Asam Sulfat digunakan untuk pembuatan air zuur untuk kebutuhan di luar Pulau Jawa.\r\n2. Rutinitas pembelian asam sulfat bergantung dari penjualan air zuur oleh Bapak Amir.\r\n3. Pandemi Covid-19 membuat penjualan air zuur mengalami penurunan hingga 70%.\r\n4. Hanya melakukan pembelian asam sulfar kepada PT Satona.', 2, 3, 1, NULL, NULL),
(171, 'KJ-STN-2023710000008', 1, '2023-05-11', '11:20:00', 4, 1, 'Yudha', 181, 'Bu Lina', 'Head Purchasing', '0822-3441-0749', 1, 1, 'Pembeli', '20 ton/bulan', '1. Kuantitas setiap pengiriman sebesar 10 ton, jadi dalam satu bulan terdapat 2 kali pengiriman.\r\n2. Memiliki storage dengan kapasitas 10 ton sebanyak 3 unit.\r\n3. Supplier Asam Sulfat existing adalah PT Liku Telaga dan PT Surya Makmur.\r\n4. Meminta pembayaran dengan Down Payment 0%. Sisa pembayaran termin 7 hari.\r\n5. Pengakuan kuantitas timbangan mengacu kepada hasil timbangan milik H P Metals Indonesia.', 2, 3, 1, NULL, '2023-07-06 15:37:21'),
(172, 'KJ-STN-2023710000009', 2, '2023-05-11', '11:20:00', 4, 1, 'Yudha', 181, 'Bu Lina', 'Head Purchasing', '0822-3441-0749', 1, 4, 'Pembeli', '25 ton/2 bulan', '1. Menggunakan merk Indochlor Prakarsa Industries dari PT Sulfindo Adiusaha', 2, 3, 1, NULL, '2023-07-06 15:36:41'),
(173, 'KJ-STN-2023710000010', 1, '2023-05-15', '15:00:00', 4, 1, 'Yudha', 211, 'Pak Rizal', 'Pemilik', '081937940760', 1, 1, 'Pembeli', '16000 Kg/bulan', '- Pengiriman Asam Sulfat menggunakan truck tangki kecil ukuran 8 ton.\r\n-Pembelian Asam Sulfat sebelumnya ke PT Labar Raya Samodra.\r\n-Asam Sulfat dijual kembali dalam bentuk kemasan jeriken.', 2, 3, 1, NULL, '2023-07-06 15:36:19'),
(174, 'KJ-STN-2023710000011', 2, '2023-05-15', '15:00:00', 4, 1, 'Yudha', 211, 'Pak Rizal', 'Pemilik', '081937940760', 1, 2, 'Pembeli', '5000 kg/bulan', '-Asam Klorida dijual kembali dalam bentuk kemasan jeriken.', 2, 3, 1, NULL, '2023-07-06 15:36:12'),
(175, 'KJ-STN-2023710000012', 1, '2023-05-02', '10:17:00', 6, 1, '\"Rissa, Wawan, Lika\"', 196, 'Bapak Chosy', 'Retail Management', '+62 813-5951-9378', 1, 19, 'Penjual', '100 ton', '1. Harga ditentukan langsung oleh Pupuk Indonesia.\r\n2. Petrokimia bisa berkolaborasi dalam mengikuti event seminar dan pameran produk pupuk untuk menjangkau pasar perkebunan di luar Jawa.\r\n3. Pembelian dibawah 100 ton akan dilayani oleh tim Retail Management.\r\n4. Pembelian diatas 100 ton akan dilayani oleh tim Korporasi Management dan dapat melakukan negosiasi untuk mendapat harga yang lebih bersaing untuk mengikuti tender.', 2, 3, 1, NULL, '2023-07-06 15:36:03'),
(176, 'KJ-STN-2023710000012', 1, '2023-05-02', '10:17:00', 6, 1, '\"Rissa, Wawan, Lika\"', 196, 'Bapak Chosy', 'Retail Management', '+62 813-5951-9378', 1, 25, 'Penjual', '30 ton', '1. Harga ditentukan langsung oleh Pupuk Indonesia.', 2, 3, 1, NULL, '2023-07-10 09:56:34'),
(185, 'KJ-STN-2023710000013', 1, '2023-07-08', '12:59:00', 3, 1, 'Yamaica Yudha Tamara', 51, 'Bapak Saiman', 'Direktur', '-', 1, 1, 'Pembeli', '300 Ton', '1. Informasi dari Pak Saiman agar kedistributoran saat ini didaftarkan pada kementrian pedagangan sebagai syarat masuk ke pertambangan saat ini, dan dilengkapi dgn KBLI 46654(Perdagangan Besar barang Berbahaya). Informasi tersebut dari pertambangan untuk PT Dwi Jaya Ekaprim.\r\n\r\n2. Untuk pengisian Asam sulfat saat ini minimal 21 ton dan maksimal 21,7 ton tidak boleh lebih karena  kelebihan tonase nantinya akan berpengaruh pada penagihan pihak PT Dwi Jaya Ekaprim ke customernya.\r\n\r\n3. Pak Saiman meminta untuk penurunan harga Asam Sulfat  karena harga PT Satona lebih tinggi dari yang lain. Meskipun tinggi PT Dwi Jaya Ekaprima tetap membeli Asam sulfat dari PT Satona karena adanya kemampuan kecepatan pengiriman, tetapi saat ini harus bersaing dengan Rolimex di daerah Margomulyo dengan harga Asam Sulfat yang masuk yaitu 1.725/Kg.', 2, 3, 1, NULL, '2023-07-27 02:59:43'),
(187, 'KJ-STN-2023710000015', 1, '2023-07-13', '17:00:00', 4, 1, 'Ibu Rissa Dwi Kurnia, Bapak Irawan', 142, 'Bapak Yogik', 'Purchasing', '082233216037', 1, 1, 'Pembeli', '32 - 40 Ton / Bulan', '1. PT Sido Agung Alumi normal nya membutuhkan asam sulfat sebanyak 32 - 40 ton per bulan, namun mulai 2 bulan ini PT Sido Agung Alumi kesulitan mendapatkan bahan baku Alumunium sehingga produksi pun menurun cukup tinggi. \r\n\r\n2. Bahan baku yang dibutuhkan PT Sido Agung Alumi yaitu 30 ton per hari yang diperoleh dari sebagian besar impor dan saat ini sulit mendapatkan bahan baku impor tersebut.', 2, 3, 1, NULL, '2023-07-27 03:00:01'),
(188, 'KJ-STN-2023710000015', 1, '2023-07-13', '17:00:00', 4, 1, 'Ibu Rissa Dwi Kurnia, Bapak Irawan', 142, 'Masih mencari informasi', 'Masih mencari informasi', 'Masih mencari informasi', 1, 15, 'Pembeli', '-', 'PT Sido Agung Alumi merupakan anak perusahaan dari PT Sido Agung Agro Prima yang bergerak pada pakan ternak dan bekerjasama dengan peternak di setiap kota. Hal ini akan jd peluang untuk menawarkan copper sulfat nantinya.\r\n\r\nMasih tahap mencari informasi lebih detail', 2, 3, 1, NULL, '2023-07-27 03:00:31'),
(189, 'KJ-STN-2023710000015', 1, '2023-07-13', '17:00:00', 4, 1, 'Ibu Rissa Dwi Kurnia, Bapak Irawan', 142, 'Bapak Yogik', 'Purchasing', '082233216037', 1, 18, 'Pembeli', '5 Ton / Minggu', 'Selain asam sulfat, juga diperlukan Caustic Soda flakes China sebanyak 5 ton /minggu.', 2, 3, 1, NULL, '2023-07-27 03:00:42'),
(190, 'KJ-STN-2023710000015', 1, '2023-07-13', '17:00:00', 4, 1, 'Ibu Rissa Dwi Kurnia, Bapak Irawan', 142, 'Bapak Yogik', 'Purchasing', '082233216037', 1, 12, 'Pembeli', '10 Ton / Bulan', 'Bahan lainnya yaitu Nitric Acid 10 ton /bulan dengan spesifikasi tidak ditentukan yang dipilih harga paling terjangkau.', 2, 3, 1, NULL, '2023-07-27 03:00:57'),
(191, 'KJ-STN-2023710000016', 1, '2023-07-13', '14:00:00', 4, 1, 'Ibu Rissa Dwi Kurnia, Bapak Irawan', 117, 'Ibu Dian', 'Pengawas Chemical', '085791994215', 1, 1, 'Pembeli', '7000 - 14000 Kg per Bulan', '1. Memperkenalkan PT Rotama Duta Niaga sebagai anak perusahaan dari PT Satona yang bergerak di angkutan sebagai pengiriman produk ke  PT Nestle Indonesia.\r\n\r\n2. PT Satona dan PT Rotama Duta Niaga sebagai vendor PT Nestle Indonesia meminta maaf atas kejadian pengiriman dengan supir yang lupa membawa Alat Perlindungan Diri (APD), atas dokumen Surat Jalan (SJ) yang tidak diserahkan, dan tonase yang melebihi Purchase Order (PO). \r\n\r\n3. PT Nestle Indonesia sangat mengapresiasi PT Satona yang merupakan vendor  memiliki kesamaan pada hal safety sangat tinggi  dalan melakukan pengiriman chemical, dibandingkan dengan vendor yang lain, dan agar pelayanan lebih baik lagi.\r\n\r\n5. Asam Sulfat 98% digunakan untuk Water Treatment, selain itu membutuhkan Asam Sulfat kadar 60% untuk proses produksi dengan kuantitas yang akan diinformasikan kembali. \r\n\r\n6. Selain Asam Sulfat, PT Nestle Indonesia membutuhkan Nitric Acid dan Caustic Soda dengan jumlah kebutuhan yang belum bisa disebutkan karena yang tahu di purchasing produksi.', 2, 3, 1, NULL, '2023-07-27 03:01:06'),
(192, 'KJ-STN-2023710000017', 1, '2023-07-13', '11:30:00', 4, 1, 'Ibu Rissa Dwi Kurnia, Bapak Irawan', 222, 'Bapak Danies', 'Sales Director', '081390358880', 1, 1, 'Pembeli', '25.000 Kg per Bulan', '1. PT Kemika Gondang Perkasa merupakan perusahaan trading kimia yang mencoba untuk mencoba di produk pupuk yaitu pupuk Urea.  \r\n\r\n2. Kebutuhan dari PT Kemika Gondang Perkasa produk Urea yaitu 100 ton. Dengan yang disarankan yaitu pupuk urea PKT agar dekat dengan port kirim. \r\n\r\n3. Perkembangan pupuk Urea yang ditawarkan oleh PT Satona masih di tahap meminta jaminan supplay dan jaminan spesifikasi atau kualitas kepada PKT. \r\n\r\n4. Pembahasan tentang kendala pengiriman perdana Asam Sulfat 98% yang telah dilakukan di awal Juli 2023. Pembahasan lebih lanjut bersama Bapak David yang lebih spesifik pegang produk Chemical Cair. \r\n\r\n5. PT Kemika Gondang Perkasa selain perusahaan Trading Chemical, ia merupakan importir produk dari China melalui perusahaan lainnya yaitu PT Eterna Indo Chemical. Produk yang di impor yaitu Caustic Soda Flakes, PAC dan chamical padatan lainnya sehingga terbuka dalam proses jual beli bahan import dengan PT Satona.', 1, 3, 1, NULL, '2023-08-30 09:18:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(34, '2014_10_12_000000_create_users_table', 1),
(35, '2014_10_12_100000_create_password_resets_table', 1),
(36, '2019_08_19_000000_create_failed_jobs_table', 1),
(37, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(38, '2023_02_02_075039_create_siswas_table', 1),
(39, '2023_02_02_144816_add_foto_to_siswas_table', 1),
(40, '2023_02_04_162434_create_biayas_table', 1),
(41, '2023_02_05_213812_create_tagihans_table', 1),
(42, '2023_02_13_115438_create_customers_table', 1),
(43, '2023_02_13_123700_create_produks_table', 1),
(44, '2023_02_13_130335_create_rekom_hargas_table', 1),
(45, '2023_02_13_154551_create_juals_table', 1),
(46, '2023_02_15_084859_create_gudangs_table', 1),
(47, '2023_03_03_144951_create_mbarangs_table', 1),
(48, '2023_03_15_145135_create_jabatans_table', 1),
(50, '2023_03_16_104344_create_kunjungans_table', 2),
(51, '2023_03_19_113022_create_barangs_table', 3),
(52, '2023_03_20_135844_create_kunjungan_supliers_table', 4),
(53, '2023_03_22_140702_create_category_products_table', 5),
(57, '2023_03_24_113931_create_supliers_table', 7),
(58, '2023_05_03_124238_create_pts_table', 8),
(59, '2023_05_15_090232_create_kunjungan_rekanans_table', 9),
(60, '2023_06_23_101100_create_m_products_table', 10),
(63, '2023_07_03_152935_create_file_regristasis_table', 11),
(64, '2023_07_07_105115_create_kertas_kerjas_table', 12),
(65, '2023_03_22_152956_create_products_table', 13),
(66, '2023_08_07_094208_create_realisasis_table', 14),
(67, '2023_08_13_174954_create_bujets_table', 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_products`
--

CREATE TABLE `m_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_indo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kadar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kimia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pt` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `m_products`
--

INSERT INTO `m_products` (`id`, `nama_indo`, `kadar`, `nama_kimia`, `id_pt`, `id_user`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Asam Sulfat', '98%', 'H2SO4', 1, 1, 'active', '2023-06-26 04:07:42', '2023-06-26 04:07:42'),
(2, 'Asam Klorida', '32%', 'HCl', 1, 1, 'active', '2023-06-26 04:08:16', '2023-06-26 04:08:16'),
(3, 'Soda Kaustik Cair', '32%', 'NaOH', 1, 1, 'active', '2023-06-26 04:09:03', '2023-06-26 04:09:03'),
(4, 'Soda Kaustik Cair', '48%', 'NaOH', 1, 1, 'active', '2023-06-26 04:09:27', '2023-06-26 04:09:27'),
(5, 'Sodium Hipoklorit', '12%', 'NaOCl', 1, 1, 'active', '2023-06-26 04:09:43', '2023-06-26 04:09:43'),
(6, 'Amonium Hidroksida', '99%', 'NH4OH', 1, 1, 'active', '2023-06-26 04:09:59', '2023-06-26 04:09:59'),
(7, 'Amonium Hidroksida', '25%', 'NH4OH', 1, 1, 'active', '2023-06-26 04:10:23', '2023-06-26 04:10:23'),
(8, 'Etanol', '99%', 'C2H5OH', 1, 1, 'active', '2023-06-26 04:17:04', '2023-06-26 04:17:04'),
(9, 'Etanol', '96%', 'C2H5OH', 1, 1, 'active', '2023-06-26 04:17:26', '2023-06-26 04:17:26'),
(10, 'Metanol', '99,85%', 'CH3OH', 1, 1, 'active', '2023-06-26 04:17:45', '2023-06-26 04:17:45'),
(11, 'Poli Aluminium Klorida Cair', '32%', 'Al2O3', 1, 1, 'active', '2023-06-26 04:18:07', '2023-06-26 04:18:07'),
(12, 'Asam Nitrat', '48%', 'HNO3', 1, 1, 'active', '2023-06-26 04:18:52', '2023-06-26 04:18:52'),
(13, 'Asam Fosfat', '85%', 'H3PO4', 1, 1, 'active', '2023-06-26 04:19:35', '2023-06-26 04:19:35'),
(14, 'Hidrogen Peroksida', '50%', 'H2O2', 1, 1, 'active', '2023-06-26 04:19:52', '2023-06-26 04:19:52'),
(15, 'Tembaga Sulfat Pentahidrat', '19%', 'CuSO4.5H2O', 1, 1, 'active', '2023-06-26 04:21:02', '2023-06-26 04:21:02'),
(16, 'Tembaga Sulfat Pentahidrat', '24%', 'CuSO4.5H2O', 1, 1, 'active', '2023-06-26 04:21:30', '2023-06-26 04:21:30'),
(17, 'Poli Aluminium Klorida Bubuk', '30%', 'Al2O3', 1, 1, 'active', '2023-06-26 04:21:48', '2023-06-26 04:21:48'),
(18, 'Soda Kaustik Bongkah', '98%', 'NaoH', 1, 1, 'active', '2023-06-26 04:22:21', '2023-06-26 04:22:21'),
(19, 'Urea', 'N 46%', 'CO (NH2)2', 1, 1, 'active', '2023-06-26 04:28:56', '2023-06-26 04:28:56'),
(20, 'Amonium Sulfat / ZA', 'N 21% S 24%', '(NH4)2SO4', 1, 1, 'active', '2023-06-26 04:30:02', '2023-06-26 04:30:02'),
(21, 'Kalium Klorida', 'K2O 60%', 'KCl', 1, 1, 'active', '2023-06-26 04:34:25', '2023-06-26 04:34:25'),
(22, 'Super Fosfat', 'P2O5 36%', 'SP', 1, 1, 'active', '2023-06-26 04:34:57', '2023-06-26 04:34:57'),
(23, 'Super Fosfat', 'P2O5 26%', 'SP', 1, 1, 'active', '2023-06-26 04:36:06', '2023-06-26 04:36:06'),
(24, 'NPK', '12:12:17', '-', 1, 1, 'active', '2023-06-26 04:36:21', '2023-06-26 04:36:21'),
(25, 'NPK', '15:15:15', '-', 1, 1, 'active', '2023-06-26 04:36:37', '2023-06-26 04:36:37'),
(26, 'NPK', '15.15.15 Plus', '-', 1, 1, 'active', '2023-06-26 04:36:57', '2023-06-26 04:36:57'),
(27, 'NPK', '16:16:16', '-', 1, 1, 'active', '2023-06-26 04:55:20', '2023-06-26 04:55:20'),
(28, 'NPK', '12:11:20', '-', 1, 1, 'active', '2023-06-26 04:55:35', '2023-06-26 04:55:35'),
(29, 'NPK', '15.15.6.4', '-', 1, 1, 'active', '2023-06-26 04:55:51', '2023-06-26 04:55:51'),
(30, 'NPK', '13.6.27.4', '-', 1, 1, 'active', '2023-06-26 04:56:07', '2023-06-26 04:56:07'),
(31, 'NPK', '20:10:10', '-', 1, 1, 'active', '2023-06-26 04:56:31', '2023-06-26 04:56:31'),
(32, 'NPK', '12.12.17.2', '-', 1, 1, 'active', '2023-06-26 04:56:49', '2023-06-26 04:56:49'),
(33, 'NPS', '20:20:13', '-', 1, 1, 'active', '2023-06-26 04:57:19', '2023-06-26 04:57:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('aminrizky94@gmail.com', '$2y$10$E5Ks/AWtopYGhi.UnckYLOzrp0Z3hvelopD6Jq54tObd0m3LRGb6.', '2023-03-24 04:18:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_mproduct` bigint(20) UNSIGNED NOT NULL,
  `id_category` bigint(20) UNSIGNED NOT NULL,
  `id_customer` bigint(20) UNSIGNED NOT NULL,
  `id_pt` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `user_approved` bigint(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `nomor`, `id_mproduct`, `id_category`, `id_customer`, `id_pt`, `id_user`, `user_approved`, `price`, `qty`, `photo`, `status`, `description`, `created_at`, `updated_at`) VALUES
(3, 'PB/3082023/10000001', 1, 27, 2, 1, 1, 0, '10000', '10000', 'public/2y9JVaXBOIM5HVJgnZXjT7pjXE0pAbvnbS5PXvQ2.jpg', '2', 'cobaa', '2023-08-30 05:04:16', '2023-08-31 03:59:40'),
(4, 'PB/3182023/10000002', 3, 20, 3, 1, 1, 0, '1000000', '1000', 'public/CppkxTgZVlSEzM0eiqk4uUZasvrouVoeUUPLhqGD.jpg', '1', 'fklsfkslkfsd', '2023-08-31 02:47:41', '2023-08-31 04:00:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pts`
--

CREATE TABLE `pts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pts`
--

INSERT INTO `pts` (`id`, `nama_pt`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'PT SATONA', 'Alamat :Jl. Kendangsari II No.93, Kendangsari, Kec. Tenggilis Mejoyo, Kota SBY, Jawa Timur 60292\r\nTelepon: 0813-9394-8500\r\nProvinsi: Jawa Timur\r\nSurabaya', '2023-05-03 06:53:07', '2023-05-03 07:15:08'),
(2, 'PT RODAME INDONESIA', 'Alamat: W68G+3JV, Jl. Nusantara, Tingal, Kec. Garum, Kabupaten Blitar, Jawa Timur 66182\r\nNo telp : 0822-5725-2448\r\nBlitar', '2023-05-03 07:14:35', '2023-05-03 07:15:29'),
(3, 'PT ROASI SINERGI INDUSTRI', 'Alamat: JJV7+H77, Jalan raya PLN, Dusun Driyorejo, Sumput, Driyorejo, Gresik Regency, East Java 61177\r\nGresik', '2023-05-03 07:16:32', '2023-05-03 07:16:32'),
(4, 'PT ROTAMA DUTA NIAGA', 'Alamat : RAYA DRIYOREJO NO. 134\r\nGresik', '2023-05-03 07:19:46', '2023-05-03 07:19:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `realisasis`
--

CREATE TABLE `realisasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kertaskerja` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_pt` bigint(20) UNSIGNED NOT NULL,
  `idBarang` bigint(20) UNSIGNED NOT NULL,
  `idCustomer` bigint(20) UNSIGNED NOT NULL,
  `no_po` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `awal` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akhir` date DEFAULT NULL,
  `nomor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hargaBeli` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `persenmargin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marginb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kuantitasp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalmargin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskonpersen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskonbarang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskonmargin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hargakemasan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beratbersih` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarifbank` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlahhari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarifbunga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ppn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feeExternal1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feeExternal2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marginDiskon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hargaJualBarang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ongkosAngkut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ongkosAngkut1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biayaBongkar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biayaMuat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biayaKemasan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biayaHandling` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biayaAsuransi` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biayaCadangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harpokJasa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BiayaAdminJasa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BiayaAdminJasa1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hargaJualJasaTunai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bayarTunai1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bayarTunai2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uangMuka` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uangMuka1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sisaPembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sisaPembayaran1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terminSisa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hargaJualBarangPPN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hargaJualBarangPPN2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekom_hargas`
--

CREATE TABLE `rekom_hargas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idBarang` bigint(20) UNSIGNED NOT NULL,
  `idCustomer` bigint(20) UNSIGNED NOT NULL,
  `awal` date NOT NULL,
  `akhir` date NOT NULL,
  `nomor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hargaBeli` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marginStandart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kuatitasPenjualan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalMargin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskonPerkg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hargaKemasan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beratBersih` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarifBunga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hariTahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarifBungaHari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ppn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supliers`
--

CREATE TABLE `supliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supliers`
--

INSERT INTO `supliers` (`id`, `nama`, `alamat`, `email`, `phone`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'AAA, CV', 'Jl. Untung Suropati Gg. Kyai Sulaiman 53 Bojonegoro', NULL, NULL, 1, NULL, NULL),
(2, 'Agrofarm Nusa Raya, PT', 'Jl. KH Ahmad Dahlan No 53 Nologaten Kec. Ponorogo, Ponorogo', NULL, NULL, 1, NULL, NULL),
(3, 'Aneka Kimia Inti, PT', 'Graha SA 9th Floor, Jalan Raya Gubeng No.19 - 21,', NULL, '031-503-7767/Fax 031-503-2234', 1, NULL, NULL),
(4, 'Artha Christa, PT', 'Jl. Raya Kopo No.372, Kopo, Kec. Bojongloa Kaler,', NULL, ' (022) 6011972', 1, NULL, NULL),
(5, 'Berlian Biru, CV', 'Jl raya krian-prambon desa wonoplintahan kec, prambon kab. Sidoarjo jawa timur,', NULL, '081-331385000, 085852523111', 1, NULL, NULL),
(6, 'Bintang Cemerlang, PT', 'Jl. Rotan 1 Blok F27 No.20D Kawasan Delta Silicon 3 Lippo Cikarang,', NULL, '021-89913528/Fax 021-89913671', 1, NULL, NULL),
(7, 'Cakrawala Sakti, CV', 'Jl,Sawunggaling.Iii.No,86.Jemundo/Sidoarjo', NULL, NULL, 1, NULL, NULL),
(8, 'Gresik Cipta Sejahtera, PT', 'Jalan A.P Pettarani Kompleks ruko zamrud A18-19, Makassar,', NULL, '(0411) 4662438', 1, NULL, NULL),
(9, 'Insoclay Acidatama Indonesia, PT', 'CoHive Green Office Park 9, Jl. BSD Green Office Park Boulevard, Sampora, Kec. Cisauk, Tangerang, Banten,', NULL, '02150805941, 081213609885', 1, NULL, NULL),
(10, 'Julungwangi Tirta Wahana, PT', 'Jl. Raya Tenggilis No.92, Tenggilis Mejoyo, Kec. Tenggilis Mejoyo, Kota SBY,', NULL, '(031) 8496040 ext. 8492869', 1, NULL, NULL),
(11, 'Kartika Cemerlang Sejati, PT', 'Ruko Chofa, Jalan Raya Suko Manunggal Jaya 3U CSH22, Suko Manunggal, Sukomanunggal, Kec. Sukomanunggal, Kota SBY, Jawa Timur 60188,', NULL, '(031) 7393788', 1, NULL, NULL),
(12, 'Multidaya Putra Sejahtera, PT', 'Jl. Raya Bungah Km.35, Desa Gunung Sari Kec. Bungah Gresik', NULL, NULL, 1, NULL, NULL),
(13, 'Parna Raya , PT', 'Jl. HR Rasuna Said Kav 1, RT.1/RW.6 Guntur Setiabudi Jakarta Selatan,DKI Jakarta, Indonesia,', NULL, '021-8354086', 1, NULL, NULL),
(14, 'Perfect Resource Option, PT', 'Damean, Kepulungan, Kec. Gempol, Pasuruan, Jawa Timur 67155,', NULL, '(0343) 631880', 1, NULL, NULL),
(15, 'Petrokimia Gresik, PT', 'Jl. Jenderal Ahmad Yani - Gresik 61119,', NULL, '031-3981811, 3982100, 3982200', 1, NULL, NULL),
(16, 'Poly Artha Chemicals, PT', 'Jalan Raya Sedati No 37 Desa Wedi Gedangan, Sidoarjo 61254,', NULL, '(031) 8918000 8919000', 1, NULL, NULL),
(17, 'Rejeki Anugrah Prima, PT', 'JL. NGADI 23 KENJERAN SURABAYA,', NULL, '031-382850', 1, NULL, NULL),
(18, 'Roasi Sinergi Industri, PT', 'Jl. Raya PLN Kesamben Wetan, Desa/Kelurahan Sumput, Kec. Driyorejo, Kab. Gresik, Provinsi Jawa Timur, Gresik 61177', NULL, NULL, 1, NULL, NULL),
(19, 'Rodame Indonesia, PT', 'Jl Nusantara 1 ,Kecamatan Garum, Blitar', NULL, NULL, 1, NULL, NULL),
(20, 'Rotama Duta Niaga, PT', 'JL Raya Driyorejo No 134, Driyorejo, Gresik 61177', NULL, NULL, 1, NULL, NULL),
(21, 'Sabanusa Mitra Mandiri, PT', 'Jl. Multi Sarana Plaza B-30,', NULL, '0812-1213-4569', 1, NULL, NULL),
(22, 'Samator Intiperoksida, PT', 'JL. KIG Raya Utara, Blok K Kav. 12-20 RT 002/01, Kawisanyar, ', NULL, '031 3950911', 1, NULL, NULL),
(23, 'Sejahtera Jaya Lestari, CV', 'Perum, Graha Pesona A-1 No. 26, Sidoarjo', NULL, NULL, 1, NULL, NULL),
(24, 'Semesta Jaya Abadi, PT', 'Office88 Casablanca ,', NULL, '622129631621', 1, NULL, NULL),
(27, 'tes riasu', NULL, NULL, NULL, 1, '2023-05-10 06:58:18', '2023-05-10 06:58:18'),
(28, 'roasi tes', NULL, NULL, NULL, 1, '2023-05-10 07:24:31', '2023-05-10 07:24:31'),
(29, 'roasi coba', NULL, NULL, NULL, 1, '2023-05-10 07:32:47', '2023-05-10 07:32:47'),
(30, 'cobaa', NULL, NULL, NULL, 1, '2023-05-10 07:34:01', '2023-05-10 07:34:01'),
(32, 'roasi pemasok', 'Perumahan Pangeranan Asri b4. no.2', 'aminrizky94@gmail.com', '083119482925', 11, '2023-05-10 08:24:26', '2023-05-10 08:35:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idJabatan` bigint(20) UNSIGNED NOT NULL,
  `id_pt` int(11) DEFAULT NULL,
  `nohp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `akses`, `idJabatan`, `id_pt`, `nohp`, `email_verified_at`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'MUHAMMAD RIZKY AMIN', 'aminrizky94@gmail.com', 'superadmin', 10, 1, '083119482925', NULL, '$2y$10$c53L6kNG09J6IbGxlBAijuWd.4x.QKZAE7ZuOU7qlf1yiGieJtTVu', 'public/qbVpDvgxWjku7wtyUQN5zCxvp4A741xgbtCrSpfO.jpg', 'Fm53IAtfrXAK9vkaUZHkU0CX0rYvzxu3BEaxLC0Yq1qWq5aslWmYDCVdJ7ry', '2023-03-16 04:27:47', '2023-07-11 08:49:07'),
(2, 'Wawan Prabowo', 'wawan.prabowo@satona.co.id', 'superadmin', 6, 1, '+62 838-4976-4946', NULL, '$2y$10$1MYBRb7qJycgG5ACr44N2.rZbhunKIVJVT7.sPu1CafvI3aCTYYMO', 'public/pZ6R8Yr1nCOrKhcN1KUTZvsPYKaoUvuWEobwxXE8.jpg', 'Mx6RGxQXj03ydEkTXG4tKOsklTSFmFoI1DQns9KSuqYC3q8qdx8AJe3Bn6xF', '2023-03-16 04:41:11', '2023-07-17 15:03:21'),
(3, 'Rissa Dwi Kurnia', 'rissa.kurnia@satona.co.id', 'admin', 7, 1, '0821-4054-7833', NULL, '$2y$10$n0DZ9oAgF9Gp6QTu61sLZufcR/g.vIEqUG24jFAMWTgs/NOKe70M.', NULL, NULL, '2023-04-04 03:51:12', '2023-07-14 02:39:28'),
(4, 'Likayati A. J.', 'likayati.jariyah@satona.co.id', 'user', 3, 1, '+62 895-6196-24833', NULL, '$2y$10$D9kdlP6WtJQ4SfHDF.ZPFu7K6b.D/aBKMFEazhnKkAODCyYePuDPW', NULL, 'gYAxEdq2o7DlsYinZ7iAaZDPiiPyy88cPt2UzJfa4TJKOzgU5nQRv8V1LdCc', '2023-04-04 03:57:07', '2023-07-14 02:59:19'),
(5, 'Vivi Nur Alifah', 'vivi.alifah@satona.co.id', 'superadmin', 16, 1, '+62 851-5686-2656', NULL, '$2y$10$ldsflT1p3IG.1TE6WQnct.ei9AOUviIvOl8TBNjm0I9t7YIb6kcaO', 'public/IkiHLXRffUFvZkvKZoZ9VdrTCGBhxxxg0nWED01V.jpg', 'BiNLXF6wPNZwP99EE6vTcDA1X3jPgWjLMh2Zg9YXUaCIUip5SPjdpQTg11Or', '2023-04-04 03:59:57', '2023-07-13 04:41:48'),
(6, 'Yamaica Yudha Tamara', 'yamaica.tamara@satona.co.id', 'user', 4, 1, '+62 856-5522-7844', NULL, '$2y$10$lrYWCAOGU3cXlcVxXvCro.x6PH3xXOnSfvAeR7mBbK9vdcXvMVjRC', 'public/0Xbg4BmX8zyELybHrIchQqLkw0Z5cCVRFlLfcm5O.jpg', 'uDBZd9jv0PP5Cvr5sMXY8P1SjjfJb01epQlHUsTj2rljP1QrXIa4KsJsNYit', '2023-04-04 04:01:14', '2023-07-13 04:42:03'),
(7, 'Jeremia M.  Simanjuntak', 'jeremia.ms@satona.co.id', 'user', 12, 1, '+62 818-304-979', NULL, '$2y$10$xpU.tzEODDrRZ0OcsQiple/Hwvy67Alygh2ytoJBsaGqOTCw6Rar2', NULL, 'NCXK4iCzJNnRtmPbcitNUlsz81lIokoEfg2jEnwhdQdVyrA3OpRoBQOEIRPp', '2023-05-02 05:19:48', '2023-07-13 08:54:05'),
(8, 'Hot Rudolf Marihot', 'hot.marihot@satona.co.id', 'user', 8, 1, '+62 811-382-363', NULL, '$2y$10$bxzBr5LWtvqqIDenzn52kOp7WeOLV/cdq3u2j1lN5AWk8ixVN4oGa', 'public/PhB1yslpY87llt2KFpLmIkbH8lKSXYQaGzih9JQ5.jpg', NULL, '2023-05-02 05:22:09', '2023-07-13 08:56:35'),
(9, 'Antoni Silalahi', 'antoni.silalahi@satona.co.id', 'superadmin', 14, 3, '+62 878-5376-3550', NULL, '$2y$10$j862/HDHPKw39EaXfJiWQOt9OcIcfTiBBh9UwRoi9bCE9v.lvSQly', NULL, NULL, '2023-05-03 07:54:41', '2023-07-13 15:45:02'),
(15, 'wiring arum zitauly', 'wiring.zitauly@satona.co.id', 'superadmin', 2, 1, '+62 838-5678-0078', NULL, '$2y$10$tiWUpD5K2PloZ/0p8QmBQOWWCmZllYp9X0neh0R7ko235s1DG4CN.', 'public/USsHDP0JaKnEslF1ADakyrvPmSbCLd4JFAhgUW0r.png', NULL, '2023-07-14 02:55:46', '2023-07-14 02:55:46'),
(16, 'nicholas surya', 'nicholas.surya@satona.co.id', 'user', 16, 1, '1234', NULL, '$2y$10$lHK67xZmmuYHI9loD8qZIezIrOCC9bgo0WlsgLZyJxB/dhe.56ZZ6', 'public/c6aJGwXtRTdk1CqDQIpXddx4NSwKljNir7cYORdn.png', NULL, '2023-07-14 03:02:20', '2023-07-14 03:02:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bujets`
--
ALTER TABLE `bujets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category_products`
--
ALTER TABLE `category_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `file_regristasis`
--
ALTER TABLE `file_regristasis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gudangs`
--
ALTER TABLE `gudangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kertas_kerjas`
--
ALTER TABLE `kertas_kerjas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kunjungan_rekanans`
--
ALTER TABLE `kunjungan_rekanans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_products`
--
ALTER TABLE `m_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pts`
--
ALTER TABLE `pts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `realisasis`
--
ALTER TABLE `realisasis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rekom_hargas`
--
ALTER TABLE `rekom_hargas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bujets`
--
ALTER TABLE `bujets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `category_products`
--
ALTER TABLE `category_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `file_regristasis`
--
ALTER TABLE `file_regristasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `gudangs`
--
ALTER TABLE `gudangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `kertas_kerjas`
--
ALTER TABLE `kertas_kerjas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kunjungan_rekanans`
--
ALTER TABLE `kunjungan_rekanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `m_products`
--
ALTER TABLE `m_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pts`
--
ALTER TABLE `pts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `realisasis`
--
ALTER TABLE `realisasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rekom_hargas`
--
ALTER TABLE `rekom_hargas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `supliers`
--
ALTER TABLE `supliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
