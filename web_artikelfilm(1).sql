-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 10:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_artikelfilm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jenis_genre`
--

CREATE TABLE `jenis_genre` (
  `ID_Genre` int(11) UNSIGNED NOT NULL,
  `Genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_genre`
--

INSERT INTO `jenis_genre` (`ID_Genre`, `Genre`, `created_at`, `updated_at`) VALUES
(1, 'action', NULL, NULL),
(2, 'romance\r\n', NULL, NULL),
(3, 'Science Fiction, Action', NULL, NULL),
(4, 'Crime, Drama, Mystery', NULL, NULL),
(5, 'Science Fiction, Adventure, Action', NULL, NULL),
(6, 'Science Fiction, Adventure', NULL, NULL),
(7, 'Animation, Family, Drama, Adventure, Comedy', NULL, NULL),
(8, 'Action, History, Drama, War', NULL, NULL),
(9, 'Action, Comedy, Crime, Mystery, Romance', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2024_04_08_065842_create_recommend_films_table', 1),
(6, '2024_04_09_051114_create_top_rateds_table', 1),
(7, '2024_04_09_060233_create_upcomings_table', 1),
(8, '2024_06_03_025319_create_jenis_genre_table', 1),
(9, '2024_06_03_064520_create_posts_table', 1),
(10, '2024_06_03_105241_add_deskripsi_to_recommend_film_table', 2),
(11, '2024_06_04_122405_add_video_url_to_films_table', 3),
(12, '2024_06_05_120522_add_deskripsi_to_top_rated_table', 4),
(13, '2024_06_06_022347_add_video_url_to_top_rated_table', 5),
(14, '2024_06_09_003900_add_deskripsi_to_table_upcoming', 6),
(15, '2024_06_10_121356_add_to_table_users', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recommend_film`
--

CREATE TABLE `recommend_film` (
  `Kode_Film` int(10) UNSIGNED NOT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Judul_Film` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tahun_Rilis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_Genre` int(11) NOT NULL,
  `Rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recommend_film`
--

INSERT INTO `recommend_film` (`Kode_Film`, `thumbnail`, `Judul_Film`, `Tahun_Rilis`, `ID_Genre`, `Rating`, `deskripsi`, `video_url`, `created_at`, `updated_at`) VALUES
(1553, '1717425002_atlas.jpg', 'Atlas (2024)', '2024-05-24', 1, '6.7', 'Seorang analis kontraterorisme brilian yang amat menyangsikan AI mendapati bahwa AI mungkin satu-satunya harapan saat misi menangkap robot pemberontak berjalan kacau.', 'https://www.youtube.com/embed/TiJAfxzqDso?si=NVXf41qP16yWjonG', '2024-06-03 07:30:02', '2024-06-03 07:30:02'),
(1554, '1717425808_gKkl37BQuKTanygYQG1pyYgLVgf.jpg', 'Kingdom of the Planet of the Apes (2024)', '2024-05-08', 1, '7.0', 'Beberapa generasi di masa depan setelah pemerintahan Kaisar, kera kini menjadi spesies dominan dan hidup harmonis sementara manusia terpaksa hidup dalam bayang-bayang. Saat pemimpin kera baru yang kejam membangun kerajaannya, seekor kera muda melakukan perjalanan mengerikan yang akan menyebabkan dia mempertanyakan semua yang telah dia ketahui tentang masa lalu dan membuat pilihan yang akan menentukan masa depan kera dan manusia.', 'https://www.youtube.com/embed/XtFI7SNtVpY?si=3m2_zVQFakB_6z3b', '2024-06-03 07:43:28', '2024-06-03 07:43:28'),
(1555, '1717425964_tMefBSflR6PGQLv7WvFPpKLZkyk.jpg', 'Godzilla x Kong: The New Empire (2024)', '2024-03-27', 1, '7.2', 'Setelah pertarungan eksplosif mereka, Godzilla dan Kong harus bersatu kembali melawan ancaman kolosal yang belum ditemukan yang tersembunyi di dalam dunia kita, yang menantang eksistensi mereka - dan eksistensi kita.', 'https://www.youtube.com/embed/qqrpMRDuPfc?si=xLA8vvOd4AZ2T1ks', '2024-06-03 07:46:04', '2024-06-03 07:46:04'),
(1556, '1717426126_iADOJ8Zymht2JPMoy3R7xceZprc.jpg', 'Furiosa: A Mad Max Saga (2024)', '2024-05-22', 1, '7.7', 'Saat dunia runtuh, Furiosa muda direnggut dari Tempat Hijau Banyak Ibu dan jatuh ke tangan Biker Horde besar yang dipimpin oleh Warlord Dementus. Menyapu Wasteland mereka menemukan Benteng yang dipimpin oleh The Immortan Joe. Saat kedua Tiran berperang demi dominasi, Furiosa harus bertahan dari banyak cobaan saat dia menyusun cara untuk menemukan jalan pulang.', 'https://www.youtube.com/embed/qqrpMRDuPfc?si=xLA8vvOd4AZ2T1ks', '2024-06-03 07:48:46', '2024-06-03 07:48:46'),
(1557, '1717426261_dune.jpg', 'Dune: Part Two (2024)', '2024-02-28', 1, '8.2', 'Paul Atreides bersatu dengan Chani dan Fremen sambil membalas dendam terhadap para konspirator yang menghancurkan keluarganya.', 'https://www.youtube.com/embed/_YUzQa_1RCE?si=rdCt_7M-mWxyM-IS', '2024-06-03 07:51:01', '2024-06-03 07:51:01'),
(1558, '1717426470_inside2.jpg', 'Inside Out 2 (2024)', '2024-06-14', 7, '8.2', NULL, NULL, '2024-06-03 07:54:30', '2024-06-03 07:54:30'),
(1559, '1717426574_kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg', 'Kung Fu Panda 4 (2024)', '2024-03-06', 1, '7.1', 'Po bersiap untuk menjadi pemimpin spiritual di Lembah Damai, namun ia juga membutuhkan seseorang untuk menggantikannya sebagai Prajurit Naga. Karena itu, dia akan melatih praktisi kung fu baru untuk posisi tersebut dan akan bertemu dengan penjahat bernama Bunglon yang memunculkan penjahat dari masa lalu.', 'https://www.youtube.com/embed/_inKs4eeHiI?si=umDNSORcOPx2Qmrs', '2024-06-03 07:56:14', '2024-06-03 07:56:14'),
(1560, '1717426762_hkxxMIGaiCTmrEArK7J56JTKUlB.jpg', 'Godzilla Minus One (2023)', '2023-06-01', 1, '7.7', 'Jepang pascaperang berada pada titik terendah ketika krisis baru muncul dalam bentuk monster raksasa, dibaptis dalam kekuatan mengerikan bom atom.', 'https://www.youtube.com/embed/r7DqccP1Q_4?si=IWQXOWUj6O04RxqQ', '2024-06-03 07:59:22', '2024-06-03 07:59:22'),
(1561, '1717426915_wFAe7gA513Pi2meI4ECwf6YEKR1.jpg', 'Noryang: Deadly Sea (2023)', '2023-12-20', 1, '7.1', 'Pada musim dingin tahun 1598, Perang Imjin yang berlangsung selama tujuh tahun hampir berakhir ketika penjajah Wae Jepang bersiap untuk mundur dari Joseon. Laksamana Yi Sun-shin memimpin armada sekutu kapal Joseon dan Ming untuk memusnahkan tentara Wae. Pasukan Joseon, Ming, dan Wae bentrok di Selat Noryang, laut mematikan tempat Laksamana Yi melakukan pertempuran terakhirnya yang gagah berani.', 'https://www.youtube.com/embed/HPRkiVU39I4?si=St0q6TJzFUgcQk5Q', '2024-06-03 08:01:55', '2024-06-03 08:01:55'),
(1562, '1717427018_p6AbOJvMQhBmffd0PIv0u8ghWeY.jpg', 'The Garfield Movie (2024)', '2024-05-23', 1, '6.5', 'Garfield, kucing dalam ruangan yang terkenal di dunia, membenci hari Senin, dan menyukai lasagna, akan melakukan petualangan luar ruangan yang liar! Setelah reuni tak terduga dengan ayahnya yang telah lama hilang – kucing jalanan berantakan Vic – Garfield dan teman anjingnya Odie dipaksa dari kehidupan mereka yang dimanjakan untuk bergabung dengan Vic dalam perampokan lucu dan berisiko tinggi.', 'https://www.youtube.com/embed/IeFWNtMo1Fs?si=iufYSIyV7nfdLp01', '2024-06-03 08:03:38', '2024-06-03 08:03:38'),
(1563, '1717513260_tSz1qsmSJon0rqjHBxXZmrotuse.jpg', 'The Fall Guy (2024)', '2024-04-24', 9, '7.3', 'Baru saja mengalami kecelakaan yang hampir mengakhiri kariernya, stuntman Colt Seavers harus melacak bintang film yang hilang, menyelesaikan konspirasi, dan mencoba memenangkan kembali cinta dalam hidupnya sambil tetap melakukan pekerjaannya sehari-hari.', 'https://www.youtube.com/embed/j7jPnwVGdZ8?si=HaI1ismCk8qgzFti', '2024-06-04 08:01:00', '2024-06-04 08:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `top_rated`
--

CREATE TABLE `top_rated` (
  `Kode_Film` int(10) UNSIGNED NOT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Judul_Film` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tahun_Rilis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_Genre` int(11) NOT NULL,
  `Rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_rated`
--

INSERT INTO `top_rated` (`Kode_Film`, `thumbnail`, `Judul_Film`, `Tahun_Rilis`, `ID_Genre`, `Rating`, `deskripsi`, `video_url`, `created_at`, `updated_at`) VALUES
(2, '1717641658_shwa.jpg', 'The Shawshank Redemption (1994)', '2016-01-07', 4, '8.7', 'Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.', 'https://www.youtube.com/embed/PLl99DlL6b4?si=nuLASItHDdPDfEEi', '2024-06-05 19:40:58', '2024-06-05 19:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming`
--

CREATE TABLE `upcoming` (
  `Kode_Film` int(10) UNSIGNED NOT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Judul_Film` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tahun_Rilis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_Genre` int(11) NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upcoming`
--

INSERT INTO `upcoming` (`Kode_Film`, `thumbnail`, `Judul_Film`, `Tahun_Rilis`, `ID_Genre`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '1717892662_p6AbOJvMQhBmffd0PIv0u8ghWeY.jpg', 'ONE PIECE film RED', '2024-06-19', 5, NULL, '2024-06-08 17:24:22', '2024-06-08 17:24:22'),
(2, '1717894508_hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg', 'naruto', '2024-06-11', 1, 'emng gini kocak', '2024-06-08 17:55:08', '2024-06-08 17:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verify_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `role`, `email`, `verify_key`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'aprizald574@gmail.com', NULL, 'D1cky@pRizal', 'admin', NULL, NULL, NULL),
(2, 'admin', '$2y$10$8si5s8kd1GMYD5atoidKlO0usHLr5u1JdtrB8vUeYqEmRIYbn.f5.', 'Guest', 'aprizald574@gmail.com', NULL, 1, '2024-06-10 07:49:52', '2024-06-10 07:49:52'),
(3, 'dicky', '$2y$10$W1nFE/sngAp6RL32FRYEae0/llfqgY71peKfbt/JiPHQGAkx5A05u', 'Guest', 'dicky.aprizal13@smk.belajar.id', NULL, 1, '2024-06-10 14:56:31', '2024-06-10 14:56:31'),
(4, 'opm', '$2y$10$az10r4H03XK53pIodP8UNOBqpiHwUEBL.VgKdVZ4DCvHeqUzq/Gdy', 'admin', 'aprizald574@gmail.com', NULL, 1, '2024-06-10 22:08:44', '2024-06-10 22:08:44'),
(5, 'opm', '$2y$10$19dINqtv56WsCjQeVynkFexyiQRadQNMUbtSB92/xsKuw2eEK4Bdi', 'admin', 'aprizald574@gmail.com', NULL, 1, '2024-06-10 22:09:11', '2024-06-10 22:09:11'),
(6, 'diki', '$2y$10$ebtPppzJVYO/xoEJlE0Y.utUT9ERhs/nqHjlsimY9lWlhd3cLf.OW', 'Guest', 'dickyaprizal92@gmail.com', NULL, 1, '2024-06-11 09:22:46', '2024-06-11 09:22:46'),
(7, 'dd', '$2y$10$gNgjMFkD3S17wTlvhSe90.D0WSnDKcKI1FJCqHP2Eit4BC5cF9c06', 'Guest', 'aprizald574@gmail.com', NULL, 1, '2024-06-11 09:32:11', '2024-06-11 09:32:11');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vrecc`
-- (See below for the actual view)
--
CREATE TABLE `vrecc` (
`Kode_Film` int(10) unsigned
,`thumbnail` text
,`Judul_Film` varchar(255)
,`Tahun_Rilis` varchar(255)
,`Genre` varchar(255)
,`Rating` varchar(255)
,`deskripsi` text
,`video_url` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vrekomendasi`
-- (See below for the actual view)
--
CREATE TABLE `vrekomendasi` (
`Kode_Film` int(10) unsigned
,`thumbnail` text
,`Judul_Film` varchar(255)
,`Tahun_Rilis` varchar(255)
,`Genre` varchar(255)
,`Rating` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vtop`
-- (See below for the actual view)
--
CREATE TABLE `vtop` (
`Kode_Film` int(10) unsigned
,`thumbnail` text
,`Judul_Film` varchar(255)
,`Tahun_Rilis` varchar(255)
,`Genre` varchar(255)
,`Rating` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vtoprated`
-- (See below for the actual view)
--
CREATE TABLE `vtoprated` (
`Kode_Film` int(10) unsigned
,`thumbnail` text
,`Judul_Film` varchar(255)
,`Tahun_Rilis` varchar(255)
,`Genre` varchar(255)
,`Rating` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vtoprating`
-- (See below for the actual view)
--
CREATE TABLE `vtoprating` (
`Kode_Film` int(10) unsigned
,`thumbnail` text
,`Judul_Film` varchar(255)
,`Tahun_Rilis` varchar(255)
,`Genre` varchar(255)
,`Rating` varchar(255)
,`deskripsi` text
,`video_url` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vupcoming`
-- (See below for the actual view)
--
CREATE TABLE `vupcoming` (
`Kode_Film` int(10) unsigned
,`thumbnail` text
,`Judul_Film` varchar(255)
,`Tahun_Rilis` varchar(255)
,`Genre` varchar(255)
,`deskripsi` text
);

-- --------------------------------------------------------

--
-- Structure for view `vrecc`
--
DROP TABLE IF EXISTS `vrecc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vrecc`  AS SELECT `recommend_film`.`Kode_Film` AS `Kode_Film`, `recommend_film`.`thumbnail` AS `thumbnail`, `recommend_film`.`Judul_Film` AS `Judul_Film`, `recommend_film`.`Tahun_Rilis` AS `Tahun_Rilis`, `jenis_genre`.`Genre` AS `Genre`, `recommend_film`.`Rating` AS `Rating`, `recommend_film`.`deskripsi` AS `deskripsi`, `recommend_film`.`video_url` AS `video_url` FROM (`recommend_film` join `jenis_genre` on(`recommend_film`.`ID_Genre` = `jenis_genre`.`ID_Genre`))  ;

-- --------------------------------------------------------

--
-- Structure for view `vrekomendasi`
--
DROP TABLE IF EXISTS `vrekomendasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vrekomendasi`  AS SELECT `recommend_film`.`Kode_Film` AS `Kode_Film`, `recommend_film`.`thumbnail` AS `thumbnail`, `recommend_film`.`Judul_Film` AS `Judul_Film`, `recommend_film`.`Tahun_Rilis` AS `Tahun_Rilis`, `jenis_genre`.`Genre` AS `Genre`, `recommend_film`.`Rating` AS `Rating` FROM (`recommend_film` join `jenis_genre` on(`recommend_film`.`ID_Genre` = `jenis_genre`.`ID_Genre`))  ;

-- --------------------------------------------------------

--
-- Structure for view `vtop`
--
DROP TABLE IF EXISTS `vtop`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vtop`  AS SELECT `top_rated`.`Kode_Film` AS `Kode_Film`, `top_rated`.`thumbnail` AS `thumbnail`, `top_rated`.`Judul_Film` AS `Judul_Film`, `top_rated`.`Tahun_Rilis` AS `Tahun_Rilis`, `jenis_genre`.`Genre` AS `Genre`, `top_rated`.`Rating` AS `Rating` FROM (`top_rated` join `jenis_genre` on(`top_rated`.`Kode_Film` = `jenis_genre`.`ID_Genre`))  ;

-- --------------------------------------------------------

--
-- Structure for view `vtoprated`
--
DROP TABLE IF EXISTS `vtoprated`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vtoprated`  AS SELECT `top_rated`.`Kode_Film` AS `Kode_Film`, `top_rated`.`thumbnail` AS `thumbnail`, `top_rated`.`Judul_Film` AS `Judul_Film`, `top_rated`.`Tahun_Rilis` AS `Tahun_Rilis`, `jenis_genre`.`Genre` AS `Genre`, `top_rated`.`Rating` AS `Rating` FROM (`top_rated` join `jenis_genre` on(`top_rated`.`ID_Genre` = `jenis_genre`.`ID_Genre`))  ;

-- --------------------------------------------------------

--
-- Structure for view `vtoprating`
--
DROP TABLE IF EXISTS `vtoprating`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vtoprating`  AS SELECT `top_rated`.`Kode_Film` AS `Kode_Film`, `top_rated`.`thumbnail` AS `thumbnail`, `top_rated`.`Judul_Film` AS `Judul_Film`, `top_rated`.`Tahun_Rilis` AS `Tahun_Rilis`, `jenis_genre`.`Genre` AS `Genre`, `top_rated`.`Rating` AS `Rating`, `top_rated`.`deskripsi` AS `deskripsi`, `top_rated`.`video_url` AS `video_url` FROM (`top_rated` join `jenis_genre` on(`top_rated`.`ID_Genre` = `jenis_genre`.`ID_Genre`))  ;

-- --------------------------------------------------------

--
-- Structure for view `vupcoming`
--
DROP TABLE IF EXISTS `vupcoming`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vupcoming`  AS SELECT `upcoming`.`Kode_Film` AS `Kode_Film`, `upcoming`.`thumbnail` AS `thumbnail`, `upcoming`.`Judul_Film` AS `Judul_Film`, `upcoming`.`Tahun_Rilis` AS `Tahun_Rilis`, `jenis_genre`.`Genre` AS `Genre`, `upcoming`.`deskripsi` AS `deskripsi` FROM (`upcoming` join `jenis_genre` on(`upcoming`.`ID_Genre` = `jenis_genre`.`ID_Genre`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jenis_genre`
--
ALTER TABLE `jenis_genre`
  ADD PRIMARY KEY (`ID_Genre`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommend_film`
--
ALTER TABLE `recommend_film`
  ADD PRIMARY KEY (`Kode_Film`);

--
-- Indexes for table `top_rated`
--
ALTER TABLE `top_rated`
  ADD PRIMARY KEY (`Kode_Film`);

--
-- Indexes for table `upcoming`
--
ALTER TABLE `upcoming`
  ADD PRIMARY KEY (`Kode_Film`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_genre`
--
ALTER TABLE `jenis_genre`
  MODIFY `ID_Genre` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recommend_film`
--
ALTER TABLE `recommend_film`
  MODIFY `Kode_Film` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1565;

--
-- AUTO_INCREMENT for table `top_rated`
--
ALTER TABLE `top_rated`
  MODIFY `Kode_Film` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upcoming`
--
ALTER TABLE `upcoming`
  MODIFY `Kode_Film` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
