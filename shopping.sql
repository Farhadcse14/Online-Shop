-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 13, 2018 at 03:51 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '0cc175b9c0f1b6a831c399e269772661', '2017-01-24 16:21:18', '25-01-2017 12:05:43 AM'),
(2, 'shahin', 'aa', '2018-03-03 07:18:20', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Books', 'Test ', '2017-01-24 19:17:37', '30-01-2017 12:22:24 AM'),
(4, 'Electronics', 'Electronic Products', '2017-01-24 19:19:32', ''),
(5, 'Furniture', 'test', '2017-01-24 19:19:54', ''),
(6, 'Fashion', 'Fashion', '2017-02-20 19:18:52', ''),
(9, 'HouseHold', 'Household ', '2018-03-03 17:43:06', NULL),
(10, 'Foods', 'Food tesr', '2018-03-12 17:42:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 4, NULL, 1, '2018-02-25 12:58:33', NULL, 'Delivered'),
(3, 1, '20', 1, '2018-02-25 07:05:51', 'Debit / Credit card', NULL),
(4, 1, '3', 1, '2018-02-27 04:37:59', 'Debit / Credit card', NULL),
(5, 1, '4', 1, '2018-02-27 04:37:59', 'Debit / Credit card', NULL),
(6, 1, '11', 1, '2018-02-27 04:37:59', 'Debit / Credit card', NULL),
(7, 5, '1', 1, '2018-02-27 05:14:28', 'COD', 'Delivered'),
(8, 5, '3', 1, '2018-02-27 05:17:32', 'Debit / Credit card', 'Delivered'),
(9, 6, '1', 1, '2018-02-27 05:19:11', 'Internet Banking', 'Delivered'),
(10, 6, '4', 1, '2018-02-27 05:19:11', 'Internet Banking', 'Delivered'),
(11, 6, '11', 1, '2018-02-27 05:19:12', 'Internet Banking', 'Delivered'),
(12, 5, '2', 1, '2018-02-27 14:30:21', 'Internet Banking', 'Delivered'),
(13, 1, '19', 1, '2018-02-27 14:34:17', 'Debit / Credit card', NULL),
(14, 7, '19', 1, '2018-02-27 14:36:09', 'Debit / Credit card', 'Delivered'),
(15, 1, '15', 1, '2018-02-27 14:38:46', 'COD', NULL),
(16, 7, '12', 1, '2018-02-27 14:45:47', NULL, 'Delivered'),
(17, 8, '3', 1, '2018-02-27 18:03:24', 'Debit / Credit card', 'Delivered'),
(18, 8, '4', 2, '2018-02-27 18:03:24', 'Debit / Credit card', 'Delivered'),
(19, 8, '22', 1, '2018-03-03 08:46:58', 'Debit / Credit card', 'Delivered'),
(20, 5, '23', 1, '2018-03-03 17:27:26', 'Internet Banking', 'Delivered'),
(21, 8, '24', 1, '2018-03-03 17:47:58', 'COD', 'Delivered'),
(22, 8, '23', 1, '2018-03-03 17:51:51', NULL, NULL),
(23, 8, '24', 1, '2018-03-03 17:51:51', NULL, NULL),
(24, 5, '19', 1, '2018-03-04 07:59:44', 'COD', 'Delivered'),
(25, 1, '15', 1, '2018-03-04 08:07:07', 'Debit / Credit card', NULL),
(26, 9, '2', 1, '2018-03-04 08:09:52', 'Debit / Credit card', 'Delivered'),
(27, 9, '3', 1, '2018-03-04 08:09:52', 'Debit / Credit card', 'Delivered'),
(28, 9, '4', 1, '2018-03-04 08:09:52', 'Debit / Credit card', 'Delivered'),
(29, 9, '11', 1, '2018-03-04 08:09:52', 'Debit / Credit card', 'Delivered'),
(30, 5, '27', 1, '2018-03-06 04:47:23', 'Debit / Credit card', 'Delivered'),
(31, 5, '2', 1, '2018-03-11 16:46:31', NULL, NULL),
(32, 5, '15', 1, '2018-03-11 16:46:31', NULL, NULL),
(33, 5, '16', 1, '2018-03-11 16:46:31', NULL, NULL),
(34, 5, '17', 1, '2018-03-11 16:46:31', NULL, NULL),
(35, 5, '2', 1, '2018-03-11 16:55:20', NULL, NULL),
(36, 5, '15', 1, '2018-03-11 16:55:20', NULL, NULL),
(37, 5, '16', 1, '2018-03-11 16:55:20', NULL, NULL),
(38, 5, '17', 1, '2018-03-11 16:55:20', NULL, NULL),
(39, 5, '2', 1, '2018-03-11 16:55:47', NULL, NULL),
(40, 5, '15', 1, '2018-03-11 16:55:47', NULL, NULL),
(41, 5, '16', 1, '2018-03-11 16:55:47', NULL, NULL),
(42, 5, '17', 1, '2018-03-11 16:55:47', NULL, NULL),
(43, 5, '2', 1, '2018-03-11 16:55:58', NULL, NULL),
(44, 5, '15', 1, '2018-03-11 16:55:58', NULL, NULL),
(45, 5, '16', 1, '2018-03-11 16:55:58', NULL, NULL),
(46, 5, '17', 1, '2018-03-11 16:55:58', NULL, NULL),
(47, 5, '2', 1, '2018-03-11 16:56:20', NULL, NULL),
(48, 5, '15', 1, '2018-03-11 16:56:20', NULL, NULL),
(49, 5, '16', 1, '2018-03-11 16:56:20', NULL, NULL),
(50, 5, '17', 1, '2018-03-11 16:56:20', NULL, NULL),
(51, 9, '11', 1, '2018-03-12 07:28:35', 'Internet Banking', 'Delivered'),
(52, 9, '25', 1, '2018-03-12 07:28:35', 'Internet Banking', 'Delivered'),
(53, 9, '28', 1, '2018-03-12 07:30:31', 'Debit / Credit card', NULL),
(54, 9, '28', 1, '2018-03-12 07:30:40', 'Debit / Credit card', NULL),
(55, 9, '25', 1, '2018-03-12 07:45:33', NULL, NULL),
(56, 1, '25', 1, '2018-03-12 12:02:21', 'COD', NULL),
(57, 1, '11', 1, '2018-03-12 17:07:18', 'Bkash', NULL),
(58, 10, '7', 1, '2018-03-12 17:38:28', 'DBBL', NULL),
(59, 10, '28', 1, '2018-03-12 17:38:28', 'DBBL', NULL),
(60, 10, '29', 2, '2018-03-12 17:38:28', 'DBBL', NULL),
(61, 10, '26', 1, '2018-03-12 17:39:48', 'Internet Banking', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

DROP TABLE IF EXISTS `ordertrackhistory`;
CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 7, 'Delivered', 'sent', '2018-02-25 06:26:36'),
(6, 1, 'Delivered', 'sent', '2018-02-25 07:08:32'),
(7, 7, 'in Process', 'we sent your orders', '2018-02-27 05:20:02'),
(8, 9, 'Delivered', 'fdfgdg', '2018-02-27 05:21:04'),
(9, 12, 'in Process', 'wait a while.. we have a problem', '2018-02-27 14:31:50'),
(10, 14, 'in Process', 'your product is shipping', '2018-02-27 14:37:03'),
(11, 18, 'Delivered', 'hfgh', '2018-02-27 18:04:06'),
(12, 7, 'Delivered', 'thanks for your order', '2018-02-28 05:57:33'),
(13, 8, 'Delivered', 'fdsgsdf', '2018-02-28 05:57:55'),
(14, 10, 'Delivered', ' hjkk', '2018-02-28 05:58:17'),
(15, 11, 'Delivered', 'dfghfj', '2018-02-28 05:58:33'),
(16, 12, 'Delivered', 'uhfsudghdfgbjkcfg', '2018-02-28 05:58:48'),
(17, 14, 'Delivered', 'ckjghkk', '2018-02-28 05:58:58'),
(18, 17, 'in Process', 'wait\r\n', '2018-02-28 17:58:28'),
(19, 17, 'Delivered', 'come', '2018-02-28 17:58:42'),
(20, 16, 'Delivered', 'fgg', '2018-02-28 17:58:55'),
(21, 19, 'Delivered', 'gsdg', '2018-03-03 08:48:32'),
(22, 20, 'Delivered', 'gfddfgf', '2018-03-03 17:27:53'),
(23, 21, 'in Process', 'vfhg', '2018-03-03 17:48:16'),
(24, 21, 'Delivered', 'hjkhjk', '2018-03-03 17:48:39'),
(25, 24, 'in Process', 'gdfhfh', '2018-03-04 08:00:33'),
(26, 24, 'Delivered', 'gdfgfgh', '2018-03-04 08:01:21'),
(27, 29, 'Delivered', 'hdh', '2018-03-04 08:10:50'),
(28, 28, 'Delivered', 'hffghfgdh', '2018-03-04 08:10:58'),
(29, 27, 'Delivered', 'fgdhfgh', '2018-03-04 08:11:06'),
(30, 26, 'Delivered', 'fdhdfhfdh', '2018-03-04 08:11:14'),
(31, 30, 'in Process', 'we will sent you a few days later', '2018-03-06 04:48:23'),
(32, 30, 'Delivered', 'deleveried successed', '2018-03-06 04:49:05'),
(33, 51, 'Delivered', 'successfully deleveried', '2018-03-12 12:03:41'),
(34, 52, 'in Process', 'dfsgs', '2018-03-12 12:04:25'),
(35, 52, 'Delivered', 'uygfgvvg', '2018-03-12 12:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(5, 25, 5, 5, 5, 'shahin', 'DFDF', 'SADFDSF', '2018-03-04 07:25:57'),
(6, 28, 4, 4, 5, 'Shahin Emon', 'gdhs', 'shfhffd', '2018-03-06 05:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) DEFAULT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Micromax 81cm (32) HD Ready LED TV  (32T6175MHD, 2 x HDMI, 2 x USB)', 'Micromax test', 13990, 25000, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'micromax1.jpeg', 'micromax main image.jpg', 'micromax main image.jpg', 120, 'In Stock', '2017-01-30 16:54:35', ''),
(2, 4, 4, 'Apple iPhone 6 (Silver, 16 GB)', 'Apple INC', 36990, 0, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">1 GB RAM | 16 GB ROM |</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">4.7 inch Retina HD Display</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">8MP Primary Camera | 1.2MP Front</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Li-Ion Battery</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">A8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</li></ul></div>', 'apple-iphone-6-1.jpeg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', 0, 'In Stock', '2017-01-30 16:59:00', ''),
(3, 4, 4, 'Redmi Note 4 (Gold, 32 GB)  (With 3 GB RAM)', 'Redmi', 10999, 0, '<br><div><ol><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>4100 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor<br></li></ol></div>', 'mi-redmi-note-4-1.jpeg', 'mi-redmi-note-4-2.jpeg', 'mi-redmi-note-4-3.jpeg', 0, 'In Stock', '2017-02-04 04:03:15', ''),
(4, 4, 4, 'Lenovo K6 Power (Silver, 32 GB) ', 'Lenovo', 9999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>4000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 430 Processor<br></li></ul>', 'lenovo-k6-power-k33a42-1.jpeg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', 45, 'In Stock', '2017-02-04 04:04:43', ''),
(5, 4, 4, 'Lenovo Vibe K5 Note (Gold, 32 GB)  ', 'Lenovo', 11999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor<br></li></ul>', 'lenovo-k5-note-pa330010in-1.jpeg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', 0, 'In Stock', '2017-02-04 04:06:17', ''),
(6, 4, 4, 'Micromax Canvas Mega 4G', 'Micromax', 6999, 0, '<ul><li>3 GB RAM | 16 GB ROM |<br></li><li>5.5 inch HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>2500 mAh Battery<br></li><li>MT6735 Processor<br></li></ul>', 'micromax-canvas-mega-4g-1.jpeg', 'micromax-canvas-mega-4g-2.jpeg', 'micromax-canvas-mega-4g-3.jpeg', 35, 'In Stock', '2017-02-04 04:08:07', ''),
(7, 4, 4, 'SAMSUNG Galaxy On5', 'SAMSUNG', 7490, 0, '<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>', 'samsung-galaxy-on7-sm-1.jpeg', 'samsung-galaxy-on5-sm-2.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', 20, 'In Stock', '2017-02-04 04:10:17', ''),
(8, 4, 4, 'OPPO A57', 'OPPO', 14990, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>', 'oppo-a57-na-original-1.jpeg', 'oppo-a57-na-original-2.jpeg', 'oppo-a57-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:11:54', ''),
(9, 4, 5, 'Affix Back Cover for Mi Redmi Note 4', 'Techguru', 259, 0, '<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>', 'amzer-amz98947-original-1.jpeg', 'amzer-amz98947-original-2.jpeg', 'amzer-amz98947-original-3.jpeg', 10, 'In Stock', '2017-02-04 04:17:03', ''),
(11, 4, 6, 'Acer ES 15 Pentium Quad Core', 'Acer', 19990, 200, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:26:17', ''),
(12, 4, 6, 'Micromax Canvas Laptab II (WIFI) Atom 4th Gen', 'Micromax', 10999, 0, '<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>', 'micromax-lt777w-2-in-1-laptop-original-1.jpeg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:28:17', ''),
(13, 4, 6, 'HP Core i5 5th Gen', 'HP', 41990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:30:24', ''),
(14, 4, 6, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', 22990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2017-02-04 04:32:15', ''),
(15, 3, 8, 'The Wimpy Kid Do -It- Yourself Book', 'ABC', 205, 250, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">The Wimpy Kid Do -It- Yourself Book</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 50, 'In Stock', '2017-02-04 04:35:13', ''),
(16, 3, 8, 'Thea Stilton and the Tropical Treasure ', 'XYZ', 240, 0, '<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', 30, 'In Stock', '2017-02-04 04:36:23', ''),
(17, 5, 9, 'Induscraft Solid Wood King Bed With Storage', 'Induscraft', 32566, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - Honey Brown)</span><br><div><ul><li>Material Subtype: Rosewood (Sheesham)<br></li><li>W x H x D: 1850 mm x 875 mm x 2057.5 mm<br></li><li>Floor Clearance: 8 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-1.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-2.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:40:37', ''),
(18, 5, 10, 'Nilkamal Ursa Metal Queen Bed', 'Nilkamal', 6523, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">@home by Nilkamal Ursa Metal Queen Bed</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - NA)</span><br><div><ul><li>Material Subtype: Carbon Steel<br></li><li>W x H x D: 1590 mm x 910 mm x 2070 mm<br></li><li>Floor Clearance: 341 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-1.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-2.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:42:27', ''),
(19, 6, 12, 'Asian Casuals  (White, White)', 'Asian', 379, 0, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: White, White</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Outer Material: Denim</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></div></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 45, 'In Stock', '2017-03-10 20:16:03', ''),
(20, 6, 12, 'Adidas MESSI 16.3 TF Football turf Shoes  (Blue)', 'Adidas', 4129, 5000, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: Blue</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Closure: Laced</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Weight</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>200 g (per single Shoe) - Weight of the product may vary depending on size.</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Style</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Panel and Stitch Detail, Textured Detail</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Tip Shape</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Round</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Season</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>AW16</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Closure</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Laced</b></li></ul></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2017-03-10 20:19:22', ''),
(25, 9, 16, 'Harpic', 'Harpic IND LTD.', 95, 133, '<span class=\"st\">100% Limescale Remover Original. www.happier-homes.com www.rbeuroinfo.<wbr>com. 5x better than bleach* *On removing limescale and rust. <em>Harpic</em>\r\n 100% Limescale Remover has been specifically designed to dissolve 100% \r\nof limescale and kill 99.9% of bacteria in your toilet bowl. </span>', 'harpic-blue-200ml-toilet-cleaner.jpg', 'harpic-blue-200ml-toilet-cleaner.jpg', 'harpic-power-plus-original-500ml.jpg', 0, 'In Stock', '2018-03-04 07:24:48', NULL),
(26, 3, 18, 'General Math', 'NCTB', 120, 120, 'NCTB published since 2017.<br>All categories are include here<br>', 'unnamed.png', 'unnamed.png', 'unnamed.png', 0, 'In Stock', '2018-03-05 16:26:55', NULL),
(27, 4, 7, 'Desktop PC P4 2.4Ghz With Monitor ', 'Intel', 8000, 15000, 'Want to sell my P4 Desktop pc.<br>\r\nConfiguration:<br>\r\nIntel Pentium 4 2.4Ghz<br>\r\nEsonic Mother Board With sata port<br>\r\n521mb ram<br>\r\n80GB+40GB IDE Hard Disk.<br>\r\nAsus sata DVD writer<br>\r\n<br>\r\nMonitor-Samsung Sync Master 14\" crt<br>\r\nNo damage.<br>\r\nExchange Location- Mohammadpur,Dhaka<br>\r\nReal buyer pls call me @ 01616160404.<br>\r\n(unfortunately if i m unable to pick u pls leave me a text)', '1076568_0_original.jpg', '1076568_0_original.jpg', '1076568_0_original.jpg', 500, 'In Stock', '2018-03-06 04:42:01', NULL),
(28, 4, 7, 'HP Compaq CQ1140UKm Desktop PC with 20 inch LCD Monitor ', 'HP', 24300, 25000, '<h6>Brand&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp; HP</h6><h6>&nbsp;Item Weigh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp; t2.25 Kg</h6><h6>&nbsp;Product Dimensions : 10 x 27 x 32 cm <br></h6><h6>&nbsp;Item model number : QD498EA#ABU</h6><h6>&nbsp;Screen Size: &nbsp; 20 inches</h6><h6>&nbsp;Processor: &nbsp; &nbsp;&nbsp; BrandAMD</h6><h6>&nbsp;Processor Speed :&nbsp; 1.65 GHz <br></h6><h6>Processor: &nbsp; &nbsp; &nbsp; &nbsp; Count2 <br></h6><h6>&nbsp;RAM Size :&nbsp;&nbsp; 4 GB</h6><h6>&nbsp;Memory Technology :&nbsp;&nbsp; DDR3 SDRAM</h6><h6>&nbsp;Computer Memory: &nbsp; TypeDDR3 <br></h6><h6>SDRAM\r\n         Hard Drive Size :&nbsp; 1 TB</h6><h6>&nbsp;Hard Disk: &nbsp; &nbsp; &nbsp; Technologyhdd <br></h6><h6>&nbsp;Graphics Card:&nbsp; DescriptionHD 6310-shared <br></h6><h6>memory\r\n         Number of USB: &nbsp; &nbsp; &nbsp; 2.0 <br></h6><h6>Ports6\r\n         Operating :&nbsp;&nbsp;&nbsp; S</h6><h6>ystemAll Windows Server <br></h6><h6>Versions 2000\r\n         Lithium Battery Weight25 Grams</h6>', 'Get-the-complete-package._V163679618_.jpg', 'Get-the-complete-package._V163679618_.jpg', 'Get-the-complete-package._V163679618_.jpg', 200, 'In Stock', '2018-03-06 04:53:23', NULL),
(29, 6, 15, 'Winza Designer Cotton Saree with Blouse Piece', 'Jamdani', 560, 550, '<ul class=\"a-unordered-list a-vertical a-spacing-none\"><li><h4>color: green</h4><h4><span class=\"a-list-item\"> \r\n							</span></h4></li><li><h4><span class=\"a-list-item\">60% Art silk and 40% cotton\r\n							\r\n						</span></h4></li><li><h4><span class=\"a-list-item\"> \r\n							With blouse piece\r\n							\r\n						</span></h4></li><li><h4><span class=\"a-list-item\"> \r\n							Chanderi\r\n							\r\n						</span></h4></li><li><h4><span class=\"a-list-item\"> \r\n							Hand wash or machine wash\r\n							\r\n						</span></h4></li><li><h4><span class=\"a-list-item\"> \r\n							6 yards\r\n							\r\n						</span></h4></li><li><h4><span class=\"a-list-item\"> \r\n							Ceremony wear\r\n							\r\n						</span></h4></li><li><h4><span class=\"a-list-item\"> \r\n							Jhalar (Latkan) on saree border showing in image may or may not come as depends on weaving machine\r\n							\r\n						</span></h4></li></ul>', '61VfopWIUoL._UY550_.jpg', '61VfopWIUoL._UY550_.jpg', '61VfopWIUoL._UY550_.jpg', 0, 'In Stock', '2018-03-06 05:14:55', NULL),
(30, 10, 19, 'Nurjahan Rice', 'Nurjahan & company', 2100, 2500, '<div align=\"justify\"><ol><li><h2><font face=\"impact\" size=\"5\"><u><i><b>Ggs </b></i></u></font></h2></li><li><h2><font face=\"impact\" size=\"5\"><u><i><b>fsbj</b></i></u></font></h2></li><li><h2><font face=\"impact\" size=\"5\"><u><i><b>svdfhg</b></i></u></font></h2></li></ol></div>', 'Nur-Jahan-Basmati-Rice-1kg.jpg', 'rice_583-ab.jpg', 'product_grains_rice_1_large.jpg', 100, 'In Stock', '2018-03-12 17:47:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2017-01-26 16:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Television', '2017-01-26 16:29:09', '25-02-2018 11:35:25 AM'),
(4, 4, 'Mobiles', '2017-01-30 16:55:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-04 04:12:40', ''),
(6, 4, 'Laptops', '2017-02-04 04:13:00', ''),
(7, 4, 'Computers', '2017-02-04 04:13:27', ''),
(8, 3, 'Comics', '2017-02-04 04:13:54', ''),
(9, 5, 'Beds', '2017-02-04 04:36:45', ''),
(10, 5, 'Sofas', '2017-02-04 04:37:02', ''),
(11, 5, 'Dining Tables', '2017-02-04 04:37:51', ''),
(12, 6, 'Men Footwears', '2017-03-10 20:12:59', ''),
(13, 7, 'text', '2018-03-03 07:33:11', NULL),
(14, 7, 'pots', '2018-03-03 07:34:33', NULL),
(15, 6, 'Ladies cloth', '2018-03-03 17:24:04', NULL),
(16, 9, 'pots', '2018-03-03 17:43:31', NULL),
(17, 9, 'plets', '2018-03-03 17:44:01', NULL),
(18, 3, 'Class 9-10', '2018-03-05 16:24:20', NULL),
(19, 10, 'Rice', '2018-03-12 17:42:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'as@a.c', 0x3a3a3100000000000000000000000000, '2018-03-03 13:58:46', NULL, 0),
(2, 'a@g.c', 0x3a3a3100000000000000000000000000, '2018-03-03 14:03:23', NULL, 1),
(3, 'z@c.c', 0x3a3a3100000000000000000000000000, '2018-03-03 14:08:05', '03-03-2018 07:39:22 PM', 1),
(4, 'z@c.c', 0x3a3a3100000000000000000000000000, '2018-03-03 17:47:44', '03-03-2018 11:25:00 PM', 1),
(5, 'z@c.c', 0x3a3a3100000000000000000000000000, '2018-03-03 18:01:35', NULL, 1),
(6, 'as@a.c', 0x3a3a3100000000000000000000000000, '2018-03-03 18:05:39', NULL, 0),
(7, 'z@c.c', 0x3a3a3100000000000000000000000000, '2018-03-03 18:05:57', '04-03-2018 01:38:14 PM', 1),
(8, 'as@a.c', 0x3a3a3100000000000000000000000000, '2018-03-04 07:59:23', NULL, 0),
(9, 'a@g.c', 0x3a3a3100000000000000000000000000, '2018-03-04 07:59:38', NULL, 1),
(10, 't@c.c', 0x3a3a3100000000000000000000000000, '2018-03-04 08:09:01', NULL, 1),
(11, 'as@a.c', 0x3a3a3100000000000000000000000000, '2018-03-06 04:46:48', NULL, 0),
(12, 'as@a.c', 0x3a3a3100000000000000000000000000, '2018-03-06 04:46:53', NULL, 0),
(13, 'a@g.c', 0x3a3a3100000000000000000000000000, '2018-03-06 04:47:01', NULL, 1),
(14, 'as@a.c', 0x3a3a3100000000000000000000000000, '2018-03-11 16:41:41', NULL, 0),
(15, 'a@g.c', 0x3a3a3100000000000000000000000000, '2018-03-11 16:41:51', NULL, 1),
(16, 't@c.c', 0x3a3a3100000000000000000000000000, '2018-03-12 07:28:28', '12-03-2018 11:04:06 PM', 1),
(17, 'a@g.c', 0x3a3a3100000000000000000000000000, '2018-03-12 17:14:22', '12-03-2018 10:45:58 PM', 1),
(18, 'zz@g.c', 0x3a3a3100000000000000000000000000, '2018-03-12 17:36:06', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'shahin', 'shahin@gmail.com', 176271881, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-20 06:16:45', NULL),
(5, 'shahin', 'a@g.c', 6548978, '0cc175b9c0f1b6a831c399e269772661', 'satkhira', 'Satkhira sadar road', 'satkhira', 9400, 'Town:   satkhira', 'satkhira', 'satkhira', 9404, '2018-02-20 06:39:55', NULL),
(6, 'mahmudul', 'b@c.c', 5778986, '0cc175b9c0f1b6a831c399e269772661', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-27 05:18:21', NULL),
(7, 'hossain', 's@c.c', 64565, '0cc175b9c0f1b6a831c399e269772661', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-27 14:35:29', NULL),
(8, 'khan', 'z@c.c', 5645646, '0cc175b9c0f1b6a831c399e269772661', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-27 18:02:17', NULL),
(9, 'Tasnim', 't@c.c', 543656, '0cc175b9c0f1b6a831c399e269772661', '35/5 block, jomider para, satkhira', 'rtuy23t', 'satkhira', 62563, 'satkhira', '35/5 block, jomider para, satkhira', 'satkhira', 9400, '2018-03-04 08:08:42', NULL),
(10, 'shahin_emon', 'zz@g.c', 797976763, '0cc175b9c0f1b6a831c399e269772661', 'satkhira, ', 'satkhira sadar', 'satkhira', 9400, 'Satkhira sadar', '35/5 block, jomider para, satkhira', 'Satkhira', 9400, '2018-03-12 17:35:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(3, 5, 3, '2018-02-27 17:40:15'),
(4, 5, 19, '2018-02-27 17:40:26'),
(7, 8, 15, '2018-02-27 18:05:54'),
(8, 8, 18, '2018-02-28 08:15:45'),
(9, 8, 21, '2018-03-03 08:51:33'),
(11, 5, 26, '2018-03-06 05:16:22'),
(13, 5, 17, '2018-03-11 16:45:22'),
(14, 10, 26, '2018-03-12 17:39:04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
