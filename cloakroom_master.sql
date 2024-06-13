-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 13, 2024 at 05:56 PM
-- Server version: 5.7.32
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloakroom_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `canteens`
--

CREATE TABLE `canteens` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` text,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `added_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `canteens`
--

INSERT INTO `canteens` (`id`, `client_id`, `name`, `city`, `address`, `status`, `added_by`, `updated_at`, `created_at`) VALUES
(1, 0, 'TTT', 'Hari', 'PF 1', 0, 0, '2024-02-16 16:46:09', NULL),
(2, 0, 'Dp', 'Hari', 'PF 1', 0, 0, '2024-02-16 16:44:50', '2024-02-16 16:44:50'),
(3, 0, 'Dp', 'Hari', 'PF 1', 0, 0, '2024-02-16 16:45:34', '2024-02-16 16:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `canteen_items`
--

CREATE TABLE `canteen_items` (
  `id` int(11) NOT NULL,
  `canteen_id` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `item_name` varchar(255) DEFAULT NULL,
  `item_short_name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `added_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `canteen_items`
--

INSERT INTO `canteen_items` (`id`, `canteen_id`, `client_id`, `item_name`, `item_short_name`, `price`, `stock`, `status`, `added_by`, `updated_at`, `created_at`) VALUES
(1, 1, 1, 'Parle G11234', 'Par', 12, 77, 0, 13, '2024-06-12 15:05:32', '2024-03-09 04:46:00'),
(2, 1, 1, 'Parle G2', 'Par', 20, 4, 0, 0, '2024-03-09 06:10:13', '2024-03-09 04:47:56'),
(3, 2, 0, 'Parle G2', 'Par', 20, 9, 0, 0, '2024-03-09 06:10:13', '2024-03-09 04:47:56'),
(4, 2, 0, 'Coffee', 'Coffee', 10, 0, 0, 0, '2024-03-13 12:38:40', NULL),
(5, 2, 0, 'Tea', 'Tea', 10, 0, 0, 0, '2024-03-13 12:40:51', NULL),
(6, 2, 0, 'Tea', 'Tea', 10, 0, 0, 0, '2024-03-13 12:40:51', NULL),
(7, 2, 0, 'Maggie Masala Cup', 'Maggie Masala', 50, 0, 0, 0, '2024-03-13 12:40:51', NULL),
(8, 2, 0, 'Tea', 'Tea', 10, 0, 0, 0, '2024-03-13 12:48:08', NULL),
(9, 2, 0, 'Tea', 'Tea', 10, 0, 0, 0, '2024-03-13 12:48:08', NULL),
(10, 2, 0, 'Maggie Masala Cup', 'Maggie Masala', 50, 0, 0, 0, '2024-03-13 12:48:08', NULL),
(11, 2, 0, 'Bikaji Chips', 'Bikaji Chips', 20, 0, 0, 0, '2024-03-13 12:48:08', NULL),
(12, 2, 0, 'Anmol Snack Biscuits', 'Anmol Snack Biscuits', 10, 0, 0, 0, '2024-03-13 12:48:08', NULL),
(13, 2, 0, 'Butter Cookies-10', 'Butter Cookies-10', 10, 0, 0, 0, '2024-03-13 12:48:08', NULL),
(14, 2, 0, 'Parle G-20', 'Parle G-20', 20, 0, 0, 0, '2024-03-13 12:48:08', NULL),
(15, 2, 0, 'Parle G-10', 'Parle G-10', 10, 0, 0, 0, '2024-03-13 12:48:08', NULL),
(16, 2, 0, 'Parle Coconut', 'Parle Coconut', 10, 0, 0, 0, '2024-03-13 12:48:08', NULL),
(17, 2, 0, 'Black Bourbon-30', 'Black Bourbon-30', 30, 0, 0, 0, '2024-03-13 12:48:08', NULL),
(18, 2, 0, 'Cremica Cocounut Cookies', 'Cremica Cocounut Cookies', 20, 0, 0, 0, '2024-03-13 12:48:08', NULL),
(19, 2, 0, 'Parle Fab Bourbon-40', 'Parle Fab Bourbon-40', 40, 0, 0, 0, '2024-03-13 12:48:08', NULL),
(20, 2, 0, 'Parle HIde & Seek Choco', 'Parle HIde & Seek Choco', 10, 0, 0, 0, '2024-03-13 12:48:08', NULL),
(21, 0, 1, 'Namekk1n', 'HN', 20, -6, 0, 13, '2024-06-12 14:17:45', '2024-06-12 14:17:45'),
(22, 0, 1, 'Bikaji', 'Bikaji', 30, 23, 0, 13, '2024-06-12 15:08:35', '2024-06-12 14:51:32'),
(23, 0, 1, 'Neer 15', 'Neer', 15, 120, 0, 13, '2024-06-12 15:16:03', '2024-06-12 15:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `canteen_item_stocks`
--

CREATE TABLE `canteen_item_stocks` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `canteen_id` int(11) NOT NULL DEFAULT '0',
  `canteen_item_id` int(11) NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `added_by` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `canteen_item_stocks`
--

INSERT INTO `canteen_item_stocks` (`id`, `client_id`, `canteen_id`, `canteen_item_id`, `stock`, `status`, `added_by`, `date`, `updated_at`, `created_at`) VALUES
(1, 1, 1, 1, 25, 0, 13, '2024-03-09', '2024-03-09 05:54:40', NULL),
(2, 1, 1, 1, 9, 0, 0, '2024-03-09', '2024-03-09 05:54:44', NULL),
(3, 1, 1, 2, 9, 0, 0, '2024-03-09', '2024-03-09 06:09:47', '2024-03-09 06:09:47'),
(4, 1, 0, 0, 50, 0, 13, '2024-06-12', '2024-06-12 14:57:54', '2024-06-12 14:57:54'),
(5, 1, 0, 1, 45, 0, 13, '2024-06-12', '2024-06-12 15:00:05', '2024-06-12 15:00:05'),
(6, 1, 0, 22, 23, 0, 13, '2024-06-12', '2024-06-12 15:07:58', '2024-06-12 15:07:58'),
(7, 1, 0, 23, 120, 0, 13, '2024-06-12', '2024-06-12 15:15:39', '2024-06-12 15:15:39');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `mobile`, `status`, `updated_at`, `created_at`) VALUES
(1, 'test team', 'test@test', '7351334716', 0, '2024-06-11 18:10:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_services`
--

CREATE TABLE `client_services` (
  `id` int(11) NOT NULL,
  `services_id` int(11) NOT NULL DEFAULT '0' COMMENT '1=sitting,2=cloakroom, 3=canteen',
  `client_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=no,1=yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client_services`
--

INSERT INTO `client_services` (`id`, `services_id`, `client_id`, `status`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cloakroom_entries`
--

CREATE TABLE `cloakroom_entries` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `unique_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pnr_uid` varchar(20) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `train_no` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `no_of_bag` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `checkin_date` timestamp NULL DEFAULT NULL,
  `checkout_date` timestamp NULL DEFAULT NULL,
  `check_in` time DEFAULT NULL,
  `no_of_day` varchar(255) DEFAULT NULL,
  `total_day` int(11) NOT NULL DEFAULT '0',
  `is_late` int(11) NOT NULL DEFAULT '0',
  `shift` varchar(10) DEFAULT NULL,
  `paid_amount` varchar(20) DEFAULT NULL,
  `penality` int(11) DEFAULT NULL,
  `pay_type` tinyint(1) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `deleted` int(11) NOT NULL DEFAULT '0',
  `delete_by` int(11) NOT NULL DEFAULT '0',
  `delete_time` timestamp NULL DEFAULT NULL,
  `checkout_status` tinyint(1) NOT NULL DEFAULT '0',
  `added_by` int(11) NOT NULL DEFAULT '0',
  `checkout_time` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cloakroom_entries`
--

INSERT INTO `cloakroom_entries` (`id`, `client_id`, `unique_id`, `name`, `pnr_uid`, `mobile_no`, `train_no`, `address`, `no_of_bag`, `date`, `checkin_date`, `checkout_date`, `check_in`, `no_of_day`, `total_day`, `is_late`, `shift`, `paid_amount`, `penality`, `pay_type`, `remarks`, `status`, `deleted`, `delete_by`, `delete_time`, `checkout_status`, `added_by`, `checkout_time`, `updated_at`, `created_at`) VALUES
(1, 0, 1708693453, 'Dipanshu', '12121212', '7351334717', NULL, NULL, 3, '2024-02-23', '2024-02-23 13:04:13', '2024-02-25 13:04:00', '18:34:00', '2', 0, 0, 'B', '100', NULL, 2, 'asasa', 1, 0, 0, NULL, 1, 1, '2024-02-23 13:40:56', '2024-02-23 13:40:56', '2024-02-23 13:04:13'),
(2, 0, 1708695576, 'Rastra', NULL, '898989', NULL, NULL, 2, '2024-02-22', '2024-02-22 13:39:36', '2024-02-23 13:51:32', '19:09:36', '1', 0, 0, 'B', '100', 150, 1, 'sas', 1, 0, 0, NULL, 1, 1, '2024-02-23 15:18:06', '2024-02-23 15:18:06', '2024-02-23 13:39:36'),
(3, 0, 1708696387, 'LAST', '1212', '909090', NULL, NULL, 3, '2024-02-23', '2024-02-23 13:53:07', '2024-02-25 13:53:00', '19:23:00', '2', 0, 0, 'B', '100', NULL, 1, 'asas', 1, 0, 0, NULL, 1, 1, '2024-02-23 15:17:27', '2024-02-23 15:17:27', '2024-02-23 13:53:07'),
(4, 0, 1708771617, 'ST', '67676767', '898989889', NULL, NULL, 2, '2024-02-24', '2024-02-24 10:46:57', '2024-02-26 10:46:00', '16:16:00', '2', 0, 0, 'B', '100', NULL, 2, 'hello', 0, 0, 0, NULL, 0, 16, NULL, '2024-02-24 12:19:21', '2024-02-24 10:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `cloakroom_penalities`
--

CREATE TABLE `cloakroom_penalities` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `cloakroom_id` int(11) DEFAULT NULL,
  `paid_amount` varchar(10) DEFAULT NULL,
  `pay_type` tinyint(2) DEFAULT NULL,
  `shift` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `current_time` time DEFAULT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cloakroom_penalities`
--

INSERT INTO `cloakroom_penalities` (`id`, `client_id`, `cloakroom_id`, `paid_amount`, `pay_type`, `shift`, `date`, `current_time`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 0, 1, '275', 2, 'B', '2024-02-23', '18:56:53', 1, '2024-02-23 13:26:53', '2024-02-23 13:26:53'),
(2, 0, 2, '150', 1, 'B', '2024-02-23', '19:22:31', 1, '2024-02-23 13:52:31', '2024-02-23 13:52:31'),
(3, 0, 3, '275', 1, 'B', '2024-02-23', '19:26:48', 13, '2024-02-23 13:56:48', '2024-02-23 13:56:48'),
(4, 0, 2, '150', 1, 'B', '2024-02-23', '20:48:06', 14, '2024-02-23 15:18:06', '2024-02-23 15:18:06'),
(5, 0, 4, '140', 2, 'B', '2024-02-24', '17:49:21', 1, '2024-02-24 12:19:21', '2024-02-24 12:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `cloakroom_rate_list`
--

CREATE TABLE `cloakroom_rate_list` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `first_rate` int(11) DEFAULT NULL,
  `second_rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `daily_entries`
--

CREATE TABLE `daily_entries` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `canteen_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `pay_type` int(11) NOT NULL DEFAULT '0',
  `unique_id` varchar(255) DEFAULT NULL,
  `total_amount` int(11) NOT NULL DEFAULT '0',
  `added_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `daily_entries`
--

INSERT INTO `daily_entries` (`id`, `client_id`, `canteen_id`, `name`, `mobile`, `date`, `pay_type`, `unique_id`, `total_amount`, `added_by`, `updated_at`, `created_at`) VALUES
(1, 0, 2, 'abkffj', '8134878709', '2024-03-14', 2, '1710412102', 0, 37, '2024-03-14 10:28:22', '2024-03-14 22:58:22'),
(2, 0, 2, 'radhika', '1236548', '2024-03-14', 2, '1710412902', 75, 37, '2024-03-14 10:41:42', '2024-03-14 23:11:42'),
(3, 0, 2, 'Aaradhya', '5236478563', '2024-03-14', 2, '1710413173', 15, 37, '2024-03-14 10:46:13', '2024-03-14 23:16:13'),
(4, 0, 2, 'Manav', '1236547890', '2024-03-14', 1, '1710413245', 15, 37, '2024-03-14 10:47:25', '2024-03-14 23:17:25'),
(5, 0, 2, 'Diqpsnu', '7351334717', '2024-03-14', 1, '1710413450', 10, 37, '2024-03-14 10:50:50', '2024-03-14 23:20:50'),
(6, 0, 2, 'shab', NULL, '2024-03-14', 1, '1710414073', 0, 37, '2024-03-14 11:01:13', '2024-03-14 23:31:13'),
(7, 0, 2, 'radhika', '123456789', '2024-03-14', 2, '1710414133', 15, 37, '2024-03-14 11:02:13', '2024-03-14 23:32:13'),
(8, 0, 2, 'Dip', NULL, '2024-03-14', 1, '1710420068', 60, 37, '2024-03-14 12:41:08', '2024-03-15 01:11:08'),
(9, 0, 2, 'Guddu', NULL, '2024-03-14', 2, '1710424078', 30, 38, '2024-03-14 13:47:58', '2024-03-15 02:17:58'),
(10, 0, 2, 'nikhil', NULL, '2024-03-14', 1, '1710424507', 10, 38, '2024-03-14 13:55:07', '2024-03-15 02:25:07'),
(11, 0, 2, 'Ashutosh Kumar Dube', NULL, '2024-03-14', 2, '1710425157', 205, 37, '2024-03-14 14:05:57', '2024-03-15 02:35:57'),
(12, 0, 2, 'Ashutosh Kumar Dube', NULL, '2024-03-14', 2, '1710425277', 85, 37, '2024-03-14 14:07:57', '2024-03-15 02:37:57'),
(13, 0, 2, 'futh', NULL, '2024-03-17', 2, '1710657113', 20, 36, '2024-03-17 06:31:53', '2024-03-17 19:01:53'),
(14, 0, 2, 'r8gg', NULL, '2024-03-17', 2, '1710657253', 15, 36, '2024-03-17 06:34:13', '2024-03-17 19:04:13'),
(15, 0, 2, 'duhvv', NULL, '2024-03-17', 2, '1710669429', 20, 37, '2024-03-17 09:57:09', '2024-03-17 22:27:09'),
(16, 0, 2, 'Udit ji kya Samanta hai', NULL, '2024-03-17', 2, '1710669694', 25, 37, '2024-03-17 10:01:34', '2024-03-17 22:31:34'),
(17, 0, 2, 'Manish Negi', NULL, '2024-03-17', 2, '1710669745', 50, 37, '2024-03-17 10:02:25', '2024-03-17 22:32:25'),
(18, 0, 2, 'Rohit Kumar', NULL, '2024-03-17', 1, '1710671044', 60, 37, '2024-03-17 10:24:04', '2024-03-17 22:54:04'),
(19, 0, 2, 'amit', '1234567', '2024-03-17', 1, '1710672153', 90, 37, '2024-03-17 10:42:33', '2024-03-17 23:12:33'),
(20, 0, 2, 'duvv', NULL, '2024-03-17', 2, '1710693450', 10, 37, '2024-03-17 16:37:30', '2024-03-18 05:07:30'),
(21, 0, 2, 'mohan', NULL, '2024-03-17', 2, '1710694293', 20, 37, '2024-03-17 16:51:33', '2024-03-18 05:21:33'),
(22, 0, 2, 'amkgxh', '7037246377', '2024-03-17', 2, '1710694328', 30, 37, '2024-03-17 16:52:08', '2024-03-18 05:22:08'),
(23, 0, 2, 'Human', '9257852142', '2024-03-17', 2, '1710696357', 40, 37, '2024-03-17 17:25:57', '2024-03-18 05:55:57'),
(24, 0, 2, 'human', NULL, '2024-03-17', 2, '1710696527', 40, 37, '2024-03-17 17:28:47', '2024-03-18 05:58:47'),
(25, 0, 2, 'pradyumna', NULL, '2024-03-18', 2, '1710757063', 60, 37, '2024-03-18 10:17:43', '2024-03-18 22:47:43'),
(26, 0, 2, 'akhand pratap singh', NULL, '2024-03-20', 2, '1710954900', 25, 37, '2024-03-20 17:15:00', '2024-03-21 05:45:00'),
(27, 0, 2, 'Nirmal sharma', NULL, '2024-03-21', 2, '1711044312', 90, 37, '2024-03-21 18:05:12', '2024-03-22 06:35:12'),
(28, 0, 2, 'fyih', NULL, '2024-03-25', 2, '1711365757', 10, 37, '2024-03-25 11:22:37', '2024-03-25 23:52:37'),
(29, 0, 2, 'rasmi ji', NULL, '2024-03-30', 2, '1711806361', 10, 37, '2024-03-30 13:46:01', '2024-03-31 02:16:01'),
(30, 0, 2, 'ream8 ji', NULL, '2024-03-30', 2, '1711806421', 50, 37, '2024-03-30 13:47:01', '2024-03-31 02:17:01'),
(31, 0, 2, 'Devendra', NULL, '2024-03-31', 2, '1711874685', 50, 37, '2024-03-31 08:44:45', '2024-03-31 21:14:45'),
(32, 0, 2, 'Rohit Sharma', NULL, '2024-03-31', 2, '1711874855', 20, 37, '2024-03-31 08:47:35', '2024-03-31 21:17:35'),
(33, 0, 2, 'Priyanka Ji', NULL, '2024-03-31', 2, '1711875254', 60, 37, '2024-03-31 08:54:14', '2024-03-31 21:24:14'),
(34, 0, 2, 'dufv', NULL, '2024-04-03', 2, '1712124803', 10, 36, '2024-04-03 06:13:23', '2024-04-03 18:43:23'),
(35, 0, 2, 'mohan ji', NULL, '2024-04-04', 2, '1712222273', 20, 37, '2024-04-04 09:17:53', '2024-04-04 21:47:53'),
(36, 0, 2, 'dhyg', NULL, '2024-04-08', 2, '1712569902', 20, 37, '2024-04-08 09:51:42', '2024-04-08 22:21:42'),
(37, 0, 2, '.......', NULL, '2024-04-08', 2, '1712569977', 40, 37, '2024-04-08 09:52:57', '2024-04-08 22:22:57'),
(38, 0, 2, '...', NULL, '2024-04-08', 2, '1712570038', 10, 37, '2024-04-08 09:53:58', '2024-04-08 22:23:58'),
(39, 0, 2, '....', NULL, '2024-04-08', 2, '1712570071', 10, 37, '2024-04-08 09:54:31', '2024-04-08 22:24:31'),
(40, 0, 2, '....', NULL, '2024-04-08', 2, '1712570333', 50, 37, '2024-04-08 09:58:53', '2024-04-08 22:28:53'),
(41, 0, 2, 'istuti', NULL, '2024-04-16', 1, '1713251913', 35, 37, '2024-04-16 07:18:33', '2024-04-16 19:48:33'),
(42, 0, 2, 'Mayank ji', NULL, '2024-04-19', 1, '1713537143', 65, 37, '2024-04-19 14:32:23', '2024-04-20 03:02:23'),
(43, 0, 2, 'jony', NULL, '2024-04-19', 2, '1713537301', 10, 37, '2024-04-19 14:35:01', '2024-04-20 03:05:01'),
(44, 0, 2, 'Tarun sharma', '9719178777', '2024-04-26', 1, '1714155870', 50, 37, '2024-04-26 18:24:30', '2024-04-27 06:54:30'),
(45, 0, 2, 'nirmal', NULL, '2024-05-04', 2, '1714777937', 15, 37, '2024-05-03 23:12:17', '2024-05-04 11:42:17'),
(46, 0, 2, 'sureswari', NULL, '2024-05-21', 2, '1716285962', 98, 37, '2024-05-21 10:06:02', '2024-05-21 22:36:02'),
(47, 0, 2, 'Dipanshu', '7351334717', '2024-05-29', 1, '1716987851', 10, 29, '2024-05-29 13:04:11', '2024-05-30 01:34:11'),
(48, 0, 2, 'Dipanshu', '7351334717', '2024-05-29', 2, '1716987960', 110, 29, '2024-05-29 13:06:00', '2024-05-30 01:36:00'),
(49, 0, 2, 'aashish', '796946997', '2024-05-29', 1, '1716988108', 160, 29, '2024-05-29 13:08:28', '2024-05-30 01:38:28'),
(50, 0, 2, 'Dipanshu Chauhan', '735334717', '2024-06-01', 2, '1717226178', 80, 29, '2024-06-01 07:16:18', '2024-06-01 19:46:18'),
(51, 0, 2, 'Dipanshu', '7351334717', '2024-06-06', 1, '1717680668', 30, 29, '2024-06-06 13:31:08', '2024-06-07 02:01:08'),
(52, 0, 2, 'Devendra', '735133', '2024-06-12', 1, '1718181687', 40, 29, '2024-06-12 08:41:27', '2024-06-12 21:11:27'),
(53, 1, 0, 'DIpanshu', '7351334717', '2024-06-13', 1, '1718300571', 0, 1, '2024-06-13 17:42:51', '2024-06-13 17:42:51'),
(54, 1, 0, 'Dipanshu', '787878', '2024-06-13', 1, '1718300955', 108, 1, '2024-06-13 17:49:15', '2024-06-13 17:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `daily_entry_items`
--

CREATE TABLE `daily_entry_items` (
  `id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL DEFAULT '0',
  `canteen_item_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `paid_amount` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `daily_entry_items`
--

INSERT INTO `daily_entry_items` (`id`, `entry_id`, `canteen_item_id`, `quantity`, `paid_amount`, `created_at`) VALUES
(1, 53, 2, 5, '100', NULL),
(2, 53, 21, 3, '60', NULL),
(3, 54, 1, 2, '24', NULL),
(4, 54, 21, 3, '60', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitting_entries`
--

CREATE TABLE `sitting_entries` (
  `id` int(11) NOT NULL,
  `unique_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pnr_uid` varchar(20) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `train_no` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `no_of_adults` int(11) DEFAULT '0',
  `no_of_children` int(11) NOT NULL DEFAULT '0',
  `no_of_baby_staff` int(11) NOT NULL DEFAULT '0',
  `seat_no` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `check_in` time DEFAULT NULL,
  `check_out` time DEFAULT NULL,
  `hours_occ` int(11) NOT NULL DEFAULT '0',
  `paid_amount` varchar(20) DEFAULT NULL,
  `pay_type` tinyint(1) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `shift` varchar(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `checkout_status` tinyint(1) NOT NULL DEFAULT '0',
  `added_by` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `delete_by` int(11) NOT NULL DEFAULT '0',
  `delete_time` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitting_entries`
--

INSERT INTO `sitting_entries` (`id`, `unique_id`, `name`, `pnr_uid`, `mobile_no`, `train_no`, `address`, `no_of_adults`, `no_of_children`, `no_of_baby_staff`, `seat_no`, `date`, `check_in`, `check_out`, `hours_occ`, `paid_amount`, `pay_type`, `remarks`, `shift`, `status`, `checkout_status`, `added_by`, `client_id`, `deleted`, `delete_by`, `delete_time`, `updated_at`, `created_at`) VALUES
(2, 1700701026, 'anita gupta', '2852722191', '8595970334', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '06:27:06', '07:27:06', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 00:57:06', '2023-11-23 00:57:06'),
(3, 1700701795, 'badrinarayan', '2204314300', '9840789956', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '06:39:55', '07:39:55', 1, '60', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 01:09:56', '2023-11-23 01:09:55'),
(4, 1700702518, 'NAVEEN', '2852669506', '7060674065', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '06:51:58', '07:51:58', 1, '30', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 01:21:58', '2023-11-23 01:21:58'),
(5, 1700702757, 'N C DEB', '2265153563', '8617491981', NULL, NULL, 8, 0, 0, NULL, '2023-11-23', '06:55:57', '07:55:57', 1, '240', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 01:25:57', '2023-11-23 01:25:57'),
(6, 1700703725, 'VIJAY JOSHI', '2303898133', '7738032562', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '07:12:05', '08:12:05', 1, '60', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 01:42:05', '2023-11-23 01:42:05'),
(7, 1700703957, 'SIDDHARTH', '2104919229', '7069780399', NULL, NULL, 3, 1, 0, NULL, '2023-11-23', '07:15:57', '08:15:57', 1, '110', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 01:45:57', '2023-11-23 01:45:57'),
(8, 1700704066, 'RAJESH SINGH', '2628784848', '9990701221', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '07:17:46', '08:17:46', 1, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 01:47:46', '2023-11-23 01:47:46'),
(9, 1700704109, 'KANCHAN', '2305313306', '6283148090', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '07:18:29', '08:18:29', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 01:48:29', '2023-11-23 01:48:29'),
(10, 1700704162, 'VIMAL', '2851634046', '9760799477', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '07:19:22', '08:19:22', 1, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 01:49:22', '2023-11-23 01:49:22'),
(11, 1700717708, 'PREM', '2531893408', '8887619385', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '11:05:08', '17:05:08', 6, '180', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 05:35:08', '2023-11-23 05:35:08'),
(12, 1700718841, 'SAMEER', '2165256299', '9839036334', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '11:24:01', '12:24:01', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 05:54:01', '2023-11-23 05:54:01'),
(13, 1700721127, 'KAMAL', '2105530523', '7084433821', NULL, NULL, 2, 0, 2, NULL, '2023-11-23', '12:02:07', '13:02:07', 1, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 06:32:07', '2023-11-23 06:32:07'),
(14, 1700721975, 'A K DAS', '6127042023', '7209349330', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '12:16:15', '13:16:15', 1, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 06:46:15', '2023-11-23 06:46:15'),
(15, 1700722556, 'VEER', '2901652042', '9797581687', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '12:25:56', '17:25:56', 5, '300', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 06:55:56', '2023-11-23 06:55:56'),
(16, 1700722948, 'K G AGARWAL', '2848968843', '9415145589', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '12:32:28', '14:32:28', 2, '120', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 07:02:28', '2023-11-23 07:02:28'),
(17, 1700723770, 'HOSHIYAR SINGH', '2633542618', '8765659263', NULL, NULL, 2, 1, 0, NULL, '2023-11-23', '12:46:10', '14:46:10', 2, '160', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 07:16:10', '2023-11-23 07:16:10'),
(18, 1700725182, 'KASHI PRASAD', '2848968843', '9415145533', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '13:09:42', '15:09:42', 2, '120', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-23 07:39:42', '2023-11-23 07:39:42'),
(19, 1700728062, 'ghanshayma agarwal', '2205571717', '9375567744', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '13:57:42', '16:57:42', 3, '90', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 08:27:43', '2023-11-23 08:27:42'),
(20, 1700729676, 'meena tarun kumar joshi', '2746114686', '9725001650', NULL, NULL, 3, 0, 0, NULL, '2023-11-23', '14:24:36', '16:24:36', 2, '180', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 08:54:36', '2023-11-23 08:54:36'),
(21, 1700730374, 'abhyubaya', '2633845511', '9893002003', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '14:36:14', '16:36:14', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 09:06:14', '2023-11-23 09:06:14'),
(22, 1700730522, 'abhay gilowar', '290373586660', '9760599519', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '14:38:42', '15:38:42', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 09:08:42', '2023-11-23 09:08:42'),
(23, 1700732032, 'chanda ben', '2746223875', '9408332990', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '15:03:52', '16:03:52', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 09:33:53', '2023-11-23 09:33:53'),
(24, 1700732954, 'adesh aggrwal', '2265204414', '9626400295', NULL, NULL, 2, 0, 1, NULL, '2023-11-23', '15:19:14', '16:19:14', 1, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 09:49:14', '2023-11-23 09:49:14'),
(25, 1700733033, 'akshit', '2105612951', '7988017010', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '15:20:33', '16:20:33', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 09:50:34', '2023-11-23 09:50:33'),
(26, 1700733197, 'mirgang singh', '2529714332', '8652025661', NULL, NULL, 10, 0, 1, NULL, '2023-11-23', '15:23:17', '16:23:17', 1, '300', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 09:53:17', '2023-11-23 09:53:17'),
(27, 1700734052, 'p k thapa', '21038632246', '9454764590', NULL, NULL, 4, 0, 0, NULL, '2023-11-23', '15:37:32', '16:37:32', 1, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 10:07:32', '2023-11-23 10:07:32'),
(28, 1700734342, 'ayushi srivastav', '2852715751', '7860614695', NULL, NULL, 3, 0, 0, NULL, '2023-11-23', '15:42:22', '16:42:22', 1, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 10:12:22', '2023-11-23 10:12:22'),
(29, 1700735390, 'aman prasgad', '2305567401', '8851616667', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '15:59:50', '17:59:50', 2, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 10:29:50', '2023-11-23 10:29:50'),
(30, 1700735457, 'aditya', '2631875762', '7895372155', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '16:00:57', '17:00:57', 1, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 10:30:57', '2023-11-23 10:30:57'),
(31, 1700735535, 'seema', '2633488785', '9899077759', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '16:02:15', '17:02:15', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 10:32:15', '2023-11-23 10:32:15'),
(32, 1700736578, 'amnoj', '2633739636', '9415350619', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '16:19:38', '20:19:38', 4, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 10:49:38', '2023-11-23 10:49:38'),
(33, 1700736696, 'jaykishan', '2465207741', '8874953622', NULL, NULL, 3, 0, 0, NULL, '2023-11-23', '16:21:36', '17:21:36', 1, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 10:51:36', '2023-11-23 10:51:36'),
(34, 1700736779, 'mahesh chand aggrwal', '2305609205', '8077947909', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '16:22:59', '17:22:59', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 10:52:59', '2023-11-23 10:52:59'),
(35, 1700737377, 'o p ahuja', '2533810847', '9711193111', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '16:32:57', '17:32:57', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 11:02:57', '2023-11-23 11:02:57'),
(36, 1700737474, 'kamandar sharma', '2633703155', '9986302458', NULL, NULL, 3, 0, 0, NULL, '2023-11-23', '16:34:34', '17:34:34', 1, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 11:04:34', '2023-11-23 11:04:34'),
(37, 1700737881, 'deepak mheta', '2405373289', '9892622222', NULL, NULL, 4, 0, 0, NULL, '2023-11-23', '16:41:21', '17:41:21', 1, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 11:11:21', '2023-11-23 11:11:21'),
(38, 1700738137, 'p k thapa', '21038632246', '945476590', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '16:45:37', '17:45:37', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 11:15:37', '2023-11-23 11:15:37'),
(39, 1700738319, 'lalit chawla', '2633010649', '9930172087', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '16:48:39', '18:48:39', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 11:18:39', '2023-11-23 11:18:39'),
(40, 1700738742, 'ayushi srivastav', '20852715751', '7860614695', NULL, NULL, 3, 0, 0, NULL, '2023-11-23', '16:55:42', '17:55:42', 1, '90', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 11:25:43', '2023-11-23 11:25:42'),
(41, 1700738827, 'arnav', '2633447091', '9769098659', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '16:57:07', '17:57:07', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 11:27:07', '2023-11-23 11:27:07'),
(42, 1700738997, 'karam jeet kaur', '551474620245', '8941824356', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '16:59:57', '17:59:57', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 11:29:57', '2023-11-23 11:29:57'),
(43, 1700739109, 'shalabh nigam', '2852551098', '9616525254', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '17:01:49', '18:01:49', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 11:31:49', '2023-11-23 11:31:49'),
(44, 1700739257, 'sumit singh', '2205440415', '8923542092', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '17:04:17', '18:04:17', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 11:34:17', '2023-11-23 11:34:17'),
(45, 1700739623, 'rajneesh gupta', '2851081027', '9419326965', NULL, NULL, 3, 0, 0, NULL, '2023-11-23', '17:10:23', '18:10:23', 1, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 11:40:23', '2023-11-23 11:40:23'),
(46, 1700739811, 'anil taneja', '2901668311', '9810016947', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '17:13:31', '18:13:31', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 11:43:31', '2023-11-23 11:43:31'),
(47, 1700740132, 'jeetendar yada v', '2105515875', '9871287257', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '17:18:52', '18:18:52', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 11:48:52', '2023-11-23 11:48:52'),
(48, 1700740730, 'anand gupta', '2852718381', '8879148625', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '17:28:50', '18:28:50', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 11:58:50', '2023-11-23 11:58:50'),
(49, 1700740842, 'abhinav', '2404664090', '9002292256', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '17:30:42', '18:30:42', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 12:00:43', '2023-11-23 12:00:43'),
(50, 1700741051, 'a k shariyal', '2633843108', '9896313776', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '17:34:11', '18:34:11', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 12:04:12', '2023-11-23 12:04:12'),
(51, 1700741202, 'sonu mhewari', '2901013289', '8890003725', NULL, NULL, 1, 1, 0, NULL, '2023-11-23', '17:36:42', '18:36:42', 1, '50', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 12:06:42', '2023-11-23 12:06:42'),
(52, 1700741287, 'kamlesh tomar', '2105514728', '880018959', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '17:38:07', '18:38:07', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 12:08:07', '2023-11-23 12:08:07'),
(53, 1700741554, 'mirgang singh', '2529714332', '8652025661', NULL, NULL, 5, 0, 0, NULL, '2023-11-23', '17:42:34', '19:42:34', 2, '300', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 12:12:34', '2023-11-23 12:12:34'),
(54, 1700742724, 'prigya', '2901640621', '7017349023', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '18:02:04', '23:02:04', 5, '150', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 12:32:04', '2023-11-23 12:32:04'),
(55, 1700743297, 'sylvia', '2633373944', '9675251779', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '18:11:37', '21:11:37', 3, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 12:41:37', '2023-11-23 12:41:37'),
(56, 1700744290, 'kiran', '305683747305', '9822184143', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '18:28:10', '19:28:10', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 12:58:10', '2023-11-23 12:58:10'),
(57, 1700745185, 'saroj rani', '2205572399', '7830816777', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '18:43:05', '23:43:05', 5, '150', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 13:13:05', '2023-11-23 13:13:05'),
(58, 1700747876, 'dr shashisha', '2752633443', '9410120766', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '19:27:56', '23:27:56', 4, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 13:57:56', '2023-11-23 13:57:56'),
(59, 1700749610, 'kirshan murti', '2901704684', '9492565478', NULL, NULL, 3, 0, 0, NULL, '2023-11-23', '19:56:50', '00:56:50', 5, '450', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 14:26:51', '2023-11-23 14:26:50'),
(60, 1700749725, 'jugal kejriwal', '2627179775', '9433087238', NULL, NULL, 5, 0, 0, NULL, '2023-11-23', '19:58:45', '23:58:45', 4, '600', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 14:28:45', '2023-11-23 14:28:45'),
(61, 1700749933, 'kamal', '2750207331', '8774198491', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '20:02:13', '21:02:13', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 14:32:13', '2023-11-23 14:32:13'),
(62, 1700750368, 'r k', '2256897125', '9675231779', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '20:09:28', '21:09:28', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 14:39:28', '2023-11-23 14:39:28'),
(63, 1700750874, 'anil kumar', '2103316897', '9949936999', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '20:17:54', '23:17:54', 3, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 14:47:54', '2023-11-23 14:47:54'),
(64, 1700751020, 'akul sarkar', '2751089234', '7037596669', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '20:20:20', '23:20:20', 3, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 14:50:20', '2023-11-23 14:50:20'),
(65, 1700751192, 'raj kumar', '2531893408', '8887619385', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '20:23:12', '22:23:12', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 14:53:12', '2023-11-23 14:53:12'),
(66, 1700751551, 'digvijay', '2749616836', '8958227934', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '20:29:11', '21:29:11', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 14:59:11', '2023-11-23 14:59:11'),
(67, 1700752635, 'lakhan', '2848824561', '8149750790', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '20:47:15', '23:47:15', 3, '180', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 15:17:15', '2023-11-23 15:17:15'),
(68, 1700753513, 'kirtee sharma', '2901340005', '9179216669', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '21:01:53', '00:01:53', 3, '90', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 15:31:53', '2023-11-23 15:31:53'),
(69, 1700753684, 'v k singh', '2751348290', '9784293555', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '21:04:44', '00:04:44', 3, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 15:34:44', '2023-11-23 15:34:44'),
(70, 1700754059, 'arpita duwari', '2303233008', '8509858166', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '21:10:59', '22:10:59', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 15:41:00', '2023-11-23 15:40:59'),
(71, 1700754114, 'vishvjeet sharma', '2105577028', '8865867434', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '21:11:54', '22:11:54', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 15:41:54', '2023-11-23 15:41:54'),
(72, 1700754541, 'ajeet', '2405640903', '9454358158', NULL, NULL, 3, 0, 0, NULL, '2023-11-23', '21:19:01', '22:19:01', 1, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 15:49:01', '2023-11-23 15:49:01'),
(73, 1700754916, 'k rajesh', '2851490379', '9633640696', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '21:25:16', '23:25:16', 2, '120', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 15:55:16', '2023-11-23 15:55:16'),
(74, 1700755272, 'shelesh', '2752792311', '9712059364', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '21:31:12', '22:31:12', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 16:01:12', '2023-11-23 16:01:12'),
(75, 1700755880, 'malina dev varman', '2205614304', '9678262394', NULL, NULL, 3, 0, 0, NULL, '2023-11-23', '21:41:20', '23:41:20', 2, '180', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 16:11:20', '2023-11-23 16:11:20'),
(76, 1700756635, 'manmohan pant', '2205482030', '8979025588', NULL, NULL, 4, 0, 0, NULL, '2023-11-23', '21:53:55', '23:53:55', 2, '240', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 16:23:55', '2023-11-23 16:23:55'),
(77, 1700756716, 'govind tiepathi', '2901680196', '7007686762', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '21:55:16', '22:55:16', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 16:25:16', '2023-11-23 16:25:16'),
(78, 1700756800, 'gaurav singh', '2633812823', '9785316302', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '21:56:40', '23:56:40', 2, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-23 16:26:40', '2023-11-23 16:26:40'),
(79, 1700757321, 'JI GARG', '2901656381', '9898861018', NULL, NULL, 2, 1, 0, NULL, '2023-11-23', '22:05:21', '23:05:21', 1, '80', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 16:35:21', '2023-11-23 16:35:21'),
(80, 1700757792, 'PIYUSH KUMAR', '2752659554', '7976677382', NULL, NULL, 3, 0, 0, NULL, '2023-11-23', '22:13:12', '23:13:12', 1, '90', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 16:43:12', '2023-11-23 16:43:12'),
(81, 1700758410, 'DILIP', '2305145147', '9910064398', NULL, NULL, 5, 0, 0, NULL, '2023-11-23', '22:23:30', '00:23:30', 2, '300', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 16:53:30', '2023-11-23 16:53:30'),
(82, 1700758512, 'PRADEEP', '2901639946', '9963940663', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '22:25:12', '01:25:12', 3, '180', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 16:55:12', '2023-11-23 16:55:12'),
(83, 1700758618, 'SHELESH', '2752792311', '9712059364', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '22:26:58', '00:26:58', 2, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 16:56:58', '2023-11-23 16:56:58'),
(84, 1700758746, 'TRILOK SINGH', '2304507002', '8279896369', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '22:29:06', '23:29:06', 1, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 16:59:06', '2023-11-23 16:59:06'),
(85, 1700758872, 'MANOJ KUMAR', '2901695010', '9319302423', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '22:31:12', '23:31:12', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 17:01:13', '2023-11-23 17:01:12'),
(86, 1700758986, 'JAYSHRI', '2405588028', '9869903776', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '22:33:06', '23:33:06', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 17:03:06', '2023-11-23 17:03:06'),
(87, 1700759137, 'SANJAY SAINI', '2901797175', '6264677680', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '22:35:37', '00:35:37', 2, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 17:05:37', '2023-11-23 17:05:37'),
(88, 1700759322, 'PRATIK', '2627179775', '7004740623', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '22:38:42', '00:38:42', 2, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 17:08:42', '2023-11-23 17:08:42'),
(89, 1700759750, 'ARUN', '2752760981', '9930860706', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '22:45:50', '23:45:50', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 17:15:50', '2023-11-23 17:15:50'),
(90, 1700759899, 'AKHILESH KUMAR', '2105573911', '8210049446', NULL, NULL, 3, 0, 1, NULL, '2023-11-23', '22:48:19', '00:48:19', 2, '180', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 17:18:19', '2023-11-23 17:18:19'),
(91, 1700760084, 'PARESH BHANUSHALI', '2305575633', '8080842800', NULL, NULL, 3, 0, 0, NULL, '2023-11-23', '22:51:24', '23:51:24', 1, '90', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 17:21:24', '2023-11-23 17:21:24'),
(92, 1700760322, 'R K GUPTA', '2100559715', '9412742329', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '22:55:22', '01:55:22', 3, '180', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 17:25:22', '2023-11-23 17:25:22'),
(93, 1700760857, 'PRAGYA', '2901640621', '7017349023', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '23:04:17', '02:04:17', 3, '90', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 17:34:17', '2023-11-23 17:34:17'),
(94, 1700760929, 'ASHUTOSH SONI', '2851733435', '8085557567', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '23:05:29', '03:05:29', 4, '240', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 17:35:29', '2023-11-23 17:35:29'),
(95, 1700761338, 'SHIVANSH', '2403758085', '9456569282', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '23:12:18', '00:12:18', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 17:42:18', '2023-11-23 17:42:18'),
(96, 1700761423, 'DHANANJAY', '2850009756', '9963554760', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '23:13:43', '00:13:43', 1, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 17:43:43', '2023-11-23 17:43:43'),
(97, 1700761513, 'ADITYA', '2404858092', '9815390720', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '23:15:13', '00:15:13', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 17:45:13', '2023-11-23 17:45:13'),
(98, 1700761625, 'SUNIL', '2201194109', '8299298862', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '23:17:05', '00:17:05', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 17:47:05', '2023-11-23 17:47:05'),
(99, 1700761771, 'SAKSHI PANDAY', '2901654130', '9569435048', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '23:19:31', '01:19:31', 2, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 17:49:31', '2023-11-23 17:49:31'),
(100, 1700762599, 'PALLAVI', '2405323881', '7028179804', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '23:33:19', '00:33:19', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 18:03:19', '2023-11-23 18:03:19'),
(101, 1700763092, 'PIYUSH', '2752659554', '7976677382', NULL, NULL, 3, 0, 0, NULL, '2023-11-23', '23:41:32', '00:41:32', 1, '90', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 18:11:32', '2023-11-23 18:11:32'),
(102, 1700763185, 'SAVITA SHARMA', '2632270589', '7088111965', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '23:43:05', '01:43:05', 2, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 18:13:05', '2023-11-23 18:13:05'),
(103, 1700763870, 'ANIL KUMAR', '2103316897', '9949936999', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '23:54:30', '00:54:30', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 18:24:30', '2023-11-23 18:24:30'),
(104, 1700764034, 'ELSA', '2633719504', '0', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '23:57:14', '01:57:14', 2, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 18:27:14', '2023-11-23 18:27:14'),
(105, 1700764315, 'RAJAT', '2405573926', '9352757417', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '00:01:55', '02:01:55', 2, '120', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 18:31:55', '2023-11-23 18:31:55'),
(106, 1700764421, 'ROMAN KHANDOZHKO', '2751814864', '9313384566', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '00:03:41', '02:03:41', 2, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 18:33:41', '2023-11-23 18:33:41'),
(107, 1700764495, 'SHIVANG', '2632340788', '7838795282', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '00:04:55', '04:04:55', 4, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 18:34:55', '2023-11-23 18:34:55'),
(108, 1700764640, 'KRISHAN KUMAR', '2852747864', '7017594256', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '00:07:20', '01:07:20', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 18:37:20', '2023-11-23 18:37:20'),
(109, 1700765126, 'SAKET', '2633806563', '9012966005', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '00:15:26', '01:15:26', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 18:45:26', '2023-11-23 18:45:26'),
(110, 1700765568, 'DR SHASHISHA', '2752633443', '9410120766', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '00:22:48', '01:22:48', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 18:52:48', '2023-11-23 18:52:48'),
(111, 1700767099, 'MANISH KUMAR', '2632645735', '9679536224', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '00:48:19', '02:48:19', 2, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 19:18:19', '2023-11-23 19:18:19'),
(112, 1700767241, 'NIRANJAN', '2752718372', '8439614284', NULL, 'AA', 2, 0, 0, NULL, '2023-11-23', '00:50:41', '03:50:41', 3, '180', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 19:20:41', '2023-11-23 19:20:41'),
(113, 1700767592, 'SWAMI ATMA NATHA NAND', '2527173025', '9832320237', NULL, NULL, 3, 0, 0, NULL, '2023-11-23', '00:56:32', '03:56:32', 3, '270', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 19:26:32', '2023-11-23 19:26:32'),
(114, 1700767803, 'ABHISHEK', '2633801720', '9319006898', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '01:00:03', '03:00:03', 2, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 19:30:03', '2023-11-23 19:30:03'),
(115, 1700767937, 'ASHISH JI', '2527172937', '8335996011', NULL, NULL, 4, 0, 0, NULL, '2023-11-23', '01:02:17', '04:02:17', 3, '360', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 19:32:17', '2023-11-23 19:32:17'),
(116, 1700771250, 'ANKITA SINGH', '6528241168', '7383792593', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '01:57:30', '06:57:30', 5, '150', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 20:27:30', '2023-11-23 20:27:30'),
(117, 1700773053, 'B GHOSH', '2900990541', '9007670874', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '02:27:33', '03:27:33', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 20:57:34', '2023-11-23 20:57:33'),
(118, 1700773502, 'DR NEELAM', '2901775097', '8384872409', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '02:35:02', '03:35:02', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 21:05:03', '2023-11-23 21:05:02'),
(119, 1700773645, 'PRIYNK SHUKLA', '2533813351', '8077051700', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '02:37:25', '05:37:25', 3, '180', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 21:07:25', '2023-11-23 21:07:25'),
(120, 1700773747, 'URMILA', '2305413240', '9927842471', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '02:39:07', '04:39:07', 2, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 21:09:07', '2023-11-23 21:09:07'),
(121, 1700773837, 'JYOTI', '2205558250', '7351513791', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '02:40:37', '04:40:37', 2, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 21:10:37', '2023-11-23 21:10:37'),
(122, 1700773885, 'SUNIL KUMAR PANT', '2633729762', '8006122959', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '02:41:25', '04:41:25', 2, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 21:11:26', '2023-11-23 21:11:25'),
(123, 1700773991, 'HARSHIT PANT', '2901658424', '9012817107', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '02:43:11', '04:43:11', 2, '120', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 21:13:11', '2023-11-23 21:13:11'),
(124, 1700774165, 'SONU KUMAR[STAFF]', '2852764567', '7895313605', NULL, NULL, 0, 0, 1, NULL, '2023-11-23', '02:46:05', '03:46:05', 1, '0', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 21:16:05', '2023-11-23 21:16:05'),
(125, 1700774412, 'MANISH KUMAR', '2632645735', '9679536224', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '02:50:12', '03:50:12', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 21:20:12', '2023-11-23 21:20:12'),
(126, 1700776557, 'SAKSHI PANDAY', '2901654130', '9569435048', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '03:25:57', '05:25:57', 2, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 21:55:57', '2023-11-23 21:55:57'),
(127, 1700777253, 'RAJAT', NULL, '9352757417', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '03:37:33', '05:37:33', 2, '120', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 22:07:34', '2023-11-23 22:07:34'),
(128, 1700778184, 'PRAGYA', NULL, '12', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '03:53:04', '05:53:04', 2, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 22:23:04', '2023-11-23 22:23:04'),
(129, 1700779487, 'B GHOSH', '2900990541', '9007670874', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '04:14:47', '05:14:47', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 22:44:47', '2023-11-23 22:44:47'),
(130, 1700780697, 'ASHUTOSH', '2851733435', '8085557567', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '04:34:57', '05:34:57', 1, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 23:04:57', '2023-11-23 23:04:57'),
(131, 1700781574, 'MUKUL', '8855367285', '7774065744', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '04:49:34', '05:49:34', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 23:19:34', '2023-11-23 23:19:34'),
(132, 1700781645, 'T RAMESH', '8609704493', '9493774594', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '04:50:45', '05:50:45', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 23:20:45', '2023-11-23 23:20:45'),
(133, 1700781743, 'SANJAY', '8308258900', '9830392146', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '04:52:23', '05:52:23', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 23:22:24', '2023-11-23 23:22:23'),
(134, 1700781809, 'PAVAN', '8407141258', '9998564953', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '04:53:29', '05:53:29', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 23:23:29', '2023-11-23 23:23:29'),
(135, 1700781899, 'RAJ KUMAR', '8110734366', '9618810027', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '04:54:59', '05:54:59', 1, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 23:25:00', '2023-11-23 23:24:59'),
(136, 1700782799, 'K C DUBEY', '2305313479', '9696711688', NULL, NULL, 4, 0, 0, NULL, '2023-11-23', '05:09:59', '07:09:59', 2, '240', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 23:39:59', '2023-11-23 23:39:59'),
(137, 1700782909, 'A K SINGH', '2201885548', '8299682836', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '05:11:49', '06:11:49', 1, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 23:41:49', '2023-11-23 23:41:49'),
(138, 1700782957, 'SUDHIR', '2305497863', '9621471410', NULL, NULL, 0, 0, 0, NULL, '2023-11-23', '05:12:37', '06:12:37', 1, '0', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 23:42:38', '2023-11-23 23:42:37'),
(139, 1700783159, 'DINANATH', '6228013316', '9431764551', NULL, NULL, 2, 0, 0, NULL, '2023-11-23', '05:15:59', '07:15:59', 2, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-23 23:45:59', '2023-11-23 23:45:59'),
(140, 1700784118, 'SONU KUMAR', NULL, '7895313605', NULL, NULL, 1, 0, 0, NULL, '2023-11-23', '05:31:58', '07:31:58', 2, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 00:01:58', '2023-11-24 00:01:58'),
(141, 1700786631, 'ROHIT', '2750721602', '9911759503', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '06:13:51', '07:13:51', 1, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 00:43:51', '2023-11-24 00:43:51'),
(142, 1700786750, 'YUVESH SHARMA', '2531498091', '8299423380', NULL, NULL, 2, 0, 1, NULL, '2023-11-24', '06:15:50', '07:15:50', 1, '60', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 00:45:50', '2023-11-24 00:45:50'),
(143, 1700786937, 'JYOTI', '2205558250', '7351513791', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '06:18:57', '08:18:57', 2, '60', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 00:48:57', '2023-11-24 00:48:57'),
(144, 1700787200, 'SATISH', '2846403216', '9909033551', NULL, NULL, 3, 1, 0, NULL, '2023-11-24', '06:23:20', '07:23:20', 1, '110', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 00:53:20', '2023-11-24 00:53:20'),
(145, 1700787298, 'GAURANG BHATNAGAR', '2852224105', '8860824808', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '06:24:58', '07:24:58', 1, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 00:54:58', '2023-11-24 00:54:58'),
(146, 1700787491, 'RAJIV', '2405151349', '7002215473', NULL, NULL, 3, 2, 0, NULL, '2023-11-24', '06:28:11', '07:28:11', 1, '130', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 00:58:11', '2023-11-24 00:58:11'),
(147, 1700787548, 'ANIL RR', '2165767648', '9497265701', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '06:29:08', '07:29:08', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 00:59:08', '2023-11-24 00:59:08'),
(148, 1700787661, 'ADITYA', '2752420819', '9716475719', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '06:31:01', '07:31:01', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 01:01:01', '2023-11-24 01:01:01'),
(149, 1700787810, 'KAKOLI SANYAN', '2265262503', '9831491748', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '06:33:30', '08:33:30', 2, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 01:03:30', '2023-11-24 01:03:30'),
(150, 1700787917, 'GOUTOM BODH', '2900534229', '9836041498', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '06:35:17', '07:35:17', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 01:05:17', '2023-11-24 01:05:17'),
(151, 1700787961, 'KSHAMA', '2846403216', '9909033551', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '06:36:01', '07:36:01', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 01:06:01', '2023-11-24 01:06:01'),
(152, 1700788747, 'SONIYA', '2633036900', '7011066044', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '06:49:07', '07:49:07', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 01:19:07', '2023-11-24 01:19:07'),
(153, 1700789099, 'TULU BHATTACHARYA', '2265262503', '9831491748', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '06:54:59', '08:54:59', 2, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 01:24:59', '2023-11-24 01:24:59'),
(154, 1700789280, 'ANITA ARORA', '2405630734', '9890251419', '0', NULL, 1, 0, 0, NULL, '2023-11-24', '06:58:00', '09:58:00', 3, '90', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 03:58:32', '2023-11-24 01:28:00'),
(155, 1700789350, 'ABHAY', '2530197434', '9566052215', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '06:59:10', '07:59:10', 1, '60', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 01:29:10', '2023-11-24 01:29:10'),
(156, 1700790294, 'PAWAN KR SINGH', '2900222067', '9118657855', NULL, NULL, 2, 1, 1, NULL, '2023-11-24', '07:14:54', '08:14:54', 1, '80', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 01:44:54', '2023-11-24 01:44:54'),
(157, 1700790718, 'GAURANG BHANAGAR', '2852224105', '8860824808', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '07:21:58', '08:21:58', 1, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 01:51:58', '2023-11-24 01:51:58'),
(158, 1700791480, 'SONAKSHI', '2304525095', '9892249099', NULL, NULL, 4, 0, 0, NULL, '2023-11-24', '07:34:40', '08:34:40', 1, '120', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 02:04:40', '2023-11-24 02:04:40'),
(159, 1700791598, 'SP SHARMA', '2305110619', '9761744339', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '07:36:38', '07:36:38', 0, '0', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 02:06:38', '2023-11-24 02:06:38'),
(160, 1700794349, 'ROHIT', '2750721602', '9911759503', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '08:22:29', '09:22:29', 1, '60', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 02:52:29', '2023-11-24 02:52:29'),
(161, 1700794406, 'FAIZUDDIN', '6528172833', '8299681550', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '08:23:26', '09:23:26', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 02:53:26', '2023-11-24 02:53:26'),
(162, 1700796821, 'RAJESH NAUTIYAL', '8709612595', '6398187162', NULL, NULL, 2, 2, 0, NULL, '2023-11-24', '09:03:41', '10:03:41', 1, '100', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 03:33:41', '2023-11-24 03:33:41'),
(163, 1700797146, 'SATISH', '2846403216', '9909033551', NULL, NULL, 3, 1, 0, NULL, '2023-11-24', '09:09:06', '11:09:06', 2, '220', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 03:39:06', '2023-11-24 03:39:06'),
(164, 1700797264, 'KSHAMA', '2846403216', '9909033551', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '09:11:04', '11:11:04', 2, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 03:41:05', '2023-11-24 03:41:05'),
(165, 1700799626, 'JAY KUMAR', '2105573294', '7339765830', NULL, NULL, 4, 0, 0, NULL, '2023-11-24', '09:50:26', '10:50:26', 1, '120', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 04:20:26', '2023-11-24 04:20:26'),
(166, 1700809538, 'AVTAR SINGH', '8853224356', '9939314266', NULL, NULL, 5, 0, 0, NULL, '2023-11-24', '12:35:38', '13:35:38', 1, '150', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 07:05:38', '2023-11-24 07:05:38'),
(167, 1700809677, 'AKSHAY', '8607083606', '8928608851', NULL, NULL, 3, 0, 0, NULL, '2023-11-24', '12:37:57', '13:37:57', 1, '90', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 07:07:58', '2023-11-24 07:07:57'),
(168, 1700810775, 'RISHI MALHOTRA', '2533442753', '9818387397', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '12:56:15', '13:56:15', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 07:26:15', '2023-11-24 07:26:15'),
(169, 1700811758, 'RAJU', '51529800046', '7087231662', NULL, NULL, 0, 0, 1, NULL, '2023-11-24', '13:12:38', '14:12:38', 1, '0', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 07:42:38', '2023-11-24 07:42:38'),
(170, 1700812254, 'SAGAR', '2305507438', '8445958492', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '13:20:54', '14:20:54', 1, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 07:50:54', '2023-11-24 07:50:54'),
(171, 1700812794, 'SURENDRA KUMAR SINGH', '2631688234', '9936110681', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '13:29:54', '14:29:54', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 07:59:54', '2023-11-24 07:59:54'),
(172, 1700812873, 'SWETA SINGH', '2105626925', '8918508331', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '13:31:13', '16:31:13', 3, '90', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 08:01:13', '2023-11-24 08:01:13'),
(173, 1700813286, 'veebha', '2365290650', '8052415887', NULL, NULL, 4, 0, 0, NULL, '2023-11-24', '13:38:06', '14:38:06', 1, '120', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 08:08:06', '2023-11-24 08:08:06'),
(174, 1700814141, 'dushiyant kumar', '2980741', '9968832162', NULL, NULL, 1, 0, 1, NULL, '2023-11-24', '13:52:21', '14:52:21', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 08:22:21', '2023-11-24 08:22:21'),
(175, 1700814240, 'pranav srivatsava', '2632104515', '8303795198', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '13:54:00', '14:54:00', 1, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 08:24:00', '2023-11-24 08:24:00'),
(176, 1700814498, 'raj', '2365289419', '9044584803', NULL, NULL, 6, 0, 0, NULL, '2023-11-24', '13:58:18', '14:58:18', 1, '180', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-24 08:28:18', '2023-11-24 08:28:18'),
(177, 1700814759, 'addti', '2365289419', '9415004467', NULL, NULL, 4, 0, 0, NULL, '2023-11-24', '14:02:39', '15:02:39', 1, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 08:32:40', '2023-11-24 08:32:39'),
(178, 1700815028, 'aporb', '2365289419', '9415042674', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '14:07:08', '15:07:08', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 08:37:08', '2023-11-24 08:37:08'),
(179, 1700815085, 'sagar', '2305507438', '8445958492', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '14:08:05', '15:08:05', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 08:38:05', '2023-11-24 08:38:05'),
(180, 1700815523, 'divya', '2205650023', '7976845242', NULL, NULL, 3, 0, 0, NULL, '2023-11-24', '14:15:23', '20:15:23', 6, '540', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 08:45:23', '2023-11-24 08:45:23'),
(181, 1700815586, 'kaniksh', '2305644110', '8052526013', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '14:16:26', '15:16:26', 1, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 08:46:26', '2023-11-24 08:46:26'),
(182, 1700816273, 'j s thakur', '2405319853', '9575672588', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '14:27:53', '16:27:53', 2, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 08:57:53', '2023-11-24 08:57:53'),
(183, 1700816868, 'ashwin', '2846147454', '9969026369', NULL, NULL, 2, 1, 0, NULL, '2023-11-24', '14:37:48', '15:37:48', 1, '80', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 09:07:48', '2023-11-24 09:07:48'),
(184, 1700816949, 'sandeep singh', '2405225484', '8218899839', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '14:39:09', '17:39:09', 3, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 09:09:09', '2023-11-24 09:09:09'),
(185, 1700817373, 'a k singh', '22018985548', '8299682836', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '14:46:13', '15:46:13', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 09:16:13', '2023-11-24 09:16:13'),
(186, 1700817656, 'pawan kabra', '2746285338', '9322990556', NULL, NULL, 3, 0, 0, NULL, '2023-11-24', '14:50:56', '15:50:56', 1, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 09:20:57', '2023-11-24 09:20:56'),
(187, 1700818800, 'manish joshi', '2305617077', '7055729075', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '15:10:00', '16:10:00', 1, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 09:40:00', '2023-11-24 09:40:00'),
(188, 1700818849, 'parmanand', '2265262601', '9822073430', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '15:10:49', '16:10:49', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 09:40:50', '2023-11-24 09:40:49'),
(189, 1700819277, 'shilpa mishra', '2305618230', '9049014868', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '15:17:57', '16:17:57', 1, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 09:47:57', '2023-11-24 09:47:57'),
(190, 1700819582, 'r c rawat', '2850306895', '8806062740', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '15:23:02', '16:23:02', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 09:53:02', '2023-11-24 09:53:02'),
(191, 1700819842, 's joshi', '397285758400', '9416555539', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '15:27:22', '16:27:22', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 09:57:22', '2023-11-24 09:57:22'),
(192, 1700819980, 'jay pal rawat', '2633584248', '8104738045', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '15:29:40', '16:29:40', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 09:59:40', '2023-11-24 09:59:40'),
(193, 1700820169, 'sagar', '2305507438', '8445958492', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '15:32:49', '16:32:49', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 10:02:49', '2023-11-24 10:02:49'),
(194, 1700820621, 'abhay singh', '2365408570', '7906475414', NULL, NULL, 3, 0, 0, NULL, '2023-11-24', '15:40:21', '16:40:21', 1, '90', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 10:10:21', '2023-11-24 10:10:21'),
(195, 1700820986, 'shishank', '2900499149', '7682854535', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '15:46:26', '17:46:26', 2, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 10:16:26', '2023-11-24 10:16:26'),
(196, 1700821630, 'avtar singh', '8853224356', '9939314266', NULL, NULL, 3, 0, 0, NULL, '2023-11-24', '15:57:10', '16:57:10', 1, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 10:27:10', '2023-11-24 10:27:10'),
(197, 1700821708, 'rama vishwash', '210326570', '7500961192', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '15:58:28', '16:58:28', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 10:28:28', '2023-11-24 10:28:28'),
(198, 1700822153, 'abhisek', '2265262601', '8130410200', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '16:05:53', '18:05:53', 2, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 10:35:53', '2023-11-24 10:35:53'),
(199, 1700822258, 'mukti kant dhani', '2859305425', '7908663060', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '16:07:38', '18:07:38', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 10:37:38', '2023-11-24 10:37:38'),
(200, 1700822453, 'm p tiwari', '2305512506', '8239999227', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '16:10:53', '17:10:53', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 10:40:53', '2023-11-24 10:40:53'),
(201, 1700823136, 'jashlin kaur', '2852841902', '9818483148', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '16:22:16', '17:22:16', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 10:52:16', '2023-11-24 10:52:16'),
(202, 1700823339, 'chintal patel', '2748091535', '8104146674', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '16:25:39', '20:25:39', 4, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 10:55:39', '2023-11-24 10:55:39'),
(203, 1700823531, 'dinesh', '2533791096', '8588831964', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '16:28:51', '17:28:51', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 10:58:51', '2023-11-24 10:58:51'),
(204, 1700823934, 'mamta ganeri', '2465600169', '8306991401', NULL, NULL, 1, 0, 1, NULL, '2023-11-24', '16:35:34', '18:35:34', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 11:05:34', '2023-11-24 11:05:34'),
(205, 1700824033, 'patric milvain', '2304209713', '9928956239', NULL, NULL, 3, 0, 0, NULL, '2023-11-24', '16:37:13', '17:37:13', 1, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 11:07:13', '2023-11-24 11:07:13'),
(206, 1700824502, 'rajeet', '2303325307', '830606548799', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '16:45:02', '18:45:02', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 11:15:02', '2023-11-24 11:15:02'),
(207, 1700825151, 'kansal', '2533101477', '8337009018', NULL, NULL, 6, 0, 0, NULL, '2023-11-24', '16:55:51', '17:55:51', 1, '180', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 11:25:51', '2023-11-24 11:25:51'),
(208, 1700825608, 'kishor', '2900897953', '98431555369', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '17:03:28', '18:03:28', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 11:33:28', '2023-11-24 11:33:28'),
(209, 1700827106, 'kansal', '2533101477', '8337009018', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '17:28:26', '18:28:26', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 11:58:26', '2023-11-24 11:58:26'),
(210, 1700827540, 'shatnu', '2104518328', '9910172641', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '17:35:40', '18:35:40', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 12:05:40', '2023-11-24 12:05:40'),
(211, 1700828014, 'jay', '2534600974', '7718996881', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '17:43:34', '18:43:34', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 12:13:34', '2023-11-24 12:13:34'),
(212, 1700832403, 'mayan singh', '2533870601', '8765273335', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '18:56:43', '19:56:43', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 13:26:43', '2023-11-24 13:26:43'),
(213, 1700832633, 'anjalika', '26333853118', '8899062505', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '19:00:33', '20:00:33', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 13:30:33', '2023-11-24 13:30:33'),
(214, 1700832782, 'meena gupta', '2900691754', '9939500681', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '19:03:02', '20:03:02', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 13:33:02', '2023-11-24 13:33:02'),
(215, 1700832841, 'ankit', '2305570060', '9592979956', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '19:04:01', '21:04:01', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 13:34:01', '2023-11-24 13:34:01'),
(216, 1700832937, 'puneet', '2633854546', '8209142212', NULL, NULL, 3, 0, 0, NULL, '2023-11-24', '19:05:37', '21:05:37', 2, '180', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 13:35:37', '2023-11-24 13:35:37'),
(217, 1700833075, 'sagautam kaur', '2204258057', '9933559133', NULL, NULL, 6, 0, 0, NULL, '2023-11-24', '19:07:55', '00:07:55', 5, '900', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 13:37:55', '2023-11-24 13:37:55'),
(218, 1700833470, 'ranjeet', '2303325307', '83060654899', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '19:14:30', '20:14:30', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 13:44:30', '2023-11-24 13:44:30'),
(219, 1700834078, 'mayan singh', '2533870601', '8765273335', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '19:24:38', '20:24:38', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 13:54:38', '2023-11-24 13:54:38'),
(220, 1700834189, 'sandheya khadani', '2752523288', '9871098348', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '19:26:29', '20:26:29', 1, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 13:56:29', '2023-11-24 13:56:29'),
(221, 1700834248, 'shepali', '2301736894', '7991302775', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '19:27:28', '20:27:28', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 13:57:28', '2023-11-24 13:57:28'),
(222, 1700834423, 'yogesh', '2404900029', '8941007639', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '19:30:23', '20:30:23', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 14:00:23', '2023-11-24 14:00:23'),
(223, 1700835283, 'manish jha', '2752181159', '9594462180', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '19:44:43', '20:44:43', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 14:14:43', '2023-11-24 14:14:43'),
(224, 1700836089, 'sudipta', '2202672189', '9735232611', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '19:58:09', '21:58:09', 2, '120', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 14:28:09', '2023-11-24 14:28:09'),
(225, 1700836265, 'vimal banshal', '2532641513', '9327044100', NULL, NULL, 5, 0, 0, NULL, '2023-11-24', '20:01:05', '21:01:05', 1, '150', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 14:31:05', '2023-11-24 14:31:05'),
(226, 1700836455, 'pratheyush kumar mage', '2265373373', '7682843386', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '20:04:15', '22:04:15', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 14:34:15', '2023-11-24 14:34:15'),
(227, 1700836621, 'm sarkar', '2901821845', '9748040753', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '20:07:01', '22:07:01', 2, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 14:37:02', '2023-11-24 14:37:01');
INSERT INTO `sitting_entries` (`id`, `unique_id`, `name`, `pnr_uid`, `mobile_no`, `train_no`, `address`, `no_of_adults`, `no_of_children`, `no_of_baby_staff`, `seat_no`, `date`, `check_in`, `check_out`, `hours_occ`, `paid_amount`, `pay_type`, `remarks`, `shift`, `status`, `checkout_status`, `added_by`, `client_id`, `deleted`, `delete_by`, `delete_time`, `updated_at`, `created_at`) VALUES
(228, 1700836775, 'nikta patel', '2201971827', '7905104078', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '20:09:35', '00:09:35', 4, '120', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 14:39:35', '2023-11-24 14:39:35'),
(229, 1700837228, 'shiavngi', '2305622019', '8533804202', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '20:17:08', '22:17:08', 2, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 14:47:08', '2023-11-24 14:47:08'),
(230, 1700838086, 'himanshu', '2202460554', '8382907604', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '20:31:26', '21:31:26', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 15:01:26', '2023-11-24 15:01:26'),
(231, 1700838443, 'shushant', '2105621769', '9877293336', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '20:37:23', '21:37:23', 1, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 15:07:23', '2023-11-24 15:07:23'),
(232, 1700838750, 'shishank bhatra', '2630081336', '8791140701', NULL, NULL, 3, 0, 0, NULL, '2023-11-24', '20:42:30', '23:42:30', 3, '270', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 15:12:30', '2023-11-24 15:12:30'),
(233, 1700838811, 'deepak kumar', '2405154191', '9988887665', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '20:43:31', '21:43:31', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 15:13:31', '2023-11-24 15:13:31'),
(234, 1700839402, 'raj kumar', '29018566862', '9956028537', NULL, NULL, 1, 1, 0, NULL, '2023-11-24', '20:53:22', '21:53:22', 1, '50', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 15:23:22', '2023-11-24 15:23:22'),
(235, 1700839577, 'anil', '2533873810', '9140492480', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '20:56:17', '22:56:17', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 15:26:17', '2023-11-24 15:26:17'),
(236, 1700839780, 'neelima', '2530350417', '8839175383', NULL, NULL, 3, 0, 0, NULL, '2023-11-24', '20:59:40', '21:59:40', 1, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 15:29:41', '2023-11-24 15:29:41'),
(237, 1700839881, 'sourav', '2365261946', '8013979048', NULL, NULL, 3, 0, 0, NULL, '2023-11-24', '21:01:21', '00:01:21', 3, '270', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 15:31:21', '2023-11-24 15:31:21'),
(238, 1700840438, 'sanjay', '2901800645', '7837765111', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '21:10:38', '22:10:38', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 15:40:38', '2023-11-24 15:40:38'),
(239, 1700840638, 'yogendra singh', '2850387776', '7599441312', NULL, NULL, 4, 0, 0, NULL, '2023-11-24', '21:13:58', '22:13:58', 1, '120', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 15:43:58', '2023-11-24 15:43:58'),
(240, 1700841440, 'sanjeev', '2852807145', '9631604899', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '21:27:20', '22:27:20', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 15:57:21', '2023-11-24 15:57:21'),
(241, 1700841833, 'solanki jagdish', '2633853550', '8693005010', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '21:33:53', '23:33:53', 2, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 16:03:53', '2023-11-24 16:03:53'),
(242, 1700841898, 'vishal', '2850230678', '9990594906', NULL, NULL, 3, 0, 0, NULL, '2023-11-24', '21:34:58', '22:34:58', 1, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 16:04:58', '2023-11-24 16:04:58'),
(243, 1700842370, 'sarashvati', '2305620636', '7976591895', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '21:42:50', '23:42:50', 2, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 16:12:50', '2023-11-24 16:12:50'),
(244, 1700842466, 'anil rajput', '2846148960', '9410152012', NULL, NULL, 4, 0, 0, NULL, '2023-11-24', '21:44:26', '22:44:26', 1, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 16:14:26', '2023-11-24 16:14:26'),
(245, 1700842927, 'kartik', '21056301555', '7306474183', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '21:52:07', '22:52:07', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 16:22:07', '2023-11-24 16:22:07'),
(246, 1700843140, 'kuldeep singh', '2852737511', '9532030289', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '21:55:40', '22:55:40', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 16:25:40', '2023-11-24 16:25:40'),
(247, 1700843284, 'd k sharma', '2751673708', '9414251142', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '21:58:04', '22:58:04', 1, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 16:28:04', '2023-11-24 16:28:04'),
(248, 1700843417, 'pradeep', '2304973804', '9015126404', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '22:00:17', '23:00:17', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-24 16:30:17', '2023-11-24 16:30:17'),
(250, 1700843652, 'PRATYUSH KUMAR', '2265373373', '7682843386', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '22:04:12', '23:04:12', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 16:34:12', '2023-11-24 16:34:12'),
(251, 1700843868, 'SAHIL', '2266053898', '9896559550', NULL, NULL, 3, 0, 0, NULL, '2023-11-24', '22:07:48', '00:07:48', 2, '180', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 16:37:48', '2023-11-24 16:37:48'),
(252, 1700844262, 'shyam khurana', '2205686276', '9926181122', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '22:14:22', '23:14:22', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 16:44:22', '2023-11-24 16:44:22'),
(253, 1700844384, 'pooja joshi', '2405244721', '9568680856', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '22:16:24', '00:16:24', 2, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 16:46:25', '2023-11-24 16:46:24'),
(254, 1700844562, 'pankaj manocha', '2205636005', '9213139130', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '22:19:22', '23:19:22', 1, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 16:49:22', '2023-11-24 16:49:22'),
(255, 1700844717, 'shubhangi', '2205622939', '8318457212', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '22:21:57', '00:21:57', 2, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 16:51:57', '2023-11-24 16:51:57'),
(256, 1700844795, 'SONAL MAROO', '2529902756', '9601257300', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '22:23:15', '23:23:15', 1, '30', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 16:53:15', '2023-11-24 16:53:15'),
(257, 1700844873, 'LUV AGARWAL', '2852303150', '7417638098', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '22:24:33', '00:24:33', 2, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 16:54:33', '2023-11-24 16:54:33'),
(258, 1700845473, 'HIMANSHU VIJAY', '2105623744', '9214345400', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '22:34:33', '23:34:33', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 17:04:33', '2023-11-24 17:04:33'),
(259, 1700845627, 'SABYASHCHILAHIRI', '2629467586', '9830421118', NULL, NULL, 4, 0, 0, NULL, '2023-11-24', '22:37:07', '23:37:07', 1, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 17:07:07', '2023-11-24 17:07:07'),
(260, 1700845699, 'VISHU GUPTA', '2205660730', '9953238226', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '22:38:19', '23:38:19', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 17:08:20', '2023-11-24 17:08:19'),
(261, 1700846032, 'VIMAL BANSAL', '2532641513', '9327044100', NULL, NULL, 5, 0, 0, NULL, '2023-11-24', '22:43:52', '00:43:52', 2, '300', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 17:13:52', '2023-11-24 17:13:52'),
(262, 1700846289, 'S L JOSHI', '2105623708', '9413808154', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '22:48:09', '23:48:09', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 17:18:09', '2023-11-24 17:18:09'),
(263, 1700846766, 'MANOJ RAWAT', '2533636795', '9456552614', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '22:56:06', '00:56:06', 2, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 17:26:06', '2023-11-24 17:26:06'),
(264, 1700847327, 'SAURAB', '2105425214', '8118830388', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '23:05:27', '00:05:27', 1, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 17:35:27', '2023-11-24 17:35:27'),
(265, 1700847990, 'ROHAN', '2305672271', '9827385653', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '23:16:30', '00:16:30', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 17:46:30', '2023-11-24 17:46:30'),
(266, 1700848432, 'LAXMI NARAYNAN', '2405672426', '8275045065', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '23:23:52', '00:23:52', 1, '30', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 17:53:52', '2023-11-24 17:53:52'),
(267, 1700848848, 'GIRISH', '2633156834', '9922666639', NULL, NULL, 5, 0, 0, NULL, '2023-11-24', '23:30:48', '00:30:48', 1, '150', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 18:00:48', '2023-11-24 18:00:48'),
(268, 1700849028, 'TAMAY', '2533437061', '7060917977', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '23:33:48', '00:33:48', 1, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 18:03:49', '2023-11-24 18:03:48'),
(269, 1700850204, 'ADITI', '6900630500', '7060484528', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '23:53:24', '05:53:24', 6, '180', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 18:23:24', '2023-11-24 18:23:24'),
(270, 1700852040, 'SANSKAR NAYAK', '2633898041', '7978755813', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '00:24:00', '05:24:00', 5, '150', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 18:54:00', '2023-11-24 18:54:00'),
(271, 1700852836, 'ASHOK', '2852802971', '8476828891', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '00:37:16', '02:37:16', 2, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 19:07:16', '2023-11-24 19:07:16'),
(272, 1700853628, 'PAVAN JEET SINGH', '2205661215', '8441066931', NULL, NULL, 3, 0, 0, NULL, '2023-11-24', '00:50:28', '01:50:28', 1, '90', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 19:20:28', '2023-11-24 19:20:28'),
(273, 1700859977, 'SHUBHAM', '2105454243', '9520468130', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '02:36:17', '04:36:17', 2, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 21:06:17', '2023-11-24 21:06:17'),
(274, 1700860829, 'NAVEEN', '2901585577', '7017295084', '0', NULL, 1, 0, 0, NULL, '2023-11-24', '02:50:00', '05:50:00', 3, '90', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-25 00:10:51', '2023-11-24 21:20:29'),
(275, 1700862891, 'HARSHIT SHARMA', '2205384191', '8006891618', NULL, NULL, 3, 1, 0, NULL, '2023-11-24', '03:24:51', '04:24:51', 1, '110', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 21:54:52', '2023-11-24 21:54:51'),
(276, 1700863199, 'AMIT', '2266017856', '9825930321', NULL, NULL, 3, 1, 0, NULL, '2023-11-24', '03:29:59', '05:29:59', 2, '220', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 22:00:01', '2023-11-24 22:00:00'),
(277, 1700863282, 'SARVATI', '2901385558', '9058807672', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '03:31:22', '05:31:22', 2, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 22:01:22', '2023-11-24 22:01:22'),
(278, 1700864819, 'YOGESH', '8210228197', '8989429961', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '03:56:59', '04:56:59', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 22:26:59', '2023-11-24 22:26:59'),
(279, 1700864963, 'KAMAL KANT PURI', '8210988277', '9414329043', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '03:59:23', '04:59:23', 1, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 22:29:23', '2023-11-24 22:29:23'),
(280, 1700865019, 'YOGESH', '8410172377', '9680302509', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '04:00:19', '05:00:19', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 22:30:19', '2023-11-24 22:30:19'),
(281, 1700865080, 'SHREYASH', '8856886417', '8377030420', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '04:01:20', '05:01:20', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 22:31:20', '2023-11-24 22:31:20'),
(282, 1700865164, 'ADARSH BHATNAGAR', '8309425918', '9829590410', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '04:02:44', '05:02:44', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 22:32:44', '2023-11-24 22:32:44'),
(283, 1700865272, 'Y K TIWARI', '8210257674', '9996675403', NULL, NULL, 4, 0, 0, NULL, '2023-11-24', '04:04:32', '05:04:32', 1, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 22:34:32', '2023-11-24 22:34:32'),
(284, 1700865417, 'PRAVIN KUMAR', '8510611296', '9430463686', NULL, NULL, 1, 1, 1, NULL, '2023-11-24', '04:06:57', '05:06:57', 1, '50', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 22:36:57', '2023-11-24 22:36:57'),
(285, 1700865597, 'KRISHNA', '7900554054', '8448066358', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '04:09:57', '06:09:57', 2, '120', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 22:39:57', '2023-11-24 22:39:57'),
(286, 1700865669, 'RAKESH MITTAL', '8210810557', '9412415230', NULL, NULL, 2, 0, 0, NULL, '2023-11-24', '04:11:09', '05:11:09', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 22:41:09', '2023-11-24 22:41:09'),
(287, 1700865814, 'DUSHYANT', '8410419869', '9079716113', NULL, NULL, 4, 0, 0, NULL, '2023-11-24', '04:13:34', '05:13:34', 1, '120', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 22:43:35', '2023-11-24 22:43:34'),
(288, 1700866018, 'P CP KHARWAR', '8708456054', '9910038799', '0', NULL, 2, 0, 0, NULL, '2023-11-24', '04:16:00', '06:16:00', 2, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-25 00:09:34', '2023-11-24 22:46:58'),
(289, 1700867144, 'ASHUTOSH', '2533942409', '9532490473', NULL, NULL, 1, 0, 0, NULL, '2023-11-24', '04:35:44', '06:35:44', 2, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-24 23:05:44', '2023-11-24 23:05:44'),
(290, 1700871760, 'RAMESH', '697565335006', '9250378289', NULL, NULL, 3, 0, 0, NULL, '2023-11-24', '05:52:40', '06:52:40', 1, '90', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-25 00:22:40', '2023-11-25 00:22:40'),
(291, 1700873925, 'AKASH', '2752777924', '8877340146', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '06:28:45', '07:28:45', 1, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 00:58:45', '2023-11-25 00:58:45'),
(292, 1700874081, 'SHANKAR  PRADHAN', '2847088341', '7008196583', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '06:31:21', '07:31:21', 1, '30', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:01:21', '2023-11-25 01:01:21'),
(293, 1700874353, 'PUSHKAR KULKARNI', '2304697172', '9496645296', NULL, NULL, 2, 1, 1, NULL, '2023-11-25', '06:35:53', '07:35:53', 1, '80', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:05:53', '2023-11-25 01:05:53'),
(294, 1700874450, 'ANISHA', '2403930673', '7338906654', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '06:37:30', '08:37:30', 2, '120', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:07:30', '2023-11-25 01:07:30'),
(295, 1700874564, 'AKASH', '2749560077', '9763809140', NULL, NULL, 5, 0, 0, NULL, '2023-11-25', '06:39:24', '07:39:24', 1, '150', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:09:24', '2023-11-25 01:09:24'),
(296, 1700874953, 'ANMOL SHARMA', '2901878150', '9877890849', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '06:45:53', '07:45:53', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:15:53', '2023-11-25 01:15:53'),
(297, 1700875091, 'JAGDISH', '2205706299', '9822775577', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '06:48:11', '07:48:11', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:18:11', '2023-11-25 01:18:11'),
(298, 1700875201, 'AKASH', '2632654386', '9033164944', NULL, NULL, 2, 1, 0, NULL, '2023-11-25', '06:50:01', '07:50:01', 1, '80', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:20:01', '2023-11-25 01:20:01'),
(299, 1700875296, 'SAHDIN ALI', '2633942376', '9212552233', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '06:51:36', '07:51:36', 1, '30', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:21:36', '2023-11-25 01:21:36'),
(300, 1700875519, 'PANKAJ', '2633921268', '9205334635', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '06:55:19', '07:55:19', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:25:19', '2023-11-25 01:25:19'),
(301, 1700875642, 'SONIKA', '2852836290', '9810648890', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '06:57:22', '07:57:22', 1, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:27:22', '2023-11-25 01:27:22'),
(302, 1700875775, 'BRIJ NANDAN MISHRA', '2105671127', '8630753335', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '06:59:35', '07:59:35', 1, '30', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:29:35', '2023-11-25 01:29:35'),
(303, 1700875915, 'DAYA BEN', '2305710993', '9029140878', NULL, NULL, 1, 1, 1, NULL, '2023-11-25', '07:01:55', '08:01:55', 1, '50', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:31:55', '2023-11-25 01:31:55'),
(304, 1700875960, 'ASHISH', '2750963528', '9452245669', NULL, NULL, 2, 0, 1, NULL, '2023-11-25', '07:02:40', '08:02:40', 1, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:32:40', '2023-11-25 01:32:40'),
(305, 1700876537, 'SANJAY', '2203687114', '9314411958', NULL, NULL, 4, 0, 0, NULL, '2023-11-25', '07:12:17', '08:12:17', 1, '120', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:42:17', '2023-11-25 01:42:17'),
(306, 1700876697, 'RAVI SINGH', '2901857020', '9852793272', NULL, NULL, 2, 0, 1, NULL, '2023-11-25', '07:14:57', '08:14:57', 1, '60', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:44:57', '2023-11-25 01:44:57'),
(307, 1700876782, 'SHIVANI', '2531938054', '9930470744', NULL, NULL, 3, 0, 1, NULL, '2023-11-25', '07:16:22', '08:16:22', 1, '90', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:46:22', '2023-11-25 01:46:22'),
(308, 1700876989, 'DILIP BHABHOR', '2532330442', '7567105534', NULL, NULL, 6, 0, 1, NULL, '2023-11-25', '07:19:49', '08:19:49', 1, '180', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:49:49', '2023-11-25 01:49:49'),
(309, 1700877549, 'ASHUTOSH', '2533942409', '9532490473', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '07:29:09', '08:29:09', 1, '30', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 01:59:09', '2023-11-25 01:59:09'),
(310, 1700880207, 'GOPAL KHURANA', '2901883593', '9855438013', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '08:13:27', '09:13:27', 1, '30', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 02:43:27', '2023-11-25 02:43:27'),
(311, 1700881312, 'SAHDIN ALI', '2633942376', '9212552233', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '08:31:52', '09:31:52', 1, '30', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 03:01:53', '2023-11-25 03:01:52'),
(312, 1700881439, 'BRIJ NANDAN MISHRA', '2105671127', '8630753335', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '08:33:59', '09:33:59', 1, '30', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 03:03:59', '2023-11-25 03:03:59'),
(313, 1700881782, 'ASHUTOSH', '8856193593', '9967500782', NULL, NULL, 4, 0, 0, NULL, '2023-11-25', '08:39:42', '09:39:42', 1, '120', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 03:09:42', '2023-11-25 03:09:42'),
(314, 1700881943, 'AKSHIT GAUTOM', '8110997776', '9792816822', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '08:42:23', '09:42:23', 1, '60', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 03:12:23', '2023-11-25 03:12:23'),
(315, 1700882047, 'VIPIN', '8857873143', '7030101096', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '08:44:07', '09:44:07', 1, '30', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 03:14:07', '2023-11-25 03:14:07'),
(316, 1700882347, 'DEVENDRA', '8210436989', '8130659296', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '08:49:07', '09:49:07', 1, '30', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 03:19:08', '2023-11-25 03:19:07'),
(317, 1700890354, 'BIJAY BANARJEE', '2752872077', '9810669107', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '11:02:34', '12:02:34', 1, '30', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 05:32:35', '2023-11-25 05:32:34'),
(318, 1700895131, 'ABHISHEK', '2633474047', '9508301950', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '12:22:11', '13:22:11', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 06:52:11', '2023-11-25 06:52:11'),
(319, 1700897223, 'AGK NAIDU', '2404110792', '7989674713', NULL, NULL, 2, 0, 1, NULL, '2023-11-25', '12:57:03', '15:57:03', 3, '180', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-25 07:27:03', '2023-11-25 07:27:03'),
(320, 1700901224, 'kirtee', '2202847998', '9605245498', NULL, NULL, 4, 0, 0, NULL, '2023-11-25', '14:03:44', '15:03:44', 1, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 08:33:44', '2023-11-25 08:33:44'),
(321, 1700901408, 'satya prakash', '257460110684', '9819928611', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '14:06:48', '15:06:48', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 08:36:48', '2023-11-25 08:36:48'),
(322, 1700901451, 'saw', '2533971781', '9675231779', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '14:07:31', '16:07:31', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 08:37:31', '2023-11-25 08:37:31'),
(323, 1700903503, 'gurendra pal singh', '2305743880', '8968600221', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '14:41:43', '16:41:43', 2, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 09:11:43', '2023-11-25 09:11:43'),
(324, 1700903717, 'akash', '38795491342', '9368507886', NULL, NULL, 3, 0, 0, NULL, '2023-11-25', '14:45:17', '15:45:17', 1, '90', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 09:15:17', '2023-11-25 09:15:17'),
(325, 1700904189, 'shyam ahuja', '2901790240', '9719915999', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '14:53:09', '16:53:09', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 09:23:09', '2023-11-25 09:23:09'),
(326, 1700904432, 'gajanand bhaiya', '2900116991', '9322228174', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '14:57:12', '15:57:12', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 09:27:12', '2023-11-25 09:27:12'),
(327, 1700904530, 'gureeln singh', '2105459706', '7017322108', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '14:58:50', '16:58:50', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 09:28:50', '2023-11-25 09:28:50'),
(328, 1700904752, 'meenakumari', '2105506990', '7297872311', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '15:02:32', '16:02:32', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 09:32:32', '2023-11-25 09:32:32'),
(329, 1700905227, 'bijay banarjee', '2752872077', '9810669107', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '15:10:27', '18:10:27', 3, '90', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 09:40:27', '2023-11-25 09:40:27'),
(330, 1700905405, 'vinod', '428800606200', '9495167707', NULL, NULL, 2, 1, 0, NULL, '2023-11-25', '15:13:25', '16:13:25', 1, '80', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 09:43:26', '2023-11-25 09:43:25'),
(331, 1700905510, 'garima', '2405618788', '8168493496', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '15:15:10', '16:15:10', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 09:45:10', '2023-11-25 09:45:10'),
(332, 1700906178, 's kuki', '2901937979', '6909367536', NULL, NULL, 7, 0, 0, NULL, '2023-11-25', '15:26:18', '17:26:18', 2, '420', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 09:56:18', '2023-11-25 09:56:18'),
(333, 1700906223, 'ashish', '2205603807', '9711987169', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '15:27:03', '16:27:03', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 09:57:03', '2023-11-25 09:57:03'),
(334, 1700906411, 'jiarun eslam', '2302232990', '8650790344', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '15:30:11', '16:30:11', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:00:11', '2023-11-25 10:00:11'),
(335, 1700907195, 'jay kumar tiwari', '2304812817', '9411361877', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '15:43:15', '16:43:15', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:13:16', '2023-11-25 10:13:15'),
(336, 1700907327, 'yashwant singh', '2852884957', '9794210822', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '15:45:27', '16:45:27', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:15:27', '2023-11-25 10:15:27'),
(337, 1700907485, 'dhuruv pal', '2633874615', '9760613442', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '15:48:05', '16:48:05', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:18:05', '2023-11-25 10:18:05'),
(338, 1700907978, 'a g k naidu', '2404110792', '7989674713', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '15:56:18', '16:56:18', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:26:18', '2023-11-25 10:26:18'),
(339, 1700908050, 'j sen', '2749178337', '9458805295', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '15:57:30', '16:57:30', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:27:30', '2023-11-25 10:27:30'),
(340, 1700908141, 'ekrar', '2204553307', '6005122166', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '15:59:01', '17:59:01', 2, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:29:01', '2023-11-25 10:29:01'),
(341, 1700908288, 'shiv baran singh', '2750181217', '9919976397', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '16:01:28', '18:01:28', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:31:28', '2023-11-25 10:31:28'),
(342, 1700908447, 'ram kishan', '2200183812', '9675490173', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '16:04:07', '17:04:07', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:34:07', '2023-11-25 10:34:07'),
(343, 1700908711, 'arun khanna', '2901228407', '9811177230', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '16:08:31', '17:08:31', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:38:31', '2023-11-25 10:38:31'),
(344, 1700908803, 'priyanshi', '2901829209', '8303744193', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '16:10:03', '17:10:03', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:40:03', '2023-11-25 10:40:03'),
(345, 1700909198, 'r k', '2104557622', '8383927196', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '16:16:38', '17:16:38', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:46:38', '2023-11-25 10:46:38'),
(346, 1700909406, 'r s madal', '2632921568', '9968292599', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '16:20:06', '17:20:06', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:50:06', '2023-11-25 10:50:06'),
(347, 1700909466, 'jiarun eshlam', '2302232990', '8650790344', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '16:21:06', '17:21:06', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:51:06', '2023-11-25 10:51:06'),
(348, 1700909663, 'vinod', '2305117577', '9648225345', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '16:24:23', '17:24:23', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:54:23', '2023-11-25 10:54:23'),
(349, 1700909777, 'vishu', '2633642253', '9906175274', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '16:26:17', '18:26:17', 2, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 10:56:17', '2023-11-25 10:56:17'),
(350, 1700910031, 'rekha bhatnagar', '2202729625', '9898824560', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '16:30:31', '17:30:31', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:00:31', '2023-11-25 11:00:31'),
(351, 1700910319, 'ritik', '2402968418', '7017430145', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '16:35:19', '17:35:19', 1, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:05:20', '2023-11-25 11:05:19'),
(352, 1700910457, 'bijay banarjee', '2752872077', '9810669107', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '16:37:37', '17:37:37', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:07:37', '2023-11-25 11:07:37'),
(353, 1700910523, 'dhiraj joshi', '2752743493', '7060253051', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '16:38:43', '18:38:43', 2, '60', 2, NULL, 'B', 0, 0, 5, NULL, 1, 5, '2023-11-25 13:15:03', '2023-11-25 11:08:43', '2023-11-25 11:08:43'),
(354, 1700910601, 'dhiraj joshi', '2752743493', '7060253051', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '16:40:01', '17:40:01', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:10:01', '2023-11-25 11:10:01'),
(355, 1700910667, 'divya', '2405561786', '9886578068', NULL, NULL, 4, 0, 0, NULL, '2023-11-25', '16:41:07', '17:41:07', 1, '120', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:11:07', '2023-11-25 11:11:07'),
(356, 1700910731, 'abhisek', '2633474047', '9508301950', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '16:42:11', '18:42:11', 2, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:12:11', '2023-11-25 11:12:11'),
(357, 1700910817, 'neeraj kumar singh', '2402705710', '7767819193', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '16:43:37', '17:43:37', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:13:37', '2023-11-25 11:13:37'),
(358, 1700910891, 'meenal', '2852638846', '9818447699', NULL, NULL, 2, 1, 0, NULL, '2023-11-25', '16:44:51', '17:44:51', 1, '80', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:14:51', '2023-11-25 11:14:51'),
(359, 1700911320, 'dr shayam', '2529707742', '9422908203', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '16:52:00', '17:52:00', 1, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:22:00', '2023-11-25 11:22:00'),
(360, 1700911443, 'ustao', '2105459532', '704262306', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '16:54:03', '17:54:03', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:24:03', '2023-11-25 11:24:03'),
(361, 1700911569, 'shivanshu', '2633832678', '9027566525', NULL, NULL, 4, 0, 0, NULL, '2023-11-25', '16:56:09', '17:56:09', 1, '120', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:26:09', '2023-11-25 11:26:09'),
(362, 1700912056, 'ankush kumar', '2852790395', '7488374833', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '17:04:16', '18:04:16', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:34:16', '2023-11-25 11:34:16'),
(363, 1700912555, 'arif husen', '2205559467', '7062373990', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '17:12:35', '18:12:35', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:42:35', '2023-11-25 11:42:35'),
(364, 1700912791, 'priyanshi', '290182909', '8303744193', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '17:16:31', '18:16:31', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:46:32', '2023-11-25 11:46:31'),
(365, 1700912901, 'sahil sharma', '2532173154', '7889733429', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '17:18:21', '18:18:21', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:48:21', '2023-11-25 11:48:21'),
(366, 1700913001, 'anuj', '2901708236', '9315367024', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '17:20:01', '18:20:01', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:50:01', '2023-11-25 11:50:01'),
(367, 1700913181, 'lokesh', '2852851264', '9034063070', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '17:23:01', '18:23:01', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 11:53:02', '2023-11-25 11:53:02'),
(368, 1700913889, 'k c dubey', '2633897442', '9696711788', NULL, NULL, 4, 0, 0, NULL, '2023-11-25', '17:34:49', '18:34:49', 1, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 12:04:49', '2023-11-25 12:04:49'),
(369, 1700913980, 'ram kishan', '2200183812', '9675490173', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '17:36:20', '18:36:20', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 12:06:20', '2023-11-25 12:06:20'),
(370, 1700914694, 'rekha', '2202729625', '9898824560', NULL, NULL, 1, 1, 0, NULL, '2023-11-25', '17:48:14', '18:48:14', 1, '50', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 12:18:14', '2023-11-25 12:18:14'),
(371, 1700914941, 'shaurya', '2405676960', '7079871221', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '17:52:21', '23:52:21', 6, '360', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 12:22:21', '2023-11-25 12:22:21'),
(372, 1700915090, 'arun', '2901228407', '9811177230', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '17:54:50', '18:54:50', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 12:24:50', '2023-11-25 12:24:50'),
(373, 1700915421, 'neelam jyoti', '2405294918', '9855592085', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '18:00:21', '19:00:21', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 12:30:21', '2023-11-25 12:30:21'),
(374, 1700918581, 'nihal bai meena', '2405506088', '7742523266', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '18:53:01', '21:53:01', 3, '90', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 13:23:02', '2023-11-25 13:23:01'),
(375, 1700919780, 'shiv baran singh', '275018217', '9919976397', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '19:13:00', '20:13:00', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 13:43:00', '2023-11-25 13:43:00'),
(376, 1700920582, 'aman', '2633073111', '9953534854', NULL, NULL, 4, 0, 0, NULL, '2023-11-25', '19:26:22', '20:26:22', 1, '120', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 13:56:22', '2023-11-25 13:56:22'),
(377, 1700920982, 'abhisek', '2633399976', '9984069193', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '19:33:02', '23:33:02', 4, '120', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 14:03:02', '2023-11-25 14:03:02'),
(378, 1700921777, 'rajat', '2105676970', '8865009897', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '19:46:17', '21:46:17', 2, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 14:16:17', '2023-11-25 14:16:17'),
(379, 1700921842, 'anirudh', '2303096420', '8574545899', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '19:47:22', '20:47:22', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 14:17:22', '2023-11-25 14:17:22'),
(380, 1700921927, 'saurav', '2301256373', '7892561238', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '19:48:47', '21:48:47', 2, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 14:18:48', '2023-11-25 14:18:47'),
(381, 1700922104, 'manpreet', '2852628481', '9478236689', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '19:51:44', '20:51:44', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 14:21:44', '2023-11-25 14:21:44'),
(382, 1700922314, 'nihkil rawat', '2105694143', '9719155849', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '19:55:14', '21:55:14', 2, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 14:25:14', '2023-11-25 14:25:14'),
(383, 1700922452, 'sajan', '575204726851', '8941009110', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '19:57:32', '20:57:32', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 14:27:32', '2023-11-25 14:27:32'),
(384, 1700922501, 'balmendra kumar', '312476169716', '9855199466', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '19:58:21', '20:58:21', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 14:28:21', '2023-11-25 14:28:21'),
(385, 1700922831, 't rama', '2105685684', '9851275862', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '20:03:51', '21:03:51', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 14:33:51', '2023-11-25 14:33:51'),
(386, 1700922900, 'arun kumar', '2633013571', '9780362153', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '20:05:00', '23:05:00', 3, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 14:35:00', '2023-11-25 14:35:00'),
(387, 1700922970, 'arun kumar', '2633013571', '9780362153', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '20:06:10', '22:06:10', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 14:36:10', '2023-11-25 14:36:10'),
(388, 1700923349, 'shruti', '2901022791', '8289193088', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '20:12:29', '23:12:29', 3, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 14:42:29', '2023-11-25 14:42:29'),
(389, 1700923468, 'mukund kumar', '6128374598', '8434897730', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '20:14:28', '21:14:28', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 14:44:28', '2023-11-25 14:44:28'),
(390, 1700923617, 'k c dubey', '2633897442', '9696711788', NULL, NULL, 4, 0, 0, NULL, '2023-11-25', '20:16:57', '22:16:57', 2, '240', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 14:46:58', '2023-11-25 14:46:57'),
(391, 1700924231, 'shivam', '2532693455', '9425953502', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '20:27:11', '23:27:11', 3, '180', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 14:57:11', '2023-11-25 14:57:11'),
(392, 1700924421, 'ponedu', '2165685231', '700824387', NULL, NULL, 3, 0, 0, NULL, '2023-11-25', '20:30:21', '21:30:21', 1, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 15:00:21', '2023-11-25 15:00:21'),
(393, 1700925131, 'suraj', '2752815658', '7351575353', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '20:42:11', '23:42:11', 3, '90', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 15:12:11', '2023-11-25 15:12:11'),
(394, 1700925626, 'guru raj', '746126772623', '6364693718', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '20:50:26', '21:50:26', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 15:20:26', '2023-11-25 15:20:26'),
(395, 1700925797, 'mahendra prashad', '2852020715', '7004062799', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '20:53:17', '21:53:17', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 15:23:17', '2023-11-25 15:23:17'),
(396, 1700926111, 'skand', '2901827207', '9411178030', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '20:58:31', '22:58:31', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 15:28:31', '2023-11-25 15:28:31'),
(397, 1700926620, 'arti aggrwal', '2852822802', '7033166597', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '21:07:00', '22:07:00', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 15:37:00', '2023-11-25 15:37:00'),
(398, 1700926784, 'pawan', '2752439126', '7017469717', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '21:09:44', '00:09:44', 3, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 15:39:44', '2023-11-25 15:39:44'),
(399, 1700926899, 'gansh', '2901884469', '9205063362', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '21:11:39', '23:11:39', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 15:41:39', '2023-11-25 15:41:39'),
(400, 1700927349, 'medha', '2901181148', '9923694219', NULL, NULL, 2, 2, 0, NULL, '2023-11-25', '21:19:09', '23:19:09', 2, '200', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 15:49:10', '2023-11-25 15:49:10'),
(401, 1700927416, 'manish', '2631496492', '87895853709', NULL, NULL, 2, 3, 0, NULL, '2023-11-25', '21:20:16', '22:20:16', 1, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 15:50:16', '2023-11-25 15:50:16'),
(402, 1700927589, 'saurav', '360600697369', '9569777393', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '21:23:09', '22:23:09', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 15:53:09', '2023-11-25 15:53:09'),
(403, 1700927660, 'umesh sharma', '2846285638', '9258369473', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '21:24:20', '22:24:20', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 15:54:20', '2023-11-25 15:54:20'),
(404, 1700927859, 'uman sexsena', '2305701221', '8791100681', NULL, NULL, 2, 1, 0, NULL, '2023-11-25', '21:27:39', '23:27:39', 2, '160', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 15:57:39', '2023-11-25 15:57:39'),
(405, 1700928106, 'rittik chakborty', '2746207343', '7864084370', NULL, NULL, 3, 0, 0, NULL, '2023-11-25', '21:31:46', '00:31:46', 3, '270', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 16:01:46', '2023-11-25 16:01:46'),
(406, 1700928306, 'akansha', '3203587513', '8171882195', NULL, NULL, 2, 1, 0, NULL, '2023-11-25', '21:35:06', '23:35:06', 2, '160', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 16:05:06', '2023-11-25 16:05:06'),
(407, 1700928388, 'neha pandey', '2633901045', '7905048064', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '21:36:28', '22:36:28', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 16:06:28', '2023-11-25 16:06:28'),
(408, 1700928453, 'bhavna', '2305340337', '7733882394', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '21:37:33', '23:37:33', 2, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 16:07:33', '2023-11-25 16:07:33'),
(409, 1700928508, 'deepesh mheta', '2901037426', '9690518996', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '21:38:28', '00:38:28', 3, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-25 16:08:28', '2023-11-25 16:08:28'),
(410, 1700930117, 'KEE HAZRA', '2465335668', '8250345032', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '22:05:17', '23:05:17', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-25 16:35:17', '2023-11-25 16:35:17'),
(411, 1700930179, 'MOHIT', '2633354811', '9027488462', NULL, NULL, 2, 0, 0, NULL, '2023-11-25', '22:06:19', '00:06:19', 2, '120', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-25 16:36:19', '2023-11-25 16:36:19'),
(412, 1700930220, 'VISHNU', NULL, '8192967676', NULL, NULL, 0, 0, 1, NULL, '2023-11-25', '22:07:00', '23:07:00', 1, '0', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-25 16:37:00', '2023-11-25 16:37:00'),
(413, 1700930386, 'MITHUN', '2901827779', '9895454550', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '22:09:46', '00:09:46', 2, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-25 16:39:46', '2023-11-25 16:39:46'),
(414, 1700931903, 'KAMAL KANT', '2633908674', '7303340545', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '22:35:03', '23:35:03', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-25 17:05:03', '2023-11-25 17:05:03'),
(415, 1700932316, 'NAVENDRA SINGH', '2305340337', '7733882394', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '22:41:56', '00:41:56', 2, '60', 2, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-25 17:11:56', '2023-11-25 17:11:56'),
(416, 1700932552, 'SUBHASH CHAND', '2305668074', '7351961273', NULL, NULL, 1, 0, 0, NULL, '2023-11-25', '22:45:52', '23:45:52', 1, '30', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-25 17:15:53', '2023-11-25 17:15:53'),
(417, 1700932628, 'ATUL GUPTA', '2633623216', '9871230321', NULL, NULL, 3, 0, 0, NULL, '2023-11-25', '22:47:08', '23:47:08', 1, '90', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-25 17:17:08', '2023-11-25 17:17:08'),
(419, 1701038796, 'sunita', '8411107205', '9999763056', NULL, NULL, 2, 0, 0, NULL, '2023-11-26', '04:16:36', '05:16:36', 1, '60', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-11-26 22:46:37', '2023-11-26 22:46:37'),
(420, 1701050036, 'rahul dave', '2847008182', '9979941930', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '07:23:56', '08:23:56', 1, '60', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 01:53:57', '2023-11-27 01:53:56'),
(421, 1701050107, 'arun dutta', '2466171319', '7044545295', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '07:25:07', '08:25:07', 1, '60', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 01:55:07', '2023-11-27 01:55:07'),
(422, 1701051379, 'hk mishra', '2533951050', '8009029116', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '07:46:19', '09:46:19', 2, '60', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 02:16:19', '2023-11-27 02:16:19'),
(423, 1701051474, 'kanti chand ji', '544530508040', '9968071645', NULL, NULL, 5, 0, 0, NULL, '2023-11-27', '07:47:54', '08:47:54', 1, '150', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 02:17:54', '2023-11-27 02:17:54'),
(424, 1701052257, 'virendra kumar', '944624939638', '9653272727', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '08:00:57', '09:00:57', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 02:30:57', '2023-11-27 02:30:57'),
(425, 1701052736, 'sarabjit', '2205725962', '8617789480', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '08:08:56', '12:08:56', 4, '240', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 02:38:56', '2023-11-27 02:38:56'),
(426, 1701055815, 'anil jha', '2528303961', '9810862050', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '09:00:15', '13:00:15', 4, '360', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 03:30:15', '2023-11-27 03:30:15'),
(427, 1701058708, 'udit ji', '784492420471', '9654618860', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '09:48:28', '10:48:28', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 04:18:28', '2023-11-27 04:18:28'),
(428, 1701059998, 'krishna ji', '2534032044', '9027245616', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '10:09:58', '11:09:58', 1, '30', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 04:39:59', '2023-11-27 04:39:59'),
(429, 1701060733, 'deepak ji', '2528037734', '9811460478', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '10:22:00', '12:22:00', 2, '60', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 06:06:12', '2023-11-27 04:52:13'),
(430, 1701061317, 'nikhil', '762667514019', '9717981176', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '10:31:57', '11:31:57', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 05:01:57', '2023-11-27 05:01:57'),
(431, 1701063166, 'muskan', '8178352793', '762667514019', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '11:02:46', '12:02:46', 1, '60', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 05:32:46', '2023-11-27 05:32:46'),
(432, 1701063691, 'salil', '2752207161', '9335232852', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '11:11:31', '12:11:31', 1, '60', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 05:41:31', '2023-11-27 05:41:31'),
(433, 1701063839, 'avinash ji', '2752870849', '9268941880', NULL, NULL, 4, 0, 0, NULL, '2023-11-27', '11:13:59', '16:13:59', 5, '600', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 05:43:59', '2023-11-27 05:43:59'),
(434, 1701064405, 'aman', NULL, '9878999816', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '11:23:25', '13:23:25', 2, '60', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 05:53:25', '2023-11-27 05:53:25'),
(435, 1701065411, 'parvesh', '2531703263', '9810641214', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '11:40:11', '12:40:11', 1, '60', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 06:10:11', '2023-11-27 06:10:11'),
(436, 1701065722, 'jai kumar ji', '2852352335', '9882746471', NULL, NULL, 4, 1, 0, NULL, '2023-11-27', '11:45:22', '12:45:22', 1, '140', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 06:15:22', '2023-11-27 06:15:22'),
(437, 1701065827, 'sanjay ji', '2405775521', '8358940851', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '11:47:07', '12:47:07', 1, '90', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 06:17:07', '2023-11-27 06:17:07'),
(438, 1701065896, 'reshu ji', '2105159225', '7011147153', NULL, NULL, 4, 0, 0, NULL, '2023-11-27', '11:48:16', '12:48:16', 1, '120', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 06:18:16', '2023-11-27 06:18:16'),
(439, 1701066028, 'gayatri ji', '2405779194', '7891801020', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '11:50:28', '12:50:28', 1, '60', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 06:20:28', '2023-11-27 06:20:28'),
(440, 1701066644, 'SUSHIL DAS', '891413448', '9890873021', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '12:00:44', '13:00:44', 1, '60', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-27 06:30:44', '2023-11-27 06:30:44'),
(441, 1701066909, 'harish chandra', '2204898909', '8899241903', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '12:05:09', '13:05:09', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 06:35:10', '2023-11-27 06:35:09'),
(442, 1701067032, 'atul agarwal', '2750250177', '9899743888', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '12:07:12', '15:07:12', 3, '90', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 06:37:12', '2023-11-27 06:37:12'),
(443, 1701067446, 'sachin sharma', '2304690485', '9044060208', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '12:14:06', '15:14:06', 3, '90', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 06:44:06', '2023-11-27 06:44:06'),
(444, 1701067937, 'RATNESH', '2633986755', '8009935396', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '12:22:17', '14:22:17', 2, '60', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 06:52:17', '2023-11-27 06:52:17'),
(445, 1701068319, 'SANJAY', '2500014860', '9041045920', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '12:28:39', '13:28:39', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 06:58:39', '2023-11-27 06:58:39'),
(446, 1701068783, 'VINOD', '2165441895', '9312126644', NULL, NULL, 2, 0, 1, NULL, '2023-11-27', '12:36:00', '15:36:00', 3, '180', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 07:06:58', '2023-11-27 07:06:23'),
(447, 1701069501, 'SOBHA CHANDRA', '2751107427', '7088301522', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '12:48:21', '14:48:21', 2, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 07:18:21', '2023-11-27 07:18:21'),
(448, 1701069780, 'TANISHQ BANSAL', '2534043930', '9803340033', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '12:53:00', '13:53:00', 1, '0', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 07:23:01', '2023-11-27 07:23:00'),
(449, 1701069906, 'SACHIN GUPTA', '2534013033', '9855758490', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '12:55:06', '13:55:06', 1, '60', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 07:25:07', '2023-11-27 07:25:06'),
(450, 1701070009, 'RAGHUVEER SINGH', '2901936430', '9458629415', NULL, NULL, 2, 0, 1, NULL, '2023-11-27', '12:56:49', '13:56:49', 1, '60', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 07:26:49', '2023-11-27 07:26:49'),
(451, 1701070785, 'HARISH CHANDRA', '2204898909', '8899241903', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '13:09:45', '14:09:45', 1, '30', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 07:39:45', '2023-11-27 07:39:45'),
(452, 1701071332, 'AMAN', '2405784964', '9878999816', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '13:18:52', '14:18:52', 1, '30', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 07:48:53', '2023-11-27 07:48:52'),
(453, 1701071426, 'A K MISHRA', '2105247600', '7663807990', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '13:20:26', '14:20:26', 1, '30', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 07:50:26', '2023-11-27 07:50:26'),
(454, 1701071868, 'KRISHAN KUMAR', '2533826387', '9359164490', NULL, NULL, 2, 1, 1, NULL, '2023-11-27', '13:27:48', '14:27:48', 1, '80', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 07:57:48', '2023-11-27 07:57:48');
INSERT INTO `sitting_entries` (`id`, `unique_id`, `name`, `pnr_uid`, `mobile_no`, `train_no`, `address`, `no_of_adults`, `no_of_children`, `no_of_baby_staff`, `seat_no`, `date`, `check_in`, `check_out`, `hours_occ`, `paid_amount`, `pay_type`, `remarks`, `shift`, `status`, `checkout_status`, `added_by`, `client_id`, `deleted`, `delete_by`, `delete_time`, `updated_at`, `created_at`) VALUES
(455, 1701073599, 'RAGHUVEER SINGH', '2901936430', '9458629415', NULL, NULL, 2, 0, 1, NULL, '2023-11-27', '13:56:39', '15:56:39', 2, '120', 2, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 08:26:39', '2023-11-27 08:26:39'),
(456, 1701073794, 'RAM PRAKASH', '2101141050', '9412845489', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '13:59:54', '14:59:54', 1, '30', 1, NULL, 'A', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 08:29:55', '2023-11-27 08:29:54'),
(457, 1701074049, 'praveen', '2400891524', '9853049295', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '14:04:09', '15:04:09', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 08:34:09', '2023-11-27 08:34:09'),
(458, 1701074192, 'TANVI', '2852919587', '7388322107', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '14:06:32', '15:06:32', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 08:36:32', '2023-11-27 08:36:32'),
(459, 1701074363, 'yash kumar', '2205156143', '8604432092', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '14:09:23', '15:09:23', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 08:39:23', '2023-11-27 08:39:23'),
(460, 1701074454, 'R K SHIVPURI', '240399231', '9624703030', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '14:10:54', '17:10:54', 3, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 08:40:54', '2023-11-27 08:40:54'),
(461, 1701074573, 'ASHVANI GULATI', '25335994233', '9816076198', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '14:12:53', '17:12:53', 3, '180', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 08:42:53', '2023-11-27 08:42:53'),
(462, 1701074660, 'MOHIT', '2534001219', '8400196662', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '14:14:20', '15:14:20', 1, '30', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 08:44:20', '2023-11-27 08:44:20'),
(463, 1701076683, 'ANIL BANSAL', '2404614496', '9897712243', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '14:48:03', '15:48:03', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 09:18:03', '2023-11-27 09:18:03'),
(464, 1701076814, 'DEVJAYTI BHATACHARY', '2852353422', '8910679081', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '14:50:14', '17:50:14', 3, '180', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 09:20:14', '2023-11-27 09:20:14'),
(465, 1701076899, 'SANJEEV BAJPAI', '2100900160', '7060044773', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '14:51:39', '15:51:39', 1, '90', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 09:21:39', '2023-11-27 09:21:39'),
(466, 1701077065, 'JYOTI SHARMA', '2751764466', '9814740638', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '14:54:00', '15:54:00', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 09:24:48', '2023-11-27 09:24:25'),
(467, 1701077239, 'NARENDRA KUMAR', '27517764466', '9653272727', NULL, NULL, 9, 0, 0, NULL, '2023-11-27', '14:57:19', '15:57:19', 1, '270', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 09:27:19', '2023-11-27 09:27:19'),
(468, 1701077314, 'ASHUTOSH KUMAR', '14450', '9140083517', NULL, NULL, 0, 0, 1, NULL, '2023-11-27', '14:58:34', '15:58:34', 1, '0', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 09:28:34', '2023-11-27 09:28:34'),
(469, 1701077384, 'AKHILESH SRIVATSAV', '6576980881', '8953072262', NULL, NULL, 0, 0, 1, NULL, '2023-11-27', '14:59:44', '15:59:44', 1, '0', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 09:29:44', '2023-11-27 09:29:44'),
(470, 1701077438, 'VINIT KUMAR', '6523231182', '9410680766', NULL, NULL, 0, 0, 1, NULL, '2023-11-27', '15:00:38', '16:00:38', 1, '0', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 09:30:39', '2023-11-27 09:30:38'),
(471, 1701077522, 'VARUN PRATAP SINGH', '2204099454', '9622020240', NULL, NULL, 2, 0, 1, NULL, '2023-11-27', '15:02:02', '17:02:02', 2, '120', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 09:32:02', '2023-11-27 09:32:02'),
(472, 1701077771, 'MADHU', '8858362469', '9826272770', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '15:06:11', '17:06:11', 2, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 09:36:11', '2023-11-27 09:36:11'),
(473, 1701078162, 'VISHAL SINGH', '2751713235', '9557906218', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '15:12:42', '16:12:42', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 09:42:42', '2023-11-27 09:42:42'),
(474, 1701079187, 'LOVEKUSH', '2405392562', '8860867256', NULL, NULL, 2, 0, 1, NULL, '2023-11-27', '15:29:47', '17:29:47', 2, '120', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 09:59:47', '2023-11-27 09:59:47'),
(475, 1701079274, 'KIRTI KISHOR', '2304841249', '9871091564', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '15:31:14', '17:31:14', 2, '120', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 10:01:14', '2023-11-27 10:01:14'),
(476, 1701080319, 'JIGNESH', '2105268079', '9911428633', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '15:48:39', '17:48:39', 2, '120', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 10:18:39', '2023-11-27 10:18:39'),
(477, 1701080681, 'MOHIT', '2900860898', '9911172158', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '15:54:41', '17:54:41', 2, '120', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 10:24:41', '2023-11-27 10:24:41'),
(478, 1701080880, 'LD RAO', '2305433315', '9643672082', NULL, NULL, 2, 0, 2, NULL, '2023-11-27', '15:58:00', '16:58:00', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 10:28:00', '2023-11-27 10:28:00'),
(479, 1701081000, 'SANJEEV', '2751445825', '8745833600', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '16:00:00', '18:00:00', 2, '120', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 10:30:01', '2023-11-27 10:30:00'),
(480, 1701081177, 'AMARDEEP SINGH', '6726696419', '9415505861', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '16:02:57', '18:02:57', 2, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 10:32:58', '2023-11-27 10:32:57'),
(481, 1701081576, 'RAGHAV', '2105772044', '9015643209', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '16:09:36', '18:09:36', 2, '180', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 10:39:36', '2023-11-27 10:39:36'),
(482, 1701081730, 'RAJEEV DIXIT', '2632684493', '7838633355', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '16:12:10', '18:12:10', 2, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 10:42:10', '2023-11-27 10:42:10'),
(483, 1701081810, 'SWET', '2900249920', '9821757717', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '16:13:30', '17:13:30', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 10:43:31', '2023-11-27 10:43:31'),
(484, 1701082052, 'SHASHI', '2852315438', '9818281115', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '16:17:32', '17:17:32', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 10:47:32', '2023-11-27 10:47:32'),
(485, 1701082106, 'YOGESH SHARMA', '2405320491', '8299423380', NULL, NULL, 2, 0, 1, NULL, '2023-11-27', '16:18:26', '17:18:26', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 10:48:27', '2023-11-27 10:48:27'),
(486, 1701082172, 'PAWAN JAIN', '8310680035', '9756727181', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '16:19:32', '18:19:32', 2, '180', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 10:49:32', '2023-11-27 10:49:32'),
(487, 1701082758, 'CHANDAN TIWARI', '2405773764', '7355664916', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '16:29:18', '19:29:18', 3, '90', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 10:59:18', '2023-11-27 10:59:18'),
(488, 1701083406, 'DR O N TIWARI', '2851814233', '9862564743', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '16:40:06', '17:40:06', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:10:06', '2023-11-27 11:10:06'),
(489, 1701083497, 'R P SINGHANIYA', '2900649242', '9818894360', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '16:41:37', '17:41:37', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:11:37', '2023-11-27 11:11:37'),
(490, 1701083573, 'R K NAGPAL', '2105771035', '9910820830', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '16:42:53', '17:42:53', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:12:54', '2023-11-27 11:12:53'),
(491, 1701083634, 'SUNITA', '2752500229', '9435112546', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '16:43:54', '17:43:54', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:13:54', '2023-11-27 11:13:54'),
(492, 1701083717, 'KUSHAL', '2205474738', '9794752055', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '16:45:17', '17:45:17', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:15:17', '2023-11-27 11:15:17'),
(493, 1701083858, 'KANAL', '2852918617', '9953457414', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '16:47:38', '17:47:38', 1, '0', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:17:38', '2023-11-27 11:17:38'),
(494, 1701083960, 'AJAY JAIN', '2205640749', '9958646688', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '16:49:20', '17:49:20', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:19:20', '2023-11-27 11:19:20'),
(495, 1701084038, 'RAJEEV KUMAR', '2846541778', '9818454332', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '16:50:38', '17:50:38', 1, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:20:38', '2023-11-27 11:20:38'),
(496, 1701084428, 'PARDEEP', '2634004958', '9198195545', NULL, NULL, 3, 1, 0, NULL, '2023-11-27', '16:57:08', '19:57:08', 3, '330', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:27:08', '2023-11-27 11:27:08'),
(497, 1701084484, 'VAID KUMARI', '2627491385', '9797688677', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '16:58:04', '17:58:04', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:28:04', '2023-11-27 11:28:04'),
(498, 1701084616, 'LD RAO', '2305433315', '9643672082', NULL, NULL, 2, 0, 2, NULL, '2023-11-27', '17:00:16', '18:00:16', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:30:16', '2023-11-27 11:30:16'),
(499, 1701084683, 'JAGDISH', '2403837344', '9717511724', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '17:01:23', '18:01:23', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:31:24', '2023-11-27 11:31:23'),
(500, 1701084773, 'SANTOSH SINGH', '2532159489', '9811238740', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '17:02:53', '18:02:53', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:32:53', '2023-11-27 11:32:53'),
(501, 1701084849, 'SURESH CHAND', '2302859074', '8218486250', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '17:04:09', '18:04:09', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:34:09', '2023-11-27 11:34:09'),
(502, 1701085062, 'SHARMILA SAHU', '2901190977', '8700748486', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '17:07:42', '18:07:42', 1, '90', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:37:42', '2023-11-27 11:37:42'),
(503, 1701085112, 'VIVEKANAND', '2752760060', '9808913076', NULL, NULL, 4, 0, 0, NULL, '2023-11-27', '17:08:32', '18:08:32', 1, '120', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:38:32', '2023-11-27 11:38:32'),
(504, 1701085220, 'MINAKSHI', '2846541778', '9818454332', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '17:10:20', '18:10:20', 1, '0', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:40:21', '2023-11-27 11:40:20'),
(505, 1701085280, 'P K TIWARI', '29002035259', '9413772391', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '17:11:20', '18:11:20', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:41:20', '2023-11-27 11:41:20'),
(506, 1701085445, 'AIYANA', '2902083840', '9915784542', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '17:14:05', '18:14:05', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:44:06', '2023-11-27 11:44:05'),
(507, 1701085695, 'AJAY', '2851577907', '9506671111', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '17:18:15', '18:18:15', 1, '90', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:48:16', '2023-11-27 11:48:15'),
(508, 1701085960, 'RENU SURI', '2203799514', '9899184843', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '17:22:40', '18:22:40', 1, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 11:52:40', '2023-11-27 11:52:40'),
(509, 1701086591, 'pinki ray', '226587221', '7856889899', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '17:33:11', '21:33:11', 4, '240', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 12:03:12', '2023-11-27 12:03:11'),
(510, 1701086758, 'neeraj', '2852816499', '9419199857', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '17:35:58', '18:35:58', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 12:05:58', '2023-11-27 12:05:58'),
(511, 1701087819, 'rahul kumar', '2300246850', '9018176720', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '17:53:39', '18:53:39', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 12:23:39', '2023-11-27 12:23:39'),
(512, 1701088031, 'satish kumar', '656834640693', '9213358260', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '17:57:11', '18:57:11', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 12:27:11', '2023-11-27 12:27:11'),
(513, 1701090548, 'ragav', '25311035991', '9815667056', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '18:39:08', '19:39:08', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 13:09:09', '2023-11-27 13:09:08'),
(514, 1701090733, 'gyanendra kumar', '2852838364', '9936459217', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '18:42:13', '21:42:13', 3, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 13:12:13', '2023-11-27 13:12:13'),
(515, 1701091572, 'yatendra', '2205846440', '9636912182', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '18:56:12', '19:56:12', 1, '30', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 13:26:12', '2023-11-27 13:26:12'),
(516, 1701091687, 'tanu', '2404284851', '7982565393', NULL, NULL, 4, 0, 0, NULL, '2023-11-27', '18:58:07', '19:58:07', 1, '120', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 13:28:07', '2023-11-27 13:28:07'),
(517, 1701091777, 'rohit', '2205759965', '7355716681', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '18:59:37', '19:59:37', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 13:29:37', '2023-11-27 13:29:37'),
(518, 1701092592, 'himani', '2534039662', '7053229935', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '19:13:12', '20:13:12', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 13:43:12', '2023-11-27 13:43:12'),
(519, 1701092743, 'r k aojha`', '2533857863', '8847412436', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '19:15:43', '20:15:43', 1, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 13:45:43', '2023-11-27 13:45:43'),
(520, 1701092830, 'narendra pratap', '252838364', '9499032617', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '19:17:10', '20:17:10', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 13:47:10', '2023-11-27 13:47:10'),
(521, 1701093143, 'karam jeet', '2305556827', '6284520366', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '19:22:23', '22:22:23', 3, '90', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 13:52:23', '2023-11-27 13:52:23'),
(522, 1701093305, 'aman gupta', '2305733946', '63959999909', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '19:25:05', '20:25:05', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 13:55:05', '2023-11-27 13:55:05'),
(523, 1701093370, 'nikhil', '24783211012658', '987054204', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '19:26:10', '20:26:10', 1, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 13:56:10', '2023-11-27 13:56:10'),
(524, 1701093684, 'rakesh', '2633423899', '8004462850', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '19:31:24', '22:31:24', 3, '180', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:01:24', '2023-11-27 14:01:24'),
(525, 1701093796, 'anuj', '2902044463', '9927364879', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '19:33:16', '20:33:16', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:03:16', '2023-11-27 14:03:16'),
(526, 1701093857, 'dibakar sharma', '2752919746', '7055208108', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '19:34:17', '20:34:17', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:04:17', '2023-11-27 14:04:17'),
(527, 1701094075, 'atma nand', '2634060644', '7761884259', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '19:37:55', '20:37:55', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:07:55', '2023-11-27 14:07:55'),
(528, 1701094142, 'anuj kumar', '2305775125', '6201605951', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '19:39:02', '20:39:02', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:09:02', '2023-11-27 14:09:02'),
(529, 1701094360, 'sanjay kumar singh', '26319776643', '6203276332', NULL, NULL, 10, 0, 0, NULL, '2023-11-27', '19:42:40', '20:42:40', 1, '300', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:12:41', '2023-11-27 14:12:40'),
(530, 1701094499, 'kirshan kumar singh', '2846389885', '8318742553', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '19:44:59', '20:44:59', 1, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:14:59', '2023-11-27 14:14:59'),
(531, 1701094649, 'amar deep singh', '2303574857', '9415505861', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '19:47:29', '20:47:29', 1, '30', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:17:29', '2023-11-27 14:17:29'),
(532, 1701094716, 'shruti', '2747864779', '9091847373', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '19:48:36', '22:48:36', 3, '270', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:18:36', '2023-11-27 14:18:36'),
(533, 1701094924, 'ravi prakash', '28486469367', '8417899980', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '19:52:04', '20:52:04', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:22:04', '2023-11-27 14:22:04'),
(534, 1701095118, 'anirudh yadav', '2105781752', '9839607112', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '19:55:18', '20:55:18', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:25:19', '2023-11-27 14:25:19'),
(535, 1701095203, 'arpit gupta', '28528371936', '7417414429', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '19:56:43', '23:56:43', 4, '120', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:26:43', '2023-11-27 14:26:43'),
(536, 1701095378, 'jyanedra', '2902032538', '9305136487', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '19:59:38', '20:59:38', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:29:38', '2023-11-27 14:29:38'),
(537, 1701095871, 'neeraj', '2202294420', '9536784499', NULL, NULL, 4, 0, 0, NULL, '2023-11-27', '20:07:51', '21:07:51', 1, '120', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:37:51', '2023-11-27 14:37:51'),
(538, 1701095964, 'suraj prakash', '2901219421', '9815460031', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '20:09:24', '21:09:24', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:39:24', '2023-11-27 14:39:24'),
(539, 1701096275, 'gurpreet', '2902032491', '9779007785', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '20:14:35', '21:14:35', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:44:35', '2023-11-27 14:44:35'),
(540, 1701096947, 'ashwani', '2901195707', '7905820581', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '20:25:47', '21:25:47', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 14:55:48', '2023-11-27 14:55:47'),
(541, 1701097548, 'ajay', NULL, '9781847966', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '20:35:48', '21:35:48', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:05:48', '2023-11-27 15:05:48'),
(542, 1701097681, 'umar palsingh', '2305782719', '8279747675', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '20:38:01', '21:38:01', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:08:01', '2023-11-27 15:08:01'),
(543, 1701097757, 'aman deep singh', '2303574857', '9415505861', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '20:39:17', '21:39:17', 1, '30', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:09:18', '2023-11-27 15:09:18'),
(544, 1701097842, 'harman', '2103855208', '7009830879', NULL, NULL, 5, 0, 0, NULL, '2023-11-27', '20:40:42', '21:40:42', 1, '150', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:10:42', '2023-11-27 15:10:42'),
(545, 1701097923, 'amit kumar singh', '23046724841', '8858348112', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '20:42:03', '21:42:03', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:12:03', '2023-11-27 15:12:03'),
(546, 1701098008, 'atma anad', '2634060644', '7761884259', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '20:43:28', '21:43:28', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:13:28', '2023-11-27 15:13:28'),
(547, 1701098065, 'sharang', '2751919008', '9420920657', NULL, NULL, 4, 0, 0, NULL, '2023-11-27', '20:44:25', '21:44:25', 1, '120', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:14:25', '2023-11-27 15:14:25'),
(548, 1701098141, 'kartik sharma', '2403872798', '6230752770', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '20:45:41', '21:45:41', 1, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:15:41', '2023-11-27 15:15:41'),
(549, 1701098269, 'meena vishvash', '2534069054', '9424521112', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '20:47:49', '23:47:49', 3, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:17:49', '2023-11-27 15:17:49'),
(550, 1701098396, 'dilip lahoti', '2202463552', '9830038387', NULL, NULL, 4, 0, 0, NULL, '2023-11-27', '20:49:56', '23:49:56', 3, '360', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:19:56', '2023-11-27 15:19:56'),
(551, 1701098496, 'ashutosh upadheya', '2634001058', '9616743141', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '20:51:36', '23:51:36', 3, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:21:37', '2023-11-27 15:21:36'),
(552, 1701098581, 'n k mhendro', '2305772274', '9814356001', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '20:53:01', '21:53:01', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:23:01', '2023-11-27 15:23:01'),
(553, 1701098663, 'sanchit kr roy', '2305784926', '9410982594', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '20:54:23', '21:54:23', 1, '90', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:24:23', '2023-11-27 15:24:23'),
(554, 1701098746, 'dhuruv', '2105392027', '8630559396', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '20:55:46', '21:55:46', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:25:46', '2023-11-27 15:25:46'),
(555, 1701099063, 'vagesh kumar', '2630853876', '9082821052', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '21:01:03', '23:01:03', 2, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:31:03', '2023-11-27 15:31:03'),
(556, 1701099154, 'priya', NULL, '8360734920', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '21:02:34', '22:02:34', 1, '30', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:32:34', '2023-11-27 15:32:34'),
(557, 1701099652, 'arinam bhatt acharya', '2633747322', '8509136380', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '21:10:52', '23:10:52', 2, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:40:52', '2023-11-27 15:40:52'),
(558, 1701099725, 'narendra pratap', '2852838364', '9455032617', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '21:12:05', '22:12:05', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:42:06', '2023-11-27 15:42:06'),
(559, 1701099784, 'virendra mishra', '2846389885', '8318742553', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '21:13:04', '22:13:04', 1, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:43:05', '2023-11-27 15:43:04'),
(560, 1701099844, 'shudarshan', '2751267125', '9990400411', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '21:14:04', '23:14:04', 2, '120', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:44:04', '2023-11-27 15:44:04'),
(561, 1701099903, 'priyanka shukla', '2404671960', '8318903515', NULL, NULL, 4, 0, 0, NULL, '2023-11-27', '21:15:03', '22:15:03', 1, '120', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:45:03', '2023-11-27 15:45:03'),
(562, 1701100167, 'narayan kumar', '2205824644', '9092158803', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '21:19:27', '22:19:27', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:49:27', '2023-11-27 15:49:27'),
(563, 1701100378, 'hemant', '8856276817', '6263693023', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '21:22:58', '00:22:58', 3, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:52:58', '2023-11-27 15:52:58'),
(564, 1701100474, 'ratnesh', '2201402413', '8789610552', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '21:24:34', '22:24:34', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:54:34', '2023-11-27 15:54:34'),
(565, 1701100599, 'amit', '27309421300', '9693387949', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '21:26:39', '21:26:39', 0, '0', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:56:39', '2023-11-27 15:56:39'),
(566, 1701100731, 'rraun mudra', '2852920900', '8446573310', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '21:28:51', '23:28:51', 2, '120', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 15:58:51', '2023-11-27 15:58:51'),
(567, 1701100826, 'niketa', '2465434683', '9695744646', NULL, NULL, 4, 0, 0, NULL, '2023-11-27', '21:30:26', '23:30:26', 2, '240', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 16:00:26', '2023-11-27 16:00:26'),
(568, 1701100943, 'ankit', '2405768973', '7976950226', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '21:32:23', '23:32:23', 2, '120', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 16:02:23', '2023-11-27 16:02:23'),
(569, 1701101251, 'r k', NULL, '9675231779', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '21:37:31', '22:37:31', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 16:07:31', '2023-11-27 16:07:31'),
(570, 1701101541, 'abhisek singh', '2902094872', '8271750077', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '21:42:21', '22:42:21', 1, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 16:12:22', '2023-11-27 16:12:22'),
(571, 1701101774, 'ankur srivastav', '2305770125', '9695074732', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '21:46:14', '23:46:14', 2, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 16:16:14', '2023-11-27 16:16:14'),
(572, 1701101897, 'dhananjay', '2902033374', '9029606936', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '21:48:17', '23:48:17', 2, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 16:18:17', '2023-11-27 16:18:17'),
(573, 1701101956, 'ASHOK DUBEY', '2633307164', '7869144577', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '21:49:16', '23:49:16', 2, '120', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 16:19:16', '2023-11-27 16:19:16'),
(574, 1701102094, 'sharang', '2751919008', '9420920657', NULL, NULL, 4, 0, 0, NULL, '2023-11-27', '21:51:34', '22:51:34', 1, '120', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-27 16:21:34', '2023-11-27 16:21:34'),
(575, 1701103043, 'anil', '2305773421', '8094612816', NULL, NULL, 2, 1, 0, NULL, '2023-11-27', '22:07:23', '23:07:23', 1, '80', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 16:37:23', '2023-11-27 16:37:23'),
(576, 1701103329, 'raj ratan', '2632437759', '9380925000', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '22:12:09', '23:12:09', 1, '90', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 16:42:09', '2023-11-27 16:42:09'),
(577, 1701103590, 'sudhanshu kumar', '2850355426', '9451863690', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '22:16:30', '23:16:30', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 16:46:30', '2023-11-27 16:46:30'),
(578, 1701103641, 'vimal kumar', '2531781585', '9414286172', NULL, NULL, 1, 0, 1, NULL, '2023-11-27', '22:17:00', '23:17:00', 1, '0', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 16:54:58', '2023-11-27 16:47:21'),
(579, 1701103887, 'neeraj sukla', '33329807714', '9246036220', NULL, NULL, 0, 0, 1, NULL, '2023-11-27', '22:21:27', '23:21:27', 1, '0', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 16:51:28', '2023-11-27 16:51:27'),
(580, 1701104038, 'kana ram', '2633340455', '997795414877', NULL, NULL, 4, 0, 0, NULL, '2023-11-27', '22:23:58', '00:23:58', 2, '240', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 16:53:59', '2023-11-27 16:53:58'),
(581, 1701104204, 'pinki`', '226587221', '7856889899', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '22:26:44', '23:26:44', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 16:56:44', '2023-11-27 16:56:44'),
(582, 1701104361, 'narayan kumar', '2205824644', '9092158803', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '22:29:21', '23:29:21', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 16:59:21', '2023-11-27 16:59:21'),
(583, 1701104417, 'ratnesh', '2201402413', '8789610552', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '22:30:17', '23:30:17', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:00:17', '2023-11-27 17:00:17'),
(584, 1701104831, 'anuj kumar', '2305775125', '6201605961', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '22:37:11', '00:37:11', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:07:11', '2023-11-27 17:07:11'),
(585, 1701104906, 'arunima joshi', '2533694750', '8864838662', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '22:38:26', '23:38:26', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:08:26', '2023-11-27 17:08:26'),
(586, 1701105203, 'harsh gupta', '21100041952', '8999211802', NULL, NULL, 4, 0, 0, NULL, '2023-11-27', '22:43:23', '23:43:23', 1, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:13:24', '2023-11-27 17:13:24'),
(587, 1701105414, 'niyati', '2266258768', '9675231779', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '22:46:54', '00:46:54', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:16:54', '2023-11-27 17:16:54'),
(588, 1701105765, 'ram nibav jaju', '2532078556', '9421937287', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '22:52:45', '23:52:45', 1, '90', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:22:45', '2023-11-27 17:22:45'),
(589, 1701105831, 'naman aggrwal', '2852921717', '9837160576', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '22:53:51', '00:53:51', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:23:51', '2023-11-27 17:23:51'),
(590, 1701105891, 'vishnu', '2852651019', '8393959595', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '22:54:51', '00:54:51', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:24:51', '2023-11-27 17:24:51'),
(591, 1701106010, 'hari bhai', NULL, '9825081863', NULL, NULL, 4, 5, 0, NULL, '2023-11-27', '22:56:50', '23:56:50', 1, '220', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:26:50', '2023-11-27 17:26:50'),
(592, 1701106107, 'shruti', '2747864779', '9091847373', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '22:58:27', '00:58:27', 2, '180', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:28:27', '2023-11-27 17:28:27'),
(593, 1701106279, 'anad varma', '2902033675', '9924411118', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '23:01:19', '00:01:19', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:31:19', '2023-11-27 17:31:19'),
(594, 1701106341, 'ashutosh', '2850970412', '8745050670', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '23:02:21', '00:02:21', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:32:21', '2023-11-27 17:32:21'),
(595, 1701106504, 'sandeep sinha', '2851200165', '9871595415', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '23:05:04', '00:05:04', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:35:04', '2023-11-27 17:35:04'),
(596, 1701106652, 'kumar dhiraj', '2465446354', '8098185816', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '23:07:32', '01:07:32', 2, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:37:32', '2023-11-27 17:37:32'),
(597, 1701106722, 'ram nivash', '2532078556', '9421937287', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '23:08:42', '00:08:42', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:38:42', '2023-11-27 17:38:42'),
(598, 1701106817, 'yogesh', '2623797566', '9680302509', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '23:10:17', '00:10:17', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:40:17', '2023-11-27 17:40:17'),
(599, 1701106894, 'arun', '2852747632', '9711545154', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '23:11:34', '00:11:34', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:41:34', '2023-11-27 17:41:34'),
(600, 1701106952, 'rupika', '2531826726', '9009676417', NULL, NULL, 4, 0, 0, NULL, '2023-11-27', '23:12:32', '00:12:32', 1, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:42:32', '2023-11-27 17:42:32'),
(601, 1701107165, 'pradeep gosh', '2203389123', '7303034277', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '23:16:05', '05:16:05', 6, '180', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:46:05', '2023-11-27 17:46:05'),
(602, 1701107301, 'yatendra sharma', '2305415606', '9413312257', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '23:18:21', '00:18:21', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:48:21', '2023-11-27 17:48:21'),
(603, 1701107577, 'dr neelam', '2852845010', '8384872409', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '23:22:57', '00:22:57', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:52:57', '2023-11-27 17:52:57'),
(604, 1701107647, 'rakesh', '2633423890', '8004462850', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '23:24:07', '00:24:07', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:54:07', '2023-11-27 17:54:07'),
(605, 1701107883, 'sarla jaju', NULL, '9421937287', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '23:28:03', '00:28:03', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 17:58:03', '2023-11-27 17:58:03'),
(606, 1701108092, 'amit sha', '2465435861', '9062781969', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '23:31:32', '00:31:32', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 18:01:32', '2023-11-27 18:01:32'),
(607, 1701108191, 'komal dubey', '81822', '9821583292', NULL, NULL, 0, 0, 1, NULL, '2023-11-27', '23:33:00', '00:33:00', 1, '0', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 18:04:04', '2023-11-27 18:03:11'),
(608, 1701108434, 'divya', '2305361107', '8192863637', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '23:37:14', '00:37:14', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 18:07:14', '2023-11-27 18:07:14'),
(609, 1701108601, 'swati', NULL, '6307502658', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '23:40:01', '01:40:01', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 18:10:01', '2023-11-27 18:10:01'),
(610, 1701108924, 'avhinash kumar', '2365989942', '9794176767', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '23:45:24', '00:45:24', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 18:15:24', '2023-11-27 18:15:24'),
(611, 1701109038, 'sandeep kumar sha', '2302250194', '94330245828', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '23:47:18', '00:47:18', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 18:17:18', '2023-11-27 18:17:18'),
(612, 1701109106, 'ajay', NULL, '9451863690', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '23:48:26', '00:48:26', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 18:18:26', '2023-11-27 18:18:26'),
(613, 1701109146, 'dhurub', NULL, '86305593696', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '23:49:06', '01:49:06', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 18:19:06', '2023-11-27 18:19:06'),
(614, 1701109204, 'shudakar', NULL, '999040011', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '23:50:04', '00:50:04', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 18:20:04', '2023-11-27 18:20:04'),
(615, 1701109563, 'priyank', '2902037428', '9621800386', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '23:56:03', '00:56:03', 1, '90', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 18:26:04', '2023-11-27 18:26:03'),
(616, 1701109718, 'bhaskar', '2465780408', '9149198445', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '23:58:38', '00:58:38', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 18:28:38', '2023-11-27 18:28:38'),
(617, 1701109834, 'aman', '2405765039', '8930030796', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '00:00:34', '01:00:34', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 18:30:34', '2023-11-27 18:30:34'),
(618, 1701110424, 'r b achariya', '2633747322', '8509136380', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '00:10:24', '01:10:24', 1, '30', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 18:40:24', '2023-11-27 18:40:24'),
(619, 1701111277, 'sanjay kumar mishra', '2100509773', '9415794540', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '00:24:37', '01:24:37', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 18:54:37', '2023-11-27 18:54:37'),
(620, 1701111438, 'chetan gupta', '2848871956', '8765556534', NULL, NULL, 8, 3, 0, NULL, '2023-11-27', '00:27:18', '02:27:18', 2, '600', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 18:57:18', '2023-11-27 18:57:18'),
(621, 1701111949, 'umesh', '2848648082', '8707332972', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '00:35:49', '01:35:49', 1, '90', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 19:05:49', '2023-11-27 19:05:49'),
(622, 1701112056, 'arunima', '2533694750', '8864838662', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '00:37:36', '01:37:36', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 19:07:36', '2023-11-27 19:07:36'),
(623, 1701112151, 'prakash varma', '2634077259', '9208079540', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '00:39:11', '01:39:11', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 19:09:11', '2023-11-27 19:09:11'),
(624, 1701113065, 'sandeep', '2752992832', '8934813272', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '00:54:25', '01:54:25', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 19:24:25', '2023-11-27 19:24:25'),
(625, 1701113284, 'priyank', '2902037428', '9621800386', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '00:58:04', '01:58:04', 1, '90', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 19:28:04', '2023-11-27 19:28:04'),
(626, 1701114344, 'anand', '2902033675', '9924411118', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '01:15:44', '02:15:44', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 19:45:44', '2023-11-27 19:45:44'),
(627, 1701114452, 'dhanajay', '2902033374', '9029606936', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '01:17:32', '03:17:32', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 19:47:32', '2023-11-27 19:47:32'),
(628, 1701114681, 'MAMTA MEENA', '6728416212', '7876611590', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '01:21:21', '06:21:21', 5, '150', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 19:51:21', '2023-11-27 19:51:21'),
(629, 1701114726, 'R K', NULL, '9675231779', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '01:22:06', '03:22:06', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 19:52:06', '2023-11-27 19:52:06'),
(630, 1701114901, 'NEHA', '6128468317', '8982873898', NULL, NULL, 4, 0, 0, NULL, '2023-11-27', '01:25:01', '02:25:01', 1, '120', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 19:55:01', '2023-11-27 19:55:01'),
(631, 1701114974, 'SWAPN', '6901034633', '8770172545', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '01:26:14', '02:26:14', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 19:56:14', '2023-11-27 19:56:14'),
(632, 1701115047, 'ANKUR', '2305770125', '9695074732', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '01:27:27', '03:27:27', 2, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 19:57:27', '2023-11-27 19:57:27'),
(633, 1701115874, 'HEMANT', '8856276817', '6263693023', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '01:41:14', '02:41:14', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 20:11:14', '2023-11-27 20:11:14'),
(634, 1701117391, 'OMI SHAHU', '6127586100', '9301453459', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '02:06:31', '05:06:31', 3, '90', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 20:36:31', '2023-11-27 20:36:31'),
(635, 1701118993, 'JAY DEVGOSWAMI', '241185874175', '9426107543', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '02:33:13', '03:33:13', 1, '30', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 21:03:13', '2023-11-27 21:03:13'),
(636, 1701119766, 'VIVEK', '2205383820', '8010487748', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '02:46:06', '04:46:06', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 21:16:06', '2023-11-27 21:16:06'),
(637, 1701119856, 'arvind', '2901545917', '9897544727', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '02:47:36', '04:47:36', 2, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 21:17:36', '2023-11-27 21:17:36'),
(638, 1701120289, 'saurav mhera', '2533784028', '8193036118', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '02:54:49', '03:54:49', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 21:24:49', '2023-11-27 21:24:49'),
(639, 1701122026, 'richa', '2628393983', '9411150613', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '03:23:46', '04:23:46', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 21:53:46', '2023-11-27 21:53:46'),
(640, 1701122146, 'geeta singh', '2534001046', '9473560283', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '03:25:46', '05:25:46', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 21:55:46', '2023-11-27 21:55:46'),
(641, 1701122224, 'vishal', '2901859931', '8178883733', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '03:27:04', '04:27:04', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 21:57:04', '2023-11-27 21:57:04'),
(642, 1701122382, 'shikha', '2305771272', '7500790670', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '03:29:42', '05:29:42', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 21:59:42', '2023-11-27 21:59:42'),
(643, 1701122864, 'jay dev goswami', '241185874175', '9426107543', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '03:37:44', '04:37:44', 1, '30', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 22:07:44', '2023-11-27 22:07:44'),
(644, 1701123735, 'pallbi', '8901444467', '7028179804', NULL, NULL, 1, 0, 0, NULL, '2023-11-27', '03:52:15', '04:52:15', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 22:22:15', '2023-11-27 22:22:15'),
(645, 1701123807, 'saurav aggrwal', '8411101839', '9300880767', NULL, NULL, 1, 1, 0, NULL, '2023-11-27', '03:53:27', '04:53:27', 1, '50', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 22:23:27', '2023-11-27 22:23:27'),
(646, 1701124340, 'ganesh gunmant', '2104668447', '99934966087', NULL, NULL, 3, 0, 0, NULL, '2023-11-27', '04:02:20', '05:02:20', 1, '90', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 22:32:20', '2023-11-27 22:32:20'),
(647, 1701125142, 'prabhat kumar dash', '2848437232', '7980876016', NULL, NULL, 2, 0, 0, NULL, '2023-11-27', '04:15:42', '05:15:42', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 22:45:42', '2023-11-27 22:45:42'),
(648, 1701126778, 'saurav aggrwal', '841101839', '9300880767', NULL, NULL, 1, 1, 0, NULL, '2023-11-27', '04:42:58', '05:42:58', 1, '50', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-27 23:12:58', '2023-11-27 23:12:58'),
(649, 1701161661, 'ARNAV ROY', '2846508079', '7505481334', NULL, NULL, 3, 0, 0, NULL, '2023-11-28', '14:24:21', '15:24:21', 1, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 08:54:21', '2023-11-28 08:54:21'),
(650, 1701161747, 'SUNITA RANJAN', '2533801114', '8076211355', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '14:25:47', '17:25:47', 3, '180', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 08:55:47', '2023-11-28 08:55:47'),
(651, 1701161818, 'ISHA', '2901123557', '8810649106', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '14:26:58', '17:26:58', 3, '180', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 08:56:58', '2023-11-28 08:56:58'),
(652, 1701162003, 'SHIV PRASSAD', '2631435413', '9454786093', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '14:30:03', '16:30:03', 2, '120', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 09:00:03', '2023-11-28 09:00:03'),
(653, 1701163190, 'ILA VAISHNAV', '2200148334', '9819556408', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '14:49:50', '16:49:50', 2, '120', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 09:19:50', '2023-11-28 09:19:50'),
(654, 1701164837, 'ANUP KUMAR', '944930880755', '9045177139', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '15:17:17', '16:17:17', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 09:47:17', '2023-11-28 09:47:17'),
(655, 1701165103, 'VIJAY KUMAR', '2852971119', '7006561815', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '15:21:43', '18:21:43', 3, '180', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 09:51:43', '2023-11-28 09:51:43'),
(656, 1701165167, 'RENU MUNDRA', '2104431226', '9327183850', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '15:22:47', '16:22:47', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 09:52:47', '2023-11-28 09:52:47'),
(657, 1701165719, 'ANAMIKA SHARMA', '2533030543', '8876812369', NULL, NULL, 4, 0, 0, NULL, '2023-11-28', '15:31:59', '18:31:59', 3, '360', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 10:01:59', '2023-11-28 10:01:59'),
(658, 1701165861, 'CHANDRAKANT', '2746374787', '9920586230', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '15:34:21', '16:34:21', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 10:04:21', '2023-11-28 10:04:21'),
(659, 1701166343, 'ZISHAN', '2105710878', '8827460693', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '15:42:23', '16:42:23', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 10:12:23', '2023-11-28 10:12:23'),
(660, 1701166477, 'MUKESH GAUR', '2365488424', '9820595426', NULL, NULL, 4, 0, 0, NULL, '2023-11-28', '15:44:37', '16:44:37', 1, '120', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 10:14:37', '2023-11-28 10:14:37'),
(661, 1701166714, 'SANJAY BHIST', '2405234099', '7841844467', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '15:48:34', '17:48:34', 2, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 10:18:34', '2023-11-28 10:18:34'),
(662, 1701166885, 'MK TIWARI', '2533580338', '9899971741', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '15:51:25', '17:51:25', 2, '120', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 10:21:25', '2023-11-28 10:21:25'),
(663, 1701166993, 'VANKET', '2852920235', '6304882775', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '15:53:13', '17:53:13', 2, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 10:23:13', '2023-11-28 10:23:13'),
(664, 1701167045, 'KARAN SATI', '2405562532', '8882027958', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '15:54:05', '16:54:05', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 10:24:05', '2023-11-28 10:24:05'),
(665, 1701167125, 'BIPUL', '2405756072', '8333930635', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '15:55:25', '16:55:25', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 10:25:25', '2023-11-28 10:25:25'),
(666, 1701167393, 'MAMTA', '2633681195', '9682691762', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '15:59:53', '16:59:53', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 10:29:53', '2023-11-28 10:29:53'),
(667, 1701167520, 'S K KHARE', '2851027130', '9415181938', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '16:02:00', '19:02:00', 3, '180', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 10:32:00', '2023-11-28 10:32:00'),
(668, 1701167956, 'M BHARDWAJ', '210581007', '9318450091', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '16:09:16', '18:09:16', 2, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 10:39:16', '2023-11-28 10:39:16'),
(669, 1701169006, 'KOMAL SHARMA', '2752964081', '9407100409', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '16:26:46', '17:26:46', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 10:56:46', '2023-11-28 10:56:46'),
(670, 1701169150, 'ABHINAV', '2105856027', '9953985597', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '16:29:10', '17:29:10', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 10:59:10', '2023-11-28 10:59:10'),
(671, 1701169286, 'SANJAY', '2405299040', '9958793015', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '16:31:26', '17:31:26', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 11:01:26', '2023-11-28 11:01:26'),
(672, 1701169745, 'DEVASHISH', '2205810007', '8840410322', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '16:39:05', '17:39:05', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 11:09:05', '2023-11-28 11:09:05'),
(673, 1701170003, 'ROHIT SRIVATSAV', '2750444897', '9540595656', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '16:43:23', '17:43:23', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 11:13:23', '2023-11-28 11:13:23'),
(674, 1701170285, 'MOHAK', '2305512291', '7985603965', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '16:48:05', '19:48:05', 3, '180', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 11:18:05', '2023-11-28 11:18:05'),
(675, 1701170351, 'JAI RAI', '2305699217', '9681399939', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '16:49:11', '17:49:11', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 11:19:11', '2023-11-28 11:19:11'),
(676, 1701170576, 'AMIT', '2901751301', '8427338555', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '16:52:56', '18:52:56', 2, '120', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 11:22:56', '2023-11-28 11:22:56'),
(677, 1701171033, 'VIRENDRA SINGH', '2534032424', '9103397678', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '17:00:33', '19:00:33', 2, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 11:30:33', '2023-11-28 11:30:33'),
(678, 1701171139, 'PRANJAL', '2533580338', '9899971741', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '17:02:19', '18:02:19', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 11:32:19', '2023-11-28 11:32:19'),
(679, 1701171935, 'MAHASWETA', '2752790107', '9049064516', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '17:15:35', '18:15:35', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 11:45:35', '2023-11-28 11:45:35'),
(680, 1701172240, 'RAJU', '51529800046', '7087231662', NULL, NULL, 0, 0, 1, NULL, '2023-11-28', '17:20:40', '18:20:40', 1, '0', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 11:50:40', '2023-11-28 11:50:40');
INSERT INTO `sitting_entries` (`id`, `unique_id`, `name`, `pnr_uid`, `mobile_no`, `train_no`, `address`, `no_of_adults`, `no_of_children`, `no_of_baby_staff`, `seat_no`, `date`, `check_in`, `check_out`, `hours_occ`, `paid_amount`, `pay_type`, `remarks`, `shift`, `status`, `checkout_status`, `added_by`, `client_id`, `deleted`, `delete_by`, `delete_time`, `updated_at`, `created_at`) VALUES
(681, 1701172310, 'SANJAY KUMAR', '2902007284', '8700810308', NULL, NULL, 3, 1, 0, NULL, '2023-11-28', '17:21:50', '18:21:50', 1, '110', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 11:51:50', '2023-11-28 11:51:50'),
(682, 1701172558, 'KIRAN', '2627455430', '9785522555', NULL, NULL, 8, 0, 0, NULL, '2023-11-28', '17:25:58', '18:25:58', 1, '240', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 11:55:58', '2023-11-28 11:55:58'),
(683, 1701172921, 'ROMAINMARIET', '2852835863', '650215342', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '17:32:01', '18:32:01', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 12:02:01', '2023-11-28 12:02:01'),
(684, 1701173045, 'GG J RAIMON', '2752965616', '33619655454', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '17:34:05', '18:34:05', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 12:04:06', '2023-11-28 12:04:05'),
(685, 1701174039, 'BIPUL', '2405756072', '8333930635', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '17:50:39', '18:50:39', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 12:20:40', '2023-11-28 12:20:39'),
(686, 1701174521, 'OM PRAKASH SHUKLA', '2633018772', '9415479773', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '17:58:41', '18:58:41', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 12:28:41', '2023-11-28 12:28:41'),
(687, 1701175875, 'VINAY KUMAR', '2204640573', '7905696565', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '18:21:15', '19:21:15', 1, '30', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 12:51:15', '2023-11-28 12:51:15'),
(688, 1701179032, 'SUNITA RAWAT', '2902128561', '9760202776', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '19:13:52', '20:13:52', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 13:43:52', '2023-11-28 13:43:52'),
(689, 1701179096, 'ANUP KUMAR', '944930880755', '9045177139', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '19:14:56', '20:14:56', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 13:44:56', '2023-11-28 13:44:56'),
(690, 1701179341, 'KAMLESH', '2752960481', '9413081713', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '19:19:01', '20:19:01', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 13:49:01', '2023-11-28 13:49:01'),
(691, 1701179449, 'ASHVANI RAI', '2205818285', '6299433077', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '19:20:49', '21:20:49', 2, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 13:50:49', '2023-11-28 13:50:49'),
(692, 1701180592, 'NITIN', '2265515921', '7007665078', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '19:39:52', '20:39:52', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 14:09:53', '2023-11-28 14:09:52'),
(693, 1701181621, 'SANJAY SHUKLA', '2404589055', '9838825999', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '19:57:01', '20:57:01', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 14:27:02', '2023-11-28 14:27:01'),
(694, 1701181832, 'JAY KUMAR ADVANI', '2405406227', '9414242455', NULL, NULL, 2, 2, 0, NULL, '2023-11-28', '20:00:32', '21:00:32', 1, '100', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 14:30:33', '2023-11-28 14:30:32'),
(695, 1701181923, 'VIJAY YADAV', '2634046203', '9415678900', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '20:02:03', '21:02:03', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 14:32:03', '2023-11-28 14:32:03'),
(696, 1701182043, 'SK KHARE', '2851027130', '9415181938', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '20:04:03', '21:04:03', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 14:34:03', '2023-11-28 14:34:03'),
(697, 1701182510, 'MOHAK', '2305512291', '79085603965', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '20:11:50', '21:11:50', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 14:41:50', '2023-11-28 14:41:50'),
(698, 1701182828, 'VIRENDRA SINGH', '2534032424', '9103397678', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '20:17:08', '22:17:08', 2, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 14:47:08', '2023-11-28 14:47:08'),
(699, 1701183121, 'deepak chndra kule', '2365483832', '9433915277', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '20:22:01', '23:22:01', 3, '180', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 14:52:01', '2023-11-28 14:52:01'),
(700, 1701183532, 'vaibhav jain', '2901584331', '9414257726', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '20:28:52', '23:28:52', 3, '180', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 14:58:52', '2023-11-28 14:58:52'),
(701, 1701184136, 'RAJESH NIRMAL', '2849153366', '9833114485', NULL, NULL, 4, 0, 1, NULL, '2023-11-28', '20:38:56', '21:38:56', 1, '120', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 15:08:56', '2023-11-28 15:08:56'),
(702, 1701184291, 'DINESH KAPOOR', '301115886650', '9815481131', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '20:41:31', '21:41:31', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 15:11:31', '2023-11-28 15:11:31'),
(703, 1701184544, 'GG J  RAIMON', '2752965616', '33619655454', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '20:45:44', '21:45:44', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 15:15:44', '2023-11-28 15:15:44'),
(704, 1701184689, 'SAJAL', '2902127940', '9720000953', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '20:48:09', '21:48:09', 1, '30', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 15:18:09', '2023-11-28 15:18:09'),
(705, 1701184876, 'HARISH BHANDARI', '2405841249', '9877790441', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '20:51:16', '21:51:16', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 15:21:16', '2023-11-28 15:21:16'),
(706, 1701185280, 'SURAJ', '2752970212', '7762844485', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '20:58:00', '21:58:00', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 15:28:00', '2023-11-28 15:28:00'),
(707, 1701185741, 'JAY KUMAR', '2405406227', '9414242455', NULL, NULL, 2, 2, 0, NULL, '2023-11-28', '21:05:41', '22:05:41', 1, '100', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 15:35:41', '2023-11-28 15:35:41'),
(708, 1701185827, 'SAGAR KULKARNI', '2404261024', '9158868855', NULL, NULL, 5, 1, 0, NULL, '2023-11-28', '21:07:07', '00:07:07', 3, '510', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 15:37:07', '2023-11-28 15:37:07'),
(709, 1701185900, 'GAURAV', '2365630709', '9674527182', NULL, NULL, 3, 0, 0, NULL, '2023-11-28', '21:08:20', '22:08:20', 1, '90', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 15:38:20', '2023-11-28 15:38:20'),
(710, 1701186057, 'DILIP SATIJA', '2205713269', '989802148', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '21:10:57', '22:10:57', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 15:40:58', '2023-11-28 15:40:57'),
(711, 1701186340, 'SANGHAMITRA CHAKRBORTY', '2265484163', '9874356455', NULL, NULL, 3, 0, 0, NULL, '2023-11-28', '21:15:40', '01:15:40', 4, '360', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 15:45:40', '2023-11-28 15:45:40'),
(712, 1701186455, 'RAJENDRA', '2405498822', '9649514766', NULL, NULL, 3, 0, 0, NULL, '2023-11-28', '21:17:35', '23:17:35', 2, '180', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 15:47:35', '2023-11-28 15:47:35'),
(713, 1701186635, 'NARENDRA KUMAR', '2629698652', '9934772190', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '21:20:35', '00:20:35', 3, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 15:50:35', '2023-11-28 15:50:35'),
(714, 1701186918, 'FAHAD', '2205595207', '8869800696', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '21:25:18', '00:25:18', 3, '180', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 15:55:18', '2023-11-28 15:55:18'),
(715, 1701187134, 'SUMIT', '2400838351', '7275978623', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '21:28:54', '22:28:54', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 15:58:54', '2023-11-28 15:58:54'),
(716, 1701187528, 'S K HAJRA', '2265484404', '8637876855', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '21:35:28', '22:35:28', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 16:05:28', '2023-11-28 16:05:28'),
(717, 1701188787, 'VIJAY', '2104888878', '8675876786', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '21:56:27', '22:56:27', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-28 16:26:27', '2023-11-28 16:26:27'),
(718, 1701189084, 'bhavesh palli', '2634047158', '9456708098', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '22:01:24', '23:01:24', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:31:24', '2023-11-28 16:31:24'),
(719, 1701189237, 'arun', '2305820931', '9810450791', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '22:03:57', '23:03:57', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:33:57', '2023-11-28 16:33:57'),
(720, 1701189490, 'rajesh nirmal', '2849153366', '9833114485', NULL, NULL, 4, 0, 0, NULL, '2023-11-28', '22:08:10', '23:08:10', 1, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:38:10', '2023-11-28 16:38:10'),
(721, 1701189626, 'jushi', '6228514594', '6206192832', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '22:10:26', '00:10:26', 2, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:40:26', '2023-11-28 16:40:26'),
(722, 1701189687, 'jay kumar', '2405406227', '9414242455', NULL, NULL, 2, 2, 0, NULL, '2023-11-28', '22:11:27', '23:11:27', 1, '100', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:41:27', '2023-11-28 16:41:27'),
(723, 1701189826, 'dp samadder', '2465484018', '6290764068', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '22:13:46', '23:13:46', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:43:46', '2023-11-28 16:43:46'),
(724, 1701189920, 'biranda', '2205901200', '9878238921', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '22:15:20', '04:15:20', 6, '180', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:45:20', '2023-11-28 16:45:20'),
(725, 1701190036, 'bandna pandey', '2634046572', '8825212769', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '22:17:16', '01:17:16', 3, '90', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:47:16', '2023-11-28 16:47:16'),
(726, 1701190111, 'jay raj', '27469702290', '9016221147', NULL, NULL, 6, 1, 0, NULL, '2023-11-28', '22:18:31', '23:18:31', 1, '200', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:48:31', '2023-11-28 16:48:31'),
(727, 1701190281, 'sushil kumar', '924829', '7979973860', NULL, NULL, 0, 0, 1, NULL, '2023-11-28', '22:21:21', '23:21:21', 1, '0', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:51:21', '2023-11-28 16:51:21'),
(728, 1701190337, 'ajay kumar', '920836', '9801852510', NULL, NULL, 0, 0, 1, NULL, '2023-11-28', '22:22:17', '23:22:17', 1, '0', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:52:17', '2023-11-28 16:52:17'),
(729, 1701190446, 'jay dev', '2205901200', '9971189130', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '22:24:06', '23:24:06', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:54:06', '2023-11-28 16:54:06'),
(730, 1701190547, 'abhi', '905373508064', '9706964081', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '22:25:47', '23:25:47', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:55:48', '2023-11-28 16:55:47'),
(731, 1701190625, 'sangeeta aggrwal', '2527539062', '7004456817', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '22:27:05', '02:27:05', 4, '120', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:57:05', '2023-11-28 16:57:05'),
(732, 1701190749, 'm d zeeshan alam', '2305878074', '9128094467', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '22:29:09', '23:29:09', 1, '30', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:59:09', '2023-11-28 16:59:09'),
(733, 1701190796, 'v k singh', '2305655932', '9997477829', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '22:29:56', '23:29:56', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 16:59:56', '2023-11-28 16:59:56'),
(734, 1701190912, 'sharart kumar', '2746768056', '9919792849', NULL, NULL, 4, 1, 0, NULL, '2023-11-28', '22:31:52', '00:31:52', 2, '280', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 17:01:52', '2023-11-28 17:01:52'),
(735, 1701191028, 'akshay', '2902131633', '9993103321', NULL, NULL, 5, 0, 0, NULL, '2023-11-28', '22:33:48', '23:33:48', 1, '150', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 17:03:48', '2023-11-28 17:03:48'),
(736, 1701191114, 'garbit mule', '2534089671', '7692894621', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '22:35:14', '23:35:14', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 17:05:14', '2023-11-28 17:05:14'),
(737, 1701191171, 'ratna singh', '2750651087', '7898527950', NULL, NULL, 3, 0, 0, NULL, '2023-11-28', '22:36:11', '23:36:11', 1, '90', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 17:06:11', '2023-11-28 17:06:11'),
(738, 1701191293, 'pradeep kumar', '2205048350', '9358256303', NULL, NULL, 3, 0, 0, NULL, '2023-11-28', '22:38:13', '23:38:13', 1, '90', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 17:08:14', '2023-11-28 17:08:13'),
(739, 1701191681, 'asmita', '2751738857', '8959599170', NULL, NULL, 1, 1, 0, NULL, '2023-11-28', '22:44:41', '23:44:41', 1, '50', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 17:14:41', '2023-11-28 17:14:41'),
(740, 1701191882, 'samarth', '2631733716', '9575300950', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '22:48:02', '23:48:02', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 17:18:02', '2023-11-28 17:18:02'),
(741, 1701192352, 'shivam', '2105854584', '8477859605', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '22:55:52', '00:55:52', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 17:25:52', '2023-11-28 17:25:52'),
(742, 1701192526, 'skenneth', '2205819175', '9675231779', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '22:58:46', '00:58:46', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 17:28:46', '2023-11-28 17:28:46'),
(743, 1701192697, 'mayur kanshari', '2401920711', '9081833713', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '23:01:37', '03:01:37', 4, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 17:31:37', '2023-11-28 17:31:37'),
(744, 1701193533, 'k k  singh', '2105817692', '9955771488', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '23:15:33', '02:15:33', 3, '90', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 17:45:33', '2023-11-28 17:45:33'),
(745, 1701193704, 'anmjita', '2752963010', '6370475727', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '23:18:24', '02:18:24', 3, '90', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 17:48:24', '2023-11-28 17:48:24'),
(746, 1701193766, 'jay bardhan', '2750651087', '7898527950', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '23:19:26', '00:19:26', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 17:49:26', '2023-11-28 17:49:26'),
(747, 1701194159, 'kishan', '2100497039', '9163224278', NULL, NULL, 4, 0, 0, NULL, '2023-11-28', '23:25:59', '00:25:59', 1, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 17:56:00', '2023-11-28 17:55:59'),
(748, 1701194631, 'deepak chandra', '23265483832', '94339152577', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '23:33:51', '02:33:51', 3, '180', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 18:03:51', '2023-11-28 18:03:51'),
(749, 1701194861, 'vinay srivastv', '2534047356', '9918701949', NULL, NULL, 3, 0, 0, NULL, '2023-11-28', '23:37:41', '01:37:41', 2, '180', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 18:07:41', '2023-11-28 18:07:41'),
(750, 1701195720, 'rahul kumar', '2527454909', '8757336821', NULL, NULL, 3, 0, 0, NULL, '2023-11-28', '23:52:00', '00:52:00', 1, '90', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 18:22:00', '2023-11-28 18:22:00'),
(751, 1701196010, 'satya', '2405885173', '9010819099', NULL, NULL, 3, 0, 0, NULL, '2023-11-28', '23:56:50', '00:56:50', 1, '90', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 18:26:50', '2023-11-28 18:26:50'),
(752, 1701196145, 'nidhi  kumari', '6328511663', '7261840974', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '23:59:05', '01:59:05', 2, '120', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 18:29:05', '2023-11-28 18:29:05'),
(753, 1701196198, 'akshay', '2902131633', '9993103321', NULL, NULL, 5, 0, 0, NULL, '2023-11-28', '23:59:58', '00:59:58', 1, '150', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 18:29:58', '2023-11-28 18:29:58'),
(754, 1701196261, 'antra', NULL, '9874355749', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '00:01:01', '01:01:01', 1, '30', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 18:31:02', '2023-11-28 18:31:01'),
(755, 1701196677, 'amit datt', '2534046443', '9163142660', NULL, NULL, 3, 0, 0, NULL, '2023-11-28', '00:07:57', '02:07:57', 2, '180', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 18:37:57', '2023-11-28 18:37:57'),
(756, 1701196785, 'n j sanghavi', '2405866547', '9426463635', NULL, NULL, 1, 1, 0, NULL, '2023-11-28', '00:09:45', '04:09:45', 4, '200', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 18:39:45', '2023-11-28 18:39:45'),
(757, 1701196972, 'dp samadder', '246548018', '6290764068', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '00:12:52', '01:12:52', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 18:42:52', '2023-11-28 18:42:52'),
(758, 1701197743, 'm d zeesham', '2305878027', '9128094467', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '00:25:43', '01:25:43', 1, '30', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 18:55:43', '2023-11-28 18:55:43'),
(759, 1701198244, 'devashish pandey', '2634046572', '9852058711', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '00:34:04', '02:34:04', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 19:04:04', '2023-11-28 19:04:04'),
(760, 1701198913, 'sumash gosh', '233888301371', '7908511717', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '00:45:13', '02:45:13', 2, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 19:15:13', '2023-11-28 19:15:13'),
(761, 1701199027, 'karan kumar', '2853001450', '9814854153', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '00:47:07', '05:47:07', 5, '150', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 19:17:08', '2023-11-28 19:17:07'),
(762, 1701199206, 'tapan pradhan', '6728462298', '7978364040', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '00:50:06', '04:50:06', 4, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 19:20:06', '2023-11-28 19:20:06'),
(763, 1701199821, 'sharat kumar', '2746768056', '9919972849', NULL, NULL, 4, 0, 0, NULL, '2023-11-28', '01:00:21', '03:00:21', 2, '240', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 19:30:21', '2023-11-28 19:30:21'),
(764, 1701200376, 'r k', NULL, '9675231779', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '01:09:36', '02:09:36', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 19:39:37', '2023-11-28 19:39:36'),
(765, 1701200428, 'subhsah', '50313655220', '8400334425', NULL, NULL, 0, 0, 1, NULL, '2023-11-28', '01:10:28', '01:10:28', 0, '0', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 19:40:28', '2023-11-28 19:40:28'),
(766, 1701202290, 'naman', '755727555882', '9509900581', NULL, NULL, 4, 0, 0, NULL, '2023-11-28', '01:41:30', '03:41:30', 2, '240', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 20:11:32', '2023-11-28 20:11:31'),
(767, 1701204529, 'sanghamitra', '2265484163', '9874356455', NULL, NULL, 3, 0, 0, NULL, '2023-11-28', '02:18:49', '03:18:49', 1, '90', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 20:48:50', '2023-11-28 20:48:50'),
(768, 1701204874, 'devashish', '2634046572', '9852058711', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '02:24:34', '03:24:34', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 20:54:35', '2023-11-28 20:54:34'),
(769, 1701204950, 'amit datt', '254046443', '9163142660', NULL, NULL, 3, 0, 0, NULL, '2023-11-28', '02:25:50', '04:25:50', 2, '180', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 20:55:51', '2023-11-28 20:55:50'),
(770, 1701205038, 'anmjita', '2752963010', '6370475727', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '02:27:18', '03:27:18', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 20:57:19', '2023-11-28 20:57:18'),
(771, 1701205223, 'senna', NULL, '9675231779', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '02:30:23', '03:30:23', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 21:00:23', '2023-11-28 21:00:23'),
(772, 1701205283, 'narendra kumar', '2629698652', '9934772190', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '02:31:00', '04:31:00', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 21:01:49', '2023-11-28 21:01:23'),
(773, 1701205451, 'suman kumari', NULL, '9905401063', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '02:34:11', '03:34:11', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 21:04:11', '2023-11-28 21:04:11'),
(774, 1701205800, 'pintu gupta', '2852996426', '8777896483', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '02:40:00', '03:40:00', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 21:10:01', '2023-11-28 21:10:00'),
(775, 1701206392, 'shivam upadheya', '2901531917', '9012891462', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '02:49:52', '04:49:52', 2, '120', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 21:19:52', '2023-11-28 21:19:52'),
(776, 1701206949, 'rishi nath pal', '2405842538', '9927605759', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '02:59:09', '03:59:09', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 21:29:09', '2023-11-28 21:29:09'),
(777, 1701207040, 'jushi', '6228514594', '6206192832', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '03:00:40', '05:00:40', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 21:30:40', '2023-11-28 21:30:40'),
(778, 1701208616, 'mayur', '2401920711', '9081833713', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '03:26:56', '04:26:56', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 21:56:56', '2023-11-28 21:56:56'),
(779, 1701209333, 'arvind jeshwal', '2633825780', '9839043485', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '03:38:53', '04:38:53', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:08:53', '2023-11-28 22:08:53'),
(780, 1701209447, 'bhulchand', '2105725045', '9451387331', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '03:40:47', '04:40:47', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:10:47', '2023-11-28 22:10:47'),
(781, 1701210951, 'sankalp', '2305709485', '8210806475', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '04:05:51', '05:05:51', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:35:51', '2023-11-28 22:35:51'),
(782, 1701211037, 'ray sahab', '2752262419', '9799935038', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '04:07:17', '05:07:17', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:37:18', '2023-11-28 22:37:17'),
(783, 1701211092, 'ashwani', '2105904869', '9999991064', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '04:08:12', '06:08:12', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:38:12', '2023-11-28 22:38:12'),
(784, 1701211170, 'ajay kumar', '8857617315', '8094762279', NULL, NULL, 3, 0, 0, NULL, '2023-11-28', '04:09:30', '05:09:30', 1, '90', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:39:30', '2023-11-28 22:39:30'),
(785, 1701211236, 'sunil', '8210411634', '9309457872', NULL, NULL, 5, 0, 0, NULL, '2023-11-28', '04:10:36', '05:10:36', 1, '150', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:40:36', '2023-11-28 22:40:36'),
(786, 1701211309, 'shri chand dhamu', '8210389185', '8094762299', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '04:11:49', '05:11:49', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:41:50', '2023-11-28 22:41:49'),
(787, 1701211372, 'shaitan singh', '8901528264', '9649912889', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '04:12:52', '05:12:52', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:42:52', '2023-11-28 22:42:52'),
(788, 1701211468, 'kamlesh singh', '8511141997', '8696555670', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '04:14:28', '06:14:28', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:44:29', '2023-11-28 22:44:28'),
(789, 1701211582, 'bhavna', '8510856620', '8619963112', NULL, NULL, 4, 0, 0, NULL, '2023-11-28', '04:16:22', '05:16:22', 1, '120', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:46:23', '2023-11-28 22:46:22'),
(790, 1701211651, 'arvind', '8857651697', '8619612113', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '04:17:31', '05:17:31', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:47:31', '2023-11-28 22:47:31'),
(791, 1701211700, 'rishi gupta', '8111141030', '8109130577', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '04:18:20', '07:18:20', 3, '90', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:48:20', '2023-11-28 22:48:20'),
(792, 1701211787, 'manish', '8510969812', '9116527777', NULL, NULL, 4, 0, 0, NULL, '2023-11-28', '04:19:47', '05:19:47', 1, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:49:47', '2023-11-28 22:49:47'),
(793, 1701211847, 'mohan lal bani', '8308498089', '9664133354', NULL, NULL, 8, 0, 0, NULL, '2023-11-28', '04:20:47', '05:20:47', 1, '240', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:50:47', '2023-11-28 22:50:47'),
(794, 1701212041, 'a m jadeja', '8408264892', '9924514870', NULL, NULL, 4, 0, 0, NULL, '2023-11-28', '04:24:01', '05:24:01', 1, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:54:01', '2023-11-28 22:54:01'),
(795, 1701212198, 's k patra', '8610438680', '9867410240', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '04:26:38', '05:26:38', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:56:38', '2023-11-28 22:56:38'),
(796, 1701212378, 'dr r s arya', '8900109459', '9414422914', NULL, NULL, 1, 0, 0, NULL, '2023-11-28', '04:29:38', '05:29:38', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 22:59:38', '2023-11-28 22:59:38'),
(797, 1701212519, 'nanu bhai', '8607729473', '9979090200', NULL, NULL, 3, 1, 0, NULL, '2023-11-28', '04:31:59', '06:31:59', 2, '220', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 23:01:59', '2023-11-28 23:01:59'),
(798, 1701212618, 'soniya', '8857639204', '8905429160', NULL, NULL, 5, 0, 0, NULL, '2023-11-28', '04:33:38', '05:33:38', 1, '150', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 23:03:39', '2023-11-28 23:03:38'),
(799, 1701212730, 'chingya bain', '8408017847', '9428810957', NULL, NULL, 5, 1, 0, NULL, '2023-11-28', '04:35:30', '05:35:30', 1, '170', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 23:05:30', '2023-11-28 23:05:30'),
(800, 1701213024, 'amrjeet chawla', '8857638143', '9414095952', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '04:40:24', '05:40:24', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 23:10:24', '2023-11-28 23:10:24'),
(801, 1701213103, 'sanjay jaiswal', '8509425298', '9832325785', NULL, NULL, 4, 0, 0, NULL, '2023-11-28', '04:41:43', '05:41:43', 1, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 23:11:43', '2023-11-28 23:11:43'),
(802, 1701213706, 'amit', '8901507347', '7340479131', NULL, NULL, 12, 0, 0, NULL, '2023-11-28', '04:51:46', '05:51:46', 1, '360', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 23:21:46', '2023-11-28 23:21:46'),
(803, 1701215596, 'bipin', '8408088500', '9348804775', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '05:23:16', '06:23:16', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-28 23:53:17', '2023-11-28 23:53:16'),
(804, 1701216887, 'aprna bhagbat', '2303415774', '9630974370', NULL, NULL, 6, 0, 0, NULL, '2023-11-28', '05:44:47', '06:44:47', 1, '180', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 00:14:47', '2023-11-29 00:14:47'),
(805, 1701217507, 'ajay', '2846475352', '6203372223', NULL, NULL, 2, 0, 0, NULL, '2023-11-28', '05:55:07', '06:55:07', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 00:25:07', '2023-11-29 00:25:07'),
(806, 1701218268, 'naman', '75572755882', '9509900581', NULL, NULL, 4, 0, 0, NULL, '2023-11-29', '06:07:48', '08:07:48', 2, '240', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 00:37:48', '2023-11-29 00:37:48'),
(807, 1701218900, 'sunil kumar singh', '2304506640', '9234949849', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '06:18:20', '07:18:20', 1, '60', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 00:48:21', '2023-11-29 00:48:21'),
(808, 1701219115, 'manoranjan mishra', '2105865991', '9958785566', NULL, NULL, 6, 0, 0, NULL, '2023-11-29', '06:21:55', '07:21:55', 1, '180', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 00:51:55', '2023-11-29 00:51:55'),
(809, 1701219355, 'ramesh chauhan', '25324622453', '7020514517', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '06:25:55', '07:25:55', 1, '60', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 00:55:55', '2023-11-29 00:55:55'),
(810, 1701219562, 'ishwar ji', '2529787145', '8955182732', NULL, NULL, 6, 0, 0, NULL, '2023-11-29', '06:29:22', '07:29:22', 1, '180', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 00:59:22', '2023-11-29 00:59:22'),
(811, 1701220049, 'radha ji', NULL, '9899213965', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '06:37:29', '07:37:29', 1, '60', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 01:07:29', '2023-11-29 01:07:29'),
(812, 1701220150, 'arun ji', '2105883772', '8194009109', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '06:39:10', '07:39:10', 1, '30', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 01:09:10', '2023-11-29 01:09:10'),
(813, 1701220220, 'jp gupta', NULL, '9899578930', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '06:40:20', '07:40:20', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 01:10:20', '2023-11-29 01:10:20'),
(814, 1701220384, 'manish', '2851151535', '8210050389', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '06:43:04', '08:43:04', 2, '60', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 01:13:04', '2023-11-29 01:13:04'),
(815, 1701220740, 'bhaavik ji', '290112542', '7977227939', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '06:49:00', '08:49:00', 2, '120', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 01:19:00', '2023-11-29 01:19:00'),
(816, 1701221308, 'UMESH JI', '2853009562', '2583694735', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '06:58:28', '07:58:28', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 01:28:28', '2023-11-29 01:28:28'),
(817, 1701221634, 'ARUN  JI', '2853020218', '9928438100', NULL, NULL, 3, 0, 0, NULL, '2023-11-29', '07:03:54', '08:03:54', 1, '90', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 01:33:54', '2023-11-29 01:33:54'),
(818, 1701222591, 'TARUN JI', '2633229201', '9602262354', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '07:19:51', '08:19:51', 1, '30', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 01:49:51', '2023-11-29 01:49:51'),
(819, 1701223792, 'LB RAO', NULL, '9440977003', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '07:39:52', '08:39:52', 1, '60', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 02:09:54', '2023-11-29 02:09:53'),
(820, 1701225584, 'ISHWAR JI', '2529787142', '895182730', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '08:09:44', '09:09:44', 1, '30', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 02:39:44', '2023-11-29 02:39:44'),
(821, 1701225790, 'VIKRAM JI', '2531765182', '7499474698', NULL, NULL, 5, 0, 0, NULL, '2023-11-29', '08:13:10', '09:13:10', 1, '150', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 02:43:10', '2023-11-29 02:43:10'),
(822, 1701226470, 'SANJAY JI', '2848109955', '981217947', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '08:24:30', '09:24:30', 1, '60', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 02:54:30', '2023-11-29 02:54:30'),
(823, 1701238270, 'BHOPAL', '2633841590', '9568157319', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '11:41:10', '12:41:10', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 06:11:10', '2023-11-29 06:11:10'),
(824, 1701242724, 'SAATVIK', '2530529045', '6304177971', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '12:55:24', '13:55:24', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 07:25:24', '2023-11-29 07:25:24'),
(825, 1701244775, 'BHAVYA', '240482053', '8840899714', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '13:29:35', '14:29:35', 1, '30', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-29 07:59:35', '2023-11-29 07:59:35'),
(826, 1701247879, 'AKSHAY SHAH', '2628626380', '9033685726', NULL, NULL, 13, 1, 0, NULL, '2023-11-29', '14:21:19', '16:21:19', 2, '820', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 08:51:19', '2023-11-29 08:51:19'),
(827, 1701248025, 'SUBHANKAR JHA', '2165625459', '8405802670', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '14:23:00', '17:23:00', 3, '180', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 08:54:39', '2023-11-29 08:53:45'),
(828, 1701248159, 'AMIT PANDEY', '2901118545', '9580720001', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '14:25:59', '15:25:59', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 08:55:59', '2023-11-29 08:55:59'),
(829, 1701248296, 'MAHAK', '2852856511', '9781173046', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '14:28:16', '17:28:16', 3, '180', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 08:58:16', '2023-11-29 08:58:16'),
(830, 1701248840, 'PATANJALI MISHRA', '2403056152', '8874001133', NULL, NULL, 3, 0, 1, NULL, '2023-11-29', '14:37:20', '15:37:20', 1, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 09:07:20', '2023-11-29 09:07:20'),
(831, 1701249638, 'AMITABH SRIVATSAVA', '2303428969', '9810767240', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '14:50:38', '17:50:38', 3, '180', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 09:20:38', '2023-11-29 09:20:38'),
(832, 1701249782, 'RISHI NAGPAL', '21059220800', '9927605759', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '14:53:02', '16:53:02', 2, '120', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 09:23:02', '2023-11-29 09:23:02'),
(833, 1701250331, 'RAJEEV KUMAR', '2900575824', '6396819063', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '15:02:11', '17:02:11', 2, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 09:32:11', '2023-11-29 09:32:11'),
(834, 1701250966, 'VIKRAM JOSHI', '2105577140', '9811521702', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '15:12:46', '18:12:46', 3, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 09:42:46', '2023-11-29 09:42:46'),
(835, 1701251016, 'HEMLATA ANAND', '33245', '9717199341', NULL, NULL, 0, 0, 1, NULL, '2023-11-29', '15:13:36', '16:13:36', 1, '0', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 09:43:36', '2023-11-29 09:43:36'),
(836, 1701251656, 'DHEERAJ BHAI', '8900695042', '9727970821', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '15:24:16', '16:24:16', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 09:54:16', '2023-11-29 09:54:16'),
(837, 1701251778, 'AMIT', '2532603109', '7017377562', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '15:26:18', '16:26:18', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 09:56:18', '2023-11-29 09:56:18'),
(838, 1701251865, 'PUNEET SHARMA', '2405926122', '8219270421', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '15:27:45', '16:27:45', 1, '30', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 09:57:45', '2023-11-29 09:57:45'),
(839, 1701252974, 'ASHA', '2752679418', '8447698218', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '15:46:14', '17:46:14', 2, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 10:16:14', '2023-11-29 10:16:14'),
(840, 1701254025, 'TAPAS DUTTA', '2533636757', '7580888861', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '16:03:45', '17:03:45', 1, '30', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 10:33:45', '2023-11-29 10:33:45'),
(841, 1701256083, 'SHIV SHANKR', '2902358545', '9873569379', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '16:38:03', '17:38:03', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 11:08:04', '2023-11-29 11:08:03'),
(842, 1701256459, 'DARSHAN', '2847524011', '9763821509', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '16:44:19', '17:44:19', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 11:14:20', '2023-11-29 11:14:19'),
(843, 1701256617, 'RAJIV', '2753054979', '8437910197', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '16:46:57', '17:46:57', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 11:16:58', '2023-11-29 11:16:57'),
(844, 1701257495, 'AJIT SINGH', '2753045417', '8800114531', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '17:01:35', '18:01:35', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 11:31:36', '2023-11-29 11:31:35'),
(845, 1701257895, 'AKSHIT', '2533998012', '9792816822', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '17:08:15', '20:08:15', 3, '90', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 11:38:16', '2023-11-29 11:38:15'),
(846, 1701258042, 'TANMAY ARORA', '2901379060', '9811042301', NULL, NULL, 3, 0, 0, NULL, '2023-11-29', '17:10:42', '18:10:42', 1, '90', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 11:40:42', '2023-11-29 11:40:42'),
(847, 1701259015, 'ARCHIT', '2534127055', '9695003232', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '17:26:55', '18:26:55', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 11:56:55', '2023-11-29 11:56:55'),
(848, 1701259140, 'KARANJEET SINGH', '2205299805', '8894319553', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '17:29:00', '18:29:00', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 11:59:00', '2023-11-29 11:59:00'),
(849, 1701259231, 'AVINASH', '2853050625', '7477067632', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '17:30:31', '18:30:31', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 12:00:31', '2023-11-29 12:00:31'),
(850, 1701263402, 'PRABHA', '2405914529', '9458600100', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '18:40:02', '23:40:02', 5, '300', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 13:10:02', '2023-11-29 13:10:02'),
(851, 1701263577, 'ANKUR AGARWAL', '2753046184', '9044234501', NULL, NULL, 4, 0, 2, NULL, '2023-11-29', '18:42:57', '19:42:57', 1, '120', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 13:12:57', '2023-11-29 13:12:57'),
(852, 1701264486, 'PATANJALI MISHRA', '2403056152', '8874001133', NULL, NULL, 3, 0, 1, NULL, '2023-11-29', '18:58:06', '19:58:06', 1, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 13:28:07', '2023-11-29 13:28:07'),
(853, 1701265142, 'A PANDYA', '2101064828', '9985557267', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '19:09:02', '22:09:02', 3, '180', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 13:39:02', '2023-11-29 13:39:02'),
(854, 1701266476, 'M VIJAY BASKAR', '2631755368', '8008552152', NULL, NULL, 3, 0, 0, NULL, '2023-11-29', '19:31:16', '22:31:16', 3, '270', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 14:01:17', '2023-11-29 14:01:17'),
(855, 1701267152, 'GAURAV', '2105892440', '9814918186', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '19:42:32', '21:42:32', 2, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 14:12:32', '2023-11-29 14:12:32'),
(856, 1701267251, 'AMIT', '2627655082', '9935988979', NULL, NULL, 2, 0, 2, NULL, '2023-11-29', '19:44:11', '20:44:11', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 14:14:11', '2023-11-29 14:14:11'),
(857, 1701267621, 'PRIYANKA', '2402463249', '7795343546', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '19:50:21', '20:50:21', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 14:20:21', '2023-11-29 14:20:21'),
(858, 1701267701, 'SUMIT KUMAR', '24529807505', '8941831248', NULL, NULL, 0, 0, 1, NULL, '2023-11-29', '19:51:41', '20:51:41', 1, '0', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 14:21:41', '2023-11-29 14:21:41'),
(859, 1701267752, 'AKSHIT', '2533998012', '9792816822', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '19:52:32', '20:52:32', 1, '30', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 14:22:32', '2023-11-29 14:22:32'),
(860, 1701267857, 'BHAVYA', '2902073382', '8959889590', NULL, NULL, 3, 0, 0, NULL, '2023-11-29', '19:54:17', '22:54:17', 3, '270', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 14:24:17', '2023-11-29 14:24:17'),
(861, 1701268562, 'VISHNU', '2753012447', '9417656966', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '20:06:02', '21:06:02', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 14:36:02', '2023-11-29 14:36:02'),
(862, 1701269428, 'ANKIT BAJAJ', '2365571827', '7903930846', NULL, NULL, 3, 0, 0, NULL, '2023-11-29', '20:20:28', '22:20:28', 2, '180', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 14:50:28', '2023-11-29 14:50:28'),
(863, 1701269555, 'MANSHI UPRAITI', '2852360304', '6398678719', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '20:22:35', '00:22:35', 4, '120', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 14:52:35', '2023-11-29 14:52:35'),
(864, 1701270207, 'SANTOSH SINGH', '2405202627', '9956382020', NULL, NULL, 2, 1, 0, NULL, '2023-11-29', '20:33:27', '21:33:27', 1, '80', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 15:03:27', '2023-11-29 15:03:27'),
(865, 1701270440, 'FRANCOIS LANDEAU', '2634109812', '2634109812', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '20:37:20', '21:37:20', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 15:07:20', '2023-11-29 15:07:20'),
(866, 1701270716, 'R DUTTA', '2404882974', '9163016611', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '20:41:56', '21:41:56', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 15:11:56', '2023-11-29 15:11:56'),
(867, 1701270963, 'MUKESH', '2305813848', '7208538199', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '20:46:03', '23:46:03', 3, '90', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 15:16:03', '2023-11-29 15:16:03'),
(868, 1701271818, 'DEBAK CHABDA', '2632763599', '8887620354', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '21:00:18', '22:00:18', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 15:30:18', '2023-11-29 15:30:18'),
(869, 1701271868, 'P K SINGH', '2864437749', '9450941355', NULL, NULL, 4, 0, 0, NULL, '2023-11-29', '21:01:08', '22:01:08', 1, '120', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 15:31:09', '2023-11-29 15:31:08'),
(870, 1701271932, 'vidya bhusan', '262955258', '9717715154', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '21:02:12', '22:02:12', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 15:32:12', '2023-11-29 15:32:12'),
(871, 1701272213, 'ashok kumar gupta', NULL, '8115638118', NULL, NULL, 2, 1, 0, NULL, '2023-11-29', '21:06:53', '22:06:53', 1, '80', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 15:36:53', '2023-11-29 15:36:53'),
(872, 1701272319, 'feezan', '2751067390', '8106766272', NULL, NULL, 3, 0, 0, NULL, '2023-11-29', '21:08:39', '22:08:39', 1, '90', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 15:38:39', '2023-11-29 15:38:39'),
(873, 1701272789, 'sentilong', '2631821871', '8860280194', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '21:16:29', '22:16:29', 1, '30', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 15:46:29', '2023-11-29 15:46:29'),
(874, 1701272870, 'rishav', '2752497312', '9390739720', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '21:17:50', '23:17:50', 2, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 15:47:50', '2023-11-29 15:47:50'),
(875, 1701273076, 'mahendra', '2106912845', '9870437887', NULL, NULL, 3, 0, 0, NULL, '2023-11-29', '21:21:16', '23:21:16', 2, '180', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 15:51:16', '2023-11-29 15:51:16'),
(876, 1701273334, 'sangeeta', '2205804804', '9419911326', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '21:25:00', '23:25:00', 2, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 15:56:06', '2023-11-29 15:55:34'),
(877, 1701273421, 'nikta singh', '2902155027', '8764162625', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '21:27:01', '23:27:01', 2, '120', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 15:57:01', '2023-11-29 15:57:01'),
(878, 1701273511, 'sofiya', '2748996900', '8574866289', NULL, NULL, 3, 0, 0, NULL, '2023-11-29', '21:28:31', '23:28:31', 2, '180', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 15:58:32', '2023-11-29 15:58:32'),
(879, 1701273894, 'anmul', '2577963790', '9092239797', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '21:34:54', '22:34:54', 1, '30', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 16:04:54', '2023-11-29 16:04:54'),
(880, 1701274078, 'chirag', '2405872535', '9205980662', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '21:37:58', '22:37:58', 1, '60', 1, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 16:07:58', '2023-11-29 16:07:58'),
(881, 1701274183, 'devindra singh', '2901852987', '9167460435', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '21:39:43', '00:39:43', 3, '180', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 16:09:43', '2023-11-29 16:09:43'),
(882, 1701274347, 'upendra', '2634127148', '6371790587', NULL, NULL, 4, 0, 0, NULL, '2023-11-29', '21:42:27', '22:42:27', 1, '120', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 16:12:27', '2023-11-29 16:12:27'),
(883, 1701274440, 'ayushi', '2851785662', '8318132415', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '21:44:00', '22:44:00', 1, '60', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 16:14:00', '2023-11-29 16:14:00'),
(884, 1701274560, 'niraj kumar', '2405899344', '9999419833', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '21:46:00', '22:46:00', 1, '30', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 16:16:00', '2023-11-29 16:16:00'),
(885, 1701274822, 'urweshi', '2201180349', '9819767666', NULL, NULL, 4, 0, 0, NULL, '2023-11-29', '21:50:22', '22:50:22', 1, '120', 2, NULL, 'B', 0, 0, 4, NULL, 0, 0, NULL, '2023-11-29 16:20:22', '2023-11-29 16:20:22'),
(886, 1701275987, 'p k segal', '2634096545', '9412193421', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '22:09:47', '00:09:47', 2, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 16:39:47', '2023-11-29 16:39:47'),
(887, 1701276637, 'devindra', '2901852987', '9167460435', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '22:20:37', '23:20:37', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 16:50:37', '2023-11-29 16:50:37'),
(888, 1701276722, 'uday', '2634105711', '7252821810', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '22:22:02', '00:22:02', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 16:52:02', '2023-11-29 16:52:02'),
(889, 1701276865, 'akshit', '2533998012', '9792816822', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '22:24:25', '00:24:25', 2, '120', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 16:54:26', '2023-11-29 16:54:25'),
(890, 1701277713, 'ashish', NULL, '9634082353', NULL, NULL, 0, 0, 1, NULL, '2023-11-29', '22:38:33', '23:38:33', 1, '0', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 17:08:33', '2023-11-29 17:08:33'),
(891, 1701278161, 'ayushi', '2851785662', '8318132415', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '22:46:01', '23:46:01', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 17:16:01', '2023-11-29 17:16:01'),
(892, 1701278263, 'mahesh kumar', '2752983691', '9761210385', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '22:47:43', '23:47:43', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 17:17:43', '2023-11-29 17:17:43'),
(893, 1701278372, 'raj rishi pandey', '2532312507', '9425156901', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '22:49:32', '23:49:32', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 17:19:32', '2023-11-29 17:19:32'),
(894, 1701278429, 'feezan', '2751067390', '8106766272', NULL, NULL, 3, 0, 0, NULL, '2023-11-29', '22:50:29', '23:50:29', 1, '90', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 17:20:29', '2023-11-29 17:20:29'),
(895, 1701278502, 'suresh shukla', '2902003836', '9303374000', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '22:51:42', '23:51:42', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 17:21:42', '2023-11-29 17:21:42'),
(896, 1701278573, 'amar jeet singh', '2853027922', '8826357778', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '22:52:53', '00:52:53', 2, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 17:22:53', '2023-11-29 17:22:53'),
(897, 1701278629, 'urwashi', '2201180349', '9819767666', NULL, NULL, 4, 0, 0, NULL, '2023-11-29', '22:53:49', '23:53:49', 1, '120', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 17:23:49', '2023-11-29 17:23:49'),
(898, 1701278899, 'vidya', '262955258', '9717715154', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '22:58:19', '00:58:19', 2, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 17:28:19', '2023-11-29 17:28:19'),
(899, 1701279174, 'man prashad', '220551900', '975214937', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '23:02:54', '00:02:54', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 17:32:55', '2023-11-29 17:32:54'),
(900, 1701279238, 'rupali sharma', '2849107822', '8218571745', NULL, NULL, 4, 0, 0, NULL, '2023-11-29', '23:03:58', '00:03:58', 1, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 17:33:58', '2023-11-29 17:33:58'),
(901, 1701279820, 'shivani', '2752233689', '8881295087', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '23:13:40', '00:13:40', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 17:43:40', '2023-11-29 17:43:40'),
(902, 1701280384, 'neha', '2902073382', '8959889597', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '23:23:04', '00:23:04', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 17:53:05', '2023-11-29 17:53:04'),
(903, 1701280562, 'arvind', '2205937792', '7289087450', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '23:26:02', '00:26:02', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 17:56:02', '2023-11-29 17:56:02'),
(904, 1701280745, 'shwata singh', '2853011966', '9648799715', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '23:29:05', '00:29:05', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 17:59:06', '2023-11-29 17:59:05'),
(905, 1701280834, 'puran joshi', '2104690162', '9412037031', NULL, NULL, 5, 0, 0, NULL, '2023-11-29', '23:30:34', '00:30:34', 1, '150', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 18:00:34', '2023-11-29 18:00:34');
INSERT INTO `sitting_entries` (`id`, `unique_id`, `name`, `pnr_uid`, `mobile_no`, `train_no`, `address`, `no_of_adults`, `no_of_children`, `no_of_baby_staff`, `seat_no`, `date`, `check_in`, `check_out`, `hours_occ`, `paid_amount`, `pay_type`, `remarks`, `shift`, `status`, `checkout_status`, `added_by`, `client_id`, `deleted`, `delete_by`, `delete_time`, `updated_at`, `created_at`) VALUES
(906, 1701280917, 'pradeep', '2105717947', '9096404837', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '23:31:57', '00:31:57', 1, '30', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 18:01:58', '2023-11-29 18:01:57'),
(907, 1701284287, 'ajay', '2533788661', '9012249498', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '00:28:07', '01:28:07', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 18:58:07', '2023-11-29 18:58:07'),
(908, 1701290564, 'pranav kumar gupta', '6528536246', '7005878002', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '02:12:44', '06:12:44', 4, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 20:42:44', '2023-11-29 20:42:44'),
(909, 1701291195, 'manoj', '307258', '7415268459', NULL, NULL, 0, 0, 1, NULL, '2023-11-29', '02:23:15', '03:23:15', 1, '0', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 20:53:15', '2023-11-29 20:53:15'),
(910, 1701292634, 'naveen kumar', '6529805783', '8077809320', NULL, NULL, 0, 0, 1, NULL, '2023-11-29', '02:47:14', '03:47:14', 1, '0', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:17:15', '2023-11-29 21:17:14'),
(911, 1701292708, 'neeraj kumar', '6529806746', '84452538015', NULL, NULL, 0, 0, 1, NULL, '2023-11-29', '02:48:28', '03:48:28', 1, '0', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:18:29', '2023-11-29 21:18:28'),
(912, 1701292807, 'ranjeet singh', '6623256009', '6200963463', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '02:50:07', '04:50:07', 2, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:20:07', '2023-11-29 21:20:07'),
(913, 1701293299, 'vijay aggrwal', '6228189795', '9903987980', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '02:58:19', '07:58:19', 5, '300', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:28:19', '2023-11-29 21:28:19'),
(914, 1701293475, 'rishav tiwari', '2633836164', '7017983214', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '03:01:15', '06:01:15', 3, '90', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:31:15', '2023-11-29 21:31:15'),
(915, 1701293563, 'ram prashad mishra', '2902237465', '9898992809', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '03:02:43', '07:02:43', 4, '240', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:32:44', '2023-11-29 21:32:44'),
(916, 1701293656, 'neeraj', '595273', '9997968394', NULL, NULL, 0, 0, 1, NULL, '2023-11-29', '03:04:16', '04:04:16', 1, '0', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:34:16', '2023-11-29 21:34:16'),
(917, 1701293712, 'abhisek', '595273', '9760418513', NULL, NULL, 0, 0, 1, NULL, '2023-11-29', '03:05:12', '04:05:12', 1, '0', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:35:12', '2023-11-29 21:35:12'),
(918, 1701293801, 'dharmesh', '2534130300', '8810236371', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '03:06:41', '05:06:41', 2, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:36:41', '2023-11-29 21:36:41'),
(919, 1701293857, 'd s kishore', '2902132313', '9493865648', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '03:07:37', '07:07:37', 4, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:37:37', '2023-11-29 21:37:37'),
(920, 1701294005, 'rubi', '6901066479', '7080249884', NULL, NULL, 3, 0, 0, NULL, '2023-11-29', '03:10:05', '05:10:05', 2, '180', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:40:05', '2023-11-29 21:40:05'),
(921, 1701294369, 'vinay kumar', '449689054917', '8689077464', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '03:16:09', '05:16:09', 2, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:46:09', '2023-11-29 21:46:09'),
(922, 1701294463, 'divakar kumar', '50383051579', '6392934583', NULL, NULL, 0, 0, 1, NULL, '2023-11-29', '03:17:43', '04:17:43', 1, '0', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:47:43', '2023-11-29 21:47:43'),
(923, 1701294684, 'prachi', '2633387646', '9821630507', NULL, NULL, 1, 1, 0, NULL, '2023-11-29', '03:21:24', '04:21:24', 1, '50', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:51:24', '2023-11-29 21:51:24'),
(924, 1701294805, 'g gosh', '6623279080', '890217600', NULL, NULL, 5, 0, 0, NULL, '2023-11-29', '03:23:25', '04:23:25', 1, '150', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:53:25', '2023-11-29 21:53:25'),
(925, 1701295162, 's p singh', '6427751486', '9568069307', NULL, NULL, 3, 1, 0, NULL, '2023-11-29', '03:29:22', '04:29:22', 1, '110', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 21:59:22', '2023-11-29 21:59:22'),
(926, 1701295350, 'santosh kumar', '6627460849', '8271304573', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '03:32:30', '04:32:30', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 22:02:30', '2023-11-29 22:02:30'),
(927, 1701295595, 'arbaj', '674953527166', '9106331371', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '03:36:35', '08:36:35', 5, '150', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 22:06:35', '2023-11-29 22:06:35'),
(928, 1701297745, 'anshu kumar', '6223331133', '9692046335', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '04:12:25', '05:12:25', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 22:42:25', '2023-11-29 22:42:25'),
(929, 1701298090, 'mohit sharma', '2203050212', '8920994489', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '04:18:10', '07:18:10', 3, '90', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 22:48:10', '2023-11-29 22:48:10'),
(930, 1701298179, 'ashutosh shukla', '2305872940', '7081891016', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '04:19:39', '05:19:39', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 22:49:39', '2023-11-29 22:49:39'),
(931, 1701298272, 'mohan bsha', '6624734697', '9831926497', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '04:21:12', '06:21:12', 2, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 22:51:13', '2023-11-29 22:51:12'),
(932, 1701298519, 'r s satya', '2104235605', '9307466129', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '04:25:19', '05:25:19', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 22:55:19', '2023-11-29 22:55:19'),
(933, 1701298795, 'bhasklar gosh', '2901200420', '8630063345', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '04:29:55', '05:29:55', 1, '60', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 22:59:55', '2023-11-29 22:59:55'),
(934, 1701299892, 'prachi', '2633387646', '9821630507', NULL, NULL, 1, 1, 0, NULL, '2023-11-29', '04:48:00', '06:48:00', 2, '100', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 23:18:49', '2023-11-29 23:18:12'),
(935, 1701300434, 'shishu pal', '311477809379', '9313871632', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '04:57:14', '06:57:14', 2, '120', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 23:27:14', '2023-11-29 23:27:14'),
(936, 1701300810, 'vijay', '236484387402', '830394004', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '05:03:30', '06:03:30', 1, '30', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-29 23:33:30', '2023-11-29 23:33:30'),
(937, 1701303640, 'ravneet', '2902330522', '9760212318', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '05:50:40', '06:50:40', 1, '30', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 00:20:40', '2023-11-30 00:20:40'),
(938, 1701303875, 'andarsen', '2902321452', '9993033573', NULL, NULL, 1, 0, 0, NULL, '2023-11-29', '05:54:35', '08:54:35', 3, '90', 1, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 00:24:35', '2023-11-30 00:24:35'),
(939, 1701304017, 'sanjay', '2632704684', '8544398567', NULL, NULL, 2, 0, 0, NULL, '2023-11-29', '05:56:57', '06:56:57', 1, '60', 2, NULL, 'C', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 00:26:57', '2023-11-30 00:26:57'),
(940, 1701304566, 'v p shukla', '8411054098', '9977939311', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '06:06:06', '07:06:06', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 00:36:06', '2023-11-30 00:36:06'),
(941, 1701304994, 'neeraj', NULL, '9997968394', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '06:13:14', '07:13:14', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 00:43:14', '2023-11-30 00:43:14'),
(942, 1701305249, 'subhang tirwedi', '8211213207', '962578880', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '06:17:29', '07:17:29', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 00:47:29', '2023-11-30 00:47:29'),
(943, 1701305310, 'manoj', '307258', '7415268459', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '06:18:30', '09:18:30', 3, '90', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 00:48:30', '2023-11-30 00:48:30'),
(944, 1701305634, 'shilpa ji', '2634164667', '9429912269', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '06:23:54', '08:23:54', 2, '120', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 00:53:54', '2023-11-30 00:53:54'),
(945, 1701305744, 'vishal kumar', '2901996571', '8000111970', NULL, NULL, 3, 2, 0, NULL, '2023-11-30', '06:25:44', '07:25:44', 1, '130', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 00:55:44', '2023-11-30 00:55:44'),
(946, 1701305837, 'ranjit sharma', '6856948971', '9910598151', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '06:27:17', '07:27:17', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 00:57:17', '2023-11-30 00:57:17'),
(947, 1701306866, 'ashok jadav', '2202569314', '9822425522', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '06:44:26', '08:44:26', 2, '120', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 01:14:26', '2023-11-30 01:14:26'),
(948, 1701306956, 'vijay', '236484387402', '830394004', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '06:45:56', '07:45:56', 1, '30', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 01:15:56', '2023-11-30 01:15:56'),
(949, 1701307050, 'drishti', '2850422806', '7021395446', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '06:47:30', '07:47:30', 1, '60', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 01:17:30', '2023-11-30 01:17:30'),
(950, 1701307115, 'mohan ji', '6624734697', '9831926497', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '06:48:35', '07:48:35', 1, '60', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 01:18:35', '2023-11-30 01:18:35'),
(951, 1701308068, 'ranjan  kumar', '2750764978', '7978593018', NULL, NULL, 6, 0, 0, NULL, '2023-11-30', '07:04:28', '09:04:28', 2, '360', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 01:34:28', '2023-11-30 01:34:28'),
(952, 1701308192, 'subham ji', '2901725740', '9776034900', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '07:06:32', '08:06:32', 1, '60', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 01:36:32', '2023-11-30 01:36:32'),
(953, 1701308384, 'aakriti', '2852735237', '9915635475', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '07:09:44', '08:09:44', 1, '30', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 01:39:44', '2023-11-30 01:39:44'),
(954, 1701308708, 'sipika', '2530045108', '9461590507', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '07:15:08', '08:15:08', 1, '30', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 01:45:09', '2023-11-30 01:45:08'),
(955, 1701308797, 'nitin', '25228087836', '9586961766', NULL, NULL, 4, 2, 0, NULL, '2023-11-30', '07:16:37', '08:16:37', 1, '160', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 01:46:37', '2023-11-30 01:46:37'),
(956, 1701309012, 'savita', '2902317772', '9496851170', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '07:20:12', '08:20:12', 1, '30', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 01:50:12', '2023-11-30 01:50:12'),
(957, 1701309726, 'manas ji', '2900426372', '9311348705', NULL, NULL, 3, 0, 0, NULL, '2023-11-30', '07:32:06', '08:32:06', 1, '90', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 02:02:06', '2023-11-30 02:02:06'),
(958, 1701310710, 'mohit', '2405493515', '9888080375', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '07:48:30', '08:48:30', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 02:18:31', '2023-11-30 02:18:30'),
(959, 1701312953, 'aryan', '8311225010', '7078609467', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '08:25:53', '09:25:53', 1, '30', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 02:55:53', '2023-11-30 02:55:53'),
(960, 1701313504, 'shruti', '8209961900', '9654075399', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '08:35:04', '09:35:04', 1, '60', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 03:05:04', '2023-11-30 03:05:04'),
(961, 1701313730, 'ajay merchant', '25309801288', '94779672300', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '08:38:50', '09:38:50', 1, '30', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 03:08:50', '2023-11-30 03:08:50'),
(962, 1701313936, 'shilpa', '2634164667', '9429912269', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '08:42:16', '09:42:16', 1, '60', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 03:12:16', '2023-11-30 03:12:16'),
(963, 1701314064, 'rajeev', '210517875', '7024639333', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '08:44:24', '09:44:24', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 03:14:24', '2023-11-30 03:14:24'),
(964, 1701314666, 'sandeep ji', '22059117964', '955975564', NULL, NULL, 2, 1, 0, NULL, '2023-11-30', '08:54:26', '09:54:26', 1, '80', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 03:24:26', '2023-11-30 03:24:26'),
(965, 1701317982, 'ranjan kumar', '2750764978', '7978593018', NULL, NULL, 6, 0, 0, NULL, '2023-11-30', '09:49:42', '10:49:42', 1, '180', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 04:19:43', '2023-11-30 04:19:42'),
(966, 1701323973, 'gautam ji', '450562773938', '9925236530', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '11:29:33', '12:29:33', 1, '60', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 05:59:33', '2023-11-30 05:59:33'),
(967, 1701329798, 'parth', '204712402018', '7889561816', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '13:06:38', '14:06:38', 1, '30', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 07:36:39', '2023-11-30 07:36:38'),
(968, 1701329878, 'mukesh ji', '2105973097', '9971855244', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '13:07:58', '15:07:58', 2, '60', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-11-30 07:37:58', '2023-11-30 07:37:58'),
(969, 1701334026, 'adarsh', '2204610492', '8707446780', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '14:17:06', '15:17:06', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 08:47:07', '2023-11-30 08:47:06'),
(970, 1701334451, 'praveen kumar', '2525', '9760538916', NULL, NULL, 0, 0, 1, NULL, '2023-11-30', '14:24:11', '15:24:11', 1, '0', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 08:54:11', '2023-11-30 08:54:11'),
(971, 1701334722, 'yug malhotra', '635771513208', '9027699718', NULL, NULL, 8, 0, 0, NULL, '2023-11-30', '14:28:42', '15:28:42', 1, '240', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 08:58:42', '2023-11-30 08:58:42'),
(972, 1701334855, 'ASHOK KUMAR', '2465870590', '9414424699', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '14:30:55', '15:30:55', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 09:00:56', '2023-11-30 09:00:56'),
(973, 1701335506, 'AJEET KUMAR', '28453100381', '9915575765', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '14:41:46', '16:41:46', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 09:11:46', '2023-11-30 09:11:46'),
(974, 1701335784, 'SHIVAJEET', '210594778', '9467070707', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '14:46:24', '15:46:24', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 09:16:24', '2023-11-30 09:16:24'),
(975, 1701336995, 'KAPIL', '2534085443', '8052880393', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '15:06:35', '16:06:35', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 09:36:35', '2023-11-30 09:36:35'),
(976, 1701337143, 'pramod kumar', '386864115494', '9305429199', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '15:09:03', '16:09:03', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 09:39:03', '2023-11-30 09:39:03'),
(977, 1701337994, 'ashok yadav', '2753059647', '9823195812', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '15:23:14', '16:23:14', 1, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 09:53:14', '2023-11-30 09:53:14'),
(978, 1701338332, 'kushal', '8511244460', '8570057892', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '15:28:52', '16:28:52', 1, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 09:58:52', '2023-11-30 09:58:52'),
(979, 1701338584, 'kirti', '2901849062', '7658908995', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '15:33:04', '16:33:04', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 10:03:05', '2023-11-30 10:03:04'),
(980, 1701338878, 'parth', '204712402018', '7889561816', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '15:37:58', '16:37:58', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 10:07:58', '2023-11-30 10:07:58'),
(981, 1701339661, 'sapann', '2533093720', '9927516067', NULL, NULL, 3, 0, 0, NULL, '2023-11-30', '15:51:00', '17:51:00', 2, '180', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 10:21:35', '2023-11-30 10:21:01'),
(982, 1701339976, 'ansh kapur', '2853087211', '9870839123', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '15:56:16', '16:56:16', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 10:26:16', '2023-11-30 10:26:16'),
(983, 1701340197, 'amreet  kumar singh', '2634151765', '9559968922', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '15:59:57', '19:59:57', 4, '120', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 10:29:57', '2023-11-30 10:29:57'),
(984, 1701340558, 'bhabna', '2305376316', '9627615775', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '16:05:58', '17:05:58', 1, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 10:35:58', '2023-11-30 10:35:58'),
(985, 1701341615, 'abhimanyu sin gh', '2532769265', '9950240237', NULL, NULL, 12, 0, 0, NULL, '2023-11-30', '16:23:35', '17:23:35', 1, '360', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 10:53:36', '2023-11-30 10:53:35'),
(986, 1701341794, 'deepak', '2533971886', '9599610110', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '16:26:34', '17:26:34', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 10:56:34', '2023-11-30 10:56:34'),
(987, 1701342237, 'madan lal', '2533984978', '9818226003', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '16:33:57', '17:33:57', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 11:03:57', '2023-11-30 11:03:57'),
(988, 1701342894, 'shabina bano', '22032776867', '8003207865', NULL, NULL, 0, 0, 1, NULL, '2023-11-30', '16:44:54', '17:44:54', 1, '0', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 11:14:54', '2023-11-30 11:14:54'),
(989, 1701343028, 'dilip', '2105807087', '8527212330', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '16:47:08', '18:47:08', 2, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 11:17:08', '2023-11-30 11:17:08'),
(990, 1701343201, 'arpit', '2852592571', '6306329077', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '16:50:01', '17:50:01', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 11:20:01', '2023-11-30 11:20:01'),
(991, 1701343279, 'ansh kapur', '2853087211', '9870839123', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '16:51:19', '17:51:19', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 11:21:19', '2023-11-30 11:21:19'),
(992, 1701343321, 'amit mhera', NULL, '9411773964', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '16:52:01', '17:52:01', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 11:22:02', '2023-11-30 11:22:01'),
(993, 1701343379, 'ashish thakre', '2902311412', '7585959847', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '16:52:59', '17:52:59', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 11:22:59', '2023-11-30 11:22:59'),
(994, 1701343548, 'ajay', '2101766244', '8979699907', NULL, NULL, 4, 1, 0, NULL, '2023-11-30', '16:55:48', '17:55:48', 1, '140', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 11:25:48', '2023-11-30 11:25:48'),
(995, 1701344004, 'anil arora', '2901657256', '9760283190', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '17:03:24', '18:03:24', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 11:33:24', '2023-11-30 11:33:24'),
(996, 1701344291, 'jagdish mhaptra', NULL, '8744000414', NULL, NULL, 4, 0, 0, NULL, '2023-11-30', '17:08:11', '18:08:11', 1, '120', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 11:38:11', '2023-11-30 11:38:11'),
(997, 1701344657, 'sumesh', '2534105565', '9811595434', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '17:14:17', '18:14:17', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 11:44:17', '2023-11-30 11:44:17'),
(998, 1701345038, 'preiyanshi', '2902391753', '9650073919', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '17:20:38', '18:20:38', 1, '30', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 11:50:38', '2023-11-30 11:50:38'),
(999, 1701345150, 'anshi tiwari', '2900005519', '7317329544', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '17:22:30', '20:22:30', 3, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 11:52:30', '2023-11-30 11:52:30'),
(1000, 1701345242, 'arpit yadav', '2852592571', '6306329077', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '17:24:02', '19:24:02', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 11:54:02', '2023-11-30 11:54:02'),
(1001, 1701346322, 'gunjan', NULL, '9258030654', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '17:42:02', '18:42:02', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 12:12:02', '2023-11-30 12:12:02'),
(1002, 1701346527, 'tirvendra singh', '542477', '8437001211', NULL, NULL, 0, 0, 1, NULL, '2023-11-30', '17:45:27', '18:45:27', 1, '0', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 12:15:27', '2023-11-30 12:15:27'),
(1003, 1701346606, 'geeta', '2105942334', '7394016000', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '17:46:46', '18:46:46', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 12:16:46', '2023-11-30 12:16:46'),
(1004, 1701346700, 'PUSHKAR LAL', '2753057585', '7579010128', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '17:48:20', '18:48:20', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 12:18:21', '2023-11-30 12:18:20'),
(1005, 1701347681, 'SUBHAM', '2305918350', '6205086689', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '18:04:41', '20:04:41', 2, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 12:34:41', '2023-11-30 12:34:41'),
(1006, 1701347783, 'SUJATA CHAUHAN', NULL, '7015899247', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '18:06:23', '19:06:23', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 12:36:23', '2023-11-30 12:36:23'),
(1007, 1701348090, 'REKHA MAL', '2366109619', '9320844411', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '18:11:30', '20:11:30', 2, '120', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 12:41:30', '2023-11-30 12:41:30'),
(1008, 1701349900, 'dinesh', '2105960622', '7300143365', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '18:41:40', '20:41:40', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 13:11:40', '2023-11-30 13:11:40'),
(1009, 1701350004, 'mo majid', '2205974663', '7983011141', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '18:43:24', '21:43:24', 3, '90', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 13:13:24', '2023-11-30 13:13:24'),
(1010, 1701350513, 'rajesh kumar', '2534139333', '9772052000', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '18:51:53', '19:51:53', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 13:21:53', '2023-11-30 13:21:53'),
(1011, 1701350630, 'ANIL SINGH', '2634144134', '8194036767', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '18:53:00', '19:53:00', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 13:24:11', '2023-11-30 13:23:50'),
(1012, 1701351768, 'SHIVANG', '2205214360', '7007045747', NULL, NULL, 5, 0, 0, NULL, '2023-11-30', '19:12:48', '20:12:48', 1, '150', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 13:42:48', '2023-11-30 13:42:48'),
(1013, 1701352497, 'RAVI', '2103308547', '7358366501', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '19:24:57', '20:24:57', 1, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 13:54:57', '2023-11-30 13:54:57'),
(1014, 1701352942, 'SHABINA BANO', '22032776867', '8003207865', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '19:32:22', '21:32:22', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 14:02:22', '2023-11-30 14:02:22'),
(1015, 1701353087, 'SANDEEP', '2205145779', '9917200409', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '19:34:47', '20:34:47', 1, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 14:04:47', '2023-11-30 14:04:47'),
(1016, 1701353787, 'ROHIN KAUSHAL', '2305946183', '9837017585', NULL, NULL, 3, 0, 0, NULL, '2023-11-30', '19:46:27', '21:46:27', 2, '180', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 14:16:27', '2023-11-30 14:16:27'),
(1017, 1701355229, 'UDIP', '2534206496', '9409719457', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '20:10:29', '23:10:29', 3, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 14:40:29', '2023-11-30 14:40:29'),
(1018, 1701356292, 'PRABHAT', '2305946173', '8770182165', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '20:28:12', '23:28:12', 3, '90', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 14:58:12', '2023-11-30 14:58:12'),
(1019, 1701356684, 'MOHIT SHARMA', '2750560272', '8920994489', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '20:34:44', '21:34:44', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 15:04:44', '2023-11-30 15:04:44'),
(1020, 1701356809, 'dilip gupta', NULL, '9415353807', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '20:36:49', '21:36:49', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 15:06:49', '2023-11-30 15:06:49'),
(1021, 1701357532, 'puskar', '2753057585', '7579010128', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '20:48:52', '22:48:52', 2, '60', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 15:18:52', '2023-11-30 15:18:52'),
(1022, 1701357952, 'manveer', '2105937897', '7370886860', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '20:55:52', '21:55:52', 1, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 15:25:52', '2023-11-30 15:25:52'),
(1023, 1701358606, 'naman sharma', '2902435168', '8209454134', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '21:06:46', '22:06:46', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 15:36:47', '2023-11-30 15:36:46'),
(1024, 1701358721, 'rajesh sukla', '2634212350', '9584710039', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '21:08:41', '22:08:41', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 15:38:41', '2023-11-30 15:38:41'),
(1025, 1701358980, 'shalu', '2533703433', '9034826462', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '21:13:00', '23:13:00', 2, '60', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 15:43:00', '2023-11-30 15:43:00'),
(1026, 1701359111, 'mohit', '2405493515', '9888080375', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '21:15:11', '22:15:11', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 15:45:11', '2023-11-30 15:45:11'),
(1027, 1701359602, 'vikas', '237663739250', '7042044396', NULL, NULL, 3, 0, 0, NULL, '2023-11-30', '21:23:22', '01:23:22', 4, '360', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 15:53:22', '2023-11-30 15:53:22'),
(1028, 1701360372, 'shubham kumar', '2405971307', '7667611570', NULL, NULL, 1, 0, 0, NULL, '2023-11-30', '21:36:12', '22:36:12', 1, '30', 1, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 16:06:12', '2023-11-30 16:06:12'),
(1029, 1701360534, 'j k jha', '25105940479', '9425653899', NULL, NULL, 8, 2, 0, NULL, '2023-11-30', '21:38:54', '22:38:54', 1, '280', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 16:08:54', '2023-11-30 16:08:54'),
(1030, 1701361270, 'mohan', '2853137410', '9583399099', NULL, NULL, 2, 0, 0, NULL, '2023-11-30', '21:51:10', '23:51:10', 2, '120', 2, NULL, 'B', 0, 0, 5, NULL, 0, 0, NULL, '2023-11-30 16:21:11', '2023-11-30 16:21:11'),
(1031, 1701392814, 'adhik ji', '2901793876', '8602641353', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '06:36:54', '07:36:54', 1, '30', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-12-01 01:06:54', '2023-12-01 01:06:54'),
(1032, 1701393497, 'aman ji', '2751931947', '8791177951', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '06:48:17', '07:48:17', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-12-01 01:18:17', '2023-12-01 01:18:17'),
(1033, 1701395165, 'ganpat ji', '2102035591', '9930589445', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '07:16:05', '08:16:05', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-12-01 01:46:05', '2023-12-01 01:46:05'),
(1034, 1701395531, 'sonu ji', '2534140401', '9839815266', NULL, NULL, 4, 0, 0, NULL, '2023-12-01', '07:22:11', '08:22:11', 1, '120', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-12-01 01:52:11', '2023-12-01 01:52:11'),
(1035, 1701397832, 'dravesh', '8711267585', '9958991020', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '08:00:32', '10:00:32', 2, '120', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-12-01 02:30:32', '2023-12-01 02:30:32'),
(1036, 1701399331, 'krishna murty', '2534085221', '7989100124', NULL, NULL, 6, 0, 0, NULL, '2023-12-01', '08:25:31', '09:25:31', 1, '180', 2, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-12-01 02:55:31', '2023-12-01 02:55:31'),
(1037, 1701403683, 'devansh', '6901208738', '7459019182', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '09:38:03', '10:38:03', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-12-01 04:08:04', '2023-12-01 04:08:04'),
(1038, 1701413392, 'vijay', '2902480507', '9971653240', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '12:19:52', '13:19:52', 1, '30', 1, NULL, 'A', 0, 0, 6, NULL, 0, 0, NULL, '2023-12-01 06:49:52', '2023-12-01 06:49:52'),
(1039, 1701419163, 'vk', '1230', '1230', NULL, NULL, 0, 0, 1, NULL, '2023-12-01', '13:56:03', '14:56:03', 1, '0', 1, NULL, 'A', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 08:26:03', '2023-12-01 08:26:03'),
(1040, 1701419262, 'MAHESG KUMAR', '2533515291', '9816220012', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '13:57:42', '14:57:42', 1, '60', 1, NULL, 'A', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 08:27:42', '2023-12-01 08:27:42'),
(1041, 1701419400, 'ANUPAMA PATIL', '8708023904', '9869454735', NULL, NULL, 4, 0, 0, NULL, '2023-12-01', '14:00:00', '15:00:00', 1, '120', 1, NULL, 'C', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 08:30:00', '2023-12-01 08:30:00'),
(1042, 1701419484, 'SURENDAR MARATHE', '2630498717', '7021412754', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '14:01:24', '18:01:24', 4, '240', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 08:31:24', '2023-12-01 08:31:24'),
(1043, 1701419705, 'SANJAY', '2853105067', '9699500532', NULL, NULL, 7, 0, 0, NULL, '2023-12-01', '14:05:05', '16:05:05', 2, '420', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 08:35:05', '2023-12-01 08:35:05'),
(1044, 1701419879, 'VISHNU', '123456789', '8192967676', NULL, NULL, 0, 0, 1, NULL, '2023-12-01', '14:07:59', '15:07:59', 1, '0', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 08:37:59', '2023-12-01 08:37:59'),
(1045, 1701421611, 'ASHOK  KUMAR', '6528592026', '7909004947', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '14:36:51', '15:36:51', 1, '30', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 09:06:51', '2023-12-01 09:06:51'),
(1046, 1701421978, 'BHAGWAN SINGH', '2534224223', '9414749022', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '14:42:00', '16:42:00', 2, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 11:05:01', '2023-12-01 09:12:58'),
(1047, 1701422240, 'LAXMI SINGH', '2203304218', '8108765423', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '14:47:20', '16:47:20', 2, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 09:17:20', '2023-12-01 09:17:20'),
(1048, 1701422955, 'KALYANI', '8708023904', '9869454735', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '14:59:00', '16:59:00', 2, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 10:27:39', '2023-12-01 09:29:15'),
(1049, 1701423436, 'VIJAY', '123', '9971653240', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '15:07:16', '17:07:16', 2, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 09:37:16', '2023-12-01 09:37:16'),
(1050, 1701424787, 'PREMA', '2902424549', '6366013751', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '15:29:47', '16:29:47', 1, '30', 1, NULL, 'B', 0, 0, 3, NULL, 0, 0, NULL, '2023-12-01 09:59:47', '2023-12-01 09:59:47'),
(1051, 1701424897, 'GAURAV', '2105862957', '7800131618', NULL, NULL, 4, 0, 0, NULL, '2023-12-01', '15:31:37', '16:31:37', 1, '120', 1, NULL, 'B', 0, 0, 3, NULL, 0, 0, NULL, '2023-12-01 10:01:37', '2023-12-01 10:01:37'),
(1052, 1701425178, 'REKHA', '2201667869', '9755800578', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '15:36:18', '16:36:18', 1, '60', 1, NULL, 'B', 0, 0, 3, NULL, 0, 0, NULL, '2023-12-01 10:06:18', '2023-12-01 10:06:18'),
(1053, 1701425544, 'ASTHA', '2305995410', '7217313713', NULL, NULL, 3, 0, 0, NULL, '2023-12-01', '15:42:24', '17:42:24', 2, '180', 1, NULL, 'B', 0, 0, 3, NULL, 0, 0, NULL, '2023-12-01 10:12:24', '2023-12-01 10:12:24'),
(1054, 1701425770, 'UDAY PRAKASH', '2634187455', '9772796320', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '15:46:10', '17:46:10', 2, '60', 1, NULL, 'B', 0, 0, 3, NULL, 0, 0, NULL, '2023-12-01 10:16:10', '2023-12-01 10:16:10'),
(1055, 1701426569, 'CHITIJ', '2634234257', '9818107564', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '15:59:29', '17:59:29', 2, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 10:29:29', '2023-12-01 10:29:29'),
(1056, 1701426911, 'MAMTA DEVI', '2405974818', '9457723977', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '16:05:11', '17:05:11', 1, '30', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 10:35:11', '2023-12-01 10:35:11'),
(1057, 1701427194, 'TANIYA MUKHARJI', '2846547080', '8967838960', NULL, NULL, 3, 0, 0, NULL, '2023-12-01', '16:09:54', '22:09:54', 6, '540', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 10:39:54', '2023-12-01 10:39:54'),
(1058, 1701427309, 'P BOSE', '2165705587', '8013682477', NULL, NULL, 3, 0, 0, NULL, '2023-12-01', '16:11:00', '22:11:00', 6, '540', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 15:20:12', '2023-12-01 10:41:49'),
(1059, 1701427915, 'DEEPAK', '2630329864', '9410396474', NULL, NULL, 3, 0, 0, NULL, '2023-12-01', '16:21:55', '18:21:55', 2, '180', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 10:51:56', '2023-12-01 10:51:56'),
(1060, 1701428015, 'ASISH', '2753144689', '123456789', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '16:23:35', '17:23:35', 1, '30', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 10:53:35', '2023-12-01 10:53:35'),
(1061, 1701428474, 'VINAY KUMAR', '2902543393', '0', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '16:31:14', '17:31:14', 1, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 11:01:14', '2023-12-01 11:01:14'),
(1062, 1701429313, 'B S CAHNDEL', '2753107038', '9411190469', NULL, NULL, 3, 0, 0, NULL, '2023-12-01', '16:45:13', '17:45:13', 1, '90', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 11:15:13', '2023-12-01 11:15:13'),
(1063, 1701429656, 'GAURAV', '123', '1223', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '16:50:56', '17:50:56', 1, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 11:20:56', '2023-12-01 11:20:56'),
(1064, 1701429961, 'ANAND KUMAR', '2205368381', '0', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '16:56:01', '17:56:01', 1, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 11:26:01', '2023-12-01 11:26:01'),
(1065, 1701430051, 'MANRAJ', '809928199574', '6378936480', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '16:57:31', '17:57:31', 1, '30', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 11:27:32', '2023-12-01 11:27:31'),
(1066, 1701430294, 'VIMLESH YADAV', '977189931495', '9369788172', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '17:01:00', '20:01:00', 3, '90', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 13:25:18', '2023-12-01 11:31:34'),
(1067, 1701430768, 'RAKESH JI', '2634137792', '9149199948', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '17:09:28', '18:09:28', 1, '30', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 11:39:29', '2023-12-01 11:39:29'),
(1068, 1701431367, 'PAWAN', '2205847187', '9540200854', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '17:19:27', '18:19:27', 1, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 11:49:27', '2023-12-01 11:49:27'),
(1069, 1701431818, 'ABHISHEK', '2853088674', '7827273311', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '17:26:58', '20:26:58', 3, '90', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 11:56:58', '2023-12-01 11:56:58'),
(1070, 1701436139, 'SHIWANI', '2405960581', '7417138633', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '18:38:59', '20:38:59', 2, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 13:08:59', '2023-12-01 13:08:59'),
(1071, 1701436793, 'VINAY RATHI', '2104350912', '9352510986', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '18:49:53', '23:49:53', 5, '300', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 13:19:54', '2023-12-01 13:19:53'),
(1072, 1701436933, 'AKSHAY', '2752605724', '9532494216', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '18:52:13', '19:52:13', 1, '30', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 13:22:13', '2023-12-01 13:22:13'),
(1073, 1701439339, 'SANJIV KUMAR', '2304173380', '7250747202', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '19:32:19', '21:32:19', 2, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 14:02:19', '2023-12-01 14:02:19'),
(1074, 1701440051, 'VIKASH JI', '2533577537', '9437429398', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '19:44:11', '23:44:11', 4, '240', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 14:14:11', '2023-12-01 14:14:11'),
(1075, 1701440222, 'PRATIK', '2902461182', '8766359994', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '19:47:00', '21:47:00', 2, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 16:11:39', '2023-12-01 14:17:02'),
(1076, 1701440761, 'RAHUL', '586986488311', '8950519489', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '19:56:00', '21:56:00', 2, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 15:50:28', '2023-12-01 14:26:01'),
(1077, 1701441616, 'YOGESH', '2634206816', '9898957657', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '20:10:16', '21:10:16', 1, '30', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 14:40:17', '2023-12-01 14:40:16'),
(1078, 1701442432, 'MANISH', '2206001249', '7006855467', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '20:23:52', '22:23:52', 2, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 14:53:52', '2023-12-01 14:53:52'),
(1079, 1701442487, 'DHARAVEER', '2205539184', '7800293355', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '20:24:00', '21:24:00', 1, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 15:00:21', '2023-12-01 14:54:47'),
(1080, 1701442986, 'JATIN', '2753108189', '9557300934', NULL, NULL, 4, 0, 0, NULL, '2023-12-01', '20:33:06', '21:33:06', 1, '120', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 15:03:06', '2023-12-01 15:03:06'),
(1081, 1701443191, 'SUNIL SHARMA', '2902568773', '1230', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '20:36:31', '21:36:31', 1, '30', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 15:06:31', '2023-12-01 15:06:31'),
(1082, 1701443900, 'VINIT', '2402404796', '9557112870', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '20:48:20', '21:48:20', 1, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 15:18:21', '2023-12-01 15:18:21'),
(1083, 1701444154, 'A PATRA', '2305366059', '7008183703', NULL, NULL, 3, 0, 0, NULL, '2023-12-01', '20:52:34', '23:52:34', 3, '270', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 15:22:34', '2023-12-01 15:22:34'),
(1084, 1701445778, 'D S KISHOR', '2106041213', '9493865648', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '21:19:38', '22:19:38', 1, '30', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 15:49:38', '2023-12-01 15:49:38'),
(1085, 1701446266, 'ASHUTOSH SHUKLA', '2305993746', '7893845256', NULL, NULL, 2, 1, 0, NULL, '2023-12-01', '21:27:46', '23:27:46', 2, '160', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 15:57:46', '2023-12-01 15:57:46'),
(1086, 1701447031, 'SANJANA KUMARI', '2203352650', '7903570616', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '21:40:31', '22:40:31', 1, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 16:10:31', '2023-12-01 16:10:31'),
(1087, 1701447205, 'GIRISH KUMAR', '2205959292', '9829215101', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '21:43:25', '22:43:25', 1, '30', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 16:13:25', '2023-12-01 16:13:25'),
(1088, 1701447369, 'TARUN', '2205898361', '9826158585', NULL, NULL, 5, 3, 0, NULL, '2023-12-01', '21:46:09', '23:46:09', 2, '420', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 16:16:09', '2023-12-01 16:16:09'),
(1089, 1701447803, 'AKASH', '2103456872', '1230', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '21:53:23', '22:53:23', 1, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 16:23:23', '2023-12-01 16:23:23'),
(1090, 1701447978, 'REEMA MANDAL', '2365661460', '8637581140', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '21:56:18', '00:56:18', 3, '90', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 16:26:18', '2023-12-01 16:26:18'),
(1091, 1701448072, 'RAGHU', '2305640281', '9885850864', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '21:57:52', '23:57:52', 2, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-01 16:27:52', '2023-12-01 16:27:52'),
(1092, 1701448466, 'A MANDOL', '2627630226', '8637581140', NULL, NULL, 4, 0, 0, NULL, '2023-12-01', '22:04:26', '01:04:26', 3, '360', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 16:34:26', '2023-12-01 16:34:26'),
(1093, 1701448740, 'GAURAV', '2205941436', '9261199000', NULL, NULL, 3, 0, 1, NULL, '2023-12-01', '22:09:00', '00:09:00', 2, '180', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 16:39:00', '2023-12-01 16:39:00'),
(1094, 1701448839, 'KAMAL SINGH', '2306036979', '7500001903', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '22:10:00', '00:10:00', 2, '60', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 16:41:08', '2023-12-01 16:40:39'),
(1095, 1701449147, 'BRIJ KISHOR TRIBHUVAN', '2902410597', '9258369470', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '22:15:47', '03:15:47', 5, '300', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 16:45:47', '2023-12-01 16:45:47'),
(1096, 1701450696, 'MAHENDRA GUPTA', '2634128812', '7000551892', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '22:41:36', '23:41:36', 1, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 17:11:36', '2023-12-01 17:11:36'),
(1097, 1701450844, 'ADITI KARMAKAR', '2205959253', '9748591919', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '22:44:04', '03:44:04', 5, '150', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 17:14:04', '2023-12-01 17:14:04'),
(1098, 1701451477, 'BANWARI VERMA', '2853057688', '9460982117', NULL, NULL, 3, 0, 0, NULL, '2023-12-01', '22:54:37', '23:54:37', 1, '90', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 17:24:37', '2023-12-01 17:24:37'),
(1099, 1701451586, 'NILESH GOYAL', '2902320774', '9982200661', NULL, NULL, 2, 0, 1, NULL, '2023-12-01', '22:56:26', '23:56:26', 1, '60', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 17:26:26', '2023-12-01 17:26:26'),
(1100, 1701452145, 'MOHAN', '2750299808', '9664133354', NULL, NULL, 3, 0, 0, NULL, '2023-12-01', '23:05:45', '00:05:45', 1, '90', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 17:35:46', '2023-12-01 17:35:45'),
(1101, 1701452267, 'N B SHARMA', '2105407846', '8085351872', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '23:07:47', '00:07:47', 1, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 17:37:47', '2023-12-01 17:37:47'),
(1102, 1701453519, 'HARISH', '2753106091', '9021208756', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '23:28:39', '04:28:39', 5, '300', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 17:58:39', '2023-12-01 17:58:39'),
(1103, 1701453661, 'ARIJIT KUNDU', '2902409993', '8583053542', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '23:31:01', '03:31:01', 4, '120', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 18:01:01', '2023-12-01 18:01:01'),
(1104, 1701454568, 'R K JAIN', '2634247262', '9440319080', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '23:46:08', '00:46:08', 1, '30', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 18:16:08', '2023-12-01 18:16:08'),
(1105, 1701454767, 'NIMISHA', '2405417124', '9199300306', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '23:49:27', '00:49:27', 1, '30', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 18:19:27', '2023-12-01 18:19:27'),
(1106, 1701455305, 'ASHUTOSH SHUKLA', '2305993746', '7893845256', NULL, NULL, 2, 1, 0, NULL, '2023-12-01', '23:58:25', '00:58:25', 1, '80', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 18:28:25', '2023-12-01 18:28:25'),
(1107, 1701455781, 'KAMAL SINGH', '2306036979', '7500001903', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '00:06:21', '01:06:21', 1, '30', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 18:36:21', '2023-12-01 18:36:21'),
(1108, 1701456549, 'CHANDRA KUMAR', '6525281855', '9752441539', NULL, NULL, 4, 0, 0, NULL, '2023-12-01', '00:19:09', '05:19:09', 5, '600', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 18:49:09', '2023-12-01 18:49:09'),
(1109, 1701457015, 'NISHI K SARKAR', '6856584326', '8167633974', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '00:26:55', '04:26:55', 4, '120', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 18:56:55', '2023-12-01 18:56:55'),
(1110, 1701458903, 'SHARAD RAJPUT', '2106010156', '8630149660', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '00:58:23', '02:58:23', 2, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 19:28:23', '2023-12-01 19:28:23'),
(1111, 1701459004, 'A MANDOL', '2627630226', '8637581140', NULL, NULL, 5, 0, 0, NULL, '2023-12-01', '01:00:04', '02:00:04', 1, '150', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 19:30:04', '2023-12-01 19:30:04'),
(1112, 1701459917, 'RAHUL PRASAD', '2534044044', '9341470813', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '01:15:17', '07:15:17', 6, '180', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 19:45:18', '2023-12-01 19:45:17'),
(1113, 1701460154, 'LOKNATH JENA', '2103180326', '7008066944', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '01:19:14', '06:19:14', 5, '300', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 19:49:14', '2023-12-01 19:49:14'),
(1114, 1701460379, 'NEELAM', '617574382284', '9389827512', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '01:22:59', '03:22:59', 2, '60', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 19:52:59', '2023-12-01 19:52:59'),
(1115, 1701461733, 'RUCHI BRIJWAL', '324975996755', '8650077102', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '01:45:33', '04:45:33', 3, '90', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 20:15:33', '2023-12-01 20:15:33'),
(1116, 1701464911, 'MANISH KUMARI', '2534188442', '6205872486', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '02:38:31', '04:38:31', 2, '120', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 21:08:31', '2023-12-01 21:08:31'),
(1117, 1701466096, 'KUNDAN', '2753152896', '8770136390', NULL, NULL, 4, 0, 2, NULL, '2023-12-01', '02:58:16', '04:58:16', 2, '240', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 21:28:17', '2023-12-01 21:28:16'),
(1118, 1701466234, 'DEV ASHISH MISHRA', '2902109859', '8637269873', NULL, NULL, 4, 0, 1, NULL, '2023-12-01', '03:00:34', '04:00:34', 1, '120', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 21:30:34', '2023-12-01 21:30:34'),
(1119, 1701466304, 'KHANGENDER KANT', '456499127284', '9711099885', NULL, NULL, 1, 0, 3, NULL, '2023-12-01', '03:01:44', '04:01:44', 1, '30', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 21:31:44', '2023-12-01 21:31:44'),
(1120, 1701466425, 'DIKSHA', '829785698146', '9389682567', NULL, NULL, 3, 0, 0, NULL, '2023-12-01', '03:03:45', '04:03:45', 1, '90', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 21:33:45', '2023-12-01 21:33:45'),
(1121, 1701466846, 'RAJU', '2753094320', '9032540503', NULL, NULL, 2, 0, 1, NULL, '2023-12-01', '03:10:46', '04:10:46', 1, '60', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 21:40:46', '2023-12-01 21:40:46'),
(1122, 1701468545, 'KRISHNENDU', '2405959078', '9953431330', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '03:39:05', '04:39:05', 1, '30', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 22:09:05', '2023-12-01 22:09:05'),
(1123, 1701469855, 'DIKSHA', '829785698146', '9389682567', NULL, NULL, 3, 0, 0, NULL, '2023-12-01', '04:00:55', '06:00:55', 2, '180', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 22:30:55', '2023-12-01 22:30:55'),
(1124, 1701470444, 'AMULYA RAJ', '2901801372', '9608360598', NULL, NULL, 14, 0, 0, NULL, '2023-12-01', '04:10:44', '05:10:44', 1, '420', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 22:40:44', '2023-12-01 22:40:44'),
(1125, 1701470785, 'RUPALI SHARMA', '8853822596', '8218571745', NULL, NULL, 4, 0, 0, NULL, '2023-12-01', '04:16:25', '05:16:25', 1, '120', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 22:46:25', '2023-12-01 22:46:25'),
(1126, 1701470929, 'CHANDHAR KALICA', '8710678322', '9706976471', NULL, NULL, 4, 0, 0, NULL, '2023-12-01', '04:18:49', '06:18:49', 2, '240', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 22:48:50', '2023-12-01 22:48:49'),
(1127, 1701471041, 'DEEPAK', '8411242172', '9780103583', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '04:20:41', '05:20:41', 1, '60', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 22:50:41', '2023-12-01 22:50:41'),
(1128, 1701471110, 'PRAMOD', '8901070803', '7852864907', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '04:21:50', '06:21:50', 2, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 22:51:50', '2023-12-01 22:51:50'),
(1129, 1701471169, 'VAID', '8711125959', '7296933913', NULL, NULL, 4, 0, 0, NULL, '2023-12-01', '04:22:49', '05:22:49', 1, '120', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 22:52:49', '2023-12-01 22:52:49'),
(1130, 1701471222, 'HARI SINGH', '8511116658', '7999850153', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '04:23:42', '06:23:42', 2, '120', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 22:53:42', '2023-12-01 22:53:42'),
(1131, 1701471322, 'S S CHOUDHRY', '8611137229', '8638326245', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '04:25:22', '05:25:22', 1, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 22:55:23', '2023-12-01 22:55:23');
INSERT INTO `sitting_entries` (`id`, `unique_id`, `name`, `pnr_uid`, `mobile_no`, `train_no`, `address`, `no_of_adults`, `no_of_children`, `no_of_baby_staff`, `seat_no`, `date`, `check_in`, `check_out`, `hours_occ`, `paid_amount`, `pay_type`, `remarks`, `shift`, `status`, `checkout_status`, `added_by`, `client_id`, `deleted`, `delete_by`, `delete_time`, `updated_at`, `created_at`) VALUES
(1132, 1701471546, 'BUTANSINGH', '8311305801', '9873202137', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '04:29:06', '05:29:06', 1, '30', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 22:59:06', '2023-12-01 22:59:06'),
(1133, 1701471693, 'R K SINHA', '8410572367', '9354559237', NULL, NULL, 4, 0, 0, NULL, '2023-12-01', '04:31:33', '05:31:33', 1, '120', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 23:01:33', '2023-12-01 23:01:33'),
(1134, 1701472348, 'KRISHNA', '8410554448', '7780795999', NULL, NULL, 6, 0, 0, NULL, '2023-12-01', '04:42:28', '06:42:28', 2, '360', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 23:12:28', '2023-12-01 23:12:28'),
(1135, 1701474241, 'VAIBHAV', '2900259452', '8448943373', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '05:14:01', '07:14:01', 2, '120', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-01 23:44:01', '2023-12-01 23:44:01'),
(1136, 1701475304, 'R K SINHA', '8410572367', '9354559237', NULL, NULL, 4, 0, 0, NULL, '2023-12-01', '05:31:44', '06:31:44', 1, '120', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 00:01:44', '2023-12-02 00:01:44'),
(1137, 1701475396, 'SWARNIMA', '6125965723', '9838730330', NULL, NULL, 3, 0, 0, NULL, '2023-12-01', '05:33:16', '06:33:16', 1, '90', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 00:03:17', '2023-12-02 00:03:16'),
(1138, 1701475461, 'ATHAR', '6328637309', '9415446925', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '05:34:21', '06:34:21', 1, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 00:04:21', '2023-12-02 00:04:21'),
(1139, 1701475518, 'JAYDEEP', '6128684434', '8175029315', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '05:35:18', '06:35:18', 1, '30', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 00:05:19', '2023-12-02 00:05:19'),
(1140, 1701475664, 'PIYUSH KUMAR', '2902322607', '8969936606', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '05:37:44', '07:37:44', 2, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 00:07:44', '2023-12-02 00:07:44'),
(1141, 1701475732, 'MANJEET SINGH', '6727293190', '9839810169', NULL, NULL, 3, 0, 0, NULL, '2023-12-01', '05:38:52', '06:38:52', 1, '90', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 00:08:52', '2023-12-02 00:08:52'),
(1142, 1701475835, 'ABHINAV', '6228659782', '9123960326', NULL, NULL, 3, 1, 0, NULL, '2023-12-01', '05:40:35', '06:40:35', 1, '110', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 00:10:35', '2023-12-02 00:10:35'),
(1143, 1701476121, 'RUPALI SHARMA', '8853822596', '8218571745', NULL, NULL, 4, 0, 0, NULL, '2023-12-01', '05:45:21', '06:45:21', 1, '120', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 00:15:21', '2023-12-02 00:15:21'),
(1144, 1701476309, 'ATUL VASANI', '2902168219', '9890072975', NULL, NULL, 2, 0, 0, NULL, '2023-12-01', '05:48:29', '06:48:29', 1, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 00:18:29', '2023-12-02 00:18:29'),
(1145, 1701476415, 'ASHOK KUMAR', '7909904947', '6528592026', NULL, NULL, 1, 0, 0, NULL, '2023-12-01', '05:50:15', '06:50:15', 1, '30', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 00:20:15', '2023-12-02 00:20:15'),
(1146, 1701477915, 'sai venkat', '8410554448', '9840886858', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '06:15:15', '07:15:15', 1, '30', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 00:45:15', '2023-12-02 00:45:15'),
(1147, 1701478253, 'vijay senha', '2534249248', '8999125197', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '06:20:53', '07:20:53', 1, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 00:50:53', '2023-12-02 00:50:53'),
(1148, 1701478864, 'chandra kumar', '6525281855', '9752441539', NULL, NULL, 4, 0, 0, NULL, '2023-12-02', '06:31:04', '07:31:04', 1, '120', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 01:01:06', '2023-12-02 01:01:05'),
(1149, 1701478960, 'anil', '2302996410', '7610180545', NULL, NULL, 3, 0, 0, NULL, '2023-12-02', '06:32:40', '07:32:40', 1, '90', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 01:02:40', '2023-12-02 01:02:40'),
(1150, 1701479319, 'sandeed', '2106041273', '9996102391', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '06:38:39', '07:38:39', 1, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 01:08:39', '2023-12-02 01:08:39'),
(1151, 1701479419, 'sai', '2206005869', '8399090330', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '06:40:19', '07:40:19', 1, '60', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 01:10:19', '2023-12-02 01:10:19'),
(1152, 1701480594, 'pramod', '2752904135', '9310050569', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '06:59:54', '07:59:54', 1, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 01:29:54', '2023-12-02 01:29:54'),
(1153, 1701480704, 'sushila singh', '2406009092', '9411559836', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '07:01:44', '08:01:44', 1, '30', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 01:31:44', '2023-12-02 01:31:44'),
(1154, 1701481200, 'abhisek', '2900331771', '7393961284', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '07:10:00', '08:10:00', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 01:40:00', '2023-12-02 01:40:00'),
(1155, 1701481272, 'marude', '2405926237', '9966833329', NULL, NULL, 3, 0, 0, NULL, '2023-12-02', '07:11:12', '08:11:12', 1, '90', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 01:41:12', '2023-12-02 01:41:12'),
(1156, 1701482650, 'agni eszka', '2902149178', '9675231779', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '07:34:10', '08:34:10', 1, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 02:04:10', '2023-12-02 02:04:10'),
(1157, 1701485429, 'krishna', '8410554448', '7780795999', NULL, NULL, 6, 0, 0, NULL, '2023-12-02', '08:20:29', '10:20:29', 2, '360', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 02:50:29', '2023-12-02 02:50:29'),
(1158, 1701485487, 'sai venkat', '8410554448', '9840886858', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '08:21:27', '09:21:27', 1, '30', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 02:51:27', '2023-12-02 02:51:27'),
(1159, 1701485575, 'athar', '63286373069', '9415446825', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '08:22:55', '10:22:55', 2, '120', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 02:52:55', '2023-12-02 02:52:55'),
(1160, 1701487205, 'rahul prashad', '2534044044', '9341470813', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '08:50:05', '10:50:05', 2, '60', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 03:20:05', '2023-12-02 03:20:05'),
(1161, 1701487392, 'asha sharma', NULL, '8690681495', NULL, NULL, 4, 0, 0, NULL, '2023-12-02', '08:53:12', '09:53:12', 1, '120', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 03:23:12', '2023-12-02 03:23:12'),
(1162, 1701495658, 'jitan', '2853185205', '9591777330', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '11:10:58', '12:10:58', 1, '60', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 05:40:58', '2023-12-02 05:40:58'),
(1163, 1701498087, 'bipin', '2103362527', '9140357342', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '11:51:27', '12:51:27', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 06:21:27', '2023-12-02 06:21:27'),
(1164, 1701498335, 'arayan', '2106043459', '7078609486', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '11:55:35', '12:55:35', 1, '30', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 06:25:35', '2023-12-02 06:25:35'),
(1165, 1701500814, 'avnish', '2106029967', '8847015830', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '12:36:54', '14:36:54', 2, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 07:06:54', '2023-12-02 07:06:54'),
(1166, 1701500947, 'karan', '2306009212', '9460811000', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '12:39:07', '20:39:07', 8, '240', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 07:09:07', '2023-12-02 07:09:07'),
(1167, 1701501759, 'vijay', '2901600369', '9988697100', NULL, NULL, 4, 0, 0, NULL, '2023-12-02', '12:52:39', '13:52:39', 1, '120', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 07:22:39', '2023-12-02 07:22:39'),
(1168, 1701502287, 'anil', '2632591788', '8209918989', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '13:01:27', '15:01:27', 2, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 07:31:27', '2023-12-02 07:31:27'),
(1169, 1701503173, 'vineet', '23305414163', '7888422274', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '13:16:13', '15:16:13', 2, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 07:46:14', '2023-12-02 07:46:13'),
(1170, 1701503939, 'sudish', '2406011461', '9846656433', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '13:28:59', '16:28:59', 3, '90', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 07:58:59', '2023-12-02 07:58:59'),
(1171, 1701504176, 'araya', '2405962445', '7505065788', NULL, NULL, 3, 0, 0, NULL, '2023-12-02', '13:32:56', '14:32:56', 1, '90', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 08:02:56', '2023-12-02 08:02:56'),
(1172, 1701505105, 'vaishali', '2205450098', '7742860235', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '13:48:25', '17:48:25', 4, '120', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-02 08:18:26', '2023-12-02 08:18:25'),
(1173, 1701505976, 'VISHNU KUMAR', '7451890985', '8192967676', NULL, NULL, 0, 0, 1, NULL, '2023-12-02', '14:02:56', '15:02:56', 1, '0', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 08:32:56', '2023-12-02 08:32:56'),
(1174, 1701506833, 'MANISHA ARYA', '2406009564', '8318703270', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '14:17:13', '15:17:13', 1, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 08:47:13', '2023-12-02 08:47:13'),
(1175, 1701506887, 'MANISH ARYA', '2406009564', '8318703270', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '14:18:00', '20:18:00', 6, '360', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 14:44:01', '2023-12-02 08:48:07'),
(1176, 1701507798, 'AKHTAR', '2105319125', '9871323530', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '14:33:18', '15:33:18', 1, '30', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 09:03:18', '2023-12-02 09:03:18'),
(1177, 1701508058, 'CH GOPI', '2634220945', '8116659468', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '14:37:38', '18:37:38', 4, '240', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 09:07:38', '2023-12-02 09:07:38'),
(1178, 1701508146, 'SONAMI', '2206004796', '8189001237', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '14:39:06', '17:39:06', 3, '90', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 09:09:06', '2023-12-02 09:09:06'),
(1179, 1701510564, 'NARVDESHWAR SHUKLA', '2402402329', '9997431884', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '15:19:24', '16:19:24', 1, '30', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 09:49:24', '2023-12-02 09:49:24'),
(1180, 1701511135, 'ASHUTOSH', '2634241577', '9111384506', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '15:28:55', '17:28:55', 2, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 09:58:56', '2023-12-02 09:58:55'),
(1181, 1701513160, 'ROHIT JOSHI', '2205945768', '7888778410', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '16:02:40', '17:02:40', 1, '30', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 10:32:40', '2023-12-02 10:32:40'),
(1182, 1701514139, 'AKHTAR', '123', '123', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '16:18:59', '17:18:59', 1, '30', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 10:48:59', '2023-12-02 10:48:59'),
(1183, 1701514245, 'ARUP DEY', '2303710215', '9830384852', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '16:20:45', '18:20:45', 2, '120', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 10:50:45', '2023-12-02 10:50:45'),
(1184, 1701515316, 'ANAND SWAMI', '2405915075', '8390577977', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '16:38:36', '17:38:36', 1, '30', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 11:08:36', '2023-12-02 11:08:36'),
(1185, 1701515670, 'SATOSH SINGH', '2900383717', '7905209635', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '16:44:30', '19:44:30', 3, '180', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 11:14:30', '2023-12-02 11:14:30'),
(1186, 1701515746, 'YASH RAJ', '2306073899', '9958149318', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '16:45:46', '17:45:46', 1, '30', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 11:15:46', '2023-12-02 11:15:46'),
(1187, 1701515790, 'PANKAJ', '2406010231', '8791062851', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '16:46:30', '17:46:30', 1, '30', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 11:16:30', '2023-12-02 11:16:30'),
(1188, 1701515845, 'MANSIH PANDAY', '2631905855', '9871297806', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '16:47:25', '17:47:25', 1, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 11:17:25', '2023-12-02 11:17:25'),
(1189, 1701515926, 'TIMENDRA SINGH', '2206083562', '7906118466', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '16:48:46', '17:48:46', 1, '30', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 11:18:46', '2023-12-02 11:18:46'),
(1190, 1701516329, 'MUKENDRA SINGH', '2104568425', '6377174230', NULL, NULL, 7, 0, 0, NULL, '2023-12-02', '16:55:29', '17:55:29', 1, '210', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 11:25:29', '2023-12-02 11:25:29'),
(1191, 1701516842, 'SAURAB', '2105565289', '8800595538', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '17:04:02', '18:04:02', 1, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 11:34:02', '2023-12-02 11:34:02'),
(1192, 1701516899, 'K UDYA BHANU', '2634250272', '9818544330', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '17:04:59', '18:04:59', 1, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 11:34:59', '2023-12-02 11:34:59'),
(1193, 1701516987, 'AYUSH', '2633987107', '9521752331', NULL, NULL, 5, 0, 0, NULL, '2023-12-02', '17:06:27', '18:06:27', 1, '150', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 11:36:27', '2023-12-02 11:36:27'),
(1194, 1701517821, 'MONIKA', '2853156861', '6005099253', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '17:20:21', '18:20:21', 1, '30', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 11:50:21', '2023-12-02 11:50:21'),
(1195, 1701518653, 'TARUN', '2853153357', '9419118133', NULL, NULL, 4, 0, 0, NULL, '2023-12-02', '17:34:13', '18:34:13', 1, '120', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 12:04:13', '2023-12-02 12:04:13'),
(1196, 1701519289, 'TAPAN KUMAR DAS /ITBP', '578918636477', '9348381867', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '17:44:49', '22:44:49', 5, '150', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 12:14:49', '2023-12-02 12:14:49'),
(1197, 1701519482, 'ASHOK', '2106082624', '9141000029', NULL, NULL, 1, 1, 0, NULL, '2023-12-02', '17:48:00', '20:48:00', 3, '150', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 14:43:02', '2023-12-02 12:18:02'),
(1198, 1701520300, 'NITESH KUMAR', '2534206464', '9711924858', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '18:01:40', '20:01:40', 2, '120', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 12:31:40', '2023-12-02 12:31:40'),
(1199, 1701520957, 'HEINZ MUELLER', '2753157034', '1233', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '18:12:37', '20:12:37', 2, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 12:42:37', '2023-12-02 12:42:37'),
(1200, 1701521316, 'ANAND KUMAR', '2749329831', '9798402330', NULL, NULL, 7, 0, 0, NULL, '2023-12-02', '18:18:36', '23:18:36', 5, '1050', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 12:48:36', '2023-12-02 12:48:36'),
(1201, 1701521817, 'MANISH ARYA', '2406009564', '8318703270', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '18:26:57', '19:26:57', 1, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 12:56:58', '2023-12-02 12:56:57'),
(1202, 1701523243, 'MOHIT', '2902433074', '9465509100', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '18:50:43', '20:50:43', 2, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 13:20:43', '2023-12-02 13:20:43'),
(1203, 1701524120, 'TARVEEN ARORA', '2633053516', '9826062020', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '19:05:20', '21:05:20', 2, '120', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 13:35:20', '2023-12-02 13:35:20'),
(1204, 1701524763, 'HIMANSHI', '2752996618', '9116117646', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '19:16:03', '00:16:03', 5, '300', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 13:46:03', '2023-12-02 13:46:03'),
(1205, 1701525030, 'NARESH', '2752946150', '9603192189', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '19:20:30', '20:20:30', 1, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 13:50:30', '2023-12-02 13:50:30'),
(1206, 1701525126, 'RITWIK', '240563879', '8092780026', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '19:22:06', '21:22:06', 2, '120', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 13:52:06', '2023-12-02 13:52:06'),
(1207, 1701525236, 'CHARANJEET', '2104738546', '9501151264', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '19:23:56', '21:23:56', 2, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 13:53:56', '2023-12-02 13:53:56'),
(1208, 1701525400, 'ABHISHEK SHRIVASTAV', '2406009283', '9415000945', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '19:26:40', '20:26:40', 1, '30', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 13:56:41', '2023-12-02 13:56:40'),
(1209, 1701525769, 'MAHESH', '2752022892', '7416231108', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '19:32:49', '20:32:49', 1, '30', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 14:02:49', '2023-12-02 14:02:49'),
(1210, 1701526785, 'ABHISHEK', '2206010341', '7428136070', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '19:49:45', '21:49:45', 2, '120', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 14:19:45', '2023-12-02 14:19:45'),
(1211, 1701527270, 'SHIV SANKAR', '2529855385', '9007818737', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '19:57:50', '07:57:50', 12, '360', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 14:27:50', '2023-12-02 14:27:50'),
(1212, 1701527378, 'AJEET PRATAP SINGH', '2306087204', '9627309617', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '19:59:38', '21:59:38', 2, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 14:29:38', '2023-12-02 14:29:38'),
(1213, 1701528012, 'SUMIT SHARMA', '2630950066', '8097484624', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '20:10:12', '23:10:12', 3, '180', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 14:40:12', '2023-12-02 14:40:12'),
(1214, 1701528146, 'HARDIK', '2533380230', '7597238138', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '20:12:26', '21:12:26', 1, '30', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 14:42:26', '2023-12-02 14:42:26'),
(1215, 1701528327, 'KAPIL SHARMA', '2634057151', '7986968931', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '20:15:27', '21:15:27', 1, '30', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 14:45:28', '2023-12-02 14:45:28'),
(1216, 1701528663, 'SANTOSH SINGH', '2900383717', '7905209635', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '20:21:03', '21:21:03', 1, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 14:51:03', '2023-12-02 14:51:03'),
(1217, 1701529876, 'PREET PAL KAUR', '2106010041', '9172269747', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '20:41:16', '21:41:16', 1, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 15:11:16', '2023-12-02 15:11:16'),
(1218, 1701529989, 'BHAVNA', '2752602046', '8619963112', NULL, NULL, 4, 0, 0, NULL, '2023-12-02', '20:43:09', '22:43:09', 2, '240', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 15:13:09', '2023-12-02 15:13:09'),
(1219, 1701530118, 'DHANANJAY', '2405763390', '9354969506', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '20:45:18', '22:45:18', 2, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 15:15:18', '2023-12-02 15:15:18'),
(1220, 1701530811, 'M H MANDAL', '2306014010', '9734224721', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '20:56:51', '21:56:51', 1, '30', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 15:26:52', '2023-12-02 15:26:51'),
(1221, 1701531221, 'ARCHANA', '2633182765', '7020429838', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '21:03:41', '00:03:41', 3, '180', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 15:33:42', '2023-12-02 15:33:41'),
(1222, 1701531342, 'SHIVAM', '2406092567', '9415757136', NULL, NULL, 2, 1, 0, NULL, '2023-12-02', '21:05:42', '22:05:42', 1, '80', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 15:35:42', '2023-12-02 15:35:42'),
(1223, 1701531445, 'NAVEEN SINGH', '2634171423', '7454049739', NULL, NULL, 3, 1, 0, NULL, '2023-12-02', '21:07:25', '00:07:25', 3, '330', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 15:37:25', '2023-12-02 15:37:25'),
(1224, 1701531897, 'MAMTA', '2206032940', '12330', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '21:14:57', '22:14:57', 1, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 15:44:57', '2023-12-02 15:44:57'),
(1225, 1701532375, 'NIHAR', '2900680445', '9090686264', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '21:22:55', '23:22:55', 2, '120', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 15:52:55', '2023-12-02 15:52:55'),
(1226, 1701532873, 'SADHNA TYAGI', '2403453959', '9425215681', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '21:31:13', '00:31:13', 3, '90', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 16:01:13', '2023-12-02 16:01:13'),
(1227, 1701533251, 'PAWAN SHARMA', '2902387622', '8432422475', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '21:37:31', '23:37:31', 2, '120', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 16:07:31', '2023-12-02 16:07:31'),
(1228, 1701533468, 'SUSHIL SHUKLA', '2902341586', '9411144468', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '21:41:08', '00:41:08', 3, '180', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 16:11:08', '2023-12-02 16:11:08'),
(1229, 1701533767, 'TARVEEN ARORA', '2633053516', '9826062020', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '21:46:07', '22:46:07', 1, '30', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 16:16:07', '2023-12-02 16:16:07'),
(1230, 1701533820, 'TARVEEN ARORA', '123', '123', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '21:47:00', '22:47:00', 1, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 16:17:00', '2023-12-02 16:17:00'),
(1231, 1701533918, 'MANISH JAIN', '2902617883', '9873064854', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '21:48:38', '22:48:38', 1, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 16:18:38', '2023-12-02 16:18:38'),
(1232, 1701534268, 'SHARVAN KUMAR', '2852750384', '9441541594', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '21:54:28', '23:54:28', 2, '60', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 16:24:28', '2023-12-02 16:24:28'),
(1233, 1701534367, 'RAKESH', '2534247552', '7078243024', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '21:56:07', '22:56:07', 1, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 16:26:07', '2023-12-02 16:26:07'),
(1234, 1701534421, 'HARSH KUMAR', '2753182061', '9510335488', NULL, NULL, 4, 0, 0, NULL, '2023-12-02', '21:57:01', '22:57:01', 1, '120', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 16:27:01', '2023-12-02 16:27:01'),
(1235, 1701534475, 'SRUTI', '2633157202', '7736540041', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '21:57:55', '22:57:55', 1, '60', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 16:27:55', '2023-12-02 16:27:55'),
(1236, 1701534537, 'MANI KANTTA', '2104076141', '9964722378', NULL, NULL, 4, 0, 0, NULL, '2023-12-02', '21:58:57', '23:58:57', 2, '240', 2, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-02 16:28:57', '2023-12-02 16:28:57'),
(1237, 1701534884, 'KSHITIZ', '2106010255', '9509024812', NULL, NULL, 3, 0, 0, NULL, '2023-12-02', '22:04:44', '00:04:44', 2, '180', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 16:34:44', '2023-12-02 16:34:44'),
(1238, 1701534961, 'VISHNU', '8192967676', '8192967676', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '22:06:01', '23:06:01', 1, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 16:36:01', '2023-12-02 16:36:01'),
(1239, 1701535126, 'P L ARORA', '2406071640', '9414490911', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '22:08:46', '00:08:46', 2, '120', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 16:38:46', '2023-12-02 16:38:46'),
(1240, 1701535266, 'POONAM SONAR', '922383624481', '7021982434', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '22:11:06', '23:11:06', 1, '30', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 16:41:06', '2023-12-02 16:41:06'),
(1241, 1701535538, 'UDAY', '2902657931', '6289999365', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '22:15:38', '23:15:38', 1, '30', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 16:45:38', '2023-12-02 16:45:38'),
(1242, 1701536967, 'SATYAM KUMAR', '2901506439', '7003721556', NULL, NULL, 3, 0, 0, NULL, '2023-12-02', '22:39:27', '23:39:27', 1, '90', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 17:09:27', '2023-12-02 17:09:27'),
(1243, 1701537044, 'MAHESH', '2633648273', '9414188535', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '22:40:44', '23:40:44', 1, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 17:10:44', '2023-12-02 17:10:44'),
(1244, 1701537138, 'DHARMESH', '2902637560', '8810236371', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '22:42:18', '00:42:18', 2, '120', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 17:12:18', '2023-12-02 17:12:18'),
(1245, 1701537434, 'ROHAN KAMLE', '2630194234', '8421721908', NULL, NULL, 3, 0, 0, NULL, '2023-12-02', '22:47:14', '23:47:14', 1, '90', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 17:17:14', '2023-12-02 17:17:14'),
(1246, 1701537493, 'DR GAURAV', '2305304164', '8094016110', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '22:48:13', '23:48:13', 1, '30', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 17:18:13', '2023-12-02 17:18:13'),
(1247, 1701537597, 'AMIT KUMAR', '2901506439', '7742944006', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '22:49:57', '23:49:57', 1, '60', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 17:19:57', '2023-12-02 17:19:57'),
(1248, 1701538002, 'SUSHIL', '2752557643', '9718991180', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '22:56:42', '23:56:42', 1, '30', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 17:26:42', '2023-12-02 17:26:42'),
(1249, 1701538517, 'ADITYA KUMAR', '2629127923', '8935942643', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '23:05:17', '01:05:17', 2, '60', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 17:35:17', '2023-12-02 17:35:17'),
(1250, 1701538934, 'RAVI', '2305711337', '9610442777', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '23:12:14', '00:12:14', 1, '30', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 17:42:14', '2023-12-02 17:42:14'),
(1251, 1701539639, 'PRAMOD', '8901070803', '7852864907', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '23:23:59', '00:23:59', 1, '30', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 17:53:59', '2023-12-02 17:53:59'),
(1252, 1701539858, 'PRIYA SEJPAL', '2902596095', '9833912212', NULL, NULL, 3, 0, 0, NULL, '2023-12-02', '23:27:38', '00:27:38', 1, '90', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 17:57:39', '2023-12-02 17:57:39'),
(1253, 1701540260, 'BHARTI CHOUDHRY', '2306000457', '9823083014', NULL, NULL, 2, 0, 1, NULL, '2023-12-02', '23:34:20', '00:34:20', 1, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 18:04:20', '2023-12-02 18:04:20'),
(1254, 1701540609, 'AKASH PANWAR', '2304964331', '7452072146', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '23:40:09', '00:40:09', 1, '30', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 18:10:09', '2023-12-02 18:10:09'),
(1255, 1701541156, 'NIHAR', '2900680445', '9090686264', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '23:49:16', '00:49:16', 1, '60', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 18:19:16', '2023-12-02 18:19:16'),
(1256, 1701542602, 'MAHESH', '2534184237', '9079391614', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '00:13:22', '01:13:22', 1, '60', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 18:43:22', '2023-12-02 18:43:22'),
(1257, 1701543485, 'SHIVAM MISHRA', '2206008395', '9621542471', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '00:28:05', '05:28:05', 5, '150', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 18:58:05', '2023-12-02 18:58:05'),
(1258, 1701545579, 'MUKESH CHANDRVANSHI', '2902436161', '7240883638', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '01:02:59', '05:02:59', 4, '120', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 19:33:00', '2023-12-02 19:32:59'),
(1259, 1701545983, 'ANSHUL', '736616383547', '7015830427', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '01:09:43', '05:09:43', 4, '120', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 19:39:43', '2023-12-02 19:39:43'),
(1260, 1701546229, 'BRIJESH SINGH', '2534299400', '9820525937', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '01:13:49', '04:13:49', 3, '180', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 19:43:49', '2023-12-02 19:43:49'),
(1261, 1701549083, 'RAVINDRA', '222602454268', '6397893803', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '02:01:23', '05:01:23', 3, '180', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 20:31:25', '2023-12-02 20:31:24'),
(1262, 1701549218, 'YOGESH SONI', '6227357581', '9427474895', NULL, NULL, 5, 1, 0, NULL, '2023-12-02', '02:03:38', '06:03:38', 4, '680', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 20:33:39', '2023-12-02 20:33:39'),
(1263, 1701550812, 'VAID PRAKASH', '2105844931', '9267817761', NULL, NULL, 2, 1, 1, NULL, '2023-12-02', '02:30:12', '03:30:12', 1, '80', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 21:00:12', '2023-12-02 21:00:12'),
(1264, 1701550940, 'VINOD KUSHWAH', '2852883044', '9045194195', NULL, NULL, 3, 0, 0, NULL, '2023-12-02', '02:32:20', '03:32:20', 1, '90', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 21:02:20', '2023-12-02 21:02:20'),
(1265, 1701551026, 'SAGAR GIRI', '2206057963', '9660739707', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '02:33:46', '04:33:46', 2, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 21:03:46', '2023-12-02 21:03:46'),
(1266, 1701551112, 'DEEPAK', '2305447433', '6397283006', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '02:35:12', '06:35:12', 4, '120', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 21:05:12', '2023-12-02 21:05:12'),
(1267, 1701551357, 'VIVEK KUMAR', '2634133014', '8847389199', NULL, NULL, 2, 0, 1, NULL, '2023-12-02', '02:39:17', '03:39:17', 1, '60', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 21:09:17', '2023-12-02 21:09:17'),
(1268, 1701551537, 'RAJENDRA SARODIYA', '2100578292', '8208132590', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '02:42:17', '05:42:17', 3, '180', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 21:12:17', '2023-12-02 21:12:17'),
(1269, 1701552567, 'KALPESH THAKUR', '2902108935', '9821974705', NULL, NULL, 3, 0, 0, NULL, '2023-12-02', '02:59:27', '04:59:27', 2, '180', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 21:29:27', '2023-12-02 21:29:27'),
(1270, 1701556336, 'SIDDHESH', '8310779971', '7073188374', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '04:02:16', '05:02:16', 1, '30', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 22:32:16', '2023-12-02 22:32:16'),
(1271, 1701556443, 'SUDHA AGARWAL', '8511278573', '8502963463', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '04:04:03', '06:04:03', 2, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 22:34:03', '2023-12-02 22:34:03'),
(1272, 1701556603, 'ANKUSH', '8900699966', '8448465825', NULL, NULL, 8, 0, 1, NULL, '2023-12-02', '04:06:43', '06:06:43', 2, '480', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 22:36:43', '2023-12-02 22:36:43'),
(1273, 1701556675, 'NARENDRA SINGH', '8311290459', '9426864196', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '04:07:55', '06:07:55', 2, '120', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 22:37:55', '2023-12-02 22:37:55'),
(1274, 1701556799, 'DHARAMVEER SINGH', '8211228113', '7051242795', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '04:09:59', '05:09:59', 1, '30', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 22:39:59', '2023-12-02 22:39:59'),
(1275, 1701556894, 'SAURABH THAKUR', '8858523766', '8819951995', NULL, NULL, 3, 0, 0, NULL, '2023-12-02', '04:11:34', '05:11:34', 1, '90', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 22:41:35', '2023-12-02 22:41:34'),
(1276, 1701556959, 'AMIT SRIVATSAVA', '8711339735', '9452548272', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '04:12:39', '05:12:39', 1, '30', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 22:42:39', '2023-12-02 22:42:39'),
(1277, 1701557054, 'SATYAPRAKASH', '8510488499', '9582081779', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '04:14:14', '05:14:14', 1, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 22:44:14', '2023-12-02 22:44:14'),
(1278, 1701557460, 'MADHAV SHARMA', '8411080619', '8077009724', NULL, NULL, 3, 1, 0, NULL, '2023-12-02', '04:21:00', '06:21:00', 2, '220', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 22:51:00', '2023-12-02 22:51:00'),
(1279, 1701557734, 'VAIDPRAKASH', '2105844931', '9267817761', NULL, NULL, 2, 1, 1, NULL, '2023-12-02', '04:25:34', '05:25:34', 1, '80', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 22:55:34', '2023-12-02 22:55:34'),
(1280, 1701557911, 'VINOD KUSHWAH', '2852883044', '9045194195', NULL, NULL, 3, 0, 0, NULL, '2023-12-02', '04:28:31', '05:28:31', 1, '90', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 22:58:31', '2023-12-02 22:58:31'),
(1281, 1701558041, 'YASH AGARWAL', '6527629262', '8650007728', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '04:30:41', '05:30:41', 1, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 23:00:41', '2023-12-02 23:00:41'),
(1282, 1701558161, 'VINAY', '6901291826', '9311254908', NULL, NULL, 3, 0, 1, NULL, '2023-12-02', '04:32:41', '05:32:41', 1, '90', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 23:02:41', '2023-12-02 23:02:41'),
(1283, 1701558247, 'AKASH', '6425036962', '7054250582', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '04:34:07', '05:34:07', 1, '60', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 23:04:07', '2023-12-02 23:04:07'),
(1284, 1701558361, 'MAMTA', '6428767988', '7049715571', NULL, NULL, 2, 0, 0, NULL, '2023-12-02', '04:36:01', '05:36:01', 1, '60', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 23:06:01', '2023-12-02 23:06:01'),
(1285, 1701559230, 'TAPAN KUMAR DAS', '578918636477', '9348381867', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '04:50:30', '11:50:30', 7, '210', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 23:20:30', '2023-12-02 23:20:30'),
(1286, 1701559322, 'OM RASTOGI', '6228700835', '9044331038', NULL, NULL, 4, 0, 0, NULL, '2023-12-02', '04:52:02', '06:52:02', 2, '240', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 23:22:02', '2023-12-02 23:22:02'),
(1287, 1701560744, 'SHIVAM MISHRA', '2206008395', '9621542471', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '05:15:44', '10:15:44', 5, '150', 2, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-02 23:45:45', '2023-12-02 23:45:44'),
(1288, 1701561879, 'OM PRAKASH', '6128551385', '9997977756', NULL, NULL, 3, 0, 0, NULL, '2023-12-02', '05:34:39', '06:34:39', 1, '90', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-03 00:04:40', '2023-12-03 00:04:39'),
(1289, 1701562709, 'SWETA', '6128682307', '7355770612', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '05:48:29', '06:48:29', 1, '30', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-03 00:18:29', '2023-12-03 00:18:29'),
(1290, 1701563005, 'KESHAV', '2752769587', '9987235737', NULL, NULL, 1, 0, 0, NULL, '2023-12-02', '05:53:25', '06:53:25', 1, '30', 1, NULL, 'C', 0, 0, 4, NULL, 0, 0, NULL, '2023-12-03 00:23:25', '2023-12-03 00:23:25'),
(1291, 1701563490, 'gyanprakash gupta', '2848976108', '7011915839', NULL, NULL, 4, 0, 0, NULL, '2023-12-03', '06:01:30', '07:01:30', 1, '120', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 00:31:30', '2023-12-03 00:31:30'),
(1292, 1701563813, 'YOGESH KUMAR', '6328719197', '7779812252', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '06:06:53', '09:06:53', 3, '90', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 00:36:53', '2023-12-03 00:36:53'),
(1293, 1701563916, 'PARVEEN', '2634337094', '9952928120', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '06:08:36', '08:08:36', 2, '60', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 00:38:37', '2023-12-03 00:38:36'),
(1294, 1701563963, 'VINAY', '6901291826', '9311254908', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '06:09:23', '07:09:23', 1, '30', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 00:39:23', '2023-12-03 00:39:23'),
(1295, 1701564235, 'RAJEEV NARAYAN SINGH', '2204916459', '7564037689', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '06:13:55', '07:13:55', 1, '60', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 00:43:55', '2023-12-03 00:43:55'),
(1296, 1701564611, 'AJEET', '2205967090', '9910701567', NULL, NULL, 4, 0, 0, NULL, '2023-12-03', '06:20:11', '07:20:11', 1, '120', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 00:50:11', '2023-12-03 00:50:11'),
(1297, 1701565014, 'CHANDRA SHEKHAR UDEYA BABU', '2901002858', '7895977115', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '06:26:54', '07:26:54', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 00:56:54', '2023-12-03 00:56:54'),
(1298, 1701565621, 'pdma', NULL, '99771157111', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '06:37:01', '08:37:01', 2, '120', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 01:07:01', '2023-12-03 01:07:01'),
(1299, 1701565912, 'arayan', NULL, '9910121567', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '06:41:52', '07:41:52', 1, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 01:11:52', '2023-12-03 01:11:52'),
(1300, 1701566190, 'narayan', '2406058852', '8895896643', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '06:46:30', '07:46:30', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 01:16:30', '2023-12-03 01:16:30'),
(1301, 1701566585, 'kundan bai', '2851230339', '9512278650', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '06:53:05', '07:53:05', 1, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 01:23:05', '2023-12-03 01:23:05'),
(1302, 1701566690, 'naresh', '2850450609', '8871766825', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '06:54:50', '07:54:50', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 01:24:51', '2023-12-03 01:24:50'),
(1303, 1701566786, 'jigar', '2200550874', '79901765358', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '06:56:26', '07:56:26', 1, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 01:26:26', '2023-12-03 01:26:26'),
(1304, 1701567314, 'uday atel', NULL, '9422258970', NULL, NULL, 3, 0, 0, NULL, '2023-12-03', '07:05:14', '08:05:14', 1, '90', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 01:35:14', '2023-12-03 01:35:14'),
(1305, 1701567411, 'sidharth', '2405636911', '9098308301', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '07:06:51', '08:06:51', 1, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 01:36:51', '2023-12-03 01:36:51'),
(1306, 1701567785, 'rajeev narayan singh', '2204916459', '7564037689', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '07:13:05', '08:13:05', 1, '60', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 01:43:05', '2023-12-03 01:43:05'),
(1307, 1701567847, 'rajensdra', '2849939707', '9886701122', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '07:14:07', '08:14:07', 1, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 01:44:08', '2023-12-03 01:44:07'),
(1308, 1701567939, 'sandeev benrjee', '2633942411', '9875542374', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '07:15:39', '08:15:39', 1, '60', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 01:45:39', '2023-12-03 01:45:39'),
(1309, 1701568184, 'manoj joshi', '2850958223', '9920486046', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '07:19:44', '08:19:44', 1, '60', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 01:49:44', '2023-12-03 01:49:44'),
(1310, 1701568372, 'narayan', '2900736291', '7977449553', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '07:22:52', '08:22:52', 1, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 01:52:52', '2023-12-03 01:52:52'),
(1311, 1701568719, 'deepak', NULL, '6397283006', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '07:28:39', '08:28:39', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 01:58:39', '2023-12-03 01:58:39'),
(1312, 1701569223, 'avni modi', NULL, '9869435878', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '07:37:03', '08:37:03', 1, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 02:07:03', '2023-12-03 02:07:03'),
(1313, 1701569330, 'chandra shekhar uday babu', '2901002858', '7895977115', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '07:38:50', '08:38:50', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 02:08:50', '2023-12-03 02:08:50'),
(1314, 1701569585, 'sohan mishrA', NULL, '9358795727', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '07:43:05', '08:43:05', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 02:13:05', '2023-12-03 02:13:05'),
(1315, 1701570210, 'SHIV SANKAR', '2529855385', '9007818737', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '07:53:30', '12:53:30', 5, '150', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 02:23:30', '2023-12-03 02:23:30'),
(1316, 1701570436, 'ANIL ARORA', '216045037', '9023403560', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '07:57:16', '08:57:16', 1, '60', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 02:27:16', '2023-12-03 02:27:16'),
(1317, 1701570657, 'ADITYA', '238490731576', '9999648094', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '08:00:57', '09:00:57', 1, '30', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 02:30:57', '2023-12-03 02:30:57'),
(1318, 1701571911, 'naresh', NULL, '8871766825', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '08:21:51', '09:21:51', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 02:51:51', '2023-12-03 02:51:51'),
(1319, 1701572202, 'praveen', NULL, '9952928120', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '08:26:42', '09:26:42', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 02:56:42', '2023-12-03 02:56:42'),
(1320, 1701572248, 'narayan', NULL, '8859896643', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '08:27:28', '09:27:28', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 02:57:28', '2023-12-03 02:57:28'),
(1321, 1701572599, 'saneta vijay', '2850803706', '9497300288', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '08:33:19', '09:33:19', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 03:03:19', '2023-12-03 03:03:19'),
(1322, 1701572701, 'visvjeet kumar', NULL, '8789165823', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '08:35:01', '09:35:01', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 03:05:02', '2023-12-03 03:05:01'),
(1323, 1701572787, 'pankaj', NULL, '9316201081', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '08:36:27', '09:36:27', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 03:06:27', '2023-12-03 03:06:27'),
(1324, 1701575669, 'yamni', '8858557294', '9178993903', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '09:24:29', '11:24:29', 2, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 03:54:29', '2023-12-03 03:54:29'),
(1325, 1701578325, 'yogesh', NULL, '9675231779', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '10:08:45', '11:08:45', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 04:38:45', '2023-12-03 04:38:45'),
(1326, 1701580043, 'shivam mishra', '2206008395', '9621542471', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '10:37:23', '12:37:23', 2, '60', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 05:07:23', '2023-12-03 05:07:23'),
(1327, 1701582952, 'lovendra kumar', '2630019745', '9969224584', NULL, NULL, 4, 0, 0, NULL, '2023-12-03', '11:25:52', '12:25:52', 1, '120', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 05:55:52', '2023-12-03 05:55:52'),
(1328, 1701584655, 'narendra singh', '8311290459', '9426864196', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '11:54:15', '15:54:15', 4, '240', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 06:24:15', '2023-12-03 06:24:15'),
(1329, 1701585032, 'shewta', '2900000879', '7909610449', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '12:00:32', '13:00:32', 1, '30', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 06:30:32', '2023-12-03 06:30:32'),
(1330, 1701585264, 'nistha', '2105947800', '7505553988', NULL, NULL, 8, 0, 0, NULL, '2023-12-03', '12:04:24', '14:04:24', 2, '480', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 06:34:24', '2023-12-03 06:34:24'),
(1331, 1701585376, 'sajal', '2533981272', '9599649560', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '12:06:16', '13:06:16', 1, '60', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 06:36:16', '2023-12-03 06:36:16'),
(1332, 1701586440, 'sunil kumar', '2306104154', '9815024666', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '12:24:00', '13:24:00', 1, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 06:54:00', '2023-12-03 06:54:00'),
(1333, 1701587884, 'aprana bhatnakar', '2405157236', '9214034150', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '12:48:04', '17:48:04', 5, '150', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 07:18:04', '2023-12-03 07:18:04'),
(1334, 1701588051, 'arayan', NULL, '9548355738', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '12:50:51', '13:50:51', 1, '30', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 07:20:51', '2023-12-03 07:20:51'),
(1335, 1701588923, 'param jeet singh', '2633779316', '9974008625', NULL, NULL, 3, 0, 0, NULL, '2023-12-03', '13:05:23', '14:05:23', 1, '90', 2, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 07:35:23', '2023-12-03 07:35:23'),
(1336, 1701589002, 'sushil bajpai', '2105195355', '9450552761', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '13:06:42', '14:06:42', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 07:36:42', '2023-12-03 07:36:42'),
(1337, 1701589821, 'suneel mittal', '2105902843', '9897477480', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '13:20:21', '14:20:21', 1, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 07:50:21', '2023-12-03 07:50:21'),
(1338, 1701590425, 'devash tiwari', '489345570197', '7459019182', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '13:30:25', '14:30:25', 1, '30', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 08:00:25', '2023-12-03 08:00:25'),
(1339, 1701591624, 'himanshu', '2306085253', '9811797151', NULL, NULL, 1, 0, 0, NULL, '2023-12-03', '13:50:24', '15:50:24', 2, '60', 1, NULL, 'A', 0, 0, 5, NULL, 0, 0, NULL, '2023-12-03 08:20:24', '2023-12-03 08:20:24'),
(1340, 1701603615, 'dipu', '989898', '7351334512', NULL, NULL, 1, 1, 1, NULL, '2023-12-03', '17:10:15', '20:10:15', 3, '150', 1, 'helo', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 11:40:15', '2023-12-03 11:40:15'),
(1341, 1701603693, 'Rmm', '562', '7878787', NULL, NULL, 2, 1, 0, NULL, '2023-12-03', '17:11:33', '20:11:33', 3, '240', 2, 'hh', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 11:41:33', '2023-12-03 11:41:33'),
(1342, 1701603752, 'L', '8989', '7341334545', NULL, NULL, 2, 1, 0, NULL, '2023-12-03', '17:12:32', '20:12:32', 3, '240', 2, 'hh', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 11:42:32', '2023-12-03 11:42:32'),
(1343, 1701604000, 'Hello', '7878', '9878787', NULL, NULL, 2, 1, 0, NULL, '2023-12-03', '17:16:40', '18:16:40', 1, '80', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 11:46:40', '2023-12-03 11:46:40'),
(1344, 1701604050, 'Ram ka Bachha', '89898', '978912345', NULL, NULL, 2, 1, 0, NULL, '2023-12-03', '17:17:30', '20:17:30', 3, '240', 1, 'hd', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 11:47:30', '2023-12-03 11:47:30'),
(1345, 1701604338, 'hhh', '90', '9090', NULL, NULL, 1, 1, 1, NULL, '2023-12-03', '17:22:18', '19:22:18', 2, '100', 1, 'as', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 11:52:18', '2023-12-03 11:52:18'),
(1346, 1701604385, 'hello dip', '987878', '7351334818', NULL, NULL, 1, 1, 1, NULL, '2023-12-03', '17:23:05', '19:23:05', 2, '100', 1, 'as', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 11:53:05', '2023-12-03 11:53:05'),
(1347, 1701604454, 'Lala name', '89787', '7351334515', NULL, NULL, 2, 1, 1, NULL, '2023-12-03', '17:24:14', '19:24:14', 2, '160', 2, 'Helo', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 11:54:15', '2023-12-03 11:54:15'),
(1348, 1701604636, 'Toto nam', '8989', '87878', NULL, NULL, 2, 1, 1, NULL, '2023-12-03', '17:27:16', '18:27:16', 1, '80', 2, 'as', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 11:57:16', '2023-12-03 11:57:16'),
(1349, 1701604776, 'asa', '121', '1212', NULL, NULL, 2, 1, 0, NULL, '2023-12-03', '17:29:36', '18:29:36', 1, '80', 1, 'qw', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 11:59:36', '2023-12-03 11:59:36'),
(1350, 1701604961, 'Hah name', '899', '98989', NULL, NULL, 2, 1, 1, NULL, '2023-12-03', '17:32:41', '19:32:41', 2, '160', 2, 'jj', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:02:42', '2023-12-03 12:02:41'),
(1351, 1701605014, 'Tata nam', '9900', '9898989', NULL, NULL, 3, 2, 1, NULL, '2023-12-03', '17:33:34', '19:33:34', 2, '260', 2, 'HH', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:03:34', '2023-12-03 12:03:34'),
(1352, 1701605060, 'HAMU', '8989', '98989', NULL, NULL, 2, 1, 1, NULL, '2023-12-03', '17:34:20', '19:34:20', 2, '160', 2, 'H', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:04:20', '2023-12-03 12:04:20'),
(1353, 1701605167, 'oh tau', '9989', '9898', NULL, NULL, 2, 1, 1, NULL, '2023-12-03', '17:36:07', '20:36:07', 3, '240', 2, 'as', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:06:07', '2023-12-03 12:06:07'),
(1354, 1701605290, 'shar', '990', '9909', NULL, NULL, 3, 1, 1, NULL, '2023-12-03', '17:38:10', '19:38:10', 2, '220', 1, NULL, 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:08:10', '2023-12-03 12:08:10'),
(1355, 1701605611, 'dip', '21212', '99090', NULL, NULL, 23, 2, 1, NULL, '2023-12-03', '17:43:31', '18:43:31', 1, '730', 1, 'q', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:13:31', '2023-12-03 12:13:31'),
(1356, 1701605799, 'dip1', '1212', '1212', NULL, NULL, 23, 2, 1, NULL, '2023-12-03', '17:46:39', '20:46:39', 3, '2190', 2, 'qwqw', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:16:39', '2023-12-03 12:16:39'),
(1357, 1701605833, 'dip', '1212', '8989', NULL, NULL, 23, 2, 1, NULL, '2023-12-03', '17:47:13', '19:47:13', 2, '1460', 1, 'qwqw', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:17:13', '2023-12-03 12:17:13');
INSERT INTO `sitting_entries` (`id`, `unique_id`, `name`, `pnr_uid`, `mobile_no`, `train_no`, `address`, `no_of_adults`, `no_of_children`, `no_of_baby_staff`, `seat_no`, `date`, `check_in`, `check_out`, `hours_occ`, `paid_amount`, `pay_type`, `remarks`, `shift`, `status`, `checkout_status`, `added_by`, `client_id`, `deleted`, `delete_by`, `delete_time`, `updated_at`, `created_at`) VALUES
(1358, 1701605864, 'dipRam', '1212', '21212', NULL, NULL, 23, 2, 1, NULL, '2023-12-03', '17:47:44', '19:47:44', 2, '1460', 1, '1212', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:17:44', '2023-12-03 12:17:44'),
(1359, 1701606082, 'dipTest', '8989', '89898989', NULL, NULL, 23, 2, 1, NULL, '2023-12-03', '17:51:22', '19:51:22', 2, '1460', 1, '1', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:21:22', '2023-12-03 12:21:22'),
(1360, 1701606158, 'dip', '8989', '89', NULL, NULL, 23, 2, 1, NULL, '2023-12-03', '17:52:38', '19:52:38', 2, '1460', 1, 'asas', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:22:38', '2023-12-03 12:22:38'),
(1361, 1701606202, 'Dipanshuc ka', '9902', '78787878', NULL, NULL, 2, 2, 0, NULL, '2023-12-03', '17:53:22', '19:53:22', 2, '200', 1, 'aaa', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:23:22', '2023-12-03 12:23:22'),
(1362, 1701606355, 'dip', '90909', '8989', NULL, NULL, 23, 2, 1, NULL, '2023-12-03', '17:55:55', '19:55:55', 2, '1460', 1, 'asas', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:25:55', '2023-12-03 12:25:55'),
(1363, 1701606455, 'dip1212121212', '1212', '212', NULL, NULL, 23, 2, 1, NULL, '2023-12-03', '17:57:35', '19:57:35', 2, '1460', 1, 'asa', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:27:35', '2023-12-03 12:27:35'),
(1364, 1701606518, 'wqwqsas', '1212', '21212', NULL, NULL, 1, 1, 0, NULL, '2023-12-03', '17:58:38', '19:58:38', 2, '100', 1, '1212', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:28:38', '2023-12-03 12:28:38'),
(1365, 1701606713, 'LL', '909090', '7351334616', NULL, NULL, 2, 0, 0, NULL, '2023-12-03', '18:01:53', '19:01:53', 1, '60', 2, 'asa', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:31:53', '2023-12-03 12:31:53'),
(1366, 1701607147, 'Raj', '90909', '90909090', NULL, NULL, 2, 2, 1, NULL, '2023-12-03', '18:09:07', '20:09:07', 2, '200', 1, 'asa', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:39:07', '2023-12-03 12:39:07'),
(1367, 1701607200, 'Lamu BHai', '909090', '9898988', NULL, NULL, 2, 2, 1, NULL, '2023-12-03', '18:10:00', '20:10:00', 2, '200', 1, 'ss', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:40:00', '2023-12-03 12:40:00'),
(1368, 1701607298, 'Ram', '909090', '9898', NULL, NULL, 2, 1, 1, NULL, '2023-12-03', '18:11:38', '20:11:38', 2, '160', 2, 'jj', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:41:38', '2023-12-03 12:41:38'),
(1369, 1701607368, 'Haa', '9090', '7351334', NULL, NULL, 1, 1, 1, NULL, '2023-12-03', '18:12:48', '20:12:48', 2, '100', 2, 'hh', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-03 12:42:48', '2023-12-03 12:42:48'),
(1370, 1701607403, 'NNN', '89898', '734556', NULL, NULL, 2, 1, 1, NULL, '2023-12-03', '18:13:23', '20:13:23', 2, '160', 2, 'ss', 'B', 0, 0, 2, NULL, 1, 2, '2023-12-03 12:45:30', '2023-12-03 12:43:23', '2023-12-03 12:43:23'),
(1371, 1701607681, 'Ramn', '87878', '89898', NULL, NULL, 2, 3, 1, NULL, '2023-12-03', '18:18:01', '20:18:01', 2, '240', 1, 'asa', 'B', 0, 0, 1, NULL, 0, 0, NULL, '2023-12-03 12:48:01', '2023-12-03 12:48:01'),
(1372, 1702563119, 'Ashiash', '89898989', '8989898989', NULL, NULL, 2, 1, 1, NULL, '2023-12-14', '19:41:59', '21:41:59', 2, '160', 1, 'Hello', 'B', 0, 0, 3, NULL, 0, 0, NULL, '2023-12-14 14:11:59', '2023-12-14 14:11:59'),
(1373, 1702563158, 'Rama', '898989', '8989898', NULL, NULL, 2, 2, 2, NULL, '2023-12-14', '19:42:38', '21:42:38', 2, '200', 2, 'asas', 'B', 0, 0, 3, NULL, 0, 0, NULL, '2023-12-14 14:12:38', '2023-12-14 14:12:38'),
(1374, 1702569799, 'deepu', '787878', '7878778', NULL, NULL, 2, 1, 1, NULL, '2023-12-14', '21:33:19', '22:33:19', 1, '80', 1, 'hj', 'B', 0, 0, 3, NULL, 0, 0, NULL, '2023-12-14 16:03:19', '2023-12-14 16:03:19'),
(1375, 1702572823, 'Raj ka', '89898', '8989898', NULL, NULL, 2, 1, 1, NULL, '2023-12-14', '22:23:43', '23:23:43', 1, '80', 1, 'asas', 'C', 0, 0, 6, NULL, 0, 0, NULL, '2023-12-14 16:53:43', '2023-12-14 16:53:43'),
(1376, 1702572842, 'PAp', '898989', '898989', NULL, NULL, 2, 1, 1, NULL, '2023-12-14', '22:24:02', '01:24:02', 3, '240', 2, 'asas', 'C', 0, 0, 6, NULL, 0, 0, NULL, '2023-12-14 16:54:02', '2023-12-14 16:54:02'),
(1377, 1702830963, 'TESt', '88989', '898989', NULL, NULL, 1, 2, 1, NULL, '2023-12-17', '22:06:03', '00:06:03', 2, '140', 2, 'asas', 'C', 0, 0, 3, NULL, 0, 0, NULL, '2023-12-17 16:36:03', '2023-12-17 16:36:03'),
(1378, 1703414438, 'Dipanshu', '121212', '735144717', NULL, NULL, 2, 1, 1, NULL, '2023-12-24', '16:10:00', '20:10:00', 4, '320', 1, 'asasasasas', 'B', 0, 0, 3, NULL, 0, 0, NULL, '2023-12-24 10:40:59', '2023-12-24 10:40:38'),
(1379, 1703684489, 'DIpanshu', '90909asasas', '909090', NULL, NULL, 1, 1, 1, NULL, '2023-12-27', '19:11:29', '21:11:29', 2, '100', 1, '2323', 'B', 0, 0, 2, NULL, 0, 0, NULL, '2023-12-27 13:41:29', '2023-12-27 13:41:29'),
(1380, 1703762606, 'Dipasnhu', '8989ashjhjs', '898989', NULL, NULL, 2, 1, 1, NULL, '2023-12-28', '16:53:26', '18:53:26', 2, '160', 1, 'hello', 'B', 0, 0, 1, NULL, 0, 0, NULL, '2023-12-28 11:23:26', '2023-12-28 11:23:26'),
(1381, 1703763832, '78787878', 'hh', '567', NULL, NULL, 3, 2, 4, NULL, '2023-12-28', '17:13:00', '20:13:00', 3, '450', 1, 'hello', 'B', 0, 0, 1, NULL, 0, 0, NULL, '2023-12-28 11:44:31', '2023-12-28 11:43:52'),
(1382, 1707839067, 'Uvi', '9090', '9090', NULL, NULL, 2, 1, 0, NULL, '2024-02-13', '21:14:00', '23:14:00', 2, '180', 1, 'Helo', 'B', 0, 0, 4, NULL, 0, 0, NULL, '2024-02-13 15:45:38', '2024-02-13 15:44:27'),
(1390, 1707840909, 'Uvi', '9090', '9090', NULL, NULL, 2, 1, 0, NULL, '2024-02-13', '23:14:00', '00:14:00', 1, '90', 1, 'Helo', 'B', 0, 0, 6, NULL, 0, 0, NULL, '2024-02-13 16:15:09', '2024-02-13 16:15:09'),
(1391, 1707855225, 'as', 'as', '1212', NULL, NULL, 1, 0, 0, NULL, '2024-02-14', '01:43:45', '02:43:45', 1, '30', 1, 'as', 'C', 0, 0, 3, NULL, 0, 0, NULL, '2024-02-13 20:13:45', '2024-02-13 20:13:45'),
(1392, 1707855338, 'sa', 'asas', '2313', NULL, NULL, 2, 0, 0, NULL, '2024-02-14', '01:45:38', '02:45:38', 1, '60', 2, 'as', 'C', 0, 0, 6, NULL, 0, 0, NULL, '2024-02-13 20:15:38', '2024-02-13 20:15:38'),
(1393, 1716996578, 'Dipanshu', '7878778', '7351334717', NULL, NULL, 2, 1, 1, NULL, '2024-05-29', '20:59:00', '22:59:00', 2, '160', 1, 'hello', 'B', 0, 0, 1, NULL, 0, 0, NULL, '2024-05-29 15:31:43', '2024-05-29 15:29:38'),
(1394, 1718122799, 'Dipanshu', 'asas', '735134717', NULL, NULL, 1, 2, 0, NULL, '2024-06-11', '21:49:00', '00:49:00', 3, '210', 1, 'Hello', 'B', 0, 0, 1, NULL, 0, 0, NULL, '2024-06-11 16:20:50', '2024-06-11 16:19:59'),
(1395, 1718130544, 'test1', '4435346', '21325645', NULL, NULL, 3, 2, 3, NULL, '2024-06-11', '23:59:00', '01:59:00', 2, '260', 1, NULL, 'C', 0, 0, 13, NULL, 0, 0, NULL, '2024-06-11 18:29:29', '2024-06-11 18:29:04'),
(1396, 1718131108, 'yyufk', '56464', '65448', NULL, NULL, 1, 1, 3, NULL, '2024-06-12', '00:08:00', '05:08:00', 5, '275', 2, NULL, 'C', 0, 0, 13, NULL, 0, 0, NULL, '2024-06-11 18:38:51', '2024-06-11 18:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `sitting_rate_list`
--

CREATE TABLE `sitting_rate_list` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `adult_rate` int(11) NOT NULL COMMENT 'perHour',
  `child_rate` int(11) NOT NULL COMMENT 'perHour'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitting_rate_list`
--

INSERT INTO `sitting_rate_list` (`id`, `client_id`, `adult_rate`, `child_rate`) VALUES
(1, 1, 33, 22);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `enc_id` varchar(255) DEFAULT NULL,
  `client_id` int(11) DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `address` text,
  `password` varchar(200) NOT NULL,
  `password_check` text NOT NULL,
  `profile_pic` varchar(500) DEFAULT NULL,
  `priv` int(11) DEFAULT NULL,
  `active` int(2) DEFAULT NULL,
  `remember_token` text,
  `api_token` varchar(300) DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `enc_id`, `client_id`, `name`, `email`, `mobile`, `address`, `password`, `password_check`, `profile_pic`, `priv`, `active`, `remember_token`, `api_token`, `last_login`, `updated_at`, `created_at`) VALUES
(1, '0011', 1, 'Admin', 'admin', '343434343', 'ss', '$2y$10$m6OJfIAp11mqieShJG1X9uu.LuyNLR4o./TKk5iHse3eCXYnGMfoi', 'sample', '', 1, 0, 'uKdn1hLH6UBdWy2uv9pyPNLrTgwDoMMWINN8sMdShcRspI4vCn1GWXpRdtF5', '$2y$10$AqNLf6dmiAbUrs71HfIV0.7Qk/rCZsi6mRbtUJuwELDLsBYFItlYW', '2019-09-24 13:30:29', '2024-06-12 17:30:30', NULL),
(13, '0011', 1, 'Dipanshu', 'dipanshu', '343434343', 'ss', '$2y$10$m6OJfIAp11mqieShJG1X9uu.LuyNLR4o./TKk5iHse3eCXYnGMfoi', 'dipanshu@135', '', 2, 0, 'KljE7fbGZ7E4X3RGu5xZ29THfL19BNEo8LFiYJKuIOrb3ukf31A8IxkB22lL', '$2y$10$AqNLf6dmiAbUrs71HfIV0.7Qk/rCZsi6mRbtUJuwELDLsBYFItlYW', '2019-09-24 13:30:29', '2024-06-11 18:09:46', NULL),
(14, NULL, 0, 'Ashish', 'ashish@gmail.com', '8989889', NULL, '$2y$10$zHEx4S0FMfzgUBW94xC3u.REtXFUBy5fI9fwTwKusBBuTo4id4nYW', 'sample', NULL, 2, NULL, NULL, NULL, NULL, '2024-05-28 04:51:48', '2024-01-23 10:26:04'),
(15, NULL, 0, 'Shri Ch', 'dip@gmail.com', '8989889', NULL, '$2y$10$082rf6xkzCezpZJ4gdxGBOPEPkSG7SNu9f35aBJ9tpe4MpemPAeEC', 'sample1', NULL, 2, NULL, NULL, NULL, NULL, '2024-05-28 04:51:50', '2024-01-23 10:26:04'),
(16, NULL, 0, 'sun5554545', 'dip1@gmail.com', '8989898', NULL, '$2y$10$NVYLdkqx3VwSKCiTUgAjX.8kognTpMAiWEn1AkwpL1zXbrCfk3gIi', 'sample', NULL, 2, NULL, NULL, NULL, NULL, '2024-05-28 04:51:53', '2024-01-28 07:12:58'),
(17, NULL, 0, 'Raju', 'raju@gmail.com', '898989', NULL, '$2y$10$d9fJX2/H5FTZjIadXiQH.eVh1meip5L11cpAMhnIwIRrVf.dZ0fTO', 'sample', NULL, 2, NULL, NULL, NULL, NULL, '2024-05-28 04:51:55', '2024-02-23 13:58:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `canteens`
--
ALTER TABLE `canteens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `canteen_items`
--
ALTER TABLE `canteen_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canteen_id` (`canteen_id`);

--
-- Indexes for table `canteen_item_stocks`
--
ALTER TABLE `canteen_item_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canteen_id` (`canteen_id`,`canteen_item_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_services`
--
ALTER TABLE `client_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cloakroom_entries`
--
ALTER TABLE `cloakroom_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cloakroom_penalities`
--
ALTER TABLE `cloakroom_penalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cloakroom_rate_list`
--
ALTER TABLE `cloakroom_rate_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_entries`
--
ALTER TABLE `daily_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_entry_items`
--
ALTER TABLE `daily_entry_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitting_entries`
--
ALTER TABLE `sitting_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitting_rate_list`
--
ALTER TABLE `sitting_rate_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users` ADD FULLTEXT KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `canteens`
--
ALTER TABLE `canteens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `canteen_items`
--
ALTER TABLE `canteen_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `canteen_item_stocks`
--
ALTER TABLE `canteen_item_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `client_services`
--
ALTER TABLE `client_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cloakroom_entries`
--
ALTER TABLE `cloakroom_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cloakroom_penalities`
--
ALTER TABLE `cloakroom_penalities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cloakroom_rate_list`
--
ALTER TABLE `cloakroom_rate_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_entries`
--
ALTER TABLE `daily_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `daily_entry_items`
--
ALTER TABLE `daily_entry_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sitting_entries`
--
ALTER TABLE `sitting_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1397;

--
-- AUTO_INCREMENT for table `sitting_rate_list`
--
ALTER TABLE `sitting_rate_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
