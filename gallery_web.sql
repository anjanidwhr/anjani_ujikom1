-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2024 at 09:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `agendas`
--

CREATE TABLE `agendas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agendas`
--

INSERT INTO `agendas` (`id`, `title`, `description`, `event_date`, `created_at`, `updated_at`) VALUES
(1, 'Kegiatan Workshop RTL Reskilling Upskilling Guru SMK Negeri 4 Bogor.', 'Workshop RTL (Rencana Tindak Lanjut) Reskilling dan Upskilling bagi Guru SMK Negeri 4 Bogor adalah kegiatan yang dirancang untuk meningkatkan kompetensi guru dalam mengadaptasi keterampilan terbaru yang relevan dengan kebutuhan industri saat ini.', '2024-11-11 00:00:00', '2024-10-29 05:25:36', '2024-11-19 04:46:07'),
(2, 'Kegiatan Asesmen Bakat Dan Minat Kelas XII Hari Pertama.', 'Kegiatan Asesmen Bakat dan Minat bagi siswa kelas XII pada hari pertama merupakan program yang dirancang untuk membantu siswa memahami potensi diri mereka dalam bidang akademik maupun non-akademik.', '2024-11-11 00:00:00', '2024-11-05 04:53:47', '2024-11-19 04:46:39'),
(3, 'Kegiatan Pra-Uji Kompetensi Keahlian Jurusan Teknik Otomotif', 'Kegiatan Pra-Uji Kompetensi Keahlian untuk Jurusan Teknik Otomotif adalah program persiapan yang dirancang untuk siswa jurusan Teknik Otomotif dalam menghadapi Uji Kompetensi Keahlian (UKK) yang akan datang.', '2024-11-07 00:00:00', '2024-11-12 00:20:25', '2024-11-19 04:47:03'),
(4, 'Kegiatan Workshop Kesehatan Mental Remaja.', 'Kegiatan Ini dilaksanakan di Aula SMKN 4 Bogor dan diikuti oleh Siswa/Siswi SMKN 4 Bogor', '2024-11-14 00:00:00', '2024-11-15 21:43:14', '2024-11-15 21:43:14');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'keren sekali', '2024-10-28 19:57:22', '2024-10-28 20:07:46'),
(3, 7, 1, 'keren', '2024-11-20 01:15:25', '2024-11-20 01:15:25');

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Fasilitas', 1, '2024-10-28 17:19:08', '2024-11-01 04:40:53'),
(2, 'Ruang Praktik', 1, '2024-10-29 05:22:08', '2024-10-29 05:22:08'),
(3, 'jurusan smkn4 Kota Bogor', 1, '2024-11-12 00:05:58', '2024-11-18 07:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `infos`
--

CREATE TABLE `infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infos`
--

INSERT INTO `infos` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'VISI', 'Terwujudnya SMK Pusat Keunggulan melalui terciptanya pelajar pancasila yang berbasis teknologi, berwawasan lingkungan dan berkewirausahaan.', '2024-10-29 02:34:28', '2024-11-20 02:41:46'),
(2, 'MISI', '1. Mewujudkan karakter pelajar pancasila beriman dan bertaqwa kepada Tuhan Yang Maha Esa dan berakhlak mulia, berkebhinekaan global, gotong royong, mandiri, kreatif dan bernalar kritis.\r\n2. Mengembangkan pembelajaran dan pengelolaan sekolah berbasis Teknologi Informasi dan Komunikasi.\r\n3. Mengembangkan sekolah yang berwawasan Adiwiyata Mandiri.\r\n4. Mengembangkan usaha dalam berbagai bidang secara optimal sehingga memiliki kemandirian dan daya saing tinggi.', '2024-11-16 04:04:12', '2024-11-20 02:42:32'),
(4, 'TENTANG KAMI SMKN 4', 'Merupakan sekolah kejuruan berbasis Teknologi Informasi dan Komunikasi. Sekolah ini didirikan dan dirintis pada tahun 2008 kemudian dibuka pada tahun 2009 yang saat ini terakreditasi A. Terletak di Jalan Raya Tajur Kp. Buntar, Muarasari, Bogor, sekolah ini berdiri di atas lahan seluas 12.724 m2 dengan berbagai fasilitas pendukung di dalamnya. Terdapat 54 staff pengajar dan 22 orang staff tata usaha, dikepalai oleh Drs. Mulya Mulprihartono, M. Si, sekolah ini merupakan investasi pendidikan yang tepat untuk putra/putri anda.', '2024-11-16 19:06:42', '2024-11-20 02:43:19'),
(14, 'kegiatan', 'udfis', '2024-11-22 02:34:23', '2024-11-22 02:34:23');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_09_22_123507_create_users_table', 1),
(5, '2024_09_22_123533_create_gallery_table', 1),
(6, '2024_09_22_123551_create_photos_table', 1),
(7, '2024_09_22_123605_create_comments_table', 1),
(8, '2024_09_22_123619_create_info_table', 1),
(9, '2024_09_22_123636_create_agendas_table', 1),
(10, '2024_09_28_084839_add_title_and_description_to_photos_table', 1),
(11, '2024_09_28_085511_remove_description_from_galleries_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'YourAppName', 'c102daf790d2c67060174c5cfc34a67b3f13afe973f042eedcf0c946ca6859ba', '[\"*\"]', NULL, '2024-11-14 20:00:08', '2024-11-14 20:00:08'),
(2, 'App\\Models\\User', 1, 'YourAppName', '87e26c433c7240f75d764bb29038be351c9602aee68c88165d00dcc7cbc3aa43', '[\"*\"]', NULL, '2024-11-14 20:59:26', '2024-11-14 20:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `description`, `image_url`, `gallery_id`, `created_at`, `updated_at`) VALUES
(1, 'Lapangan', 'lapangan smkn4', 'https://smkn4bogor.sch.id/assets/images/background/smkn4bogor_2.jpg', 1, '2024-10-28 17:23:44', '2024-11-12 00:02:36'),
(2, 'ruang praktik PPLG', 'ruang praktik lab 1', 'https://smkn4bogor.sch.id/assets/images/background/pplg_2.jpg', 2, '2024-11-01 04:38:20', '2024-11-12 00:00:40'),
(3, 'ruang praktik tkr', 'ruangan', 'https://smkn4bogor.sch.id/assets/images/background/tkr.jpeg', 2, '2024-11-01 04:38:57', '2024-11-01 04:38:57'),
(4, 'Taman', 'salah satu taman yang ada di smkn4', 'https://smkn4bogor.sch.id/assets/images/background/taman_1.jpg', 1, '2024-11-12 00:01:49', '2024-11-12 00:01:49'),
(5, 'Aula', 'Aula smkn4', 'https://smkn4bogor.sch.id/assets/images/background/aula.jpg', 1, '2024-11-12 00:02:13', '2024-11-12 00:02:13'),
(6, 'ruang praktik tpfl', 'ruang praktik', 'https://smkn4bogor.sch.id/assets/images/background/tpfl_2.jpg', 2, '2024-11-12 00:05:30', '2024-11-12 00:11:37'),
(7, 'Pengembangan Perangkat Lunak dan Gim', 'Pengembangan Perangkat Lunak dan Gim merupakan kompetensi keahlian yang awal mulanya bernama Rekayasa Perangkat Lunak (RPL). Sesuai dengan namanya keahlian yang dipelajari pada kompetensi ini pun berkisar seputar pembuatan perangkat lunak (software) dan pembuatan gim.', 'https://smkn4bogor.sch.id/assets/images/logo/pplg.png', 3, '2024-11-12 00:07:14', '2024-11-12 00:07:14'),
(8, 'Teknik Jaringan Komputer dan Telekomunikasi', 'Teknik Jaringan Komputer dan Telekomunikasi awalnya bernama Teknik Komputer dan Jaringan (TKJ). Awalnya kompetensi keahlian ini berada pada satu bidang keahlian yang sama dengan kompetensi keahlian RPL. Namun setelah adanya perubahan di kurikulum merdeka, kompetensi keahlian ini memiliki bidang yang berbeda dengan kompetensi keahlian RPL. Sesuai dengan namanya kompetensi keahlian TKJ berfokus pada pembuatan jaringan untuk layanan komunikasi dan perakitan komputer.', 'https://smkn4bogor.sch.id/assets/images/logo/tjkt.png', 3, '2024-11-12 00:08:14', '2024-11-12 00:08:14'),
(9, 'Teknik Kendaraan Ringan', 'Teknik Otomotif merupakan kompetensi keahlian yang berfokus untuk melakukan perbaikan pada berbagai kendaraan roda empat. Semula jurusan ini bernama Teknik Kendaraan Ringan (TKR), namun kini berganti nama seiring dengan perubahan kurikulum merdeka.', 'https://smkn4bogor.sch.id/assets/images/logo/tkr.png', 3, '2024-11-12 00:08:50', '2024-11-12 00:08:50'),
(10, 'Teknik Pengelasan dan Fabrikasi Logam', 'Teknik Pengelasan dan Fabrikasi Logam, merupakan jurusan yang di dominasi oleh kaum laki-laki. Seperti namanya, kompetensi keahlian ini berfokus pada pembuatan perangkat dengan meggunakan bahan dasar logam, seperti halnya rak sepatu, tralis, lemari besi, dan lain sebagainya.', 'https://smkn4bogor.sch.id/assets/images/logo/tflm.jpeg', 3, '2024-11-12 00:09:25', '2024-11-12 00:09:25'),
(11, 'ruang praktik tjkt', 'ruang praktik', 'https://smkn4bogor.sch.id/assets/images/background/tjkt_2.jpg', 2, '2024-11-12 00:10:41', '2024-11-12 00:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$2F3GY9dLDTRKgXTFghWfmOJcbyFKryzRfN30QZfyrgX4Bq9LE3DSG', 'admin', NULL, '2024-10-28 17:10:18', '2024-10-28 17:10:18'),
(2, 'jani', 'dwi@gmail.com', NULL, '$2y$10$Z7VSpTCWB1vSu1QH9rBdiujUf57M99B0qnunhsMIL5tczgJluHJ/2', 'user', NULL, '2024-11-11 23:46:12', '2024-11-11 23:46:12'),
(3, 'anjani', 'anjani@gmail.com', NULL, '$2y$10$4U0kcyLAH5GSLR4llKTnTuf8O9v9pQgpCOWtXptXZQM5BqVhdeMKy', 'user', NULL, '2024-11-20 02:47:33', '2024-11-20 02:47:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_photo_id_foreign` (`photo_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_foreign` (`user_id`);

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_gallery_id_foreign` (`gallery_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agendas`
--
ALTER TABLE `agendas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
