-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 10:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galery`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galery_pertandingans`
--

CREATE TABLE `galery_pertandingans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tiket_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galery_pertandingans`
--

INSERT INTO `galery_pertandingans` (`id`, `tiket_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(4, 6, NULL, NULL),
(5, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `harga_tikets`
--

CREATE TABLE `harga_tikets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tiket_id` bigint(20) UNSIGNED NOT NULL,
  `harga` double NOT NULL,
  `jenis_tiket_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `harga_tikets`
--

INSERT INTO `harga_tikets` (`id`, `tiket_id`, `harga`, `jenis_tiket_id`, `created_at`, `updated_at`) VALUES
(1, 1, 10000, 1, NULL, NULL),
(2, 1, 10000, 3, NULL, NULL),
(3, 1, 10000, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_pertandingans`
--

CREATE TABLE `jadwal_pertandingans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tuan_rumah_id` bigint(20) UNSIGNED NOT NULL,
  `penantang_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwal_pertandingans`
--

INSERT INTO `jadwal_pertandingans` (`id`, `tuan_rumah_id`, `penantang_id`, `tanggal`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2023-05-03', NULL, NULL),
(2, 3, 2, '2023-05-03', NULL, NULL),
(3, 2, 4, '2023-05-12', NULL, NULL),
(4, 2, 5, '2023-05-13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_tikets`
--

CREATE TABLE `jenis_tikets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_tikets`
--

INSERT INTO `jenis_tikets` (`id`, `nama`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'EKONOMI', 'Nonton', NULL, NULL),
(2, 'VIP', 'Nonton', NULL, NULL),
(3, 'UTAMA', 'Nonton', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `harga_tiket_id` bigint(20) UNSIGNED NOT NULL,
  `harga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tiket_id` bigint(20) UNSIGNED NOT NULL,
  `total` double NOT NULL,
  `jumlh_tiket` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `Seat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id`, `harga_tiket_id`, `harga`, `tiket_id`, `total`, `jumlh_tiket`, `tanggal_pembelian`, `Seat`, `created_at`, `updated_at`) VALUES
(5, 2, '10000', 1, 100000, '10', '2023-05-03', 'UTAMA', '2023-05-04 01:31:22', '2023-05-04 01:31:22'),
(27, 3, '10000', 1, 30000, '3', '2023-05-03', 'VIP', '2023-05-09 02:37:47', '2023-05-09 02:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `login_google`
--

CREATE TABLE `login_google` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `metode`
--

CREATE TABLE `metode` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tiket_id` bigint(20) UNSIGNED NOT NULL,
  `keranjang_id` bigint(20) UNSIGNED NOT NULL,
  `logo1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_05_11_000000_create_otps_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_01_064005_create_images_table', 1),
(6, '2023_03_12_044121_create_jenis_tikets', 1),
(7, '2023_03_13_043531_create_tim_ligas', 1),
(8, '2023_03_13_080831_create_tikets', 1),
(9, '2023_03_13_080831_create_tiketss', 1),
(10, '2023_03_14_044235_create_harga_tikets', 1),
(11, '2023_03_15_023025_create_galery_pertandingans_table', 1),
(12, '2023_03_15_023103_create_photos_table', 1),
(13, '2023_03_16_075946_create_jadwal_pertandingans_table', 1),
(14, '2023_04_04_070040_create_keranjang_table', 1),
(15, '2023_04_06_063210_create_pembayaran_table', 1),
(16, '2023_04_13_062039_create_metode_table', 1),
(17, '2023_04_14_040219_create_login_google_table', 1),
(18, '2023_05_02_071143_create_users_table', 1),
(19, '2023_05_03_023808_create_tim_persik_table', 1),
(20, '2023_05_03_061302_create_strukturpembayaran_table', 1),
(21, '2023_05_05_024121_create_replay_table', 2),
(22, '2023_05_04_042702_create_riwayat_table', 3),
(23, '2023_05_09_045409_create_riwayat_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validity` int(11) NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tiket_id` bigint(20) UNSIGNED NOT NULL,
  `harga_tiket_id` bigint(20) UNSIGNED NOT NULL,
  `keranjang_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `stadiun` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `tiket_id`, `harga_tiket_id`, `keranjang_id`, `tanggal_pembelian`, `stadiun`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 5, '2023-05-03', 'Stadiun Manguwoharjo Sleman', '2023-05-04 01:31:52', '2023-05-04 01:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', 'c997bef518ac3e4146c5c6ad38cfecd1f3fd86a7c006072e47c64c16fc9383be', '[\"*\"]', NULL, NULL, '2023-05-04 01:17:41', '2023-05-04 01:17:41'),
(2, 'App\\Models\\User', 1, 'authToken', '385e8ff1afce83534d108650fd008b19f8c7d5c531e01c443754466a7c37d9aa', '[\"*\"]', NULL, NULL, '2023-05-04 01:17:52', '2023-05-04 01:17:52'),
(3, 'App\\Models\\User', 2, 'authToken', '440725b3792918c96739d82e68eff8d5013ffa4247a6805ef8dd1c9b1776966d', '[\"*\"]', NULL, NULL, '2023-05-04 01:23:59', '2023-05-04 01:23:59'),
(4, 'App\\Models\\User', 2, 'authToken', 'aa3d631cb15aae529e45fc37defa01ef9541445d55713e3270f1975e09b7f670', '[\"*\"]', NULL, NULL, '2023-05-04 01:24:07', '2023-05-04 01:24:07'),
(5, 'App\\Models\\User', 2, 'authToken', '0dcebf18f43b439b78d812f1132f8adccc10bfb53376aa64b2cb29d752c9f4bd', '[\"*\"]', NULL, NULL, '2023-05-04 01:24:22', '2023-05-04 01:24:22'),
(6, 'App\\Models\\User', 3, 'authToken', '5f23deb16919e56708bbacc5ecfd4b9c616a81d5b0a56e56e36f74b6dfabdfbb', '[\"*\"]', NULL, NULL, '2023-05-04 01:28:56', '2023-05-04 01:28:56'),
(7, 'App\\Models\\User', 4, 'authToken', 'f16caeea84ae821b3237d9529f978d1a2966f80327436a21d7d0ed6404dd2270', '[\"*\"]', NULL, NULL, '2023-05-04 01:30:16', '2023-05-04 01:30:16'),
(8, 'App\\Models\\User', 4, 'authToken', '18afd55f4230eb1ad80aa920fb2c5e8d3c4fde2bbfa9180985416df7c303d505', '[\"*\"]', NULL, NULL, '2023-05-04 01:30:37', '2023-05-04 01:30:37'),
(9, 'App\\Models\\User', 1, 'authToken', '425d1190f345802318cf29f3ba64e105af40273545a212167226f7b2ea14376a', '[\"*\"]', NULL, NULL, '2023-05-04 01:35:29', '2023-05-04 01:35:29'),
(10, 'App\\Models\\User', 1, 'authToken', '70f48eddb64741483e39b61f1605982eb1cd66bc822d01124648c1ebc59d6786', '[\"*\"]', NULL, NULL, '2023-05-04 01:53:16', '2023-05-04 01:53:16'),
(11, 'App\\Models\\User', 1, 'authToken', 'c447df463363af70da79f7cf64acb38860b7b3623a1674c2c5c733516fefc546', '[\"*\"]', NULL, NULL, '2023-05-04 02:03:27', '2023-05-04 02:03:27'),
(12, 'App\\Models\\User', 1, 'authToken', '31b052a10156307bfad751bb844a90794e7a3f3b599eafc9eedc82bcde05e7de', '[\"*\"]', NULL, NULL, '2023-05-04 19:35:42', '2023-05-04 19:35:42'),
(13, 'App\\Models\\User', 1, 'authToken', '0be83ffe99c7a3f65d048b21ad11fb98829d87a10c821d65421fcdb356b73449', '[\"*\"]', NULL, NULL, '2023-05-04 19:42:02', '2023-05-04 19:42:02'),
(14, 'App\\Models\\User', 4, 'authToken', 'bfab45741f86bfbe6e85d8c3b0881752e4e7261db9de16954ff011d4ab769347', '[\"*\"]', NULL, NULL, '2023-05-04 20:25:33', '2023-05-04 20:25:33'),
(15, 'App\\Models\\User', 4, 'authToken', '447d0f5ba7d2bf08007f273240ff149427a151139250d6d04e913d83d69bd893', '[\"*\"]', NULL, NULL, '2023-05-04 20:26:00', '2023-05-04 20:26:00'),
(16, 'App\\Models\\User', 4, 'authToken', '9776af0e9b105f83ec54188a9f26b529523727e6a97e9f2f0d6fb31feeee0023', '[\"*\"]', NULL, NULL, '2023-05-04 20:26:17', '2023-05-04 20:26:17'),
(17, 'App\\Models\\User', 1, 'authToken', '48d0632f6fa1a278b399055ced42d18777c2221184824c15f25145ea23e75db5', '[\"*\"]', NULL, NULL, '2023-05-04 20:39:50', '2023-05-04 20:39:50'),
(18, 'App\\Models\\User', 1, 'authToken', '1718f26434ccba8b2718e65f639b52ab3d94cc3798a2e8d15892276b8d93e3f6', '[\"*\"]', NULL, NULL, '2023-05-04 20:39:51', '2023-05-04 20:39:51'),
(19, 'App\\Models\\User', 1, 'authToken', '6faa6c706b15b823a29038b39892292fc789a701fe632991d58cc4eaf3e0622b', '[\"*\"]', NULL, NULL, '2023-05-04 20:51:12', '2023-05-04 20:51:12'),
(20, 'App\\Models\\User', 1, 'authToken', '6056fb3b59613b6d930a1286d40e83c2a666b9abb238f87520af5e71b1cb06b4', '[\"*\"]', NULL, NULL, '2023-05-04 21:31:25', '2023-05-04 21:31:25'),
(21, 'App\\Models\\User', 1, 'authToken', '9dc1862ff5b6900c43375902171ea53310b34bc400f1c094008aa27db19a4e79', '[\"*\"]', NULL, NULL, '2023-05-04 21:35:20', '2023-05-04 21:35:20'),
(22, 'App\\Models\\User', 4, 'authToken', '7f7b1f6191f72eff02d5cfcac1fc90cbf71e2f8980b20f99b9d1c702b65d755b', '[\"*\"]', NULL, NULL, '2023-05-05 01:53:03', '2023-05-05 01:53:03'),
(23, 'App\\Models\\User', 1, 'authToken', 'a3b4a90e04258f0a235d71fd2ad163d4f02d03c1a2a73f4e133601b5d26b1237', '[\"*\"]', NULL, NULL, '2023-05-05 18:29:16', '2023-05-05 18:29:16'),
(24, 'App\\Models\\User', 1, 'authToken', '998306f47a3becd0cf686c3f76315bf06b0189cb2f980d95f64209c8d358cd1d', '[\"*\"]', NULL, NULL, '2023-05-05 18:29:20', '2023-05-05 18:29:20'),
(25, 'App\\Models\\User', 1, 'authToken', '8546a02ca343ab364478db046bda3f617bd5ba37eff430460ab8482ccf042a3b', '[\"*\"]', NULL, NULL, '2023-05-07 18:59:04', '2023-05-07 18:59:04'),
(26, 'App\\Models\\User', 1, 'authToken', 'b4eedf45ef3cc6036a249971c7cb0493a88107a01874c16222da8f5698074bc1', '[\"*\"]', NULL, NULL, '2023-05-07 19:27:21', '2023-05-07 19:27:21'),
(27, 'App\\Models\\User', 1, 'authToken', 'cb09ca09bfe22d2024e486ebc96781681b38f9c92d8b01cf315bb5c073602990', '[\"*\"]', NULL, NULL, '2023-05-07 19:31:55', '2023-05-07 19:31:55'),
(28, 'App\\Models\\User', 5, 'authToken', '1e2a43d77e761cc54bb8c9e8199ad1ffb521936eaec2b5d111954fe4328e6f02', '[\"*\"]', NULL, NULL, '2023-05-07 19:36:08', '2023-05-07 19:36:08'),
(29, 'App\\Models\\User', 5, 'authToken', '82723310a80effcd64eb4a687b15ba45ce4d20aa343c1b4a70ec2f011556af47', '[\"*\"]', NULL, NULL, '2023-05-07 19:36:20', '2023-05-07 19:36:20'),
(30, 'App\\Models\\User', 5, 'authToken', '05840ae4204046ae769cb09c615b31daa8f240d103813684a7df26ba6fd20068', '[\"*\"]', NULL, NULL, '2023-05-07 19:52:21', '2023-05-07 19:52:21'),
(31, 'App\\Models\\User', 4, 'authToken', '24fcbbd0493f91f8a4eddc5ca78f1a81a0badabe32d40660362f75ceb3bbce1f', '[\"*\"]', NULL, NULL, '2023-05-07 21:31:29', '2023-05-07 21:31:29'),
(32, 'App\\Models\\User', 4, 'authToken', 'a07893a2bb040b97b36b238449731b8fefd2f8341d06d3e64bc931a3c261eb1f', '[\"*\"]', NULL, NULL, '2023-05-07 21:31:51', '2023-05-07 21:31:51'),
(33, 'App\\Models\\User', 4, 'authToken', '595594269feeb69616a9e7b0a61c93f6931e72a6cabcc589e8efbe2b7d3d405f', '[\"*\"]', NULL, NULL, '2023-05-08 00:10:58', '2023-05-08 00:10:58'),
(34, 'App\\Models\\User', 4, 'authToken', '7b1d6966a72f98a1aaea07cba7dddf29c98dd331a29af6013506231f93c2d80e', '[\"*\"]', NULL, NULL, '2023-05-08 00:11:00', '2023-05-08 00:11:00'),
(35, 'App\\Models\\User', 4, 'authToken', '9a4b7d7199b48829c2fd91366e1b1e3b9fd8dc30513e3cda9b2956c9c376677d', '[\"*\"]', NULL, NULL, '2023-05-08 00:23:49', '2023-05-08 00:23:49'),
(36, 'App\\Models\\User', 4, 'authToken', '01e46df008ca02fe40153d2b73d7525a38e59eb4e6300cd7da7cd293f9781d23', '[\"*\"]', NULL, NULL, '2023-05-08 00:27:55', '2023-05-08 00:27:55'),
(37, 'App\\Models\\User', 4, 'authToken', 'b7847d0b7585537e251ea8d32a86a85c63970f459f2d0764892746cb7c03311b', '[\"*\"]', NULL, NULL, '2023-05-08 00:40:09', '2023-05-08 00:40:09'),
(38, 'App\\Models\\User', 4, 'authToken', 'ecf6aa307f9a71b32c51abceff46baa3048cbe7d7a88933c65bf8195a6c6b391', '[\"*\"]', NULL, NULL, '2023-05-08 01:18:47', '2023-05-08 01:18:47'),
(39, 'App\\Models\\User', 4, 'authToken', '1bb85628070cec8af210d632a0d1099040dcb0c370ddcef838e489ae0c8b7f05', '[\"*\"]', NULL, NULL, '2023-05-08 01:20:17', '2023-05-08 01:20:17'),
(40, 'App\\Models\\User', 4, 'authToken', '8b92522d2ca94c65e4698d59615fbfa4b34b57730eef2b1579535c03ef656656', '[\"*\"]', NULL, NULL, '2023-05-08 01:22:11', '2023-05-08 01:22:11'),
(41, 'App\\Models\\User', 5, 'authToken', '2af6a79d2c4bf5bb67da997629ac3b1bf8c0d5ed3fc055857f8c739617bb6a1c', '[\"*\"]', NULL, NULL, '2023-05-08 18:59:19', '2023-05-08 18:59:19'),
(42, 'App\\Models\\User', 5, 'authToken', '50f8a4b0e0a73091d66d406db7a029d8a608f4b16907c813d2ccca5930d70899', '[\"*\"]', NULL, NULL, '2023-05-08 19:20:01', '2023-05-08 19:20:01'),
(43, 'App\\Models\\User', 4, 'authToken', '055ae96d285579d534af08a282bf68d2a4d7be9dd35c9fdf502d815ae53f9448', '[\"*\"]', NULL, NULL, '2023-05-09 02:03:18', '2023-05-09 02:03:18'),
(44, 'App\\Models\\User', 4, 'authToken', '7a2e16aa6f4a8ecd3e6d0755c5be6f3d2c87fc092df3af341b63e3dc5066f827', '[\"*\"]', NULL, NULL, '2023-05-09 02:05:31', '2023-05-09 02:05:31'),
(45, 'App\\Models\\User', 5, 'authToken', 'ef09955a1a990b785aedbd1c0d857aefff7efd9af499ecebefb7a1b90d9dc550', '[\"*\"]', NULL, NULL, '2023-05-09 19:07:15', '2023-05-09 19:07:15'),
(46, 'App\\Models\\User', 5, 'authToken', 'c5a0852637624222069ec56a620a9804a9a921f1c98b0a548695a76968bddc59', '[\"*\"]', NULL, NULL, '2023-05-12 00:05:36', '2023-05-12 00:05:36'),
(47, 'App\\Models\\User', 5, 'authToken', 'ec6c87c6cd498980a0413db19fe22cacb3ebea77634c47beac0237e6198de778', '[\"*\"]', NULL, NULL, '2023-05-26 18:31:16', '2023-05-26 18:31:16'),
(48, 'App\\Models\\User', 6, 'authToken', '01374b5a1ca2ecfed11e01928edd8f6609baeacc6b658db85f298417dfcd767d', '[\"*\"]', NULL, NULL, '2023-05-26 18:55:35', '2023-05-26 18:55:35'),
(49, 'App\\Models\\User', 6, 'authToken', '5a0b70ee8dafaa43b0e65dd828d747bda1f2734a7916841f729e7f17ec2e6729', '[\"*\"]', NULL, NULL, '2023-05-26 18:56:12', '2023-05-26 18:56:12'),
(50, 'App\\Models\\User', 5, 'authToken', '52d5eb888baa13803f6a140cdb01e17d791a4783e9128d969009bbc4c63afa90', '[\"*\"]', NULL, NULL, '2023-05-26 19:07:03', '2023-05-26 19:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `galery_pertandingan_id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `galery_pertandingan_id`, `path`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 1, 'storage/img/1ad6707f-00b2-47c4-b9f0-84051279ddf8.jpg', 4, '2023-05-04 01:19:03', '2023-05-04 01:19:03'),
(2, 1, 'storage/img/afd58697-dc6f-42c0-a55f-203f3c6d8d64.jpg', 4, '2023-05-04 01:19:10', '2023-05-04 01:19:10'),
(3, 1, 'storage/img/20583aa8-0610-4640-9d31-16aae7fe24a1.jpg', 4, '2023-05-04 01:19:17', '2023-05-04 01:19:17'),
(4, 1, 'storage/img/27d8860b-6c47-48d8-8087-21f39ea60478.jpg', 4, '2023-05-04 01:19:25', '2023-05-04 01:19:25'),
(5, 1, 'storage/img/1e283642-8ec2-488e-a352-714033a3d96d.jpg', 4, '2023-05-04 01:19:31', '2023-05-04 01:19:31'),
(6, 1, 'storage/img/713b2be1-3305-4b31-bb14-b7abbf977d0d.jpg', 4, '2023-05-04 01:19:38', '2023-05-04 01:19:38'),
(7, 1, 'storage/img/11fe6023-7419-4fb9-9a7d-d747b8db35b5.jpg', 4, '2023-05-04 01:19:50', '2023-05-04 01:19:50'),
(8, 1, 'storage/img/6e1b1cf1-e783-40f2-8e84-542f20252188.jpg', 4, '2023-05-04 01:19:53', '2023-05-04 01:19:53'),
(9, 1, 'storage/img/bc365e8e-a80f-4261-86a1-11d57c080346.jpg', 4, '2023-05-04 01:20:06', '2023-05-04 01:20:06'),
(10, 1, 'storage/img/eda1fb27-b71c-493c-8693-7b4ef6afdce2.jpg', 4, '2023-05-04 01:20:16', '2023-05-04 01:20:16'),
(11, 4, 'storage/img/dc44fda6-0ed6-43a5-a4d5-6b7ef010845c.jpg', 4, '2023-05-08 19:49:48', '2023-05-08 19:49:48'),
(12, 4, 'storage/img/a292a2b0-5bf0-43b2-93ed-fa6c35fde66f.jpg', 4, '2023-05-08 19:49:56', '2023-05-08 19:49:56'),
(13, 4, 'storage/img/eed39054-c5ad-43f5-b114-c41fec366938.jpg', 4, '2023-05-08 19:50:02', '2023-05-08 19:50:02'),
(14, 4, 'storage/img/7bed0897-efaa-4a00-ade3-25291f0a4046.jpg', 4, '2023-05-08 19:50:10', '2023-05-08 19:50:10'),
(15, 4, 'storage/img/27201eec-c397-4a05-858d-72d33fd15d24.jpg', 4, '2023-05-08 19:50:17', '2023-05-08 19:50:17'),
(16, 4, 'storage/img/366ab3d9-e637-4d85-95ef-4fe8d95e7200.jpg', 4, '2023-05-08 19:50:23', '2023-05-08 19:50:23'),
(17, 4, 'storage/img/daff2b40-e17c-44f5-b093-1dad3f798d2a.jpg', 4, '2023-05-08 19:50:30', '2023-05-08 19:50:30'),
(18, 4, 'storage/img/fb1973c9-f908-48e7-b0a6-6d6f72d6d40b.jpg', 4, '2023-05-08 19:50:37', '2023-05-08 19:50:37'),
(19, 4, 'storage/img/49702e8c-2f99-4cba-ba20-62c3d318c096.jpg', 4, '2023-05-08 19:50:47', '2023-05-08 19:50:47'),
(20, 4, 'storage/img/efab9bde-e581-4664-83bd-836f0f207eea.jpg', 4, '2023-05-08 19:50:54', '2023-05-08 19:50:54'),
(21, 5, 'storage/img/88aef1db-3a57-476c-b863-d8eef5624cf1.jpg', 4, '2023-05-08 19:51:08', '2023-05-08 19:51:08'),
(22, 5, 'storage/img/dec05677-392b-4e11-8126-1cd4eb0c3084.jpg', 4, '2023-05-08 19:51:18', '2023-05-08 19:51:18'),
(23, 5, 'storage/img/654da404-5acb-4de1-959f-4b5762990c85.jpg', 4, '2023-05-08 19:51:26', '2023-05-08 19:51:26'),
(24, 5, 'storage/img/947dcd77-7942-475a-be80-45008adfa3ad.jpg', 4, '2023-05-08 19:51:35', '2023-05-08 19:51:35'),
(25, 5, 'storage/img/243111e2-f88b-4d4d-ad99-044f687d7468.jpg', 4, '2023-05-08 19:51:42', '2023-05-08 19:51:42'),
(26, 5, 'storage/img/90892b79-f839-41d9-9b01-99af2cf51727.jpg', 4, '2023-05-08 19:51:49', '2023-05-08 19:51:49'),
(27, 5, 'storage/img/8dd7bd27-4ae4-4a37-ab75-69d8e63864ea.jpg', 4, '2023-05-08 19:51:57', '2023-05-08 19:51:57'),
(28, 5, 'storage/img/fa27d241-4364-4d38-9481-c95099670a10.jpg', 4, '2023-05-08 19:52:04', '2023-05-08 19:52:04'),
(29, 5, 'storage/img/8cf0165a-d947-44fc-bd4d-6ccba41e8f75.jpg', 4, '2023-05-08 19:52:11', '2023-05-08 19:52:11'),
(30, 5, 'storage/img/fce4e96b-be42-4d4c-b8b8-29fb70dd2c36.jpg', 4, '2023-05-08 19:52:19', '2023-05-08 19:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `replay`
--

CREATE TABLE `replay` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tuan_rumah_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penantang_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tiket_id` bigint(20) UNSIGNED NOT NULL,
  `seat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembayaran` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id`, `tiket_id`, `seat`, `pembayaran`, `created_at`, `updated_at`) VALUES
(1, 7, 'EKONOMI', 'BERHASIL', NULL, NULL),
(2, 1, 'VIP', 'EXPIRED', NULL, NULL),
(20, 1, 'VIP', 'BERHASIL', '2023-05-09 02:46:14', '2023-05-09 02:46:14'),
(21, 1, 'VIP', 'BERHASIL', '2023-05-09 19:08:46', '2023-05-09 19:08:46'),
(22, 1, 'VIP', 'EXPIRED', '2023-05-12 00:07:54', '2023-05-12 00:07:54'),
(23, 1, 'VIP', 'BERHASIL', '2023-05-12 00:08:22', '2023-05-12 00:08:22'),
(24, 1, 'VIP', 'BERHASIL', '2023-05-26 18:32:10', '2023-05-26 18:32:10'),
(25, 1, 'VIP', 'EXPIRED', '2023-05-26 18:58:42', '2023-05-26 18:58:42'),
(26, 1, 'VIP', 'BERHASIL', '2023-05-26 18:58:53', '2023-05-26 18:58:53'),
(27, 1, 'VIP', 'BERHASIL', '2023-05-26 18:58:55', '2023-05-26 18:58:55'),
(28, 1, 'VIP', 'BERHASIL', '2023-05-26 19:08:19', '2023-05-26 19:08:19'),
(29, 1, 'VIP', 'EXPIRED', '2023-05-26 19:09:23', '2023-05-26 19:09:23'),
(30, 1, 'VIP', 'EXPIRED', '2023-05-26 19:11:53', '2023-05-26 19:11:53'),
(31, 1, 'VIP', 'BERHASIL', '2023-06-26 01:09:21', '2023-06-26 01:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `strukturpembayaran`
--

CREATE TABLE `strukturpembayaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_transaksi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tiket_id` bigint(20) UNSIGNED NOT NULL,
  `harga_tiket_id` bigint(20) UNSIGNED NOT NULL,
  `keranjang_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `pembayaran` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_virtual_account` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `strukturpembayaran`
--

INSERT INTO `strukturpembayaran` (`id`, `nomor_transaksi`, `tiket_id`, `harga_tiket_id`, `keranjang_id`, `tanggal`, `pembayaran`, `nomor_virtual_account`, `created_at`, `updated_at`) VALUES
(1, 'GK8865209099', 6, 2, 5, '2023-03-27', 'BCA', '9956243109853', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tikets`
--

CREATE TABLE `tikets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tuan_rumah_id` bigint(20) UNSIGNED NOT NULL,
  `penantang_id` bigint(20) UNSIGNED NOT NULL,
  `stadiun` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tikets`
--

INSERT INTO `tikets` (`id`, `tuan_rumah_id`, `penantang_id`, `stadiun`, `tanggal`, `created_at`, `updated_at`) VALUES
(1, 14, 15, 'Stadiun Manguwoharjo Sleman', '2023-05-03', NULL, NULL),
(6, 12, 14, 'Stadiun Menak Sopal', '2023-05-08', NULL, NULL),
(7, 17, 16, 'Stadiun Gudang Garam', '2023-05-12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tim_ligas`
--

CREATE TABLE `tim_ligas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stadiun` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tim_ligas`
--

INSERT INTO `tim_ligas` (`id`, `nama`, `stadiun`, `keterangan`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Bali United', 'menaksopal', 'nonton', 'storage/img/ae6360eb-6c25-4961-a01a-65d7c60ca302.jpg', '2023-05-04 01:11:12', '2023-05-04 01:11:12'),
(2, 'Persik Kediri', 'menaksopal', 'nonton', 'storage/img/61f7160d-13e0-473f-bbfb-416f91d63cfc.jpg', '2023-05-04 01:10:57', '2023-05-04 01:10:57'),
(3, 'Arema Fc', 'menaksopal', 'nonton', 'storage/img/ca171cb8-da16-414e-8ec2-4b48934cb663.jpg', '2023-05-04 01:10:35', '2023-05-04 01:10:35'),
(4, 'PSS Sleman', 'Stadiun Gudang Garam', 'nonton', 'storage/img/20941da0-4636-4e9c-b33b-978e98f84894.jpg', '2023-05-08 19:46:03', '2023-05-08 19:46:03'),
(5, 'Rans Entertaiment', 'Stadiun Gudang Garam', 'nonton', 'storage/img/39730bca-de18-4280-b9e7-f06bca863966.jpg', '2023-05-08 19:47:10', '2023-05-08 19:47:10'),
(12, 'Arema Fc', 'Stadiun Manguwoharjo Sleman', 'nonton', 'storage/img/cf0b3ebd-3df7-4458-86bc-b4a4974a7d1f.jpg', '2023-05-05 00:41:21', '2023-05-05 00:41:21'),
(14, 'Persik Kediri', 'menaksopal', 'nonton', 'storage/img/5152fb79-4854-44e4-a790-0828618bd6a3.jpg', '2023-05-04 01:12:54', '2023-05-04 01:12:54'),
(15, 'Bali United', 'menaksopal', 'nonton', 'storage/img/b36d05e9-70ca-4032-a0f7-9fddc2cd1bde.jpg', '2023-05-04 01:12:37', '2023-05-04 01:12:37'),
(16, 'PSS Sleman', 'Stadiun Gudang Garam', 'nonton', 'storage/img/4ab5a017-378c-4e8f-9a31-0daf480ae45f.jpg', '2023-05-08 19:43:05', '2023-05-08 19:43:05'),
(17, 'Persik Kediri', 'Stadiun Gudang Garam', 'nonton', 'storage/img/fe89c2af-87d4-4b66-bc0e-8214328da8f5.jpg', '2023-05-08 19:43:24', '2023-05-08 19:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `tim_persik`
--

CREATE TABLE `tim_persik` (
  `id` int(11) NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kewarganegaraan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_aktif` tinyint(1) NOT NULL,
  `url_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posisi_pemain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tim_persik`
--

INSERT INTO `tim_persik` (`id`, `nama`, `keterangan`, `kewarganegaraan`, `is_aktif`, `url_logo`, `posisi_pemain`, `created_at`, `updated_at`) VALUES
(5, 'Fitra ridwan', 'storage/img/c9b53046-13ff-40be-820f-263c229af0f6.png', 'Indonesia', 5, 'storage/img/fb0b6406-14c3-46db-8f5b-2daaa23d14a8.png', 'GK', '2023-05-04 01:08:01', '2023-05-04 01:08:01'),
(6, 'Faris adimata', 'storage/img/a85bcd28-fcf5-4884-a65c-648a46bf836e.png', 'Indonesia', 6, 'storage/img/c63993e7-ee6d-48d8-b61a-8c1b40790f32.png', 'MF', '2023-05-04 01:08:21', '2023-05-04 01:08:21'),
(7, 'Deny saputra', 'storage/img/b680299c-5d6b-4978-a002-d35024f7939e.png', 'Indonesia', 7, 'storage/img/82d46cbe-c0d7-4621-95dd-639f8e5323cf.png', 'GK', '2023-05-04 01:08:47', '2023-05-04 01:08:47'),
(8, 'Bagos satrio', 'storage/img/2eab0a35-27a9-4525-9911-e08d18ae0830.png', 'Indonesia', 8, 'storage/img/1509a02f-c669-4715-af56-cd51ed63a654.png', 'GK', '2023-05-04 01:09:15', '2023-05-04 01:09:15'),
(9, 'Arthur irawan', 'storage/img/94a378a1-a824-491f-a477-2e2838b60336.png', 'Indonesia', 9, 'storage/img/18f680ca-086d-4c6c-a41e-6dbeb8095050.png', 'MF', '2023-05-04 01:09:47', '2023-05-04 01:09:47'),
(10, 'Agil munawar', 'storage/img/958c7354-5b87-445d-b025-7d118d21d037.png', 'Indonesia', 10, 'storage/img/b6ebc8ca-bda9-42b0-a81a-871f4efe366e.png', 'MF', '2023-05-04 01:10:14', '2023-05-04 01:10:14'),
(1, 'Muhammad rifaldi', 'storage/img/364d9764-e4dc-41a1-9834-3832b19a5561.png', 'Indonesia', 1, 'storage/img/1c97132e-419e-45e9-8c2b-23693d732460.png', 'GK', '2023-05-04 19:36:54', '2023-05-04 19:36:54'),
(4, 'Rahel radiansyah', 'storage/img/13a9db9c-76ac-4dab-b3a3-f2e21a1d8674.png', 'Indonesia', 4, 'storage/img/a588f02e-81fc-4d71-9024-c6250b2bdeb8.png', 'MF', '2023-05-07 18:34:46', '2023-05-07 18:34:46'),
(2, 'Rohit chan', 'storage/img/de0c433b-f882-40b3-bf5d-e6456e17a71d.png', 'Indonesia', 2, 'storage/img/cb99a247-ce4d-4b3f-b9bb-8c1a54f10a74.png', 'MF', '2023-05-07 18:35:30', '2023-05-07 18:35:30'),
(3, 'Vava mario', 'storage/img/6722a112-99d1-4bc8-ba1e-56f72b280306.png', 'Indonesia', 3, 'storage/img/2fc2a0c7-c9b0-4f02-9112-3b5a9a03186f.png', 'MF', '2023-05-07 19:45:29', '2023-05-07 19:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `google_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bagus', 'wahyubaguss@gmail.com', NULL, '$2y$10$RsmjAyaIkejGPPgOYmp6H.XEj3TKq4UF/ir37riD5jGOoqd0bm1Qu', NULL, NULL, '2023-05-04 01:17:41', '2023-05-04 01:17:41'),
(2, 'dion', 'dion@gmail.com', NULL, '$2y$10$Zpra4jeRFfqup.uL/c8h8O3nN8PO/G8k.CrN3BUyVXiJqfuYTBYNm', NULL, NULL, '2023-05-04 01:23:59', '2023-05-04 01:23:59'),
(3, 'kusukakamu', 'diazkaka22@gmail.com', NULL, '$2y$10$LsMURZheRek4vruyhcfzJ.2OWYMya9o2DqwTGocp4VNQnKHa4bZ9.', NULL, NULL, '2023-05-04 01:28:56', '2023-05-04 01:28:56'),
(4, 'diazkk22', 'diazkaka2@gmail.com', NULL, '$2y$10$x1BQB9gslVa2lDpX1SZMd.NgZm.qcyNoFYFvN4ntTWh4O5iLs0CIS', NULL, NULL, '2023-05-04 01:30:16', '2023-05-04 01:30:16'),
(5, 'diaz', 'wahyubagusss@gmail.com', NULL, '$2y$10$OPHs/zJ7eN2tva96QvnwDO5KP9JxT7Ups.f.t90Hq7QE.YkPpWRM2', NULL, NULL, '2023-05-07 19:36:08', '2023-05-07 19:36:08'),
(6, 'kaka', 'kakaibanes@gmail.com', NULL, '$2y$10$DxjrlDRbiUctOZpshw38I..3wuWtXhzBvb82rch5hEksILe5HfYyO', NULL, NULL, '2023-05-26 18:55:35', '2023-05-26 18:55:35');

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
-- Indexes for table `galery_pertandingans`
--
ALTER TABLE `galery_pertandingans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galery_pertandingans_tiket_id_foreign` (`tiket_id`);

--
-- Indexes for table `harga_tikets`
--
ALTER TABLE `harga_tikets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `harga_tikets_tiket_id_foreign` (`tiket_id`),
  ADD KEY `harga_tikets_jenis_tiket_id_foreign` (`jenis_tiket_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal_pertandingans`
--
ALTER TABLE `jadwal_pertandingans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_pertandingans_tuan_rumah_id_foreign` (`tuan_rumah_id`),
  ADD KEY `jadwal_pertandingans_penantang_id_foreign` (`penantang_id`);

--
-- Indexes for table `jenis_tikets`
--
ALTER TABLE `jenis_tikets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keranjang_harga_tiket_id_foreign` (`harga_tiket_id`),
  ADD KEY `keranjang_tiket_id_foreign` (`tiket_id`);

--
-- Indexes for table `login_google`
--
ALTER TABLE `login_google`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_google_email_unique` (`email`);

--
-- Indexes for table `metode`
--
ALTER TABLE `metode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metode_tiket_id_foreign` (`tiket_id`),
  ADD KEY `metode_keranjang_id_foreign` (`keranjang_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otps_id_index` (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayaran_tiket_id_foreign` (`tiket_id`),
  ADD KEY `pembayaran_harga_tiket_id_foreign` (`harga_tiket_id`),
  ADD KEY `pembayaran_keranjang_id_foreign` (`keranjang_id`);

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
  ADD KEY `photos_galery_pertandingan_id_foreign` (`galery_pertandingan_id`);

--
-- Indexes for table `replay`
--
ALTER TABLE `replay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_tiket_id_foreign` (`tiket_id`);

--
-- Indexes for table `strukturpembayaran`
--
ALTER TABLE `strukturpembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strukturpembayaran_tiket_id_foreign` (`tiket_id`),
  ADD KEY `strukturpembayaran_harga_tiket_id_foreign` (`harga_tiket_id`),
  ADD KEY `strukturpembayaran_keranjang_id_foreign` (`keranjang_id`);

--
-- Indexes for table `tikets`
--
ALTER TABLE `tikets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tikets_tuan_rumah_id_foreign` (`tuan_rumah_id`),
  ADD KEY `tikets_penantang_id_foreign` (`penantang_id`);

--
-- Indexes for table `tim_ligas`
--
ALTER TABLE `tim_ligas`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galery_pertandingans`
--
ALTER TABLE `galery_pertandingans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `harga_tikets`
--
ALTER TABLE `harga_tikets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwal_pertandingans`
--
ALTER TABLE `jadwal_pertandingans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jenis_tikets`
--
ALTER TABLE `jenis_tikets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `login_google`
--
ALTER TABLE `login_google`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metode`
--
ALTER TABLE `metode`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `replay`
--
ALTER TABLE `replay`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `strukturpembayaran`
--
ALTER TABLE `strukturpembayaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tikets`
--
ALTER TABLE `tikets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tim_ligas`
--
ALTER TABLE `tim_ligas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `galery_pertandingans`
--
ALTER TABLE `galery_pertandingans`
  ADD CONSTRAINT `galery_pertandingans_tiket_id_foreign` FOREIGN KEY (`tiket_id`) REFERENCES `tikets` (`id`);

--
-- Constraints for table `harga_tikets`
--
ALTER TABLE `harga_tikets`
  ADD CONSTRAINT `harga_tikets_jenis_tiket_id_foreign` FOREIGN KEY (`jenis_tiket_id`) REFERENCES `jenis_tikets` (`id`),
  ADD CONSTRAINT `harga_tikets_tiket_id_foreign` FOREIGN KEY (`tiket_id`) REFERENCES `tikets` (`id`);

--
-- Constraints for table `jadwal_pertandingans`
--
ALTER TABLE `jadwal_pertandingans`
  ADD CONSTRAINT `jadwal_pertandingans_penantang_id_foreign` FOREIGN KEY (`penantang_id`) REFERENCES `tim_ligas` (`id`),
  ADD CONSTRAINT `jadwal_pertandingans_tuan_rumah_id_foreign` FOREIGN KEY (`tuan_rumah_id`) REFERENCES `tim_ligas` (`id`);

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_harga_tiket_id_foreign` FOREIGN KEY (`harga_tiket_id`) REFERENCES `harga_tikets` (`id`),
  ADD CONSTRAINT `keranjang_tiket_id_foreign` FOREIGN KEY (`tiket_id`) REFERENCES `tikets` (`id`);

--
-- Constraints for table `metode`
--
ALTER TABLE `metode`
  ADD CONSTRAINT `metode_keranjang_id_foreign` FOREIGN KEY (`keranjang_id`) REFERENCES `keranjang` (`id`),
  ADD CONSTRAINT `metode_tiket_id_foreign` FOREIGN KEY (`tiket_id`) REFERENCES `tikets` (`id`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_harga_tiket_id_foreign` FOREIGN KEY (`harga_tiket_id`) REFERENCES `harga_tikets` (`id`),
  ADD CONSTRAINT `pembayaran_keranjang_id_foreign` FOREIGN KEY (`keranjang_id`) REFERENCES `keranjang` (`id`),
  ADD CONSTRAINT `pembayaran_tiket_id_foreign` FOREIGN KEY (`tiket_id`) REFERENCES `tikets` (`id`);

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_galery_pertandingan_id_foreign` FOREIGN KEY (`galery_pertandingan_id`) REFERENCES `galery_pertandingans` (`id`);

--
-- Constraints for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `riwayat_tiket_id_foreign` FOREIGN KEY (`tiket_id`) REFERENCES `tikets` (`id`);

--
-- Constraints for table `strukturpembayaran`
--
ALTER TABLE `strukturpembayaran`
  ADD CONSTRAINT `strukturpembayaran_harga_tiket_id_foreign` FOREIGN KEY (`harga_tiket_id`) REFERENCES `harga_tikets` (`id`),
  ADD CONSTRAINT `strukturpembayaran_keranjang_id_foreign` FOREIGN KEY (`keranjang_id`) REFERENCES `keranjang` (`id`),
  ADD CONSTRAINT `strukturpembayaran_tiket_id_foreign` FOREIGN KEY (`tiket_id`) REFERENCES `tikets` (`id`);

--
-- Constraints for table `tikets`
--
ALTER TABLE `tikets`
  ADD CONSTRAINT `tikets_penantang_id_foreign` FOREIGN KEY (`penantang_id`) REFERENCES `tim_ligas` (`id`),
  ADD CONSTRAINT `tikets_tuan_rumah_id_foreign` FOREIGN KEY (`tuan_rumah_id`) REFERENCES `tim_ligas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
