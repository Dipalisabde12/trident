-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2020 at 09:25 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mazalatu_trident`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_recorder`
--

CREATE TABLE `action_recorder` (
  `id` int(11) NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `success` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `entry_gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT '0',
  `entry_zone_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `address_book`
--

INSERT INTO `address_book` (`address_book_id`, `customers_id`, `entry_gender`, `entry_company`, `entry_firstname`, `entry_lastname`, `entry_street_address`, `entry_suburb`, `entry_postcode`, `entry_city`, `entry_state`, `entry_country_id`, `entry_zone_id`) VALUES
(4, 1, NULL, 'Oriange IT solutions', 'Gangadhar', 'Swami', 'mantri nagar', 'latur', '413512', 'latur', 'maharashtra', 99, 0),
(5, 5, NULL, 'Oriange IT Services', 'Baliram', 'Kore', 'barshi road', 'latur', '413512', 'Latur', 'maharashtra', 99, 0),
(6, 6, NULL, NULL, 'samreen', 'shaikh', 'latur', NULL, '124578', 'latur', 'Maharashtra', 99, 0),
(7, 6, NULL, NULL, 'shireen', 'shaikh', 'latur', NULL, '142536', 'latur', 'Maharashtra', 99, 0);

-- --------------------------------------------------------

--
-- Table structure for table `address_format`
--

CREATE TABLE `address_format` (
  `address_format_id` int(11) NOT NULL,
  `address_format` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `address_summary` varchar(48) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `myid` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `adminType` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`myid`, `first_name`, `last_name`, `email`, `password`, `isActive`, `address`, `city`, `state`, `zip`, `country`, `phone`, `image`, `adminType`, `remember_token`, `created_at`, `updated_at`, `user_name`) VALUES
(1, 'Admin', '', 'demo@android.com', '$2y$10$vbQE1Lbu1kXCAILSvaH0uOZ3oA6oZdCf/0kjQB16iGnjc3eTaFBeu', 1, 'address', 'Nivada', '12', '31271', '223', '+92 314 6681998', 'resources/views/admin/images/admin_profile/1505132393.1486628854.fast.jpg', 1, 'LKrVMY8DEULZvIM6wMFb5tA4NFW3UlaDC1DaGLeBtmuEsihNMCfnOW4N0n59', '0000-00-00 00:00:00', '2017-12-11 20:58:51', ''),
(4, 'Admin', '', 'demo@ionic.com', '$2y$10$vbQE1Lbu1kXCAILSvaH0uOZ3oA6oZdCf/0kjQB16iGnjc3eTaFBeu', 1, 'address', 'Nivada', '12', '31271', '223', '+92 314 6681998', 'resources/views/admin/images/admin_profile/1505132393.1486628854.fast.jpg', 1, 'Z2SPweBvux8Zpoh7ltMCLdFYzSUnkqUDEXWubz76WuS876bvgqQtR71nRG7m', NULL, NULL, ''),
(5, 'Trident', 'Admin', 'admin@trident.com', '$2y$10$vbQE1Lbu1kXCAILSvaH0uOZ3oA6oZdCf/0kjQB16iGnjc3eTaFBeu', 1, '228 Park Ave S', 'New York', '1', '10003', '223', '+1 656 458 787 87', 'resources/views/admin/images/admin_profile/1505132393.1486628854.fast.jpg', 1, 'tFn5utE0eN3P5VOxjOL2ntMPWDlGIq5d7EgaHPPYMLstLOoygsGjiG37h65Z', NULL, '2018-02-06 20:01:48', '');

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

CREATE TABLE `alert_settings` (
  `alert_id` int(100) NOT NULL,
  `create_customer_email` tinyint(1) NOT NULL DEFAULT '0',
  `create_customer_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_notification` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_email` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_notification` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_email` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_notification` tinyint(1) NOT NULL DEFAULT '0',
  `news_email` tinyint(1) NOT NULL DEFAULT '0',
  `news_notification` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_email` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_notification` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`alert_id`, `create_customer_email`, `create_customer_notification`, `order_status_email`, `order_status_notification`, `new_product_email`, `new_product_notification`, `forgot_email`, `forgot_notification`, `news_email`, `news_notification`, `contact_us_email`, `contact_us_notification`, `order_email`, `order_notification`) VALUES
(1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `banners_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banners_image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `banners_group` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `banners_html_text` mediumtext COLLATE utf8_unicode_ci,
  `expires_impressions` int(7) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `banners_group`, `banners_html_text`, `expires_impressions`, `expires_date`, `date_scheduled`, `date_added`, `date_status_change`, `status`, `type`) VALUES
(1, '', '7', 'resources/assets/images/banner_images/1535718686.slide3.jpg', '', NULL, 0, '2030-01-01 00:00:00', NULL, '2018-09-30 06:20:11', '2018-09-30 06:20:11', 1, 'category'),
(2, '', '7', 'resources/assets/images/banner_images/1535718714.slide1.jpg', '', NULL, 0, '2020-01-01 00:00:00', NULL, '2018-09-30 06:20:35', '2018-09-30 06:20:35', 1, 'category'),
(3, '', '7', 'resources/assets/images/banner_images/1535718740.slide2.jpg', '', NULL, 0, '2030-01-01 00:00:00', NULL, '2018-09-30 06:20:51', '2018-09-30 06:20:51', 1, 'category');

-- --------------------------------------------------------

--
-- Table structure for table `banners_history`
--

CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(5) NOT NULL DEFAULT '0',
  `banners_clicked` int(5) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `id` int(200) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `job_responsibility` text NOT NULL,
  `job_skills` text NOT NULL,
  `job_location` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` mediumtext COLLATE utf8_unicode_ci,
  `categories_icon` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `isCatalogue` int(11) NOT NULL DEFAULT '0',
  `isBestselling` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `isCatalogue`, `isBestselling`, `slug`) VALUES
(1, 'resources/assets/images/category_images/1535717927.ring2.jpg', 'resources/assets/images/category_icons/1538305986.jwellicon.png', 0, NULL, '2017-08-07 10:19:26', '2018-09-30 11:13:10', 0, 1, 'Rings.html'),
(2, 'resources/assets/images/category_images/1535717393.stunning ear tops.JPG', 'resources/assets/images/category_icons/1538306358.jwellicon.png', 0, NULL, '2017-08-07 10:24:45', '2018-09-30 11:19:22', 0, 1, 'Earrings.html'),
(3, 'resources/assets/images/category_images/1538305531.pendant.jpg', 'resources/assets/images/category_icons/1538306378.jwellicon.png', 0, NULL, '2017-08-07 10:32:16', '2018-09-30 11:19:45', 0, 1, 'Pendants.html'),
(4, 'resources/assets/images/category_images/1535717690.mangalsutra.JPG', 'resources/assets/images/category_icons/1538306403.jwellicon.png', 0, NULL, '2017-08-07 11:05:58', '2018-09-30 11:20:09', 0, 1, 'Necklaces.html'),
(5, 'resources/assets/images/category_images/1535717598.gold_antique bangles..jpg', 'resources/assets/images/category_icons/1538306435.jwellicon.png', 0, NULL, '2017-08-07 11:07:21', '2018-09-30 11:20:39', 0, 1, 'Bangles+&+Bracelets.html'),
(7, 'resources/assets/images/category_images/1535717809.ring4.jpg', 'resources/assets/images/category_icons/1538305936.jwellicon.png', 1, NULL, '2017-08-07 11:33:23', '2018-09-30 11:12:23', 1, 0, 'Engagement+Rings.html'),
(8, 'resources/assets/images/category_images/1535717912.wedding-couple-band-500x500.jpg', 'resources/assets/images/category_icons/1538306004.jwellicon.png', 1, NULL, '2017-08-08 07:54:23', '2018-09-30 11:13:24', 1, 0, 'Couple+Bands.html'),
(9, 'resources/assets/images/category_images/1535717965.ring1.jpg', 'resources/assets/images/category_icons/1538306020.jwellicon.png', 1, NULL, '2017-08-08 08:03:09', '2018-09-30 11:13:40', 1, 0, 'Casual+Rings.html'),
(10, 'resources/assets/images/category_images/1535718002.ring3.jpg', 'resources/assets/images/category_icons/1538306036.jwellicon.png', 1, NULL, '2017-08-08 08:11:35', '2018-09-30 11:13:56', 1, 0, 'Bridal+Ring+Sets.html'),
(11, 'resources/assets/images/category_images/1535718097.JR04251-YGP900_1_lar.jpg', 'resources/assets/images/category_icons/1538306053.jwellicon.png', 1, NULL, '2017-08-08 08:21:33', '2018-09-30 11:14:13', 0, 0, 'Mangalsutra+Rings+Jewellery.html'),
(12, 'resources/assets/images/category_images/1535718172.creative gold ear tops.JPG', 'resources/assets/images/category_icons/1538306082.jwellicon.png', 2, NULL, '2017-08-08 12:08:21', '2018-09-30 11:14:42', 1, 0, 'Drop+Earrings.html'),
(13, 'resources/assets/images/category_images/1535727674.1535718320.27014213_original.jpg', 'resources/assets/images/category_icons/1538306099.jwellicon.png', 2, NULL, '2017-08-08 12:09:58', '2018-09-30 11:15:06', 0, 0, 'Chandbali+Earrings.html'),
(14, 'resources/assets/images/category_images/1535727746.1535718205.gold_ear tops.1jpg.JPG', 'resources/assets/images/category_icons/1538306127.jwellicon.png', 2, NULL, '2017-08-08 12:11:31', '2018-09-30 11:15:27', 0, 0, 'zumka+Earrings.html'),
(15, 'resources/assets/images/category_images/1535718382.creative ear tops.3JPG.JPG', 'resources/assets/images/category_icons/1538306142.jwellicon.png', 2, NULL, '2017-08-08 12:13:47', '2018-09-30 11:15:42', 0, 0, 'Stud+Earrings.html'),
(16, 'resources/assets/images/category_images/1535718420.diamond.JPG', 'resources/assets/images/category_icons/1538306157.jwellicon.png', 5, NULL, '2017-08-09 07:24:20', '2018-09-30 11:15:57', 0, 0, 'Bracelets.html'),
(17, 'resources/assets/images/category_images/1535718459.gold_bangles.jpg.jpg', 'resources/assets/images/category_icons/1538306220.jwellicon.png', 5, NULL, '2017-08-09 08:32:44', '2018-09-30 11:17:00', 0, 0, 'Bangles.html'),
(18, 'resources/assets/images/category_images/1535718508.gold_bangles.1jpg.JPG', 'resources/assets/images/category_icons/1538306241.jwellicon.png', 5, NULL, '2017-08-09 10:09:53', '2018-09-30 11:17:21', 0, 0, 'Broad+Bangles.html'),
(19, 'resources/assets/images/category_images/1502288250.bed_col.jpg', 'resources/assets/images/category_icons/1502274677.modern-double-bed.png', 6, NULL, '2017-08-09 10:31:17', '2017-08-09 02:17:30', 0, 0, 'Bedding+Collections.html'),
(20, 'resources/assets/images/category_images/1502288368.pillows.jpg', 'resources/assets/images/category_icons/1502278859.pillow.png', 6, NULL, '2017-08-09 11:40:59', '2017-08-09 02:19:28', 0, 0, 'Throws+&+Pillows.html'),
(21, 'resources/assets/images/category_images/1502346394.bath_robe.jpg', 'resources/assets/images/category_icons/1502280642.bath-robe.png', 6, NULL, '2017-08-09 12:10:42', '2017-08-10 06:26:34', 0, 0, 'Bath+Robes.html'),
(22, 'resources/assets/images/category_images/1535718600.dfps-01-0030-1.jpg', 'resources/assets/images/category_icons/1538306260.jwellicon.png', 3, NULL, '2017-08-09 12:53:40', '2018-09-30 11:17:40', 0, 0, 'Casual+Pendants.html'),
(23, 'resources/assets/images/category_images/1535718638.the_jemima_pearl_drop_pendant_with_zircons_ppc000037-9fw.jpg', 'resources/assets/images/category_icons/1538306277.jwellicon.png', 3, NULL, '2017-08-09 12:54:12', '2018-09-30 11:17:57', 0, 0, 'Fashion+Pendants.html'),
(24, 'resources/assets/images/category_images/1535718703.31wL+y1EpML._SY300_QL70_.jpg', 'resources/assets/images/category_icons/1538306306.jwellicon.png', 3, NULL, '2017-08-09 12:55:34', '2018-09-30 11:18:26', 0, 0, 'Alphabet+Pendants.html'),
(25, 'resources/assets/images/category_images/1535718811.0013472_appealing-felicitated-pendant-900x900.jpeg', 'resources/assets/images/category_icons/1538306322.jwellicon.png', 3, NULL, '2017-08-09 12:56:23', '2018-09-30 11:18:42', 0, 0, 'Religious+Pendants.html'),
(26, 'resources/assets/images/category_images/1535718881.gold_temple necklace.jpg', 'resources/assets/images/category_icons/1538306456.jwellicon.png', 4, NULL, '2017-08-09 12:58:02', '2018-09-30 11:21:00', 0, 0, 'Long+Necklaces.html'),
(27, 'resources/assets/images/category_images/1535718981.gold_necklace.4jpg.jpg', 'resources/assets/images/category_icons/1538306479.jwellicon.png', 4, NULL, '2017-08-09 12:59:55', '2018-09-30 11:21:19', 0, 0, 'Short+Necklaces.html'),
(28, 'resources/assets/images/category_images/1535719067.US00112-2Y0000_1_lar.jpg', 'resources/assets/images/category_icons/1538306494.jwellicon.png', 4, NULL, '2017-08-09 01:01:46', '2018-09-30 11:21:34', 0, 0, 'Mangalsutra.html'),
(31, 'resources/assets/images/category_images/1535719127.creative neckles with tops.JPG', '', 0, NULL, '2018-07-26 07:08:16', '2018-09-29 01:48:04', 0, 1, 'Jewellery+Set.html'),
(35, 'resources/assets/images/category_images/1535719110.gold_necklace.3jpg.jpg', '', 31, NULL, '2018-08-02 06:07:20', '2018-08-31 12:38:30', 0, 0, 'Wedding+Sets.html'),
(36, 'resources/assets/images/category_images/1535720121.BV-R43_YAA18DIG6XXXXXXXX_ABCD00-PICS-00001-1024-16463.png', '', 7, NULL, '2018-08-31 12:55:21', NULL, 0, 0, 'Diamond+Engagement+Rings.html'),
(37, 'resources/assets/images/category_images/1535720200.Yellow_Gold_30_pointer_Solitaire_Ring_by_Suranas_Jewelove_1024x1024.jpg', '', 7, NULL, '2018-08-31 12:56:40', NULL, 0, 0, 'Engagement+Rings+For+Men.html'),
(38, 'resources/assets/images/category_images/1535720240.210_dhdomr11025_1w.jpg', '', 7, NULL, '2018-08-31 12:57:20', NULL, 0, 0, 'Engagement+Rings+For+Women.html'),
(39, 'resources/assets/images/category_images/1535720286.Selene-Solitaire-Engagement-Ring-in-Platinum_gi_1481_f-37295.jpg', '', 7, NULL, '2018-08-31 12:58:06', NULL, 0, 0, 'Solitaire+Engagement+Rings.html'),
(40, 'resources/assets/images/category_images/1535720620.UE04378-1Y00RS_1_lar.jpg', '', 15, NULL, '2018-08-31 01:03:40', NULL, 0, 0, 'Gold+Stud+Earrings.html'),
(41, 'resources/assets/images/category_images/1535720687.DIamond_Studs.jpg', '', 15, NULL, '2018-08-31 01:04:47', NULL, 0, 0, 'Diamond+Studs+and+Tops.html'),
(42, 'resources/assets/images/category_images/1535720769.rBVaJFjQk3-AdyDgAAGWqcSKf1I074.jpg', '', 16, NULL, '2018-08-31 01:06:09', NULL, 1, 0, 'Gold+Bracelets+For+Men.html'),
(43, 'resources/assets/images/category_images/1535720846.JT00292-YGP900_1_lar.jpg', '', 16, NULL, '2018-08-31 01:07:26', NULL, 0, 0, 'Gold+Bracelets+For+Women.html'),
(44, 'resources/assets/images/category_images/1535721052.51b4hftQrWL._UY395_.jpg', '', 17, NULL, '2018-08-31 01:10:13', '2018-08-31 01:10:52', 0, 0, 'Diamond+Bangles.html'),
(45, 'resources/assets/images/category_images/1535721250.hqdefault.jpg', '', 27, NULL, '2018-08-31 01:14:10', NULL, 0, 0, 'Diamond+Necklace.html'),
(46, 'resources/assets/images/category_images/1535721390.DTAN3257_1Y.jpg', '', 28, NULL, '2018-08-31 01:16:30', NULL, 0, 0, 'Diamond+Mangalsutra.html'),
(47, 'resources/assets/images/category_images/1535721708.5021100083019_m_1.jpg', '', 35, NULL, '2018-08-31 01:21:48', NULL, 0, 0, 'Wedding+Sets+For+Women.html'),
(51, 'resources/assets/images/category_images/1538047739.silver3.jpg', '', 50, NULL, '2018-09-27 11:28:59', NULL, 0, 0, 'Kalash.html'),
(56, '', '', 55, NULL, '2018-09-30 08:42:20', NULL, 0, 0, 'anniversary.html'),
(57, '', '', 55, NULL, '2018-09-30 08:42:33', NULL, 0, 0, 'birthday.html'),
(63, '', '', 55, NULL, '2018-09-30 08:44:12', NULL, 0, 0, 'Engagement.html'),
(64, '', '', 55, NULL, '2018-09-30 08:45:12', NULL, 0, 0, 'Marriage.html'),
(72, '', '', 55, NULL, '2018-09-30 08:58:42', NULL, 0, 0, 'SubTest.html'),
(73, '', '', 55, NULL, '2018-09-30 08:59:12', NULL, 0, 0, 'SubTest2.html'),
(74, '', '', 55, NULL, '2018-09-30 08:59:55', NULL, 0, 0, 'SubTest3.html'),
(75, '', '', 55, NULL, '2018-09-30 09:00:21', NULL, 0, 0, 'TestSub4.html'),
(78, '', '', 77, NULL, '2018-09-30 10:17:53', NULL, 0, 0, '24+KT+10GM.html'),
(79, '', '', 77, NULL, '2018-09-30 10:18:20', NULL, 0, 0, '24KT+15GM.html'),
(80, '', '', 77, NULL, '2018-09-30 10:18:41', NULL, 0, 0, '24KT+20GM.html'),
(81, '', '', 77, NULL, '2018-09-30 10:19:51', NULL, 0, 0, '24+KT+25GM.html'),
(82, 'resources/assets/images/category_images/1538305150.gold_coinbg.jpg', '', 0, NULL, '2018-09-30 10:51:30', '2018-09-30 10:59:10', 0, 1, 'GOLD+COINS.html'),
(84, 'resources/assets/images/category_images/1538306747.coin1.jpg', '', 82, NULL, '2018-09-30 11:24:28', '2018-09-30 11:25:47', 0, 0, '10GM(24KT).html'),
(86, 'resources/assets/images/category_images/1538306891.coin3.jpg', '', 82, NULL, '2018-09-30 11:28:11', NULL, 0, 0, '20GM(24KT).html'),
(87, 'resources/assets/images/category_images/1538306943.coin2.jpg', '', 82, NULL, '2018-09-30 11:29:03', NULL, 0, 0, '30GM(24KT).html'),
(89, '', '', 84, NULL, '2018-09-30 12:37:30', NULL, 0, 0, 'pure+gold.html'),
(90, '', '', 86, NULL, '2018-09-30 12:37:47', NULL, 0, 0, 'pure+gold.html'),
(91, '', '', 87, NULL, '2018-09-30 12:38:00', NULL, 0, 0, 'pure+gold.html'),
(92, '', '', 88, NULL, '2018-09-30 12:38:15', NULL, 0, 0, 'pure+gold.html'),
(93, '', '', 84, NULL, '2018-09-30 12:38:35', NULL, 0, 0, 'gold+coated.html'),
(94, '', '', 86, NULL, '2018-09-30 12:38:44', NULL, 0, 0, 'gold+coated.html'),
(95, '', '', 87, NULL, '2018-09-30 12:38:55', NULL, 0, 0, 'gold+coated.html'),
(96, '', '', 88, NULL, '2018-09-30 12:39:12', NULL, 0, 0, 'gold+coated.html'),
(97, '', '', 84, NULL, '2018-09-30 12:39:57', NULL, 0, 0, 'gold+coated+diamond.html'),
(98, '', '', 86, NULL, '2018-09-30 12:40:06', NULL, 0, 0, 'gold+coated+diamond.html'),
(99, '', '', 87, NULL, '2018-09-30 12:40:14', NULL, 0, 0, 'gold+coated+diamond.html'),
(100, '', '', 88, NULL, '2018-09-30 12:40:25', NULL, 0, 0, 'gold+coated+diamond.html'),
(101, 'resources/assets/images/category_images/1582973494.partner-06.png', 'resources/assets/images/category_icons/1582973494.icon-service-12.png', 0, NULL, '2020-02-29 10:51:33', NULL, 0, 1, 'kjkjkjk.html'),
(102, 'resources/assets/images/category_images/1582973634.icon-statis-01.png', '', 101, NULL, '2020-02-29 10:52:17', '2020-02-29 10:53:54', 0, 0, '.html');

-- --------------------------------------------------------

--
-- Table structure for table `categories_description`
--

CREATE TABLE `categories_description` (
  `categories_description_id` int(100) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories_description`
--

INSERT INTO `categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(1, 1, 1, 'Rings'),
(2, 1, 2, 'Mannen'),
(3, 1, 4, 'رجالي'),
(4, 2, 1, 'Earrings'),
(5, 2, 2, 'vrouw'),
(6, 2, 4, 'نساء'),
(7, 3, 1, 'Pendants'),
(8, 3, 2, 'Jongens'),
(9, 3, 4, 'أولاد'),
(10, 4, 1, 'Necklaces'),
(11, 4, 2, 'meisjes'),
(12, 4, 4, 'الفتيات'),
(13, 5, 1, 'Bangles & Bracelets'),
(14, 5, 2, 'Baby'),
(15, 5, 4, 'طفل'),
(19, 7, 1, 'Engagement Rings'),
(20, 7, 2, 'Mannen polo shirts'),
(21, 7, 4, 'الرجال قمصان بولو'),
(22, 8, 1, 'Couple Bands'),
(23, 8, 2, 'Mannen Casual Shirts'),
(24, 8, 4, 'الرجال قمصان عادية'),
(25, 9, 1, 'Casual Rings'),
(26, 9, 2, 'Mannen Jeans'),
(27, 9, 4, 'الرجال جينز'),
(28, 10, 1, 'Bridal Ring Sets'),
(29, 10, 2, 'Mannen schoenen'),
(30, 10, 4, 'احذية رجالية'),
(31, 11, 1, 'Mangalsutra Rings Jewellery'),
(32, 11, 2, 'Zonnebril & Bril'),
(33, 11, 4, 'النظارات الشمسية والنظارات'),
(34, 12, 1, 'Drop Earrings'),
(35, 12, 2, 'Vrouwen Jurken'),
(36, 12, 4, 'الفساتين'),
(37, 13, 1, 'Chandbali Earrings'),
(38, 13, 2, 'Vrouwen Shirts & Tops'),
(39, 13, 4, 'النساء قمصان، بلايز'),
(40, 14, 1, 'zumka Earrings'),
(41, 14, 2, 'Vrouwen Jeans'),
(42, 14, 4, 'المرأة جينز'),
(43, 15, 1, 'Stud Earrings'),
(44, 15, 2, 'Vrouwen Handtassen'),
(45, 15, 4, 'حقائب اليد للنساء'),
(46, 16, 1, 'Bracelets'),
(47, 16, 2, 'New Born'),
(48, 16, 4, 'مولود جديد'),
(49, 17, 1, 'Bangles'),
(50, 17, 2, 'Baby Jurken'),
(51, 17, 4, 'فساتين الطفل'),
(52, 18, 1, 'Broad Bangles'),
(53, 18, 2, 'Baby dekens & zwadels'),
(54, 18, 4, 'طفل بطانيات و سوادلز'),
(55, 19, 1, 'Bedding Collections'),
(56, 19, 2, 'Bedden collecties'),
(57, 19, 4, 'مجموعات الفراش'),
(58, 20, 1, 'Throws & Pillows'),
(59, 20, 2, 'Kussens & Kussens'),
(60, 20, 4, 'رمي ووسائد'),
(61, 21, 1, 'Bath Robes'),
(62, 21, 2, 'Badjassen'),
(63, 21, 4, 'حمام الجلباب'),
(64, 22, 1, 'Casual Pendants'),
(65, 22, 2, 'Jongen Polo shirts'),
(66, 22, 4, 'بوي، بولو، القمصان'),
(67, 23, 1, 'Fashion Pendants'),
(68, 23, 2, 'Jongen Casual Shirts'),
(69, 23, 4, 'بوي، عارضة، القمصان'),
(70, 24, 1, 'Alphabet Pendants'),
(71, 24, 2, 'Jongen Broek & Jeans'),
(72, 24, 4, 'الفتيان السراويل والجينز'),
(73, 25, 1, 'Religious Pendants'),
(74, 25, 2, 'Jongen Schoenen'),
(75, 25, 4, 'أحذية الولد'),
(76, 26, 1, 'Long Necklaces'),
(77, 26, 2, 'Jurken & Rompers'),
(78, 26, 4, 'فساتين والسروال القصير'),
(79, 27, 1, 'Short Necklaces'),
(80, 27, 2, 'Shorts & Rokken'),
(81, 27, 4, 'السراويل والتنانير'),
(82, 28, 1, 'Mangalsutra'),
(83, 28, 2, 'Truien'),
(84, 28, 4, 'البلوزات'),
(91, 31, 1, 'Jewellery Set'),
(92, 31, 2, 'Electronics'),
(93, 31, 4, 'Electronics'),
(103, 35, 1, 'Wedding Sets'),
(104, 36, 1, 'Diamond Engagement Rings'),
(105, 37, 1, 'Engagement Rings For Men'),
(106, 38, 1, 'Engagement Rings For Women'),
(107, 39, 1, 'Solitaire Engagement Rings'),
(108, 40, 1, 'Gold Stud Earrings'),
(109, 41, 1, 'Diamond Studs and Tops'),
(110, 42, 1, 'Gold Bracelets For Men'),
(111, 43, 1, 'Gold Bracelets For Women'),
(112, 44, 1, 'Diamond Bangles'),
(113, 45, 1, 'Diamond Necklace'),
(114, 46, 1, 'Diamond Mangalsutra'),
(115, 47, 1, 'Wedding Sets For Women'),
(119, 51, 1, 'Kalash'),
(124, 56, 1, 'anniversary'),
(125, 57, 1, 'birthday'),
(131, 63, 1, 'Engagement'),
(132, 64, 1, 'Marriage'),
(140, 72, 1, 'SubTest'),
(141, 73, 1, 'SubTest2'),
(142, 74, 1, 'SubTest3'),
(143, 75, 1, 'TestSub4'),
(146, 78, 1, '24 KT 10GM'),
(147, 79, 1, '24KT 15GM'),
(148, 80, 1, '24KT 20GM'),
(149, 81, 1, '24 KT 25GM'),
(150, 82, 1, 'GOLD COINS'),
(152, 84, 1, '10GM(24KT)'),
(154, 86, 1, '20GM(24KT)'),
(155, 87, 1, '30GM(24KT)'),
(157, 89, 1, 'pure gold'),
(158, 90, 1, 'pure gold'),
(159, 91, 1, 'pure gold'),
(160, 92, 1, 'pure gold'),
(161, 93, 1, 'gold coated'),
(162, 94, 1, 'gold coated'),
(163, 95, 1, 'gold coated'),
(164, 96, 1, 'gold coated'),
(165, 97, 1, 'gold coated diamond'),
(166, 98, 1, 'gold coated diamond'),
(167, 99, 1, 'gold coated diamond'),
(168, 100, 1, 'gold coated diamond'),
(169, 101, 1, 'kjkjkjk'),
(170, 102, 1, 'lllll');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1),
(2, 'Albania', 'AL', 'ALB', 1),
(3, 'Algeria', 'DZ', 'DZA', 1),
(4, 'American Samoa', 'AS', 'ASM', 1),
(5, 'Andorra', 'AD', 'AND', 1),
(6, 'Angola', 'AO', 'AGO', 1),
(7, 'Anguilla', 'AI', 'AIA', 1),
(8, 'Antarctica', 'AQ', 'ATA', 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1),
(10, 'Argentina', 'AR', 'ARG', 1),
(11, 'Armenia', 'AM', 'ARM', 1),
(12, 'Aruba', 'AW', 'ABW', 1),
(13, 'Australia', 'AU', 'AUS', 1),
(14, 'Austria', 'AT', 'AUT', 5),
(15, 'Azerbaijan', 'AZ', 'AZE', 1),
(16, 'Bahamas', 'BS', 'BHS', 1),
(17, 'Bahrain', 'BH', 'BHR', 1),
(18, 'Bangladesh', 'BD', 'BGD', 1),
(19, 'Barbados', 'BB', 'BRB', 1),
(20, 'Belarus', 'BY', 'BLR', 1),
(21, 'Belgium', 'BE', 'BEL', 1),
(22, 'Belize', 'BZ', 'BLZ', 1),
(23, 'Benin', 'BJ', 'BEN', 1),
(24, 'Bermuda', 'BM', 'BMU', 1),
(25, 'Bhutan', 'BT', 'BTN', 1),
(26, 'Bolivia', 'BO', 'BOL', 1),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1),
(28, 'Botswana', 'BW', 'BWA', 1),
(29, 'Bouvet Island', 'BV', 'BVT', 1),
(30, 'Brazil', 'BR', 'BRA', 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1),
(33, 'Bulgaria', 'BG', 'BGR', 1),
(34, 'Burkina Faso', 'BF', 'BFA', 1),
(35, 'Burundi', 'BI', 'BDI', 1),
(36, 'Cambodia', 'KH', 'KHM', 1),
(37, 'Cameroon', 'CM', 'CMR', 1),
(38, 'Canada', 'CA', 'CAN', 1),
(39, 'Cape Verde', 'CV', 'CPV', 1),
(40, 'Cayman Islands', 'KY', 'CYM', 1),
(41, 'Central African Republic', 'CF', 'CAF', 1),
(42, 'Chad', 'TD', 'TCD', 1),
(43, 'Chile', 'CL', 'CHL', 1),
(44, 'China', 'CN', 'CHN', 1),
(45, 'Christmas Island', 'CX', 'CXR', 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1),
(47, 'Colombia', 'CO', 'COL', 1),
(48, 'Comoros', 'KM', 'COM', 1),
(49, 'Congo', 'CG', 'COG', 1),
(50, 'Cook Islands', 'CK', 'COK', 1),
(51, 'Costa Rica', 'CR', 'CRI', 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 1),
(53, 'Croatia', 'HR', 'HRV', 1),
(54, 'Cuba', 'CU', 'CUB', 1),
(55, 'Cyprus', 'CY', 'CYP', 1),
(56, 'Czech Republic', 'CZ', 'CZE', 1),
(57, 'Denmark', 'DK', 'DNK', 1),
(58, 'Djibouti', 'DJ', 'DJI', 1),
(59, 'Dominica', 'DM', 'DMA', 1),
(60, 'Dominican Republic', 'DO', 'DOM', 1),
(61, 'East Timor', 'TP', 'TMP', 1),
(62, 'Ecuador', 'EC', 'ECU', 1),
(63, 'Egypt', 'EG', 'EGY', 1),
(64, 'El Salvador', 'SV', 'SLV', 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1),
(66, 'Eritrea', 'ER', 'ERI', 1),
(67, 'Estonia', 'EE', 'EST', 1),
(68, 'Ethiopia', 'ET', 'ETH', 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1),
(70, 'Faroe Islands', 'FO', 'FRO', 1),
(71, 'Fiji', 'FJ', 'FJI', 1),
(72, 'Finland', 'FI', 'FIN', 1),
(73, 'France', 'FR', 'FRA', 1),
(74, 'France, Metropolitan', 'FX', 'FXX', 1),
(75, 'French Guiana', 'GF', 'GUF', 1),
(76, 'French Polynesia', 'PF', 'PYF', 1),
(77, 'French Southern Territories', 'TF', 'ATF', 1),
(78, 'Gabon', 'GA', 'GAB', 1),
(79, 'Gambia', 'GM', 'GMB', 1),
(80, 'Georgia', 'GE', 'GEO', 1),
(81, 'Germany', 'DE', 'DEU', 5),
(82, 'Ghana', 'GH', 'GHA', 1),
(83, 'Gibraltar', 'GI', 'GIB', 1),
(84, 'Greece', 'GR', 'GRC', 1),
(85, 'Greenland', 'GL', 'GRL', 1),
(86, 'Grenada', 'GD', 'GRD', 1),
(87, 'Guadeloupe', 'GP', 'GLP', 1),
(88, 'Guam', 'GU', 'GUM', 1),
(89, 'Guatemala', 'GT', 'GTM', 1),
(90, 'Guinea', 'GN', 'GIN', 1),
(91, 'Guinea-bissau', 'GW', 'GNB', 1),
(92, 'Guyana', 'GY', 'GUY', 1),
(93, 'Haiti', 'HT', 'HTI', 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1),
(95, 'Honduras', 'HN', 'HND', 1),
(96, 'Hong Kong', 'HK', 'HKG', 1),
(97, 'Hungary', 'HU', 'HUN', 1),
(98, 'Iceland', 'IS', 'ISL', 1),
(99, 'India', 'IN', 'IND', 1),
(100, 'Indonesia', 'ID', 'IDN', 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1),
(102, 'Iraq', 'IQ', 'IRQ', 1),
(103, 'Ireland', 'IE', 'IRL', 1),
(104, 'Israel', 'IL', 'ISR', 1),
(105, 'Italy', 'IT', 'ITA', 1),
(106, 'Jamaica', 'JM', 'JAM', 1),
(107, 'Japan', 'JP', 'JPN', 1),
(108, 'Jordan', 'JO', 'JOR', 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1),
(110, 'Kenya', 'KE', 'KEN', 1),
(111, 'Kiribati', 'KI', 'KIR', 1),
(112, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', 1),
(113, 'Korea, Republic of', 'KR', 'KOR', 1),
(114, 'Kuwait', 'KW', 'KWT', 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 1),
(117, 'Latvia', 'LV', 'LVA', 1),
(118, 'Lebanon', 'LB', 'LBN', 1),
(119, 'Lesotho', 'LS', 'LSO', 1),
(120, 'Liberia', 'LR', 'LBR', 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1),
(122, 'Liechtenstein', 'LI', 'LIE', 1),
(123, 'Lithuania', 'LT', 'LTU', 1),
(124, 'Luxembourg', 'LU', 'LUX', 1),
(125, 'Macau', 'MO', 'MAC', 1),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1),
(127, 'Madagascar', 'MG', 'MDG', 1),
(128, 'Malawi', 'MW', 'MWI', 1),
(129, 'Malaysia', 'MY', 'MYS', 1),
(130, 'Maldives', 'MV', 'MDV', 1),
(131, 'Mali', 'ML', 'MLI', 1),
(132, 'Malta', 'MT', 'MLT', 1),
(133, 'Marshall Islands', 'MH', 'MHL', 1),
(134, 'Martinique', 'MQ', 'MTQ', 1),
(135, 'Mauritania', 'MR', 'MRT', 1),
(136, 'Mauritius', 'MU', 'MUS', 1),
(137, 'Mayotte', 'YT', 'MYT', 1),
(138, 'Mexico', 'MX', 'MEX', 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1),
(141, 'Monaco', 'MC', 'MCO', 1),
(142, 'Mongolia', 'MN', 'MNG', 1),
(143, 'Montserrat', 'MS', 'MSR', 1),
(144, 'Morocco', 'MA', 'MAR', 1),
(145, 'Mozambique', 'MZ', 'MOZ', 1),
(146, 'Myanmar', 'MM', 'MMR', 1),
(147, 'Namibia', 'NA', 'NAM', 1),
(148, 'Nauru', 'NR', 'NRU', 1),
(149, 'Nepal', 'NP', 'NPL', 1),
(150, 'Netherlands', 'NL', 'NLD', 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1),
(152, 'New Caledonia', 'NC', 'NCL', 1),
(153, 'New Zealand', 'NZ', 'NZL', 1),
(154, 'Nicaragua', 'NI', 'NIC', 1),
(155, 'Niger', 'NE', 'NER', 1),
(156, 'Nigeria', 'NG', 'NGA', 1),
(157, 'Niue', 'NU', 'NIU', 1),
(158, 'Norfolk Island', 'NF', 'NFK', 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1),
(160, 'Norway', 'NO', 'NOR', 1),
(161, 'Oman', 'OM', 'OMN', 1),
(162, 'Pakistan', 'PK', 'PAK', 1),
(163, 'Palau', 'PW', 'PLW', 1),
(164, 'Panama', 'PA', 'PAN', 1),
(165, 'Papua New Guinea', 'PG', 'PNG', 1),
(166, 'Paraguay', 'PY', 'PRY', 1),
(167, 'Peru', 'PE', 'PER', 1),
(168, 'Philippines', 'PH', 'PHL', 1),
(169, 'Pitcairn', 'PN', 'PCN', 1),
(170, 'Poland', 'PL', 'POL', 1),
(171, 'Portugal', 'PT', 'PRT', 1),
(172, 'Puerto Rico', 'PR', 'PRI', 1),
(173, 'Qatar', 'QA', 'QAT', 1),
(174, 'Reunion', 'RE', 'REU', 1),
(175, 'Romania', 'RO', 'ROM', 1),
(176, 'Russian Federation', 'RU', 'RUS', 1),
(177, 'Rwanda', 'RW', 'RWA', 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1),
(179, 'Saint Lucia', 'LC', 'LCA', 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1),
(181, 'Samoa', 'WS', 'WSM', 1),
(182, 'San Marino', 'SM', 'SMR', 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1),
(184, 'Saudi Arabia', 'SA', 'SAU', 1),
(185, 'Senegal', 'SN', 'SEN', 1),
(186, 'Seychelles', 'SC', 'SYC', 1),
(187, 'Sierra Leone', 'SL', 'SLE', 1),
(188, 'Singapore', 'SG', 'SGP', 4),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1),
(190, 'Slovenia', 'SI', 'SVN', 1),
(191, 'Solomon Islands', 'SB', 'SLB', 1),
(192, 'Somalia', 'SO', 'SOM', 1),
(193, 'South Africa', 'ZA', 'ZAF', 1),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1),
(195, 'Spain', 'ES', 'ESP', 3),
(196, 'Sri Lanka', 'LK', 'LKA', 1),
(197, 'St. Helena', 'SH', 'SHN', 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1),
(199, 'Sudan', 'SD', 'SDN', 1),
(200, 'Suriname', 'SR', 'SUR', 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1),
(202, 'Swaziland', 'SZ', 'SWZ', 1),
(203, 'Sweden', 'SE', 'SWE', 1),
(204, 'Switzerland', 'CH', 'CHE', 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1),
(206, 'Taiwan', 'TW', 'TWN', 1),
(207, 'Tajikistan', 'TJ', 'TJK', 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1),
(209, 'Thailand', 'TH', 'THA', 1),
(210, 'Togo', 'TG', 'TGO', 1),
(211, 'Tokelau', 'TK', 'TKL', 1),
(212, 'Tonga', 'TO', 'TON', 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1),
(214, 'Tunisia', 'TN', 'TUN', 1),
(215, 'Turkey', 'TR', 'TUR', 1),
(216, 'Turkmenistan', 'TM', 'TKM', 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1),
(218, 'Tuvalu', 'TV', 'TUV', 1),
(219, 'Uganda', 'UG', 'UGA', 1),
(220, 'Ukraine', 'UA', 'UKR', 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 1),
(222, 'United Kingdom', 'GB', 'GBR', 1),
(223, 'United States', 'US', 'USA', 2),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1),
(225, 'Uruguay', 'UY', 'URY', 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 1),
(227, 'Vanuatu', 'VU', 'VUT', 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1),
(229, 'Venezuela', 'VE', 'VEN', 1),
(230, 'Viet Nam', 'VN', 'VNM', 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1),
(234, 'Western Sahara', 'EH', 'ESH', 1),
(235, 'Yemen', 'YE', 'YEM', 1),
(236, 'Yugoslavia', 'YU', 'YUG', 1),
(237, 'Zaire', 'ZR', 'ZAR', 1),
(238, 'Zambia', 'ZM', 'ZMB', 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupans_id` int(100) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Options: fixed_cart, percent, fixed_product and percent_product. Default: fixed_cart.',
  `amount` int(11) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `usage_count` int(100) DEFAULT '0',
  `individual_use` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exclude_product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(100) DEFAULT NULL,
  `usage_limit_per_user` int(100) DEFAULT NULL,
  `limit_usage_to_x_items` int(100) NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exclude_sale_items` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount` decimal(10,2) DEFAULT NULL,
  `maximum_amount` decimal(10,2) DEFAULT NULL,
  `email_restrictions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `used_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupans_id`, `code`, `date_created`, `date_modified`, `description`, `discount_type`, `amount`, `expiry_date`, `usage_count`, `individual_use`, `product_ids`, `exclude_product_ids`, `usage_limit`, `usage_limit_per_user`, `limit_usage_to_x_items`, `free_shipping`, `product_categories`, `excluded_product_categories`, `exclude_sale_items`, `minimum_amount`, `maximum_amount`, `email_restrictions`, `used_by`) VALUES
(3, 'PercentProduct_10', '2017-12-11 12:19:37', NULL, 'For All Products', 'percent_product', 10, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, 0, 0, '', '', 0, '0.00', '0.00', '', ''),
(4, 'FixedProduct_10', '2017-12-11 12:20:18', NULL, 'For All Products', 'fixed_product', 10, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, 0, 0, '', '', 0, '0.00', '0.00', '', ''),
(5, 'PercentCart_10', '2017-12-11 12:20:57', NULL, 'For All Products', 'percent', 10, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, 0, 0, '', '', 0, '0.00', '0.00', '', ''),
(6, 'FixedCart_10', '2017-12-11 12:21:20', NULL, 'For All Products', 'fixed_cart', 10, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, 0, 0, '', '', 0, '0.00', '0.00', '', ''),
(7, 'SingleCoupon_50', '2017-12-11 12:22:08', NULL, 'Individual Use', 'fixed_cart', 50, '2030-01-01 00:00:00', 0, 1, '', '', 0, 0, 0, 0, '', '', 0, '0.00', '0.00', '', ''),
(8, 'FreeShipping_20', '2017-12-11 12:22:46', NULL, 'Free Shipping', 'fixed_cart', 20, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, 0, 1, '', '', 0, '0.00', '0.00', '', ''),
(9, 'ExcludeSale_15', '2017-12-11 12:23:28', NULL, 'Not for Sale Items', 'fixed_cart', 15, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, 0, 0, '', '', 1, '0.00', '0.00', '', ''),
(10, 'Exclude_Shoes_25', '2017-12-11 12:25:16', NULL, 'Not For Men Shoes', 'fixed_cart', 25, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, 0, 0, '', '10,10,10', 0, '0.00', '0.00', '', ''),
(11, 'Polo_Shirts_10', '2017-12-11 12:26:14', NULL, 'For Men Polo Shirts', 'percent_product', 10, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, 0, 0, '7,7,7', '', 0, '0.00', '0.00', '', ''),
(12, 'Jeans_10', '2017-12-11 12:27:09', NULL, 'For Men Jeans', 'percent', 10, '2030-01-01 00:00:00', 0, 0, '', '', 0, 0, 0, 0, '9,9,9', '', 0, '0.00', '0.00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `currencies_id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` float(13,8) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`currencies_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `value`, `last_updated`) VALUES
(1, 'U.S. Dollar', 'USD', '$', NULL, '.', '.', '2', NULL, '2017-02-09 00:00:00'),
(2, 'Euro', 'EUR', NULL, '€', '.', '.', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `customers_gender` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `customers_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_default_address_id` int(11) DEFAULT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `customers_newsletter` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `fb_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_picture` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(100) NOT NULL,
  `updated_at` int(100) NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customers_id`, `customers_gender`, `customers_firstname`, `customers_lastname`, `customers_dob`, `customers_email_address`, `user_name`, `customers_default_address_id`, `customers_telephone`, `customers_fax`, `customers_password`, `customers_newsletter`, `isActive`, `fb_id`, `google_id`, `customers_picture`, `created_at`, `updated_at`, `is_seen`) VALUES
(1, '1', 'Gangadhar', 'Swami', '14/11/1995', 'swami@gmail.com', '', NULL, '8087780305', '', '123456', NULL, 1, NULL, NULL, 'resources/views/App/images/home/jewelry2/t1.jpg', 1532085989, 0, 1),
(2, '1', 'Sagar', 'Swami', '27/11/1997', 'sagar@gmail.com', '', NULL, '1234569871', '', 'sagar123', NULL, 1, NULL, NULL, 'resources/assets/images/user_profile/1537345997.t1.jpg', 1537345997, 0, 1),
(4, '0', 'Namrata', 'Deshmukh', '', 'namratadeshmukhcse@gmail.com', '', NULL, '8830648432', NULL, 'Namrata', NULL, 1, NULL, NULL, 'resources/assets/images/user_profile/1538295536.user.png', 1538295536, 0, 1),
(5, '1', 'Baliram', 'Kore', '', 'baliram.kore@oriange.in', '', NULL, '9764222989', '', '11111', NULL, 1, NULL, NULL, 'resources/assets/images/user_profile/default_user.svg', 1538296607, 0, 1),
(6, '0', 'samreen', 'shaikh', '', 'jebashaikh@gmail.com', '', 0, '7563214569', NULL, 'samreen', NULL, 1, NULL, NULL, 'resources/assets/images/user_profile/1540878636.flowers2.jpg', 1540878636, 0, 0),
(7, '0', '', '', '', '', '', NULL, '', NULL, '', NULL, 1, NULL, NULL, 'resources/assets/images/user_profile/default_user.svg', 1540964474, 0, 0),
(8, '0', 'shireen', 'shaikh', '', 'aaa@gmail.com', '', NULL, '7788994455', NULL, '1111', NULL, 1, NULL, NULL, 'resources/assets/images/user_profile/default_user.svg', 1541098072, 0, 0),
(9, '0', 'ganga', 'swami', '', 'swamiganga19@gmail.com', '', NULL, '8888888', NULL, '1111', NULL, 1, NULL, NULL, 'resources/assets/images/user_profile/default_user.svg', 1551185561, 0, 0),
(10, '0', 'saba', 'bagwan', '', 'sababagwan01@gmail.com', '', 0, '8180012531', NULL, '1111', NULL, 1, NULL, NULL, 'resources/assets/images/user_profile/default_user.svg', 1583130026, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket`
--

CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `customers_basket_quantity` int(2) NOT NULL,
  `final_price` decimal(15,4) DEFAULT NULL,
  `customers_basket_date_added` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_order` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_basket`
--

INSERT INTO `customers_basket` (`customers_basket_id`, `customers_id`, `products_id`, `customers_basket_quantity`, `final_price`, `customers_basket_date_added`, `is_order`) VALUES
(4, 4, '19', 1, '48113.0000', '2018-09-', 0),
(5, 4, '18', 1, '158625.0000', '2018-09-', 0),
(16, 5, '36', 1, '310000.0000', '2018-09-', 0),
(25, 1, '22', 1, '22500.0000', '2018-11-', 0),
(27, 10, '7', 1, '22814.0000', '2020-03-', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket_attributes`
--

CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL,
  `customers_basket_id` int(100) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_basket_attributes`
--

INSERT INTO `customers_basket_attributes` (`customers_basket_attributes_id`, `customers_basket_id`, `customers_id`, `products_id`, `products_options_id`, `products_options_values_id`) VALUES
(2, 4, 4, '19', 4, 232),
(3, 5, 4, '18', 4, 230),
(14, 16, 5, '36', 13, 147),
(23, 25, 1, '22', 13, 153),
(25, 27, 10, '7', 4, 236);

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(5) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_info`
--

INSERT INTO `customers_info` (`customers_info_id`, `customers_info_date_of_last_logon`, `customers_info_number_of_logons`, `customers_info_date_account_created`, `customers_info_date_account_last_modified`, `global_product_notifications`) VALUES
(1, '2018-11-12 06:35:04', 51, '2018-09-26 06:50:09', NULL, 1),
(5, '2018-09-30 10:49:01', 4, '2018-09-30 09:26:06', NULL, 1),
(6, '2018-10-31 12:07:17', 1, '2018-10-31 12:07:17', NULL, 1),
(10, '2020-03-02 11:33:17', 2, '2020-03-02 10:17:56', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(100) NOT NULL,
  `device_id` text COLLATE utf8_unicode_ci NOT NULL,
  `customers_id` int(100) NOT NULL DEFAULT '0',
  `device_type` text COLLATE utf8_unicode_ci NOT NULL,
  `register_date` int(100) NOT NULL DEFAULT '0',
  `update_date` int(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `isDesktop` tinyint(1) NOT NULL DEFAULT '0',
  `onesignal` tinyint(1) NOT NULL DEFAULT '0',
  `isEnableMobile` tinyint(1) NOT NULL DEFAULT '1',
  `isEnableDesktop` tinyint(1) NOT NULL DEFAULT '1',
  `ram` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processor` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_os` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_notify` tinyint(1) NOT NULL DEFAULT '1',
  `fcm` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` varchar(600) NOT NULL,
  `answer` text NOT NULL,
  `group_name` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `group_name`) VALUES
(3, 'Actions available for scheduled events', 'Visit Scheduler>>Add Scheduler. The mandatory fields are Description, Frequency and Start date. The additional optional fields are Department, End Date, Link for action, document upload section, Type of scheduler etc.', '12'),
(6, 'How to create a scheduler?', 'Visit Scheduler>>Add Scheduler. The mandatory fields are Description, Frequency and Start date. The additional optional fields are Department, End Date, Link for action, document upload section, Type of scheduler etc.', '11');

-- --------------------------------------------------------

--
-- Table structure for table `fedex_shipping`
--

CREATE TABLE `fedex_shipping` (
  `fedex_id` int(100) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_height` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_width` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `person_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_package` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fedex_shipping`
--

INSERT INTO `fedex_shipping` (`fedex_id`, `title`, `user_name`, `password`, `parcel_height`, `parcel_width`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`) VALUES
(1, 'FedEx', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `flate_rate`
--

CREATE TABLE `flate_rate` (
  `id` int(100) NOT NULL,
  `flate_rate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flate_rate`
--

INSERT INTO `flate_rate` (`id`, `flate_rate`, `currency`) VALUES
(1, '10', 'Rs');

-- --------------------------------------------------------

--
-- Table structure for table `geo_zones`
--

CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL,
  `geo_zone_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `geo_zone_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `geo_zones`
--

INSERT INTO `geo_zones` (`geo_zone_id`, `geo_zone_name`, `geo_zone_description`, `last_modified`, `date_added`) VALUES
(1, 'Florida', 'Florida local sales tax zone', '2017-01-10 00:00:00', '2017-01-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `group_name`
--

CREATE TABLE `group_name` (
  `id` int(11) NOT NULL,
  `g_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_name`
--

INSERT INTO `group_name` (`id`, `g_name`) VALUES
(10, ' Windows'),
(11, 'Office'),
(12, 'admin'),
(13, 'trident');

-- --------------------------------------------------------

--
-- Table structure for table `hula_our_infos`
--

CREATE TABLE `hula_our_infos` (
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `label_id` int(100) NOT NULL,
  `label_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`label_id`, `label_name`) VALUES
(2, 'Creating an account means you’re okay with shopify\'s Terms of Service, Privacy Policy'),
(1031, 'Home'),
(1, 'I\'ve forgotten my password?'),
(1030, 'Menu'),
(1029, 'Clear'),
(1028, 'Apply'),
(1027, 'Close'),
(1026, 'Price Range'),
(1025, 'Filters'),
(1024, 'My Wish List'),
(1023, 'Log Out'),
(1022, 'Please login or create an account for free'),
(1021, 'Login & Register'),
(1020, 'Save Address'),
(1018, 'State'),
(1019, 'Update Address'),
(1017, 'Post code'),
(1016, 'City'),
(1015, 'Zone'),
(1014, 'other'),
(1013, 'Country'),
(1012, 'Shipping Address'),
(1011, 'Proceed'),
(1010, 'Remove'),
(1008, 'by'),
(1009, 'View'),
(1007, 'Quantity'),
(1006, 'Price'),
(1005, 'continue shopping'),
(1004, 'Your cart is empty'),
(1003, 'My Cart'),
(1002, 'Continue'),
(1001, 'Error: invalid cvc number!'),
(1000, 'Error: invalid expiry date!'),
(999, 'Error: invalid card number!'),
(998, 'Expiration'),
(997, 'Expiration Date'),
(996, 'Card Number'),
(995, 'Payment'),
(994, 'Order Notes'),
(993, 'Shipping Cost'),
(992, 'Tax'),
(991, 'Products Price'),
(990, 'SubTotal'),
(989, 'Products'),
(988, 'Shipping Method'),
(987, 'Billing Address'),
(986, 'Order'),
(985, 'Next'),
(984, 'Same as Shipping Address'),
(981, 'Billing Info'),
(982, 'Address'),
(983, 'Phone'),
(980, 'Already Memeber?'),
(979, 'Last Name'),
(978, 'First Name'),
(977, 'Create an Account'),
(976, 'Add new Address'),
(975, 'Please add your new shipping address for the futher processing of the your order'),
(969, 'Order Status'),
(970, 'Orders ID'),
(971, 'Product Price'),
(972, 'No. of Products'),
(973, 'Date'),
(974, 'Customer Address'),
(968, 'Customer Orders'),
(967, 'Change Password'),
(966, 'New Password'),
(965, 'Current Password'),
(964, 'Update'),
(963, 'Date of Birth'),
(962, 'Mobile'),
(961, 'My Account'),
(960, 'Likes'),
(959, 'newest'),
(958, 'top seller'),
(957, 'special'),
(956, 'most liked'),
(955, 'Cancel'),
(954, 'Sort Products'),
(953, 'Special Products'),
(952, 'Price : low - high'),
(951, 'Price : high - low'),
(950, 'Z - A'),
(949, 'A - Z'),
(948, 'All'),
(947, 'Explore More'),
(946, 'Note to the buyer'),
(945, 'Coupon'),
(944, 'coupon code'),
(943, 'Coupon Amount'),
(942, 'Coupon Code'),
(941, 'Food Categories'),
(940, 'Recipe of Day'),
(939, 'Top Dishes'),
(938, 'Skip'),
(937, 'Term and Services'),
(936, 'Privacy Policy'),
(935, 'Refund Policy'),
(934, 'Newest'),
(933, 'OUT OF STOCK'),
(932, 'Select Language'),
(931, 'Reset'),
(930, 'Shop'),
(929, 'Settings'),
(928, 'Enter keyword'),
(927, 'News'),
(926, 'Top Sellers'),
(925, 'Go Back'),
(924, 'Word Press Post Detail'),
(923, 'Explore'),
(922, 'Continue Adding'),
(921, 'Your wish List is empty'),
(920, 'Favourite'),
(919, 'Continue Shopping'),
(918, 'My Orders'),
(917, 'Thank you for shopping with us.'),
(916, 'Thank You'),
(915, 'Shipping method'),
(914, 'Sub Categories'),
(913, 'Main Categories'),
(912, 'Search'),
(911, 'Reset Filters'),
(910, 'No Products Found'),
(909, 'OFF'),
(908, 'Techincal details'),
(907, 'Product Description'),
(906, 'ADD TO CART'),
(905, 'Add to Cart'),
(904, 'In Stock'),
(903, 'Out of Stock'),
(902, 'New'),
(901, 'Product Details'),
(900, 'Shipping'),
(899, 'Sub Total'),
(898, 'Total'),
(897, 'Price Detail'),
(896, 'Order Detail'),
(895, 'Got It!'),
(894, 'Skip Intro'),
(893, 'Intro'),
(892, 'REMOVE'),
(891, 'Deals'),
(890, 'All Categories'),
(889, 'Most Liked'),
(888, 'Special Deals'),
(887, 'Top Seller'),
(886, 'Products are available.'),
(885, 'Recently Viewed'),
(884, 'Please connect to the internet'),
(881, 'Contact Us'),
(882, 'Name'),
(883, 'Your Messsage'),
(880, 'Categories'),
(879, 'About Us'),
(878, 'Send'),
(877, 'Forgot Password'),
(876, 'Register'),
(875, 'Password'),
(874, 'Email'),
(873, 'or'),
(872, 'Login with'),
(1033, 'Creating an account means you’re okay with our'),
(1034, 'Login');

-- --------------------------------------------------------

--
-- Table structure for table `label_value`
--

CREATE TABLE `label_value` (
  `label_value_id` int(100) NOT NULL,
  `label_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(100) NOT NULL,
  `label_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `label_value`
--

INSERT INTO `label_value` (`label_value_id`, `label_value`, `language_id`, `label_id`) VALUES
(1372, 'Most Liked', 1, 956),
(1371, 'Special', 1, 957),
(1370, 'Top Seller', 1, 958),
(1369, 'Newest ', 1, 959),
(1368, 'Likes', 1, 960),
(1366, 'Mobile', 1, 962),
(1367, 'My Account', 1, 961),
(1365, 'Date of Birth', 1, 963),
(1364, 'Update', 1, 964),
(1355, 'Orders ID', 1, 970),
(1356, 'Product Price', 1, 971),
(1357, 'No. of Products', 1, 972),
(1358, 'Date', 1, 973),
(1359, 'Customer Address', 1, 974),
(1360, 'Customer Orders', 1, 968),
(1361, 'Change Password', 1, 967),
(1362, 'New Password', 1, 966),
(1363, 'Current Password', 1, 965),
(1354, 'Order Status', 1, 969),
(1353, 'Please add your new shipping address for the futher processing of the your order', 1, 975),
(1352, 'Add new Address', 1, 976),
(1351, 'Create an Account', 1, 977),
(1350, 'First Name', 1, 978),
(1349, 'Last Name', 1, 979),
(1348, 'Already Memeber?', 1, 980),
(1341, 'Billing Address', 1, 987),
(1342, 'Order', 1, 986),
(1343, 'Next', 1, 985),
(1344, 'Same as Shipping Address', 1, 984),
(1345, 'Billing Info', 1, 981),
(1346, 'Address', 1, 982),
(1347, 'Phone', 1, 983),
(1339, 'Products', 1, 989),
(1340, 'Shipping Method', 1, 988),
(1334, 'Order Notes', 1, 994),
(1335, 'Shipping Cost', 1, 993),
(1336, 'Tax', 1, 992),
(1337, 'Products Price', 1, 991),
(1338, 'SubTotal', 1, 990),
(1333, 'Payment', 1, 995),
(1332, 'Card Number', 1, 996),
(1331, 'Expiration Date', 1, 997),
(1330, 'Expiration', 1, 998),
(1329, 'Error: invalid card number!', 1, 999),
(1328, 'Error: invalid expiry date!', 1, 1000),
(1327, 'Error: invalid cvc number!', 1, 1001),
(1326, 'Continue', 1, 1002),
(1325, 'My Cart', 1, 1003),
(1324, 'Your cart is empty', 1, 1004),
(1323, 'continue shopping', 1, 1005),
(1322, 'Price', 1, 1006),
(1318, 'Remove', 1, 1010),
(1319, 'by', 1, 1008),
(1320, 'View', 1, 1009),
(1321, 'Quantity', 1, 1007),
(1317, 'Proceed', 1, 1011),
(1315, 'Country', 1, 1013),
(1316, 'Shipping Address', 1, 1012),
(1313, 'Zone', 1, 1015),
(1314, 'other', 1, 1014),
(1311, 'Post code', 1, 1017),
(1312, 'City', 1, 1016),
(1309, 'State', 1, 1018),
(1310, 'Update Address', 1, 1019),
(1307, 'login & Register', 1, 1021),
(1308, 'Save Address', 1, 1020),
(1306, 'Please login or create an account for free', 1, 1022),
(1305, 'Log Out', 1, 1023),
(1304, 'My Wish List', 1, 1024),
(1303, 'Filters', 1, 1025),
(1302, 'Price Range', 1, 1026),
(1301, 'Close', 1, 1027),
(1299, 'Clear', 1, 1029),
(1300, 'Apply', 1, 1028),
(1298, 'Menu', 1, 1030),
(1297, 'Home', 1, 1031),
(1296, 'Einloggen mit', 2, 872),
(1295, 'oder', 2, 873),
(1294, 'Email', 2, 874),
(1293, 'Passwort', 2, 875),
(1292, 'Neu registrieren', 2, 876),
(1291, 'Passwort vergessen', 2, 877),
(1290, 'Senden', 2, 878),
(1289, 'Über uns', 2, 879),
(1288, 'Kategorien', 2, 880),
(1287, 'Deine Nachricht', 2, 883),
(1286, 'Name', 2, 882),
(1285, 'Kontaktiere uns', 2, 881),
(1284, 'Bitte wenden Sie sich an das Internet', 2, 884),
(1280, 'Besondere Angebote', 2, 888),
(1281, 'Oben Verkäufer', 2, 887),
(1282, 'Produkte sind verfügbar.', 2, 886),
(1283, 'zuletzt angesehen', 2, 885),
(1279, 'Am meisten gemocht', 2, 889),
(1273, 'Ich habs!', 2, 895),
(1274, 'Intro überspringen', 2, 894),
(1275, 'Intro', 2, 893),
(1276, 'ENTFERNEN', 2, 892),
(1277, 'Angebote', 2, 891),
(1278, 'Alle Kategorien', 2, 890),
(1271, 'Preis Detail', 2, 897),
(1272, 'Bestelldetails', 2, 896),
(1267, 'Produktdetails', 2, 901),
(1268, 'Versand', 2, 900),
(1269, 'Sub gesamt', 2, 899),
(1270, 'Gesamt', 2, 898),
(1264, 'Auf Lager', 2, 904),
(1265, 'Ausverkauft', 2, 903),
(1266, 'Neu', 2, 902),
(1260, 'Technische Details', 2, 908),
(1261, 'Produktbeschreibung', 2, 907),
(1262, 'in den Warenkorb legen', 2, 906),
(1263, 'in den Warenkorb legen', 2, 905),
(1259, 'AUS', 2, 909),
(1256, 'Suche', 2, 912),
(1257, 'Filter zurücksetzen', 2, 911),
(1258, 'Keine Produkte gefunden', 2, 910),
(1255, 'Hauptkategorien', 2, 913),
(1254, 'Unterkategorien', 2, 914),
(1253, 'Versandart', 2, 915),
(1252, 'Danke', 2, 916),
(1251, 'Danke für ihren Einkauf.', 2, 917),
(1250, 'Meine Befehle', 2, 918),
(1248, 'Favorit', 2, 920),
(1249, 'Mit dem Einkaufen fortfahren', 2, 919),
(1247, 'Deine Wunschliste ist leer', 2, 921),
(1245, 'Erforschen', 2, 923),
(1246, 'Weiter hinzufügen', 2, 922),
(1244, 'Word Press Post Detail', 2, 924),
(1242, 'Meist gekauft', 2, 926),
(1243, 'Geh zurück', 2, 925),
(1240, 'Schlüsselwort eingeben', 2, 928),
(1241, 'Nachrichten', 2, 927),
(1239, 'instellingen', 2, 929),
(1235, 'NIET OP VOORRAAD', 2, 933),
(1237, 'Reset', 2, 931),
(1238, 'Winkel', 2, 930),
(1236, 'Selecteer Taal', 2, 932),
(1234, 'Nieuwste', 2, 934),
(1233, 'Rückgaberecht', 2, 935),
(1232, 'Datenschutz-Bestimmungen', 2, 936),
(1230, 'Overspringen', 2, 938),
(1231, 'Term und Dienstleistungen', 2, 937),
(1228, 'Recept van de dag', 2, 940),
(1229, 'Topgerechten', 2, 939),
(1227, 'Voedselcategorieën', 2, 941),
(1225, 'Coupon Bedrag', 2, 943),
(1226, 'Coupon Code', 2, 942),
(1223, 'Coupon', 2, 945),
(1224, 'coupon code', 2, 944),
(1221, 'Ontdek meer', 2, 947),
(1222, 'Opmerking aan de koper', 2, 946),
(1220, 'Alle', 2, 948),
(1218, 'Z - A', 2, 950),
(1219, 'A - Z', 2, 949),
(1217, 'Prijs : hoog - laag', 2, 951),
(1216, 'Prijs : laag - hoog', 2, 952),
(1215, 'Speciale producten', 2, 953),
(1213, 'Annuleer', 2, 955),
(1214, 'Sorteer producten', 2, 954),
(1211, 'speciaal', 2, 957),
(1212, 'meest leuk gevonden', 2, 956),
(1210, 'Top verkoper', 2, 958),
(1206, 'mobiel', 2, 962),
(1207, 'Mein Konto', 2, 961),
(1208, 'sympathieën', 2, 960),
(1209, 'nieuwste', 2, 959),
(1203, 'Aktuelles Passwort', 2, 965),
(1204, 'Aktualisieren', 2, 964),
(1205, 'Geburtsdatum', 2, 963),
(1202, 'Neues Kennwort', 2, 966),
(1200, 'Kundenbestellungen', 2, 968),
(1201, 'Passwort ändern', 2, 967),
(1197, 'Anzahl der Produkte', 2, 972),
(1198, 'Datum', 2, 973),
(1199, 'Kundenadresse', 2, 974),
(1195, 'Bestellungen ID', 2, 970),
(1196, 'Produktpreis', 2, 971),
(1194, 'Bestellstatus', 2, 969),
(1193, 'Bitte fügen Sie Ihre neue Versandadresse für die weitere Bearbeitung Ihrer Bestellung hinzu', 2, 975),
(1191, 'Ein Konto erstellen', 2, 977),
(1192, 'Neue Adresse hinzufügen', 2, 976),
(1190, 'Vorname', 2, 978),
(1187, 'Telefon', 2, 983),
(1188, 'Schon Memeber?', 2, 980),
(1189, 'Familienname', 2, 979),
(1185, 'Rechnungsinfo', 2, 981),
(1186, 'Adresse', 2, 982),
(1183, 'Nächster', 2, 985),
(1184, 'Hetzelfde als verzendadres', 2, 984),
(1181, 'Rechnungsadresse', 2, 987),
(1182, 'Auftrag', 2, 986),
(1179, 'Produkte', 2, 989),
(1180, 'Versandart', 2, 988),
(1178, 'Zwischensumme', 2, 990),
(1176, 'Steuer', 2, 992),
(1177, 'Produkte Preis', 2, 991),
(1173, 'Zahlung', 2, 995),
(1174, 'Bestellhinweise', 2, 994),
(1175, 'Versandkosten', 2, 993),
(1172, 'Kartennummer', 2, 996),
(1168, 'Fehler: ungültiges Verfalldatum!', 2, 1000),
(1169, 'Fehler: ungültige Kartennummer!', 2, 999),
(1170, 'Ablauf', 2, 998),
(1171, 'Haltbarkeitsdatum', 2, 997),
(1166, 'Fortsetzen', 2, 1002),
(1167, 'Fehler: ungültige cvc-Nummer!', 2, 1001),
(1165, 'Mein Warenkorb', 2, 1003),
(1163, 'mit dem Einkaufen fortfahren', 2, 1005),
(1164, 'dein Wagen ist leer', 2, 1004),
(1160, 'Aussicht', 2, 1009),
(1161, 'Anzahl', 2, 1007),
(1162, 'Preis', 2, 1006),
(1157, 'Vorgehen', 2, 1011),
(1158, 'Entfernen', 2, 1010),
(1159, 'durch', 2, 1008),
(1155, 'Land', 2, 1013),
(1156, 'Lieferanschrift', 2, 1012),
(1154, 'andere', 2, 1014),
(1152, 'Stadt', 2, 1016),
(1153, 'Zone', 2, 1015),
(1150, 'Adresse aktualisieren', 2, 1019),
(1151, 'Postleitzahl', 2, 1017),
(1148, 'Adresse speichern', 2, 1020),
(1149, 'Bundesland', 2, 1018),
(1147, 'Anmeldung & registrieren', 2, 1021),
(1145, 'Ausloggen', 2, 1023),
(1146, 'Bitte loggen Sie sich ein oder erstellen Sie einen kostenlosen Account', 2, 1022),
(1144, 'Meine Wunschliste', 2, 1024),
(1141, 'Schließen', 2, 1027),
(1142, 'Preisklasse', 2, 1026),
(1143, 'Filter', 2, 1025),
(1139, 'Klar', 2, 1029),
(1140, 'Sich bewerben', 2, 1028),
(1138, 'Menü', 2, 1030),
(1137, 'Ich habe mein Passwort vergessen?', 2, 1),
(1136, 'Zuhause', 2, 1031),
(1135, 'Erstellen eines Kontos bedeutet, dass Sie mit den Nutzungsbedingungen von shopify, Datenschutzbestimmungen in Ordnung sind', 2, 2),
(1133, 'أو', 4, 873),
(1134, 'تسجيل الدخول مع', 4, 872),
(1131, 'كلمه السر', 4, 875),
(1132, 'البريد الإلكتروني', 4, 874),
(1130, 'تسجيل', 4, 876),
(1128, 'إرسال', 4, 878),
(1129, 'هل نسيت كلمة المرور', 4, 877),
(1127, 'معلومات عنا', 4, 879),
(1126, 'الاقسام', 4, 880),
(1125, 'رسالتك', 4, 883),
(1124, 'اسم', 4, 882),
(1123, 'اتصل بنا', 4, 881),
(1121, 'شوهدت مؤخرا', 4, 885),
(1122, 'يرجى الاتصال بالإنترنت', 4, 884),
(1120, 'المنتجات المتاحة.', 4, 886),
(1119, 'أعلى بائع', 4, 887),
(1118, 'أعلى بائع', 4, 888),
(1116, 'جميع الفئات', 4, 890),
(1117, 'الأكثر إعجابا', 4, 889),
(1114, 'إزالة', 4, 892),
(1115, 'صفقات', 4, 891),
(1112, 'تخطي مقدمة', 4, 894),
(1113, 'مقدمة', 4, 893),
(1111, 'فهمتك!', 4, 895),
(1110, 'تفاصيل الأمر', 4, 896),
(1108, 'مجموع', 4, 898),
(1109, 'السعر التفاصيل', 4, 897),
(1106, 'الشحن', 4, 900),
(1107, 'المجموع الفرعي', 4, 899),
(1105, 'تفاصيل المنتج', 4, 901),
(1104, 'الجديد', 4, 902),
(1099, 'وصف المنتج', 4, 907),
(1100, 'أضف إلى السلة', 4, 906),
(1101, 'أضف إلى السلة', 4, 905),
(1102, 'في المخزن', 4, 904),
(1103, 'إنتهى من المخزن', 4, 903),
(1097, 'إيقاف', 4, 909),
(1098, 'تفاصيل فنية', 4, 908),
(1096, 'لم يتم العثور على منتجات', 4, 910),
(1095, 'إعادة تعيين الفلاتر', 4, 911),
(1094, 'بحث', 4, 912),
(1092, 'الفئات الفرعية', 4, 914),
(1093, 'الفئات الرئيسية', 4, 913),
(1091, 'طريقة الشحن', 4, 915),
(1089, 'شكرا للتسوق معنا.', 4, 917),
(1090, 'شكرا', 4, 916),
(1088, 'طلباتي', 4, 918),
(1086, 'مفضل', 4, 920),
(1087, 'مواصلة التسوق', 4, 919),
(1085, 'قائمة رغباتك فارغة', 4, 921),
(1083, 'إستكشاف', 4, 923),
(1084, 'متابعة إضافة', 4, 922),
(1081, 'عُد', 4, 925),
(1082, 'Word Press Post التفاصيل', 4, 924),
(1078, 'أدخل الكلمة المفتاحية', 4, 928),
(1079, 'أخبار', 4, 927),
(1080, 'أفضل البائعين', 4, 926),
(1076, 'متجر', 4, 930),
(1077, 'إعدادات', 4, 929),
(1075, 'إعادة تعيين', 4, 931),
(1074, 'اختار اللغة', 4, 932),
(1073, 'إنتهى من المخزن', 4, 933),
(1071, 'سياسة الاسترجاع', 4, 935),
(1072, 'الأحدث', 4, 934),
(1069, 'المدة والخدمات', 4, 937),
(1070, 'سياسة الخصوصية', 4, 936),
(1067, 'أفضل الأطباق', 4, 939),
(1068, 'تخطى', 4, 938),
(1064, 'رمز القسيمة', 4, 942),
(1065, 'فئات الغذاء', 4, 941),
(1066, 'وصفة من اليوم', 4, 940),
(1063, 'قيمة القسيمة', 4, 943),
(1061, 'كوبون', 4, 945),
(1062, 'رمز القسيمة', 4, 944),
(1060, 'ملاحظة للمشتري', 4, 946),
(1057, 'ا - ي', 4, 949),
(1058, 'الكل', 4, 948),
(1059, 'استكشاف المزيد', 4, 947),
(1055, 'السعر : متوسط - منخفض', 4, 951),
(1056, 'ي - ا', 4, 950),
(1054, 'السعر : منخفض - متوسط', 4, 952),
(1053, 'المنتجات الخاصة', 4, 953),
(1052, 'فرز المنتجات', 4, 954),
(1051, 'إلغاء', 4, 955),
(1050, 'الأكثر إعجابا', 4, 956),
(1049, 'خاص', 4, 957),
(1047, 'أحدث', 4, 959),
(1048, 'أعلى بائع', 4, 958),
(1046, 'الإعجابات', 4, 960),
(1045, 'حسابي', 4, 961),
(1043, 'تاريخ الولادة', 4, 963),
(1044, 'التليفون المحمول', 4, 962),
(1042, 'تحديث', 4, 964),
(1041, 'كلمة السر الحالية', 4, 965),
(1040, 'كلمة السر الجديدة', 4, 966),
(1039, 'تغيير كلمة السر', 4, 967),
(1035, 'عدد المنتجات', 4, 972),
(1036, 'تاريخ', 4, 973),
(1037, 'عنوان العميل', 4, 974),
(1038, 'طلبات العملاء', 4, 968),
(1034, 'سعر المنتج', 4, 971),
(1033, 'معرف الطلبات', 4, 970),
(1032, 'حالة الطلب', 4, 969),
(1031, 'الرجاء إضافة عنوان الشحن الجديد لمعالجة فوثر من طلبك', 4, 975),
(1030, 'إضافة عنوان جديد', 4, 976),
(1027, 'الكنية', 4, 979),
(1028, 'الاسم الاول', 4, 978),
(1029, 'انشئ حساب', 4, 977),
(1024, 'عنوان', 4, 982),
(1025, 'هاتف', 4, 983),
(1026, 'بالفعل ميميبر؟', 4, 980),
(1023, 'معلومات الفواتير', 4, 981),
(1022, 'نفس عنوان الشحن', 4, 984),
(1021, 'التالى', 4, 985),
(1020, 'طلب', 4, 986),
(1019, 'عنوان وصول الفواتير', 4, 987),
(1018, 'طريقة الشحن', 4, 988),
(1017, 'منتجات', 4, 989),
(1016, 'المجموع الفرعي', 4, 990),
(1015, 'أسعار المنتجات', 4, 991),
(1014, 'ضريبة', 4, 992),
(1013, 'تكلفة الشحن', 4, 993),
(1012, 'ترتيب ملاحظات', 4, 994),
(1011, 'دفع', 4, 995),
(1010, 'رقم البطاقة', 4, 996),
(1009, 'تاريخ إنتهاء الصلاحية', 4, 997),
(1008, 'انتهاء الصلاحية', 4, 998),
(1007, 'خطأ: رقم بطاقة غير صالح!', 4, 999),
(1006, 'خطأ: تاريخ انتهاء الصلاحية غير صالح!', 4, 1000),
(1005, 'خطأ: رقم كفك غير صالح!', 4, 1001),
(1004, 'استمر', 4, 1002),
(1003, 'سلة التسوق', 4, 1003),
(1002, 'عربة التسوق فارغة', 4, 1004),
(1001, 'مواصلة التسوق', 4, 1005),
(1000, 'السعر', 4, 1006),
(999, 'كمية', 4, 1007),
(998, 'رأي', 4, 1009),
(997, 'بواسطة', 4, 1008),
(996, 'إزالة', 4, 1010),
(995, 'تقدم', 4, 1011),
(994, 'عنوان الشحن', 4, 1012),
(993, 'بلد', 4, 1013),
(992, 'آخر', 4, 1014),
(991, 'منطقة', 4, 1015),
(990, 'مدينة', 4, 1016),
(989, 'الرمز البريدي', 4, 1017),
(988, 'تحديث العنوان', 4, 1019),
(987, 'حالة', 4, 1018),
(986, 'حفظ العنوان', 4, 1020),
(985, 'تسجيل الدخول والتسجيل', 4, 1021),
(984, 'الرجاء تسجيل الدخول أو إنشاء حساب مجانا', 4, 1022),
(983, 'الخروج', 4, 1023),
(982, 'قائمة امنياتي', 4, 1024),
(981, 'الفلاتر', 4, 1025),
(980, 'نطاق السعر', 4, 1026),
(979, 'قريب', 4, 1027),
(978, 'تطبيق', 4, 1028),
(977, 'واضح', 4, 1029),
(976, 'قائمة طعام', 4, 1030),
(975, ' بي؟ نسيت كلمة المرور الخاصة', 4, 1),
(974, 'الصفحة الرئيسية', 4, 1031),
(973, 'إنشاء حساب يعني أنك على ما يرام مع شروط خدمة شوبيفي، سياسة الخصوصية', 4, 2),
(1373, 'Cancel', 1, 955),
(1374, 'Sort Products', 1, 954),
(1375, 'Special Products', 1, 953),
(1376, 'Price : low - high', 1, 952),
(1377, 'Price : high - low', 1, 951),
(1378, 'Z - A', 1, 950),
(1379, 'A - Z', 1, 949),
(1380, 'All', 1, 948),
(1381, 'Explore More', 1, 947),
(1382, 'Note to the buyer', 1, 946),
(1383, 'Coupon', 1, 945),
(1384, 'coupon code', 1, 944),
(1385, 'Coupon Amount', 1, 943),
(1386, 'Coupon Code', 1, 942),
(1387, 'Food Categories', 1, 941),
(1388, 'Recipe of Day', 1, 940),
(1389, 'Top Dishes', 1, 939),
(1390, 'Skip', 1, 938),
(1391, 'Term and Services', 1, 937),
(1392, 'Privacy Policy', 1, 936),
(1393, 'Refund Policy', 1, 935),
(1394, 'Newest', 1, 934),
(1395, 'OUT OF STOCK', 1, 933),
(1396, 'Select Language', 1, 932),
(1397, 'Reset', 1, 931),
(1398, 'Shop', 1, 930),
(1399, 'Settings', 1, 929),
(1400, 'Enter keyword', 1, 928),
(1401, 'News', 1, 927),
(1402, 'Top Sellers', 1, 926),
(1403, 'Go Back', 1, 925),
(1404, 'Word Press Post Detail', 1, 924),
(1405, 'Explore', 1, 923),
(1406, 'Continue Adding', 1, 922),
(1407, 'Your wish List is empty', 1, 921),
(1408, 'Favourite', 1, 920),
(1409, 'Continue Shopping', 1, 919),
(1410, 'My Orders', 1, 918),
(1411, 'Thank you for shopping with us.', 1, 917),
(1412, 'Thank You', 1, 916),
(1413, 'Shipping method', 1, 915),
(1414, 'Sub Categories', 1, 914),
(1415, 'Main Categories', 1, 913),
(1416, 'Search', 1, 912),
(1417, 'Reset Filters', 1, 911),
(1418, 'No Products Found', 1, 910),
(1419, 'OFF', 1, 909),
(1420, 'Techincal details', 1, 908),
(1421, 'Product Description', 1, 907),
(1422, 'ADD TO CART', 1, 906),
(1423, 'Add to Cart', 1, 905),
(1424, 'In Stock', 1, 904),
(1425, 'Out of Stock', 1, 903),
(1426, 'New', 1, 902),
(1427, 'Product Details', 1, 901),
(1428, 'Shipping', 1, 900),
(1429, 'Sub Total', 1, 899),
(1430, 'Total', 1, 898),
(1431, 'Price Detail', 1, 897),
(1432, 'Order Detail', 1, 896),
(1433, 'Got It!', 1, 895),
(1434, 'Skip Intro', 1, 894),
(1435, 'Intro', 1, 893),
(1436, 'REMOVE', 1, 892),
(1437, 'Deals', 1, 891),
(1438, 'All Categories', 1, 890),
(1439, 'Most Liked', 1, 889),
(1440, 'Special Deals', 1, 888),
(1441, 'Top Seller', 1, 887),
(1442, 'Products are available.', 1, 886),
(1443, 'Recently Viewed', 1, 885),
(1444, 'Please connect to the internet', 1, 884),
(1445, 'Contact Us', 1, 881),
(1446, 'Name', 1, 882),
(1447, 'Your Message', 1, 883),
(1448, 'Categories', 1, 880),
(1449, 'About Us', 1, 879),
(1450, 'Send', 1, 878),
(1451, 'Forgot Password', 1, 877),
(1452, 'Register', 1, 876),
(1453, 'Password', 1, 875),
(1454, 'Email', 1, 874),
(1455, 'or', 1, 873),
(1456, 'Login with', 1, 872),
(1457, 'Creating an account means you\'re okay with shopify\'s Terms of Service, Privacy Policy', 1, 2),
(1458, 'I\'ve forgotten my password?', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci,
  `directory` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  `direction` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`, `direction`, `is_default`) VALUES
(1, 'English', 'en', 'resources/assets/images/language_flags/1486556365.503984030_english.jpg', 'english', 1, 'ltr', 1);

-- --------------------------------------------------------

--
-- Table structure for table `liked_products`
--

CREATE TABLE `liked_products` (
  `like_id` int(11) NOT NULL,
  `liked_products_id` int(100) NOT NULL,
  `liked_customers_id` int(100) NOT NULL,
  `date_liked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `liked_products`
--

INSERT INTO `liked_products` (`like_id`, `liked_products_id`, `liked_customers_id`, `date_liked`) VALUES
(12, 1, 3, '2017-09-07 12:25:48'),
(13, 2, 3, '2017-09-07 12:25:52'),
(14, 4, 3, '2017-09-07 12:25:55'),
(15, 80, 3, '2017-09-08 10:09:40'),
(16, 79, 3, '2017-09-08 10:09:43'),
(17, 78, 3, '2017-09-08 10:09:44'),
(18, 81, 3, '2017-09-08 10:09:46'),
(19, 2, 79, '2017-12-11 20:35:46'),
(20, 8, 79, '2017-12-11 20:35:51'),
(21, 11, 79, '2017-12-11 20:35:54'),
(22, 81, 79, '2017-12-11 20:35:57'),
(24, 22, 1, '2018-09-26 01:24:32'),
(25, 20, 1, '2018-09-26 01:24:36'),
(27, 18, 4, '2018-09-30 08:20:43'),
(29, 13, 6, '2018-10-30 05:56:06'),
(30, 14, 8, '2018-11-01 06:49:09'),
(33, 34, 1, '2018-11-12 06:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturers_id` int(11) NOT NULL,
  `manufacturers_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturers_image` mediumtext COLLATE utf8_unicode_ci,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturers_id`, `manufacturers_name`, `manufacturers_image`, `date_added`, `last_modified`) VALUES
(4, 'Nasir ALi', '', '2017-12-06 10:45:54', NULL),
(5, 'Nasir ALi', '', '2017-12-06 10:46:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers_info`
--

CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_clicked` int(5) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_image` mediumtext COLLATE utf8_unicode_ci,
  `news_date_added` datetime NOT NULL,
  `news_last_modified` datetime DEFAULT NULL,
  `news_status` tinyint(1) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_image`, `news_date_added`, `news_last_modified`, `news_status`, `is_feature`) VALUES
(5, 'resources/assets/images/news_images/1502109905.h.png', '2017-08-07 12:45:05', NULL, 1, 0),
(6, 'resources/assets/images/news_images/1513003664.demo_2_news_banner.jpg', '2017-08-22 06:36:32', '2017-12-11 02:47:44', 1, 1),
(7, 'resources/assets/images/news_images/1503929570.banner-4.png', '2017-08-22 07:00:29', '2017-08-28 02:12:50', 1, 1),
(8, 'resources/assets/images/news_images/1504092360.about.png', '2017-08-22 07:03:16', '2017-08-30 11:26:00', 1, 0),
(9, 'resources/assets/images/news_images/1504092640.laravel2.png', '2017-08-22 07:57:33', '2017-08-30 11:30:40', 1, 0),
(10, 'resources/assets/images/news_images/1504092240.ionic.png', '2017-08-22 07:59:33', '2017-08-30 11:24:00', 1, 0),
(11, 'resources/assets/images/news_images/1504091780.restaurant.png', '2017-08-22 08:04:29', '2017-08-30 11:16:20', 1, 0),
(12, 'resources/assets/images/news_images/1504091963.fashion.png', '2017-08-22 08:06:23', '2017-08-30 11:19:23', 1, 0),
(13, 'resources/assets/images/news_images/1504092054.electronics.png', '2017-08-22 08:07:23', '2017-08-30 11:20:54', 1, 0),
(14, 'resources/assets/images/news_images/1504091642.language.png', '2017-08-22 08:10:39', '2017-08-30 11:14:02', 1, 0),
(15, 'resources/assets/images/news_images/1504091465.payment.png', '2017-08-22 08:15:16', '2017-08-30 11:11:05', 1, 0),
(16, 'resources/assets/images/news_images/1504091072.push_notifications.png', '2017-08-22 08:17:28', '2017-08-30 11:04:32', 1, 0),
(17, 'resources/assets/images/news_images/1504091049.local_notifications.png', '2017-08-22 08:18:08', '2017-08-30 11:04:09', 1, 0),
(18, 'resources/assets/images/news_images/1504091024.products.png', '2017-08-22 08:18:51', '2017-08-30 11:03:44', 1, 0),
(19, 'resources/assets/images/news_images/1504091001.social.png', '2017-08-22 08:19:35', '2017-08-30 11:03:21', 1, 0),
(20, 'resources/assets/images/news_images/1504090986.shipping_method.png', '2017-08-22 08:22:33', '2017-08-30 11:03:06', 1, 0),
(21, 'resources/assets/images/news_images/1504090941.theme.png', '2017-08-22 08:23:22', '2017-08-30 11:02:21', 1, 0),
(22, 'resources/assets/images/news_images/1504090926.coupon_support.png', '2017-08-22 10:52:53', '2017-08-30 11:02:06', 1, 0),
(23, 'resources/assets/images/news_images/1504090906.profile_pic.png', '2017-08-22 10:53:45', '2017-08-30 11:01:46', 1, 0),
(24, 'resources/assets/images/news_images/1504090888.social_share.png', '2017-08-22 10:54:24', '2017-08-30 11:01:28', 1, 0),
(25, 'resources/assets/images/news_images/1504090868.wishlist.png', '2017-08-22 10:55:13', '2017-08-30 11:01:08', 1, 0),
(26, 'resources/assets/images/news_images/1504088925.wordpress.png', '2017-08-22 10:56:15', '2017-08-30 10:28:45', 1, 0),
(27, 'resources/assets/images/news_images/1504088895.app_tutorial.png', '2017-08-22 10:56:55', '2017-08-30 10:28:15', 1, 0),
(28, 'resources/assets/images/news_images/1504088865.price_filter.png', '2017-08-22 10:59:38', '2017-08-30 10:27:45', 1, 0),
(29, 'resources/assets/images/news_images/1504088836.sorting.png', '2017-08-22 11:03:06', '2017-08-30 10:27:16', 1, 0),
(30, 'resources/assets/images/news_images/1504088735.product_searching.png', '2017-08-22 11:03:53', '2017-08-30 10:25:35', 1, 0),
(31, 'resources/assets/images/news_images/1504088705.fully_customizable.png', '2017-08-22 11:04:34', '2017-08-30 10:25:05', 1, 0),
(32, 'resources/assets/images/news_images/1504087261.horizontal_Slider.png', '2017-08-22 11:09:25', '2017-08-30 10:01:01', 1, 0),
(33, 'resources/assets/images/news_images/1504087219.customization.png', '2017-08-22 11:13:38', '2017-08-30 10:00:19', 1, 0),
(34, 'resources/assets/images/news_images/1504087179.grid_list.png', '2017-08-22 11:14:16', '2017-08-30 09:59:39', 1, 0),
(35, 'resources/assets/images/news_images/1504083663.home_page_styles.png', '2017-08-22 11:15:19', '2017-08-30 09:01:03', 1, 0),
(36, 'resources/assets/images/news_images/1504015398.shop_page.png', '2017-08-22 11:16:24', '2017-08-29 02:03:18', 1, 0),
(37, 'resources/assets/images/news_images/1504015381.my_orders.png', '2017-08-22 11:17:04', '2017-08-29 02:03:01', 1, 0),
(38, 'resources/assets/images/news_images/1504015363.about_contact_pages.png', '2017-08-22 11:17:49', '2017-08-29 02:02:43', 1, 0),
(39, 'resources/assets/images/news_images/1504083589.Asset 2.png', '2017-08-22 11:18:14', '2017-08-30 08:59:49', 1, 0),
(40, 'resources/assets/images/news_images/1504015347.info_pages.png', '2017-08-22 11:18:53', '2017-08-29 02:02:27', 1, 0),
(41, 'resources/assets/images/news_images/1504015330.app_settings.png', '2017-08-22 11:19:57', '2017-08-29 02:02:10', 1, 0),
(42, 'resources/assets/images/news_images/1504015307.recently_item.png', '2017-08-22 11:24:05', '2017-08-29 02:01:47', 1, 0),
(43, 'resources/assets/images/news_images/1504015288.move_to_top.png', '2017-08-22 11:24:47', '2017-08-29 02:01:28', 1, 0),
(44, 'resources/assets/images/news_images/1504015272.product_price_discount.png', '2017-08-22 11:25:49', '2017-08-29 02:01:12', 1, 0),
(45, 'resources/assets/images/news_images/1504015246.inventory_management.png', '2017-08-22 11:26:24', '2017-08-29 02:00:46', 1, 0),
(46, 'resources/assets/images/news_images/1504013177.horizontal_Slider.png', '2017-08-22 11:26:59', '2017-08-29 01:26:17', 1, 0),
(47, 'resources/assets/images/news_images/1504013161.on_scroll_product_loading.png', '2017-08-22 11:33:04', '2017-08-29 01:26:01', 1, 0),
(48, 'resources/assets/images/news_images/1504013140.product_additional_attributes.png', '2017-08-22 11:36:02', '2017-08-29 01:25:40', 1, 0),
(49, 'resources/assets/images/news_images/1504012761.multi_product_images.png', '2017-08-22 11:36:36', '2017-08-29 01:19:21', 1, 0),
(50, 'resources/assets/images/news_images/1503928378.cart_page.png', '2017-08-22 11:37:11', '2017-08-28 01:52:58', 1, 0),
(51, 'resources/assets/images/news_images/1503928065.shipping_managment.png', '2017-08-22 11:37:48', '2017-08-28 01:47:45', 1, 0),
(52, 'resources/assets/images/news_images/1504083328.Asset 1.png', '2017-08-22 11:38:21', '2017-08-30 08:55:28', 1, 0),
(53, 'resources/assets/images/news_images/1503927733.animtions.png', '2017-08-22 11:38:58', '2017-08-28 01:42:38', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `newsletters_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `locked` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` mediumtext COLLATE utf8_unicode_ci,
  `categories_icon` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`) VALUES
(6, 'resources/assets/images/news_categories_images/1512997556.1504092793.app_features.png', '', 0, NULL, '2017-08-22 06:20:50', '2017-12-11 01:05:56'),
(7, 'resources/assets/images/news_categories_images/1512997573.1504092906.introduction.png', '', 0, NULL, '2017-08-22 06:22:50', '2017-12-11 01:06:13'),
(8, 'resources/assets/images/news_categories_images/1512997576.1504092995.platform.png', '', 0, NULL, '2017-08-22 06:30:31', '2017-12-11 01:06:16'),
(9, 'resources/assets/images/news_categories_images/1512997580.1504093080.screenshots.png', '', 0, NULL, '2017-08-22 06:31:50', '2017-12-11 01:06:20');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories_description`
--

CREATE TABLE `news_categories_description` (
  `categories_description_id` int(100) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories_description`
--

INSERT INTO `news_categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(16, 6, 1, 'App Features'),
(17, 6, 2, 'App Functies'),
(18, 6, 4, 'ميزات التطبيق'),
(19, 7, 1, 'Introduction'),
(20, 7, 2, 'Invoering'),
(21, 7, 4, 'المقدمة'),
(22, 8, 1, 'Platforms'),
(23, 8, 2, 'Platforms'),
(24, 8, 4, 'منصات'),
(25, 9, 1, 'Screen Shots'),
(26, 9, 2, 'Schermafbeeldingen'),
(27, 9, 4, 'لقطات الشاشة');

-- --------------------------------------------------------

--
-- Table structure for table `news_description`
--

CREATE TABLE `news_description` (
  `news_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `news_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_description` text COLLATE utf8_unicode_ci,
  `news_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_viewed` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_description`
--

INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(5, 1, 'Test Post', '<p>Test PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest PostTest Post</p>\r\n', NULL, 0),
(5, 2, 'German Test Post', '<p>German Test PostGerman Test PostGerman Test PostGerman Test PostGerman Test PostGerman Test PostGerman Test Post</p>\r\n', NULL, 0),
(5, 4, 'Arabic Test Post', '<p>Arabic Test PostArabic Test PostArabic Test PostArabic Test PostArabic Test PostArabic Test PostArabic Test Post</p>\r\n', NULL, 0),
(6, 1, 'Why To choose this App for your Project?', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>', NULL, 0),
(6, 2, 'Waarom deze applicatie?', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>', NULL, 0),
(6, 4, 'لماذا هذا التطبيق؟', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>', NULL, 0),
(7, 1, 'Tools and Technology', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(7, 2, 'Gereedschap en technologie', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(7, 4, 'الأدوات والتكنولوجيا', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(8, 1, 'About Us', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(8, 2, 'Over ons', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(8, 4, 'معلومات عنا', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(9, 1, 'Laravel', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(9, 2, 'Laravel', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(9, 4, 'Laravel', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(10, 1, 'Ionic Framework', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(10, 2, 'Ionic Framework', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(10, 4, 'الإطار الأيوني', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(11, 1, 'Resturant', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(11, 2, 'Resturant', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(11, 4, 'المطعم', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(12, 1, 'Fashion', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(12, 2, 'Mode', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(12, 4, 'موضه', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(13, 1, 'Electronics', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(13, 2, 'Elektronica', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(13, 4, 'إلكترونيات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(14, 1, 'Multi Language', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(14, 2, 'Multi Language', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(14, 4, 'متعدد اللغات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(15, 1, 'Multiple Payment Gateways', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(15, 2, 'Meerdere betalingsgateways', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(15, 4, 'بوابات الدفع المتعددة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(16, 1, 'Push Notifications', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(16, 2, 'Push Notifications', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(16, 4, 'دفع الإخطارات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(17, 1, 'Local Notifications', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(17, 2, 'Lokale meldingen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(17, 4, 'الإشعارات المحلية', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(18, 1, 'All Types of Products Friendly', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(18, 2, 'Alle soorten producten vriendelijk', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(18, 4, 'جميع أنواع المنتجات ودية', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(19, 1, 'Log-in via Social Accounts', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(19, 2, 'Inloggen via sociale accounts', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(19, 4, 'تسجيل الدخول عبر الحسابات الاجتماعية', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(20, 1, 'Multiple Shipping Methods', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(20, 2, 'Meerdere verzendmethoden', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(20, 4, 'طرق الشحن متعددة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(21, 1, 'Interactive Theme & Easy Customization with SaSS', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(21, 2, 'Interactief thema en gemakkelijke aanpassing met SaSS', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(21, 4, 'موضوع التفاعلية وسهولة التخصيص مع ساس', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(22, 1, 'Coupon Support', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(22, 2, 'Coupon Ondersteuning', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(22, 4, 'دعم القسيمة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(23, 1, 'Profile Picture', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(23, 2, 'Profielfoto', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(23, 4, 'الصوره الشخصيه', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(24, 1, 'Social Share', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(24, 2, 'Sociaal aandeel', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(24, 4, 'حصة الاجتماعي', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(25, 1, 'Wish List', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(25, 2, 'Wenslijst', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(25, 4, 'الأماني', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(26, 1, 'WordPress Blog', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(26, 2, 'WordPress Blog', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(26, 4, 'مدونة وورد', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(27, 1, 'App Tutorial / Intro Screens', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(27, 2, 'App Tutorial / Intro Screens', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(27, 4, 'التطبيق التعليمي / شاشات مقدمة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(28, 1, 'Price & Keyword Filters', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(28, 2, 'Prijs- en sleutelwoordfilters', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(28, 4, 'السعر والكلمات الرئيسية الفلاتر', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(29, 1, 'Product Sorting', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(29, 2, 'Product sorteren', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(29, 4, 'فرز المنتجات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(30, 1, 'Product Searching', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(30, 2, 'Product zoeken', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(30, 4, 'البحث عن المنتج', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(31, 1, 'Fully Customizable', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(31, 2, 'Volledig klantgericht', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(31, 4, 'تماما للتخصيص', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(32, 1, 'Horizontal Product Slider', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(32, 2, 'Horizontale Product Slider', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(32, 4, 'أفقي المنتج المنزلق', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(33, 1, 'Customizable Features & Functionalities', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(33, 2, 'Aanpasbare eigenschappen en functionaliteit', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(33, 4, 'الميزات والتخصيص وظائف', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(34, 1, 'Product Grid & List View', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(34, 2, 'Product Grid & Lijstweergave', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(34, 4, 'شبكة المنتج وعرض القائمة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \\\"ليتراسيت\\\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \\\"ألدوس بايج مايكر\\\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \\\"ليتراسيت\\\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \\\"ألدوس بايج مايكر\\\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \\\"ليتراسيت\\\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \\\"ألدوس بايج مايكر\\\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(35, 1, '5 Home Page Styles', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(35, 2, '5 Home Page Styles', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(35, 4, '5 الصفحة الرئيسية أنماط', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(36, 1, 'Beautiful Single Shop Page For Complete Catalog', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(36, 2, 'Mooie single shop pagina voor complete catalogus', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(36, 4, 'جميلة صفحة واحدة متجر للكتالوج الكامل', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(37, 1, 'My Orders', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(37, 2, 'mijn bestellingen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(37, 4, 'طلباتي', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(38, 1, 'About & Contact Pages', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(38, 2, 'Over & Contactpagina\'s', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(38, 4, 'حول الصفحات والاتصال', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(39, 1, 'Laravel Blog Pages', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(39, 2, 'Laravel blog pagina\'s', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(39, 4, 'صفحات لارافيل المدونة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(40, 1, 'Info Pages', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(40, 2, 'Info pagina\'s', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(40, 4, 'صفحات المعلومات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(41, 1, 'App Settings Page', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(41, 2, 'App Settings Page', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(41, 4, 'صفحة إعدادات التطبيق', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(42, 1, 'Recently Item Viewed Block on Home Page', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(42, 2, 'Onlangs Item bekeken Blok op Startpagina', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(42, 4, 'تم مؤخرا عرض العنصر بلوك أون هوم بادج', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(43, 1, 'Move to Top Slider Button', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(43, 2, 'Ga naar de bovenste schuifknop', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(43, 4, 'الانتقال إلى أعلى زر المنزلق', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(44, 1, 'Product Price Discount', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(44, 2, 'Productprijs korting', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(44, 4, 'خصم سعر المنتج', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(45, 1, 'Inventory Management', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(45, 2, 'ادارة المخزون', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(45, 4, 'Voorraadbeheer', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(46, 1, 'Horizontal Slider on Home Page', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(46, 2, 'Horizontale schuifregelaar op de startpagina', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(46, 4, 'أفقي المنزلق على الصفحة الرئيسية', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(47, 1, 'On-scroll Product Loading', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(47, 2, 'On-scroll Product Loading', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(47, 4, 'أون-سكرول برودوكت لوادينغ', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(48, 1, 'Product Additional Attributes / Commerce Pricing Attributes', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(48, 2, 'Product Aanvullende Attributen / Handelsprijzen Attributen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(48, 4, 'سمات المنتج الإضافية / سمات التسعير التجاري', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(49, 1, 'Multiple Product Images', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(49, 2, 'Meerdere productafbeeldingen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(49, 4, 'صور المنتج متعددة', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(50, 1, 'Beautiful Cart Page', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(50, 2, 'Mooie winkelwagen pagina', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(50, 4, 'صفحة العربة الجميلة', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(51, 1, 'Shipping Address Management', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(51, 2, 'Verzendadresbeheer', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(51, 4, 'إدارة عنوان الشحن', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(52, 1, 'Woocommerce Api', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(52, 2, 'Woocommerce Api', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(52, 4, 'ووكومرس أبي', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(53, 1, 'Animations', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(53, 2, 'animaties', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0),
(53, 4, 'الرسوم المتحركة', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ionic\\\" src=\\\"https://ionicframework.com/img/ionic-meta.jpg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\\"Image result for angularjs\\\" src=\\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\\"Image result for ngcordova\\\" src=\\\"http://ngcordova.com/img/cta-image.png\\\" /></p>\r\n', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_to_news_categories`
--

CREATE TABLE `news_to_news_categories` (
  `news_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_to_news_categories`
--

INSERT INTO `news_to_news_categories` (`news_id`, `categories_id`) VALUES
(5, 5),
(6, 7),
(7, 7),
(8, 7),
(9, 8),
(10, 8),
(11, 9),
(12, 9),
(13, 9),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(35, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(52, 6),
(53, 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `total_tax` decimal(7,0) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_address_format_id` int(5) DEFAULT NULL,
  `delivery_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address_format_id` int(5) DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_address_format_id` int(5) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `shipping_method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_duration` int(100) DEFAULT NULL,
  `order_information` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_code` text COLLATE utf8_unicode_ci NOT NULL,
  `coupon_amount` int(100) NOT NULL,
  `exclude_product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `total_tax`, `customers_id`, `customers_name`, `customers_company`, `customers_street_address`, `customers_suburb`, `customers_city`, `customers_postcode`, `customers_state`, `customers_country`, `customers_telephone`, `customers_email_address`, `customers_address_format_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_suburb`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_country`, `delivery_address_format_id`, `billing_name`, `billing_company`, `billing_street_address`, `billing_suburb`, `billing_city`, `billing_postcode`, `billing_state`, `billing_country`, `billing_address_format_id`, `payment_method`, `cc_type`, `cc_owner`, `cc_number`, `cc_expires`, `last_modified`, `date_purchased`, `orders_date_finished`, `currency`, `currency_value`, `order_price`, `shipping_cost`, `shipping_method`, `shipping_duration`, `order_information`, `is_seen`, `coupon_code`, `coupon_amount`, `exclude_product_ids`, `product_categories`, `excluded_product_categories`, `free_shipping`, `product_ids`) VALUES
(1, '0', 1, 'Gangadhar Swami', NULL, 'mantri nagar', 'latur', 'latur', '413512', 'maharashtra', 'India', '8087780305', 'swami@gmail.com', NULL, 'Gangadhar Swami', NULL, 'mantri nagar', 'latur', 'latur', '413512', 'maharashtra', 'India', NULL, '', NULL, '', '', '', '', '', '', 0, 'Cash On Delivery', '', '', '', '', '2018-09-29 14:44:21', '2018-09-29 14:44:21', NULL, 'Rs.', '2018.000000', '374956.00', '0.00', 'free_shipping', NULL, '', 1, '', 0, '', '', '', 0, ''),
(2, '0', 1, 'Gangadhar Swami', NULL, 'mantri nagar', 'latur', 'latur', '413512', 'maharashtra', 'India', '8087780305', 'swami@gmail.com', NULL, 'Gangadhar Swami', NULL, 'mantri nagar', 'latur', 'latur', '413512', 'maharashtra', 'India', NULL, '', NULL, '', '', '', '', '', '', 0, 'Cash On Delivery', '', '', '', '', '2018-09-30 07:20:19', '2018-09-30 07:20:19', NULL, 'Rs.', '2018.000000', '19770.00', '0.00', 'free_shipping', NULL, '', 1, '', 0, '', '', '', 0, ''),
(9, '0', 1, 'Gangadhar Swami', NULL, 'street_address', 'suburb', 'city', 'postcode', 'state', 'country_name', 'telephone', 'email_address', NULL, 'Gangadhar Swami', NULL, 'street_address', 'suburb', 'city', 'postcode', 'state', 'country_name', NULL, '', NULL, '', '', '', '', '', '', 0, 'Cash On Delivery', '', '', '', '', '2018-09-30 12:17:57', '2018-09-30 12:17:57', NULL, 'Rs.', '2018.000000', '78510.00', '10.00', 'flate_rate', NULL, '', 1, '', 0, '', '', '', 0, ''),
(10, '0', 1, 'Gangadhar Swami', NULL, 'street_address', 'suburb', 'city', 'postcode', 'state', 'country_name', 'telephone', 'email_address', NULL, 'Gangadhar Swami', NULL, 'street_address', 'suburb', 'city', 'postcode', 'state', 'country_name', NULL, '', NULL, '', '', '', '', '', '', 0, 'Cash On Delivery', '', '', '', '', '2018-10-13 12:59:46', '2018-10-13 12:59:46', NULL, 'Rs.', '2018.000000', '126359.00', '0.00', 'free_shipping', NULL, '', 0, '', 0, '', '', '', 0, ''),
(11, '0', 6, 'samreen', NULL, 'street_address', 'suburb', 'city', 'postcode', 'state', 'country_name', 'telephone', 'email_address', NULL, 'samreen', NULL, 'street_address', 'suburb', 'city', 'postcode', 'state', 'country_name', NULL, '', NULL, '', '', '', '', '', '', 0, 'Cash On Delivery', '', '', '', '', '2018-10-30 06:08:19', '2018-10-30 06:08:19', NULL, 'Rs.', '2018.000000', '30717.00', '0.00', 'free_shipping', NULL, '', 0, '', 0, '', '', '', 0, ''),
(12, '0', 1, 'Gangadhar Swami', NULL, 'street_address', 'suburb', 'city', 'postcode', 'state', 'country_name', 'telephone', 'email_address', NULL, 'Gangadhar Swami', NULL, 'street_address', 'suburb', 'city', 'postcode', 'state', 'country_name', NULL, '', NULL, '', '', '', '', '', '', 0, 'Cash On Delivery', '', '', '', '', '2018-11-05 14:07:01', '2018-11-05 14:07:01', NULL, 'Rs.', '2018.000000', '129080.00', '0.00', 'free_shipping', NULL, '', 1, '', 0, '', '', '', 0, ''),
(13, '0', 9, 'ganga', NULL, 'street_address', 'suburb', 'city', 'postcode', 'state', 'country_name', 'telephone', 'email_address', NULL, 'ganga', NULL, 'street_address', 'suburb', 'city', 'postcode', 'state', 'country_name', NULL, '', NULL, '', '', '', '', '', '', 0, 'Cash On Delivery', '', '', '', '', '2019-02-26 12:53:31', '2019-02-26 12:53:31', NULL, 'Rs.', '2019.000000', '56300.00', '0.00', 'free_shipping', NULL, '', 0, '', 0, '', '', '', 0, ''),
(14, '0', 10, 'saba bagwan', NULL, 'street_address', 'suburb', 'city', 'postcode', 'state', 'country_name', 'telephone', 'email_address', NULL, 'saba bagwan', NULL, 'street_address', 'suburb', 'city', 'postcode', 'state', 'country_name', NULL, '', NULL, '', '', '', '', '', '', 0, 'Cash On Delivery', '', '', '', '', '2020-03-02 10:20:11', '2020-03-02 10:20:11', NULL, 'Rs.', '2020.000000', '22814.00', '0.00', 'free_shipping', NULL, '', 1, '', 0, '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `final_price` decimal(15,2) NOT NULL,
  `products_tax` decimal(7,0) NOT NULL,
  `products_quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`orders_products_id`, `orders_id`, `products_id`, `products_model`, `products_name`, `products_price`, `final_price`, `products_tax`, `products_quantity`) VALUES
(1, 1, 22, NULL, 'Adeal Butterfly Hoop Earrings', '20000.00', '320000.00', '0', 16),
(2, 1, 13, NULL, 'Marvel Solitaire Ring', '27478.00', '54956.00', '0', 2),
(3, 2, 20, NULL, 'Gold Earring (22Kt Purity) From Vaiga Collection', '34770.00', '19770.00', '0', 1),
(11, 9, 22, NULL, 'Adeal Butterfly Hoop Earrings', '20000.00', '22500.00', '0', 1),
(12, 9, 14, NULL, 'Ben Solitaire Ring for Men', '56150.00', '56000.00', '0', 1),
(13, 10, 13, NULL, 'Marvel Solitaire Ring', '27478.00', '27278.00', '0', 1),
(14, 10, 5, NULL, 'Intertwined Glim Ring', '11864.00', '12364.00', '0', 1),
(15, 10, 12, NULL, 'Promise Solitaire Ring', '31217.00', '30717.00', '0', 1),
(16, 10, 14, NULL, 'Ben Solitaire Ring for Men', '56150.00', '56000.00', '0', 1),
(17, 11, 12, NULL, 'Promise Solitaire Ring', '31217.00', '30717.00', '0', 1),
(18, 12, 22, NULL, 'Adeal Butterfly Hoop Earrings', '20000.00', '45000.00', '0', 2),
(19, 12, 17, NULL, 'Grandiose Ring', '25935.00', '26085.00', '0', 1),
(20, 12, 13, NULL, 'Marvel Solitaire Ring', '27478.00', '27278.00', '0', 1),
(21, 12, 12, NULL, 'Promise Solitaire Ring', '31217.00', '30717.00', '0', 1),
(22, 13, 14, NULL, 'Ben Solitaire Ring for Men', '56150.00', '56300.00', '0', 1),
(23, 14, 7, NULL, 'Daifilo Diamond Band for Him', '23314.00', '22814.00', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_attributes`
--

CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_products_attributes`
--

INSERT INTO `orders_products_attributes` (`orders_products_attributes_id`, `orders_id`, `orders_products_id`, `products_id`, `products_options`, `products_options_values`, `options_values_price`, `price_prefix`) VALUES
(1, 2, 3, 20, 'Weight Ranges', '2 - 5 gms', '15000.00', '-'),
(2, 3, 4, 17, 'Size', '13', '150.00', '+'),
(3, 4, 5, 10, 'Size', '13', '200.00', '+'),
(4, 4, 6, 3, 'Size', 'Small', '500.00', '+'),
(5, 5, 7, 13, 'Size', '13', '200.00', '+'),
(6, 6, 8, 7, 'Size', '19', '500.00', '+'),
(7, 7, 9, 10, 'Size', '11', '200.00', '-'),
(8, 8, 10, 10, 'Size', '11', '200.00', '-'),
(9, 9, 11, 22, 'Metal', '18 Kt White', '2500.00', '+'),
(10, 9, 12, 14, 'Size', '17', '150.00', '-'),
(11, 10, 13, 13, 'Size', '11', '200.00', '-'),
(12, 10, 14, 5, 'Size', '13', '500.00', '+'),
(13, 10, 15, 12, 'Size', '11', '500.00', '-'),
(14, 10, 16, 14, 'Size', '17', '150.00', '-'),
(15, 11, 17, 12, 'Size', '11', '500.00', '-'),
(16, 12, 18, 22, 'Metal', '18 Kt White', '2500.00', '+'),
(17, 12, 19, 17, 'Size', '13', '150.00', '+'),
(18, 12, 20, 13, 'Size', '11', '200.00', '-'),
(19, 12, 21, 12, 'Size', '11', '500.00', '-'),
(20, 13, 22, 14, 'Size', '19', '150.00', '+'),
(21, 14, 23, 7, 'Size', '17', '500.00', '-');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_download`
--

CREATE TABLE `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_maxdays` int(2) NOT NULL DEFAULT '0',
  `download_count` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `orders_status_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `public_flag` int(11) DEFAULT '1',
  `downloads_flag` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `language_id`, `orders_status_name`, `public_flag`, `downloads_flag`) VALUES
(1, 1, 'Pending', 1, 0),
(2, 1, 'Completed', 1, 0),
(3, 1, 'Cancel', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_history`
--

CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(1) DEFAULT '0',
  `comments` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status_history`
--

INSERT INTO `orders_status_history` (`orders_status_history_id`, `orders_id`, `orders_status_id`, `date_added`, `customer_notified`, `comments`) VALUES
(1, 1, 1, '2017-08-22 07:50:27', 1, NULL),
(2, 2, 1, '2017-09-07 01:23:50', 1, NULL),
(3, 3, 1, '2017-09-07 01:27:52', 1, NULL),
(4, 4, 1, '2017-09-07 01:38:22', 1, NULL),
(5, 5, 1, '2017-09-07 01:38:25', 1, NULL),
(6, 6, 1, '2017-09-07 01:38:28', 1, NULL),
(7, 7, 1, '2017-09-07 01:38:30', 1, NULL),
(8, 8, 1, '2017-09-08 10:13:10', 1, NULL),
(9, 9, 1, '2017-09-08 10:13:12', 1, NULL),
(10, 10, 1, '2017-09-08 10:13:15', 1, NULL),
(11, 10, 2, '2017-11-29 05:46:38', 1, 'asd'),
(12, 11, 1, '2017-12-11 08:35:02', 1, ''),
(13, 1, 1, '2018-09-29 02:44:21', 1, ''),
(14, 2, 1, '2018-09-30 07:20:19', 1, ''),
(15, 1, 2, '2018-09-30 07:21:02', 1, ''),
(16, 3, 1, '2018-09-30 09:21:13', 1, ''),
(17, 4, 1, '2018-09-30 09:38:59', 1, ''),
(18, 5, 1, '2018-09-30 09:41:01', 1, ''),
(19, 6, 1, '2018-09-30 10:25:41', 1, ''),
(20, 6, 2, '2018-09-30 10:28:38', 1, ''),
(21, 7, 1, '2018-09-30 10:30:56', 1, ''),
(22, 8, 1, '2018-09-30 10:35:24', 1, ''),
(23, 9, 1, '2018-09-30 12:17:57', 1, ''),
(24, 10, 1, '2018-10-13 12:59:46', 1, ''),
(25, 11, 1, '2018-10-30 06:08:19', 1, ''),
(26, 12, 1, '2018-11-05 02:07:01', 1, ''),
(27, 13, 1, '2019-02-26 12:53:31', 1, ''),
(28, 14, 1, '2020-03-02 10:20:11', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_total`
--

CREATE TABLE `orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(100) NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `slug`, `status`) VALUES
(1, 'privacy-policy', 1),
(2, 'term-services', 1),
(3, 'refund-policy', 1),
(4, 'about-us', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages_description`
--

CREATE TABLE `pages_description` (
  `page_description_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(100) NOT NULL,
  `page_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages_description`
--

INSERT INTO `pages_description` (`page_description_id`, `name`, `description`, `language_id`, `page_id`) VALUES
(1, 'Privacy Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 1),
(2, 'Datenschutz-Bestimmungen', '<p>Lorem ipsum dolor sit amet, putant expetenda ex nec. Ea luptatum verterem vis, sadipscing conclusionemque id ius. Perpetua molestiae mei at, iudicabit interesset vel ad. Efficiendi concludaturque sed in, mazim exerci indoctum at est, nibh nostro ea ius.</p>\r\n\r\n<p>Eros libris theophrastus pri ei. Alii imperdiet an vim. Elitr euripidis vituperatoribus nam at, id qui quod ipsum contentiones, eu paulo ignota verterem pri. In quem posse efficiendi duo, eu per everti iuvaret saperet. Id vel constituam neglegentur, utinam atomorum ei ius.</p>\r\n\r\n<p>Amet mollis antiopam ei sea, iusto aperiri in eam, sed euismod splendide ne. Iuvaret molestie efficiendi in vim, eum cu choro alienum menandri, at choro recteque tincidunt duo. Novum diceret expetendis his id, nominavi facilisi ne est. Movet labore intellegebat has ne, cu veritus mentitum aliquando pri, utamur nominati forensibus duo ut. Quo graece oporteat concludaturque at, qui docendi salutatus assentior cu, latine vocibus dissentias ius ea.</p>\r\n\r\n<p>Ne delenit graecis pri, nec in perpetua mnesarchum. Ex per civibus luptatum. Choro civibus quo no, duo ne omnis salutatus pertinacia, ipsum rationibus eu est. Eos te soleat eripuit indoctum, nobis alienum contentiones vim ad. Mei ut expetenda qualisque constituto. Ex vel case recteque, ea quot debet mucius sed.</p>\r\n\r\n<p>Sea verear labores luptatum ut. Eu pri dico errem ubique, solet saepe mediocritatem nec ad. Cibo urbanitas comprehensam cu qui, ex summo gloriatur quo, quo eu etiam dolor urbanitas. Sed ancillae efficiantur cu, errem omnes salutatus id qui. Tation eloquentiam an per, dolorem perfecto eam at.</p>\r\n', 2, 1),
(3, 'سياسة الخصوصية', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>\r\n', 4, 1),
(4, 'Term & Services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 2),
(5, 'langfristige Dienstleistungen', '<p>Lorem ipsum dolor sit amet, putant expetenda ex nec. Ea luptatum verterem vis, sadipscing conclusionemque id ius. Perpetua molestiae mei at, iudicabit interesset vel ad. Efficiendi concludaturque sed in, mazim exerci indoctum at est, nibh nostro ea ius.</p>\r\n\r\n<p>Eros libris theophrastus pri ei. Alii imperdiet an vim. Elitr euripidis vituperatoribus nam at, id qui quod ipsum contentiones, eu paulo ignota verterem pri. In quem posse efficiendi duo, eu per everti iuvaret saperet. Id vel constituam neglegentur, utinam atomorum ei ius.</p>\r\n\r\n<p>Amet mollis antiopam ei sea, iusto aperiri in eam, sed euismod splendide ne. Iuvaret molestie efficiendi in vim, eum cu choro alienum menandri, at choro recteque tincidunt duo. Novum diceret expetendis his id, nominavi facilisi ne est. Movet labore intellegebat has ne, cu veritus mentitum aliquando pri, utamur nominati forensibus duo ut. Quo graece oporteat concludaturque at, qui docendi salutatus assentior cu, latine vocibus dissentias ius ea.</p>\r\n\r\n<p>Ne delenit graecis pri, nec in perpetua mnesarchum. Ex per civibus luptatum. Choro civibus quo no, duo ne omnis salutatus pertinacia, ipsum rationibus eu est. Eos te soleat eripuit indoctum, nobis alienum contentiones vim ad. Mei ut expetenda qualisque constituto. Ex vel case recteque, ea quot debet mucius sed.</p>\r\n\r\n<p>Sea verear labores luptatum ut. Eu pri dico errem ubique, solet saepe mediocritatem nec ad. Cibo urbanitas comprehensam cu qui, ex summo gloriatur quo, quo eu etiam dolor urbanitas. Sed ancillae efficiantur cu, errem omnes salutatus id qui. Tation eloquentiam an per, dolorem perfecto eam at.</p>\r\n', 2, 2),
(6, 'الخدمات المدى', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>\r\n', 4, 2),
(7, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 3),
(8, 'Rückgaberecht', '<p>Lorem ipsum dolor sit amet, putant expetenda ex nec. Ea luptatum verterem vis, sadipscing conclusionemque id ius. Perpetua molestiae mei at, iudicabit interesset vel ad. Efficiendi concludaturque sed in, mazim exerci indoctum at est, nibh nostro ea ius.</p>\r\n\r\n<p>Eros libris theophrastus pri ei. Alii imperdiet an vim. Elitr euripidis vituperatoribus nam at, id qui quod ipsum contentiones, eu paulo ignota verterem pri. In quem posse efficiendi duo, eu per everti iuvaret saperet. Id vel constituam neglegentur, utinam atomorum ei ius.</p>\r\n\r\n<p>Amet mollis antiopam ei sea, iusto aperiri in eam, sed euismod splendide ne. Iuvaret molestie efficiendi in vim, eum cu choro alienum menandri, at choro recteque tincidunt duo. Novum diceret expetendis his id, nominavi facilisi ne est. Movet labore intellegebat has ne, cu veritus mentitum aliquando pri, utamur nominati forensibus duo ut. Quo graece oporteat concludaturque at, qui docendi salutatus assentior cu, latine vocibus dissentias ius ea.</p>\r\n\r\n<p>Ne delenit graecis pri, nec in perpetua mnesarchum. Ex per civibus luptatum. Choro civibus quo no, duo ne omnis salutatus pertinacia, ipsum rationibus eu est. Eos te soleat eripuit indoctum, nobis alienum contentiones vim ad. Mei ut expetenda qualisque constituto. Ex vel case recteque, ea quot debet mucius sed.</p>\r\n\r\n<p>Sea verear labores luptatum ut. Eu pri dico errem ubique, solet saepe mediocritatem nec ad. Cibo urbanitas comprehensam cu qui, ex summo gloriatur quo, quo eu etiam dolor urbanitas. Sed ancillae efficiantur cu, errem omnes salutatus id qui. Tation eloquentiam an per, dolorem perfecto eam at.</p>\r\n', 2, 3),
(9, 'سياسة الاسترجاع', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>\r\n', 4, 3),
(10, 'About Us', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 4),
(11, 'Über uns', '<p>Lorem ipsum dolor sit amet, putant expetenda ex nec. Ea luptatum verterem vis, sadipscing conclusionemque id ius. Perpetua molestiae mei at, iudicabit interesset vel ad. Efficiendi concludaturque sed in, mazim exerci indoctum at est, nibh nostro ea ius.</p>\r\n\r\n<p>Eros libris theophrastus pri ei. Alii imperdiet an vim. Elitr euripidis vituperatoribus nam at, id qui quod ipsum contentiones, eu paulo ignota verterem pri. In quem posse efficiendi duo, eu per everti iuvaret saperet. Id vel constituam neglegentur, utinam atomorum ei ius.</p>\r\n\r\n<p>Amet mollis antiopam ei sea, iusto aperiri in eam, sed euismod splendide ne. Iuvaret molestie efficiendi in vim, eum cu choro alienum menandri, at choro recteque tincidunt duo. Novum diceret expetendis his id, nominavi facilisi ne est. Movet labore intellegebat has ne, cu veritus mentitum aliquando pri, utamur nominati forensibus duo ut. Quo graece oporteat concludaturque at, qui docendi salutatus assentior cu, latine vocibus dissentias ius ea.</p>\r\n\r\n<p>Ne delenit graecis pri, nec in perpetua mnesarchum. Ex per civibus luptatum. Choro civibus quo no, duo ne omnis salutatus pertinacia, ipsum rationibus eu est. Eos te soleat eripuit indoctum, nobis alienum contentiones vim ad. Mei ut expetenda qualisque constituto. Ex vel case recteque, ea quot debet mucius sed.</p>\r\n\r\n<p>Sea verear labores luptatum ut. Eu pri dico errem ubique, solet saepe mediocritatem nec ad. Cibo urbanitas comprehensam cu qui, ex summo gloriatur quo, quo eu etiam dolor urbanitas. Sed ancillae efficiantur cu, errem omnes salutatus id qui. Tation eloquentiam an per, dolorem perfecto eam at.</p>\r\n', 2, 4),
(12, 'معلومات عنا', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>\r\n', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `payments_setting`
--

CREATE TABLE `payments_setting` (
  `payments_id` int(100) NOT NULL,
  `braintree_enviroment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_merchant_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_public_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_private_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brantree_active` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_enviroment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publishable_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_active` tinyint(1) NOT NULL DEFAULT '0',
  `cash_on_delivery` tinyint(1) NOT NULL DEFAULT '0',
  `cod_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_status` tinyint(1) NOT NULL DEFAULT '0',
  `paypal_enviroment` tinyint(1) DEFAULT '0',
  `payment_currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments_setting`
--

INSERT INTO `payments_setting` (`payments_id`, `braintree_enviroment`, `braintree_name`, `braintree_merchant_id`, `braintree_public_key`, `braintree_private_key`, `brantree_active`, `stripe_enviroment`, `stripe_name`, `secret_key`, `publishable_key`, `stripe_active`, `cash_on_delivery`, `cod_name`, `paypal_name`, `paypal_id`, `paypal_status`, `paypal_enviroment`, `payment_currency`) VALUES
(1, '0', 'Braintree', '', '', '', 0, '0', 'Stripe', '', '', 0, 1, 'Cash On Delivery', 'Paypal', '', 0, 0, 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `payment_description`
--

CREATE TABLE `payment_description` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `payment_name` varchar(32) NOT NULL,
  `sub_name_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_name_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_description`
--

INSERT INTO `payment_description` (`id`, `name`, `language_id`, `payment_name`, `sub_name_1`, `sub_name_2`) VALUES
(1, 'Braintree', 1, 'Braintree', 'Credit Card', 'Paypal'),
(2, 'Braintree', 2, 'Braintree', 'Kreditkarte', 'Paypal'),
(3, 'برينتر', 4, 'Braintree', 'بطاقة ائتمان', 'باي بال'),
(4, '', 1, 'Stripe', '', ''),
(5, '', 1, 'Paypal', '', ''),
(6, 'Cash on Delivery', 1, 'Cash On Delivery', '', ''),
(7, '', 2, 'Stripe', '', ''),
(8, '', 2, 'Paypal', '', ''),
(9, 'Nachnahme', 2, 'Cash On Delivery', '', ''),
(10, '', 4, 'Stripe', '', ''),
(11, '', 4, 'Paypal', '', ''),
(12, 'الدفع عن الاستلام', 4, 'Cash On Delivery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_quantity` int(4) NOT NULL,
  `products_model` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_image` mediumtext COLLATE utf8_unicode_ci,
  `products_price` decimal(15,2) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_weight_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_status` tinyint(1) DEFAULT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `products_liked` int(100) NOT NULL,
  `low_limit` int(4) NOT NULL,
  `isCatalogue` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_unit`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_liked`, `low_limit`, `isCatalogue`, `slug`) VALUES
(1, 100, '', 'resources/assets/images/product_images/1535785410.JR02665-PTP900_1_lar.jpg', '14182.00', '2018-09-01 07:03:30', NULL, NULL, '2.01', 'g', 1, 1, NULL, 0, 0, 5, 0, 'Helena+Platinum+Band+for+Her.html'),
(2, 100, '', 'resources/assets/images/product_images/1535786000.JR02665-PTP900_1_lar.jpg', '14182.00', '2018-09-01 07:13:20', NULL, NULL, '2.01', 'g', 1, 1, NULL, 0, -1, 5, 0, 'Helena+Platinum+Band+for+Her.html'),
(4, 100, 'engagement rings', 'resources/assets/images/product_images/1535788217.1.jpg', '94783.00', '2018-09-01 07:40:50', '2018-09-01 11:41:15', NULL, '5.42', 'g', 1, 1, 0, 0, 0, 4, 0, 'Matt+Solitaire+Ring+for+Men.html'),
(5, 80, 'golden rings', 'resources/assets/images/product_images/1535794602.5.jpg', '11864.00', '2018-09-01 09:36:42', '2018-09-01 11:41:33', NULL, '1.88', 'g', 1, 1, 0, 0, 0, 4, 0, 'Intertwined+Glim+Ring.html'),
(6, 120, 'Solitair charm ring', 'resources/assets/images/product_images/1535796518.7.jpg', '57120.00', '2018-09-01 10:08:38', '2018-09-01 11:44:05', NULL, '2.26', 'g', 1, 1, 0, 0, 0, 5, 0, 'Charm+Solitaire+Ring.html'),
(7, 49, 'couple bands', 'resources/assets/images/product_images/1535798071.10.jpeg', '23314.00', '2018-09-01 10:34:31', NULL, NULL, '4.58', 'g', 1, 1, NULL, 1, 0, 3, 8, 'Daifilo+Diamond+Band+for+Him.html'),
(8, 50, 'casual rings', 'resources/assets/images/product_images/1535799300.14.jpg', '10169.00', '2018-09-01 10:54:59', NULL, NULL, '2.08', 'g', 1, 1, NULL, 0, 0, 2, 9, 'Trio+Miracle+Plate+Ring.html'),
(9, 60, 'bridal ring', 'resources/assets/images/product_images/1535800423.17.jpg', '176511.00', '2018-09-01 11:13:43', NULL, NULL, '7.88', 'g', 1, 1, NULL, 0, 0, 3, 10, 'Glisten+Solitaire+Bridal+Ring+Set.html'),
(10, 70, 'mangalsutra rings', 'resources/assets/images/product_images/1535803052.20.jpg', '22375.00', '2018-09-01 11:57:32', NULL, NULL, '2.65', 'g', 1, 1, NULL, 0, 0, 2, 0, 'Shyla+Mangalsutra+Ring.html'),
(11, 40, 'Solitair ring', 'resources/assets/images/product_images/1535949240.23.jpg', '297366.00', '2018-09-03 04:34:00', NULL, NULL, '2.89', 'g', 1, 1, NULL, 0, 0, 3, 7, 'Spiral+Solitaire+Ring.html'),
(12, 45, 'promise ring', 'resources/assets/images/product_images/1535950648.26.jpg', '31217.00', '2018-09-03 04:57:28', NULL, NULL, '2.74', 'g', 1, 1, NULL, 0, 0, 3, 7, 'Promise+Solitaire+Ring.html'),
(13, 58, 'engagement ring', 'resources/assets/images/product_images/1535951143.28.jpg', '27478.00', '2018-09-03 05:05:43', NULL, NULL, '2.4', 'g', 1, 1, NULL, 1, 1, 2, 7, 'Marvel+Solitaire+Ring.html'),
(14, 55, 'engagement rings for men', 'resources/assets/images/product_images/1535952600.31.jpg', '56150.00', '2018-09-03 05:30:00', NULL, NULL, '3.96', 'g', 1, 1, NULL, 0, 1, 3, 7, 'Ben+Solitaire+Ring+for+Men.html'),
(16, 35, 'engagement ring', 'resources/assets/images/product_images/1535953876.36.jpg', '74320.00', '2018-09-03 05:51:16', NULL, NULL, '5.52', 'g', 1, 1, NULL, 0, 0, 3, 0, 'Nick+Solitaire+Ring+for+Men.html'),
(17, 50, 'engagement ring', 'resources/assets/images/product_images/1535956588.39.jpg', '25935.00', '2018-09-03 06:36:28', NULL, NULL, '4.07', 'g', 1, 1, NULL, 0, 0, 2, 0, 'Grandiose+Ring.html'),
(18, 20, 'engagement ring', 'resources/assets/images/product_images/1535957371.40.jpg', '159625.00', '2018-09-03 06:49:31', NULL, NULL, '4.4', 'g', 1, 1, NULL, 0, 1, 2, 0, 'Interior+Carved+Solitaire+Ring.html'),
(20, 30, '', 'resources/assets/images/product_images/1536061112.ea1.jpg', '34770.00', '2018-09-04 11:38:31', NULL, NULL, '7.87', 'g', 1, 0, NULL, 0, 1, 2, 12, 'Gold+Earring+(22Kt+Purity)+From+Vaiga+Collection.html'),
(21, 30, '', 'resources/assets/images/product_images/1536062149.pen.jpg', '5660.00', '2018-09-04 11:55:49', '2018-09-29 02:11:19', NULL, '0.55', 'g', 1, 0, 0, 0, 0, 2, 0, 'Forever+Floral+Pendant.html'),
(22, 14, '', 'resources/assets/images/product_images/1536328349.ea6.jpg', '20000.00', '2018-09-07 01:52:29', '2018-09-27 11:54:43', NULL, '0.5', 'g', 1, 0, 0, 1, 1, 2, 0, 'Adeal+Butterfly+Hoop+Earrings.html'),
(23, 15, 'M2', 'resources/assets/images/product_images/1538290734.icon_anniversary.png', '3200.00', '2018-09-30 06:58:54', NULL, NULL, '200', 'g', 1, 1, NULL, 0, 0, 5, 0, 'Gogals.html'),
(24, 15, 'M3', 'resources/assets/images/product_images/1538295922.dark_birthday_cake.png', '35000.00', '2018-09-30 08:25:22', NULL, NULL, '250', 'g', 1, 1, NULL, 0, 0, 2, 0, 'indian+rings.html'),
(25, 20, 'IND1', 'resources/assets/images/product_images/1538296331.shaded_client.png', '25000.00', '2018-09-30 08:32:11', NULL, NULL, '340', 'g', 1, 1, NULL, 0, 0, 5, 0, ''),
(26, 50, 'Gold Bracelet', 'resources/assets/images/product_images/1538303138.men_gold_bracelet.jpg', '106633.00', '2018-09-30 10:25:38', '2018-09-30 10:32:59', NULL, '27.92', 'g', 1, 1, 0, 0, 0, 5, 42, 'Criss+Cross+Cutout+Bracelet.html'),
(30, 60, 'bracelets', 'resources/assets/images/product_images/1538304702.Flat Textured Bracelet.jpg', '132490.00', '2018-09-30 10:51:42', NULL, NULL, '34.69', 'g', 1, 1, NULL, 0, 0, 6, 0, 'Flat+Textured+Bracelet.html'),
(31, 40, 'bracelets', 'resources/assets/images/product_images/1538305136.Arrow Linked Bracelet.jpg', '104533.00', '2018-09-30 10:58:56', NULL, NULL, '27.37', 'g', 1, 1, NULL, 0, 0, 4, 0, 'Arrow+Linked+Bracelet.html'),
(32, 50, 'bracelets', 'resources/assets/images/product_images/1538305629.Daksh Mesh Bracelet.jpg', '49231.00', '2018-09-30 11:07:09', NULL, NULL, '12.89', 'g', 1, 1, NULL, 0, 0, 5, 0, 'Daksh+Mesh+Bracelet.html'),
(33, 40, 'bracelets', 'resources/assets/images/product_images/1538306109.Soaring Blue Delicate Butterfly Bracelet.jpg', '23073.00', '2018-09-30 11:15:09', '2018-09-30 11:17:22', NULL, '3.42', 'g', 1, 1, 0, 0, 0, 4, 0, 'Soaring+Blue+Delicate+Butterfly+Bracelet.html'),
(34, 60, 'bracelets', 'resources/assets/images/product_images/1538306748.Peacock Feather Bracelet.jpg', '15326.00', '2018-09-30 11:25:48', '2018-11-12 05:57:35', NULL, '2.5', 'g', 1, 1, 0, 0, 1, 6, 0, 'Peacock+Feather+Bracelet.html'),
(35, 100, 'GC24K', 'resources/assets/images/product_images/1538307150.coin3.jpg', '30000.00', '2018-09-30 11:32:30', NULL, NULL, '10', 'g', 1, 1, NULL, 0, 0, 25, 0, 'GC24K.html'),
(36, 100, 'GC24K', 'resources/assets/images/product_images/1538307294.coin2.jpg', '60000.00', '2018-09-30 11:34:54', NULL, NULL, '20', 'g', 1, 0, NULL, 0, 0, 25, 0, 'GC24K.html'),
(37, 50, 'bracelets', 'resources/assets/images/product_images/1538309952.Butterfly Swarm Bracelet.jpg', '27218.00', '2018-09-30 12:19:12', NULL, NULL, '3074', 'g', 1, 1, NULL, 0, 0, 5, 0, 'Butterfly+Swarm+Bracelet.html'),
(38, 100, 'GC24K', 'resources/assets/images/product_images/1538312002.gold_coinbg.jpg', '800000.00', '2018-09-30 12:53:22', NULL, NULL, '40', 'g', 1, 1, NULL, 0, 0, 20, 0, 'GC24K.html'),
(39, 1, '11', 'resources/assets/images/product_images/1583153649.service-list-01-20200224055009.jpg', '4500.00', '2020-03-02 12:54:09', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 1, 0, ''),
(40, 1, '11', 'resources/assets/images/product_images/1583153649.service-list-01-20200224055009.jpg', '4500.00', '2020-03-02 12:54:09', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 1, 0, ''),
(41, 1, '11', 'resources/assets/images/product_images/1583153698.service-list-01-20200224055009.jpg', '4500.00', '2020-03-02 12:54:58', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 1, 0, '11.html');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`products_attributes_id`, `products_id`, `options_id`, `options_values_id`, `options_values_price`, `price_prefix`, `is_default`) VALUES
(6, 4, 4, 231, '0.00', '+', 1),
(7, 4, 16, 166, '0.00', '+', 1),
(8, 4, 18, 176, '0.00', '+', 1),
(9, 4, 22, 186, '0.00', '+', 1),
(10, 4, 4, 232, '1000.00', '+', 0),
(11, 4, 4, 230, '1000.00', '-', 0),
(12, 5, 15, 164, '0.00', '+', 1),
(13, 5, 16, 166, '0.00', '+', 1),
(14, 5, 4, 231, '0.00', '+', 1),
(15, 5, 14, 160, '0.00', '+', 1),
(16, 5, 22, 186, '0.00', '+', 1),
(17, 5, 4, 232, '500.00', '+', 0),
(18, 5, 4, 230, '500.00', '-', 0),
(19, 6, 4, 231, '0.00', '+', 1),
(20, 6, 15, 164, '0.00', '+', 1),
(21, 6, 22, 186, '0.00', '+', 1),
(22, 6, 28, 198, '0.00', '+', 1),
(23, 6, 4, 232, '1500.00', '+', 0),
(24, 6, 4, 230, '1500.00', '-', 0),
(26, 7, 16, 165, '0.00', '+', 1),
(27, 7, 28, 198, '0.00', '+', 1),
(28, 7, 35, 217, '0.00', '+', 1),
(29, 7, 4, 238, '500.00', '+', 0),
(30, 7, 4, 236, '500.00', '-', 0),
(31, 8, 4, 231, '0.00', '+', 1),
(32, 8, 14, 160, '0.00', '+', 1),
(33, 8, 15, 164, '0.00', '+', 1),
(34, 8, 16, 166, '0.00', '+', 1),
(35, 8, 22, 186, '0.00', '+', 1),
(36, 8, 4, 232, '100.00', '+', 0),
(37, 8, 4, 230, '100.00', '-', 0),
(38, 9, 14, 163, '0.00', '+', 1),
(39, 9, 18, 177, '0.00', '+', 1),
(40, 9, 34, 213, '0.00', '+', 1),
(41, 9, 28, 198, '0.00', '+', 1),
(42, 9, 22, 186, '0.00', '+', 1),
(43, 9, 4, 232, '1500.00', '+', 0),
(44, 10, 4, 231, '0.00', '+', 1),
(45, 10, 15, 164, '0.00', '+', 1),
(46, 10, 28, 198, '0.00', '+', 1),
(47, 10, 22, 186, '0.00', '+', 1),
(49, 10, 4, 230, '200.00', '-', 0),
(50, 10, 4, 232, '200.00', '+', 0),
(51, 11, 4, 231, '0.00', '+', 1),
(52, 11, 13, 153, '0.00', '+', 1),
(53, 11, 14, 161, '0.00', '+', 1),
(54, 11, 15, 164, '0.00', '+', 1),
(55, 11, 18, 177, '0.00', '+', 1),
(56, 11, 22, 186, '0.00', '+', 1),
(57, 11, 28, 198, '0.00', '+', 1),
(58, 11, 35, 217, '0.00', '+', 1),
(60, 11, 4, 232, '2000.00', '+', 0),
(61, 11, 4, 230, '2000.00', '-', 0),
(62, 12, 4, 231, '0.00', '+', 1),
(63, 12, 15, 164, '0.00', '+', 1),
(64, 12, 22, 186, '0.00', '+', 1),
(65, 12, 28, 198, '0.00', '+', 1),
(66, 12, 4, 230, '500.00', '-', 0),
(67, 12, 4, 232, '500.00', '+', 0),
(68, 13, 4, 231, '0.00', '+', 1),
(69, 13, 13, 153, '0.00', '+', 1),
(70, 13, 22, 186, '0.00', '+', 1),
(71, 13, 35, 217, '0.00', '+', 1),
(72, 13, 4, 230, '200.00', '-', 0),
(73, 13, 4, 232, '200.00', '+', 0),
(74, 14, 4, 237, '0.00', '+', 1),
(75, 14, 30, 201, '0.00', '+', 1),
(76, 14, 22, 186, '0.00', '+', 1),
(77, 14, 13, 153, '0.00', '+', 1),
(78, 14, 4, 236, '150.00', '-', 0),
(79, 14, 4, 238, '150.00', '+', 0),
(86, 16, 4, 237, '0.00', '+', 1),
(87, 16, 13, 153, '0.00', '+', 1),
(88, 16, 22, 186, '0.00', '+', 1),
(89, 16, 28, 198, '0.00', '+', 1),
(90, 16, 4, 236, '200.00', '-', 0),
(91, 16, 4, 238, '200.00', '+', 0),
(93, 17, 4, 231, '0.00', '+', 1),
(94, 17, 15, 164, '0.00', '+', 1),
(95, 17, 22, 186, '0.00', '+', 1),
(96, 17, 28, 198, '0.00', '+', 1),
(97, 17, 4, 230, '150.00', '-', 0),
(98, 17, 4, 232, '150.00', '+', 0),
(99, 18, 4, 231, '0.00', '+', 1),
(100, 18, 13, 152, '0.00', '+', 1),
(101, 18, 15, 164, '0.00', '+', 1),
(102, 18, 22, 186, '0.00', '+', 1),
(103, 18, 4, 232, '1000.00', '+', 0),
(104, 18, 4, 230, '1000.00', '-', 0),
(111, 20, 15, 164, '0.00', '+', 1),
(112, 20, 13, 152, '0.00', '+', 1),
(113, 20, 20, 182, '0.00', '+', 1),
(114, 20, 22, 185, '0.00', '+', 1),
(115, 20, 27, 197, '0.00', '+', 1),
(116, 20, 33, 210, '0.00', '+', 1),
(117, 20, 30, 201, '15000.00', '-', 0),
(118, 21, 13, 147, '0.00', '+', 1),
(119, 21, 15, 164, '0.00', '+', 1),
(120, 21, 20, 182, '0.00', '+', 1),
(121, 21, 27, 197, '0.00', '+', 1),
(122, 21, 33, 211, '0.00', '+', 1),
(123, 21, 22, 187, '0.00', '+', 1),
(124, 21, 14, 163, '1000.00', '+', 0),
(125, 22, 15, 164, '0.00', '+', 1),
(126, 22, 13, 152, '0.00', '+', 1),
(127, 22, 22, 185, '0.00', '+', 1),
(128, 22, 19, 180, '0.00', '+', 1),
(129, 22, 33, 212, '0.00', '+', 1),
(130, 22, 13, 153, '2500.00', '+', 0),
(131, 23, 4, 29, '0.00', '+', 1),
(132, 23, 13, 154, '0.00', '+', 1),
(134, 26, 14, 160, '0.00', '+', 1),
(135, 26, 28, 198, '0.00', '+', 1),
(136, 26, 15, 244, '0.00', '+', 1),
(137, 26, 13, 245, '0.00', '+', 1),
(142, 30, 13, 245, '0.00', '+', 1),
(143, 30, 10, 247, '0.00', '+', 1),
(144, 30, 14, 160, '0.00', '+', 1),
(145, 30, 15, 244, '0.00', '+', 1),
(146, 31, 13, 245, '0.00', '+', 1),
(147, 31, 10, 247, '0.00', '+', 1),
(148, 31, 14, 160, '0.00', '+', 1),
(149, 31, 15, 244, '0.00', '+', 1),
(150, 32, 10, 247, '0.00', '+', 1),
(151, 32, 13, 245, '0.00', '+', 1),
(152, 32, 14, 160, '0.00', '+', 1),
(153, 32, 15, 244, '0.00', '+', 1),
(154, 33, 13, 152, '0.00', '+', 1),
(155, 33, 10, 248, '0.00', '+', 1),
(156, 33, 15, 164, '0.00', '+', 1),
(157, 33, 28, 198, '0.00', '+', 1),
(159, 34, 10, 249, '0.00', '+', 1),
(160, 34, 13, 152, '0.00', '+', 1),
(161, 34, 14, 160, '0.00', '+', 1),
(162, 34, 15, 164, '0.00', '+', 1),
(163, 34, 28, 198, '0.00', '+', 1),
(164, 37, 10, 249, '0.00', '+', 1),
(165, 37, 13, 152, '0.00', '+', 1),
(166, 37, 14, 160, '0.00', '+', 1),
(167, 37, 15, 164, '0.00', '+', 1),
(168, 37, 28, 198, '0.00', '+', 1),
(169, 36, 13, 147, '250000.00', '+', 0),
(170, 35, 13, 147, '800000.00', '+', 0),
(171, 38, 13, 152, '12000.00', '+', 0),
(172, 38, 4, 88, '1230.00', '+', 0),
(173, 41, 16, 166, '0.00', '+', 1),
(174, 41, 16, 168, '10.00', '+', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes_download`
--

CREATE TABLE `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL,
  `products_attributes_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_attributes_maxdays` int(2) DEFAULT '0',
  `products_attributes_maxcount` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_description`
--

CREATE TABLE `products_description` (
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_description` text COLLATE utf8_unicode_ci,
  `products_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_viewed` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_description`
--

INSERT INTO `products_description` (`products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`) VALUES
(2, 1, 'Helena Platinum Band for Her', '<p><em>Platinum rings</em>&nbsp;are under high demand as engagement&nbsp;<em>rings for women</em>&nbsp;and men both.&nbsp;...</p>\r\n\r\n<p>The prices listed for the collection of&nbsp;<em>platinum rings for women</em>&nbsp;ranges between Rs. 10,000 to Rs. 75,000.&nbsp;...</p>\r\n\r\n<p>The Eden&nbsp;<em>Platinum Ring</em>&nbsp;by CaratLane is another dazzling&nbsp;<em>platinum ring</em>&nbsp;studded with diamonds</p>', NULL, 0),
(4, 1, 'Matt Solitaire Ring for Men', '<p>See&nbsp;<em>men&#39;s</em>&nbsp;wedding&nbsp;<em>rings</em>&nbsp;in shades of gold, platinum, tungsten, and more. ...</p>\r\n\r\n<p>Our handcrafted collection of&nbsp;<em>men&#39;s</em>&nbsp;wedding&nbsp;<em>rings</em>&nbsp;includes both&nbsp;<em>diamond</em>&nbsp;and plain metal&nbsp;<em>bands</em>&nbsp;in multiple .....&nbsp;</p>\r\n\r\n<p><em>Matte</em>&nbsp;Classic Wedding&nbsp;<em>Ring</em>&nbsp;in 14k White Gold (5mm).</p>', NULL, 0),
(5, 1, 'Intertwined Glim Ring', '<p>Caretlane&nbsp;is a collection of must-have, affordable pieces.</p>\r\n\r\n<p>Shop our unique collection of&nbsp; rings!</p>', NULL, 0),
(6, 1, 'Charm Solitaire Ring', '<p>A true Canadian treasure, as timeless as your love.</p>\r\n\r\n<p>This 1ct Glacier Fire Canadian&nbsp;<em>Diamond solitaire</em>engagement&nbsp;<em>ring</em>&nbsp;shines endlessly in 14k white gold.</p>\r\n\r\n<p>Shop&nbsp;solitaire engagement&nbsp;<em>rings</em>.</p>', NULL, 0),
(7, 1, 'Daifilo Diamond Band for Him', '<p>Get Wide range of beautifully handcrafted&nbsp;<strong>Couple Band</strong>&nbsp;Ring at lowest price.</p>\r\n\r\n<p>&nbsp;</p>', NULL, 0),
(8, 1, 'Trio Miracle Plate Ring', '<p>Buy The&nbsp;<em>Trio Miracle Plate</em>&nbsp;Diamond&nbsp;<em>Ring</em>&nbsp;Yellow Gold 18K Online.</p>\r\n\r\n<p>Get latest design of casual rings.</p>', NULL, 0),
(9, 1, 'Glisten Solitaire Bridal Ring Set', '<p>A glittering row of micro prong&nbsp;<em>set</em>&nbsp;diamonds enlivens.</p>\r\n\r\n<p>The slender band of this beautiful streamlined cathedral&nbsp;<em>engagement ring.</em></p>\r\n\r\n<p>Expertly crafted in white gold</p>', NULL, 0),
(10, 1, 'Shyla Mangalsutra Ring', '<p>Buy gorgeous and simple&nbsp;<em>Shyla</em>&nbsp;Diamond&nbsp;<em>Mangalsutra</em>&nbsp;at reasonable price.</p>\r\n\r\n<p>We offer the lSimple Black Beads&nbsp;<em>Mangalsutra</em>&nbsp;rings.</p>', NULL, 0),
(11, 1, 'Spiral Solitaire Ring', '<p>The&nbsp;<em>Spiral Solitaire</em>&nbsp;diamond&nbsp;<em>ring</em>&nbsp;at the best price in India!</p>\r\n\r\n<p>This&nbsp;<em>ring</em>&nbsp;can be completely customized and you can choose the metal color, metal purity, diamond .</p>', NULL, 0),
(12, 1, 'Promise Solitaire Ring', '<p>The&nbsp;<em>Promise</em>&nbsp;of Love&nbsp;<em>Ring</em>&nbsp;is a certified PreSet&nbsp;<em>Solitaire Ring</em>&nbsp;In 18Kt Gold.</p>\r\n\r\n<p>Enhance your style with a dash of glamour with this exquisite Sterling golden&nbsp;<em>ring</em>.</p>', NULL, 0),
(13, 1, 'Marvel Solitaire Ring', '<p>This single&nbsp;<em>diamond</em>&nbsp;is all that is you will need today.</p>\r\n\r\n<p>After all, diamonds are girls beast friends, isnt it?</p>\r\n\r\n<p>So, make this trendy and graceful&nbsp;<em>ring</em>&nbsp;your best friend&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, 0),
(14, 1, 'Ben Solitaire Ring for Men', '<p>Get latest designs of engagement rings for mens.</p>\r\n\r\n<p>Shop our selection of&nbsp;<em>men&#39;s</em>&nbsp;wedding&nbsp;<em>rings</em>&nbsp;&amp;&nbsp;<em>bands</em>&nbsp;that combine long-lasting quality.</p>', NULL, 0),
(16, 1, 'Nick Solitaire Ring for Men', '<p>Broad-shaped&nbsp;<em>rings for men</em>&nbsp;include patterns such as the Owen&nbsp;<em>Solitaire Ring</em>&nbsp;for Him.</p>\r\n\r\n<p>The&nbsp;<em>Nick Solitaire Ring</em>&nbsp;for Him are strikingly bold&nbsp;<em>ring</em>&nbsp;styles for&nbsp;<em>men.</em></p>\r\n\r\n<p>Buy latest rings for mens in lowest price.</p>', NULL, 0),
(17, 1, 'Grandiose Ring', '<p>Grandiose Ring&nbsp;Mount is a certified Diamond Solitaire Ring Mount In 18Kt Gold.&nbsp;</p>\r\n\r\n<p>Buy latest design of&nbsp;grandiose rings for womens.</p>', NULL, 0),
(18, 1, 'Interior Carved Solitaire Ring', '<p>Buy latest design of Interior Carved Solitaire Ring.</p>\r\n\r\n<p>&nbsp;</p>', NULL, 0),
(20, 1, 'Gold Earring (22Kt Purity) From Vaiga Collection', '<p>Set in 22 Kt Yellow Gold (7.87 gms) with BIS Hallmark</p>', NULL, 0),
(21, 1, 'Forever Floral Pendant', '<p>Set in 18 Kt Yellow Gold (0.55 gms) with diamonds (0.03 Ct,IJ-SI)</p>', NULL, 0),
(22, 1, 'Adeal Butterfly Hoop Earrings', '<p><a href=\\\"\\\\\\\" target=\\\"\\\\&quot;_blank\\\\&quot;\\\">Hoop Earrings Designs</a></p>', NULL, 0),
(23, 1, 'Gogals', '<p>Black coloured Sun glassses</p>', NULL, 0),
(24, 1, 'indian rings', '<p>testing for desc</p>', NULL, 0),
(26, 1, 'Criss Cross Cutout Bracelet', '<p>Stay on trend with bold accessories like the plus size&nbsp;<em>Criss Cross Cutout</em>&nbsp;Stretch&nbsp;<em>Bracelet</em>&nbsp;available online at trident.com</p>', NULL, 0),
(30, 1, 'Flat Textured Bracelet', '<p>Buy&nbsp;Flat Textured Bracelet for mens at trident.com</p>', NULL, 0),
(31, 1, 'Arrow Linked Bracelet', '<p>Buy&nbsp;Arrow Linked Bracelet for mens at trident.com</p>\r\n\r\n<p><em>Arrow linked</em>&nbsp;<em>bracelet</em>&nbsp;features a rhythmic pattern of stylised&nbsp;<em>arrow</em>&nbsp;heads.</p>', NULL, 0),
(32, 1, 'Daksh Mesh Bracelet', '<p>Buy&nbsp;Daksh Mesh Bracelet for mens at trident.com</p>\r\n\r\n<p>Daksh Mesh Bracelet is the perfect addition to any outfit. Shop now and customize this trendy piece with a charm to enhance your look.</p>', NULL, 0),
(33, 1, 'Soaring Blue Delicate Butterfly Bracelet', '<h3>Buy Soaring Blue Delicate Butterfly Bracelet&nbsp;from the Butterfly - The Spirit of Your collection at trident.com</h3>\r\n\r\n<p>Shop now and customize this trendy piece with a charm to enhance your look.</p>\r\n\r\n<p>&nbsp;</p>', NULL, 0),
(34, 1, 'Peacock Feather Bracelet', '<p>Buy&nbsp;Peacock Feather Bracelet from the Peacock collection at trident.com</p>\r\n\r\n<p>Shop now and customize this trendy piece with a charm to enhance your look.</p>', NULL, 0),
(35, 1, 'GC24K', '', NULL, 0),
(36, 1, 'GC24K', '', NULL, 0),
(37, 1, 'Butterfly Swarm Bracelet', '<h3>Buy Butterfly Swarm Bracelet from the Ornati by Farah Khan collection for womens at trident.com</h3>\r\n\r\n<p>Butterfly Swarm Bracelet is the perfect addition to any outfit. Shop now and customize this trendy piece with a charm to enhance your look.</p>', NULL, 0),
(38, 1, 'GC24K', '<p>pure gold with 24K</p>', NULL, 0),
(41, 1, 'dj', '<p>djs</p>', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci,
  `htmlcontent` mediumtext COLLATE utf8_unicode_ci,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`) VALUES
(1, 3, 'resources/assets/images/product_images/1535786248.2.jpg', '', 1),
(2, 3, 'resources/assets/images/product_images/1535786256.3.jpg', '', 1),
(3, 3, 'resources/assets/images/product_images/1535786266.4.jpg', '', 1),
(4, 4, 'resources/assets/images/product_images/1535788117.1.jpg', '', 1),
(5, 4, 'resources/assets/images/product_images/1535788127.2.jpg', '', 1),
(6, 4, 'resources/assets/images/product_images/1535788181.3.jpg', '', 1),
(7, 5, 'resources/assets/images/product_images/1535794952.4.jpg', '', 1),
(8, 5, 'resources/assets/images/product_images/1535794960.6.jpg', '', 1),
(9, 6, 'resources/assets/images/product_images/1535796758.8.jpg', '', 1),
(10, 6, 'resources/assets/images/product_images/1535796765.9.jpeg', '', 1),
(11, 7, 'resources/assets/images/product_images/1535798403.11.jpg', '', 1),
(12, 7, 'resources/assets/images/product_images/1535798439.13.jpg', '', 1),
(13, 7, 'resources/assets/images/product_images/1535798470.12.jpeg', '', 1),
(14, 8, 'resources/assets/images/product_images/1535799590.14.jpg', '', 1),
(15, 8, 'resources/assets/images/product_images/1535799600.16.jpg', '', 1),
(16, 8, 'resources/assets/images/product_images/1535799607.15.jpg', '', 1),
(17, 9, 'resources/assets/images/product_images/1535800825.17.jpg', '', 1),
(18, 9, 'resources/assets/images/product_images/1535800833.18.jpg', '', 1),
(19, 9, 'resources/assets/images/product_images/1535800841.19.jpg', '', 1),
(20, 10, 'resources/assets/images/product_images/1535803988.20.jpg', '', 1),
(21, 10, 'resources/assets/images/product_images/1535803995.22.jpg', '', 1),
(22, 10, 'resources/assets/images/product_images/1535804003.21.jpg', '', 1),
(23, 11, 'resources/assets/images/product_images/1535949809.24.jpg', '', 1),
(24, 11, 'resources/assets/images/product_images/1535949820.25.jpg', '', 1),
(25, 11, 'resources/assets/images/product_images/1535949829.23.jpg', '', 1),
(26, 12, 'resources/assets/images/product_images/1535950766.26.jpg', '', 1),
(27, 12, 'resources/assets/images/product_images/1535950773.27.jpg', '', 1),
(28, 13, 'resources/assets/images/product_images/1535951394.28.jpg', '', 1),
(29, 13, 'resources/assets/images/product_images/1535951405.29.jpg', '', 1),
(30, 13, 'resources/assets/images/product_images/1535951417.30.jpg', '', 1),
(31, 14, 'resources/assets/images/product_images/1535952846.31.jpg', '', 1),
(32, 14, 'resources/assets/images/product_images/1535952855.32.jpg', '', 1),
(33, 15, 'resources/assets/images/product_images/1535953323.33.jpg', '', 1),
(34, 15, 'resources/assets/images/product_images/1535953330.34.jpg', '', 1),
(35, 15, 'resources/assets/images/product_images/1535953339.35.jpg', '', 1),
(36, 16, 'resources/assets/images/product_images/1535953966.36.jpg', '', 1),
(37, 16, 'resources/assets/images/product_images/1535953975.37.jpg', '', 1),
(38, 17, 'resources/assets/images/product_images/1535956737.38.jpg', '', 1),
(39, 17, 'resources/assets/images/product_images/1535956745.39.jpg', '', 1),
(40, 18, 'resources/assets/images/product_images/1535957501.41.jpg', '', 1),
(41, 18, 'resources/assets/images/product_images/1535957512.42.jpg', '', 1),
(42, 18, 'resources/assets/images/product_images/1535957522.43.jpg', '', 1),
(43, 19, 'resources/assets/images/product_images/1535958073.44.jpg', '', 1),
(44, 19, 'resources/assets/images/product_images/1535958082.45.jpg', '', 1),
(46, 19, 'resources/assets/images/product_images/1535958103.46.jpg', '', 1),
(47, 20, 'resources/assets/images/product_images/1536061189.ea2.jpg', '', 1),
(48, 26, 'resources/assets/images/product_images/1538303427.men_gold_bracelet1.jpg', '', 1),
(49, 26, 'resources/assets/images/product_images/1538303437.men_gold_bracelet2.jpg', '', 1),
(50, 26, 'resources/assets/images/product_images/1538303446.men_gold_bracelet3.jpg', '', 1),
(51, 29, 'resources/assets/images/product_images/1538304414.Flat Textured Bracelet1.jpg', '', 1),
(52, 29, 'resources/assets/images/product_images/1538304426.Flat Textured Bracelet2.jpg', '', 1),
(53, 29, 'resources/assets/images/product_images/1538304434.Flat Textured Bracelet3.jpg', '', 1),
(54, 30, 'resources/assets/images/product_images/1538304779.Flat Textured Bracelet1.jpg', '', 1),
(55, 30, 'resources/assets/images/product_images/1538304787.Flat Textured Bracelet2.jpg', '', 1),
(56, 30, 'resources/assets/images/product_images/1538304796.Flat Textured Bracelet3.jpg', '', 1),
(58, 31, 'resources/assets/images/product_images/1538305205.Arrow Linked Bracelet1.jpg', '', 1),
(59, 31, 'resources/assets/images/product_images/1538305214.Arrow Linked Bracelet2.jpg', '', 1),
(60, 32, 'resources/assets/images/product_images/1538305678.Daksh Mesh Bracelet1.jpg', '', 1),
(61, 32, 'resources/assets/images/product_images/1538305686.Daksh Mesh Bracelet2.jpg', '', 1),
(62, 32, 'resources/assets/images/product_images/1538305695.Daksh Mesh Bracelet3.jpg', '', 1),
(63, 33, 'resources/assets/images/product_images/1538306216.Soaring Blue Delicate Butterfly Bracelet1.jpg', '', 1),
(64, 33, 'resources/assets/images/product_images/1538306224.Soaring Blue Delicate Butterfly Bracelet2.jpg', '', 1),
(65, 33, 'resources/assets/images/product_images/1538306231.Soaring Blue Delicate Butterfly Bracelet3.jpg', '', 1),
(67, 34, 'resources/assets/images/product_images/1538306959.Peacock Feather Bracelet1.jpg', '', 1),
(68, 34, 'resources/assets/images/product_images/1538306974.Peacock Feather Bracelet2.jpg', '', 1),
(69, 34, 'resources/assets/images/product_images/1538306991.Peacock Feather Bracelet3.jpg', '', 1),
(70, 36, 'resources/assets/images/product_images/1538307433.coin1.jpg', '', 1),
(71, 36, 'resources/assets/images/product_images/1538307435.coin1.jpg', '', 1),
(72, 36, 'resources/assets/images/product_images/1538307441.coin1.jpg', '', 1),
(73, 37, 'resources/assets/images/product_images/1538310005.Butterfly Swarm Bracelet1.jpg', '', 1),
(74, 37, 'resources/assets/images/product_images/1538310013.Butterfly Swarm Bracelet2.jpg', '', 1),
(75, 37, 'resources/assets/images/product_images/1538310021.Butterfly Swarm Bracelet3.jpg', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_notifications`
--

CREATE TABLE `products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `categories_id` int(100) NOT NULL,
  `session_regenerate_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `language_id`, `products_options_name`, `categories_id`, `session_regenerate_id`) VALUES
(2, 1, 'Metal', 0, '1502106343'),
(3, 1, 'Diamond', 0, '1502106343'),
(4, 1, 'Size', 0, '1502106711'),
(5, 2, 'Grootte', 0, '1502106711'),
(6, 4, 'Ø¨Ø­Ø¬Ù…', 0, '1502106711'),
(7, 1, 'Waist', 0, '1502187895'),
(8, 2, 'Taille', 0, '1502187895'),
(9, 4, 'ÙˆØ³Ø·', 0, '1502187895'),
(10, 1, 'Length', 0, '1502187939'),
(13, 1, 'Metal', 0, '1533042610'),
(14, 1, 'Material', 0, '1533187919'),
(15, 1, 'Shop for', 0, '1533188025'),
(16, 1, 'Ring Style', 0, '1533188078'),
(17, 1, 'Discounts', 0, '1533188115'),
(18, 1, 'Center Stone Size', 0, '1533188144'),
(19, 1, 'Collections', 0, '1533188168'),
(20, 1, 'Melody of Nature', 0, '1533188184'),
(21, 1, 'TVC Products', 0, '1533188194'),
(22, 1, 'Product Type', 0, '1533188221'),
(24, 1, 'Occasion', 0, '1533188247'),
(25, 1, 'Gifts', 0, '1533188257'),
(26, 1, 'Price Slab', 0, '1533188307'),
(27, 1, 'Festive Looks', 0, '1533188317'),
(28, 1, 'Brand', 0, '1533188340'),
(29, 1, 'Technique', 0, '1533188349'),
(30, 1, 'Weight Ranges', 0, '1533188398'),
(31, 1, 'Ring size(Ready to ship)', 0, '1533188431'),
(32, 1, 'Gemstone', 0, '1533188441'),
(33, 1, 'Theme', 0, '1533188454'),
(34, 1, 'Gemstone Colour', 0, '1533188468'),
(35, 1, 'Center Stone Shape', 0, '1533188478'),
(36, 1, 'Shipping Days', 0, '1533188489'),
(37, 1, 'Curated by', 0, '1533188507');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values`
--

CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_values_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` double NOT NULL,
  `unit` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `making_charges` double NOT NULL,
  `diamond_carat` double NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `language_id`, `products_options_values_name`, `price`, `unit`, `making_charges`, `diamond_carat`, `image`) VALUES
(10, 4, 'Ø¨Ù†Ù‰', 0, '', 0, 0, ''),
(11, 4, 'ÙƒØ±ÙŠÙ…', 0, '', 0, 0, ''),
(12, 4, 'Ø£Ø²Ø±Ù‚', 0, '', 0, 0, ''),
(13, 4, 'Ù…ØªØ¹Ø¯Ø¯', 0, '', 0, 0, ''),
(14, 4, 'Ø£Ø³ÙˆØ¯', 0, '', 0, 0, ''),
(15, 4, 'Ø§Ù„Ù„ÙˆÙ† Ø§Ù„Ø±Ù…Ø§Ø¯ÙŠ', 0, '', 0, 0, ''),
(16, 4, 'Ø£Ø¨ÙŠØ¶', 0, '', 0, 0, ''),
(17, 4, 'Ø£Ø±Ø¬ÙˆØ§Ù†ÙŠ', 0, '', 0, 0, ''),
(18, 4, 'Ø§Ù„Ù‚ÙˆØ§Øª Ø§Ù„Ø¨Ø­Ø±ÙŠØ©', 0, '', 0, 0, ''),
(20, 2, 'Bruin', 0, '', 0, 0, ''),
(21, 2, 'Room', 0, '', 0, 0, ''),
(22, 2, 'Blauw', 0, '', 0, 0, ''),
(23, 2, 'Multi', 0, '', 0, 0, ''),
(24, 2, 'Zwart', 0, '', 0, 0, ''),
(25, 2, 'Grijs', 0, '', 0, 0, ''),
(26, 2, 'Wit', 0, '', 0, 0, ''),
(27, 2, 'Purper', 0, '', 0, 0, ''),
(28, 2, 'Marine', 0, '', 0, 0, ''),
(29, 1, 'Small', 0, '', 0, 0, ''),
(30, 2, 'Klein', 0, '', 0, 0, ''),
(31, 4, 'ØµØºÙŠØ±', 0, '', 0, 0, ''),
(33, 4, 'Ù…ØªÙˆØ³Ø·', 0, '', 0, 0, ''),
(34, 2, 'Medium', 0, '', 0, 0, ''),
(35, 1, 'Large', 0, '', 0, 0, ''),
(36, 2, 'Groot', 0, '', 0, 0, ''),
(37, 4, 'ÙƒØ¨ÙŠØ±', 0, '', 0, 0, ''),
(38, 1, 'Extra Large', 0, '', 0, 0, ''),
(39, 4, 'ÙƒØ¨ÙŠØ± Ø¬Ø¯Ø§', 0, '', 0, 0, ''),
(40, 2, 'Extra groot', 0, '', 0, 0, ''),
(41, 1, '28W', 0, '', 0, 0, ''),
(42, 1, '30W', 0, '', 0, 0, ''),
(43, 1, '32W', 0, '', 0, 0, ''),
(44, 1, '34W', 0, '', 0, 0, ''),
(45, 1, '36W', 0, '', 0, 0, ''),
(46, 1, '38W', 0, '', 0, 0, ''),
(47, 1, '40W', 0, '', 0, 0, ''),
(49, 2, '28W', 0, '', 0, 0, ''),
(50, 2, '30W', 0, '', 0, 0, ''),
(51, 2, '32W', 0, '', 0, 0, ''),
(52, 2, '34W', 0, '', 0, 0, ''),
(53, 2, '36W', 0, '', 0, 0, ''),
(54, 2, '38w', 0, '', 0, 0, ''),
(55, 2, '40W', 0, '', 0, 0, ''),
(56, 2, '42W', 0, '', 0, 0, ''),
(57, 4, '28W', 0, '', 0, 0, ''),
(58, 4, '30W', 0, '', 0, 0, ''),
(59, 4, '32W', 0, '', 0, 0, ''),
(60, 4, '34w', 0, '', 0, 0, ''),
(61, 4, '36W', 0, '', 0, 0, ''),
(62, 4, '38W', 0, '', 0, 0, ''),
(63, 4, '40W', 0, '', 0, 0, ''),
(64, 4, '42W', 0, '', 0, 0, ''),
(65, 1, '30L', 0, '', 0, 0, ''),
(66, 1, '32L', 0, '', 0, 0, ''),
(67, 1, '34L', 0, '', 0, 0, ''),
(68, 2, '30L', 0, '', 0, 0, ''),
(69, 2, '32L', 0, '', 0, 0, ''),
(70, 2, '34L', 0, '', 0, 0, ''),
(71, 4, '30L', 0, '', 0, 0, ''),
(72, 4, '32L', 0, '', 0, 0, ''),
(73, 4, '34L', 0, '', 0, 0, ''),
(78, 2, '7D', 0, '', 0, 0, ''),
(79, 2, '8D', 0, '', 0, 0, ''),
(80, 2, '8.5D', 0, '', 0, 0, ''),
(81, 2, '9D', 0, '', 0, 0, ''),
(82, 4, '7D', 0, '', 0, 0, ''),
(83, 4, '8D', 0, '', 0, 0, ''),
(84, 4, '8.5D', 0, '', 0, 0, ''),
(85, 4, '9D', 0, '', 0, 0, ''),
(86, 2, '24', 0, '', 0, 0, ''),
(94, 2, '25', 0, '', 0, 0, ''),
(95, 2, '26', 0, '', 0, 0, ''),
(96, 2, '27', 0, '', 0, 0, ''),
(97, 2, '28', 0, '', 0, 0, ''),
(98, 2, '29', 0, '', 0, 0, ''),
(99, 2, '30', 0, '', 0, 0, ''),
(100, 4, '24', 0, '', 0, 0, ''),
(101, 4, '25', 0, '', 0, 0, ''),
(102, 4, '26', 0, '', 0, 0, ''),
(103, 4, '27', 0, '', 0, 0, ''),
(104, 4, '28', 0, '', 0, 0, ''),
(105, 4, '29', 0, '', 0, 0, ''),
(106, 4, '30', 0, '', 0, 0, ''),
(108, 4, 'Ù…ÙˆÙ„ÙˆØ¯ Ø¬Ø¯ÙŠØ¯', 0, '', 0, 0, ''),
(109, 2, 'New Born', 0, '', 0, 0, ''),
(113, 2, '3 Mos', 0, '', 0, 0, ''),
(114, 2, '6 Mos', 0, '', 0, 0, ''),
(115, 2, '9 Mos', 0, '', 0, 0, ''),
(116, 4, '3 Mos', 0, '', 0, 0, ''),
(117, 4, '6 Mos', 0, '', 0, 0, ''),
(118, 4, '9 Mos', 0, '', 0, 0, ''),
(120, 4, 'Ù‡ÙˆÙ„ÙŠÙˆÙˆØ¯ØŒ ØªÙ‚Ø´Ø¯', 0, '', 0, 0, ''),
(121, 2, 'Hollywood Cream', 0, '', 0, 0, ''),
(123, 2, 'Vintage Zilver', 0, '', 0, 0, ''),
(124, 4, 'Ø®Ù…Ø±ØŒ Ø³ÙŠÙ„ÙØ±', 0, '', 0, 0, ''),
(126, 4, 'Ù…Ù„Ùƒ', 0, '', 0, 0, ''),
(127, 2, 'koning', 0, '', 0, 0, ''),
(128, 4, 'Ù…Ù…ØªÙ„Ø¦', 0, '', 0, 0, ''),
(129, 2, 'vol', 0, '', 0, 0, ''),
(133, 2, '15\"x20\"', 0, '', 0, 0, ''),
(134, 4, '15\"x20\"', 0, '', 0, 0, ''),
(135, 2, '22\"X22\"', 0, '', 0, 0, ''),
(136, 4, '22\"X22\"', 0, '', 0, 0, ''),
(140, 2, '3T', 0, '', 0, 0, ''),
(141, 2, '4T', 0, '', 0, 0, ''),
(142, 2, '5T', 0, '', 0, 0, ''),
(143, 4, '3T', 0, '', 0, 0, ''),
(144, 4, '4T', 0, '', 0, 0, ''),
(145, 4, '5T', 0, '', 0, 0, ''),
(147, 1, '18 ct', 0, '', 0, 0, ''),
(152, 1, '18 Kt Yellow', 0, '', 0, 0, ''),
(153, 1, '18 Kt White', 0, '', 0, 0, ''),
(154, 1, '18 Kt Rose', 0, '', 0, 0, ''),
(155, 1, '18 Kt Three Tone', 0, '', 0, 0, ''),
(156, 1, '14 Kt Yellow', 0, '', 0, 0, ''),
(157, 1, '14 Kt White', 0, '', 0, 0, ''),
(158, 1, '14 Kt Rose', 0, '', 0, 0, ''),
(159, 1, '14 Kt Two Tone', 0, '', 0, 0, ''),
(160, 1, 'Gold', 0, '', 0, 0, ''),
(161, 1, 'Diamond', 0, '', 0, 0, ''),
(162, 1, 'Gemstone', 0, '', 0, 0, ''),
(163, 1, 'Solitaire', 0, '', 0, 0, ''),
(164, 1, 'Women', 0, '', 0, 0, ''),
(165, 1, 'Bands', 0, '', 0, 0, ''),
(166, 1, 'Casual Rings', 0, '', 0, 0, ''),
(167, 1, 'Cluster', 0, '', 0, 0, ''),
(168, 1, 'Chain Rings', 0, '', 0, 0, ''),
(169, 1, 'Midi Rings', 0, '', 0, 0, ''),
(170, 1, 'Half Eternity', 0, '', 0, 0, ''),
(171, 1, 'Stacklable', 0, '', 0, 0, ''),
(172, 1, 'Save Upto 25% + Extra 10% Off', 0, '', 0, 0, ''),
(173, 1, 'Save 25%', 0, '', 0, 0, ''),
(174, 1, 'Save 5%', 0, '', 0, 0, ''),
(175, 1, 'Save 15%', 0, '', 0, 0, ''),
(176, 1, '0.20 - 0.29 Carat', 0, '', 0, 0, ''),
(177, 1, '0.30 - 0.49 Carat', 0, '', 0, 0, ''),
(178, 1, 'Stitched', 0, '', 0, 0, ''),
(179, 1, 'Gold Crush', 0, '', 0, 0, ''),
(180, 1, 'Valentines', 0, '', 0, 0, ''),
(181, 1, 'All  Melody of Nature', 0, '', 0, 0, ''),
(182, 1, 'Walk in the Woods', 0, '', 0, 0, ''),
(183, 1, 'The Roommates', 0, '', 0, 0, ''),
(184, 1, 'The Colleagues', 0, '', 0, 0, ''),
(185, 1, 'Earrings', 0, '', 0, 0, ''),
(186, 1, 'Rings', 0, '', 0, 0, ''),
(187, 1, 'Pandants', 0, '', 0, 0, ''),
(188, 1, 'Chains', 0, '', 0, 0, ''),
(189, 1, 'Evening', 0, '', 0, 0, ''),
(190, 1, 'Work Wear', 0, '', 0, 0, ''),
(191, 1, 'Everyday', 0, '', 0, 0, ''),
(192, 1, 'All Gifts', 0, '', 0, 0, ''),
(193, 1, 'Romantic Gifts', 0, '', 0, 0, ''),
(194, 1, 'Gifts for Sister', 0, '', 0, 0, ''),
(195, 1, '<25000', 0, '', 0, 0, ''),
(196, 1, '25000 - 50000', 0, '', 0, 0, ''),
(197, 1, 'All Festive Looks', 0, '', 0, 0, ''),
(198, 1, 'Caratlane', 0, '', 0, 0, ''),
(199, 1, 'Hammer', 0, '', 0, 0, ''),
(200, 1, '0-2 gms', 0, '', 0, 0, ''),
(201, 1, '2 - 5 gms', 0, '', 0, 0, ''),
(202, 1, '5 - 10 gms', 0, '', 0, 0, ''),
(203, 1, '5', 0, '', 0, 0, ''),
(204, 1, '6', 0, '', 0, 0, ''),
(205, 1, '7', 0, '', 0, 0, ''),
(206, 1, '8', 0, '', 0, 0, ''),
(207, 1, 'Peridot', 0, '', 0, 0, ''),
(208, 1, 'Emerald', 0, '', 0, 0, ''),
(209, 1, 'Topaz', 0, '', 0, 0, ''),
(210, 1, 'Classic', 0, '', 0, 0, ''),
(211, 1, 'Fashion', 0, '', 0, 0, ''),
(212, 1, 'Floral', 0, '', 0, 0, ''),
(213, 1, 'White', 0, '', 0, 0, ''),
(214, 1, 'Yellow', 0, '', 0, 0, ''),
(215, 1, 'Green', 0, '', 0, 0, ''),
(216, 1, 'Purple', 0, '', 0, 0, ''),
(217, 1, 'Round Solitaire', 0, '', 0, 0, ''),
(218, 1, 'Heart Solitaire', 0, '', 0, 0, ''),
(219, 1, 'Same Day', 0, '', 0, 0, ''),
(220, 1, 'Upto 7 Days', 0, '', 0, 0, ''),
(221, 1, 'All', 0, '', 0, 0, ''),
(222, 1, 'Under 15k', 0, '', 0, 0, ''),
(223, 1, 'Malaika Arora Khan', 0, '', 0, 0, ''),
(225, 1, '6', 0, '', 0, 0, ''),
(226, 1, '7', 0, '', 0, 0, ''),
(227, 1, '8', 0, '', 0, 0, ''),
(230, 1, '11', 0, '', 0, 0, ''),
(231, 1, '12', 0, '', 0, 0, ''),
(232, 1, '13', 0, '', 0, 0, ''),
(233, 1, '14', 0, '', 0, 0, ''),
(236, 1, '17', 0, '', 0, 0, ''),
(237, 1, '18', 0, '', 0, 0, ''),
(238, 1, '19', 0, '', 0, 0, ''),
(244, 1, '18 kt rose gold', 300, 'g', 100, 0, 'resources/views/admin/images/options_images/1539073053.18kt.jpg'),
(245, 1, 'IJ-SI (Round)', 500, 'ct', 0, 0.25, 'resources/views/admin/images/options_images/1539072477.dai2.jpg'),
(247, 1, 'IJ-SI (R)', 400, 'ct', 0, 1.2, 'resources/views/admin/images/options_images/1539007515.dia.jpg'),
(248, 1, '18 kt yellow gold', 400, 'g', 100, 0, 'resources/views/admin/images/options_images/1539073216.yellow.jpg'),
(249, 1, 'free size', 0, '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values_to_products_options`
--

CREATE TABLE `products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options_values_to_products_options`
--

INSERT INTO `products_options_values_to_products_options` (`products_options_values_to_products_options_id`, `products_options_id`, `products_options_values_id`) VALUES
(29, 4, 29),
(30, 5, 30),
(31, 6, 31),
(33, 6, 33),
(34, 5, 34),
(35, 4, 35),
(36, 5, 36),
(37, 6, 37),
(38, 4, 38),
(39, 6, 39),
(40, 5, 40),
(41, 7, 41),
(42, 7, 42),
(43, 7, 43),
(44, 7, 44),
(45, 7, 45),
(46, 7, 46),
(47, 7, 47),
(49, 8, 49),
(50, 8, 50),
(51, 8, 51),
(52, 8, 52),
(53, 8, 53),
(54, 8, 54),
(55, 8, 55),
(56, 8, 56),
(57, 9, 57),
(58, 9, 58),
(59, 9, 59),
(60, 9, 60),
(61, 9, 61),
(62, 9, 62),
(63, 9, 63),
(64, 9, 64),
(65, 10, 65),
(66, 10, 66),
(67, 10, 67),
(68, 11, 68),
(69, 11, 69),
(70, 11, 70),
(71, 12, 71),
(72, 12, 72),
(73, 12, 73),
(78, 5, 78),
(79, 5, 79),
(80, 5, 80),
(81, 5, 81),
(82, 6, 82),
(83, 6, 83),
(84, 6, 84),
(85, 6, 85),
(86, 5, 86),
(94, 5, 94),
(95, 5, 95),
(96, 5, 96),
(97, 5, 97),
(98, 5, 98),
(99, 5, 99),
(100, 6, 100),
(101, 6, 101),
(102, 6, 102),
(103, 6, 103),
(104, 6, 104),
(105, 6, 105),
(106, 6, 106),
(108, 6, 108),
(109, 5, 109),
(113, 5, 113),
(114, 5, 114),
(115, 5, 115),
(116, 6, 116),
(117, 6, 117),
(118, 6, 118),
(126, 6, 126),
(127, 5, 127),
(128, 6, 128),
(129, 5, 129),
(133, 5, 133),
(134, 6, 134),
(135, 5, 135),
(136, 6, 136),
(140, 5, 140),
(141, 5, 141),
(142, 5, 142),
(143, 6, 143),
(144, 6, 144),
(145, 6, 145),
(147, 13, 147),
(152, 13, 152),
(153, 13, 153),
(154, 13, 154),
(155, 13, 155),
(156, 13, 156),
(157, 13, 157),
(158, 13, 158),
(159, 13, 159),
(160, 14, 160),
(161, 14, 161),
(162, 14, 162),
(163, 14, 163),
(164, 15, 164),
(165, 16, 165),
(166, 16, 166),
(167, 16, 167),
(168, 16, 168),
(169, 16, 169),
(170, 16, 170),
(171, 16, 171),
(172, 17, 172),
(173, 17, 173),
(174, 17, 174),
(175, 17, 175),
(176, 18, 176),
(177, 18, 177),
(178, 19, 178),
(179, 19, 179),
(180, 19, 180),
(181, 20, 181),
(182, 20, 182),
(183, 21, 183),
(184, 21, 184),
(185, 22, 185),
(186, 22, 186),
(187, 22, 187),
(188, 22, 188),
(189, 24, 189),
(190, 24, 190),
(191, 24, 191),
(192, 25, 192),
(193, 25, 193),
(194, 25, 194),
(195, 26, 195),
(196, 26, 196),
(197, 27, 197),
(198, 28, 198),
(199, 29, 199),
(200, 30, 200),
(201, 30, 201),
(202, 30, 202),
(203, 31, 203),
(204, 31, 204),
(205, 31, 205),
(206, 31, 206),
(207, 32, 207),
(208, 32, 208),
(209, 32, 209),
(210, 33, 210),
(211, 33, 211),
(212, 33, 212),
(213, 34, 213),
(214, 34, 214),
(215, 34, 215),
(216, 34, 216),
(217, 35, 217),
(218, 35, 218),
(219, 36, 219),
(220, 36, 220),
(221, 37, 221),
(222, 37, 222),
(223, 37, 223),
(225, 4, 225),
(226, 4, 226),
(227, 4, 227),
(230, 4, 230),
(231, 4, 231),
(232, 4, 232),
(233, 4, 233),
(236, 4, 236),
(237, 4, 237),
(238, 4, 238),
(244, 2, 244),
(245, 3, 245),
(247, 3, 247),
(248, 2, 248),
(249, 4, 249);

-- --------------------------------------------------------

--
-- Table structure for table `products_tags`
--

CREATE TABLE `products_tags` (
  `products_id` int(200) NOT NULL,
  `tags_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_tags`
--

INSERT INTO `products_tags` (`products_id`, `tags_id`) VALUES
(4, 2),
(4, 3),
(4, 6),
(5, 2),
(5, 8),
(5, 6),
(6, 9),
(6, 10),
(6, 6),
(7, 9),
(7, 11),
(7, 12),
(8, 9),
(8, 13),
(9, 9),
(9, 14),
(9, 15),
(9, 16),
(9, 17),
(10, 9),
(10, 18),
(10, 19),
(10, 20),
(11, 2),
(11, 9),
(11, 21),
(11, 22),
(11, 23),
(12, 2),
(12, 21),
(12, 6),
(12, 22),
(12, 23),
(13, 9),
(13, 22),
(13, 21),
(13, 23),
(14, 9),
(14, 24),
(14, 6),
(14, 22),
(14, 25),
(16, 9),
(16, 6),
(16, 22),
(16, 24),
(16, 25),
(16, 26),
(17, 9),
(17, 6),
(17, 22),
(17, 27),
(17, 28),
(18, 9),
(18, 6),
(18, 22),
(18, 27),
(18, 28),
(20, 29),
(20, 8),
(21, 30),
(21, 31),
(21, 32),
(21, 8),
(22, 29),
(22, 8),
(23, 8),
(23, 33),
(24, 2),
(24, 6),
(24, 34),
(24, 35),
(25, 2),
(25, 30),
(25, 36),
(25, 37),
(25, 38),
(25, 39),
(25, 40),
(25, 41),
(26, 42),
(26, 38),
(26, 44),
(26, 45),
(26, 46),
(30, 38),
(30, 44),
(30, 45),
(30, 51),
(30, 46),
(31, 38),
(31, 44),
(31, 45),
(31, 51),
(31, 46),
(32, 38),
(32, 45),
(32, 51),
(32, 46),
(32, 44),
(33, 38),
(33, 51),
(33, 44),
(33, 53),
(33, 52),
(34, 38),
(34, 51),
(34, 44),
(34, 52),
(35, 54),
(35, 55),
(35, 56),
(35, 57),
(35, 58),
(35, 59),
(36, 58),
(36, 47),
(36, 56),
(37, 38),
(37, 44),
(37, 51),
(37, 53),
(37, 52),
(38, 1),
(41, 13);

-- --------------------------------------------------------

--
-- Table structure for table `products_to_categories`
--

CREATE TABLE `products_to_categories` (
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_id`, `categories_id`) VALUES
(4, 7),
(4, 37),
(5, 7),
(5, 38),
(6, 7),
(6, 39),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 7),
(11, 36),
(12, 7),
(12, 36),
(13, 7),
(13, 36),
(14, 7),
(14, 37),
(17, 38),
(26, 16),
(26, 42),
(30, 16),
(30, 42),
(31, 16),
(31, 42),
(32, 16),
(32, 42),
(33, 16),
(33, 43),
(34, 16),
(34, 43),
(35, 84),
(36, 86),
(37, 16),
(37, 43),
(38, 84),
(38, 89),
(41, 7),
(41, 36);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reviews_rating` int(1) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_read` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`reviews_id`, `products_id`, `customers_id`, `customers_name`, `reviews_rating`, `date_added`, `last_modified`, `reviews_status`, `reviews_read`) VALUES
(1, -5, 1, 'Gangadhar Swami', 3, '2018-09-12 00:00:00', '2018-09-12 00:00:00', 1, 0),
(2, -5, 1, 'Gangadhar Swami', 2, '2018-09-14 00:00:00', NULL, 1, 0),
(5, 13, 0, 'gs', 4, '2018-09-14 08:40:23', NULL, 0, 0),
(6, 13, 0, 'gs1', 4, '2018-09-14 08:47:18', NULL, 0, 0),
(7, -5, 0, 'sagar swami', 3, '2018-09-14 12:10:00', NULL, 0, 0),
(8, 22, 1, 'Gangadhar Swami', 5, '2018-09-30 07:18:44', NULL, 0, 0),
(9, 18, 4, 'Namrata', 1, '2018-09-30 08:22:52', NULL, 0, 0),
(10, -4, 4, 'Namrata', 5, '2018-09-30 08:25:10', NULL, 0, 0),
(11, 13, 0, 'supriya', 1, '2018-11-03 12:35:08', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviews_description`
--

CREATE TABLE `reviews_description` (
  `reviews_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `reviews_text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `reviews_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reviews_description`
--

INSERT INTO `reviews_description` (`reviews_id`, `languages_id`, `reviews_text`, `reviews_title`) VALUES
(1, 1, 'adding sample review', 'sample'),
(2, 1, 'These guys have been absolutely outstanding. When I needed them they came through in a big way! I know that if you buy this theme, you\'ll get the one thing we all look for when we buy on Themeforest, and that\'s real support for the craziest of requests! I highly recommend this theme and these people!', 'sample'),
(5, 0, 'sample review', 'aasch'),
(6, 0, 'one', 'Nice'),
(7, 0, 'I know that if you buy this theme, you\'ll get the one thing we all look for when we buy on Themeforest, and that\'s real support for the craziest of requests! I highly recommend this theme and these people! These guys have been absolutely outstanding. When I needed them they came through in a big way!', 'Good'),
(8, 0, 'Trident Rocks !!!', 'Good designs'),
(9, 0, 'Nice', 'Ring'),
(10, 0, 'good', 'zv bg'),
(11, 0, 'best', 'sample');

-- --------------------------------------------------------

--
-- Table structure for table `review_types`
--

CREATE TABLE `review_types` (
  `review_type_id` int(11) NOT NULL,
  `review_type` varchar(40) NOT NULL,
  `review_type_icon` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_types`
--

INSERT INTO `review_types` (`review_type_id`, `review_type`, `review_type_icon`) VALUES
(-6, 'Try@Home', NULL),
(-5, 'Packaging', NULL),
(-4, 'Prices', NULL),
(-3, 'Product Quality', NULL),
(-2, 'Designs', NULL),
(-1, 'Customer Service', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sec_directory_whitelist`
--

CREATE TABLE `sec_directory_whitelist` (
  `id` int(11) NOT NULL,
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sesskey` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` int(11) UNSIGNED NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(100) NOT NULL,
  `facebook_app_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_secret_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_login` tinyint(1) NOT NULL DEFAULT '1',
  `google_login` tinyint(1) NOT NULL DEFAULT '1',
  `contact_us_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `zip` int(100) NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fcm_android` text COLLATE utf8_unicode_ci NOT NULL,
  `fcm_ios` text COLLATE utf8_unicode_ci NOT NULL,
  `fcm_desktop` text COLLATE utf8_unicode_ci NOT NULL,
  `app_logo` text COLLATE utf8_unicode_ci NOT NULL,
  `fcm_android_sender_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fcm_ios_sender_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `app_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currency_symbol` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `new_product_duration` int(11) NOT NULL,
  `notification_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notification_text` text COLLATE utf8_unicode_ci NOT NULL,
  `lazzy_loading_effect` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `footer_button` tinyint(1) NOT NULL DEFAULT '1',
  `cart_button` tinyint(1) NOT NULL DEFAULT '1',
  `featured_category` int(100) NOT NULL,
  `notification_duration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_style` int(100) NOT NULL,
  `wish_list_page` tinyint(1) NOT NULL DEFAULT '1',
  `edit_profile_page` tinyint(1) NOT NULL DEFAULT '1',
  `shipping_address_page` tinyint(1) NOT NULL DEFAULT '1',
  `my_orders_page` tinyint(1) NOT NULL DEFAULT '1',
  `contact_us_page` tinyint(1) NOT NULL DEFAULT '1',
  `about_us_page` tinyint(1) NOT NULL DEFAULT '1',
  `news_page` tinyint(1) NOT NULL DEFAULT '1',
  `intro_page` tinyint(1) NOT NULL DEFAULT '1',
  `setting_page` tinyint(1) NOT NULL DEFAULT '1',
  `share_app` tinyint(1) NOT NULL DEFAULT '1',
  `rate_app` tinyint(1) NOT NULL DEFAULT '1',
  `site_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admob` tinyint(1) NOT NULL DEFAULT '1',
  `admob_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ad_unit_id_banner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ad_unit_id_interstitial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_style` int(10) NOT NULL,
  `package_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_analytic_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_notification` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `onesignal_app_id` text COLLATE utf8_unicode_ci NOT NULL,
  `onesignal_sender_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ios_admob` tinyint(1) NOT NULL DEFAULT '0',
  `ios_admob_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ios_ad_unit_id_banner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ios_ad_unit_id_interstitial` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `facebook_app_id`, `facebook_secret_id`, `facebook_login`, `google_login`, `contact_us_email`, `address`, `city`, `state`, `zip`, `country`, `latitude`, `longitude`, `phone_no`, `fcm_android`, `fcm_ios`, `fcm_desktop`, `app_logo`, `fcm_android_sender_id`, `fcm_ios_sender_id`, `app_name`, `currency_symbol`, `new_product_duration`, `notification_title`, `notification_text`, `lazzy_loading_effect`, `footer_button`, `cart_button`, `featured_category`, `notification_duration`, `home_style`, `wish_list_page`, `edit_profile_page`, `shipping_address_page`, `my_orders_page`, `contact_us_page`, `about_us_page`, `news_page`, `intro_page`, `setting_page`, `share_app`, `rate_app`, `site_url`, `admob`, `admob_id`, `ad_unit_id_banner`, `ad_unit_id_interstitial`, `category_style`, `package_name`, `google_analytic_id`, `default_notification`, `onesignal_app_id`, `onesignal_sender_id`, `ios_admob`, `ios_admob_id`, `ios_ad_unit_id_banner`, `ios_ad_unit_id_interstitial`) VALUES
(1, '', '', 0, 0, 'info@androidecommerce.com', '228 Park Ave S', 'New York', 'NY', 10003, 'USA', '40.730610', '-73.935242', '+92 1234567890', 'AAAAydhQ3fE:APA91bE7bMMNTZlhbaWV5iaOjmzEL_LgFS0dXm54nLm-AAupeviRQpmvFWa69UhXDhLiOCH_XYZrVc-MthT2AfsaFUWYGYuIUN2ajBQAcZNvLhjWuInMdtZ7o33y9CeO3SI_LSyw0n9v', '', '', '', '866917604849', '', 'Android Ecommerce', 'Rs.', 20, 'Android Ecommerce', 'A bundle of products waiting for you!', 'bubbles', 1, 1, 0, 'day', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'androidecommerce.com', 0, '', '', '', 1, 'package name', 'test', 'onesignal', '6053d948-b8f6-472a-87e4-379fa89f78d8', '866917604849', 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_description`
--

CREATE TABLE `shipping_description` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `table_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_labels` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_description`
--

INSERT INTO `shipping_description` (`id`, `name`, `language_id`, `table_name`, `sub_labels`) VALUES
(1, 'Free Shipping', 1, 'free_shipping', ''),
(4, 'Local Pickup', 1, 'local_pickup', ''),
(7, 'Flat Rate', 1, 'flate_rate', ''),
(10, 'UPS Shipping', 1, 'ups_shipping', '{\"nextDayAir\":\"Next Day Air\",\"secondDayAir\":\"2nd Day Air\",\"ground\":\"Ground\",\"threeDaySelect\":\"3 Day Select\",\"nextDayAirSaver\":\"Next Day AirSaver\",\"nextDayAirEarlyAM\":\"Next Day Air Early A.M.\",\"secondndDayAirAM\":\"2nd Day Air A.M.\"}');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `shipping_methods_id` int(100) NOT NULL,
  `methods_type_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`shipping_methods_id`, `methods_type_link`, `isDefault`, `status`, `table_name`) VALUES
(1, 'upsShipping', 0, 0, 'ups_shipping'),
(2, 'freeShipping', 1, 1, 'free_shipping'),
(3, 'localPickup', 0, 0, 'local_pickup'),
(4, 'flateRate', 0, 1, 'flate_rate');

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,2) NOT NULL,
  `specials_date_added` int(100) NOT NULL,
  `specials_last_modified` int(100) NOT NULL,
  `expires_date` int(100) NOT NULL,
  `date_status_change` int(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specials`
--

INSERT INTO `specials` (`specials_id`, `products_id`, `specials_new_products_price`, `specials_date_added`, `specials_last_modified`, `expires_date`, `date_status_change`, `status`) VALUES
(1, 25, '150.00', 1502195102, 0, 1667174400, 0, 1),
(2, 39, '27.85', 1502264917, 0, 1640995200, 0, 1),
(3, 43, '21.99', 1502268005, 0, 1640995200, 0, 1),
(4, 44, '23.55', 1502268706, 0, 1640995200, 0, 1),
(5, 48, '450.00', 1502274870, 0, 1640995200, 0, 1),
(6, 62, '22.20', 1502351882, 0, 1659398400, 0, 1),
(7, 65, '23.50', 1502353123, 0, 1646092800, 0, 1),
(8, 67, '445.00', 1502362089, 0, 1640995200, 0, 1),
(9, 70, '23.99', 1502363119, 0, 1640995200, 0, 1),
(10, 73, '23.50', 1502364697, 0, 1640995200, 0, 1),
(11, 80, '99.99', 1502366586, 0, 1640995200, 0, 1),
(12, 21, '4000.00', 1538230279, 0, 1538611200, 0, 1),
(17, 38, '700000.00', 1538312002, 0, 1536105600, 0, 1),
(18, 34, '10000.00', 1542002255, 0, 1543536000, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_contacts`
--

CREATE TABLE `store_contacts` (
  `id` int(200) NOT NULL,
  `store_id` int(200) NOT NULL,
  `contact_person` varchar(200) NOT NULL,
  `mobile` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_details`
--

CREATE TABLE `store_details` (
  `store_id` int(200) NOT NULL,
  `store_name` varchar(200) NOT NULL,
  `areas` varchar(200) NOT NULL,
  `store_city` varchar(200) NOT NULL,
  `pincode` int(6) NOT NULL,
  `country` varchar(200) NOT NULL,
  `address_line1` varchar(200) NOT NULL,
  `address_line2` varchar(200) NOT NULL,
  `map_lat` varchar(200) NOT NULL,
  `map_lng` varchar(200) NOT NULL,
  `isactive` char(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tags_id` int(100) NOT NULL,
  `tags_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tags_id`, `tags_name`) VALUES
(1, ''),
(2, 'Ring'),
(3, 'Silver'),
(4, 'Platinium'),
(5, 'silver'),
(6, 'engagement'),
(7, 'ring'),
(8, 'gold'),
(9, 'rings'),
(10, 'solitaire'),
(11, 'couple bands'),
(12, 'bands'),
(13, 'casual rings'),
(14, 'bridal'),
(15, 'bridal rings'),
(16, 'ring set'),
(17, 'silver ring set'),
(18, 'mangalsutra'),
(19, 'rings jewelry'),
(20, 'mangalsutra rings'),
(21, 'diamond rings'),
(22, 'engagement rings'),
(23, 'diamond engagement ring'),
(24, 'rings for mens'),
(25, 'engagement rings for mens'),
(26, 'mens rings'),
(27, 'womens rings'),
(28, 'womens engagement rings'),
(29, 'earrings'),
(30, 'pendants'),
(31, 'fashion'),
(32, 'casual'),
(33, 'test'),
(34, 'wife'),
(35, 'girlfriend'),
(36, 'pandant'),
(37, 'dant'),
(38, 'bracelets'),
(39, 'kara'),
(40, 'kada'),
(41, 'chain'),
(42, 'Bangles'),
(43, 'Bracelets'),
(44, 'Bangles and Bracelets'),
(45, 'bracelets for men'),
(46, 'gold bracelets for men'),
(47, 'gold coin'),
(48, 'coins'),
(49, 'bonds'),
(50, 'sona'),
(51, 'gold bracelets'),
(52, 'gold bracelets for women'),
(53, 'bracelets for women'),
(54, 'gram'),
(55, '10gram'),
(56, '20gram'),
(57, '30gram'),
(58, 'coin'),
(59, '10gramcoin');

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `tax_class_title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `tax_class_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `tax_class_title`, `tax_class_description`, `last_modified`, `date_added`) VALUES
(1, 'Sale Tax', 'This tax apply on products related to USA item.', NULL, '2017-08-07 07:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(5) DEFAULT '1',
  `tax_rate` decimal(7,2) NOT NULL,
  `tax_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`tax_rates_id`, `tax_zone_id`, `tax_class_id`, `tax_priority`, `tax_rate`, `tax_description`, `last_modified`, `date_added`) VALUES
(1, 43, 1, 1, '7.00', '', NULL, '2017-08-07 07:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `top_categories`
--

CREATE TABLE `top_categories` (
  `top_categories_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `top_categories`
--

INSERT INTO `top_categories` (`top_categories_id`, `categories_id`) VALUES
(17, 12),
(28, 11),
(30, 7),
(32, 12),
(33, 14),
(34, 14);

-- --------------------------------------------------------

--
-- Table structure for table `ups_shipping`
--

CREATE TABLE `ups_shipping` (
  `ups_id` int(100) NOT NULL,
  `pickup_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isDisplayCal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serviceType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shippingEnvironment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `person_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_package` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_height` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_width` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ups_shipping`
--

INSERT INTO `ups_shipping` (`ups_id`, `pickup_method`, `isDisplayCal`, `serviceType`, `shippingEnvironment`, `user_name`, `access_key`, `password`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`, `parcel_height`, `parcel_width`, `title`) VALUES
(1, '07', '', 'US_01,US_02,US_03,US_12,US_13,US_14,US_59', '0', '', '', '', '', '', '', 'D Ground', '', 'US', 'NY', '10312', 'New York City', '', '', '', 'UPS Shipping');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `rememberToken` int(100) NOT NULL,
  `timestamps` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `whos_online`
--

CREATE TABLE `whos_online` (
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `time_entry` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `time_last_click` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `last_page_url` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `whos_online`
--

INSERT INTO `whos_online` (`customer_id`, `full_name`, `session_id`, `ip_address`, `time_entry`, `time_last_click`, `last_page_url`) VALUES
(1, 'Gangadhar Swami', '', '', '2018-11-12 06:', '', ''),
(2, 'Rabia Saqib', '', '', '2017-08-25 20:', '', ''),
(3, 'Test Ionicecommerce', '', '', '2017-09-08 10:', '', ''),
(4, 'Abhijeet Jha', '', '', '2017-12-11 17:', '', ''),
(5, 'Baliram Kore', '', '', '2018-09-30 10:', '', ''),
(6, 'samreen shaikh', '', '', '2018-10-31 12:', '', ''),
(10, 'saba bagwan', '', '', '2020-03-02 11:', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `zone_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(6, 223, 'AF', 'Armed Forces Africa'),
(7, 223, 'AA', 'Armed Forces Americas'),
(8, 223, 'AC', 'Armed Forces Canada'),
(9, 223, 'AE', 'Armed Forces Europe'),
(10, 223, 'AM', 'Armed Forces Middle East'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 223, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NF', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-Württemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'Thüringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'Niederösterreich'),
(97, 14, 'OO', 'Oberösterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'Kärnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Voralberg'),
(104, 204, 'AG', 'Aargau'),
(105, 204, 'AI', 'Appenzell Innerrhoden'),
(106, 204, 'AR', 'Appenzell Ausserrhoden'),
(107, 204, 'BE', 'Bern'),
(108, 204, 'BL', 'Basel-Landschaft'),
(109, 204, 'BS', 'Basel-Stadt'),
(110, 204, 'FR', 'Freiburg'),
(111, 204, 'GE', 'Genf'),
(112, 204, 'GL', 'Glarus'),
(113, 204, 'JU', 'Graubünden'),
(114, 204, 'JU', 'Jura'),
(115, 204, 'LU', 'Luzern'),
(116, 204, 'NE', 'Neuenburg'),
(117, 204, 'NW', 'Nidwalden'),
(118, 204, 'OW', 'Obwalden'),
(119, 204, 'SG', 'St. Gallen'),
(120, 204, 'SH', 'Schaffhausen'),
(121, 204, 'SO', 'Solothurn'),
(122, 204, 'SZ', 'Schwyz'),
(123, 204, 'TG', 'Thurgau'),
(124, 204, 'TI', 'Tessin'),
(125, 204, 'UR', 'Uri'),
(126, 204, 'VD', 'Waadt'),
(127, 204, 'VS', 'Wallis'),
(128, 204, 'ZG', 'Zug'),
(129, 204, 'ZH', 'Zürich'),
(130, 195, 'A Coruña', 'A Coruña'),
(131, 195, 'Alava', 'Alava'),
(132, 195, 'Albacete', 'Albacete'),
(133, 195, 'Alicante', 'Alicante'),
(134, 195, 'Almeria', 'Almeria'),
(135, 195, 'Asturias', 'Asturias'),
(136, 195, 'Avila', 'Avila'),
(137, 195, 'Badajoz', 'Badajoz'),
(138, 195, 'Baleares', 'Baleares'),
(139, 195, 'Barcelona', 'Barcelona'),
(140, 195, 'Burgos', 'Burgos'),
(141, 195, 'Caceres', 'Caceres'),
(142, 195, 'Cadiz', 'Cadiz'),
(143, 195, 'Cantabria', 'Cantabria'),
(144, 195, 'Castellon', 'Castellon'),
(145, 195, 'Ceuta', 'Ceuta'),
(146, 195, 'Ciudad Real', 'Ciudad Real'),
(147, 195, 'Cordoba', 'Cordoba'),
(148, 195, 'Cuenca', 'Cuenca'),
(149, 195, 'Girona', 'Girona'),
(150, 195, 'Granada', 'Granada'),
(151, 195, 'Guadalajara', 'Guadalajara'),
(152, 195, 'Guipuzcoa', 'Guipuzcoa'),
(153, 195, 'Huelva', 'Huelva'),
(154, 195, 'Huesca', 'Huesca'),
(155, 195, 'Jaen', 'Jaen'),
(156, 195, 'La Rioja', 'La Rioja'),
(157, 195, 'Las Palmas', 'Las Palmas'),
(158, 195, 'Leon', 'Leon'),
(159, 195, 'Lleida', 'Lleida'),
(160, 195, 'Lugo', 'Lugo'),
(161, 195, 'Madrid', 'Madrid'),
(162, 195, 'Malaga', 'Malaga'),
(163, 195, 'Melilla', 'Melilla'),
(164, 195, 'Murcia', 'Murcia'),
(165, 195, 'Navarra', 'Navarra'),
(166, 195, 'Ourense', 'Ourense'),
(167, 195, 'Palencia', 'Palencia'),
(168, 195, 'Pontevedra', 'Pontevedra'),
(169, 195, 'Salamanca', 'Salamanca'),
(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 195, 'Segovia', 'Segovia'),
(172, 195, 'Sevilla', 'Sevilla'),
(173, 195, 'Soria', 'Soria'),
(174, 195, 'Tarragona', 'Tarragona'),
(175, 195, 'Teruel', 'Teruel'),
(176, 195, 'Toledo', 'Toledo'),
(177, 195, 'Valencia', 'Valencia'),
(178, 195, 'Valladolid', 'Valladolid'),
(179, 195, 'Vizcaya', 'Vizcaya'),
(180, 195, 'Zamora', 'Zamora'),
(181, 195, 'Zaragoza', 'Zaragoza');

-- --------------------------------------------------------

--
-- Table structure for table `zones_to_geo_zones`
--

CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_recorder`
--
ALTER TABLE `action_recorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_action_recorder_module` (`module`),
  ADD KEY `idx_action_recorder_user_id` (`user_id`),
  ADD KEY `idx_action_recorder_identifier` (`identifier`),
  ADD KEY `idx_action_recorder_date_added` (`date_added`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`address_book_id`),
  ADD KEY `idx_address_book_customers_id` (`customers_id`);

--
-- Indexes for table `address_format`
--
ALTER TABLE `address_format`
  ADD PRIMARY KEY (`address_format_id`);

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`myid`),
  ADD UNIQUE KEY `administrators_email_unique` (`email`);

--
-- Indexes for table `alert_settings`
--
ALTER TABLE `alert_settings`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`),
  ADD KEY `idx_banners_group` (`banners_group`);

--
-- Indexes for table `banners_history`
--
ALTER TABLE `banners_history`
  ADD PRIMARY KEY (`banners_history_id`),
  ADD KEY `idx_banners_history_banners_id` (`banners_id`);

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `categories_description`
--
ALTER TABLE `categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`countries_name`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupans_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`currencies_id`),
  ADD KEY `idx_currencies_code` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`),
  ADD KEY `idx_customers_email_address` (`customers_email_address`);

--
-- Indexes for table `customers_basket`
--
ALTER TABLE `customers_basket`
  ADD PRIMARY KEY (`customers_basket_id`),
  ADD KEY `idx_customers_basket_customers_id` (`customers_id`);

--
-- Indexes for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  ADD PRIMARY KEY (`customers_basket_attributes_id`),
  ADD KEY `idx_customers_basket_att_customers_id` (`customers_id`);

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`customers_info_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fedex_shipping`
--
ALTER TABLE `fedex_shipping`
  ADD PRIMARY KEY (`fedex_id`);

--
-- Indexes for table `flate_rate`
--
ALTER TABLE `flate_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geo_zones`
--
ALTER TABLE `geo_zones`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `group_name`
--
ALTER TABLE `group_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`label_id`);

--
-- Indexes for table `label_value`
--
ALTER TABLE `label_value`
  ADD PRIMARY KEY (`label_value_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`),
  ADD KEY `IDX_LANGUAGES_NAME` (`name`);

--
-- Indexes for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturers_id`),
  ADD KEY `IDX_MANUFACTURERS_NAME` (`manufacturers_name`);

--
-- Indexes for table `manufacturers_info`
--
ALTER TABLE `manufacturers_info`
  ADD PRIMARY KEY (`manufacturers_id`,`languages_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `idx_products_date_added` (`news_date_added`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`newsletters_id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `news_description`
--
ALTER TABLE `news_description`
  ADD PRIMARY KEY (`news_id`,`language_id`),
  ADD KEY `products_name` (`news_name`);

--
-- Indexes for table `news_to_news_categories`
--
ALTER TABLE `news_to_news_categories`
  ADD PRIMARY KEY (`news_id`,`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `idx_orders_customers_id` (`customers_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`orders_products_id`),
  ADD KEY `idx_orders_products_orders_id` (`orders_id`),
  ADD KEY `idx_orders_products_products_id` (`products_id`);

--
-- Indexes for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  ADD PRIMARY KEY (`orders_products_attributes_id`),
  ADD KEY `idx_orders_products_att_orders_id` (`orders_id`);

--
-- Indexes for table `orders_products_download`
--
ALTER TABLE `orders_products_download`
  ADD PRIMARY KEY (`orders_products_download_id`),
  ADD KEY `idx_orders_products_download_orders_id` (`orders_id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`orders_status_id`,`language_id`),
  ADD KEY `idx_orders_status_name` (`orders_status_name`);

--
-- Indexes for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  ADD PRIMARY KEY (`orders_status_history_id`),
  ADD KEY `idx_orders_status_history_orders_id` (`orders_id`);

--
-- Indexes for table `orders_total`
--
ALTER TABLE `orders_total`
  ADD PRIMARY KEY (`orders_total_id`),
  ADD KEY `idx_orders_total_orders_id` (`orders_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pages_description`
--
ALTER TABLE `pages_description`
  ADD PRIMARY KEY (`page_description_id`);

--
-- Indexes for table `payments_setting`
--
ALTER TABLE `payments_setting`
  ADD PRIMARY KEY (`payments_id`);

--
-- Indexes for table `payment_description`
--
ALTER TABLE `payment_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `idx_products_model` (`products_model`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`products_attributes_id`),
  ADD KEY `idx_products_attributes_products_id` (`products_id`);

--
-- Indexes for table `products_attributes_download`
--
ALTER TABLE `products_attributes_download`
  ADD PRIMARY KEY (`products_attributes_id`);

--
-- Indexes for table `products_description`
--
ALTER TABLE `products_description`
  ADD PRIMARY KEY (`products_id`,`language_id`),
  ADD KEY `products_name` (`products_name`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_prodid` (`products_id`);

--
-- Indexes for table `products_notifications`
--
ALTER TABLE `products_notifications`
  ADD PRIMARY KEY (`products_id`,`customers_id`);

--
-- Indexes for table `products_options`
--
ALTER TABLE `products_options`
  ADD PRIMARY KEY (`products_options_id`,`language_id`);

--
-- Indexes for table `products_options_values`
--
ALTER TABLE `products_options_values`
  ADD PRIMARY KEY (`products_options_values_id`,`language_id`);

--
-- Indexes for table `products_options_values_to_products_options`
--
ALTER TABLE `products_options_values_to_products_options`
  ADD PRIMARY KEY (`products_options_values_to_products_options_id`);

--
-- Indexes for table `products_tags`
--
ALTER TABLE `products_tags`
  ADD KEY `products_id` (`products_id`) USING BTREE,
  ADD KEY `tags_id` (`tags_id`);

--
-- Indexes for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  ADD PRIMARY KEY (`products_id`,`categories_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `idx_reviews_products_id` (`products_id`),
  ADD KEY `idx_reviews_customers_id` (`customers_id`);

--
-- Indexes for table `reviews_description`
--
ALTER TABLE `reviews_description`
  ADD PRIMARY KEY (`reviews_id`,`languages_id`);

--
-- Indexes for table `review_types`
--
ALTER TABLE `review_types`
  ADD PRIMARY KEY (`review_type_id`);

--
-- Indexes for table `sec_directory_whitelist`
--
ALTER TABLE `sec_directory_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sesskey`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `shipping_description`
--
ALTER TABLE `shipping_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`shipping_methods_id`);

--
-- Indexes for table `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`specials_id`),
  ADD KEY `idx_specials_products_id` (`products_id`);

--
-- Indexes for table `store_contacts`
--
ALTER TABLE `store_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_details`
--
ALTER TABLE `store_details`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tags_id`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`tax_rates_id`);

--
-- Indexes for table `top_categories`
--
ALTER TABLE `top_categories`
  ADD PRIMARY KEY (`top_categories_id`);

--
-- Indexes for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  ADD PRIMARY KEY (`ups_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whos_online`
--
ALTER TABLE `whos_online`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_zones_country_id` (`zone_country_id`);

--
-- Indexes for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_recorder`
--
ALTER TABLE `action_recorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `address_book`
--
ALTER TABLE `address_book`
  MODIFY `address_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `address_format`
--
ALTER TABLE `address_format`
  MODIFY `address_format_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `myid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `alert_settings`
--
ALTER TABLE `alert_settings`
  MODIFY `alert_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners_history`
--
ALTER TABLE `banners_history`
  MODIFY `banners_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `career`
--
ALTER TABLE `career`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `categories_description`
--
ALTER TABLE `categories_description`
  MODIFY `categories_description_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupans_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `currencies_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers_basket`
--
ALTER TABLE `customers_basket`
  MODIFY `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  MODIFY `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fedex_shipping`
--
ALTER TABLE `fedex_shipping`
  MODIFY `fedex_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flate_rate`
--
ALTER TABLE `flate_rate`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `geo_zones`
--
ALTER TABLE `geo_zones`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_name`
--
ALTER TABLE `group_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `label_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1035;

--
-- AUTO_INCREMENT for table `label_value`
--
ALTER TABLE `label_value`
  MODIFY `label_value_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1459;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `liked_products`
--
ALTER TABLE `liked_products`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `newsletters_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  MODIFY `categories_description_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `news_description`
--
ALTER TABLE `news_description`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `orders_products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  MODIFY `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders_products_download`
--
ALTER TABLE `orders_products_download`
  MODIFY `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  MODIFY `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders_total`
--
ALTER TABLE `orders_total`
  MODIFY `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages_description`
--
ALTER TABLE `pages_description`
  MODIFY `page_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payments_setting`
--
ALTER TABLE `payments_setting`
  MODIFY `payments_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_description`
--
ALTER TABLE `payment_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `products_description`
--
ALTER TABLE `products_description`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `products_options`
--
ALTER TABLE `products_options`
  MODIFY `products_options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `products_options_values`
--
ALTER TABLE `products_options_values`
  MODIFY `products_options_values_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `products_options_values_to_products_options`
--
ALTER TABLE `products_options_values_to_products_options`
  MODIFY `products_options_values_to_products_options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `review_types`
--
ALTER TABLE `review_types`
  MODIFY `review_type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sec_directory_whitelist`
--
ALTER TABLE `sec_directory_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_description`
--
ALTER TABLE `shipping_description`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `shipping_methods_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `specials`
--
ALTER TABLE `specials`
  MODIFY `specials_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `store_contacts`
--
ALTER TABLE `store_contacts`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_details`
--
ALTER TABLE `store_details`
  MODIFY `store_id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tags_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `top_categories`
--
ALTER TABLE `top_categories`
  MODIFY `top_categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  MODIFY `ups_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  MODIFY `association_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products_tags`
--
ALTER TABLE `products_tags`
  ADD CONSTRAINT `fk_productID` FOREIGN KEY (`products_id`) REFERENCES `products` (`products_id`),
  ADD CONSTRAINT `fk_tagsID` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`tags_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
