-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2023 at 12:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `desc`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'AKREDITASI', 'SDN 3 AKREDITASI A', '1689331961_22.png', '0', '2023-07-14 02:47:35', '2023-07-14 03:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sandi_bank` varchar(20) NOT NULL,
  `nama_bank` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `sandi_bank`, `nama_bank`) VALUES
(1, '002', 'Bank BRI'),
(2, '008', 'Bank Mandiri'),
(3, '009', 'Bank BNI'),
(4, '427', 'Bank Syariah Indonesia (Eks. BNI Syariah)'),
(5, '451', 'Bank Syariah Indonesia (Eks. Bank Syariah Mandiri, BSM)'),
(6, '422', 'Bank Syariah Indonesia (Eks. BRI Syariah)'),
(7, '200', 'Bank BTN'),
(8, '022', 'Bank CIMB'),
(9, '022', 'Bank CIMB Niaga Syariah'),
(10, '147', 'Bank Muamalat'),
(11, '213', 'Bank BTPN'),
(12, '547', 'Bank BTPN Syariah'),
(13, '213', 'Bank Jenius'),
(14, '013', 'Bank Permata'),
(15, '013', 'Bank Permata Syariah'),
(16, '046', 'Bank DBS Indonesia'),
(17, '046', 'Digibank'),
(18, '011', 'BANK DANAMON'),
(19, '016', 'BANK MAYBANK (BII)'),
(20, '426', 'BANK MEGA'),
(21, '153', 'BANK SINARMAS'),
(22, '950', 'BANK COMMONWEALTH'),
(23, '028', 'BANK OCBC NISP'),
(24, '441', 'BANK BUKOPIN'),
(25, '521', 'BANK BUKOPIN SYARIAH'),
(26, '536', 'BANK BCA SYARIAH'),
(27, '026', 'BANK LIPPO'),
(28, '031', 'CITIBANK'),
(29, '789', 'INDOSAT DOMPETKU'),
(30, '911', 'LINKAJA'),
(31, '023', 'Bank UOB Indonesia'),
(32, '023', 'TMRW by UOB Indonesia'),
(33, '542', 'Bank Jago (Bank Artos Indonesia)'),
(34, '490', 'Bank NEO Commerce (Akulaku)'),
(35, '110', 'BANK JABAR BJB (JAWA BARAT)'),
(36, '425', 'BANK JABAR BJB SYARIAH (JAWA BARAT)'),
(37, '111', 'BANK DKI JAKARTA'),
(38, '112', 'BPD DIY (YOGYAKARTA)'),
(39, '113', 'BANK JATENG (JAWA TENGAH)'),
(40, '114', 'BANK JATIM (JAWA TIMUR)'),
(41, '115', 'BANK JAMBI'),
(42, '116', 'BANK ACEH'),
(43, '116', 'BANK ACEH SYARIAH'),
(44, '117', 'BANK SUMUT'),
(45, '118', 'BANK NAGARI (BANK SUMBAR)'),
(46, '119', 'BANK RIAU KEPRI'),
(47, '120', 'BANK SUMSEL BABEL (SUMATERA SELATAN BANGKA BELITUNG)'),
(48, '121', 'BANK LAMPUNG'),
(49, '122', 'BANK KALSEL (BANK KALIMANTAN SELATAN)'),
(50, '123', 'BANK KALBAR (BANK KALIMANTAN BARAT)'),
(51, '124', 'BANK KALTIMTARA (BANK KALIMANTAN TIMUR DAN UTARA)'),
(52, '125', 'BANK KALTENG (BANK KALIMANTAN TENGAH)'),
(53, '126', 'BANK SULSELBAR (BANK SULAWESI SELATAN DAN BARAT)'),
(54, '127', 'BANK SULUTGO (BANK SULAWESI UTARA DAN GORONTALO)'),
(55, '128', 'BANK NTB'),
(56, '128', 'BANK NTB SYARIAH'),
(57, '129', 'BANK BPD BALI'),
(58, '130', 'BANK NTT'),
(59, '131', 'BANK MALUKU MALUT'),
(60, '132', 'BANK PAPUA'),
(61, '133', 'BANK BENGKULU'),
(62, '134', 'BANK SULTENG (BANK SULAWESI TENGAH)'),
(63, '135', 'BANK SULTRA (BANK SULAWESI TENGGARA)'),
(64, '137', 'BANK BANTEN'),
(65, '003', 'BANK EKSPOR INDONESIA'),
(66, '019', 'BANK PANIN'),
(67, '517', 'BANK PANIN DUBAI SYARIAH'),
(68, '020', 'BANK ARTA NIAGA KENCANA'),
(69, '030', 'AMERICAN EXPRESS BANK LTD'),
(70, '031', 'CITIBANK'),
(71, '032', 'JP. MORGAN CHASE BANK, N.A.'),
(72, '033', 'BANK OF AMERICA, N.A'),
(73, '034', 'ING INDONESIA BANK'),
(74, '036', 'BANK CCB INDONESIA'),
(75, '037', 'BANK ARTHA GRAHA INTERNASIONAL'),
(76, '039', 'BANK CREDIT AGRICOLE INDOSUEZ'),
(77, '040', 'THE BANGKOK BANK COMP. LTD'),
(78, '042', 'MUFG BANK'),
(79, '045', 'BANK SUMITOMO MITSUI INDONESIA'),
(80, '047', 'BANK RESONA PERDANIA'),
(81, '048', 'BANK MIZUHO INDONESIA'),
(82, '050', 'STANDARD CHARTERED BANK'),
(83, '052', 'BANK ABN AMRO'),
(84, '053', 'BANK KEPPEL TATLEE BUANA'),
(85, '054', 'BANK CAPITAL INDONESIA'),
(86, '057', 'BANK BNP PARIBAS INDONESIA'),
(87, '059', 'KOREA EXCHANGE BANK DANAMON'),
(88, '060', 'RABOBANK INTERNASIONAL INDONESIA'),
(89, '061', 'BANK ANZ INDONESIA'),
(90, '069', 'BANK OF CHINA'),
(91, '076', 'BANK BUMI ARTA'),
(92, '087', 'BANK HSBC INDONESIA'),
(93, '087', 'BANK EKONOMI (Lebur dengan Bank HSBC)'),
(94, '088', 'BANK ANTARDAERAH'),
(95, '089', 'BANK HAGA'),
(96, '093', 'BANK IFI'),
(97, '095', 'BANK J TRUST INDONESIA'),
(98, '097', 'BANK MAYAPADA'),
(99, '145', 'BANK NUSANTARA PARAHYANGAN'),
(100, '146', 'BANK SWADESI (BANK OF INDIA INDONESIA)'),
(101, '151', 'BANK MESTIKA'),
(102, '152', 'BANK SHINHAN INDONESIA (BANK METRO EXPRESS)'),
(103, '157', 'BANK MASPION INDONESIA'),
(104, '159', 'BANK HAGAKITA'),
(105, '161', 'BANK GANESHA'),
(106, '162', 'BANK WINDU KENTJANA'),
(107, '164', 'BANK ICBC INDONESIA (HALIM INDONESIA BANK)'),
(108, '166', 'BANK HARMONI INTERNATIONAL'),
(109, '167', 'BANK QNB INDONESIA'),
(110, '212', 'BANK WOORI SAUDARA'),
(111, '405', 'BANK VICTORIA SYARIAH'),
(112, '459', 'BANK BISNIS INTERNASIONAL'),
(113, '466', 'BANK SRI PARTHA'),
(114, '472', 'BANK JASA JAKARTA'),
(115, '484', 'BANK HANA (KEB HANA BANK)'),
(116, '485', 'BANK MNC'),
(117, '490', 'BANK YUDHA BHAKTI'),
(118, '491', 'BANK MITRANIAGA'),
(119, '494', 'BANK BRI AGRO'),
(120, '498', 'BANK SBI INDONESIA (BANK INDOMONEX)'),
(121, '501', 'BANK DIGITAL BCA (BCA DIGITAL)'),
(122, '503', 'BANK NATIONAL NOBU (BANK ALFINDO)'),
(123, '506', 'BANK MEGA SYARIAH'),
(124, '513', 'BANK INA PERDANA'),
(125, '517', 'BANK PANIN DUBAI SYARIAH'),
(126, '520', 'PRIMA MASTER BANK'),
(127, '521', 'BANK PERSYARIKATAN INDONESIA'),
(128, '525', 'BANK AKITA'),
(129, '526', 'BANK DINAR INDONESIA'),
(130, '531', 'ANGLOMAS INTERNASIONAL BANK'),
(131, '523', 'BANK SAHABAT SAMPEORNA (BANK DIPO INTERNATIONAL)'),
(132, '535', 'BANK KESEJAHTERAAN EKONOMI'),
(133, '548', 'BANK MULTIARTA SENTOSA'),
(134, '553', 'BANK MAYORA INDONESIA'),
(135, '555', 'BANK INDEX SELINDO'),
(136, '558', 'BANK EKSEKUTIF'),
(137, '559', 'CENTRATAMA NASIONAL BANK'),
(138, '562', 'BANK FAMA INTERNASIONAL'),
(139, '564', 'BANK MANDIRI TASPEN POS (BANK SINAR HARAPAN BALI)'),
(140, '566', 'BANK VICTORIA INTERNATIONAL'),
(141, '567', 'BANK HARDA INTERNASIONAL'),
(142, '945', 'IBK BANK INDONESIA'),
(143, '946', 'BANK MERINCORP'),
(144, '947', 'BANK MAYBANK INDOCORP'),
(145, '949', 'BANK CTBC INDONESIA (CHINA TRUST)'),
(146, '688', 'BPR KS (KARYAJATNIKA SEDAYA)');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `account_number` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `title`, `slug`, `content`, `kategori_id`, `thumbnail`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'VAKSINASI', 'vaksinasi', 'Imunisasi dasar adalah salah satu upaya untuk membentuk kekebalan tubuh anak, sehingga mencegah penularaan penyakit berbahaya, wabah, serta membantu anak tidak mudah sakit. Imunisasi dasar lengkap terdiri dari beberapa jenis vaksin, mulai dari polio, BCG, DPT, dan lainnya.\r\n\r\n \r\n\r\nImunisasi tersebut pun harus diberikan sesuai dengan jadwal yang telah ditentukan oleh Kemenkes dan IDAI. Agar tidak terlewat, mari simak penjelasan selengkapnya berikut ini.\r\n\r\n \r\n\r\nApa itu Imunisasi Dasar?\r\n \r\n\r\nImunisasi adalah proses pembentukan kekebalan tubuh terhadap suatu penyakit. Proses ini dilakukan melalui pemberian vaksin, baik berupa suntikan ataupun minum. Sebetulnya, imunisasi bisa diberikan di segala usia. Namun, terdapat sejumlah imunisasi dasar yang perlu diberikan sejak bayi baru baru lahir.\r\n\r\n \r\n\r\nTujuan imunisasi dasar adalah mencegah terjadinya penyakit, kecacatan, atau kematian. Dengan begitu, anak tidak rentan terkena berbagai penyakit selama pertumbuhannya.\r\n\r\n \r\n\r\nTujuan Imunisasi Dasar\r\n \r\n\r\nTujuan imunisasi dasar anak adalah untuk melindungi anak dari berbagai penyakit berbahaya yang dapat menyebabkan kecacatan atau kematian. Imunisasi juga menjadi salah satu upaya untuk membentuk herd immunity (kekebalan kelompok).\r\n\r\n \r\n\r\nHerd immunity penting untuk dicapai guna mencegah penyebaran penyakit berbahaya pada orang yang tidak bisa mendapatkan imunisasi, misalnya karena kondisi kesehatan tertentu. Jadi, semakin banyak orang yang mendapatkan vaksin, maka semakin sedikit orang yang terinfeksi penyakit.\r\n\r\n \r\n\r\nJadwal Imunisasi Dasar Lengkap\r\n \r\n\r\nBerikut adalah urutan imunisasi dasar lengkap dari Kemenkes dan IDAI yang dapat diikuti oleh masyarakat Indonesia.\r\n\r\n \r\n\r\n1. Usia 0–6 Bulan\r\n \r\n\r\nJadwal imunisasi dasar lengkap pada anak usia 0–6 bulan adalah sebagai berikut:\r\n\r\n \r\n\r\nHepatitis B: Diberikan empat kali, yaitu 24 jam setelah bayi lahir, kemudian di usia 2, 3, dan 4 bulan. Vaksin booster akan diberikan ketika bayi berusia 18 bulan.\r\nDPT: Diberikan sebanyak tiga kali, yaitu di usia 2, 3, dan 4 bulan. Vaksin booster akan diberikan dua kali pada usia 18 bulan dan 5–7 tahun.\r\nBCG: Hanya diberikan satu kali pada usia 0–1 bulan.\r\nHiB: Diberikan sebanyak tiga kali pada usia 2, 3, dan 4 bulan. Vaksin booster akan diberikan satu kali saat usia 18 bulan.\r\nPolio: Vaksin polio oral diberikan ketika bayi lahir sampai berusia 1 bulan. Sementara itu, vaksin polio suntik setidaknya perlu diberikan 2 kali sebelum anak berusia 1 tahun. Kemudian, pemberian vaksin polio oral maupun suntikan juga akan dilakukan secara berulang setiap bulan, yaitu usia 2, 3, dan 4 bulan. \r\nPCV (pneumokokus): Pemberian vaksin PCV dilakukan sebanyak tiga kali pada usia 2, 4, dan 6 bulan. Vaksin booster akan diberikan saat usia 12–15 bulan.\r\nRotavirus: Rotavirus jenis monovalen akan diberikan sebanyak dua kali. Dosis pertama pada usia 6 minggu dan dosis kedua diberikan 4 minggu setelahnya, atau maksimal usia bayi 24 minggu. Sementara itu, Rotavirus jenis pentavalen akan diberikan sebanyak tiga kali, yaitu pada usia 6–12 minggu, kemudian dosis kedua dan ketiganya diberikan 4–10 minggu setelahnya. Imunisasi ini harus selesai saat anak berusia 32 minggu.', 3, '1689328691_1.jpg', '0', 1, '2023-07-14 02:58:11', '2023-07-14 02:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `berkas_murids`
--

CREATE TABLE `berkas_murids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `kartu_keluarga` varchar(255) DEFAULT NULL,
  `akte_kelahiran` varchar(255) DEFAULT NULL,
  `surat_kelakuan_baik` varchar(255) DEFAULT NULL,
  `surat_sehat` varchar(255) DEFAULT NULL,
  `surat_tidak_buta_warna` varchar(255) DEFAULT NULL,
  `rapor` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `ijazah` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berkas_murids`
--

INSERT INTO `berkas_murids` (`id`, `user_id`, `kartu_keluarga`, `akte_kelahiran`, `surat_kelakuan_baik`, `surat_sehat`, `surat_tidak_buta_warna`, `rapor`, `foto`, `ijazah`, `created_at`, `updated_at`) VALUES
(1, 12, '1689384575_avatar-01.jpg', '1689384575_avatar-01.jpg', '1689384575_avatar-01.jpg', '1689384575_avatar-02.jpg', '1689384575_avatar-01.jpg', '1689384575_42.pdf', '1689384575_image.jpg', NULL, '2023-07-14 18:24:40', '2023-07-14 18:29:35'),
(2, 13, '1689386069_1.jpg', '1689386069_1.jpg', '1689386069_1.jpeg', '1689386069_anak-sd-5bd9a52143322f599f0eeb13.jpg', '1689386069_1.jpg', '1689386069_f2399a3c-e44e-4e2a-82d0-520696ffad1b.png', '1689386069_anak-sd-5bd9a52143322f599f0eeb13.jpg', '1689386069_1.jpg', '2023-07-14 18:50:07', '2023-07-14 18:54:29'),
(3, 14, '1689388184_1.jpeg', '1689388184_1.jpeg', '1689388184_f2399a3c-e44e-4e2a-82d0-520696ffad1b.png', '1689388184_22.png', '1689388184_1.jpg', '1689388184_anak-sd-5bd9a52143322f599f0eeb13.jpg', '1689388184_22.png', '1689388184_footer.jpg', '2023-07-14 19:29:16', '2023-07-14 19:29:44'),
(4, 15, '1689458244_1.jpg', '1689458244_1.jpg', '1689458244_Add a heading.png', '1689458244_Add a heading.png', '1689458244_Add a heading.png', '1689458244_1.jpg', '1689458244_1.jpg', '1689458244_1.jpg', '2023-07-15 14:56:37', '2023-07-15 14:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `publisher_id` bigint(20) UNSIGNED NOT NULL,
  `publication_year` year(4) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `borrowings`
--

CREATE TABLE `borrowings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `borrow_code` varchar(255) NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date NOT NULL,
  `lateness` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_jurusans`
--

CREATE TABLE `data_jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jurusan_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_murids`
--

CREATE TABLE `data_murids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `nis` bigint(20) DEFAULT NULL,
  `nisn` bigint(20) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` enum('Islam','Kristen Katolik','Kristen Protestan','Hindu','Budha','Konghucu') DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `asal_sekolah` varchar(255) DEFAULT NULL,
  `proses` enum('Pendaftaran','Berkas','Murid','Ditolak') NOT NULL DEFAULT 'Pendaftaran',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_murids`
--

INSERT INTO `data_murids` (`id`, `user_id`, `nis`, `nisn`, `tempat_lahir`, `tgl_lahir`, `agama`, `telp`, `whatsapp`, `alamat`, `asal_sekolah`, `proses`, `created_at`, `updated_at`) VALUES
(2, 12, 1545454, 54545454, 'Bandung', '2017-08-10', 'Islam', '0857216332', '085795038048', 'Jl. Kebon Jayanti', 'tk1', 'Ditolak', '2023-07-14 18:22:26', '2023-07-14 18:30:37'),
(3, 13, 98556565, 646363, 'CiAMIS', '2023-07-13', 'Islam', '0587878', '024578787', 'VB', '1', 'Ditolak', '2023-07-14 18:40:45', '2023-07-14 18:56:54'),
(4, 14, 22222211, 222222211, 'Ciamis', '2020-07-02', 'Islam', '054548787', '054548787', 'bdg', NULL, 'Murid', '2023-07-14 19:13:52', '2023-07-14 19:48:24'),
(5, 15, 44444444, 11111111, 'Batak', '2023-07-16', 'Islam', '085454545', '085454545', 'Bandung', NULL, 'Murid', '2023-07-15 14:53:00', '2023-07-15 15:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `data_orang_tuas`
--

CREATE TABLE `data_orang_tuas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `pendidikan_ayah` enum('SD','SMP','SMA/SMK','S1','S2','S3') DEFAULT NULL,
  `telp_ayah` varchar(255) DEFAULT NULL,
  `pekerjaan_ayah` enum('Wiraswasta','Wirausaha','ASN','Buruh') DEFAULT NULL,
  `alamat_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `pendidikan_ibu` enum('SD','SMP','SMA/SMK','S1','S2','S3') DEFAULT NULL,
  `telp_ibu` varchar(255) DEFAULT NULL,
  `pekerjaan_ibu` enum('Ibu Rumah Tangga','Wiraswasta','Wirausaha','ASN','Buruh') DEFAULT NULL,
  `alamat_ibu` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_orang_tuas`
--

INSERT INTO `data_orang_tuas` (`id`, `user_id`, `nama_ayah`, `pendidikan_ayah`, `telp_ayah`, `pekerjaan_ayah`, `alamat_ayah`, `nama_ibu`, `pendidikan_ibu`, `telp_ibu`, `pekerjaan_ibu`, `alamat_ibu`, `created_at`, `updated_at`) VALUES
(1, 12, 'Uen', 'SD', '08554454', 'Wiraswasta', 'Uen', 'Yati', 'SD', '0857265665', 'Ibu Rumah Tangga', 'Yati', '2023-07-14 18:24:04', '2023-07-14 18:24:40'),
(2, 13, 'UEN', 'SMA/SMK', '054545', 'Wiraswasta', 'UEN', 'SS', 'SD', '055', 'Ibu Rumah Tangga', 'SS', '2023-07-14 18:49:42', '2023-07-14 18:50:07'),
(3, 14, 'UEN', 'SMP', '054548787', 'Wiraswasta', 'UEN', 'YATI', 'SMP', '054548787', 'Ibu Rumah Tangga', 'YATI', '2023-07-14 19:28:51', '2023-07-14 19:29:16'),
(4, 15, 'Uen', 'SMP', '21212', 'Wiraswasta', 'Uen', 'y', 'SD', '2021212', 'Wiraswasta', 'y', '2023-07-15 14:53:45', '2023-07-15 14:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `detail_payment_spps`
--

CREATE TABLE `detail_payment_spps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `bank_sender` varchar(255) DEFAULT NULL,
  `destination_bank` varchar(255) DEFAULT NULL,
  `month` varchar(255) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `status` enum('paid','unpaid') NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `date_file` date DEFAULT NULL,
  `approve_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approve_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_payment_spps`
--

INSERT INTO `detail_payment_spps` (`id`, `payment_id`, `user_id`, `sender`, `bank_sender`, `destination_bank`, `month`, `amount`, `status`, `file`, `date_file`, `approve_by`, `approve_date`, `created_at`, `updated_at`) VALUES
(1, 1, 12, NULL, NULL, NULL, 'July', 3001286, 'unpaid', NULL, NULL, NULL, NULL, '2023-07-14 18:30:37', '2023-07-14 18:30:37'),
(2, 2, 13, NULL, NULL, NULL, 'July', 3001324, 'unpaid', NULL, NULL, NULL, NULL, '2023-07-14 18:56:54', '2023-07-14 18:56:54'),
(3, 3, 14, NULL, NULL, NULL, 'July', 3001475, 'unpaid', NULL, NULL, NULL, NULL, '2023-07-14 19:33:46', '2023-07-14 19:33:46'),
(4, 4, 14, NULL, NULL, NULL, 'July', 3001485, 'unpaid', NULL, NULL, NULL, NULL, '2023-07-14 19:35:01', '2023-07-14 19:35:01'),
(5, 5, 14, NULL, NULL, NULL, 'July', 3001434, 'unpaid', NULL, NULL, NULL, NULL, '2023-07-14 19:48:24', '2023-07-14 19:48:24'),
(6, 6, 15, NULL, NULL, NULL, 'July', 3001564, 'unpaid', NULL, NULL, NULL, NULL, '2023-07-15 15:05:46', '2023-07-15 15:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `acara` datetime NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `desc`, `slug`, `content`, `thumbnail`, `acara`, `lokasi`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'LOMBA FUTSAL TINGKAT SD SE KOTA TASIKMASLAYA', 'EVENT INI TERBATAS UNTUK TINGKAT SD', 'lomba-futsal-tingkat-sd-se-kota-tasikmaslaya', 'FUTSAL TINGKAT SD', '1689328973_1.jpg', '2023-07-17 17:02:00', 'GOR PEMUDA PANCASILA', '0', '2023-07-14 03:00:10', '2023-07-14 03:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `facebook`, `instagram`, `twitter`, `youtube`, `logo`, `telp`, `whatsapp`, `email`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'sdn3sukajadi', 'sdn3sukajadi', 'sdn3sukajadi', 'sdn3sukajadi', '1689331793_mi.png', '86756565656', '08577676767', 'sdn3sukjadi@gmail.com', 'sekolah sdn 3 sukajadi', '2023-07-14 03:24:32', '2023-07-14 03:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `image_sliders`
--

CREATE TABLE `image_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `urutan` int(11) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_sliders`
--

INSERT INTO `image_sliders` (`id`, `image`, `title`, `desc`, `urutan`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1689327563_1.jpg', 'SDN 3SUKAJADI TASIKMALAYA', 'SEKOLAH BERKARAKTER DAN BERMARTABAT', 0, '0', '2023-07-14 02:33:05', '2023-07-14 02:40:52'),
(2, '1689327612_image.jpg', 'SDN 3 SUKAJADI TASIKMALAYA', 'SEKOLAH CERDAS DAN BERMARTABAT', 1, '0', '2023-07-14 02:40:12', '2023-07-14 02:40:12'),
(3, '1689327716_anak-sd-5bd9a52143322f599f0eeb13.jpg', 'SDN 3SUKAJADI TASIKMALAYA', 'SEKOLAH CERDAS', 2, '0', '2023-07-14 02:41:56', '2023-07-14 02:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `jurusans`
--

CREATE TABLE `jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_beritas`
--

CREATE TABLE `kategori_beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_beritas`
--

INSERT INTO `kategori_beritas` (`id`, `nama`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'AGAMA', '0', '2023-07-14 02:55:21', '2023-07-14 02:55:21'),
(2, 'PENDIDIKAN', '0', '2023-07-14 02:56:07', '2023-07-14 02:56:07'),
(3, 'KESEHATAN', '0', '2023-07-14 02:56:14', '2023-07-14 02:56:14'),
(4, 'KESENIAN', '0', '2023-07-14 02:56:22', '2023-07-14 02:56:22'),
(5, 'OLAH RAGA', '0', '2023-07-14 02:56:36', '2023-07-14 02:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imagas` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatans`
--

INSERT INTO `kegiatans` (`id`, `nama`, `slug`, `image`, `imagas`, `content`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'PORSENI', 'porseni', '1689327040_1.jpeg', NULL, 'Porseni tingkat Sekolah Dasar di Kecamatan Belitang yang mengusung tema Membangun Jiwa Sportif dan Kreatif dalam rangka Penguatan Profil Pelajar Pancasila tersebut diikuti sebanyak 11 kontingen dari beberapa Sekolah Dasar yang ada di Kecamatan Belitang.\r\n\r\nPada kesempatan tersebut wakil Bupati Sekadau Subandrio mengatakan bahwa pendidikan nasional adalah pendidikan yang berlandaskan Pancasila dan Undang-Undang Dasar Negara Republik Indonesia Tahun 1945 yang berakar pada nilai-nilai agama, kebudayaan nasional indonesia dan tanggap terhadap tuntutan perubahan zaman.\r\n\r\n“Berdasarkan prinsip pendidikan Nasional tersebut maka, Pemerintah Daerah Melalui Dinas Pendidikan akan selalu merespon dan memberikan ruang kepada Satuan Pendidikan dan masyarakat untuk berperan aktif mewujudkan pembangunan sumber daya manusia dalam mempersiapkan peserta didik menghadapi perkembangan era globalisasi,” kata Subandrio.\r\n\r\nIa juga menjelaskan bahwa, Pemerintah Daerah sangat mengapresiasi Kelompok Kerja Kepala Sekolah (KKS) Kecamatan Belitang yang telah bersinergi untuk menyelenggarakan kegiatan Porseni pada tahun 2023 ini.\r\n\r\nSementara itu, Kepala Dinas Pendidikan Kabupaten Sekadau Fran Dawal mengungkapkan bahwa berdasarkan pemetaan Balai Pengembangan Talenta Indonesia Kementerian Pendidikan, Kebudayaan, Riset dan Teknologi RI terdapat 3 kelompok ajang talenta untuk jenjang Sekolah Dasar yang termasuk dalam program kegiatan Balai Pengembangan Talenta Indonesia tahun 2023.\r\n\r\n“Adapun 3 kelompok tersebut yaitu Olimpiade Sains Nasional, Festival Lomba dan Seni Siswa Nasional serta Olimpiade Olahraga Siswa Nasional,” ungkapnya.\r\n\r\nSelain itu, ia mengatakan minat, bakat dan kreatifitas siswa merupakan kerangka dari pengembangan talenta para peserta didik nasional sehingga diperlukan penanganan tepat untuk menciptakan sumber daya peserta didik unggul Indonesia.\r\n\r\n“Akhirnya saya ucapkan selamat bertanding bagi anak-anakku para peserta didik, junjung tinggi sportifitas dalam meraih kemenangan,” ujarnya.\r\n\r\nPembukaan porseni ditandai dengan penandangan bola oleh Wakil Bupati Sekadau dan dilanjutkan penyerahan piala bergilir kepada Ketua Panitia Porseni Tingkat Sekolah Dasar di Kecamatan Belitang.\r\n\r\nHadir pada kegiatan tersebut, Sekretaris Daerah Kabupaten Sekadau, Kepala Dinas Pendidikan, Camat Belitang, Kepala Bidang Olahraga Disporapar, Kepala Bidang Pendidikan Dasar Dinas Pendidikan, Kepala Kantor Urusan Agama Belitang serta Forkopimcam Belitang.(MadahSekadau/Amd/AK)', '0', '2023-07-14 02:29:38', '2023-07-14 02:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_code` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_08_100000_create_banks_tables', 1),
(6, '2022_03_20_132856_create_jurusans_table', 1),
(7, '2022_03_20_133244_create_data_jurusans_table', 1),
(8, '2022_03_22_182953_create_kegiatans_table', 1),
(9, '2022_03_23_040838_create_image_sliders_table', 1),
(10, '2022_03_23_052723_add_field_to_image_sliders_table', 1),
(11, '2022_03_23_065335_create_abouts_table', 1),
(12, '2022_03_23_074809_create_videos_table', 1),
(13, '2022_03_24_075737_create_kategori_beritas_table', 1),
(14, '2022_03_24_075900_create_beritas_table', 1),
(15, '2022_03_24_105758_create_events_table', 1),
(16, '2022_03_24_201826_add_field_to_events_table', 1),
(17, '2022_03_24_204322_create_footers_table', 1),
(18, '2022_03_25_102915_create_permission_tables', 1),
(19, '2022_03_27_074151_create_users_details_table', 1),
(20, '2022_03_27_094236_create_data_murids_table', 1),
(21, '2022_03_28_154339_create_profile_sekolahs_table', 1),
(22, '2022_03_28_161701_create_visimisis_table', 1),
(23, '2022_03_30_084531_create_data_orang_tuas_table', 1),
(24, '2022_03_30_172737_add_value_role_in_users_table', 1),
(25, '2022_03_30_194727_add_value_role_in_users_details_table', 1),
(26, '2022_04_01_190600_add_field_to_data_murids', 1),
(27, '2022_04_01_191038_create_berkas_murids_table', 1),
(28, '2022_05_20_062053_create_authors_table', 1),
(29, '2022_05_20_062103_create_publishers_table', 1),
(30, '2022_05_20_062130_create_categories_table', 1),
(31, '2022_05_20_062140_create_books_table', 1),
(32, '2022_05_20_062219_create_members_table', 1),
(33, '2022_05_20_062236_create_borrowings_table', 1),
(34, '2022_07_16_094123_create_bank_accounts_table', 1),
(35, '2022_07_16_094821_create_payment_spps_table', 1),
(36, '2022_07_16_100447_create_detail_payment_spps_table', 1),
(37, '2022_07_16_145332_add_value_role_bendahara_in_users_table', 1),
(38, '2022_07_16_145418_add_value_role_bendahara_in_users_details_table', 1),
(39, '2022_07_29_072220_add_column_account_name_in_bank_accounts_table', 1),
(40, '2022_07_29_081354_add_column_in_detail_payment_spps_table', 1),
(41, '2022_08_01_080614_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 14),
(4, 'App\\Models\\User', 15),
(9, 'App\\Models\\User', 7),
(9, 'App\\Models\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_spps`
--

CREATE TABLE `payment_spps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `year` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `January` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `February` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `March` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `April` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `May` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `June` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `July` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `August` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `September` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `October` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `November` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `December` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_spps`
--

INSERT INTO `payment_spps` (`id`, `user_id`, `year`, `is_active`, `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `November`, `December`, `created_at`, `updated_at`) VALUES
(1, 12, 2023, 1, 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', '2023-07-14 18:30:37', '2023-07-14 18:30:37'),
(2, 13, 2023, 1, 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', '2023-07-14 18:56:54', '2023-07-14 18:56:54'),
(3, 14, 2023, 1, 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', '2023-07-14 19:33:46', '2023-07-14 19:33:46'),
(4, 14, 2023, 1, 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', '2023-07-14 19:35:01', '2023-07-14 19:35:01'),
(5, 14, 2023, 1, 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', '2023-07-14 19:48:24', '2023-07-14 19:48:24'),
(6, 15, 2023, 1, 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', 'unpaid', '2023-07-15 15:05:46', '2023-07-15 15:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_sekolahs`
--

CREATE TABLE `profile_sekolahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_sekolahs`
--

INSERT INTO `profile_sekolahs` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'SDN 3 SUKAJADI', 'SASA ADALAH', '1689329017_1.jpg', '2023-07-14 03:03:37', '2023-07-14 03:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-07-14 02:06:34', '2023-07-14 02:06:34'),
(2, 'Guru', 'web', '2023-07-14 02:06:34', '2023-07-14 02:06:34'),
(3, 'Staf', 'web', '2023-07-14 02:06:34', '2023-07-14 02:06:34'),
(4, 'Murid', 'web', '2023-07-14 02:06:35', '2023-07-14 02:06:35'),
(5, 'Orang Tua', 'web', '2023-07-14 02:06:35', '2023-07-14 02:06:35'),
(6, 'Alumni', 'web', '2023-07-14 02:06:35', '2023-07-14 02:06:35'),
(7, 'Guest', 'web', '2023-07-14 02:06:35', '2023-07-14 02:06:35'),
(8, 'Perpustakaan', 'web', '2023-07-14 02:06:35', '2023-07-14 02:06:35'),
(9, 'PPDB', 'web', '2023-07-14 02:06:35', '2023-07-14 02:06:35'),
(10, 'Bendahara', 'web', '2023-07-14 02:06:36', '2023-07-14 02:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isEmail` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `isEmail`, `email`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 1, '2023-07-14 02:06:36', '2023-07-14 02:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB','Bendahara') DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL,
  `foto_profile` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `role`, `status`, `foto_profile`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Sekolah', 'kepsek', 'admin@gmail.com', 'Admin', 'Aktif', NULL, NULL, '$2y$10$ED9ep5tMFoy2k3uesOksleCbqYanY5UVMOK1CbtcHZaN942rF9v02', NULL, '2023-07-14 02:06:36', '2023-07-14 02:06:36'),
(2, 'Fajar', 'fajar48', 'fajar@gmail.com', 'Guru', 'Aktif', '1689329891_team-1.jpg', NULL, '$2y$10$tbib0KIr0744se1VolGGdO.ph9NhBh.ud764hMxpKdgDyvsb3XG52', NULL, '2023-07-14 03:06:48', '2023-07-14 03:18:11'),
(3, 'Rahman', 'rahman42', 'rahman@gmail.com', 'Guru', 'Aktif', '1689329862_team-1.png', NULL, '$2y$10$MiLCigA7kWa65jOjznwMqevey.YkYoaUs.jq9/B0AlGFZKVOVYQey', NULL, '2023-07-14 03:17:42', '2023-07-14 03:17:42'),
(4, 'Panji', 'panji01', 'panji@gmail.com', 'Guru', 'Aktif', '1689329941_team-3.png', NULL, '$2y$10$6V.DF8VIviWZniF3HYTjGu8fJ9VaWBzzFqKOcoFQrVczsaSYATuY.', NULL, '2023-07-14 03:19:01', '2023-07-14 03:19:01'),
(5, 'Fina', 'fina35', 'fina@gmail.com', 'Guru', 'Aktif', '1689329975_team-4.jpg', NULL, '$2y$10$40Qm4GAdormIk1yrDjXrGeoMAMpVpRSQTEPOBTP/AjcHsfPwZtBW2', NULL, '2023-07-14 03:19:35', '2023-07-14 03:19:35'),
(7, 'Staf 1', 'staf36', 'staf1@gmail.com', 'PPDB', 'Aktif', '1689382656_avatar-01.jpg', NULL, '$2y$10$lxZnB5J26WZPQKV0IA/WJ.QBiFTPMhzKhBJi.jDttnQJYs6aGB9EO', NULL, '2023-07-14 17:57:36', '2023-07-14 17:57:36'),
(8, 'Murid', 'Murid', 'murid@gmail.com', 'Murid', 'Aktif', '1689382692_Untitled-1.jpg', NULL, '$2y$10$KjKlhhjBjqUZRm5Cads1JuesJqIm0n4gZ6Y9oqmiGwCkDQoG6xX4.', NULL, '2023-07-14 17:58:12', '2023-07-14 17:59:11'),
(9, 'Staf2', 'staf229', 'staf2@gmail.com', 'PPDB', 'Aktif', '1689383549_Untitled-1.jpg', NULL, '$2y$10$0qTpnEd4IR0UBH3JTkfYx.8eXdgT0J3zMxjMJacyob2BGJndmgTM.', NULL, '2023-07-14 18:12:29', '2023-07-14 18:12:29'),
(12, 'Hasby', 'Hasby', 'murid2@gmail.com', 'Murid', 'Aktif', NULL, NULL, '$2y$10$OvvgevYLE7QRhwOshP9S7.eaRY5S2fNWouc6PX3QyWsw7KKar.VEC', NULL, '2023-07-14 18:22:26', '2023-07-14 18:30:36'),
(13, 'Iran', 'Iran', 'iran@gmail.com', 'Murid', 'Aktif', NULL, NULL, '$2y$10$ECoxadbtpuHuTS2yIqAL0.vgBm9f.rv9VRvQJ1pxtEP4Se3Uwzufq', NULL, '2023-07-14 18:40:45', '2023-07-14 18:56:54'),
(14, 'hatim', 'hatim', 'hatim@gmail.com', 'Guest', 'Aktif', NULL, NULL, '$2y$10$NbU8XLe1TryvM1AypbwaC.eZhYJjtisn19rn82KDzFru0n2lsWPK2', NULL, '2023-07-14 19:13:52', '2023-07-14 19:48:24'),
(15, 'Josadi', 'Josadi', 'jo@gmail.com', 'Murid', 'Aktif', NULL, NULL, '$2y$10$ndFDkAKSgNJWMoIaIec7EOppKkxPm9tIukmN62Haun3IGNozRksCK', NULL, '2023-07-15 14:53:00', '2023-07-15 15:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `users_details`
--

CREATE TABLE `users_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB','Bendahara') DEFAULT NULL,
  `mengajar` varchar(255) DEFAULT NULL,
  `nip` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `linkidln` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_details`
--

INSERT INTO `users_details` (`id`, `user_id`, `role`, `mengajar`, `nip`, `email`, `linkidln`, `instagram`, `twitter`, `facebook`, `youtube`, `website`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 2, 'Guru', 'Matematika', 1234567, 'fajar@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2023-07-14 03:06:48', '2023-07-14 03:06:48'),
(2, 3, 'Guru', 'IPA', 21212121, 'rahman@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2023-07-14 03:17:42', '2023-07-14 03:17:42'),
(3, 4, 'Guru', 'IPS', 3232323232, 'panji@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2023-07-14 03:19:01', '2023-07-14 03:19:01'),
(4, 5, 'Guru', 'TEMATIK3', 54545545, 'fina@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2023-07-14 03:19:35', '2023-07-14 03:19:35'),
(6, 7, 'PPDB', NULL, 21545445, 'staf1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2023-07-14 17:57:36', '2023-07-14 17:57:36'),
(7, 9, 'PPDB', NULL, 12345678, 'staf2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2023-07-14 18:12:29', '2023-07-14 18:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visimisis`
--

CREATE TABLE `visimisis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visimisis`
--

INSERT INTO `visimisis` (`id`, `visi`, `misi`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Dalam mewujutkan tujuan Pendidikan Nasional  berdasarkan Undang-undang Sistem Pendidikan Nasional No. 20  tahun 2013 BAB II pasal 3 adalah berkembangngnya potensi peserta didik agar menjadi manusia yang bertadwa kepada Tuhan Yang Maha Esa, serta berakhlak mulia, sehat,berilmu,cakap,kreatif,mandiri, dan menjadi warga Negara yang demokratis serta bertanggung jawab. Tujuan Pendidikan Dasar meletakkan dasar kecerdasan, pengetahuan, kepribadian, akhlak mulia, serta keterampilan untuk hidup mandiri dan mengikuti pendidikan lebih lanjut. Kurikulum 2013 bertujuan untuk mempersiapkan manusia Indonesia agar memiliki kemampuan hidup sebagai pribadi dan warga negara yang beriman, produktif, kreatif, inovatif, dan afektif serta mampu berkontribusi pada kehidupan bermasyarakat, berbangsa, bernegara, dan peradaban dunia.', 'Memiliki sifat dan kepribadian yang baik.\r\nTidak mementingkan diri sendiri.\r\nHidup penuh kesederhanaan\r\nBertanggungjawab terhadap setiap masalah yang diberikan.\r\nHidup saling bergotong royong.\r\nHidup saling menghormati antar sesama.', '1689329093_mi.png', '2023-07-14 03:04:53', '2023-07-14 03:04:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_name_unique` (`name`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beritas_title_unique` (`title`);

--
-- Indexes for table `berkas_murids`
--
ALTER TABLE `berkas_murids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_book_code_unique` (`book_code`);

--
-- Indexes for table `borrowings`
--
ALTER TABLE `borrowings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `borrowings_borrow_code_unique` (`borrow_code`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `data_jurusans`
--
ALTER TABLE `data_jurusans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_jurusans_jurusan_id_foreign` (`jurusan_id`);

--
-- Indexes for table `data_murids`
--
ALTER TABLE `data_murids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_orang_tuas`
--
ALTER TABLE `data_orang_tuas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_payment_spps`
--
ALTER TABLE `detail_payment_spps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_payment_spps_user_id_foreign` (`user_id`),
  ADD KEY `detail_payment_spps_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `events_title_unique` (`title`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_sliders`
--
ALTER TABLE `image_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jurusans_nama_unique` (`nama`),
  ADD UNIQUE KEY `jurusans_slug_unique` (`slug`),
  ADD UNIQUE KEY `jurusans_singkatan_unique` (`singkatan`);

--
-- Indexes for table `kategori_beritas`
--
ALTER TABLE `kategori_beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_beritas_nama_unique` (`nama`);

--
-- Indexes for table `kegiatans`
--
ALTER TABLE `kegiatans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kegiatans_nama_unique` (`nama`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_member_code_unique` (`member_code`),
  ADD UNIQUE KEY `members_user_id_unique` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_spps`
--
ALTER TABLE `payment_spps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_spps_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profile_sekolahs`
--
ALTER TABLE `profile_sekolahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `publishers_name_unique` (`name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visimisis`
--
ALTER TABLE `visimisis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `berkas_murids`
--
ALTER TABLE `berkas_murids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `borrowings`
--
ALTER TABLE `borrowings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_jurusans`
--
ALTER TABLE `data_jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_murids`
--
ALTER TABLE `data_murids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_orang_tuas`
--
ALTER TABLE `data_orang_tuas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detail_payment_spps`
--
ALTER TABLE `detail_payment_spps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `image_sliders`
--
ALTER TABLE `image_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_beritas`
--
ALTER TABLE `kategori_beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `payment_spps`
--
ALTER TABLE `payment_spps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile_sekolahs`
--
ALTER TABLE `profile_sekolahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users_details`
--
ALTER TABLE `users_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visimisis`
--
ALTER TABLE `visimisis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_jurusans`
--
ALTER TABLE `data_jurusans`
  ADD CONSTRAINT `data_jurusans_jurusan_id_foreign` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_payment_spps`
--
ALTER TABLE `detail_payment_spps`
  ADD CONSTRAINT `detail_payment_spps_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payment_spps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_payment_spps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_spps`
--
ALTER TABLE `payment_spps`
  ADD CONSTRAINT `payment_spps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
