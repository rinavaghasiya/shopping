-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2022 at 02:44 PM
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
-- Database: `simplehome`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `address` varchar(550) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` varchar(150) NOT NULL,
  `primaryadd` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `uid`, `address`, `city`, `zipcode`, `primaryadd`, `created_at`, `updated_at`) VALUES
(49, 20, 'H-23, Shanti Niketan, Mota Varacha, Surat', 'Surat', '395006', 'true', '2021-03-23 05:01:29', NULL),
(3, 4, 'h-157,punitdham,mota varacha', 'Surat', '365025', 'true', '2021-03-03 08:17:26', NULL),
(52, 4, 'Man City,Bypass Road , Amreli', 'Amreli', '395006', NULL, '2021-03-23 11:26:37', NULL),
(25, 5, 'h-8,shubhlakshmi society,yogi chowk', 'Surat', '365553', 'true', '2021-03-03 10:46:37', NULL),
(50, 21, 'Madhav Nagar ,Kukavav Road,Mota Ankadiya', 'Amreli', '365401', 'true', '2021-03-23 09:32:02', NULL),
(41, 4, 'Khodiyar Nagar,Amreli Road,Mota Ankadiya', 'Amreli', '365401', NULL, '2021-03-05 05:41:03', NULL),
(42, 18, 'Mota Ankadiya', 'Amreli', '456789', 'true', '2021-03-05 06:14:45', NULL),
(43, 6, 'h-3,krishana rowhouse,sudama chowk', 'Surat', '365423', 'true', '2021-03-05 07:17:08', NULL),
(44, 4, 'New Ranip ,Khodiyar nagar', 'Ahmedabad', '653325', NULL, '2021-03-08 05:03:28', NULL),
(53, 4, 'opera business hub', 'surat', '365478', NULL, '2021-05-17 10:25:31', NULL),
(54, 23, 'amroli kosad surat', 'Surat', '365478', 'true', '2021-05-17 10:32:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  `remember_token` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Reena vaghasiya', 'patelreena172@gmail.com', '$2y$10$HmrEqn28SP5YUVK5RyKf5.ddMpqCOYydoV5Dqj35QfIUfPRXILVpG', '1614400766aa.jpg', '820488', '2021-02-22 09:53:39', '2021-07-15 00:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `cardname` varchar(100) NOT NULL,
  `cardno` text NOT NULL,
  `cvv` int(11) NOT NULL,
  `expiredate` varchar(500) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `charge_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `order_id`, `cardname`, `cardno`, `cvv`, `expiredate`, `payment_method`, `payment_status`, `charge_id`, `created_at`, `updated_at`) VALUES
(124, 176, 'Visa', '4111 1111 1111 1111', 456, '5/2025', 'card', 'succeeded', 'ch_1IkMsFHWCwg7HjvwLcqkRJ9s', '2021-04-26 05:20:48', NULL),
(117, 169, 'Visa', '4111 1111 1111 1111', 444, '4/2025', 'card', 'succeeded', 'ch_1IVvBiHWCwg7HjvwY1d15WUB', '2021-03-17 08:57:08', NULL),
(125, 177, 'Visa', '4242 4242 4242 4242', 555, '6/2026', 'card', 'refund', 'ch_1IkRJXHWCwg7HjvwOksWiNXe', '2021-04-26 10:05:15', NULL),
(116, 168, 'Visa', '4111 1111 1111 1111', 222, '3/2025', 'card', 'succeeded', 'ch_1IVrZRHWCwg7Hjvw8yoYFhsy', '2021-03-17 05:05:24', NULL),
(123, 175, 'Visa', '4242 4242 4242 4242', 563, '6/2024', 'card', 'succeeded', 'ch_1IbKItHWCwg7HjvwofsXNv1U', '2021-04-01 06:46:54', NULL),
(121, 173, 'Visa', '4242 4242 4242 4242', 456, '5/2025', 'card', 'succeeded', 'ch_1IagvRHWCwg7HjvweOMMsnYf', '2021-03-30 12:44:04', NULL),
(113, 165, 'Visa', '4242 4242 4242 4242', 444, '5/2024', 'card', 'refund', 'ch_1IVrQgHWCwg7HjvwmhBVDAcC', '2021-03-17 04:56:21', NULL),
(126, 178, 'Visa', '4242 4242 4242 4242', 564, '6/2025', 'card', 'refund', 'ch_1Io0OJHWCwg7HjvwhVUYRGPb', '2021-05-06 06:08:55', NULL),
(127, 179, 'Visa', '4111 1111 1111 1111', 546, '6/2024', 'card', 'succeeded', 'ch_1Io0hEHWCwg7HjvwY0dLO3Ma', '2021-05-06 06:28:29', NULL),
(128, 180, 'visa', '4111 1111 1111 1111', 546, '5/2022', 'card', 'succeeded', 'ch_1Is3dhHWCwg7Hjvw1bTZ1OqW', '2021-05-17 10:25:36', NULL),
(129, 181, 'visa', '4111 1111 1111 1111', 111, '5/2025', 'card', 'succeeded', 'ch_1J565uHWCwg7HjvwmNEU0a3h', '2021-06-22 09:40:36', NULL),
(130, 182, 'visa', '4111 1111 1111 1111', 455, '5/2024', 'card', 'succeeded', 'ch_1JD4GVHWCwg7Hjvw1N8nHzP2', '2021-07-14 09:20:31', NULL),
(131, 183, 'visa', '4111 1111 1111 1111', 455, '5/2024', 'card', 'refund', 'ch_1JD4GXHWCwg7HjvwWdXmSQBF', '2021-07-14 09:20:35', NULL),
(132, 184, 'visa', '4242 4242 4242 4242', 456, '5/2025', 'card', 'refund', 'ch_1JIuX7HWCwg7HjvwoCHo9u2G', '2021-07-30 12:09:46', NULL),
(133, 186, 'visa', '4242 4242 4242 4242', 562, '5/2022', 'card', 'succeeded', 'ch_1JRZ1lHWCwg7HjvwQieU82Yb', '2021-08-23 09:01:13', NULL),
(134, 187, 'visa', '4242 4242 4242 4242', 562, '5/2022', 'card', 'succeeded', 'ch_1JRZ1nHWCwg7HjvwE8rx5nXJ', '2021-08-23 09:01:14', NULL),
(135, 190, 'visa', '4111 1111 1111 1111', 444, '5/2022', 'card', 'refund', 'ch_1JcmEeHWCwg7HjvwmVJQzJty', '2021-09-23 07:20:51', NULL),
(136, 191, 'visa', '4111 1111 1111 1111', 344, '8/2025', 'card', 'refund', 'ch_1L2tIOHWCwg7HjvwwtLFmxRU', '2022-05-24 08:40:54', NULL),
(137, 192, 'visa', '4242 4242 4242 4242', 653, '6/2026', 'card', 'succeeded', 'ch_1L2tJkHWCwg7HjvwOlKuyqmj', '2022-05-24 08:42:17', NULL),
(138, 196, 'visa', '4111 1111 1111 1111', 564, '9/2024', 'card', 'succeeded', 'ch_1L2vP7HWCwg7HjvwkI4PC6H3', '2022-05-24 10:55:58', NULL),
(139, 197, 'visa', '4111 1111 1111 1111', 563, '2/2025', 'card', 'succeeded', 'ch_1LicNWHWCwg7HjvwJVbRHOGF', '2022-09-16 11:06:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `c_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pizza', 'Active', '2021-03-24 08:09:33', '2021-05-05 00:32:02'),
(2, 'Salad', 'Active', '2021-03-24 08:09:51', NULL),
(4, 'Noodle', 'Active', '2021-03-24 09:09:52', NULL),
(5, 'Sandwich', 'Active', '2021-03-24 10:03:46', NULL),
(9, 'Atta', 'Active', '2021-05-31 07:12:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(555) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Dhara', 'dharavaghasiyar2020@gmail.com', 'It\'s Amazing Website for Food', '2021-05-06 05:18:37', NULL),
(2, 'Reena', 'patelreena172@gmail.com', 'Hello', '2021-05-06 05:20:30', NULL),
(3, 'Dhara', 'dharavaghasiyar2020@gmail.com', 'Hello', '2021-05-06 05:21:47', NULL),
(4, 'Dhara', 'dharavaghasiyar2020@gmail.com', 'Hello', '2021-05-06 05:21:49', NULL),
(5, 'Reena Vaghasiya', 'patelreena172@gmail.com', 'Hello It\'s Amazing site for the Food', '2021-05-06 05:23:20', NULL),
(6, 'hina patel', 'hinahirpara64@gmail.com', 'hello i am hina', '2021-05-19 12:50:44', NULL),
(7, 'hina patel', 'hinahirpara64@gmail.com', 'hello i am hina', '2021-05-19 12:50:45', NULL),
(8, 'hina patel', 'hinahirpara64@gmail.com', 'hello i am hina', '2021-05-19 12:50:49', NULL),
(9, 'hina patel', 'hinahirpara64@gmail.com', 'hello i am hina', '2021-05-19 12:50:49', NULL),
(10, 'hina patel', 'hinahirpara64@gmail.com', 'hello i am hina', '2021-05-19 12:50:50', NULL),
(11, 'hina patel', 'hinahirpara64@gmail.com', 'hello i am hina', '2021-05-19 12:50:53', NULL),
(12, 'hina hirpara', 'hinahirpara64@gmail.com', 'hello i m hina', '2021-05-19 12:53:25', NULL),
(13, 'hina maganbhai hirpara', 'hinahirpara64@gmail.com', 'hiiii....\r\nhello........', '2021-05-19 12:55:54', NULL),
(14, 'reena vaghaisya', 'patelreena172@gmail.com', 'hii hello', '2021-09-27 04:38:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hometb`
--

CREATE TABLE `hometb` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `item_name` text NOT NULL,
  `item_img` varchar(500) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `des` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hometb`
--

INSERT INTO `hometb` (`id`, `u_id`, `c_id`, `item_name`, `item_img`, `price`, `des`, `status`, `created_at`, `updated_at`) VALUES
(31, 5, 2, 'Salad', '161312799601.jpg', 600, 'vegetable masala salad', 'Blocked', '2021-02-12 11:06:36', NULL),
(30, 5, 4, 'Noodle', '1613637251.jpg', 300, 'noddle noodle...', 'Active', '2021-02-12 10:54:43', '2021-04-05 03:23:09'),
(69, 4, 1, 'Tometo Cheese pizza slice', '1617103980slice.jpg', 60, 'vegetable - masala cheese pizza slice', 'Blocked', '2021-03-30 11:33:00', '2021-09-25 02:56:58'),
(49, 4, 1, 'Double Cheese Margherita', '161397657414.jpg', 200, 'Double Cheese Margherita pizza', 'Active', '2021-02-22 06:49:34', NULL),
(48, 4, 1, 'Cheese with masala pizza', '161397221712.jpg', 190, 'new pizza added ...its very testy', 'Active', '2021-02-22 05:36:57', NULL),
(44, 4, 2, 'Vegetable  cobb salad', '1613636899.jpg', 70, 'healthy vegetable cobb salad is added...', 'Active', '2021-02-18 08:20:10', NULL),
(52, 4, 1, 'Bread Pizza with cheery', '161397667706.jpg', 170, 'bread pizza with cheery', 'Active', '2021-02-22 06:51:17', NULL),
(57, 4, 4, 'Noodle', '161555142315.jpg', 111, 'new....', 'Active', '2021-03-12 12:17:03', NULL),
(56, 6, 4, 'Noodle', '161543836818.jpg', 110, 'Yummy Noodle', 'Active', '2021-03-11 04:52:48', NULL),
(54, 4, 2, 'Mixed Masala Salad', '161425705311.jpg', 200, 'mixed masala salad with chilly flex', 'Active', '2021-02-25 12:44:13', NULL),
(67, 4, 5, 'Sandwich', '1617079372s1.jpg', 100, 'New Sandwich item is added...', 'Active', '2021-03-30 04:42:52', NULL),
(72, 4, 4, 'Patanjali Atta Noodles', '161725443918.jpg', 55, 'Healthy Patanjali Atta Noodles.', 'Active', '2021-04-01 05:20:39', '2021-09-25 03:53:06'),
(63, 4, 1, 'Veg cheese masala pizza', '161657789113.jpg', 200, 'veg cheese masala pizza is available', 'Active', '2021-03-24 09:24:51', NULL),
(64, 4, 2, 'Salad masala', '16165779649.jpg', 50, 'healthy salad', 'Active', '2021-03-24 09:26:04', '2021-09-24 07:24:09'),
(71, 4, 2, 'Vegetable salad dish', '1617258945.jpg', 55, 'Its testy and healthy vegetable salad', 'Decline', '2021-03-31 05:53:51', '2021-09-25 03:53:11'),
(70, 6, 5, 'Sandwich', '1617169676s2.jpg', 150, 'veg sandwich', 'Decline', '2021-03-31 05:47:56', NULL),
(68, 4, 5, 'A Simple Sandwich', '1617085224s2.jpg', 111, 'simple veg sandwich', 'Pendding', '2021-03-30 06:20:24', '2021-09-25 06:08:34'),
(73, 4, 7, 'Simple Samosa', '1653124638.png', 50, 'simple samosa', 'Pendding', '2021-05-17 10:21:04', '2022-05-21 03:47:18'),
(74, 4, 4, 'Sdsds', '1627647796daya.jpg', 200, 'adsfasfasfsd', 'Blocked', '2021-07-30 12:23:16', '2021-08-02 05:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `notification` text NOT NULL,
  `read_status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `item_id`, `uid`, `notification`, `read_status`, `created_at`, `updated_at`) VALUES
(7, 30, 5, 'Your Product Has been Approve', '1', '2021-04-05 08:53:17', NULL),
(6, 64, 4, 'Your Product Has been Approve', '1', '2021-04-05 08:52:32', '2021-09-24 07:24:34'),
(5, 72, 4, 'Your Product Has been Approve', '1', '2021-04-05 08:52:08', '2021-09-25 06:08:42'),
(8, 73, 4, 'Your Product Has been Decline', '1', '2021-05-17 10:22:17', '2021-09-25 03:53:24'),
(9, 74, 4, 'Your Product Has been Approve', '1', '2021-07-30 12:23:44', '2021-08-02 05:08:57'),
(10, 71, 4, 'Your Product Has been Decline', '1', '2021-09-25 08:27:10', '2021-09-25 06:14:08'),
(11, 69, 4, 'Your Product Has been Approve', '0', '2021-09-25 08:28:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertb`
--

CREATE TABLE `ordertb` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` varchar(110) NOT NULL,
  `qty` varchar(110) NOT NULL,
  `total_price` int(11) NOT NULL,
  `address` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `upadted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertb`
--

INSERT INTO `ordertb` (`id`, `user_id`, `item_id`, `qty`, `total_price`, `address`, `status`, `created_at`, `upadted_at`) VALUES
(178, 4, '52,', '1,', 170, 'h-157,punitdham,mota varacha,Surat,365025', 'OrderCancel', '2021-05-06 06:08:52', NULL),
(173, 4, '69,', '1,', 60, 'Khodiyar Nagar,Amreli Road,Mota Ankadiya,Amreli,365401', 'Pendding', '2021-03-30 12:44:01', NULL),
(169, 4, '49,', '3,', 600, 'h-157,punitdham,mota varacha,surat,365025', 'InProcess', '2021-03-17 08:57:06', NULL),
(168, 4, '57,44,', '1,2,', 251, 'New Ranip ,Khodiyar nagar,Ahmedabad,653325', 'Conform', '2021-03-17 05:05:22', NULL),
(179, 4, '56,', '1,', 110, 'Man City,Bypass Road , Amreli,Amreli,395006', 'Pendding', '2021-05-06 06:28:26', NULL),
(176, 5, '52,', '1,', 170, 'h-8,shubhlakshmi society,yogi chowk,Surat,365553', 'Ready To Deliver', '2021-04-26 05:20:45', NULL),
(165, 4, '44,49,', '2,1,', 340, 'h-157,punitdham,mota varacha,surat,365025', 'OrderCancel', '2021-03-17 04:56:19', NULL),
(180, 4, '73,', '1,', 50, 'opera business hub , surat , 365478', 'Conform', '2021-05-17 10:25:31', NULL),
(181, 4, '69,', '1,', 60, 'h-157,punitdham,mota varacha,Surat,365025', 'Pendding', '2021-06-22 09:40:31', NULL),
(182, 4, '52,', '2,', 340, 'h-157,punitdham,mota varacha,Surat,365025', 'Conform', '2021-07-14 09:20:24', NULL),
(183, 4, '52,', '2,', 340, 'h-157,punitdham,mota varacha,Surat,365025', 'OrderCancel', '2021-07-14 09:20:28', NULL),
(184, 4, '69,', '4,', 240, 'h-157,punitdham,mota varacha,Surat,365025', 'OrderCancel', '2021-07-30 12:09:43', NULL),
(185, 4, '56,69,', '1,2,', 230, 'h-157,punitdham,mota varacha,Surat,365025', 'Pendding', '2021-08-23 09:00:26', NULL),
(186, 4, '56,69,', '1,2,', 230, 'h-157,punitdham,mota varacha,Surat,365025', 'Pendding', '2021-08-23 09:01:07', NULL),
(187, 4, '56,69,', '1,2,', 230, 'h-157,punitdham,mota varacha,Surat,365025', 'Conform', '2021-08-23 09:01:09', NULL),
(188, 4, '69,', '1,', 60, 'h-157,punitdham,mota varacha,Surat,365025', 'Pendding', '2021-09-23 07:05:07', NULL),
(189, 4, '69,', '1,', 60, 'h-157,punitdham,mota varacha,Surat,365025', 'Pendding', '2021-09-23 07:20:17', NULL),
(190, 4, '69,', '1,', 60, 'Khodiyar Nagar,Amreli Road,Mota Ankadiya,Amreli,365401', 'OrderCancel', '2021-09-23 07:20:48', NULL),
(191, 4, '57,', '1,', 111, 'opera business hub,surat,365478', 'OrderCancel', '2022-05-24 08:40:51', NULL),
(192, 4, '67,', '1,', 100, 'New Ranip ,Khodiyar nagar,Ahmedabad,653325', 'Pendding', '2022-05-24 08:42:15', NULL),
(193, 4, '48,', '1,', 190, 'opera business hub,surat,365478', 'Pendding', '2022-05-24 10:46:16', NULL),
(194, 4, '48,', '1,', 190, 'opera business hub,surat,365478', 'Pendding', '2022-05-24 10:46:19', NULL),
(195, 4, '48,', '1,', 190, 'opera business hub,surat,365478', 'Pendding', '2022-05-24 10:55:29', NULL),
(196, 4, '48,', '1,', 190, 'opera business hub,surat,365478', 'Pendding', '2022-05-24 10:55:55', NULL),
(197, 4, '52,', '1,', 170, 'h-157,punitdham,mota varacha,Surat,365025', 'Pendding', '2022-09-16 11:06:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `remember_token` text DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `phone`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Reena', 'Vaghasiya', 'patelreena172@gmail.com', '$2y$10$X6AGaMz8popu9sNn.UKPjeTK34PVzQIS7Ei.rOZv9GmTa0SY93Vgq', '6353095498', '987511', 'Active', '2021-02-11 10:42:03', '2022-09-06 06:45:59'),
(6, 'Dhara', 'Vaghasiya', 'dharavaghasiyar2020@gmail.com', '$2y$10$OoXoUdtAl2OEOc565lkdzu9YYTBzu63iI2ajJ9v8ZaEBhUj.nZ3Du', '9512935434', NULL, 'Active', '2021-02-13 08:57:09', NULL),
(18, 'Dherya', 'Vaghasiya', 'dheru45@gmail.com', '$2y$10$GB39Ursy7buLuR.P5.xXzunfELB/aiPFAZEo8JcOKfUobVTDZiVgS', '7562024585', NULL, 'Blocked', '2021-03-05 06:14:45', NULL),
(20, 'Ajay', 'Vaghasiya', 'ajayvaghasiya2000@gmail.com', '$2y$10$VSo9p2QlH3xfdW/2qyB2HujcFw3BcymwRCECA5fSemrYYfq0jw2Zq', '7547144056', NULL, 'Active', '2021-03-23 05:01:29', NULL),
(21, 'Shreya', 'Vaghasiya', 'shreyu11@gmail.com', '$2y$10$SynNLcmJD.WhwVPeoSU5y.i3MAoz9DS19UGtEVjw0GR/nnx7WJnae', '7485859685', NULL, 'Blocked', '2021-03-23 09:32:02', NULL),
(23, 'hina', 'hirpara', 'hinahirpara64@gmail.com', '$2y$10$Wprog9nPW1pc7b18.cJhp.7j23RiKZHjeYYqKfcoBpT6PtZSiDeAG', '9023045430', NULL, 'Active', '2021-05-17 10:32:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hometb`
--
ALTER TABLE `hometb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertb`
--
ALTER TABLE `ordertb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hometb`
--
ALTER TABLE `hometb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ordertb`
--
ALTER TABLE `ordertb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
