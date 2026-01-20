-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 20, 2026 at 11:07 AM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u445737611_shakeeb`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `title`, `is_enable`, `created_at`, `updated_at`) VALUES
(3, 'size', 1, '2025-06-01 19:42:20', '2025-06-01 19:42:20'),
(4, 'ML', 0, '2025-06-16 09:53:24', '2025-06-16 09:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `backlog` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `backup_date` date NOT NULL,
  `backup_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backups`
--

INSERT INTO `backups` (`id`, `backlog`, `action`, `backup_date`, `backup_time`, `created_at`, `updated_at`) VALUES
(19, 'Backup file created: u445737611_shakeeb_backup_2026_01_20_152850.sql', 'Database Backup', '2026-01-20', '15:28:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image_id` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_enable` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `image_id`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `is_enable`) VALUES
(4, 'AJMAL', 'ajmal', 'filemanager/684805f6c932d.png', 'Ajmal', 'Ajmal', 'Ajmal', '2025-06-10 10:16:57', '2025-06-27 07:46:12', 1),
(5, 'COACH', 'coach', 'filemanager/684805eab6009.png', 'COACH', 'COACH', 'COACH', '2025-06-10 10:17:22', '2025-06-10 10:17:22', 1),
(6, 'ELIZABETH ARDEN', 'elizabeth-arden', 'filemanager/684805db1f72d.png', 'ELIZABETH ARDEN', 'ELIZABETH ARDEN', 'ELIZABETH ARDEN', '2025-06-10 10:17:37', '2025-09-22 05:38:28', 1),
(7, 'JIMMY CHOO', 'jimmy-choo', 'filemanager/684805d0215d8.png', 'JIMMY CHOO', 'JIMMY CHOO', 'JIMMY CHOO', '2025-06-10 10:17:55', '2025-09-22 05:38:48', 1),
(8, 'JOHN VARVATOS', 'john-varvatos', 'filemanager/684805c11c433.png', 'John Varvatos', 'John Varvatos', 'John Varvatos', '2025-06-10 10:18:13', '2025-09-22 05:39:16', 1),
(9, 'JUICY COUTRE', 'juicy-coutre', 'filemanager/684805b5ef40b.png', 'Juicy Couture', 'Juicy Couture', 'Juicy Couture', '2025-06-10 10:18:27', '2025-09-22 05:39:48', 1),
(10, 'KENNETH COLE', 'kenneth-cole', 'filemanager/6848059d6fcbb.png', 'Kenneth Cole', 'Kenneth Cole', 'Kenneth Cole', '2025-06-10 10:18:46', '2025-09-22 05:40:06', 1),
(11, 'MANCERA', 'mancera', 'filemanager/684805893f08b.png', 'MANCERA', 'MANCERA', 'MANCERA', '2025-06-10 10:19:12', '2025-06-10 10:19:12', 1),
(12, 'MONT BLANC', 'mont-blanc', 'filemanager/6848057d977f0.png', 'Mont Blanc', 'Mont Blanc', 'Mont Blanc', '2025-06-10 10:19:29', '2025-09-22 05:40:18', 1),
(13, 'MONTALE', 'montale', 'filemanager/6848056d5e5ba.png', 'MONTALE', 'MONTALE', 'MONTALE', '2025-06-10 10:19:46', '2025-06-10 10:19:46', 1),
(14, 'TRUSSARDI', 'trussardi', 'filemanager/684805602c5df.png', 'TRUSSARDI', 'TRUSSARDI', 'TRUSSARDI', '2025-06-10 10:20:48', '2025-09-22 05:37:31', 1),
(15, 'VICTORINOX', 'victorinox', 'filemanager/68480550f0ae6.png', 'VICTORINOX', 'VICTORINOX', 'VICTORINOX', '2025-06-10 10:21:01', '2025-06-10 10:21:01', 1),
(16, 'PRADA', 'prada', 'filemanager/68c2e5086b6d8.png', 'PRADA', 'PRADA', 'PRADA', '2025-09-11 15:05:01', '2025-09-11 15:05:01', 1),
(17, 'IMPRESSIONS', 'impressions', 'filemanager/69294bf377d5c.png', 'IMPRESSIONS', 'IMPRESSIONS', 'IMPRESSIONS', '2025-11-28 07:16:43', '2025-12-27 09:16:46', 1),
(18, 'LUXURY PERFUMES', 'luxury-perfumes', 'filemanager/694f9b59398c1.png', 'LUXURY PERFUMES', 'LUXURY PERFUMES', 'LUXURY PERFUMES', '2025-12-27 08:44:57', '2025-12-27 08:44:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `image_id` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `details`, `image_id`, `parent_id`, `level`, `is_featured`, `sort`, `is_enable`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(42, 'Perfumes', 'perfumes', 'Perfumes', 'filemanager/683c63121df3f.jpeg', NULL, 1, 0, 1, 0, 'Perfumes', 'Perfumes', 'Perfumes', '2025-06-01 19:26:42', '2025-06-01 19:27:32'),
(46, 'Impressions', 'impressions', 'Impressions', 'filemanager/683c64084f063.jpeg', NULL, 1, 1, 2, 1, 'Impressions', 'Impressions', 'Impressions', '2025-11-28 05:35:37', '2025-11-29 06:51:43'),
(48, 'Luxury Perfumes (Order on Demand)', 'luxury-perfumes-order-on-demand-', NULL, 'filemanager/694f9b59398c1.png', NULL, 1, 1, 3, 1, 'LUXURY PERFUMES', 'LUXURY PERFUMES', 'LUXURY PERFUMES', '2025-12-27 07:59:00', '2025-12-27 09:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `image_id` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `title`, `slug`, `details`, `sort`, `image_id`, `meta_title`, `meta_description`, `meta_keywords`, `is_enable`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Mens', 'mens', 'favourite pieces from Mens Collections', 2, NULL, NULL, NULL, NULL, 1, 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(2, 'Womens', 'womens', 'favourite pieces from Womens Collections', 3, NULL, NULL, NULL, NULL, 1, 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(7, 'Unisex', 'unisex', 'UNISEX', 4, 'filemanager/GirlsShortsSummer.jpeg', NULL, NULL, NULL, 1, 1, '2025-06-12 05:24:12', '2025-06-12 18:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filemanager`
--

CREATE TABLE `filemanager` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `filename` text NOT NULL,
  `size` double DEFAULT NULL,
  `extension` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `grouping` text NOT NULL DEFAULT 'others'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filemanager`
--

INSERT INTO `filemanager` (`id`, `title`, `description`, `path`, `filename`, `size`, `extension`, `type`, `created_by`, `created_at`, `updated_at`, `is_enable`, `grouping`) VALUES
(28, 'logo', 'logo', 'filemanager/684b2226c64cb.png', 'logo.png', 1529662, 'png', 'image/png', NULL, '2024-09-25 16:48:48', '2025-06-12 18:53:26', 1, 'others'),
(51, 'banner3', 'banner3', 'filemanager/683cab80b1cd2.jpg', '683c4f50b3f6d.avif', 164261, 'jpg', 'image/jpeg', NULL, '2025-06-01 18:02:08', '2025-06-01 19:35:28', 1, 'banner'),
(53, 'category perfumes', 'category perfumes', 'filemanager/683c63121df3f.jpeg', '683c63121df3f.jpeg', 197756, 'jpeg', 'image/jpeg', NULL, '2025-06-01 19:26:26', '2025-06-01 19:26:26', 1, 'perfumes'),
(54, 'Gift sets', 'Gift sets', 'filemanager/683c639148ada.jpeg', '683c639148ada.jpeg', 239433, 'jpeg', 'image/jpeg', NULL, '2025-06-01 19:28:33', '2025-06-01 19:28:33', 1, 'Gift sets'),
(55, 'Health & Beauty', 'Health & Beauty', 'filemanager/683c64084f063.jpeg', '683c64084f063.jpeg', 205767, 'jpeg', 'image/jpeg', NULL, '2025-06-01 19:30:32', '2025-06-01 19:30:32', 1, 'Health & Beauty'),
(56, 'Watchescat', 'Watches', 'filemanager/683c646a74480.jpeg', '683c646a74480.jpeg', 292523, 'jpeg', 'image/jpeg', NULL, '2025-06-01 19:32:10', '2025-06-01 19:32:10', 1, 'Watches'),
(63, 'VICTORINOX', 'VICTORINOX', 'filemanager/68480550f0ae6.png', '68480550f0ae6.png', 35465, 'png', 'image/png', NULL, '2025-06-10 10:13:36', '2025-06-10 10:13:36', 1, 'others'),
(64, 'Trussardi', 'Trussardi', 'filemanager/684805602c5df.png', '684805602c5df.png', 26847, 'png', 'image/png', NULL, '2025-06-10 10:13:52', '2025-06-10 10:13:52', 1, 'others'),
(65, 'MONTALE', 'MONTALE', 'filemanager/6848056d5e5ba.png', '6848056d5e5ba.png', 26873, 'png', 'image/png', NULL, '2025-06-10 10:14:05', '2025-06-10 10:14:05', 1, 'others'),
(66, 'Mont Blanc', 'Mont Blanc', 'filemanager/6848057d977f0.png', '6848057d977f0.png', 33812, 'png', 'image/png', NULL, '2025-06-10 10:14:21', '2025-06-10 10:14:21', 1, 'others'),
(67, 'MANCERA', 'MANCERA', 'filemanager/684805893f08b.png', '684805893f08b.png', 31347, 'png', 'image/png', NULL, '2025-06-10 10:14:33', '2025-06-10 10:14:33', 1, 'others'),
(68, 'Kenneth Cole', 'Kenneth Cole', 'filemanager/6848059d6fcbb.png', '6848059d6fcbb.png', 26456, 'png', 'image/png', NULL, '2025-06-10 10:14:53', '2025-06-10 10:14:53', 1, 'others'),
(69, 'Juicy Couture', 'Juicy Couture', 'filemanager/684805b5ef40b.png', '684805b5ef40b.png', 28295, 'png', 'image/png', NULL, '2025-06-10 10:15:17', '2025-06-10 10:15:17', 1, 'others'),
(70, 'John Varvatos', 'John Varvatos', 'filemanager/684805c11c433.png', '684805c11c433.png', 22809, 'png', 'image/png', NULL, '2025-06-10 10:15:29', '2025-06-10 10:15:29', 1, 'others'),
(71, 'Jimmy Choo', 'Jimmy Choo', 'filemanager/684805d0215d8.png', '684805d0215d8.png', 31375, 'png', 'image/png', NULL, '2025-06-10 10:15:44', '2025-06-10 10:15:44', 1, 'others'),
(72, 'Elizabeth Arden', 'Elizabeth Arden', 'filemanager/684805db1f72d.png', '684805db1f72d.png', 27327, 'png', 'image/png', NULL, '2025-06-10 10:15:55', '2025-06-10 10:15:55', 1, 'others'),
(73, 'COACH logo', 'COACH', 'filemanager/684805eab6009.png', '684805eab6009.png', 40154, 'png', 'image/png', NULL, '2025-06-10 10:16:10', '2025-06-10 10:16:10', 1, 'others'),
(74, 'ajmal logo', 'ajmal logo', 'filemanager/684805f6c932d.png', '684805f6c932d.png', 54978, 'png', 'image/png', NULL, '2025-06-10 10:16:22', '2025-06-10 10:16:22', 1, 'others'),
(75, '1001 NIGHTS EDP', '1001 NIGHTS EDP', 'filemanager/68481c3624d1c.jpg', '68481c3624d1c.jpg', 248694, 'jpg', 'image/jpeg', NULL, '2025-06-10 11:51:18', '2025-06-10 11:51:18', 1, 'others'),
(76, '1001 NIGHTS EDP3', '1001 NIGHTS EDP3', 'filemanager/68481c5f7a1a1.jpg', '68481c5f7a1a1.jpg', 131381, 'jpg', 'image/jpeg', NULL, '2025-06-10 11:51:59', '2025-06-10 11:51:59', 1, 'others'),
(77, '1001 NIGHTS EDP2', '1001 NIGHTS EDP2', 'filemanager/68481c689bde2.jpg', '68481c689bde2.jpg', 197471, 'jpg', 'image/jpeg', NULL, '2025-06-10 11:52:08', '2025-06-10 11:52:08', 1, 'others'),
(78, 'AMBER MUSC', 'AMBER MUSC', 'filemanager/68481d142a1e0.jpg', '68481d142a1e0.jpg', 171083, 'jpg', 'image/jpeg', NULL, '2025-06-10 11:55:00', '2025-06-10 11:55:00', 1, 'others'),
(79, 'AMBER MUSC2', 'AMBER MUSC2', 'filemanager/68481d1fb3fc8.jpg', '68481d1fb3fc8.jpg', 78180, 'jpg', 'image/jpeg', NULL, '2025-06-10 11:55:11', '2025-06-10 11:55:11', 1, 'others'),
(80, 'AMBER MUSC3', 'AMBER MUSC3', 'filemanager/68481d2a5bf7b.jpg', '68481d2a5bf7b.jpg', 137854, 'jpg', 'image/jpeg', NULL, '2025-06-10 11:55:22', '2025-06-10 11:55:22', 1, 'others'),
(81, 'AMBER WOOD', 'AMBER WOOD', 'filemanager/68481dbc2c378.jpg', '68481dbc2c378.jpg', 274961, 'jpg', 'image/jpeg', NULL, '2025-06-10 11:57:48', '2025-06-10 11:57:48', 1, 'others'),
(82, 'AMBER WOOD2', 'AMBER WOOD2', 'filemanager/68481dc4b7122.jpg', '68481dc4b7122.jpg', 100052, 'jpg', 'image/jpeg', NULL, '2025-06-10 11:57:56', '2025-06-10 11:57:56', 1, 'others'),
(83, 'AMBER WOOD3', 'AMBER WOOD3', 'filemanager/68481dce4d797.jpg', '68481dce4d797.jpg', 227108, 'jpg', 'image/jpeg', NULL, '2025-06-10 11:58:06', '2025-06-10 11:58:06', 1, 'others'),
(84, 'ARISTOCRAT HER', 'ARISTOCRAT HER', 'filemanager/684820d93bc30.jpg', '684820d93bc30.jpg', 268115, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:11:05', '2025-06-10 12:11:05', 1, 'others'),
(85, 'ARISTOCRAT HER2', 'ARISTOCRAT HER2', 'filemanager/684820e8b7170.jpg', '684820e8b7170.jpg', 140342, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:11:20', '2025-06-10 12:11:20', 1, 'others'),
(86, 'ARISTOCRAT HER3', 'ARISTOCRAT HER3', 'filemanager/684820f50dab8.jpg', '684820f50dab8.jpg', 158823, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:11:33', '2025-06-10 12:11:33', 1, 'others'),
(87, 'ARISTOCRAT HIM', 'ARISTOCRAT HIM', 'filemanager/684822f162fb0.jpg', '684822f162fb0.jpg', 242908, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:20:01', '2025-06-10 12:20:01', 1, 'others'),
(88, 'ARISTOCRAT HIM', 'ARISTOCRAT HIM', 'filemanager/684822f16349f.jpg', '684822f16349f.jpg', 207206, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:20:01', '2025-06-10 12:20:01', 1, 'others'),
(89, 'ARISTOCRAT HIM', 'ARISTOCRAT HIM', 'filemanager/684822f163872.jpg', '684822f163872.jpg', 408084, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:20:01', '2025-06-10 12:20:01', 1, 'others'),
(90, 'ARISTOCRAT PLATINUM', 'ARISTOCRAT PLATINUM', 'filemanager/68482374387c3.jpg', '68482374387c3.jpg', 98133, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:22:12', '2025-06-10 12:22:12', 1, 'others'),
(91, 'ARISTOCRAT PLATINUM', 'ARISTOCRAT PLATINUM', 'filemanager/6848237438ca8.jpg', '6848237438ca8.jpg', 148387, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:22:12', '2025-06-10 12:22:12', 1, 'others'),
(92, 'ARISTOCRAT PLATINUM', 'ARISTOCRAT PLATINUM', 'filemanager/68482374390ca.jpg', '68482374390ca.jpg', 124125, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:22:12', '2025-06-10 12:22:12', 1, 'others'),
(93, 'AURUM', 'AURUM', 'filemanager/684823ea0c4e2.jpg', '684823ea0c4e2.jpg', 127148, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:24:10', '2025-06-10 12:24:10', 1, 'others'),
(94, 'AURUM', 'AURUM', 'filemanager/684823ea0cac9.jpg', '684823ea0cac9.jpg', 338745, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:24:10', '2025-06-10 12:24:10', 1, 'others'),
(95, 'AURUM', 'AURUM', 'filemanager/684823ea0d0dc.jpg', '684823ea0d0dc.jpg', 412924, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:24:10', '2025-06-10 12:24:10', 1, 'others'),
(96, 'AURUM MINIATURE', 'AURUM MINIATURE', 'filemanager/6848245f4d865.jpg', '6848245f4d865.jpg', 73203, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:26:07', '2025-06-10 12:26:07', 1, 'others'),
(97, 'AURUM MINIATURE', 'AURUM MINIATURE', 'filemanager/6848245f4dd17.jpg', '6848245f4dd17.jpg', 132329, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:26:07', '2025-06-10 12:26:07', 1, 'others'),
(98, 'AURUM MINIATURE', 'AURUM MINIATURE', 'filemanager/6848245f4e111.jpg', '6848245f4e111.jpg', 141570, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:26:07', '2025-06-10 12:26:07', 1, 'others'),
(99, 'AURUM SUMMER', 'AURUM SUMMER', 'filemanager/684824cd0a41f.jpg', '684824cd0a41f.jpg', 75288, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:27:57', '2025-06-10 12:27:57', 1, 'others'),
(100, 'AURUM SUMMER', 'AURUM SUMMER', 'filemanager/684824cd0a84b.jpg', '684824cd0a84b.jpg', 122105, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:27:57', '2025-06-10 12:27:57', 1, 'others'),
(101, 'AURUM SUMMER', 'AURUM SUMMER', 'filemanager/684824cd0ac1a.jpg', '684824cd0ac1a.jpg', 98554, 'jpg', 'image/jpeg', NULL, '2025-06-10 12:27:57', '2025-06-10 12:27:57', 1, 'others'),
(104, 'logonee', 'shakeeb', 'filemanager/684950ae0c22f.jpg', '684950ae0c22f.jpg', 9604, 'jpg', 'image/jpeg', NULL, '2025-06-11 09:47:26', '2025-06-11 10:21:54', 1, 'others'),
(107, 'dd', 'dd', 'filemanager/68495cd959b1d.jpg', '68495cd959b1d.jpg', 9604, 'jpg', 'image/jpeg', NULL, '2025-06-11 10:39:21', '2025-06-11 10:39:21', 1, 'others'),
(108, 'test', 'test', 'filemanager/6849690ab3ed1.png', '6849690ab3ed1.png', 1529662, 'png', 'image/png', NULL, '2025-06-11 11:31:22', '2025-06-11 11:31:22', 1, 'others'),
(110, 'BLU BY AJMAL', 'BLU BY AJMAL', 'filemanager/68497fd872030.jpg', '68497fd872030.jpg', 299782, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:08:40', '2025-06-11 13:08:40', 1, 'BLU BY AJMAL'),
(111, 'BLU BY AJMAL', 'BLU BY AJMAL', 'filemanager/68497fd87251c.jpg', '68497fd87251c.jpg', 142786, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:08:40', '2025-06-11 13:08:40', 1, 'BLU BY AJMAL'),
(112, 'BLU BY AJMAL', 'BLU BY AJMAL', 'filemanager/68497fd8728a4.jpg', '68497fd8728a4.jpg', 223095, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:08:40', '2025-06-11 13:08:40', 1, 'BLU BY AJMAL'),
(113, 'BLU MINIATURE', 'BLU MINIATURE', 'filemanager/68498036971e7.jpg', '68498036971e7.jpg', 71002, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:10:14', '2025-06-11 13:10:14', 1, 'BLU MINIATURE'),
(114, 'BLU MINIATURE', 'BLU MINIATURE', 'filemanager/68498036975f4.jpg', '68498036975f4.jpg', 129670, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:10:14', '2025-06-11 13:10:14', 1, 'BLU MINIATURE'),
(115, 'BLU MINIATURE', 'BLU MINIATURE', 'filemanager/6849803697949.jpg', '6849803697949.jpg', 125136, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:10:14', '2025-06-11 13:10:14', 1, 'BLU MINIATURE'),
(116, '6293708000425', '6293708000425', 'filemanager/68498097bea51.jpg', '68498097bea51.jpg', 83558, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:11:51', '2025-06-11 13:11:51', 1, 'others'),
(117, '6293708000425-1', '6293708000425-1', 'filemanager/68498097bee7a.jpg', '68498097bee7a.jpg', 54189, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:11:51', '2025-06-11 13:11:51', 1, 'others'),
(118, '6293708000425-2', '6293708000425-2', 'filemanager/68498097bf1cd.jpg', '68498097bf1cd.jpg', 72641, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:11:51', '2025-06-11 13:11:51', 1, 'others'),
(119, 'CARBON', 'CARBON', 'filemanager/684980b024caa.jpg', '684980b024caa.jpg', 83558, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:12:16', '2025-06-11 13:12:16', 1, 'others'),
(120, 'CARBON', 'CARBON', 'filemanager/684980b02508a.jpg', '684980b02508a.jpg', 54189, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:12:16', '2025-06-11 13:12:16', 1, 'others'),
(121, 'CARBON', 'CARBON', 'filemanager/684980b0253b0.jpg', '684980b0253b0.jpg', 72641, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:12:16', '2025-06-11 13:12:16', 1, 'others'),
(122, 'CASHMERE MUSC', 'CASHMERE MUSC', 'filemanager/684981008b5bd.jpg', '684981008b5bd.jpg', 49343, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:13:36', '2025-06-11 13:13:36', 1, 'others'),
(123, 'CASHMERE MUSC', 'CASHMERE MUSC', 'filemanager/684981008bb13.jpg', '684981008bb13.jpg', 64028, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:13:36', '2025-06-11 13:13:36', 1, 'others'),
(124, 'CASHMERE MUSC', 'CASHMERE MUSC', 'filemanager/684981008bf4e.jpg', '684981008bf4e.jpg', 49354, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:13:36', '2025-06-11 13:13:36', 1, 'others'),
(125, 'CASHMERE MUSC', 'CASHMERE MUSC', 'filemanager/684981008c256.jpg', '684981008c256.jpg', 104776, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:13:36', '2025-06-11 13:13:36', 1, 'others'),
(126, 'CASHMERE MUSC', 'CASHMERE MUSC', 'filemanager/684981008c574.jpg', '684981008c574.jpg', 134335, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:13:36', '2025-06-11 13:13:36', 1, 'others'),
(127, 'CHIVALRY', 'CHIVALRY', 'filemanager/68498151babf5.jpg', '68498151babf5.jpg', 74471, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:14:57', '2025-06-11 13:14:57', 1, 'CHIVALRY'),
(128, 'CHIVALRY', 'CHIVALRY', 'filemanager/68498151bb095.jpg', '68498151bb095.jpg', 178502, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:14:57', '2025-06-11 13:14:57', 1, 'CHIVALRY'),
(129, 'CHIVALRY', 'CHIVALRY', 'filemanager/68498151bb47c.jpg', '68498151bb47c.jpg', 182036, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:14:57', '2025-06-11 13:14:57', 1, 'CHIVALRY'),
(130, 'CUIR MUSC', 'CUIR MUSC', 'filemanager/6849819d2b58e.jpg', '6849819d2b58e.jpg', 69011, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:16:13', '2025-06-11 13:16:13', 1, 'CUIR MUSC'),
(131, 'CUIR MUSC', 'CUIR MUSC', 'filemanager/6849819d2b956.jpg', '6849819d2b956.jpg', 76611, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:16:13', '2025-06-11 13:16:13', 1, 'CUIR MUSC'),
(132, 'CUIR MUSC', 'CUIR MUSC', 'filemanager/6849819d2bc5c.jpg', '6849819d2bc5c.jpg', 63112, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:16:13', '2025-06-11 13:16:13', 1, 'CUIR MUSC'),
(133, 'DANAT AL DUNIYA', 'DANAT AL DUNIYA', 'filemanager/684981fc75c45.jpg', '684981fc75c45.jpg', 57961, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:17:48', '2025-06-11 13:17:48', 1, 'DANAT AL DUNIYA'),
(134, 'DANAT AL DUNIYA', 'DANAT AL DUNIYA', 'filemanager/684981fc760d7.jpg', '684981fc760d7.jpg', 110182, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:17:48', '2025-06-11 13:17:48', 1, 'DANAT AL DUNIYA'),
(135, 'DANAT AL DUNIYA', 'DANAT AL DUNIYA', 'filemanager/684981fc764b9.jpg', '684981fc764b9.jpg', 108838, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:17:48', '2025-06-11 13:17:48', 1, 'DANAT AL DUNIYA'),
(136, 'ELIXIR INTENSE', 'ELIXIR INTENSE', 'filemanager/68498298b8109.jpg', '68498298b8109.jpg', 63090, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:20:24', '2025-06-11 13:20:24', 1, 'ELIXIR INTENSE'),
(137, 'ELIXIR INTENSE', 'ELIXIR INTENSE', 'filemanager/68498298b8673.jpg', '68498298b8673.jpg', 67807, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:20:24', '2025-06-11 13:20:24', 1, 'ELIXIR INTENSE'),
(138, 'ELIXIR INTENSE', 'ELIXIR INTENSE', 'filemanager/68498298b8a3f.jpg', '68498298b8a3f.jpg', 63064, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:20:24', '2025-06-11 13:20:24', 1, 'ELIXIR INTENSE'),
(139, 'ELIXIR PRECIOUS', 'ELIXIR PRECIOUS', 'filemanager/684982f3f1aee.jpg', '684982f3f1aee.jpg', 65667, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:21:55', '2025-06-11 13:21:55', 1, 'others'),
(140, 'ELIXIR PRECIOUS', 'ELIXIR PRECIOUS', 'filemanager/684982f3f1f04.jpg', '684982f3f1f04.jpg', 68252, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:21:55', '2025-06-11 13:21:55', 1, 'others'),
(141, 'ELIXIR PRECIOUS', 'ELIXIR PRECIOUS', 'filemanager/684982f3f2226.jpg', '684982f3f2226.jpg', 63688, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:21:55', '2025-06-11 13:21:55', 1, 'others'),
(142, 'ELIXIR SUAVE', 'ELIXIR SUAVE', 'filemanager/684983cb547b7.jpg', '684983cb547b7.jpg', 59766, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:25:31', '2025-06-11 13:25:31', 1, 'others'),
(143, 'ELIXIR SUAVE', 'ELIXIR SUAVE', 'filemanager/684983cb54bbe.jpg', '684983cb54bbe.jpg', 67410, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:25:31', '2025-06-11 13:25:31', 1, 'others'),
(144, 'ELIXIR SUAVE', 'ELIXIR SUAVE', 'filemanager/684983cb54fdb.jpg', '684983cb54fdb.jpg', 62205, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:25:31', '2025-06-11 13:25:31', 1, 'others'),
(145, 'EVOKE HIM', 'EVOKE HIM', 'filemanager/6849847522f4f.jpg', '6849847522f4f.jpg', 65876, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:28:21', '2025-06-11 13:28:21', 1, 'EVOKE HIM'),
(146, 'EVOKE HIM', 'EVOKE HIM', 'filemanager/68498475235bb.jpg', '68498475235bb.jpg', 155550, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:28:21', '2025-06-11 13:28:21', 1, 'EVOKE HIM'),
(147, 'EVOKE HIM', 'EVOKE HIM', 'filemanager/6849847523985.jpg', '6849847523985.jpg', 166362, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:28:21', '2025-06-11 13:28:21', 1, 'EVOKE HIM'),
(148, 'GOLD MAN', 'GOLD MAN', 'filemanager/684984ba46a9e.jpg', '684984ba46a9e.jpg', 72241, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:29:30', '2025-06-11 13:29:30', 1, 'GOLD MAN'),
(149, 'GOLD MAN', 'GOLD MAN', 'filemanager/684984ba46e78.jpg', '684984ba46e78.jpg', 170220, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:29:30', '2025-06-11 13:29:30', 1, 'GOLD MAN'),
(150, 'GOLD MAN', 'GOLD MAN', 'filemanager/684984ba471e0.jpg', '684984ba471e0.jpg', 183227, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:29:30', '2025-06-11 13:29:30', 1, 'GOLD MAN'),
(151, 'GRAY', 'GRAY', 'filemanager/684984fe0d8e4.jpg', '684984fe0d8e4.jpg', 57842, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:30:38', '2025-06-11 13:30:38', 1, 'others'),
(152, 'GRAY', 'GRAY', 'filemanager/684984fe0dd33.jpg', '684984fe0dd33.jpg', 78806, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:30:38', '2025-06-11 13:30:38', 1, 'others'),
(153, 'GRAY', 'GRAY', 'filemanager/684984fe0e0e8.jpg', '684984fe0e0e8.jpg', 68304, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:30:38', '2025-06-11 13:30:38', 1, 'others'),
(154, 'HATKORA WOOD', 'HATKORA WOOD', 'filemanager/6849853f1702f.jpg', '6849853f1702f.jpg', 54595, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:31:43', '2025-06-11 13:31:43', 1, 'others'),
(155, 'HATKORA WOOD', 'HATKORA WOOD', 'filemanager/6849853f17472.jpg', '6849853f17472.jpg', 97949, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:31:43', '2025-06-11 13:31:43', 1, 'others'),
(156, 'HATKORA WOOD', 'HATKORA WOOD', 'filemanager/6849853f177b7.jpg', '6849853f177b7.jpg', 102720, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:31:43', '2025-06-11 13:31:43', 1, 'others'),
(157, 'INCENSE WOOD', 'INCENSE WOOD', 'filemanager/6849863f42557.jpg', '6849863f42557.jpg', 52337, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:35:59', '2025-06-11 13:35:59', 1, 'INCENSE WOOD'),
(158, 'INCENSE WOOD', 'INCENSE WOOD', 'filemanager/6849863f42a73.jpg', '6849863f42a73.jpg', 67084, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:35:59', '2025-06-11 13:35:59', 1, 'INCENSE WOOD'),
(159, 'INCENSE WOOD', 'INCENSE WOOD', 'filemanager/6849863f42d49.jpg', '6849863f42d49.jpg', 61262, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:35:59', '2025-06-11 13:35:59', 1, 'INCENSE WOOD'),
(160, 'KURO', 'KURO', 'filemanager/6849868ebd833.jpg', '6849868ebd833.jpg', 64214, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:37:18', '2025-06-11 13:37:18', 1, 'KURO'),
(161, 'KURO', 'KURO', 'filemanager/6849868ebdc61.jpg', '6849868ebdc61.jpg', 191002, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:37:18', '2025-06-11 13:37:18', 1, 'KURO'),
(162, 'KURO', 'KURO', 'filemanager/6849868ebe096.jpg', '6849868ebe096.jpg', 153675, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:37:18', '2025-06-11 13:37:18', 1, 'KURO'),
(163, 'MIZYAAN', 'MIZYAAN', 'filemanager/684986cd7f203.jpg', '684986cd7f203.jpg', 144257, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:38:21', '2025-06-11 13:38:21', 1, 'MIZYAAN'),
(164, 'MIZYAAN', 'MIZYAAN', 'filemanager/684986cd7f67f.jpg', '684986cd7f67f.jpg', 268898, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:38:21', '2025-06-11 13:38:21', 1, 'MIZYAAN'),
(165, 'MIZYAAN', 'MIZYAAN', 'filemanager/684986cd7fa73.jpg', '684986cd7fa73.jpg', 275980, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:38:21', '2025-06-11 13:38:21', 1, 'MIZYAAN'),
(166, 'MUSK KHAS', 'MUSK KHAS', 'filemanager/684987487b22b.jpg', '684987487b22b.jpg', 100052, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:40:24', '2025-06-11 13:40:24', 1, 'MUSK KHAS'),
(167, 'MUSK KHAS', 'MUSK KHAS', 'filemanager/684987487b6e4.jpg', '684987487b6e4.jpg', 227108, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:40:24', '2025-06-11 13:40:24', 1, 'MUSK KHAS'),
(168, 'MUSK KHAS', 'MUSK KHAS', 'filemanager/684987487bbd6.jpg', '684987487bbd6.jpg', 274961, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:40:24', '2025-06-11 13:40:24', 1, 'MUSK KHAS'),
(169, 'NEUTRON', 'NEUTRON', 'filemanager/684987f22dc22.jpg', '684987f22dc22.jpg', 118849, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:43:14', '2025-06-11 13:43:14', 1, 'NEUTRON'),
(170, 'NEUTRON', 'NEUTRON', 'filemanager/684987f22e146.jpg', '684987f22e146.jpg', 101735, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:43:14', '2025-06-11 13:43:14', 1, 'NEUTRON'),
(171, 'NEUTRON', 'NEUTRON', 'filemanager/684987f22e55d.jpg', '684987f22e55d.jpg', 131641, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:43:14', '2025-06-11 13:43:14', 1, 'NEUTRON'),
(172, 'PATCHOULI WOOD', 'PATCHOULI WOOD', 'filemanager/6849882898a4f.jpg', '6849882898a4f.jpg', 94610, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:44:08', '2025-06-11 13:44:08', 1, 'others'),
(173, 'PATCHOULI WOOD', 'PATCHOULI WOOD', 'filemanager/6849882898e6d.jpg', '6849882898e6d.jpg', 77910, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:44:08', '2025-06-11 13:44:08', 1, 'others'),
(174, 'PATCHOULI WOOD', 'PATCHOULI WOOD', 'filemanager/6849882899193.jpg', '6849882899193.jpg', 67077, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:44:08', '2025-06-11 13:44:08', 1, 'others'),
(175, 'RAINDROPS', 'RAINDROPS', 'filemanager/684988e2f29a5.jpg', '684988e2f29a5.jpg', 57941, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:47:14', '2025-06-11 13:47:14', 1, 'RAINDROPS'),
(176, 'RAINDROPS', 'RAINDROPS', 'filemanager/684988e2f2f15.jpg', '684988e2f2f15.jpg', 45800, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:47:14', '2025-06-11 13:47:14', 1, 'RAINDROPS'),
(177, 'RAINDROPS', 'RAINDROPS', 'filemanager/684988e2f3258.jpg', '684988e2f3258.jpg', 57780, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:47:14', '2025-06-11 13:47:14', 1, 'RAINDROPS'),
(178, 'RAINDROPS MINIATURE', 'RAINDROPS MINIATURE', 'filemanager/68498a3290791.jpg', '68498a3290791.jpg', 61072, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:52:50', '2025-06-11 13:52:50', 1, 'RAINDROPS MINIATURE'),
(179, 'RAINDROPS MINIATURE', 'RAINDROPS MINIATURE', 'filemanager/68498a3290b58.jpg', '68498a3290b58.jpg', 84362, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:52:50', '2025-06-11 13:52:50', 1, 'RAINDROPS MINIATURE'),
(180, 'RAINDROPS MINIATURE', 'RAINDROPS MINIATURE', 'filemanager/68498a3290ec4.jpg', '68498a3290ec4.jpg', 72488, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:52:50', '2025-06-11 13:52:50', 1, 'RAINDROPS MINIATURE'),
(181, 'ROSE WOOD', 'ROSE WOOD', 'filemanager/68498a6d4d0a8.jpg', '68498a6d4d0a8.jpg', 61667, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:53:49', '2025-06-11 13:53:49', 1, 'others'),
(182, 'ROSE WOOD', 'ROSE WOOD', 'filemanager/68498a6d4d4f1.jpg', '68498a6d4d4f1.jpg', 117977, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:53:49', '2025-06-11 13:53:49', 1, 'others'),
(183, 'ROSE WOOD', 'ROSE WOOD', 'filemanager/68498a6d4d8fd.jpg', '68498a6d4d8fd.jpg', 117926, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:53:49', '2025-06-11 13:53:49', 1, 'others'),
(184, 'SACRED LOVE', 'SACRED LOVE', 'filemanager/68498aa6597cd.jpg', '68498aa6597cd.jpg', 104776, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:54:46', '2025-06-11 13:54:46', 1, 'SACRED LOVE'),
(185, 'SACRED LOVE', 'SACRED LOVE', 'filemanager/68498aa659d8c.jpg', '68498aa659d8c.jpg', 116396, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:54:46', '2025-06-11 13:54:46', 1, 'SACRED LOVE'),
(186, 'SACRED LOVE', 'SACRED LOVE', 'filemanager/68498aa65a2a8.jpg', '68498aa65a2a8.jpg', 166366, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:54:46', '2025-06-11 13:54:46', 1, 'SACRED LOVE'),
(187, 'SACRED LOVE MINIATURE', 'SACRED LOVE MINIATURE', 'filemanager/68498ae02d1cc.jpg', '68498ae02d1cc.jpg', 73937, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:55:44', '2025-06-11 13:55:44', 1, 'SACRED LOVE MINIATURE'),
(188, 'SACRED LOVE MINIATURE', 'SACRED LOVE MINIATURE', 'filemanager/68498ae02d6b2.jpg', '68498ae02d6b2.jpg', 108390, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:55:44', '2025-06-11 13:55:44', 1, 'SACRED LOVE MINIATURE'),
(189, 'SACRED LOVE MINIATURE', 'SACRED LOVE MINIATURE', 'filemanager/68498ae02da7b.jpg', '68498ae02da7b.jpg', 88447, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:55:44', '2025-06-11 13:55:44', 1, 'SACRED LOVE MINIATURE'),
(190, 'SANTAL WOOD', 'SANTAL WOOD', 'filemanager/68498b27b2459.jpg', '68498b27b2459.jpg', 78208, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:56:55', '2025-06-11 13:56:55', 1, 'SANTAL WOOD'),
(191, 'SANTAL WOOD', 'SANTAL WOOD', 'filemanager/68498b27b289e.jpg', '68498b27b289e.jpg', 98676, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:56:55', '2025-06-11 13:56:55', 1, 'SANTAL WOOD'),
(192, 'SANTAL WOOD', 'SANTAL WOOD', 'filemanager/68498b27b2c0d.jpg', '68498b27b2c0d.jpg', 83486, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:56:55', '2025-06-11 13:56:55', 1, 'SANTAL WOOD'),
(193, 'SERENITY IN ME', 'SERENITY IN ME', 'filemanager/68498b5ca20fd.jpg', '68498b5ca20fd.jpg', 58722, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:57:48', '2025-06-11 13:57:48', 1, 'SERENITY IN ME'),
(194, 'SERENITY IN ME', 'SERENITY IN ME', 'filemanager/68498b5ca261c.jpg', '68498b5ca261c.jpg', 100838, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:57:48', '2025-06-11 13:57:48', 1, 'SERENITY IN ME'),
(195, 'SERENITY IN ME', 'SERENITY IN ME', 'filemanager/68498b5ca2dc7.jpg', '68498b5ca2dc7.jpg', 87910, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:57:48', '2025-06-11 13:57:48', 1, 'SERENITY IN ME'),
(196, 'SHADOW HER', 'SHADOW HER', 'filemanager/68498bc3d36d1.jpg', '68498bc3d36d1.jpg', 136139, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:59:31', '2025-06-11 13:59:31', 1, 'SHADOW HER'),
(197, 'SHADOW HER', 'SHADOW HER', 'filemanager/68498bc3d3b43.jpg', '68498bc3d3b43.jpg', 135630, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:59:31', '2025-06-11 13:59:31', 1, 'SHADOW HER'),
(198, 'SHADOW HER', 'SHADOW HER', 'filemanager/68498bc3d3f0f.jpg', '68498bc3d3f0f.jpg', 179178, 'jpg', 'image/jpeg', NULL, '2025-06-11 13:59:31', '2025-06-11 13:59:31', 1, 'SHADOW HER'),
(199, 'SHADOW HIM', 'SHADOW HIM', 'filemanager/68498bfb8770d.jpg', '68498bfb8770d.jpg', 70938, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:00:27', '2025-06-11 14:00:27', 1, 'SHADOW HIM'),
(200, 'SHADOW HIM', 'SHADOW HIM', 'filemanager/68498bfb87d38.jpg', '68498bfb87d38.jpg', 105552, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:00:27', '2025-06-11 14:00:27', 1, 'SHADOW HIM'),
(201, 'SHADOW HIM', 'SHADOW HIM', 'filemanager/68498bfb8828b.jpg', '68498bfb8828b.jpg', 90328, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:00:27', '2025-06-11 14:00:27', 1, 'SHADOW HIM'),
(202, 'SHINE', 'SHINE', 'filemanager/68498c41c337e.jpg', '68498c41c337e.jpg', 112433, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:01:37', '2025-06-11 14:01:37', 1, 'SHINE'),
(203, 'SHINE', 'SHINE', 'filemanager/68498c41c3802.jpg', '68498c41c3802.jpg', 333460, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:01:37', '2025-06-11 14:01:37', 1, 'SHINE'),
(204, 'SHINE', 'SHINE', 'filemanager/68498c41c3c8b.jpg', '68498c41c3c8b.jpg', 360039, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:01:37', '2025-06-11 14:01:37', 1, 'SHINE'),
(205, 'SIGNIFY', 'SIGNIFY', 'filemanager/68498c963ce0a.jpg', '68498c963ce0a.jpg', 190049, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:03:02', '2025-06-11 14:03:02', 1, 'SIGNIFY'),
(206, 'SIGNIFY', 'SIGNIFY', 'filemanager/68498c963d39f.jpg', '68498c963d39f.jpg', 523207, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:03:02', '2025-06-11 14:03:02', 1, 'SIGNIFY'),
(207, 'SIGNIFY', 'SIGNIFY', 'filemanager/68498c963d982.jpg', '68498c963d982.jpg', 400125, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:03:02', '2025-06-11 14:03:02', 1, 'SIGNIFY'),
(208, 'SILVER SHADE', 'SILVER SHADE', 'filemanager/68498d708124a.jpg', '68498d708124a.jpg', 116012, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:06:40', '2025-06-11 14:06:40', 1, 'SILVER SHADE'),
(209, 'SILVER SHADE', 'SILVER SHADE', 'filemanager/68498d7081710.jpg', '68498d7081710.jpg', 162844, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:06:40', '2025-06-11 14:06:40', 1, 'SILVER SHADE'),
(210, 'SILVER SHADE', 'SILVER SHADE', 'filemanager/68498d7081ab0.jpg', '68498d7081ab0.jpg', 174526, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:06:40', '2025-06-11 14:06:40', 1, 'SILVER SHADE'),
(211, 'TITANIUM HIM', 'TITANIUM HIM', 'filemanager/68498f1f23974.jpg', '68498f1f23974.jpg', 51227, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:13:51', '2025-06-11 14:13:51', 1, 'TITANIUM HIM'),
(212, 'TITANIUM HIM', 'TITANIUM HIM', 'filemanager/68498f1f23d31.jpg', '68498f1f23d31.jpg', 65550, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:13:51', '2025-06-11 14:13:51', 1, 'TITANIUM HIM'),
(213, 'TITANIUM HIM', 'TITANIUM HIM', 'filemanager/68498f1f24060.jpg', '68498f1f24060.jpg', 54269, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:13:51', '2025-06-11 14:13:51', 1, 'TITANIUM HIM'),
(214, 'VIOLET MUSC', 'VIOLET MUSC', 'filemanager/68498f65db16d.jpg', '68498f65db16d.jpg', 79441, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:15:01', '2025-06-11 14:15:01', 1, 'VIOLET MUSC'),
(215, 'VIOLET MUSC', 'VIOLET MUSC', 'filemanager/68498f65db52d.jpg', '68498f65db52d.jpg', 142458, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:15:01', '2025-06-11 14:15:01', 1, 'VIOLET MUSC'),
(216, 'VIOLET MUSC', 'VIOLET MUSC', 'filemanager/68498f65db8d0.jpg', '68498f65db8d0.jpg', 97377, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:15:01', '2025-06-11 14:15:01', 1, 'VIOLET MUSC'),
(217, 'WANDERER', 'WANDERER', 'filemanager/68498fa0b82c1.jpg', '68498fa0b82c1.jpg', 72945, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:16:00', '2025-06-11 14:16:00', 1, 'WANDERER'),
(218, 'WANDERER', 'WANDERER', 'filemanager/68498fa0b8824.jpg', '68498fa0b8824.jpg', 158220, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:16:00', '2025-06-11 14:16:00', 1, 'WANDERER'),
(219, 'WANDERER', 'WANDERER', 'filemanager/68498fa0b8bf6.jpg', '68498fa0b8bf6.jpg', 156689, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:16:00', '2025-06-11 14:16:00', 1, 'WANDERER'),
(220, 'WISAL', 'WISAL', 'filemanager/6849900c017bc.jpg', '6849900c017bc.jpg', 119300, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:17:48', '2025-06-11 14:17:48', 1, 'WISAL'),
(221, 'WISAL', 'WISAL', 'filemanager/6849900c01c2e.jpg', '6849900c01c2e.jpg', 183937, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:17:48', '2025-06-11 14:17:48', 1, 'WISAL'),
(222, 'WISAL', 'WISAL', 'filemanager/6849900c01fa8.jpg', '6849900c01fa8.jpg', 188961, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:17:48', '2025-06-11 14:17:48', 1, 'WISAL'),
(223, 'WISAL DHAHAB', 'WISAL DHAHAB', 'filemanager/6849904bca617.jpg', '6849904bca617.jpg', 107694, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:18:51', '2025-06-11 14:18:51', 1, 'WISAL DHAHAB'),
(224, 'WISAL DHAHAB', 'WISAL DHAHAB', 'filemanager/6849904bcaaaa.jpg', '6849904bcaaaa.jpg', 245120, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:18:51', '2025-06-11 14:18:51', 1, 'WISAL DHAHAB'),
(225, 'WISAL DHAHAB', 'WISAL DHAHAB', 'filemanager/6849904bcaf3c.jpg', '6849904bcaf3c.jpg', 254905, 'jpg', 'image/jpeg', NULL, '2025-06-11 14:18:51', '2025-06-11 14:18:51', 1, 'WISAL DHAHAB'),
(226, 'banner rear', 'banner rear', 'filemanager/684999bfabc64.png', '684999bfabc64.png', 2332876, 'png', 'image/png', NULL, '2025-06-11 14:59:11', '2025-06-11 14:59:11', 1, 'banner rear'),
(227, 'banner rear2', 'banner rear2', 'filemanager/68499a6001516.png', '68499a6001516.png', 1483809, 'png', 'image/png', NULL, '2025-06-11 15:01:52', '2025-06-11 15:01:52', 1, 'banner rear'),
(228, 'banner rear3', 'banner rear3', 'filemanager/684d33b3b9fe6.png', '68499ad269847.png', 937770, 'png', 'image/png', NULL, '2025-06-11 15:03:46', '2025-06-14 08:32:51', 1, 'banner rear'),
(230, 'new banner', 'new banner', 'filemanager/684d8b5ee7f24.png', '684d8b5ee7f24.png', 2558892, 'png', 'image/png', NULL, '2025-06-14 14:46:54', '2025-06-14 14:46:54', 1, 'new banner'),
(232, 'new logo t', 'new logot', 'filemanager/684db5d84e806.png', '684db5d84e806.png', 1529662, 'png', 'image/png', NULL, '2025-06-14 17:48:08', '2025-06-14 17:48:08', 1, 'new logo'),
(240, 'MUSK KHAS 3ML', 'MISK KHAS 3ML', 'filemanager/684fd27c0a36e.jpg', '684fd27c0a36e.jpg', 96323, 'jpg', 'image/jpeg', NULL, '2025-06-16 08:14:52', '2025-06-16 08:16:03', 1, 'MUSK KHAS'),
(241, 'MUSK KHAS 3ML', 'MISK KHAS 3ML', 'filemanager/684fd27c0a922.jpg', '684fd27c0a922.jpg', 213119, 'jpg', 'image/jpeg', NULL, '2025-06-16 08:14:52', '2025-06-16 08:15:46', 1, 'MUSK KHAS'),
(242, 'MUSK KHAS 3ML', 'MISK KHAS 3ML', 'filemanager/684fd27c0ae17.jpg', '684fd27c0ae17.jpg', 194075, 'jpg', 'image/jpeg', NULL, '2025-06-16 08:14:52', '2025-06-16 08:15:34', 1, 'MUSK KHAS'),
(244, 'JIMMY CHOO FEVER EDP 100ML', 'JIMMY CHOO FEVER EDP 100ML', 'filemanager/685be75bdd2fb.jpg', '685be57996be6.jpg', 763665, 'jpg', 'image/png', NULL, '2025-06-25 12:03:05', '2025-06-25 12:11:07', 1, 'JIMMY CHOO FEVER EDP 100ML'),
(245, 'JIMMY CHOO FLORAL EDT 90ML', 'JIMMY CHOO FLORAL EDT 90ML', 'filemanager/685be57997277.jpg', '685be57997277.jpg', 55823, 'jpg', 'image/jpeg', NULL, '2025-06-25 12:03:05', '2025-06-25 12:09:43', 1, 'JIMMY CHOO FLORAL EDT 90ML'),
(246, 'JIMMY CHOO I WANT CHOO EDP 100ML', 'JIMMY CHOO I WANT CHOO EDP 100ML', 'filemanager/685be57997556.jpg', '685be57997556.jpg', 92012, 'jpg', 'image/jpeg', NULL, '2025-06-25 12:03:05', '2025-06-25 12:10:23', 1, 'JIMMY CHOO I WANT CHOO EDP 100ML'),
(247, 'JIMMY CHOO ILLICIT FLOWER EDT 100ML', 'JIMMY CHOO ILLICIT FLOWER EDT 100ML', 'filemanager/685be5799784a.jpg', '685be5799784a.jpg', 125051, 'jpg', 'image/jpeg', NULL, '2025-06-25 12:03:05', '2025-06-25 12:08:56', 1, 'JIMMY CHOO ILLICIT FLOWER EDT 100ML'),
(248, 'JIMMY CHOO ILLICIT EDP 100ML', 'JIMMY CHOO ILLICIT EDP 100ML', 'filemanager/685be57997c71.jpg', '685be57997c71.jpg', 3090730, 'jpg', 'image/png', NULL, '2025-06-25 12:03:05', '2025-06-25 12:08:37', 1, 'JIMMY CHOO ILLICIT EDP 100ML'),
(249, 'JIMMY CHOO LEAU EDT 90ML', 'JIMMY CHOO LEAU EDT 90ML', 'filemanager/685be5799885d.jpg', '685be5799885d.jpg', 70504, 'jpg', 'image/jpeg', NULL, '2025-06-25 12:03:05', '2025-06-25 12:07:33', 1, 'JIMMY CHOO LEAU EDT 90ML'),
(250, 'JIMMY CHOO MAN BLUE EDT 100ML', 'JIMMY CHOO MAN BLUE EDT 100ML', 'filemanager/685be57998b1d.jfif', '685be57998b1d.jfif', 42566, 'jfif', 'image/jpeg', NULL, '2025-06-25 12:03:05', '2025-06-25 12:06:46', 1, 'JIMMY CHOO MAN BLUE EDT 100ML'),
(251, 'JIMMY CHOO MAN EDT 100ML', 'JIMMY CHOO MAN EDT 100ML', 'filemanager/685be57998e87.jpg', '685be57998e87.jpg', 573366, 'jpg', 'image/png', NULL, '2025-06-25 12:03:05', '2025-06-25 12:06:19', 1, 'JIMMY CHOO MAN EDT 100ML'),
(252, 'JIMMY CHOO MAN ICE EDT 100ML', 'JIMMY CHOO MAN ICE EDT 100ML', 'filemanager/685be579992fe.jpg', '685be579992fe.jpg', 135828, 'jpg', 'image/jpeg', NULL, '2025-06-25 12:03:05', '2025-06-25 12:06:00', 1, 'JIMMY CHOO MAN ICE EDT 100ML'),
(254, 'JIMMY CHOO WOMEN  EDP 100ML', 'JIMMY CHOO WOMEN  EDP 100ML', 'filemanager/685be5799989d.jpg', '685be5799989d.jpg', 313131, 'jpg', 'image/jpeg', NULL, '2025-06-25 12:03:05', '2025-06-25 12:05:30', 1, 'JIMMY CHOO WOMEN  EDP 100ML'),
(255, 'JIMMY CHOO WOMEN  EDT 100ML', 'JIMMY CHOO WOMEN  EDT 100ML', 'filemanager/685be57999bff.jpg', '685be57999bff.jpg', 55975, 'jpg', 'image/jpeg', NULL, '2025-06-25 12:03:05', '2025-06-25 12:05:13', 1, 'JIMMY CHOO WOMEN  EDT 100ML'),
(256, 'JIMMY CHOO URBAN HERO EDP 100ML', 'JIMMY CHOO URBAN HERO EDP 100ML', 'filemanager/685be57999eb4.jpg', '685be57999eb4.jpg', 148542, 'jpg', 'image/jpeg', NULL, '2025-06-25 12:03:05', '2025-06-25 12:04:38', 1, 'JIMMY CHOO URBAN HERO EDP 100ML'),
(257, 'JIMMY CHOO MAN INTENSE EDT 100ML', 'JIMMY CHOO MAN INTENSE EDT 100ML', 'filemanager/685bf7a1da400.jpg', '685bf7a1da400.jpg', 20021, 'jpg', 'image/jpeg', NULL, '2025-06-25 13:20:33', '2025-06-25 13:20:33', 1, 'JIMMY CHOO MAN INTENSE EDT 100ML'),
(258, 'JUICY COUTURE I AM JUICY COUTURE EDP 100ML', 'JUICY COUTURE I AM JUICY COUTURE EDP 100ML', 'filemanager/685cfec691efc.jpg', '685cfec691efc.jpg', 39827, 'jpg', 'image/jpeg', NULL, '2025-06-26 08:03:18', '2025-06-26 08:04:23', 1, 'JUICY COUTURE I AM JUICY COUTURE EDP 100ML'),
(259, 'JUICY COUTURE VIVA LA JUICY GOLD COUTURE 100ML', 'JUICY COUTURE VIVA LA JUICY GOLD COUTURE 100ML', 'filemanager/685cfec692637.jpg', '685cfec692637.jpg', 209511, 'jpg', 'image/jpeg', NULL, '2025-06-26 08:03:18', '2025-06-26 08:05:03', 1, 'JUICY COUTURE VIVA LA JUICY GOLD COUTURE 100ML'),
(260, 'JUICY COUTURE VIVA LA JUICY NEON EDP 100ML', 'JUICY COUTURE VIVA LA JUICY NEON EDP 100ML', 'filemanager/685cfec692b51.jpg', '685cfec692b51.jpg', 150780, 'jpg', 'image/jpeg', NULL, '2025-06-26 08:03:18', '2025-06-26 08:05:58', 1, 'JUICY COUTURE VIVA LA JUICY NEON EDP 100ML'),
(261, 'JUICY COUTURE VIVA LA JUICY NOIR EDP SPRAY 100ML', 'JUICY COUTURE VIVA LA JUICY NOIR EDP SPRAY 100ML', 'filemanager/685cfec692f2b.jpg', '685cfec692f2b.jpg', 29890, 'jpg', 'image/jpeg', NULL, '2025-06-26 08:03:18', '2025-06-26 08:06:23', 1, 'JUICY COUTURE VIVA LA JUICY NOIR EDP SPRAY 100ML'),
(262, 'JUICY COUTURE VIVA LA JUICY ROSE EDP 100ML', 'JUICY COUTURE VIVA LA JUICY ROSE EDP 100ML', 'filemanager/685cfec6932f6.jpg', '685cfec6932f6.jpg', 244573, 'jpg', 'image/jpeg', NULL, '2025-06-26 08:03:18', '2025-06-26 08:21:43', 1, 'JUICY COUTURE VIVA LA JUICY ROSE EDP 100ML'),
(263, 'JUICY COUTURE OUI JUICY COUTURE EDP SPRAY 100ML', 'JUICY COUTURE OUI JUICY COUTURE EDP SPRAY 100ML', 'filemanager/685cfec69378f.jpg', '685cfec69378f.jpg', 155812, 'jpg', 'image/jpeg', NULL, '2025-06-26 08:03:18', '2025-06-26 08:22:05', 1, 'JUICY COUTURE OUI JUICY COUTURE EDP SPRAY 100ML'),
(264, 'JUICY COUTURE REGAL COLLECTION EDP 100ML ROYAL ROSE', 'JUICY COUTURE REGAL COLLECTION EDP 100ML ROYAL ROSE', 'filemanager/685cfec693b96.jpg', '685cfec693b96.jpg', 85778, 'jpg', 'image/jpeg', NULL, '2025-06-26 08:03:18', '2025-06-26 08:22:43', 1, 'JUICY COUTURE REGAL COLLECTION EDP 100ML ROYAL ROSE'),
(265, 'JUICY COUTURE VIVA LA JUICY EDP SPRAY 100ML', 'JUICY COUTURE VIVA LA JUICY EDP SPRAY 100ML', 'filemanager/685cfec693f9d.jpg', '685cfec693f9d.jpg', 251804, 'jpg', 'image/jpeg', NULL, '2025-06-26 08:03:18', '2025-06-26 08:23:21', 1, 'JUICY COUTURE VIVA LA JUICY EDP SPRAY 100ML'),
(266, 'JUICY COUTURE VIVA LA JUICY PETALS PLEASE EDP 100ML', 'JUICY COUTURE VIVA LA JUICY PETALS PLEASE EDP 100ML', 'filemanager/685e45fbe487e.jpg', '685e45fbe487e.jpg', 1769547, 'jpg', 'image/png', NULL, '2025-06-27 07:19:23', '2025-06-27 07:19:23', 1, 'JUICY COUTURE VIVA LA JUICY PETALS PLEASE EDP 100ML'),
(269, 'ELIZABETH ARDEN 5TH AVENUE EDP SPRAY 125ml', 'ELIZABETH ARDEN 5TH AVENUE EDP SPRAY 125ml', 'filemanager/686660eddf9bd.jpg', '686660eddf9bd.jpg', 17982, 'jpg', 'image/jpeg', NULL, '2025-07-03 10:52:29', '2025-07-03 11:01:00', 1, 'ELIZABETH ARDEN 5TH AVENUE EDP SPRAY 125ml'),
(270, 'ELIZABETH ARDEN 5TH AVENUE EDP SPRAY 125ml', 'ELIZABETH ARDEN 5TH AVENUE EDP SPRAY 125ml', 'filemanager/6874eabc2bb8b.jpg', '686660eddffb8.jpg', 551828, 'jpg', 'image/png', NULL, '2025-07-03 10:52:29', '2025-07-14 11:32:12', 1, 'ELIZABETH ARDEN 5TH AVENUE EDP SPRAY 125ml'),
(271, 'ELIZABETH ARDEN 5TH AVENUE NYC EDP SPRAY 125 ML', 'ELIZABETH ARDEN 5TH AVENUE NYC EDP SPRAY 125 ML', 'filemanager/6874ec27f244b.jpg', '686660ede041a.jpg', 714726, 'jpg', 'image/png', NULL, '2025-07-03 10:52:29', '2025-07-14 11:38:15', 1, 'ELIZABETH ARDEN 5TH AVENUE NYC EDP SPRAY 125 ML'),
(272, 'ELIZABETH ARDEN ARDEN BEAUTY EDP 100ML', 'ELIZABETH ARDEN ARDEN BEAUTY EDP 100ML', 'filemanager/6874e6251f83d.jpg', '686660ede080a.jpg', 397523, 'jpg', 'image/png', NULL, '2025-07-03 10:52:29', '2025-07-14 11:12:37', 1, 'ELIZABETH ARDEN ARDEN BEAUTY EDP 100ML'),
(274, 'ELIZABETH ARDEN MY 5th AVENUE EDP 125 ML', 'ELIZABETH ARDEN MY 5th AVENUE EDP 125 ML', 'filemanager/686660ede0e5e.jpg', '686660ede0e5e.jpg', 19546, 'jpg', 'image/jpeg', NULL, '2025-07-03 10:52:29', '2025-07-14 11:04:07', 1, 'ELIZABETH ARDEN MY 5th AVENUE EDP 125 ML'),
(275, 'ELIZABETH ARDEN PROVOCATIVE WOMEN EDT 100ML', 'ELIZABETH ARDEN PROVOCATIVE WOMEN EDT 100ML', 'filemanager/686660ede118a.jpg', '686660ede118a.jpg', 77151, 'jpg', 'image/jpeg', NULL, '2025-07-03 10:52:29', '2025-07-03 10:57:31', 1, 'ELIZABETH ARDEN PROVOCATIVE WOMEN EDT 100ML'),
(276, 'ELIZABETH ARDEN RED DOOR EDT 100 ML', 'ELIZABETH ARDEN RED DOOR EDT 100 ML', 'filemanager/686660ede148b.jpg', '686660ede148b.jpg', 106181, 'jpg', 'image/jpeg', NULL, '2025-07-03 10:52:29', '2025-07-03 10:56:32', 1, 'ELIZABETH ARDEN RED DOOR EDT 100 ML'),
(277, 'ELIZABETH ARDEN WHITE DIAMONDS EDT SPRAY 100ML', 'ELIZABETH ARDEN WHITE DIAMONDS EDT SPRAY 100ML', 'filemanager/686660ede17e9.jpg', '686660ede17e9.jpg', 252100, 'jpg', 'image/jpeg', NULL, '2025-07-03 10:52:29', '2025-07-03 10:56:00', 1, 'ELIZABETH ARDEN WHITE DIAMONDS EDT SPRAY 100ML'),
(278, 'ELIZABETH ARDEN WHITE TEA CLASSIC EDT SPRAY', 'ELIZABETH ARDEN WHITE TEA CLASSIC EDT SPRAY', 'filemanager/686660ede1b32.jpg', '686660ede1b32.jpg', 29732, 'jpg', 'image/jpeg', NULL, '2025-07-03 10:52:29', '2025-07-03 10:55:28', 1, 'ELIZABETH ARDEN WHITE TEA CLASSIC EDT SPRAY'),
(279, 'JOHN VARVATOS ARTISAN BLUE EDT 125ML', 'JOHN VARVATOS ARTISAN BLUE EDT 125ML', 'filemanager/6866632e7387a.jpg', '6866632e7387a.jpg', 137231, 'jpg', 'image/jpeg', NULL, '2025-07-03 11:02:06', '2025-07-03 11:05:33', 1, 'JOHN VARVATOS ARTISAN BLUE EDT 125ML'),
(280, 'JOHN VARVATOS ARTISAN  EDT SPRAY 125ML', 'JOHN VARVATOS ARTISAN  EDT SPRAY 125ML', 'filemanager/6866632e73d2e.jpg', '6866632e73d2e.jpg', 170939, 'jpg', 'image/jpeg', NULL, '2025-07-03 11:02:06', '2025-07-03 11:05:07', 1, 'JOHN VARVATOS ARTISAN  EDT SPRAY 125ML'),
(281, 'JOHN VARVATOS ARTISAN PURE EDT SPRAY 125ML', 'JOHN VARVATOS ARTISAN PURE EDT SPRAY 125ML', 'filemanager/6866632e740bd.jpg', '6866632e740bd.jpg', 38241, 'jpg', 'image/jpeg', NULL, '2025-07-03 11:02:06', '2025-07-03 11:04:48', 1, 'JOHN VARVATOS ARTISAN PURE EDT SPRAY 125ML'),
(282, 'JOHN VARVATOS CLASSIC  EDT SPRAY', 'JOHN VARVATOS CLASSIC  EDT SPRAY', 'filemanager/6866632e74398.jpg', '6866632e74398.jpg', 41321, 'jpg', 'image/jpeg', NULL, '2025-07-03 11:02:06', '2025-07-03 11:04:23', 1, 'JOHN VARVATOS CLASSIC  EDT SPRAY'),
(283, 'JOHN VARVATOS JVXNJ BLUE LIMITED EDITION EDT 125ML', 'JOHN VARVATOS JVXNJ BLUE LIMITED EDITION EDT 125ML', 'filemanager/6866632e74668.jpg', '6866632e74668.jpg', 19072, 'jpg', 'image/jpeg', NULL, '2025-07-03 11:02:06', '2025-07-03 11:03:58', 1, 'JOHN VARVATOS JVXNJ BLUE LIMITED EDITION EDT 125ML'),
(284, 'JOHN VARVATOS VINTAGE EDT SPRAY 125ML', 'JOHN VARVATOS VINTAGE EDT SPRAY 125ML', 'filemanager/6874ff9fe1da6.jpg', '6866632e74902.jpg', 19512, 'jpg', 'image/jpeg', NULL, '2025-07-03 11:02:06', '2025-07-14 13:01:19', 1, 'JOHN VARVATOS VINTAGE EDT SPRAY 125ML'),
(285, 'JOHN VARVATOS ARTISAN TEAL EDT SPRAY 125ML', 'JOHN VARVATOS ARTISAN TEAL EDT SPRAY 125ML', 'filemanager/6866677b556e5.jpg', '6866677b556e5.jpg', 59298, 'jpg', 'image/webp', NULL, '2025-07-03 11:20:27', '2025-07-03 11:20:27', 1, 'JOHN VARVATOS ARTISAN TEAL EDT SPRAY 125ML'),
(286, 'JOHN VARVATOS ARTISAN TEAL EDT SPRAY 125ML', 'JOHN VARVATOS ARTISAN TEAL EDT SPRAY 125ML', 'filemanager/6866677b55f57.jpg', '6866677b55f57.jpg', 1554812, 'jpg', 'image/png', NULL, '2025-07-03 11:20:27', '2025-07-03 11:20:27', 1, 'JOHN VARVATOS ARTISAN TEAL EDT SPRAY 125ML'),
(287, 'JOHN VARVATOS ARTISAN TEAL EDT SPRAY 125ML', 'JOHN VARVATOS ARTISAN TEAL EDT SPRAY 125ML', 'filemanager/6866677b56be2.jpg', '6866677b56be2.jpg', 1609067, 'jpg', 'image/png', NULL, '2025-07-03 11:20:27', '2025-07-03 11:20:27', 1, 'JOHN VARVATOS ARTISAN TEAL EDT SPRAY 125ML'),
(288, 'JOHN VARVATOS ARTISAN TEAL EDT SPRAY 125ML', 'JOHN VARVATOS ARTISAN TEAL EDT SPRAY 125ML', 'filemanager/6866677b577aa.jpg', '6866677b577aa.jpg', 753293, 'jpg', 'image/png', NULL, '2025-07-03 11:20:27', '2025-07-03 11:20:27', 1, 'JOHN VARVATOS ARTISAN TEAL EDT SPRAY 125ML'),
(289, 'JUICY COUTURE VIVA LA JUICY EDP GRANDE EDITION 200ML', 'JUICY COUTURE VIVA LA JUICY EDP GRANDE EDITION 200ML', 'filemanager/68677cec4d4ff.jpg', '68677cec4d4ff.jpg', 277994, 'jpg', 'image/png', NULL, '2025-07-04 07:04:12', '2025-07-04 07:04:12', 1, 'JUICY COUTURE VIVA LA JUICY EDP GRANDE EDITION 200ML'),
(290, 'JUICY COUTURE VIVA LA JUICY EDP GRANDE EDITION 200ML', 'JUICY COUTURE VIVA LA JUICY EDP GRANDE EDITION 200ML', 'filemanager/68677cec4dc59.jpg', '68677cec4dc59.jpg', 521877, 'jpg', 'image/png', NULL, '2025-07-04 07:04:12', '2025-07-04 07:04:12', 1, 'JUICY COUTURE VIVA LA JUICY EDP GRANDE EDITION 200ML'),
(293, 'COACH OPEN ROAD EDT 100ML', 'COACH OPEN ROAD EDT 100ML', 'filemanager/686780ad10027.jpg', '686780ad10027.jpg', 351722, 'jpg', 'image/png', NULL, '2025-07-04 07:20:13', '2025-07-04 07:21:10', 1, 'COACH OPEN ROAD EDT 100ML'),
(294, 'COACH WILD ROSE EDP 90 ML', 'COACH WILD ROSE EDP 90 ML', 'filemanager/686780ad107ba.jpg', '686780ad107ba.jpg', 359010, 'jpg', 'image/png', NULL, '2025-07-04 07:20:13', '2025-07-04 07:24:40', 1, 'COACH WILD ROSE EDP 90 ML'),
(295, 'COACH WILD ROSE EDP 90 ML', 'COACH WILD ROSE EDP 90 ML', 'filemanager/686780ad10c4f.jpg', '686780ad10c4f.jpg', 271184, 'jpg', 'image/png', NULL, '2025-07-04 07:20:13', '2025-07-04 07:24:54', 1, 'COACH WILD ROSE EDP 90 ML'),
(296, 'COACH OPEN ROAD EDT 100ML', 'COACH OPEN ROAD EDT 100ML', 'filemanager/686780ad1102c.jpg', '686780ad1102c.jpg', 166446, 'jpg', 'image/png', NULL, '2025-07-04 07:20:13', '2025-07-04 07:21:25', 1, 'COACH OPEN ROAD EDT 100ML'),
(297, 'COACH FOR MEN EDT 100ML', 'COACH FOR MEN EDT 100ML', 'filemanager/686780ad11389.jpg', '686780ad11389.jpg', 62462, 'jpg', 'image/jpeg', NULL, '2025-07-04 07:20:13', '2025-07-04 07:21:54', 1, 'COACH FOR MEN EDT 100ML'),
(298, 'COACH FOR MEN EDT 100ML', 'COACH FOR MEN EDT 100ML', 'filemanager/686780ad1165e.jpg', '686780ad1165e.jpg', 82844, 'jpg', 'image/jpeg', NULL, '2025-07-04 07:20:13', '2025-07-04 07:22:06', 1, 'COACH FOR MEN EDT 100ML'),
(299, 'COACH GREEN EDT 100ml', 'COACH GREEN EDT 100ml', 'filemanager/686780ad1199d.jpg', '686780ad1199d.jpg', 391097, 'jpg', 'image/png', NULL, '2025-07-04 07:20:13', '2025-07-04 07:22:29', 1, 'COACH GREEN EDT 100ml'),
(300, 'COACH GREEN EDT 100ml', 'COACH GREEN EDT 100ml', 'filemanager/686780ad11da3.jpg', '686780ad11da3.jpg', 304694, 'jpg', 'image/png', NULL, '2025-07-04 07:20:13', '2025-07-04 07:22:39', 1, 'COACH GREEN EDT 100ml'),
(301, 'COACH DREAMS SUNSET WOMEN EDP 90 ML', 'COACH DREAMS SUNSET WOMEN EDP 90 ML', 'filemanager/686780ad121ab.jpg', '686780ad121ab.jpg', 202451, 'jpg', 'image/png', NULL, '2025-07-04 07:20:13', '2025-07-04 07:23:25', 1, 'COACH DREAMS SUNSET WOMEN EDP 90 ML'),
(302, 'COACH DREAMS SUNSET WOMEN EDP 90 ML', 'COACH DREAMS SUNSET WOMEN EDP 90 ML', 'filemanager/686780ad1267c.jpg', '686780ad1267c.jpg', 838595, 'jpg', 'image/png', NULL, '2025-07-04 07:20:13', '2025-07-04 07:23:34', 1, 'COACH DREAMS SUNSET WOMEN EDP 90 ML'),
(303, 'COACH DREAMS SUNSET WOMEN EDP 90 ML', 'COACH DREAMS SUNSET WOMEN EDP 90 ML', 'filemanager/686780ad12c58.jpg', '686780ad12c58.jpg', 819832, 'jpg', 'image/png', NULL, '2025-07-04 07:20:13', '2025-07-04 07:23:48', 1, 'COACH DREAMS SUNSET WOMEN EDP 90 ML'),
(304, 'COACH DREAMS WOMEN EDP 90 ML', 'COACH DREAMS WOMEN EDP 90 ML', 'filemanager/686780ad1316c.jpg', '686780ad1316c.jpg', 138607, 'jpg', 'image/jpeg', NULL, '2025-07-04 07:20:13', '2025-07-04 07:24:04', 1, 'COACH DREAMS WOMEN EDP 90 ML'),
(305, 'COACH DREAMS WOMEN EDP 90 ML', 'COACH DREAMS WOMEN EDP 90 ML', 'filemanager/686780ad13496.jpg', '686780ad13496.jpg', 169745, 'jpg', 'image/png', NULL, '2025-07-04 07:20:13', '2025-07-04 07:24:14', 1, 'COACH DREAMS WOMEN EDP 90 ML'),
(306, 'COACH PLATINUM EDP 100ML', 'COACH PLATINUM EDP 100ML', 'filemanager/68678991c0f1d.webp', '68678991c0f1d.webp', 17918, 'webp', 'image/webp', NULL, '2025-07-04 07:58:09', '2025-07-29 10:54:07', 1, 'COACH'),
(307, 'COACH PLATINUM EDP 100ML', 'COACH PLATINUM EDP 100ML', 'filemanager/68678991c15ce.webp', '68678991c15ce.webp', 16780, 'webp', 'image/webp', NULL, '2025-07-04 07:58:09', '2025-07-29 10:55:33', 1, 'COACH PLATINUM EDP 100ML'),
(308, 'COACH FOR WOMEN  EDP 90ML', 'COACH FOR WOMEN  EDP 90ML', 'filemanager/68678991c1a47.jpg', '68678991c1a47.jpg', 323359, 'jpg', 'image/png', NULL, '2025-07-04 07:58:09', '2025-07-29 10:57:35', 1, 'COACH FOR WOMEN  EDP 90ML'),
(309, 'COACH FLORAL EDP 90ML', 'COACH FLORAL EDP 90ML', 'filemanager/68678991c1fe3.jpg', '68678991c1fe3.jpg', 353971, 'jpg', 'image/png', NULL, '2025-07-04 07:58:09', '2025-07-29 10:59:18', 1, 'COACH FLORAL EDP 90ML'),
(310, 'COACH FOR WOMEN  EDP 90ML', 'COACH FOR WOMEN  EDP 90ML', 'filemanager/68678991c2423.jpg', '68678991c2423.jpg', 283752, 'jpg', 'image/png', NULL, '2025-07-04 07:58:09', '2025-07-29 10:57:22', 1, 'COACH FOR WOMEN  EDP 90ML'),
(311, 'COACH FLORAL BLUSH EDP 90ML', 'COACH FLORAL BLUSH EDP 90ML', 'filemanager/68678991c283f.jpg', '68678991c283f.jpg', 480507, 'jpg', 'image/png', NULL, '2025-07-04 07:58:09', '2025-07-29 10:56:14', 1, 'COACH FLORAL BLUSH EDP 90ML'),
(312, 'COACH FLORAL BLUSH EDP 90ML', 'COACH FLORAL BLUSH EDP 90ML', 'filemanager/68678991c2d85.jpg', '68678991c2d85.jpg', 850234, 'jpg', 'image/png', NULL, '2025-07-04 07:58:09', '2025-07-29 10:59:33', 1, 'COACH FLORAL BLUSH EDP 90ML'),
(313, 'COACH FLORAL BLUSH EDP 90ML', 'COACH FLORAL BLUSH EDP 90ML', 'filemanager/68678991c32fb.jpg', '68678991c32fb.jpg', 228414, 'jpg', 'image/png', NULL, '2025-07-04 07:58:09', '2025-07-29 10:57:48', 1, 'COACH FLORAL BLUSH EDP 90ML'),
(314, 'COACH FLORAL EDP 90ML', 'COACH FLORAL EDP 90ML', 'filemanager/68678991c364a.jpg', '68678991c364a.jpg', 224378, 'jpg', 'image/png', NULL, '2025-07-04 07:58:09', '2025-07-29 10:58:09', 1, 'COACH FLORAL EDP 90ML'),
(315, 'Banner JV', 'Banner JV', 'filemanager/6867bb4ddd92b.jpg', '6867bb4ddd92b.jpg', 1145523, 'jpg', 'image/png', NULL, '2025-07-04 11:30:21', '2025-07-04 11:30:21', 1, 'Banner JV'),
(317, 'COACH LOVE EDP 90ML', 'COACH LOVE EDP 90ML', 'filemanager/6888b9e60d83e.jpg', '6888b9e60d83e.jpg', 299048, 'jpg', 'image/png', NULL, '2025-07-29 12:09:10', '2025-07-29 12:09:10', 1, 'COACH LOVE EDP 90ML'),
(319, 'COACH MAN BLUE MEN EDT 100ML', 'COACH MAN BLUE MEN EDT 100ML', 'filemanager/6888bc6996eff.jpg', '6888bbb0976f6.jpg', 157467, 'jpg', 'image/png', NULL, '2025-07-29 12:16:48', '2025-07-29 12:19:53', 1, 'COACH MAN BLUE MEN EDT 100ML'),
(320, 'COACH MAN BLUE MEN EDT 100ML', 'COACH MAN BLUE MEN EDT 100ML', 'filemanager/6888be871ed78.jpg', '6888bbb097c1c.jpg', 308659, 'jpg', 'image/png', NULL, '2025-07-29 12:16:48', '2025-07-29 12:28:55', 1, 'COACH MAN BLUE MEN EDT 100ML'),
(321, 'KENNETH COLE COPPER BLACK MEN EDT 100ML', 'KENNETH COLE COPPER BLACK MEN EDT 100ML', 'filemanager/68a057b67e4fc.jpg', '68a057b67e4fc.jpg', 14759, 'jpg', 'image/jpeg', NULL, '2025-08-16 10:04:38', '2025-08-16 10:06:20', 1, 'KENNETH COLE'),
(322, 'KENNETH COLE BLACK FOR HER EDP 100ML', 'KENNETH COLE BLACK FOR HER EDP 100ML', 'filemanager/68a057b67eadd.jpg', '68a057b67eadd.jpg', 73184, 'jpg', 'image/jpeg', NULL, '2025-08-16 10:04:38', '2025-08-16 10:07:03', 1, 'KENNETH COLE');
INSERT INTO `filemanager` (`id`, `title`, `description`, `path`, `filename`, `size`, `extension`, `type`, `created_by`, `created_at`, `updated_at`, `is_enable`, `grouping`) VALUES
(323, 'KENNETH COLE WHITE WOMEN EDP 100ML', 'KENNETH COLE WHITE WOMEN EDP 100ML', 'filemanager/68a057b67edf0.jpg', '68a057b67edf0.jpg', 43440, 'jpg', 'image/jpeg', NULL, '2025-08-16 10:04:38', '2025-08-16 10:07:44', 1, 'KENNETH COLE'),
(324, 'KENNETH COLE MANKIND LEGACY EDT 100ML', 'KENNETH COLE MANKIND LEGACY EDT 100ML', 'filemanager/68a057b67f0c2.jpg', '68a057b67f0c2.jpg', 19692, 'jpg', 'image/jpeg', NULL, '2025-08-16 10:04:38', '2025-08-16 10:08:16', 1, 'KENNETH COLE'),
(325, 'KENNETH COLE MANKIND EDT 100ML', 'KENNETH COLE MANKIND EDT 100ML', 'filemanager/68a057b67f379.jpg', '68a057b67f379.jpg', 93469, 'jpg', 'image/png', NULL, '2025-08-16 10:04:38', '2025-08-16 10:08:52', 1, 'KENNETH COLE'),
(326, 'KENNETH COLE MANKIND UNLIMITED EDT 100ML', 'KENNETH COLE MANKIND UNLIMITED EDT 100ML', 'filemanager/68a057b67f605.jpg', '68a057b67f605.jpg', 21324, 'jpg', 'image/jpeg', NULL, '2025-08-16 10:04:38', '2025-08-16 10:09:44', 1, 'KENNETH COLE'),
(327, 'KENNETH COLE RSVP EDT 100ML', 'KENNETH COLE RSVP EDT 100ML', 'filemanager/68a057b67f863.jpg', '68a057b67f863.jpg', 54820, 'jpg', 'image/jpeg', NULL, '2025-08-16 10:04:38', '2025-08-16 10:10:09', 1, 'KENNETH COLE'),
(328, 'KENNETH COLE REACTION WOMEN EDP 100ML', 'KENNETH COLE REACTION WOMEN EDP 100ML', 'filemanager/68a057b67faf1.jpg', '68a057b67faf1.jpg', 103380, 'jpg', 'image/jpeg', NULL, '2025-08-16 10:04:38', '2025-08-16 10:10:33', 1, 'KENNETH COLE'),
(329, 'KENNETH COLE VINTAGE BLACK EDT 100ML', 'KENNETH COLE VINTAGE BLACK EDT 100ML', 'filemanager/68a05b053defd.jpg', '68a05b053defd.jpg', 60356, 'jpg', 'image/jpeg', NULL, '2025-08-16 10:18:45', '2025-08-16 10:18:45', 1, 'KENNETH COLE'),
(330, 'KENNETH COLE BLACK BOLD EDP 100ML', 'KENNETH COLE BLACK BOLD EDP 100ML', 'filemanager/68a05b323d8dd.jpg', '68a05b323d8dd.jpg', 22587, 'jpg', 'image/jpeg', NULL, '2025-08-16 10:19:30', '2025-08-16 10:19:30', 1, 'KENNETH COLE'),
(331, 'Prada L’Homme EDT 100ML', 'Prada L’Homme EDT 100ML', 'filemanager/68c2e43a99c79.jpg', '68c2e43a99c79.jpg', 136779, 'jpg', 'image/png', NULL, '2025-09-11 15:01:14', '2025-09-22 07:43:35', 1, 'PRADA'),
(332, 'Prada L’Homme EDT 100ML', 'Prada L’Homme EDT 100ML', 'filemanager/68c2e43a9a4d6.jpg', '68c2e43a9a4d6.jpg', 122849, 'jpg', 'image/png', NULL, '2025-09-11 15:01:14', '2025-09-22 07:43:14', 1, 'PRADA'),
(333, 'PRADA LOGO', 'PRADA LOGO', 'filemanager/68c2e5086b6d8.png', '68c2e5086b6d8.png', 6661, 'png', 'image/png', NULL, '2025-09-11 15:04:40', '2025-09-22 07:43:05', 1, 'PRADA'),
(336, 'RHYTHM OF OUD 75ML', 'RHYTHM OF OUD 75ML', 'filemanager/68ce95dd698da.jpg', '68ce95dd698da.jpg', 639672, 'jpg', 'image/png', NULL, '2025-09-20 11:54:05', '2025-09-20 11:54:05', 1, 'RHYTHM OF OUD 75ML'),
(337, 'RHYTHM OF OUD 75ML', 'RHYTHM OF OUD 75ML', 'filemanager/68ce95dd6a3f0.jpg', '68ce95dd6a3f0.jpg', 293054, 'jpg', 'image/png', NULL, '2025-09-20 11:54:05', '2025-09-20 11:54:05', 1, 'RHYTHM OF OUD 75ML'),
(338, 'KENNETH COLE BLUE EDT 100ML', 'KENNETH COLE BLUE EDT 100ML', 'filemanager/68cea1265eb4c.jpg', '68cea1265eb4c.jpg', 46332, 'jpg', 'image/jpeg', NULL, '2025-09-20 12:42:14', '2025-09-20 12:42:14', 1, 'KENNETH COLE BLUE EDT 100ML'),
(339, 'MONT BLANC LEGEND EDP 100ML', 'MONT BLANC LEGEND EDP 100ML', 'filemanager/68cea4968299f.jpg', '68cea4968299f.jpg', 36855, 'jpg', 'image/jpeg', NULL, '2025-09-20 12:56:54', '2025-09-20 13:02:06', 1, 'MONT BLANC LEGEND EDP 100ML'),
(340, 'MONT BLANC LEGEND EDT 100ML', 'MONT BLANC LEGEND EDT 100ML', 'filemanager/68cea49683137.jpg', '68cea49683137.jpg', 254090, 'jpg', 'image/png', NULL, '2025-09-20 12:56:54', '2025-09-20 13:01:39', 1, 'MONT BLANC LEGEND EDT 100ML'),
(341, 'MONT BLANC SPIRIT EDT 100ML', 'MONT BLANC SPIRIT EDT 100ML', 'filemanager/68cea49683704.jpg', '68cea49683704.jpg', 197712, 'jpg', 'image/jpeg', NULL, '2025-09-20 12:56:54', '2025-09-20 13:01:21', 1, 'MONT BLANC SPIRIT EDT 100ML'),
(342, 'MONTBLANC EXPLORER PLATINUM EDP 100ML', 'MONTBLANC EXPLORER PLATINUM EDP 100ML', 'filemanager/68cea49683c53.jpg', '68cea49683c53.jpg', 90375, 'jpg', 'image/jpeg', NULL, '2025-09-20 12:56:54', '2025-09-20 13:00:32', 1, 'MONTBLANC EXPLORER PLATINUM EDP 100ML'),
(343, 'MONT BLANC SIGNATURE WOMEN EDP 90ML', 'MONT BLANC SIGNATURE WOMEN EDP 90ML', 'filemanager/68cea496840a0.jpg', '68cea496840a0.jpg', 99010, 'jpg', 'image/png', NULL, '2025-09-20 12:56:54', '2025-09-20 12:59:37', 1, 'MONT BLANC SIGNATURE WOMEN EDP 90ML'),
(344, 'MONT BLANC STARWALKER EDT 75ML', 'MONT BLANC STARWALKER EDT 75ML', 'filemanager/68cea496846a3.jpg', '68cea496846a3.jpg', 441452, 'jpg', 'image/png', NULL, '2025-09-20 12:56:54', '2025-09-20 12:59:19', 1, 'MONT BLANC STARWALKER EDT 75ML'),
(345, 'MONT BLANC EXPLORER ULTRA BLUE EDP 100ML', 'MONT BLANC EXPLORER ULTRA BLUE EDP 100ML', 'filemanager/68cea49684d4b.jpg', '68cea49684d4b.jpg', 38594, 'jpg', 'image/jpeg', NULL, '2025-09-20 12:56:54', '2025-09-20 12:57:47', 1, 'MONT BLANC EXPLORER ULTRA BLUE EDP 100ML'),
(346, 'TRUSSARDI DONNA EDT 100ML', 'TRUSSARDI DONNA EDT 100ML', 'filemanager/68d0e2151a4f8.jpg', '68d0e2151a4f8.jpg', 208670, 'jpg', 'image/png', NULL, '2025-09-22 05:43:49', '2025-09-22 07:54:44', 1, 'TRUSSARDI'),
(347, 'TRUSSARDI BLACK EXTREME EDT 100ML', 'TRUSSARDI BLACK EXTREME EDT 100ML', 'filemanager/68d0e2151ac7b.jpg', '68d0e2151ac7b.jpg', 177674, 'jpg', 'image/png', NULL, '2025-09-22 05:43:49', '2025-09-22 07:55:53', 1, 'TRUSSARDI'),
(348, 'TRUSSARDI BLACK EXTREME EDT 100ML', 'TRUSSARDI BLACK EXTREME EDT 100ML', 'filemanager/68d0e2151b323.jpg', '68d0e2151b323.jpg', 297745, 'jpg', 'image/png', NULL, '2025-09-22 05:43:49', '2025-09-22 07:55:44', 1, 'TRUSSARDI'),
(349, 'TRUSSARDI DELICATE ROSE EDT 100ML', 'TRUSSARDI DELICATE ROSE EDT 100ML', 'filemanager/68d0e2151ba08.jpg', '68d0e2151ba08.jpg', 249986, 'jpg', 'image/png', NULL, '2025-09-22 05:43:49', '2025-09-22 07:54:21', 1, 'TRUSSARDI'),
(350, 'TRUSSARDI DELICATE ROSE EDT 100ML', 'TRUSSARDI DELICATE ROSE EDT 100ML', 'filemanager/68d0e2151c07e.jpg', '68d0e2151c07e.jpg', 214423, 'jpg', 'image/png', NULL, '2025-09-22 05:43:49', '2025-09-22 07:54:05', 1, 'TRUSSARDI'),
(351, 'TRUSSARDI DONNA EDP 100ML', 'TRUSSARDI DONNA EDP 100ML', 'filemanager/68d0e2151c65e.jpg', '68d0e2151c65e.jpg', 132572, 'jpg', 'image/png', NULL, '2025-09-22 05:43:49', '2025-09-22 07:53:02', 1, 'TRUSSARDI'),
(352, 'TRUSSARDI DONNA EDP 100ML', 'TRUSSARDI DONNA EDP 100ML', 'filemanager/68d0e2151cb19.jpg', '68d0e2151cb19.jpg', 163088, 'jpg', 'image/png', NULL, '2025-09-22 05:43:49', '2025-09-22 07:52:16', 1, 'TRUSSARDI'),
(353, 'TRUSSARDI DONNA EDT 100ML', 'TRUSSARDI DONNA EDT 100ML', 'filemanager/68d0e2151d094.jpg', '68d0e2151d094.jpg', 162628, 'jpg', 'image/png', NULL, '2025-09-22 05:43:49', '2025-09-22 07:45:53', 1, 'TRUSSARDI'),
(354, 'TRUSSARDI PURE JASMINE EDP 90ML', 'TRUSSARDI PURE JASMINE EDP 90ML', 'filemanager/68d0e2151d5e8.jpg', '68d0e2151d5e8.jpg', 140997, 'jpg', 'image/png', NULL, '2025-09-22 05:43:49', '2025-09-22 07:44:21', 1, 'TRUSSARDI'),
(355, 'TRUSSARDI PURE JASMINE EDP 90ML', 'TRUSSARDI PURE JASMINE EDP 90ML', 'filemanager/68d0e2151dbcb.jpg', '68d0e2151dbcb.jpg', 258912, 'jpg', 'image/png', NULL, '2025-09-22 05:43:49', '2025-09-22 07:44:10', 1, 'TRUSSARDI'),
(356, 'TRUSSARDI BLUE LAND EDT 100ML', 'TRUSSARDI BLUE LAND EDT 100ML', 'filemanager/68d101f130ea4.jpg', '68d1017dc3a77.webp', 316556, 'jpg', 'image/png', NULL, '2025-09-22 07:57:49', '2025-09-22 07:59:45', 1, 'TRUSSARDI'),
(357, 'TRUSSARDI BLUE LAND EDT 100ML', 'TRUSSARDI BLUE LAND EDT 100ML', 'filemanager/68d101dbcc41c.jpg', '68d101dbcc41c.jpg', 461311, 'jpg', 'image/png', NULL, '2025-09-22 07:59:23', '2025-09-22 07:59:23', 1, 'TRUSSARDI'),
(358, 'TRUSSARDI BLUE LAND EDT 100ML', 'TRUSSARDI BLUE LAND EDT 100ML', 'filemanager/68d10208bd547.jpg', '68d10208bd547.jpg', 94993, 'jpg', 'image/jpeg', NULL, '2025-09-22 08:00:08', '2025-09-22 08:00:08', 1, 'TRUSSARDI'),
(359, 'TRUSSARDI UOMO THE RED EDT 100ML', 'TRUSSARDI UOMO THE RED EDT 100ML', 'filemanager/68d12b45c98a4.jpg', '68d12b45c98a4.jpg', 605044, 'jpg', 'image/png', NULL, '2025-09-22 10:56:05', '2025-09-22 10:56:05', 1, 'TRUSSARDI'),
(360, 'TRUSSARDI BLACK ROSE EDT 100ML', 'TRUSSARDI BLACK ROSE EDT 100ML', 'filemanager/68d12b6486f0f.jpg', '68d12b6486f0f.jpg', 160138, 'jpg', 'image/png', NULL, '2025-09-22 10:56:36', '2025-09-22 10:56:36', 1, 'TRUSSARDI'),
(361, 'VICTORINOX (SWISS ARMY) BLACK STEEL', 'VICTORINOX (SWISS ARMY) BLACK STEEL', 'filemanager/68d38adca4aae.jpg', '68d38adca4aae.jpg', 49227, 'jpg', 'image/jpeg', NULL, '2025-09-24 06:08:28', '2025-09-24 06:08:28', 1, 'VICTORINOX'),
(362, 'VICTORINOX (SWISS ARMY) BLACK STEEL', 'VICTORINOX (SWISS ARMY) BLACK STEEL', 'filemanager/68d38ae080577.jpg', '68d38ae080577.jpg', 28170, 'jpg', 'image/jpeg', NULL, '2025-09-24 06:08:32', '2025-09-24 06:08:32', 1, 'VICTORINOX'),
(363, 'VICTORINOX (SWISS ARMY) CLASSIC', 'VICTORINOX (SWISS ARMY) CLASSIC', 'filemanager/68d38af94c5ac.jpg', '68d38af94c5ac.jpg', 32771, 'jpg', 'image/jpeg', NULL, '2025-09-24 06:08:57', '2025-09-24 06:08:57', 1, 'VICTORINOX'),
(364, 'VICTORINOX (SWISS ARMY) FOR HER FLORAL', 'VICTORINOX (SWISS ARMY) FOR HER FLORAL', 'filemanager/68d38b3837871.jpg', '68d38b3837871.jpg', 18586, 'jpg', 'image/jpeg', NULL, '2025-09-24 06:10:00', '2025-09-24 06:10:00', 1, 'VICTORINOX'),
(365, 'VICTORINOX (SWISS ARMY) FOR HER FLORAL', 'VICTORINOX (SWISS ARMY) FOR HER FLORAL', 'filemanager/68d38b5e468f8.jpg', '68d38b5e468f8.jpg', 17073, 'jpg', 'image/jpeg', NULL, '2025-09-24 06:10:38', '2025-09-24 06:10:38', 1, 'VICTORINOX'),
(366, 'VICTORINOX (SWISS ARMY) FOR HER', 'VICTORINOX (SWISS ARMY) FOR HER', 'filemanager/68d38b6aef1bb.jpg', '68d38b6aef1bb.jpg', 22299, 'jpg', 'image/jpeg', NULL, '2025-09-24 06:10:50', '2025-09-24 06:10:50', 1, 'VICTORINOX'),
(367, 'VICTORINOX (SWISS ARMY) GENEPI 2', 'VICTORINOX (SWISS ARMY) GENEPI 2', 'filemanager/68d3ce5cf39ad.jpg', '68d38b9201fce.jpg', 26050, 'jpg', 'image/jpeg', NULL, '2025-09-24 06:11:30', '2025-09-24 10:56:28', 1, 'VICTORINOX'),
(368, 'VICTORINOX (SWISS ARMY) GENEPI', 'VICTORINOX (SWISS ARMY) GENEPI', 'filemanager/68d38ba063b0b.jpg', '68d38ba063b0b.jpg', 33984, 'jpg', 'image/jpeg', NULL, '2025-09-24 06:11:44', '2025-09-24 06:11:44', 1, 'VICTORINOX'),
(369, 'VICTORINOX (SWISS ARMY) MORNING DEW 2', 'VICTORINOX (SWISS ARMY) MORNING DEW 2', 'filemanager/68d39c89f223e.jpg', '68d39c89f223e.jpg', 11067, 'jpg', 'image/jpeg', NULL, '2025-09-24 07:23:53', '2025-09-24 07:23:53', 1, 'VICTORINOX'),
(370, 'VICTORINOX (SWISS ARMY) MORNING DEW 2', 'VICTORINOX (SWISS ARMY) MORNING DEW 2', 'filemanager/68d39c9104c02.jpg', '68d39c9104c02.jpg', 24589, 'jpg', 'image/jpeg', NULL, '2025-09-24 07:24:01', '2025-09-24 07:24:01', 1, 'VICTORINOX'),
(371, 'VICTORINOX (SWISS ARMY) SPORTS', 'VICTORINOX (SWISS ARMY) SPORTS', 'filemanager/68d39cc3ed4d6.jpg', '68d39cc3ed4d6.jpg', 90600, 'jpg', 'image/png', NULL, '2025-09-24 07:24:51', '2025-09-24 07:24:51', 1, 'VICTORINOX'),
(372, 'VICTORINOX (SWISS ARMY) SPORTS', 'VICTORINOX (SWISS ARMY) SPORTS', 'filemanager/68d39ccbdde4d.jpg', '68d39ccbdde4d.jpg', 16670, 'jpg', 'image/jpeg', NULL, '2025-09-24 07:24:59', '2025-09-24 07:24:59', 1, 'VICTORINOX'),
(373, 'VICTORINOX (SWISS ARMY) STEEL', 'VICTORINOX (SWISS ARMY) STEEL', 'filemanager/68d39ce2978c6.jpg', '68d39ce2978c6.jpg', 545365, 'jpg', 'image/png', NULL, '2025-09-24 07:25:22', '2025-09-24 07:25:22', 1, 'VICTORINOX'),
(374, 'VICTORINOX SWISS ARMY ALTITUDE', 'VICTORINOX SWISS ARMY ALTITUDE', 'filemanager/68d39cfe70589.jpg', '68d39cfe70589.jpg', 99060, 'jpg', 'image/png', NULL, '2025-09-24 07:25:50', '2025-09-24 07:25:50', 1, 'VICTORINOX'),
(375, 'VICTORINOX SWISS ARMY ALTITUDE', 'VICTORINOX SWISS ARMY ALTITUDE', 'filemanager/68d39d0431646.jpg', '68d39d0431646.jpg', 192508, 'jpg', 'image/png', NULL, '2025-09-24 07:25:56', '2025-09-24 07:25:56', 1, 'VICTORINOX'),
(376, 'IMPRESSIONS', 'IMPRESSIONS', 'filemanager/692945b5281e1.jpeg', '692945b5281e1.jpeg', 230572, 'jpeg', 'image/jpeg', NULL, '2025-11-28 06:48:21', '2025-11-28 06:48:21', 1, 'IMPRESSIONS'),
(377, 'IMPRESSION BOTTLE', 'IMPRESSION BOTTLE', 'filemanager/69294bf377d5c.png', '69294bf377d5c.png', 2515997, 'png', 'image/png', NULL, '2025-11-28 07:14:59', '2025-12-01 11:41:15', 1, 'IMPRESSION BOTTLE'),
(378, 'INSPIRED FROM OFFICE FOR MEN 50ML', 'INSPIRED FROM OFFICE FOR MEN 50ML', 'filemanager/692d6253d3352.png', '692d6253d3352.png', 3374920, 'png', 'image/png', NULL, '2025-12-01 09:39:31', '2025-12-01 09:39:31', 1, 'INSPIRED FROM OFFICE FOR MEN 50ML'),
(379, 'CREED BOTTLE', 'CREED BOTTLE', 'filemanager/692d82f3a8eb1.png', '692d82f3a8eb1.png', 2734323, 'png', 'image/png', NULL, '2025-12-01 11:58:43', '2025-12-01 11:58:43', 1, 'CREED BOTTLE'),
(380, 'MANCERA HINDUKUSH 120ML', 'MANCERA HINDUKUSH 120ML', 'filemanager/692e80021cddb.webp', '692e80021cddb.webp', 34246, 'webp', 'image/webp', NULL, '2025-12-02 05:58:26', '2025-12-02 05:58:26', 1, 'MANCERA HINDUKUSH 120ML'),
(381, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', 'filemanager/6930251508e91.png', '6930251508e91.png', 2674338, 'png', 'image/png', NULL, '2025-12-03 11:55:01', '2025-12-03 11:55:01', 1, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME'),
(382, 'CREED AVENTUS FOR MEN EDP 100 ML', 'CREED AVENTUS FOR MEN EDP 100 ML', 'filemanager/694f8f579ae8d.webp', '694f8f579ae8d.webp', 52760, 'webp', 'image/webp', NULL, '2025-12-27 07:48:39', '2025-12-27 07:51:23', 1, 'LUXURY PERFUMES'),
(383, 'CHANEL COCO MADEMOISELLE FOR LADIES EDP 100 ML', 'CHANEL COCO MADEMOISELLE FOR LADIES EDP 100 ML', 'filemanager/694f8f579b577.webp', '694f8f579b577.webp', 37272, 'webp', 'image/webp', NULL, '2025-12-27 07:48:39', '2025-12-27 07:50:31', 1, 'LUXURY PERFUMES'),
(384, 'BDC 100ML', 'BDC 100ML', 'filemanager/694f8f579b9fd.webp', '694f8f579b9fd.webp', 17876, 'webp', 'image/webp', NULL, '2025-12-27 07:48:39', '2025-12-27 07:49:38', 1, 'LUXURY PERFUMES'),
(385, 'BDC 150ML', 'BDC 150ML', 'filemanager/694f8f579c0b8.webp', '694f8f579c0b8.webp', 17634, 'webp', 'image/webp', NULL, '2025-12-27 07:48:39', '2025-12-27 07:49:12', 1, 'LUXURY PERFUMES'),
(386, 'LUXURY PERFUMES GROUP', 'LUXURY PERFUMES GROUP', 'filemanager/694f9b59398c1.png', '694f910ab2a97.png', 1784864, 'png', 'image/png', NULL, '2025-12-27 07:55:54', '2025-12-27 08:39:53', 1, 'LUXURY PERFUMES GROUP');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `slug`, `details`, `is_enable`, `created_at`, `updated_at`) VALUES
(1, 'main menu', 'main-menu', NULL, 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(2, 'Footer Menu 1', 'footer-menu-1', NULL, 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(3, 'Footer Menu 2', 'footer-menu-2', NULL, 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `title`, `subtitle`, `target`, `link`, `level`, `parent_id`, `menu_id`, `sort`, `is_enable`, `created_at`, `updated_at`) VALUES
(1, 'Home', NULL, NULL, '/', 1, NULL, 1, 0, 1, '2024-09-25 16:48:48', '2025-12-02 06:48:54'),
(2, 'Shop', NULL, NULL, 'shop', 1, NULL, 1, 1, 1, '2024-09-25 16:48:48', '2025-12-02 06:48:54'),
(25, 'Monitors', NULL, NULL, '/shop?category=monitors', 2, 23, 1, 0, 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(26, 'Mobiles', NULL, NULL, '/shop?category=mobiles', 2, 23, 1, 0, 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(27, 'About Us', NULL, NULL, '/pages/about-us', 1, NULL, 2, 0, 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(28, 'Order Tracking', NULL, NULL, '/order-tracking', 1, NULL, 2, 0, 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(29, 'FAQs', NULL, NULL, '/pages/faq', 1, NULL, 2, 0, 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(30, 'Contact Us', NULL, NULL, '/pages/contact-us', 1, NULL, 2, 0, 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(31, 'Shipping Policy', NULL, NULL, '/pages/shipping-policy', 1, NULL, 3, 0, 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(32, 'Returns & Exchange', NULL, NULL, '/pages/exchange-and-return-policy', 1, NULL, 3, 0, 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(33, 'Privacy Policy', NULL, NULL, '/pages/privacy-policy', 1, NULL, 3, 0, 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(34, 'Terms & condition', NULL, NULL, '/pages/terms-conditions', 1, NULL, 3, 0, 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(35, 'Perfumes', '', '_blank', 'shop?category=perfumes', 1, NULL, 1, 2, 1, '2025-06-01 19:56:50', '2025-12-02 06:48:54'),
(45, 'IMPRESSIONS', NULL, '_blank', 'https://therareperfumes.online/shop?category=impressions', 1, NULL, 1, 3, 1, '2025-12-02 04:59:04', '2025-12-02 06:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
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
(5, '2024_05_18_140129_create_attributes_table', 1),
(6, '2024_05_18_140812_create_brands_table', 1),
(7, '2024_05_18_141703_create_categories_table', 1),
(8, '2024_05_18_141752_create_collections_table', 1),
(9, '2024_05_18_142133_create_filemanager_table', 1),
(10, '2024_05_18_142230_create_menus_table', 1),
(11, '2024_05_18_142420_create_menu_items_table', 1),
(12, '2024_05_18_143227_create_newsletters_table', 1),
(13, '2024_05_18_143629_create_pages_table', 1),
(14, '2024_05_18_143810_create_payment_methods_table', 1),
(15, '2024_05_18_144340_create_products_table', 1),
(16, '2024_05_18_144425_create_product_collections_table', 1),
(17, '2024_05_18_144517_create_roles_table', 1),
(18, '2024_05_18_144624_create_settings_table', 1),
(19, '2024_05_18_144728_create_sliders_table', 1),
(20, '2024_05_18_144939_create_values_table', 1),
(21, '2024_05_18_145043_create_variations_table', 1),
(22, '2024_05_18_145125_create_variation_attributes_table', 1),
(23, '2024_05_18_145126_create_orders_table', 1),
(24, '2024_05_18_145127_create_order_status_table', 1),
(25, '2024_05_18_145128_create_order_items_table', 1),
(26, '2024_05_21_103826_add_settings_data', 1),
(27, '2024_05_21_104016_add_role_and_user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` text DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `is_enable`, `created_at`, `updated_at`) VALUES
(3, 'jamil.ome@gmail.com', 1, '2025-10-07 07:06:54', '2025-10-07 07:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tracking_id` text DEFAULT NULL,
  `sno` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `order_status` text NOT NULL,
  `order_notes` text DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `delivery_charges` double NOT NULL DEFAULT 0,
  `grandtotal` double DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `customer_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `tracking_id`, `sno`, `customer_name`, `customer_email`, `customer_phone`, `country`, `city`, `address`, `payment_method`, `payment_status`, `order_status`, `order_notes`, `subtotal`, `delivery_charges`, `grandtotal`, `is_enable`, `created_at`, `updated_at`, `customer_notes`) VALUES
(34, 'rare-34_03332289733', NULL, 'ARSHAD HUSSAIN', NULL, '03332289733', 'pakistan', 'KARACHI', 'Plot # H-3/A, SHED NO 3, Sector No 5, Road No 3000, Near Jamia Masjid Miraj , EBM Causeway, Korangi Industrial Area, Karachi', '3', 'paid', '6', NULL, 3250, 250, 3500, 1, '2025-12-01 10:37:48', '2025-12-01 10:39:35', NULL),
(35, 'rare-35_03086107955', NULL, 'JAHAN ZAIB', NULL, '03086107955', 'pakistan', 'karachi', 'HOUSE NO 269-E, STREET-8, ASKARI 10, CANTT, LAHORE', '3', 'paid', '6', NULL, 12250, 250, 12500, 1, '2025-12-01 11:30:05', '2025-12-01 12:26:41', NULL),
(36, 'rare-36_03161117264', NULL, 'ASAD HAFIZ', NULL, '03161117264', 'pakistan', 'KARACHI', 'HOUSE NO 1726/1840 GHOUS NAGAR , BALDIA TOWN, KARACHI', '3', 'paid', '6', NULL, 4750, 250, 5000, 1, '2025-12-01 11:36:40', '2025-12-01 12:26:17', NULL),
(37, 'rare-37_03332289733', NULL, 'ARSHAD HUSSAIN', NULL, '03332289733', 'pakistan', 'KARACHI', 'Plot # H-3/A, SHED NO 3, Sector No 5, Road No 3000, Near Jamia Masjid Miraj , EBM Causeway, Korangi Industrial Area, Karachi', '3', 'paid', '6', NULL, 13250, 250, 13500, 1, '2025-12-01 11:44:42', '2025-12-01 12:25:49', NULL),
(38, 'rare-38_03244850068', NULL, 'TANVEER AHMED', NULL, '03244850068', 'pakistan', 'LAHORE', 'HOUSE # 6/10 NEAR CHASHNI SWEETS QARTABA CHOWK JAIL ROAD LAHORE', '3', 'paid', '6', NULL, 85980, 250, 86230, 1, '2025-12-01 12:20:53', '2025-12-01 12:25:08', NULL),
(39, 'rare-39_03472540177', NULL, 'SHEHZAD ALI', NULL, '03472540177', 'pakistan', 'KARACHI', 'HOUSE NO L-60, STREET 4, SECTOR-48/B, KORANGI NO 2, KARACHI', '3', 'paid', '6', NULL, 38500, 250, 38750, 1, '2025-12-02 07:37:25', '2025-12-02 07:41:26', NULL),
(40, 'rare-40_03123118586', NULL, 'MUHAMMAD UZAIR RASHID', NULL, '03123118586', 'pakistan', 'KARACHI', 'HOUSE NO 1725/2981, MADINA COLONY, BALDIA TOWN, KARACHI', '3', 'paid', '6', NULL, 2150, 250, 2400, 1, '2025-12-03 12:23:58', '2025-12-03 12:24:33', NULL),
(41, 'rare-41_03213936955', NULL, 'SARA IBRAHIM', NULL, '03213936955', 'pakistan', 'KARACHI', 'FLAT NO 202, 2ND FLOOR, COLOMBUS TOWER, BLOCK 8, CLIFTON', '3', 'paid', '6', NULL, 42750, 250, 43000, 1, '2025-12-03 12:34:03', '2025-12-03 12:34:37', NULL),
(42, 'rare-42_03001850819', NULL, 'TARIQ ALI', NULL, '03001850819', 'pakistan', 'KARACHI', 'HOUSE NO 170, KORANGI NO 3, NEAR JAHANZAIB HALEEM, KARACHI.', '3', 'paid', '6', NULL, 2250, 250, 2500, 1, '2025-12-04 12:31:01', '2025-12-04 12:34:42', NULL),
(43, 'rare-43_03123118586', NULL, 'MUHAMMAD UZAIR RASHID', NULL, '03123118586', 'pakistan', 'KARACHI', 'HOUSE NO 1725/2981, MADINA COLONY, BALDIA TOWN, KARACHI', '3', 'paid', '6', NULL, 3350, 250, 3600, 1, '2025-12-04 12:34:01', '2025-12-04 12:34:21', NULL),
(44, 'rare-44_03046699285', NULL, 'ALI AHMED', NULL, '03046699285', 'pakistan', 'KARACHI', '80A, ABU BAKAR BLOCK, NEW GARDEN TOWN, KARACHI', '2', 'paid', '6', NULL, 4750, 250, 5000, 1, '2025-12-05 11:27:34', '2025-12-06 12:16:28', NULL),
(45, 'rare-45_03400289171', NULL, 'HASSAN SYED', NULL, '03400289171', 'pakistan', 'HYDERABAD', 'PIRZADA HOUSE # 12, GULSHAN YASEEN SOCIETY, UNIT # 09, LATIFABAD OPP DARUL ULOOM, HYDERABAD', '2', 'paid', '6', NULL, 9500, 250, 9750, 1, '2025-12-05 11:36:28', '2025-12-06 12:17:10', NULL),
(46, 'rare-46_03424950745', NULL, 'ZAIN MUSHTAQ', NULL, '03424950745', 'pakistan', 'SARGODHA', 'HOUSE # 1, STREET 2, MAKKAH COLONY, CITYSILLANWALI, DISTRICT SARGODHA', '2', 'paid', '6', NULL, 20000, 250, 20250, 1, '2025-12-05 11:39:00', '2025-12-15 08:13:48', NULL),
(47, 'rare-47_03133247500', NULL, 'FAIZAN WASAAN', NULL, '03133247500', 'pakistan', 'SHADADPUR', 'WASSAN HOUSE NEAR BANK ALHABIB M 4-TALWAR , SHAHADADPUR-68030', '2', 'paid', '6', NULL, 32500, 250, 32750, 1, '2025-12-05 11:40:51', '2025-12-15 06:50:10', NULL),
(48, 'rare-48_03180303993', NULL, 'HANIA SHEIKH', NULL, '03180303993', 'pakistan', 'HYDERABAD', 'SADDAR DOCTOR LANE, CLASSIC CENTRE 2006, 3RD FLOOR, HYDERABAD', '2', 'paid', '6', NULL, 33000, 250, 33250, 1, '2025-12-05 11:45:06', '2025-12-15 08:14:29', NULL),
(49, 'rare-49_03347553394', NULL, 'MRS UZMA SHAHBAZ', NULL, '03347553394', 'pakistan', 'RAWALPINDI', 'HOUSE # 4, STREET 15, SECTOR D, ALLAMA IQBAL ROAD, DHA-1, RAWALPINDI', '2', 'paid', '6', NULL, 9000, 250, 9250, 1, '2025-12-05 11:46:48', '2025-12-06 12:19:31', NULL),
(50, 'rare-50_03329297624', NULL, 'NAZISH MUNIR', NULL, '03329297624', 'pakistan', 'ISLAMABAD', 'PRAL OFFICE, 2ND FLOOR, SOFTWARE TECHNOLOGY PARK, I-9/3 ISLAMABAD', '2', 'paid', '6', NULL, 12000, 250, 12250, 1, '2025-12-05 11:50:41', '2025-12-06 12:19:54', NULL),
(51, 'rare-51_03472540177', NULL, 'SHEHZAD ALI', NULL, '03472540177', 'pakistan', 'KARACHI', 'HOUSE NO L-60, STREET 4, SECTOR-48/B, KORANGI NO 2, KARACHI', '3', 'paid', '6', NULL, 2950, 250, 3200, 1, '2025-12-05 12:31:55', '2025-12-05 12:32:13', NULL),
(52, 'rare-52_03222034320', NULL, 'Salik jivani', NULL, '03222034320', 'pakistan', 'Karachi', 'Nazimabad #3 3f 10/12 milad mansion 2nd floor  karachi .', '3', 'paid', '6', NULL, 13000, 250, 13250, 1, '2025-12-05 17:24:55', '2025-12-06 12:22:10', NULL),
(53, 'rare-53_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'House No 32 Street No 52 F11/3, Islamabad', '3', 'paid', '6', NULL, 5000, 250, 5250, 1, '2025-12-06 11:48:48', '2025-12-06 11:49:41', NULL),
(54, 'rare-54_03412448305', NULL, 'BILAL AHMED', NULL, '03412448305', 'pakistan', 'KARACHI', 'H.NO 255, GALI NO 3, BLOCK-A, KHYBER MOHALLA ITTEHAD TOWN, KARACHI', '3', 'paid', '6', NULL, 20750, 250, 21000, 1, '2025-12-06 14:28:03', '2025-12-06 14:28:34', NULL),
(55, 'rare-55_03188155175', NULL, 'Mazhar Zain', NULL, '03188155175', 'pakistan', 'MIRPUR', 'Sahil Clouth Ladies Market Clouth Store', '2', 'unpaid', '3', 'NOT CONFIRMED ON CALL', 11500, 250, 11750, 1, '2025-12-06 14:47:49', '2025-12-06 14:50:52', NULL),
(56, 'rare-56_+92 324 4850068', NULL, 'Tanveer ahmed', NULL, '+92 324 4850068', 'pakistan', 'Lahore', 'House no 6 near qarbata chowk Lahore', '2', 'unpaid', '3', NULL, 67250, 250, 67500, 1, '2025-12-07 18:58:47', '2025-12-31 06:51:59', 'not confirmed on call'),
(57, 'rare-57_03008499010', NULL, 'FARHAN RASHEED BAIG', NULL, '03008499010', 'pakistan', 'LAHORE', 'PLOT # 4B, At # 62, Sharief Park, Itthad Colony, Multan Road, Lahore.', '3', 'paid', '6', NULL, 62500, 250, 62750, 1, '2025-12-08 09:40:34', '2025-12-08 09:54:12', NULL),
(58, 'rare-58_03310222082', NULL, 'Qamyar khan', NULL, '03310222082', 'pakistan', 'Rawalpindi', 'House no 9, street no 1, champion colony, gulzar e quaid, Rawalpindi', '3', 'paid', '6', NULL, 123750, 250, 124000, 1, '2025-12-08 15:04:25', '2025-12-09 15:12:01', NULL),
(59, 'rare-59_03432929169', NULL, 'Imran hussain', NULL, '03432929169', 'pakistan', 'Karachi, Pakistan', 'Alain petroleum attock outlet, F 748-0 TEXTILE AVENUE NEAR JAMIA BINORIA SITE KARACHI', '2', 'paid', '6', NULL, 23500, 250, 23750, 1, '2025-12-08 18:19:02', '2025-12-09 15:10:50', NULL),
(60, 'rare-60_0305 5577328', NULL, 'Mehmosh Asad', NULL, '0305 5577328', 'pakistan', 'ISLAMABAD', 'House 24-A shaheen Farms Masjid Street Samly Dam Road Bharakahu Islamabad', '2', 'unpaid', '3', 'NOT RECEIVED BY CUSTOMER', 32500, 250, 32750, 1, '2025-12-08 18:51:15', '2025-12-15 07:59:44', NULL),
(61, 'rare-61_0306 6829983', NULL, 'Shahid', NULL, '0306 6829983', 'pakistan', 'Lahore', 'G 393 st no.8, phase 6,DHA Lahore', '2', 'paid', '6', NULL, 4750, 250, 5000, 1, '2025-12-08 18:54:16', '2025-12-09 15:10:05', NULL),
(62, 'rare-62_0300-0428522', NULL, 'Mrs Rukhshnda', NULL, '0300-0428522', 'pakistan', 'Karachi', 'Beaconhouse Newlands DHA PHASE 8.Karachi', '2', 'paid', '6', 'Confirmed on call', 2150, 250, 2400, 1, '2025-12-08 19:01:24', '2025-12-09 15:09:39', NULL),
(63, 'rare-63_03002216788', NULL, 'SYED ASIM HUSSAIN RIZVI', NULL, '03002216788', 'pakistan', 'KARACHI', 'H.NO D-326, NAZIMABAD NO 2, KARACHI.', '3', 'paid', '6', NULL, 80000, 250, 80250, 1, '2025-12-09 05:49:28', '2025-12-09 11:09:24', NULL),
(64, 'rare-64_03015462043', NULL, 'Zaid khatak', NULL, '03015462043', 'pakistan', 'Islamabad', 'House no 32, st 52, f11/3, Islamabad', '3', 'paid', '6', NULL, 5250, 250, 5500, 1, '2025-12-09 15:07:42', '2025-12-09 15:11:32', NULL),
(65, 'rare-65_03244850068', NULL, 'Tanveer Ahmed', NULL, '03244850068', 'pakistan', 'Lahore', 'H.no 6/10 near new chashni sweets, jail road,lahore', '2', 'unpaid', '1', NULL, 134500, 250, 134750, 1, '2025-12-09 15:16:28', '2026-01-01 11:14:28', 'not confirmed on call'),
(66, 'rare-66_03015916951', NULL, 'Ahmad Baig', NULL, '03015916951', 'pakistan', 'Nankana sahab', 'Ward No.8 Mohallah Ghousia College Road Street No.1 Panjtan Bar.B.Q, Shahkot District Nankana SahabPostal Code :- 39630', '3', 'paid', '6', NULL, 13750, 250, 14000, 1, '2025-12-09 19:45:01', '2025-12-10 18:11:40', NULL),
(67, 'rare-67_03452204252', NULL, 'USAMA BIN ABID', NULL, '03452204252', 'pakistan', 'Karachi', 'House no 1726/1832 ghous nagar, baldia town, karachi', '3', 'paid', '6', NULL, 5750, 250, 6000, 1, '2025-12-10 18:19:26', '2025-12-11 08:11:37', NULL),
(68, 'rare-68_0321-6827168', NULL, 'Mian Junaid Nawaz', NULL, '0321-6827168', 'pakistan', 'Bhawalpur', 'House no BX-177/D/99 Street no 10 New Sadiq Colony Opposite Masjid Abu Bakar Bahawalpur Punjab', '3', 'paid', '6', NULL, 22750, 250, 23000, 1, '2025-12-10 18:26:31', '2025-12-10 18:38:47', NULL),
(69, 'rare-69_03359235084', NULL, 'hasan sajjad', NULL, '03359235084', 'pakistan', 'Islamabad', 'house 28 street 47 g13/2 islamabad', '2', 'paid', '6', NULL, 4750, 250, 5000, 1, '2025-12-10 18:28:44', '2025-12-12 19:03:18', NULL),
(70, 'rare-70_03218224303', NULL, 'Riaz Solangi', NULL, '03218224303', 'pakistan', 'Karachi', 'House # B-134 Pakistan Scientists Society, Sector 17-A Scheme 33 Gulzar e Hijri Karachi.', '2', 'paid', '6', NULL, 7750, 250, 8000, 1, '2025-12-10 18:31:44', '2025-12-12 19:05:36', NULL),
(71, 'rare-71_0301-5916951', NULL, 'Ahmad Baig', NULL, '0301-5916951', 'pakistan', 'Nankana Sahab', 'Ward No.8 Mohallah Ghousia College Road Street No.1 Panjtan Bar.B.Q, Shahkot District Nankana SahabPostal Code :- 39630', '3', 'paid', '6', NULL, 13500, 250, 13750, 1, '2025-12-10 18:36:35', '2025-12-10 18:37:26', NULL),
(72, 'rare-72_03238252308', NULL, 'Arshad Iqbal', NULL, '03238252308', 'pakistan', 'Karachi', 'House no 50 , Gali no 2, near Kala pul, karachi', '3', 'paid', '6', NULL, 4750, 250, 5000, 1, '2025-12-12 14:19:19', '2025-12-12 19:01:13', NULL),
(73, 'rare-73_03009131882', NULL, 'Masood khan', NULL, '03009131882', 'pakistan', 'Karachi', 'House no 23, gali 3, near khyber chowk, karachi', '3', 'paid', '6', NULL, 2150, 250, 2400, 1, '2025-12-12 14:29:04', '2025-12-12 19:00:31', NULL),
(74, 'rare-74_03310222082', NULL, 'Qamyar khan', NULL, '03310222082', 'pakistan', 'Rawalpindi', 'House no 9, street no 1, champion colony, gulzar e quaid, Rawalpindi', '3', 'paid', '6', NULL, 252750, 250, 253000, 1, '2025-12-12 14:45:48', '2025-12-12 18:58:57', NULL),
(75, 'rare-75_+92 301 5462043', NULL, 'Zaid khattak', NULL, '+92 301 5462043', 'pakistan', 'ISLAMABAD', 'House no 32, F11/3 ISLAMABAD', '3', 'paid', '6', NULL, 18750, 250, 19000, 1, '2025-12-13 18:00:45', '2025-12-13 18:03:41', NULL),
(76, 'rare-76_02070313000', NULL, 'John Smith', 'johnsmith007@storebotmail.joonix.net', '02070313000', 'pakistan', 'london', '76 Buckingham Palace Road', '2', 'unpaid', '3', 'Fake order', 16500, 250, 16750, 1, '2025-12-14 05:40:28', '2025-12-14 18:21:56', NULL),
(77, 'rare-77_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'House No 32 Street No 52 F11/3 , Islamabad', '3', 'paid', '6', NULL, 12850, 250, 13100, 1, '2025-12-17 07:47:02', '2025-12-17 11:06:16', NULL),
(78, 'rare-78_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'House No 32 Street No 52 F11/3 , Islamabad.', '3', 'paid', '6', NULL, 16450, 250, 16700, 1, '2025-12-17 07:51:58', '2025-12-17 11:06:54', NULL),
(79, 'rare-79_03147886055', NULL, 'ZEESHAN MAILK', NULL, '03147886055', 'pakistan', 'RAWALPINDI', 'LIAQUAT BAAGH OFFICE, LIAQUAT ROAD RAWALPINDI-5500', '2', 'paid', '6', NULL, 13500, 250, 13750, 1, '2025-12-17 11:48:20', '2025-12-18 05:23:18', NULL),
(80, 'rare-80_03008650367', NULL, 'SARAH JAVED', NULL, '03008650367', 'pakistan', 'FAISALABAD', 'MADINA TOWN HOUSE,  7 BLOCK W STREET 12, NEAR KIDS VALLEY SCHOOL, FAISALABAD', '2', 'paid', '6', NULL, 3200, 250, 3450, 1, '2025-12-17 11:50:23', '2025-12-30 20:07:05', NULL),
(81, 'rare-81_03452882765', NULL, 'EISHA KAMRAN', NULL, '03452882765', 'pakistan', 'LAHORE', 'HOUSE # 7-A, SAROBA GARDEN HOUSING SOCIETY, FEROZPUR ROAD, LAHORE-53700', '2', 'paid', '6', NULL, 17500, 250, 17750, 1, '2025-12-17 11:51:32', '2025-12-30 20:06:23', NULL),
(82, 'rare-82_03087998665', NULL, 'Muhammad AHMED', NULL, '03087998665', 'pakistan', 'FAISALABAD', 'MOUIZ GARDEN BLOCK-A, STREET NO 4, P/56 STAYANA ROAD, FAISALABAD', '2', 'paid', '6', NULL, 2150, 250, 2400, 1, '2025-12-17 12:05:32', '2025-12-30 20:05:51', NULL),
(83, 'rare-83_03112893227', NULL, 'MUHAMMAD HARIS', NULL, '03112893227', 'pakistan', 'KARACHI', 'IDEAL ICON APPARTMENT, SECOND FLOOR , FLAT NO 203, NEAR PICK AND SAVE PHARMACY , JAMSHEED ROAD, KARACHI.', '3', 'paid', '6', NULL, 69750, 250, 70000, 1, '2025-12-18 08:53:05', '2025-12-20 10:55:31', NULL),
(84, 'rare-84_03115868719', NULL, 'BUSHRA MUNIR', NULL, '03115868719', 'pakistan', 'ISLAMABAD', 'C-166, BLOCK-C, STREET-6, MEDIA TOWN HOUSE, ISLAMABAD-44000', '2', 'paid', '6', NULL, 2150, 250, 2400, 1, '2025-12-18 08:57:24', '2025-12-30 20:04:27', NULL),
(85, 'rare-85_03322045351', NULL, 'AKHLAQ HAIDER', NULL, '03322045351', 'pakistan', 'KARACHI', 'PLOT # 21C, LANE # 12, FLAT NO 5, 3RD FLOOR, BUKHARI COMMERCIAL, KARACHI-75500.', '2', 'paid', '6', NULL, 2250, 250, 2500, 1, '2025-12-19 07:28:43', '2025-12-30 19:59:55', NULL),
(86, 'rare-86_03316108052', NULL, 'SOMIA ATIF', NULL, '03316108052', 'pakistan', 'sialkot', 'HAMZA GHOUS ABDULLAH COLONY, BLOCK-B, STREET NO 7, SIALKOT', '2', 'paid', '6', NULL, 16200, 250, 16450, 1, '2025-12-19 07:46:05', '2025-12-30 19:58:10', NULL),
(87, 'rare-87_03105616489', NULL, 'MARIYA', NULL, '03105616489', 'pakistan', 'RAWALPINDI', 'HOUSE # KH-481, KALYAR STREET 5, SHALLEY VALLEY RANGE ROAD, RAWALPINDI', '2', 'unpaid', '3', 'order mistakenly', 3200, 250, 3450, 1, '2025-12-19 07:49:16', '2025-12-30 19:56:48', NULL),
(88, 'rare-88_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'H.NO 32, ST-52, F11/3, ISLAMABAD.0301-5462043', '3', 'paid', '6', NULL, 56950, 250, 57200, 1, '2025-12-20 09:48:13', '2025-12-30 19:55:56', NULL),
(89, 'rare-89_03425314461', NULL, 'M Faizan', NULL, '03425314461', 'pakistan', 'HYDERABAD', 'Unit No 6 Shah Latif Highest Shop Name Hairport Opp Food Centre Corner Resturant Latifabad Hyderabad.', '2', 'paid', '6', NULL, 4800, 250, 5050, 1, '2025-12-20 09:51:51', '2025-12-30 19:57:28', NULL),
(90, 'rare-90_03343247194', NULL, 'Rabiya', NULL, '03343247194', 'pakistan', 'karachi', 'D 229 Navy Housing Sch Ph 2 Pns Karsaz Dalmia Rd , Karachi.', '2', 'paid', '6', NULL, 6500, 250, 6750, 1, '2025-12-20 09:54:34', '2025-12-30 19:53:47', NULL),
(91, 'rare-91_+923001700282', NULL, 'Aman zahid', NULL, '+923001700282', 'pakistan', 'KARACHI', 'Ho no 6 madina town queen\'s rd near city school, karachi', '2', 'paid', '6', NULL, 2150, 250, 2400, 1, '2025-12-20 10:51:10', '2025-12-30 19:53:12', NULL),
(92, 'rare-92_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'H.NO 32, ST-52, F11/3, ISLAMABAD.0301-5462043', '3', 'paid', '6', NULL, 7750, 250, 8000, 1, '2025-12-20 10:52:56', '2025-12-20 10:54:06', NULL),
(93, 'rare-93_03706635309', NULL, 'Affan umer', NULL, '03706635309', 'pakistan', 'karachi', 'Layri behar colony d rd 17 no gali new building', '2', 'paid', '6', NULL, 10500, 250, 10750, 1, '2025-12-22 06:26:39', '2025-12-30 19:54:29', NULL),
(94, 'rare-94_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'H.NO 32, ST-52, F11/3, ISLAMABAD.0301-5462043', '3', 'paid', '6', NULL, 2750, 250, 3000, 1, '2025-12-22 06:45:21', '2025-12-22 06:45:58', NULL),
(95, 'rare-95_03223030303', NULL, 'Lubna Sardar', NULL, '03223030303', 'pakistan', 'KARACHI', '881 St  No 10 Blk K Ph 6 Dha', '2', 'paid', '6', NULL, 10500, 250, 10750, 1, '2025-12-23 07:02:26', '2025-12-30 19:55:08', NULL),
(96, 'rare-96_03242245403', NULL, 'GUL HASSAN TUNIA', NULL, '03242245403', 'pakistan', 'KARACHI', 'Zamzama Commercial lane 9 saylani street shop name premium makeup 03242245403', '3', 'paid', '6', NULL, 12250, 250, 12500, 1, '2025-12-23 07:07:02', '2025-12-30 19:52:39', 'DO CALL'),
(97, 'rare-97_03008281514', NULL, 'Fatima Kamal', NULL, '03008281514', 'pakistan', 'KARACHI', 'Cheris Beauty Salon Lane 7 Big Nisaht Comm Dha', '2', 'unpaid', '1', NULL, 7650, 250, 7900, 1, '2025-12-23 07:08:43', '2025-12-23 07:08:45', NULL),
(98, 'rare-98_03335690959', NULL, 'Mehwish Shafiq', NULL, '03335690959', 'pakistan', 'ISLAMABAD', 'H No 161 St 15 Blk B Ext Pine Avenue Gulberg Islamabad', '2', 'unpaid', '1', NULL, 2950, 250, 3200, 1, '2025-12-23 07:32:15', '2025-12-23 07:32:17', NULL),
(99, 'rare-99_00923131901637', NULL, 'Mrs Khan', NULL, '00923131901637', 'pakistan', 'CHARSADA', 'Hafiz Super Store Bashir Khan Markt Umarzai Charsada', '2', 'unpaid', '3', 'not attended call for dispatch', 2750, 250, 3000, 1, '2025-12-23 08:11:58', '2025-12-30 19:51:51', NULL),
(100, 'rare-100_03355778000', NULL, 'MUHAMMAD ARSALAN CHOWHAN', NULL, '03355778000', 'pakistan', 'KARACHI', 'CHOWHAN AUTO TRADERS, NEAR RUBI MOR, TRAINING CENTRE, SAEEDABAD, KARACHI', '3', 'paid', '6', NULL, 19750, 250, 20000, 1, '2025-12-23 10:22:12', '2025-12-30 19:50:37', NULL),
(101, 'rare-101_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'H.NO 32, ST-52, F11/3, ISLAMABAD.0301-5462043', '3', 'paid', '6', NULL, 6650, 250, 6900, 1, '2025-12-23 10:25:15', '2025-12-30 19:48:34', NULL),
(102, 'rare-102_03152481754', NULL, 'Amin Gul', NULL, '03152481754', 'pakistan', 'Karachi, Pakistan', 'Alain petroleum attock outlet, F 748-0 TEXTILE AVENUE NEAR JAMIA BINORIA SITE KARACHI', '2', 'unpaid', '3', 'refused to receive', 6000, 250, 6250, 1, '2025-12-24 13:53:30', '2025-12-30 19:50:04', NULL),
(103, 'rare-103_03447744473', NULL, 'Abdul Moiz', NULL, '03447744473', 'pakistan', 'SARGODHA, Faisalabad', 'H 232, pine homes, hassan block, khayaban gardens, sargodha road, Faisalabad.', '2', 'paid', '6', NULL, 2150, 250, 2400, 1, '2025-12-24 13:56:18', '2025-12-30 19:49:05', NULL),
(104, 'rare-104_0335 2112195', NULL, 'Nabiha', NULL, '0335 2112195', 'pakistan', 'Karachi', 'A-60 Haqbahu Plaza, Block 13-C, Gulshan e Iqbal, Karachi', '2', 'paid', '6', NULL, 12500, 250, 12750, 1, '2025-12-24 15:49:56', '2026-01-01 11:19:53', NULL),
(105, 'rare-105_03218842111', NULL, 'Dr saeeda', NULL, '03218842111', 'pakistan', 'Islamabad', 'Dr. SaeedaHouse no 830, street 39, block C ,PWD Islamabad  03218842111', '2', 'paid', '6', NULL, 6000, 250, 6250, 1, '2025-12-26 13:52:11', '2025-12-30 19:47:37', NULL),
(106, 'rare-106_0343 5577875', NULL, 'Kabir Khan', NULL, '0343 5577875', 'pakistan', 'Islamabad', 'House no 28, Street 13, Sector C-1, Bahria Enclave Islamabad', '2', 'unpaid', '3', 'not received', 12250, 250, 12500, 1, '2025-12-26 13:53:26', '2025-12-30 19:46:49', NULL),
(107, 'rare-107_03003632510', NULL, 'AWAIS KHAN', NULL, '03003632510', 'pakistan', 'FAISALABAD', 'EDEN GARDEN A BLOCK 99 HOUSE NEAR HASSAN VILLAS CANAL ROAD, STREET 3, FAISALABAD', '2', 'paid', '6', 'KI7518041641', 2750, 250, 3000, 1, '2025-12-27 07:28:28', '2025-12-30 19:45:07', NULL),
(108, 'rare-108_03336216509', NULL, 'KANEEZ FIZZA', NULL, '03336216509', 'pakistan', 'KARACHI', 'HOUSE NO 68, USMANIA SOCIETY NAZIMABAD NO 1, KARACHI', '2', 'paid', '6', 'KI7517987689', 5500, 250, 5750, 1, '2025-12-27 07:32:01', '2025-12-30 19:44:28', NULL),
(109, 'rare-109_03335068712', NULL, 'MUHAMMAD AZHAR SULTAN', NULL, '03335068712', 'pakistan', 'KARACHI', 'SELF PICK UP FROM LOCATION', '4', 'paid', '6', NULL, 64750, 250, 65000, 1, '2025-12-27 09:47:01', '2026-01-20 10:48:54', 'CREDIT CARD PUNCH'),
(110, 'rare-110_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'H.NO 32, ST-52, F11/3, ISLAMABAD.0301-5462043', '3', 'paid', '6', NULL, 2950, 250, 3200, 1, '2025-12-29 08:59:05', '2025-12-30 19:43:19', NULL),
(111, 'rare-111_03332696755', NULL, 'Sawera Dars', NULL, '03332696755', 'pakistan', 'HYDERABAD', 'H No 23 Old Campus Coloby Model School Hyderabad', '2', 'paid', '6', NULL, 10650, 250, 10900, 1, '2025-12-29 10:01:53', '2025-12-30 19:42:40', NULL),
(112, 'rare-112_03111881720', NULL, 'Amna amjad', NULL, '03111881720', 'pakistan', 'RAWALPINDI', 'Blk d st no 10 media town house 509 , rawalpindi.', '2', 'paid', '6', NULL, 10750, 250, 11000, 1, '2025-12-29 10:03:50', '2025-12-30 19:41:28', NULL),
(113, 'rare-113_03033543532', NULL, 'Sandeep Kumar', NULL, '03033543532', 'pakistan', 'quetta', 'Ssd Gift Centre Fateh Khan Markt Jinnah Rd Quetta', '2', 'paid', '6', NULL, 8000, 250, 8250, 1, '2025-12-29 10:05:07', '2025-12-30 19:40:53', NULL),
(114, 'rare-114_03341123211', NULL, 'Salman', NULL, '03341123211', 'pakistan', 'Karachi', 'Flat 104 mustafa pride near meerut kabab house gurumandir Karachi', '3', 'paid', '6', NULL, 13250, 250, 13500, 1, '2025-12-29 18:21:25', '2025-12-30 19:40:16', NULL),
(115, 'rare-115_+923112893227', NULL, 'Muhammad Harris', NULL, '03112893227', 'pakistan', 'Karachi', 'IDEAL ICON APPARTMENT, SECOND FLOOR , FLAT NO 203, NEAR PICK AND SAVE PHARMACY , JAMSHEED ROAD, KARACHI.', '3', 'paid', '6', NULL, 59750, 250, 60000, 1, '2025-12-30 17:27:44', '2025-12-31 10:08:26', NULL),
(116, 'rare-116_03362182095', NULL, 'SEERAT FATIMA', NULL, '03362182095', 'pakistan', 'KARACHI', 'F-51/2, BLOCK-7, CLIFTON, KARACHI', '3', 'paid', '6', NULL, 13750, 250, 14000, 1, '2025-12-31 07:29:02', '2025-12-31 07:29:38', NULL),
(117, 'rare-117_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'H.NO 32, ST-52, F11/3, ISLAMABAD.0301-5462043', '3', 'paid', '6', 'advance received on 31/12/2025', 3250, 250, 3500, 1, '2026-01-01 11:15:05', '2026-01-01 11:17:00', NULL),
(118, 'rare-118_03411282871', NULL, 'Muammad Abu Turab', NULL, '03411282871', 'pakistan', 'karachi', 'HOUSE no L-75, Street-4, Sector 48/B, Korangi No 2, karachi', '3', 'paid', '6', NULL, 18750, 250, 19000, 1, '2026-01-01 12:04:45', '2026-01-01 12:10:35', NULL),
(119, 'rare-119_03411282871', NULL, 'Muammad Abu Turab', NULL, '03411282871', 'pakistan', 'karachi', 'HOUSE no L-75, Street-4, Sector 48/B, Korangi No 2, karachi', '3', 'paid', '6', NULL, 9250, 250, 9500, 1, '2026-01-01 12:06:31', '2026-01-01 12:10:50', NULL),
(120, 'rare-120_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'H.NO 32, ST-52, F11/3, ISLAMABAD.0301-5462043', '3', 'paid', '6', NULL, 6250, 250, 6500, 1, '2026-01-01 12:08:24', '2026-01-01 12:11:07', NULL),
(121, 'rare-121_03279679459', NULL, 'ZARA ali', NULL, '03279679459', 'pakistan', 'karachi', 'Agha Khan Hospital, Stadium Road, Karachi', '2', 'paid', '6', NULL, 4500, 250, 4750, 1, '2026-01-02 09:28:27', '2026-01-02 11:52:42', 'tracking id KI7518282964'),
(122, 'rare-122_03342798763', NULL, 'Rubina jamshed', NULL, '03342798763', 'pakistan', 'karachi', 'House B-9, Commisioner Society House  (back of Ahsan Cng pump) Abul Hassan Isphani Road, Karachi.', '2', 'paid', '6', NULL, 9500, 250, 9750, 1, '2026-01-02 10:39:54', '2026-01-02 11:54:21', 'tracking id KI7518287602'),
(123, 'rare-123_03342798763', NULL, 'Rubina jamshed', NULL, '03342798763', 'pakistan', 'karachi', 'House B-9, Commisioner Society House (back of Ahsan Cng pump) Abul Hassan Isphani Road, Karachi.', '2', 'paid', '6', NULL, 11500, 250, 11750, 1, '2026-01-02 10:41:50', '2026-01-02 11:54:03', 'tracking id KI7518287602 (merge with order # 122)'),
(124, 'rare-124_03332587640', NULL, 'Nimra Jahejo', NULL, '03332587640', 'pakistan', 'HYDERABAD', 'Banglow No A48, GMB Colony, Street # 1, Qasimabad, Hyderabad.', '2', 'paid', '6', NULL, 15500, 250, 15750, 1, '2026-01-02 10:45:14', '2026-01-02 11:53:22', 'Tracking ID 7518282959'),
(125, 'rare-125_03461892769', NULL, 'Sonia Alavi', NULL, '03461892769', 'pakistan', 'karachi', 'Flat no H-18, 2nd floor, noman grand city, block-17, Karachi.', '2', 'paid', '6', NULL, 13500, 250, 13750, 1, '2026-01-02 11:46:48', '2026-01-02 11:52:57', 'Tracking Id # KI7518282956'),
(126, 'rare-126_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'H.NO 32, ST-52, F11/3, ISLAMABAD.0301-5462043', '3', 'paid', '6', NULL, 6650, 250, 6900, 1, '2026-01-03 06:50:56', '2026-01-03 06:51:23', NULL),
(127, 'rare-127_03049737999', NULL, 'Kirran Zia', NULL, '03049737999', 'pakistan', 'RAWALPINDI', '1709 B 1 Ph 7 Bahria Town B 1', '2', 'paid', '6', NULL, 9250, 250, 9500, 1, '2026-01-05 12:22:40', '2026-01-20 05:54:26', NULL),
(128, 'rare-128_03009209228', NULL, 'Kanwal Zafar', NULL, '03009209228', 'pakistan', 'karachi', 'Main Khy E Shahbaz 10-B/2 Ph 6 Dha Karachi', '2', 'paid', '6', NULL, 10500, 250, 10750, 1, '2026-01-05 12:23:36', '2026-01-20 05:53:45', NULL),
(129, 'rare-129_03145788596', NULL, 'Mrs  Mohsin', NULL, '03145788596', 'pakistan', 'ISLAMABAD', 'Hno 6 Upper Floor St No 48 G6 1-1', '2', 'paid', '6', NULL, 4500, 250, 4750, 1, '2026-01-05 12:24:24', '2026-01-20 05:53:07', NULL),
(130, 'rare-130_03243067845', NULL, 'Fahad', NULL, '03243067845', 'pakistan', 'HYDERABAD', 'Shahi Bazar Chandi Wali Gali Alkhair Palza Flt No 2', '2', 'paid', '6', NULL, 9500, 250, 9750, 1, '2026-01-05 12:25:12', '2026-01-20 05:52:51', NULL),
(131, 'rare-131_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'H.NO 32, ST-52, F11/3, ISLAMABAD.0301-5462043', '3', 'paid', '6', NULL, 4450, 250, 4700, 1, '2026-01-05 12:27:32', '2026-01-20 05:55:12', NULL),
(132, 'rare-132_03005035984', NULL, 'Mustafa Ansari', NULL, '03005035984', 'pakistan', 'KARACHI', '43 B/2 Khy E Badban Ph 7 Dha Karachi', '2', 'paid', '6', NULL, 10500, 250, 10750, 1, '2026-01-05 12:28:36', '2026-01-20 05:51:23', NULL),
(133, 'rare-133_03459840450', NULL, 'Naveed Anjum', NULL, '03459840450', 'pakistan', 'Dera Ismail Khan', 'Saeed Abad Street, Elite School Near NCC Ground Chah syed munawar road , dera ismail khan.', '3', 'paid', '6', NULL, 38250, 250, 38500, 1, '2026-01-06 12:26:19', '2026-01-20 05:50:50', NULL),
(134, 'rare-134_03242245403', NULL, 'GUL HASSAN TUNIA', NULL, '03242245403', 'pakistan', 'karachi', 'Zamzama Commercial lane 9 saylani street shop name premium makeup, karachi', '3', 'paid', '6', NULL, 14600, 250, 14850, 1, '2026-01-06 12:30:31', '2026-01-20 05:50:28', NULL),
(135, 'rare-135_03115669000', NULL, 'Umar & co', NULL, '03115669000', 'pakistan', 'Chishtian', 'Awais bilal shop , sugar broker, jamia bazar, chishtian.', '3', 'paid', '6', NULL, 28250, 250, 28500, 1, '2026-01-06 18:16:43', '2026-01-20 05:50:04', NULL),
(136, 'rare-136_03000356476', NULL, 'Sarib ali', NULL, '03000356476', 'pakistan', 'Karachi', 'House S-20/II, 16TH East street , DHA , phase 1, karachi', '3', 'paid', '6', NULL, 19750, 250, 20000, 1, '2026-01-06 18:21:52', '2026-01-20 05:49:31', NULL),
(137, 'rare-137_03015462043', NULL, 'Zaid khattak', NULL, '03015462043', 'pakistan', 'Islamabad', 'H.NO 32, ST-52, F11/3, ISLAMABAD.0301-5462043', '3', 'paid', '6', NULL, 4950, 250, 5200, 1, '2026-01-06 19:02:10', '2026-01-20 05:49:00', NULL),
(139, 'rare-139_03242245403', NULL, 'Mhammad Hamza Jatoi', NULL, '03242245403', 'pakistan', 'karachi', 'Khayaban-e-Shaheen near The Coffee bean & Tea Leaf , Karachi', '3', 'paid', '6', NULL, 15250, 250, 15500, 1, '2026-01-10 11:59:30', '2026-01-20 05:47:57', NULL),
(140, 'rare-140_03322825353', NULL, 'Saira Ali', NULL, '03322825353', 'pakistan', 'karachi', 'Ho No 237 Aminabad Colony Pib Colony Karachi', '2', 'paid', '6', NULL, 9500, 250, 9750, 1, '2026-01-10 12:01:39', '2026-01-20 05:47:29', NULL),
(141, 'rare-141_03244427748', NULL, 'Sadaf T', NULL, '03244427748', 'pakistan', 'lahore', '169c Allaudin Rd Cantt, lahore', '2', 'paid', '6', NULL, 2250, 250, 2500, 1, '2026-01-10 12:03:31', '2026-01-20 05:47:11', NULL),
(142, 'rare-142_03302120099', NULL, 'Miftah Uddin', NULL, '03302120099', 'pakistan', 'karachi', 'Dr Mohiuddin Clinic Patha Colony Near By Valika Hospital Manghopirrd', '2', 'paid', '6', NULL, 10750, 250, 11000, 1, '2026-01-10 12:04:20', '2026-01-20 05:46:50', NULL),
(143, 'rare-143_03302120099', NULL, 'Miftah Uddin', NULL, '03302120099', 'pakistan', 'karachi', 'Dr Mohiuddin Clinic Patha Colony Near By Valika Hospital Manghopir road, Karachi.', '2', 'paid', '6', NULL, 5850, 250, 6100, 1, '2026-01-12 08:54:30', '2026-01-20 05:46:29', NULL),
(144, 'rare-144_03209297562', NULL, 'Urma Shaukat', NULL, '03209297562', 'pakistan', 'karachi', 'R 270 Blk 6 Gul E Iqbal Karachi', '2', 'paid', '6', NULL, 24500, 250, 24750, 1, '2026-01-12 08:58:57', '2026-01-20 05:46:10', NULL),
(145, 'rare-145_03313111082', NULL, 'Habibullah Habib', NULL, '03313111082', 'pakistan', 'karachi', 'Hno 16 Blk 1 Row C Sindhi Jamat Ch Near Jogi Mor Landhi', '2', 'paid', '6', NULL, 31230, 250, 31480, 1, '2026-01-12 09:01:54', '2026-01-20 05:45:47', NULL),
(146, 'rare-146_03499906667', NULL, 'Noman Khan', NULL, '03499906667', 'pakistan', 'HARIPUR', 'Ho No 166 Muhallah Kachi Sect No 3 Kts Haripur House No 166 Muhallah Haripur', '2', 'paid', '6', NULL, 15500, 250, 15750, 1, '2026-01-12 09:03:14', '2026-01-20 05:43:27', NULL),
(147, 'rare-147_03161611463', NULL, 'MEER SAHAB', NULL, '03161611463', 'pakistan', 'KARACHI', 'gulshan e maymar hunain habits flat no 603 appartment karachi', '2', 'paid', '6', NULL, 32500, 250, 32750, 1, '2026-01-12 09:04:45', '2026-01-20 05:43:07', NULL),
(148, 'rare-148_03027510047', NULL, 'RASIKH DASTAGIR', NULL, '03027510047', 'pakistan', 'multan', 'al hammad filling station askari bye pass multan', '2', 'paid', '6', NULL, 27500, 250, 27750, 1, '2026-01-12 09:05:58', '2026-01-20 05:42:34', NULL),
(149, 'rare-149_03429062928', NULL, 'AYYAN KHAN', NULL, '03429062928', 'pakistan', 'PESHAWAR', 'khan house st near hudaibia model school gulberg no 4 peshawar', '2', 'paid', '6', NULL, 17500, 250, 17750, 1, '2026-01-12 10:07:47', '2026-01-20 05:42:15', NULL),
(150, 'rare-150_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'H.NO 32, ST-52, F11/3, ISLAMABAD.', '3', 'paid', '6', NULL, 5250, 250, 5500, 1, '2026-01-13 08:36:49', '2026-01-20 05:39:11', NULL),
(151, 'rare-151_03429062928', NULL, 'AYYAN KHAN', NULL, '03429062928', 'pakistan', 'PESHAWAR', 'khan house st near hudaibia model school gulberg no 4 peshawar', '2', 'paid', '6', NULL, 12000, 250, 12250, 1, '2026-01-13 08:39:42', '2026-01-20 05:38:48', NULL),
(152, 'rare-152_03323459765', NULL, 'MARYUM Q', NULL, '03323459765', 'pakistan', 'karachi', 'b 254 blk 14 gul e johar long st near by kababjees bakers', '2', 'paid', '6', NULL, 9250, 250, 9500, 1, '2026-01-13 08:41:12', '2026-01-20 05:38:23', NULL),
(153, 'rare-153_03241491499', NULL, 'QASIM NAWAZ', NULL, '03241491499', 'pakistan', 'LAHORE', 'hno 138a blk c pia society johar town lhr', '2', 'paid', '6', NULL, 16500, 250, 16750, 1, '2026-01-13 08:42:23', '2026-01-20 05:37:58', NULL),
(154, 'rare-154_03003000812', NULL, 'MAHAR HASSAN', NULL, '03003000812', 'pakistan', 'sahiwal', 'subhan mobile main lari adda tehsil sahiwal', '2', 'paid', '6', NULL, 16000, 250, 16250, 1, '2026-01-13 08:44:04', '2026-01-20 05:37:32', NULL),
(155, 'rare-155_03018317606', NULL, 'Amna israr', NULL, '03018317606', 'pakistan', 'kotri', 'New gulberg town mathar rd house no 66 loond', '2', 'paid', '6', NULL, 14500, 250, 14750, 1, '2026-01-13 08:45:49', '2026-01-20 05:37:14', NULL),
(156, 'rare-156_03041332220', NULL, 'UMAIR AKHTER', NULL, '03041332220', 'pakistan', 'JAMSHORO', 'hno 126 shahlatif colony jamshoroo', '2', 'paid', '6', NULL, 2250, 250, 2500, 1, '2026-01-14 10:28:02', '2026-01-20 05:36:34', NULL),
(157, 'rare-157_03176491902', NULL, 'IKRAM HAIDER', NULL, '03176491902', 'pakistan', 'JAMPUR', 'dajal rd jampur bypass d.r fareed changwani jampur', '2', 'paid', '6', NULL, 15000, 250, 15250, 1, '2026-01-14 10:28:55', '2026-01-20 05:36:13', NULL),
(158, 'rare-158_03452104336', NULL, 'FAWAD RAHIM', NULL, '03452104336', 'pakistan', 'karachi', '8/1 c st dha ph 5c , Karachi', '2', 'paid', '6', NULL, 27500, 250, 27750, 1, '2026-01-14 10:30:18', '2026-01-20 05:35:36', NULL),
(159, 'rare-159_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'H.NO 32, ST-52, F11/3, ISLAMABAD.', '3', 'paid', '6', NULL, 6650, 250, 6900, 1, '2026-01-14 10:33:52', '2026-01-20 05:34:24', NULL),
(160, 'rare-160_03115868719', NULL, 'BUSHRA MUNIR', NULL, '03115868719', 'pakistan', 'ISLAMABAD', 'c-166 blk-c st no 6 media town , islamabad', '2', 'paid', '6', NULL, 17500, 250, 17750, 1, '2026-01-14 10:35:16', '2026-01-20 05:17:32', NULL),
(161, 'rare-161_0346-2262743', NULL, 'HAFIZ AZEEM UDDIN SHAIKH', NULL, '0346-2262743', 'pakistan', 'LAHORE', 'HOUSE NO 385, ASKARI-II, SECTOR A BEDIAN ROAD, LAHORE', '3', 'paid', '6', NULL, 14250, 250, 14500, 1, '2026-01-14 10:39:27', '2026-01-20 05:16:54', NULL),
(162, 'rare-162_03217792712', NULL, 'SANIYA EJAZ', NULL, '03217792712', 'pakistan', 'FAISALABAD', 'abdullah pashah house st 18 house no p22 abdullahpour', '2', 'paid', '6', NULL, 2700, 250, 2950, 1, '2026-01-14 10:40:25', '2026-01-20 05:16:22', NULL),
(163, 'rare-163_03027510047', NULL, 'RASIKH DASTAGIR', NULL, '03027510047', 'pakistan', 'multan', 'al ahmad filling station askri bye pass multan', '2', 'paid', '6', NULL, 9500, 250, 9750, 1, '2026-01-14 10:41:32', '2026-01-20 05:16:02', NULL),
(164, 'rare-164_03112893227', NULL, 'MUHAMMAD HARIS', NULL, '03112893227', 'pakistan', 'KARACHI', 'IDEAL ICON APPARTMENT, SECOND FLOOR , FLAT NO 203, NEAR PICK AND SAVE PHARMACY , JAMSHEED ROAD, KARACHI.', '3', 'paid', '6', NULL, 19250, 250, 19500, 1, '2026-01-14 10:46:53', '2026-01-20 05:13:06', NULL),
(165, 'rare-165_03227552204', NULL, 'Adnan khan', NULL, '03227552204', 'pakistan', 'PESHAWAR', 'Eshrat cenima chowk near by babar st 26b,g peshawar', '2', 'paid', '6', NULL, 31500, 250, 31750, 1, '2026-01-14 10:57:46', '2026-01-20 05:11:31', NULL),
(166, 'rare-166_03242245403', NULL, 'GUL HASSAN TUNIA', NULL, '03242245403', 'pakistan', 'karachi', 'Zamzama Commercial lane 9 saylani street shop name premium makeup, karachi', '3', 'unpaid', '1', NULL, 19250, 250, 19500, 1, '2026-01-17 11:31:29', '2026-01-17 11:31:29', NULL),
(167, 'rare-167_03227552204', NULL, 'Adnan khan', NULL, '03227552204', 'pakistan', 'PESHAWAR', 'Eshrat cenima chowk near by babar st 26b,g peshawar', '2', 'unpaid', '1', NULL, 7250, 250, 7500, 1, '2026-01-17 12:03:02', '2026-01-17 12:03:02', NULL),
(168, 'rare-168_03332257737', NULL, 'SYED NAVAID ALI', NULL, '03332257737', 'pakistan', 'Karachi', 'Nageena Square, Flat # D/111,  First Floor, Block-G, North Nazimabad, Karachi', '3', 'unpaid', '1', NULL, 49750, 250, 50000, 1, '2026-01-17 12:06:53', '2026-01-17 12:06:53', NULL),
(169, 'rare-169_03357359988', NULL, 'HAFIZ UMER', NULL, '03357359988', 'pakistan', 'FAISALABAD', 'h no 198 ph 3 tech town satyana rd fsd', '2', 'unpaid', '1', NULL, 2250, 250, 2500, 1, '2026-01-17 12:07:36', '2026-01-17 12:07:36', NULL),
(170, 'rare-170_03104660346', NULL, 'SABHI SABHI', NULL, '03104660346', 'pakistan', 'karachi', 'gulshan e maymar sec y4 appt khi', '2', 'unpaid', '1', NULL, 9500, 250, 9750, 1, '2026-01-17 12:08:44', '2026-01-17 12:08:44', NULL),
(171, 'rare-171_03046699285', NULL, 'Ali ahmed', NULL, '03046699285', 'pakistan', 'LAHORE', '80 a abu bakar blk new garden town lhr', '2', 'unpaid', '1', NULL, 2700, 250, 2950, 1, '2026-01-17 12:09:31', '2026-01-17 12:09:31', NULL),
(172, 'rare-172_03343319299', NULL, 'SYED RASHID BASHIR', NULL, '03343319299', 'pakistan', 'KARACHI', '189 c blk 2 pechs shah e faisal shah e quaideen 1 flr khi', '2', 'unpaid', '1', NULL, 92250, 250, 92500, 1, '2026-01-17 12:24:46', '2026-01-17 12:24:46', NULL),
(173, 'rare-173_03485138231', NULL, 'RIMSHA MEHREEN', NULL, '03485138231', 'pakistan', 'JAND', 'mohallah grid station jand the jand dist attock near punjab jand', '2', 'unpaid', '1', NULL, 12500, 250, 12750, 1, '2026-01-17 12:30:27', '2026-01-17 12:30:27', NULL),
(174, 'rare-174_03008499010', NULL, 'FARHAN RASHEED BAIG', NULL, '03008499010', 'pakistan', 'LAHORE', 'PLOT # 4B, At # 62, Sharief Park, Itthad Colony, Multan Road, Lahore.', '3', 'unpaid', '1', NULL, 240900, 250, 241150, 1, '2026-01-17 12:34:37', '2026-01-17 12:34:37', NULL),
(175, 'rare-175_03242245403', NULL, 'GUL HASSAN TUNIA', NULL, '03242245403', 'pakistan', 'KARACHI', 'Zamzama Commercial lane 9 saylani street shop name premium makeup 03242245403', '3', 'unpaid', '1', NULL, 13450, 250, 13700, 1, '2026-01-18 19:02:45', '2026-01-18 19:02:45', 'PAYMENT RECEIVED ON 05/1/26, ORDER ERROR'),
(176, 'rare-176_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'H.NO 32, ST-52, F11/3, ISLAMABAD.', '3', 'unpaid', '1', NULL, 15250, 250, 15500, 1, '2026-01-18 19:05:32', '2026-01-18 19:05:32', 'PAYMENT RECEIVED 06/12/2025 BUT ORDER ERROR'),
(177, 'rare-177_03335681991', NULL, 'M SALMAN', NULL, '03335681991', 'pakistan', 'TAXILA', 'hno c 9 uetaxaila oficers residential colony taxila', '2', 'unpaid', '1', NULL, 16500, 250, 16750, 1, '2026-01-19 08:29:43', '2026-01-19 08:29:43', NULL),
(178, 'rare-178_03111881720', NULL, 'Amna amjad', NULL, '03111881720', 'pakistan', 'RAWALPINDI', 'Blk d st no 10 media town house 509 rawalpindi', '2', 'unpaid', '1', NULL, 17500, 250, 17750, 1, '2026-01-19 08:31:00', '2026-01-19 08:31:00', NULL),
(179, 'rare-179_03015462043', NULL, 'ZAID KHATTAK (ESSENCE DE ARABIA )', NULL, '03015462043', 'pakistan', 'ISLAMABAD', 'H.NO 32, ST-52, F11/3, ISLAMABAD.', '3', 'unpaid', '1', NULL, 9950, 250, 10200, 1, '2026-01-19 08:31:35', '2026-01-19 08:31:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `sku` text DEFAULT NULL,
  `image_id` text DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `attr` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `variation_id`, `title`, `sku`, `image_id`, `quantity`, `price`, `total`, `attr`, `created_at`, `updated_at`) VALUES
(26, 23, 110, 'JUICY COUTURE I AM JUICY COUTURE EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/685cfec691efc.jpg', 1, 10925, 10925, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-06-27 10:50:46', '2025-06-27 10:50:46'),
(27, 24, 94, 'JIMMY CHOO FEVER EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/685be75bdd2fb.jpg', 1, 15675, 15675, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-07-28 19:38:19', '2025-07-28 19:38:19'),
(28, 25, 94, 'JIMMY CHOO FEVER EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/685be75bdd2fb.jpg', 1, 15675, 15675, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-07-28 19:38:27', '2025-07-28 19:38:27'),
(29, 26, 88, 'ARISTOCRAT FOR MEN EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/684822f163872.jpg', 1, 12350, 12350, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-07-29 06:10:13', '2025-07-29 06:10:13'),
(30, 27, 45, 'WANDERER EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498fa0b8824.jpg', 1, 6175, 6175, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-09-14 04:52:41', '2025-09-14 04:52:41'),
(31, 28, 54, 'RAINDROPS EDP 50ML', '50ML', 'https://therareperfumes.online/filemanager/684988e2f29a5.jpg', 1, 5558, 5558, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-10-06 06:44:12', '2025-10-06 06:44:12'),
(32, 29, 191, 'IMPRESSION OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 4750, 4750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-11-28 10:34:10', '2025-11-28 10:34:10'),
(33, 30, 139, 'JOHN VARVATOS XX ARTISAN TEAL EDT 125ML', '125ML', 'https://therareperfumes.online/filemanager/6866677b556e5.jpg', 1, 12250, 12250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":41,\"values_title\":\"125ML\"}]', '2025-12-01 07:40:36', '2025-12-01 07:40:36'),
(34, 31, 190, 'VICTORINOX (SWISS ARMY) BLACK STEEL EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d38adca4aae.jpg', 1, 9025, 9025, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-01 09:40:40', '2025-12-01 09:40:40'),
(35, 32, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 3250, 3250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-01 09:43:48', '2025-12-01 09:43:48'),
(36, 33, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 3250, 3250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-01 10:19:12', '2025-12-01 10:19:12'),
(37, 34, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 3250, 3250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-01 10:37:48', '2025-12-01 10:37:48'),
(38, 35, 190, 'VICTORINOX (SWISS ARMY) BLACK STEEL EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d38adca4aae.jpg', 1, 9500, 9500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-01 11:30:05', '2025-12-01 11:30:05'),
(39, 35, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 2750, 2750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-01 11:30:05', '2025-12-01 11:30:05'),
(40, 36, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4750, 4750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-01 11:36:40', '2025-12-01 11:36:40'),
(41, 37, 182, 'VICTORINOX SWISS ARMY ALTITUDE	EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d39cfe70589.jpg', 1, 9500, 9500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-01 11:44:42', '2025-12-01 11:44:42'),
(42, 37, 192, 'INSPIRED FROM CREED AVENTUS 50ML', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 3750, 3750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-01 11:44:42', '2025-12-01 11:44:42'),
(43, 38, 192, 'INSPIRED FROM CREED AVENTUS 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d82f3a8eb1.png', 1, 3750, 3750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-01 12:20:53', '2025-12-01 12:20:53'),
(44, 38, 181, 'TRUSSARDI UOMO THE RED EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d12b45c98a4.jpg', 1, 10500, 10500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-01 12:20:53', '2025-12-01 12:20:53'),
(45, 38, 55, 'PATCHOULI WOOD EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/6849882898a4f.jpg', 1, 31230, 31230, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-01 12:20:53', '2025-12-01 12:20:53'),
(46, 38, 113, 'JUICY COUTURE VIVA LA JUICY NOIR EDP SPRAY 100ML', '100ML', 'https://therareperfumes.online/filemanager/685cfec692f2b.jpg', 1, 13000, 13000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-01 12:20:53', '2025-12-01 12:20:53'),
(47, 38, 75, 'CASHMERE MUSC EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/684981008bb13.jpg', 1, 27500, 27500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-01 12:20:53', '2025-12-01 12:20:53'),
(48, 39, 97, 'JIMMY CHOO I WANT CHOO EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/685be57997556.jpg', 1, 17500, 17500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-02 07:37:25', '2025-12-02 07:37:25'),
(49, 39, 116, 'JUICY COUTURE REGAL COLLECTION EDP 100ML ROYAL ROSE', '100ML', 'https://therareperfumes.online/filemanager/685cfec693b96.jpg', 1, 15500, 15500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-02 07:37:25', '2025-12-02 07:37:25'),
(50, 39, 67, 'GOLD MAN EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/684984ba46e78.jpg', 1, 5500, 5500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-02 07:37:25', '2025-12-02 07:37:25'),
(51, 40, 193, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', '50ML', 'https://therareperfumes.online/filemanager/6930251508e91.png', 1, 2150, 2150, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-03 12:23:58', '2025-12-03 12:23:58'),
(52, 41, 154, 'Prada L’Homme EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68c2e43a99c79.jpg', 1, 32500, 32500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-03 12:34:03', '2025-12-03 12:34:03'),
(53, 41, 133, 'JOHN VARVATOS ARTISAN BLUE EDT 125ML', '125ML', 'https://therareperfumes.online/filemanager/6866632e7387a.jpg', 1, 10250, 10250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":41,\"values_title\":\"125ML\"}]', '2025-12-03 12:34:03', '2025-12-03 12:34:03'),
(54, 42, 194, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2250, 2250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-04 12:31:01', '2025-12-04 12:31:01'),
(55, 43, 192, 'INSPIRED FROM CREED AVENTUS 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d82f3a8eb1.png', 1, 3350, 3350, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-04 12:34:01', '2025-12-04 12:34:01'),
(56, 44, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4750, 4750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-05 11:27:34', '2025-12-05 11:27:34'),
(57, 45, 190, 'VICTORINOX (SWISS ARMY) BLACK STEEL EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d38adca4aae.jpg', 1, 9500, 9500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-05 11:36:28', '2025-12-05 11:36:28'),
(58, 46, 190, 'VICTORINOX (SWISS ARMY) BLACK STEEL EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d38adca4aae.jpg', 1, 9500, 9500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-05 11:39:00', '2025-12-05 11:39:00'),
(59, 46, 181, 'TRUSSARDI UOMO THE RED EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d12b45c98a4.jpg', 1, 10500, 10500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-05 11:39:00', '2025-12-05 11:39:00'),
(60, 47, 71, 'ELIXIR INTENSE  EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498298b8a3f.jpg', 1, 32500, 32500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-05 11:40:51', '2025-12-05 11:40:51'),
(61, 48, 101, 'JIMMY CHOO MAN EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/685be57998e87.jpg', 1, 16500, 16500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-05 11:45:06', '2025-12-05 11:45:06'),
(62, 48, 141, 'COACH WILD ROSE EDP 90 ML', '90ML', 'https://therareperfumes.online/filemanager/686780ad10c4f.jpg', 1, 16500, 16500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2025-12-05 11:45:06', '2025-12-05 11:45:06'),
(63, 49, 127, 'ELIZABETH ARDEN ARDEN BEAUTY EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/6874e6251f83d.jpg', 1, 9000, 9000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-05 11:46:48', '2025-12-05 11:46:48'),
(64, 50, 38, '1001 NIGHTS EDP 60ML', '100ml', 'https://therareperfumes.online/filemanager/68481c3624d1c.jpg', 1, 12000, 12000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2025-12-05 11:50:41', '2025-12-05 11:50:41'),
(65, 51, 82, 'AURUM CONC. PERFUME 10ML', '10ML', 'https://therareperfumes.online/filemanager/6848245f4d865.jpg', 1, 2950, 2950, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":33,\"values_title\":\"10ML\"}]', '2025-12-05 12:31:55', '2025-12-05 12:31:55'),
(66, 52, 88, 'ARISTOCRAT FOR MEN EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/684822f163872.jpg', 1, 13000, 13000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-12-05 17:24:55', '2025-12-05 17:24:55'),
(67, 53, 74, 'CHIVALRY EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498151bb095.jpg', 1, 5000, 5000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-06 11:48:48', '2025-12-06 11:48:48'),
(68, 54, 88, 'ARISTOCRAT FOR MEN EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/684822f163872.jpg', 1, 13000, 13000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-12-06 14:28:03', '2025-12-06 14:28:03'),
(69, 54, 194, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2250, 2250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-06 14:28:03', '2025-12-06 14:28:03'),
(70, 54, 67, 'GOLD MAN EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/684984ba46e78.jpg', 1, 5500, 5500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-06 14:28:03', '2025-12-06 14:28:03'),
(71, 55, 188, 'VICTORINOX (SWISS ARMY) FOR HER FLORAL	EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d38b3837871.jpg', 1, 11500, 11500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-06 14:47:49', '2025-12-06 14:47:49'),
(72, 56, 51, 'SHADOW HIM EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/68498bfb87d38.jpg', 1, 9750, 9750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-12-07 18:58:47', '2025-12-07 18:58:47'),
(73, 56, 114, 'VIVA LA JUICY ROSE EDP SPRAY 100ML', '100ML', 'https://therareperfumes.online/filemanager/685cfec6932f6.jpg', 1, 13500, 13500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-07 18:58:47', '2025-12-07 18:58:47'),
(74, 56, 90, 'AMBER WOOD EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68481dbc2c378.jpg', 1, 27500, 27500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-07 18:58:47', '2025-12-07 18:58:47'),
(75, 56, 140, 'COACH OPEN ROAD EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/686780ad10027.jpg', 1, 16500, 16500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-07 18:58:47', '2025-12-07 18:58:47'),
(76, 57, 154, 'Prada L’Homme EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68c2e43a99c79.jpg', 1, 32500, 32500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-08 09:40:34', '2025-12-08 09:40:34'),
(77, 57, 115, 'JUICY COUTURE OUI EDP SPRAY 100ML', '100ML', 'https://therareperfumes.online/filemanager/685cfec69378f.jpg', 1, 13500, 13500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-08 09:40:34', '2025-12-08 09:40:34'),
(78, 57, 95, 'JIMMY CHOO MAN BLUE EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/685be57998b1d.jfif', 1, 16500, 16500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-08 09:40:34', '2025-12-08 09:40:34'),
(79, 58, 154, 'Prada L’Homme EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68c2e43a99c79.jpg', 3, 32500, 97500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-08 15:04:25', '2025-12-08 15:04:25'),
(80, 58, 122, 'JUICY COUTURE VIVA LA JUICY EDP SPRAY 100ML', '100ML', 'https://therareperfumes.online/filemanager/685cfec693f9d.jpg', 1, 12500, 12500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-08 15:04:25', '2025-12-08 15:04:25'),
(81, 58, 49, 'SIGNIFY EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/68498c963d982.jpg', 1, 7750, 7750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-12-08 15:04:25', '2025-12-08 15:04:25'),
(82, 58, 56, 'NEUTRON EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/684987f22e55d.jpg', 1, 6000, 6000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-08 15:04:25', '2025-12-08 15:04:25'),
(83, 59, 194, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2250, 2250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-08 17:40:46', '2025-12-08 17:40:46'),
(84, 60, 194, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2250, 2250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-08 17:49:59', '2025-12-08 17:49:59'),
(85, 61, 48, 'SILVER SHADE EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498d7081710.jpg', 1, 7500, 7500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-08 17:58:03', '2025-12-08 17:58:03'),
(86, 62, 194, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2250, 2250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-08 18:07:03', '2025-12-08 18:07:03'),
(87, 64, 48, 'SILVER SHADE EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498d7081710.jpg', 1, 7500, 7500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-08 18:11:50', '2025-12-08 18:11:50'),
(88, 59, 46, 'VIOLET MUSC  EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498f65db52d.jpg', 1, 23500, 23500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-08 18:19:02', '2025-12-08 18:19:02'),
(89, 60, 65, 'HATKORA WOOD EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/6849853f17472.jpg', 1, 32500, 32500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-08 18:51:15', '2025-12-08 18:51:15'),
(90, 61, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4750, 4750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-08 18:54:16', '2025-12-08 18:54:16'),
(91, 62, 193, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', '50ML', 'https://therareperfumes.online/filemanager/6930251508e91.png', 1, 2150, 2150, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-08 19:01:24', '2025-12-08 19:01:24'),
(92, 63, 155, 'RHYTHM OF OUD 75ML', '75ML', 'https://therareperfumes.online/filemanager/68ce95dd698da.jpg', 1, 28500, 28500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-12-09 05:49:28', '2025-12-09 05:49:28'),
(93, 63, 60, 'SANTAL WOOD EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498b27b289e.jpg', 1, 31500, 31500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-09 05:49:28', '2025-12-09 05:49:28'),
(94, 63, 175, 'TRUSSARDI BLACK EXTREME EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d0e2151b323.jpg', 1, 10500, 10500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-09 05:49:28', '2025-12-09 05:49:28'),
(95, 63, 185, 'VICTORINOX (SWISS ARMY) MORNING DEW EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d39c9104c02.jpg', 1, 9500, 9500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-09 05:49:28', '2025-12-09 05:49:28'),
(96, 64, 193, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', '50ML', 'https://therareperfumes.online/filemanager/6930251508e91.png', 1, 2150, 2150, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-09 15:07:42', '2025-12-09 15:07:42'),
(97, 64, 192, 'INSPIRED FROM CREED AVENTUS 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d82f3a8eb1.png', 1, 3100, 3100, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-09 15:07:42', '2025-12-09 15:07:42'),
(98, 65, 94, 'JIMMY CHOO FEVER EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/685be75bdd2fb.jpg', 3, 16500, 49500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-09 15:16:28', '2025-12-09 15:16:28'),
(99, 65, 42, 'MUSK KHAS CONC PERFUME  3ML', '3ML', 'https://therareperfumes.online/filemanager/684fd27c0ae17.jpg', 4, 6500, 26000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":32,\"values_title\":\"3ML\"}]', '2025-12-09 15:16:28', '2025-12-09 15:16:28'),
(100, 65, 57, 'MIZYAAN CONC PERFUME 14ML', '14ML', 'https://therareperfumes.online/filemanager/684986cd7fa73.jpg', 3, 7500, 22500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":34,\"values_title\":\"14ML\"}]', '2025-12-09 15:16:28', '2025-12-09 15:16:28'),
(101, 65, 46, 'VIOLET MUSC  EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498f65db52d.jpg', 1, 23500, 23500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-09 15:16:28', '2025-12-09 15:16:28'),
(102, 65, 89, 'ARISTOCRAT FOR HER EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/684820d93bc30.jpg', 1, 13000, 13000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-12-09 15:16:28', '2025-12-09 15:16:28'),
(103, 66, 86, 'AURUM EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/684823ea0d0dc.jpg', 1, 13750, 13750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-12-09 19:45:01', '2025-12-09 19:45:01'),
(104, 67, 54, 'RAINDROPS EDP 50ML', '50ML', 'https://therareperfumes.online/filemanager/684988e2f29a5.jpg', 1, 5750, 5750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-10 18:19:26', '2025-12-10 18:19:26'),
(105, 68, 46, 'VIOLET MUSC  EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498f65db52d.jpg', 1, 22750, 22750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-10 18:26:31', '2025-12-10 18:26:31'),
(106, 69, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4750, 4750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-10 18:28:44', '2025-12-10 18:28:44'),
(107, 70, 49, 'SIGNIFY EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/68498c963d982.jpg', 1, 7750, 7750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-12-10 18:31:44', '2025-12-10 18:31:44'),
(108, 71, 178, 'TRUSSARDI PURE JASMINE EDP 90ML', '90ML', 'https://therareperfumes.online/filemanager/68d0e2151dbcb.jpg', 1, 13500, 13500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2025-12-10 18:36:35', '2025-12-10 18:36:35'),
(109, 72, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4750, 4750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-12 14:19:19', '2025-12-12 14:19:19'),
(110, 73, 193, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', '50ML', 'https://therareperfumes.online/filemanager/6930251508e91.png', 1, 2150, 2150, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-12 14:29:04', '2025-12-12 14:29:04'),
(111, 74, 170, 'MONTBLANC EXPLORER PLATINUM EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68cea49683c53.jpg', 1, 15500, 15500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-12 14:45:48', '2025-12-12 14:45:48'),
(112, 74, 95, 'JIMMY CHOO MAN BLUE EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/685be57998b1d.jfif', 1, 16500, 16500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-12 14:45:48', '2025-12-12 14:45:48'),
(113, 74, 65, 'HATKORA WOOD EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/6849853f17472.jpg', 1, 32500, 32500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-12 14:45:48', '2025-12-12 14:45:48'),
(114, 74, 60, 'SANTAL WOOD EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498b27b289e.jpg', 1, 31500, 31500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-12 14:45:48', '2025-12-12 14:45:48'),
(115, 74, 155, 'RHYTHM OF OUD 75ML', '75ML', 'https://therareperfumes.online/filemanager/68ce95dd698da.jpg', 1, 28500, 28500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-12-12 14:45:48', '2025-12-12 14:45:48'),
(116, 74, 73, 'CUIR MUSC EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/6849819d2bc5c.jpg', 2, 27500, 55000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-12 14:45:48', '2025-12-12 14:45:48'),
(117, 74, 143, 'COACH GREEN EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/686780ad1199d.jpg', 1, 15500, 15500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-12 14:45:48', '2025-12-12 14:45:48'),
(118, 74, 69, 'ELIXIR SUAVE EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/684983cb54bbe.jpg', 1, 32500, 32500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-12 14:45:48', '2025-12-12 14:45:48'),
(119, 74, 111, 'JUICY COUTURE VIVA LA JUICY GOLD COUTURE 100ML', '100ML', 'https://therareperfumes.online/filemanager/685cfec692637.jpg', 1, 12500, 12500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-12 14:45:48', '2025-12-12 14:45:48'),
(120, 74, 89, 'ARISTOCRAT FOR HER EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/684820d93bc30.jpg', 1, 12750, 12750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-12-12 14:45:48', '2025-12-12 14:45:48'),
(121, 75, 42, 'MUSK KHAS CONC PERFUME  3ML', '3ML', 'https://therareperfumes.online/filemanager/684fd27c0ae17.jpg', 1, 6500, 6500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":32,\"values_title\":\"3ML\"}]', '2025-12-13 18:00:45', '2025-12-13 18:00:45'),
(122, 75, 48, 'SILVER SHADE EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498d7081710.jpg', 1, 7500, 7500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-13 18:00:45', '2025-12-13 18:00:45'),
(123, 75, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4750, 4750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-13 18:00:45', '2025-12-13 18:00:45'),
(124, 76, 94, 'JIMMY CHOO FEVER EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/685be75bdd2fb.jpg', 1, 16500, 16500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-14 05:40:28', '2025-12-14 05:40:28'),
(125, 77, 48, 'SILVER SHADE EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498d7081710.jpg', 1, 7500, 7500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-17 07:47:02', '2025-12-17 07:47:02'),
(126, 77, 192, 'INSPIRED FROM CREED AVENTUS 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d82f3a8eb1.png', 1, 3100, 3100, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-17 07:47:02', '2025-12-17 07:47:02'),
(127, 77, 194, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2250, 2250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-17 07:47:02', '2025-12-17 07:47:02'),
(128, 78, 192, 'INSPIRED FROM CREED AVENTUS 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d82f3a8eb1.png', 1, 3200, 3200, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-17 07:51:58', '2025-12-17 07:51:58'),
(129, 78, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4750, 4750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-17 07:51:58', '2025-12-17 07:51:58'),
(130, 78, 80, 'BLU EDP 90ML', '90ML', 'https://therareperfumes.online/filemanager/68497fd872030.jpg', 1, 8500, 8500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2025-12-17 07:51:58', '2025-12-17 07:51:58'),
(131, 79, 152, 'COACH LOVE EDP 90ML', '90ML', 'https://therareperfumes.online/filemanager/6888b9e60d83e.jpg', 1, 13500, 13500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2025-12-17 11:48:20', '2025-12-17 11:48:20'),
(132, 80, 192, 'INSPIRED FROM CREED AVENTUS 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d82f3a8eb1.png', 1, 3200, 3200, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-17 11:50:23', '2025-12-17 11:50:23'),
(133, 81, 97, 'JIMMY CHOO I WANT CHOO EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/685be57997556.jpg', 1, 17500, 17500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-17 11:51:32', '2025-12-17 11:51:32'),
(134, 82, 193, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', '50ML', 'https://therareperfumes.online/filemanager/6930251508e91.png', 1, 2150, 2150, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-17 12:05:32', '2025-12-17 12:05:32'),
(135, 83, 90, 'AMBER WOOD EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68481dbc2c378.jpg', 1, 27500, 27500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-18 08:53:05', '2025-12-18 08:53:05'),
(136, 83, 91, 'AMBER MUSC EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68481d142a1e0.jpg', 1, 24500, 24500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-18 08:53:05', '2025-12-18 08:53:05'),
(137, 83, 181, 'TRUSSARDI UOMO THE RED EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d12b45c98a4.jpg', 1, 10500, 10500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-18 08:53:05', '2025-12-18 08:53:05'),
(138, 83, 66, 'GRAY EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/684984fe0dd33.jpg', 1, 7250, 7250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-18 08:53:05', '2025-12-18 08:53:05'),
(139, 84, 193, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', '50ML', 'https://therareperfumes.online/filemanager/6930251508e91.png', 1, 2150, 2150, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-18 08:57:24', '2025-12-18 08:57:24'),
(140, 85, 194, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2250, 2250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-19 07:28:43', '2025-12-19 07:28:43'),
(141, 86, 135, 'JOHN VARVATOS ARTISAN PURE EDT 125ML', '125ML', 'https://therareperfumes.online/filemanager/6866632e740bd.jpg', 1, 13000, 13000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":41,\"values_title\":\"125ML\"}]', '2025-12-19 07:46:05', '2025-12-19 07:46:05'),
(142, 86, 192, 'INSPIRED FROM CREED AVENTUS 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d82f3a8eb1.png', 1, 3200, 3200, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-19 07:46:05', '2025-12-19 07:46:05'),
(143, 87, 192, 'INSPIRED FROM CREED AVENTUS 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d82f3a8eb1.png', 1, 3200, 3200, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-19 07:49:16', '2025-12-19 07:49:16'),
(144, 88, 181, 'TRUSSARDI UOMO THE RED EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d12b45c98a4.jpg', 1, 10500, 10500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-20 09:48:13', '2025-12-20 09:48:13'),
(145, 88, 168, 'MONT BLANC STARWALKER EDT 75ML', '75ML', 'https://therareperfumes.online/filemanager/68cea496846a3.jpg', 1, 13000, 13000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-12-20 09:48:13', '2025-12-20 09:48:13'),
(146, 88, 169, 'MONT BLANC SIGNATURE WOMEN EDP 90ML', '90ML', 'https://therareperfumes.online/filemanager/68cea496840a0.jpg', 1, 13500, 13500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2025-12-20 09:48:13', '2025-12-20 09:48:13'),
(147, 88, 112, 'JUICY COUTURE VIVA LA JUICY NEON EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/685cfec692b51.jpg', 1, 13000, 13000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-20 09:48:13', '2025-12-20 09:48:13'),
(148, 88, 193, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', '50ML', 'https://therareperfumes.online/filemanager/6930251508e91.png', 1, 2150, 2150, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-20 09:48:13', '2025-12-20 09:48:13'),
(149, 88, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4800, 4800, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-20 09:48:13', '2025-12-20 09:48:13'),
(150, 89, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4800, 4800, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-20 09:51:51', '2025-12-20 09:51:51'),
(151, 90, 42, 'MUSK KHAS CONC PERFUME  3ML', '3ML', 'https://therareperfumes.online/filemanager/684fd27c0ae17.jpg', 1, 6500, 6500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":32,\"values_title\":\"3ML\"}]', '2025-12-20 09:54:34', '2025-12-20 09:54:34'),
(152, 91, 193, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', '50ML', 'https://therareperfumes.online/filemanager/6930251508e91.png', 1, 2150, 2150, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-20 10:51:10', '2025-12-20 10:51:10'),
(153, 92, 49, 'SIGNIFY EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/68498c963d982.jpg', 1, 7750, 7750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-12-20 10:52:56', '2025-12-20 10:52:56'),
(154, 93, 189, 'VICTORINOX (SWISS ARMY) CLASSIC EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d38af94c5ac.jpg', 1, 10500, 10500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-22 06:26:39', '2025-12-22 06:26:39'),
(155, 94, 195, 'IMPRESSION INSPIRED FROM RASSASI HAWAS', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2750, 2750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-22 06:45:21', '2025-12-22 06:45:21'),
(156, 95, 187, 'VICTORINOX (SWISS ARMY) FOR HER EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d38b6aef1bb.jpg', 1, 10500, 10500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-23 07:02:26', '2025-12-23 07:02:26'),
(157, 96, 59, 'SERENITY IN ME EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498b5ca261c.jpg', 1, 12250, 12250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-23 07:07:07', '2025-12-23 07:07:07'),
(158, 97, 193, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', '50ML', 'https://therareperfumes.online/filemanager/6930251508e91.png', 1, 2150, 2150, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-23 07:08:45', '2025-12-23 07:08:45'),
(159, 97, 67, 'GOLD MAN EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/684984ba46e78.jpg', 1, 5500, 5500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-23 07:08:45', '2025-12-23 07:08:45'),
(160, 98, 82, 'AURUM CONC. PERFUME 10ML', '10ML', 'https://therareperfumes.online/filemanager/6848245f4d865.jpg', 1, 2950, 2950, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":33,\"values_title\":\"10ML\"}]', '2025-12-23 07:32:18', '2025-12-23 07:32:18'),
(161, 99, 195, 'IMPRESSION INSPIRED FROM RASSASI HAWAS', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2750, 2750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-23 08:11:58', '2025-12-23 08:11:58'),
(162, 100, 87, 'ARISTOCRAT PLATINUM EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/68482374387c3.jpg', 1, 13800, 13800, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-12-23 10:22:12', '2025-12-23 10:22:12'),
(163, 100, 195, 'IMPRESSION INSPIRED FROM RASSASI HAWAS', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2750, 2750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-23 10:22:12', '2025-12-23 10:22:12'),
(164, 100, 192, 'INSPIRED FROM CREED AVENTUS 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d82f3a8eb1.png', 1, 3200, 3200, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-23 10:22:12', '2025-12-23 10:22:12'),
(165, 101, 193, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', '50ML', 'https://therareperfumes.online/filemanager/6930251508e91.png', 1, 2150, 2150, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-23 10:25:16', '2025-12-23 10:25:16'),
(166, 101, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4500, 4500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-23 10:25:16', '2025-12-23 10:25:16'),
(167, 102, 56, 'NEUTRON EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/684987f22e55d.jpg', 1, 6000, 6000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-24 13:53:30', '2025-12-24 13:53:30'),
(168, 103, 193, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', '50ML', 'https://therareperfumes.online/filemanager/6930251508e91.png', 1, 2150, 2150, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-24 13:56:18', '2025-12-24 13:56:18'),
(169, 104, 122, 'JUICY COUTURE VIVA LA JUICY EDP SPRAY 100ML', '100ML', 'https://therareperfumes.online/filemanager/685cfec693f9d.jpg', 1, 12500, 12500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-24 15:49:57', '2025-12-24 15:49:57'),
(170, 105, 56, 'NEUTRON EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/684987f22e55d.jpg', 1, 6000, 6000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-26 13:52:11', '2025-12-26 13:52:11'),
(171, 106, 59, 'SERENITY IN ME EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498b5ca261c.jpg', 1, 12250, 12250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-26 13:53:26', '2025-12-26 13:53:26'),
(172, 107, 195, 'IMPRESSION INSPIRED FROM RASSASI HAWAS', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2750, 2750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-27 07:28:28', '2025-12-27 07:28:28'),
(173, 108, 74, 'CHIVALRY EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498151bb095.jpg', 1, 5500, 5500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-27 07:32:01', '2025-12-27 07:32:01'),
(174, 109, 197, 'CHANEL COCO MADEMOISELLE EDP 100 ML', '100ML', 'https://therareperfumes.online/filemanager/694f8f579b577.webp', 1, 64750, 64750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-27 09:47:01', '2025-12-27 09:47:01'),
(175, 110, 195, 'IMPRESSION INSPIRED FROM RASSASI HAWAS', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2950, 2950, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2025-12-29 08:59:05', '2025-12-29 08:59:05'),
(176, 111, 162, 'KENNETH COLE RSVP EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68a057b67f863.jpg', 1, 10650, 10650, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-29 10:01:53', '2025-12-29 10:01:53'),
(177, 112, 158, 'KENNETH COLE WHITE WOMEN EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68a057b67edf0.jpg', 1, 10750, 10750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-29 10:03:50', '2025-12-29 10:03:50'),
(178, 113, 129, 'ELIZABETH ARDEN PROVOCATIVE WOMEN EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/686660ede118a.jpg', 1, 8000, 8000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2025-12-29 10:05:07', '2025-12-29 10:05:07'),
(179, 114, 168, 'MONT BLANC STARWALKER EDT 75ML', '75ML', 'https://therareperfumes.online/filemanager/68cea496846a3.jpg', 1, 13250, 13250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-12-29 18:21:25', '2025-12-29 18:21:25'),
(180, 115, 200, 'BLEU DE CHANEL EDP 150ML', '150ML', 'https://therareperfumes.online/filemanager/694f8f579c0b8.webp', 1, 59750, 59750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":26,\"values_title\":\"150ML\"}]', '2025-12-30 17:27:44', '2025-12-30 17:27:44'),
(181, 116, 86, 'AURUM EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/684823ea0d0dc.jpg', 1, 13750, 13750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2025-12-31 07:29:02', '2025-12-31 07:29:02'),
(182, 117, 192, 'INSPIRED FROM CREED AVENTUS 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d82f3a8eb1.png', 1, 3250, 3250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-01 11:15:05', '2026-01-01 11:15:05'),
(183, 118, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4500, 4500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-01 12:04:45', '2026-01-01 12:04:45'),
(184, 118, 194, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2250, 2250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-01 12:04:45', '2026-01-01 12:04:45'),
(185, 118, 38, '1001 NIGHTS EDP 60ML', '100ml', 'https://therareperfumes.online/filemanager/68481c3624d1c.jpg', 1, 12000, 12000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2026-01-01 12:04:45', '2026-01-01 12:04:45'),
(186, 119, 63, 'KURO EDP 90ML', '90ML', 'https://therareperfumes.online/filemanager/6849868ebe096.jpg', 1, 9250, 9250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2026-01-01 12:06:31', '2026-01-01 12:06:31'),
(187, 120, 56, 'NEUTRON EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/684987f22e55d.jpg', 1, 6250, 6250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-01 12:08:24', '2026-01-01 12:08:24'),
(188, 121, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4500, 4500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-02 09:28:27', '2026-01-02 09:28:27'),
(189, 122, 190, 'VICTORINOX (SWISS ARMY) BLACK STEEL EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d38adca4aae.jpg', 1, 9500, 9500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-02 10:39:54', '2026-01-02 10:39:54'),
(190, 123, 157, 'KENNETH COLE COPPER BLACK MEN EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68a057b67e4fc.jpg', 1, 11500, 11500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-02 10:41:50', '2026-01-02 10:41:50'),
(191, 124, 167, 'MONT BLANC EXPLORER ULTRA BLUE EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68cea49684d4b.jpg', 1, 15500, 15500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-02 10:45:14', '2026-01-02 10:45:14'),
(192, 125, 152, 'COACH LOVE EDP 90ML', '90ML', 'https://therareperfumes.online/filemanager/6888b9e60d83e.jpg', 1, 13500, 13500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2026-01-02 11:46:48', '2026-01-02 11:46:48'),
(193, 126, 42, 'MUSK KHAS CONC PERFUME  3ML', '3ML', 'https://therareperfumes.online/filemanager/684fd27c0ae17.jpg', 1, 6650, 6650, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":32,\"values_title\":\"3ML\"}]', '2026-01-03 06:50:56', '2026-01-03 06:50:56'),
(194, 127, 63, 'KURO EDP 90ML', '90ML', 'https://therareperfumes.online/filemanager/6849868ebe096.jpg', 1, 9250, 9250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2026-01-05 12:22:40', '2026-01-05 12:22:40'),
(195, 128, 189, 'VICTORINOX (SWISS ARMY) CLASSIC EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d38af94c5ac.jpg', 1, 10500, 10500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-05 12:23:36', '2026-01-05 12:23:36'),
(196, 129, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4500, 4500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-05 12:24:24', '2026-01-05 12:24:24'),
(197, 130, 190, 'VICTORINOX (SWISS ARMY) BLACK STEEL EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d38adca4aae.jpg', 1, 9500, 9500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-05 12:25:12', '2026-01-05 12:25:12'),
(198, 131, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4450, 4450, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-05 12:27:32', '2026-01-05 12:27:32'),
(199, 132, 128, 'ELIZABETH ARDEN MY 5th AVENUE EDP 125 ML', '125ML', 'https://therareperfumes.online/filemanager/686660ede0e5e.jpg', 1, 10500, 10500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":41,\"values_title\":\"125ML\"}]', '2026-01-05 12:28:36', '2026-01-05 12:28:36'),
(200, 133, 201, 'BLEU DE CHANEL EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/694f8f579b9fd.webp', 1, 38250, 38250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-06 12:26:19', '2026-01-06 12:26:19'),
(201, 134, 177, 'TRUSSARDI DONNA EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d0e2151cb19.jpg', 1, 14600, 14600, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-06 12:30:31', '2026-01-06 12:30:31'),
(202, 135, 49, 'SIGNIFY EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/68498c963d982.jpg', 1, 7750, 7750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2026-01-06 18:16:43', '2026-01-06 18:16:43');
INSERT INTO `order_items` (`id`, `order_id`, `variation_id`, `title`, `sku`, `image_id`, `quantity`, `price`, `total`, `attr`, `created_at`, `updated_at`) VALUES
(203, 135, 164, 'KENNETH COLE VINTAGE BLACK EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68a05b053defd.jpg', 1, 11000, 11000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-06 18:16:43', '2026-01-06 18:16:43'),
(204, 135, 81, 'AURUM SUMMER EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/684824cd0ac1a.jpg', 1, 9500, 9500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2026-01-06 18:16:43', '2026-01-06 18:16:43'),
(205, 136, 68, 'EVOKE HIM EDP 90ML', '90ML', 'https://therareperfumes.online/filemanager/68498475235bb.jpg', 1, 10750, 10750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2026-01-06 18:21:52', '2026-01-06 18:21:52'),
(206, 136, 43, 'WISAL DHAHAB EDP 50ML', '50ML', 'https://therareperfumes.online/filemanager/6849904bcaf3c.jpg', 1, 9000, 9000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-06 18:21:52', '2026-01-06 18:21:52'),
(207, 137, 194, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2250, 2250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-06 19:02:10', '2026-01-06 19:02:10'),
(208, 137, 195, 'IMPRESSION INSPIRED FROM RASSASI HAWAS', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2700, 2700, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-06 19:02:10', '2026-01-06 19:02:10'),
(209, 139, 96, 'JIMMY CHOO FLORAL EDT 90ML', '90ML', 'https://therareperfumes.online/filemanager/685be57997277.jpg', 1, 15250, 15250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2026-01-10 11:59:30', '2026-01-10 11:59:30'),
(210, 140, 190, 'VICTORINOX (SWISS ARMY) BLACK STEEL EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d38adca4aae.jpg', 1, 9500, 9500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-10 12:01:39', '2026-01-10 12:01:39'),
(211, 141, 194, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2250, 2250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-10 12:03:31', '2026-01-10 12:03:31'),
(212, 142, 158, 'KENNETH COLE WHITE WOMEN EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68a057b67edf0.jpg', 1, 10750, 10750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-10 12:04:20', '2026-01-10 12:04:20'),
(213, 143, 62, 'SACRED LOVE EDP 50ML', '50ML', 'https://therareperfumes.online/filemanager/68498aa65a2a8.jpg', 1, 5850, 5850, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-12 08:54:30', '2026-01-12 08:54:30'),
(214, 144, 91, 'AMBER MUSC EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68481d142a1e0.jpg', 1, 24500, 24500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-12 08:58:57', '2026-01-12 08:58:57'),
(215, 145, 55, 'PATCHOULI WOOD EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/6849882898a4f.jpg', 1, 31230, 31230, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-12 09:01:54', '2026-01-12 09:01:54'),
(216, 146, 116, 'JUICY COUTURE REGAL COLLECTION EDP 100ML ROYAL ROSE', '100ML', 'https://therareperfumes.online/filemanager/685cfec693b96.jpg', 1, 15500, 15500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-12 09:03:14', '2026-01-12 09:03:14'),
(217, 147, 70, 'ELIXIR PRECIOUS EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/684982f3f1aee.jpg', 1, 32500, 32500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-12 09:04:45', '2026-01-12 09:04:45'),
(218, 148, 90, 'AMBER WOOD EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68481dbc2c378.jpg', 1, 27500, 27500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-12 09:05:58', '2026-01-12 09:05:58'),
(219, 149, 124, 'VIVA LA JUICY GRANDE (LIMITED EDITION) EDP 200ML', '200ML', 'https://therareperfumes.online/filemanager/68677cec4d4ff.jpg', 1, 17500, 17500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":30,\"values_title\":\"200ML\"}]', '2026-01-12 10:07:47', '2026-01-12 10:07:47'),
(220, 150, 74, 'CHIVALRY EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68498151bb095.jpg', 1, 5250, 5250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-13 08:36:49', '2026-01-13 08:36:49'),
(221, 151, 38, '1001 NIGHTS EDP 60ML', '100ml', 'https://therareperfumes.online/filemanager/68481c3624d1c.jpg', 1, 12000, 12000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2026-01-13 08:39:42', '2026-01-13 08:39:42'),
(222, 152, 63, 'KURO EDP 90ML', '90ML', 'https://therareperfumes.online/filemanager/6849868ebe096.jpg', 1, 9250, 9250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2026-01-13 08:41:12', '2026-01-13 08:41:12'),
(223, 153, 94, 'JIMMY CHOO FEVER EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/685be75bdd2fb.jpg', 1, 16500, 16500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-13 08:42:23', '2026-01-13 08:42:23'),
(224, 154, 147, 'COACH FOR WOMEN EDP 90ML', '90ML', 'https://therareperfumes.online/filemanager/68678991c2423.jpg', 1, 16000, 16000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2026-01-13 08:44:04', '2026-01-13 08:44:04'),
(225, 155, 130, 'ELIZABETH ARDEN RED DOOR EDT 100 ML', '100ML', 'https://therareperfumes.online/filemanager/686660ede148b.jpg', 1, 14500, 14500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-13 08:45:49', '2026-01-13 08:45:49'),
(226, 156, 194, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2250, 2250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-14 10:28:02', '2026-01-14 10:28:02'),
(227, 157, 106, 'JIMMY CHOO WOMEN  EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/685be57999bff.jpg', 1, 15000, 15000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-14 10:28:55', '2026-01-14 10:28:55'),
(228, 158, 90, 'AMBER WOOD EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/68481dbc2c378.jpg', 1, 27500, 27500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-14 10:30:18', '2026-01-14 10:30:18'),
(229, 159, 194, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2250, 2250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-14 10:33:52', '2026-01-14 10:33:52'),
(230, 159, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4400, 4400, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-14 10:33:52', '2026-01-14 10:33:52'),
(231, 160, 124, 'VIVA LA JUICY GRANDE (LIMITED EDITION) EDP 200ML', '200ML', 'https://therareperfumes.online/filemanager/68677cec4d4ff.jpg', 1, 17500, 17500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":30,\"values_title\":\"200ML\"}]', '2026-01-14 10:35:16', '2026-01-14 10:35:16'),
(232, 161, 122, 'JUICY COUTURE VIVA LA JUICY EDP SPRAY 100ML', '100ML', 'https://therareperfumes.online/filemanager/685cfec693f9d.jpg', 1, 14250, 14250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-14 10:39:27', '2026-01-14 10:39:27'),
(233, 162, 195, 'IMPRESSION INSPIRED FROM RASSASI HAWAS', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2700, 2700, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-14 10:40:25', '2026-01-14 10:40:25'),
(234, 163, 190, 'VICTORINOX (SWISS ARMY) BLACK STEEL EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d38adca4aae.jpg', 1, 9500, 9500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-14 10:41:32', '2026-01-14 10:41:32'),
(235, 164, 188, 'VICTORINOX (SWISS ARMY) FOR HER FLORAL	EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d38b3837871.jpg', 1, 11500, 11500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-14 10:46:53', '2026-01-14 10:46:53'),
(236, 164, 49, 'SIGNIFY EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/68498c963d982.jpg', 1, 7750, 7750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2026-01-14 10:46:53', '2026-01-14 10:46:53'),
(237, 165, 64, 'INCENSE WOOD  EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/6849863f42a73.jpg', 1, 31500, 31500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-14 10:57:46', '2026-01-14 10:57:46'),
(238, 166, 63, 'KURO EDP 90ML', '90ML', 'https://therareperfumes.online/filemanager/6849868ebe096.jpg', 1, 9250, 9250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2026-01-17 11:31:29', '2026-01-17 11:31:29'),
(239, 166, 131, 'ELIZABETH ARDEN WHITE DIAMONDS EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/686660ede17e9.jpg', 1, 10000, 10000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-17 11:31:29', '2026-01-17 11:31:29'),
(240, 167, 66, 'GRAY EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/684984fe0dd33.jpg', 1, 7250, 7250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-17 12:03:02', '2026-01-17 12:03:02'),
(241, 168, 201, 'BLEU DE CHANEL EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/694f8f579b9fd.webp', 1, 38250, 38250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-17 12:06:53', '2026-01-17 12:06:53'),
(242, 168, 157, 'KENNETH COLE COPPER BLACK MEN EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68a057b67e4fc.jpg', 1, 11500, 11500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-17 12:06:53', '2026-01-17 12:06:53'),
(243, 169, 194, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2250, 2250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-17 12:07:36', '2026-01-17 12:07:36'),
(244, 170, 190, 'VICTORINOX (SWISS ARMY) BLACK STEEL EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d38adca4aae.jpg', 1, 9500, 9500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-17 12:08:44', '2026-01-17 12:08:44'),
(245, 171, 195, 'IMPRESSION INSPIRED FROM RASSASI HAWAS', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 2700, 2700, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-17 12:09:31', '2026-01-17 12:09:31'),
(246, 172, 198, 'CHANEL COCO MADEMOISELLE EDP 100 ML', '90ML', 'https://therareperfumes.online/filemanager/694f8f579b577.webp', 1, 64750, 64750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2026-01-17 12:24:46', '2026-01-17 12:24:46'),
(247, 172, 182, 'VICTORINOX SWISS ARMY ALTITUDE	EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d39cfe70589.jpg', 1, 9500, 9500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-17 12:24:46', '2026-01-17 12:24:46'),
(248, 172, 181, 'TRUSSARDI UOMO THE RED EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d12b45c98a4.jpg', 1, 13500, 13500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-17 12:24:46', '2026-01-17 12:24:46'),
(249, 172, 194, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 2, 2250, 4500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-17 12:24:46', '2026-01-17 12:24:46'),
(250, 173, 110, 'JUICY COUTURE I AM JUICY COUTURE EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/685cfec691efc.jpg', 1, 12500, 12500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-17 12:30:27', '2026-01-17 12:30:27'),
(251, 174, 198, 'CHANEL COCO MADEMOISELLE EDP 100 ML', '90ML', 'https://therareperfumes.online/filemanager/694f8f579b577.webp', 1, 64750, 64750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2026-01-17 12:34:37', '2026-01-17 12:34:37'),
(252, 174, 200, 'BLEU DE CHANEL EDP 150ML', '150ML', 'https://therareperfumes.online/filemanager/694f8f579c0b8.webp', 1, 59750, 59750, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":26,\"values_title\":\"150ML\"}]', '2026-01-17 12:34:37', '2026-01-17 12:34:37'),
(253, 174, 196, 'CREED AVENTUS FOR MEN EDP 100 ML', '100ML', 'https://therareperfumes.online/filemanager/694f8f579ae8d.webp', 1, 105000, 105000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-17 12:34:37', '2026-01-17 12:34:37'),
(254, 174, 191, 'INSPIRED FROM OFFICE FOR MEN 50ML', '50ML', 'https://therareperfumes.online/filemanager/692d6253d3352.png', 1, 4400, 4400, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-17 12:34:37', '2026-01-17 12:34:37'),
(255, 174, 76, 'CARBON EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/684980b024caa.jpg', 1, 7000, 7000, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-17 12:34:37', '2026-01-17 12:34:37'),
(256, 175, 194, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', '50ML', 'https://therareperfumes.online/filemanager/69294bf377d5c.png', 1, 1950, 1950, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":29,\"values_title\":\"50ML\"}]', '2026-01-18 19:02:45', '2026-01-18 19:02:45'),
(257, 175, 188, 'VICTORINOX (SWISS ARMY) FOR HER FLORAL	EDT 100ML', '100ML', 'https://therareperfumes.online/filemanager/68d38b3837871.jpg', 1, 11500, 11500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-18 19:02:45', '2026-01-18 19:02:45'),
(258, 176, 96, 'JIMMY CHOO FLORAL EDT 90ML', '90ML', 'https://therareperfumes.online/filemanager/685be57997277.jpg', 1, 15250, 15250, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":3,\"values_title\":\"90ML\"}]', '2026-01-18 19:05:32', '2026-01-18 19:05:32'),
(259, 177, 94, 'JIMMY CHOO FEVER EDP 100ML', '100ML', 'https://therareperfumes.online/filemanager/685be75bdd2fb.jpg', 1, 16500, 16500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":24,\"values_title\":\"100ML\"}]', '2026-01-19 08:29:43', '2026-01-19 08:29:43'),
(260, 178, 124, 'VIVA LA JUICY GRANDE (LIMITED EDITION) EDP 200ML', '200ML', 'https://therareperfumes.online/filemanager/68677cec4d4ff.jpg', 1, 17500, 17500, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":30,\"values_title\":\"200ML\"}]', '2026-01-19 08:31:00', '2026-01-19 08:31:00'),
(261, 179, 50, 'SHINE EDP 75ML', '75ML', 'https://therareperfumes.online/filemanager/68498c41c3c8b.jpg', 1, 9950, 9950, '[{\"attribute_title\":\"size\",\"attribute_id\":3,\"values_id\":27,\"values_title\":\"75ML\"}]', '2026-01-19 08:31:35', '2026-01-19 08:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `title`, `is_enable`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(2, 'Approved', 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(3, 'Cancel', 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(5, 'Delivery Process', 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48'),
(6, 'Complete', 1, '2024-09-25 16:48:48', '2024-09-25 16:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `shortdetails` text DEFAULT NULL,
  `longdetails` text NOT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `shortdetails`, `longdetails`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Contact Us', 'contact-us', NULL, '<h2>Get in Touch with The Rare Perfumes</h2><p>We’re here to help and answer any questions you might have. We look forward to hearing from you!</p><h2>Contact Information</h2><p><strong>Email: support@therareperfumes.online</strong></p><p><strong>Phone:</strong> +923333462172</p><p><strong>Address:</strong> F-748-0, TEXTILE AVENUE, S.I.T.E., KARACHI, Pakistan</p><h2>Business Hours</h2><p>Monday - Friday: 9:00 AM - 6:00 PM</p><p>Saturday: 10:00 AM - 4:00 PM</p><p>Sunday: Closed</p><h2>Follow The Rare Perfumes</h2><p>Stay connected with us through social media:</p><p><a href=\"https://www.instagram.com/therareperfumesonline/\">Instagram</a> &nbsp;<br><a href=\"https://www.facebook.com/people/The-Rare-Perfumes/61577791466299/\">Facebook</a>&nbsp;<br><a href=\"https://tiktok.com/@therareperfumes.online\">Tiktok</a></p>', 'Contact Us', 'Get in touch with The Rare Perfumes – for inquiries, support, or feedback. Reach us via email, phone or our contact form. We’re here to assist you.', 'contact The Rare Perfumes, customer support, perfume inquiries, rare perfumes Pakistan, reach us', '2024-09-25 16:48:48', '2026-01-08 07:27:18'),
(2, 'Terms & Conditions', 'terms-conditions', NULL, '<h2>TERMS</h2>\n<p>By accessing the website at <a href=\"https://therareperfumes.online/public/\">https://therareperfumes.online/public/</a>, you are agreeing to be bound by these terms of service, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws. If you do not agree with any of these terms, you are prohibited from using or accessing this site. The materials contained in this website are protected by applicable copyright and trademark law.</p>\n\n<h2>USE LICENSE</h2>\n<p>Permission is granted to temporarily download one copy of the materials (information or software) on The Rare Perfumes website for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license, you may not: modify or copy the materials; use the materials for any commercial purpose, or for any public display (commercial or non-commercial); attempt to decompile or reverse engineer any software contained on The Rare Perfumes website; remove any copyright or other proprietary notations from the materials; or transfer the materials to another person or \"mirror\" the materials on any other server. This license shall automatically terminate if you violate any of these restrictions and may be terminated by The Rare Perfumes at any time. Upon terminating your viewing of these materials or upon the termination of this license, you must destroy any downloaded materials in your possession whether in electronic or printed format.</p>\n\n<h2>DISCLAIMER</h2>\n<p>The materials on The Rare Perfumes website are provided on an `as is` basis. The Rare Perfumes makes no warranties, expressed or implied, and hereby disclaims and negates all other warranties including, without limitation, implied warranties or conditions of merchantability, fitness for a particular purpose, or non-infringement of intellectual property or other violation of rights. Further, The Rare Perfumes does not warrant or make any representations concerning the accuracy, likely results, or reliability of the use of the materials on its website or otherwise relating to such materials or on any sites linked to this site.</p>\n\n<h2>LIMITATIONS</h2>\n<p>In no event shall The Rare Perfumes be liable for any damages (including, without limitation, damages for loss of data or profit, or due to business interruption) arising out of the use or inability to use the materials on The Rare Perfumes website, even if The Rare Perfumes or an authorized representative has been notified orally or in writing of the possibility of such damage. Because some jurisdictions do not allow limitations on implied warranties, or limitations of liability for consequential or incidental damages, these limitations may not apply to you.</p>\n\n<h2>ACCURACY OF MATERIALS</h2>\n<p>The materials appearing on The Rare Perfumes website could include technical, typographical, or photographic errors. The Rare Perfumes does not warrant that any of the materials on its website are 100% accurate, complete or current. The Rare Perfumes may make changes to the materials contained on its website at any time without notice. However, The Rare Perfumes does not make any commitment to update the materials.</p>\n\n<h2>PRODUCT &amp; SERVICE DESCRIPTIONS</h2>\n<p>Whilst we try to display the colors of our products accurately on the Website, the actual colors you see will depend on your screen and we cannot guarantee that your screen\'s display of any color will accurately reflect the color of the product on delivery.</p>\n<p>All items are subject to availability. We will inform you as soon as possible if the product(s) or service(s) you have ordered are not available and we may offer an alternative product(s) or service(s) of equal or higher quality and value otherwise the order had to be canceled.</p>\n\n<h2>ACCEPTANCE OF YOUR ORDER</h2>\n<p>Please note that completion of the online checkout process does not constitute our acceptance of your order. Our acceptance of your order will take place only when we dispatch the product(s) or commence the services that you ordered from us.</p>\n<p>By completing and submitting the electronic order form (or proceeding through the `checkout process`) you are making an offer to purchase goods which, if accepted by us, will result in a binding contract. Neither submitting an electronic order form nor completing the checkout process constitutes our acceptance of your order.</p>\n<p>If you supplied us with your email address when entering your payment details (or if you have a registered account with us), we will notify you by email as soon as possible to confirm that we have received your order.</p>\n<p>All products that you order through the Website will remain the property of The Rare Perfumes until we have received payment in full from you for those products.</p>\n<p>If we cannot supply you with the product or service you ordered, we will not process your order. We will inform you via email or call, and if you have already paid for the product or service, refund you in full as soon as reasonably possible.</p>\n<p>The Rare Perfumes reserves the right to cancel your order in the case of (but not limited to): unavailability of product, incorrectly listed price, or any other incorrect information.</p>\n\n<h2>DELIVERY OF YOUR ORDER</h2>\n<p>The Rare Perfumes products are sold on a delivery duty unpaid basis. The recipient may have to pay import duty or a formal customs entry fee prior to or on delivery. Additional taxes, fees or levies may apply according to local legislation and customers are required to check these details before placing an order for international delivery.</p>\n<p>We will deliver to the home or office address indicated by you when you place an order. We cannot deliver to PO boxes. All deliveries must be signed for upon receipt. We will try at least twice to deliver your order at the address indicated by you.</p>\n<p>We reserve the right to cancel your purchase in the event nobody is available to sign for receipt. You bear the risk for the products once delivery is completed.</p>\n<p>Where possible, we try to deliver in one go. We reserve the right to split the delivery of your order, for instance (but not limited to) if part of your order is delayed or unavailable. In the event that we split your order, we will notify you of our intention to do so by sending you an e-mail to the e-mail address provided by you at the time of purchase. You will not be charged for any additional delivery costs.</p>\n<p>We can entertain any changes to orders provided the order hasn’t been dispatched yet. We will not be able to accept any order change requests once the order is dispatched (neither any refund or exchange will be possible in case of delivery outside Pakistan.)</p>\n\n<h2>LINKS</h2>\n<p>We may have placed links on this Website to other websites which we think you may want to visit. We do not vet these websites and do not have any control over their contents. Except where required by applicable law, The Rare Perfumes cannot accept any liability in respect of the use of these websites.</p>\n\n<h2>MODIFICATIONS</h2>\n<p>The Rare Perfumes may revise these terms of service for its website at any time without notice. By using this website you are agreeing to be bound by the then current version of these terms of service.</p>\n\n<h2>GOVERNING LAW</h2>\n<p>These terms and conditions are governed by and construed in accordance with the laws of Pakistan and you irrevocably submit to the exclusive jurisdiction of the courts in that State or location.</p>\n\n<h2>COMPLAINTS PROCESS</h2>\n<p>We hope that you’re pleased with any purchase you’ve made or the service you’ve received from The Rare Perfumes and that you’ll never have reason to complain – but if there’s something you’re not happy with, we’d like to put matters right, so please contact us straight away:</p>\n\n<h2>BY EMAIL</h2>\n<p>support@therareperfumes.online</p>\n\n<h2>BY TELEPHONE</h2>\n<p><a href=\"tel:+447599967311\">+44 7599967311</a> (9am – 10pm, Monday – Saturday)</p>\n', NULL, NULL, NULL, '2024-09-25 16:48:48', '2025-06-14 06:35:52'),
(3, 'Frequently Asked Questions', 'faq', NULL, '<h2>HOW DO I PLACE AN ORDER?</h2><p>Ordering at <a href=\"https://therareperfumes.online\">https://therareperfumes.online</a> is easy. Just select the items you want to shop, enter your shipping address and payment information, and you can place your order. If you need any assistance, give us a WhatsApp message at <a href=\"tel:+44 7599967311\">+44 7599967311</a> Monday to Saturday.</p><h2>HOW WILL MY ORDER BE DELIVERED TO ME?</h2><p>Your order will be delivered through reputed courier companies directly to your doorstep.</p><h2>HOW WILL I KNOW IF MY ORDER IS PLACED SUCCESSFULLY?</h2><p>Once your order is successfully placed, you will receive a confirmation call, email, and text message from The Rare Perfumes. This message will include all the details related to your order. Order details can also be viewed in the \"My Account → My Orders\" section if you placed the order online through your account.</p><h2>DO YOU TAKE ORDERS OVER THE PHONE?</h2><p>Yes, we do take orders via WhatsApp message at <a href=\"tel:+44 7599967311\">+44 7599967311</a>. The available payment methods for these orders are Cash on Delivery and Advance Payment only.</p><h2>I TRIED PLACING AN ORDER USING MY CREDIT CARD BUT IT ISN\'T WORKING. CAN YOU HELP ME PLACE AN ORDER?</h2><p>Yes, if your debit/credit card isn\'t working, we can assist you by taking your order over WhatsApp at <a href=\"tel:+44 7599967311\">+44 7599967311</a>.</p>', NULL, NULL, NULL, '2024-09-25 16:48:48', '2025-06-16 09:45:03'),
(4, 'Shipping Policy', 'shipping-policy', NULL, '<h2>Shipping Policy</h2><p>Thank you for shopping at The Rare Perfumes. Below are the terms and conditions that constitute our Shipping Policy.</p><h2>Processing Time</h2><p>All orders are processed within 1-2 business days. Orders are not shipped or delivered on weekends or holidays.</p><p>If we are experiencing a high volume of orders, shipments may be delayed by a few days. Please allow additional days in transit for delivery. If there will be a significant delay in the shipment of your order, we will contact you via email or telephone.</p><h2>Shipping Rates &amp; Delivery Estimates</h2><p>Shipping charges for your order will be calculated and displayed at checkout.</p><ul><li><strong>Standard Shipping</strong>: 3-5 business days – calculated at checkout</li><li><strong>Expedited Shipping</strong>: 1-3 business days – calculated at checkout</li><li><strong>Overnight Shipping</strong>: 1 business day – calculated at checkout</li></ul><p>Delivery delays can occasionally occur.</p><h2>Shipment to P.O. boxes or APO/FPO addresses</h2><p>The Rare Perfumes ships to addresses within Pakistan and selected international destinations. We currently do not ship to P.O. boxes or APO/FPO addresses.</p><h2>Shipment Confirmation &amp; Order Tracking</h2><p>You will receive a Shipment Confirmation email once your order has shipped containing your tracking number(s). The tracking number will be active within 24 hours.</p><h2>Customs, Duties, and Taxes</h2><p>The Rare Perfumes is not responsible for any customs and taxes applied to your order. All fees imposed during or after shipping are the responsibility of the customer (tariffs, taxes, etc.).</p><h2>Damages</h2><p>The Rare Perfumes is not liable for any products damaged or lost during shipping. If you received your order damaged, please contact the shipment carrier to file a claim.</p><p>Please save all packaging materials and damaged goods before filing a claim.</p><h2>International Shipping Policy</h2><p>We do offer international shipping to select countries. Additional duties or taxes may apply and are the responsibility of the customer.</p><h2>Returns Policy</h2><p>Our Return &amp; Refund Policy provides detailed information about options and procedures for returning your order. Please review it on our Returns page.</p>', NULL, NULL, NULL, '2024-09-25 16:48:48', '2025-06-16 09:44:20'),
(5, 'EXCHANGE AND RETURN POLICY', 'exchange-and-return-policy', NULL, '<h2>Exchange and Return Policy</h2><p>At The Rare Perfumes, we strive to ensure our customers are completely satisfied with their purchases. If you are not satisfied with your purchase, we are here to help.</p><h2>Return Eligibility</h2><p>To be eligible for a return, please make sure that:</p><ul><li>The product was purchased in the last 3 days</li><li>The product is in its original packaging</li><li>The product isn\'t used or damaged</li><li>You have the receipt or proof of purchase</li></ul><p>Products that do not meet these criteria will not be considered for return.</p><h2>Return Process</h2><p>To initiate a return, please follow these steps:</p><ul><li>Contact us by email: <a href=\"mailto:support@therareperfumes.online\">support@therareperfumes.online</a></li><li>Include your order number, product details, and reason for the return</li><li>We will provide you with instructions on where to send the returned product</li></ul><h2>Exchanges</h2><p>We only replace items if they are defective or damaged. If you need to exchange an item for the same product, please contact us at <a href=\"mailto:support@therareperfumes.online\">support@therareperfumes.online</a> with the details of the product and the issue.</p><h2>Refunds</h2><p>Once we receive your item, we will inspect it and notify you that we have received your returned item. We will immediately notify you of the status of your refund after inspecting the item.</p><p>If your return is approved, we will initiate a refund to your original method of payment. The time frame for the refund to be processed and posted depends on your card issuer\'s policies.</p><h2>Shipping</h2><p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p><h2>Contact Us</h2><p>The Rare Perfumes<br>Email: <a href=\"mailto:support@therareperfumes.online\">support@therareperfumes.online</a><br>Phone: <a href=\"tel:+44 7599967311\">+44 7599967311</a><br>Address: Pakistan</p>', NULL, NULL, NULL, '2024-09-25 16:48:48', '2025-06-16 09:43:28'),
(6, 'About us', 'about-us', NULL, '<h2>Welcome To The Rare Perfumes</h2><h2>Our Story</h2><p>The Rare Perfumes was founded with a simple realization that many online stores were selling perfumes at excessively high prices. We started small but have now grown into a thriving e-commerce platform serving customers across Pakistan.</p><h2>Our Mission and Values</h2><p>Our mission is to make premium fragrances accessible to every customer. We are guided by three core values: quality, sustainability, and customer satisfaction.</p><p><strong>Quality:</strong> We are committed to offering only 100% original branded products that meet the highest quality standards.</p><p><strong>Sustainability:</strong> We support eco-friendly practices and work with partners who follow sustainable sourcing methods.</p><p><strong>Customer Satisfaction:</strong> Our customers are at the heart of our business. We go the extra mile to ensure a smooth shopping experience.</p><h2>What We Offer</h2><p>We offer a wide range of perfumes for everyone — whether you’re looking for men\'s or women’s branded fragrances, we have something to suit every taste. Our unique selling point is providing original branded perfumes at wholesale rates, every day.</p><p>For any questions or assistance, feel free to reach out at <a href=\"mailto:support@therareperfumes.online\">support@therareperfumes.online</a>. We’re here to help!</p>', NULL, NULL, NULL, '2024-09-25 16:48:48', '2025-06-16 09:43:01'),
(7, 'Privacy Policy', 'privacy-policy', NULL, '<h2>Privacy Policy</h2><p>Welcome to <strong>The Rare Perfumes</strong></p><p>We are committed to protecting your personal information and your right to privacy. If you have any questions or concerns about our policy or practices regarding your personal information, please contact us at <a href=\"mailto:support@therareperfumes.online\">support@therareperfumes.online</a></p><p>When you visit our website <a href=\"https://therareperfumes.online\">https://therareperfumes.online</a> and use our services, you trust us with your personal information. We take your privacy very seriously. In this Privacy Policy, we explain what information we collect, how we use it, and what rights you have in relation to it. If you do not agree with any terms in this policy, please contact us.</p><h2>Information We Collect</h2><p>We collect personal information that you voluntarily provide when you:</p><ul><li>Register at The Rare Perfumes</li><li>Show interest in our products or services</li><li>Participate in activities (e.g., contests, giveaways, forums)</li><li>Contact us directly</li></ul><h2>How We Use Your Information</h2><p>We process your personal information for legitimate business purposes, contractual obligations, legal compliance, and/or your consent. Uses include:</p><ul><li>To facilitate account creation and logins</li><li>To send administrative communications</li><li>To fulfill and manage orders</li><li>To post testimonials</li><li>To request feedback</li><li>To protect our services and prevent fraud</li><li>To enforce our terms and policies</li><li>To comply with legal requests</li><li>To manage user accounts</li><li>To deliver and improve services</li><li>To offer support</li></ul><h2>Sharing Your Information</h2><p>We may share information in the following scenarios:</p><ul><li>Compliance with laws</li><li>To protect legal rights and vital interests</li><li>With vendors, consultants, or third-party providers</li><li>During business transfers (mergers, acquisitions, etc.)</li><li>With affiliates or business partners</li><li>With your explicit consent</li><li>With other users (if applicable)</li></ul><h2>Cookies and Tracking Technologies</h2><p>We may use cookies, web beacons, and pixels for tracking and analytics. For more information, please review our <strong>Cookie Policy</strong>.</p><h2>Data Retention</h2><p>We retain your data only as long as necessary to fulfill the purposes in this policy, unless a longer retention is required by law (e.g., tax or legal obligations).</p><h2>Your Data Protection Rights</h2><p>Under applicable data protection laws, you have the right to:</p><ul><li>Access your personal data</li><li>Correct your personal data</li><li>Delete your personal data</li><li>Object to data processing</li><li>Restrict data processing</li><li>Transfer your data</li><li>Withdraw consent at any time</li></ul><h2>Contact Us</h2><p>If you have questions or concerns, contact our Support Team at:</p><p>The Rare Perfumes<br>Email: <a href=\"mailto:support@therareperfumes.online\">support@therareperfumes.online</a><br>Phone: <a href=\"tel:+44 7599967311\">+</a>92-333-3462172<br>Address: Pakistan</p><h2>Changes to This Privacy Policy</h2><p>We may update this Privacy Policy from time to time to reflect changes in our practices or for operational, legal, or regulatory reasons.</p>', NULL, NULL, NULL, '2024-09-25 16:48:48', '2025-11-13 05:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `slug`, `message`, `is_enable`, `created_at`, `updated_at`) VALUES
(2, 'Cash on Delivery', 'cash-on-delivery', '<h3><strong>Cash on Delivery:</strong></h3><figure class=\"table\"><table><tbody><tr><td><strong>COD :</strong></td><td>&nbsp; &nbsp;CASH ON DELIVERY</td></tr><tr><td>Mode</td><td>&nbsp; &nbsp;Leopard/ TCS &amp; Bykea (Khi , Lhr &amp; Isb)</td></tr></tbody></table></figure>', 1, '2024-09-25 16:48:48', '2026-01-20 10:39:01'),
(3, 'Bank Transfer', 'bank-transfer', '<h3><strong>Bank Transfer:</strong></h3><figure class=\"table\"><table><tbody><tr><td><strong>BANK :</strong></td><td><strong>MEEZAN BANK LTD</strong></td></tr><tr><td><strong>IBAN Number :</strong></td><td><strong>PK35MEZN0010300113572981</strong></td></tr><tr><td><strong>Acount Title :</strong></td><td><strong>THE RARE PERFUMES (SMC-PRIVATE) LTD</strong></td></tr></tbody></table></figure>', 1, '2024-09-25 16:48:48', '2026-01-20 10:31:56'),
(4, 'Credit/Debit Card', 'credit-debit-card-', '<h3><strong>Card on Delivery:</strong></h3><figure class=\"table\"><table><tbody><tr><td><strong>BANK :</strong></td><td>POS MACHINE</td></tr><tr><td><strong>Acount Title :</strong></td><td><strong>THE RARE PERFUMES (SMC-PRIVATE) LTD</strong></td></tr><tr><td>Location:</td><td>SERVICE AVAILABLE ONLY IN SELECTED CITIES</td></tr></tbody></table></figure>', 1, '2024-09-25 16:48:48', '2026-01-20 10:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `slug` text NOT NULL,
  `price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `sku` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subchildcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `hover_image` text DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_popular` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `is_enable` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `price`, `selling_price`, `sku`, `category_id`, `subcategory_id`, `subchildcategory_id`, `brand_id`, `tags`, `image`, `images`, `type`, `hover_image`, `is_featured`, `is_popular`, `details`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `is_enable`, `created_at`, `updated_at`) VALUES
(21, '1001 NIGHTS EDP 60ML', '1001-nights-edp-60ml', 12000, 12000, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68481c3624d1c.jpg', 'filemanager/68481c3624d1c.jpg,filemanager/68481c5f7a1a1.jpg,filemanager/68481c689bde2.jpg', NULL, 'filemanager/68481c689bde2.jpg', 1, 0, '1001 NIGHTS EDP 60ML', NULL, '1001 NIGHTS EDP 60ML', NULL, '1001 NIGHTS EDP 60ML', 1, '2025-06-10 11:52:19', '2025-06-18 06:23:07'),
(22, 'AMBER MUSC EDP 100ML', 'amber-musc-edp-100ml', 24500, 24500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68481d142a1e0.jpg', 'filemanager/68481d142a1e0.jpg,filemanager/68481d1fb3fc8.jpg,filemanager/68481d2a5bf7b.jpg', NULL, 'filemanager/68481d1fb3fc8.jpg', 0, 0, 'AMBER MUSC EDP 100ML', NULL, 'AMBER MUSC EDP 100ML', NULL, 'AMBER MUSC EDP 100ML', 1, '2025-06-10 11:55:30', '2025-06-18 06:21:21'),
(23, 'AMBER WOOD EDP 100ML', 'amber-wood-edp-100ml', 28500, 28500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68481dbc2c378.jpg', 'filemanager/68481dbc2c378.jpg,filemanager/68481dc4b7122.jpg,filemanager/68481dce4d797.jpg', NULL, 'filemanager/68481dc4b7122.jpg', 0, 0, 'AMBER WOOD EDP 100ML', NULL, 'AMBER WOOD EDP 100ML', NULL, 'AMBER WOOD EDP 100ML', 1, '2025-06-10 11:58:12', '2025-06-18 05:08:27'),
(24, 'ARISTOCRAT FOR HER EDP 75ML', 'aristocrat-for-her-edp-75ml', 12750, 12750, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/684820d93bc30.jpg', 'filemanager/684820d93bc30.jpg,filemanager/684820e8b7170.jpg,filemanager/684820f50dab8.jpg', NULL, 'filemanager/684820f50dab8.jpg', 0, 0, 'ARISTOCRAT FOR HER EDP 75ML', '<p><br data-mce-bogus=\"1\"></p>', 'ARISTOCRAT FOR HER EDP 75ML', NULL, 'ARISTOCRAT FOR HER EDP 75ML', 1, '2025-06-10 12:11:42', '2025-12-12 14:43:10'),
(25, 'ARISTOCRAT FOR MEN EDP 75ML', 'aristocrat-for-men-edp-75ml', 13000, 13000, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/684822f163872.jpg', 'filemanager/684822f162fb0.jpg,filemanager/684822f16349f.jpg,filemanager/684822f163872.jpg', NULL, 'filemanager/684822f16349f.jpg', 1, 0, 'ARISTOCRAT FOR MEN EDP 75ML', '<p><br data-mce-bogus=\"1\"></p>', 'ARISTOCRAT FOR MEN EDP 75ML', NULL, 'ARISTOCRAT FOR MEN EDP 75ML', 1, '2025-06-10 12:20:08', '2025-06-18 04:43:58'),
(26, 'ARISTOCRAT PLATINUM EDP 75ML', 'aristocrat-platinum-edp-75ml', 13800, 13800, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68482374387c3.jpg', 'filemanager/68482374387c3.jpg,filemanager/6848237438ca8.jpg,filemanager/68482374390ca.jpg', NULL, 'filemanager/6848237438ca8.jpg', 0, 0, 'ARISTOCRAT PLATINUM EDP 75ML', NULL, 'ARISTOCRAT PLATINUM EDP 75ML', NULL, 'ARISTOCRAT PLATINUM EDP 75ML', 1, '2025-06-10 12:22:20', '2025-12-23 10:20:49'),
(27, 'AURUM EDP 75ML', 'aurum-edp-75ml', 13750, 13750, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/684823ea0d0dc.jpg', 'filemanager/684823ea0c4e2.jpg,filemanager/684823ea0cac9.jpg,filemanager/684823ea0d0dc.jpg', NULL, 'filemanager/684823ea0c4e2.jpg', 1, 0, 'AURUM EDP 75ML', '<p><br data-mce-bogus=\"1\"></p>', 'AURUM EDP 75ML', NULL, 'AURUM EDP 75ML', 1, '2025-06-10 12:24:12', '2025-12-09 19:43:00'),
(28, 'AURUM CONC. PERFUME 10ML', 'aurum-conc-perfume-10ml', 2950, 2950, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/6848245f4d865.jpg', 'filemanager/6848245f4d865.jpg', NULL, 'filemanager/6848245f4d865.jpg', 0, 0, 'AURUM CONC. PERFUME 10ML', '<p><br data-mce-bogus=\"1\"></p>', 'AURUM CONC. PERFUME 10ML', NULL, 'AURUM CONC. PERFUME 10ML', 1, '2025-06-10 12:26:12', '2025-06-17 18:25:05'),
(29, 'AURUM SUMMER EDP 75ML', 'aurum-summer-edp-75ml', 9500, 9500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/684824cd0ac1a.jpg', 'filemanager/684824cd0a41f.jpg,filemanager/684824cd0a84b.jpg,filemanager/684824cd0ac1a.jpg', NULL, 'filemanager/684824cd0a41f.jpg', 0, 0, 'AURUM SUMMER EDP 75ML', '<p><br data-mce-bogus=\"1\"></p>', 'AURUM SUMMER EDP 75ML', NULL, 'AURUM SUMMER EDP 75ML', 1, '2025-06-10 12:28:03', '2025-06-17 07:23:34'),
(30, 'BLU EDP 90ML', 'blu-edp-90ml', 8500, 8500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68497fd872030.jpg', 'filemanager/68497fd872030.jpg,filemanager/68497fd87251c.jpg,filemanager/68497fd8728a4.jpg', NULL, 'filemanager/68497fd87251c.jpg', 1, 0, 'BLU EDP 90ML', '<p><br data-mce-bogus=\"1\"></p>', 'BLU EDP 90ML', NULL, 'BLU EDP 90ML', 1, '2025-06-11 13:08:44', '2025-06-17 07:02:39'),
(31, 'BLU CONC. PERFUME 10ML', '-blu-conc-perfume-10ml-', 2950, 2950, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498036971e7.jpg', 'filemanager/68498036971e7.jpg', NULL, 'filemanager/68497fd87251c.jpg', 0, 0, 'BLU CONC. PERFUME 10ML', NULL, 'BLU CONC. PERFUME 10ML', NULL, 'BLU CONC. PERFUME 10ML', 1, '2025-06-11 13:10:17', '2025-06-17 05:55:10'),
(32, 'CARBON EDP 100ML', 'carbon-edp-100ml', 7000, 7000, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/684980b024caa.jpg', ',filemanager/684980b024caa.jpg,filemanager/684980b02508a.jpg,filemanager/684980b0253b0.jpg', NULL, 'filemanager/684980b0253b0.jpg', 0, 0, 'CARBON EDP 100ML', NULL, 'CARBON EDP 100ML', NULL, 'CARBON EDP 100ML', 1, '2025-06-11 13:11:54', '2026-01-17 12:33:40'),
(33, 'CASHMERE MUSC EDP 100ML', 'cashmere-musc-edp-100ml', 27500, 27500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/684981008bb13.jpg', ',filemanager/684981008b5bd.jpg,filemanager/684981008bf4e.jpg,filemanager/684981008c256.jpg', NULL, 'filemanager/684981008bf4e.jpg', 0, 0, 'CASHMERE MUSC EDP 100ML', NULL, 'CASHMERE MUSC EDP 100ML', NULL, 'CASHMERE MUSC EDP 100ML', 1, '2025-06-11 13:13:42', '2025-06-17 05:44:39'),
(34, 'CHIVALRY EDP 100ML', 'chivalry-edp-100ml', 5250, 5250, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498151bb095.jpg', ',filemanager/68498151babf5.jpg,filemanager/68498151bb095.jpg,filemanager/68498151bb47c.jpg', NULL, 'filemanager/68498151babf5.jpg', 0, 0, 'CHIVALRY EDP 100ML', NULL, 'CHIVALRY EDP 100ML', NULL, 'CHIVALRY EDP 100ML', 1, '2025-06-11 13:15:01', '2026-01-13 08:35:04'),
(35, 'CUIR MUSC EDP 100ML', 'cuir-musc-edp-100ml', 27500, 27500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/6849819d2bc5c.jpg', ',filemanager/6849819d2b58e.jpg,filemanager/6849819d2b956.jpg,filemanager/6849819d2bc5c.jpg', NULL, 'filemanager/6849819d2b956.jpg', 0, 0, 'CUIR MUSC EDP 100ML', NULL, 'CUIR MUSC EDP 100ML', NULL, 'CUIR MUSC EDP 100ML', 1, '2025-06-11 13:16:28', '2025-06-17 05:31:49'),
(36, 'DANAT AL DUNIYA EDP 60ML', 'danat-al-duniya-edp-60ml', 8950, 8950, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/684981fc764b9.jpg', 'filemanager/684981fc75c45.jpg,filemanager/684981fc760d7.jpg,filemanager/684981fc764b9.jpg', NULL, 'filemanager/684981fc760d7.jpg', 0, 0, 'DANAT AL DUNIYA EDP 60ML', NULL, 'DANAT AL DUNIYA EDP 60ML', NULL, 'DANAT AL DUNIYA EDP 60ML', 1, '2025-06-11 13:17:51', '2025-06-17 05:20:56'),
(37, 'ELIXIR INTENSE  EDP 100ML', 'elixir-intense-edp-100ml', 32500, 32500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498298b8a3f.jpg', ',filemanager/68498298b8109.jpg,filemanager/68498298b8673.jpg,filemanager/68498298b8a3f.jpg', NULL, 'filemanager/68498298b8673.jpg', 1, 0, 'ELIXIR INTENSE  EDP 100ML', NULL, 'ELIXIR INTENSE  EDP 100ML', NULL, 'ELIXIR INTENSE  EDP 100ML', 1, '2025-06-11 13:20:31', '2025-06-17 05:18:40'),
(38, 'ELIXIR PRECIOUS EDP 100ML', 'elixir-precious-edp-100ml', 32500, 32500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/684982f3f1aee.jpg', 'filemanager/684982f3f1aee.jpg,filemanager/684982f3f1f04.jpg,filemanager/684982f3f2226.jpg', NULL, 'filemanager/684982f3f1f04.jpg', 0, 0, 'ELIXIR PRECIOUS EDP 100ML', NULL, 'ELIXIR PRECIOUS EDP 100ML', NULL, 'ELIXIR PRECIOUS EDP 100ML', 1, '2025-06-11 13:21:58', '2025-06-17 05:15:30'),
(39, 'ELIXIR SUAVE EDP 100ML', 'elixir-suave-edp-100ml', 32500, 32500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/684983cb54bbe.jpg', 'filemanager/684983cb547b7.jpg,filemanager/684983cb54bbe.jpg,filemanager/684983cb54fdb.jpg', NULL, 'filemanager/684983cb547b7.jpg', 0, 0, 'ELIXIR SUAVE EDP 100ML', NULL, 'ELIXIR SUAVE EDP 100ML', NULL, 'ELIXIR SUAVE EDP 100ML', 1, '2025-06-11 13:25:37', '2025-06-17 04:51:40'),
(40, 'EVOKE HIM EDP 90ML', 'evoke-him-edp-90ml', 10750, 10750, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498475235bb.jpg', 'filemanager/6849847522f4f.jpg,filemanager/68498475235bb.jpg,filemanager/6849847523985.jpg', NULL, 'filemanager/6849847522f4f.jpg', 0, 0, 'EVOKE HIM EDP 90ML', NULL, 'EVOKE HIM EDP 90ML', NULL, 'EVOKE HIM EDP 90ML', 1, '2025-06-11 13:28:26', '2025-06-16 20:33:14'),
(41, 'GOLD MAN EDP 100ML', 'gold-man-edp-100ml', 5500, 5500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/684984ba46e78.jpg', 'filemanager/684984ba46a9e.jpg,filemanager/684984ba46e78.jpg,filemanager/684984ba471e0.jpg', NULL, 'filemanager/684984ba46a9e.jpg', 0, 0, 'GOLD MAN EDP 100ML', NULL, 'GOLD MAN EDP 100ML', NULL, 'GOLD MAN EDP 100ML', 1, '2025-06-11 13:29:33', '2025-06-16 20:30:53'),
(42, 'GRAY EDP 100ML', 'gray-edp-100ml', 7250, 7250, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/684984fe0dd33.jpg', 'filemanager/684984fe0d8e4.jpg,filemanager/684984fe0dd33.jpg,filemanager/684984fe0e0e8.jpg', NULL, 'filemanager/684984fe0d8e4.jpg', 0, 0, 'GRAY EDP 100ML', NULL, 'GRAY EDP 100ML', NULL, 'GRAY EDP 100ML', 1, '2025-06-11 13:30:47', '2025-06-16 20:28:42'),
(43, 'HATKORA WOOD EDP 100ML', 'hatkora-wood-edp-100ml', 32500, 32500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/6849853f17472.jpg', 'filemanager/6849853f1702f.jpg,filemanager/6849853f17472.jpg,filemanager/6849853f177b7.jpg', NULL, 'filemanager/6849853f1702f.jpg', 1, 0, 'HATKORA WOOD EDP 100ML', NULL, 'HATKORA WOOD EDP 100ML', NULL, 'HATKORA WOOD EDP 100ML', 1, '2025-06-11 13:31:51', '2025-06-16 20:25:54'),
(44, 'INCENSE WOOD  EDP 100ML', 'incense-wood-edp-100ml', 31500, 31500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/6849863f42a73.jpg', 'filemanager/6849863f42557.jpg,filemanager/6849863f42a73.jpg,filemanager/6849863f42d49.jpg', NULL, 'filemanager/6849863f42d49.jpg', 0, 0, 'INCENSE WOOD  EDP 100ML', NULL, 'INCENSE WOOD  EDP 100ML', NULL, 'INCENSE WOOD  EDP 100ML', 1, '2025-06-11 13:36:14', '2025-06-16 20:23:10'),
(45, 'KURO EDP 90ML', 'kuro-edp-90ml', 9250, 9250, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/6849868ebe096.jpg', 'filemanager/6849868ebd833.jpg,filemanager/6849868ebdc61.jpg,filemanager/6849868ebe096.jpg', NULL, 'filemanager/6849868ebd833.jpg', 0, 0, 'KURO EDP 90ML', NULL, 'KURO EDP 90ML', NULL, 'KURO EDP 90ML', 1, '2025-06-11 13:37:23', '2025-06-16 20:20:49'),
(46, 'MIZYAAN CONC PERFUME 14ML', 'mizyaan-conc-perfume-14ml', 7500, 7500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/684986cd7fa73.jpg', 'filemanager/684986cd7f203.jpg,filemanager/684986cd7f67f.jpg,filemanager/684986cd7fa73.jpg', NULL, 'filemanager/684986cd7f203.jpg', 0, 0, 'MIZYAAN CONC PERFUME  14ML', NULL, 'MIZYAAN CONC PERFUME  14ML', NULL, 'MIZYAAN CONC PERFUME  14ML', 1, '2025-06-11 13:38:24', '2025-06-16 19:56:12'),
(48, 'NEUTRON EDP 100ML', 'neutron-edp-100ml', 6250, 6250, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/684987f22e55d.jpg', 'filemanager/684987f22dc22.jpg,filemanager/684987f22e146.jpg,filemanager/684987f22e55d.jpg', NULL, 'filemanager/684987f22dc22.jpg', 0, 0, 'NEUTRON EDP 100ML', NULL, 'NEUTRON EDP 100ML', NULL, 'NEUTRON EDP 100ML', 1, '2025-06-11 13:43:18', '2026-01-01 12:07:43'),
(49, 'PATCHOULI WOOD EDP 100ML', 'patchouli-wood-edp-100ml', 31250, 31250, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/6849882898a4f.jpg', 'filemanager/6849882898a4f.jpg,filemanager/6849882898e6d.jpg,filemanager/6849882899193.jpg', NULL, 'filemanager/6849882899193.jpg', 0, 0, 'PATCHOULI WOOD EDP 100ML', NULL, 'PATCHOULI WOOD EDP 100ML', NULL, 'PATCHOULI WOOD EDP 100ML', 1, '2025-06-11 13:44:13', '2026-01-20 07:23:47'),
(50, 'RAINDROPS EDP 50ML', 'raindrops-edp-50ml', 6750, 6750, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/684988e2f29a5.jpg', 'filemanager/684988e2f29a5.jpg,filemanager/684988e2f2f15.jpg,filemanager/684988e2f3258.jpg', NULL, 'filemanager/684988e2f3258.jpg', 0, 0, 'RAINDROPS EDP 50ML', NULL, 'RAINDROPS EDP 50ML', NULL, 'RAINDROPS EDP 50ML', 1, '2025-06-11 13:47:16', '2025-12-10 18:20:05'),
(51, 'RAINDROPS CONC. PERFUME 10ML', 'raindrops-conc-perfume-10ml-', 2950, 2950, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498a3290791.jpg', 'filemanager/68498a3290791.jpg', NULL, 'filemanager/68498a3290791.jpg', 0, 0, 'RAINDROPS CONC. PERFUME 10ML', NULL, 'RAINDROPS CONC. PERFUME 10ML', NULL, 'RAINDROPS CONC. PERFUME 10ML', 1, '2025-06-11 13:52:56', '2025-06-17 05:59:26'),
(52, 'ROSE WOOD EDP 100ML', 'rose-wood-edp-100ml', 28500, 28500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498a6d4d4f1.jpg', 'filemanager/68498a6d4d4f1.jpg,filemanager/68498a6d4d0a8.jpg,filemanager/68498a6d4d8fd.jpg', NULL, 'filemanager/68498a6d4d0a8.jpg', 0, 0, 'ROSE WOOD EDP 100ML', NULL, 'ROSE WOOD EDP 100ML', NULL, 'ROSE WOOD EDP 100ML', 1, '2025-06-11 13:53:52', '2025-06-16 19:37:25'),
(53, 'SACRED LOVE EDP 50ML', 'sacred-love-edp-50ml', 5950, 5950, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498aa65a2a8.jpg', 'filemanager/68498aa65a2a8.jpg,filemanager/68498aa6597cd.jpg,filemanager/68498aa659d8c.jpg', NULL, 'filemanager/68498aa6597cd.jpg', 0, 0, 'SACRED LOVE EDP 50ML', NULL, 'SACRED LOVE EDP 50ML', NULL, 'SACRED LOVE EDP 50ML', 1, '2025-06-11 13:54:50', '2025-06-16 20:18:59'),
(54, 'SACRED LOVE CONC. PERFUME 10ML', 'sacred-love-conc-perfume-10ml', 2950, 2950, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498ae02d1cc.jpg', 'filemanager/68498ae02d1cc.jpg', NULL, 'filemanager/68498ae02d1cc.jpg', 0, 0, 'SACRED LOVE CONC. PERFUME 10ML', NULL, 'SACRED LOVE CONC. PERFUME 10ML', NULL, 'SACRED LOVE CONC. PERFUME 10ML', 1, '2025-06-11 13:55:49', '2025-06-17 06:02:26'),
(55, 'SANTAL WOOD EDP 100ML', 'santal-wood-edp-100ml', 31500, 31500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498b27b289e.jpg', 'filemanager/68498b27b289e.jpg,filemanager/68498b27b2459.jpg,filemanager/68498b27b2c0d.jpg', NULL, 'filemanager/68498b27b2459.jpg', 0, 0, 'SANTAL WOOD EDP 100ML', NULL, 'SANTAL WOOD EDP 100ML', NULL, 'SANTAL WOOD EDP 100ML', 1, '2025-06-11 13:56:57', '2025-06-16 20:11:58'),
(56, 'SERENITY IN ME EDP 100ML', 'serenity-in-me-edp-100ml', 12250, 12250, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498b5ca261c.jpg', 'filemanager/68498b5ca261c.jpg,filemanager/68498b5ca20fd.jpg,filemanager/68498b5ca2dc7.jpg', NULL, 'filemanager/68498b5ca20fd.jpg', 0, 0, 'SERENITY IN ME EDP 100ML', NULL, 'SERENITY IN ME EDP 100ML', NULL, 'SERENITY IN ME EDP 100ML', 1, '2025-06-11 13:57:55', '2025-12-23 07:05:24'),
(57, 'SHADOW HER EDP 75ML', 'shadow-her-edp-75ml', 9000, 9000, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498bc3d3f0f.jpg', 'filemanager/68498bc3d36d1.jpg,filemanager/68498bc3d3b43.jpg,filemanager/68498bc3d3f0f.jpg', NULL, 'filemanager/68498bc3d36d1.jpg', 0, 0, 'SHADOW HER EDP 75ML', NULL, 'SHADOW HER EDP 75ML', NULL, 'SHADOW HER EDP 75ML', 1, '2025-06-11 13:59:20', '2025-06-16 20:06:49'),
(58, 'SHADOW HIM EDP 75ML', 'shadow-him-edp-75ml', 9750, 9750, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498bfb87d38.jpg', 'filemanager/68498bfb8770d.jpg,filemanager/68498bfb87d38.jpg,filemanager/68498bfb8828b.jpg', NULL, 'filemanager/68498bfb8770d.jpg', 0, 0, 'SHADOW II HIM EDP 75ML', NULL, 'SHADOW II HIM EDP 75ML', NULL, 'SHADOW II HIM EDP 75ML', 1, '2025-06-11 14:00:29', '2025-06-16 19:33:58'),
(59, 'SHINE EDP 75ML', 'shine-edp-75ml', 9950, 9950, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498c41c3c8b.jpg', 'filemanager/68498c41c337e.jpg,filemanager/68498c41c3802.jpg,filemanager/68498c41c3c8b.jpg', NULL, 'filemanager/68498c41c337e.jpg', 0, 0, 'SHINE EDP 75ML', NULL, 'SHINE EDP 75ML', NULL, 'SHINE EDP 75ML', 1, '2025-06-11 14:01:37', '2025-06-16 19:31:16'),
(60, 'SIGNIFY EDP 75ML', 'signify-edp-75ml', 7750, 7750, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498c963d982.jpg', 'filemanager/68498c963ce0a.jpg,filemanager/68498c963d39f.jpg,filemanager/68498c963d982.jpg', NULL, 'filemanager/68498c963ce0a.jpg', 0, 0, 'SIGNIFY EDP 75ML', NULL, 'SIGNIFY EDP 75ML', NULL, 'SIGNIFY EDP 75ML', 1, '2025-06-11 14:03:02', '2025-06-16 19:23:28'),
(61, 'SILVER SHADE EDP 100ML', 'silver-shade-edp-100ml', 7500, 7500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498d7081710.jpg', 'filemanager/68498d708124a.jpg,filemanager/68498d7081710.jpg,filemanager/68498d7081ab0.jpg', NULL, 'filemanager/68498d708124a.jpg', 0, 0, 'SILVER SHADE EDP 100ML', NULL, 'SILVER SHADE EDP 100ML', NULL, 'SILVER SHADE EDP 100ML', 1, '2025-06-11 14:06:43', '2025-06-16 19:19:13'),
(62, 'TITANIUM EDP 100ML', 'titanium-edp-100ml', 7250, 7250, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498f1f23d31.jpg', 'filemanager/68498f1f23974.jpg,filemanager/68498f1f23d31.jpg,filemanager/68498f1f24060.jpg', NULL, 'filemanager/68498f1f23974.jpg', 0, 0, 'TITANIUM EDP 100ML', NULL, 'TITANIUM EDP 100ML', NULL, 'TITANIUM EDP 100ML', 1, '2025-06-11 14:13:58', '2025-06-16 17:53:41'),
(63, 'VIOLET MUSC  EDP 100ML', 'violet-musc-edp-100ml', 22750, 22750, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498f65db52d.jpg', 'filemanager/68498f65db16d.jpg,filemanager/68498f65db52d.jpg,filemanager/68498f65db8d0.jpg', NULL, 'filemanager/68498f65db16d.jpg', 0, 0, 'VIOLET MUSC  EDP 100ML', NULL, 'VIOLET MUSC  EDP 100ML', NULL, 'VIOLET MUSC  EDP 100ML', 1, '2025-06-11 14:15:04', '2025-12-10 18:24:44'),
(64, 'WANDERER EDP 100ML', 'wanderer-edp-100ml', 6500, 6500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68498fa0b8824.jpg', 'filemanager/68498fa0b82c1.jpg,filemanager/68498fa0b8824.jpg,filemanager/68498fa0b8bf6.jpg', NULL, 'filemanager/68498fa0b82c1.jpg', 0, 0, 'WANDERER EDP 100ML', NULL, 'WANDERER EDP 100ML', NULL, 'WANDERER EDP 100ML', 1, '2025-06-11 14:16:55', '2025-06-16 13:02:44'),
(65, 'WISAL EDP 50ML', 'wisal-edp-50ml', 8500, 8500, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/6849900c01fa8.jpg', 'filemanager/6849900c017bc.jpg,filemanager/6849900c01c2e.jpg,filemanager/6849900c01fa8.jpg', NULL, 'filemanager/6849900c017bc.jpg', 0, 0, 'WISAL EDP 50ML', NULL, 'WISAL EDP 50ML', NULL, 'WISAL EDP 50ML', 1, '2025-06-11 14:17:53', '2025-06-16 12:56:03'),
(66, 'WISAL DHAHAB EDP 50ML', 'wisal-dhahab-edp-50ml', 9000, 9000, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/6849904bcaf3c.jpg', 'filemanager/6849904bca617.jpg,filemanager/6849904bcaaaa.jpg,filemanager/6849904bcaf3c.jpg', NULL, 'filemanager/6849904bca617.jpg', 0, 0, 'WISAL DHAHAB EDP 50ML', NULL, 'WISAL DHAHAB EDP 50ML', NULL, 'WISAL DHAHAB EDP 50ML', 1, '2025-06-11 14:18:53', '2025-06-16 12:34:18'),
(67, 'MUSK KHAS CONC PERFUME  3ML', 'musk-khas-conc-perfume-3ml', 6650, 6650, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/684fd27c0ae17.jpg', 'filemanager/684fd27c0a36e.jpg,filemanager/684fd27c0a922.jpg,filemanager/684fd27c0ae17.jpg', NULL, 'filemanager/684fd27c0a922.jpg', 0, 0, 'MUSK KHAS CONC PERFUME  3ML', '<p><br data-mce-bogus=\"1\"></p>', 'MUSK KHAS CONC PERFUME  3ML', NULL, 'MUSK KHAS CONC PERFUME  3ML', 1, '2025-06-16 07:50:27', '2026-01-03 06:49:56'),
(70, 'JIMMY CHOO FEVER EDP 100ML', 'jimmy-choo-fever-edp-100ml', 16500, 16500, NULL, 42, NULL, NULL, 7, NULL, 'filemanager/685be75bdd2fb.jpg', 'filemanager/685be75bdd2fb.jpg', NULL, 'filemanager/685be75bdd2fb.jpg', 1, 0, 'JIMMY CHOO FEVER EDP 100ML', NULL, 'JIMMY CHOO FEVER EDP 100ML', NULL, 'JIMMY CHOO FEVER EDP 100ML', 1, '2025-06-25 12:13:00', '2025-06-25 12:17:55'),
(71, 'JIMMY CHOO MAN BLUE EDT 100ML', 'jimmy-choo-man-blue-edt-100ml', 16500, 16500, NULL, 42, NULL, NULL, 7, NULL, 'filemanager/685be57998b1d.jfif', 'filemanager/685be57998b1d.jfif', NULL, 'filemanager/685be57998b1d.jfif', 0, 0, 'JIMMY CHOO MAN BLUE EDT 100ML', NULL, 'JIMMY CHOO MAN BLUE EDT 100ML', NULL, 'JIMMY CHOO MAN BLUE EDT 100ML', 1, '2025-06-25 12:18:47', '2025-06-25 12:58:10'),
(72, 'JIMMY CHOO FLORAL EDT 90ML', 'jimmy-choo-floral-edt-90ml', 15250, 15250, NULL, 42, NULL, NULL, 7, NULL, 'filemanager/685be57997277.jpg', 'filemanager/685be57997277.jpg', NULL, 'filemanager/685be57997277.jpg', 0, 0, 'JIMMY CHOO FLORAL EDT 90ML', NULL, 'JIMMY CHOO FLORAL EDT 90ML', NULL, 'JIMMY CHOO FLORAL EDT 90ML', 1, '2025-06-25 12:30:43', '2025-09-23 05:22:10'),
(73, 'JIMMY CHOO I WANT CHOO EDP 100ML', 'jimmy-choo-i-want-choo-edp-100ml', 17500, 17500, NULL, 42, NULL, NULL, 7, NULL, 'filemanager/685be57997556.jpg', 'filemanager/685be57997556.jpg', NULL, 'filemanager/685be57997556.jpg', 0, 0, 'JIMMY CHOO I WANT CHOO EDP 100ML', NULL, 'JIMMY CHOO I WANT CHOO EDP 100ML', NULL, 'JIMMY CHOO I WANT CHOO EDP 100ML', 1, '2025-06-25 12:32:43', '2025-09-23 05:18:54'),
(74, 'JIMMY CHOO ILLICIT FLOWER EDT 100ML', 'jimmy-choo-illicit-flower-edt-100ml', 16500, 16500, NULL, 42, NULL, NULL, 7, NULL, 'filemanager/685be5799784a.jpg', 'filemanager/685be5799784a.jpg', NULL, 'filemanager/685be5799784a.jpg', 0, 0, 'JIMMY CHOO ILLICIT FLOWER EDT 100ML', NULL, 'JIMMY CHOO ILLICIT FLOWER EDT 100ML', NULL, 'JIMMY CHOO ILLICIT FLOWER EDT 100ML', 1, '2025-06-25 12:36:44', '2025-06-25 12:38:39'),
(75, 'JIMMY CHOO ILLICIT EDP 100ML', 'jimmy-choo-illicit-edp-100ml', 16000, 16000, NULL, 42, NULL, NULL, 7, NULL, 'filemanager/685be57997c71.jpg', 'filemanager/685be57997c71.jpg', NULL, 'filemanager/685be57997c71.jpg', 0, 0, 'JIMMY CHOO ILLICIT EDP 100ML', NULL, 'JIMMY CHOO ILLICIT EDP 100ML', NULL, 'JIMMY CHOO ILLICIT EDP 100ML', 1, '2025-06-25 12:39:24', '2025-06-25 12:40:57'),
(76, 'JIMMY CHOO LEAU EDT 90ML', 'jimmy-choo-leau-edt-90ml', 15500, 15500, NULL, 42, NULL, NULL, 7, NULL, 'filemanager/685be5799885d.jpg', 'filemanager/685be5799885d.jpg', NULL, 'filemanager/685be5799885d.jpg', 0, 0, 'JIMMY CHOO LEAU EDT 90ML', NULL, 'JIMMY CHOO LEAU EDT 90ML', NULL, 'JIMMY CHOO LEAU EDT 90ML', 1, '2025-06-25 12:43:35', '2025-06-25 12:46:00'),
(77, 'JIMMY CHOO MAN EDT 100ML', 'jimmy-choo-man-edt-100ml', 16500, 16500, NULL, 42, NULL, NULL, 7, NULL, 'filemanager/685be57998e87.jpg', 'filemanager/685be57998e87.jpg', NULL, 'filemanager/685be57998e87.jpg', 1, 0, 'JIMMY CHOO MAN EDT 100ML', NULL, 'JIMMY CHOO MAN EDT 100ML', NULL, 'JIMMY CHOO MAN EDT 100ML', 1, '2025-06-25 12:47:15', '2025-06-25 12:50:28'),
(78, 'JIMMY CHOO MAN ICE EDT 100ML', 'jimmy-choo-man-ice-edt-100ml', 16550, 16550, NULL, 42, NULL, NULL, 7, NULL, 'filemanager/685be579992fe.jpg', 'filemanager/685be579992fe.jpg', NULL, 'filemanager/685be579992fe.jpg', 0, 0, 'JIMMY CHOO MAN ICE EDT 100ML', NULL, 'JIMMY CHOO MAN ICE EDT 100ML', NULL, 'JIMMY CHOO MAN ICE EDT 100ML', 1, '2025-06-25 12:52:23', '2025-06-25 12:56:05'),
(79, 'JIMMY CHOO MAN INTENSE EDT 100ML', 'jimmy-choo-man-intense-edt-100ml', 16500, 16500, NULL, 42, NULL, NULL, 7, NULL, 'filemanager/685bf7a1da400.jpg', 'filemanager/685bf7a1da400.jpg', NULL, 'filemanager/685bf7a1da400.jpg', 0, 0, 'JIMMY CHOO MAN INTENSE EDT 100ML', NULL, 'JIMMY CHOO MAN INTENSE EDT 100ML', NULL, 'JIMMY CHOO MAN INTENSE EDT 100ML', 1, '2025-06-25 12:59:02', '2025-06-25 13:26:18'),
(80, 'JIMMY CHOO WOMEN  EDP 100ML', 'jimmy-choo-women-edp-100ml', 15500, 15500, NULL, 42, NULL, NULL, 7, NULL, 'filemanager/685be5799989d.jpg', 'filemanager/685be5799989d.jpg', NULL, 'filemanager/685be5799989d.jpg', 1, 0, 'JIMMY CHOO WOMEN  EDP 100ML', NULL, 'JIMMY CHOO WOMEN  EDP 100ML', NULL, 'JIMMY CHOO WOMEN  EDP 100ML', 1, '2025-06-25 13:21:25', '2025-06-25 13:40:02'),
(81, 'JIMMY CHOO WOMEN  EDT 100ML', 'jimmy-choo-women-edt-100ml', 15000, 15000, NULL, 42, NULL, NULL, 7, NULL, 'filemanager/685be57999bff.jpg', 'filemanager/685be57999bff.jpg', NULL, 'filemanager/685be57999bff.jpg', 0, 0, 'JIMMY CHOO WOMEN  EDT 100ML', NULL, 'JIMMY CHOO WOMEN  EDT 100ML', NULL, 'JIMMY CHOO WOMEN  EDT 100ML', 1, '2025-06-25 13:23:12', '2025-06-25 13:25:02'),
(82, 'JIMMY CHOO URBAN HERO EDP 100ML', 'jimmy-choo-urban-hero-edp-100ml', 16500, 16500, NULL, 42, NULL, NULL, 7, NULL, 'filemanager/685be57999eb4.jpg', 'filemanager/685be57999eb4.jpg', NULL, 'filemanager/685be57999eb4.jpg', 0, 0, 'JIMMY CHOO URBAN HERO EDP 100ML', NULL, 'JIMMY CHOO URBAN HERO EDP 100ML', NULL, 'JIMMY CHOO URBAN HERO EDP 100ML', 1, '2025-06-25 13:27:17', '2025-06-25 13:32:37'),
(84, 'JUICY COUTURE I AM JUICY COUTURE EDP 100ML', 'juicy-couture-i-am-juicy-couture-edp-100ml-', 12500, 12500, NULL, 42, NULL, NULL, 9, NULL, 'filemanager/685cfec691efc.jpg', 'filemanager/685cfec691efc.jpg', NULL, 'filemanager/685cfec691efc.jpg', 0, 0, 'JUICY COUTURE I AM JUICY COUTURE EDP 100ML', NULL, 'JUICY COUTURE I AM JUICY COUTURE EDP 100ML', NULL, 'JUICY COUTURE I AM JUICY COUTURE EDP 100ML', 1, '2025-06-26 11:37:21', '2025-07-14 10:47:15'),
(85, 'JUICY COUTURE VIVA LA JUICY GOLD COUTURE 100ML', 'juicy-couture-viva-la-juicy-gold-couture-100ml', 12500, 12500, NULL, 42, NULL, NULL, 9, NULL, 'filemanager/685cfec692637.jpg', 'filemanager/685cfec692637.jpg', NULL, 'filemanager/685cfec692637.jpg', 1, 0, 'JUICY COUTURE VIVA LA JUICY GOLD COUTURE 100ML', NULL, 'JUICY COUTURE VIVA LA JUICY GOLD COUTURE 100ML', NULL, 'JUICY COUTURE VIVA LA JUICY GOLD COUTURE 100ML', 1, '2025-06-26 11:44:45', '2025-06-26 11:47:16'),
(86, 'JUICY COUTURE VIVA LA JUICY NEON EDP 100ML', 'juicy-couture-viva-la-juicy-neon-edp-100ml-', 13000, 13000, NULL, 42, NULL, NULL, 9, NULL, 'filemanager/685cfec692b51.jpg', 'filemanager/685cfec692b51.jpg', NULL, 'filemanager/685cfec692b51.jpg', 0, 0, 'JUICY COUTURE VIVA LA JUICY NEON EDP 100ML', NULL, 'JUICY COUTURE VIVA LA JUICY NEON EDP 100ML', NULL, 'JUICY COUTURE VIVA LA JUICY NEON EDP 100ML', 1, '2025-06-26 12:03:55', '2025-06-26 12:05:53'),
(87, 'JUICY COUTURE VIVA LA JUICY NOIR EDP SPRAY 100ML', 'juicy-couture-viva-la-juicy-noir-edp-spray-100ml-', 13000, 13000, NULL, 42, NULL, NULL, 9, NULL, 'filemanager/685cfec692f2b.jpg', 'filemanager/685cfec692f2b.jpg', NULL, 'filemanager/685cfec692f2b.jpg', 0, 0, 'JUICY COUTURE VIVA LA JUICY NOIR EDP SPRAY 100ML', NULL, 'JUICY COUTURE VIVA LA JUICY NOIR EDP SPRAY 100ML', NULL, 'JUICY COUTURE VIVA LA JUICY NOIR EDP SPRAY 100ML', 1, '2025-06-26 12:07:08', '2025-06-26 12:08:55'),
(88, 'VIVA LA JUICY ROSE EDP SPRAY 100ML', 'viva-la-juicy-rose-edp-spray-100ml', 13500, 13500, NULL, 42, NULL, NULL, 9, NULL, 'filemanager/685cfec6932f6.jpg', 'filemanager/685cfec6932f6.jpg', NULL, 'filemanager/685cfec6932f6.jpg', 0, 0, 'VIVA LA JUICY ROSE EDP SPRAY 100ML', NULL, 'VIVA LA JUICY ROSE EDP SPRAY 100ML', NULL, 'VIVA LA JUICY ROSE EDP SPRAY 100ML', 1, '2025-06-26 13:06:44', '2025-07-14 10:45:10'),
(89, 'JUICY COUTURE OUI EDP SPRAY 100ML', 'juicy-couture-oui-edp-spray-100ml', 13500, 13500, NULL, 42, NULL, NULL, 9, NULL, 'filemanager/685cfec69378f.jpg', NULL, NULL, 'filemanager/685cfec69378f.jpg', 0, 0, 'JUICY COUTURE OUI EDP SPRAY 100ML', NULL, 'JUICY COUTURE OUI EDP SPRAY 100ML', NULL, 'JUICY COUTURE OUI EDP SPRAY 100ML', 1, '2025-06-26 13:09:36', '2025-06-26 13:10:42'),
(90, 'JUICY COUTURE REGAL COLLECTION EDP 100ML ROYAL ROSE', 'juicy-couture-regal-collection-edp-100ml-royal-rose', 15500, 15500, NULL, 42, NULL, NULL, 9, NULL, 'filemanager/685cfec693b96.jpg', 'filemanager/685cfec693b96.jpg', NULL, 'filemanager/685cfec693b96.jpg', 0, 0, 'JUICY COUTURE REGAL COLLECTION EDP 100ML ROYAL ROSE', NULL, 'JUICY COUTURE REGAL COLLECTION EDP 100ML ROYAL ROSE', NULL, 'JUICY COUTURE REGAL COLLECTION EDP 100ML ROYAL ROSE', 1, '2025-06-26 13:13:03', '2025-06-26 13:14:31'),
(91, 'JUICY COUTURE VIVA LA JUICY EDP SPRAY 100ML', 'juicy-couture-viva-la-juicy-edp-spray-100ml-', 14250, 14250, NULL, 42, NULL, NULL, 9, NULL, 'filemanager/685cfec693f9d.jpg', 'filemanager/685cfec693f9d.jpg', NULL, 'filemanager/685cfec693f9d.jpg', 1, 0, 'JUICY COUTURE VIVA LA JUICY EDP SPRAY 100ML', NULL, 'JUICY COUTURE VIVA LA JUICY EDP SPRAY 100ML', NULL, 'JUICY COUTURE VIVA LA JUICY EDP SPRAY 100ML', 1, '2025-06-26 13:16:42', '2026-01-14 10:37:43'),
(93, 'JUICY COUTURE VIVA LA JUICY PETALS PLEASE EDP 100ML', 'juicy-couture-viva-la-juicy-petals-please-edp-100ml', 14500, 14500, NULL, 42, NULL, NULL, 9, NULL, 'filemanager/685e45fbe487e.jpg', 'filemanager/685e45fbe487e.jpg', NULL, 'filemanager/685e45fbe487e.jpg', 0, 0, 'JUICY COUTURE VIVA LA JUICY PETALS PLEASE EDP 100ML', NULL, 'JUICY COUTURE VIVA LA JUICY PETALS PLEASE EDP 100ML', NULL, 'JUICY COUTURE VIVA LA JUICY PETALS PLEASE EDP 100ML', 1, '2025-06-27 07:19:44', '2025-06-27 07:43:15'),
(94, 'VIVA LA JUICY GRANDE (LIMITED EDITION) EDP 200ML', 'viva-la-juicy-grande-limited-edition-edp-200ml', 17500, 17500, NULL, 42, NULL, NULL, 9, NULL, 'filemanager/68677cec4d4ff.jpg', 'filemanager/68677cec4d4ff.jpg,filemanager/68677cec4dc59.jpg', NULL, 'filemanager/68677cec4dc59.jpg', 0, 0, 'VIVA LA JUICY GRANDE (LIMITED EDITION) EDP 200ML', NULL, 'VIVA LA JUICY GRANDE (LIMITED EDITION) EDP 200ML', NULL, 'VIVA LA JUICY GRANDE (LIMITED EDITION) EDP 200ML', 1, '2025-07-14 10:40:55', '2025-07-14 10:44:10'),
(95, 'ELIZABETH ARDEN 5TH AVENUE EDP SPRAY 125ml', 'elizabeth-arden-5th-avenue-edp-spray-125ml-', 9500, 9500, NULL, 42, NULL, NULL, 6, NULL, 'filemanager/6874eabc2bb8b.jpg', 'filemanager/6874eabc2bb8b.jpg', NULL, 'filemanager/6874eabc2bb8b.jpg', 1, 0, 'ELIZABETH ARDEN 5TH AVENUE EDP SPRAY 125ml', NULL, 'ELIZABETH ARDEN 5TH AVENUE EDP SPRAY 125ml', NULL, 'ELIZABETH ARDEN 5TH AVENUE EDP SPRAY 125ml', 1, '2025-07-14 10:48:22', '2025-07-14 11:34:36'),
(96, 'ELIZABETH ARDEN 5TH AVENUE NYC EDP SPRAY 125 ML', 'elizabeth-arden-5th-avenue-nyc-edp-spray-125-ml-', 9500, 9500, NULL, 42, NULL, NULL, 6, NULL, 'filemanager/6874ec27f244b.jpg', 'filemanager/6874ec27f244b.jpg', NULL, 'filemanager/6874ec27f244b.jpg', 0, 0, 'ELIZABETH ARDEN 5TH AVENUE NYC EDP SPRAY 125 ML', NULL, 'ELIZABETH ARDEN 5TH AVENUE NYC EDP SPRAY 125 ML', NULL, 'ELIZABETH ARDEN 5TH AVENUE NYC EDP SPRAY 125 ML', 1, '2025-07-14 10:51:49', '2025-07-14 11:39:22'),
(97, 'ELIZABETH ARDEN ARDEN BEAUTY EDP 100ML', 'elizabeth-arden-arden-beauty-edp-100ml-', 9000, 9000, NULL, 42, NULL, NULL, 6, NULL, 'filemanager/6874e6251f83d.jpg', 'filemanager/6874e6251f83d.jpg', NULL, 'filemanager/6874e6251f83d.jpg', 0, 0, 'ELIZABETH ARDEN ARDEN BEAUTY EDP 100ML', NULL, 'ELIZABETH ARDEN ARDEN BEAUTY EDP 100ML', NULL, 'ELIZABETH ARDEN ARDEN BEAUTY EDP 100ML', 1, '2025-07-14 10:58:05', '2025-07-14 11:13:00'),
(98, 'ELIZABETH ARDEN MY 5th AVENUE EDP 125 ML', 'elizabeth-arden-my-5th-avenue-edp-125-ml-', 12500, 12500, NULL, 42, NULL, NULL, 6, NULL, 'filemanager/686660ede0e5e.jpg', 'filemanager/686660ede0e5e.jpg', NULL, NULL, 0, 0, 'ELIZABETH ARDEN MY 5th AVENUE EDP 125 ML', NULL, 'ELIZABETH ARDEN MY 5th AVENUE EDP 125 ML', NULL, 'ELIZABETH ARDEN MY 5th AVENUE EDP 125 ML', 1, '2025-07-14 11:04:33', '2026-01-05 20:38:02'),
(99, 'ELIZABETH ARDEN PROVOCATIVE WOMEN EDT 100ML', 'elizabeth-arden-provocative-women-edt-100ml', 8000, 8000, NULL, 42, NULL, NULL, 6, NULL, 'filemanager/686660ede118a.jpg', '', NULL, 'filemanager/686660ede118a.jpg', 0, 0, 'ELIZABETH ARDEN PROVOCATIVE WOMEN EDT 100ML', NULL, 'ELIZABETH ARDEN PROVOCATIVE WOMEN EDT 100ML', NULL, 'ELIZABETH ARDEN PROVOCATIVE WOMEN EDT 100ML', 1, '2025-07-14 11:07:35', '2025-07-14 11:08:34'),
(100, 'ELIZABETH ARDEN RED DOOR EDT 100 ML', 'elizabeth-arden-red-door-edt-100-ml', 14500, 14500, NULL, 42, NULL, NULL, 6, NULL, 'filemanager/686660ede148b.jpg', 'filemanager/686660ede148b.jpg', NULL, 'filemanager/686660ede148b.jpg', 0, 0, 'ELIZABETH ARDEN RED DOOR EDT 100 ML', NULL, 'ELIZABETH ARDEN RED DOOR EDT 100 ML', NULL, 'ELIZABETH ARDEN RED DOOR EDT 100 ML', 1, '2025-07-14 12:06:45', '2026-01-05 20:37:09'),
(101, 'ELIZABETH ARDEN WHITE DIAMONDS EDT 100ML', 'elizabeth-arden-white-diamonds-edt-100ml-', 10000, 10000, NULL, 42, NULL, NULL, 6, NULL, 'filemanager/686660ede17e9.jpg', 'filemanager/686660ede17e9.jpg', NULL, 'filemanager/686660ede17e9.jpg', 0, 0, 'ELIZABETH ARDEN WHITE DIAMONDS EDT 100ML', NULL, 'ELIZABETH ARDEN WHITE DIAMONDS EDT 100ML', NULL, 'ELIZABETH ARDEN WHITE DIAMONDS EDT 100ML', 1, '2025-07-14 12:09:18', '2026-01-17 11:07:04'),
(102, 'ELIZABETH ARDEN WHITE TEA CLASSIC EDT 100ML', 'elizabeth-arden-white-tea-classic-edt-100ml', 10500, 10500, NULL, 42, NULL, NULL, 6, NULL, 'filemanager/686660ede1b32.jpg', 'filemanager/686660ede1b32.jpg', NULL, 'filemanager/686660ede1b32.jpg', 0, 0, 'ELIZABETH ARDEN WHITE TEA CLASSIC EDT 100ML', NULL, 'ELIZABETH ARDEN WHITE TEA CLASSIC EDT 100ML', NULL, 'ELIZABETH ARDEN WHITE TEA CLASSIC EDT 100ML', 1, '2025-07-14 12:11:25', '2025-07-14 12:12:46'),
(103, 'JOHN VARVATOS ARTISAN BLUE EDT 125ML', 'john-varvatos-artisan-blue-edt-125ml', 13250, 13250, NULL, 42, NULL, NULL, 8, NULL, 'filemanager/6866632e7387a.jpg', 'filemanager/6866632e7387a.jpg', NULL, 'filemanager/6866632e7387a.jpg', 0, 0, 'JOHN VARVATOS ARTISAN BLUE EDT 125ML', NULL, 'JOHN VARVATOS ARTISAN BLUE EDT 125ML', NULL, 'JOHN VARVATOS ARTISAN BLUE EDT 125ML', 1, '2025-07-14 12:15:09', '2026-01-05 20:35:31'),
(104, 'JOHN VARVATOS ARTISAN EDT SPRAY 125ML', 'john-varvatos-artisan-edt-spray-125ml-', 12500, 12500, NULL, 42, NULL, NULL, 8, NULL, 'filemanager/6866632e73d2e.jpg', 'filemanager/6866632e73d2e.jpg', NULL, 'filemanager/6866632e73d2e.jpg', 0, 0, 'JOHN VARVATOS ARTISAN EDT SPRAY 125ML', NULL, 'JOHN VARVATOS ARTISAN EDT SPRAY 125ML', NULL, 'JOHN VARVATOS ARTISAN EDT SPRAY 125ML', 1, '2025-07-14 12:19:03', '2025-07-14 12:20:20'),
(105, 'JOHN VARVATOS ARTISAN PURE EDT 125ML', 'john-varvatos-artisan-pure-edt-125ml', 13000, 13000, NULL, 42, NULL, NULL, 8, NULL, 'filemanager/6866632e740bd.jpg', 'filemanager/6866632e740bd.jpg', NULL, 'filemanager/6866632e740bd.jpg', 1, 0, 'JOHN VARVATOS ARTISAN PURE EDT 125ML', NULL, 'JOHN VARVATOS ARTISAN PURE EDT 125ML', NULL, 'JOHN VARVATOS ARTISAN PURE EDT 125ML', 1, '2025-07-14 12:20:51', '2025-07-14 12:27:13'),
(106, 'JOHN VARVATOS CLASSIC EDT 125ML', 'john-varvatos-classic-edt-125ml', 12500, 12500, NULL, 42, NULL, NULL, 8, NULL, 'filemanager/6866632e74398.jpg', 'filemanager/6866632e74398.jpg', NULL, 'filemanager/6866632e74398.jpg', 0, 0, 'JOHN VARVATOS CLASSIC EDT 125ML', NULL, 'JOHN VARVATOS CLASSIC EDT 125ML', NULL, 'JOHN VARVATOS CLASSIC EDT 125ML', 1, '2025-07-14 12:28:13', '2025-07-14 12:31:12'),
(107, 'JOHN VARVATOS JVXNJ BLUE LIMITED EDITION EDT 125ML', 'john-varvatos-jvxnj-blue-limited-edition-edt-125ml', 12500, 12500, NULL, 42, NULL, NULL, 8, NULL, 'filemanager/6866632e74668.jpg', 'filemanager/6866632e74668.jpg', NULL, 'filemanager/6866632e74668.jpg', 0, 0, 'JOHN VARVATOS JVXNJ BLUE LIMITED EDITION EDT 125ML', NULL, 'JOHN VARVATOS JVXNJ BLUE LIMITED EDITION EDT 125ML', NULL, 'JOHN VARVATOS JVXNJ BLUE LIMITED EDITION EDT 125ML', 1, '2025-07-14 12:32:33', '2025-07-14 12:33:46'),
(108, 'JOHN VARVATOS VINTAGE EDT 125ML', 'john-varvatos-vintage-edt-125ml', 13000, 13000, NULL, 42, NULL, NULL, 8, NULL, 'filemanager/6874ff9fe1da6.jpg', 'filemanager/6874ff9fe1da6.jpg', NULL, 'filemanager/6874ff9fe1da6.jpg', 0, 0, 'JOHN VARVATOS VINTAGE EDT 125ML', NULL, 'JOHN VARVATOS VINTAGE EDT 125ML', NULL, 'JOHN VARVATOS VINTAGE EDT 125ML', 1, '2025-07-14 12:34:58', '2025-07-14 13:02:01'),
(109, 'JOHN VARVATOS XX ARTISAN TEAL EDT 125ML', 'john-varvatos-xx-artisan-teal-edt-125ml', 13500, 13500, NULL, 42, NULL, NULL, 8, NULL, 'filemanager/6866677b556e5.jpg', 'filemanager/6866677b556e5.jpg', NULL, 'filemanager/6866677b556e5.jpg', 0, 0, 'JOHN VARVATOS XX ARTISAN TEAL EDT 125ML', NULL, 'JOHN VARVATOS XX ARTISAN TEAL EDT 125ML', NULL, 'JOHN VARVATOS XX ARTISAN TEAL EDT 125ML', 1, '2025-07-14 12:36:41', '2025-12-01 07:41:22'),
(110, 'COACH OPEN ROAD EDT 100ML', 'coach-open-road-edt-100ml-', 16500, 16500, NULL, 42, NULL, NULL, 5, NULL, 'filemanager/686780ad10027.jpg', 'filemanager/686780ad10027.jpg,filemanager/686780ad1102c.jpg', NULL, 'filemanager/686780ad1102c.jpg', 0, 0, 'COACH OPEN ROAD EDT 100ML', NULL, 'COACH OPEN ROAD EDT 100ML', NULL, 'COACH OPEN ROAD EDT 100ML', 1, '2025-07-29 10:27:58', '2025-07-29 10:29:52'),
(111, 'COACH WILD ROSE EDP 90 ML', 'coach-wild-rose-edp-90-ml-', 16500, 16500, NULL, 42, NULL, NULL, 5, NULL, 'filemanager/686780ad10c4f.jpg', 'filemanager/686780ad10c4f.jpg,filemanager/686780ad107ba.jpg', NULL, 'filemanager/686780ad107ba.jpg', 1, 0, 'COACH WILD ROSE EDP 90 ML', NULL, 'COACH WILD ROSE EDP 90 ML', NULL, 'COACH WILD ROSE EDP 90 ML', 1, '2025-07-29 10:31:04', '2025-07-29 10:33:32'),
(112, 'COACH FOR MEN EDT 100ML', 'coach-for-men-edt-100ml', 15500, 15500, NULL, 42, NULL, NULL, 5, NULL, 'filemanager/686780ad1165e.jpg', 'filemanager/686780ad1165e.jpg,filemanager/686780ad11389.jpg', NULL, 'filemanager/686780ad11389.jpg', 0, 0, 'COACH FOR MEN EDT 100ML', NULL, 'COACH FOR MEN EDT 100ML', NULL, 'COACH FOR MEN EDT 100ML', 1, '2025-07-29 10:34:36', '2025-07-29 10:36:50'),
(113, 'COACH GREEN EDT 100ML', 'coach-green-edt-100ml', 15500, 15500, NULL, 42, NULL, NULL, 5, NULL, 'filemanager/686780ad1199d.jpg', 'filemanager/686780ad1199d.jpg,filemanager/686780ad11da3.jpg', NULL, 'filemanager/686780ad11da3.jpg', 0, 0, 'COACH GREEN EDT 100ML', NULL, 'COACH GREEN EDT 100ML', NULL, 'COACH GREEN EDT 100ML', 1, '2025-07-29 10:38:47', '2025-09-20 11:58:38'),
(114, 'COACH DREAMS SUNSET WOMEN EDP 90 ML', 'coach-dreams-sunset-women-edp-90-ml-', 16500, 16500, NULL, 42, NULL, NULL, 5, NULL, 'filemanager/686780ad12c58.jpg', 'filemanager/686780ad12c58.jpg,filemanager/686780ad1267c.jpg,filemanager/686780ad121ab.jpg', NULL, 'filemanager/686780ad1267c.jpg', 0, 0, 'COACH DREAMS SUNSET WOMEN EDP 90 ML', NULL, 'COACH DREAMS SUNSET WOMEN EDP 90 ML', NULL, 'COACH DREAMS SUNSET WOMEN EDP 90 ML', 1, '2025-07-29 10:41:54', '2025-07-29 10:45:39'),
(115, 'COACH DREAMS WOMEN EDP 90 ML', 'coach-dreams-women-edp-90-ml', 16500, 16500, NULL, 42, NULL, NULL, 5, NULL, 'filemanager/686780ad1316c.jpg', 'filemanager/686780ad1316c.jpg,filemanager/686780ad13496.jpg', NULL, 'filemanager/686780ad13496.jpg', 0, 0, 'COACH DREAMS WOMEN EDP 90 ML', NULL, 'COACH DREAMS WOMEN EDP 90 ML', NULL, 'COACH DREAMS WOMEN EDP 90 ML', 1, '2025-07-29 10:49:38', '2025-07-29 10:51:17'),
(116, 'COACH FOR WOMEN EDP 90ML', 'coach-for-women-edp-90ml-', 16000, 16000, NULL, 42, NULL, NULL, 5, NULL, 'filemanager/68678991c2423.jpg', 'filemanager/68678991c2423.jpg,filemanager/68678991c1a47.jpg', NULL, 'filemanager/68678991c1a47.jpg', 0, 0, 'COACH FOR WOMEN EDP 90ML', NULL, 'COACH FOR WOMEN EDP 90ML', NULL, 'COACH FOR WOMEN EDP 90ML', 1, '2025-07-29 11:19:33', '2025-07-29 11:22:13'),
(117, 'COACH FLORAL EDP 90ML', 'coach-floral-edp-90ml', 15500, 15500, NULL, 42, NULL, NULL, 5, NULL, 'filemanager/68678991c364a.jpg', 'filemanager/68678991c364a.jpg,filemanager/68678991c1fe3.jpg', NULL, 'filemanager/68678991c1fe3.jpg', 0, 0, 'COACH FLORAL EDP 90ML', NULL, 'COACH FLORAL EDP 90ML', NULL, 'COACH FLORAL EDP 90ML', 1, '2025-07-29 11:22:44', '2025-07-29 11:25:15'),
(118, 'COACH FLORAL BLUSH EDP 90ML', 'coach-floral-blush-edp-90ml', 16000, 16000, NULL, 42, NULL, NULL, 5, NULL, 'filemanager/68678991c2d85.jpg', 'filemanager/68678991c2d85.jpg,filemanager/68678991c32fb.jpg', NULL, 'filemanager/68678991c32fb.jpg', 0, 0, 'COACH FLORAL BLUSH EDP 90ML', NULL, 'COACH FLORAL BLUSH EDP 90ML', NULL, 'COACH FLORAL BLUSH EDP 90ML', 1, '2025-07-29 11:34:17', '2025-07-29 11:56:04'),
(119, 'COACH PLATINUM MEN EDP 100ML', 'coach-platinum-men-edp-100ml', 15500, 15500, NULL, 42, NULL, NULL, 5, NULL, 'filemanager/68678991c0f1d.webp', 'filemanager/68678991c0f1d.webp,filemanager/68678991c15ce.webp', NULL, 'filemanager/68678991c15ce.webp', 0, 0, 'COACH PLATINUM EDP 100ML', NULL, 'COACH PLATINUM EDP 100ML', NULL, 'COACH PLATINUM EDP 100ML', 1, '2025-07-29 12:00:22', '2025-07-29 12:02:52'),
(120, 'COACH LOVE EDP 90ML', '-coach-love-edp-90ml-', 14500, 14500, NULL, 42, NULL, NULL, 5, NULL, 'filemanager/6888b9e60d83e.jpg', 'filemanager/6888b9e60d83e.jpg', NULL, 'filemanager/6888b9e60d83e.jpg', 0, 0, 'COACH LOVE EDP 90ML', NULL, 'COACH LOVE EDP 90ML', NULL, 'COACH LOVE EDP 90ML', 1, '2025-07-29 12:08:25', '2026-01-05 20:33:50'),
(121, 'COACH MAN BLUE EDT 100ML', 'coach-man-blue-edt-100ml', 14750, 14750, NULL, 42, NULL, NULL, 5, NULL, 'filemanager/6888bc6996eff.jpg', 'filemanager/6888bc6996eff.jpg,filemanager/6888be871ed78.jpg', NULL, 'filemanager/6888be871ed78.jpg', 0, 0, 'COACH MAN BLUE MEN EDT 100ML', NULL, 'COACH MAN BLUE MEN EDT 100ML', NULL, 'COACH MAN BLUE MEN EDT 100ML', 1, '2025-07-29 12:17:24', '2025-07-29 12:29:25'),
(122, 'Prada L’Homme EDT 100ML', 'prada-l-homme-edt-100ml', 32500, 32500, NULL, 42, NULL, NULL, 16, NULL, 'filemanager/68c2e43a99c79.jpg', 'filemanager/68c2e43a99c79.jpg,filemanager/68c2e43a9a4d6.jpg', NULL, 'filemanager/68c2e43a9a4d6.jpg', 1, 0, NULL, '<p><br data-mce-bogus=\"1\"></p>', 'Prada L’Homme EDT 100ML', NULL, 'Prada L’Homme EDT 100ML', 1, '2025-09-11 15:01:41', '2025-09-11 15:10:27'),
(123, 'RHYTHM OF OUD 75ML', 'rhythm-of-oud-75ml', 28500, 27075, NULL, 42, NULL, NULL, 4, NULL, 'filemanager/68ce95dd698da.jpg', 'filemanager/68ce95dd698da.jpg,filemanager/68ce95dd6a3f0.jpg', NULL, 'filemanager/68ce95dd6a3f0.jpg', 1, 0, 'RHYTHM OF OUD 75ML', NULL, 'RHYTHM OF OUD 75ML', NULL, 'RHYTHM OF OUD 75ML', 1, '2025-09-20 11:54:32', '2025-09-20 11:57:20'),
(124, 'KENNETH COLE COPPER BLACK MEN EDT 100ML', 'kenneth-cole-copper-black-men-edt-100ml', 11500, 11500, NULL, 42, NULL, NULL, 10, NULL, 'filemanager/68a057b67e4fc.jpg', 'filemanager/68a057b67e4fc.jpg', NULL, 'filemanager/68a057b67e4fc.jpg', 0, 0, 'KENNETH COLE COPPER BLACK MEN EDT 100ML', NULL, 'KENNETH COLE COPPER BLACK MEN EDT 100ML', NULL, 'KENNETH COLE COPPER BLACK MEN EDT 100ML', 1, '2025-09-20 12:05:27', '2025-09-20 12:06:21'),
(125, 'KENNETH COLE BLACK FOR HER EDP 100ML', 'kenneth-cole-black-for-her-edp-100ml-', 11000, NULL, NULL, 42, NULL, NULL, 10, NULL, 'filemanager/68a057b67eadd.jpg', 'filemanager/68a057b67eadd.jpg', NULL, 'filemanager/68a057b67eadd.jpg', 0, 0, 'KENNETH COLE BLACK FOR HER EDP 100ML', NULL, 'KENNETH COLE BLACK FOR HER EDP 100ML', NULL, 'KENNETH COLE BLACK FOR HER EDP 100ML', 1, '2025-09-20 12:07:03', '2025-09-20 12:10:24'),
(126, 'KENNETH COLE WHITE WOMEN EDP 100ML', 'kenneth-cole-white-women-edp-100ml-', 10750, 10750, NULL, 42, NULL, NULL, 10, NULL, 'filemanager/68a057b67edf0.jpg', 'filemanager/68a057b67edf0.jpg', NULL, 'filemanager/68a057b67edf0.jpg', 0, 0, 'KENNETH COLE WHITE WOMEN EDP 100ML', NULL, 'KENNETH COLE WHITE WOMEN EDP 100ML', NULL, 'KENNETH COLE WHITE WOMEN EDP 100ML', 1, '2025-09-20 12:13:32', '2025-09-20 12:15:16'),
(127, 'KENNETH COLE MANKIND LEGACY EDT 100ML', 'kenneth-cole-mankind-legacy-edt-100ml-', 10750, 10750, NULL, 42, NULL, NULL, 10, NULL, 'filemanager/68a057b67f0c2.jpg', 'filemanager/68a057b67f0c2.jpg', NULL, 'filemanager/68a057b67f0c2.jpg', 0, 0, 'KENNETH COLE MANKIND LEGACY EDT 100ML', NULL, 'KENNETH COLE MANKIND LEGACY EDT 100ML', NULL, 'KENNETH COLE MANKIND LEGACY EDT 100ML', 1, '2025-09-20 12:16:41', '2025-09-20 12:17:40'),
(128, 'KENNETH COLE MANKIND EDT 100ML', 'kenneth-cole-mankind-edt-100ml-', 11000, 11000, NULL, 42, NULL, NULL, 10, NULL, 'filemanager/68a057b67f379.jpg', 'filemanager/68a057b67f379.jpg', NULL, 'filemanager/68a057b67f379.jpg', 0, 0, 'KENNETH COLE MANKIND EDT 100ML', NULL, 'KENNETH COLE MANKIND EDT 100ML', NULL, 'KENNETH COLE MANKIND EDT 100ML', 1, '2025-09-20 12:18:53', '2025-09-20 12:20:07'),
(129, 'KENNETH COLE MANKIND UNLIMITED EDT 100ML', 'kenneth-cole-mankind-unlimited-edt-100ml-', 11000, 11000, NULL, 42, NULL, NULL, 10, NULL, 'filemanager/68a057b67f605.jpg', 'filemanager/68a057b67f605.jpg', NULL, 'filemanager/68a057b67f605.jpg', 0, 0, NULL, NULL, 'KENNETH COLE MANKIND UNLIMITED EDT 100ML', NULL, 'KENNETH COLE MANKIND UNLIMITED EDT 100ML', 1, '2025-09-20 12:21:03', '2025-09-20 12:24:24'),
(130, 'KENNETH COLE RSVP EDT 100ML', 'kenneth-cole-rsvp-edt-100ml-', 10650, 10650, NULL, 42, NULL, NULL, 10, NULL, 'filemanager/68a057b67f863.jpg', 'filemanager/68a057b67f863.jpg', NULL, 'filemanager/68a057b67f863.jpg', 0, 0, NULL, NULL, 'KENNETH COLE RSVP EDT 100ML', NULL, 'KENNETH COLE RSVP EDT 100ML', 1, '2025-09-20 12:25:31', '2025-09-20 12:27:00'),
(131, 'KENNETH COLE REACTION WOMEN EDP 100ML', 'kenneth-cole-reaction-women-edp-100ml-', 11000, 11000, NULL, 42, NULL, NULL, 10, NULL, 'filemanager/68a057b67faf1.jpg', 'filemanager/68a057b67faf1.jpg', NULL, 'filemanager/68a057b67faf1.jpg', 0, 0, 'KENNETH COLE REACTION WOMEN EDP 100ML', NULL, 'KENNETH COLE REACTION WOMEN EDP 100ML', NULL, 'KENNETH COLE REACTION WOMEN EDP 100ML', 1, '2025-09-20 12:30:11', '2025-09-20 12:30:47'),
(132, 'KENNETH COLE VINTAGE BLACK EDT 100ML', 'kenneth-cole-vintage-black-edt-100ml-', 11000, 11000, NULL, 42, NULL, NULL, 10, NULL, 'filemanager/68a05b053defd.jpg', 'filemanager/68a05b053defd.jpg', NULL, 'filemanager/68a05b053defd.jpg', 0, 0, 'KENNETH COLE VINTAGE BLACK EDT 100ML', NULL, 'KENNETH COLE VINTAGE BLACK EDT 100ML', NULL, 'KENNETH COLE VINTAGE BLACK EDT 100ML', 1, '2025-09-20 12:31:31', '2025-09-20 12:32:31'),
(133, 'KENNETH COLE BLACK BOLD EDP 100ML', 'kenneth-cole-black-bold-edp-100ml-', 12500, 12500, NULL, 42, NULL, NULL, 10, NULL, 'filemanager/68a05b323d8dd.jpg', 'filemanager/68a05b323d8dd.jpg', NULL, 'filemanager/68a05b323d8dd.jpg', 0, 0, 'KENNETH COLE BLACK BOLD EDP 100ML', NULL, 'KENNETH COLE BLACK BOLD EDP 100ML', NULL, 'KENNETH COLE BLACK BOLD EDP 100ML', 1, '2025-09-20 12:36:07', '2025-09-20 12:37:42'),
(134, 'KENNETH COLE BLUE EDT 100ML', 'kenneth-cole-blue-edt-100ml-', 11000, 11000, NULL, 42, NULL, NULL, 10, NULL, 'filemanager/68cea1265eb4c.jpg', 'filemanager/68cea1265eb4c.jpg', NULL, 'filemanager/68cea1265eb4c.jpg', 1, 0, 'KENNETH COLE BLUE EDT 100ML', NULL, 'KENNETH COLE BLUE EDT 100ML', NULL, 'KENNETH COLE BLUE EDT 100ML', 1, '2025-09-20 12:41:49', '2025-09-20 12:43:47'),
(135, 'MONT BLANC EXPLORER ULTRA BLUE EDP 100ML', 'mont-blanc-explorer-ultra-blue-edp-100ml-', 16500, 16500, NULL, 42, NULL, NULL, 12, NULL, 'filemanager/68cea49684d4b.jpg', 'filemanager/68cea49684d4b.jpg', NULL, 'filemanager/68cea49684d4b.jpg', 0, 0, 'MONT BLANC EXPLORER ULTRA BLUE EDP 100ML', NULL, 'MONT BLANC EXPLORER ULTRA BLUE EDP 100ML', NULL, 'MONT BLANC EXPLORER ULTRA BLUE EDP 100ML', 1, '2025-09-20 13:02:43', '2026-01-05 20:32:53'),
(136, 'MONT BLANC STARWALKER EDT 75ML', 'mont-blanc-starwalker-edt-75ml-', 13250, 13250, NULL, 42, NULL, NULL, 12, NULL, 'filemanager/68cea496846a3.jpg', 'filemanager/68cea496846a3.jpg', NULL, 'filemanager/68cea496846a3.jpg', 0, 0, 'MONT BLANC STARWALKER EDT 75ML', NULL, 'MONT BLANC STARWALKER EDT 75ML', NULL, 'MONT BLANC STARWALKER EDT 75ML', 1, '2025-09-20 13:04:29', '2025-12-29 18:20:12'),
(137, 'MONT BLANC SIGNATURE WOMEN EDP 90ML', 'mont-blanc-signature-women-edp-90ml-', 15500, 15500, NULL, 42, NULL, NULL, 12, NULL, 'filemanager/68cea496840a0.jpg', 'filemanager/68cea496840a0.jpg', NULL, 'filemanager/68cea496840a0.jpg', 0, 0, NULL, NULL, 'MONT BLANC SIGNATURE WOMEN EDP 90ML', NULL, 'MONT BLANC SIGNATURE WOMEN EDP 90ML', 1, '2025-09-20 13:06:29', '2026-01-05 20:31:45'),
(138, 'MONTBLANC EXPLORER PLATINUM EDP 100ML', 'montblanc-explorer-platinum-edp-100ml-', 15500, 15500, NULL, 42, NULL, NULL, 12, NULL, 'filemanager/68cea49683c53.jpg', 'filemanager/68cea49683c53.jpg', NULL, 'filemanager/68cea49683c53.jpg', 1, 0, NULL, NULL, 'MONTBLANC EXPLORER PLATINUM EDP 100ML', NULL, 'MONTBLANC EXPLORER PLATINUM EDP 100ML', 1, '2025-09-20 13:08:01', '2025-09-22 05:36:33'),
(139, 'MONT BLANC LEGEND SPIRIT EDT 100ML', 'mont-blanc-legend-spirit-edt-100ml', 13500, 13500, NULL, 42, NULL, NULL, 12, NULL, 'filemanager/68cea49683704.jpg', 'filemanager/68cea49683704.jpg', NULL, 'filemanager/68cea49683704.jpg', 0, 0, 'MONT BLANC LEGEND SPIRIT EDT 100ML', NULL, 'MONT BLANC LEGEND SPIRIT EDT 100ML', NULL, 'MONT BLANC LEGEND SPIRIT EDT 100ML', 1, '2025-09-20 13:11:29', '2025-09-20 13:13:21'),
(140, 'MONT BLANC LEGEND EDT 100ML', 'mont-blanc-legend-edt-100ml-', 15500, 15500, NULL, 42, NULL, NULL, 12, NULL, 'filemanager/68cea49683137.jpg', 'filemanager/68cea49683137.jpg', NULL, 'filemanager/68cea49683137.jpg', 0, 0, 'MONT BLANC LEGEND EDT 100ML', NULL, 'MONT BLANC LEGEND EDT 100ML', NULL, 'MONT BLANC LEGEND EDT 100ML', 1, '2025-09-20 13:13:36', '2026-01-05 20:30:34'),
(141, 'MONT BLANC LEGEND EDP 100ML', 'mont-blanc-legend-edp-100ml-', 16500, 16500, NULL, 42, NULL, NULL, 12, NULL, 'filemanager/68cea4968299f.jpg', 'filemanager/68cea4968299f.jpg', NULL, 'filemanager/68cea4968299f.jpg', 0, 0, 'MONT BLANC LEGEND EDP 100ML', NULL, 'MONT BLANC LEGEND EDP 100ML', NULL, 'MONT BLANC LEGEND EDP 100ML', 1, '2025-09-20 13:15:55', '2026-01-05 20:29:37'),
(142, 'TRUSSARDI DONNA EDT 100ML', 'trussardi-donna-edt-100ml-', 12000, 12000, NULL, 42, NULL, NULL, 14, NULL, 'filemanager/68d0e2151a4f8.jpg', 'filemanager/68d0e2151a4f8.jpg,filemanager/68d0e2151d094.jpg', NULL, 'filemanager/68d0e2151d094.jpg', 0, 0, 'TRUSSARDI DONNA EDT 100ML', NULL, 'TRUSSARDI DONNA EDT 100ML', NULL, 'TRUSSARDI DONNA EDT 100ML', 1, '2025-09-22 10:13:15', '2026-01-05 20:28:31'),
(143, 'TRUSSARDI BLACK EXTREME EDT 100ML', 'trussardi-black-extreme-edt-100ml-', 10500, 10500, NULL, 42, NULL, NULL, 14, NULL, 'filemanager/68d0e2151b323.jpg', 'filemanager/68d0e2151b323.jpg,filemanager/68d0e2151ac7b.jpg', NULL, 'filemanager/68d0e2151ac7b.jpg', 0, 0, 'TRUSSARDI BLACK EXTREME EDT 100ML', NULL, 'TRUSSARDI BLACK EXTREME EDT 100ML', NULL, 'TRUSSARDI BLACK EXTREME EDT 100ML', 1, '2025-09-22 10:17:16', '2025-09-22 10:28:16'),
(144, 'TRUSSARDI DELICATE ROSE EDT 100ML', 'trussardi-delicate-rose-edt-100ml-', 13500, 13500, NULL, 42, NULL, NULL, 14, NULL, 'filemanager/68d0e2151ba08.jpg', 'filemanager/68d0e2151ba08.jpg,filemanager/68d0e2151c07e.jpg', NULL, 'filemanager/68d0e2151c07e.jpg', 1, 0, 'TRUSSARDI DELICATE ROSE EDT 100ML', NULL, 'TRUSSARDI DELICATE ROSE EDT 100ML', NULL, 'TRUSSARDI DELICATE ROSE EDT 100ML', 1, '2025-09-22 10:20:02', '2025-09-22 10:21:59'),
(145, 'TRUSSARDI DONNA EDP 100ML', 'trussardi-donna-edp-100ml-', 14600, 14600, NULL, 42, NULL, NULL, 14, NULL, 'filemanager/68d0e2151cb19.jpg', 'filemanager/68d0e2151cb19.jpg,filemanager/68d0e2151c65e.jpg', NULL, 'filemanager/68d0e2151c65e.jpg', 0, 0, 'TRUSSARDI DONNA EDP 100ML', NULL, 'TRUSSARDI DONNA EDP 100ML', NULL, 'TRUSSARDI DONNA EDP 100ML', 1, '2025-09-22 10:22:13', '2026-01-06 12:29:03'),
(146, 'TRUSSARDI PURE JASMINE EDP 90ML', 'trussardi-pure-jasmine-edp-90ml', 13500, 13500, NULL, 42, NULL, NULL, 14, NULL, 'filemanager/68d0e2151dbcb.jpg', 'filemanager/68d0e2151d5e8.jpg,filemanager/68d0e2151dbcb.jpg', NULL, 'filemanager/68d0e2151d5e8.jpg', 0, 0, 'TRUSSARDI PURE JASMINE EDP 90ML', NULL, 'TRUSSARDI PURE JASMINE EDP 90ML', NULL, 'TRUSSARDI PURE JASMINE EDP 90ML', 1, '2025-09-22 10:28:46', '2025-09-22 10:30:26');
INSERT INTO `products` (`id`, `title`, `slug`, `price`, `selling_price`, `sku`, `category_id`, `subcategory_id`, `subchildcategory_id`, `brand_id`, `tags`, `image`, `images`, `type`, `hover_image`, `is_featured`, `is_popular`, `details`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `is_enable`, `created_at`, `updated_at`) VALUES
(147, 'TRUSSARDI BLUE LAND EDT 100ML', 'trussardi-blue-land-edt-100ml-', 12500, 12500, NULL, 42, NULL, NULL, 14, NULL, 'filemanager/68d101dbcc41c.jpg', 'filemanager/68d101dbcc41c.jpg', NULL, 'filemanager/68d101dbcc41c.jpg', 0, 0, 'TRUSSARDI BLUE LAND EDT 100ML', NULL, 'TRUSSARDI BLUE LAND EDT 100ML', NULL, 'TRUSSARDI BLUE LAND EDT 100ML', 1, '2025-09-22 10:30:57', '2026-01-05 20:26:20'),
(148, 'TRUSSARDI BLACK ROSE EDT 100ML', 'trussardi-black-rose-edt-100ml', 13500, 13500, NULL, 42, NULL, NULL, 14, NULL, 'filemanager/68d12b6486f0f.jpg', 'filemanager/68d12b6486f0f.jpg', NULL, 'filemanager/68d12b6486f0f.jpg', 0, 0, 'TRUSSARDI BLACK ROSE EDT 100ML', NULL, 'TRUSSARDI BLACK ROSE EDT 100ML', NULL, 'TRUSSARDI BLACK ROSE EDT 100ML', 1, '2025-09-22 10:56:57', '2026-01-05 20:25:38'),
(149, 'TRUSSARDI UOMO THE RED EDT 100ML', 'trussardi-uomo-the-red-edt-100ml-', 13500, 13500, NULL, 42, NULL, NULL, 14, NULL, 'filemanager/68d12b45c98a4.jpg', 'filemanager/68d12b45c98a4.jpg', NULL, 'filemanager/68d12b45c98a4.jpg', 0, 0, 'TRUSSARDI UOMO THE RED EDT 100ML', NULL, 'TRUSSARDI UOMO THE RED EDT 100ML', NULL, 'TRUSSARDI UOMO THE RED EDT 100ML', 1, '2025-09-22 10:59:37', '2026-01-05 18:13:13'),
(150, 'VICTORINOX SWISS ARMY ALTITUDE	EDT 100ML', 'victorinox-swiss-army-altitude-edt-100ml', 9500, 9500, NULL, 42, NULL, NULL, 15, NULL, 'filemanager/68d39cfe70589.jpg', 'filemanager/68d39cfe70589.jpg,filemanager/68d39d0431646.jpg', NULL, 'filemanager/68d39d0431646.jpg', 0, 0, 'VICTORINOX SWISS ARMY ALTITUDE	EDT 100ML', NULL, 'VICTORINOX SWISS ARMY ALTITUDE	EDT 100ML', NULL, 'VICTORINOX SWISS ARMY ALTITUDE	EDT 100ML', 1, '2025-09-24 10:29:06', '2025-09-24 10:31:40'),
(151, 'VICTORINOX (SWISS ARMY) STEEL EDT 100ML', 'victorinox-swiss-army-steel-edt-100ml', 9500, 9500, NULL, 42, NULL, NULL, 15, NULL, 'filemanager/68d39ce2978c6.jpg', 'filemanager/68d39ce2978c6.jpg', NULL, 'filemanager/68d39ce2978c6.jpg', 0, 0, 'VICTORINOX (SWISS ARMY) STEEL EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) STEEL EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) STEEL EDT 100ML', 1, '2025-09-24 10:34:53', '2025-09-24 10:37:31'),
(152, 'VICTORINOX (SWISS ARMY) SPORTS EDT 100ML', 'victorinox-swiss-army-sports-edt-100ml', 9500, 9500, NULL, 42, NULL, NULL, 15, NULL, 'filemanager/68d39cc3ed4d6.jpg', 'filemanager/68d39cc3ed4d6.jpg,filemanager/68d39ccbdde4d.jpg', NULL, 'filemanager/68d39ccbdde4d.jpg', 0, 0, 'VICTORINOX (SWISS ARMY) MORNING DEW EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) SPORTS EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) SPORTS EDT 100ML', 1, '2025-09-24 10:39:01', '2025-09-24 10:49:07'),
(153, 'VICTORINOX (SWISS ARMY) MORNING DEW EDT 100ML', 'victorinox-swiss-army-morning-dew-edt-100ml', 9500, 9500, NULL, 42, NULL, NULL, 15, NULL, 'filemanager/68d39c9104c02.jpg', 'filemanager/68d39c9104c02.jpg,filemanager/68d39c89f223e.jpg', NULL, 'filemanager/68d39c89f223e.jpg', 0, 0, 'VICTORINOX (SWISS ARMY) MORNING DEW EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) MORNING DEW EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) MORNING DEW EDT 100ML', 1, '2025-09-24 10:42:40', '2025-09-24 10:44:58'),
(154, 'VICTORINOX (SWISS ARMY) GENEPI	EDT 100ML', 'victorinox-swiss-army-genepi-edt-100ml', 9500, 9500, NULL, 42, NULL, NULL, 15, NULL, 'filemanager/68d3ce5cf39ad.jpg', 'filemanager/68d38ba063b0b.jpg,filemanager/68d3ce5cf39ad.jpg', NULL, 'filemanager/68d38ba063b0b.jpg', 0, 0, 'VICTORINOX (SWISS ARMY) GENEPI	EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) GENEPI	EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) GENEPI	EDT 100ML', 1, '2025-09-24 10:49:29', '2025-09-24 10:57:04'),
(155, 'VICTORINOX (SWISS ARMY) FOR HER EDT 100ML', 'victorinox-swiss-army-for-her-edt-100ml', 10500, 10500, NULL, 42, NULL, NULL, 15, NULL, 'filemanager/68d38b6aef1bb.jpg', 'filemanager/68d38b6aef1bb.jpg', NULL, 'filemanager/68d38b6aef1bb.jpg', 0, 0, 'VICTORINOX (SWISS ARMY) FOR HER EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) FOR HER EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) FOR HER EDT 100ML', 1, '2025-09-24 10:58:14', '2025-09-24 11:00:01'),
(156, 'VICTORINOX (SWISS ARMY) FOR HER FLORAL	EDT 100ML', 'victorinox-swiss-army-for-her-floral-edt-100ml', 11500, 11500, NULL, 42, NULL, NULL, 15, NULL, 'filemanager/68d38b3837871.jpg', 'filemanager/68d38b3837871.jpg,filemanager/68d38b5e468f8.jpg', NULL, 'filemanager/68d38b5e468f8.jpg', 0, 0, 'VICTORINOX (SWISS ARMY) FOR HER FLORAL	EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) FOR HER FLORAL	EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) FOR HER FLORAL	EDT 100ML', 1, '2025-09-24 11:00:38', '2025-09-24 11:02:25'),
(157, 'VICTORINOX (SWISS ARMY) CLASSIC EDT 100ML', 'victorinox-swiss-army-classic-edt-100ml', 10500, 10500, NULL, 42, NULL, NULL, 15, NULL, 'filemanager/68d38af94c5ac.jpg', 'filemanager/68d38af94c5ac.jpg', NULL, 'filemanager/68d38af94c5ac.jpg', 0, 0, 'VICTORINOX (SWISS ARMY) CLASSIC EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) CLASSIC EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) CLASSIC EDT 100ML', 1, '2025-09-24 11:03:06', '2025-09-24 11:05:23'),
(158, 'VICTORINOX (SWISS ARMY) BLACK STEEL EDT 100ML', 'victorinox-swiss-army-black-steel-edt-100ml', 9500, 9500, NULL, 42, NULL, NULL, 15, NULL, 'filemanager/68d38adca4aae.jpg', 'filemanager/68d38adca4aae.jpg,filemanager/68d38ae080577.jpg', NULL, 'filemanager/68d38ae080577.jpg', 0, 0, 'VICTORINOX (SWISS ARMY) BLACK STEEL EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) BLACK STEEL EDT 100ML', NULL, 'VICTORINOX (SWISS ARMY) BLACK STEEL EDT 100ML', 1, '2025-09-24 11:05:58', '2025-09-24 11:07:08'),
(159, 'INSPIRED FROM OFFICE FOR MEN 50ML', 'inspired-from-office-for-men-50ml', 4400, 4400, NULL, 46, NULL, NULL, 17, NULL, 'filemanager/692d6253d3352.png', 'filemanager/692d6253d3352.png', NULL, 'filemanager/692d6253d3352.png', 1, 0, NULL, NULL, 'INSPIRED FROM OFFICE FOR MEN 50ML', NULL, 'INSPIRED FROM OFFICE FOR MEN 50ML', 1, '2025-11-28 07:05:07', '2026-01-14 10:32:27'),
(160, 'INSPIRED FROM CREED AVENTUS 50ML', 'inspired-from-creed-aventus-50ml', 3250, 3250, NULL, 46, NULL, NULL, 17, NULL, 'filemanager/692d82f3a8eb1.png', 'filemanager/692d82f3a8eb1.png', NULL, 'filemanager/692d82f3a8eb1.png', 0, 0, NULL, NULL, 'INSPIRED FROM CREED AVENTUS 50ML', NULL, 'INSPIRED FROM CREED AVENTUS 50ML', 1, '2025-12-01 11:39:07', '2026-01-01 10:58:27'),
(161, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', 'impression-inspired-from-versace-pour-homme', 2150, 2150, NULL, 46, NULL, NULL, 17, NULL, 'filemanager/6930251508e91.png', 'filemanager/6930251508e91.png', NULL, 'filemanager/6930251508e91.png', 0, 0, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', NULL, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', NULL, 'IMPRESSION INSPIRED FROM VERSACE POUR HOMME', 1, '2025-12-03 11:55:48', '2025-12-04 12:16:54'),
(162, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', 'impression-inspired-from-issey-miyake-', 1950, 1950, NULL, 46, NULL, NULL, 17, NULL, 'filemanager/69294bf377d5c.png', 'filemanager/69294bf377d5c.png', NULL, 'filemanager/69294bf377d5c.png', 0, 0, NULL, NULL, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', NULL, 'IMPRESSION INSPIRED FROM ISSEY MIYAKE', 1, '2025-12-04 12:09:13', '2026-01-18 19:01:11'),
(163, 'IMPRESSION INSPIRED FROM RASSASI HAWAS', 'impression-inspired-from-rassasi-hawas', 2700, 2700, NULL, 46, NULL, NULL, 17, NULL, 'filemanager/69294bf377d5c.png', 'filemanager/69294bf377d5c.png', NULL, 'filemanager/69294bf377d5c.png', 0, 0, NULL, NULL, 'IMPRESSION INSPIRED FROM RASSASI HAWAS', NULL, 'IMPRESSION INSPIRED FROM RASSASI HAWAS', 1, '2025-12-22 06:42:03', '2026-01-06 19:00:41'),
(164, 'CREED AVENTUS FOR MEN EDP 100 ML', 'creed-aventus-for-men-edp-100-ml', 105000, 105000, NULL, 48, NULL, NULL, 18, NULL, 'filemanager/694f8f579ae8d.webp', 'filemanager/694f8f579ae8d.webp', NULL, 'filemanager/694f8f579ae8d.webp', 1, 0, 'CREED AVENTUS FOR MEN EDP 100 ML', NULL, 'CREED AVENTUS FOR MEN EDP 100 ML', NULL, 'CREED AVENTUS FOR MEN EDP 100 ML', 1, '2025-12-27 08:43:19', '2025-12-27 08:46:45'),
(165, 'CHANEL COCO MADEMOISELLE EDP 100 ML', 'chanel-coco-mademoiselle-edp-100-ml', 64750, 64750, NULL, 48, NULL, NULL, 18, NULL, 'filemanager/694f8f579b577.webp', 'filemanager/694f8f579b577.webp', NULL, 'filemanager/694f8f579b577.webp', 1, 0, 'CHANEL COCO MADEMOISELLE EDP 100 ML', NULL, 'CHANEL COCO MADEMOISELLE EDP 100 ML', NULL, 'CHANEL COCO MADEMOISELLE EDP 100 ML', 1, '2025-12-27 08:49:07', '2025-12-27 08:51:06'),
(166, 'BLEU DE CHANEL EDP 150ML', 'bleu-de-chanel-edp-150ml', 59750, 59750, NULL, 48, NULL, NULL, 18, NULL, 'filemanager/694f8f579c0b8.webp', 'filemanager/694f8f579c0b8.webp', NULL, 'filemanager/694f8f579c0b8.webp', 0, 0, NULL, NULL, 'BLEU DE CHANEL EDP 150ML', NULL, 'BLEU DE CHANEL EDP 150ML', 1, '2025-12-30 17:19:52', '2025-12-30 17:23:34'),
(167, 'BLEU DE CHANEL EDP 100ML', 'bleu-de-chanel-edp-100ml', 38250, 38250, NULL, 48, NULL, NULL, 18, NULL, 'filemanager/694f8f579b9fd.webp', 'filemanager/694f8f579b9fd.webp', NULL, 'filemanager/694f8f579b9fd.webp', 0, 0, NULL, NULL, 'BLEU DE CHANEL EDP 100ML', NULL, 'BLEU DE CHANEL EDP 100ML', 1, '2026-01-06 12:22:48', '2026-01-06 12:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_collections`
--

CREATE TABLE `product_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `collection_id` bigint(20) UNSIGNED NOT NULL,
  `is_enable` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_collections`
--

INSERT INTO `product_collections` (`id`, `product_id`, `collection_id`, `is_enable`, `created_at`, `updated_at`) VALUES
(155, 65, 7, 1, '2025-06-16 12:57:24', '2025-06-16 12:57:24'),
(164, 61, 1, 1, '2025-06-16 19:19:13', '2025-06-16 19:19:13'),
(167, 60, 2, 1, '2025-06-16 19:23:28', '2025-06-16 19:23:28'),
(170, 58, 1, 1, '2025-06-16 19:33:58', '2025-06-16 19:33:58'),
(182, 46, 7, 1, '2025-06-16 19:56:12', '2025-06-16 19:56:12'),
(186, 57, 2, 1, '2025-06-16 20:07:12', '2025-06-16 20:07:12'),
(190, 55, 7, 1, '2025-06-16 20:11:58', '2025-06-16 20:11:58'),
(194, 53, 2, 1, '2025-06-16 20:18:59', '2025-06-16 20:18:59'),
(195, 45, 1, 1, '2025-06-16 20:20:49', '2025-06-16 20:20:49'),
(197, 44, 7, 1, '2025-06-16 20:23:15', '2025-06-16 20:23:15'),
(198, 43, 7, 1, '2025-06-16 20:25:54', '2025-06-16 20:25:54'),
(200, 42, 1, 1, '2025-06-16 20:28:42', '2025-06-16 20:28:42'),
(201, 41, 1, 1, '2025-06-16 20:30:53', '2025-06-16 20:30:53'),
(202, 40, 1, 1, '2025-06-16 20:33:14', '2025-06-16 20:33:14'),
(204, 39, 7, 1, '2025-06-17 04:51:46', '2025-06-17 04:51:46'),
(206, 38, 1, 1, '2025-06-17 05:15:45', '2025-06-17 05:15:45'),
(208, 37, 7, 1, '2025-06-17 05:19:27', '2025-06-17 05:19:27'),
(209, 36, 2, 1, '2025-06-17 05:20:56', '2025-06-17 05:20:56'),
(210, 35, 7, 1, '2025-06-17 05:31:49', '2025-06-17 05:31:49'),
(214, 33, 7, 1, '2025-06-17 05:44:43', '2025-06-17 05:44:43'),
(217, 31, 1, 1, '2025-06-17 05:55:10', '2025-06-17 05:55:10'),
(219, 51, 2, 1, '2025-06-17 06:00:56', '2025-06-17 06:00:56'),
(220, 54, 2, 1, '2025-06-17 06:02:26', '2025-06-17 06:02:26'),
(221, 30, 1, 1, '2025-06-17 07:02:39', '2025-06-17 07:02:39'),
(222, 29, 2, 1, '2025-06-17 07:23:34', '2025-06-17 07:23:34'),
(229, 28, 2, 1, '2025-06-17 18:25:05', '2025-06-17 18:25:05'),
(233, 25, 1, 1, '2025-06-18 04:43:58', '2025-06-18 04:43:58'),
(236, 23, 7, 1, '2025-06-18 05:08:27', '2025-06-18 05:08:27'),
(237, 22, 7, 1, '2025-06-18 06:21:21', '2025-06-18 06:21:21'),
(238, 21, 7, 1, '2025-06-18 06:23:07', '2025-06-18 06:23:07'),
(243, 70, 2, 1, '2025-06-25 12:17:55', '2025-06-25 12:17:55'),
(258, 74, 2, 1, '2025-06-25 12:38:39', '2025-06-25 12:38:39'),
(260, 75, 2, 1, '2025-06-25 12:40:57', '2025-06-25 12:40:57'),
(261, 76, 2, 1, '2025-06-25 12:46:00', '2025-06-25 12:46:00'),
(263, 77, 1, 1, '2025-06-25 12:50:28', '2025-06-25 12:50:28'),
(267, 78, 1, 1, '2025-06-25 12:56:05', '2025-06-25 12:56:05'),
(270, 71, 1, 1, '2025-06-25 12:58:52', '2025-06-25 12:58:52'),
(279, 79, 1, 1, '2025-06-25 13:26:18', '2025-06-25 13:26:18'),
(285, 82, 1, 1, '2025-06-25 13:33:03', '2025-06-25 13:33:03'),
(286, 80, 2, 1, '2025-06-25 13:40:02', '2025-06-25 13:40:02'),
(289, 64, 1, 1, '2025-06-25 13:46:32', '2025-06-25 13:46:32'),
(290, 66, 7, 1, '2025-06-26 06:07:41', '2025-06-26 06:07:41'),
(296, 85, 2, 1, '2025-06-26 12:01:23', '2025-06-26 12:01:23'),
(304, 86, 2, 1, '2025-06-26 13:06:19', '2025-06-26 13:06:19'),
(306, 89, 2, 1, '2025-06-26 13:10:42', '2025-06-26 13:10:42'),
(309, 90, 2, 1, '2025-06-26 13:14:31', '2025-06-26 13:14:31'),
(319, 93, 2, 1, '2025-06-27 07:43:15', '2025-06-27 07:43:15'),
(322, 94, 2, 1, '2025-07-14 10:44:10', '2025-07-14 10:44:10'),
(324, 88, 2, 1, '2025-07-14 10:45:49', '2025-07-14 10:45:49'),
(325, 84, 2, 1, '2025-07-14 10:47:15', '2025-07-14 10:47:15'),
(333, 99, 2, 1, '2025-07-14 11:08:34', '2025-07-14 11:08:34'),
(335, 97, 2, 1, '2025-07-14 11:18:16', '2025-07-14 11:18:16'),
(338, 95, 2, 1, '2025-07-14 11:38:42', '2025-07-14 11:38:42'),
(347, 102, 2, 1, '2025-07-14 12:13:56', '2025-07-14 12:13:56'),
(351, 104, 1, 1, '2025-07-14 12:20:20', '2025-07-14 12:20:20'),
(355, 106, 1, 1, '2025-07-14 12:31:12', '2025-07-14 12:31:12'),
(357, 107, 1, 1, '2025-07-14 12:33:46', '2025-07-14 12:33:46'),
(367, 108, 1, 1, '2025-07-14 13:02:05', '2025-07-14 13:02:05'),
(370, 110, 1, 1, '2025-07-29 10:30:35', '2025-07-29 10:30:35'),
(379, 111, 2, 1, '2025-07-29 10:33:43', '2025-07-29 10:33:43'),
(381, 112, 1, 1, '2025-07-29 10:36:50', '2025-07-29 10:36:50'),
(385, 114, 2, 1, '2025-07-29 10:45:39', '2025-07-29 10:45:39'),
(387, 116, 2, 1, '2025-07-29 11:22:13', '2025-07-29 11:22:13'),
(389, 117, 2, 1, '2025-07-29 11:25:15', '2025-07-29 11:25:15'),
(392, 118, 2, 1, '2025-07-29 11:56:24', '2025-07-29 11:56:24'),
(395, 119, 1, 1, '2025-07-29 12:08:03', '2025-07-29 12:08:03'),
(398, 121, 1, 1, '2025-07-29 12:29:25', '2025-07-29 12:29:25'),
(403, 122, 1, 1, '2025-09-11 15:10:27', '2025-09-11 15:10:27'),
(405, 123, 7, 1, '2025-09-20 11:57:20', '2025-09-20 11:57:20'),
(406, 113, 1, 1, '2025-09-20 11:58:38', '2025-09-20 11:58:38'),
(410, 124, 1, 1, '2025-09-20 12:09:58', '2025-09-20 12:09:58'),
(411, 125, 2, 1, '2025-09-20 12:10:24', '2025-09-20 12:10:24'),
(413, 126, 2, 1, '2025-09-20 12:15:16', '2025-09-20 12:15:16'),
(415, 127, 1, 1, '2025-09-20 12:18:30', '2025-09-20 12:18:30'),
(417, 128, 1, 1, '2025-09-20 12:20:07', '2025-09-20 12:20:07'),
(420, 129, 7, 1, '2025-09-20 12:24:48', '2025-09-20 12:24:48'),
(422, 130, 1, 1, '2025-09-20 12:27:00', '2025-09-20 12:27:00'),
(424, 131, 2, 1, '2025-09-20 12:31:08', '2025-09-20 12:31:08'),
(426, 132, 1, 1, '2025-09-20 12:32:31', '2025-09-20 12:32:31'),
(428, 133, 1, 1, '2025-09-20 12:37:42', '2025-09-20 12:37:42'),
(431, 134, 1, 1, '2025-09-20 12:58:59', '2025-09-20 12:58:59'),
(443, 139, 1, 1, '2025-09-20 13:13:21', '2025-09-20 13:13:21'),
(449, 138, 1, 1, '2025-09-22 05:36:33', '2025-09-22 05:36:33'),
(454, 144, 2, 1, '2025-09-22 10:21:59', '2025-09-22 10:21:59'),
(459, 143, 1, 1, '2025-09-22 10:28:16', '2025-09-22 10:28:16'),
(461, 146, 2, 1, '2025-09-22 10:30:26', '2025-09-22 10:30:26'),
(467, 73, 2, 1, '2025-09-23 05:18:54', '2025-09-23 05:18:54'),
(468, 72, 2, 1, '2025-09-23 05:22:10', '2025-09-23 05:22:10'),
(471, 150, 1, 1, '2025-09-24 10:31:40', '2025-09-24 10:31:40'),
(474, 151, 1, 1, '2025-09-24 10:37:31', '2025-09-24 10:37:31'),
(478, 153, 1, 1, '2025-09-24 10:44:58', '2025-09-24 10:44:58'),
(480, 152, 1, 1, '2025-09-24 10:49:07', '2025-09-24 10:49:07'),
(487, 155, 2, 1, '2025-09-24 11:00:01', '2025-09-24 11:00:01'),
(489, 156, 2, 1, '2025-09-24 11:02:25', '2025-09-24 11:02:25'),
(491, 157, 1, 1, '2025-09-24 11:05:23', '2025-09-24 11:05:23'),
(500, 109, 1, 1, '2025-12-01 07:41:22', '2025-12-01 07:41:22'),
(519, 161, 1, 1, '2025-12-04 12:16:54', '2025-12-04 12:16:54'),
(529, 158, 1, 1, '2025-12-08 07:32:07', '2025-12-08 07:32:07'),
(530, 154, 1, 1, '2025-12-08 07:33:27', '2025-12-08 07:33:27'),
(532, 115, 2, 1, '2025-12-08 07:34:35', '2025-12-08 07:34:35'),
(534, 62, 1, 1, '2025-12-08 07:38:32', '2025-12-08 07:38:32'),
(535, 87, 2, 1, '2025-12-08 09:07:23', '2025-12-08 09:07:23'),
(537, 27, 2, 1, '2025-12-09 19:43:00', '2025-12-09 19:43:00'),
(539, 50, 2, 1, '2025-12-10 18:20:05', '2025-12-10 18:20:05'),
(540, 63, 7, 1, '2025-12-10 18:24:44', '2025-12-10 18:24:44'),
(541, 24, 2, 1, '2025-12-12 14:43:10', '2025-12-12 14:43:10'),
(545, 105, 1, 1, '2025-12-19 07:44:38', '2025-12-19 07:44:38'),
(546, 52, 7, 1, '2025-12-20 07:14:00', '2025-12-20 07:14:00'),
(550, 56, 7, 1, '2025-12-23 07:05:23', '2025-12-23 07:05:23'),
(551, 26, 7, 1, '2025-12-23 10:20:49', '2025-12-23 10:20:49'),
(555, 164, 1, 1, '2025-12-27 08:48:26', '2025-12-27 08:48:26'),
(559, 136, 1, 1, '2025-12-29 18:20:12', '2025-12-29 18:20:12'),
(561, 166, 1, 1, '2025-12-30 17:23:34', '2025-12-30 17:23:34'),
(562, 160, 1, 1, '2026-01-01 10:58:27', '2026-01-01 10:58:27'),
(563, 48, 1, 1, '2026-01-01 12:07:43', '2026-01-01 12:07:43'),
(564, 67, 7, 1, '2026-01-03 06:49:56', '2026-01-03 06:49:56'),
(567, 148, 2, 1, '2026-01-05 20:25:38', '2026-01-05 20:25:38'),
(568, 147, 7, 1, '2026-01-05 20:26:20', '2026-01-05 20:26:20'),
(570, 142, 1, 1, '2026-01-05 20:28:31', '2026-01-05 20:28:31'),
(571, 141, 7, 1, '2026-01-05 20:29:37', '2026-01-05 20:29:37'),
(572, 140, 1, 1, '2026-01-05 20:30:34', '2026-01-05 20:30:34'),
(573, 137, 2, 1, '2026-01-05 20:31:45', '2026-01-05 20:31:45'),
(574, 135, 1, 1, '2026-01-05 20:32:53', '2026-01-05 20:32:53'),
(575, 120, 2, 1, '2026-01-05 20:33:50', '2026-01-05 20:33:50'),
(576, 103, 1, 1, '2026-01-05 20:35:31', '2026-01-05 20:35:31'),
(577, 100, 2, 1, '2026-01-05 20:37:09', '2026-01-05 20:37:09'),
(580, 167, 1, 1, '2026-01-06 12:24:10', '2026-01-06 12:24:10'),
(581, 145, 2, 1, '2026-01-06 12:29:03', '2026-01-06 12:29:03'),
(582, 163, 7, 1, '2026-01-06 19:00:41', '2026-01-06 19:00:41'),
(583, 34, 1, 1, '2026-01-13 08:35:04', '2026-01-13 08:35:04'),
(584, 159, 7, 1, '2026-01-14 10:32:27', '2026-01-14 10:32:27'),
(585, 91, 2, 1, '2026-01-14 10:37:43', '2026-01-14 10:37:43'),
(586, 101, 2, 1, '2026-01-17 11:07:04', '2026-01-17 11:07:04'),
(587, 165, 2, 1, '2026-01-17 12:19:35', '2026-01-17 12:19:35'),
(589, 149, 2, 1, '2026-01-17 12:21:01', '2026-01-17 12:21:01'),
(590, 32, 1, 1, '2026-01-17 12:33:40', '2026-01-17 12:33:40'),
(591, 162, 1, 1, '2026-01-18 19:01:11', '2026-01-18 19:01:11'),
(592, 59, 2, 1, '2026-01-19 08:19:36', '2026-01-19 08:19:36'),
(593, 49, 7, 1, '2026-01-20 07:23:47', '2026-01-20 07:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Admin', 1, '2024-01-27 19:11:35', '2024-01-27 14:45:22', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field` text NOT NULL,
  `value` text DEFAULT NULL,
  `type` text NOT NULL DEFAULT 'text',
  `sort` int(11) NOT NULL DEFAULT 0,
  `grouping` text DEFAULT NULL,
  `section_sorting` int(11) NOT NULL DEFAULT 0,
  `group_sorting` int(11) NOT NULL DEFAULT 0,
  `section` text NOT NULL DEFAULT 'others',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `field`, `value`, `type`, `sort`, `grouping`, `section_sorting`, `group_sorting`, `section`, `created_at`, `updated_at`) VALUES
(1, 'site_title', 'The Rare Perfumes', 'text', 1, 'general', 0, 0, 'others', NULL, NULL),
(2, 'meta_title', 'Therareperfumes', 'text', 2, 'seo', 0, 0, 'seo', NULL, NULL),
(3, 'meta_description', 'Therareperfumes is fully customizable and appearing to your customers in accordance with what they need and what they search', 'text', 3, 'seo', 0, 0, 'seo', NULL, NULL),
(4, 'meta_keywords', 'Therareperfumes is fully customizable and appearing to your customers in accordance with what they need and what they search', 'text', 4, 'seo', 0, 0, 'seo', NULL, NULL),
(5, 'footer_credits', 'Copyright: 2024 <a href=\"#.\"><span class=\"color_red\">therareperfumes</span></a>', 'text', 5, 'theme', 3, 0, 'footer', NULL, NULL),
(6, 'phone_number', '+923333462172', 'text', 5, 'general', 0, 0, 'others', NULL, NULL),
(7, 'email_address', 'support@therareperfumes.online', 'text', 4, 'general', 0, 0, 'others', NULL, NULL),
(8, 'address', 'Pakistan', 'text', 4, 'general', 0, 0, 'others', NULL, NULL),
(9, 'domain', 'https://therareperfumes.online/public/', 'text', 4, 'general', 0, 0, 'others', NULL, NULL),
(10, 'logo', 'filemanager/684db5d84e806.png', 'image', 1, 'general', 0, 0, 'others', NULL, NULL),
(11, 'menu_type', 'left', 'text', 1, 'general', 0, 0, 'others', NULL, NULL),
(12, 'fav_icon', 'public/demo/favicon.png', 'image', 1, 'general', 0, 0, 'others', NULL, NULL),
(13, 'facebook_link', 'https://www.facebook.com/people/The-Rare-Perfumes/61577791466299/', 'text', 1, 'social_media', 0, 0, 'social_media', NULL, NULL),
(14, 'youtube_link', '#', 'text', 1, 'social_media', 0, 0, 'social_media', NULL, NULL),
(15, 'twitter_link', '', 'text', 1, 'social_media', 0, 0, 'social_media', NULL, NULL),
(16, 'instagram_link', 'https://www.instagram.com/therareperfumesonline/', 'text', 1, 'social_media', 0, 0, 'social_media', NULL, NULL),
(17, 'admin_logo', '', 'image', 4, 'admin_settings', 0, 0, 'others', NULL, NULL),
(18, 'admin_favicon', '', 'image', 4, 'admin_settings', 0, 0, 'others', NULL, NULL),
(19, 'site_currency', 'PKR', 'text', 5, 'shop_settings', 0, 0, 'shop', NULL, NULL),
(20, 'topbar_title', 'Wellcome to The Rare Perfumes', 'text', 1, 'theme', 1, 0, 'header', NULL, NULL),
(21, 'site_short_details', 'The Rare Perfumes brings you a fully tailored fragrance experience, crafted around your desires, your style, and your search. Step into your dream and Shine in your own story.', 'text', 1, 'general', 0, 0, 'others', NULL, NULL),
(22, 'home_page_banner', 'filemanager/684d8b5ee7f24.png', 'image', 1, 'theme', 2, 0, 'homepage', NULL, NULL),
(23, 'home_page_text', 'The Rare Perfumes', 'text', 1, 'theme', 2, 0, 'homepage', NULL, NULL),
(24, 'home_page_text_color', 'white', 'text', 1, 'theme', 2, 0, 'homepage', NULL, NULL),
(25, 'home_page_details', '“We take pride in delivering exceptional services and products, providing exactly what you need to achieve your goals with ease. Explore the wide range of services we offer and discover how we can support your success.”', 'text', 1, 'theme', 2, 0, 'homepage', NULL, NULL),
(26, 'delivery_charges', '250', 'text', 5, 'shop_settings', 0, 0, 'shop', NULL, NULL),
(27, 'shop_banner', 'filemanager/6866677b56be2.jpg', 'image', 5, 'shop_settings', 0, 0, 'shop', NULL, NULL),
(30, 'discount_percent', '0', 'text', 1, 'shop_settings', 0, 0, 'shop', NULL, NULL),
(31, 'tiktok_link', 'https://tiktok.com/@therareperfumes.online', 'text', 1, 'social_media', 0, 0, 'social_media', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `image_id` text DEFAULT NULL,
  `alt` text DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 1,
  `button` text DEFAULT NULL,
  `alignment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `slug`, `details`, `image_id`, `alt`, `sort`, `link`, `is_enable`, `button`, `alignment`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'filemanager/684d8b5ee7f24.png', NULL, 1, NULL, 1, NULL, 'right', '2024-09-25 16:48:48', '2025-06-14 14:47:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `profile_image` text DEFAULT NULL,
  `email_token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`, `created_by`, `permissions`, `profile_image`, `email_token`) VALUES
(1, 'therareperfumes', 1, 'admin@therareperfumes.online', '2024-09-25 16:48:41', '$2y$10$hM984jPYb7v0A9u1PoykSezBIsuatNz/n8oYNnVdngoKGbap9hhRm', NULL, '2025-06-19 19:25:01', '2025-06-19 19:25:01', 1, 1, NULL, NULL, NULL),
(2, 'shakeeb', 1, 'admin@adminsk.com', '2024-09-25 16:48:41', '$2y$10$shyviZdle5WFvELADcwrTeOXM7ZC9cE/toOHRM8eyI60YSy.OkjEW', NULL, '2025-06-19 19:25:01', '2025-06-19 19:25:01', 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `values`
--

CREATE TABLE `values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `values`
--

INSERT INTO `values` (`id`, `title`, `attribute_id`, `created_at`, `updated_at`) VALUES
(3, '90ML', 3, NULL, '2025-06-12 05:20:38'),
(24, '100ML', 3, '2025-06-01 19:45:39', '2025-06-12 05:20:46'),
(25, '120ML', 3, '2025-06-01 19:45:48', '2025-06-12 05:21:10'),
(26, '150ML', 3, '2025-06-01 19:45:55', '2025-06-12 05:21:21'),
(27, '75ML', 3, '2025-06-11 09:44:15', '2025-06-11 10:23:04'),
(28, '60ML', 3, '2025-06-11 09:44:21', '2025-06-11 10:22:58'),
(29, '50ML', 3, '2025-06-11 09:44:25', '2025-06-11 10:22:52'),
(30, '200ML', 3, '2025-06-12 05:22:29', '2025-06-12 05:22:29'),
(32, '3ML', 3, '2025-06-16 10:18:23', '2025-06-16 10:18:23'),
(33, '10ML', 3, '2025-06-16 10:18:31', '2025-06-16 10:18:31'),
(34, '14ML', 3, '2025-06-16 10:18:41', '2025-06-16 10:18:41'),
(41, '125ML', 3, '2025-07-14 10:49:30', '2025-07-14 10:49:30'),
(42, '800ML', 3, '2025-09-20 12:02:13', '2025-09-20 12:02:13');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `product_id`, `sku`, `quantity`, `price`, `image`, `created_at`, `updated_at`) VALUES
(34, 17, '100ml', 10, 49680, NULL, '2025-06-01 19:46:22', '2025-06-01 19:46:39'),
(35, 18, '100ml', 12, 12000, NULL, '2025-06-01 20:04:55', '2025-06-01 20:04:55'),
(36, 19, '100ml', 15, 17000, NULL, '2025-06-01 20:10:34', '2025-06-01 20:10:34'),
(37, 20, '200 ml', 17, 10000, NULL, '2025-06-01 20:15:38', '2025-06-01 20:15:48'),
(38, 21, '100ml', 10, 12000, NULL, '2025-06-10 11:52:48', '2025-06-10 11:52:59'),
(42, 67, '3ML', 5, 6650, NULL, '2025-06-16 11:58:45', '2026-01-03 06:49:53'),
(43, 66, '50ML', 6, 9000, 'filemanager/6849904bca617.jpg', '2025-06-16 12:34:05', '2025-06-26 06:07:38'),
(44, 65, '50ML', 6, 8500, NULL, '2025-06-16 12:55:24', '2025-06-16 12:55:53'),
(45, 64, '100ML', 4, 6500, NULL, '2025-06-16 12:58:18', '2025-06-25 13:43:34'),
(46, 63, '100ML', 2, 22750, NULL, '2025-06-16 17:51:01', '2025-12-10 18:24:40'),
(47, 62, '100ML', 5, 7250, 'filemanager/68498f1f23d31.jpg', '2025-06-16 17:52:52', '2025-12-08 07:38:25'),
(48, 61, '100ML', 5, 7500, NULL, '2025-06-16 19:18:42', '2025-06-16 19:19:04'),
(49, 60, '75ML', 5, 7750, NULL, '2025-06-16 19:22:28', '2025-06-16 19:22:40'),
(50, 59, '75ML', 5, 9950, NULL, '2025-06-16 19:30:04', '2026-01-19 08:19:26'),
(51, 58, '75ML', 5, 9750, NULL, '2025-06-16 19:33:39', '2025-06-16 19:33:51'),
(52, 52, '100ML', 5, 28500, 'filemanager/68498a6d4d4f1.jpg', '2025-06-16 19:36:20', '2025-12-20 07:13:56'),
(54, 50, '50ML', 5, 6750, NULL, '2025-06-16 19:41:48', '2025-12-10 18:20:02'),
(55, 49, '100ML', 4, 31250, NULL, '2025-06-16 19:48:52', '2026-01-20 07:23:42'),
(56, 48, '100ML', 6, 6250, NULL, '2025-06-16 19:51:45', '2026-01-01 12:07:40'),
(57, 46, '14ML', 4, 7500, NULL, '2025-06-16 19:55:41', '2025-06-16 19:55:52'),
(58, 57, '75ML', 4, 9000, NULL, '2025-06-16 20:00:17', '2025-06-16 20:07:07'),
(59, 56, '100ML', 5, 12250, NULL, '2025-06-16 20:10:09', '2025-12-23 07:05:14'),
(60, 55, '100ML', 2, 31500, NULL, '2025-06-16 20:11:38', '2025-06-16 20:11:44'),
(61, 54, '10ML', 3, 2950, NULL, '2025-06-16 20:15:45', '2025-06-17 06:01:51'),
(62, 53, '50ML', 5, 5850, NULL, '2025-06-16 20:18:11', '2025-06-16 20:18:31'),
(63, 45, '90ML', 5, 9250, NULL, '2025-06-16 20:20:33', '2025-06-16 20:20:38'),
(64, 44, '100ML', 4, 31500, NULL, '2025-06-16 20:22:59', '2025-06-16 20:23:05'),
(65, 43, '100ML', 5, 32500, NULL, '2025-06-16 20:25:37', '2025-06-16 20:25:42'),
(66, 42, '100ML', 5, 7250, NULL, '2025-06-16 20:27:30', '2025-06-16 20:27:37'),
(67, 41, '100ML', 5, 5500, NULL, '2025-06-16 20:30:36', '2025-06-16 20:30:44'),
(68, 40, '90ML', 5, 10750, NULL, '2025-06-16 20:32:00', '2025-06-16 20:33:10'),
(69, 39, '100ML', 2, 32500, NULL, '2025-06-17 04:49:50', '2025-06-17 04:51:34'),
(70, 38, '100ML', 2, 32500, NULL, '2025-06-17 05:14:47', '2025-06-17 05:15:14'),
(71, 37, '100ML', 4, 32500, NULL, '2025-06-17 05:18:22', '2025-06-17 05:18:27'),
(72, 36, '60ML', 4, 8950, NULL, '2025-06-17 05:20:32', '2025-06-17 05:20:38'),
(73, 35, '100ML', 3, 27500, NULL, '2025-06-17 05:31:17', '2025-06-17 05:31:30'),
(74, 34, '100ML', 4, 5250, 'filemanager/68498151bb095.jpg', '2025-06-17 05:36:32', '2026-01-13 08:35:01'),
(75, 33, '100ML', 3, 27500, NULL, '2025-06-17 05:44:25', '2025-06-17 05:44:36'),
(76, 32, '100ML', 6, 7000, NULL, '2025-06-17 05:46:46', '2026-01-17 12:33:37'),
(78, 31, '10ML', 3, 2950, NULL, '2025-06-17 05:53:00', '2025-06-17 05:54:01'),
(79, 51, '10ML', 2, 2950, NULL, '2025-06-17 05:58:52', '2025-06-17 05:59:06'),
(80, 30, '90ML', 5, 8500, NULL, '2025-06-17 07:01:19', '2025-06-17 07:02:29'),
(81, 29, '75ML', 4, 9500, NULL, '2025-06-17 07:23:02', '2025-06-17 07:23:08'),
(82, 28, '10ML', 3, 2950, 'filemanager/6848245f4d865.jpg', '2025-06-17 07:29:38', '2025-06-17 18:24:27'),
(86, 27, '75ML', 6, 13750, NULL, '2025-06-18 04:34:05', '2025-12-09 19:42:57'),
(87, 26, '75ML', 6, 13800, NULL, '2025-06-18 04:38:41', '2025-12-23 10:20:45'),
(88, 25, '75ML', 5, 13000, NULL, '2025-06-18 04:42:17', '2025-06-18 04:43:50'),
(89, 24, '75ML', 9, 12750, 'filemanager/684820d93bc30.jpg', '2025-06-18 04:45:33', '2025-12-12 14:43:07'),
(90, 23, '100ML', 3, 27500, NULL, '2025-06-18 04:52:10', '2025-06-18 04:52:20'),
(91, 22, '100ML', 3, 24500, NULL, '2025-06-18 06:21:04', '2025-06-18 06:21:12'),
(93, 69, '120ML-small', NULL, NULL, NULL, '2025-06-18 09:13:02', '2025-06-18 09:13:02'),
(94, 70, '100ML', 6, 16500, NULL, '2025-06-25 12:14:00', '2025-06-25 12:14:10'),
(95, 71, '100ML', 6, 16500, NULL, '2025-06-25 12:19:34', '2025-06-25 12:57:36'),
(96, 72, '90ML', 4, 15250, NULL, '2025-06-25 12:31:16', '2025-06-25 12:31:21'),
(97, 73, '100ML', 3, 17500, NULL, '2025-06-25 12:33:06', '2025-06-25 12:33:11'),
(98, 74, '100ML', 4, 16500, NULL, '2025-06-25 12:37:30', '2025-06-25 12:37:42'),
(99, 75, '100ML', 2, 16000, NULL, '2025-06-25 12:39:52', '2025-06-25 12:39:58'),
(100, 76, '90ML', 3, 15500, NULL, '2025-06-25 12:44:17', '2025-06-25 12:45:47'),
(101, 77, '100ML', 5, 16500, NULL, '2025-06-25 12:48:11', '2025-06-25 12:50:24'),
(102, 78, '100ML', 4, 15550, NULL, '2025-06-25 12:52:44', '2025-06-25 12:52:54'),
(104, 79, '100ML', 4, 16500, NULL, '2025-06-25 13:16:16', '2025-06-25 13:16:22'),
(105, 80, '100ML', 4, 15500, NULL, '2025-06-25 13:22:00', '2025-06-25 13:22:07'),
(106, 81, '100ML', 4, 15000, NULL, '2025-06-25 13:24:01', '2025-06-25 13:24:06'),
(107, 82, '100ML', 0, 16500, NULL, '2025-06-25 13:28:03', '2025-06-26 10:58:46'),
(109, 83, '150ML', 1, 1200, NULL, '2025-06-26 10:34:12', '2025-06-26 11:14:26'),
(110, 84, '100ML', 5, 12500, NULL, '2025-06-26 11:38:44', '2025-07-14 10:47:10'),
(111, 85, '100ML', 5, 12500, NULL, '2025-06-26 11:45:06', '2025-06-26 11:45:13'),
(112, 86, '100ML', 2, 13000, NULL, '2025-06-26 12:04:13', '2025-06-26 12:04:26'),
(113, 87, '100ML', 3, 13000, 'filemanager/685cfec692f2b.jpg', '2025-06-26 12:07:29', '2025-12-08 09:07:19'),
(114, 88, '100ML', 1, 13500, 'filemanager/685cfec6932f6.jpg', '2025-06-26 13:08:11', '2025-07-14 10:45:52'),
(115, 89, '100ML', 3, 13500, NULL, '2025-06-26 13:10:02', '2025-06-26 13:10:10'),
(116, 90, '100ML', 2, 15500, NULL, '2025-06-26 13:13:35', '2025-06-26 13:13:54'),
(120, 92, '100ML', 3, 1400, NULL, '2025-06-26 13:49:16', '2025-06-26 13:49:31'),
(121, 92, '120ML', 1, 1500, NULL, '2025-06-26 13:49:16', '2025-06-26 13:51:37'),
(122, 91, '100ML', 5, 14250, NULL, '2025-06-26 14:22:17', '2026-01-14 10:37:40'),
(123, 93, '100ML', 2, 14500, NULL, '2025-06-27 07:21:51', '2025-06-27 07:22:10'),
(124, 94, '200ML', 5, 17500, NULL, '2025-07-14 10:41:32', '2025-07-14 10:42:26'),
(125, 95, '125ML', 5, 9500, NULL, '2025-07-14 10:50:01', '2025-07-14 10:50:07'),
(126, 96, '125ML', 3, 9500, NULL, '2025-07-14 10:52:12', '2025-07-14 10:52:18'),
(127, 97, '100ML', 3, 9000, NULL, '2025-07-14 10:58:52', '2025-07-14 10:58:56'),
(128, 98, '125ML', 3, 12500, NULL, '2025-07-14 11:05:29', '2026-01-05 20:37:59'),
(129, 99, '100ML', 3, 8000, NULL, '2025-07-14 11:08:12', '2025-07-14 11:08:18'),
(130, 100, '100ML', 3, 14500, NULL, '2025-07-14 12:07:30', '2026-01-05 20:37:06'),
(131, 101, '100ML', 5, 10000, 'filemanager/686660ede17e9.jpg', '2025-07-14 12:09:50', '2026-01-17 11:07:01'),
(132, 102, '100ML', 3, 10500, NULL, '2025-07-14 12:12:12', '2025-07-14 12:12:19'),
(133, 103, '125ML', 3, 13250, NULL, '2025-07-14 12:15:45', '2026-01-05 20:35:27'),
(134, 104, '125ML', NULL, NULL, NULL, '2025-07-14 12:19:40', '2025-07-14 12:19:40'),
(135, 105, '125ML', 10, 13000, 'filemanager/6866632e740bd.jpg', '2025-07-14 12:21:32', '2025-12-19 07:44:33'),
(136, 106, '125ML', 3, 12500, NULL, '2025-07-14 12:30:09', '2025-07-14 12:30:14'),
(137, 107, '125ML', 0, 12500, NULL, '2025-07-14 12:33:00', '2025-07-14 12:33:09'),
(138, 108, '125ML', 5, 13000, NULL, '2025-07-14 12:35:28', '2025-07-14 12:35:35'),
(139, 109, '125ML', 3, 13500, 'filemanager/6866677b556e5.jpg', '2025-07-14 12:37:06', '2025-12-01 07:41:19'),
(140, 110, '100ML', 6, 16500, NULL, '2025-07-29 10:28:55', '2025-07-29 10:29:02'),
(141, 111, '90ML', 6, 16500, NULL, '2025-07-29 10:31:50', '2025-07-29 10:31:55'),
(142, 112, '100ML', 4, 15500, NULL, '2025-07-29 10:35:44', '2025-07-29 10:35:50'),
(143, 113, '100ML', 4, 15500, NULL, '2025-07-29 10:39:28', '2025-07-29 10:39:35'),
(145, 114, '90ML', 4, 16500, NULL, '2025-07-29 10:42:54', '2025-07-29 10:43:11'),
(146, 115, '90ML', 10, 16500, 'filemanager/68d3ce5cf39ad.jpg', '2025-07-29 10:51:00', '2025-12-08 07:34:11'),
(147, 116, '90ML', 5, 16000, NULL, '2025-07-29 11:20:32', '2025-07-29 11:21:07'),
(148, 117, '90ML', 3, 15500, NULL, '2025-07-29 11:23:43', '2025-07-29 11:24:03'),
(150, 118, '90ML', 4, 16000, NULL, '2025-07-29 11:55:44', '2025-07-29 11:55:53'),
(151, 119, '100ML', 6, 15500, NULL, '2025-07-29 12:01:46', '2025-07-29 12:01:52'),
(152, 120, '90ML', 3, 14500, NULL, '2025-07-29 12:10:14', '2026-01-05 20:33:47'),
(153, 121, '100ML', 4, 14750, NULL, '2025-07-29 12:17:50', '2025-07-29 12:17:55'),
(154, 122, '100ML', 5, 32500, NULL, '2025-09-11 15:02:30', '2025-09-11 15:02:39'),
(155, 123, '75ML', 5, 28500, NULL, '2025-09-20 11:56:24', '2025-09-20 11:56:30'),
(156, 125, '100ML', 4, 11000, NULL, '2025-09-20 12:07:38', '2025-09-20 12:07:45'),
(157, 124, '100ML', 4, 11500, NULL, '2025-09-20 12:09:47', '2025-09-20 12:09:53'),
(158, 126, '100ML', 4, 10750, NULL, '2025-09-20 12:14:13', '2025-09-20 12:14:20'),
(159, 127, '100ML', 4, 10750, NULL, '2025-09-20 12:17:31', '2025-09-20 12:17:37'),
(160, 128, '100ML', 4, 11000, NULL, '2025-09-20 12:19:27', '2025-09-20 12:19:36'),
(161, 129, '100ML', 4, 11000, NULL, '2025-09-20 12:23:47', '2025-09-20 12:23:51'),
(162, 130, '100ML', 4, 10650, NULL, '2025-09-20 12:26:24', '2025-09-20 12:26:29'),
(163, 131, '100ML', 4, 11000, NULL, '2025-09-20 12:30:56', '2025-09-20 12:31:02'),
(164, 132, '100ML', 4, 11000, NULL, '2025-09-20 12:31:56', '2025-09-20 12:32:01'),
(165, 133, '100ML', 4, 12500, NULL, '2025-09-20 12:36:36', '2025-09-20 12:36:52'),
(166, 134, '100ML', 2, 11000, NULL, '2025-09-20 12:42:57', '2025-09-20 12:43:02'),
(167, 135, '100ML', 4, 16500, NULL, '2025-09-20 13:03:20', '2026-01-05 20:32:46'),
(168, 136, '75ML', 1, 13250, NULL, '2025-09-20 13:04:52', '2025-12-29 18:20:10'),
(169, 137, '90ML', 4, 15500, NULL, '2025-09-20 13:07:07', '2026-01-05 20:31:42'),
(170, 138, '100ML', 3, 15500, NULL, '2025-09-20 13:08:18', '2025-09-22 05:36:30'),
(171, 139, '100ML', 3, 13500, NULL, '2025-09-20 13:11:56', '2025-09-20 13:12:03'),
(172, 140, '100ML', 4, 15500, NULL, '2025-09-20 13:13:52', '2026-01-05 20:30:29'),
(173, 141, '100ML', 4, 16500, NULL, '2025-09-20 13:16:26', '2026-01-05 20:29:34'),
(174, 142, '100ML', 4, 12000, NULL, '2025-09-22 10:16:29', '2026-01-05 20:28:23'),
(175, 143, '100ML', 3, 10500, NULL, '2025-09-22 10:18:48', '2025-09-22 10:28:13'),
(176, 144, '100ML', 4, 13500, NULL, '2025-09-22 10:21:05', '2025-09-22 10:21:15'),
(177, 145, '100ML', 4, 14600, NULL, '2025-09-22 10:23:27', '2026-01-06 12:29:00'),
(178, 146, '90ML', 3, 13500, NULL, '2025-09-22 10:29:27', '2025-09-22 10:29:34'),
(179, 147, '100ML', 3, 12500, NULL, '2025-09-22 10:31:27', '2026-01-05 20:26:16'),
(180, 148, '100ML', 4, 11500, NULL, '2025-09-22 10:57:25', '2025-09-22 10:57:29'),
(181, 149, '100ML', 5, 13500, NULL, '2025-09-22 11:00:08', '2026-01-17 12:20:58'),
(182, 150, '100ML', 3, 9500, NULL, '2025-09-24 10:30:27', '2025-09-24 10:30:34'),
(183, 151, '100ML', 3, 9500, NULL, '2025-09-24 10:35:19', '2025-09-24 10:35:24'),
(184, 152, '100ML', 3, 9500, NULL, '2025-09-24 10:40:27', '2025-09-24 10:40:42'),
(185, 153, '100ML', 3, 9500, NULL, '2025-09-24 10:43:09', '2025-09-24 10:43:13'),
(186, 154, '100ML', 6, 9500, 'filemanager/68d3ce5cf39ad.jpg', '2025-09-24 10:50:30', '2025-12-08 07:33:23'),
(187, 155, '100ML', 3, 10500, NULL, '2025-09-24 10:59:17', '2025-09-24 10:59:29'),
(188, 156, '100ML', 3, 11500, NULL, '2025-09-24 11:00:57', '2025-09-24 11:01:00'),
(189, 157, '100ML', 5, 10500, NULL, '2025-09-24 11:04:40', '2025-09-24 11:04:45'),
(190, 158, '100ML', 9, 9500, 'filemanager/68d38ae080577.jpg', '2025-09-24 11:06:26', '2025-12-08 07:31:54'),
(191, 159, '50ML', 20, 4400, 'filemanager/692d6253d3352.png', '2025-11-28 07:15:40', '2026-01-14 10:32:23'),
(192, 160, '50ML', 10, 3250, NULL, '2025-12-01 11:39:30', '2026-01-01 10:58:29'),
(193, 161, '50ML', 5, 2150, NULL, '2025-12-03 11:56:37', '2025-12-03 11:56:50'),
(194, 162, '50ML', 15, 1950, NULL, '2025-12-04 12:09:47', '2026-01-18 19:01:06'),
(195, 163, '50ML', 10, 2700, NULL, '2025-12-22 06:42:38', '2026-01-06 19:00:38'),
(196, 164, '100ML', 2, 105000, NULL, '2025-12-27 08:46:05', '2025-12-27 08:46:16'),
(198, 165, '90ML', 2, 64750, NULL, '2025-12-30 14:32:03', '2026-01-17 12:19:32'),
(200, 166, '150ML', 2, 59750, NULL, '2025-12-30 17:21:55', '2025-12-30 17:22:06'),
(201, 167, '100ML', 2, 38250, NULL, '2026-01-06 12:23:23', '2026-01-06 12:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `variation_attributes`
--

CREATE TABLE `variation_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `value_id` bigint(20) UNSIGNED DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variation_attributes`
--

INSERT INTO `variation_attributes` (`id`, `variation_id`, `attribute_id`, `value_id`, `value`, `created_at`, `updated_at`) VALUES
(67, 34, 3, 3, '100ml', '2025-06-01 19:46:22', '2025-06-01 19:46:22'),
(68, 35, 3, 3, '100ml', '2025-06-01 20:04:55', '2025-06-01 20:04:55'),
(69, 36, 3, 3, '100ml', '2025-06-01 20:10:34', '2025-06-01 20:10:34'),
(70, 37, 3, 25, '200 ml', '2025-06-01 20:15:38', '2025-06-01 20:15:38'),
(71, 38, 3, 3, '100ml', '2025-06-10 11:52:48', '2025-06-10 11:52:48'),
(72, 39, 3, 26, '300 ml', '2025-06-10 11:55:52', '2025-06-10 11:55:52'),
(73, 40, 3, 26, '300 ml', '2025-06-10 11:58:37', '2025-06-10 11:58:37'),
(74, 41, 3, 29, '50ML', '2025-06-16 09:51:05', '2025-06-16 09:51:05'),
(75, 41, 4, 29, 'test', '2025-06-16 09:51:05', '2025-06-16 09:51:05'),
(76, 42, 3, 32, '3ML', '2025-06-16 11:58:45', '2025-06-16 11:58:45'),
(77, 43, 3, 29, '50ML', '2025-06-16 12:34:05', '2025-06-16 12:34:05'),
(78, 44, 3, 29, '50ML', '2025-06-16 12:55:24', '2025-06-16 12:55:24'),
(79, 45, 3, 24, '100ML', '2025-06-16 12:58:18', '2025-06-16 12:58:18'),
(80, 46, 3, 24, '100ML', '2025-06-16 17:51:01', '2025-06-16 17:51:01'),
(81, 47, 3, 24, '100ML', '2025-06-16 17:52:52', '2025-06-16 17:52:52'),
(82, 48, 3, 24, '100ML', '2025-06-16 19:18:42', '2025-06-16 19:18:42'),
(83, 49, 3, 27, '75ML', '2025-06-16 19:22:28', '2025-06-16 19:22:28'),
(84, 50, 3, 27, '75ML', '2025-06-16 19:30:04', '2025-06-16 19:30:04'),
(85, 51, 3, 27, '75ML', '2025-06-16 19:33:39', '2025-06-16 19:33:39'),
(86, 52, 3, 24, '100ML', '2025-06-16 19:36:20', '2025-06-16 19:36:20'),
(87, 53, 3, 33, '10ML', '2025-06-16 19:38:30', '2025-06-16 19:38:30'),
(88, 54, 3, 29, '50ML', '2025-06-16 19:41:48', '2025-06-16 19:41:48'),
(89, 55, 3, 24, '100ML', '2025-06-16 19:48:52', '2025-06-16 19:48:52'),
(90, 56, 3, 24, '100ML', '2025-06-16 19:51:45', '2025-06-16 19:51:45'),
(91, 57, 3, 34, '14ML', '2025-06-16 19:55:41', '2025-06-16 19:55:41'),
(92, 58, 3, 27, '75ML', '2025-06-16 20:00:17', '2025-06-16 20:00:17'),
(93, 59, 3, 24, '100ML', '2025-06-16 20:10:09', '2025-06-16 20:10:09'),
(94, 60, 3, 24, '100ML', '2025-06-16 20:11:38', '2025-06-16 20:11:38'),
(95, 61, 3, 33, '10ML', '2025-06-16 20:15:45', '2025-06-16 20:15:45'),
(96, 62, 3, 29, '50ML', '2025-06-16 20:18:11', '2025-06-16 20:18:11'),
(97, 63, 3, 3, '90ML', '2025-06-16 20:20:33', '2025-06-16 20:20:33'),
(98, 64, 3, 24, '100ML', '2025-06-16 20:22:59', '2025-06-16 20:22:59'),
(99, 65, 3, 24, '100ML', '2025-06-16 20:25:37', '2025-06-16 20:25:37'),
(100, 66, 3, 24, '100ML', '2025-06-16 20:27:30', '2025-06-16 20:27:30'),
(101, 67, 3, 24, '100ML', '2025-06-16 20:30:36', '2025-06-16 20:30:36'),
(102, 68, 3, 3, '90ML', '2025-06-16 20:32:00', '2025-06-16 20:32:00'),
(103, 69, 3, 24, '100ML', '2025-06-17 04:49:50', '2025-06-17 04:49:50'),
(104, 70, 3, 24, '100ML', '2025-06-17 05:14:47', '2025-06-17 05:14:47'),
(105, 71, 3, 24, '100ML', '2025-06-17 05:18:22', '2025-06-17 05:18:22'),
(106, 72, 3, 28, '60ML', '2025-06-17 05:20:32', '2025-06-17 05:20:32'),
(107, 73, 3, 24, '100ML', '2025-06-17 05:31:17', '2025-06-17 05:31:17'),
(108, 74, 3, 24, '100ML', '2025-06-17 05:36:32', '2025-06-17 05:36:32'),
(109, 75, 3, 24, '100ML', '2025-06-17 05:44:25', '2025-06-17 05:44:25'),
(110, 76, 3, 24, '100ML', '2025-06-17 05:46:46', '2025-06-17 05:46:46'),
(111, 77, 3, 33, '10ML', '2025-06-17 05:52:57', '2025-06-17 05:52:57'),
(112, 78, 3, 33, '10ML', '2025-06-17 05:53:00', '2025-06-17 05:53:00'),
(113, 79, 3, 33, '10ML', '2025-06-17 05:58:52', '2025-06-17 05:58:52'),
(114, 80, 3, 3, '90ML', '2025-06-17 07:01:19', '2025-06-17 07:01:19'),
(115, 81, 3, 27, '75ML', '2025-06-17 07:23:02', '2025-06-17 07:23:02'),
(116, 82, 3, 33, '10ML', '2025-06-17 07:29:38', '2025-06-17 07:29:38'),
(117, 83, 3, 27, '75ML', '2025-06-18 04:34:05', '2025-06-18 04:34:05'),
(118, 85, 3, 27, '75ML', '2025-06-18 04:34:05', '2025-06-18 04:34:05'),
(119, 84, 3, 27, '75ML', '2025-06-18 04:34:05', '2025-06-18 04:34:05'),
(120, 86, 3, 27, '75ML', '2025-06-18 04:34:05', '2025-06-18 04:34:05'),
(121, 87, 3, 27, '75ML', '2025-06-18 04:38:41', '2025-06-18 04:38:41'),
(122, 88, 3, 27, '75ML', '2025-06-18 04:42:17', '2025-06-18 04:42:17'),
(123, 89, 3, 27, '75ML', '2025-06-18 04:45:33', '2025-06-18 04:45:33'),
(124, 90, 3, 24, '100ML', '2025-06-18 04:52:10', '2025-06-18 04:52:10'),
(125, 91, 3, 24, '100ML', '2025-06-18 06:21:04', '2025-06-18 06:21:04'),
(126, 92, 3, 26, '150ML', '2025-06-18 09:09:35', '2025-06-18 09:09:35'),
(127, 93, 3, 25, '120ML', '2025-06-18 09:13:02', '2025-06-18 09:13:02'),
(128, 93, 6, 39, 'small', '2025-06-18 09:13:02', '2025-06-18 09:13:02'),
(129, 94, 3, 24, '100ML', '2025-06-25 12:14:00', '2025-06-25 12:14:00'),
(130, 95, 3, 24, '100ML', '2025-06-25 12:19:34', '2025-06-25 12:19:34'),
(131, 96, 3, 3, '90ML', '2025-06-25 12:31:16', '2025-06-25 12:31:16'),
(132, 97, 3, 24, '100ML', '2025-06-25 12:33:06', '2025-06-25 12:33:06'),
(133, 98, 3, 24, '100ML', '2025-06-25 12:37:30', '2025-06-25 12:37:30'),
(134, 99, 3, 24, '100ML', '2025-06-25 12:39:52', '2025-06-25 12:39:52'),
(135, 100, 3, 3, '90ML', '2025-06-25 12:44:17', '2025-06-25 12:44:17'),
(136, 101, 3, 24, '100ML', '2025-06-25 12:48:11', '2025-06-25 12:48:11'),
(137, 102, 3, 24, '100ML', '2025-06-25 12:52:44', '2025-06-25 12:52:44'),
(138, 103, 3, 24, '100ML', '2025-06-25 13:00:01', '2025-06-25 13:00:01'),
(139, 104, 3, 24, '100ML', '2025-06-25 13:16:16', '2025-06-25 13:16:16'),
(140, 105, 3, 24, '100ML', '2025-06-25 13:22:00', '2025-06-25 13:22:00'),
(141, 106, 3, 24, '100ML', '2025-06-25 13:24:01', '2025-06-25 13:24:01'),
(142, 107, 3, 24, '100ML', '2025-06-25 13:28:03', '2025-06-25 13:28:03'),
(143, 108, 3, 26, '150ML', '2025-06-26 09:06:02', '2025-06-26 09:06:02'),
(144, 109, 3, 26, '150ML', '2025-06-26 10:34:12', '2025-06-26 10:34:12'),
(145, 110, 3, 24, '100ML', '2025-06-26 11:38:44', '2025-06-26 11:38:44'),
(146, 111, 3, 24, '100ML', '2025-06-26 11:45:06', '2025-06-26 11:45:06'),
(147, 112, 3, 24, '100ML', '2025-06-26 12:04:13', '2025-06-26 12:04:13'),
(148, 113, 3, 24, '100ML', '2025-06-26 12:07:29', '2025-06-26 12:07:29'),
(149, 114, 3, 24, '100ML', '2025-06-26 13:08:11', '2025-06-26 13:08:11'),
(150, 115, 3, 24, '100ML', '2025-06-26 13:10:02', '2025-06-26 13:10:02'),
(151, 116, 3, 24, '100ML', '2025-06-26 13:13:35', '2025-06-26 13:13:35'),
(152, 117, 3, 24, '100ML', '2025-06-26 13:17:10', '2025-06-26 13:17:10'),
(153, 118, 3, 25, '120ML', '2025-06-26 13:35:01', '2025-06-26 13:35:01'),
(154, 119, 3, 25, '120ML', '2025-06-26 13:49:02', '2025-06-26 13:49:02'),
(155, 120, 3, 24, '100ML', '2025-06-26 13:49:16', '2025-06-26 13:49:16'),
(156, 121, 3, 25, '120ML', '2025-06-26 13:49:16', '2025-06-26 13:49:16'),
(157, 122, 3, 24, '100ML', '2025-06-26 14:22:17', '2025-06-26 14:22:17'),
(158, 123, 3, 24, '100ML', '2025-06-27 07:21:51', '2025-06-27 07:21:51'),
(159, 124, 3, 30, '200ML', '2025-07-14 10:41:32', '2025-07-14 10:41:32'),
(160, 125, 3, 41, '125ML', '2025-07-14 10:50:01', '2025-07-14 10:50:01'),
(161, 126, 3, 41, '125ML', '2025-07-14 10:52:12', '2025-07-14 10:52:12'),
(162, 127, 3, 24, '100ML', '2025-07-14 10:58:52', '2025-07-14 10:58:52'),
(163, 128, 3, 41, '125ML', '2025-07-14 11:05:29', '2025-07-14 11:05:29'),
(164, 129, 3, 24, '100ML', '2025-07-14 11:08:12', '2025-07-14 11:08:12'),
(165, 130, 3, 24, '100ML', '2025-07-14 12:07:30', '2025-07-14 12:07:30'),
(166, 131, 3, 24, '100ML', '2025-07-14 12:09:50', '2025-07-14 12:09:50'),
(167, 132, 3, 24, '100ML', '2025-07-14 12:12:12', '2025-07-14 12:12:12'),
(168, 133, 3, 41, '125ML', '2025-07-14 12:15:45', '2025-07-14 12:15:45'),
(169, 134, 3, 41, '125ML', '2025-07-14 12:19:40', '2025-07-14 12:19:40'),
(170, 135, 3, 41, '125ML', '2025-07-14 12:21:32', '2025-07-14 12:21:32'),
(171, 136, 3, 41, '125ML', '2025-07-14 12:30:09', '2025-07-14 12:30:09'),
(172, 137, 3, 41, '125ML', '2025-07-14 12:33:00', '2025-07-14 12:33:00'),
(173, 138, 3, 41, '125ML', '2025-07-14 12:35:28', '2025-07-14 12:35:28'),
(174, 139, 3, 41, '125ML', '2025-07-14 12:37:06', '2025-07-14 12:37:06'),
(175, 140, 3, 24, '100ML', '2025-07-29 10:28:55', '2025-07-29 10:28:55'),
(176, 141, 3, 3, '90ML', '2025-07-29 10:31:50', '2025-07-29 10:31:50'),
(177, 142, 3, 24, '100ML', '2025-07-29 10:35:44', '2025-07-29 10:35:44'),
(178, 143, 3, 24, '100ML', '2025-07-29 10:39:28', '2025-07-29 10:39:28'),
(179, 144, 3, 3, '90ML', '2025-07-29 10:42:48', '2025-07-29 10:42:48'),
(180, 145, 3, 3, '90ML', '2025-07-29 10:42:54', '2025-07-29 10:42:54'),
(181, 146, 3, 3, '90ML', '2025-07-29 10:51:00', '2025-07-29 10:51:00'),
(182, 147, 3, 3, '90ML', '2025-07-29 11:20:32', '2025-07-29 11:20:32'),
(183, 148, 3, 3, '90ML', '2025-07-29 11:23:43', '2025-07-29 11:23:43'),
(184, 149, 3, 3, '90ML', '2025-07-29 11:35:25', '2025-07-29 11:35:25'),
(185, 150, 3, 3, '90ML', '2025-07-29 11:55:44', '2025-07-29 11:55:44'),
(186, 151, 3, 24, '100ML', '2025-07-29 12:01:46', '2025-07-29 12:01:46'),
(187, 152, 3, 3, '90ML', '2025-07-29 12:10:14', '2025-07-29 12:10:14'),
(188, 153, 3, 24, '100ML', '2025-07-29 12:17:50', '2025-07-29 12:17:50'),
(189, 154, 3, 24, '100ML', '2025-09-11 15:02:30', '2025-09-11 15:02:30'),
(190, 155, 3, 27, '75ML', '2025-09-20 11:56:24', '2025-09-20 11:56:24'),
(191, 156, 3, 24, '100ML', '2025-09-20 12:07:38', '2025-09-20 12:07:38'),
(192, 157, 3, 24, '100ML', '2025-09-20 12:09:47', '2025-09-20 12:09:47'),
(193, 158, 3, 24, '100ML', '2025-09-20 12:14:13', '2025-09-20 12:14:13'),
(194, 159, 3, 24, '100ML', '2025-09-20 12:17:31', '2025-09-20 12:17:31'),
(195, 160, 3, 24, '100ML', '2025-09-20 12:19:27', '2025-09-20 12:19:27'),
(196, 161, 3, 24, '100ML', '2025-09-20 12:23:47', '2025-09-20 12:23:47'),
(197, 162, 3, 24, '100ML', '2025-09-20 12:26:24', '2025-09-20 12:26:24'),
(198, 163, 3, 24, '100ML', '2025-09-20 12:30:56', '2025-09-20 12:30:56'),
(199, 164, 3, 24, '100ML', '2025-09-20 12:31:56', '2025-09-20 12:31:56'),
(200, 165, 3, 24, '100ML', '2025-09-20 12:36:36', '2025-09-20 12:36:36'),
(201, 166, 3, 24, '100ML', '2025-09-20 12:42:57', '2025-09-20 12:42:57'),
(202, 167, 3, 24, '100ML', '2025-09-20 13:03:20', '2025-09-20 13:03:20'),
(203, 168, 3, 27, '75ML', '2025-09-20 13:04:52', '2025-09-20 13:04:52'),
(204, 169, 3, 3, '90ML', '2025-09-20 13:07:07', '2025-09-20 13:07:07'),
(205, 170, 3, 24, '100ML', '2025-09-20 13:08:18', '2025-09-20 13:08:18'),
(206, 171, 3, 24, '100ML', '2025-09-20 13:11:56', '2025-09-20 13:11:56'),
(207, 172, 3, 24, '100ML', '2025-09-20 13:13:52', '2025-09-20 13:13:52'),
(208, 173, 3, 24, '100ML', '2025-09-20 13:16:26', '2025-09-20 13:16:26'),
(209, 174, 3, 24, '100ML', '2025-09-22 10:16:29', '2025-09-22 10:16:29'),
(210, 175, 3, 24, '100ML', '2025-09-22 10:18:48', '2025-09-22 10:18:48'),
(211, 176, 3, 24, '100ML', '2025-09-22 10:21:05', '2025-09-22 10:21:05'),
(212, 177, 3, 24, '100ML', '2025-09-22 10:23:27', '2025-09-22 10:23:27'),
(213, 178, 3, 3, '90ML', '2025-09-22 10:29:27', '2025-09-22 10:29:27'),
(214, 179, 3, 24, '100ML', '2025-09-22 10:31:27', '2025-09-22 10:31:27'),
(215, 180, 3, 24, '100ML', '2025-09-22 10:57:25', '2025-09-22 10:57:25'),
(216, 181, 3, 24, '100ML', '2025-09-22 11:00:08', '2025-09-22 11:00:08'),
(217, 182, 3, 24, '100ML', '2025-09-24 10:30:27', '2025-09-24 10:30:27'),
(218, 183, 3, 24, '100ML', '2025-09-24 10:35:19', '2025-09-24 10:35:19'),
(219, 184, 3, 24, '100ML', '2025-09-24 10:40:27', '2025-09-24 10:40:27'),
(220, 185, 3, 24, '100ML', '2025-09-24 10:43:09', '2025-09-24 10:43:09'),
(221, 186, 3, 24, '100ML', '2025-09-24 10:50:30', '2025-09-24 10:50:30'),
(222, 187, 3, 24, '100ML', '2025-09-24 10:59:17', '2025-09-24 10:59:17'),
(223, 188, 3, 24, '100ML', '2025-09-24 11:00:57', '2025-09-24 11:00:57'),
(224, 189, 3, 24, '100ML', '2025-09-24 11:04:40', '2025-09-24 11:04:40'),
(225, 190, 3, 24, '100ML', '2025-09-24 11:06:26', '2025-09-24 11:06:26'),
(226, 191, 3, 29, '50ML', '2025-11-28 07:15:40', '2025-11-28 07:15:40'),
(227, 192, 3, 29, '50ML', '2025-12-01 11:39:30', '2025-12-01 11:39:30'),
(228, 193, 3, 29, '50ML', '2025-12-03 11:56:37', '2025-12-03 11:56:37'),
(229, 194, 3, 29, '50ML', '2025-12-04 12:09:47', '2025-12-04 12:09:47'),
(230, 195, 3, 29, '50ML', '2025-12-22 06:42:38', '2025-12-22 06:42:38'),
(231, 196, 3, 24, '100ML', '2025-12-27 08:46:05', '2025-12-27 08:46:05'),
(232, 197, 3, 24, '100ML', '2025-12-27 08:50:18', '2025-12-27 08:50:18'),
(233, 198, 3, 3, '90ML', '2025-12-30 14:32:03', '2025-12-30 14:32:03'),
(234, 199, 3, 24, '100ML', '2025-12-30 14:32:03', '2025-12-30 14:32:03'),
(235, 200, 3, 26, '150ML', '2025-12-30 17:21:55', '2025-12-30 17:21:55'),
(236, 201, 3, 24, '100ML', '2026-01-06 12:23:23', '2026-01-06 12:23:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `filemanager`
--
ALTER TABLE `filemanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_parent_id_index` (`parent_id`),
  ADD KEY `menu_items_menu_id_index` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_variation_id_foreign` (`variation_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_collections`
--
ALTER TABLE `product_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_collections_product_id_foreign` (`product_id`),
  ADD KEY `product_collections_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_created_by_foreign` (`created_by`),
  ADD KEY `roles_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `values`
--
ALTER TABLE `values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `values_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variations_product_id_foreign` (`product_id`);

--
-- Indexes for table `variation_attributes`
--
ALTER TABLE `variation_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_attributes_variation_id_foreign` (`variation_id`),
  ADD KEY `variation_attributes_value_id_foreign` (`value_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `product_collections`
--
ALTER TABLE `product_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `values`
--
ALTER TABLE `values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `variation_attributes`
--
ALTER TABLE `variation_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
