-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2018 at 09:48 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vatlive`
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `href` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `href`, `created_at`, `updated_at`) VALUES
(1, 'Industry Events', 'industry-events', '2018-03-27 21:22:35', '2018-03-28 01:13:15'),
(2, 'Webinars', 'webinars', '2018-03-27 21:22:35', '2018-03-28 01:13:15'),
(3, 'Seminars', 'seminars', '2018-03-27 21:23:02', '2018-03-28 01:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `category_events`
--

CREATE TABLE `category_events` (
  `category_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `href` varchar(255) NOT NULL,
  `image` varchar(150) DEFAULT NULL,
  `on_date` date DEFAULT NULL,
  `on_time` varchar(50) DEFAULT NULL,
  `location` varchar(250) NOT NULL,
  `tags` varchar(250) DEFAULT NULL,
  `contents` text NOT NULL,
  `map_url` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `speaker_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `href`, `image`, `on_date`, `on_time`, `location`, `tags`, `contents`, `map_url`, `views`, `created_at`, `updated_at`, `category_id`, `speaker_id`) VALUES
(1, 'Savant e-Commerce Amsterdam 2018', 'savant-e-commerce-amsterdam-2018', '1522186949.jpg', '2018-04-24', '8:00 am - 3:45 pm CEST', 'Spuistraat 175, 1012 VN Amsterdam, Netherlands', 'In-store Integration, Customer Centricity, Cross Border Expansion', '<p>Savant e-Commerce will bring together over 100 leading international retailers to share their experiences, challenges and questions on: Stores of the future and integrating in-store as part of the omnichannel experience; Customer Centricity, developing a data driven, personalised approach and cross border expansion, working with international marketplaces, successful localisation strategies, as well as an examination of the specific and evolving challenges of international B2B e-commerce.</p>', 'https://goo.gl/maps/k7LC4qTtbmp', 0, '2018-03-27 17:42:29', '2018-03-27 17:45:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_speakers`
--

CREATE TABLE `event_speakers` (
  `event_id` int(10) UNSIGNED NOT NULL,
  `speaker_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `href` varchar(150) NOT NULL,
  `title` varchar(150) NOT NULL,
  `contents` text NOT NULL,
  `image` varchar(250) NOT NULL,
  `on_date` date NOT NULL,
  `slider` varchar(1) DEFAULT 'N',
  `views` int(11) DEFAULT '0',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `href`, `title`, `contents`, `image`, `on_date`, `slider`, `views`, `meta_title`, `meta_keywords`, `meta_text`, `created_at`, `updated_at`) VALUES
(1, 'uk-treasury-committee-vat-gap-and-brexit-vat-inquiry', 'UK Treasury Committee VAT Gap and Brexit VAT inquiry', '<p>The House of Common&rsquo;s Treasury Committee today announced an inquiry into the UK VAT Gap and the VAT implications of Brexit. There will be separate Treasury Sub-Committee inquiries into tax avoidance/evasion and the conduct of HMRC in tax inquiries.</p>\r\n\r\n<p>VAT contributes almost one-third of UK tax revenues, so the lack of progress on the VAT Gap and the risks around Brexit have triggered this latest public review.</p>\r\n\r\n<h3><strong>VAT Gap remains stubbornly high</strong></h3>\r\n\r\n<p>The VAT Gap calculates the annual deficit of VAT collected compared to the amounts forecast. The difference is attributed to a mix of fraud, errors, poor administration and companies going into liquidation.</p>\r\n\r\n<p>HRMC has made limited progress in reducing the VAT Gap: it was estimated at &pound;12.6bn for 2015-16 compared to &pound;12.4bn for 2014-15. The VAT Gap is three times larger than the Corporation Tax (&lsquo;CT&rsquo;) Gap, which was &pound;3.3bn in 2015-16. This is largely because the CT Gap has been significantly reduced in the last ten years by extensive anti-avoidance measures.</p>\r\n\r\n<h3>Chinese VAT fraud; the Gig Economy</h3>\r\n\r\n<p>Issues that will be reviewed will include an estimated &pound;1.5bn in VAT fraud committed by Chinese online retailers. Also, the effect of the&nbsp;Gig<strong>&nbsp;</strong>economy growth. The erosion of the traditional tax base as more individuals start providing taxable services that are not captured by HMRC&rsquo;s traditional tax reporting mechanism. This includes home-renters and car sharing which fall below the high VAT threshold of &pound;85,000. The Committee will investigate how some countries, including Norway, are now looking at forcing P2P marketplaces, such as Airbnb and HomeAway, into surrendering hosts&rsquo; taxable renting to the tax authorities. Additionally, the role of car-sharing platforms, such as Uber, which have enabled a major rise in non-VAT charging taxi service providers to enter the marketplace.</p>\r\n\r\n<h3><strong>VAT implications of Brexit</strong></h3>\r\n\r\n<p>The UK&rsquo;s date for leaving the EU VAT regime has been potentially set for 31 December 2020, following a 21-month Brexit transition period. The VAT implications for UK businesses include:</p>\r\n\r\n<ul>\r\n	<li>Importers will face a UK 20% import VAT bill and cash flow recovery administration on all their goods coming into the UK.</li>\r\n	<li>The imposition of up to &pound;720 million in extra annual VAT compliance costs on up to 27,000 small businesses following the loss of EU distance selling VAT registration thresholds.</li>\r\n	<li>Irrecoverable customs tariffs of 4% on average for importers of goods into the UK from the EU.</li>\r\n	<li>UK sellers of digital services (streaming media, apps and e-books) losing their right to the EU MOSS single VAT registration and filing facility. This will hit US businesses which have used the UK as their EU-gateway for their EU digital sales.</li>\r\n</ul>\r\n\r\n<p>The Committee will also review the simplification of the UK VAT regime to help businesses, and make and processing better VAT policy.</p>\r\n\r\n<p>The Treasury Sub-Committee will separate conduct inquiries into tax avoidance and evasion, and the conduct of HMRC tax inquiries and conduct.</p>', '1522182824.jpeg', '2018-03-28', 'Y', 0, NULL, NULL, NULL, '2018-03-27 16:27:58', '2018-03-27 16:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `href` varchar(150) NOT NULL,
  `title` varchar(150) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `contents` text NOT NULL,
  `contents_short` text,
  `slider` varchar(1) DEFAULT 'N',
  `views` int(11) DEFAULT '0',
  `link_to_pages` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `href`, `title`, `image`, `contents`, `contents_short`, `slider`, `views`, `link_to_pages`, `meta_title`, `meta_keywords`, `meta_text`, `created_at`, `updated_at`) VALUES
(15, 'Home Page', 'home-page', 'Welcome to Avalara VATlive', NULL, '<h2>VAT and GST country guidance and news</h2>\r\n\r\n<p><strong>Avalara VATlive</strong>&nbsp;offers a wealth of free, up-to-date country guidance and news on VAT and GST from Europe and around the world. It is provided by Avalara, whose&nbsp;SaaS-based VAT, GST and US Sales Tax software, registrations and returns services help businesses around the world reduce the risks and costs of their compliance.</p>', NULL, 'Y', 0, '', NULL, NULL, NULL, '2018-03-26 18:07:48', '2018-03-26 18:07:48'),
(16, 'Help getting a VAT or GST number', 'help-getting-a-vat-or-gst-number', 'Help getting a VAT or GST number', NULL, '<p>For companies importing or selling across European and global borders, there may be an obligation to register for VAT or GST. The rules on whether a registration is required depend on many issues, including local country legislation; type of transaction; the starting point for goods; where the seller and customer are based; and registration thresholds. Avalara can provide free guidance on these&nbsp;rules in the EU and around the world, and help your company VAT or GST register if required.</p>', NULL, 'N', 0, '', NULL, NULL, NULL, '2018-03-26 18:08:57', '2018-03-26 18:08:57'),
(17, 'Assistance preparing and filing VAT & GST returns', 'assistance-preparing-and-filing-vat-gst-returns', 'Assistance preparing and filing VAT & GST returns', NULL, '<p>Once registered, companies are obliged to compile and submit periodic VAT or GST returns, Intrastat and ESLs.&nbsp; This includes understanding the varying compliance issues, including local invoice disclosure requirements and foreign currency translation rules.&nbsp; Following foreign country rules, and the continuously shifting requirements of the local tax authorities can leave companies distracted with heavy administrative obligations and exposed to potential fines.&nbsp; Avalara can help.&nbsp; Our single-point-of-contact service for all countries frees you to focus on growing your business.</p>', NULL, 'Y', 0, '', NULL, NULL, NULL, '2018-03-26 18:09:18', '2018-03-26 18:09:18'),
(18, 'Reduce risks and costs through our VAT software', 'reduce-risks-and-costs-through-our-vat-software', 'Reduce risks and costs through our VAT software', NULL, '<p>For businesses with complex international transactions, varying ERP environments feeding into multiple foreign VAT returns, automation may be the answer. Our range of VAT determination and VAT reporting tools are shown to significantly reduce the risks and costs of international VAT compliance.</p>', NULL, 'Y', 0, '', NULL, NULL, NULL, '2018-03-26 18:09:37', '2018-03-26 18:09:37'),
(19, 'Need help with an International VAT question?', 'need-help-with-an-international-vat-question', 'Need help with an International VAT question?', NULL, '<p>Our dedicated VAT experts are here to help you with any of your International VAT questions.</p>', NULL, 'Y', 0, '', NULL, NULL, NULL, '2018-03-26 18:10:15', '2018-03-26 18:10:15'),
(22, 'Global VAT & GST on digital services', 'global-vat-gst-on-digital-services', 'Global VAT & GST on digital services', NULL, '<p>Countries across the world are rapidly extending Value Added Tax (VAT) and Goods and Services Tax (GST) indirect taxes to the sale of electronic/digital services by&nbsp;online providers and platforms to consumers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The definition of e-services varies between jurisdictions, but typically includes income for the sale of streaming media and games; e-books; software; apps; web hosting and other cloud services; subscriptions to membership websites; online newspapers and journals; and online gambling. It can also include broadcast (TV and radio) or satellite services, as well as online voice and data telephony services.</p>', NULL, 'Y', 0, NULL, NULL, NULL, NULL, '2018-03-27 16:02:35', '2018-03-27 16:02:35');

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
(58, 1, 'yvYz8xlxLwtdOdyaQbfbRVi7clbQO9jB', '2018-03-27 14:57:42', '2018-03-27 14:57:42');

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
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `label_name` varchar(50) NOT NULL,
  `label_value` varchar(255) NOT NULL,
  `created_at` tinytext,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `label_name`, `label_value`, `created_at`, `updated_at`) VALUES
(1, 'Email Address', 'info@vatlive.com', '', '2018-03-27 17:10:02'),
(2, 'Phone Number', '+971 50 123 4567', '', '2018-03-27 17:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `heading_1` varchar(255) NOT NULL,
  `heading_2` varchar(255) NOT NULL,
  `contents` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `speakers`
--

CREATE TABLE `speakers` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `job_role` varchar(150) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speakers`
--

INSERT INTO `speakers` (`id`, `name`, `email`, `phone`, `photo`, `job_role`, `company`, `bio`, `created_at`, `updated_at`) VALUES
(1, 'Colin Matthews', 'email', 'phone', '1522183817.jpg', 'Solution Consultant', 'Avalara UK Ltd', 'Colin has worked in indirect tax for 10 years and specializes in the VAT implications for non-resident trading. Colin helps companies understand local legislation and assists them with their VAT registration and ongoing compliance obligations.', '2018-03-27 16:50:17', '2018-03-27 16:50:17');

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
(1, 'mehhfooz@outlook.com', '$2y$10$zUA4dABYbnC8ggcMHV9GfOS8bzmrgwghQIB4YLeSumyT7wlNq6l6i', NULL, '2018-03-27 14:57:42', 'Mehfooz', 'Haque', '2018-02-26 04:53:52', '2018-03-27 14:57:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

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
-- Indexes for table `speakers`
--
ALTER TABLE `speakers`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
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
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speakers`
--
ALTER TABLE `speakers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
