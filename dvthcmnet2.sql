-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2016 at 06:00 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dvthcmnet2`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorizations`
--

CREATE TABLE `authorizations` (
  `AuthorizationID` int(10) UNSIGNED NOT NULL,
  `Method` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ModuleID` int(10) UNSIGNED NOT NULL,
  `Description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authorizations`
--

INSERT INTO `authorizations` (`AuthorizationID`, `Method`, `ModuleID`, `Description`, `created_at`, `updated_at`) VALUES
(5, 'index', 4, 'Trang Chu Quan Ly Tong Dai', '2016-04-04 20:16:17', '2016-04-04 20:16:17'),
(6, 'SoDoHeThong', 4, 'Test', '2016-04-04 20:48:57', '2016-04-04 20:48:57'),
(7, 'index', 5, 'Trang chủ của Module Tài Sản', '2016-04-06 01:44:33', '2016-04-06 01:44:33'),
(13, 'vattucongcukhodai', 5, '', '2016-04-07 02:37:30', '2016-04-07 02:37:30'),
(14, 'vattucongcumodemvtn', 5, '', '2016-04-07 02:37:57', '2016-04-08 01:11:00'),
(15, 'vattucongculaodongvtn', 5, '', '2016-04-07 02:38:06', '2016-04-07 02:38:06'),
(16, 'vattukhodai', 5, '', '2016-04-07 02:39:23', '2016-04-07 02:39:23'),
(17, 'vattutaisanvtn2', 5, '', '2016-04-07 02:40:33', '2016-04-07 02:40:33'),
(18, 'searchvattucongcukhodai', 5, '', '2016-04-07 02:40:50', '2016-04-07 02:40:50'),
(19, 'searchvattucongcumodemvtn', 5, '', '2016-04-07 02:40:59', '2016-04-08 01:09:51'),
(20, 'searchvattucongculaodongvtn', 5, '', '2016-04-07 02:41:43', '2016-04-07 02:41:43'),
(21, 'searchvattukhodai', 5, '', '2016-04-07 02:41:57', '2016-04-07 02:41:57'),
(22, 'searchvattutaisanvtn2', 5, '', '2016-04-07 02:42:08', '2016-04-07 02:42:08'),
(23, 'index', 6, 'Trang chu Phan Cap Quang', '2016-04-10 20:08:07', '2016-04-10 20:08:07'),
(24, 'listPhuongAn', 6, 'Danh sách phương án tổ chức sản xuất cáp quang', '2016-04-10 20:09:22', '2016-04-10 20:09:22'),
(25, 'searchPhuongAn', 6, 'Tìm kiếm các phương án theo tiêu chuẩn định sẵn', '2016-04-10 20:11:53', '2016-04-10 20:11:53'),
(26, 'addPhuongAn', 6, 'Thêm phương án mới', '2016-04-10 20:12:18', '2016-04-10 20:12:18'),
(27, 'commitPhuongAn', 6, 'Duyệt phương án mới', '2016-04-10 20:12:48', '2016-04-10 20:12:48'),
(28, 'editPhuongAn', 6, 'Chỉnh sửa phương án', '2016-04-10 20:13:13', '2016-04-10 20:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentID` tinyint(4) NOT NULL,
  `DepartmentName` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentID`, `DepartmentName`) VALUES
(1, 'DVTHCM'),
(2, 'Tổ Kỹ thuật Nghiệp vụ '),
(3, 'Tổ Cáp quang Sài Gòn'),
(4, 'Trạm 125 HBT'),
(5, 'Trạm 137 Pasteur'),
(6, 'Trạm 142 ĐBP '),
(7, 'Trạm 270 LTK'),
(8, 'Trạm CB VTU'),
(9, 'Trạm Thành Thái'),
(10, 'Trạm Viễn thông Bến Tre '),
(11, 'Trạm viễn Thông Biên Hoà'),
(12, 'Trạm Viễn thông Bình Dương'),
(13, 'Trạm Viễn thông Bình Phước'),
(14, 'Trạm Viễn thông Mỹ Tho'),
(15, 'Trạm Viễn thông Tây Ninh'),
(16, 'Trạm Viễn thông Xuân Lộc');

-- --------------------------------------------------------

--
-- Table structure for table `department_vattu`
--

CREATE TABLE `department_vattu` (
  `id` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `VattuID` int(11) DEFAULT NULL,
  `Note` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `department_vattu`
--

INSERT INTO `department_vattu` (`id`, `DepartmentID`, `VattuID`, `Note`) VALUES
(1, 2, 1, 'Vật Tư Công Cụ Kho Đài'),
(2, 2, 2, 'Vật Tư Công Cụ Modem'),
(3, 2, 3, 'Vật Tư Công Cụ lao động VTN'),
(4, 2, 4, 'Vật Tư Kho Đài'),
(5, 2, 5, 'Vật Tư Tài Sản VTN2');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `GroupID` int(10) UNSIGNED NOT NULL,
  `GroupName` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`GroupID`, `GroupName`, `created_at`, `updated_at`) VALUES
(1, 'ToKTNV', NULL, '2016-03-15 21:03:18'),
(2, 'Hành chính', NULL, NULL),
(3, '224TTI', NULL, NULL),
(4, '270LTK', NULL, NULL),
(5, '137PAS', NULL, NULL),
(6, '125HBT', NULL, NULL),
(7, '142DBP', NULL, NULL),
(8, 'LAN', '2016-03-14 21:20:04', '2016-03-14 21:20:04'),
(9, 'TGG', '2016-03-14 21:22:14', '2016-03-14 21:22:14'),
(10, 'BTE', '2016-03-14 21:23:52', '2016-03-14 21:23:52'),
(11, 'VTU', '2016-03-14 21:24:12', '2016-03-14 21:24:12'),
(12, 'TNH', '2016-03-14 21:24:25', '2016-03-14 21:24:25'),
(13, 'BHA', '2016-03-14 21:24:35', '2016-03-14 21:24:35'),
(14, 'Quản Lý Tài Sản - Tổ KTNV', '2016-04-06 01:07:27', '2016-04-06 01:07:27'),
(15, 'Truyền Dẫn - Tổ KTNV', '2016-04-10 20:06:33', '2016-04-10 20:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `group_authorizations`
--

CREATE TABLE `group_authorizations` (
  `GroupAuthorizationID` int(10) UNSIGNED NOT NULL,
  `GroupID` int(10) UNSIGNED NOT NULL,
  `AuthorizationID` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_authorizations`
--

INSERT INTO `group_authorizations` (`GroupAuthorizationID`, `GroupID`, `AuthorizationID`, `created_at`, `updated_at`) VALUES
(9, 2, 1, '2016-04-04 03:33:27', '2016-04-04 03:33:27'),
(10, 2, 2, '2016-04-04 03:33:29', '2016-04-04 03:33:29'),
(11, 2, 4, '2016-04-04 03:33:31', '2016-04-04 03:33:31'),
(13, 3, 1, '2016-04-04 18:34:59', '2016-04-04 18:34:59'),
(14, 4, 1, '2016-04-04 18:35:01', '2016-04-04 18:35:01'),
(15, 5, 1, '2016-04-04 18:35:04', '2016-04-04 18:35:04'),
(16, 6, 1, '2016-04-04 18:35:05', '2016-04-04 18:35:05'),
(17, 7, 1, '2016-04-04 18:35:55', '2016-04-04 18:35:55'),
(18, 8, 1, '2016-04-04 18:35:57', '2016-04-04 18:35:57'),
(19, 9, 1, '2016-04-04 18:35:59', '2016-04-04 18:35:59'),
(20, 10, 1, '2016-04-04 18:36:01', '2016-04-04 18:36:01'),
(21, 11, 1, '2016-04-04 18:36:03', '2016-04-04 18:36:03'),
(23, 1, 2, '2016-04-04 18:37:24', '2016-04-04 18:37:24'),
(25, 12, 1, '2016-04-04 18:41:52', '2016-04-04 18:41:52'),
(27, 13, 1, '2016-04-04 18:42:53', '2016-04-04 18:42:53'),
(29, 1, 4, '2016-04-04 19:24:07', '2016-04-04 19:24:07'),
(30, 1, 5, '2016-04-04 20:16:23', '2016-04-04 20:16:23'),
(32, 14, 7, '2016-04-06 01:44:45', '2016-04-06 01:44:45'),
(33, 14, 8, '2016-04-06 23:41:39', '2016-04-06 23:41:39'),
(34, 14, 9, '2016-04-06 23:53:57', '2016-04-06 23:53:57'),
(35, 14, 10, '2016-04-06 23:54:21', '2016-04-06 23:54:21'),
(36, 14, 11, '2016-04-06 23:54:36', '2016-04-06 23:54:36'),
(37, 14, 12, '2016-04-06 23:54:45', '2016-04-06 23:54:45'),
(38, 14, 13, '2016-04-07 02:42:35', '2016-04-07 02:42:35'),
(40, 14, 14, '2016-04-07 02:42:40', '2016-04-07 02:42:40'),
(41, 14, 15, '2016-04-07 02:42:43', '2016-04-07 02:42:43'),
(42, 14, 16, '2016-04-07 02:42:46', '2016-04-07 02:42:46'),
(43, 14, 17, '2016-04-07 02:42:48', '2016-04-07 02:42:48'),
(44, 14, 18, '2016-04-07 02:42:51', '2016-04-07 02:42:51'),
(45, 14, 19, '2016-04-07 02:42:53', '2016-04-07 02:42:53'),
(46, 14, 20, '2016-04-07 02:42:56', '2016-04-07 02:42:56'),
(47, 14, 21, '2016-04-07 02:42:58', '2016-04-07 02:42:58'),
(48, 14, 22, '2016-04-07 02:43:01', '2016-04-07 02:43:01'),
(49, 15, 23, '2016-04-10 20:40:03', '2016-04-10 20:40:03'),
(50, 15, 24, '2016-04-10 20:40:06', '2016-04-10 20:40:06'),
(51, 15, 25, '2016-04-10 20:40:09', '2016-04-10 20:40:09'),
(52, 15, 26, '2016-04-10 20:40:14', '2016-04-10 20:40:14'),
(53, 15, 27, '2016-04-10 20:40:18', '2016-04-10 20:40:18'),
(54, 15, 28, '2016-04-10 20:40:23', '2016-04-10 20:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `group_users`
--

CREATE TABLE `group_users` (
  `GroupUserID` int(10) UNSIGNED NOT NULL,
  `GroupID` int(10) UNSIGNED NOT NULL,
  `UserID` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_users`
--

INSERT INTO `group_users` (`GroupUserID`, `GroupID`, `UserID`, `created_at`, `updated_at`) VALUES
(27, 3, 4, '2016-03-15 03:08:17', '2016-03-15 03:08:17'),
(37, 0, 1, '2016-03-15 20:37:08', '2016-03-15 20:37:08'),
(41, 2, 2, '2016-03-15 21:01:28', '2016-03-15 21:01:28'),
(42, 2, 3, '2016-03-15 21:01:32', '2016-03-15 21:01:32'),
(46, 1, 2, '2016-03-20 02:36:29', '2016-03-20 02:36:29'),
(47, 1, 3, '2016-04-05 02:30:38', '2016-04-05 02:30:38'),
(48, 1, 1, '2016-04-05 23:51:32', '2016-04-05 23:51:32'),
(49, 2, 1, '2016-04-05 23:51:35', '2016-04-05 23:51:35'),
(50, 3, 1, '2016-04-05 23:51:36', '2016-04-05 23:51:36'),
(51, 4, 1, '2016-04-05 23:51:39', '2016-04-05 23:51:39'),
(52, 5, 1, '2016-04-05 23:51:41', '2016-04-05 23:51:41'),
(53, 6, 1, '2016-04-05 23:51:43', '2016-04-05 23:51:43'),
(54, 7, 1, '2016-04-05 23:51:45', '2016-04-05 23:51:45'),
(55, 8, 1, '2016-04-05 23:51:47', '2016-04-05 23:51:47'),
(56, 9, 1, '2016-04-05 23:51:49', '2016-04-05 23:51:49'),
(57, 10, 1, '2016-04-05 23:51:51', '2016-04-05 23:51:51'),
(58, 11, 1, '2016-04-05 23:51:53', '2016-04-05 23:51:53'),
(59, 12, 1, '2016-04-05 23:51:54', '2016-04-05 23:51:54'),
(60, 13, 1, '2016-04-05 23:51:58', '2016-04-05 23:51:58'),
(61, 14, 15, '2016-04-06 01:07:44', '2016-04-06 01:07:44'),
(62, 15, 2, '2016-04-10 20:39:34', '2016-04-10 20:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `MenuID` int(10) UNSIGNED NOT NULL,
  `MenuPosition` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MenuTitle` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MenuAlias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MenuURL` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#',
  `MenuParent` int(10) UNSIGNED NOT NULL,
  `MenuLevel` int(11) NOT NULL,
  `Is_Free` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`MenuID`, `MenuPosition`, `MenuTitle`, `MenuAlias`, `MenuURL`, `MenuParent`, `MenuLevel`, `Is_Free`, `created_at`, `updated_at`) VALUES
(1, 'x00', 'Trang chủ', 'trangchu', 'http://daivthcm.net2', 1, 1, 1, NULL, '2016-03-20 02:37:09'),
(2, 'x01', 'Kỹ thuật', 'kythuat', '', 1, 1, 0, NULL, '2016-04-06 01:38:46'),
(3, 'x0100', 'Tổng Đài', 'tongdai', '/kythuat/tongdai', 2, 2, 0, NULL, NULL),
(4, 'x0101', 'IP Core', 'ipcore', '/kythuat/ipcore', 2, 2, 0, NULL, NULL),
(5, 'x0102', 'Truyền dẫn', 'truyendan', '/kythuat/truyendan', 2, 2, 0, NULL, NULL),
(6, 'x0104', 'Thiết bị ngoại vi', 'thietbingoaivi', '/kythuat/thietbingoaivi', 2, 2, 0, NULL, '2016-03-17 20:55:40'),
(13, 'x010000', 'So do he thong', 'sodohethong', '/kythuat/tongdai/sodohethong', 3, 3, 0, '2016-03-29 00:57:02', '2016-03-29 00:57:16'),
(14, 'x010001', 'Thong ke nang luc', 'thongkenangluc', '/kythuat/tongdai/thongkenangluc', 3, 3, 0, '2016-03-29 00:58:20', '2016-03-29 00:58:33'),
(17, 'x03', 'Quản Lý Tài Sản', '', '', 0, 1, 0, '2016-04-06 01:08:52', '2016-04-09 21:56:24'),
(18, 'x0300', 'Vật Tư Công Cụ Kho Đài', '', '/taisan/vattucongcukhodai', 17, 2, 0, '2016-04-06 01:10:25', '2016-04-09 21:56:37'),
(19, 'x0301', 'Vật Tư Công Cụ Modem VTN', '', '/taisan/vattucongcumodemvtn', 17, 2, 0, '2016-04-06 01:11:53', '2016-04-09 21:56:44'),
(20, 'x0302', 'Vật Tư Công Cụ lao động VTN', '', '/taisan/vattucongculaodongvtn', 17, 2, 0, '2016-04-06 01:12:26', '2016-04-09 21:56:54'),
(21, 'x0303', 'Vật Tư Kho Đài', '', '/taisan/vattukhodai', 17, 2, 0, '2016-04-06 01:12:53', '2016-04-09 21:57:01'),
(22, 'x0304', 'Vật Tư Tài Sản VTN2', '', '/taisan/vattutaisanvtn2', 22, 2, 0, '2016-04-06 01:13:29', '2016-04-09 21:57:07'),
(23, 'x04', 'Cáp Quang', '', '', 0, 1, 0, '2016-04-10 20:37:43', '2016-04-10 20:37:43'),
(24, 'x0400', 'Phương Án', '', 'capquang/phuongan', 23, 2, 0, '2016-04-10 20:38:43', '2016-04-10 20:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `menu_groups`
--

CREATE TABLE `menu_groups` (
  `MenuGroupID` int(10) UNSIGNED NOT NULL,
  `MenuID` int(10) UNSIGNED NOT NULL,
  `GroupID` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_groups`
--

INSERT INTO `menu_groups` (`MenuGroupID`, `MenuID`, `GroupID`, `created_at`, `updated_at`) VALUES
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(9, 2, 3, NULL, NULL),
(10, 3, 3, NULL, NULL),
(11, 4, 3, NULL, NULL),
(12, 5, 3, NULL, NULL),
(13, 6, 3, NULL, NULL),
(15, 2, 4, NULL, NULL),
(16, 3, 4, NULL, NULL),
(17, 4, 4, NULL, NULL),
(18, 5, 4, NULL, NULL),
(19, 6, 4, NULL, NULL),
(21, 5, 2, '2016-03-17 20:09:49', '2016-03-17 20:09:49'),
(22, 5, 2, '2016-03-17 20:09:52', '2016-03-17 20:09:52'),
(23, 5, 2, '2016-03-17 20:09:54', '2016-03-17 20:09:54'),
(24, 5, 2, '2016-03-17 20:09:56', '2016-03-17 20:09:56'),
(25, 6, 2, '2016-03-17 20:10:01', '2016-03-17 20:10:01'),
(26, 6, 2, '2016-03-17 20:10:34', '2016-03-17 20:10:34'),
(27, 2, 5, '2016-03-17 20:11:48', '2016-03-17 20:11:48'),
(28, 2, 6, '2016-03-17 20:11:51', '2016-03-17 20:11:51'),
(29, 2, 7, '2016-03-17 20:11:53', '2016-03-17 20:11:53'),
(30, 2, 8, '2016-03-17 20:11:55', '2016-03-17 20:11:55'),
(31, 2, 9, '2016-03-17 20:11:57', '2016-03-17 20:11:57'),
(32, 2, 10, '2016-03-17 20:11:59', '2016-03-17 20:11:59'),
(33, 2, 11, '2016-03-17 20:12:02', '2016-03-17 20:12:02'),
(34, 2, 12, '2016-03-17 20:12:05', '2016-03-17 20:12:05'),
(35, 2, 13, '2016-03-17 20:12:06', '2016-03-17 20:12:06'),
(36, 13, 1, '2016-03-29 00:59:42', '2016-03-29 00:59:42'),
(37, 14, 1, '2016-03-29 00:59:45', '2016-03-29 00:59:45'),
(38, 17, 14, '2016-04-06 01:25:51', '2016-04-06 01:25:51'),
(39, 18, 14, '2016-04-06 01:25:55', '2016-04-06 01:25:55'),
(40, 19, 14, '2016-04-06 01:26:01', '2016-04-06 01:26:01'),
(41, 20, 14, '2016-04-06 01:26:06', '2016-04-06 01:26:06'),
(42, 21, 14, '2016-04-06 01:26:09', '2016-04-06 01:26:09'),
(43, 22, 14, '2016-04-06 01:26:11', '2016-04-06 01:26:11'),
(44, 23, 15, '2016-04-10 20:50:52', '2016-04-10 20:50:52'),
(45, 24, 15, '2016-04-10 20:51:47', '2016-04-10 20:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_03_02_080136_create_groups_table', 1),
('2016_03_02_080149_create_menus_table', 1),
('2016_03_02_080157_create_modules_table', 1),
('2016_03_02_082100_create_authorizations_table', 1),
('2016_03_02_084030_create_group_users_table', 1),
('2016_03_02_084115_create_menu_groups_table', 1),
('2016_03_02_084134_create_group_authorizations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `ModuleID` int(10) UNSIGNED NOT NULL,
  `ModuleName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Note` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`ModuleID`, `ModuleName`, `Note`, `created_at`, `updated_at`) VALUES
(2, 'IPCoreController', ' Cac van de thuoc ve mang IP Core', '2016-03-31 21:32:40', '2016-03-31 21:32:40'),
(3, 'VatTuController', ' Module Quan Ly Thiet Bi Vat Tu cho Dai', '2016-04-01 22:59:11', '2016-04-01 22:59:11'),
(4, 'TongDaiController', 'Controller phuc vu quan ly tong dai', '2016-04-02 00:10:44', '2016-04-02 00:10:44'),
(5, 'TaiSanController', ' Module quản lý tài sản, công cụ dụng cụ thuộc DVTHCM Quản Lý', '2016-04-06 01:43:58', '2016-04-06 01:43:58'),
(6, 'CapQuangController', ' Quan ly Cap Quang truc thuoc Dai VTHCM', '2016-04-10 20:07:21', '2016-04-10 20:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(10) UNSIGNED NOT NULL,
  `Username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DepartmentID` tinyint(4) NOT NULL,
  `Is_Admin` tinyint(1) NOT NULL DEFAULT '0',
  `Phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FullName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `Email`, `DepartmentID`, `Is_Admin`, `Phone`, `FullName`, `Gender`, `Birthday`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$MLh1xPs.zGzbnu2DxUCePuzw5bsSjDkMzys/DdszGo/izfWTYH7pa', 'admin@dvthcm.net2', 1, 1, '0919779519', 'webmaster', 'Nam', '1988-11-09', NULL, NULL, '2016-03-24 01:33:15'),
(2, 'khanhbm', '$2y$10$tE4gozLChvoneIZX9xLHY.HrUTAFnmuBqNjcdxXa5G4fnP10TA.2u', 'khanhbm@vinaphone.vn', 1, 0, '0919779519', 'Khanh Bui', 'Nam', '1987-11-02', NULL, NULL, '2016-03-29 00:38:31'),
(3, 'phongdang', '$2y$10$hpLGJtFY1pD2O3w6moMqIuAqTyBT2j7TrO3ZvAviSH2hRFDpWzFM.', 'danghongphong@vnpt.vn', 1, 0, NULL, 'Đặng Hồng Phong', 'Nam', NULL, NULL, NULL, '2016-03-24 01:49:32'),
(4, 'anhdung', '$2y$10$p989tXNeTc/yr6RbSsGzuONMKCM1DPnLNZFMVPWWvliAdZuaCW8Zu', 'anhdung@vnpt.vn', 2, 0, NULL, 'Nguyễn Anh Dũng', 'Nam', NULL, NULL, NULL, '2016-03-24 01:49:34'),
(5, 'vanmh', '$2y$10$kioj0NLc.lhEaA.4LwKp5.lrr2GabB5EiFBtuMYZprkSNNZvaOuZa', 'vanmh@vnpt.vn', 2, 0, NULL, 'Mạc Hải Vân', 'Nam', NULL, NULL, NULL, '2016-03-24 01:49:36'),
(6, 'vienkhanh', '$2y$10$d5as00KlX8FLHGbuIXmxzOWDLLQZRapIouquY3pyxMGhdMuH1UvK6', 'vienkhanh@vnpt.vn', 3, 0, NULL, 'Nguyễn Viên Khanh', 'Nữ', NULL, NULL, NULL, '2016-03-24 01:49:38'),
(14, 'locnt', '$2y$10$sTB3yLfuk0u8PHuBQqm/3OuNTgbxufGxehHMAMAv0EsibjRGXoyX2', '', 0, 0, NULL, 'Nguyễn Trung Lộc', NULL, NULL, NULL, '2016-03-15 21:39:55', '2016-03-24 01:49:39'),
(15, 'khanhvan', '$2y$10$aSXEQRQ1KWAjgacVj87w3eHWt7anSFNs.x97N1ADKC6agMRvHAwua', '', 0, 0, NULL, 'Lưu Thị Khánh Vân', NULL, NULL, NULL, '2016-04-06 01:06:41', '2016-04-06 02:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `vattu_ccld_vtn`
--

CREATE TABLE `vattu_ccld_vtn` (
  `id` int(11) NOT NULL,
  `TenCongCu` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `DonViTinh` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ThoiGianSuDung` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `NoiDat` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `BoPhanSuDung` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `SoLuong_SS` tinyint(4) DEFAULT NULL,
  `SoLuong_KK` tinyint(4) DEFAULT NULL,
  `ChenhLech_TT` tinyint(4) DEFAULT NULL,
  `HienTrang` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `GhiChu` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `TramID` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `vattu_ccld_vtn`
--

INSERT INTO `vattu_ccld_vtn` (`id`, `TenCongCu`, `DonViTinh`, `ThoiGianSuDung`, `NoiDat`, `BoPhanSuDung`, `SoLuong_SS`, `SoLuong_KK`, `ChenhLech_TT`, `HienTrang`, `GhiChu`, `TramID`) VALUES
(1, 'Ghế nệm xếp Xuân Hòa', 'cái', 'HC chuyển 2013', 'TRẠM ĐQN', 'TRẠM ĐQN', 2, 2, 0, '0', 'Tốt', '0'),
(2, 'Máy hút bụi LG 1300', 'cái', 'BLC chuyển 04/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(3, 'Máy vi tính (CPU)', 'cái', 'KT giao 02/01/14', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Hỏng', '0'),
(4, 'Màn hình HP 185', 'cái', 'VT1 giao 02/01/14', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(5, 'Kềm cắt cáp 60mm2 NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(6, 'Kềm mỏ nhọn 6 NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(7, 'Kềm cắt 6 NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(8, 'Kềm vạn năng 6 NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(9, 'Tua vít 7 cây NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(10, 'Mỏ hàn chì 40W NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(11, 'Kềm bấm cos nhỏ 1.5-16 NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(12, 'Bộ tuyp nhỏ NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(13, 'Thùng đồ nghề NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(14, 'Lục giác 9 cây NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(15, 'Kềm mạng J45 , J11 NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(16, 'Dao mổ cáp NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(17, 'Mỏ lếch 8 NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(18, 'Bộ cớ lê vòng miệng 8-19 NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(19, 'Bộ cưa sắt NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(20, 'Búa đinh NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(21, 'Thước dây rút 5 mét NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(22, 'Kềm mỏ quạ 10/250 NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(23, 'Kềm bấm chết 10 NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(24, 'Đồng hồ đo Ampe kìm 600V-AC/DC (Kyoritsu) NKT82014', 'cái', '08/2014', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(25, 'Thang nhôm ', 'cái', '28/01/15', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0'),
(26, 'CPU máy tính bàn Dell Inspiron 3647ST I93ND7 NKT062015', 'cái', '30/06/15', 'TRẠM ĐQN', 'TRẠM ĐQN', 1, 1, 0, '0', 'Tốt', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vattu_cc_khodai`
--

CREATE TABLE `vattu_cc_khodai` (
  `id` int(11) NOT NULL,
  `TenHangTonKho` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaSo` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `DonViTinh` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `SoLuong_KT` tinyint(4) DEFAULT NULL,
  `DonGia_KT` decimal(15,2) DEFAULT NULL,
  `Tien_KT` decimal(15,2) DEFAULT NULL,
  `SoLuong_TT` tinyint(4) DEFAULT NULL,
  `DonGia_TT` decimal(15,2) DEFAULT NULL,
  `Tien_TT` decimal(15,2) DEFAULT NULL,
  `SoLuong_HH` tinyint(4) DEFAULT NULL,
  `DonGia_HH` decimal(15,2) DEFAULT NULL,
  `Tien_HH` decimal(15,2) DEFAULT NULL,
  `DonGia_CL` decimal(15,2) DEFAULT NULL,
  `Tien_CL` decimal(15,2) DEFAULT NULL,
  `GhiChu` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `TramID` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `vattu_cc_khodai`
--

INSERT INTO `vattu_cc_khodai` (`id`, `TenHangTonKho`, `MaSo`, `DonViTinh`, `SoLuong_KT`, `DonGia_KT`, `Tien_KT`, `SoLuong_TT`, `DonGia_TT`, `Tien_TT`, `SoLuong_HH`, `DonGia_HH`, `Tien_HH`, `DonGia_CL`, `Tien_CL`, `GhiChu`, `TramID`) VALUES
(1, 'Symmetricom gowide 2.3- - -M32392', 'DU0002.9', 'cái', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(2, 'Symmetricom SHDSL -V35- - -N13250', 'DU0002.9.1', 'cái', 1, '0.00', '0.00', 1, '0.00', '0.00', 1, '1.00', '1.00', '0.00', '0.00', 'CCDP', '0'),
(3, 'Thiết bị chống sét TDS150-1SR-277- - -NKT122014-UC0546425', 'DZ0077.1', 'cái', 1, '1704000.00', '1704000.00', 1, '1704000.00', '1704000.00', 2, '2.00', '2.00', '0.00', '0.00', 'CCDP', '0'),
(4, 'Switch SF300-24 port-SRW224G4-K9 (Cisco)- - -NKT92014-DNI182001ZM', 'DZ0184', 'cái', 1, '3545454.00', '3545454.00', 1, '3545454.00', '3545454.00', 3, '3.00', '3.00', '0.00', '0.00', 'CCDP', '0'),
(5, 'Switch SF300-24 port-SRW224G4-K9 (Cisco)- - -NKT92014-DNI18200206', 'DZ0184', 'cái', 1, '3545454.00', '3545454.00', 1, '3545454.00', '3545454.00', 4, '4.00', '4.00', '0.00', '0.00', 'CCDP', '0'),
(6, 'Juniper SSG 20- - -0164112006004500', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 5, '5.00', '5.00', '0.00', '0.00', 'CCDP', '0'),
(7, 'Juniper SSG 20- - -0164112006001209', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 6, '6.00', '6.00', '0.00', '0.00', 'CCDP', '0'),
(8, 'Juniper SSG 20- - -164092006001929', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 7, '7.00', '7.00', '0.00', '0.00', 'CCDP', '0'),
(9, 'Juniper SSG 20- - -164012006002201', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 8, '8.00', '8.00', '0.00', '0.00', 'CCDP', '0'),
(10, 'Juniper SSG 20- - -0164032007000732', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 9, '9.00', '9.00', '0.00', '0.00', 'CCDP', '0'),
(11, 'Juniper SSG 20- - -0164112006000088', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 10, '10.00', '10.00', '0.00', '0.00', 'CCDP', '0'),
(12, 'Juniper SSG 20- - -0164092006000930', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 11, '11.00', '11.00', '0.00', '0.00', 'CCDP', '0'),
(13, 'Juniper SSG 20- - -0164092006000188', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 12, '12.00', '12.00', '0.00', '0.00', 'CCDP', '0'),
(14, 'Juniper SSG 20- - -0164072006000239', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 13, '13.00', '13.00', '0.00', '0.00', 'CCDP', '0'),
(15, 'Juniper SSG 20- - -0164072006000084', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 14, '14.00', '14.00', '0.00', '0.00', 'CCDP', '0'),
(16, 'Juniper SSG 20- - -0164032007000013', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 15, '15.00', '15.00', '0.00', '0.00', 'CCDP', '0'),
(17, 'Juniper SSG 20- - -0164112006004383', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 16, '16.00', '16.00', '0.00', '0.00', 'CCDP', '0'),
(18, 'Juniper SSG 20- - -0164112006004598', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 17, '17.00', '17.00', '0.00', '0.00', 'CCDP', '0'),
(19, 'Juniper SSG 20- - -0164072006000274', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 18, '18.00', '18.00', '0.00', '0.00', 'CCDP', '0'),
(20, 'Juniper SSG 20- - -0164012006003679', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 19, '19.00', '19.00', '0.00', '0.00', 'CCDP', '0'),
(21, 'Juniper SSG 20- - -164082006000142', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 20, '20.00', '20.00', '0.00', '0.00', 'CCDP', '0'),
(22, 'Juniper SSG 20- - -164012006002017', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 21, '21.00', '21.00', '0.00', '0.00', 'CCDP', '0'),
(23, 'Juniper SSG 20- - -164032007001390', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 22, '22.00', '22.00', '0.00', '0.00', 'CCDP', '0'),
(24, 'Juniper SSG 20- - -0164112006004629', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 23, '23.00', '23.00', '0.00', '0.00', 'CCDP', '0'),
(25, 'Juniper SSG 20- - -164012006001398', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(26, 'Juniper SSG 20- - -164012006004659', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(27, 'Juniper SSG 20- - -164032007000736', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(28, 'Juniper SSG 20- - -164032007001702', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(29, 'Juniper SSG 20- - -164092006001620', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(30, 'Juniper SSG 20- - -164112006002740', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(31, 'Juniper SSG 20- - -164112006003328', 'MA0007', 'CAI', 1, '1750000.00', '1750000.00', 1, '1750000.00', '1750000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(32, 'Juniper SSG 20- - -164112006004089', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(33, 'Juniper SSG 20- - -0164012006001388', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(34, 'Juniper SSG 20- - -0164012006004283', 'MA0007', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(35, 'Lightsmarrt PE 150 E1 DC- - -01748', 'MA0020.4', 'BO', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(36, 'Lightmart PE150/AC- - -NKT122013TT2-04504', 'MA0020.8', 'BO', 1, '9250000.00', '9250000.00', 1, '9250000.00', '9250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(37, 'Lightmart PE150/AC- - -NKT122013TT2-04492', 'MA0020.8', 'BO', 1, '9250000.00', '9250000.00', 1, '9250000.00', '9250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(38, 'Lightmart PE150/AC- - -NKT122013TT2-04502', 'MA0020.8', 'BO', 1, '9250000.00', '9250000.00', 1, '9250000.00', '9250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(39, 'Lightmart PE150/AC- - -NKT122013TT2-04499', 'MA0020.8', 'BO', 1, '9250000.00', '9250000.00', 1, '9250000.00', '9250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(40, 'Lightmart PE150/DC- - -2537', 'MA0020.9', 'BO', 1, '5380614.00', '5380614.00', 1, '5380614.00', '5380614.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(41, 'Lightmart PE150/DC- - -2562', 'MA0020.9', 'BO', 1, '4479750.00', '4479750.00', 1, '4479750.00', '4479750.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(42, '1x V35 card giao tiếp - Lihgtsmart- - -NKT122013TT2-00508', 'MA0021.2', 'CAI', 1, '2050000.00', '2050000.00', 1, '2050000.00', '2050000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(43, '1x V35 card giao tiếp - Lihgtsmart- - -236', 'MA0021.2', 'CAI', 1, '1584000.00', '1584000.00', 1, '1584000.00', '1584000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(44, '1x V35 card giao tiếp - Lihgtsmart- - -NKT122013TT2-00504', 'MA0021.2', 'CAI', 1, '2050000.00', '2050000.00', 1, '2050000.00', '2050000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(45, '4 x V35 card giao tiếp - Lightsmart- - -00069', 'MA0021.3', 'CAI', 1, '4200000.00', '4200000.00', 1, '4200000.00', '4200000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(46, 'Card giao tiếp 1xEthernet/Lightsmart PE 150- - -00244', 'MA0021.4', 'cái', 1, '3990000.00', '3990000.00', 1, '3990000.00', '3990000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(47, 'Bộ chuyển đổi quang điện XDK Media Converter ( Model 3301N)- - -NKT22014TT2-140121002100080', 'MA0023.1', 'Bộ', 1, '940000.00', '940000.00', 1, '940000.00', '940000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(48, 'Bộ chuyển đổi quang điện XDK Media Converter ( Model 3301N)- - -NK112013TT-130709027100063', 'MA0023.1', 'Bộ', 1, '940000.00', '940000.00', 1, '940000.00', '940000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(49, 'Bộ chuyển đổi quang điện XDK Media Converter ( Model 3301N)- - -NKT22014TT2-140121002100073', 'MA0023.1', 'Bộ', 1, '940000.00', '940000.00', 1, '940000.00', '940000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(50, 'Bộ chuyển đổi quang điện XDK Media Converter ( Model 3301N)- - -130226018100075', 'MA0023.1', 'Bộ', 1, '940000.00', '940000.00', 1, '940000.00', '940000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(51, 'Bộ chuyển đổi quang điện XDK Media Converter ( Model 3301N)- - -NK112013TT-130709027100064', 'MA0023.1', 'Bộ', 1, '940000.00', '940000.00', 1, '940000.00', '940000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(52, 'Bộ chuyển đổi quang điện XDK Media Converter ( Model 3301N)- - -130226018100189', 'MA0023.1', 'Bộ', 1, '940000.00', '940000.00', 1, '940000.00', '940000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(53, 'Bộ chuyển đổi quang điện XDK Media Converter ( Model 3301N)- - -130226018100053', 'MA0023.1', 'Bộ', 1, '940000.00', '940000.00', 1, '940000.00', '940000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(54, 'Bộ chuyển đổi quang điện XDK Media Converter ( Model 3301N)- - -130226018100175', 'MA0023.1', 'Bộ', 1, '940000.00', '940000.00', 1, '940000.00', '940000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(55, 'Bộ chuyển đổi quang điện Baudcom Media Converter 2 Core- - -NKT62014-FB5A140518399', 'MA0023.1.1', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(56, 'Bộ chuyển đổi quang điện Baudcom Media Converter 2 Core- - -NKT112014-FB5A141031093', 'MA0023.1.1', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(57, 'Bộ chuyển đổi quang điện Baudcom Media Converter 2 Core- - -NKT62014-FB5A140518395', 'MA0023.1.1', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(58, 'Bộ chuyển đổi quang điện Baudcom Media Converter 2 Core- - -NKT112014-FB5A141031079', 'MA0023.1.1', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(59, 'Bộ chuyển đổi quang điện Baudcom Media Converter 2 Core- - -NKT012015-FB5A150108113', 'MA0023.1.1', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(60, 'Bộ chuyển đổi quang điện Baudcom Media Converter 2 Core- - -NKT012015-FB5A150108120', 'MA0023.1.1', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(61, 'Bộ chuyển đổi quang điện Baudcom Media Converter 2 Core- - -NKT012015-FB5A150108114', 'MA0023.1.1', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(62, 'Bộ chuyển đổi quang điện Baudcom Media Converter 2 Core- - -NKT62014-FB5A140518462', 'MA0023.1.1', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(63, 'Bộ chuyển đổi quang điện Baudcom Media Converter 2 Core- - -NKT62014-FB5A140518388', 'MA0023.1.1', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(64, 'Bộ chuyển đổi quang điện Baudcom Media Converter 2 Core- - -NKT112014-FB5A141031099', 'MA0023.1.1', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(65, 'Bộ chuyển đổi quang điện Baudcom Media Converter 2 Core- - -NKT112014-FB5A141031083', 'MA0023.1.1', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(66, 'Bộ chuyển đổi quang điện Baudcom Media Converter 2 Core- - -NKT112014-FB5A141031061', 'MA0023.1.1', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(67, 'Bộ chuyển đổi quang điện Baudcom Media Converter 2 Core- - -NKT112014-FB5A141031044', 'MA0023.1.1', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(68, 'Bộ chuyển đổi quang điện Baudcom Media Converter 2 Core- - -NKT042015-FB5A140819021', 'MA0023.1.1', 'bộ', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(69, 'Bộ chuyển đổi quang điện Baudcom Media Converter 2 Core- - -NKT112014-FB5A141031008', 'MA0023.1.1', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(70, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK020715-BD5A150624001', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(71, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK020715-BD5A150624004', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(72, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK020715-BD5A150624005', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(73, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK020715-BD5A150624007', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(74, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714051', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(75, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714053', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(76, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714054', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(77, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714058', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(78, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714068', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(79, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK020715-BD5A150624010', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(80, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK020715-BD5A150624009', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(81, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714061', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(82, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK020715-BD5A150624008', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(83, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714062', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(84, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NKT042015-W014C4101077', 'MA0023.1.1A', 'bộ', 1, '880000.00', '880000.00', 1, '880000.00', '880000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(85, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714070', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(86, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK020715-BD5A150624002', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(87, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714056', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(88, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714052', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(89, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714055', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(90, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714057', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(91, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK020715-BD5A150624003', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(92, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK020715-BD5A150624006', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(93, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714059', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(94, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714060', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(95, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714063', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(96, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714064', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(97, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714065', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(98, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714066', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(99, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714067', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(100, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NK060715-BD5A150714069', 'MA0023.1.1A', 'bộ', 1, '957600.00', '957600.00', 1, '957600.00', '957600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(101, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NKT042015-W014C4101067', 'MA0023.1.1A', 'bộ', 1, '880000.00', '880000.00', 1, '880000.00', '880000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(102, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NKT042015-W014C4101082', 'MA0023.1.1A', 'bộ', 1, '880000.00', '880000.00', 1, '880000.00', '880000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(103, 'Bộ chuyển đổi quang điện Primmcon - 2 core- - -NKT042015-W014C4101188', 'MA0023.1.1A', 'bộ', 1, '880000.00', '880000.00', 1, '880000.00', '880000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(104, 'Bộ chuyển đổi quang điện XDK Media Converter ( Model 3312N) 1CORE- - -NKT42014-140210001100090', 'MA0023.2', 'bộ', 1, '878000.00', '878000.00', 1, '878000.00', '878000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(105, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT062015-FB5A150609013', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(106, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT062015-FB5A150609052', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(107, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT062015-FB5A150609079', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(108, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT112014-FB5A141031161', 'MA0023.2.1', 'bộ', 1, '918440.00', '918440.00', 1, '918440.00', '918440.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(109, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT112014-FB5A141031179', 'MA0023.2.1', 'bộ', 1, '918440.00', '918440.00', 1, '918440.00', '918440.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(110, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A150714211', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(111, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A150714213', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(112, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A150714214', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(113, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A150714216', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(114, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A150714218', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(115, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A150714219', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(116, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009003', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(117, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009004', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(118, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009008', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(119, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009010', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(120, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009011', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(121, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009013', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(122, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009015', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(123, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009016', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(124, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009020', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(125, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009021', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(126, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009023', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(127, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009012', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(128, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A150714220', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(129, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714183', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(130, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714184', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(131, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714185', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(132, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714193', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(133, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT42015-FB5A150321002', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(134, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT42015-FB5A150321044', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(135, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT42015-FB5A150321046', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(136, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT42015-FB5A150321076', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(137, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT42015-FB5A150321077', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(138, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT42015-FB5A150321096', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(139, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT82014-FB5A140818527', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(140, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT062015-FB5A150609040', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(141, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT062015-FB5A150609093', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(142, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT112014-FB5A141031140', 'MA0023.2.1', 'bộ', 1, '918440.00', '918440.00', 1, '918440.00', '918440.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(143, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT112014-FB5A141031162', 'MA0023.2.1', 'bộ', 1, '918440.00', '918440.00', 1, '918440.00', '918440.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(144, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009035', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(145, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009037', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(146, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009039', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(147, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009042', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(148, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009044', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(149, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT42015-FB5A150321059', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(150, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT42015-FB5A150321089', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(151, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009002', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(152, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009005', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(153, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009007', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(154, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009009', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(155, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009014', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(156, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009017', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(157, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009019', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(158, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009022', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(159, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009024', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(160, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A150714212', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(161, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A150714215', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(162, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A150714217', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(163, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009026', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(164, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009027', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(165, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009028', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(166, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009029', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(167, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009031', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(168, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009033', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(169, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009034', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(170, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009036', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(171, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009038', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(172, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009040', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(173, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009041', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(174, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009043', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(175, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009046', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(176, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009050', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(177, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714113', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(178, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714122', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(179, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714133', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(180, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714138', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(181, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714161', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(182, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714170', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(183, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714172', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(184, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714175', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(185, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009025', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(186, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT062015-FB5A150609039', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(187, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009032', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(188, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009048', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(189, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714182', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(190, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714195', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(191, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT062015-FB5A150609078', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(192, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009030', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(193, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009045', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(194, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714168', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(195, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009006', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(196, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009047', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(197, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009049', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(198, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714119', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(199, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714126', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(200, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714137', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(201, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714162', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(202, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714169', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(203, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714173', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(204, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK060715-BD5A150714180', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(205, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009001', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(206, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NK021115-BD5A151009018', 'MA0023.2.1', 'bộ', 1, '969210.00', '969210.00', 1, '969210.00', '969210.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(207, 'Bộ chuyển đổi quang điện Baudcom Media Converter 1 Core- - -NKT82014-FB5A140818505', 'MA0023.2.1', 'bộ', 1, '914300.00', '914300.00', 1, '914300.00', '914300.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(208, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598600.00', '1598600.00', 1, '1598600.00', '1598600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(209, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598600.00', '1598600.00', 1, '1598600.00', '1598600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(210, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598600.00', '1598600.00', 1, '1598600.00', '1598600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(211, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598000.00', '1598000.00', 1, '1598000.00', '1598000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(212, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598000.00', '1598000.00', 1, '1598000.00', '1598000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(213, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598000.00', '1598000.00', 1, '1598000.00', '1598000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(214, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598600.00', '1598600.00', 1, '1598600.00', '1598600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(215, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598600.00', '1598600.00', 1, '1598600.00', '1598600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(216, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598600.00', '1598600.00', 1, '1598600.00', '1598600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(217, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598000.00', '1598000.00', 1, '1598000.00', '1598000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(218, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598000.00', '1598000.00', 1, '1598000.00', '1598000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(219, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598600.00', '1598600.00', 1, '1598600.00', '1598600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(220, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598000.00', '1598000.00', 1, '1598000.00', '1598000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(221, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598600.00', '1598600.00', 1, '1598600.00', '1598600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(222, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598600.00', '1598600.00', 1, '1598600.00', '1598600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(223, 'Bộ chuyển đổi quang điện Baudcom: GE Media Converter Tx1310nm - SC port, dual Fiber, single mode -25', 'MA0023.3.1', 'bộ', 1, '1598600.00', '1598600.00', 1, '1598600.00', '1598600.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(224, 'MST 120MA/DC/4E1- - -T26007854', 'MA0034', 'BO', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(225, 'MST 120MA/DC/4E1- - -T26007836', 'MA0034', 'BO', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(226, 'Module quang Spectrum Trrrabit 1000/B x 1310 (GLC-S20-13-CM)- - -NKT92014-140704044', 'MA0035.13', 'cái', 1, '1750000.00', '1750000.00', 1, '1750000.00', '1750000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(227, 'Module quang giao tiếp client SFP/4GU/850nm-SFP/4GU/850I/MM/LC- - - ', 'MA0035.5', 'cái', 7, '1890000.00', '13230000.00', 7, '1890000.00', '13230000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(228, 'Module giao tiếp quang SFP, single mode- 10km/1G 1310nm- - -NKT042015-AD07091807', 'MA0035.6.1', 'bộ', 1, '2340000.00', '2340000.00', 1, '2340000.00', '2340000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(229, 'Module giao tiếp quang SFP, single mode- 10km/1G 1310nm- - -NKT052015-AD07091802', 'MA0035.6.1', 'bộ', 1, '2340000.00', '2340000.00', 1, '2340000.00', '2340000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(230, 'Module giao tiếp quang SFP, single mode- 10km/1G 1310nm- - -NKT052015-AD07091803', 'MA0035.6.1', 'bộ', 1, '2340000.00', '2340000.00', 1, '2340000.00', '2340000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(231, 'Module giao tiếp quang SFP, single mode- 10km/1G 1310nm- - -NKT042015-AD07091808', 'MA0035.6.1', 'bộ', 1, '2340000.00', '2340000.00', 1, '2340000.00', '2340000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(232, 'Module giao tiếp quang SFP, single mode- 10km/1G 1310nm- - -NKT042015-AD07091809', 'MA0035.6.1', 'bộ', 1, '2340000.00', '2340000.00', 1, '2340000.00', '2340000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(233, 'Module giao tiếp quang SFP, single mode- 10km/1G 1310nm- - -NKT042015-AD07091810', 'MA0035.6.1', 'bộ', 1, '2340000.00', '2340000.00', 1, '2340000.00', '2340000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(234, 'Module giao tiếp quang SFP, single mode- 10km/1G 1310nm- - -NKT052015-AD07091801', 'MA0035.6.1', 'bộ', 1, '2340000.00', '2340000.00', 1, '2340000.00', '2340000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(235, 'Module giao tiếp quang SFP, single mode- 10km/1G 1310nm- - -NKT042015-AD07091806', 'MA0035.6.1', 'bộ', 1, '2340000.00', '2340000.00', 1, '2340000.00', '2340000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(236, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(237, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(238, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(239, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(240, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(241, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(242, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0');
INSERT INTO `vattu_cc_khodai` (`id`, `TenHangTonKho`, `MaSo`, `DonViTinh`, `SoLuong_KT`, `DonGia_KT`, `Tien_KT`, `SoLuong_TT`, `DonGia_TT`, `Tien_TT`, `SoLuong_HH`, `DonGia_HH`, `Tien_HH`, `DonGia_CL`, `Tien_CL`, `GhiChu`, `TramID`) VALUES
(243, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(244, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(245, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(246, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(247, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(248, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(249, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(250, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(251, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(252, 'Module giao tiếp điện SFP, single Mode 1.25Gbps, 10/100/1000 Base -TRJ-45 Connector- - -NKT112014-AX', 'MA0035.6.3', 'bộ', 1, '2450000.00', '2450000.00', 1, '2450000.00', '2450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(253, 'Coverte AC /DC RS - 25-48 MST- - - ', 'MA0036', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(254, 'FE over 4E1 module, SNMP manageable RC954-FE4E1-BL- - -NKT122014-12B14A30S0003G', 'MA0038.2', 'card', 1, '7500000.00', '7500000.00', 1, '7500000.00', '7500000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(255, 'FE over 4E1 module, SNMP manageable RC954-FE4E1-BL- - -NKT122014-12B14A30S0002G', 'MA0038.2', 'card', 1, '7500000.00', '7500000.00', 1, '7500000.00', '7500000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(256, 'FE over 4E1 module, SNMP manageable RC954-FE4E1-BL- - -NKT122014-12B14A30S0006G', 'MA0038.2', 'card', 1, '7500000.00', '7500000.00', 1, '7500000.00', '7500000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(257, 'FE over 4E1 module, SNMP manageable RC954-FE4E1-BL- - -NKT122014-12B14A30S0005G', 'MA0038.2', 'card', 1, '7500000.00', '7500000.00', 1, '7500000.00', '7500000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(258, 'FE over 4E1 module, SNMP manageable RC954-FE4E1-BL- - -NKT122014-12B14A30S0001G', 'MA0038.2', 'card', 1, '7500000.00', '7500000.00', 1, '7500000.00', '7500000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(259, '1U, 1-slot chassis, with one AC power supply connector RC001-1AC- - -NKT82014-03S14805S0003G', 'MA0038.3', 'khung', 1, '675000.00', '675000.00', 1, '675000.00', '675000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(260, '1U, 1-slot chassis, with one AC power supply connector RC001-1AC- - -NKT102014-B14919B0003G', 'MA0038.3', 'khung', 1, '675000.00', '675000.00', 1, '675000.00', '675000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(261, '1U, 1-slot chassis, with one AC power supply connector RC001-1AC- - -NKT82014-03S14805S0001G', 'MA0038.3', 'khung', 1, '675000.00', '675000.00', 1, '675000.00', '675000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(262, 'Patton 3201/R/UI- - -NIC00A0BA051ACD', 'MA03', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(263, 'Patton 3201/R/UI- - -NIC00A0BA051AE6', 'MA03', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(264, 'Patton 3201/R/UI- - -NIC00A0BA051997', 'MA03', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(265, 'Patton 3201/R/UI- - -NIC00A0BA051AA1', 'MA03', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(266, 'Patton 3201/R/UI- - -NIC00A0BA051A21', 'MA03', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(267, 'Patton 3201/R/UI- - -NIC00A0BA051A11', 'MA03', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(268, 'Smart Node 8FXS VoIP Gateway Patton- - -NKT032015-00A0BA0A48CO', 'MA03.3', 'bộ', 1, '8980000.00', '8980000.00', 1, '8980000.00', '8980000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(269, 'GSC 150AC - 20- - -G110920476', 'MA11', 'BO', 1, '6285000.00', '6285000.00', 1, '6285000.00', '6285000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(270, 'Bộ chuyển đổi quang điện loại 1 Core (Converter) OPT-1201S25- - -NKT82014-1108230017', 'MA27.1', 'bộ', 1, '840000.00', '840000.00', 1, '840000.00', '840000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(271, 'Bộ chuyển đổi quang điện loại 1 Core (Converter) OPT-1201S25- - -NKT82014-1108230024', 'MA27.1', 'bộ', 1, '840000.00', '840000.00', 1, '840000.00', '840000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(272, 'Bộ chuyển đổi quang điện loại 1 Core (Converter) OPT-1201S25- - -NKT82014-1108230013', 'MA27.1', 'bộ', 1, '840000.00', '840000.00', 1, '840000.00', '840000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(273, 'Bộ chuyển đổi quang điện loại 1 Core (Converter) OPT-1201S25- - -NKT82014-1108230018', 'MA27.1', 'bộ', 1, '840000.00', '840000.00', 1, '840000.00', '840000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(274, 'OPT - 1202S25- - -1301170161', 'MA28.1', 'CAI', 1, '840000.00', '840000.00', 1, '840000.00', '840000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(275, 'OPT - 1202S25- - -1301170181', 'MA28.1', 'CAI', 1, '840000.00', '840000.00', 1, '840000.00', '840000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(276, 'OPT - 1202S25- - -1301170174', 'MA28.1', 'CAI', 1, '840000.00', '840000.00', 1, '840000.00', '840000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(277, 'Chuyển đổi quang điện OPT-1100S25- - -1209270274', 'MA28.2', 'Cái', 1, '981500.00', '981500.00', 1, '981500.00', '981500.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(278, 'Chuyển đổi quang điện OPT-1100S25- - -1209270265', 'MA28.2', 'Cái', 1, '981500.00', '981500.00', 1, '981500.00', '981500.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(279, 'Module XFP 10Gbps, 10km, 1310nm: RX sensitivity.- - -NKT122014-B14B13B0002G', 'MA29.2', 'cái', 1, '7450000.00', '7450000.00', 1, '7450000.00', '7450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(280, 'Module XFP 10Gbps, 10km, 1310nm: RX sensitivity.- - -NKT122014-B14B13B0008G', 'MA29.2', 'cái', 1, '7450000.00', '7450000.00', 1, '7450000.00', '7450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(281, 'Module XFP 10Gbps, 10km, 1310nm: RX sensitivity.- - -NKT122014-B14B13B0007G', 'MA29.2', 'cái', 1, '7450000.00', '7450000.00', 1, '7450000.00', '7450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(282, 'Module XFP 10Gbps, 10km, 1310nm: RX sensitivity.- - -NKT122014-B14B13B0005G', 'MA29.2', 'cái', 1, '7450000.00', '7450000.00', 1, '7450000.00', '7450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(283, 'Module XFP 10Gbps, 10km, 1310nm: RX sensitivity.- - -NKT122014-B14B13B0004G', 'MA29.2', 'cái', 1, '7450000.00', '7450000.00', 1, '7450000.00', '7450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(284, 'Module XFP 10Gbps, 10km, 1310nm: RX sensitivity.- - -NKT122014-B14B13B0001G', 'MA29.2', 'cái', 1, '7450000.00', '7450000.00', 1, '7450000.00', '7450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(285, 'Module XFP 10Gbps, 10km, 1310nm: RX sensitivity.- - -NKT122014-B14B13B0006G', 'MA29.2', 'cái', 1, '7450000.00', '7450000.00', 1, '7450000.00', '7450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(286, 'Module XFP 10Gbps, 10km, 1310nm: RX sensitivity.- - -NKT122014-B14B13B0009G', 'MA29.2', 'cái', 1, '7450000.00', '7450000.00', 1, '7450000.00', '7450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(287, 'Module XFP 10Gbps, 10km, 1310nm: RX sensitivity.- - -NKT122014-B14B13B0010G', 'MA29.2', 'cái', 1, '7450000.00', '7450000.00', 1, '7450000.00', '7450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(288, 'thiết bị nối cổng SRW224G4-K9 Cisco SF300-24 port- - -DNI152904B8', 'MA33', 'CAI', 1, '4250000.00', '4250000.00', 1, '4250000.00', '4250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(289, 'Cisco 888 - K9- - -NKT012015-FGL184822KC', 'MA34', 'CAI', 1, '9430000.00', '9430000.00', 1, '9430000.00', '9430000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(290, 'Cisco 888 - K9- - -NKT012015-FGL184822KE', 'MA34', 'CAI', 1, '9430000.00', '9430000.00', 1, '9430000.00', '9430000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(291, 'Cisco 888 - K9- - -NKT122014-FGL18452064', 'MA34', 'CAI', 1, '9430000.00', '9430000.00', 1, '9430000.00', '9430000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(292, 'Cisco 888 - K9- - -NKT122014-FGL18452067', 'MA34', 'CAI', 1, '9430000.00', '9430000.00', 1, '9430000.00', '9430000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(293, 'Cisco 888 - K9- - -FHK141278U7', 'MA34', 'CAI', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(294, 'Cisco 888 - K9- - -NKT012015-FGL184822K9', 'MA34', 'CAI', 1, '9430000.00', '9430000.00', 1, '9430000.00', '9430000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(295, 'Cisco 878- - -FHK1111133Z', 'MA34.1', 'cái', 1, '0.00', '0.00', 1, '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(296, 'Modem quang giao diện V35 FRM220-V35-SC030/CH01M-AD- - -G1108V0000100132G0460', 'MA37', 'Bộ', 1, '9275000.00', '9275000.00', 1, '9275000.00', '9275000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(297, 'Modem quang giao diện V35 FRM220-V35-SC030/CH01M-AD- - -G1108V0000100132G0459', 'MA37', 'Bộ', 1, '9275000.00', '9275000.00', 1, '9275000.00', '9275000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(298, 'Modem quang giao diện V35 FRM220-V35-SC030/CH01M-AD- - -G1108V000010012AG0738', 'MA37', 'Bộ', 1, '9285000.00', '9285000.00', 1, '9285000.00', '9285000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(299, 'Modem quang giao diện V35 FRM220-V35-SC030/CH01M-AD- - -NKT122014-G1108V0000100137G0046', 'MA37', 'Bộ', 1, '9285000.00', '9285000.00', 1, '9285000.00', '9285000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(300, 'Modem quang giao diện E1/G.703 FRM220-E1/T1R-SC030/CH01M-AD- - -G1108V0000100132G0068', 'MA38', 'Bộ', 1, '9275000.00', '9275000.00', 1, '9275000.00', '9275000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(301, 'Modem quang giao diện E1/G.703 FRM220-E1/T1R-SC030/CH01M-AD- - -G1108V000010012AG0761', 'MA38', 'Bộ', 1, '9275000.00', '9275000.00', 1, '9275000.00', '9275000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(302, 'Modem quang giao diện E1/G.703 FRM220-E1/T1R-SC030/CH01M-AD- - -G1108V0000100132G0069', 'MA38', 'Bộ', 1, '9275000.00', '9275000.00', 1, '9275000.00', '9275000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(303, 'Modem quang giao diện E1/G.703 FRM220-E1/T1R-SC030/CH01M-AD- - -NKT122014-G1108V000010011CG0451', 'MA38', 'Bộ', 1, '928500.00', '928500.00', 1, '928500.00', '928500.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(304, 'Modem quang giao diện E1/G.703 FRM220-E1/T1R-SC030/CH01M-AD- - -G1108V0000100132G0066', 'MA38', 'Bộ', 1, '9275000.00', '9275000.00', 1, '9275000.00', '9275000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(305, 'Modem quang giao diện E1/G.703 FRM220-E1/T1R-SC030/CH01M-AD- - -G1108V000010012AG0248', 'MA38', 'Bộ', 1, '9285000.00', '9285000.00', 1, '9285000.00', '9285000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(306, 'Modem quang giao diện E1/G.703 FRM220-E1/T1R-SC030/CH01M-AD- - -G1108V0000100132G0074', 'MA38', 'Bộ', 1, '9275000.00', '9275000.00', 1, '9275000.00', '9275000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(307, 'Bộ chuyển đổi E1 sang Ethernet-RJ45 WS620 (chuyển đổi giao diện của mạng)- - -NKT062015-62B980000378', 'MA38.1', 'Bộ', 1, '5450000.00', '5450000.00', 1, '5450000.00', '5450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(308, 'Bộ chuyển đổi E1 sang Ethernet-RJ45 WS620 (chuyển đổi giao diện của mạng)- - -NKT062015-62B980000379', 'MA38.1', 'Bộ', 1, '5450000.00', '5450000.00', 1, '5450000.00', '5450000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(309, 'IAD WellGate 2608 (IP Gateway)- - -NKT42014TT3-1308C0285', 'MA39', 'Bộ', 1, '8990000.00', '8990000.00', 1, '8990000.00', '8990000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(310, 'IAD WellGate 2608 (IP Gateway)- - -NKT42014TT3-1308C0284', 'MA39', 'Bộ', 1, '8990000.00', '8990000.00', 1, '8990000.00', '8990000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(311, 'WellGate 2416S -16port- - -NKT42014TT3-1308H1004', 'MA39.2', 'cái', 1, '17500000.00', '17500000.00', 1, '17500000.00', '17500000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(312, '3G Wifi Router - Ethernet- - -40375', 'MA41', 'Cái', 1, '3250000.00', '3250000.00', 1, '3250000.00', '3250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(313, '3G Wifi Router - Ethernet- - -40944', 'MA41', 'Cái', 1, '3250000.00', '3250000.00', 1, '3250000.00', '3250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(314, '3G Wifi Router - Ethernet- - -50347', 'MA41', 'Cái', 1, '3250000.00', '3250000.00', 1, '3250000.00', '3250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(315, '3G Wifi Router - Ethernet- - -50111', 'MA41', 'Cái', 1, '3250000.00', '3250000.00', 1, '3250000.00', '3250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(316, '3G Wifi Router - Ethernet- - -50113', 'MA41', 'Cái', 1, '3250000.00', '3250000.00', 1, '3250000.00', '3250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(317, '3G Wifi Router - Ethernet- - -50158', 'MA41', 'Cái', 1, '3250000.00', '3250000.00', 1, '3250000.00', '3250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(318, '3G Wifi Router - Ethernet- - -50207', 'MA41', 'Cái', 1, '3250000.00', '3250000.00', 1, '3250000.00', '3250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(319, '3G Wifi Router - Ethernet- - -50340', 'MA41', 'Cái', 1, '3250000.00', '3250000.00', 1, '3250000.00', '3250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(320, '3G Wifi Router - Ethernet- - -50343', 'MA41', 'Cái', 1, '3250000.00', '3250000.00', 1, '3250000.00', '3250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(321, '3G Wifi Router - Ethernet- - -40998', 'MA41', 'Cái', 1, '3250000.00', '3250000.00', 1, '3250000.00', '3250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(322, '3G Wifi Router - Ethernet- - -50219', 'MA41', 'Cái', 1, '3250000.00', '3250000.00', 1, '3250000.00', '3250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(323, '3G Wifi Router - Ethernet- - -50093', 'MA41', 'Cái', 1, '3250000.00', '3250000.00', 1, '3250000.00', '3250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(324, '3G Wifi Router - Ethernet- - -50154', 'MA41', 'Cái', 1, '3250000.00', '3250000.00', 1, '3250000.00', '3250000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(325, 'Bộ chuyển đổi SDI qua HDMI hỗ trợ 3D (Model CDH1813)- - -NKT062015-08771', 'MA43', 'Bộ', 1, '16050000.00', '16050000.00', 1, '16050000.00', '16050000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0'),
(326, 'Bộ chuyển đổi SDI qua HDMI hỗ trợ 3D (Model CDH1813)- - -NKT062015-08773', 'MA43', 'Bộ', 1, '16050000.00', '16050000.00', 1, '16050000.00', '16050000.00', 0, '0.00', '0.00', '0.00', '0.00', 'CCDP', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vattu_cc_modem_vtn`
--

CREATE TABLE `vattu_cc_modem_vtn` (
  `id` int(11) NOT NULL,
  `TSCD` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Ngay` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `SoThe` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Ten_Cong_Cu` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `S_N` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Ngay_BBNT` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ViTriLapDat` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `SoLuong_SS` tinyint(4) DEFAULT NULL,
  `SoLuong_TT` tinyint(4) DEFAULT NULL,
  `ChenhLech` tinyint(4) DEFAULT NULL,
  `GhiChu` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `TramID` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `vattu_cc_modem_vtn`
--

INSERT INTO `vattu_cc_modem_vtn` (`id`, `TSCD`, `Ngay`, `SoThe`, `Ten_Cong_Cu`, `S_N`, `Ngay_BBNT`, `ViTriLapDat`, `SoLuong_SS`, `SoLuong_TT`, `ChenhLech`, `GhiChu`, `TramID`) VALUES
(1, '01/01/2013', '40400138', 'MAY DHND DAIKIN 2 CU', '', '23/06/1905', 'TR.BENTRE', '1', 1, 0, 0, '', '0'),
(2, '01/01/2013', '49901080', 'PATTON 3201-NICOOAOB', 'NICOOAOBAO125C7', '27/06/1905', 'VPTU BTRE', '1', 1, 0, 0, '', '0'),
(3, '01/01/2013', '49901119', 'PATTON 3201:NICOOAOB', ':NICOOAOBAO12OE1', '27/06/1905', 'Trung tâm Thanh khoả', '1', 1, 0, 0, '', '0'),
(4, '01/01/2013', '49901548', 'CISCO 878: FHK110110', 'FHK110110PB', '29/06/1905', 'MHB - MoCay-BTE', '1', 1, 0, 0, '', '0'),
(5, '01/01/2013', '49901577', 'CISCO 878: FHK110210', 'FHK110210B9', '29/06/1905', 'NH KienLong-BaTri-BT', '1', 1, 0, 0, '', '0'),
(6, '01/01/2013', '49901714', 'CONVERTER RICI 4E1/D', '708007620', '14/11/2014', 'VNPT BẾN TRE - VIỄN ', '1', 1, 0, 0, '', '0'),
(7, '01/01/2013', '49901756', 'CISCO  878  : FHK111', ' FHK111112ZG', '29/06/1905', 'ATM-MHB tại Quầy GD ', '1', 1, 0, 0, '', '0'),
(8, '01/01/2013', '49901892', 'CISCO  878  : FHK112', 'FHK112111YS', '29/06/1905', 'NH SCB-KCN AnHiep-BT', '1', 1, 0, 0, '', '0'),
(9, '01/01/2013', '49901917', 'CISCO  878  : FHK112', 'FHK112111XX', '29/06/1905', 'UBMTTQ BTE  ATM - (M', '1', 1, 0, 0, '', '0'),
(10, 'PCT: 762 04/01/15', '42045', 'CISCO  878  : FHK112', 'FHK112111ZX', '10/02/2015', 'Giám sát nhà Trạm BT', '1', 1, 0, 0, '', '0'),
(11, '01/01/2013', '49902491', 'Router G.SHDSL CISCO', 'FHK112710JS', '29/06/1905', 'Cty Xăng dầu BTE', '1', 1, 0, 0, '', '0'),
(12, '01/01/2013', '49902975', 'Modem Cisco 878 - FH', ' FHK12022A8V', '30/06/1905', 'ATM MHB Coopmart', '1', 1, 0, 0, '', '0'),
(13, '01/01/2013', '49903003', 'Modem Cisco 878 - FH', ' FHK12022A79', '30/06/1905', 'Truong Chinh Tri-BTE', '1', 1, 0, 0, '', '0'),
(14, '01/01/2013', '49903052', 'Modem Cisco 878 - FH', 'FHK12022A90', '30/06/1905', 'TT Tan so - BTE', '1', 1, 0, 0, '', '0'),
(15, '01/01/2013', '49903672', 'Modem cisco 878: FHK', ' FHK124029DB', '01/07/1905', 'DP-BTE', '1', 1, 0, 0, '', '0'),
(16, '01/01/2013', '49903925', 'May lạnh Daikin 2HP,', '', '01/07/1905', 'Tram BTE', '1', 1, 0, 0, '', '0'),
(17, '01/01/2013', '49904317', 'Module ODF 48FO- Gåm', '', '01/07/1905', 'Tram BTE', '1', 1, 0, 0, '', '0'),
(18, '01/01/2013', '49904318', 'Module ODF 48FO- Gåm', '', '01/07/1905', 'Tram BTE', '1', 1, 0, 0, '', '0'),
(19, '01/01/2013', '49904319', 'Module ODF 48FO- Gåm', '', '01/07/1905', 'Tram BTE', '1', 1, 0, 0, '', '0'),
(20, '01/01/2013', '49904320', 'Module ODF 48FO- Gåm', '', '01/07/1905', 'Tram BTE', '1', 1, 0, 0, '', '0'),
(21, '01/01/2013', '49904321', 'Module ODF 48FO- Gåm', '', '01/07/1905', 'Tram BTE', '1', 1, 0, 0, '', '0'),
(22, '01/01/2013', '49906023', 'Module ODF 48FO- Gåm', '', '02/07/1905', 'Tram BTE', '1', 1, 0, 0, '', '0'),
(23, '01/01/2013', '49906024', 'Module ODF 48FO- Gåm', '', '02/07/1905', 'Tram BTE', '1', 1, 0, 0, '', '0'),
(24, '01/01/2013', '49904990', 'Modem cisco 878 - FH', 'FHK131922U9', '01/04/2015', 'ATM-SacomBank Cty UN', '1', 1, 0, 0, '', '0'),
(25, '01/01/2013', '49905057', 'Modem cisco 878 - FH', 'FHK131922FD', '02/07/1905', 'PGD Kiên Long tại Bì', '1', 1, 0, 0, '', '0'),
(26, '01/01/2013', '49905106', 'Modem cisco 878 - FH', 'FHK131922ET', '02/07/1905', 'NHPTNĐBSCL-   (MHB-B', '1', 1, 0, 0, '', '0'),
(27, '01/01/2013', '49905149', 'Modem cisco 878 - FH', 'FHK131960R7', '02/07/1905', 'NH Phát triển VN - B', '1', 1, 0, 0, '', '0'),
(28, '01/01/2013', '49906595', 'Modem Cisco 878 - FH', 'FHK110210DD', '02/07/1905', 'NH phuongNam-BTE', '1', 1, 0, 0, '', '0'),
(29, '01/01/2013', '49906752', 'Modem Cisco 878 - FH', 'FHK11191ABJ', '03/07/1905', 'QTK-LacHong NH DaiTi', '1', 1, 0, 0, '', '0'),
(30, '01/01/2013', '49906817', 'Modem Cisco 878 - FH', ' FHK132660LR', '03/07/1905', 'MHB-BaTri-BTE', '1', 1, 0, 0, '', '0'),
(31, '01/01/2013', '49906864', 'Modem Cisco 878 - FH', 'FHK1326794F', '03/07/1905', 'MHB -Mo Cay Nam-BTE-', '1', 1, 0, 0, '', '0'),
(32, '01/01/2013', '49907433', 'Modem cisco 888-K9 -', ' FGL152627PH', 'Q3/2011', 'DP-BTE', '1', 1, 0, 0, '', '0'),
(33, '01/01/2013', '49907440', 'Modem cisco 888-K9 -', 'FGL152627NA', 'Q3/2011', 'DP-BTE', '1', 1, 0, 0, '', '0'),
(34, '01/01/2013', '49907506', 'Modem cisco 888-K9 -', 'FGL152627P9', 'Q3/2011', 'BĐ BTE Ghi sê chuyển', '1', 1, 0, 0, '', '0'),
(35, '29/06/2007', '93/XC', 'SSG 20', '0164112006003095', '28/5/2010', 'DP BTE', '1', 1, 0, 0, '', '0'),
(36, '29/06/2007', '93/XC', 'SSG 20 Cập Nhật ngày', '0164012006001794', '03/05/2007', 'CTY CP TẬP ĐOÀN MAI ', '1', 1, 0, 0, '', '0'),
(37, '29/06/2007', '93/XC', 'SSG 20 Cập Nhật ngày', '0164112006003307', '05/06/2015', 'NH TMCP SÀI GÒN (SCB', '1', 1, 0, 0, '', '0'),
(38, '18/07/2007', '130/XC', 'SSG - 20', '0164112006004410', '24/11/12', 'BĐ BTE', '1', 1, 0, 0, '', '0'),
(39, '26/06/2009', '134/XC ', 'Coverter EL 150-20', 'G090512760', '23/01/2015', 'CTY CP HẠ TẦNG VIỄN ', '1', 1, 0, 0, '', '0'),
(40, '26/06/2009', '134/XC ', 'Coverter EL 150-20', 'G090512761', '02/05/2013', 'QTK Mỹ Thạnh - NH Đạ', '1', 1, 0, 0, '', '0'),
(41, '26/08/2009', '192/XC ', 'ETX102 ', '928025777', '7/3/12', 'NH KIEN LONG', '1', 1, 0, 0, '', '0'),
(42, '26/08/2009', '192/XC ', 'ETX102 ', '928025776', '22/12/2009', ' NH Đông Á BTE', '1', 1, 0, 0, '', '0'),
(43, '26/08/2009', '192/XC ', 'ETX102 ', '928025695', '11/11/2010', 'THBT-HTV (TMS) - Đầu', '1', 1, 0, 0, '', '0'),
(44, '26/08/2009', '192/XC ', 'ETX102 ', '928025696', '11/11/2010', 'Đài PT-TH Bến Tre', '1', 1, 0, 0, '', '0'),
(45, '22/04/2010', '117/XC/10', 'Chuyển đổi quang điệ', 'G100414550', '20/03/2013', 'NGÂN HÀNG TMCP ĐẠI T', '1', 1, 0, 0, '', '0'),
(46, '22/04/2010', '117/XC/10', 'Chuyển đổi quang điệ', 'G100414565', '20/03/2013', 'NGÂN HÀNG TMCP ĐẠI T', '1', 1, 0, 0, '', '0'),
(47, '15/11/2010', '393/XC/10', 'FE Converter AN - UM', '1010SA20F0066', '24/11/2010', 'NH Đại Tín BTE', '1', 1, 0, 0, '', '0'),
(48, '24/11/2010', '413/XC/10', 'FE Converter AN - UM', '0901SM20F0041', '01/12/2010', 'NHĐT BTE (BIDV)', '1', 1, 0, 0, '', '0'),
(49, '24/11/2010', '413/XC/10', 'FE Converter AN - UM', '0901SM20F0102', '09/12/2010', 'NH Đông Á -PGD Mỏ Cà', '1', 1, 0, 0, '', '0'),
(50, '03/12/2010', '428/XC/10', 'Modem Cisco 878 ', 'FHK141278U4', '10/11/2010', 'NH kiên Long Mỏ Cày ', '1', 1, 0, 0, '', '0'),
(51, '03/12/2010', '429/XC/10', 'Modem Cisco 878 ', 'FHK141275BG', '15/07/2011', 'Cty CP Chăn nuôi CP ', '1', 1, 0, 0, '', '0'),
(52, '03/12/2010', '429/XC/10', 'Modem Cisco 878 ', 'FHK141278UF', '10/12/2010', 'NH Đại Tín Mỹ Thạnh', '1', 1, 0, 0, '', '0'),
(53, '27/01/2011', '23/XC/11', 'Chuyển đổi quang điệ', 'AH06C113CSM0012', '28/01/2011', 'NHCT BTE', '1', 1, 0, 0, '', '0'),
(54, '06/01/2011', '9/XC/11', 'FE Converter AN - UM', '1012SA20F0280', '22/02/2011', 'NH Đông Á -PGD 24h B', '1', 1, 0, 0, '', '0'),
(55, '18/02/2011', '40/XC/11', 'Chuyển đổi quang điệ', 'BA20C113CSM0031', '26/09/2011', 'Cty CMC BV Nhân Thọ', '1', 1, 0, 0, '', '0'),
(56, '18/02/2011', '40/XC/11', 'Chuyển đổi quang điệ', 'BA20C113CSM0024', '03/05/2011', 'NH Đ.Á -PGD Bình Đại', '1', 1, 0, 0, '', '0'),
(57, '21/02/2011', '54/XC/11', 'Chuyển đổi quang điệ', 'BB11C113CSM0024', '30/03/2011', 'NH TMCP Á Châu-CN BT', '1', 1, 0, 0, '', '0'),
(58, '24/03/2011', '105/XC/11', 'Converter AOM - 1100', '110316831100S200001', '01/10/2012', 'NHCT ', '1', 1, 0, 0, '', '0'),
(59, '25/03/2011', '116/XC/11', 'Converter AOM - 1100', '101125831100S200070', '14/04/2011', 'NHCT BTE', '1', 1, 0, 0, '', '0'),
(60, '25/03/2011', '116/XC/11', 'Converter AOM - 1100', '101125831100S200071', '14/04/2011', 'NHCT BTE', '1', 1, 0, 0, '', '0'),
(61, '25/03/2011', '116/XC/11', 'Converter AOM - 1100', '101125831100S200069', '14/04/2011', 'NHCT BTE', '1', 1, 0, 0, '', '0'),
(62, '25/03/2011', '116/XC/11', 'Converter AOM - 1100', '101125831100S2', '14/04/2011', 'DP-BTE', '1', 1, 0, 0, '', '0'),
(63, '25/03/2011', '116/XC/11', 'Converter AOM - 1100', '101125831100S200083', '14/04/2011', 'NHCT BTE', '1', 1, 0, 0, '', '0'),
(64, '25/03/2011', '116/XC/11', 'Converter AOM - 1100', '101125831100S200079', '14/04/2011', 'ATM Sacombank-Lô D1-', '1', 1, 0, 0, '', '0'),
(65, '25/03/2011', '116/XC/11', 'Converter AOM - 1100', '101125831100S200078', '14/04/2011', 'NHCT BTE', '1', 1, 0, 0, '', '0'),
(66, '25/03/2011', '116/XC/11', 'Converter AOM - 1100', '101125831100S200077', '14/04/2011', 'NHCT BTE', '1', 1, 0, 0, '', '0'),
(67, '25/03/2011', '116/XC/11', 'Converter AOM - 1100', '101125831100S200074', '14/04/2011', 'NHCT BTE', '1', 1, 0, 0, '', '0'),
(68, '25/03/2011', '116/XC/11', 'Converter AOM - 1100', '101125831100S200072', '14/04/2011', 'NHCT BTE', '1', 1, 0, 0, '', '0'),
(69, '25/03/2011', '116/XC/11', 'Converter AOM - 1100', '101125831100S200073', '14/04/2011', 'NHCT BTE', '1', 1, 0, 0, '', '0'),
(70, '10/02/2015', 'PCT: 762 04/01/15', 'GSC 150AC - 20', ' G110418007', '10/02/2015', 'NH TMCP SÀI GÒN THƯƠ', '1', 1, 0, 0, '', '0'),
(71, '29/04/2011', '194/XC/11', 'GSC 150AC - 20 ', 'G110418011', '24/08/2015', 'Thu hồi để tại trạm', '1', 1, 0, 0, '', '0'),
(72, '13/05/2011', '206/XC/11', 'GSC 150AC - 20 ', 'G110418038', '10/01/2011', 'NHSGTT-CN BTE', '1', 1, 0, 0, '', '0'),
(73, '13/05/2011', '214/XC/11', 'GSC 150AC - 20 ', 'G110418050', '20/05/2011', 'Co.op Mart BTE', '1', 1, 0, 0, '', '0'),
(74, '31/10/2011', '510/XC/11', 'MST 120MA /AC/4E1 ', 'T26007762', '31/10/2011', 'NH NNPTNT', '1', 1, 0, 0, '', '0'),
(75, '31/10/2011', '510/XC/11', 'MST 120MA /AC/4E1 ', 'T26007795', '31/10/2011', 'NH NNPTNT-VNPT BTE', '1', 1, 0, 0, '', '0'),
(76, '16/12/2011', '620/XC/11', 'GSC 150AC - 20 ', 'G111009411', '10/01/2012', 'SACOMBANK CHO LACH', '1', 1, 0, 0, '', '0'),
(77, '16/12/2011', '620/XC/11', 'GSC 150AC - 20 ', 'G111009412', '30/12/2011', 'SACOMBANK GTRÔM', '1', 1, 0, 0, '', '0'),
(78, '16/12/2011', '620/XC/11', 'GSC 150AC - 20 ', 'G111009413', '10/01/2012', 'SACOMBANK B ĐẠI', '1', 1, 0, 0, '', '0'),
(79, '16/12/2011', '620/XC/11', 'GSC 150AC - 20 ', 'G111009414', '10/01/2012', 'SACOMBANK MCAY NAM', '1', 1, 0, 0, '', '0'),
(80, '16/12/2011', '620/XC/11', 'GSC 150AC - 20 ', 'G111009415', '10/01/2011', 'CTY THANH THANH CONG', '1', 1, 0, 0, '', '0'),
(81, '29/12/2011', '668/XC/11', 'GSC 150AC - 20 ', 'G111114935', '06/06/2012', 'NH CSXH', '1', 1, 0, 0, '', '0'),
(82, '29/02/2012', '52/XC/12', 'GSC 150AC - 20 (Cập ', 'G111115049', '05/06/2015', 'NH TMCP SÀI GÒN (SCB', '1', 1, 0, 0, '', '0'),
(83, '10/05/2012', '153/XC/12', 'GSC 150AC - 20 ', 'G120311168', '24/10/2012', 'Cty Xăng dầu BTE', '1', 1, 0, 0, '', '0'),
(84, '10/05/2012', '155/XC/12', 'GSC 150AC - 20 ', 'G120311169', '10/12/2012', 'Cục CN tin học ngân ', '1', 1, 0, 0, '', '0'),
(85, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0197', '14/11/2012', 'NHNNPTNT Ba tri', '1', 1, 0, 0, '', '0'),
(86, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0198', '15/11/2012', 'NHNNPTNT Chợ lách', '1', 1, 0, 0, '', '0'),
(87, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0199', '15/11/2012', 'NHNNPTNT Mỏ Cày Nam', '1', 1, 0, 0, '', '0'),
(88, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0200', '14/11/2012', 'NHNNPTNT Thạnh Phú', '1', 1, 0, 0, '', '0'),
(89, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0359', '12/11/2012', 'NHNNPTNT ĐL Đồng khở', '1', 1, 0, 0, '', '0'),
(90, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0360', '12/11/2012', 'NHNNPTNT ĐHMinh P5', '1', 1, 0, 0, '', '0'),
(91, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0361', '15/11/2012', 'NHNNPTNT Châu Thành', '1', 1, 0, 0, '', '0'),
(92, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0362', '12/11/2012', 'DP-BTE', '1', 1, 0, 0, '', '0'),
(93, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0363', '14/11/2012', 'NHNNPTNT Giồng Trôm', '1', 1, 0, 0, '', '0'),
(94, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0025', '14/11/2012', 'NHNNPTNT Ba tri', '1', 1, 0, 0, '', '0'),
(95, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0026', '12/11/2012', 'NHNNPTNT ĐL Đồng khở', '1', 1, 0, 0, '', '0'),
(96, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0027', '12/11/2012', 'NHNNPTNT P5', '1', 1, 0, 0, '', '0'),
(97, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0028', '15/11/2012', 'NHNNPTNT Châu Thành', '1', 1, 0, 0, '', '0'),
(98, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0029', '12/11/2012', 'DP-BTE', '1', 1, 0, 0, '', '0'),
(99, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0030', '14/11/2012', 'NHNNPTNT Giồng Trôm', '1', 1, 0, 0, '', '0'),
(100, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0071', '15/11/2012', 'NHNNPTNT Chợ lách', '1', 1, 0, 0, '', '0'),
(101, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0072', '15/11/2012', 'NHNNPTNT Mỏ Cày Nam', '1', 1, 0, 0, '', '0'),
(102, ' 05/11/2012', '526/XC/12', 'Modem quang giao diệ', 'G1108V000010012AG0073', '14/11/2012', 'NHNNPTNT Thạnh Phú', '1', 1, 0, 0, '', '0'),
(103, '13/11/2012', '549/XC/12', 'IAD WellGate 2608 ', '1209CW1270', '24/11/12', 'BĐ BTE', '1', 1, 0, 0, '', '0'),
(104, '22/11/2012', '584/XC/12', 'Cisco 888 - K9 ', 'FGL161522XM', '05/12/2012', 'DP-BTE', '1', 1, 0, 0, '', '0'),
(105, ' 10/12/2012', '612/XC/12', 'thiết bị nối cổng SR', 'DNI1602043N', '17/12/2012', 'Kênh PVN,FE giám sát', '1', 1, 0, 0, '', '0'),
(106, ' 10/12/2012', '612/XC/12', 'GLC - LH - SM (SFP S', '1210L00305', '17/12/2012', 'Kênh PVN,FE giám sát', '1', 1, 0, 0, '', '0'),
(107, ' 10/12/2012', '612/XC/12', 'GLC - LH - SM (SFP S', '1210L00301', '17/12/2012', 'Kênh PVN,FE giám sát', '1', 1, 0, 0, '', '0'),
(108, '28/02/2013', '69/XC/13', 'Chuyển đổi quang điệ', '-1301290712-', '20/03/2013', 'NGÂN HÀNG TMCP ĐẠI T', '1', 1, 0, 0, '', '0'),
(109, '28/02/2013', '69/XC/13', 'Chuyển đổi quang điệ', '-1301290714-', '20/03/2013', 'QTK Giao Long - NH Đ', '1', 1, 0, 0, '', '0'),
(110, '28/02/2013', '69/XC/13', 'Chuyển đổi quang điệ', '-1301290715-', '20/03/2013', 'QTK Phú An Hoà - NH ', '1', 1, 0, 0, '', '0'),
(111, '28/06/2013', '306/XC/13', 'Modem quang giao diệ', '0012AG1012', '12/04/2013', 'NGÂN HÀNG NN PT NT', '1', 1, 0, 0, '', '0'),
(112, '31/10/2013', '451/XC/13', 'Bộ chuyển đổi quang ', '130226018100190', '07/08/2013', 'NGÂN HÀNG TMCP BĐ LI', '1', 1, 0, 0, '', '0'),
(113, '31/10/2013', '451/XC/13', 'Bộ chuyển đổi quang ', '130226018100147', '15/10/2013', 'QUỸ TRỢ VỐN CHO NLĐ ', '1', 1, 0, 0, '', '0'),
(114, '22/04/2014', '42/XC/14', 'Chuyển đổi quang điệ', '1301290713', '11/01/2014', 'ĐÀI PHÁT THANH TRUYỀ', '1', 1, 0, 0, '', '0'),
(115, '02/12/2014', '282/XC/14', 'Bộ chuyển đổi quang ', '130709027100073', '06/12/2014', 'NH TMCP NAM Á DC CN ', '1', 1, 0, 0, '', '0'),
(116, '02/12/2014', '282/XC/14', 'Coverte AC /DC RS - ', ' 25-48 MST ', '02/12/2014', 'NH TMCP NNPT&NT BTE ', '1', 1, 0, 0, '', '0'),
(117, '02/12/2014', '282/XC/14', 'MST30AV', 'T13006206', '02/12/2014', 'NH TMCP NNPT&NT BTE ', '1', 1, 0, 0, 'K.HT', '0'),
(118, '18/12/2014', '291/XC/14', 'Dụng cụ lau mặt tron', 'VTN02021808', '12/12/2014', 'Trạm Viễn thông Bến ', '1', 1, 0, 0, '', '0'),
(119, '22/12/2014', '305/XC/14', 'Bộ chuyển đổi quang ', 'FB5A140518393', '14/11/2014', 'VNPT BẾN TRE - VIỄN ', '1', 1, 0, 0, '', '0'),
(120, '22/12/2014', '305/XC/14', 'Inverter 48VDC/420VA', '', '14/11/2014', 'VNPT BẾN TRE - VIỄN ', '1', 1, 0, 0, '', '0'),
(121, '22/12/2014', '305/XC/14', 'Bộ chuyển đổi quang ', 'FB5A140518394', '14/11/2014', 'CTY CP CHĂN NUÔI CP ', '1', 1, 0, 0, '', '0'),
(122, '26/12/2014', '326/XC/14', 'Module ODF 96FO gồm ', 'VTN02020660', '23/12/2014', 'Trạm Viễn thông Bến ', '1', 1, 0, 0, '', '0'),
(123, '30/03/2015', '54/XC/15', 'Bộ chuyển đổi quang ', 'FB5A150108135', '25/03/2015', 'CỤC CSGT ĐƯỜNG BỘ ĐƯ', '1', 1, 0, 0, '', '0'),
(124, '30/03/2015', '54/XC/15', 'Bộ chuyển đổi quang ', 'FB5A150108134', '25/03/2015', 'CỤC CSGT ĐƯỜNG BỘ ĐƯ', '1', 1, 0, 0, '', '0'),
(125, '30/03/2015', '54/XC/15', 'Bộ chuyển đổi quang ', 'FB5A150108136', '25/03/2015', 'CỤC CSGT ĐƯỜNG BỘ ĐƯ', '1', 1, 0, 0, '', '0'),
(126, '30/03/2015', '54/XC/15', 'Bộ chuyển đổi quang ', 'FB5A150108133', '26/03/2015', 'CỤC CSGT ĐƯỜNG BỘ ĐƯ', '1', 1, 0, 0, '', '0'),
(127, '20/04/2015', '73/XC/15', 'Bộ chuyển đổi quang ', 'FB5A140518461', '15/04/2015', 'CTY TNHH MTV TRUYỀN ', '1', 1, 0, 0, '', '0'),
(128, '20/04/2015', '73/XC/15', 'Bộ chuyển đổi quang ', 'FB5A150108138', '17/04/2015', 'BHXH VIỆT NAM - TỈNH', '1', 1, 0, 0, '', '0'),
(129, '20/04/2015', '73/XC/15', 'Bộ chuyển đổi quang ', 'FB5A150108140', '18/04/2015', 'CTY CP CHĂN NUÔI CP ', '1', 1, 0, 0, '', '0'),
(130, '08/05/2015', '90/XC/15', 'Bộ chuyển đổi quang ', 'FB5A150108147', '25/04/2015', 'CTY CP TẬP ĐOÀN MAI ', '1', 1, 0, 0, '', '0'),
(131, '13/05/2015', '96/XC/15', 'Bộ chuyển đổi quang ', 'FB5A150108137', '06/05/2015', 'CỤC CSGT ĐƯỜNG BỘ ĐƯ', '1', 1, 0, 0, '', '0'),
(132, '20/04/2015', '73/XC/15', 'Bộ chuyển đổi quang ', 'FB5A150108111', '15/04/2015', 'Kênh VTVC - Đầu Trạm', '1', 1, 0, 0, '', '0'),
(133, '02/06/2015', '131/XC/15', 'Bộ chuyển đổi quang ', 'FB5A150108148', '02/06/2015', 'NH TMCP SÀI GÒN SCB ', '1', 1, 0, 0, '', '0'),
(134, '30/06/2015', '216/XC/15', 'Bộ chuyển đổi quang ', 'FB5A150108111', '15/04/2015', 'TRẠM VIỄN THÔNG BẾN ', '1', 1, 0, 0, '', '0'),
(135, '30/06/2015', '216/XC/15', 'Modem quang giao diệ', 'G1108V000010012AG0762', '12/04/2013', 'TRẠM VIỄN THÔNG BẾN ', '1', 1, 0, 0, '', '0'),
(136, '30/06/2015', '216/XC/15', 'Module quang XFP 10G', 'LPT141226019', '31/03/2015', 'TRẠM VIỄN THÔNG BẾN ', '1', 1, 0, 0, '', '0'),
(137, '30/06/2015', '226/XC/15', 'Bộ chuyển đổi quang ', 'FB5A150609046', '30/06/2015', 'NH TMCP ĐẦU TƯ VÀ PH', '1', 1, 0, 0, '', '0'),
(138, '30/06/2015', '226/XC/15', 'Bộ chuyển đổi quang ', 'FB5A150609047', '30/06/2015', 'NH TMCP ĐẦU TƯ VÀ PH', '1', 1, 0, 0, '', '0'),
(139, '30/06/2015', '226/XC/15', 'Bộ chuyển đổi quang ', 'W014C4101083', '30/06/2015', 'NH TMCP ĐẦU TƯ VÀ PH', '1', 1, 0, 0, '', '0'),
(140, ' 29/10/2015', '101/XC/15', 'Bộ chuyển đổi quang ', 'BD5A150714134', '29/09/2015', 'HDBANK HCM-257A Đồng', '1', 1, 0, 0, '', '0'),
(141, ' 27/10/2015', '58/XC/15', 'Bộ chuyển đổi quang ', 'W014C4101080', '22/07/2015', ' NH CT VN- 58 NĐC, T', '1', 1, 0, 0, '', '0'),
(142, '09/11/2015', '142/XC/15', 'Bộ chuyển đổi quang ', 'W014C4101085', '24/08/2015', 'NH ĐÔNG Á -PGD GiỒNG', '1', 1, 0, 0, '', '0'),
(143, '17/12/2015', '228/XC/15', 'Bộ chuyển đổi quang ', 'NK060715-BD5A150714182', '20/10/2015', 'Xuất CCMD cho Đài VT', '1', 1, 0, 0, '', '0'),
(144, '17/12/2015', '229/XC/15', 'Bộ chuyển đổi quang ', 'NK060715-BD5A150714133', '24/09/2015', 'Xuất CCMD cho Đài VT', '1', 1, 0, 0, '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vattu_danhsach`
--

CREATE TABLE `vattu_danhsach` (
  `vattuid` int(11) NOT NULL,
  `LoaiVatTu` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `GhiChu` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `vattu_danhsach`
--

INSERT INTO `vattu_danhsach` (`vattuid`, `LoaiVatTu`, `GhiChu`) VALUES
(1, 'vattu_cc_khodai', 'Vật Tư Công Cụ Kho Đài'),
(2, 'vattu_cc_modem', 'Vật Tư Công Cụ Modem'),
(3, 'vattu_ccld_vtn', 'Vật Tư Công Cụ lao động VTN'),
(4, 'vattu_khodai', 'Vật Tư Kho Đài'),
(5, 'vattu_ts_vtn2', 'Vật Tư Tài Sản VTN2');

-- --------------------------------------------------------

--
-- Table structure for table `vattu_khodai`
--

CREATE TABLE `vattu_khodai` (
  `ID` int(11) NOT NULL,
  `NgayNhap` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Ma_Kho` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `TenHangTonKho` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaSo` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `DonViTinh` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `SoLuong_KT` tinyint(4) DEFAULT NULL,
  `DonGia_KT` decimal(15,2) DEFAULT NULL,
  `Tien_KT` decimal(15,2) DEFAULT NULL,
  `Seri_KT` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `SoLuong_TT` tinyint(4) DEFAULT NULL,
  `DonGia_TT` decimal(15,2) DEFAULT NULL,
  `Tien_TT` decimal(15,2) DEFAULT NULL,
  `SoLuong_CL` tinyint(4) DEFAULT NULL,
  `Tien_CL` decimal(15,2) DEFAULT NULL,
  `GhiChu` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `TramID` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `vattu_khodai`
--

INSERT INTO `vattu_khodai` (`ID`, `NgayNhap`, `Ma_Kho`, `TenHangTonKho`, `MaSo`, `DonViTinh`, `SoLuong_KT`, `DonGia_KT`, `Tien_KT`, `Seri_KT`, `SoLuong_TT`, `DonGia_TT`, `Tien_TT`, `SoLuong_CL`, `Tien_CL`, `GhiChu`, `TramID`) VALUES
(1, '32/06/2015', 'DADH', '43/5F Socket Radiall (SIS c?i nho?)', 'DN0203.1', 'CAI', 5, '92.90', '464.49', ' ', 5, '92.90', '464.49', 0, '0.00', 'VTDP2_Y_LAM', '0'),
(2, '32/06/2015', 'DADH', 'Fan Tray Unit for Alcatel 7510 MG-3FZ50012CAAA01', 'NG09.1', 'C?I', 1, '5.91', '5.91', 'NKT122014TT1-YP103400148', 1, '5.91', '5.91', 0, '0.00', 'VTDP2_Y_LAM', '0'),
(3, '32/06/2015', 'DADH', '8650 SDM Spare parts kit 3HZ80096AA', 'NG17', 'CAI', 1, '36.47', '36.47', ' ', 1, '36.47', '36.47', 0, '0.00', 'VTDP2_Y_LAM', '0'),
(4, '32/06/2015', 'DADH', '8650 SDM Spare parts kit 3HZ80096AA', 'NG17', 'CAI', 1, '5.47', '5.47', 'DG2013-BS1034U01VR', 1, '5.47', '5.47', 0, '0.00', 'VTDP2_Y_LAM', '0'),
(5, '32/06/2015', 'DADH', '870-2900-01 E5-MDAL-CARD-ROHS 5/6', 'STP01', 'CAI', 1, '347.93', '347.93', 'DG2013-10211207079', 1, '347.93', '347.93', 0, '0.00', 'VTDP2_Y_LAM', '0'),
(6, '32/06/2015', 'DADH', '870-2903-01 E5-MASP-CARD-ROHS 5/6', 'STP02', 'CAI', 1, '1.74', '1.74', 'DG2013-10211217080', 1, '1.74', '1.74', 0, '0.00', 'VTDP2_Y_LAM', '0'),
(7, '32/06/2015', 'DADH', '870-2872-01 E5-HIPR2-CARD-ROHS 5/6', 'STP04', 'CAI', 1, '870.77', '870.77', 'DG2013-10210437274', 1, '870.77', '870.77', 0, '0.00', 'VTDP2_Y_LAM', '0'),
(8, '32/06/2015', 'DADH', '870-2943--03 E5-TSM-CARD-03-ROSH 5/6', 'STP05', 'CAI', 1, '1.13', '1.13', 'DG2013-10211127008', 1, '1.13', '1.13', 0, '0.00', 'VTDP2_Y_LAM', '0'),
(9, '32/06/2015', 'DADH', '870-2877-02 E5-IPSM-CARD-02-ROHS 5/6', 'STP06', 'CAI', 1, '870.77', '870.77', 'DG2013-10211127066', 1, '870.77', '870.77', 0, '0.00', 'VTDP2_Y_LAM', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vattu_ts_vtn2`
--

CREATE TABLE `vattu_ts_vtn2` (
  `ID` int(11) NOT NULL,
  `ChiTieu` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaTaiSan` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `SoTheTSCD` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaNguonVon` varchar(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `NamDuaVaoSuDung` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `HienTrangSuDungTSCD` varchar(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `DonViTinhLuong` varchar(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `BoPhanSuDung` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `NguyenGia_KT` decimal(14,2) DEFAULT NULL,
  `GiaTriConLai_KT` decimal(14,2) DEFAULT NULL,
  `NguyenGia_KK` decimal(14,2) DEFAULT NULL,
  `GiaTriConLai_KK` decimal(14,2) DEFAULT NULL,
  `NguyenGia_CL` decimal(14,2) DEFAULT NULL,
  `GiaTriConLai_CL` decimal(14,2) DEFAULT NULL,
  `GhiChu` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `TramID` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `vattu_ts_vtn2`
--

INSERT INTO `vattu_ts_vtn2` (`ID`, `ChiTieu`, `MaTaiSan`, `SoTheTSCD`, `MaNguonVon`, `NamDuaVaoSuDung`, `HienTrangSuDungTSCD`, `DonViTinhLuong`, `BoPhanSuDung`, `NguyenGia_KT`, `GiaTriConLai_KT`, `NguyenGia_KK`, `GiaTriConLai_KK`, `NguyenGia_CL`, `GiaTriConLai_CL`, `GhiChu`, `TramID`) VALUES
(1, 'MAYHAN SUMITOMO TYPE37DE:1916C', '32112', '49900124', '142', '01/01/2006', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '182.80', '0.00', '182.80', '0.00', '0.00', '0.00', 'Hư trả kho Đài', '0'),
(2, 'máy hàn cáp quang Sumitomo - Type 39 - 6427', '32112', '49903098', '142', '01/01/2008', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '156.54', '0.00', '156.54', '0.00', '0.00', '0.00', 'Giao cho Trạm VTU sử dụng', '0'),
(3, 'máy hàn cáp quang Sumitomo - Type 39 - 6431', '32112', '49903102', '142', '01/01/2008', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '156.54', '0.00', '156.54', '0.00', '0.00', '0.00', 'Giao Định Quán sử dụng', '0'),
(4, 'Máy dò cáp quang VLocPro2', '329', '49908485', '131', '08/05/2014', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '88.80', '68.42', '88.80', '68.42', '0.00', '0.00', 'Trạm Định Quán và trạm Xuân Lộc sử dụng', '0'),
(5, 'Tuyến cáp quang tổng đài  C30-TĐ Tân Bình- TĐ VMS - TĐ GPC', '4241', '10003043', '142', '01/01/2006', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '309.49', '46.26', '309.49', '46.26', '0.00', '0.00', '', '0'),
(6, 'Tuyến trung kế Vt1/137Pasteur-Node 2/Lý Thường Kiệt-TPHCM', '4241', '20015010900517', '131', '28/10/2014', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '1.37', '1.27', '1.37', '1.27', '0.00', '0.00', '', '0'),
(7, 'Tuyến cáp quang đường cáo tốc SGN-TLG đoạn từ BC Trung lương đến ngã Thân Cửu Nghĩa', '4241', '20015040100819', '131', '25/03/2015', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '1.92', '1.86', '1.92', '1.86', '0.00', '0.00', 'Trạm Mỹ Tho quản lý', '0'),
(8, 'Tuyến cáp quang đường cao tốc HCM- Trung Lương', '4241', '20015040800969', '131', '12/03/2015', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '10.56', '10.24', '10.56', '10.24', '0.00', '0.00', 'VTN2 chưa giao cho Đài VT HCM quản lý', '0'),
(9, 'Tuyến cáp quang đường cao tốc Long Thành Dầu Giây từ đường Nguyễn Duy Trinh Q2 về 137 Pasteur và Nod', '4241', '20015042701017', '131', '10/04/2015', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '575.77', '562.67', '575.77', '562.67', '0.00', '0.00', '', '0'),
(10, 'CAP-QUANG/TUYEN 137PT-125HBT', '4241', '31002008', '1211', '01/01/1992', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '303.83', '0.00', '303.83', '0.00', '0.00', '0.00', '', '0'),
(11, 'CAP-QUANG/TUYEN B.HOA-HCMINH', '4241', '31002009', '1211', '01/01/1992', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '3.33', '0.00', '3.33', '0.00', '0.00', '0.00', '', '0'),
(12, 'CQ 622M /TUYEN CAP HCM-VTAU', '4241', '31002018', '1211', '01/01/1997', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '19.18', '0.00', '19.18', '0.00', '0.00', '0.00', '', '0'),
(13, 'CQ HCM-TN/TUYENCAP HCM-GD-MB', '4241', '31002019', '1211', '01/01/1999', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '4.61', '0.00', '4.61', '0.00', '0.00', '0.00', '', '0'),
(14, 'CQ HCM-TN/TUYENCAP HCM-GD-MB', '4241', '31002020', '141', '01/01/1999', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '2.84', '0.00', '2.84', '0.00', '0.00', '0.00', '', '0'),
(15, 'TUYEN CAP QUANG  36 FO137 PASTEUR-ANLAC ( TREO : 17.136 m, CONG:690 m)', '4241', '31002027', '142', '01/01/2007', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '597.38', '116.54', '597.38', '116.54', '0.00', '0.00', '', '0'),
(16, 'TUYEN CAP QUANG SAI GON - PHU LAM', '4241', '31301001', '111', '01/01/1997', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '486.90', '0.00', '486.90', '0.00', '0.00', '0.00', '', '0'),
(17, 'CAP SOI QUANG 500KV PHLAM-TT2', '4241', '31400001', '111', '01/01/1997', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '403.02', '0.00', '403.02', '0.00', '0.00', '0.00', '', '0'),
(18, 'CAP SOI QUANG 500KV PHLAM-TT2', '4241', '31400001', '141', '01/01/1997', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '182.85', '0.00', '182.85', '0.00', '0.00', '0.00', '', '0'),
(19, 'TUYEN CAP QUANG NT HCM-137PAS - C30 :', '4241', '31500001', '142', '01/01/2005', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '566.62', '0.00', '566.62', '0.00', '0.00', '0.00', '', '0'),
(20, 'TUYEN CAP QUANG NT HCM-137 - 125-142DBP :', '4241', '31500002', '142', '01/01/2005', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '351.48', '0.00', '351.48', '0.00', '0.00', '0.00', '', '0'),
(21, 'Tuyến cáp quang TPHCM-Xuân Lộc-Vũng Tàu (2 nguồn)', '4241', '49904762', '131', '01/01/2009', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '793.00', '269.38', '793.00', '269.38', '0.00', '0.00', '', '0'),
(22, 'Tuyến cáp quang TPHCM-Xuân Lộc-Vũng Tàu (2 nguồn)', '4241', '49904762', '141', '01/01/2009', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '5.35', '1.82', '5.35', '1.82', '0.00', '0.00', '', '0'),
(23, 'Tuyến cáp quang TPHCM-Mỹ Tho (2 nguồn)', '4241', '49904763', '131', '01/01/2009', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '1.70', '713.67', '1.70', '713.67', '0.00', '0.00', '', '0'),
(24, 'Tuyến cáp quang TPHCM-Mỹ Tho (2 nguồn)', '4241', '49904763', '141', '01/01/2009', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '502.16', '211.20', '502.16', '211.20', '0.00', '0.00', '', '0'),
(25, 'Tuyến cáp quang 24FO từ 202 Nam Kỳ Khởi Nghĩa đến HTVC', '4241', '49904920', '142', '01/01/2010', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '53.91', '21.04', '53.91', '21.04', '0.00', '0.00', '', '0'),
(26, 'Tuyến cáp quang Backup 60FO HCM-BDG', '4241', '49906719', '142', '01/01/2010', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '1.67', '666.85', '1.67', '666.85', '0.00', '0.00', '', '0'),
(27, 'Tuyến CQ kết nối FPT HCM-LAN-TGG-VLG', '4241', '49907072.1', '142', '01/01/2011', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '147.48', '68.17', '147.48', '68.17', '0.00', '0.00', '', '0'),
(28, 'Tuyến cáp quang TPHCM-Long An- Mỹ Tho (2 nguồn vốn)', '4241', '49907075.2', '131', '01/01/2011', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '2.68', '1.48', '2.68', '1.48', '0.00', '0.00', '', '0'),
(29, 'Tuyến cáp quang TPHCM-Long An- Mỹ Tho (2 nguồn vốn)', '4241', '49907076.2', '1221', '01/01/2011', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '1.56', '865.88', '1.56', '865.88', '0.00', '0.00', '', '0'),
(30, 'Tuyến CQ Metro Ring 640G nội thị TpHCM (2 nguồn)', '4241', '49907672', '131', '01/01/2011', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '195.25', '97.43', '195.25', '97.43', '0.00', '0.00', '', '0'),
(31, 'Tuyến CQ Metro Ring 640G nội thị TpHCM (2 nguồn)', '4241', '49907672', '142', '01/01/2011', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '1.81', '902.38', '1.81', '902.38', '0.00', '0.00', '', '0'),
(32, 'Tuyến CQ 96FO VTN (137 Pasteur) -Viettel (Hoàng Hoa Thám) -7.488m', '4241', '49907941', '131', '01/01/2012', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '576.99', '373.64', '576.99', '373.64', '0.00', '0.00', '', '0'),
(33, 'Tuyến cáp quang HCM- Đồng Nai', '4241', '49908265', '131', '01/07/2012', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '1.07', '735.01', '1.07', '735.01', '0.00', '0.00', '', '0'),
(34, 'Tuyến cáp quang HCM- Đồng Nai', '4241', '49908266', '141', '01/07/2012', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '5.71', '3.93', '5.71', '3.93', '0.00', '0.00', '', '0'),
(35, 'Tuyến cáp quang rẽ nhánh trên tuyến cáp quang HCM-Đồng nai', '4241', '49908279', '131', '01/06/2013', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '1.03', '701.95', '1.03', '701.95', '0.00', '0.00', '', '0'),
(36, 'Tuyến CQ VT1 - Ngã Tư Hàng Xanh', '4241', '49908382', '131', '27/11/2013', 'Đang SD', '', 'Tổ CQ Đài VTHCM', '1.04', '871.69', '1.04', '871.69', '0.00', '0.00', '', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authorizations`
--
ALTER TABLE `authorizations`
  ADD PRIMARY KEY (`AuthorizationID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `department_vattu`
--
ALTER TABLE `department_vattu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`GroupID`),
  ADD UNIQUE KEY `groups_groupname_unique` (`GroupName`);

--
-- Indexes for table `group_authorizations`
--
ALTER TABLE `group_authorizations`
  ADD PRIMARY KEY (`GroupAuthorizationID`);

--
-- Indexes for table `group_users`
--
ALTER TABLE `group_users`
  ADD PRIMARY KEY (`GroupUserID`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`MenuID`);

--
-- Indexes for table `menu_groups`
--
ALTER TABLE `menu_groups`
  ADD PRIMARY KEY (`MenuGroupID`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`ModuleID`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `users_username_unique` (`Username`);

--
-- Indexes for table `vattu_ccld_vtn`
--
ALTER TABLE `vattu_ccld_vtn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vattu_cc_khodai`
--
ALTER TABLE `vattu_cc_khodai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vattu_cc_modem_vtn`
--
ALTER TABLE `vattu_cc_modem_vtn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vattu_danhsach`
--
ALTER TABLE `vattu_danhsach`
  ADD PRIMARY KEY (`vattuid`);

--
-- Indexes for table `vattu_khodai`
--
ALTER TABLE `vattu_khodai`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vattu_ts_vtn2`
--
ALTER TABLE `vattu_ts_vtn2`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authorizations`
--
ALTER TABLE `authorizations`
  MODIFY `AuthorizationID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DepartmentID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `department_vattu`
--
ALTER TABLE `department_vattu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `GroupID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `group_authorizations`
--
ALTER TABLE `group_authorizations`
  MODIFY `GroupAuthorizationID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `group_users`
--
ALTER TABLE `group_users`
  MODIFY `GroupUserID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `MenuID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `menu_groups`
--
ALTER TABLE `menu_groups`
  MODIFY `MenuGroupID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `ModuleID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `vattu_ccld_vtn`
--
ALTER TABLE `vattu_ccld_vtn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `vattu_cc_khodai`
--
ALTER TABLE `vattu_cc_khodai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;
--
-- AUTO_INCREMENT for table `vattu_cc_modem_vtn`
--
ALTER TABLE `vattu_cc_modem_vtn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `vattu_danhsach`
--
ALTER TABLE `vattu_danhsach`
  MODIFY `vattuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vattu_ts_vtn2`
--
ALTER TABLE `vattu_ts_vtn2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
