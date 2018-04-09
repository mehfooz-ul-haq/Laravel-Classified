-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2018 at 09:41 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naz`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'EikEeqIhPL5iAAGvHTjj8dAKNi1GeoLf', 1, '2018-02-26 04:53:52', '2018-02-26 04:53:52', '2018-02-26 04:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `image`, `link`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'Advertisement title 1', '1523210970.jpg', 'http://google.com', '2018-04-30', '2018-04-08 13:09:30', '2018-04-08 13:09:30'),
(3, 'Advertisement title 2\r\n', '1523210970.jpg', 'http://google.com', '2018-08-04', '2018-04-08 13:09:30', '2018-04-08 13:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(10) UNSIGNED NOT NULL,
  `make_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` year(4) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doors` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `engine_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driven_km` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `make_id`, `model_id`, `title`, `slug`, `year`, `price`, `doors`, `engine_type`, `driven_km`, `color`, `image`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 'for sale', 'for-sale', 2016, '1500', '4', 'Petrol', '2500', 'Brown', '1523218725.jpg', 'car details', '2018-04-08 15:18:45', '2018-04-08 15:59:44'),
(5, 4, 8, 'asd', 'asd', 2016, 'asd', '2', 'Petrol', 'sad', 'Black', '1523219268.jpg', 'adasd', '2018-04-08 15:27:48', '2018-04-08 15:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `car_features`
--

CREATE TABLE `car_features` (
  `car_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_features`
--

INSERT INTO `car_features` (`car_id`, `feature_id`) VALUES
('5', '4'),
('5', '3'),
('1', '8'),
('1', '4'),
('1', '1'),
('1', '5'),
('1', '6'),
('1', '7'),
('1', '2'),
('1', '9'),
('1', '3');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Women Clothes', 'women-clothes', '2018-04-08 12:48:23', '2018-04-08 12:48:23'),
(3, 'Men Clothes', 'men-clothes', '2018-04-08 12:48:28', '2018-04-08 12:48:28'),
(4, 'House Hold', 'house-hold', '2018-04-08 12:48:33', '2018-04-08 12:48:33'),
(5, 'Electronics', 'electronics', '2018-04-08 12:48:40', '2018-04-08 12:50:22'),
(6, 'Kitchen Accessories', 'kitchen-accessories', '2018-04-08 12:48:50', '2018-04-08 12:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Airbags', 'airbags', '2018-04-08 14:10:29', '2018-04-08 14:10:29'),
(2, 'Power Steering', 'power-steering', '2018-04-08 14:10:35', '2018-04-08 14:10:35'),
(3, 'Rear Camera', 'rear-camera', '2018-04-08 14:10:41', '2018-04-08 14:10:41'),
(4, 'Air Condition', 'air-condition', '2018-04-08 14:10:50', '2018-04-08 14:10:50'),
(5, 'Alloy Rim', 'alloy-rim', '2018-04-08 14:10:57', '2018-04-08 14:10:57'),
(6, 'Dashboard LCD', 'dashboard-lcd', '2018-04-08 14:11:24', '2018-04-08 14:11:24'),
(7, 'LED Lights', 'led-lights', '2018-04-08 14:11:41', '2018-04-08 14:11:41'),
(8, 'ABS Brake', 'abs-brake', '2018-04-08 14:11:48', '2018-04-08 14:14:08'),
(9, 'Power Windows', 'power-windows', '2018-04-08 14:11:56', '2018-04-08 14:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'car',
  `type_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `makes`
--

CREATE TABLE `makes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `makes`
--

INSERT INTO `makes` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Toyota', 'toyota', '2018-04-08 14:24:58', '2018-04-08 14:24:58'),
(2, 'Honda', 'honda', '2018-04-08 14:25:05', '2018-04-08 14:25:05'),
(3, 'Hyundai', 'hyundai', '2018-04-08 14:25:09', '2018-04-08 14:25:09'),
(4, 'BMW', 'bmw', '2018-04-08 14:25:12', '2018-04-08 14:25:12'),
(5, 'Mercedes', 'mercedes', '2018-04-08 14:25:16', '2018-04-08 14:25:16'),
(6, 'GMC', 'gmc', '2018-04-08 14:25:19', '2018-04-08 14:25:19'),
(7, 'Lexus', 'lexus', '2018-04-08 14:25:22', '2018-04-08 14:25:22'),
(8, 'Mitsubishi', 'mitsubishi', '2018-04-08 14:25:27', '2018-04-08 14:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2018_04_08_170521_ads', 2),
(3, '2018_04_08_170539_products', 2),
(4, '2018_04_08_170634_cars', 2),
(5, '2018_04_08_170651_makes', 2),
(6, '2018_04_08_170705_models', 2),
(7, '2018_04_08_171509_images', 2),
(8, '2018_04_08_173402_categories', 3),
(9, '2018_04_08_185024_features', 4),
(10, '2018_04_08_185055_car_features', 4);

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(10) UNSIGNED NOT NULL,
  `make_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `make_id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(2, 1, 'XLI', 'xli', '2018-04-08 14:51:00', '2018-04-08 14:51:00'),
(4, 7, 'L430', 'l430', '2018-04-08 14:51:27', '2018-04-08 14:51:27'),
(5, 1, 'V6', 'v6', '2018-04-08 14:52:16', '2018-04-08 14:52:16'),
(6, 1, 'V8', 'v8', '2018-04-08 14:52:20', '2018-04-08 14:52:20'),
(7, 1, 'Grande', 'grande', '2018-04-08 14:52:24', '2018-04-08 14:52:24'),
(8, 2, 'Civic', 'civic', '2018-04-08 14:52:38', '2018-04-08 14:52:38'),
(9, 2, 'City', 'city', '2018-04-08 14:52:42', '2018-04-08 14:52:42'),
(10, 2, 'Accord', 'accord', '2018-04-08 14:52:48', '2018-04-08 14:52:48'),
(11, 2, 'Fit', 'fit', '2018-04-08 14:52:51', '2018-04-08 14:52:51'),
(12, 2, 'BRV', 'brv', '2018-04-08 14:52:57', '2018-04-08 14:52:57'),
(13, 2, 'CRV', 'crv', '2018-04-08 14:53:00', '2018-04-08 14:54:11'),
(14, 3, 'Clantra', 'clantra', '2018-04-08 14:54:54', '2018-04-08 14:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'fcqRg2jQEWRVgyZp9ItweQ4BfKJtXus0', '2018-02-26 04:56:03', '2018-02-26 04:56:03'),
(3, 1, '2ydvMmYDQ4UICWyvQo3f2EF27Yc4P2sR', '2018-02-26 04:56:34', '2018-02-26 04:56:34'),
(5, 1, 'ZPgrLsR9JoNWQv4z9GAakyGioZpkOcnx', '2018-02-26 04:57:38', '2018-02-26 04:57:38'),
(6, 1, 'JHVlI4c8tDYQl7ReNRtD5GYppokE1Wfg', '2018-02-26 04:57:38', '2018-02-26 04:57:38'),
(7, 1, 'sNHScoGHvOk9MxaIYp39N5tAkeAtU9nj', '2018-02-26 05:02:31', '2018-02-26 05:02:31'),
(8, 1, 'Kh3FTRA7rrPgx3MR9AK8jJakD7GhJiCe', '2018-02-26 05:02:31', '2018-02-26 05:02:31'),
(9, 1, 'SWHyjbVZGLVVdstHqMqbSUsYIorOQKey', '2018-02-26 17:13:51', '2018-02-26 17:13:51'),
(10, 1, '9jm98tezD0G3swVcEPlTMQnGIA16VWXC', '2018-02-26 17:13:51', '2018-02-26 17:13:51'),
(11, 1, '5aApNqoR1MOfEsN32V68LuH8IgT7PzK6', '2018-03-01 21:54:06', '2018-03-01 21:54:06'),
(13, 1, 'Uj3QILHi9kdo4iBJBGxxbB0LR95hlerB', '2018-03-03 22:29:56', '2018-03-03 22:29:56'),
(14, 1, 'CEnCfiTSh7dfHsdUaV1drgZrlPvodN4S', '2018-03-03 22:29:57', '2018-03-03 22:29:57'),
(15, 1, 'rDikEdtQttLF6ME1thWPU30jsodVkG1Q', '2018-03-06 06:56:46', '2018-03-06 06:56:46'),
(16, 1, 'GE5fWuifywjRoLWOwuCFZFqusAQPS5Pf', '2018-03-06 06:56:47', '2018-03-06 06:56:47'),
(17, 1, 'lZE6GEkYGrJOaVYHmQ2d6IWW0O55q0T4', '2018-03-06 06:57:47', '2018-03-06 06:57:47'),
(18, 1, 'OujB41ehOf5kZXorDdWS5yQtNzT7oGZ6', '2018-03-07 00:12:58', '2018-03-07 00:12:58'),
(19, 1, '1hNshJI6fYNgR6sXB4kcPtpYLf5pxAbL', '2018-03-09 05:31:32', '2018-03-09 05:31:32'),
(20, 1, 'SlPGPrsyAb0H5vglMCN7K0LlgJjqIbrw', '2018-03-18 08:18:03', '2018-03-18 08:18:03'),
(21, 1, 'Q2syCcmlQrT7WPUXiSAUTlx1l87cFzJx', '2018-03-18 08:18:03', '2018-03-18 08:18:03'),
(22, 1, 'vqPfc8xd3ZhSjjezyD5VYSXjB6OGgzUX', '2018-03-18 11:15:17', '2018-03-18 11:15:17'),
(23, 1, 'qm5lez4QHllnuZoPThVOmtNUndfn6Boj', '2018-03-18 11:15:17', '2018-03-18 11:15:17'),
(24, 1, 'wnfkoBNorryXhXQb2tcJQzttrl7Nh26A', '2018-03-18 14:03:27', '2018-03-18 14:03:27'),
(25, 1, 'vRkGqYXROdvDpvfo2r0ckfXYIEmcKdGT', '2018-03-18 14:03:27', '2018-03-18 14:03:27'),
(26, 1, 'h2yauy1KRyYt1RGl4KzfS66Smbc0HqkV', '2018-03-19 00:03:22', '2018-03-19 00:03:22'),
(27, 1, 'EZFKGyQFXTqVdTPdAQOgEdj9AUBCjCfx', '2018-03-19 00:03:22', '2018-03-19 00:03:22'),
(28, 1, 'FMzjsjdaTjrTcD3WeA7tIox2heDYdAJC', '2018-03-19 00:03:22', '2018-03-19 00:03:22'),
(29, 1, 'hdD15POI1BcYw2z8mI7g3r5FE86q0DmK', '2018-03-19 13:50:51', '2018-03-19 13:50:51'),
(30, 1, 'ZVsZ7VW0xGeNcw9rUegD1lYOSKcax4fa', '2018-03-19 13:50:51', '2018-03-19 13:50:51'),
(31, 1, 'TruBp3M8RmzUMCNAeeWrzPEUixmNxu3p', '2018-03-20 05:57:16', '2018-03-20 05:57:16'),
(33, 1, 'RrHwNRwOGwVeqcqZgfy9he1XLz0PnhDU', '2018-03-20 07:43:29', '2018-03-20 07:43:29'),
(34, 1, 'ZtWyx63OzQ1phmKA6Wmi3V4NW4KV1LH3', '2018-03-20 07:43:29', '2018-03-20 07:43:29'),
(35, 1, 'zzjjoiUtB82HZL85rkLIqHo2py5mWLnx', '2018-03-22 01:59:29', '2018-03-22 01:59:29'),
(37, 1, 'GVeJkLjEl6HrcI4GEoVDvxPA41ijjz8T', '2018-03-22 02:29:21', '2018-03-22 02:29:21'),
(38, 1, '2HzoWqNDg7tVm6l8nYU8Ww4tv1CteD76', '2018-03-22 02:29:21', '2018-03-22 02:29:21'),
(39, 1, 'imgOOr1ytIeSi0FyThSg9qJbUPyWpcgk', '2018-03-26 03:34:23', '2018-03-26 03:34:23'),
(40, 1, 'I1m0MN49dLDRpMiswccnEuHnLHaaOEMS', '2018-03-26 03:34:23', '2018-03-26 03:34:23'),
(41, 1, 'TRlyZOSN6MRR180XPcvsLqCycaHFPHTy', '2018-03-26 03:35:26', '2018-03-26 03:35:26'),
(42, 1, '2rYzmQNE2qF5Qm0Y7EeDHH3WsRSAQdPA', '2018-03-26 03:35:26', '2018-03-26 03:35:26'),
(43, 1, 'o9mlE9nxmK9iHO6ymCrGfsQUtqGeha9J', '2018-03-26 03:35:55', '2018-03-26 03:35:55'),
(45, 1, 'pWQf2l4o18AaFzM0aM4S5iMoculUE0r4', '2018-03-26 03:39:04', '2018-03-26 03:39:04'),
(47, 1, 'UuLi35hueSHevZYFxmhGQCY4cEOH6q8k', '2018-03-26 03:39:09', '2018-03-26 03:39:09'),
(48, 1, 'zRNU2P5jNrRmFuBGa4nUUk8BChSiNC3Y', '2018-03-26 03:39:09', '2018-03-26 03:39:09'),
(49, 1, 'GxMJ8gkKuPQnFeZ7IjmIivO9V5TYfdAb', '2018-03-26 17:07:39', '2018-03-26 17:07:39'),
(50, 1, 'K2bOpIVvgkc65EhV1feubV0ljpt5I0R5', '2018-03-26 17:07:39', '2018-03-26 17:07:39'),
(51, 1, 'y43vpuczkbybfEDE07qiriRy8e2TBPeP', '2018-03-26 17:07:49', '2018-03-26 17:07:49'),
(53, 1, 'uHAEor5PRS7MMmmE0GMPIxcc0Bv3rur5', '2018-03-26 18:06:42', '2018-03-26 18:06:42'),
(55, 1, 'ue1rYxHrQJGqqYgMdlrk82hbWvMH43tH', '2018-03-26 18:42:28', '2018-03-26 18:42:28'),
(56, 1, 'GGDQTutvHxfrE4Wo3SmYrNj6zHQ9u5Io', '2018-03-26 18:42:28', '2018-03-26 18:42:28'),
(57, 1, 'KRF69L7n0a84bq1LI5pCRlTT9DVR86UM', '2018-03-27 14:57:42', '2018-03-27 14:57:42'),
(58, 1, 'yvYz8xlxLwtdOdyaQbfbRVi7clbQO9jB', '2018-03-27 14:57:42', '2018-03-27 14:57:42'),
(59, 1, 'k6KZKrLqQesk5wberVgzqUdWtE3VBZtg', '2018-03-28 11:06:14', '2018-03-28 11:06:14'),
(61, 1, 'jv27FY2LBjBeIRYXNlpoBLKaIym7nmIp', '2018-03-28 12:25:11', '2018-03-28 12:25:11'),
(63, 1, 'jQYxAdNBLvS7e8ixpZnW3fdgTh40hPe5', '2018-03-28 16:45:30', '2018-03-28 16:45:30'),
(64, 1, 'cDtIwhiCA1EfQE14B4sm3aKMpxZs7M1t', '2018-03-28 16:45:30', '2018-03-28 16:45:30'),
(65, 1, 'tG1Ml9Cb5JLNXKSCS5vx8p6JZSlzS4nh', '2018-03-29 12:42:35', '2018-03-29 12:42:35'),
(66, 1, 'vH2XugUGRk9AmCyGvdCoKRwezXqRw5yq', '2018-03-29 12:42:35', '2018-03-29 12:42:35'),
(67, 1, 'ljfVGmc30PypbU2tb37OCkalpKcFse26', '2018-03-31 13:02:53', '2018-03-31 13:02:53'),
(68, 1, 'cQeradFHjvpidhMBrRvSJbxu2hjZ9aaK', '2018-03-31 13:02:53', '2018-03-31 13:02:53'),
(69, 1, 'JlIKC4RZ29Xi97Kj2pgiHWwrtp41CN0z', '2018-03-31 13:02:59', '2018-03-31 13:02:59'),
(70, 1, 'SRI0UXA7y8dDZWbS7pIz2DBcKvcLJDaR', '2018-03-31 13:02:59', '2018-03-31 13:02:59'),
(71, 1, 'lJ2aPnNtLaK0GF5jn9WuTjMJsubcXCwg', '2018-03-31 17:06:29', '2018-03-31 17:06:29'),
(73, 1, 'SoP9r4fJHfnkW7eMNBrhnCC9pjWgeWa0', '2018-03-31 19:40:26', '2018-03-31 19:40:26'),
(74, 1, 'v129C2whNmD5f1khkIcFhlJQL2mpHVdo', '2018-04-01 10:30:39', '2018-04-01 10:30:39'),
(75, 1, 'NT5NST0OWTcT9ruR3sAASQJFUlAC0bhR', '2018-04-01 10:30:40', '2018-04-01 10:30:40'),
(76, 1, 'SyPVrd6kZmavwH8BbF2DvZcRhiRcT454', '2018-04-01 13:54:54', '2018-04-01 13:54:54'),
(77, 1, 'BI1vTM6Zm3ajLIyKimyNgiPfdF94jLU2', '2018-04-02 07:12:16', '2018-04-02 07:12:16'),
(79, 1, 'teSPhu8CFI9VsMyFUBO13jSDK4kFCnYl', '2018-04-02 07:29:17', '2018-04-02 07:29:17'),
(80, 1, 'K2gtcbKwoHXgC66TaRXBouZmHKfVEegx', '2018-04-08 12:24:21', '2018-04-08 12:24:21'),
(81, 1, 'DepJr5dTi0yhfDJpcJ13JX59vow6qeZi', '2018-04-08 12:24:21', '2018-04-08 12:24:21'),
(82, 1, 'wNqDYcaaWyKjIG63TBDM26MXcQQIeGM9', '2018-04-08 15:09:31', '2018-04-08 15:09:31'),
(84, 1, 'C6Mq0GZkuEzkIxKfHcUCLtS93WyD61SK', '2018-04-08 16:40:36', '2018-04-08 16:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `slug`, `image`, `quantity`, `price`, `details`, `created_at`, `updated_at`) VALUES
(1, 5, 'electronics product 1', 'electronics-product-1', '1523212930.jpg', '1500', '255', 'electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details electronics product 1 details', '2018-04-08 13:42:10', '2018-04-08 13:42:10'),
(2, 3, 'Men Clothes 1', 'men-clothes-1', '1523213159.jpg', '500', '150', 'Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details Men Clothes 1 product Details', '2018-04-08 13:45:59', '2018-04-08 13:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, '2018-02-25 19:13:19', '2018-02-26 01:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-02-25 21:13:11', '2018-02-25 19:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2018-02-26 04:57:35', '2018-02-26 04:57:35'),
(2, NULL, 'ip', '::1', '2018-02-26 04:57:36', '2018-02-26 04:57:36'),
(3, 1, 'user', NULL, '2018-02-26 04:57:36', '2018-02-26 04:57:36'),
(4, NULL, 'global', NULL, '2018-03-09 05:31:28', '2018-03-09 05:31:28'),
(5, NULL, 'ip', '::1', '2018-03-09 05:31:28', '2018-03-09 05:31:28'),
(6, NULL, 'global', NULL, '2018-03-18 08:17:59', '2018-03-18 08:17:59'),
(7, NULL, 'ip', '::1', '2018-03-18 08:17:59', '2018-03-18 08:17:59'),
(8, NULL, 'global', NULL, '2018-03-26 03:35:48', '2018-03-26 03:35:48'),
(9, NULL, 'ip', '::1', '2018-03-26 03:35:48', '2018-03-26 03:35:48'),
(10, 1, 'user', NULL, '2018-03-26 03:35:48', '2018-03-26 03:35:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'mehhfooz@outlook.com', '$2y$10$zUA4dABYbnC8ggcMHV9GfOS8bzmrgwghQIB4YLeSumyT7wlNq6l6i', NULL, '2018-04-08 16:40:36', 'Mehfooz', 'Haque', '2018-02-26 04:53:52', '2018-04-08 16:40:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `makes`
--
ALTER TABLE `makes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

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
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `makes`
--
ALTER TABLE `makes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
