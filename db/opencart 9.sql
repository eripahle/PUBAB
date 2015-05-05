-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2015 at 11:45 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `opencart`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE IF NOT EXISTS `oc_address` (
`address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `custom_field` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(3, 0, 'tes2', 'tes', 'home', 'jlm rumah', '', 'bandung', '40233', 100, 1507, ''),
(5, 8, 'muhammad', 'gifary', '', 'Jl bbk tarogong 627A/196B', '', 'Bandung', '40233', 100, 1515, ''),
(6, 10, 'Pahlevi Ridwan', 'Erik estrada', '', 'Jl. Cibogo Atas No. 74 kel. sukawarna kec. sukajadi', '', 'Bandung', '40164', 100, 1515, ''),
(7, 11, 'rijal', 'ghod', '', 'Jl bbk tarogong 627A/196B', '', 'Bandung', '40233', 100, 1515, ''),
(8, 12, 'percobaan', 'kota', '', 'Jl. Cibogo Atas No.74 Rt:01/03', '', 'Bandung', '40233', 100, 1515, ''),
(9, 10, 'Pahlevi', 'Ridwa', 'Indonesi', 'jalan 1', 'jalan 2', 'Banjaran - Bandung', '40164', 100, 1515, ''),
(10, 10, 'Pahlevi', 'Ridwan', 'Indonesia', 'cibogo', 'cibogo', 'Samarang', '40164', 100, 1515, ''),
(11, 8, 'Gifary', 'rijal', '', 'jalsd', '', 'Alafan Sinabang', '40233', 100, 1507, ''),
(12, 8, 'hh', 'hh', '', 'hhtttt', 'hh', 'Atu Lintang Takengon', '40233', 100, 1507, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate` (
`affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_activity` (
`activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_login` (
`affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
`affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE IF NOT EXISTS `oc_api` (
`api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `firstname`, `lastname`, `password`, `status`, `date_added`, `date_modified`) VALUES
(1, 'hcItW7fwADGlm8uKubw7gpD6gX4jzxMzDnQKRG6jH6jfnVA6cDkVoQKqysEaCmJh', '', '', '6qvekItQlraSClokghwlItoSd4lJnSeHMloqRC4ycVn7yspH83VtAEgxg9gul1Mk0Y3uUzcOq1Of8sEgxHSuPSuJ66xO6SR40EgrvdYhRPN4ekzw9Olm2XWYtvcjoltHOmggjAqsQfiMYV86jNSX2VVg3dextxjN9C4NvZWwmoRWp7e7gEWAOMsfbD44M1vKIUowTrZrVpXZUcY10yxg94cXWfq2CxVAnfwOP0zfci0TV0omhZm4GfjHoz0tQlTs', 1, '2015-02-18 07:00:21', '2015-02-18 07:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_attribute` (
`attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
`attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE IF NOT EXISTS `oc_banner` (
`banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 0),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image` (
`banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(99, 6, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', '', 0),
(107, 8, '', 'catalog/demo/manufacturer/dell.png', 0),
(106, 8, '', 'catalog/demo/manufacturer/harley.png', 0),
(105, 8, '', 'catalog/demo/manufacturer/canon.png', 0),
(104, 8, '', 'catalog/demo/manufacturer/burgerking.png', 0),
(103, 8, '', 'catalog/demo/manufacturer/cocacola.png', 0),
(102, 8, '', 'catalog/demo/manufacturer/sony.png', 0),
(101, 8, '', 'catalog/demo/manufacturer/redbull.png', 0),
(100, 8, '', 'catalog/demo/manufacturer/nfl.png', 0),
(108, 8, '', 'catalog/demo/manufacturer/disney.png', 0),
(109, 8, '', 'catalog/demo/manufacturer/starbucks.png', 0),
(110, 8, '', 'catalog/demo/manufacturer/nintendo.png', 0),
(123, 7, '#', 'catalog/howtoshop.jpg', 3),
(122, 7, '#', 'catalog/1430534281552.jpg', 2),
(121, 7, '#', 'catalog/howtopublish.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(123, 1, 7, 'How to Shop'),
(99, 1, 6, 'HP Banner'),
(108, 1, 8, 'Disney'),
(107, 1, 8, 'Dell'),
(106, 1, 8, 'Harley Davidson'),
(105, 1, 8, 'Canon'),
(104, 1, 8, 'Burger King'),
(103, 1, 8, 'Coca Cola'),
(102, 1, 8, 'Sony'),
(101, 1, 8, 'RedBull'),
(100, 1, 8, 'NFL'),
(109, 1, 8, 'Starbucks'),
(110, 1, 8, 'Nintendo'),
(122, 1, 7, 'How to Be Editor'),
(121, 1, 7, 'How to publish');

-- --------------------------------------------------------

--
-- Table structure for table `oc_calendar_event`
--

CREATE TABLE IF NOT EXISTS `oc_calendar_event` (
`calendar_event_id` int(11) NOT NULL,
  `event_date` date NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_calendar_event`
--

INSERT INTO `oc_calendar_event` (`calendar_event_id`, `event_date`, `title`, `description`) VALUES
(7, '2015-04-20', 'Pembukaan Perpusataan PUBAPP', 'Pembukaan perpustakaan ke 2 PUBAPP di Asia Afrika Bandung , dimeriahkan oleh kehadiran dan sambutan dari Pak Walikota, Ridwan Kamil');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE IF NOT EXISTS `oc_category` (
`category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(64, '', 0, 1, 5, 8, 1, '2015-03-14 14:15:08', '2015-03-14 14:33:27'),
(67, '', 64, 0, 1, 0, 1, '2015-03-14 14:21:37', '2015-03-14 14:21:37'),
(66, '', 64, 0, 1, 0, 1, '2015-03-14 14:16:06', '2015-03-14 14:40:16'),
(68, '', 64, 0, 1, 0, 1, '2015-03-14 14:22:07', '2015-03-14 14:22:07'),
(69, '', 64, 0, 1, 0, 1, '2015-03-14 14:23:09', '2015-03-14 14:23:09'),
(70, '', 64, 0, 1, 0, 1, '2015-03-14 14:23:29', '2015-03-14 14:23:29'),
(71, '', 64, 0, 1, 0, 1, '2015-03-14 14:23:50', '2015-03-14 14:23:50'),
(72, '', 64, 0, 1, 0, 1, '2015-03-14 14:24:06', '2015-03-14 14:24:06'),
(73, '', 64, 0, 1, 0, 1, '2015-03-14 14:24:27', '2015-03-14 14:24:27'),
(74, '', 64, 0, 1, 0, 1, '2015-03-14 14:24:47', '2015-03-14 14:24:47'),
(75, '', 64, 0, 1, 0, 1, '2015-03-14 14:24:59', '2015-03-14 14:24:59'),
(76, '', 64, 0, 1, 0, 1, '2015-03-14 14:25:28', '2015-03-14 14:25:28'),
(77, '', 64, 0, 1, 0, 1, '2015-03-14 14:25:52', '2015-03-14 14:25:52'),
(78, '', 64, 0, 1, 0, 1, '2015-03-14 14:26:04', '2015-03-14 14:26:04'),
(79, '', 64, 0, 1, 0, 1, '2015-03-14 14:26:32', '2015-03-14 14:26:32'),
(80, '', 64, 0, 1, 0, 1, '2015-03-14 14:26:57', '2015-03-14 14:26:57'),
(81, '', 64, 0, 1, 0, 1, '2015-03-14 14:27:17', '2015-03-14 14:27:17'),
(82, '', 64, 0, 1, 0, 1, '2015-03-14 14:27:44', '2015-03-14 14:27:44'),
(83, '', 64, 0, 1, 0, 1, '2015-03-14 14:28:25', '2015-03-14 14:28:25'),
(84, '', 64, 0, 1, 0, 1, '2015-03-14 14:28:45', '2015-03-14 14:28:45'),
(85, '', 64, 0, 1, 0, 1, '2015-03-14 14:29:01', '2015-03-14 14:29:01'),
(86, '', 64, 0, 1, 0, 1, '2015-03-14 14:29:15', '2015-03-14 14:29:15'),
(87, '', 64, 0, 1, 0, 1, '2015-03-14 14:29:44', '2015-03-14 14:29:44'),
(88, '', 64, 0, 1, 0, 1, '2015-03-14 14:29:57', '2015-03-14 14:29:57'),
(89, '', 64, 0, 1, 0, 1, '2015-03-14 14:30:16', '2015-03-14 14:30:16'),
(90, '', 64, 0, 1, 0, 1, '2015-03-14 14:30:34', '2015-03-14 14:30:34'),
(91, '', 64, 0, 1, 0, 1, '2015-03-14 14:31:04', '2015-03-14 14:31:04'),
(92, '', 64, 0, 1, 0, 1, '2015-03-14 14:35:08', '2015-03-14 14:35:08'),
(93, '', 64, 0, 1, 0, 1, '2015-03-14 14:35:21', '2015-03-14 14:35:21'),
(94, '', 64, 0, 1, 0, 1, '2015-03-14 14:35:33', '2015-03-14 14:35:33'),
(95, '', 64, 0, 1, 0, 1, '2015-03-14 14:36:07', '2015-03-14 14:36:07'),
(96, '', 64, 0, 1, 0, 1, '2015-03-14 14:36:20', '2015-03-14 14:36:20'),
(97, '', 64, 0, 1, 0, 1, '2015-03-14 14:36:40', '2015-03-14 14:36:40'),
(98, '', 64, 0, 1, 0, 1, '2015-03-14 14:37:02', '2015-03-14 14:37:02'),
(99, '', 64, 0, 1, 0, 1, '2015-03-14 14:37:13', '2015-03-14 14:37:13'),
(100, '', 64, 0, 1, 0, 1, '2015-03-14 14:37:35', '2015-03-14 14:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(64, 1, 'Category', '&lt;p&gt;This is Menu from category book&lt;/p&gt;', 'category', '', ''),
(67, 1, 'Anak', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'anak', '', ''),
(66, 1, 'Agama', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'agama', '', ''),
(68, 1, 'Arsitektur', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'arsitektur', '', ''),
(69, 1, 'Biography', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Biography', '', ''),
(70, 1, 'Bisnis', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bisnis', '', ''),
(71, 1, 'Fan Fiction', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fan Fiction', '', ''),
(72, 1, 'Finance', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Finance', '', ''),
(73, 1, 'Fotografi', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fotografi', '', ''),
(74, 1, 'Game', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Game', '', ''),
(75, 1, 'Hobi', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Hobi', '', ''),
(76, 1, 'Hukum', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Hukum', '', ''),
(77, 1, 'Humor', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Humor', '', ''),
(78, 1, 'Interior &amp; Pertamanan', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Interior &amp; Pertamanan', '', ''),
(79, 1, 'Internet &amp; Komputer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Internet &amp; Komputer', '', ''),
(80, 1, 'Kesehatan', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Kesehatan', '', ''),
(81, 1, 'Komik &amp; Graphics Novel', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Komik &amp; Graphics Novel', '', ''),
(82, 1, 'Kumpulan Cerpen', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Kumpulan Cerpen', '', ''),
(83, 1, 'Kumpulan Puisi', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Kumpulan Puisi', '', ''),
(84, 1, 'Memasak &amp; Makanan', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Memasak &amp; Makanan', '', ''),
(85, 1, 'Notebook', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Notebook', '', ''),
(86, 1, 'Novel', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Novel', '', ''),
(87, 1, 'Olahraga &amp; Petualangan', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Olahraga &amp; Petualangan', '', ''),
(88, 1, 'Parenting', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Parenting', '', ''),
(89, 1, 'Pendidikan', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Pendidikan', '', ''),
(90, 1, 'Pengembangan Diri', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Pengembangan Diri', '', ''),
(91, 1, 'Photo Book', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Photo Book', '', ''),
(92, 1, 'Politik', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Politik', '', ''),
(93, 1, 'Sains &amp; Teknologi', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Sains &amp; Teknologi', '', ''),
(94, 1, 'Sejarah', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Sejarah', '', ''),
(95, 1, 'Seni &amp; Desain', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Seni &amp; Desain', '', ''),
(96, 1, 'Sex &amp; Relationship', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Sex &amp; Relationship', '', ''),
(97, 1, 'Skenario Film', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Skenario Film', '', ''),
(98, 1, 'Text Book/Non Fiksi', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Text Book/Non Fiksi', '', ''),
(99, 1, 'Travel', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Travel', '', ''),
(100, 1, 'True Story', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'True Story', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(64, 64, 0),
(67, 67, 1),
(66, 66, 1),
(66, 64, 0),
(67, 64, 0),
(68, 68, 1),
(68, 64, 0),
(69, 69, 1),
(69, 64, 0),
(70, 70, 1),
(70, 64, 0),
(71, 71, 1),
(71, 64, 0),
(72, 72, 1),
(72, 64, 0),
(73, 73, 1),
(73, 64, 0),
(74, 74, 1),
(74, 64, 0),
(75, 75, 1),
(75, 64, 0),
(76, 76, 1),
(76, 64, 0),
(77, 77, 1),
(77, 64, 0),
(78, 78, 1),
(78, 64, 0),
(79, 79, 1),
(79, 64, 0),
(80, 80, 1),
(80, 64, 0),
(81, 81, 1),
(81, 64, 0),
(82, 82, 1),
(82, 64, 0),
(83, 83, 1),
(83, 64, 0),
(84, 84, 1),
(84, 64, 0),
(85, 85, 1),
(85, 64, 0),
(86, 86, 1),
(86, 64, 0),
(87, 87, 1),
(87, 64, 0),
(88, 88, 1),
(88, 64, 0),
(89, 89, 1),
(89, 64, 0),
(90, 90, 1),
(90, 64, 0),
(91, 91, 1),
(91, 64, 0),
(92, 92, 1),
(92, 64, 0),
(93, 93, 1),
(93, 64, 0),
(94, 94, 1),
(94, 64, 0),
(95, 95, 1),
(95, 64, 0),
(96, 96, 1),
(96, 64, 0),
(97, 97, 1),
(97, 64, 0),
(98, 98, 1),
(98, 64, 0),
(99, 99, 1),
(99, 64, 0),
(100, 100, 1),
(100, 64, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(64, 0, 0),
(67, 0, 0),
(66, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0),
(91, 0, 0),
(92, 0, 0),
(93, 0, 0),
(94, 0, 0),
(95, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(64, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_city`
--

CREATE TABLE IF NOT EXISTS `oc_city` (
`city_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=5543 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_city`
--

INSERT INTO `oc_city` (`city_id`, `zone_id`, `name`, `status`) VALUES
(1, 1507, 'Alafan Sinabang', 1),
(2, 1507, 'Arongan Lambalek Meulaboh', 1),
(3, 1507, 'Atu Lintang Takengon', 1),
(4, 1507, 'Babah Rot Blangpidie', 1),
(5, 1507, 'Babul Makmur Kutacane', 1),
(6, 1507, 'Babul Rahmat Kutacane', 1),
(7, 1507, 'Babussalam Kutacane', 1),
(8, 1507, 'Badar Kutacane', 1),
(9, 1507, 'Baiturrahman Bandaaceh', 1),
(10, 1507, 'Baitussalam Jantho', 1),
(11, 1507, 'Bakongan Timur Tapaktuan', 1),
(12, 1507, 'Bakongan Tapaktuan', 1),
(13, 1507, 'Baktia Lhoksukon', 1),
(14, 1507, 'Baktiya Barat Lhoksukon', 1),
(15, 1507, 'Bambel Kutacane', 1),
(16, 1507, 'Banda Alam Idi Rayeuk', 1),
(17, 1507, 'Banda Raya Bandaaceh', 1),
(18, 1507, 'Banda Sakti Lhokseumawe', 1),
(19, 1507, 'Bandaaceh', 1),
(20, 1507, 'Bandar Baru Meureudu', 1),
(21, 1507, 'Bandar Dua Meureudu', 1),
(22, 1507, 'Bandar Simpang Tiga Redelon', 1),
(23, 1507, 'Batee Sigli', 1),
(24, 1507, 'Bebesan Takengon', 1),
(25, 1507, 'Bendahara Kualasimpang', 1),
(26, 1507, 'Beutong Suka Makmue', 1),
(27, 1507, 'Bies Takengon', 1),
(28, 1507, 'Bintang Takengon', 1),
(29, 1507, 'Birem Bayeun Idi Rayeuk', 1),
(30, 1507, 'Bireuen', 1),
(31, 1507, 'Blang Mangat Lhokseumawe', 1),
(32, 1507, 'Blangjerango Blangkejeren', 1),
(33, 1507, 'Blangkejeren Kab. Gayolues', 1),
(34, 1507, 'Blangpegayon Blangkejeren', 1),
(35, 1507, 'Blangpidie', 1),
(36, 1507, 'Bubon Meulaboh', 1),
(37, 1507, 'Bukit Tusam Kutacane', 1),
(38, 1507, 'Bukit Simpang Tiga Redelon', 1),
(39, 1507, 'Celala Takengon', 1),
(40, 1507, 'Cot Girek Lhoksukon', 1),
(41, 1507, 'Dabunggelang Blangkejeren', 1),
(42, 1507, 'Danau Paris Singkil', 1),
(43, 1507, 'Darul Aman Idi Rayeuk', 1),
(44, 1507, 'Darul Hasanah Kutacane', 1),
(45, 1507, 'Darul Iksan Idi Rayeuk', 1),
(46, 1507, 'Darul Imarah Jantho', 1),
(47, 1507, 'Darul Kamal Jantho', 1),
(48, 1507, 'Darul Makmur Suka Makmue', 1),
(49, 1507, 'Darusalam Jantho', 1),
(50, 1507, 'Delima Sigli', 1),
(51, 1507, 'Dewantara Lhoksukon', 1),
(52, 1507, 'Gandapura Bireuen', 1),
(53, 1507, 'Geumpang Sigli', 1),
(54, 1507, 'Gleumpang Tiga Sigli', 1),
(55, 1507, 'Glumpang Baro Sigli', 1),
(56, 1507, 'Gunung Meriah Singkil', 1),
(57, 1507, 'Idi Rayeuk Kab. Aceh Timur', 1),
(58, 1507, 'Idi Tuning Idi Rayeuk', 1),
(59, 1507, 'Indra Jaya Sigli', 1),
(60, 1507, 'Indra Makmur Idi Rayeuk', 1),
(61, 1507, 'Indrapuri Jantho', 1),
(62, 1507, 'Ingin Jaya Jantho', 1),
(63, 1507, 'Jagong Jeget Takengon', 1),
(64, 1507, 'Jangka Buya Meureudu', 1),
(65, 1507, 'Jangka Bireuen', 1),
(66, 1507, 'Jantho Kab. Aceh Besar', 1),
(67, 1507, 'Jaya Baru Bandaaceh', 1),
(68, 1507, 'Jaya Krueng Sabee', 1),
(69, 1507, 'Jeumpa Bireuen', 1),
(70, 1507, 'Jeunieb Bireuen', 1),
(71, 1507, 'Johan Pahlawan Meulaboh', 1),
(72, 1507, 'Juli Bireuen', 1),
(73, 1507, 'Julok Idi Rayeuk', 1),
(74, 1507, 'Karangbaru Kualasimpang', 1),
(75, 1507, 'Kawai XVI Meulaboh', 1),
(76, 1507, 'Kebayakan Takengon', 1),
(77, 1507, 'Kejuruan Muda Kualasimpang', 1),
(78, 1507, 'Kembang Tanjung Sigli', 1),
(79, 1507, 'Ketol Takengon', 1),
(80, 1507, 'Kluet Tengah Tapaktuan', 1),
(81, 1507, 'Kluet Timur Tapaktuan', 1),
(82, 1507, 'Kluet Utara Tapaktuan', 1),
(83, 1507, 'Kota Baharu Singkil', 1),
(84, 1507, 'Kota Juang Bireuen', 1),
(85, 1507, 'Krueng Barona Jaya Jantho', 1),
(86, 1507, 'Krueng Sabee/calang', 1),
(87, 1507, 'Kuala Batee  Blangpidie', 1),
(88, 1507, 'Kuala Bireuen', 1),
(89, 1507, 'Kuala Suka Makmue', 1),
(90, 1507, 'Kualasimpang Kab. Aceh Tamiang', 1),
(91, 1507, 'Kuet Selatan Tapaktuan', 1),
(92, 1507, 'Kuta Alam Bandaaceh', 1),
(93, 1507, 'Kuta Blang Bireuen', 1),
(94, 1507, 'Kuta Cot Glie Jantho', 1),
(95, 1507, 'Kuta Malaka Jantho', 1),
(96, 1507, 'Kuta Panjang Blangkejeren', 1),
(97, 1507, 'Kuta Raja Bandaaceh', 1),
(98, 1507, 'Kutabaro Jantho', 1),
(99, 1507, 'Kutacane', 1),
(100, 1507, 'Kutamakmur Lhoksukon', 1),
(101, 1507, 'Kute Panang Takengon', 1),
(102, 1507, 'Labuhan Haji Barat Tapaktuan', 1),
(103, 1507, 'Labuhan Haji Timur Tapaktuan', 1),
(104, 1507, 'Labuhan Haji Tapaktuan', 1),
(105, 1507, 'Langkahan Lhoksukon', 1),
(106, 1507, 'Langsa', 1),
(107, 1507, 'Langsa Barat Langsa', 1),
(108, 1507, 'Langsa Kota Langsa', 1),
(109, 1507, 'Langsa Lama Langsa', 1),
(110, 1507, 'Langsa Teungoh Langsa', 1),
(111, 1507, 'Langsa Timur Langsa', 1),
(112, 1507, 'Lauttawar Takengon', 1),
(113, 1507, 'Lawe Alas Kutacane', 1),
(114, 1507, 'Lawe Bulan Kutacane', 1),
(115, 1507, 'Lawe Sigalagala Kutacane', 1),
(116, 1507, 'Lembah Seulawah Jantho', 1),
(117, 1507, 'Leupung Jantho', 1),
(118, 1507, 'Lhoknga Jantho', 1),
(119, 1507, 'Lhokseumawe', 1),
(120, 1507, 'Lhoksukon Kab. Aceh Utara', 1),
(121, 1507, 'Lhoong Jantho', 1),
(122, 1507, 'Linge Takengon', 1),
(123, 1507, 'Lokop(Serbajadi) Idi Rayeuk', 1),
(124, 1507, 'Longkip Subulussalam', 1),
(125, 1507, 'Lueng Bata Bandaaceh', 1),
(126, 1507, 'Madat Idi Rayeuk', 1),
(127, 1507, 'Makmur Bireuen', 1),
(128, 1507, 'Mane Sigli', 1),
(129, 1507, 'Manggeng Blangpidie', 1),
(130, 1507, 'Manyuk Payed Kualasimpang', 1),
(131, 1507, 'Matangkuli Lhoksukon', 1),
(132, 1507, 'Mesjid Raya Jantho', 1),
(133, 1507, 'Meukek Tapaktuan', 1),
(134, 1507, 'Meulaboh', 1),
(135, 1507, 'Meurah Dua Meureudu', 1),
(136, 1507, 'Meurah Mulia Lhoksukon', 1),
(137, 1507, 'Meuraksa Bandaaceh', 1),
(138, 1507, 'Meureudu Kab. Pidie Jaya', 1),
(139, 1507, 'Mila Sigli', 1),
(140, 1507, 'Montasik Jantho', 1),
(141, 1507, 'Muara Batu Lhoksukon', 1),
(142, 1507, 'Muara Dua Lhokseumawe', 1),
(143, 1507, 'Muara Tiga Sigli', 1),
(144, 1507, 'Mutiara Timur Sigli', 1),
(145, 1507, 'Mutiara Sigli', 1),
(146, 1507, 'Nibong Lhoksukon', 1),
(147, 1507, 'Nisam Lhoksukon', 1),
(148, 1507, 'Nurussalam Idi Rayeuk', 1),
(149, 1507, 'Padang Tiji Sigli', 1),
(150, 1507, 'Pandrah Bireuen', 1),
(151, 1507, 'Pangat Krueng Sabee', 1),
(152, 1507, 'Pantan Jaya Blangkejeren', 1),
(153, 1507, 'Pante Beudari Idi Rayeuk', 1),
(154, 1507, 'Pante Ceureumen Meulaboh', 1),
(155, 1507, 'Panteraja Meureudu', 1),
(156, 1507, 'Pasie Raja Tapaktuan', 1),
(157, 1507, 'Paya Bakong Lhoksukon', 1),
(158, 1507, 'Pegasing Takengon', 1),
(159, 1507, 'Penanggalan Subulussalam', 1),
(160, 1507, 'Permata Simpang Tiga Redelon', 1),
(161, 1507, 'Peudada Bireuen', 1),
(162, 1507, 'Peudawa Idi Rayeuk', 1),
(163, 1507, 'Peukan Bada Jantho', 1),
(164, 1507, 'Peukan Baro Sigli', 1),
(165, 1507, 'Peureulak Barat Idi Rayeuk', 1),
(166, 1507, 'Peureulak Timur Idi Rayeuk', 1),
(167, 1507, 'Peureulak Idi Rayeuk', 1),
(168, 1507, 'Peusangan Selatan Bireuen', 1),
(169, 1507, 'Peusangan Siblah Krueng', 1),
(170, 1507, 'Peusangan Bireuen', 1),
(171, 1507, 'Pidie Sigli', 1),
(172, 1507, 'Pining Blangkejeren', 1),
(173, 1507, 'Pintu Rime Simpang 3 Redelon', 1),
(174, 1507, 'Primbang Bireuen', 1),
(175, 1507, 'Pulau Banyak Singkil', 1),
(176, 1507, 'Puro Aceh Jantho', 1),
(177, 1507, 'Puteribetung Blangkejeren', 1),
(178, 1507, 'Rantau Selamat Idi Rayeuk', 1),
(179, 1507, 'Rantau Selamat Kualasimpang', 1),
(180, 1507, 'Ranto Peureulak Idi Rayeuk', 1),
(181, 1507, 'Rikitgaib Blangkejeren', 1),
(182, 1507, 'Rundeng Subulussalam', 1),
(183, 1507, 'Rusip Antara Takengon', 1),
(184, 1507, 'Sabang Kota Sabang', 1),
(185, 1507, 'Sakti Sigli', 1),
(186, 1507, 'Salang Sinabang', 1),
(187, 1507, 'Sama Tiga Meulaboh', 1),
(188, 1507, 'Samadua Tapaktuan', 1),
(189, 1507, 'Samalanga Bireuen', 1),
(190, 1507, 'Sampoi Niet Krueng Sabee', 1),
(191, 1507, 'Samudera Lhoksukon', 1),
(192, 1507, 'Sawang Lhoksukon', 1),
(193, 1507, 'Sawang Tapaktuan', 1),
(194, 1507, 'Semadam Kutacane', 1),
(195, 1507, 'Seruai Kualasimpang', 1),
(196, 1507, 'Setia Bakti Krueng Sabee', 1),
(197, 1507, 'Seulimeum Jantho', 1),
(198, 1507, 'Seunagan Timur Suka Makmue', 1),
(199, 1507, 'Seunagan Suka Makmue', 1),
(200, 1507, 'Seunoddon Lhoksukon', 1),
(201, 1507, 'Sigli Kab. Pidie', 1),
(202, 1507, 'Silih Nara Takengon', 1),
(203, 1507, 'Simeulu Barat Sinabang', 1),
(204, 1507, 'Simeulu Tengah Sinabang', 1),
(205, 1507, 'Simeulu Timur Sinabang', 1),
(206, 1507, 'Simpang Jernih Idi Rayeuk', 1),
(207, 1507, 'Simpang Kanan Singkil', 1),
(208, 1507, 'Simpang Keuramat Lhoksukon', 1),
(209, 1507, 'Simpang Kiri Subulussalam', 1),
(210, 1507, 'Simpang Mamplam Bireuen', 1),
(211, 1507, 'Simpang Tiga Redelon', 1),
(212, 1507, 'Simpang Tiga Jantho', 1),
(213, 1507, 'Simpang Tiga Sigli', 1),
(214, 1507, 'Simpangulim Idi Rayeuk', 1),
(215, 1507, 'Sinabang', 1),
(216, 1507, 'Singkil Utara Singkil', 1),
(217, 1507, 'Singkil Kab. Aceh Singkil', 1),
(218, 1507, 'Singkohor Singkil', 1),
(219, 1507, 'Subulussalam', 1),
(220, 1507, 'Suka Makmue', 1),
(221, 1507, 'Suka Makmur Jantho', 1),
(222, 1507, 'Sukajaya Sabang', 1),
(223, 1507, 'Sukakarya Sabang', 1),
(224, 1507, 'Sultan Daulat Subulussalam', 1),
(225, 1507, 'Sungai Mas Meulaboh', 1),
(226, 1507, 'Sungai Raya Idi Rayeuk', 1),
(227, 1507, 'Suro Baru Singkil', 1),
(228, 1507, 'Susoh Blangpidie', 1),
(229, 1507, 'Syamtalira Aron Lhoksukon', 1),
(230, 1507, 'Syamtalira Bayu Lhoksukon', 1),
(231, 1507, 'Syiah Kuala Bandaaceh', 1),
(232, 1507, 'Syiah Kuala Simpang 3 Redelon', 1),
(233, 1507, 'Takengon', 1),
(234, 1507, 'Tamiang Hulu Kualasimpang', 1),
(235, 1507, 'Tanah Jambo Aye Lhoksukon', 1),
(236, 1507, 'Tanah Luas Lhoksukon', 1),
(237, 1507, 'Tanah Pasir Lhoksukon', 1),
(238, 1507, 'Tangantangan Blangpidie', 1),
(239, 1507, 'Tangse Sigli', 1),
(240, 1507, 'Tapaktuan Kab. Aceh Selatan', 1),
(241, 1507, 'Teluk Dalam Sinabang', 1),
(242, 1507, 'Terangon Blangkejeren', 1),
(243, 1507, 'Teripejaya Blangkejeren', 1),
(244, 1507, 'Teunom Krueng Sabee', 1),
(245, 1507, 'Teupah Barat Sinabang', 1),
(246, 1507, 'Teupah Selatan Sinabang', 1),
(247, 1507, 'Timang Gajah Simpang Tiga', 1),
(248, 1507, 'Tiro/truseb Sigli', 1),
(249, 1507, 'Titeue/keumala Sigli', 1),
(250, 1507, 'Trienggading Meureudu', 1),
(251, 1507, 'Trumon Timur Tapaktuan', 1),
(252, 1507, 'Trumon Tapaktuan', 1),
(253, 1507, 'Ulee Kareng Bandaaceh', 1),
(254, 1507, 'Ulim Meureudu', 1),
(255, 1507, 'Wih Pesam Simpang Tiga Redelon', 1),
(256, 1507, 'Woyla Barat Meulaboh', 1),
(257, 1507, 'Woyla Timur Meulaboh', 1),
(258, 1507, 'Woyla Meulaboh', 1),
(259, 1508, 'Abang Amlapura', 1),
(260, 1508, 'Abiansemal Menguwi ', 1),
(261, 1508, 'Amlapura', 1),
(262, 1508, 'Bangli Kab. Bangli', 1),
(263, 1508, 'Banjar Singaraja', 1),
(264, 1508, 'Banjarangkan Semarapura', 1),
(265, 1508, 'Baturiti Tabanan', 1),
(266, 1508, 'Bebandem Amlapura', 1),
(267, 1508, 'Blahbatuh Gianyar', 1),
(268, 1508, 'Buleleng Singaraja', 1),
(269, 1508, 'Busungbiu Singaraja', 1),
(270, 1508, 'Dawan Semarapura', 1),
(271, 1508, 'Denpasar', 1),
(272, 1508, 'Denpasar Barat Denpasar', 1),
(273, 1508, 'Denpasar Selatan Denpasar', 1),
(274, 1508, 'Denpasar Timur Denpasar', 1),
(275, 1508, 'Gianyar', 1),
(276, 1508, 'Grokgak Singaraja', 1),
(277, 1508, 'Jimbaran Kuta', 1),
(278, 1508, 'Karangasem Amlapura', 1),
(279, 1508, 'Kediri Tabanan', 1),
(280, 1508, 'Kerambilan Tabanan', 1),
(281, 1508, 'Kintamani Bangli', 1),
(282, 1508, 'Klungkung Semarapura', 1),
(283, 1508, 'Kubu Amlapura', 1),
(284, 1508, 'Kubutambahan Singaraja', 1),
(285, 1508, 'Kuta ', 1),
(286, 1508, 'Legian Kuta', 1),
(287, 1508, 'Manggis Amlapura', 1),
(288, 1508, 'Marga Tabanan', 1),
(289, 1508, 'Melaya Negara', 1),
(290, 1508, 'Mendoyo Negara', 1),
(291, 1508, 'Menguwi Kab. Badung', 1),
(292, 1508, 'Negara Kab. Jembrana', 1),
(293, 1508, 'Ngurahrai Kuta', 1),
(294, 1508, 'Nusa Dua Kuta', 1),
(295, 1508, 'Nusapenida Semarapura', 1),
(296, 1508, 'Papuan Tabanan', 1),
(297, 1508, 'Payangan Gianyar', 1),
(298, 1508, 'Pekutatan Negara', 1),
(299, 1508, 'Penebel Tabanan', 1),
(300, 1508, 'Petang Menguwi ', 1),
(301, 1508, 'Rendang Amlapura', 1),
(302, 1508, 'Sanur Kuta', 1),
(303, 1508, 'Sawan Singaraja', 1),
(304, 1508, 'Selat Amlapura', 1),
(305, 1508, 'Selemadeg Barat Tabanan', 1),
(306, 1508, 'Selemadeg Timur Tabanan', 1),
(307, 1508, 'Selemadeg Tabanan', 1),
(308, 1508, 'Semarapura', 1),
(309, 1508, 'Seririt Singaraja', 1),
(310, 1508, 'Sidemen Amlapura', 1),
(311, 1508, 'Singaraja Kab. Buleleng', 1),
(312, 1508, 'Sukasada Singaraja', 1),
(313, 1508, 'Sukawati Gianyar', 1),
(314, 1508, 'Susut Bangli', 1),
(315, 1508, 'Tabanan', 1),
(316, 1508, 'Tegallalang Gianyar', 1),
(317, 1508, 'Tejakula Singaraja', 1),
(318, 1508, 'Tembuku Bangli', 1),
(319, 1508, 'Ubud Gianyar', 1),
(320, 1509, 'Air Gegas Toboali', 1),
(321, 1509, 'Badau Tanjung Pandan', 1),
(322, 1509, 'Bakam Sungailiat', 1),
(323, 1509, 'Belinyu Sungailiat', 1),
(324, 1509, 'Bukit Intan Pangkalpinang', 1),
(325, 1509, 'Dendang Manggar', 1),
(326, 1509, 'Gantung Manggar', 1),
(327, 1509, 'Gerunggang Pangkalpinang', 1),
(328, 1509, 'Jebus  Kelapa', 1),
(329, 1509, 'Kelapa Kampit Manggar', 1),
(330, 1509, 'Kelapa Kab. Bangka Barat', 1),
(331, 1509, 'Koba Kab. Koba', 1),
(332, 1509, 'Lepar Pongok Toboali', 1),
(333, 1509, 'Manggar Kab. Belitung Barat', 1),
(334, 1509, 'Membalong Tanjungpandan', 1),
(335, 1509, 'Mendo Barat Sungailiat', 1),
(336, 1509, 'Mentok Kelapa', 1),
(337, 1509, 'Merawang Sungailiat', 1),
(338, 1509, 'Pangkal Balam Pangkalpinang', 1),
(339, 1509, 'Pangkalan Baru Koba', 1),
(340, 1509, 'Pangkalpinang', 1),
(341, 1509, 'Payung Toboali', 1),
(342, 1509, 'Pemali Sungailiat', 1),
(343, 1509, 'Puding Besar Sungailiat', 1),
(344, 1509, 'Rangkui Pangkalpinang', 1),
(345, 1509, 'Riau Silip Sungailiat', 1),
(346, 1509, 'Selat Nasik Tanjungpandan', 1),
(347, 1509, 'Sijuk Tanjung Pandan', 1),
(348, 1509, 'Simpang Katis Koba', 1),
(349, 1509, 'Simpang Rima Toboali', 1),
(350, 1509, 'Simpang Teritip  Kelapa', 1),
(351, 1509, 'Sungai Selan Koba', 1),
(352, 1509, 'Sungailiat Kab. Bangka', 1),
(353, 1509, 'Tanjungpandan', 1),
(354, 1509, 'Tempilang  Kelapa', 1),
(355, 1509, 'Toboali Kab. Toboali', 1),
(356, 1510, 'Angsana Pandeglang', 1),
(357, 1510, 'Anyar Baros', 1),
(358, 1510, 'Balaraja Tigaraksa', 1),
(359, 1510, 'Banjar Pandeglang', 1),
(360, 1510, 'Banjarsari Rangkasbitung', 1),
(361, 1510, 'Baros Kab. Serang', 1),
(362, 1510, 'Batuceper  Tangerang', 1),
(363, 1510, 'Bayah Rangkasbitung', 1),
(364, 1510, 'Benda Tangerang', 1),
(365, 1510, 'Binuang Baros', 1),
(366, 1510, 'Bojonegara Baros ', 1),
(367, 1510, 'Bojong Pandeglang', 1),
(368, 1510, 'Bojongmanik Rangkasbitung', 1),
(369, 1510, 'Cadasari Pandeglang', 1),
(370, 1510, 'Carenang Baros', 1),
(371, 1510, 'Carita Pandeglang', 1),
(372, 1510, 'Cibadak Rangkasbitung', 1),
(373, 1510, 'Cibaliung Pandeglang', 1),
(374, 1510, 'Cibeber Cilegon', 1),
(375, 1510, 'Cibeber Rangkasbitung', 1),
(376, 1510, 'Cibitung Pandeglang', 1),
(377, 1510, 'Cibodas  Tangerang', 1),
(378, 1510, 'Cigeulis Pandeglang', 1),
(379, 1510, 'Cijaku Rangkasbitung', 1),
(380, 1510, 'Cikande Baros', 1),
(381, 1510, 'Cikedal Pandeglang', 1),
(382, 1510, 'Cikeusal Baros', 1),
(383, 1510, 'Cikeusik Pandeglang', 1),
(384, 1510, 'Cikulur Rangkasbitung', 1),
(385, 1510, 'Cikupa Tigaraksa', 1),
(386, 1510, 'Ciledug Tangerang', 1),
(387, 1510, 'Cilegon', 1),
(388, 1510, 'Cileles Rangkasbitung', 1),
(389, 1510, 'Cimanggu Pandeglang', 1),
(390, 1510, 'Cimanuk Pandeglang', 1),
(391, 1510, 'Cimarga Rangkasbitung', 1),
(392, 1510, 'Cinangka Baros', 1),
(393, 1510, 'Ciomas Baros', 1),
(394, 1510, 'Cipanas Rangkasbitung', 1),
(395, 1510, 'Cipeucang Pandeglang', 1),
(396, 1510, 'Cipocok Jaya  Serang', 1),
(397, 1510, 'Cipondoh  Tangerang', 1),
(398, 1510, 'Ciputat  Tigaraksa', 1),
(399, 1510, 'Ciruas Baros', 1),
(400, 1510, 'Cisata Pandeglang', 1),
(401, 1510, 'Cisauk Tigaraksa', 1),
(402, 1510, 'Cisoka Tigaraksa', 1),
(403, 1510, 'Citangkil Cilegon', 1),
(404, 1510, 'Ciwandan Cilegon', 1),
(405, 1510, 'Curug Serang', 1),
(406, 1510, 'Curug Tigaraksa', 1),
(407, 1510, 'Curugbitung  Rangkasbitung', 1),
(408, 1510, 'Gerogol Cilegon', 1),
(409, 1510, 'Gunung Kencana Rangkasbitung', 1),
(410, 1510, 'Jambe Tigaraksa', 1),
(411, 1510, 'Jatiuwung  Tangerang', 1),
(412, 1510, 'Jawilan Baros', 1),
(413, 1510, 'Jayanti  Tigaraksa', 1),
(414, 1510, 'Jiput Pandeglang', 1),
(415, 1510, 'Jombang Cilegon', 1),
(416, 1510, 'Kaduhejo Pandeglang', 1),
(417, 1510, 'Karangtanjung Pandeglang', 1),
(418, 1510, 'Karangtengah  Tangerang', 1),
(419, 1510, 'Karawaci  Tangerang', 1),
(420, 1510, 'Kasemen Serang', 1),
(421, 1510, 'Kemiri  Tigaraksa', 1),
(422, 1510, 'Kibin Baros', 1),
(423, 1510, 'Kopo Baros', 1),
(424, 1510, 'Kosambi / Selembaran Jati', 1),
(425, 1510, 'Kragilan Baros', 1),
(426, 1510, 'Kramatwatu Baros', 1),
(427, 1510, 'Kresek Tigaraksa', 1),
(428, 1510, 'Kronjo Tigaraksa', 1),
(429, 1510, 'Labuan Pandeglang', 1),
(430, 1510, 'Larangan  Tangerang', 1),
(431, 1510, 'Legok Tigaraksa', 1),
(432, 1510, 'Leuwidamar Rangkasbitung', 1),
(433, 1510, 'Maja Rangkasbitung', 1),
(434, 1510, 'Malingping Rangkasbitung', 1),
(435, 1510, 'Mancak Baros', 1),
(436, 1510, 'Mandalawangi Pandeglang', 1),
(437, 1510, 'Mauk Tigaraksa', 1),
(438, 1510, 'Menes Pandeglang', 1),
(439, 1510, 'Merak Cilegon', 1),
(440, 1510, 'Muncang Rangkasbitung', 1),
(441, 1510, 'Munjul Pandeglang', 1),
(442, 1510, 'Neglasari  Tangerang', 1),
(443, 1510, 'Pabuaran Baros', 1),
(444, 1510, 'Padarincang Baros', 1),
(445, 1510, 'Pagedangan Tigaraksa', 1),
(446, 1510, 'Pagelaran Pandeglang', 1),
(447, 1510, 'Pakuhaji Tigaraksa', 1),
(448, 1510, 'Pamarayan Baros', 1),
(449, 1510, 'Pamulang Tigaraksa', 1),
(450, 1510, 'Pandeglang Kab. Pandeglang', 1),
(451, 1510, 'Panggarangan Rangkasbitung', 1),
(452, 1510, 'Panimbang Pandeglang', 1),
(453, 1510, 'Panongan Tigaraksa', 1),
(454, 1510, 'Pasar Kemis Tigaraksa', 1),
(455, 1510, 'Patia Pandeglang', 1),
(456, 1510, 'Periuk  Tangerang', 1),
(457, 1510, 'Petir Baros', 1),
(458, 1510, 'Picung Pandeglang', 1),
(459, 1510, 'Pinang  Tangerang', 1),
(460, 1510, 'Pondokaren / Jurang Mangu', 1),
(461, 1510, 'Pontang Baros', 1),
(462, 1510, 'Puloampel Baros', 1),
(463, 1510, 'Purwakarta Cilegon', 1),
(464, 1510, 'Rajeg Tigaraksa', 1),
(465, 1510, 'Rangkasbitung', 1),
(466, 1510, 'Sajira Rangkasbitung', 1),
(467, 1510, 'Saketi Pandeglang', 1),
(468, 1510, 'Sepatan / Jatmulya Tigaraksa', 1),
(469, 1510, 'Serang', 1),
(470, 1510, 'Serpong', 1),
(471, 1510, 'Sobang  Rangkasbitung', 1),
(472, 1510, 'Sukadiri Tigaraksa', 1),
(473, 1510, 'Sukaresmi Pandeglang', 1),
(474, 1510, 'Sumur Pandeglang', 1),
(475, 1510, 'Taktakan Serang', 1),
(476, 1510, 'Tangerang', 1),
(477, 1510, 'Tanjungteja Baros', 1),
(478, 1510, 'Tarana Baros', 1),
(479, 1510, 'Teluknaga Tigaraksa', 1),
(480, 1510, 'Tigaraksa Kab. Tangerang', 1),
(481, 1510, 'Tirtayasa Baros', 1),
(482, 1510, 'Walantaka Serang', 1),
(483, 1510, 'Wanasalam Rangkasbitung', 1),
(484, 1510, 'Waringinkurung Baros', 1),
(485, 1510, 'Warung Gunung Rangkasbitung', 1),
(486, 1511, 'Air Besi Arga Makmur', 1),
(487, 1511, 'Air Napal Argamakmur', 1),
(488, 1511, 'Air Periukan Tais', 1),
(489, 1511, 'Argamakmur Kab. Bengkulu Utara', 1),
(490, 1511, 'Batik Nau Argamakmur', 1),
(491, 1511, 'Bengkulu', 1),
(492, 1511, 'Bermani Ilir Kepahiang', 1),
(493, 1511, 'Bermani Ulu Curup', 1),
(494, 1511, 'Curup Kab. Rejang Lebong', 1),
(495, 1511, 'Enggano Argamakmur', 1),
(496, 1511, 'Gading Cempaka Bengkulu', 1),
(497, 1511, 'Giri Mulyo Argamakmur', 1),
(498, 1511, 'Ilir Talo Tais', 1),
(499, 1511, 'Kampung Melayu Bengkulu', 1),
(500, 1511, 'Karang Tinggi Argamakmur', 1),
(501, 1511, 'Kaur Selatan Kaur', 1),
(502, 1511, 'Kaur Tengah Kaur', 1),
(503, 1511, 'Kaur Utara Kaur', 1),
(504, 1511, 'Kaur Kab. Kaur', 1),
(505, 1511, 'Kedurang Manna', 1),
(506, 1511, 'Kepahiang Kab. Kepahiang', 1),
(507, 1511, 'Kerkap Argamakmur', 1),
(508, 1511, 'Ketahun Argamakmur', 1),
(509, 1511, 'Kinal Kaur', 1),
(510, 1511, 'Kota Manna Kab. Bengkulu Selatan', 1),
(511, 1511, 'Kota Padang Curup', 1),
(512, 1511, 'Lais Argamakmur', 1),
(513, 1511, 'Lebong', 1),
(514, 1511, 'Lebong Atas Lebong', 1),
(515, 1511, 'Lebong Selatan Lebong', 1),
(516, 1511, 'Lebong Utara Lebong', 1),
(517, 1511, 'Lebong. Teng Lebong', 1),
(518, 1511, 'Lubuk Sandi Tais', 1),
(519, 1511, 'Maje Kaur', 1),
(520, 1511, 'Manna Kota Manna', 1),
(521, 1511, 'Muara Bangkahulu Bengkulu', 1),
(522, 1511, 'Muara Nasal Kaur', 1),
(523, 1511, 'Napal Putih Argamakmur', 1),
(524, 1511, 'Padang Jaya Argamakmur', 1),
(525, 1511, 'Padang Ulak Tanding Curup', 1),
(526, 1511, 'Pagar Jati Argamakmur', 1),
(527, 1511, 'Pematang Tiga Argamakmur', 1),
(528, 1511, 'Pino Manna', 1),
(529, 1511, 'Pinoraya Manna', 1),
(530, 1511, 'Pondok Kelapa Argamakmur', 1),
(531, 1511, 'Putri Hijau Argamakmur', 1),
(532, 1511, 'Ratu Agung Bengkulu', 1),
(533, 1511, 'Ratu Samban Bengkulu', 1),
(534, 1511, 'Rimbo Pengadang Lebong', 1),
(535, 1511, 'Seginim Manna', 1),
(536, 1511, 'Selebar Bengkulu', 1),
(537, 1511, 'Seluma Barat Tais', 1),
(538, 1511, 'Seluma Selatan Tais', 1),
(539, 1511, 'Seluma Timur Tais', 1),
(540, 1511, 'Seluma Utara Tais', 1),
(541, 1511, 'Seluma Tais', 1),
(542, 1511, 'Selupu Rejang Curup', 1),
(543, 1511, 'Semidang Alas Maras Tais', 1),
(544, 1511, 'Semidang Alas Tais', 1),
(545, 1511, 'Sindang Kelingi Curup', 1),
(546, 1511, 'Sukaraja Tais', 1),
(547, 1511, 'Sungai Serut Bengkulu', 1),
(548, 1511, 'Taba Penanjung Argamakmur', 1),
(549, 1511, 'Tais Kab. Seluma', 1),
(550, 1511, 'Talang Empat Argamakmur', 1),
(551, 1511, 'Talo', 1),
(552, 1511, 'Talokecil Tais', 1),
(553, 1511, 'Tanjung Kemuning Kaur', 1),
(554, 1511, 'Tebat Karai Kepahiang', 1),
(555, 1511, 'Teluk Segara Bengkulu', 1),
(556, 1511, 'Ujan Mas Kepahiang', 1),
(557, 1511, 'Ulu Talo', 1),
(558, 1512, 'Bambanglipuro Bantul', 1),
(559, 1512, 'Banguntapan Bantul', 1),
(560, 1512, 'Bantul Kab. Bantul', 1),
(561, 1512, 'Berbah Sleman', 1),
(562, 1512, 'Cangkringan Sleman', 1),
(563, 1512, 'Danurejan Yogyakarta', 1),
(564, 1512, 'Depok Sleman', 1),
(565, 1512, 'Dlingo Bantul', 1),
(566, 1512, 'Galur Wates', 1),
(567, 1512, 'Gamping Sleman', 1),
(568, 1512, 'Gedangsari Wonosari', 1),
(569, 1512, 'Gedongtengen Yogyakarta', 1),
(570, 1512, 'Girimulyo Wates', 1),
(571, 1512, 'Girisubo Wonosari', 1),
(572, 1512, 'Godean Sleman', 1),
(573, 1512, 'Gondokusuman Yogyakarta', 1),
(574, 1512, 'Gondomanan Yogyakarta', 1),
(575, 1512, 'Imogiri Bantul', 1),
(576, 1512, 'Jetis Bantul', 1),
(577, 1512, 'Jetis Yogyakarta', 1),
(578, 1512, 'Kalasan Sleman', 1),
(579, 1512, 'Kalibawang Wates', 1),
(580, 1512, 'Karangmojo Wonosari', 1),
(581, 1512, 'Kasihan Bantul', 1),
(582, 1512, 'Kokap Wates', 1),
(583, 1512, 'Kotagede Yogyakarta', 1),
(584, 1512, 'Kraton Yogyakarta', 1),
(585, 1512, 'Kretek Bantul', 1),
(586, 1512, 'Lendah Wates', 1),
(587, 1512, 'Mantrijeron Yogyakarta', 1),
(588, 1512, 'Mergangsan Yogyakarta', 1),
(589, 1512, 'Minggir Sleman', 1),
(590, 1512, 'Mlati Sleman', 1),
(591, 1512, 'Moyudan Sleman', 1),
(592, 1512, 'Nanggulan Wates', 1),
(593, 1512, 'Ngaglik Sleman', 1),
(594, 1512, 'Ngampilan Yogyakarta', 1),
(595, 1512, 'Ngawen Wonosari', 1),
(596, 1512, 'Ngemplak Sleman', 1),
(597, 1512, 'Nglipar Wonosari', 1),
(598, 1512, 'Pajangan Bantul', 1),
(599, 1512, 'Pakem Sleman', 1),
(600, 1512, 'Pakualaman Yogyakarta', 1),
(601, 1512, 'Paliyan Wonosari', 1),
(602, 1512, 'Pandak Bantul', 1),
(603, 1512, 'Panggang Wonosari', 1),
(604, 1512, 'Panjatan Wates', 1),
(605, 1512, 'Patuk Wonosari', 1),
(606, 1512, 'Pengasih Wates', 1),
(607, 1512, 'Piyungan Bantul', 1),
(608, 1512, 'Playen Wonosari', 1),
(609, 1512, 'Pleret Bantul', 1),
(610, 1512, 'Ponjong Wonosari', 1),
(611, 1512, 'Prambanan Sleman', 1),
(612, 1512, 'Pundong Bantul', 1),
(613, 1512, 'Purwosari Wonosari', 1),
(614, 1512, 'Rongkop Wonosari', 1),
(615, 1512, 'Samigaluh Wates', 1),
(616, 1512, 'Sanden Bantul', 1),
(617, 1512, 'Saptosari Wonosari', 1),
(618, 1512, 'Sedayu Bantul', 1),
(619, 1512, 'Semanu Wonosari', 1),
(620, 1512, 'Semin Wonosari', 1),
(621, 1512, 'Sentolo Wates', 1),
(622, 1512, 'Sewon Bantul', 1),
(623, 1512, 'Seyegan Sleman', 1),
(624, 1512, 'Sleman Kab. Sleman', 1),
(625, 1512, 'Srandakan Bantul', 1),
(626, 1512, 'Tanjungsari Wonosari', 1),
(627, 1512, 'Tegalrejo Yogyakarta', 1),
(628, 1512, 'Temon Wates', 1),
(629, 1512, 'Tempel Sleman', 1),
(630, 1512, 'Tepus Wonosari', 1),
(631, 1512, 'Turi Sleman', 1),
(632, 1512, 'Umbulharjo Yogyakarta', 1),
(633, 1512, 'Wates Kab. Kulon Progo', 1),
(634, 1512, 'Wirobrajan Yogyakarta', 1),
(635, 1512, 'Wonosari Kab. Gn. Kidul', 1),
(636, 1512, 'Yogyakarta', 1),
(637, 1513, 'Cakung  Jakarta Timur', 1),
(638, 1513, 'Cempaka Putih  Jakarta Pusat', 1),
(639, 1513, 'Cengkareng  Jakarta Barat', 1),
(640, 1513, 'Cilandak Jakarta Selatan', 1),
(641, 1513, 'Cilincing  Jakarta Utara', 1),
(642, 1513, 'Cipayung  Jakarta Timur', 1),
(643, 1513, 'Ciracas Jakarta Timur', 1),
(644, 1513, 'Duren Sawit  Jakarta Timur', 1),
(645, 1513, 'Gambir  Jakarta Pusat', 1),
(646, 1513, 'Grogol  Jakarta Barat', 1),
(647, 1513, 'Jagakarsa  Jakarta Selatan', 1),
(648, 1513, 'Jakarta', 1),
(649, 1513, 'Jakarta Barat', 1),
(650, 1513, 'Jakarta Pusat', 1),
(651, 1513, 'Jakarta Selatan', 1),
(652, 1513, 'Jakarta Timur', 1),
(653, 1513, 'Jakarta Utara', 1),
(654, 1513, 'Jatinegara  Jakarta Timur', 1),
(655, 1513, 'Johar Baru  Jakarta Pusat', 1),
(656, 1513, 'Kalideres  Jakarta Barat', 1),
(657, 1513, 'Kebayoran Baru Jkt Selatan', 1),
(658, 1513, 'Kebayoran Lama Jkt Selatan', 1),
(659, 1513, 'Kebon Jeruk  Jakarta Barat', 1),
(660, 1513, 'Kelapa Gading  Jakarta Utara', 1),
(661, 1513, 'Kemayoran  Jakarta Pusat', 1),
(662, 1513, 'Kembangan  Jakarta Barat', 1),
(663, 1513, 'Kep. Seribu Selatan', 1),
(664, 1513, 'Kep. Seribu Utara', 1),
(665, 1513, 'Koja  Jakarta Utara', 1),
(666, 1513, 'Kramat Jati  Jakarta Timur', 1),
(667, 1513, 'Makassar  Jakarta Timur', 1),
(668, 1513, 'Mampang Prapatan Jkt Selatan', 1),
(669, 1513, 'Matraman  Jakarta Timur', 1),
(670, 1513, 'Menteng  Jakarta Pusat', 1),
(671, 1513, 'Pademangan  Jakarta Utara', 1),
(672, 1513, 'Palmerah  Jakarta Barat', 1),
(673, 1513, 'Pancoran  Jakarta Selatan', 1),
(674, 1513, 'Pasar Minggu  Jakarta Selatan', 1),
(675, 1513, 'Pasar Rebo  Jakarta Timur', 1),
(676, 1513, 'Penjaringan  Jakarta Utara', 1),
(677, 1513, 'Pesanggrahan  Jakarta Selatan', 1),
(678, 1513, 'Pulau Pramuka', 1),
(679, 1513, 'Pulo Gadung Jakarta Timur', 1),
(680, 1513, 'Sawah Besar  Jakarta Pusat', 1),
(681, 1513, 'Senen  Jakarta Pusat', 1),
(682, 1513, 'Setiabudi  Jakarta Selatan', 1),
(683, 1513, 'Taman Sari  Jakarta Barat', 1),
(684, 1513, 'Tambora Jakarta Barat', 1),
(685, 1513, 'Tanah Abang Jakarta Pusat', 1),
(686, 1513, 'Tanjung Priok Jakarta Utara', 1),
(687, 1513, 'Tebet Jakarta Selatan', 1),
(688, 1514, 'Anggrek Kwandang', 1),
(689, 1514, 'Anggrek Limboto', 1),
(690, 1514, 'Atinggola Limboto', 1),
(691, 1514, 'Atinggota Kwandang', 1),
(692, 1514, 'Batudaa Limboto', 1),
(693, 1514, 'Boliyohuto Limboto', 1),
(694, 1514, 'Bonepante Suwawa', 1),
(695, 1514, 'Bongomeme Limboto', 1),
(696, 1514, 'Botumoito Tilamuta', 1),
(697, 1514, 'Dulupi Tilamuta', 1),
(698, 1514, 'Dungingi Gorontalo', 1),
(699, 1514, 'Gorontalo', 1),
(700, 1514, 'Kabila Suwawa', 1),
(701, 1514, 'Kota Barat Gorontalo', 1),
(702, 1514, 'Kota Selatan Gorontalo', 1),
(703, 1514, 'Kota Timur Gorontalo', 1),
(704, 1514, 'Kota Utara Gorontalo', 1),
(705, 1514, 'Kwandang Kab. Gorontalo Utara', 1),
(706, 1514, 'Lemito Marisa', 1),
(707, 1514, 'Limboto Barat Limboto', 1),
(708, 1514, 'Limboto Kab. Gorontalo', 1),
(709, 1514, 'Mananggu Tilamuta', 1),
(710, 1514, 'Marisa Kab. Pahuwato', 1),
(711, 1514, 'Mootilango Limboto', 1),
(712, 1514, 'Paguat Marisa', 1),
(713, 1514, 'Paguyaman Tilamuta', 1),
(714, 1514, 'Patilanggio Marisa', 1),
(715, 1514, 'Popayato Marisa', 1),
(716, 1514, 'Pulubala Limboto', 1),
(717, 1514, 'Randangan Marisa', 1),
(718, 1514, 'Sumalata Kwandang', 1),
(719, 1514, 'Sumalata Limboto', 1),
(720, 1514, 'Suwawa Kab. Bone Bolango', 1),
(721, 1514, 'Taluditi Marisa', 1),
(722, 1514, 'Tapa Suwawa', 1),
(723, 1514, 'Telaga Limboto', 1),
(724, 1514, 'Tibawa Limboto', 1),
(725, 1514, 'Tilamuta Kab. Boalemo', 1),
(726, 1514, 'Tolangohula Limboto', 1),
(727, 1514, 'Tolinggula Limboto', 1),
(728, 1514, 'Tolingula Kwandang', 1),
(729, 1514, 'Wonosari Tilamuta', 1),
(730, 1515, 'Air Hangat Timur Sungaipenuh', 1),
(731, 1515, 'Air Hangat Sungaipenuh', 1),
(732, 1515, 'Bajubang Muarabulian', 1),
(733, 1515, 'Bangko Kab. Merangin', 1),
(734, 1515, 'Batang Asai Sarolangun', 1),
(735, 1515, 'Batang Merangin Sungaipenuh', 1),
(736, 1515, 'Bathin II Babeko Muarabungo', 1),
(737, 1515, 'Batin XXIV Muarabulian', 1),
(738, 1515, 'Betara Kualatungkal', 1),
(739, 1515, 'Danau Kerinci Sungaipenuh', 1),
(740, 1515, 'Danau Teluk Jambi', 1),
(741, 1515, 'Dendang Muarasabak', 1),
(742, 1515, 'Gunung Kerinci Sungaipenuh', 1),
(743, 1515, 'Gunung Raya Sungaipenuh', 1),
(744, 1515, 'Hamparan Rawang Sungaipenuh', 1),
(745, 1515, 'Jambi', 1),
(746, 1515, 'Jambi Luar Kota Sengeti', 1),
(747, 1515, 'Jambi Selatan Jambi', 1),
(748, 1515, 'Jambi Timur Jambi', 1),
(749, 1515, 'Jangkat Bangko', 1),
(750, 1515, 'Jelutung Jambi', 1),
(751, 1515, 'Jujuhan Muarabungo', 1),
(752, 1515, 'Kayuaro Sungaipenuh', 1),
(753, 1515, 'Keliling Danau Sungaipenuh', 1),
(754, 1515, 'Kota Baru Jambi', 1),
(755, 1515, 'Kualatungkal', 1),
(756, 1515, 'Kumpeh Ulu Sengeti', 1),
(757, 1515, 'Kumpeh Sengeti', 1),
(758, 1515, 'Limbur Lb Mengkuang M. Bungo', 1),
(759, 1515, 'Mandiangin Sarolangun', 1),
(760, 1515, 'Maro Sebo Ilir Muarabulian', 1),
(761, 1515, 'Marosebo Ulu Muarabulian', 1),
(762, 1515, 'Marosebo Sengeti', 1),
(763, 1515, 'Mendahara Muarasabak', 1),
(764, 1515, 'Merlung Kualatungkal', 1),
(765, 1515, 'Mersam Muarabulian', 1),
(766, 1515, 'Mestong Sengeti', 1),
(767, 1515, 'Muara Limun Sarolangun', 1),
(768, 1515, 'Muara Sabak Kab. Tnj Jabung Tmr', 1),
(769, 1515, 'Muara Siau Bangko', 1),
(770, 1515, 'Muara Tebo', 1),
(771, 1515, 'Muarabulian Kab. Batang Hari', 1),
(772, 1515, 'Muarabungo Kab. Bungo', 1),
(773, 1515, 'Muaratembesi Muarabulian', 1),
(774, 1515, 'Muko Muko Batin VII Muarabungo', 1),
(775, 1515, 'Nipahpanjang Muarasabak', 1),
(776, 1515, 'Pamenang Bangko', 1),
(777, 1515, 'Pasar Jambi Jambi', 1),
(778, 1515, 'Pauh Sarolangun', 1),
(779, 1515, 'Pelawan Singkut Sarolangun', 1),
(780, 1515, 'Pelayangan Jambi', 1),
(781, 1515, 'Pelepat Ilir Muarabungo', 1),
(782, 1515, 'Pelepat Muarabungo', 1),
(783, 1515, 'Pemayung Muarabulian', 1),
(784, 1515, 'Pengabuan Kualatungkal', 1),
(785, 1515, 'Rantau Pandan Muarabungo', 1),
(786, 1515, 'Rantaurasau Muarasabak', 1),
(787, 1515, 'Rimbo Bujang Muara Tebo', 1),
(788, 1515, 'Rimbo Ilir Muara Tebo', 1),
(789, 1515, 'Rimbo Ulu Muara Tebo', 1),
(790, 1515, 'Sadu Muarasabak', 1),
(791, 1515, 'Sarolangun Kab. Sarolangun', 1),
(792, 1515, 'Sekernan Sengeti', 1),
(793, 1515, 'Sengeti', 1),
(794, 1515, 'Sitinjau Laut Sungaipenuh', 1),
(795, 1515, 'Sumai Muara Tebo', 1),
(796, 1515, 'Sungai Bahar Sengeti', 1),
(797, 1515, 'Sungai Manau Bangko', 1),
(798, 1515, 'Sungaipenuh Kab. Kerinci', 1),
(799, 1515, 'Tabir Ulu Bangko', 1),
(800, 1515, 'Tabir Bangko', 1),
(801, 1515, 'Tanah Sepenggal Muarabungo', 1),
(802, 1515, 'Tanah Tumbuh Muarabungo', 1),
(803, 1515, 'Tebo Ilir Muara Tebo', 1),
(804, 1515, 'Tebo Tengah Muara Tebo', 1),
(805, 1515, 'Tebo Ulu Muara Tebo', 1),
(806, 1515, 'Telanaipura Jambi', 1),
(807, 1515, 'Tengah Ilir Muara Tebo', 1),
(808, 1515, 'Tungkal Ilir Kualatungkal', 1),
(809, 1515, 'Tungkal Ulu Kualatungkal', 1),
(810, 1515, 'VII Koto Muara Tebo', 1),
(811, 1516, 'Agrabinta Cianjur', 1),
(812, 1516, 'Andir Bandung', 1),
(813, 1516, 'Anjatan Indramayu', 1),
(814, 1516, 'Arahan  Indramayu ', 1),
(815, 1516, 'Arcamanik Bandung', 1),
(816, 1516, 'Argapura Majalengka', 1),
(817, 1516, 'Arjasari Soreang', 1),
(818, 1516, 'Arjawinangun Sumber', 1),
(819, 1516, 'Astanaanyar Bandung', 1),
(820, 1516, 'Astanajapura Sumber', 1),
(821, 1516, 'Babakan Madang Cibinong', 1),
(822, 1516, 'Babakan Sumber', 1),
(823, 1516, 'Babakancikao Purwakarta', 1),
(824, 1516, 'Babakanciparay Bandung', 1),
(825, 1516, 'Babelan Cikarang', 1),
(826, 1516, 'Baleendah Soreang', 1),
(827, 1516, 'Balongan Indramayu', 1),
(828, 1516, 'Baluburlimbangan Garut', 1),
(829, 1516, 'Bandung', 1),
(830, 1516, 'Bandung Kidul Bandung', 1),
(831, 1516, 'Bandung Kulon Bandung', 1),
(832, 1516, 'Bandung Wetan Bandung', 1),
(833, 1516, 'Bangodua Indramayu', 1),
(834, 1516, 'Banjar', 1),
(835, 1516, 'Banjaran  Majalengka', 1),
(836, 1516, 'Banjaran Soreang', 1),
(837, 1516, 'Banjarsari Ciamis', 1),
(838, 1516, 'Banjarwangi Garut', 1),
(839, 1516, 'Bantargadung Sukabumi', 1),
(840, 1516, 'Bantargebang Bekasi', 1),
(841, 1516, 'Bantarkalong Singaparna', 1),
(842, 1516, 'Bantarujeg Majalengka', 1),
(843, 1516, 'Banyuresmi Garut', 1),
(844, 1516, 'Banyusari Karawang', 1),
(845, 1516, 'Baregbeg Ciamis', 1),
(846, 1516, 'Baros Sukabumi', 1),
(847, 1516, 'Batujajar Ngamprah', 1),
(848, 1516, 'Batujaya Karawang', 1),
(849, 1516, 'Batununggal Bandung', 1),
(850, 1516, 'Bayongbong Garut', 1),
(851, 1516, 'Beber Sumber', 1),
(852, 1516, 'Beji Depok', 1),
(853, 1516, 'Bekasi', 1),
(854, 1516, 'Bekasi Barat Bekasi', 1),
(855, 1516, 'Bekasi Selatan Bekasi', 1),
(856, 1516, 'Bekasi Timur Bekasi', 1),
(857, 1516, 'Bekasi Utara Bekasi', 1),
(858, 1516, 'Binong Subang', 1),
(859, 1516, 'Blanakan Subang', 1),
(860, 1516, 'Bogor', 1),
(861, 1516, 'Bogor Barat Bogor', 1),
(862, 1516, 'Bogor Selatan Bogor', 1),
(863, 1516, 'Bogor Tengah Bogor', 1),
(864, 1516, 'Bogor Timur Bogor', 1),
(865, 1516, 'Bogor Utara Bogor', 1),
(866, 1516, 'Bojong Soang Soreang', 1),
(867, 1516, 'Bojong Purwakarta', 1),
(868, 1516, 'Bojongasih Singaparna. ', 1),
(869, 1516, 'Bojonggambir Singaparna', 1),
(870, 1516, 'Bojonggede Cibinong', 1),
(871, 1516, 'Bojonggenteng Sukabumi', 1),
(872, 1516, 'Bojongloa Kaler Bandung', 1),
(873, 1516, 'Bojongloa Kidul Bandug', 1),
(874, 1516, 'Bojongmanggu Cikarang', 1),
(875, 1516, 'Bojongpicung Cianjur', 1),
(876, 1516, 'Bongas Indramayu', 1),
(877, 1516, 'Buahdua Sumedang', 1),
(878, 1516, 'Bungbulang Garut', 1),
(879, 1516, 'Bungursari Purwakarta', 1),
(880, 1516, 'Cabangbungin Cikarang', 1),
(881, 1516, 'Campaka Mulya Cianjur', 1),
(882, 1516, 'Campaka Cianjur', 1),
(883, 1516, 'Campaka Purwakarta', 1),
(884, 1516, 'Cangkuang Soreang', 1),
(885, 1516, 'Cantigi  Indramayu ', 1),
(886, 1516, 'Caringin Cibinong', 1),
(887, 1516, 'Caringin Garut', 1),
(888, 1516, 'Caringin Sukabumi', 1),
(889, 1516, 'Cariu Cibinong', 1),
(890, 1516, 'Ciamis Kab. Ciamis', 1),
(891, 1516, 'Ciampea Cibinong', 1),
(892, 1516, 'Ciampel Karawang', 1),
(893, 1516, 'Cianjur Kab. Cianjur', 1),
(894, 1516, 'Ciasem Subang', 1),
(895, 1516, 'Ciawi Gebang Kuningan', 1),
(896, 1516, 'Ciawi Cibinong', 1),
(897, 1516, 'Ciawi Singaparna', 1),
(898, 1516, 'Cibadak Sukabumi', 1),
(899, 1516, 'Cibalong Garut', 1),
(900, 1516, 'Cibalong Singaparna', 1),
(901, 1516, 'Cibarusah Cikarang', 1),
(902, 1516, 'Cibatu Garut', 1),
(903, 1516, 'Cibatu Purwakarta', 1),
(904, 1516, 'Cibeber Cianjur', 1),
(905, 1516, 'Cibeunying Kaler Bandung', 1),
(906, 1516, 'Cibeunying Kidul Bandung', 1),
(907, 1516, 'Cibeureum Kuningan', 1),
(908, 1516, 'Cibeureum Sukabumi', 1),
(909, 1516, 'Cibeureum Tasikmalaya', 1),
(910, 1516, 'Cibingbin Kuningan', 1),
(911, 1516, 'Cibinong Cianjur', 1),
(912, 1516, 'Cibinong Kab. Bogor', 1),
(913, 1516, 'Cibiru Bandung', 1),
(914, 1516, 'Cibitung Cikarang', 1),
(915, 1516, 'Cibitung Sukabumi', 1),
(916, 1516, 'Cibiuk Garut', 1),
(917, 1516, 'Cibogo Subang', 1),
(918, 1516, 'Cibuaya Karawang', 1),
(919, 1516, 'Cibubur Depok', 1),
(920, 1516, 'Cibugel Sumedang', 1),
(921, 1516, 'Cibung Bulang Cibinong', 1),
(922, 1516, 'Cicadas Bandung', 1),
(923, 1516, 'Cicalengka Soreang', 1),
(924, 1516, 'Cicantayan Sukabumi', 1),
(925, 1516, 'Cicendo Bandung', 1),
(926, 1516, 'Cicurug Sukabumi', 1),
(927, 1516, 'Cidadap Bandung', 1),
(928, 1516, 'Cidadap Sukabumi', 1),
(929, 1516, 'Cidahu Kuningan', 1),
(930, 1516, 'Cidahu Sukabumi', 1),
(931, 1516, 'Cidaun Cianjur', 1),
(932, 1516, 'Cidolog Ciamis', 1),
(933, 1516, 'Cidolog Sukabumi', 1),
(934, 1516, 'Ciemas Sukabumi', 1),
(935, 1516, 'Cigalontang Singaparna', 1),
(936, 1516, 'Cigandamekar  Kuningan', 1),
(937, 1516, 'Cigasong  Majalengka', 1),
(938, 1516, 'Cigedug Garut', 1),
(939, 1516, 'Cigombong Cibinong', 1),
(940, 1516, 'Cigudeg Cibinong', 1),
(941, 1516, 'Cigugur Ciamis', 1),
(942, 1516, 'Cigugur Kuningan', 1),
(943, 1516, 'Cihampelas  Ngamprah', 1),
(944, 1516, 'Cihaurbeuti Ciamis', 1),
(945, 1516, 'Cihideung Tasikmalaya', 1),
(946, 1516, 'Cihurip Garut', 1),
(947, 1516, 'Cijambe Subang', 1),
(948, 1516, 'Cijati Cianjur', 1),
(949, 1516, 'Cijeruk Cibinong', 1),
(950, 1516, 'Cijeungjing Ciamis', 1),
(951, 1516, 'Cijulang Ciamis', 1),
(952, 1516, 'Cikadu Cianjur', 1),
(953, 1516, 'Cikajang Garut', 1),
(954, 1516, 'Cikakak Sukabumi', 1),
(955, 1516, 'Cikalong Kulon Cianjur', 1),
(956, 1516, 'Cikalong Singaparna', 1),
(957, 1516, 'Cikalongwetan Ngamprah', 1),
(958, 1516, 'Cikampek Karawang', 1),
(959, 1516, 'Cikancung Soreang', 1),
(960, 1516, 'Cikarang Barat Cikarang', 1),
(961, 1516, 'Cikarang Pusat  Cikarang', 1),
(962, 1516, 'Cikarang Selatan  Cikarang', 1),
(963, 1516, 'Cikarang Timur', 1),
(964, 1516, 'Cikarang Utara', 1),
(965, 1516, 'Cikarang Kab. Bekasi', 1),
(966, 1516, 'Cikatomas Singaparna', 1),
(967, 1516, 'Cikaum Subang', 1),
(968, 1516, 'Cikedung Indramayu', 1),
(969, 1516, 'Cikelet Garut', 1),
(970, 1516, 'Cikembar Sukabumi', 1),
(971, 1516, 'Cikidang Sukabumi', 1),
(972, 1516, 'Cikijing Majalengka', 1),
(973, 1516, 'Cikole Sukabumi', 1),
(974, 1516, 'Cikoneng Ciamis', 1),
(975, 1516, 'Cilaku Cianjur', 1),
(976, 1516, 'Cilamaya Wetan Karawang', 1),
(977, 1516, 'Cilamaya Karawang', 1),
(978, 1516, 'Cilawu Garut', 1),
(979, 1516, 'Cilebak Kuningan', 1),
(980, 1516, 'Cilebar Karawang', 1),
(981, 1516, 'Ciledug Sumber', 1),
(982, 1516, 'Cilengkrang Soreang', 1),
(983, 1516, 'Cileungsi Cibinong', 1),
(984, 1516, 'Cileunyi Soreang', 1),
(985, 1516, 'Cililin Ngamprah', 1),
(986, 1516, 'Cilimus Kuningan', 1),
(987, 1516, 'Cimahi', 1),
(988, 1516, 'Cimahi Selatan Cimahi', 1),
(989, 1516, 'Cimahi Tengah Cimahi', 1),
(990, 1516, 'Cimahi Utara Cimahi', 1),
(991, 1516, 'Cimahi Kuningan ', 1),
(992, 1516, 'Cimalaka Sumedang', 1),
(993, 1516, 'Cimanggis Depok', 1),
(994, 1516, 'Cimanggung Sumedang', 1),
(995, 1516, 'Cimaragas Ciamis', 1),
(996, 1516, 'Cimareme Ngamprah', 1),
(997, 1516, 'Cimaung Soreang', 1),
(998, 1516, 'Cimenyan Soreang', 1),
(999, 1516, 'Cimerak Ciamis', 1),
(1000, 1516, 'Cineam Singaparna', 1),
(1001, 1516, 'Cingambul  Majalengka', 1),
(1002, 1516, 'Ciniru Kuningan ', 1),
(1003, 1516, 'Ciomas Cibinong', 1),
(1004, 1516, 'Cipaku Ciamis', 1),
(1005, 1516, 'Cipanas Cianjur', 1),
(1006, 1516, 'Ciparay Soreang', 1),
(1007, 1516, 'Cipatat Ngamprah', 1),
(1008, 1516, 'Cipatujah Singaparna', 1),
(1009, 1516, 'Cipedes Tasikmalaya', 1),
(1010, 1516, 'Cipeundeuy Ngamprah', 1),
(1011, 1516, 'Cipeundeuy Subang', 1),
(1012, 1516, 'Cipicung Kuningan', 1),
(1013, 1516, 'Cipongkor Ngamprah', 1),
(1014, 1516, 'Cipunagara Subang', 1),
(1015, 1516, 'Ciracap Sukabumi', 1),
(1016, 1516, 'Ciranjang Cianjur', 1),
(1017, 1516, 'Cirebon', 1),
(1018, 1516, 'Cirebon Barat Cirebon', 1),
(1019, 1516, 'Cirebon Selatan Sumber', 1),
(1020, 1516, 'Cirebon Utara Sumber', 1),
(1021, 1516, 'Cireunghas Sukabumi', 1),
(1022, 1516, 'Cisaat Sukabumi', 1),
(1023, 1516, 'Cisaga Ciamis. ', 1),
(1024, 1516, 'Cisalak Subang', 1),
(1025, 1516, 'Cisarua Cibinong', 1),
(1026, 1516, 'Cisarua Ngamprah', 1),
(1027, 1516, 'Cisarua Sumedang', 1),
(1028, 1516, 'Cisayong Singaparna', 1),
(1029, 1516, 'Ciseeng Cibinong', 1),
(1030, 1516, 'Cisewu Garut', 1),
(1031, 1516, 'Cisitu Sumedang', 1),
(1032, 1516, 'Cisolok Sukabumi', 1),
(1033, 1516, 'Cisompet Garut', 1),
(1034, 1516, 'Cisurupan Garut', 1),
(1035, 1516, 'Citamiang Sukabumi', 1),
(1036, 1516, 'Citeureup Cibinong', 1),
(1037, 1516, 'Ciwaringin Sumber', 1),
(1038, 1516, 'Ciwaru  Kuningan ', 1),
(1039, 1516, 'Ciwidey Soreang', 1),
(1040, 1516, 'Coblong Bandug', 1),
(1041, 1516, 'Compreng Subang', 1),
(1042, 1516, 'Conggeang Sumedang', 1),
(1043, 1516, 'Cugenang Cianjur', 1),
(1044, 1516, 'Culamega Singaparna', 1),
(1045, 1516, 'Curugkembar Sukabumi', 1),
(1046, 1516, 'Darangdan Purwakarta', 1),
(1047, 1516, 'Darma Kuningan', 1),
(1048, 1516, 'Darmaraja Sumedang', 1),
(1049, 1516, 'Dawuan Majalengka', 1),
(1050, 1516, 'Dayeuhkolot Soreang', 1),
(1051, 1516, 'Depok', 1),
(1052, 1516, 'Depok Sumber', 1),
(1053, 1516, 'Dramaga Cibinong', 1),
(1054, 1516, 'Dukupuntang Sumber', 1),
(1055, 1516, 'Gabus Wetan Indramayu', 1),
(1056, 1516, 'Ganeas Sumedang', 1),
(1057, 1516, 'Gantar  Indramayu ', 1),
(1058, 1516, 'Garawangi Kuningan', 1),
(1059, 1516, 'Garut', 1),
(1060, 1516, 'Garut Kota  Garut', 1),
(1061, 1516, 'Gebang Sumber', 1),
(1062, 1516, 'Gegerbitung Sukabumi', 1),
(1063, 1516, 'Gegesik Sumber', 1),
(1064, 1516, 'Gekbrong Cianjur', 1),
(1065, 1516, 'Gempol Sumber', 1),
(1066, 1516, 'Gunung Putri Cibinong', 1),
(1067, 1516, 'Gunung Puyuh Sukabumi', 1),
(1068, 1516, 'Gunung Sindur Cibinong', 1),
(1069, 1516, 'Gunung Tanjung Singaparna', 1),
(1070, 1516, 'Gunungguruh Sukabumi', 1),
(1071, 1516, 'Gununghalu Ngamprah', 1),
(1072, 1516, 'Hantara Kuningan', 1),
(1073, 1516, 'Harjamukti  Cirebon ', 1),
(1074, 1516, 'Haurgeulis Indramayu', 1),
(1075, 1516, 'Ibun Soreang', 1),
(1076, 1516, 'Indihiang Tasikmalaya', 1),
(1077, 1516, 'Indramayu', 1),
(1078, 1516, 'Jalaksana Kuningan', 1),
(1079, 1516, 'Jalan Gagak Subang', 1),
(1080, 1516, 'Jamanis Singaparna', 1),
(1081, 1516, 'Jampang Kulon Sukabumi', 1),
(1082, 1516, 'Jampang Tengah Sukabumi', 1),
(1083, 1516, 'Japara Kuningan', 1),
(1084, 1516, 'Jasinga Cibinong', 1),
(1085, 1516, 'Jatiasih Bekasi', 1),
(1086, 1516, 'Jatibarang Indramayu', 1),
(1087, 1516, 'Jatigede Sumedang', 1),
(1088, 1516, 'Jatiluhur Purwakarta', 1),
(1089, 1516, 'Jatinagara Ciamis', 1),
(1090, 1516, 'Jatinangor Sumedang', 1),
(1091, 1516, 'Jatinuggal Sumedang', 1),
(1092, 1516, 'Jatisampurna Bekasi', 1),
(1093, 1516, 'Jatisari Karawang', 1),
(1094, 1516, 'Jatitujuh Majalengka', 1),
(1095, 1516, 'Jatiwangi Majalengka', 1),
(1096, 1516, 'Jatiwaras Singaparna', 1),
(1097, 1516, 'Jayakerta Karawang', 1),
(1098, 1516, 'Jonggol Cibinong', 1),
(1099, 1516, 'Juntinyuat Indramayu', 1),
(1100, 1516, 'Kabandungan Sukabumi', 1),
(1101, 1516, 'Kadipaten Majalengka', 1),
(1102, 1516, 'Kadipaten Singaparna', 1),
(1103, 1516, 'Kadudampit Sukabumi', 1),
(1104, 1516, 'Kadugede Kuningan', 1),
(1105, 1516, 'Kadungora Garut', 1),
(1106, 1516, 'Kadupandak Cianjur', 1),
(1107, 1516, 'Kalapanunggal Sukabumi', 1),
(1108, 1516, 'Kalibunder Sukabumi', 1),
(1109, 1516, 'Kalijati Subang', 1),
(1110, 1516, 'Kalimanggis Kuningan', 1),
(1111, 1516, 'Kalipucang Ciamis', 1),
(1112, 1516, 'Kaliwedi Sumber', 1),
(1113, 1516, 'Kandanghaur Indramayu', 1),
(1114, 1516, 'Kapetakan Sumber', 1),
(1115, 1516, 'Karangampel Indramayu', 1),
(1116, 1516, 'Karangbahagia Cikarang', 1),
(1117, 1516, 'Karangjaya Singaparna', 1),
(1118, 1516, 'Karangkancana Kuningan', 1),
(1119, 1516, 'Karangnunggal Singaparna', 1),
(1120, 1516, 'Karangpawitan Garut', 1),
(1121, 1516, 'Karangsembung Sumber', 1),
(1122, 1516, 'Karangtengah Cianjur', 1),
(1123, 1516, 'Karangtengah Garut', 1),
(1124, 1516, 'Karangwareng Sumber', 1),
(1125, 1516, 'Karawang', 1),
(1126, 1516, 'Karawang Barat Karawang', 1),
(1127, 1516, 'Karawang Timur Karawang', 1),
(1128, 1516, 'Katapang Soreang', 1),
(1129, 1516, 'Kawali Ciamis', 1),
(1130, 1516, 'Kawalu Tasikmalaya', 1),
(1131, 1516, 'Kebonpedes Sukabumi', 1),
(1132, 1516, 'Kedawung Sumber ', 1),
(1133, 1516, 'Kedokan Bunder  Indramayu ', 1),
(1134, 1516, 'Kedungwaringin Cikarang', 1),
(1135, 1516, 'Kejaksan  Cirebon ', 1),
(1136, 1516, 'Kemang Cibinong', 1),
(1137, 1516, 'Kersamanah Garut', 1),
(1138, 1516, 'Kertajati Majalengka', 1),
(1139, 1516, 'Kertasari Soreang', 1),
(1140, 1516, 'Kertasemaya Indramayu', 1),
(1141, 1516, 'Kesambi Cirebon ', 1),
(1142, 1516, 'Kiaracondong Bandung', 1),
(1143, 1516, 'Kiarapedes Purwakarta', 1),
(1144, 1516, 'Klangenan Sumber', 1),
(1145, 1516, 'Klapanunggal Cibinong', 1),
(1146, 1516, 'Klari Karawang', 1),
(1147, 1516, 'Kotabaru Karawang', 1),
(1148, 1516, 'Kramatmulya Kuningan', 1),
(1149, 1516, 'Krangkeng Indramayu', 1),
(1150, 1516, 'Kroya Indramayu', 1),
(1151, 1516, 'Kuningan Kab Kuningan', 1),
(1152, 1516, 'Kutawaluya Karawang', 1),
(1153, 1516, 'Lakbok Ciamis', 1),
(1154, 1516, 'Langensari Banjar', 1),
(1155, 1516, 'Langkap Lancar Ciamis', 1),
(1156, 1516, 'Lebakwangi Kuningan', 1),
(1157, 1516, 'Legon Kulon Subang', 1),
(1158, 1516, 'Lelea Indramayu', 1),
(1159, 1516, 'Leles Cianjur', 1),
(1160, 1516, 'Leles Garut', 1),
(1161, 1516, 'Lemah Sugih Majalengka', 1),
(1162, 1516, 'Lemahabang Wadas Karawang', 1),
(1163, 1516, 'Lemahabang Sumber', 1),
(1164, 1516, 'Lemahwungkuk  Cirebon ', 1),
(1165, 1516, 'Lembang Ngamprah', 1),
(1166, 1516, 'Lembur Situ Sukabumi', 1),
(1167, 1516, 'Lengkong Bandung', 1),
(1168, 1516, 'Lengkong Sukabumi', 1),
(1169, 1516, 'Leuwigoong Garut', 1),
(1170, 1516, 'Leuwiliang Cibinong', 1),
(1171, 1516, 'Leuwimunding Majalengka', 1),
(1172, 1516, 'Leuwisadeng Cibinong', 1),
(1173, 1516, 'Leuwisari Singaparna', 1),
(1174, 1516, 'Ligung Majalengka', 1),
(1175, 1516, 'Limo Depok', 1),
(1176, 1516, 'Lohbener Indramayu', 1),
(1177, 1516, 'Losarang Indramayu', 1),
(1178, 1516, 'Losari Sumber', 1),
(1179, 1516, 'Lumbung Ciamis', 1),
(1180, 1516, 'Luragung Kuningan', 1),
(1181, 1516, 'Maja Majalengka', 1),
(1182, 1516, 'Majalaya Karawang', 1),
(1183, 1516, 'Majalaya Soreang', 1),
(1184, 1516, 'Majalengka Kab Majalengka', 1),
(1185, 1516, 'Malangbong Garut', 1),
(1186, 1516, 'Maleber Kuningan', 1),
(1187, 1516, 'Mande Cianjur', 1),
(1188, 1516, 'Mandirancan Kuningan', 1),
(1189, 1516, 'Mangkubumi Tasikmalaya', 1),
(1190, 1516, 'Mangunjaya Ciamis', 1),
(1191, 1516, 'Mangunreja Singaparna', 1),
(1192, 1516, 'Maniis Purwakarta', 1),
(1193, 1516, 'Manonjaya Singaparna', 1),
(1194, 1516, 'Margaasih Soreang', 1),
(1195, 1516, 'Margacinta Bandung', 1),
(1196, 1516, 'Margahayu Soreang', 1),
(1197, 1516, 'Medan Satria Bekasi', 1),
(1198, 1516, 'Megamendung Cibinong', 1),
(1199, 1516, 'Mekarmukti Garut', 1),
(1200, 1516, 'Muaragembong Cikarang', 1),
(1201, 1516, 'Mundu Sumber', 1),
(1202, 1516, 'Mustika Jaya Bekasi', 1),
(1203, 1516, 'Nagrak Sukabumi', 1),
(1204, 1516, 'Nagreg Soreang', 1),
(1205, 1516, 'Nanggung Cibinong', 1),
(1206, 1516, 'Naringgul Cianjur', 1),
(1207, 1516, 'Ngamprah Kab. Bandung Brt', 1),
(1208, 1516, 'Nusaherang Kuningan', 1),
(1209, 1516, 'Nyalindung Sukabumi', 1),
(1210, 1516, 'Pabedilan Sumber', 1),
(1211, 1516, 'Pabuaran Subang', 1),
(1212, 1516, 'Pabuaran Sukabumi', 1),
(1213, 1516, 'Pabuaran Sumber', 1),
(1214, 1516, 'Pacet Cianjur', 1),
(1215, 1516, 'Pacet Soreang', 1),
(1216, 1516, 'Padaherang Ciamis', 1),
(1217, 1516, 'Padakembang Singaparna', 1),
(1218, 1516, 'Padalarang Ngamprah', 1),
(1219, 1516, 'Pagaden Subang', 1),
(1220, 1516, 'Pagelaran Cianjur', 1),
(1221, 1516, 'Pagerageung Singaparna', 1),
(1222, 1516, 'Pakenjeng Garut', 1),
(1223, 1516, 'Pakisjaya Karawang', 1),
(1224, 1516, 'Palasah Majalengka', 1),
(1225, 1516, 'Palimanan Sumber', 1),
(1226, 1516, 'Pamanukan Subang', 1),
(1227, 1516, 'Pamarican Ciamis', 1),
(1228, 1516, 'Pameungpeuk Garut', 1),
(1229, 1516, 'Pameungpeuk Soreang', 1),
(1230, 1516, 'Pamijahan Cibinong', 1),
(1231, 1516, 'Pamulihan Garut', 1),
(1232, 1516, 'Pamulihan Sumedang', 1),
(1233, 1516, 'Panawangan Ciamis', 1),
(1234, 1516, 'Pancalang Kuningan', 1),
(1235, 1516, 'Pancatengah Singaparna', 1),
(1236, 1516, 'Pancoranmas Depok', 1),
(1237, 1516, 'Pangalengan Soreang', 1),
(1238, 1516, 'Pangandaran Ciamis', 1),
(1239, 1516, 'Pangenan Sumber', 1),
(1240, 1516, 'Pangkalan Karawang', 1),
(1241, 1516, 'Panguragan Sumber', 1),
(1242, 1516, 'Panjalu Ciamis', 1),
(1243, 1516, 'Panumbangan Ciamis', 1),
(1244, 1516, 'Panyingkiran Majalengka', 1),
(1245, 1516, 'Parakansalak Sukabumi', 1),
(1246, 1516, 'Parigi Ciamis', 1),
(1247, 1516, 'Parongpong Ngamprah', 1),
(1248, 1516, 'Parung Cibinong', 1),
(1249, 1516, 'Parungkuda Sukabumi', 1),
(1250, 1516, 'Parungpanjang Cibinong', 1),
(1251, 1516, 'Parungponteng Singaparna', 1),
(1252, 1516, 'Pasaleman Sumber', 1),
(1253, 1516, 'Pasawahan Kuningan', 1),
(1254, 1516, 'Pasawahan Purwakarta', 1),
(1255, 1516, 'Paseh Soreang', 1),
(1256, 1516, 'Paseh Sumedang', 1),
(1257, 1516, 'Pasirjambu Soreang', 1),
(1258, 1516, 'Pasirwangi Garut', 1),
(1259, 1516, 'Pataruman Banjar', 1),
(1260, 1516, 'Patokbeusi Subang', 1),
(1261, 1516, 'Pebayuran Cikarang', 1),
(1262, 1516, 'Pedes Karawang', 1),
(1263, 1516, 'Pekalipan Cirebon ', 1),
(1264, 1516, 'Pelabuhanratu Sukabumi', 1),
(1265, 1516, 'Pengatikan Garut', 1),
(1266, 1516, 'Peundeuy Garut', 1),
(1267, 1516, 'Plered  Sumber', 1),
(1268, 1516, 'Plered Purwakarta', 1),
(1269, 1516, 'Plumbon Sumber', 1),
(1270, 1516, 'Pondok Melati Bekasi', 1),
(1271, 1516, 'Pondokgede Bekasi', 1),
(1272, 1516, 'Pondoksalam Purwakarta', 1),
(1273, 1516, 'Purabaya Sukabumi', 1),
(1274, 1516, 'Purwadadi Ciamis', 1),
(1275, 1516, 'Purwadadi Subang', 1),
(1276, 1516, 'Purwaharja Banjar', 1),
(1277, 1516, 'Purwakarta Kab. Purwakarta', 1),
(1278, 1516, 'Purwasari Karawang', 1),
(1279, 1516, 'Pusakanagara Subang', 1),
(1280, 1516, 'Puspahiang Singaparna', 1),
(1281, 1516, 'Rajadesa Ciamis', 1),
(1282, 1516, 'Rajagaluh Majalengka', 1),
(1283, 1516, 'Rajapolah Singaparna', 1),
(1284, 1516, 'Ranca Bungur Cibinong', 1),
(1285, 1516, 'Rancabali Soreang', 1),
(1286, 1516, 'Rancaekek Soreang', 1),
(1287, 1516, 'Rancah Ciamis', 1),
(1288, 1516, 'Rancakalong Sumedang', 1),
(1289, 1516, 'Rancasari Bandung', 1),
(1290, 1516, 'Rawalumbu Bekasi', 1),
(1291, 1516, 'Rawamerta Karawang', 1),
(1292, 1516, 'Regol Bandung', 1),
(1293, 1516, 'Rengasdengklok Karawang', 1),
(1294, 1516, 'Rongga  Ngamprah', 1),
(1295, 1516, 'Rumpin Cibinong', 1),
(1296, 1516, 'Sadananya Ciamis', 1),
(1297, 1516, 'Sagalaherang Subang', 1),
(1298, 1516, 'Sagaranten Sukabumi', 1),
(1299, 1516, 'Salawu Singaparna', 1),
(1300, 1516, 'Salopa Singaparna', 1),
(1301, 1516, 'Samarang Garut', 1),
(1302, 1516, 'Sariwangi Singaparna', 1),
(1303, 1516, 'Sawangan', 1),
(1304, 1516, 'Sedong Sumber', 1),
(1305, 1516, 'Selaawi Garut', 1),
(1306, 1516, 'Selajambe Kuningan', 1),
(1307, 1516, 'Serang Baru Cikarang', 1),
(1308, 1516, 'Setu Cikarang', 1),
(1309, 1516, 'Sidamulih Ciamis', 1),
(1310, 1516, 'Simpenan Sukabumi', 1),
(1311, 1516, 'Sindang Indramayu ', 1),
(1312, 1516, 'Sindangagung Kuningan', 1),
(1313, 1516, 'Sindangbarang Cianjur', 1),
(1314, 1516, 'Sindangkasih Ciamis', 1),
(1315, 1516, 'Sindangkerta Ngamprah', 1),
(1316, 1516, 'Sindangwangi  Majalengka', 1),
(1317, 1516, 'Singajaya Garut', 1),
(1318, 1516, 'Singaparna Kab. Tasikmalaya', 1),
(1319, 1516, 'Situraja Sumedang', 1),
(1320, 1516, 'Sliyeg Indramayu', 1),
(1321, 1516, 'Sodonghilir Singaparna', 1),
(1322, 1516, 'Solokan Jeruk Soreang', 1),
(1323, 1516, 'Soreang Kab. Bandung', 1),
(1324, 1516, 'Subang Kab. Subang', 1),
(1325, 1516, 'Subang Kuningan', 1),
(1326, 1516, 'Sucinaraja Garut', 1),
(1327, 1516, 'Sukabumi', 1),
(1328, 1516, 'Sukadana Ciamis', 1),
(1329, 1516, 'Sukagumiwang  Indramayu ', 1),
(1330, 1516, 'Sukahaji Majalengka', 1),
(1331, 1516, 'Sukahening Singaparna', 1),
(1332, 1516, 'Sukajadi Bandung', 1),
(1333, 1516, 'Sukajaya Cibinong', 1),
(1334, 1516, 'Sukakarya Cikarang', 1),
(1335, 1516, 'Sukalarang Sukabumi', 1),
(1336, 1516, 'Sukaluyu Cianjur', 1),
(1337, 1516, 'Sukamakmur Cibinong', 1),
(1338, 1516, 'Sukanegara Cianjur', 1),
(1339, 1516, 'Sukaraja Cibinong', 1),
(1340, 1516, 'Sukaraja Singaparna', 1),
(1341, 1516, 'Sukaraja Sukabumi', 1),
(1342, 1516, 'Sukarame Singaparna', 1),
(1343, 1516, 'Sukaratu Singaparna', 1),
(1344, 1516, 'Sukaresik Singaparna', 1),
(1345, 1516, 'Sukaresmi Cianjur', 1),
(1346, 1516, 'Sukaresmi Garut', 1),
(1347, 1516, 'Sukasari Bandung', 1),
(1348, 1516, 'Sukasari Purwakarta', 1),
(1349, 1516, 'Sukasari Sumedang', 1),
(1350, 1516, 'Sukatani Cikarang', 1),
(1351, 1516, 'Sukatani Purwakarta', 1),
(1352, 1516, 'Sukawangi Cikarang', 1),
(1353, 1516, 'Sukawening Garut', 1),
(1354, 1516, 'Sukmajaya Depok', 1),
(1355, 1516, 'Sukra Indramayu', 1),
(1356, 1516, 'Sumber Jaya Majalengka', 1),
(1357, 1516, 'Sumber Kab Cirebon', 1),
(1358, 1516, 'Sumedang', 1),
(1359, 1516, 'Sumedang Selatan Sumedang', 1),
(1360, 1516, 'Sumedang Utara Sumedang', 1),
(1361, 1516, 'Sumurbandung Bandung', 1),
(1362, 1516, 'Surade Sukabumi', 1),
(1363, 1516, 'Surian Sumedang', 1),
(1364, 1516, 'Susukan Lebak Sumber', 1),
(1365, 1516, 'Susukan Sumber', 1),
(1366, 1516, 'Tajurhalang Cibinong', 1),
(1367, 1516, 'Takokak Cianjur', 1),
(1368, 1516, 'Talaga Majalengka', 1),
(1369, 1516, 'Talagasari Karawang', 1),
(1370, 1516, 'Talegong Garut', 1),
(1371, 1516, 'Tamansari Cibinong', 1),
(1372, 1516, 'Tamansari Tasikmalaya', 1),
(1373, 1516, 'Tambak Sari Ciamis', 1),
(1374, 1516, 'Tambelang Cikarang', 1),
(1375, 1516, 'Tambun Selatan Cikarang', 1);
INSERT INTO `oc_city` (`city_id`, `zone_id`, `name`, `status`) VALUES
(1376, 1516, 'Tambun Utara Cikarang', 1),
(1377, 1516, 'Tanah Sereal Bogor', 1),
(1378, 1516, 'Tanggeung Cianjur', 1),
(1379, 1516, 'Tanjungjaya Singaparna', 1),
(1380, 1516, 'Tanjungkerta Sumedang', 1),
(1381, 1516, 'Tanjungmedar Sumedang', 1),
(1382, 1516, 'Tanjungsari Cibinong', 1),
(1383, 1516, 'Tanjungsari Sumedang', 1),
(1384, 1516, 'Tanjungsiang Subang', 1),
(1385, 1516, 'Taraju Singaparna', 1),
(1386, 1516, 'Tarogong Kaler Garut', 1),
(1387, 1516, 'Tarogong Kidul Garut', 1),
(1388, 1516, 'Tarumajaya Cikarang', 1),
(1389, 1516, 'Tasikmalaya', 1),
(1390, 1516, 'Tawang Tasikmalaya', 1),
(1391, 1516, 'Tegalbuleud Sukabumi', 1),
(1392, 1516, 'Tegalwaru Karawang', 1),
(1393, 1516, 'Tegalwaru Purwakarta', 1),
(1394, 1516, 'Teluk Jambe Barat Karawang', 1),
(1395, 1516, 'Teluk Jambe Timur Karawang', 1),
(1396, 1516, 'Tempuran Karawang', 1),
(1397, 1516, 'Tengah Tani  Sumber ', 1),
(1398, 1516, 'Tenjo Cibinong', 1),
(1399, 1516, 'Tenjolaya Cibinong', 1),
(1400, 1516, 'Tirtajaya Karawang', 1),
(1401, 1516, 'Tirtamulya Karawang', 1),
(1402, 1516, 'Tomo Sumedang', 1),
(1403, 1516, 'Trisi  Indramayu ', 1),
(1404, 1516, 'Ujungberung Bandung', 1),
(1405, 1516, 'Ujungjaya Sumedang', 1),
(1406, 1516, 'Wado Sumedang', 1),
(1407, 1516, 'Waled Sumber', 1),
(1408, 1516, 'Waluran Sukabumi', 1),
(1409, 1516, 'Wanaraja Garut', 1),
(1410, 1516, 'Wanayasa Purwakarta', 1),
(1411, 1516, 'Warudoyong Sukabumi', 1),
(1412, 1516, 'Warungkiara Sukabumi', 1),
(1413, 1516, 'Warungkondang Cianjur', 1),
(1414, 1516, 'Weru Sumber', 1),
(1415, 1516, 'Widasari Indramayu', 1),
(1416, 1517, 'Adimulyo Kebumen', 1),
(1417, 1517, 'Adipala Cilacap', 1),
(1418, 1517, 'Adiwerna Slawi', 1),
(1419, 1517, 'Ajibarang Purwokerto', 1),
(1420, 1517, 'Aliyan Kebumen', 1),
(1421, 1517, 'Ambal Kebumen', 1),
(1422, 1517, 'Ambarawa Ungaran', 1),
(1423, 1517, 'Ampel Boyolali', 1),
(1424, 1517, 'Ampelgading Pemalang', 1),
(1425, 1517, 'Andong Boyolali', 1),
(1426, 1517, 'Argomulyo Salatiga', 1),
(1427, 1517, 'Ayah Kebumen', 1),
(1428, 1517, 'Bae Kudus', 1),
(1429, 1517, 'Bagelen Purworejo', 1),
(1430, 1517, 'Baki Sukoharjo', 1),
(1431, 1517, 'Balapulang Slawi', 1),
(1432, 1517, 'Balen Bojonegoro', 1),
(1433, 1517, 'Bancak Ungaran', 1),
(1434, 1517, 'Bandar Batang', 1),
(1435, 1517, 'Bandongan Magelang', 1),
(1436, 1517, 'Bangsri Jepara', 1),
(1437, 1517, 'Banjarejo Blora', 1),
(1438, 1517, 'Banjarharjo Brebes', 1),
(1439, 1517, 'Banjarmangu Banjarnegara', 1),
(1440, 1517, 'Banjarnegara Kab. Banjarnegara', 1),
(1441, 1517, 'Banjarsari Solo', 1),
(1442, 1517, 'Bansari Temanggung', 1),
(1443, 1517, 'Bantarbolang Pemalang', 1),
(1444, 1517, 'Bantarkawung Brebes', 1),
(1445, 1517, 'Bantasari Cilacap', 1),
(1446, 1517, 'Banyubiru Ungaran', 1),
(1447, 1517, 'Banyudono Boyolali', 1),
(1448, 1517, 'Banyumanik Semarang', 1),
(1449, 1517, 'Banyumas Purwokerto', 1),
(1450, 1517, 'Banyuputih Batang', 1),
(1451, 1517, 'Banyuurip Purworejo', 1),
(1452, 1517, 'Batang  Kab Batang', 1),
(1453, 1517, 'Batangan Pati', 1),
(1454, 1517, 'Batealit Jepara', 1),
(1455, 1517, 'Batur Banjarnegara', 1),
(1456, 1517, 'Baturaden Purwokerto', 1),
(1457, 1517, 'Baturetno. Wonogiri', 1),
(1458, 1517, 'Batuwarno. Wonogiri', 1),
(1459, 1517, 'Baureno Bojonegoro', 1),
(1460, 1517, 'Bawang Banjarnegara', 1),
(1461, 1517, 'Bawang Batang', 1),
(1462, 1517, 'Bawen Ungaran', 1),
(1463, 1517, 'Bayan Purworejo', 1),
(1464, 1517, 'Bayat Klaten', 1),
(1465, 1517, 'Bejen Temanggung', 1),
(1466, 1517, 'Belik Pemalang', 1),
(1467, 1517, 'Bendosari Sukoharjo', 1),
(1468, 1517, 'Bener Purworejo', 1),
(1469, 1517, 'Bergas Ungaran', 1),
(1470, 1517, 'Binangun Cilacap', 1),
(1471, 1517, 'Blado Batang', 1),
(1472, 1517, 'Blora Kab. Blora', 1),
(1473, 1517, 'Bobotsari Purbalingga', 1),
(1474, 1517, 'Bodeh Pemalang', 1),
(1475, 1517, 'Bogorejo Blora', 1),
(1476, 1517, 'Boja Kendal', 1),
(1477, 1517, 'Bojonegoro Kab. Bojonegoro', 1),
(1478, 1517, 'Bojong Kajen', 1),
(1479, 1517, 'Bojong Slawi', 1),
(1480, 1517, 'Bojongsari Purbalingga', 1),
(1481, 1517, 'Bonang Demak', 1),
(1482, 1517, 'Bonorowo Kebumen', 1),
(1483, 1517, 'Borobudur Magelang', 1),
(1484, 1517, 'Boyolali Kab. Boyolali', 1),
(1485, 1517, 'Brangsong Kendal', 1),
(1486, 1517, 'Brati Purwodadi', 1),
(1487, 1517, 'Brebes Kab. Brebes', 1),
(1488, 1517, 'Bringin Ungaran', 1),
(1489, 1517, 'Bruno Purworejo', 1),
(1490, 1517, 'Buaran Kajen', 1),
(1491, 1517, 'Buayan Kebumen', 1),
(1492, 1517, 'Bubulan Bojonegoro', 1),
(1493, 1517, 'Bukateja Purbalingga', 1),
(1494, 1517, 'Bulakamba Brebes', 1),
(1495, 1517, 'Bulu Rembang', 1),
(1496, 1517, 'Bulu Sukoharjo', 1),
(1497, 1517, 'Bulu Temanggung', 1),
(1498, 1517, 'Bulukerto. Wonogiri', 1),
(1499, 1517, 'Buluspesantren Kebumen', 1),
(1500, 1517, 'Bumiayu Brebes', 1),
(1501, 1517, 'Bumijawa Slawi', 1),
(1502, 1517, 'Butuh Purworejo', 1),
(1503, 1517, 'Candimulyo Magelang', 1),
(1504, 1517, 'Candiroto Temanggung', 1),
(1505, 1517, 'Candisari Semarang', 1),
(1506, 1517, 'Cawas Klaten', 1),
(1507, 1517, 'Ceper Klaten', 1),
(1508, 1517, 'Cepiring Kendal', 1),
(1509, 1517, 'Cepogo Boyolali', 1),
(1510, 1517, 'Cepu Blora', 1),
(1511, 1517, 'Cilacap', 1),
(1512, 1517, 'Cilacap Selatan Cilacap', 1),
(1513, 1517, 'Cilacap Tengah Cilacap', 1),
(1514, 1517, 'Cilacap Utara Cilacap', 1),
(1515, 1517, 'Cilongok Purwokerto', 1),
(1516, 1517, 'Cimanggu Cilacap', 1),
(1517, 1517, 'Cipari Cilacap', 1),
(1518, 1517, 'Cluwak Pati', 1),
(1519, 1517, 'Colomadu Karanganyar', 1),
(1520, 1517, 'Comal Pemalang', 1),
(1521, 1517, 'Dander Bojonegoro', 1),
(1522, 1517, 'Dawe Kudus', 1),
(1523, 1517, 'Dayeuhluhur Cilacap', 1),
(1524, 1517, 'Delanggu Klaten', 1),
(1525, 1517, 'Demak', 1),
(1526, 1517, 'Dempet Demak', 1),
(1527, 1517, 'Doro Kajen', 1),
(1528, 1517, 'Dukuhseti Pati', 1),
(1529, 1517, 'Dukuhturi Slawi', 1),
(1530, 1517, 'Dukuhwaru Slawi', 1),
(1531, 1517, 'Dukun Magelang', 1),
(1532, 1517, 'Eromoko. Wonogiri', 1),
(1533, 1517, 'Gabus Pati', 1),
(1534, 1517, 'Gabus Purwodadi', 1),
(1535, 1517, 'Gajah Demak', 1),
(1536, 1517, 'Gajahmungkur Semarang', 1),
(1537, 1517, 'Gandrungmangu Cilacap', 1),
(1538, 1517, 'Gantiwarno Klaten', 1),
(1539, 1517, 'Garung Wonosobo', 1),
(1540, 1517, 'Gatak Sukoharjo', 1),
(1541, 1517, 'Gayamsari Semarang', 1),
(1542, 1517, 'Gebang Purworejo', 1),
(1543, 1517, 'Gebog Kudus', 1),
(1544, 1517, 'Gemawang Temanggung', 1),
(1545, 1517, 'Gembong Pati', 1),
(1546, 1517, 'Gemolong Sragen', 1),
(1547, 1517, 'Gemuh Kendal', 1),
(1548, 1517, 'Genuk Semarang', 1),
(1549, 1517, 'Gesi Sragen', 1),
(1550, 1517, 'Getasan Ungaran', 1),
(1551, 1517, 'Geyer Purwodadi', 1),
(1552, 1517, 'Girimarto. Wonogiri', 1),
(1553, 1517, 'Giritontro. Wonogiri', 1),
(1554, 1517, 'Giriwoyo. Wonogiri', 1),
(1555, 1517, 'Godong Purwodadi', 1),
(1556, 1517, 'Gombong Kebumen', 1),
(1557, 1517, 'Gondang Bojonegoro', 1),
(1558, 1517, 'Gondang Sragen', 1),
(1559, 1517, 'Gondangrejo Karanganyar', 1),
(1560, 1517, 'Grabag Magelang', 1),
(1561, 1517, 'Grabag Purworejo', 1),
(1562, 1517, 'Gringsing Batang', 1),
(1563, 1517, 'Grobogan Purwodadi', 1),
(1564, 1517, 'Grogol Sukoharjo', 1),
(1565, 1517, 'Gubug Purwodadi', 1),
(1566, 1517, 'Gumelar Purwokerto', 1),
(1567, 1517, 'Gunem Rembang', 1),
(1568, 1517, 'Guntur Demak', 1),
(1569, 1517, 'Gunungpati Semarang', 1),
(1570, 1517, 'Gunungwungkal Pati', 1),
(1571, 1517, 'Jaken Pati', 1),
(1572, 1517, 'Jakenan Pati', 1),
(1573, 1517, 'Jambu Ungaran', 1),
(1574, 1517, 'Japah Blora', 1),
(1575, 1517, 'Jaten Karanganyar', 1),
(1576, 1517, 'Jati Blora', 1),
(1577, 1517, 'Jati Kudus', 1),
(1578, 1517, 'Jatibarang Brebes', 1),
(1579, 1517, 'Jatilawang Purwokerto', 1),
(1580, 1517, 'Jatinegara Slawi', 1),
(1581, 1517, 'Jatinom Klaten', 1),
(1582, 1517, 'Jatipurno. Wonogiri', 1),
(1583, 1517, 'Jatipuro Karanganyar', 1),
(1584, 1517, 'Jatiroto. Wonogiri', 1),
(1585, 1517, 'Jatisrono. Wonogiri', 1),
(1586, 1517, 'Jatiyoso Karanganyar', 1),
(1587, 1517, 'Jebres Solo', 1),
(1588, 1517, 'Jekulo Kudus', 1),
(1589, 1517, 'Jenar Sragen', 1),
(1590, 1517, 'Jenawi Karanganyar', 1),
(1591, 1517, 'Jepara Kab. Jepara', 1),
(1592, 1517, 'Jepon Blora', 1),
(1593, 1517, 'Jeruklegi Cilacap', 1),
(1594, 1517, 'Jiken Blora', 1),
(1595, 1517, 'Jogonalan Klaten', 1),
(1596, 1517, 'Jumantono Karanganyar', 1),
(1597, 1517, 'Jumapolo Karanganyar', 1),
(1598, 1517, 'Jumo Temanggung', 1),
(1599, 1517, 'Juwana Pati', 1),
(1600, 1517, 'Juwangi Boyolali', 1),
(1601, 1517, 'Juwiring Klaten', 1),
(1602, 1517, 'Kajen Kab. Pekalongan', 1),
(1603, 1517, 'Kajoran Magelang', 1),
(1604, 1517, 'Kaliangkrik Magelang', 1),
(1605, 1517, 'Kalibagor Purwokerto', 1),
(1606, 1517, 'Kalibawang Wonosobo', 1),
(1607, 1517, 'Kalibening Banjarnegara', 1),
(1608, 1517, 'Kaligesing Purworejo', 1),
(1609, 1517, 'Kaligondang Purbalingga', 1),
(1610, 1517, 'Kalijambe Sragen', 1),
(1611, 1517, 'Kalikajar Wonosobo', 1),
(1612, 1517, 'Kalikotes Klaten', 1),
(1613, 1517, 'Kalimanah Purbalingga', 1),
(1614, 1517, 'Kalinyamatan Jepara', 1),
(1615, 1517, 'Kaliori Rembang', 1),
(1616, 1517, 'Kalitidu Bojonegoro', 1),
(1617, 1517, 'Kaliwiro Wonosobo', 1),
(1618, 1517, 'Kaliwungu Kendal', 1),
(1619, 1517, 'Kaliwungu Kudus', 1),
(1620, 1517, 'Kaliwungu Ungaran', 1),
(1621, 1517, 'Kaloran Temanggung', 1),
(1622, 1517, 'Kampung Laut Kab. Cilacap\n', 1),
(1623, 1517, 'Kandang Serang Kajen', 1),
(1624, 1517, 'Kandangan Temanggung', 1),
(1625, 1517, 'Kandeman Batang', 1),
(1626, 1517, 'Kangkung Kendal', 1),
(1627, 1517, 'Kanor Bojonegoro', 1),
(1628, 1517, 'Kapas Bojonegoro', 1),
(1629, 1517, 'Karanganom Klaten', 1),
(1630, 1517, 'Karanganyar Demak', 1),
(1631, 1517, 'Karanganyar Kab. Karanganyar', 1),
(1632, 1517, 'Karanganyar Kajen', 1),
(1633, 1517, 'Karanganyar Kebumen', 1),
(1634, 1517, 'Karanganyar Purbalingga', 1),
(1635, 1517, 'Karangawen Demak', 1),
(1636, 1517, 'Karangayung Purwodadi', 1),
(1637, 1517, 'Karangdadap Kajen', 1),
(1638, 1517, 'Karangdowo Klaten', 1),
(1639, 1517, 'Karanggayam Kebumen', 1),
(1640, 1517, 'Karanggede Boyolali', 1),
(1641, 1517, 'Karangjambu Purbalingga', 1),
(1642, 1517, 'Karangkobar Banjarnegara', 1),
(1643, 1517, 'Karanglewas Purwokerto', 1),
(1644, 1517, 'Karangmalang Sragen', 1),
(1645, 1517, 'Karangmoncol Purbalingga', 1),
(1646, 1517, 'Karangnongko Klaten', 1),
(1647, 1517, 'Karangpandan Karanganyar', 1),
(1648, 1517, 'Karangpucung Cilacap', 1),
(1649, 1517, 'Karangreja Purbalingga', 1),
(1650, 1517, 'Karangsambung Kebumen', 1),
(1651, 1517, 'Karangtengah Demak', 1),
(1652, 1517, 'Karangtengah. Wonogiri', 1),
(1653, 1517, 'Karimunjawa Jepara', 1),
(1654, 1517, 'Kartosuro Sukoharjo', 1),
(1655, 1517, 'Kasiman Bojonegoro', 1),
(1656, 1517, 'Kawunganten Cilacap', 1),
(1657, 1517, 'Kayen Pati', 1),
(1658, 1517, 'Kebakkramat Karanganyar', 1),
(1659, 1517, 'Kebasen Purwokerto', 1),
(1660, 1517, 'Kebonagung Demak', 1),
(1661, 1517, 'Kebonarum Klaten', 1),
(1662, 1517, 'Kebumen', 1),
(1663, 1517, 'Kedawung Sragen', 1),
(1664, 1517, 'Kedewan Bojonegoro', 1),
(1665, 1517, 'Kedu Temanggung', 1),
(1666, 1517, 'Kedung Jepara', 1),
(1667, 1517, 'Kedungadem Bojonegoro', 1),
(1668, 1517, 'Kedungbanteng Purwokerto', 1),
(1669, 1517, 'Kedungbanteng Slawi', 1),
(1670, 1517, 'Kedungjati Purwodadi', 1),
(1671, 1517, 'Kedungrejo Cilacap', 1),
(1672, 1517, 'Kedungtuban Blora', 1),
(1673, 1517, 'Kedungwuni Kajen', 1),
(1674, 1517, 'Kejajar Wonosobo', 1),
(1675, 1517, 'Kejobong Purbalingga', 1),
(1676, 1517, 'Keling Jepara', 1),
(1677, 1517, 'Kemalang Klaten', 1),
(1678, 1517, 'Kemangkon Purbalingga', 1),
(1679, 1517, 'Kembang Jepara', 1),
(1680, 1517, 'Kembaran Purwokerto', 1),
(1681, 1517, 'Kemiri Purworejo', 1),
(1682, 1517, 'Kemranjen Purwokerto', 1),
(1683, 1517, 'Kemusu Boyolali', 1),
(1684, 1517, 'Kendal Kab. Kendal', 1),
(1685, 1517, 'Kepil Wonosobo', 1),
(1686, 1517, 'Kepohbaru Bojonegoro', 1),
(1687, 1517, 'Kerjo Karanganyar', 1),
(1688, 1517, 'Kersana Brebes', 1),
(1689, 1517, 'Kertanegara Purbalingga', 1),
(1690, 1517, 'Kerteg Wonosobo', 1),
(1691, 1517, 'Kesesi Kajen', 1),
(1692, 1517, 'Kesugihan Cilacap', 1),
(1693, 1517, 'Ketanggungan Brebes', 1),
(1694, 1517, 'Kismantoro. Wonogiri', 1),
(1695, 1517, 'Klambu Purwodadi', 1),
(1696, 1517, 'Klaten', 1),
(1697, 1517, 'Klaten Selatan Klaten', 1),
(1698, 1517, 'Klaten Tengah Klaten', 1),
(1699, 1517, 'Klaten Utara Klaten', 1),
(1700, 1517, 'Kledung Temanggung', 1),
(1701, 1517, 'Klego Boyolali', 1),
(1702, 1517, 'Klirong Kebumen', 1),
(1703, 1517, 'Kradenan Blora', 1),
(1704, 1517, 'Kradenan Purwodadi', 1),
(1705, 1517, 'Kragan Rembang', 1),
(1706, 1517, 'Kramat Slawi', 1),
(1707, 1517, 'Kranggan Temanggung', 1),
(1708, 1517, 'Kroya Cilacap', 1),
(1709, 1517, 'Kudus Kab. Kudus', 1),
(1710, 1517, 'Kunduran Blora', 1),
(1711, 1517, 'Kutasari Purbalingga', 1),
(1712, 1517, 'Kutoarjo Purworejo', 1),
(1713, 1517, 'Kutowinangun Kebumen', 1),
(1714, 1517, 'Kuwarasan Kebumen', 1),
(1715, 1517, 'Larangan Brebes', 1),
(1716, 1517, 'Lasem Rembang', 1),
(1717, 1517, 'Laweyan Solo', 1),
(1718, 1517, 'Lebak Barang Kajen', 1),
(1719, 1517, 'Lebaksiu Slawi', 1),
(1720, 1517, 'Leksono Wonosobo', 1),
(1721, 1517, 'Limbangan Kendal', 1),
(1722, 1517, 'Limpung Batang', 1),
(1723, 1517, 'Loano Purworejo', 1),
(1724, 1517, 'Losari Brebes', 1),
(1725, 1517, 'Lumbir Purwokerto', 1),
(1726, 1517, 'Madukara Banjarnegara', 1),
(1727, 1517, 'Magelang', 1),
(1728, 1517, 'Magelang Selatan Magelang', 1),
(1729, 1517, 'Magelang Tengah Magelang', 1),
(1730, 1517, 'Magelang Utara Magelang', 1),
(1731, 1517, 'Majenang Cilacap', 1),
(1732, 1517, 'Malo Bojonegoro', 1),
(1733, 1517, 'Mandiraja Banjarnegara', 1),
(1734, 1517, 'Manisrenggo Klaten', 1),
(1735, 1517, 'Manyaran. Wonogiri', 1),
(1736, 1517, 'Maos Cilacap', 1),
(1737, 1517, 'Margadana Tegal', 1),
(1738, 1517, 'Margasari Slawi', 1),
(1739, 1517, 'Margomulyo Bojonegoro', 1),
(1740, 1517, 'Margorejo Pati', 1),
(1741, 1517, 'Margoyoso Pati', 1),
(1742, 1517, 'Masaran Sragen', 1),
(1743, 1517, 'Matesih Karanganyar', 1),
(1744, 1517, 'Mayong Jepara', 1),
(1745, 1517, 'Mejobo Kudus', 1),
(1746, 1517, 'Mertoyudan Magelang', 1),
(1747, 1517, 'Mijen Demak', 1),
(1748, 1517, 'Mijen Semarang', 1),
(1749, 1517, 'Miri Sragen', 1),
(1750, 1517, 'Mirit Kebumen', 1),
(1751, 1517, 'Mlonggo Jepara', 1),
(1752, 1517, 'Moga Pemalang', 1),
(1753, 1517, 'Mojogedang Karanganyar', 1),
(1754, 1517, 'Mojolaban Sukoharjo', 1),
(1755, 1517, 'Mojosongo Boyolali', 1),
(1756, 1517, 'Mojotengah Wonosobo', 1),
(1757, 1517, 'Mondokan Sragen', 1),
(1758, 1517, 'Mranggen Demak', 1),
(1759, 1517, 'Mrebet Purbalingga', 1),
(1760, 1517, 'Mungkid Kab. Magelang', 1),
(1761, 1517, 'Muntilan. Magelang', 1),
(1762, 1517, 'Musuk Boyolali', 1),
(1763, 1517, 'Nalumsari Jepara', 1),
(1764, 1517, 'Ngablak Magelang', 1),
(1765, 1517, 'Ngadirejo Temanggung', 1),
(1766, 1517, 'Ngadirojo. Wonogiri', 1),
(1767, 1517, 'Ngaliyan Semarang', 1),
(1768, 1517, 'Ngambon Bojonegoro', 1),
(1769, 1517, 'Ngampel Kendal', 1),
(1770, 1517, 'Ngargoyoso Karanganyar', 1),
(1771, 1517, 'Ngaringan Purwodadi', 1),
(1772, 1517, 'Ngasem Bojonegoro', 1),
(1773, 1517, 'Ngawen Blora', 1),
(1774, 1517, 'Ngawen Klaten', 1),
(1775, 1517, 'Ngemplak Boyolali', 1),
(1776, 1517, 'Ngombol Purworejo', 1),
(1777, 1517, 'Ngraho Bojonegoro', 1),
(1778, 1517, 'Ngrampal Sragen', 1),
(1779, 1517, 'Ngulwar Magelang', 1),
(1780, 1517, 'Nguntoronadi. Wonogiri', 1),
(1781, 1517, 'Nguter Sukoharjo', 1),
(1782, 1517, 'Nogosari Boyolali', 1),
(1783, 1517, 'Nusawungu Cilacap', 1),
(1784, 1517, 'Pabelan Ungaran', 1),
(1785, 1517, 'Padamara Purbalingga', 1),
(1786, 1517, 'Padangan Bojonegoro', 1),
(1787, 1517, 'Padureso Kebumen', 1),
(1788, 1517, 'Pagentan Banjarnegara', 1),
(1789, 1517, 'Pagerbarang Slawi', 1),
(1790, 1517, 'Pageruyung Kendal', 1),
(1791, 1517, 'Paguyangan Brebes', 1),
(1792, 1517, 'Pakis Magelang', 1),
(1793, 1517, 'Pakuncen Purwokerto', 1),
(1794, 1517, 'Pamotan Rembang', 1),
(1795, 1517, 'Pancur Rembang', 1),
(1796, 1517, 'Pangkah Slawi', 1),
(1797, 1517, 'Paninggaran Kajen', 1),
(1798, 1517, 'Parakan Temanggung', 1),
(1799, 1517, 'Paranggupito Wonogiri', 1),
(1800, 1517, 'Pasar Kliwon Solo', 1),
(1801, 1517, 'Patean Kendal', 1),
(1802, 1517, 'Patebon Kendal', 1),
(1803, 1517, 'Pati Kab. Pati', 1),
(1804, 1517, 'Patikraja Purwokerto', 1),
(1805, 1517, 'Patimuan Cilacap', 1),
(1806, 1517, 'Pecalungan Batang', 1),
(1807, 1517, 'Pecangaan Jepara', 1),
(1808, 1517, 'Pedan Klaten', 1),
(1809, 1517, 'Pedurungan Semarang', 1),
(1810, 1517, 'Pegandon Kendal', 1),
(1811, 1517, 'Pejagoan Kebumen', 1),
(1812, 1517, 'Pejawaran Banjarnegara', 1),
(1813, 1517, 'Pekalongan', 1),
(1814, 1517, 'Pekalongan Barat Pekalongan', 1),
(1815, 1517, 'Pekalongan Selatan Pekalongan', 1),
(1816, 1517, 'Pekalongan Timur Pekalongan', 1),
(1817, 1517, 'Pekalongan Utara Pekalongan', 1),
(1818, 1517, 'Pemalang Kab. Pemalang', 1),
(1819, 1517, 'Penawangan Purwodadi', 1),
(1820, 1517, 'Pengadegan Purbalingga', 1),
(1821, 1517, 'Petanahan Kebumen', 1),
(1822, 1517, 'Petarukan Pemalang', 1),
(1823, 1517, 'Petungkriyono Kajen', 1),
(1824, 1517, 'Pituruh Purworejo', 1),
(1825, 1517, 'Plantungan Kendal', 1),
(1826, 1517, 'Plupuh Sragen', 1),
(1827, 1517, 'Polanharjo Klaten', 1),
(1828, 1517, 'Polokarto Sukoharjo', 1),
(1829, 1517, 'Poncowarno Kebumen', 1),
(1830, 1517, 'Pracimantoro. Wonogiri', 1),
(1831, 1517, 'Prambanan Klaten', 1),
(1832, 1517, 'Prembun Kebumen', 1),
(1833, 1517, 'Pringapus Ungaran', 1),
(1834, 1517, 'Pringsurat Temanggung', 1),
(1835, 1517, 'Pucakwangi Pati', 1),
(1836, 1517, 'Puhpelem Wonogiri', 1),
(1837, 1517, 'Pulokulon Purwodadi', 1),
(1838, 1517, 'Pulosari Pemalang', 1),
(1839, 1517, 'Punggelan Banjarnegara', 1),
(1840, 1517, 'Purbalingga Kab. Purbalingga', 1),
(1841, 1517, 'Puring Kebumen', 1),
(1842, 1517, 'Purwanegara Banjarnegara', 1),
(1843, 1517, 'Purwantoro. Wonogiri', 1),
(1844, 1517, 'Purwodadi Kab. Grobogan', 1),
(1845, 1517, 'Purwodadi Purworejo', 1),
(1846, 1517, 'Purwojati Purwokerto', 1),
(1847, 1517, 'Purwokerto', 1),
(1848, 1517, 'Purwokerto Barat Purwokerto', 1),
(1849, 1517, 'Purwokerto Selatan Purwokerto', 1),
(1850, 1517, 'Purwokerto Timur Purwokerto', 1),
(1851, 1517, 'Purwokerto Utara Purwokerto', 1),
(1852, 1517, 'Purworejo Kab. Purworejo', 1),
(1853, 1517, 'Purworejo/klampok Banjarnegara', 1),
(1854, 1517, 'Purwosari Bojonegoro', 1),
(1855, 1517, 'Rakit Banjarnegara', 1),
(1856, 1517, 'Randublatung Blora', 1),
(1857, 1517, 'Randudongkal Pemalang', 1),
(1858, 1517, 'Rawalo Purwokerto', 1),
(1859, 1517, 'Reban Batang', 1),
(1860, 1517, 'Rembang Kab. Rembang', 1),
(1861, 1517, 'Rembang Purbalingga', 1),
(1862, 1517, 'Ringinarum Kendal', 1),
(1863, 1517, 'Rowokele Kebumen', 1),
(1864, 1517, 'Rowosari Kendal', 1),
(1865, 1517, 'Sadang Kebumen', 1),
(1866, 1517, 'Salam Muntilan', 1),
(1867, 1517, 'Salaman Magelang', 1),
(1868, 1517, 'Salatiga', 1),
(1869, 1517, 'Sale Rembang', 1),
(1870, 1517, 'Salem Brebes', 1),
(1871, 1517, 'Sambi Boyolali', 1),
(1872, 1517, 'Sambirejo Sragen', 1),
(1873, 1517, 'Sambong Blora', 1),
(1874, 1517, 'Sambungmacan Sragen', 1),
(1875, 1517, 'Sampang Cilacap', 1),
(1876, 1517, 'Sapuran Wonosobo', 1),
(1877, 1517, 'Sarang Rembang', 1),
(1878, 1517, 'Sawangan Magelang', 1),
(1879, 1517, 'Sawit Boyolali', 1),
(1880, 1517, 'Sayung Demak', 1),
(1881, 1517, 'Secang Magelang', 1),
(1882, 1517, 'Sedan Rembang', 1),
(1883, 1517, 'Sekar Bojonegoro', 1),
(1884, 1517, 'Selo Boyolali', 1),
(1885, 1517, 'Selogiri. Wonogiri', 1),
(1886, 1517, 'Selomerto Wonosobo', 1),
(1887, 1517, 'Selopampang Temanggung', 1),
(1888, 1517, 'Semarang', 1),
(1889, 1517, 'Semarang Barat Semarang', 1),
(1890, 1517, 'Semarang Selatan', 1),
(1891, 1517, 'Semarang Tengah Semarang', 1),
(1892, 1517, 'Semarang Timur Semarang', 1),
(1893, 1517, 'Semarang Utara Semarang', 1),
(1894, 1517, 'Sempor Kebumen', 1),
(1895, 1517, 'Serengan Solo', 1),
(1896, 1517, 'Sidareja Cilacap', 1),
(1897, 1517, 'Sidoharjo Sragen', 1),
(1898, 1517, 'Sidoharjo. Wonogiri', 1),
(1899, 1517, 'Sidomukti Salatiga', 1),
(1900, 1517, 'Sidorejo Salatiga', 1),
(1901, 1517, 'Sigaluh Banjarnegara', 1),
(1902, 1517, 'Simo Boyolali', 1),
(1903, 1517, 'Singorojo Kendal', 1),
(1904, 1517, 'Sirampog Brebes', 1),
(1905, 1517, 'Siwalan Kajen', 1),
(1906, 1517, 'Slawi Kab. Tegal', 1),
(1907, 1517, 'Slogohimo. Wonogiri', 1),
(1908, 1517, 'Sluke Rembang', 1),
(1909, 1517, 'Sokaraja Purwokerto', 1),
(1910, 1517, 'Solo', 1),
(1911, 1517, 'Somagede Purwokerto', 1),
(1912, 1517, 'Songgom Brebes', 1),
(1913, 1517, 'Sragen', 1),
(1914, 1517, 'Sragi Kajen', 1),
(1915, 1517, 'Srumbung Magelang', 1),
(1916, 1517, 'Sruweng Kebumen', 1),
(1917, 1517, 'Subah Batang', 1),
(1918, 1517, 'Sugihwaras Bojonegoro', 1),
(1919, 1517, 'Sukodono Sragen', 1),
(1920, 1517, 'Sukoharjo', 1),
(1921, 1517, 'Sukoharjo Wonosobo', 1),
(1922, 1517, 'Sukolilo Pati', 1),
(1923, 1517, 'Sukorejo Kendal', 1),
(1924, 1517, 'Sukosewu Bojonegoro', 1),
(1925, 1517, 'Sulang Rembang', 1),
(1926, 1517, 'Sumbang Purwokerto', 1),
(1927, 1517, 'Sumber Rembang', 1),
(1928, 1517, 'Sumberejo Bojonegoro', 1),
(1929, 1517, 'Sumberlawang Sragen', 1),
(1930, 1517, 'Sumowono Ungaran', 1),
(1931, 1517, 'Sumpiuh Purwokerto', 1),
(1932, 1517, 'Suradadi Slawi', 1),
(1933, 1517, 'Suruh Ungaran', 1),
(1934, 1517, 'Susukan Banjarnegara', 1),
(1935, 1517, 'Susukan Ungaran', 1),
(1936, 1517, 'Tahunan Jepara', 1),
(1937, 1517, 'Talang Slawi', 1),
(1938, 1517, 'Talun Kajen', 1),
(1939, 1517, 'Taman Pemalang', 1),
(1940, 1517, 'Tambak Purwokerto', 1),
(1941, 1517, 'Tambakrejo Bojonegoro', 1),
(1942, 1517, 'Tambakromo Pati', 1),
(1943, 1517, 'Tangen Sragen', 1),
(1944, 1517, 'Tanggungharjo Purwodadi', 1),
(1945, 1517, 'Tanjung Brebes', 1),
(1946, 1517, 'Tanon Sragen', 1),
(1947, 1517, 'Tarub Slawi', 1),
(1948, 1517, 'Tasikmadu Karanganyar', 1),
(1949, 1517, 'Tawangharjo Purwodadi', 1),
(1950, 1517, 'Tawangmangu Karanganyar', 1),
(1951, 1517, 'Tawangsari Sukoharjo', 1),
(1952, 1517, 'Tayu Pati', 1),
(1953, 1517, 'Tegal', 1),
(1954, 1517, 'Tegal Barat Tegal', 1),
(1955, 1517, 'Tegal Selatan Tegal', 1),
(1956, 1517, 'Tegal Timur Tegal', 1),
(1957, 1517, 'Tegalrejo Magelang', 1),
(1958, 1517, 'Tegowanu Purwodadi', 1),
(1959, 1517, 'Telogowungu Pati', 1),
(1960, 1517, 'Temanggung Kab. Temanggung', 1),
(1961, 1517, 'Temayang Bojonegoro', 1),
(1962, 1517, 'Tembalang Semarang', 1),
(1963, 1517, 'Tembarak Temanggung', 1),
(1964, 1517, 'Tempuran Magelang', 1),
(1965, 1517, 'Tengaran Ungaran', 1),
(1966, 1517, 'Teras Boyolali', 1),
(1967, 1517, 'Tersono Batang', 1),
(1968, 1517, 'Tingkir Salatiga', 1),
(1969, 1517, 'Tirto Kajen', 1),
(1970, 1517, 'Tirtomoyo. Wonogiri', 1),
(1971, 1517, 'Tlogomulyo Temanggung', 1),
(1972, 1517, 'Todanan Blora', 1),
(1973, 1517, 'Tonjong Brebes', 1),
(1974, 1517, 'Toroh Purwodadi', 1),
(1975, 1517, 'Trangkil Pati', 1),
(1976, 1517, 'Tretep Temanggung', 1),
(1977, 1517, 'Trucuk Bojonegoro', 1),
(1978, 1517, 'Trucuk Klaten', 1),
(1979, 1517, 'Tugu Semarang', 1),
(1980, 1517, 'Tulis Batang', 1),
(1981, 1517, 'Tulung Klaten', 1),
(1982, 1517, 'Tunjungan Blora', 1),
(1983, 1517, 'Tuntang Ungaran', 1),
(1984, 1517, 'Ulujami Pemalang', 1),
(1985, 1517, 'Undaan Kudus', 1),
(1986, 1517, 'Ungaran', 1),
(1987, 1517, 'Ungaran Barat Semarang', 1),
(1988, 1517, 'Ungaran Timur Semarang', 1),
(1989, 1517, 'Wadaslintang Wonosobo', 1),
(1990, 1517, 'Wanadadi Banjarnegara', 1),
(1991, 1517, 'Wanareja Cilacap', 1),
(1992, 1517, 'Wanayasa Banjarnegara', 1),
(1993, 1517, 'Wangon Purwokerto', 1),
(1994, 1517, 'Warungasem Batang', 1),
(1995, 1517, 'Warungpring Pemalang', 1),
(1996, 1517, 'Warureja Slawi', 1),
(1997, 1517, 'Watukumpul Pemalang', 1),
(1998, 1517, 'Watumalang Wonosobo', 1),
(1999, 1517, 'Wedarijaksa Pati', 1),
(2000, 1517, 'Wedi Klaten', 1),
(2001, 1517, 'Wedung Demak', 1),
(2002, 1517, 'Welahan Jepara', 1),
(2003, 1517, 'Weleri Kendal', 1),
(2004, 1517, 'Weru Sukoharjo', 1),
(2005, 1517, 'Windusari Magelang', 1),
(2006, 1517, 'Winong Pati', 1),
(2007, 1517, 'Wiradesa Kajen', 1),
(2008, 1517, 'Wirosari Purwodadi', 1),
(2009, 1517, 'Wonoboyo Temanggung', 1),
(2010, 1517, 'Wonogiri Kab. Wonogiri', 1),
(2011, 1517, 'Wonokerto Kajen', 1),
(2012, 1517, 'Wonopringgo Kajen', 1),
(2013, 1517, 'Wonosalam Demak', 1),
(2014, 1517, 'Wonosari Brebes', 1),
(2015, 1517, 'Wonosari Klaten', 1),
(2016, 1517, 'Wonosegoro Boyolali', 1),
(2017, 1517, 'Wonosobo', 1),
(2018, 1517, 'Wonotunggal Batang', 1),
(2019, 1517, 'Wuryantoro. Wonogiri', 1),
(2020, 1518, 'Ajung Jember', 1),
(2021, 1518, 'Ambulu Jember', 1),
(2022, 1518, 'Ambunten Sumenep', 1),
(2023, 1518, 'Ampelgading Kepanjen', 1),
(2024, 1518, 'Arjasa Jember', 1),
(2025, 1518, 'Arjasa Situbondo', 1),
(2026, 1518, 'Arjasa Sumenep', 1),
(2027, 1518, 'Arjosari Pacitan', 1),
(2028, 1518, 'Arosbaya Bangkalan', 1),
(2029, 1518, 'Asembagus Situbondo', 1),
(2030, 1518, 'Asemrowo Surabaya', 1),
(2031, 1518, 'Babadan Ponorogo', 1),
(2032, 1518, 'Babat Lamongan', 1),
(2033, 1518, 'Badegan Ponorogo', 1),
(2034, 1518, 'Bagor Nganjuk', 1),
(2035, 1518, 'Bakung Blitar', 1),
(2036, 1518, 'Balega Bangkalan', 1),
(2037, 1518, 'Balerejo Caruban', 1),
(2038, 1518, 'Balong Ponorogo', 1),
(2039, 1518, 'Balongbendo Sidoarjo', 1),
(2040, 1518, 'Balongpanggang Gresik', 1),
(2041, 1518, 'Balung Jember', 1),
(2042, 1518, 'Bancar Tuban', 1),
(2043, 1518, 'Bandar Pacitan', 1),
(2044, 1518, 'Bandarkedungmulyo Jombang', 1),
(2045, 1518, 'Bandung Tulungagung', 1),
(2046, 1518, 'Bangil Pasuruan', 1),
(2047, 1518, 'Bangilan Tuban', 1),
(2048, 1518, 'Bangkalan Kab. Bangkalan', 1),
(2049, 1518, 'Bangorejo Banyuwangi', 1),
(2050, 1518, 'Bangsal Mojokerto', 1),
(2051, 1518, 'Bangsalsari Jember', 1),
(2052, 1518, 'Bantaran Probolinggo', 1),
(2053, 1518, 'Bantur Kepanjen', 1),
(2054, 1518, 'Banyakan Kediri', 1),
(2055, 1518, 'Banyuanyar Probolinggo', 1),
(2056, 1518, 'Banyuates Sampang', 1),
(2057, 1518, 'Banyuglugur Situbondo', 1),
(2058, 1518, 'Banyuputih Situbondo', 1),
(2059, 1518, 'Banyuwangi Kab Banyuwangi', 1),
(2060, 1518, 'Barat Magetan', 1),
(2061, 1518, 'Bareng Jombang', 1),
(2062, 1518, 'Baron Nganjuk', 1),
(2063, 1518, 'Batang Batang Sumenep', 1),
(2064, 1518, 'Batu', 1),
(2065, 1518, 'Batuan Sumenep', 1),
(2066, 1518, 'Batumarmar Pamekasan', 1),
(2067, 1518, 'Batuputih Sumenep', 1),
(2068, 1518, 'Beji Pasuruan', 1),
(2069, 1518, 'Bendo Magetan', 1),
(2070, 1518, 'Bendungan Trenggalek', 1),
(2071, 1518, 'Benjeng Gresik', 1),
(2072, 1518, 'Benowo Surabaya', 1),
(2073, 1518, 'Berbek Nganjuk', 1),
(2074, 1518, 'Besuk Probolinggo', 1),
(2075, 1518, 'Besuki Situbondo', 1),
(2076, 1518, 'Besuki Tulungagung', 1),
(2077, 1518, 'Binakal Bondowoso', 1),
(2078, 1518, 'Binangun Blitar', 1),
(2079, 1518, 'Blimbing Malang', 1),
(2080, 1518, 'Blitar', 1),
(2081, 1518, 'Bluluk Lamongan', 1),
(2082, 1518, 'Bluto Sumenep', 1),
(2083, 1518, 'Bondowoso Kab Bondowoso', 1),
(2084, 1518, 'Boyolangu Tulungagung', 1),
(2085, 1518, 'Bringin Ngawi', 1),
(2086, 1518, 'Brondong Lamongan', 1),
(2087, 1518, 'Bubutan Surabaya', 1),
(2088, 1518, 'Buduran Sidoarjo', 1),
(2089, 1518, 'Bugulkidul Pasuruan', 1),
(2090, 1518, 'Bulak Surabaya', 1),
(2091, 1518, 'Bululawang Kepanjen', 1),
(2092, 1518, 'Bumiaji Batu', 1),
(2093, 1518, 'Bungah Gresik', 1),
(2094, 1518, 'Bungatan Situbondo', 1),
(2095, 1518, 'Bungkal Ponorogo', 1),
(2096, 1518, 'Burneh Bangkalan', 1),
(2097, 1518, 'Camplong Sampang', 1),
(2098, 1518, 'Campurdarat Tulungagung', 1),
(2099, 1518, 'Candi Sidoarjo', 1),
(2100, 1518, 'Candipuro Lumajang', 1),
(2101, 1518, 'Caruban Kab. Madiun', 1),
(2102, 1518, 'Cerme Gresik', 1),
(2103, 1518, 'Cermee Bondowoso', 1),
(2104, 1518, 'Cluring Banyuwangi', 1),
(2105, 1518, 'Curahdami Bondowoso', 1),
(2106, 1518, 'Dagangan Caruban', 1),
(2107, 1518, 'Dampit Kepanjen', 1),
(2108, 1518, 'Dasuk Sumenep', 1),
(2109, 1518, 'Dau Kepanjen', 1),
(2110, 1518, 'Dawarblandong Mojokerto', 1),
(2111, 1518, 'Deket Lamongan', 1),
(2112, 1518, 'Diwek Jombang', 1),
(2113, 1518, 'Dlangu Mojokerto', 1),
(2114, 1518, 'Doko Blitar', 1),
(2115, 1518, 'Dolopo Caruban', 1),
(2116, 1518, 'Dongko Trenggalek', 1),
(2117, 1518, 'Donomulyo Kepanjen', 1),
(2118, 1518, 'Donorojo Pacitan', 1),
(2119, 1518, 'Dringu Probolinggo', 1),
(2120, 1518, 'Driyorejo Gresik', 1),
(2121, 1518, 'Duduksampeyan Gresik', 1),
(2122, 1518, 'Dukuh Pakis Surabaya', 1),
(2123, 1518, 'Dukun Gresik', 1),
(2124, 1518, 'Dungkek Sumenep', 1),
(2125, 1518, 'Dupok Probolinggo', 1),
(2126, 1518, 'Durenan Trenggalek', 1),
(2127, 1518, 'Gading Probolinggo', 1),
(2128, 1518, 'Gadingrejo Pasuruan', 1),
(2129, 1518, 'Galis Bangkalan', 1),
(2130, 1518, 'Galis Pamekasan', 1),
(2131, 1518, 'Gambiran Banyuwangi', 1),
(2132, 1518, 'Gampengrejo Kediri', 1),
(2133, 1518, 'Ganding Sumenep', 1),
(2134, 1518, 'Gandusari Blitar', 1),
(2135, 1518, 'Gandusari Trenggalek', 1),
(2136, 1518, 'Gapura Sumenep', 1),
(2137, 1518, 'Garum Blitar', 1),
(2138, 1518, 'Gayam Sumenep', 1),
(2139, 1518, 'Gayungan Surabaya', 1),
(2140, 1518, 'Gedangan Kepanjen', 1),
(2141, 1518, 'Gedangan Sidoarjo', 1),
(2142, 1518, 'Gedeg Mojokerto', 1),
(2143, 1518, 'Geger Bangkalan', 1),
(2144, 1518, 'Geger Caruban', 1),
(2145, 1518, 'Gemarang Caruban', 1),
(2146, 1518, 'Gempol Pasuruan', 1),
(2147, 1518, 'Gending Probolinggo', 1),
(2148, 1518, 'Geneng Ngawi', 1),
(2149, 1518, 'Genteng Banyuwangi', 1),
(2150, 1518, 'Genteng Surabaya', 1),
(2151, 1518, 'Giligenting Sumenep', 1),
(2152, 1518, 'Giri Banyuwangi', 1),
(2153, 1518, 'Glagah Banyuwangi', 1),
(2154, 1518, 'Glagah Lamongan', 1),
(2155, 1518, 'Glenmore Banyuwangi', 1),
(2156, 1518, 'Gondang Mojokerto', 1),
(2157, 1518, 'Gondang Nganjuk', 1),
(2158, 1518, 'Gondang Tulungagung', 1),
(2159, 1518, 'Gondanglegi Kepanjen', 1),
(2160, 1518, 'Gondangwetan Pasuruan', 1),
(2161, 1518, 'Grabagan Tuban', 1),
(2162, 1518, 'Grati Pasuruan', 1),
(2163, 1518, 'Gresik Kab. Gresik', 1),
(2164, 1518, 'Grogol Kediri', 1),
(2165, 1518, 'Grujugan Bondowoso', 1),
(2166, 1518, 'Gubeng Surabaya', 1),
(2167, 1518, 'Gucialit Lumajang', 1),
(2168, 1518, 'Gudo Jombang', 1),
(2169, 1518, 'Guluk Guluk Sumenep', 1),
(2170, 1518, 'Gumukmas Jember', 1),
(2171, 1518, 'Gununganyar Surabaya', 1),
(2172, 1518, 'Gurah Kediri', 1),
(2173, 1518, 'Jabon Sidoarjo', 1),
(2174, 1518, 'Jabung Kepanjen', 1),
(2175, 1518, 'Jambangan Surabaya', 1),
(2176, 1518, 'Jambon Ponorogo', 1),
(2177, 1518, 'Jangkar Situbondo', 1),
(2178, 1518, 'Jatibanteng Situbondo', 1),
(2179, 1518, 'Jatikalen Nganjuk', 1),
(2180, 1518, 'Jatirejo Mojokerto', 1),
(2181, 1518, 'Jatirogo Tuban', 1),
(2182, 1518, 'Jatiroto Lumajang', 1),
(2183, 1518, 'Jelbuk Jember', 1),
(2184, 1518, 'Jember', 1),
(2185, 1518, 'Jenangan Ponorogo', 1),
(2186, 1518, 'Jenggawah Jember', 1),
(2187, 1518, 'Jenu Tuban', 1),
(2188, 1518, 'Jetis Mojokerto', 1),
(2189, 1518, 'Jetis Ponorogo', 1),
(2190, 1518, 'Jiwan Caruban', 1),
(2191, 1518, 'Jogorogo Ngawi', 1),
(2192, 1518, 'Jogoroto Jombang', 1),
(2193, 1518, 'Jombang Jember', 1),
(2194, 1518, 'Jombang Kab. Jombang', 1),
(2195, 1518, 'Jrengik Sampang', 1),
(2196, 1518, 'Junrejo Batu', 1),
(2197, 1518, 'Kabat Banyuwangi', 1),
(2198, 1518, 'Kabuh Jombang', 1),
(2199, 1518, 'Kademangan Blitar', 1),
(2200, 1518, 'Kademangan Probolinggo', 1),
(2201, 1518, 'Kadur Pamekasan', 1),
(2202, 1518, 'Kalianget Sumenep', 1),
(2203, 1518, 'Kalibaru Banyuwangi', 1),
(2204, 1518, 'Kalidawir Tulungagung', 1),
(2205, 1518, 'Kalipare Kepanjen', 1),
(2206, 1518, 'Kalipuro Banyuwangi', 1),
(2207, 1518, 'Kalisat Jember', 1),
(2208, 1518, 'Kalitengah Lamongan', 1),
(2209, 1518, 'Kaliwates Jember', 1),
(2210, 1518, 'Kamal Bangkalan', 1),
(2211, 1518, 'Kampak Trenggalek', 1),
(2212, 1518, 'Kandangan Kediri', 1),
(2213, 1518, 'Kandat Kediri', 1),
(2214, 1518, 'Kangean Sumenep', 1),
(2215, 1518, 'Kanigaran Probolinggo', 1),
(2216, 1518, 'Kanigoro Blitar', 1),
(2217, 1518, 'Kapongan Situbondo', 1),
(2218, 1518, 'Karangan Trenggalek', 1),
(2219, 1518, 'Karanganyar Ngawi', 1),
(2220, 1518, 'Karangbinangun Lamongan', 1),
(2221, 1518, 'Karanggeneng Lamongan', 1),
(2222, 1518, 'Karangjati Ngawi', 1),
(2223, 1518, 'Karangpilang Surabaya', 1),
(2224, 1518, 'Karangploso Kepanjen', 1),
(2225, 1518, 'Karangrejo Magetan', 1),
(2226, 1518, 'Karangrejo Tulungagung', 1),
(2227, 1518, 'Karas Magetan', 1),
(2228, 1518, 'Kare Caruban', 1),
(2229, 1518, 'Kartoharjo Madiun', 1),
(2230, 1518, 'Kartoharjo Magetan', 1),
(2231, 1518, 'Kasembon Kepanjen', 1),
(2232, 1518, 'Kauman Ponorogo', 1),
(2233, 1518, 'Kauman Tulungagung', 1),
(2234, 1518, 'Kawedanan Magetan', 1),
(2235, 1518, 'Kayen Kidul Kediri', 1),
(2236, 1518, 'Kebomas Gresik', 1),
(2237, 1518, 'Kebonagung Pacitan', 1),
(2238, 1518, 'Kebonsari Caruban', 1),
(2239, 1518, 'Kedamean Gresik', 1),
(2240, 1518, 'Kedawung Pasuruan', 1),
(2241, 1518, 'Kediri', 1),
(2242, 1518, 'Kedundung Sampang', 1),
(2243, 1518, 'Kedunggalar Ngawi', 1),
(2244, 1518, 'Kedungjajang Lumajang', 1),
(2245, 1518, 'Kedungkandang Malang', 1),
(2246, 1518, 'Kedungpring Lamongan', 1),
(2247, 1518, 'Kedungwaru Tulungagung', 1),
(2248, 1518, 'Kejayaan Pasuruan', 1),
(2249, 1518, 'Kembangbahu Lamongan', 1),
(2250, 1518, 'Kemlagi Mojokerto', 1),
(2251, 1518, 'Kencong Jember', 1),
(2252, 1518, 'Kendal Ngawi', 1),
(2253, 1518, 'Kendit Situbondo', 1),
(2254, 1518, 'Kendungan Ngawi', 1),
(2255, 1518, 'Kenduruan Tuban', 1),
(2256, 1518, 'Kenjeran Surabaya', 1),
(2257, 1518, 'Kepanjen Kab Malang', 1),
(2258, 1518, 'Kepanjenkidul Blitar', 1),
(2259, 1518, 'Kepung Kediri', 1),
(2260, 1518, 'Kerek Tuban', 1),
(2261, 1518, 'Kertosono Nganjuk', 1),
(2262, 1518, 'Kesamben Blitar', 1),
(2263, 1518, 'Kesamben Jombang', 1),
(2264, 1518, 'Ketapang Sampang', 1),
(2265, 1518, 'Klabang Bondowoso', 1),
(2266, 1518, 'Klakah Lumajang', 1),
(2267, 1518, 'Klampis Bangkalan', 1),
(2268, 1518, 'Klojen Malang', 1),
(2269, 1518, 'Kokop Bangkalan', 1),
(2270, 1518, 'Konang Bangkalan', 1),
(2271, 1518, 'Kotaanyar Probolinggo', 1),
(2272, 1518, 'Kraksaan Probolinggo', 1),
(2273, 1518, 'Kras Kediri', 1),
(2274, 1518, 'Kraton Pasuruan', 1),
(2275, 1518, 'Krejengan Probolinggo', 1),
(2276, 1518, 'Krembangan Surabaya', 1),
(2277, 1518, 'Krembung Sidoarjo', 1),
(2278, 1518, 'Krian Kab. Sidoarjo', 1),
(2279, 1518, 'Kromengan Kepanjen', 1),
(2280, 1518, 'Krucil Probolinggo', 1),
(2281, 1518, 'Kudu Jombang', 1),
(2282, 1518, 'Kunir Lumajang', 1),
(2283, 1518, 'Kunjang Kediri', 1),
(2284, 1518, 'Kuripan Probolinggo', 1),
(2285, 1518, 'Kutorejo Mojokerto', 1),
(2286, 1518, 'Kwadungan Ngawi', 1),
(2287, 1518, 'Kwanyar Bangkalan', 1),
(2288, 1518, 'Labang Bangkalan', 1),
(2289, 1518, 'Lakarsantri Surabaya', 1),
(2290, 1518, 'Lamongan Kab. Lamongan', 1),
(2291, 1518, 'Larangan Pamekasan', 1),
(2292, 1518, 'Laren Lamongan', 1),
(2293, 1518, 'Lawang Kepanjen', 1),
(2294, 1518, 'Leces Probolinggo', 1),
(2295, 1518, 'Ledokombo Jember', 1),
(2296, 1518, 'Lekok Pasuruan', 1),
(2297, 1518, 'Lembeyan Magetan', 1),
(2298, 1518, 'Lengkong Nganjuk', 1),
(2299, 1518, 'Lenteng Sumenep', 1),
(2300, 1518, 'Licin Banyuwangi', 1),
(2301, 1518, 'Loceret Nganjuk', 1),
(2302, 1518, 'Lowokwaru Malang', 1),
(2303, 1518, 'Lumajang Kab. Lumajang', 1),
(2304, 1518, 'Lumbang Pasuruan', 1),
(2305, 1518, 'Lumbang Probolinggo', 1),
(2306, 1518, 'Madiun', 1),
(2307, 1518, 'Madiun Caruban', 1),
(2308, 1518, 'Maduran Lamongan', 1),
(2309, 1518, 'Maesan Bondowoso', 1),
(2310, 1518, 'Magersari Mojokerto', 1),
(2311, 1518, 'Magetan Kab Magetan', 1),
(2312, 1518, 'Malang', 1),
(2313, 1518, 'Manding Sumenep', 1),
(2314, 1518, 'Mangaran Situbondo', 1),
(2315, 1518, 'Manguharjo Madiun', 1),
(2316, 1518, 'Mantingan Ngawi', 1),
(2317, 1518, 'Mantup Lamongan', 1),
(2318, 1518, 'Manyar Gresik', 1),
(2319, 1518, 'Maospati Magetan', 1),
(2320, 1518, 'Maron Probolinggo', 1),
(2321, 1518, 'Masalembu Sumenep', 1),
(2322, 1518, 'Mayang Jember', 1),
(2323, 1518, 'Mayangan Probolinggo', 1),
(2324, 1518, 'Megaluh Jombang', 1),
(2325, 1518, 'Mejayan Caruban', 1),
(2326, 1518, 'Menganti Gresik', 1),
(2327, 1518, 'Merakkurak Tuban', 1),
(2328, 1518, 'Mlandingan Situbondo', 1),
(2329, 1518, 'Mlarak Ponorogo', 1),
(2330, 1518, 'Modo Lamongan', 1),
(2331, 1518, 'Modung Bangkalan', 1),
(2332, 1518, 'Mojo Kediri', 1),
(2333, 1518, 'Mojoagung Jombang', 1),
(2334, 1518, 'Mojoanyar Mojokerto', 1),
(2335, 1518, 'Mojokerto', 1),
(2336, 1518, 'Mojoroto Kediri', 1),
(2337, 1518, 'Mojosari Mojokerto', 1),
(2338, 1518, 'Mojowarno Jombang', 1),
(2339, 1518, 'Montong Tuban', 1),
(2340, 1518, 'Mulyorejo Surabaya', 1),
(2341, 1518, 'Mumbulsari Jember', 1),
(2342, 1518, 'Muncar Banyuwangi', 1),
(2343, 1518, 'Munjungan Trenggalek', 1),
(2344, 1518, 'Nawangan Pacitan', 1),
(2345, 1518, 'Ngadiluwih Kediri', 1),
(2346, 1518, 'Ngadirojo Pacitan', 1),
(2347, 1518, 'Ngajum Kepanjen', 1),
(2348, 1518, 'Ngancar Kediri', 1),
(2349, 1518, 'Nganjuk Kab. Nganjuk', 1),
(2350, 1518, 'Ngantang Kepanjen', 1),
(2351, 1518, 'Ngantru Tulungagung', 1),
(2352, 1518, 'Ngariboyo Magetan', 1),
(2353, 1518, 'Ngawi Kab Ngawi', 1),
(2354, 1518, 'Ngebel Ponorogo', 1),
(2355, 1518, 'Ngetos Nganjuk', 1),
(2356, 1518, 'Ngimbang Lamongan', 1),
(2357, 1518, 'Nglegok Blitar', 1),
(2358, 1518, 'Ngluyu Nganjuk', 1),
(2359, 1518, 'Ngoro Jombang', 1),
(2360, 1518, 'Ngoro Mojokerto', 1),
(2361, 1518, 'Ngrambe Ngawi', 1),
(2362, 1518, 'Ngrayun Ponorogo', 1),
(2363, 1518, 'Ngronggot Nganjuk', 1),
(2364, 1518, 'Nguling Pasuruan', 1),
(2365, 1518, 'Nguntoronadi Magetan', 1),
(2366, 1518, 'Nguntut Tulungagung', 1),
(2367, 1518, 'Ngusikan  Jombang', 1),
(2368, 1518, 'Nonggunong Sumenep', 1),
(2369, 1518, 'Nongko Jajar Pasuruan', 1),
(2370, 1518, 'Omben Sampang', 1),
(2371, 1518, 'Pabean Cantikan Surabaya', 1),
(2372, 1518, 'Pace Nganjuk', 1),
(2373, 1518, 'Pacet Mojokerto', 1),
(2374, 1518, 'Paciran Lamongan', 1),
(2375, 1518, 'Pacitan Kab Pacitan', 1),
(2376, 1518, 'Padang Lumajang', 1),
(2377, 1518, 'Padas Ngawi', 1),
(2378, 1518, 'Pademawu Pamekasan', 1),
(2379, 1518, 'Pagak Kepanjen', 1),
(2380, 1518, 'Pagelaran Kepanjen', 1),
(2381, 1518, 'Pagerwojo Tulungagung', 1),
(2382, 1518, 'Pagu Kediri', 1),
(2383, 1518, 'Paiton Probolinggo', 1),
(2384, 1518, 'Pajarakan Probolinggo', 1),
(2385, 1518, 'Pakal Surabaya', 1),
(2386, 1518, 'Pakel Tulungagung', 1),
(2387, 1518, 'Pakem Bondowoso', 1),
(2388, 1518, 'Pakis Kepanjen', 1),
(2389, 1518, 'Pakisaji Kepanjen', 1),
(2390, 1518, 'Pakong Pamekasan', 1),
(2391, 1518, 'Pakuniran Probolinggo', 1),
(2392, 1518, 'Pakusari Jember', 1),
(2393, 1518, 'Palang Tuban', 1),
(2394, 1518, 'Palengaan Pamekasan', 1),
(2395, 1518, 'Pamekasan Kab. Pamekasan', 1),
(2396, 1518, 'Panarukan Situbondo', 1),
(2397, 1518, 'Panceng Gresik', 1),
(2398, 1518, 'Pandaan', 1),
(2399, 1518, 'Panekan Magetan', 1),
(2400, 1518, 'Panggul Trenggalek', 1),
(2401, 1518, 'Panggungrejo Blitar', 1),
(2402, 1518, 'Pangkur Ngawi', 1),
(2403, 1518, 'Panji Situbondo', 1),
(2404, 1518, 'Panti Jember', 1),
(2405, 1518, 'Papar Kediri', 1),
(2406, 1518, 'Parajurit Kulon Mojokerto', 1),
(2407, 1518, 'Parang Magetan', 1),
(2408, 1518, 'Pare Kediri', 1),
(2409, 1518, 'Parengan Tuban', 1),
(2410, 1518, 'Paron Ngawi', 1),
(2411, 1518, 'Pasean Pamekasan', 1),
(2412, 1518, 'Pasirian Lumajang', 1),
(2413, 1518, 'Pasongsongan Sumenep', 1),
(2414, 1518, 'Pasrepan Pasuruan', 1),
(2415, 1518, 'Pasrujambe Lumajang', 1),
(2416, 1518, 'Pasuruan', 1),
(2417, 1518, 'Patianrowo Nganjuk', 1),
(2418, 1518, 'Patrang Jember', 1),
(2419, 1518, 'Pegantenan Pamekasan', 1),
(2420, 1518, 'Perak Jombang', 1),
(2421, 1518, 'Pesanggaran Banyuwangi', 1),
(2422, 1518, 'Pesantren Kediri', 1),
(2423, 1518, 'Peterongan Jombang', 1),
(2424, 1518, 'Pilangkenceng Caruban', 1),
(2425, 1518, 'Pitu Ngawi', 1),
(2426, 1518, 'Plandaan Jombang', 1),
(2427, 1518, 'Plaosan Magetan', 1),
(2428, 1518, 'Plemahan Kediri', 1),
(2429, 1518, 'Ploso Jombang', 1),
(2430, 1518, 'Plosoklaten Kediri', 1),
(2431, 1518, 'Plumbang Tuban', 1),
(2432, 1518, 'Pogalan Trenggalek', 1),
(2433, 1518, 'Pohjentrek Pasuruan', 1),
(2434, 1518, 'Poncokusumo Kepanjen', 1),
(2435, 1518, 'Poncol Magetan', 1),
(2436, 1518, 'Ponggok Blitar', 1),
(2437, 1518, 'Ponorogo Kab Ponorogo', 1),
(2438, 1518, 'Porong Sidoarjo', 1),
(2439, 1518, 'Pragaan Sumenep', 1),
(2440, 1518, 'Prajekan Bondowoso', 1),
(2441, 1518, 'Prambon Nganjuk', 1),
(2442, 1518, 'Prambon Sidoarjo', 1),
(2443, 1518, 'Prigen Pasuruan', 1),
(2444, 1518, 'Pringkuku Pacitan', 1),
(2445, 1518, 'Probolinggo', 1),
(2446, 1518, 'Pronojiwo Lumajang', 1),
(2447, 1518, 'Proppo Pamekasan', 1),
(2448, 1518, 'Pucanglaban Tulungagung', 1),
(2449, 1518, 'Pucuk Lamongan', 1),
(2450, 1518, 'Pudak Ponorogo', 1),
(2451, 1518, 'Puger Jember', 1),
(2452, 1518, 'Pujer Bondowoso', 1),
(2453, 1518, 'Pujon Kepanjen', 1),
(2454, 1518, 'Pule Trenggalek', 1),
(2455, 1518, 'Pulung Ponorogo', 1),
(2456, 1518, 'Puncu Kediri', 1),
(2457, 1518, 'Pungging Mojokerto', 1),
(2458, 1518, 'Punung Pacitan', 1),
(2459, 1518, 'Puri Mojokerto', 1),
(2460, 1518, 'Purwoasri Kediri', 1),
(2461, 1518, 'Purwodadi Pasuruan', 1),
(2462, 1518, 'Purwoharjo Banyuwangi', 1),
(2463, 1518, 'Purworejo Pasuruan', 1),
(2464, 1518, 'Purwosari Pasuruan', 1),
(2465, 1518, 'Puspo Pasuruan', 1),
(2466, 1518, 'Raas Sumenep', 1),
(2467, 1518, 'Rambipuji Jember', 1),
(2468, 1518, 'Randuagung Lumajang', 1),
(2469, 1518, 'Ranuyoso Lumajang', 1),
(2470, 1518, 'Rejoso Nganjuk', 1),
(2471, 1518, 'Rejoso Pasuruan', 1),
(2472, 1518, 'Rejotangan Tulungagung', 1),
(2473, 1518, 'Rembang Pasuruan', 1),
(2474, 1518, 'Rengel Tuban', 1),
(2475, 1518, 'Ringinrejo Kediri', 1),
(2476, 1518, 'Robatal Sampang', 1),
(2477, 1518, 'Rogojampi Banyuwangi', 1),
(2478, 1518, 'Rowokangkung Lumajang', 1),
(2479, 1518, 'Rubaru Sumenep', 1),
(2480, 1518, 'Rungkut Surabaya', 1),
(2481, 1518, 'Sambeng Lamongan', 1),
(2482, 1518, 'Sambikerep Surabaya', 1),
(2483, 1518, 'Sambit Ponorogo', 1),
(2484, 1518, 'Sampang Kab. Sampang', 1),
(2485, 1518, 'Sampung Ponorogo', 1),
(2486, 1518, 'Sanankulon Blitar', 1),
(2487, 1518, 'Sananwetan Blitar', 1),
(2488, 1518, 'Sangkapura Gresik', 1),
(2489, 1518, 'Sapeken Sumenep', 1),
(2490, 1518, 'Saradan Caruban', 1),
(2491, 1518, 'Sarirejo Lamongan', 1),
(2492, 1518, 'Saronggi Sumenep', 1),
(2493, 1518, 'Sawahan Caruban', 1),
(2494, 1518, 'Sawahan Nganjuk', 1),
(2495, 1518, 'Sawahan Surabaya', 1),
(2496, 1518, 'Sawoo Ponorogo', 1),
(2497, 1518, 'Sedati Sidoarjo', 1),
(2498, 1518, 'Sekaran Lamongan', 1),
(2499, 1518, 'Selopuro Blitar', 1),
(2500, 1518, 'Selorejo Blitar', 1),
(2501, 1518, 'Semampir Surabaya', 1),
(2502, 1518, 'Semanding Tuban', 1),
(2503, 1518, 'Semboro Jember', 1),
(2504, 1518, 'Semen Kediri', 1),
(2505, 1518, 'Sempol Bondowoso', 1),
(2506, 1518, 'Sempu Banyuwangi', 1),
(2507, 1518, 'Sendang Tulungagung', 1),
(2508, 1518, 'Senduro Lumajang', 1),
(2509, 1518, 'Senori Tuban', 1),
(2510, 1518, 'Sepulu Bangkalan', 1),
(2511, 1518, 'Sidayu Gresik', 1),
(2512, 1518, 'Sidoarjo Kab. Sidoarjo', 1),
(2513, 1518, 'Siliragung Banyuwangi', 1),
(2514, 1518, 'Silo Jember', 1),
(2515, 1518, 'Siman Ponorogo', 1),
(2516, 1518, 'Simokerto  Surabaya', 1),
(2517, 1518, 'Sine Ngawi', 1),
(2518, 1518, 'Singgahan Tuban', 1),
(2519, 1518, 'Singojuruh Banyuwangi', 1),
(2520, 1518, 'Singosari Kepanjen', 1),
(2521, 1518, 'Situbondo Kab. Situbondo', 1),
(2522, 1518, 'Slahung Ponorogo', 1),
(2523, 1518, 'Socah Bangkalan', 1),
(2524, 1518, 'Soko Tuban', 1),
(2525, 1518, 'Sokobanah Sampang', 1),
(2526, 1518, 'Solokuro Lamongan', 1),
(2527, 1518, 'Songgon Banyuwangi', 1),
(2528, 1518, 'Sooko Mojokerto', 1),
(2529, 1518, 'Sooko Ponorogo', 1),
(2530, 1518, 'Srengat Blitar', 1),
(2531, 1518, 'Sreseh Sampang', 1),
(2532, 1518, 'Srono Banyuwangi', 1),
(2533, 1518, 'Suboh Situbondo', 1),
(2534, 1518, 'Sudimoro Pacitan', 1),
(2535, 1518, 'Sugio Lamongan', 1),
(2536, 1518, 'Sukapura Probolinggo', 1),
(2537, 1518, 'Sukodadi Lamongan', 1),
(2538, 1518, 'Sukodono Lumajang', 1),
(2539, 1518, 'Sukodono Sidoarjo', 1),
(2540, 1518, 'Sukolilo  Surabaya', 1),
(2541, 1518, 'Sukomanunggal  Surabaya', 1),
(2542, 1518, 'Sukomoro Magetan', 1),
(2543, 1518, 'Sukomoro Nganjuk', 1),
(2544, 1518, 'Sukorambi Jember', 1),
(2545, 1518, 'Sukorame Lamongan', 1),
(2546, 1518, 'Sukorejo Blitar', 1),
(2547, 1518, 'Sukorejo Pasuruan', 1),
(2548, 1518, 'Sukorejo Ponorogo', 1),
(2549, 1518, 'Sukosari Bondowoso', 1),
(2550, 1518, 'Sukowono Jember', 1),
(2551, 1518, 'Sukun Malang', 1),
(2552, 1518, 'Sumber Probolinggo', 1),
(2553, 1518, 'Sumberasih Probolinggo', 1),
(2554, 1518, 'Sumberbaru Jember', 1),
(2555, 1518, 'Sumbergempol Tulungagung', 1),
(2556, 1518, 'Sumberjambe Jember', 1),
(2557, 1518, 'Sumbermalang Situbondo', 1),
(2558, 1518, 'Sumbermanjingwetan Kepanjen', 1),
(2559, 1518, 'Sumberpucung Kepanjen', 1),
(2560, 1518, 'Sumbersari Jember', 1),
(2561, 1518, 'Sumbersoko Lumajang', 1),
(2562, 1518, 'Sumberwringin Bondowoso', 1),
(2563, 1518, 'Sumenep Kab. Sumenep', 1),
(2564, 1518, 'Sumobito Jombang', 1),
(2565, 1518, 'Surabaya', 1),
(2566, 1518, 'Suruh Trenggalek', 1),
(2567, 1518, 'Sutojayan Blitar', 1),
(2568, 1518, 'Tajinan Kepanjen', 1),
(2569, 1518, 'Takeran Magetan', 1),
(2570, 1518, 'Talango Sumenep', 1),
(2571, 1518, 'Talun Blitar', 1),
(2572, 1518, 'Taman Kab. Sidoarjo', 1),
(2573, 1518, 'Taman Madiun', 1),
(2574, 1518, 'Tamanan Bondowoso', 1),
(2575, 1518, 'Tambak Gresik', 1),
(2576, 1518, 'Tambakboyo Tuban', 1),
(2577, 1518, 'Tambaksari Surabaya', 1),
(2578, 1518, 'Tambelangan Sampang', 1),
(2579, 1518, 'Tanahmerah Bangkalan', 1),
(2580, 1518, 'Tandes  Surabaya', 1),
(2581, 1518, 'Tanggul Jember', 1),
(2582, 1518, 'Tanggulangin Sidoarjo', 1),
(2583, 1518, 'Tanggung Gunung Tulungagung', 1),
(2584, 1518, 'Tanjunganom Nganjuk', 1),
(2585, 1518, 'Tanjungbumi Bangkalan', 1),
(2586, 1518, 'Tapen Bondowoso', 1),
(2587, 1518, 'Tarik Sidoarjo', 1),
(2588, 1518, 'Tarokan Kediri', 1),
(2589, 1518, 'Tegalampel Bondowoso', 1),
(2590, 1518, 'Tegaldlimo Banyuwangi', 1),
(2591, 1518, 'Tegalombo Pacitan', 1),
(2592, 1518, 'Tegalsari  Surabaya', 1),
(2593, 1518, 'Tegalsari Banyuwangi', 1),
(2594, 1518, 'Tegalsiwalan Probolinggo', 1),
(2595, 1518, 'Tekung Lumajang', 1),
(2596, 1518, 'Tembelang Jombang', 1),
(2597, 1518, 'Tempeh Lumajang', 1),
(2598, 1518, 'Tempurejo Jember', 1),
(2599, 1518, 'Tempursari Lumajang', 1),
(2600, 1518, 'Tenggarang Bondowoso', 1),
(2601, 1518, 'Tenggilis Mejoyo Surabaya', 1),
(2602, 1518, 'Tikung Lamongan', 1),
(2603, 1518, 'Tiris Probolinggo', 1),
(2604, 1518, 'Tirtoyudo Kepanjen', 1),
(2605, 1518, 'Tlanakan Pamekasan', 1),
(2606, 1518, 'Tlogosari Bondowoso', 1),
(2607, 1518, 'Tongas Probolinggo', 1),
(2608, 1518, 'Torjun Sampang', 1),
(2609, 1518, 'Tosari Pasuruan', 1),
(2610, 1518, 'Tragah Bangkalan', 1),
(2611, 1518, 'Trawas Mojokerto', 1),
(2612, 1518, 'Trenggalek Kab. Trenggalek', 1),
(2613, 1518, 'Trowulan Mojokerto', 1),
(2614, 1518, 'Tuban Kab. Tuban', 1),
(2615, 1518, 'Tugu Trenggalek', 1),
(2616, 1518, 'Tulakan Pacitan', 1),
(2617, 1518, 'Tulangan Sidoarjo', 1),
(2618, 1518, 'Tulungagung Kab. Tulungagung', 1),
(2619, 1518, 'Tumpang Kepanjen', 1),
(2620, 1518, 'Turen Kepanjen', 1),
(2621, 1518, 'Turi Lamongan', 1),
(2622, 1518, 'Tutur Pasuruan', 1),
(2623, 1518, 'Udanawu Blitar', 1),
(2624, 1518, 'Ujungpangkah Gresik', 1),
(2625, 1518, 'Umbulsari Jember', 1),
(2626, 1518, 'Wagir Kepanjen', 1),
(2627, 1518, 'Wajak Kepanjen', 1),
(2628, 1518, 'Waru Pamekasan', 1),
(2629, 1518, 'Waru Sidoarjo', 1),
(2630, 1518, 'Wates Blitar', 1),
(2631, 1518, 'Wates Kediri', 1),
(2632, 1518, 'Watulimo Trenggalek', 1),
(2633, 1518, 'Widang Tuban', 1),
(2634, 1518, 'Widodaren Ngawi', 1),
(2635, 1518, 'Wilangan Nganjuk', 1),
(2636, 1518, 'Winongan Pasuruan', 1),
(2637, 1518, 'Wiyung  Surabaya', 1),
(2638, 1518, 'Wlingi Blitar', 1),
(2639, 1518, 'Wongsorejo Banyuwangi', 1),
(2640, 1518, 'Wonoasih Probolinggo', 1),
(2641, 1518, 'Wonoasri Caruban', 1),
(2642, 1518, 'Wonoayu Sidoarjo', 1),
(2643, 1518, 'Wonocolo  Surabaya', 1),
(2644, 1518, 'Wonodadi Blitar', 1),
(2645, 1518, 'Wonokromo Surabaya', 1),
(2646, 1518, 'Wonomerto Probolinggo', 1),
(2647, 1518, 'Wonorejo Pasuruan', 1),
(2648, 1518, 'Wonosalam Jombang', 1),
(2649, 1518, 'Wonosari Bondowoso', 1),
(2650, 1518, 'Wonosari Kepanjen', 1),
(2651, 1518, 'Wonotirto Blitar', 1),
(2652, 1518, 'Wringin Bondowoso', 1),
(2653, 1518, 'Wringinanom Gresik', 1),
(2654, 1518, 'Wuluhan Jember', 1),
(2655, 1518, 'Wungu Caruban', 1),
(2656, 1518, 'Yosowilangun Lumajang', 1),
(2657, 1519, 'Air Besar Ngabang', 1),
(2658, 1519, 'Air Upas  Ketapang', 1),
(2659, 1519, 'Ambalau Nanga Pinoh', 1),
(2660, 1519, 'Ambalau Sintang', 1),
(2661, 1519, 'Badau Putussibau', 1),
(2662, 1519, 'Balai Sanggau', 1),
(2663, 1519, 'Batang Lupar Putussibau', 1),
(2664, 1519, 'Batu Ampar Kubu Raya', 1),
(2665, 1519, 'Batu Datu  Putussibau', 1),
(2666, 1519, 'Beduwai Sanggau', 1),
(2667, 1519, 'Belimbing Nanga Pinoh', 1),
(2668, 1519, 'Belitang Hilir Sekadau', 1),
(2669, 1519, 'Belitang Hulu Sekadau', 1),
(2670, 1519, 'Belitang Sekadau', 1),
(2671, 1519, 'Bengkayang Kab Bengkayang', 1),
(2672, 1519, 'Benua Kayong  Ketapang', 1),
(2673, 1519, 'Binjai Hulu  Sintang', 1),
(2674, 1519, 'Bonti Sanggau', 1),
(2675, 1519, 'Boyan Tanjung  Putussibau', 1),
(2676, 1519, 'Bunut Hilir Putussibau', 1),
(2677, 1519, 'Bunut Hulu Putussibau', 1),
(2678, 1519, 'Dedai Sintang', 1),
(2679, 1519, 'Delta Pawan  Ketapang', 1),
(2680, 1519, 'Ella Hilir Nanga Pinoh', 1),
(2681, 1519, 'Embaloh Hilir Putussibau', 1),
(2682, 1519, 'Embaloh Hulu Putussibau', 1),
(2683, 1519, 'Embau  Putussibau', 1),
(2684, 1519, 'Empanang Putussibau', 1),
(2685, 1519, 'Entikong Sanggau', 1),
(2686, 1519, 'Galing Sambas', 1),
(2687, 1519, 'Hulu Gurung Putussibau', 1),
(2688, 1519, 'Hulu Sungai  Ketapang', 1),
(2689, 1519, 'Jagoi Babang Bengkayang', 1),
(2690, 1519, 'Jangkang Sanggau', 1),
(2691, 1519, 'Jawai Selatan Sambas', 1),
(2692, 1519, 'Jawai Sambas', 1),
(2693, 1519, 'Jelai Hulu Ketapang', 1),
(2694, 1519, 'Kalis  Putussibau', 1),
(2695, 1519, 'Kayan Hilir Sintang', 1),
(2696, 1519, 'Kayan Hulu Sintang', 1),
(2697, 1519, 'Kedamin  Putussibau', 1),
(2698, 1519, 'Kelam Permai  Sintang', 1),
(2699, 1519, 'Kembayan Sanggau', 1),
(2700, 1519, 'Kendawangan Ketapang', 1),
(2701, 1519, 'Ketapang Kab. Ketapang', 1),
(2702, 1519, 'Ketungau Hilir Sintang', 1),
(2703, 1519, 'Ketungau Hulu Sintang', 1),
(2704, 1519, 'Ketungau Tengah Sintang', 1),
(2705, 1519, 'Kuala Behe Ngabang', 1),
(2706, 1519, 'Kuala Mandor Kubu Raya', 1),
(2707, 1519, 'Kubu Raya Kab. Kubu Raya', 1),
(2708, 1519, 'Kubu Mempawah', 1),
(2709, 1519, 'Ledo Bengkayang', 1),
(2710, 1519, 'Manday Putussibau', 1),
(2711, 1519, 'Mandor Ngabang', 1),
(2712, 1519, 'Manis Mata Ketapang', 1),
(2713, 1519, 'Marau Ketapang', 1),
(2714, 1519, 'Matan Hilir Selatan  Ketapang', 1),
(2715, 1519, 'Matan Hilir Utara Ketapang', 1),
(2716, 1519, 'Meliau Sanggau', 1),
(2717, 1519, 'Mempawah Hulu Ngabang', 1),
(2718, 1519, 'Mempawah Kab Pontianak', 1),
(2719, 1519, 'Menjalin Ngabang', 1),
(2720, 1519, 'Mentebah  Putussibau', 1),
(2721, 1519, 'Menukung Nanga Pinoh', 1),
(2722, 1519, 'Menyuke Ngabang', 1),
(2723, 1519, 'Meranti Ngabang', 1),
(2724, 1519, 'Monterado Bengkayang', 1),
(2725, 1519, 'Muara Pawan  Ketapang', 1),
(2726, 1519, 'Mukok Sanggau', 1),
(2727, 1519, 'Nanga Mahap Sekadau', 1),
(2728, 1519, 'Nanga Pinoh Kab Melawi', 1),
(2729, 1519, 'Nanga Taman Sekadau', 1),
(2730, 1519, 'Nanga Tayap Ketapang', 1),
(2731, 1519, 'Ngabang Kab Landak', 1),
(2732, 1519, 'Noyan Sanggau', 1),
(2733, 1519, 'Paloh Sambas', 1),
(2734, 1519, 'Parindu Sanggau', 1),
(2735, 1519, 'Pemaham  Ketapang', 1),
(2736, 1519, 'Pemangkat Sambas', 1),
(2737, 1519, 'Pontianak', 1),
(2738, 1519, 'Pontianak Barat  Pontianak', 1),
(2739, 1519, 'Pontianak Kota  Pontianak', 1),
(2740, 1519, 'Pontianak Selatan  Pontianak', 1),
(2741, 1519, 'Pontianak Tenggara  Pontianak', 1),
(2742, 1519, 'Pontianak Timur/ Jungkat', 1),
(2743, 1519, 'Pontianak Utara Pontianak', 1),
(2744, 1519, 'Pulau Maya Karimata Sukadana', 1),
(2745, 1519, 'Puring Kencana  Putussibau', 1),
(2746, 1519, 'Putussibau Kab. Kapuas Hulu', 1),
(2747, 1519, 'Rasau Jaya Kubu Raya', 1),
(2748, 1519, 'Rasau Jaya Mempawah', 1),
(2749, 1519, 'Sajad Sambas', 1),
(2750, 1519, 'Sajingan Sambas', 1),
(2751, 1519, 'Salamantan Bengkayang', 1),
(2752, 1519, 'Sambas Kab Sambas', 1),
(2753, 1519, 'Sandai Ketapang', 1),
(2754, 1519, 'Sanggau Ledo Bengkayang', 1),
(2755, 1519, 'Sanggau Kab Sanggau', 1),
(2756, 1519, 'Sayan Nanga Pinoh', 1),
(2757, 1519, 'Sebangki Ngabang', 1),
(2758, 1519, 'Sebawi Sambas', 1),
(2759, 1519, 'Seberuang Putussibau', 1),
(2760, 1519, 'Sejangkung Sambas', 1),
(2761, 1519, 'Sekadau Hilir Kab Sekadau', 1),
(2762, 1519, 'Sekadau Hulu Sekadau', 1),
(2763, 1519, 'Sekayam Sanggau', 1),
(2764, 1519, 'Selakau Sambas', 1),
(2765, 1519, 'Selimbau Putussibau', 1),
(2766, 1519, 'Seluas Bengkayang', 1),
(2767, 1519, 'Semitau Putussibau', 1),
(2768, 1519, 'Semparuk Sambas', 1),
(2769, 1519, 'Sengah Temila Ngabang', 1),
(2770, 1519, 'Sepauk Sintang', 1);
INSERT INTO `oc_city` (`city_id`, `zone_id`, `name`, `status`) VALUES
(2771, 1519, 'Seponti Jaya Sukadana', 1),
(2772, 1519, 'Serawai Nanga Pinoh', 1),
(2773, 1519, 'Siantan/wajok Mempawah', 1),
(2774, 1519, 'Silat Hilir Putussibau', 1),
(2775, 1519, 'Silat Hulu Putussibau', 1),
(2776, 1519, 'Simpang Dua  Ketapang', 1),
(2777, 1519, 'Simpang Hilir Sukadana', 1),
(2778, 1519, 'Simpang Hulu Ketapang', 1),
(2779, 1519, 'Singkawang', 1),
(2780, 1519, 'Singkawang Barat  Singkawang', 1),
(2781, 1519, 'Singkawang Selatan', 1),
(2782, 1519, 'Singkawang Tengah Singkawang', 1),
(2783, 1519, 'Singkawang Timur  Singkawang', 1),
(2784, 1519, 'Singkawang Utara  Singkawang', 1),
(2785, 1519, 'Singkup  Ketapang', 1),
(2786, 1519, 'Sintang Kab. Sintang', 1),
(2787, 1519, 'Sokan Nanga Pinoh', 1),
(2788, 1519, 'Subah Sambas', 1),
(2789, 1519, 'Suhaid Putussibau', 1),
(2790, 1519, 'Sui Ambawang Kubu Raya', 1),
(2791, 1519, 'Sui Kakap Kubu Raya', 1),
(2792, 1519, 'Sui Raya Kubu Raya', 1),
(2793, 1519, 'Sukadana Kab. Kayong Utara', 1),
(2794, 1519, 'Sungai Ambawang Mempawah', 1),
(2795, 1519, 'Sungai Kakap Mempawah', 1),
(2796, 1519, 'Sungai Kunyit Mempawah', 1),
(2797, 1519, 'Sungai Laur Ketapang', 1),
(2798, 1519, 'Sungai Pinyuh Mempawah', 1),
(2799, 1519, 'Sungai Raya Bengkayang', 1),
(2800, 1519, 'Sungai Raya Kubu Raya', 1),
(2801, 1519, 'Sungai Raya Mempawah', 1),
(2802, 1519, 'Sungai Tebelian  Sintang', 1),
(2803, 1519, 'Suti Semarang Bengkayang', 1),
(2804, 1519, 'Tanah Pinoh Nanga Pinoh', 1),
(2805, 1519, 'Tanggaran Sambas', 1),
(2806, 1519, 'Tayan Hilir Sanggau', 1),
(2807, 1519, 'Tayan Hulu Sanggau', 1),
(2808, 1519, 'Tebas Sambas', 1),
(2809, 1519, 'Tekarang Sambas', 1),
(2810, 1519, 'Telok Pakedai Mempawah', 1),
(2811, 1519, 'Teluk Batang Sukadana', 1),
(2812, 1519, 'Teluk Keramat Sambas', 1),
(2813, 1519, 'Teluk Pakedai Kubu Raya', 1),
(2814, 1519, 'Tempunak Sintang', 1),
(2815, 1519, 'Terentang Kubu Raya', 1),
(2816, 1519, 'Teriak Bengkayang', 1),
(2817, 1519, 'Toba Sanggau', 1),
(2818, 1519, 'Toho Mempawah', 1),
(2819, 1519, 'Tumbang Titi Ketapang', 1),
(2820, 1520, 'Alalak Marabahan', 1),
(2821, 1520, 'Aluh Aluh Martapura', 1),
(2822, 1520, 'Amuntai', 1),
(2823, 1520, 'Amuntai Selatan Amuntai', 1),
(2824, 1520, 'Amuntai Tengah  Amuntai', 1),
(2825, 1520, 'Amuntai Utara Amuntai', 1),
(2826, 1520, 'Angkinang Kandangan', 1),
(2827, 1520, 'Anjir Muara Marabahan', 1),
(2828, 1520, 'Anjir Pasar Marabahan', 1),
(2829, 1520, 'Aranio  Martapura', 1),
(2830, 1520, 'Astambul Martapura', 1),
(2831, 1520, 'Awang Tamianglayang', 1),
(2832, 1520, 'Awayan Paringin', 1),
(2833, 1520, 'Babirik Amuntai', 1),
(2834, 1520, 'Bakarangan Rantau', 1),
(2835, 1520, 'Bakumpai  Marabahan', 1),
(2836, 1520, 'Banjang  Amuntai', 1),
(2837, 1520, 'Banjarbaru', 1),
(2838, 1520, 'Banjarmasin', 1),
(2839, 1520, 'Banjarmasin Barat Banjarmasin', 1),
(2840, 1520, 'Banjarmasin Selatan', 1),
(2841, 1520, 'Banjarmasin Tengah', 1),
(2842, 1520, 'Banjarmasin Timur Banjarmasin', 1),
(2843, 1520, 'Banjarmasin Utara Banjarmasin', 1),
(2844, 1520, 'Banua Lawas Tanjung', 1),
(2845, 1520, 'Barabai Kab. Hulu Sungai Tngh', 1),
(2846, 1520, 'Barambai Marabahan', 1),
(2847, 1520, 'Batang Alai Selatan Barabai', 1),
(2848, 1520, 'Batang Alai Tengah Barabai', 1),
(2849, 1520, 'Batang Alai Utara Barabai', 1),
(2850, 1520, 'Batu Ampar Pelaihari', 1),
(2851, 1520, 'Batu Benawa Barabai', 1),
(2852, 1520, 'Batu Mandi Paringin', 1),
(2853, 1520, 'Batulicin Kab Tanah Bambu', 1),
(2854, 1520, 'Belawang Marabahan', 1),
(2855, 1520, 'Benua Lima Tamianglayang', 1),
(2856, 1520, 'Bintang Ara  Tanjung', 1),
(2857, 1520, 'Binuang Rantau', 1),
(2858, 1520, 'Bungur Rantau', 1),
(2859, 1520, 'Buntok', 1),
(2860, 1520, 'Candi Laras Selatan Rantau', 1),
(2861, 1520, 'Candi Laras Utara Rantau', 1),
(2862, 1520, 'Cempaka  Banjarbaru', 1),
(2863, 1520, 'Cerbon Marabahan', 1),
(2864, 1520, 'Daha Barat  Kandangan', 1),
(2865, 1520, 'Daha Selatan Kandangan', 1),
(2866, 1520, 'Daha Utara Kandangan', 1),
(2867, 1520, 'Danau Panggang Amuntai', 1),
(2868, 1520, 'Dusun Hilir Buntok', 1),
(2869, 1520, 'Dusun Selatan  Buntok', 1),
(2870, 1520, 'Dusun Tengah Tamianglayang', 1),
(2871, 1520, 'Dusun Timur  Tamiang Layang', 1),
(2872, 1520, 'Dusun Utara Buntok', 1),
(2873, 1520, 'Gambut Martapura', 1),
(2874, 1520, 'Gunung Bintang Awai  Buntok', 1),
(2875, 1520, 'Gunung Purei Muarateweh', 1),
(2876, 1520, 'Gunung Timang Muarateweh', 1),
(2877, 1520, 'Halong Paringin', 1),
(2878, 1520, 'Hampang Kotabarupulaulaut', 1),
(2879, 1520, 'Hantakan  Barabai', 1),
(2880, 1520, 'Haruai Tanjung', 1),
(2881, 1520, 'Haruyan Barabai', 1),
(2882, 1520, 'Hatungun Rantau', 1),
(2883, 1520, 'Jaro Tanjung', 1),
(2884, 1520, 'Jenamas Buntok', 1),
(2885, 1520, 'Jorong Pelaihari', 1),
(2886, 1520, 'Juai Paringin', 1),
(2887, 1520, 'Kalumpang Kandangan', 1),
(2888, 1520, 'Kandangan Kab. Hulu Sungai Sltn', 1),
(2889, 1520, 'Karang Intan Martapura', 1),
(2890, 1520, 'Karau Kuala Buntok', 1),
(2891, 1520, 'Kelua Tanjung', 1),
(2892, 1520, 'Kelumpang Hulu K. Baru P. Laut', 1),
(2893, 1520, 'Kelumpang Selatan P. Laut', 1),
(2894, 1520, 'Kelumpang Tengah P. Laut', 1),
(2895, 1520, 'Kelumpang Utara K. Baru P. Laut', 1),
(2896, 1520, 'Kertak Hanyar Martapura', 1),
(2897, 1520, 'Kintap Pelaihari', 1),
(2898, 1520, 'Kotabaru Pulaulaut', 1),
(2899, 1520, 'Kurau Pelaihari', 1),
(2900, 1520, 'Kuripan Marabahan', 1),
(2901, 1520, 'Kusan Hilir Batulicin', 1),
(2902, 1520, 'Kusan Hulu Batulicin', 1),
(2903, 1520, 'Labuan Amas Selatan Barabai', 1),
(2904, 1520, 'Labuan Amas Utara Barabai', 1),
(2905, 1520, 'Lahei Muarateweh', 1),
(2906, 1520, 'Lampihong Paringin', 1),
(2907, 1520, 'Landasan Ulin Banjarbaru', 1),
(2908, 1520, 'Laung Tuhup Purukcahu', 1),
(2909, 1520, 'Lokpaikat Rantau', 1),
(2910, 1520, 'Loksado Kandangan', 1),
(2911, 1520, 'Mandastana Marabahan', 1),
(2912, 1520, 'Marabahan Kab. Barito Kuala', 1),
(2913, 1520, 'Martapura Kab. Banjar', 1),
(2914, 1520, 'Mataraman  Martapura', 1),
(2915, 1520, 'Mekar Sari Marabahan', 1),
(2916, 1520, 'Montalat Muarateweh', 1),
(2917, 1520, 'Muara Harus Tanjung', 1),
(2918, 1520, 'Muara Uya Tanjung', 1),
(2919, 1520, 'Muarateweh', 1),
(2920, 1520, 'Murung Pudak Tanjung', 1),
(2921, 1520, 'Murung Purukcahu', 1),
(2922, 1520, 'P. Laut Barat K. Barupulaulaut', 1),
(2923, 1520, 'P. Laut Selatan K. Baru P. Laut', 1),
(2924, 1520, 'P. Laut Timur K. Barupulaulaut', 1),
(2925, 1520, 'P. Laut Utara Kotabaru P. Laut', 1),
(2926, 1520, 'P. Sebuku Kotabarupulaulaut', 1),
(2927, 1520, 'P. Sembilan Kotabarupulaulaut', 1),
(2928, 1520, 'Padang Batung Kandangan', 1),
(2929, 1520, 'Pamukan Selatan K. Baru P. Laut', 1),
(2930, 1520, 'Pamukan Utara K. Barupulaulaut', 1),
(2931, 1520, 'Pandawan Barabai', 1),
(2932, 1520, 'Panyipatan Pelaihari', 1),
(2933, 1520, 'Paringin Kab Balangan', 1),
(2934, 1520, 'Patangkep Tutui Tamianglayang', 1),
(2935, 1520, 'Pelaihari Kab. Banjarmasin', 1),
(2936, 1520, 'Pematang Karau Tamianglayang', 1),
(2937, 1520, 'Pengaron Martapura', 1),
(2938, 1520, 'Permata Intan Purukcahu', 1),
(2939, 1520, 'Piani Rantau', 1),
(2940, 1520, 'Pugaan Tanjung', 1),
(2941, 1520, 'Puruk Cahu', 1),
(2942, 1520, 'Rantau', 1),
(2943, 1520, 'Rantau Badauh Marabahan', 1),
(2944, 1520, 'Salam Babaris Rantau', 1),
(2945, 1520, 'Sampanahan K. Barupulaulaut', 1),
(2946, 1520, 'Satui Batulicin', 1),
(2947, 1520, 'Simpang Empat Martapura', 1),
(2948, 1520, 'Simpur Kandangan', 1),
(2949, 1520, 'Sumber Barito Purukcahu', 1),
(2950, 1520, 'Sungai Durian K. Barupulaulaut', 1),
(2951, 1520, 'Sungai Loban Batulicin', 1),
(2952, 1520, 'Sungai Pandan Amuntai', 1),
(2953, 1520, 'Sungai Pinang Martapura', 1),
(2954, 1520, 'Sungai Raya Kandangan', 1),
(2955, 1520, 'Sungai Tabuk Martapura', 1),
(2956, 1520, 'Tabukan Marabahan', 1),
(2957, 1520, 'Tabunganen Marabahan', 1),
(2958, 1520, 'Takisung Pelaihari', 1),
(2959, 1520, 'Tambang Ulang Pelaihari', 1),
(2960, 1520, 'Tamianglayang', 1),
(2961, 1520, 'Tanah Siang Purukcahu', 1),
(2962, 1520, 'Tanjung Kab. Tabalong', 1),
(2963, 1520, 'Tanta Tanjung', 1),
(2964, 1520, 'Tapin Selatan Rantau', 1),
(2965, 1520, 'Tapin Tengah Rantau', 1),
(2966, 1520, 'Tapin Utara Rantau', 1),
(2967, 1520, 'Telaga Langsat Kandangan', 1),
(2968, 1520, 'Temban Marabahan', 1),
(2969, 1520, 'Teweh Tengah  Muarateweh', 1),
(2970, 1520, 'Teweh Timur Muarateweh', 1),
(2971, 1520, 'Upau Tanjung', 1),
(2972, 1520, 'Wanaraya Marabahan', 1),
(2973, 1521, 'Antang Kalang  Sampit', 1),
(2974, 1521, 'Arut Selatan Pangkalanbun', 1),
(2975, 1521, 'Arut Utara Pangkalanbun', 1),
(2976, 1521, 'Baamang  Sampit', 1),
(2977, 1521, 'Balai Riam Sukamara', 1),
(2978, 1521, 'Banamatingang Pulang Pisau', 1),
(2979, 1521, 'Basarang Kualakapuas', 1),
(2980, 1521, 'Bukit Batu  Palangka Raya', 1),
(2981, 1521, 'Bulik Nanga Bulik', 1),
(2982, 1521, 'Cempaga Sampit', 1),
(2983, 1521, 'Danau Sembuluh Kualapembuang', 1),
(2984, 1521, 'Delang Nanga Bulik', 1),
(2985, 1521, 'Hanau Kualapembuang', 1),
(2986, 1521, 'Jekan Raya Palangka Raya', 1),
(2987, 1521, 'Jelai Sukamara', 1),
(2988, 1521, 'Kahayan Hilir Pulang Pisau', 1),
(2989, 1521, 'Kahayan Hulu Utara Kualakurun', 1),
(2990, 1521, 'Kahayan Kuala Pulang Pisau', 1),
(2991, 1521, 'Kahayan Tengah Pulang Pisau', 1),
(2992, 1521, 'Kamipang Kasongan', 1),
(2993, 1521, 'Kapuas Barat Kualakapuas', 1),
(2994, 1521, 'Kapuas Hilir  Kualakapuas', 1),
(2995, 1521, 'Kapuas Hulu Kualakapuas', 1),
(2996, 1521, 'Kapuas Kuala Kualakapuas', 1),
(2997, 1521, 'Kapuas Murung Kualakapuas', 1),
(2998, 1521, 'Kapuas Tengah Kualakapuas', 1),
(2999, 1521, 'Kapuas Timur Kualakapuas', 1),
(3000, 1521, 'Kasongan Kab. Katingan', 1),
(3001, 1521, 'Katingan Hilir  Kasongan', 1),
(3002, 1521, 'Katingan Hulu Kasongan', 1),
(3003, 1521, 'Katingan Kuala Kasongan', 1),
(3004, 1521, 'Katingan Tengah Kasongan', 1),
(3005, 1521, 'Kota Besi Sampit', 1),
(3006, 1521, 'Kota Waringin Lama Pk. Bun', 1),
(3007, 1521, 'Kuala Pembuang', 1),
(3008, 1521, 'Kualakapuas', 1),
(3009, 1521, 'Kualakurun Kab. Gn. Mas', 1),
(3010, 1521, 'Kumai Pangkalanbun', 1),
(3011, 1521, 'Lamandau Nanga Bulik', 1),
(3012, 1521, 'Maliku  Pulang Pisau', 1),
(3013, 1521, 'Mantangai Kualakapuas', 1),
(3014, 1521, 'Marikit Kasongan', 1),
(3015, 1521, 'Mendawai  Kasongan', 1),
(3016, 1521, 'Mentawa Baru  Sampit', 1),
(3017, 1521, 'Mentaya Hilir Selatan Sampit', 1),
(3018, 1521, 'Mentaya Hilir Utara Sampit', 1),
(3019, 1521, 'Mentaya Hulu Sampit', 1),
(3020, 1521, 'Munuhing Kualakurun', 1),
(3021, 1521, 'Nanga Bulik Lamandau', 1),
(3022, 1521, 'Pahandut  Palangka Raya', 1),
(3023, 1521, 'Palangkaraya', 1),
(3024, 1521, 'Pandihbatu Pulang Pisau', 1),
(3025, 1521, 'Pangkalan Banteng Pk. Bun', 1),
(3026, 1521, 'Pangkalan Lada  Pangkalanbun', 1),
(3027, 1521, 'Pangkalanbun', 1),
(3028, 1521, 'Parenggean Sampit', 1),
(3029, 1521, 'Pulang Pisau Kab Pulang Pisau', 1),
(3030, 1521, 'Pulau Hanaut Sampit', 1),
(3031, 1521, 'Pulau Malan Kasongan', 1),
(3032, 1521, 'Pulau Petak Kualakapuas', 1),
(3033, 1521, 'Rakumpit  Palangka Raya', 1),
(3034, 1521, 'Rungan Kualakurun', 1),
(3035, 1521, 'Sampit', 1),
(3036, 1521, 'Sebangau Palangka Raya', 1),
(3037, 1521, 'Selat Kualakapuas', 1),
(3038, 1521, 'Senamang Mentikei Kasongan', 1),
(3039, 1521, 'Sepang Kualakurun', 1),
(3040, 1521, 'Seruyan Hilir  Kuala Pembuang', 1),
(3041, 1521, 'Seruyan Hulu Kualapembuang', 1),
(3042, 1521, 'Seruyan Tengah Kualapembuang', 1),
(3043, 1521, 'Sukamara Kab. Sukamara', 1),
(3044, 1521, 'Tasik Payawan Kasongan', 1),
(3045, 1521, 'Tewah Kualakurun', 1),
(3046, 1521, 'Tewang Sangalang Garing', 1),
(3047, 1521, 'Timpah Kualakapuas', 1),
(3048, 1522, 'Anggana Tenggarong', 1),
(3049, 1522, 'Babulu Penajam', 1),
(3050, 1522, 'Balikpapan', 1),
(3051, 1522, 'Balikpapan Barat  Balikpapan', 1),
(3052, 1522, 'Balikpapan Selatan Balikpapan', 1),
(3053, 1522, 'Balikpapan Tengah Balikpapan', 1),
(3054, 1522, 'Balikpapan Timur  Balikpapan', 1),
(3055, 1522, 'Balikpapan Utara Balikpapan', 1),
(3056, 1522, 'Barongtongkok Sendawar', 1),
(3057, 1522, 'Batu Ampar  Sangata', 1),
(3058, 1522, 'Batu Engau  Tanah Grogot', 1),
(3059, 1522, 'Batu Sopang Tanah Grogot', 1),
(3060, 1522, 'Bengalon  Sangata', 1),
(3061, 1522, 'Bentian Besar Sendawar', 1),
(3062, 1522, 'Biduk Biduk Tanjungredeb', 1),
(3063, 1522, 'Bongan Sendawar', 1),
(3064, 1522, 'Bontang', 1),
(3065, 1522, 'Bontang Barat  Bontang', 1),
(3066, 1522, 'Bontang Selatan  Bontang', 1),
(3067, 1522, 'Bontang Utara Bontang', 1),
(3068, 1522, 'Busang  Sangata', 1),
(3069, 1522, 'Damai Sendawar', 1),
(3070, 1522, 'Gunung Tabur Tanjungredeb', 1),
(3071, 1522, 'Jempang Sendawar', 1),
(3072, 1522, 'Kaliorang  Sangata', 1),
(3073, 1522, 'Karangan  Sangata', 1),
(3074, 1522, 'Kaubun  Sangata', 1),
(3075, 1522, 'Kelay Tanjungredeb', 1),
(3076, 1522, 'Kembang Janggut Tenggarong', 1),
(3077, 1522, 'Kenohan Tenggarong', 1),
(3078, 1522, 'Kongbeng  Sangata', 1),
(3079, 1522, 'Kota Bangun Tenggarong', 1),
(3080, 1522, 'Kuaro Tanah Grogot', 1),
(3081, 1522, 'Linggang Bigung  Sendawar', 1),
(3082, 1522, 'Loa Janan', 1),
(3083, 1522, 'Loa Kulu / Loa Bakung Tenggarong', 1),
(3084, 1522, 'Long Apari Sendawar', 1),
(3085, 1522, 'Long Hubung  Sendawar', 1),
(3086, 1522, 'Long Ikis Tanah Grogot', 1),
(3087, 1522, 'Long Kali Tanah Grogot', 1),
(3088, 1522, 'Long Masengat  Sangata', 1),
(3089, 1522, 'Longbagun Sendawar', 1),
(3090, 1522, 'Longiram Sendawar', 1),
(3091, 1522, 'Longpahangai Sendawar', 1),
(3092, 1522, 'Marang Kayu  Tenggarong', 1),
(3093, 1522, 'Maratua  Tanjungredeb', 1),
(3094, 1522, 'Melak Sendawar', 1),
(3095, 1522, 'Muara Ancalong Sangata', 1),
(3096, 1522, 'Muara Badak', 1),
(3097, 1522, 'Muara Bengkal  Sangata', 1),
(3098, 1522, 'Muara Jawa', 1),
(3099, 1522, 'Muara Komam Tanah Grogot', 1),
(3100, 1522, 'Muara Muntai Tenggarong', 1),
(3101, 1522, 'Muara Samu Tanah Grogot', 1),
(3102, 1522, 'Muara Wahau  Sangata', 1),
(3103, 1522, 'Muara Wis  Tenggarong', 1),
(3104, 1522, 'Muarakaman Tenggarong', 1),
(3105, 1522, 'Muaralawa Sendawar', 1),
(3106, 1522, 'Muarapahu Sendawar', 1),
(3107, 1522, 'Nyuwatan  Sendawar', 1),
(3108, 1522, 'Palaran', 1),
(3109, 1522, 'Pasir Belengkong Tanah Grogot', 1),
(3110, 1522, 'Penajam Kab. Penajam Paser Utara', 1),
(3111, 1522, 'Penyinggahan Sendawar', 1),
(3112, 1522, 'Pulau Derawan Tanjungredeb', 1),
(3113, 1522, 'Rantau Pulung  Sangata', 1),
(3114, 1522, 'Samarinda', 1),
(3115, 1522, 'Samarinda Ilir Samarinda', 1),
(3116, 1522, 'Samarinda Seberang', 1),
(3117, 1522, 'Samarinda Ulu  Samarinda', 1),
(3118, 1522, 'Samarinda Utara Samarinda', 1),
(3119, 1522, 'Sambaliung Tanjungredeb', 1),
(3120, 1522, 'Samboja Balikpapan', 1),
(3121, 1522, 'Sandaran  Sangata', 1),
(3122, 1522, 'Sangatta Selatan Sangata', 1),
(3123, 1522, 'Sanggata Kab. Kutai Timur', 1),
(3124, 1522, 'Sangkima/sangata Selatan Kab. Kutai Tim', 1),
(3125, 1522, 'Sangkulirang  Sangata', 1),
(3126, 1522, 'Sebulu Tenggarong', 1),
(3127, 1522, 'Segah Tanjungredeb', 1),
(3128, 1522, 'Sendawar', 1),
(3129, 1522, 'Sepaku Penajam', 1),
(3130, 1522, 'Singa Gembara/sangata Urata Kab. Kutai ', 1),
(3131, 1522, 'Sungai Kunjang Samarinda', 1),
(3132, 1522, 'Swarga Bara/sangata Utara Kab. Kutai Ti', 1),
(3133, 1522, 'Tabang Tenggarong', 1),
(3134, 1522, 'Talisayan Tanjungredeb', 1),
(3135, 1522, 'Tanah Grogot Kab Paser', 1),
(3136, 1522, 'Tanjung Harapan  Tanah Grogot', 1),
(3137, 1522, 'Tanjungredeb Kab. Berau', 1),
(3138, 1522, 'Telen Sangata', 1),
(3139, 1522, 'Teluk Bayur  Tanjungredeb', 1),
(3140, 1522, 'Teluk Pandan Sangata', 1),
(3141, 1522, 'Tenggarong Seberang Tenggarong', 1),
(3142, 1522, 'Tenggarong Kab. Kutai Kartanegara', 1),
(3143, 1522, 'Tubaan Tanjungredeb', 1),
(3144, 1522, 'Waru Penajam', 1),
(3145, 1523, 'Kayan Hilir Malinau ', 1),
(3146, 1523, 'Kayan Hulu Malinau ', 1),
(3147, 1523, 'Krayan Selatan  Nunukan', 1),
(3148, 1523, 'Krayan Nunukan', 1),
(3149, 1523, 'Lumbis Nunukan', 1),
(3150, 1523, 'Malinau Barat  Malinau ', 1),
(3151, 1523, 'Malinau Selatan  Malinau ', 1),
(3152, 1523, 'Malinau Utara Malinau ', 1),
(3153, 1523, 'Malinau Kab Malinau', 1),
(3154, 1523, 'Mentarang Malinau ', 1),
(3155, 1523, 'Nunukan Kab Nunukan', 1),
(3156, 1523, 'Peso / Longpeso Tanjungselor', 1),
(3157, 1523, 'Peso Hilir  Tanjungselor', 1),
(3158, 1523, 'Pujungan Malinau ', 1),
(3159, 1523, 'Pulau Bunyu Tanjungselor', 1),
(3160, 1523, 'Sebatik  Nunukan', 1),
(3161, 1523, 'Sebuku Nunukan', 1),
(3162, 1523, 'Sekatak  Tanjungselor', 1),
(3163, 1523, 'Sembakung Tana Tidung', 1),
(3164, 1523, 'Sesayap Hilir Tana Tidung', 1),
(3165, 1523, 'Sesayap Tana Tidung', 1),
(3166, 1523, 'Sungai Boh Malinau ', 1),
(3167, 1523, 'Tana Tidung Kab Tana Tidung', 1),
(3168, 1523, 'Tanah Lia  Tana Tidung', 1),
(3169, 1523, 'Tanjung Palas  Tanjungselor', 1),
(3170, 1523, 'Tanjung Palas Barat Tg. Selor', 1),
(3171, 1523, 'Tanjung Palas Tengah  Tg. Selor', 1),
(3172, 1523, 'Tanjung Palas Timur  Tg. Selor', 1),
(3173, 1523, 'Tanjung Palas Utara  Tg. Selor', 1),
(3174, 1523, 'Tanjung Selor Kab Bulungan', 1),
(3175, 1523, 'Tarakan', 1),
(3176, 1523, 'Tarakan Barat  Tarakan', 1),
(3177, 1523, 'Tarakan Tengah Tarakan', 1),
(3178, 1523, 'Tarakan Timur  Tarakan', 1),
(3179, 1523, 'Tarakan Utara Tarakan', 1),
(3180, 1524, 'Bandar Sri Bentan Kab. Bintan', 1),
(3181, 1524, 'Batam', 1),
(3182, 1524, 'Batu Ampar Batam', 1),
(3183, 1524, 'Belakang Padang Batam', 1),
(3184, 1524, 'Bintan Timur / Kijang Bintan', 1),
(3185, 1524, 'Bukit Bestari Tanjung Pinang', 1),
(3186, 1524, 'Bulang Galang Batam', 1),
(3187, 1524, 'Bunguran Barat Ranai', 1),
(3188, 1524, 'Bunguran Tengah Ranai ', 1),
(3189, 1524, 'Bunguran Timur Laut Ranai', 1),
(3190, 1524, 'Bunguran Timur Ranai', 1),
(3191, 1524, 'Bunguran Utara Ranai', 1),
(3192, 1524, 'Buru Kab. Karimun', 1),
(3193, 1524, 'Daik', 1),
(3194, 1524, 'Galang Batam', 1),
(3195, 1524, 'Gunung Kijang Bintan', 1),
(3196, 1524, 'Jemaja Timur Ranai', 1),
(3197, 1524, 'Jemaja Ranai', 1),
(3198, 1524, 'Karimun Kab. Karimun', 1),
(3199, 1524, 'Kundur Barat Kab. Karimun', 1),
(3200, 1524, 'Kundur Utara Kab. Karimun', 1),
(3201, 1524, 'Kundur Kab. Karimun', 1),
(3202, 1524, 'Lagoi Bintan', 1),
(3203, 1524, 'Lingga Utara Daik', 1),
(3204, 1524, 'Lingga Daik', 1),
(3205, 1524, 'Lubuk Baja Batam', 1),
(3206, 1524, 'Meral Kab. Karimun', 1),
(3207, 1524, 'Midai Ranai', 1),
(3208, 1524, 'Moro Kab. Karimun', 1),
(3209, 1524, 'Nongsa / Kabil', 1),
(3210, 1524, 'Pal Matak Ranai', 1),
(3211, 1524, 'Pulau Laut Ranai', 1),
(3212, 1524, 'Pulau Tiga Ranai', 1),
(3213, 1524, 'Ranai Kab. Natuna', 1),
(3214, 1524, 'Sei Baduk Batam', 1),
(3215, 1524, 'Sekupang / Tanjung Uncang', 1),
(3216, 1524, 'Senayang Daik', 1),
(3217, 1524, 'Serasan Ranai', 1),
(3218, 1524, 'Siantan Selatan Ranai', 1),
(3219, 1524, 'Siantan Timur Ranai', 1),
(3220, 1524, 'Siantan Ranai', 1),
(3221, 1524, 'Singkep Barat Daik', 1),
(3222, 1524, 'Singkep Daik', 1),
(3223, 1524, 'Subi Ranai', 1),
(3224, 1524, 'Tambelan Bintan', 1),
(3225, 1524, 'Tanjung Balai Karimun', 1),
(3226, 1524, 'Tanjung Batu Kab. Karimun', 1),
(3227, 1524, 'Tanjung Uban/bintan Utara Kab. Bintan', 1),
(3228, 1524, 'Tanjungpinang', 1),
(3229, 1524, 'Tebing Kab. Karimun', 1),
(3230, 1524, 'Teluk Bintan Bintan', 1),
(3231, 1524, 'Teluk Sebong Bintan', 1),
(3232, 1524, 'Tg Pinang Barat Tg Pinang', 1),
(3233, 1524, 'Tg Pinang Kota Tanjung Pinang', 1),
(3234, 1524, 'Tg Pinang Timur Tg Pinang', 1),
(3235, 1525, 'Abung Barat Kotabumi', 1),
(3236, 1525, 'Abung Selatan Kotabumi', 1),
(3237, 1525, 'Abung Semuli Kotabumi', 1),
(3238, 1525, 'Abung Surakarta Kotabumi', 1),
(3239, 1525, 'Abung Tengah Kotabumi', 1),
(3240, 1525, 'Abung Timur Kotabumi', 1),
(3241, 1525, 'Abung Tinggi Kotabumi', 1),
(3242, 1525, 'Adi Luwih Kota Agung', 1),
(3243, 1525, 'Anak Tuha Gunung Sugih', 1),
(3244, 1525, 'Bahuga Blampangan Umpu', 1),
(3245, 1525, 'Bakauheuni Kab. Lampung Selatan', 1),
(3246, 1525, 'Balik Bukit Liwa', 1),
(3247, 1525, 'Bandar Jaya Gunung Sugih', 1),
(3248, 1525, 'Bandar Mataram Gunung Sugih', 1),
(3249, 1525, 'Bandar Sribawano Sukadana', 1),
(3250, 1525, 'Bandar Surabaya Gunung Sugih', 1),
(3251, 1525, 'Bandarlampung', 1),
(3252, 1525, 'Bangun Rejo Gunung Sugih', 1),
(3253, 1525, 'Banjar Agung Menggala', 1),
(3254, 1525, 'Banjit Blampangan Umpu', 1),
(3255, 1525, 'Baradatu Blampangan Umpu', 1),
(3256, 1525, 'Batang Hari Sukadana', 1),
(3257, 1525, 'Batanghari Nuban Sukadana', 1),
(3258, 1525, 'Batu Brak Liwa', 1),
(3259, 1525, 'Bekri Gunung Sugih', 1),
(3260, 1525, 'Belalau Liwa', 1),
(3261, 1525, 'Bengkunat Liwa', 1),
(3262, 1525, 'Blambangan Umpu Way Kanan', 1),
(3263, 1525, 'Braja Slebah Sukadana', 1),
(3264, 1525, 'Bukit Kemuning Kotabumi', 1),
(3265, 1525, 'Bumi Agung Sukadana', 1),
(3266, 1525, 'Bumi Nabung Gunung Sugih', 1),
(3267, 1525, 'Bumi Ratu Nuban Gunung Sugih', 1),
(3268, 1525, 'Bunga Mayang Kotabumi', 1),
(3269, 1525, 'Candipuro Kab. Lampung Selatan', 1),
(3270, 1525, 'Cukup Balak Kota Agung', 1),
(3271, 1525, 'Gading Rejo Kota Agung', 1),
(3272, 1525, 'Gedong Tataan Kab. Pesawaran', 1),
(3273, 1525, 'Gedung Aji Menggala', 1),
(3274, 1525, 'Gedung Meneng Menggala', 1),
(3275, 1525, 'Gedung Terang Menggala', 1),
(3276, 1525, 'Gunung Labuhan B. Umpu', 1),
(3277, 1525, 'Gunung Pelidung Sukadana', 1),
(3278, 1525, 'Gunung Sugih Kab. Lampung Tngh', 1),
(3279, 1525, 'Jabung / Gn. Balak Sukadana', 1),
(3280, 1525, 'Jati Agung Kab. Lampung Selatan', 1),
(3281, 1525, 'Kalianda Kab. Lampung Selatan', 1),
(3282, 1525, 'Kalirejo Gunung Sugih', 1),
(3283, 1525, 'Karya Penggawa Liwa', 1),
(3284, 1525, 'Kasui Blampangan Umpu', 1),
(3285, 1525, 'Katibung Kab. Lampung Selatan', 1),
(3286, 1525, 'Kedaton Bandarlampung', 1),
(3287, 1525, 'Kedondong Gedong Tataan', 1),
(3288, 1525, 'Kelumbayan Kota Agung', 1),
(3289, 1525, 'Kemiling Bandarlampung', 1),
(3290, 1525, 'Ketapang Kab. Lampung Selatan', 1),
(3291, 1525, 'Kota Agung Kab. Tanggamus', 1),
(3292, 1525, 'Kota Gajah Gunung Sugih', 1),
(3293, 1525, 'Kotabumi Selatan Kotabumi', 1),
(3294, 1525, 'Kotabumi Utara Kotabumi', 1),
(3295, 1525, 'Kotabumi Kab. Lampung Utara', 1),
(3296, 1525, 'Labuhan Maringgai Sukadana', 1),
(3297, 1525, 'Labuhan Ratu Sukadana', 1),
(3298, 1525, 'Lambu Kimbang Menggala', 1),
(3299, 1525, 'Lemong Liwa', 1),
(3300, 1525, 'Liwa Lampung Barat', 1),
(3301, 1525, 'Margatiga Sukadana', 1),
(3302, 1525, 'Mataram Baru Sukadana', 1),
(3303, 1525, 'Melinting Sukadana', 1),
(3304, 1525, 'Menggala Kab. Tulang Bawang', 1),
(3305, 1525, 'Merbau Mataram Kab. Lampung Selatan', 1),
(3306, 1525, 'Mesuji Menggala', 1),
(3307, 1525, 'Metro Barat Metro', 1),
(3308, 1525, 'Metro Kibang Sukadana', 1),
(3309, 1525, 'Metro Pusat Metro', 1),
(3310, 1525, 'Metro Selatan Metro', 1),
(3311, 1525, 'Metro Timur Metro', 1),
(3312, 1525, 'Metro Utara Metro', 1),
(3313, 1525, 'Metro Kota Metro', 1),
(3314, 1525, 'Muara Sungkai Kotabumi', 1),
(3315, 1525, 'Natar Kab. Lampung Selatan', 1),
(3316, 1525, 'Negeri Agung Blampangan Umpu', 1),
(3317, 1525, 'Negeri Batin Blampangan Umpu', 1),
(3318, 1525, 'Negeri Besar Blampangan Umpu', 1),
(3319, 1525, 'Negeri Katon Gedong Tataan', 1),
(3320, 1525, 'Padang Cermin Gedong Tataan', 1),
(3321, 1525, 'Padangratu Gunung Sugih', 1),
(3322, 1525, 'Pagelaran Kota Agung', 1),
(3323, 1525, 'Pakuan Ratu Blampangan Umpu', 1),
(3324, 1525, 'Palas Kab. Lampung Selatan', 1),
(3325, 1525, 'Panengahan Kab. Lampung Selatan', 1),
(3326, 1525, 'Panjang Bandarlampung', 1),
(3327, 1525, 'Pasir Sakti Sukadana', 1),
(3328, 1525, 'Pekalongan Sukadana', 1),
(3329, 1525, 'Pematang Sawa Kota Agung', 1),
(3330, 1525, 'Penawar Tama Menggala', 1),
(3331, 1525, 'Perdasuka Kota Agung', 1),
(3332, 1525, 'Pesisir Selatan Liwa', 1),
(3333, 1525, 'Pesisir Tengah / Krui Liwa', 1),
(3334, 1525, 'Pesisir Utara Liwa', 1),
(3335, 1525, 'Pringsewu Kota Agung', 1),
(3336, 1525, 'Pubian Gunung Sugih', 1),
(3337, 1525, 'Pugung Kota Agung', 1),
(3338, 1525, 'Pulau Panggung Kota Agung', 1),
(3339, 1525, 'Pundung Pidada Gedong Tataan', 1),
(3340, 1525, 'Pungur Gunung Sugih', 1),
(3341, 1525, 'Purbolinggo Sukadana', 1),
(3342, 1525, 'Rajabasa Bandarlampung', 1),
(3343, 1525, 'Rajabasa Kab. Lampung Selatan', 1),
(3344, 1525, 'Raman Utara Sukadana', 1),
(3345, 1525, 'Rawajitu Selatan Menggala', 1),
(3346, 1525, 'Rawajitu Utara Menggala', 1),
(3347, 1525, 'Rebang Tangkas B. Umpu', 1),
(3348, 1525, 'Rumbia Gunung Sugih', 1),
(3349, 1525, 'Sekampung Udik Sukadana', 1),
(3350, 1525, 'Sekampung Sukadana', 1),
(3351, 1525, 'Sekincau Liwa', 1),
(3352, 1525, 'Selagai Lingga Gunung Sugih', 1),
(3353, 1525, 'Semaka Kota Agung', 1),
(3354, 1525, 'Sendang Agung Gunung Sugih', 1),
(3355, 1525, 'Seputih Agung Gunung Sugih', 1),
(3356, 1525, 'Seputih Mataram Gunung Sugih', 1),
(3357, 1525, 'Seputih Surabaya Gunung Sugih', 1),
(3358, 1525, 'Seputihbanyak Gunung Sugih', 1),
(3359, 1525, 'Seputihraman Gunung Sugih', 1),
(3360, 1525, 'Sidomulyo Kab. Lampung Selatan', 1),
(3361, 1525, 'Simpang Pematang Menggala', 1),
(3362, 1525, 'Sragi Kab. Lampung Selatan', 1),
(3363, 1525, 'Sukabumi Bandarlampung', 1),
(3364, 1525, 'Sukadana Kab. Lampung Timur', 1),
(3365, 1525, 'Sukarame Bandarlampung', 1),
(3366, 1525, 'Sukau Liwa', 1),
(3367, 1525, 'Sukoharjo Kota Agung', 1),
(3368, 1525, 'Sumber Jaya Liwa', 1),
(3369, 1525, 'Sumberejo Kota Agung', 1),
(3370, 1525, 'Sungkai Selatan Kotabumi', 1),
(3371, 1525, 'Sungkai Utara Kotabumi', 1),
(3372, 1525, 'Suoh Liwa', 1),
(3373, 1525, 'Talangpadang Kota Agung', 1),
(3374, 1525, 'Tanjung Bintang Kab. Lampung Selatan', 1),
(3375, 1525, 'Tanjung Raya Menggala', 1),
(3376, 1525, 'Tanjung Senang Bandarlampung', 1),
(3377, 1525, 'Tanjungraja Kotabumi', 1),
(3378, 1525, 'Tanjungsari Kab. Lampung Selatan', 1),
(3379, 1525, 'Tegineneng Gedong Tataan', 1),
(3380, 1525, 'Teluk Betung Barat Bd. Lampung', 1),
(3381, 1525, 'Telukbetung Selatan Lampung', 1),
(3382, 1525, 'Telukbetung Utara Bd. Lampung', 1),
(3383, 1525, 'Terbanggibesar / Bandarjaya', 1),
(3384, 1525, 'Terusan Nunyai Gunung Sugih', 1),
(3385, 1525, 'Tg Karang Barat Bd. Lampung', 1),
(3386, 1525, 'Tg Karang Pusat Bd. Lampung', 1),
(3387, 1525, 'Tg Karang Timur Bd. Lampung', 1),
(3388, 1525, 'Trimurjo Gunung Sugih', 1),
(3389, 1525, 'Tulang Bawang Tengah Menggala', 1),
(3390, 1525, 'Tulang Bawang Udik Menggala', 1),
(3391, 1525, 'Tumijajar Menggala', 1),
(3392, 1525, 'Ulubelu Kota Agung', 1),
(3393, 1525, 'Waway Karya Sukadana', 1),
(3394, 1525, 'Way Bungur Sukadana', 1),
(3395, 1525, 'Way Jepara Sukadana', 1),
(3396, 1525, 'Way Lima Gedong Tataan', 1),
(3397, 1525, 'Way Pangubuan Gunung Sugih', 1),
(3398, 1525, 'Way Panji Kab. Lampung Selatan', 1),
(3399, 1525, 'Way Seputih Gunung Sugih', 1),
(3400, 1525, 'Way Serdang Menggala', 1),
(3401, 1525, 'Way Sulan Kab. Lampung Selatan', 1),
(3402, 1525, 'Way Tenong Liwa', 1),
(3403, 1525, 'Way Tuba Blampangan Umpu', 1),
(3404, 1525, 'Wonosobo Kota Agung', 1),
(3405, 1526, 'Air Buaya/buru Utara Barat', 1),
(3406, 1526, 'Amahai Masohi', 1),
(3407, 1526, 'Ambon', 1),
(3408, 1526, 'Banda Masohi', 1),
(3409, 1526, 'Bula Dataran Hunimoa', 1),
(3410, 1526, 'Damer  Saumlaki', 1),
(3411, 1526, 'Dataran Hunimoa', 1),
(3412, 1526, 'Dobo Dobo', 1),
(3413, 1526, 'Kairatu Piru', 1),
(3414, 1526, 'Kei Besar Selatan Tual', 1),
(3415, 1526, 'Kei Besar Utara Timur Tual', 1),
(3416, 1526, 'Kei Besar Tual', 1),
(3417, 1526, 'Kei Kecil Tual', 1),
(3418, 1526, 'Kormomolin Saumlaki', 1),
(3419, 1526, 'Leihitu Masohi', 1),
(3420, 1526, 'Leitimur Selatan Ambon', 1),
(3421, 1526, 'Leksula/buru Selatan', 1),
(3422, 1526, 'Luser Saumlaki', 1),
(3423, 1526, 'Masohi Kab. Maluku Tengah', 1),
(3424, 1526, 'Mola Saumlaki', 1),
(3425, 1526, 'Namlea Kab. Buru', 1),
(3426, 1526, 'Nirunmas Saumlaki', 1),
(3427, 1526, 'Nusa Laut Masohi', 1),
(3428, 1526, 'Nusaniwe Ambon', 1),
(3429, 1526, 'Piru Piru', 1),
(3430, 1526, 'Pulau Babar Timur Saumlaki', 1),
(3431, 1526, 'Pulau Gorong Dataran Hunimoa', 1),
(3432, 1526, 'Pulau Haruku Masohi', 1),
(3433, 1526, 'Pulau Letimoa Lakor Saumlaki', 1),
(3434, 1526, 'Pulau Wetar Saumlaki', 1),
(3435, 1526, 'Sala Hatu Masohi', 1),
(3436, 1526, 'Saparua. Masohi', 1),
(3437, 1526, 'Saumlaki Kab. Maluku Tenggara', 1),
(3438, 1526, 'Selaru Saumlaki', 1),
(3439, 1526, 'Seram Barat Piru', 1),
(3440, 1526, 'Seram Timur Dataran Hunimoa', 1),
(3441, 1526, 'Seram Utara Masohi', 1),
(3442, 1526, 'Serwaru Saumlaki', 1),
(3443, 1526, 'Sirimau Ambon', 1),
(3444, 1526, 'Tanimbar Selatan Saumlaki', 1),
(3445, 1526, 'Tanimbar Utara Saumlaki', 1),
(3446, 1526, 'Taniwel Piru', 1),
(3447, 1526, 'Tehoru Masohi', 1),
(3448, 1526, 'Teluk Ambon Baguala Ambon', 1),
(3449, 1526, 'Teluk Ambon Ambon', 1),
(3450, 1526, 'Teon Nila Serua Masohi', 1),
(3451, 1526, 'Tual', 1),
(3452, 1526, 'Waesama Namlea', 1),
(3453, 1526, 'Waisala Piru', 1),
(3454, 1526, 'Wayapo Namlea', 1),
(3455, 1526, 'Wer Makatian Saumlaki', 1),
(3456, 1526, 'Werinama Dataran Hunimoa', 1),
(3457, 1526, 'Wertamrian Saumlaki', 1),
(3458, 1526, 'Wuarlabobar Saumlaki', 1),
(3459, 1526, 'Yaru Saumlaki', 1),
(3460, 1527, 'Bacan Selatan Labuha', 1),
(3461, 1527, 'Bacan Timur Labuha', 1),
(3462, 1527, 'Bacan Labuha', 1),
(3463, 1527, 'Galela Tobelo', 1),
(3464, 1527, 'Gane Barat Labuha', 1),
(3465, 1527, 'Gane Timur Labuha', 1),
(3466, 1527, 'Gebe Weda', 1),
(3467, 1527, 'Ibu Jailolo', 1),
(3468, 1527, 'Jailolo', 1),
(3469, 1527, 'Jailolo Selatan Jailolo', 1),
(3470, 1527, 'Kao Tobelo', 1),
(3471, 1527, 'Kayoa Labuha', 1),
(3472, 1527, 'Labuha', 1),
(3473, 1527, 'Loloda Utara Tobelo', 1),
(3474, 1527, 'Loloda Ternate Jailolo', 1),
(3475, 1527, 'Maba Selatan Maba', 1),
(3476, 1527, 'Maba Kab. Halmahera Timur', 1),
(3477, 1527, 'Malifut Tobelo', 1),
(3478, 1527, 'Mangoli Barat Sanana', 1),
(3479, 1527, 'Mangoli Timur Sanana', 1),
(3480, 1527, 'Morotai Selatan Barat Tobelo', 1),
(3481, 1527, 'Morotai Selatan Tobelo', 1),
(3482, 1527, 'Morotai Utara Tobelo', 1),
(3483, 1527, 'Moti Ternate', 1),
(3484, 1527, 'Nggele Sanana', 1),
(3485, 1527, 'Oba Utara Tidore', 1),
(3486, 1527, 'Oba Tidore', 1),
(3487, 1527, 'Obi Selatan Labuha', 1),
(3488, 1527, 'Obi Labuha', 1),
(3489, 1527, 'Patani Gebe Weda', 1),
(3490, 1527, 'Pulau Makian Labuha', 1),
(3491, 1527, 'Sahu Ternate Jailolo', 1),
(3492, 1527, 'Sanana Kab. Kep. Sula', 1),
(3493, 1527, 'Sula Besi Barat Sanana', 1),
(3494, 1527, 'Taliabu Barat Sanana', 1),
(3495, 1527, 'Taliabu Timur Sanana', 1),
(3496, 1527, 'Ternate', 1),
(3497, 1527, 'Ternate Selatan Ternate', 1),
(3498, 1527, 'Ternate Utara Ternate', 1),
(3499, 1527, 'Tidore', 1),
(3500, 1527, 'Tidore Selatan Tidore', 1),
(3501, 1527, 'Tidore Utara Tidore', 1),
(3502, 1527, 'Tobelo Selatan Tobelo', 1),
(3503, 1527, 'Tobelo Kab. Halmahera Utara', 1),
(3504, 1527, 'Wasile Selatan Maba', 1),
(3505, 1527, 'Wasile Maba', 1),
(3506, 1527, 'Weda Kab. Halmahera Tengah', 1),
(3507, 1528, 'Aikmel Selong', 1),
(3508, 1528, 'Alas Barat Sumbawabesar', 1),
(3509, 1528, 'Alas Sumbawabesar', 1),
(3510, 1528, 'Ambalawi Woha ', 1),
(3511, 1528, 'Ampenan Mataram', 1),
(3512, 1528, 'Asakota Bima', 1),
(3513, 1528, 'Batukliang Utara Praya', 1),
(3514, 1528, 'Batukliang Praya', 1),
(3515, 1528, 'Batulanteh Sumbawabesar', 1),
(3516, 1528, 'Batulayar Gerung', 1),
(3517, 1528, 'Bayan Gerung', 1),
(3518, 1528, 'Belo Woha', 1),
(3519, 1528, 'Bima', 1),
(3520, 1528, 'Bolo Woha', 1),
(3521, 1528, 'Brang Rea Taliwang', 1),
(3522, 1528, 'Cakranegara Mataram', 1),
(3523, 1528, 'Dompu Kab. Dompu', 1),
(3524, 1528, 'Donggo Woha', 1),
(3525, 1528, 'Empang Sumbawabesar', 1),
(3526, 1528, 'Gangga Gerung', 1),
(3527, 1528, 'Gerung Kab. Lombok Barat', 1),
(3528, 1528, 'Gunung Sari Gerung', 1),
(3529, 1528, 'Huu Dompu', 1),
(3530, 1528, 'Janapria Praya', 1),
(3531, 1528, 'Jereweh / Batuhijau / Bennete', 1),
(3532, 1528, 'Jerowaru Selong', 1),
(3533, 1528, 'Jonggat Praya', 1),
(3534, 1528, 'Kayangan Gerung', 1),
(3535, 1528, 'Kediri Gerung', 1),
(3536, 1528, 'Kempo Dompu', 1),
(3537, 1528, 'Keruak Selong', 1),
(3538, 1528, 'Kilo Dompu', 1),
(3539, 1528, 'Kopang Praya', 1),
(3540, 1528, 'Kuripan Gerung', 1),
(3541, 1528, 'Labangka Sumbawabesar', 1),
(3542, 1528, 'Labu Api Gerung', 1),
(3543, 1528, 'Labuhan Badas Sumbawabesar', 1),
(3544, 1528, 'Labuhan Haji Selong', 1),
(3545, 1528, 'Lambu Woha', 1),
(3546, 1528, 'Langgudu Woha ', 1),
(3547, 1528, 'Lembar Gerung', 1),
(3548, 1528, 'Lingsar Gerung', 1),
(3549, 1528, 'Lunyuk Sumbawabesar', 1),
(3550, 1528, 'Mada Pangga Woha ', 1),
(3551, 1528, 'Manggelewa Dompu', 1),
(3552, 1528, 'Masbagik Selong', 1),
(3553, 1528, 'Mataram', 1),
(3554, 1528, 'Monta Woha ', 1),
(3555, 1528, 'Montong Gading Selong', 1),
(3556, 1528, 'Moyohilir Sumbawabesar', 1),
(3557, 1528, 'Moyohulu Sumbawabesar', 1),
(3558, 1528, 'Mpunda Bima', 1),
(3559, 1528, 'Narmada Gerung', 1),
(3560, 1528, 'Pajo Dompu', 1),
(3561, 1528, 'Pekat Dompu', 1),
(3562, 1528, 'Pemenang Gerung', 1),
(3563, 1528, 'Plampang Sumbawabesar', 1),
(3564, 1528, 'Praya Barat Daya Praya', 1),
(3565, 1528, 'Praya Barat Praya', 1),
(3566, 1528, 'Praya Tengah Praya', 1),
(3567, 1528, 'Praya Timur Praya', 1),
(3568, 1528, 'Praya Kab. Lombok Tengah', 1),
(3569, 1528, 'Pringgabaya Selong', 1),
(3570, 1528, 'Pringgarata Praya', 1),
(3571, 1528, 'Pringgasela Selong', 1),
(3572, 1528, 'Pujut Praya', 1),
(3573, 1528, 'Raba Bima', 1),
(3574, 1528, 'Rasanae Barat Bima', 1),
(3575, 1528, 'Rasanae Timur Bima', 1),
(3576, 1528, 'Ropang Sumbawabesar', 1),
(3577, 1528, 'Sakra Barat Selong', 1),
(3578, 1528, 'Sakra Timur Selong', 1),
(3579, 1528, 'Sakra Selong', 1),
(3580, 1528, 'Sambelia Selong', 1),
(3581, 1528, 'Sanggar Woha ', 1),
(3582, 1528, 'Sape Woha ', 1),
(3583, 1528, 'Sekongkang/ Batuhijau / Bennete', 1),
(3584, 1528, 'Sekotong Tengah Gerung', 1),
(3585, 1528, 'Seletuk Taliwang', 1),
(3586, 1528, 'Selong Kab. Lombok Timur', 1),
(3587, 1528, 'Sembalun Selong', 1),
(3588, 1528, 'Sikur Selong', 1),
(3589, 1528, 'Suela Selong', 1),
(3590, 1528, 'Sukamulia Selong', 1),
(3591, 1528, 'Sumbawa Besar', 1),
(3592, 1528, 'Sumbawa Sumbawabesar', 1),
(3593, 1528, 'Suralaga Selong', 1),
(3594, 1528, 'Taliwang Kab. Sumbawa Barat', 1),
(3595, 1528, 'Tambora Woha ', 1),
(3596, 1528, 'Tanjung Gerung', 1),
(3597, 1528, 'Terara Selong', 1),
(3598, 1528, 'Utanrhee Sumbawabesar', 1),
(3599, 1528, 'Wanasaba Selong', 1),
(3600, 1528, 'Wawo Woha ', 1),
(3601, 1528, 'Wera Woha ', 1),
(3602, 1528, 'Woha Kab. Bima', 1),
(3603, 1528, 'Woja Dompu', 1),
(3604, 1529, 'Adonara Barat Larantuka', 1),
(3605, 1529, 'Adonara Timur Larantuka', 1),
(3606, 1529, 'Aesesa Selatan Mbay', 1),
(3607, 1529, 'Aesesa Mbay', 1),
(3608, 1529, 'Aimere Bajawa', 1),
(3609, 1529, 'Alak Kupang', 1),
(3610, 1529, 'Alok Maumere', 1),
(3611, 1529, 'Alor Barat Daya Kalabahi', 1),
(3612, 1529, 'Alor Barat Laut Kalabahi', 1),
(3613, 1529, 'Alor Selatan Kalabahi', 1),
(3614, 1529, 'Alor Tengah Utara Kalabahi', 1),
(3615, 1529, 'Alor Timur Laut Kalabahi', 1),
(3616, 1529, 'Alor Timur Kalabahi', 1),
(3617, 1529, 'Amabioefeto Timur Oelamasi', 1),
(3618, 1529, 'Amanatun Selatan Soe', 1),
(3619, 1529, 'Amanatun Tengah Soe', 1),
(3620, 1529, 'Amanatun Timur Soe', 1),
(3621, 1529, 'Amanatun Utara Soe', 1),
(3622, 1529, 'Amanuban Barat Soe', 1),
(3623, 1529, 'Amanuban Selatan Soe', 1),
(3624, 1529, 'Amarasi Barat Oelamasi', 1),
(3625, 1529, 'Amarasi Selatan Oelamasi', 1),
(3626, 1529, 'Amarasi Timur Oelamasi', 1),
(3627, 1529, 'Amarasi Oelamasi', 1),
(3628, 1529, 'Amfoang Barat Daya Oelamasi', 1),
(3629, 1529, 'Amfoang Barat Laut Oelamasi', 1),
(3630, 1529, 'Amfoang Selatan Oelamasi', 1),
(3631, 1529, 'Amfoang Utara Oelamasi', 1),
(3632, 1529, 'Atadei Lewoleba', 1),
(3633, 1529, 'Atambua Kab. Belu', 1),
(3634, 1529, 'Baa Baa', 1),
(3635, 1529, 'Bajawa Kab. Ngada', 1),
(3636, 1529, 'Batu Putih Soe', 1),
(3637, 1529, 'Biboki Anleu Kefamenanu', 1),
(3638, 1529, 'Biboki Selatan Kefamenanu', 1),
(3639, 1529, 'Biboki Utara Kefamenanu', 1),
(3640, 1529, 'Boawae Mbay', 1),
(3641, 1529, 'Boking Soe', 1),
(3642, 1529, 'Bola Maumere', 1),
(3643, 1529, 'Borong Kab. Manggarai Timur', 1),
(3644, 1529, 'Buyasuri Lewoleba', 1),
(3645, 1529, 'Cibal Ruteng', 1),
(3646, 1529, 'Detukeli Ende', 1),
(3647, 1529, 'Detusoko Ende', 1),
(3648, 1529, 'Elar Borong', 1),
(3649, 1529, 'Ende Selatan Ende', 1),
(3650, 1529, 'Ende Tengah Ende', 1),
(3651, 1529, 'Ende Timur Ende', 1),
(3652, 1529, 'Ende Utara Ende', 1),
(3653, 1529, 'Ende Kab. Ende', 1),
(3654, 1529, 'Fatuleu Barat Oelamasi', 1),
(3655, 1529, 'Fatuleu Tengah Oelamasi', 1),
(3656, 1529, 'Fatuleu Oelamasi', 1),
(3657, 1529, 'Fatumnasi Soe', 1),
(3658, 1529, 'Golewa Bajawa', 1),
(3659, 1529, 'Haharu Waingapu', 1),
(3660, 1529, 'Hawu Mehara Oelamasi', 1),
(3661, 1529, 'Ile Ape Lewoleba', 1),
(3662, 1529, 'Ile Boleng Larantuka', 1),
(3663, 1529, 'Ile Mandiri Larantuka', 1),
(3664, 1529, 'Insana Utara Kefamenanu', 1),
(3665, 1529, 'Insana Kefamenanu', 1),
(3666, 1529, 'Jere Buu Bajawa', 1),
(3667, 1529, 'Kahaungu Eti Waingapu', 1),
(3668, 1529, 'Kakuluk Mesak Atambua', 1),
(3669, 1529, 'Kalabahi', 1),
(3670, 1529, 'Kalbano Soe', 1),
(3671, 1529, 'Karera Waingapu', 1),
(3672, 1529, 'Katikutana Waibakul', 1),
(3673, 1529, 'Kefamenanu Kab. Timor Tgh Utara', 1),
(3674, 1529, 'Kelapa Lima Kupang', 1),
(3675, 1529, 'Kelimutu Ende', 1),
(3676, 1529, 'Kelubagolit Larantuka', 1),
(3677, 1529, 'Keo Tengah Mbay', 1),
(3678, 1529, 'Kewapante Maumere', 1),
(3679, 1529, 'Kie Soe', 1),
(3680, 1529, 'Kobalima Atambua', 1),
(3681, 1529, 'Kodi Bangedo Tambolaka', 1),
(3682, 1529, 'Kodi Utara Tambolaka', 1),
(3683, 1529, 'Kodi Tambolaka', 1),
(3684, 1529, 'Komba Ruteng', 1),
(3685, 1529, 'Komodo Labuan Bajo', 1),
(3686, 1529, 'Kotabaru Ende', 1),
(3687, 1529, 'Kot''olin Soe', 1),
(3688, 1529, 'Kualin Soe', 1),
(3689, 1529, 'Kuan Fatu Soe', 1),
(3690, 1529, 'Kupang', 1),
(3691, 1529, 'Kupang Barat Oelamasi', 1),
(3692, 1529, 'Kupang Tengah Oelamasi', 1),
(3693, 1529, 'Kupang Timur Oelamasi', 1),
(3694, 1529, 'Kuwus Labuan Bajo', 1),
(3695, 1529, 'Labuan Bajo Labuan Bajo', 1),
(3696, 1529, 'Lamakmen Atambua', 1),
(3697, 1529, 'Lamba Leda Borong', 1),
(3698, 1529, 'Lambaleda Ruteng', 1),
(3699, 1529, 'Larantuka Kab. Flores Timur', 1),
(3700, 1529, 'Laratama Waikabubak', 1),
(3701, 1529, 'Laura Tambolaka', 1),
(3702, 1529, 'Lebatukan Lewoleba', 1),
(3703, 1529, 'Lela Maumere', 1),
(3704, 1529, 'Lembor Labuan Bajo', 1),
(3705, 1529, 'Lewa Waingapu', 1),
(3706, 1529, 'Lewoleba Lembata', 1),
(3707, 1529, 'Lio Timur Ende', 1),
(3708, 1529, 'Lobalain Baa', 1),
(3709, 1529, 'Lomba Borong', 1),
(3710, 1529, 'Macang Pacar Labuan Bajo', 1),
(3711, 1529, 'Magekoba/maurole Ende', 1),
(3712, 1529, 'Malaka Barat Atambua', 1),
(3713, 1529, 'Malaka Tengah Atambua', 1),
(3714, 1529, 'Malaka Timur Atambua', 1),
(3715, 1529, 'Mamboro Waibakul', 1),
(3716, 1529, 'Matawai Lapau Waingapu', 1),
(3717, 1529, 'Maukaro Ende', 1),
(3718, 1529, 'Maumere Kab. Sikka', 1),
(3719, 1529, 'Mauponggo Mbay', 1),
(3720, 1529, 'Mawlapa Kupang', 1),
(3721, 1529, 'Mbay Kab. Nagekeo', 1),
(3722, 1529, 'Mborong Ruteng', 1),
(3723, 1529, 'Mego Maumere', 1),
(3724, 1529, 'Miomafo Barat Kefamenanu', 1),
(3725, 1529, 'Miomafu Timur Kefamenanu', 1),
(3726, 1529, 'Mollo Selatan Soe', 1),
(3727, 1529, 'Mollo Utara Soe', 1),
(3728, 1529, 'Nagawutung Lewoleba', 1),
(3729, 1529, 'Nanga Panda Ende', 1),
(3730, 1529, 'Nangaroro Mbay', 1),
(3731, 1529, 'Ndona Timur Ende', 1),
(3732, 1529, 'Ndona Ende', 1),
(3733, 1529, 'Nekemese Oelamasi', 1),
(3734, 1529, 'Neomuti Kefamenanu', 1),
(3735, 1529, 'Ngada Bawa Bajawa', 1),
(3736, 1529, 'Nggaha Oriangu Waingapu', 1),
(3737, 1529, 'Nita Maumere', 1),
(3738, 1529, 'Nubatukan Lewoleba', 1),
(3739, 1529, 'Nunkolo Soe', 1),
(3740, 1529, 'Oebobo Kupang', 1),
(3741, 1529, 'Oelamasi Kab. Oelamasi', 1),
(3742, 1529, 'Oenino Soe', 1),
(3743, 1529, 'Omesuri Lewoleba', 1),
(3744, 1529, 'Paberiawai Waingapu', 1),
(3745, 1529, 'Paga Maumere', 1),
(3746, 1529, 'Pahungalodu Waingapu', 1),
(3747, 1529, 'Palue Maumere', 1),
(3748, 1529, 'Pandawai Waingapu', 1),
(3749, 1529, 'Pantai Baru Baa', 1),
(3750, 1529, 'Pantar Barat Kalabahi', 1),
(3751, 1529, 'Pantar Kalabahi', 1),
(3752, 1529, 'Pinu Pahar Waingapu', 1),
(3753, 1529, 'Poco Ranaka Borong', 1),
(3754, 1529, 'Polen Soe', 1),
(3755, 1529, 'Ponco Ranaka Ruteng', 1),
(3756, 1529, 'Pulau Ende Ende', 1),
(3757, 1529, 'Raihat Atambua', 1),
(3758, 1529, 'Raijua Oelamasi', 1),
(3759, 1529, 'Reo Ruteng', 1),
(3760, 1529, 'Rindi Waingapu', 1),
(3761, 1529, 'Rinhat Atambua', 1),
(3762, 1529, 'Riung Barat Bajawa', 1),
(3763, 1529, 'Riung Bajawa', 1),
(3764, 1529, 'Rote Barat Daya Baa', 1),
(3765, 1529, 'Rote Barat Laut Baa', 1),
(3766, 1529, 'Rote Tengah Baa', 1),
(3767, 1529, 'Rote Timur Baa', 1),
(3768, 1529, 'Ruteng Kab. Manggarai', 1),
(3769, 1529, 'Sabu Barat Oelamasi', 1),
(3770, 1529, 'Sabu Liae Oelamasi', 1),
(3771, 1529, 'Sabu Timur Oelamasi', 1),
(3772, 1529, 'Sambi Rambas Ruteng', 1),
(3773, 1529, 'Sambi Rampas Borong', 1),
(3774, 1529, 'Sanonggoang Labuan Bajo', 1),
(3775, 1529, 'Sasita Mean Atambua', 1),
(3776, 1529, 'Satarmese Ruteng', 1),
(3777, 1529, 'Semau Selatan Oelamasi', 1),
(3778, 1529, 'Semau Oelamasi', 1),
(3779, 1529, 'Soa Bajawa', 1),
(3780, 1529, 'Soe Kab. Timor Tengah Selatan', 1),
(3781, 1529, 'Solor Barat Larantuka', 1),
(3782, 1529, 'Solor Timur Larantuka', 1),
(3783, 1529, 'Sulamu Oelamasi', 1),
(3784, 1529, 'Tabundung Waingapu', 1),
(3785, 1529, 'Taebenu Oelamasi', 1),
(3786, 1529, 'Takari Oelamasi', 1),
(3787, 1529, 'Talibura Maumere', 1),
(3788, 1529, 'Tambolaka Tambolaka', 1),
(3789, 1529, 'Tanjung Bunga Larantuka', 1),
(3790, 1529, 'Tasifeto Barat Atambua', 1),
(3791, 1529, 'Tasifeto Timur Atambua', 1),
(3792, 1529, 'Teluk Mutiara Kalabahi', 1),
(3793, 1529, 'Tionas Soe', 1),
(3794, 1529, 'Titihena Larantuka', 1),
(3795, 1529, 'Umalulu Waingapu', 1),
(3796, 1529, 'Umbu Ratu Nggay Barat Waibakul', 1),
(3797, 1529, 'Umbu Ratu Nggay Waibakul', 1),
(3798, 1529, 'Wae Rii Ruteng', 1),
(3799, 1529, 'Waibakul Kab. Sumba Tengah', 1),
(3800, 1529, 'Waigete Maumere', 1),
(3801, 1529, 'Waikabubak', 1),
(3802, 1529, 'Waingapu Kab. Sumba Timur', 1),
(3803, 1529, 'Walakaka Waikabubak', 1),
(3804, 1529, 'Wewaria Ende', 1),
(3805, 1529, 'Wewewa Barat Tambolaka', 1),
(3806, 1529, 'Wewewa Selatan Tambolaka', 1),
(3807, 1529, 'Wewewa Timur Tambolaka', 1),
(3808, 1529, 'Wewewa Utara Tambolaka', 1),
(3809, 1529, 'Witihama Larantuka', 1),
(3810, 1529, 'Wogomang Ulewa Bajawa', 1),
(3811, 1529, 'Wolo Wae Mbay', 1),
(3812, 1529, 'Wolo Waru Ende', 1),
(3813, 1529, 'Wolojita Ende', 1),
(3814, 1529, 'Wotan Ulu Mado Larantuka', 1),
(3815, 1529, 'Wulandoni Lewoleba', 1),
(3816, 1529, 'Wulanggitang Larantuka', 1),
(3817, 1529, 'Wulla Waijelu Waingapu', 1),
(3818, 1530, 'Abenaho Wamena', 1),
(3819, 1530, 'Abepura Jayapura', 1),
(3820, 1530, 'Agats Kab. Asmat', 1),
(3821, 1530, 'Agimuga Timika', 1),
(3822, 1530, 'Agisiga Intan Jaya', 1),
(3823, 1530, 'Agisiga Paniai', 1),
(3824, 1530, 'Akat Agats', 1),
(3825, 1530, 'Anggruk Sumohai', 1),
(3826, 1530, 'Angkaisera Serui', 1),
(3827, 1530, 'Apalapsili Wamena', 1),
(3828, 1530, 'Aradide Paniai', 1),
(3829, 1530, 'Arso Waris', 1),
(3830, 1530, 'Asologaima Wamena', 1),
(3831, 1530, 'Assue Mappi', 1),
(3832, 1530, 'Atsy Agats', 1),
(3833, 1530, 'Batom Oksibil', 1),
(3834, 1530, 'Benuki Burmeso', 1),
(3835, 1530, 'Beoga Puncak Jaya', 1),
(3836, 1530, 'Biak', 1),
(3837, 1530, 'Biak Barat Biak', 1),
(3838, 1530, 'Biak Timur Biak', 1),
(3839, 1530, 'Biak Utara  Biak', 1),
(3840, 1530, 'Biandoga Intan Jaya', 1),
(3841, 1530, 'Biandoga Paniai', 1),
(3842, 1530, 'Bibida Paniai', 1),
(3843, 1530, 'Bogoboida Paniai', 1),
(3844, 1530, 'Bokondini Karubaga', 1),
(3845, 1530, 'Bolakma Wamena', 1),
(3846, 1530, 'Bonggo Sarmi', 1),
(3847, 1530, 'Borme Oksibil', 1),
(3848, 1530, 'Botawa', 1),
(3849, 1530, 'Bowobado Deiyai', 1),
(3850, 1530, 'Burmeso', 1),
(3851, 1530, 'Citak Mitak Mappi', 1),
(3852, 1530, 'Demta Jayapura', 1),
(3853, 1530, 'Depapre Jayapura', 1),
(3854, 1530, 'Dipa Nabire', 1),
(3855, 1530, 'Distrik Bomakia Tanah Merah', 1),
(3856, 1530, 'Distrik Ulilin Merauke', 1),
(3857, 1530, 'Edera Mappi', 1),
(3858, 1530, 'Eligobel Merauke', 1),
(3859, 1530, 'Enarotali Paniai', 1),
(3860, 1530, 'Fawi Puncak Jaya', 1),
(3861, 1530, 'Fayit Agats', 1),
(3862, 1530, 'Gamelia Wamena', 1),
(3863, 1530, 'Haju Mappi', 1),
(3864, 1530, 'Hitadipa Intan Jaya', 1),
(3865, 1530, 'Homeyo Intan Jaya', 1),
(3866, 1530, 'Homeyo Paniai', 1),
(3867, 1530, 'Hubikosi Wamena', 1),
(3868, 1530, 'Ilaga Puncak Jaya', 1),
(3869, 1530, 'Ilu Puncak Jaya', 1),
(3870, 1530, 'Intan Jaya Intan Jaya', 1),
(3871, 1530, 'Iwur Oksibil', 1),
(3872, 1530, 'Jagebob Merauke', 1),
(3873, 1530, 'Jair Tanah Merah', 1),
(3874, 1530, 'Jayapura', 1),
(3875, 1530, 'Jayapura Selatan Jayapura', 1),
(3876, 1530, 'Jayapura Utara Jayapura', 1),
(3877, 1530, 'Jila Timika', 1),
(3878, 1530, 'Jita Timika', 1),
(3879, 1530, 'Kamu Selatan Dogiyai', 1),
(3880, 1530, 'Kamu Timur Dogiyai', 1),
(3881, 1530, 'Kamu Utara Dogiyai', 1),
(3882, 1530, 'Kamu Dogiyai', 1),
(3883, 1530, 'Kanggime Karubaga', 1),
(3884, 1530, 'Kapiraya Deiyai', 1),
(3885, 1530, 'Karubaga Kab. Tolikora', 1),
(3886, 1530, 'Kaureh Jayapura', 1),
(3887, 1530, 'Kelila Wamena', 1),
(3888, 1530, 'Kembu Karubaga', 1),
(3889, 1530, 'Kemtuk Gressi Jayapura', 1),
(3890, 1530, 'Kemtuk Jayapura', 1),
(3891, 1530, 'Kenyam Wamena', 1),
(3892, 1530, 'Kepi Mappi', 1),
(3893, 1530, 'Kepulauan Padaidio Biak', 1),
(3894, 1530, 'Kimaam Merauke', 1),
(3895, 1530, 'Kiwirok Oksibil', 1),
(3896, 1530, 'Kobakma Wamena', 1),
(3897, 1530, 'Kouh Tanah Merah', 1),
(3898, 1530, 'Kuala Kencana Timika', 1),
(3899, 1530, 'Kurik Merauke', 1),
(3900, 1530, 'Kurima Sumohai', 1),
(3901, 1530, 'Kurulu Wamena', 1),
(3902, 1530, 'Maki Wamena', 1),
(3903, 1530, 'Makimi Nabire', 1),
(3904, 1530, 'Mamberamo Ilir Burmeso', 1),
(3905, 1530, 'Mamberamo Tengah Timur Burmeso', 1),
(3906, 1530, 'Mamberamo Tengah Burmeso', 1),
(3907, 1530, 'Mamberamo Ulu Burmeso', 1),
(3908, 1530, 'Mandobo Tanah Merah', 1),
(3909, 1530, 'Mapenduma Wamena', 1),
(3910, 1530, 'Mapia Nabire', 1),
(3911, 1530, 'Masirei Botawa', 1),
(3912, 1530, 'Menou Nabire', 1),
(3913, 1530, 'Merauke Kab. Merauke', 1),
(3914, 1530, 'Mimika Barat Jauh Timika', 1),
(3915, 1530, 'Mimika Barat Tengah Timika', 1),
(3916, 1530, 'Mimika Barat Timika', 1),
(3917, 1530, 'Mimika Baru Timika', 1),
(3918, 1530, 'Mimika Timur Jauh Timika', 1),
(3919, 1530, 'Mimika Timur Tengah Timika', 1),
(3920, 1530, 'Mimika Timur Timika', 1),
(3921, 1530, 'Mindiptana Tanah Merah', 1),
(3922, 1530, 'Muara Tam Jayapura', 1),
(3923, 1530, 'Mulia Puncak Jaya', 1),
(3924, 1530, 'Muting Merauke', 1),
(3925, 1530, 'Nabire Barat Nabire', 1),
(3926, 1530, 'Nabire Nabire', 1),
(3927, 1530, 'Nambioman Bapai Mappi', 1),
(3928, 1530, 'Napan Nabire', 1),
(3929, 1530, 'Nimbokrang Jayapura', 1),
(3930, 1530, 'Nimboran Jayapura', 1),
(3931, 1530, 'Ninia Sumohai', 1),
(3932, 1530, 'Numfor Barat Biak', 1),
(3933, 1530, 'Numfor Timur Biak', 1),
(3934, 1530, 'Obaa Mappi', 1),
(3935, 1530, 'Obano Nabire', 1),
(3936, 1530, 'Okaba Merauke', 1),
(3937, 1530, 'Okbibab Oksibil', 1),
(3938, 1530, 'Oksibil Kab. Peg. Bintang', 1),
(3939, 1530, 'Paniai Barat Paniai', 1),
(3940, 1530, 'Paniai Barat Paniai', 1),
(3941, 1530, 'Pantai Barat Sarmi', 1),
(3942, 1530, 'Pantai Kasuari Agats', 1),
(3943, 1530, 'Pantai Timur Sarmi', 1),
(3944, 1530, 'Pirime Wamena', 1),
(3945, 1530, 'Poom Serui', 1),
(3946, 1530, 'Rufaer Burmeso', 1),
(3947, 1530, 'Samofa Biak', 1),
(3948, 1530, 'Sarmi Kab. Sarmi', 1),
(3949, 1530, 'Sawaerma Agats', 1),
(3950, 1530, 'Sawai Burmeso', 1),
(3951, 1530, 'Semangga Merauke', 1),
(3952, 1530, 'Senggi Waris', 1),
(3953, 1530, 'Sentani Barat Jayapura', 1),
(3954, 1530, 'Sentani Timur Jayapura', 1),
(3955, 1530, 'Sentani Jayapura', 1),
(3956, 1530, 'Serui', 1),
(3957, 1530, 'Sinak Puncak Jaya', 1),
(3958, 1530, 'Siriwo Nabire', 1),
(3959, 1530, 'Skanto Waris', 1),
(3960, 1530, 'Sorendiweri', 1),
(3961, 1530, 'Sota Merauke', 1),
(3962, 1530, 'Suator Agats', 1),
(3963, 1530, 'Sugapa Intan Jaya', 1),
(3964, 1530, 'Sukikai Selatan Dogiyai', 1),
(3965, 1530, 'Sukikai Dogiyai', 1),
(3966, 1530, 'Sumohai', 1),
(3967, 1530, 'Supiori Selatan Sorendiweri', 1),
(3968, 1530, 'Supiori Timur Sorendiweri', 1),
(3969, 1530, 'Supiori Utara Sorendiweri', 1),
(3970, 1530, 'Tanah Merah', 1),
(3971, 1530, 'Tanah Miring Merauke', 1),
(3972, 1530, 'Teluk Kimi Nabire', 1),
(3973, 1530, 'Teluk Umar Nabire', 1),
(3974, 1530, 'Tembaga Pura Timika', 1),
(3975, 1530, 'Tigi Barat Deiyai', 1),
(3976, 1530, 'Tigi Timur Deiyai', 1),
(3977, 1530, 'Tigi Deiyai', 1),
(3978, 1530, 'Timika', 1),
(3979, 1530, 'Tiom Wamena', 1),
(3980, 1530, 'Tor Atas Sarmi', 1),
(3981, 1530, 'Unurum Guay Jayapura', 1),
(3982, 1530, 'Uwapa Nabire', 1),
(3983, 1530, 'Wamena Kab. Jayawijaya', 1),
(3984, 1530, 'Wandai Intan Jaya', 1),
(3985, 1530, 'Wanggar Nabire', 1),
(3986, 1530, 'Wapoga Nabire', 1),
(3987, 1530, 'Waris Kab Keerom', 1),
(3988, 1530, 'Waropen Atas Burmeso', 1),
(3989, 1530, 'Waropen Bawah Botawa', 1),
(3990, 1530, 'Waropko Tanah Merah', 1),
(3991, 1530, 'Warsa Biak', 1),
(3992, 1530, 'Web Waris', 1),
(3993, 1530, 'Yapen Barat Serui', 1),
(3994, 1530, 'Yapen Selatan Serui', 1),
(3995, 1530, 'Yapen Timur Serui', 1),
(3996, 1530, 'Yaro Nabire', 1),
(3997, 1530, 'Yaur Nabire', 1),
(3998, 1530, 'Yendidori Biak', 1),
(3999, 1531, 'Abun Sorong', 1),
(4000, 1531, 'Aifat Timur Teminabuan', 1),
(4001, 1531, 'Aifat Teminabuan', 1),
(4002, 1531, 'Aimas Sorong', 1),
(4003, 1531, 'Aitinyo Teminabuan', 1),
(4004, 1531, 'Amberbaken Manokwari', 1),
(4005, 1531, 'Anggi Manokwari', 1),
(4006, 1531, 'Aranday Bintuni', 1),
(4007, 1531, 'Ayamaru Utara Teminabuan', 1),
(4008, 1531, 'Ayamaru Teminabuan', 1),
(4009, 1531, 'Babo Bintuni', 1),
(4010, 1531, 'Beraur Sorong', 1),
(4011, 1531, 'Bintuni Kab. Teluk Bintuni', 1),
(4012, 1531, 'Buruwai Kaimana', 1),
(4013, 1531, 'Door Bintuni', 1),
(4014, 1531, 'Fafuwar Bintuni', 1),
(4015, 1531, 'Fef Sorong', 1),
(4016, 1531, 'Inanwatan Teminabuan', 1),
(4017, 1531, 'Kaimana', 1),
(4018, 1531, 'Kais Teminabuan', 1),
(4019, 1531, 'Kebar Manokwari', 1),
(4020, 1531, 'Kepulauan Ayau Waisai', 1),
(4021, 1531, 'Klamono Sorong', 1),
(4022, 1531, 'Kofiau Waisai', 1),
(4023, 1531, 'Kokoda Teminabuan', 1),
(4024, 1531, 'Kuri Bintuni', 1),
(4025, 1531, 'Makbon Sorong', 1),
(4026, 1531, 'Manokwari', 1),
(4027, 1531, 'Mare Teminabuan', 1),
(4028, 1531, 'Masni Manokwari', 1),
(4029, 1531, 'Merdey Bintuni', 1),
(4030, 1531, 'Minyambouw Manokwari', 1),
(4031, 1531, 'Misool Timur Selatan Waisai', 1),
(4032, 1531, 'Misool Waisai', 1),
(4033, 1531, 'Moraid Sorong', 1),
(4034, 1531, 'Moskona Selatan Bintuni', 1),
(4035, 1531, 'Moskona Utara Bintuni', 1),
(4036, 1531, 'Moswaren Teminabuan', 1),
(4037, 1531, 'Oransbari Manokwari', 1),
(4038, 1531, 'Prafi Manokwari', 1),
(4039, 1531, 'Ransiki Manokwari', 1),
(4040, 1531, 'Rasei', 1),
(4041, 1531, 'Rumberpon Rasei', 1),
(4042, 1531, 'Salawati Sorong', 1),
(4043, 1531, 'Samate Waisai', 1),
(4044, 1531, 'Sausapor Sorong', 1),
(4045, 1531, 'Sawiat Teminabuan', 1),
(4046, 1531, 'Sayosa Sorong', 1),
(4047, 1531, 'Seget Sorong', 1),
(4048, 1531, 'Segun Sorong', 1),
(4049, 1531, 'Seremuk Teminabuan', 1),
(4050, 1531, 'Sorong', 1),
(4051, 1531, 'Sorong Barat Sorong', 1),
(4052, 1531, 'Sorong Timur Sorong', 1),
(4053, 1531, 'Sugurey Manokwari', 1),
(4054, 1531, 'Teluk Arguni Kaimana', 1),
(4055, 1531, 'Teluk Etna Kaimana', 1),
(4056, 1531, 'Teluk Mayalibit Waisai', 1),
(4057, 1531, 'Tembuni Bintuni', 1),
(4058, 1531, 'Teminabuan Kab. Sorong Selatan', 1),
(4059, 1531, 'Waigeo Barat Waisai', 1),
(4060, 1531, 'Waigeo Selatan Waisai', 1),
(4061, 1531, 'Waigeo Timur Waisai', 1),
(4062, 1531, 'Waigeo Utara Waisai', 1),
(4063, 1531, 'Waisai Kab. Raja Ampat', 1),
(4064, 1531, 'Wamesa Rasei', 1),
(4065, 1531, 'Warmare Manokwari', 1),
(4066, 1531, 'Wasior Barat Rasei', 1),
(4067, 1531, 'Wasior Selatan Rasei', 1),
(4068, 1531, 'Wasior Utara Rasei', 1),
(4069, 1531, 'Wasior Rasei', 1),
(4070, 1531, 'Wayer Teminabuan', 1),
(4071, 1531, 'Windesi Rasei', 1),
(4072, 1532, 'Bagan Sinembah Kab Rokan Hilir', 1),
(4073, 1532, 'Bagansiapiapi Kab Rokan Hilir', 1),
(4074, 1532, 'Bangkinang Barat Bangkinang', 1),
(4075, 1532, 'Bangkinang Seberang', 1),
(4076, 1532, 'Bangkinang Kab Kampar', 1),
(4077, 1532, 'Bangko Pusako Kab Rokan Hilir', 1),
(4078, 1532, 'Bangko Kab Rokan Hilir', 1),
(4079, 1532, 'Bangun Purba Pasir Pangaraian', 1),
(4080, 1532, 'Bantan Bengkalis', 1),
(4081, 1532, 'Batang Cenaku Rengat', 1),
(4082, 1532, 'Batang Gansal Rengat', 1),
(4083, 1532, 'Batang Tuaka Tembilahan', 1),
(4084, 1532, 'Batu Hampar Kab Rokan Hilir', 1),
(4085, 1532, 'Benai Teluk Kuantan', 1),
(4086, 1532, 'Bengkalis Kab Bengkalis', 1),
(4087, 1532, 'Bukit Batu Bengkalis', 1),
(4088, 1532, 'Bukit Kapur Dumai', 1),
(4089, 1532, 'Bukit Raya Pekanbaru', 1);
INSERT INTO `oc_city` (`city_id`, `zone_id`, `name`, `status`) VALUES
(4090, 1532, 'Bunga Raya Siaksriindapura', 1),
(4091, 1532, 'Bunut Kab. Palalawan', 1),
(4092, 1532, 'Cerenti Teluk Kuantan', 1),
(4093, 1532, 'Dayun Siaksriindapura', 1),
(4094, 1532, 'Dumai Barat Dumai', 1),
(4095, 1532, 'Dumai Timur Dumai', 1),
(4096, 1532, 'Dumai Kota Dumai', 1),
(4097, 1532, 'Enok Tembilahan', 1),
(4098, 1532, 'Gaung Anak Serka Tembilahan', 1),
(4099, 1532, 'Gaung Tembilahan', 1),
(4100, 1532, 'Gunung Sahilan Bangkinang', 1),
(4101, 1532, 'Gunung Toar Teluk Kuantan', 1),
(4102, 1532, 'Hulu Kuantan Teluk Kuantan', 1),
(4103, 1532, 'Inuman Teluk Kuantan', 1),
(4104, 1532, 'Kab. Meranti', 1),
(4105, 1532, 'Kabun Pasir Pangaraian', 1),
(4106, 1532, 'Kampar Kiri Hilir Bangkinang', 1),
(4107, 1532, 'Kampar Kiri Hulu Bangkinang', 1),
(4108, 1532, 'Kampar Kiri Bangkinang', 1),
(4109, 1532, 'Kampar Timur Bangkinang', 1),
(4110, 1532, 'Kampar Utara Bangkinang', 1),
(4111, 1532, 'Kampar Bangkinang', 1),
(4112, 1532, 'Kandis Siaksriindapura', 1),
(4113, 1532, 'Kateman Tembilahan', 1),
(4114, 1532, 'Kelayang Rengat', 1),
(4115, 1532, 'Kemuning Tembilahan', 1),
(4116, 1532, 'Kepenuhan Pasir Pangaraian', 1),
(4117, 1532, 'Kerinci Kanan Siaksriindapura', 1),
(4118, 1532, 'Keritang Tembilahan', 1),
(4119, 1532, 'Kerumutan Kab. Palalawan', 1),
(4120, 1532, 'Koto Gasip Siaksriindapura', 1),
(4121, 1532, 'Kuala Indragiri Tembilahan', 1),
(4122, 1532, 'Kuala Kampar Kab. Palalawan', 1),
(4123, 1532, 'Kuantan Hilir Teluk Kuantan', 1),
(4124, 1532, 'Kuantan Mudik Teluk Kuantan', 1),
(4125, 1532, 'Kuantan Tengah Teluk Kuantan', 1),
(4126, 1532, 'Kubu Bagansiapiapi', 1),
(4127, 1532, 'Kuntodarussalam P. Pangaraian', 1),
(4128, 1532, 'Langgam Kab. Palalawan', 1),
(4129, 1532, 'Lima Puluh Pekanbaru', 1),
(4130, 1532, 'Lirik Rengat', 1),
(4131, 1532, 'Logas Tana Darat Tk. Kuantan', 1),
(4132, 1532, 'Lubuk Dalam Siaksriindapura', 1),
(4133, 1532, 'Mandah Tembilahan', 1),
(4134, 1532, 'Mandau Bengkalis', 1),
(4135, 1532, 'Mandau Siaksriindapura', 1),
(4136, 1532, 'Marpoyan Damai Pekanbaru', 1),
(4137, 1532, 'Medang Kampai Dumai', 1),
(4138, 1532, 'Merbau Kab Meranti', 1),
(4139, 1532, 'Minas Siaksriindapura', 1),
(4140, 1532, 'Pangean Teluk Kuantan', 1),
(4141, 1532, 'Pangkalan Kerinci Kab. Palalawan', 1),
(4142, 1532, 'Pangkalan Kuras Kab. Palalawan', 1),
(4143, 1532, 'Pangkalan Lesung Kab. Palalawan', 1),
(4144, 1532, 'Pasir Limau Kapas Kab Rokan Hilir', 1),
(4145, 1532, 'Pasir Pangaraian', 1),
(4146, 1532, 'Pasir Penyu Rengat', 1),
(4147, 1532, 'Payung Pekan Baru', 1),
(4148, 1532, 'Pekanbaru', 1),
(4149, 1532, 'Pelalawan Kab. Palalawan', 1),
(4150, 1532, 'Pelangiran Tembilahan', 1),
(4151, 1532, 'Peranap Rengat', 1),
(4152, 1532, 'Perhentian Raja Bangkinang', 1),
(4153, 1532, 'Pinggir Bengkalis', 1),
(4154, 1532, 'Pujud Kab Rokan Hilir', 1),
(4155, 1532, 'Pulau Burung Tembilahan', 1),
(4156, 1532, 'Rambah Hilir Pasir Pangaraian', 1),
(4157, 1532, 'Rambah Samo Pasir Pangaraian', 1),
(4158, 1532, 'Rambah Pasir Pangaraian', 1),
(4159, 1532, 'Rangsang Barat Kab Meranti', 1),
(4160, 1532, 'Rangsang Kab Meranti', 1),
(4161, 1532, 'Rantau Kopar Kab Rokan Hilir', 1),
(4162, 1532, 'Rengat Barat Rengat', 1),
(4163, 1532, 'Rengat Kab Indragiri Hulu', 1),
(4164, 1532, 'Reteh Tembilahan', 1),
(4165, 1532, 'Rimba Melintang Kab Rokan Hilir', 1),
(4166, 1532, 'Rokan IV Koto Pasir Pangaraian', 1),
(4167, 1532, 'Rumbai Pesisir Pekanbaru', 1),
(4168, 1532, 'Rumbai Pekanbaru', 1),
(4169, 1532, 'Rumbio Jaya Bangkinang', 1),
(4170, 1532, 'Rupat Utara Bengkalis', 1),
(4171, 1532, 'Rupat Bengkalis', 1),
(4172, 1532, 'Sail Pekanbaru', 1),
(4173, 1532, 'Salo Bangkinang', 1),
(4174, 1532, 'Selat Panjang Kab Meranti', 1),
(4175, 1532, 'Senapelan Pekanbaru', 1),
(4176, 1532, 'Siak', 1),
(4177, 1532, 'Siak Hulu Bangkinang', 1),
(4178, 1532, 'Siak Kecil Bengkalis', 1),
(4179, 1532, 'Siaksriindapura', 1),
(4180, 1532, 'Siberida Rengat', 1),
(4181, 1532, 'Simpang Kanan Kab Rokan Hilir', 1),
(4182, 1532, 'Sinaboi Kab Rokan Hilir', 1),
(4183, 1532, 'Singingi Hilir Teluk Kuantan', 1),
(4184, 1532, 'Singingi Teluk Kuantan', 1),
(4185, 1532, 'Sorek Kab Pelalawan', 1),
(4186, 1532, 'Sukajadi Pekanbaru', 1),
(4187, 1532, 'Sungai Apit Siaksriindapura', 1),
(4188, 1532, 'Sungai Sembilan Dumai', 1),
(4189, 1532, 'Tambang Bangkinang', 1),
(4190, 1532, 'Tampan Pekanbaru', 1),
(4191, 1532, 'Tanah Merah Tembilahan', 1),
(4192, 1532, 'Tanah Putih Tj. Melawan Kab Rokan Hilir', 1),
(4193, 1532, 'Tanah Putih Kab Rokan Hilir', 1),
(4194, 1532, 'Tandun Pasir Pangaraian', 1),
(4195, 1532, 'Tapung Hilir Bangkinang', 1),
(4196, 1532, 'Tapung Hulu Bangkinang', 1),
(4197, 1532, 'Tapung Bangkinang', 1),
(4198, 1532, 'Tebing Tinggi Barat Kab Meranti', 1),
(4199, 1532, 'Tebing Tinggi Kab Meranti', 1),
(4200, 1532, 'Teluk Balengkong Tembilahan', 1),
(4201, 1532, 'Teluk Kuantan', 1),
(4202, 1532, 'Teluk Meranti Kab. Palalawan', 1),
(4203, 1532, 'Tembilahan Hulu Tembilahan', 1),
(4204, 1532, 'Tembilahan Kab. Indragiri Hilir', 1),
(4205, 1532, 'Tembusai Utara P. Pangaraian', 1),
(4206, 1532, 'Tembusai Pasir Pangaraian', 1),
(4207, 1532, 'Tempuling Tembilahan', 1),
(4208, 1532, 'Tenayan Raya Pekanbaru', 1),
(4209, 1532, 'Tualang Siaksriindapura', 1),
(4210, 1532, 'Ujungbatu Pasir Pangaraian', 1),
(4211, 1532, 'Ukui Kab. Palalawan', 1),
(4212, 1532, 'XIII Koto Kampar Bangkinang', 1),
(4213, 1533, 'Allu Polewali Mandar', 1),
(4214, 1533, 'Anreapi Polewali Mandar', 1),
(4215, 1533, 'Aralle Mamasa', 1),
(4216, 1533, 'Balanipa Polewali Mandar', 1),
(4217, 1533, 'Bambalamotu Mamuju Utara', 1),
(4218, 1533, 'Banggae Majene', 1),
(4219, 1533, 'Baras Mamuju Utara', 1),
(4220, 1533, 'Binuang Polewali Mandar', 1),
(4221, 1533, 'Bonehau Mamuju', 1),
(4222, 1533, 'Campalagian Polewali Mandar', 1),
(4223, 1533, 'Kalukku Mamuju', 1),
(4224, 1533, 'Kalumpang Mamuju', 1),
(4225, 1533, 'Karossa Kab. Mamuju', 1),
(4226, 1533, 'Limboro Polewali Mandar', 1),
(4227, 1533, 'Luyo Polewali Mandar', 1),
(4228, 1533, 'Majene Majene', 1),
(4229, 1533, 'Malunda Majene', 1),
(4230, 1533, 'Mamasa Mamasa', 1),
(4231, 1533, 'Mambi Mamasa', 1),
(4232, 1533, 'Mamuju Mamuju', 1),
(4233, 1533, 'Mapilli Kab. Polewali Mandar', 1),
(4234, 1533, 'Matakali Polewali Mandar', 1),
(4235, 1533, 'Matangnga Polewali Mandar', 1),
(4236, 1533, 'Messawa Mamasa', 1),
(4237, 1533, 'Nosu Mamasa', 1),
(4238, 1533, 'Pamboang Majene', 1),
(4239, 1533, 'Pangale Mamuju', 1),
(4240, 1533, 'Papalang Mamuju', 1),
(4241, 1533, 'Pasangkayu Mamuju Utara', 1),
(4242, 1533, 'Polewali Polewali Mandar', 1),
(4243, 1533, 'Sampaga Mamuju', 1),
(4244, 1533, 'Sarudu Kab. Mamuju Utara', 1),
(4245, 1533, 'Sendana Majene', 1),
(4246, 1533, 'Sesena Padang Mamasa', 1),
(4247, 1533, 'Simboro Dan Kepulauan Mamuju', 1),
(4248, 1533, 'Sumarorong Mamasa', 1),
(4249, 1533, 'Tabang Mamasa', 1),
(4250, 1533, 'Tabulahan Mamasa', 1),
(4251, 1533, 'Tanduk Kalua Mamasa', 1),
(4252, 1533, 'Tapalang Barat Mamuju', 1),
(4253, 1533, 'Tapango Polewali Mandar', 1),
(4254, 1533, 'Tappalang Mamuju', 1),
(4255, 1533, 'Tinambung Polewali Mandar', 1),
(4256, 1533, 'Tobadak Mamuju', 1),
(4257, 1533, 'Tommo Mamuju', 1),
(4258, 1533, 'Topoyo Mamuju', 1),
(4259, 1533, 'Tutallu Polewali Mandar', 1),
(4260, 1533, 'Wonomulyo Polewali Mandar', 1),
(4261, 1534, 'Ajangale Watampone', 1),
(4262, 1534, 'Alla Timur Enrekang', 1),
(4263, 1534, 'Alla Enrekang', 1),
(4264, 1534, 'Amali Watampone', 1),
(4265, 1534, 'Anggeraja Timur Enrekang', 1),
(4266, 1534, 'Anggeraja Enrekang', 1),
(4267, 1534, 'Angkona Kab. Luwu Timur', 1),
(4268, 1534, 'Arungkeke Jeneponto', 1),
(4269, 1534, 'Awan Rante Karua Rantepao', 1),
(4270, 1534, 'Awangpone Watampone', 1),
(4271, 1534, 'Baebunta Masamba', 1),
(4272, 1534, 'Bajeng Sungguminasa', 1),
(4273, 1534, 'Bajo Belopa', 1),
(4274, 1534, 'Balocci Pangkajene', 1),
(4275, 1534, 'Balusu Barru', 1),
(4276, 1534, 'Balusu Rantepao', 1),
(4277, 1534, 'Bangkala Barat Jeneponto', 1),
(4278, 1534, 'Bangkala Jeneponto', 1),
(4279, 1534, 'Bangkelekila Rantepao', 1),
(4280, 1534, 'Bantaeng Kab. Bantaeng', 1),
(4281, 1534, 'Bantimurung Maros', 1),
(4282, 1534, 'Barakka Enrekang', 1),
(4283, 1534, 'Baranti Sidenreng', 1),
(4284, 1534, 'Barebbo Watampone', 1),
(4285, 1534, 'Barombong Sungguminasa', 1),
(4286, 1534, 'Barru Kab. Barru', 1),
(4287, 1534, 'Baruppu Rantepao', 1),
(4288, 1534, 'Bassesangtempe Belopa', 1),
(4289, 1534, 'Batang Jeneponto', 1),
(4290, 1534, 'Batulappa Pinrang', 1),
(4291, 1534, 'Belawa Sengkang', 1),
(4292, 1534, 'Belopa Kab. Luwu Utara', 1),
(4293, 1534, 'Bengo Watampone', 1),
(4294, 1534, 'Benteng Kab. Selayar', 1),
(4295, 1534, 'Binamu Jeneponto', 1),
(4296, 1534, 'Biring Kanaya Makassar', 1),
(4297, 1534, 'Biringbulu Sungguminasa', 1),
(4298, 1534, 'Bissapu Bantaeng', 1),
(4299, 1534, 'Bituang Makale', 1),
(4300, 1534, 'Bola Sengkang', 1),
(4301, 1534, 'Bonggakaradeng Makale', 1),
(4302, 1534, 'Bonto Nompo Sungguminasa', 1),
(4303, 1534, 'Bontoala Makassar', 1),
(4304, 1534, 'Bontobahari Bulukumba', 1),
(4305, 1534, 'Bontocani Watampone', 1),
(4306, 1534, 'Bontoharu Benteng', 1),
(4307, 1534, 'Bontomanai Benteng', 1),
(4308, 1534, 'Bontomarannu Sungguminasa', 1),
(4309, 1534, 'Bontomatene Benteng', 1),
(4310, 1534, 'Bontoramba Jeneponto', 1),
(4311, 1534, 'Bontosikuyu Benteng', 1),
(4312, 1534, 'Bontotiro Bulukumba', 1),
(4313, 1534, 'Bua Ponrang(Bupon) Belopa', 1),
(4314, 1534, 'Bua Belopa', 1),
(4315, 1534, 'Bulukumba', 1),
(4316, 1534, 'Bulupoddo Sinjai', 1),
(4317, 1534, 'Bungaya Sungguminasa', 1),
(4318, 1534, 'Bungoro Pangkajene', 1),
(4319, 1534, 'Buntao Rantepao', 1),
(4320, 1534, 'Buntu Pepasan Rantepao', 1),
(4321, 1534, 'Burau Kab. Luwu Timur', 1),
(4322, 1534, 'Camba Maros', 1),
(4323, 1534, 'Cempa Pinrang', 1),
(4324, 1534, 'Cenrana Maros', 1),
(4325, 1534, 'Cenrana Watampone', 1),
(4326, 1534, 'Cina Watampone', 1),
(4327, 1534, 'Denpina/dende Piongan Napo Rantepao', 1),
(4328, 1534, 'Dua Baccoe Watampone', 1),
(4329, 1534, 'Dua Pitue Sidenreng', 1),
(4330, 1534, 'Duampanua Pinrang', 1),
(4331, 1534, 'Enrekang Selatan Enrekang', 1),
(4332, 1534, 'Enrekang Kab. Enrekang', 1),
(4333, 1534, 'Eremerasa Bantaeng', 1),
(4334, 1534, 'Galesong Selatan Takalar', 1),
(4335, 1534, 'Galesong Utara Takalar', 1),
(4336, 1534, 'Gandang Batu Silang Makale', 1),
(4337, 1534, 'Ganra Watansoppeng', 1),
(4338, 1534, 'Gantarang Bulukumba', 1),
(4339, 1534, 'Gilireng Sengkang', 1),
(4340, 1534, 'Hero Lange Lange Bulukumba', 1),
(4341, 1534, 'Jeneponto Kab. Jeneponto', 1),
(4342, 1534, 'Kahu Watampone', 1),
(4343, 1534, 'Kajang Bulukumba', 1),
(4344, 1534, 'Kajuara Watampone', 1),
(4345, 1534, 'Kalukuang Masalima Pangkajene', 1),
(4346, 1534, 'Kamanre Belopa', 1),
(4347, 1534, 'Kapala Pitu Rantepao', 1),
(4348, 1534, 'Keera Sengkang', 1),
(4349, 1534, 'Kelara Jeneponto', 1),
(4350, 1534, 'Kesu Rantepao', 1),
(4351, 1534, 'Kindang Bulukumba', 1),
(4352, 1534, 'Kulo Sidenreng', 1),
(4353, 1534, 'Kurra Makale', 1),
(4354, 1534, 'Labakkang Pangkajene', 1),
(4355, 1534, 'Lalabata Watansoppeng', 1),
(4356, 1534, 'Lamasi Belopa', 1),
(4357, 1534, 'Lamuru Watampone', 1),
(4358, 1534, 'Lanrisang Pinrang', 1),
(4359, 1534, 'Lappariaja Watampone', 1),
(4360, 1534, 'Larompong Belopa', 1),
(4361, 1534, 'Laronpong Selatan Belopa', 1),
(4362, 1534, 'Latimojong Belopa', 1),
(4363, 1534, 'Lau Maros', 1),
(4364, 1534, 'Lembang Pinrang', 1),
(4365, 1534, 'Libureng Watampone', 1),
(4366, 1534, 'Lili Riaja Watansoppeng', 1),
(4367, 1534, 'Lili Rilau Watansoppeng', 1),
(4368, 1534, 'Limbong Masamba', 1),
(4369, 1534, 'Liukang Tangaya Pangkajene', 1),
(4370, 1534, 'Liukang Tupabiring Pangkajene', 1),
(4371, 1534, 'Maiwa Atas Enrekang', 1),
(4372, 1534, 'Maiwa Enrekang', 1),
(4373, 1534, 'Majauleng Sengkang', 1),
(4374, 1534, 'Makale Selatan Makale', 1),
(4375, 1534, 'Makale Utara Makale', 1),
(4376, 1534, 'Makale Kab. Tana Toraja', 1),
(4377, 1534, 'Makasar', 1),
(4378, 1534, 'Malangke Barat Masamba', 1),
(4379, 1534, 'Malangke Masamba', 1),
(4380, 1534, 'Malimbong Balepe Makale', 1),
(4381, 1534, 'Mallawa Maros', 1),
(4382, 1534, 'Mallusetasi Barru', 1),
(4383, 1534, 'Mamajang Makassar', 1),
(4384, 1534, 'Mandai Maros', 1),
(4385, 1534, 'Mandalle Pangkajene', 1),
(4386, 1534, 'Mangara Bombang Takalar', 1),
(4387, 1534, 'Manggala Makassar', 1),
(4388, 1534, 'Mangkutana Kab. Luwu Timur', 1),
(4389, 1534, 'Maniang Pajo Sengkang', 1),
(4390, 1534, 'Mappak Makale', 1),
(4391, 1534, 'Mappakasunggu Takalar', 1),
(4392, 1534, 'Mappedeceng Masamba', 1),
(4393, 1534, 'Ma''rang Pangkajene', 1),
(4394, 1534, 'Mare Watampone', 1),
(4395, 1534, 'Mario Riawa Watansoppeng', 1),
(4396, 1534, 'Mario Riwawo Watansoppeng', 1),
(4397, 1534, 'Mariso Makassar', 1),
(4398, 1534, 'Maritengngae Sidenreng', 1),
(4399, 1534, 'Maros', 1),
(4400, 1534, 'Maros Baru Maros', 1),
(4401, 1534, 'Maros Utara Maros', 1),
(4402, 1534, 'Marusu Maros', 1),
(4403, 1534, 'Masamba Kab. Luwu Utara', 1),
(4404, 1534, 'Masanda Makale', 1),
(4405, 1534, 'Mattiro Bulu Pinrang', 1),
(4406, 1534, 'Mattiro Sompe Pinrang', 1),
(4407, 1534, 'Mengkendek Makale', 1),
(4408, 1534, 'Minasa Te''ne Pangkajene', 1),
(4409, 1534, 'Moncongloe Maros', 1),
(4410, 1534, 'Nanggala Rantepao', 1),
(4411, 1534, 'Nuha Kab. Luwu Timur', 1),
(4412, 1534, 'Pajukukang Bantaeng', 1),
(4413, 1534, 'Palakka Watampone', 1),
(4414, 1534, 'Paleteang Pinrang', 1),
(4415, 1534, 'Pallangga Sungguminasa', 1),
(4416, 1534, 'Palopo', 1),
(4417, 1534, 'Pammana Sengkang', 1),
(4418, 1534, 'Panakkukang Makassar', 1),
(4419, 1534, 'Panca Lautang Sidenreng', 1),
(4420, 1534, 'Panca Rijang Sidenreng', 1),
(4421, 1534, 'Pangkajene Kep. Pangkajene', 1),
(4422, 1534, 'Parangloe Sungguminasa', 1),
(4423, 1534, 'Pasilambena Benteng', 1),
(4424, 1534, 'Pasimarannu Benteng', 1),
(4425, 1534, 'Pasimasunggu Benteng', 1),
(4426, 1534, 'Patallassang Takalar', 1),
(4427, 1534, 'Patampanua Pinrang', 1),
(4428, 1534, 'Patimpeng Watampone', 1),
(4429, 1534, 'Penrang Sengkang', 1),
(4430, 1534, 'Pinrang', 1),
(4431, 1534, 'Pitu Riase Sidenreng', 1),
(4432, 1534, 'Pitu Riawa Sidenreng', 1),
(4433, 1534, 'Pitumpanua Sengkang', 1),
(4434, 1534, 'Polobangkeng Selatan Takalar', 1),
(4435, 1534, 'Polobangkeng Utara Takalar', 1),
(4436, 1534, 'Poncang Belopa', 1),
(4437, 1534, 'Ponre Watampone', 1),
(4438, 1534, 'Pujananting Barru', 1),
(4439, 1534, 'Pulau Sembilan Sinjai', 1),
(4440, 1534, 'Rampi Masamba', 1),
(4441, 1534, 'Rano Makale', 1),
(4442, 1534, 'Rantebua Rantepao', 1),
(4443, 1534, 'Rantepao Kab. Tana Toraja Utara', 1),
(4444, 1534, 'Rantetayo Makale', 1),
(4445, 1534, 'Rappocini Makassar', 1),
(4446, 1534, 'Rembon Makale', 1),
(4447, 1534, 'Riau Ale Bulukumba', 1),
(4448, 1534, 'Rindingallo Rantepao', 1),
(4449, 1534, 'Sabbang Paru Sengkang', 1),
(4450, 1534, 'Sabbang Masamba', 1),
(4451, 1534, 'Sa''dan Rantepao', 1),
(4452, 1534, 'Sajoangin Sengkang', 1),
(4453, 1534, 'Salomekko Watampone', 1),
(4454, 1534, 'Saluputti Makale', 1),
(4455, 1534, 'Sangalla Makale', 1),
(4456, 1534, 'Sanggalangi Rantepao', 1),
(4457, 1534, 'Segeri Mandalle Pangkajene', 1),
(4458, 1534, 'Seko Masamba', 1),
(4459, 1534, 'Sengkang', 1),
(4460, 1534, 'Sesean Rantepao', 1),
(4461, 1534, 'Sibulue Watampone', 1),
(4462, 1534, 'Sidenreng Kab. Sidenreng', 1),
(4463, 1534, 'Sidrap Sidenreng', 1),
(4464, 1534, 'Simbang Maros', 1),
(4465, 1534, 'Simbuang Makale', 1),
(4466, 1534, 'Sinjai', 1),
(4467, 1534, 'Sinjai Barat Sinjai', 1),
(4468, 1534, 'Sinjai Borong Sinjai', 1),
(4469, 1534, 'Sinjai Selatan Sinjai', 1),
(4470, 1534, 'Sinjai Tengah Sinjai', 1),
(4471, 1534, 'Sinjai Timur Sinjai', 1),
(4472, 1534, 'Sinjai Utara Sinjai', 1),
(4473, 1534, 'Soloara Rantepao', 1),
(4474, 1534, 'Somba Opu Sungguminasa', 1),
(4475, 1534, 'Sopai Rantepao', 1),
(4476, 1534, 'Soppeng Riaja Barru', 1),
(4477, 1534, 'Soroako/malili Kab. Luwu Timur', 1),
(4478, 1534, 'Sukamaju Masamba', 1),
(4479, 1534, 'Suli Belopa', 1),
(4480, 1534, 'Sungguminasa Kab. Gowa', 1),
(4481, 1534, 'Suppa Pinrang', 1),
(4482, 1534, 'Takabonerate Benteng', 1),
(4483, 1534, 'Takalar', 1),
(4484, 1534, 'Takkalala Sengkang', 1),
(4485, 1534, 'Tallo Makassar', 1),
(4486, 1534, 'Tallunglipu Rantepao', 1),
(4487, 1534, 'Tamalanrea Makassar', 1),
(4488, 1534, 'Tamalatea Jeneponto', 1),
(4489, 1534, 'Tamalatea Makassar', 1),
(4490, 1534, 'Tana Sitolo Sengkang', 1),
(4491, 1534, 'Tanete Riaja Barru', 1),
(4492, 1534, 'Tanete Riattang Barat W. Pone', 1),
(4493, 1534, 'Tanete Riattang Timur W. Pone', 1),
(4494, 1534, 'Tanete Riattang Watampone', 1),
(4495, 1534, 'Tanete Rilau Barru', 1),
(4496, 1534, 'Tanralili Maros', 1),
(4497, 1534, 'Tellu Limpoe Sinjai', 1),
(4498, 1534, 'Tellu Siatinge Watampone', 1),
(4499, 1534, 'Tellulimpu E Sidenreng', 1),
(4500, 1534, 'Telluwanua Palopo', 1),
(4501, 1534, 'Tempe Sengkang', 1),
(4502, 1534, 'Tikala Rantepao', 1),
(4503, 1534, 'Tinggimoncong Sungguminasa', 1),
(4504, 1534, 'Tiroang Pinrang', 1),
(4505, 1534, 'Tombolo Pao Sungguminasa', 1),
(4506, 1534, 'Tomoni Kab. Luwu Timur', 1),
(4507, 1534, 'Tompabulu Bantaeng', 1),
(4508, 1534, 'Tompo Bulu Sungguminasa', 1),
(4509, 1534, 'Tompu Bulu Maros', 1),
(4510, 1534, 'Tondon Nanggala Rantepao', 1),
(4511, 1534, 'Tondong Talasa Pangkajene', 1),
(4512, 1534, 'Tonra Watampone', 1),
(4513, 1534, 'Towuti Kab. Luwu Timur', 1),
(4514, 1534, 'Turatea Jeneponto', 1),
(4515, 1534, 'Turikale Maros', 1),
(4516, 1534, 'Ujung Bulu Bulukumba', 1),
(4517, 1534, 'Ujung Loe Bulukumba', 1),
(4518, 1534, 'Ujung Tanah Makassar', 1),
(4519, 1534, 'Ulaweng Watampone', 1),
(4520, 1534, 'Uluere Bantaeng', 1),
(4521, 1534, 'Wajo Makassar', 1),
(4522, 1534, 'Walenrang Belopa', 1),
(4523, 1534, 'Wara Selatan Palopo', 1),
(4524, 1534, 'Wara Utara Palopo', 1),
(4525, 1534, 'Wara Palopo', 1),
(4526, 1534, 'Watampone Kab. Bone', 1),
(4527, 1534, 'Watang Pulu Sidenreng', 1),
(4528, 1534, 'Watang Sawitto Pinrang', 1),
(4529, 1534, 'Watansoppeng', 1),
(4530, 1534, 'Wotu Kab. Luwu Timur', 1),
(4531, 1535, 'Ampana Kota Ampana', 1),
(4532, 1535, 'Ampana Tete Ampana', 1),
(4533, 1535, 'Ampibabo Parigi', 1),
(4534, 1535, 'Bahodopi Bungku', 1),
(4535, 1535, 'Balaesang Banawa', 1),
(4536, 1535, 'Balantak Luwuk', 1),
(4537, 1535, 'Banawa Kab. Donggala', 1),
(4538, 1535, 'Banggai Kab. Banggai Kep. ', 1),
(4539, 1535, 'Basidondo Tolitoli', 1),
(4540, 1535, 'Batui Luwuk', 1),
(4541, 1535, 'Biau Buol', 1),
(4542, 1535, 'Boalemo Luwuk', 1),
(4543, 1535, 'Bokan Kepulauan Kab. Banggai Kep. V', 1),
(4544, 1535, 'Bokat Buol', 1),
(4545, 1535, 'Bolano Lambunu Parigi', 1),
(4546, 1535, 'Bukal Buol', 1),
(4547, 1535, 'Buko Kab. Banggai Kep. ', 1),
(4548, 1535, 'Bulagi Selatan Kab. Banggai Kep. ', 1),
(4549, 1535, 'Bulagi Kab. Banggai Kep. ', 1),
(4550, 1535, 'Bumi Raya Bungku', 1),
(4551, 1535, 'Bungku Barat Bungku', 1),
(4552, 1535, 'Bungku Selatan Bungku', 1),
(4553, 1535, 'Bungku Tengah Bungku', 1),
(4554, 1535, 'Bungku Utara Bungku', 1),
(4555, 1535, 'Bungku Kab. Morowali', 1),
(4556, 1535, 'Bunobogu Buol', 1),
(4557, 1535, 'Bunta Luwuk', 1),
(4558, 1535, 'Buol', 1),
(4559, 1535, 'Buol Kab. Buol', 1),
(4560, 1535, 'Dampal Selatan Tolitoli', 1),
(4561, 1535, 'Dampal Utara Tolitoli', 1),
(4562, 1535, 'Damsol Banawa', 1),
(4563, 1535, 'Dolo Banawa', 1),
(4564, 1535, 'Dondo Tolitoli', 1),
(4565, 1535, 'Gadung Buol', 1),
(4566, 1535, 'Galang Tolitoli', 1),
(4567, 1535, 'Kasimbar Parigi', 1),
(4568, 1535, 'Kintom Luwuk', 1),
(4569, 1535, 'Kulawi Banawa', 1),
(4570, 1535, 'Lage Poso', 1),
(4571, 1535, 'Lamala Luwuk', 1),
(4572, 1535, 'Lampasio Tolitoli', 1),
(4573, 1535, 'Lembo Bungku', 1),
(4574, 1535, 'Liang Kab. Banggai Kep. ', 1),
(4575, 1535, 'Lipunoto Buol', 1),
(4576, 1535, 'Lo Bangkurung Kab. Banggai Kep. ', 1),
(4577, 1535, 'Lore Selatan Poso', 1),
(4578, 1535, 'Lore Tengah Poso', 1),
(4579, 1535, 'Lore Utara Poso', 1),
(4580, 1535, 'Luwuk Kab. Banggai', 1),
(4581, 1535, 'Mamosalato Bungku', 1),
(4582, 1535, 'Marawola Banawa', 1),
(4583, 1535, 'Menui Kepulauan Bungku', 1),
(4584, 1535, 'Momuna Buol', 1),
(4585, 1535, 'Mori Atas Bungku', 1),
(4586, 1535, 'Moutong Parigi', 1),
(4587, 1535, 'Ogo Deide Tolitoli', 1),
(4588, 1535, 'Pagimana Luwuk', 1),
(4589, 1535, 'Paleleh Buol', 1),
(4590, 1535, 'Palolo Banawa', 1),
(4591, 1535, 'Palu', 1),
(4592, 1535, 'Palu Barat Palu', 1),
(4593, 1535, 'Palu Selatan Palu', 1),
(4594, 1535, 'Palu Timur Palu', 1),
(4595, 1535, 'Palu Utara Palu', 1),
(4596, 1535, 'Pamona Selatan Poso', 1),
(4597, 1535, 'Pamona Timur Poso', 1),
(4598, 1535, 'Pamona Utara Poso', 1),
(4599, 1535, 'Parigi Kab. Parigi Moutong', 1),
(4600, 1535, 'Petasia Bungku', 1),
(4601, 1535, 'Pipikoro Banawa', 1),
(4602, 1535, 'Poso', 1),
(4603, 1535, 'Poso Pesisir Poso', 1),
(4604, 1535, 'Riopakawa Banawa', 1),
(4605, 1535, 'Sausu Parigi', 1),
(4606, 1535, 'Sigi Biromaru Banawa', 1),
(4607, 1535, 'Sindue Banawa', 1),
(4608, 1535, 'Sirenja Banawa', 1),
(4609, 1535, 'Sojol Banawa', 1),
(4610, 1535, 'Soyo Jaya Bungku', 1),
(4611, 1535, 'Tawaeli Banawa', 1),
(4612, 1535, 'Tinakung Kab. Banggai Kep. ', 1),
(4613, 1535, 'Tinombo Selatan Parigi', 1),
(4614, 1535, 'Tinombo Parigi', 1),
(4615, 1535, 'Tiolan Buol', 1),
(4616, 1535, 'Togean  Ampana', 1),
(4617, 1535, 'Toili Luwuk', 1),
(4618, 1535, 'Tojo Barat  Ampana', 1),
(4619, 1535, 'Tojo Ampana', 1),
(4620, 1535, 'Tolitoli Kab. Tolitoli', 1),
(4621, 1535, 'Tomini Parigi', 1),
(4622, 1535, 'Torue Parigi', 1),
(4623, 1535, 'Totikum Kab. Banggai Kep. ', 1),
(4624, 1535, 'Ulu Bongka Ampana', 1),
(4625, 1535, 'Utara Toli Toli Tolitoli', 1),
(4626, 1535, 'Walea Kepulauan Ampana', 1),
(4627, 1535, 'Wita Ponda Bungku', 1),
(4628, 1536, 'Abeli Kendari', 1),
(4629, 1536, 'Abuki Unaaha', 1),
(4630, 1536, 'Angata Andolo', 1),
(4631, 1536, 'Asera Unaaha', 1),
(4632, 1536, 'Barangka Raha', 1),
(4633, 1536, 'Barat Kendari', 1),
(4634, 1536, 'Baruga Kendari', 1),
(4635, 1536, 'Batalaiworu Raha', 1),
(4636, 1536, 'Batauga Pasar Wajo', 1),
(4637, 1536, 'Batu Atas Pasar Wajo', 1),
(4638, 1536, 'Batuputih Lasusua', 1),
(4639, 1536, 'Baula Kolaka', 1),
(4640, 1536, 'Bondoala Sampara Unaaha', 1),
(4641, 1536, 'Bonegunu Raha', 1),
(4642, 1536, 'Buranga Pasar Wajo', 1),
(4643, 1536, 'Duruka Bone Raha', 1),
(4644, 1536, 'Gu Pasar Wajo', 1),
(4645, 1536, 'Kabaena Timur Rumbia', 1),
(4646, 1536, 'Kabaena Rumbia', 1),
(4647, 1536, 'Kabangka Raha', 1),
(4648, 1536, 'Kabawo Raha', 1),
(4649, 1536, 'Kadatua Pasar Wajo', 1),
(4650, 1536, 'Kambowa Raha', 1),
(4651, 1536, 'Kapontori Pasar Wajo', 1),
(4652, 1536, 'Katobu Raha', 1),
(4653, 1536, 'Kendar Kendari', 1),
(4654, 1536, 'Kendari', 1),
(4655, 1536, 'Kodeoha Lasusua', 1),
(4656, 1536, 'Kolaka Kab. Kolaka', 1),
(4657, 1536, 'Kolono Andolo', 1),
(4658, 1536, 'Konda Andolo', 1),
(4659, 1536, 'Kontunaga Raha', 1),
(4660, 1536, 'Kulisusu Barat Raha', 1),
(4661, 1536, 'Kulisusu Utara Raha', 1),
(4662, 1536, 'Kulisusu Raha', 1),
(4663, 1536, 'Kusambi Raha', 1),
(4664, 1536, 'Ladongi Kolaka', 1),
(4665, 1536, 'Lainea Andolo', 1),
(4666, 1536, 'Lakudo Pasar Wajo', 1),
(4667, 1536, 'Lambadia Kolaka', 1),
(4668, 1536, 'Lambuya Unaaha', 1),
(4669, 1536, 'Landono Andolo', 1),
(4670, 1536, 'Laonti Andolo', 1),
(4671, 1536, 'Lasalepa Raha', 1),
(4672, 1536, 'Lasalimu Selatan Pasar Wajo', 1),
(4673, 1536, 'Lasalimu Pasar Wajo', 1),
(4674, 1536, 'Lasolo Unaaha', 1),
(4675, 1536, 'Lasusua Kab. Kolaka Utara', 1),
(4676, 1536, 'Latambaga Kolaka', 1),
(4677, 1536, 'Latoma Unaaha', 1),
(4678, 1536, 'Lawa Raha', 1),
(4679, 1536, 'Lohia Raha', 1),
(4680, 1536, 'Maginti Raha', 1),
(4681, 1536, 'Maligano Raha', 1),
(4682, 1536, 'Mandonga Kendari', 1),
(4683, 1536, 'Mawasangka Timur Pasar Wajo', 1),
(4684, 1536, 'Mawasangka Pasar Wajo', 1),
(4685, 1536, 'Moramo Andolo', 1),
(4686, 1536, 'Mowewe Kolaka', 1),
(4687, 1536, 'Napabalano Raha', 1),
(4688, 1536, 'Ngapa Lasusua', 1),
(4689, 1536, 'Pakue Lasusua', 1),
(4690, 1536, 'Palangga Andolo', 1),
(4691, 1536, 'Parigi Raha', 1),
(4692, 1536, 'Pasar Wajo Kab. Buton', 1),
(4693, 1536, 'Pasir Putih Raha', 1),
(4694, 1536, 'Poasia Kendari', 1),
(4695, 1536, 'Poleang Barat Rumbia', 1),
(4696, 1536, 'Poleang Timur Rumbia', 1),
(4697, 1536, 'Poleang Rumbia', 1),
(4698, 1536, 'Pomalaa Kolaka', 1),
(4699, 1536, 'Pondihaha Unaaha', 1),
(4700, 1536, 'Raha Kab. Muna', 1),
(4701, 1536, 'Ranomeeto Andolo', 1),
(4702, 1536, 'Ranteangin Lasusua', 1),
(4703, 1536, 'Rarowatu Rumbia', 1),
(4704, 1536, 'Rumbia Kab. Bombana', 1),
(4705, 1536, 'Samaturu Kolaka', 1),
(4706, 1536, 'Sampolawa Pasar Wajo', 1),
(4707, 1536, 'Sawa Unaaha', 1),
(4708, 1536, 'Sawerigadi Raha', 1),
(4709, 1536, 'Siompu Pasar Wajo', 1),
(4710, 1536, 'Soropia Unaaha', 1),
(4711, 1536, 'Talaga Raya Pasar Wajo', 1),
(4712, 1536, 'Tanggetada Kolaka', 1),
(4713, 1536, 'Tikep Raha', 1),
(4714, 1536, 'Tinanggea Andolo', 1),
(4715, 1536, 'Tirawuta Kolaka', 1),
(4716, 1536, 'Tiworo Tengah Raha', 1),
(4717, 1536, 'Tongauna Unaaha', 1),
(4718, 1536, 'Tongkuno Raha', 1),
(4719, 1536, 'Uepai Unaaha', 1),
(4720, 1536, 'Uluiwoi Kolaka', 1),
(4721, 1536, 'Unaaha Kab. Konawe', 1),
(4722, 1536, 'Wakorumba Selatan Raha', 1),
(4723, 1536, 'Wakorumba Raha', 1),
(4724, 1536, 'Wanggodo/andolo Kab. Konawe', 1),
(4725, 1536, 'Wangi Wangi Kab. Wakatobi', 1),
(4726, 1536, 'Watopute Kab. Muna', 1),
(4727, 1536, 'Watubangga Kolaka', 1),
(4728, 1536, 'Wawonii Unaaha', 1),
(4729, 1536, 'Waworete Unaaha', 1),
(4730, 1536, 'Wawotobi Unaaha', 1),
(4731, 1536, 'Wolo Kolaka', 1),
(4732, 1536, 'Wonggeduku Unaaha', 1),
(4733, 1536, 'Wundulako Kolaka', 1),
(4734, 1537, 'Airmadidi Kab. Minahasa Utara', 1),
(4735, 1537, 'Amurang Minahasa Selatan', 1),
(4736, 1537, 'Belang Ratahan', 1),
(4737, 1537, 'Beo Kab. Kep Talaud', 1),
(4738, 1537, 'Biaro Tahuna', 1),
(4739, 1537, 'Bintauna Boroko', 1),
(4740, 1537, 'Bintauna Kotamobagu', 1),
(4741, 1537, 'Bitung', 1),
(4742, 1537, 'Bitung Barat Bitung', 1),
(4743, 1537, 'Bitung Selatan Bitung', 1),
(4744, 1537, 'Bitung Tengah Bitung', 1),
(4745, 1537, 'Bitung Timur Bitung', 1),
(4746, 1537, 'Bitung Utara Bitung', 1),
(4747, 1537, 'Bolaang Itang Barat Boroko', 1),
(4748, 1537, 'Bolaang Itang Timur Boroko', 1),
(4749, 1537, 'Bolaang Itang Kotamobagu', 1),
(4750, 1537, 'Bolaang Uki Kotamobagu', 1),
(4751, 1537, 'Bolaang Kotamobagu', 1),
(4752, 1537, 'Boroko Boroko', 1),
(4753, 1537, 'Bunaken Manado', 1),
(4754, 1537, 'Dimembe Airmadidi', 1),
(4755, 1537, 'Dumoga Barat Kotamobagu', 1),
(4756, 1537, 'Dumoga Timur Kotamobagu', 1),
(4757, 1537, 'Dumoga Utara Kotamobagu', 1),
(4758, 1537, 'Eris Tondano', 1),
(4759, 1537, 'Essang Kab. Kep Talaud', 1),
(4760, 1537, 'Gemeh Kab. Kep Talaud', 1),
(4761, 1537, 'Kabaruan Kab. Kep Talaud', 1),
(4762, 1537, 'Kaidipang Boroko', 1),
(4763, 1537, 'Kaidipang Kotamobagu', 1),
(4764, 1537, 'Kakas Tondano', 1),
(4765, 1537, 'Kalawat Airmadidi', 1),
(4766, 1537, 'Kauditan Airmadidi', 1),
(4767, 1537, 'Kawangkoan Tondano', 1),
(4768, 1537, 'Kema Airmadidi', 1),
(4769, 1537, 'Kendahe Tahuna', 1),
(4770, 1537, 'Kombi Tondano', 1),
(4771, 1537, 'Kotabunan Kotamobagu', 1),
(4772, 1537, 'Kotamobagu Kab. Bolaang Mongondow', 1),
(4773, 1537, 'Langowan Barat Tondano', 1),
(4774, 1537, 'Langowan Selatan Tondano', 1),
(4775, 1537, 'Langowan Timur Tondano', 1),
(4776, 1537, 'Lembean Timur Tondano', 1),
(4777, 1537, 'Likupang Barat Airmadidi', 1),
(4778, 1537, 'Likupang Timur Airmadidi', 1),
(4779, 1537, 'Lirung Kab. Kep Talaud', 1),
(4780, 1537, 'Lolak Kotamobagu', 1),
(4781, 1537, 'Lolayan Kotamobagu', 1),
(4782, 1537, 'Malalayang Manado', 1),
(4783, 1537, 'Manado', 1),
(4784, 1537, 'Manganitu Selatan Tahuna', 1),
(4785, 1537, 'Manganitu Tahuna', 1),
(4786, 1537, 'Mapanget Manado', 1),
(4787, 1537, 'Melonguane', 1),
(4788, 1537, 'Modayag Kotamobagu', 1),
(4789, 1537, 'Modoinding Amurang', 1),
(4790, 1537, 'Motoling Amurang', 1),
(4791, 1537, 'Nanusa Kab. Kep Talaud', 1),
(4792, 1537, 'Nuangan Kotamobagu', 1),
(4793, 1537, 'Nusa Tabukan Tahuna', 1),
(4794, 1537, 'Passi Kotamobagu', 1),
(4795, 1537, 'Pineleng Tondano', 1),
(4796, 1537, 'Pinogaluman Boroko', 1),
(4797, 1537, 'Pinogaluman Kotamobagu', 1),
(4798, 1537, 'Pinolosian Kotamobagu', 1),
(4799, 1537, 'Poigar Kotamobagu', 1),
(4800, 1537, 'Posigadan Kotamobagu', 1),
(4801, 1537, 'Pusomaen Ratahan', 1),
(4802, 1537, 'Rainis Kab. Kep Talaud', 1),
(4803, 1537, 'Ranoyapo Amurang', 1),
(4804, 1537, 'Ratahan Kab. Minahasa Tenggara', 1),
(4805, 1537, 'Ratatotok Ratahan', 1),
(4806, 1537, 'Remboken Tondano', 1),
(4807, 1537, 'Sangkub Boroko', 1),
(4808, 1537, 'Sangtombolang Kotamobagu', 1),
(4809, 1537, 'Sario Manado', 1),
(4810, 1537, 'Siau Barat Selatan Tahuna', 1),
(4811, 1537, 'Siau Barat Tahuna', 1),
(4812, 1537, 'Siau Timur Selatan Tahuna', 1),
(4813, 1537, 'Siau Timur Tahuna', 1),
(4814, 1537, 'Singkil Manado', 1),
(4815, 1537, 'Sinon Sayang Amurang', 1),
(4816, 1537, 'Sonder Tondano', 1),
(4817, 1537, 'Tabukan Selatan Tahuna', 1),
(4818, 1537, 'Tabukan Tengah Tahuna', 1),
(4819, 1537, 'Tabukan Utara Tahuna', 1),
(4820, 1537, 'Tagulandang Utara Tahuna', 1),
(4821, 1537, 'Tagulandang Tahuna', 1),
(4822, 1537, 'Tahuna Kep. Sangihe', 1),
(4823, 1537, 'Tamako Tahuna', 1),
(4824, 1537, 'Tareran Amurang', 1),
(4825, 1537, 'Tatoareng Tahuna', 1),
(4826, 1537, 'Tenga Amurang', 1),
(4827, 1537, 'Tikala Manado', 1),
(4828, 1537, 'Tombariri Manado', 1),
(4829, 1537, 'Tombasian Amurang', 1),
(4830, 1537, 'Tombatu Ratahan', 1),
(4831, 1537, 'Tombulu Tondano', 1),
(4832, 1537, 'Tomohon', 1),
(4833, 1537, 'Tomohon Barat Tomohon', 1),
(4834, 1537, 'Tomohon Selatan Tomohon', 1),
(4835, 1537, 'Tomohon Tengah Tomohon', 1),
(4836, 1537, 'Tomohon Timur Tomohon', 1),
(4837, 1537, 'Tomohon Utara Tomohon', 1),
(4838, 1537, 'Tompaso Tondano', 1),
(4839, 1537, 'Tompasobaru Amurang', 1),
(4840, 1537, 'Tondano Barat Tondano', 1),
(4841, 1537, 'Tondano Selatan Tondano', 1),
(4842, 1537, 'Tondano Timur Tondano', 1),
(4843, 1537, 'Tondano Utara Tondano', 1),
(4844, 1537, 'Tondano Kab. Minahasa', 1),
(4845, 1537, 'Touluaan Ratahan', 1),
(4846, 1537, 'Tuminting Manado', 1),
(4847, 1537, 'Tumpaan Amurang', 1),
(4848, 1537, 'Wanea Manado', 1),
(4849, 1537, 'Wenang Manado', 1),
(4850, 1537, 'Wori Airmadidi', 1),
(4851, 1538, '2 X 11 Kayu Tanam Pariaman', 1),
(4852, 1538, 'Akabiluru Sarilamak', 1),
(4853, 1538, 'Ampek Nagari Lubuk Basung', 1),
(4854, 1538, 'Arosuka', 1),
(4855, 1538, 'Aur Birugo Tigo Baleh Bukittinggi', 1),
(4856, 1538, 'Banuhampu Lubuk Basung', 1),
(4857, 1538, 'Barangin Sawahluntoh', 1),
(4858, 1538, 'Basa IV Balai Tapan Painan', 1),
(4859, 1538, 'Baso Lubuk Basung', 1),
(4860, 1538, 'Batang Anai Pariaman', 1),
(4861, 1538, 'Batang Gasan Pariaman', 1),
(4862, 1538, 'Batang Kapas Painan', 1),
(4863, 1538, 'Batipuh Selatan Batu Sangkar', 1),
(4864, 1538, 'Batipuh Batusangkar', 1),
(4865, 1538, 'Batusangkar', 1),
(4866, 1538, 'Bayang Utara Painan', 1),
(4867, 1538, 'Bayang Painan', 1),
(4868, 1538, 'Bonjol Lubuksikaping', 1),
(4869, 1538, 'Bukit Barisan Sarilamak', 1),
(4870, 1538, 'Bukit Sundi Arosuka', 1),
(4871, 1538, 'Bukittinggi', 1),
(4872, 1538, 'Bungus Teluk Kabung Padang', 1),
(4873, 1538, 'Candung Lubuk Basung', 1),
(4874, 1538, 'Danau Kembar Arosuka', 1),
(4875, 1538, 'Guguk Panjang Bukittinggi', 1),
(4876, 1538, 'Guguk Sarilamak', 1),
(4877, 1538, 'Gunung Talang Arosuka', 1),
(4878, 1538, 'Gunung Tuleh Simpang Empat', 1),
(4879, 1538, 'Harau Sarilamak', 1),
(4880, 1538, 'Hiliran Gumanti Arosuka', 1),
(4881, 1538, 'II Koto Lubuk Sikaping', 1),
(4882, 1538, 'II. X. XI. VI Lingkung Pariaman', 1),
(4883, 1538, 'III Nagari Lubuk Sikaping', 1),
(4884, 1538, 'IV Angkat Canduang Lubuk Basung', 1),
(4885, 1538, 'IV Jurai Painan', 1),
(4886, 1538, 'IV Koto Aur Malintang ', 1),
(4887, 1538, 'IV Koto Lubuk Basung', 1),
(4888, 1538, 'IV Nagari Muara', 1),
(4889, 1538, 'IX Koto Sei Lasi Arosuka', 1),
(4890, 1538, 'Junjung Sirih Arosuka', 1),
(4891, 1538, 'Kamang Baru Muara', 1),
(4892, 1538, 'Kamang Magek Lubuk Basung', 1),
(4893, 1538, 'Kapur IX Sarilamak', 1),
(4894, 1538, 'Kinali Simpang Empat', 1),
(4895, 1538, 'Koto Parik Gadang Diateh', 1),
(4896, 1538, 'Koto Tengah Padang', 1),
(4897, 1538, 'Koto Tujuh Muara', 1),
(4898, 1538, 'Koto XI Tarusan Painan', 1),
(4899, 1538, 'Kotobaru Pualu Punjung', 1),
(4900, 1538, 'Kubung Arosuka', 1),
(4901, 1538, 'Kupitan Muara', 1),
(4902, 1538, 'Kuranji Padang', 1),
(4903, 1538, 'Lareh Sago Halaban Sarilamak', 1),
(4904, 1538, 'Lembah Gumanti Arosuka', 1),
(4905, 1538, 'Lembah Melintang Simpang Empat', 1),
(4906, 1538, 'Lembah Segar Sawahluntoh', 1),
(4907, 1538, 'Lembang Jaya Arosuka', 1),
(4908, 1538, 'Lengayang Painan', 1),
(4909, 1538, 'Lima Kaum Batu Sangkar', 1),
(4910, 1538, 'Linggosari Baganti Painan', 1),
(4911, 1538, 'Lintau Bou Utara Batu Sangkar', 1),
(4912, 1538, 'Lintau Buo Batusangkar', 1),
(4913, 1538, 'Lubuk Alung Pariaman', 1),
(4914, 1538, 'Lubuk Basung Kab. Agam', 1),
(4915, 1538, 'Lubuk Begalung Padang', 1),
(4916, 1538, 'Lubuk Kilangan Padang', 1),
(4917, 1538, 'Lubuk Sikarah Solok Selatan', 1),
(4918, 1538, 'Lubuk Tarok Muara', 1),
(4919, 1538, 'Lubuksikaping Kab Pasaman', 1),
(4920, 1538, 'Luhak Kab. Lima Puluh Kota', 1),
(4921, 1538, 'Luhak Simpang Empat', 1),
(4922, 1538, 'Lunang Silaut Painan', 1),
(4923, 1538, 'Mandiangin Koto Selayan Bukittinggi', 1),
(4924, 1538, 'Mapat Tunggul Selatan Lb. Sikap', 1),
(4925, 1538, 'Mapat Tunggul Lubuk Sikaping', 1),
(4926, 1538, 'Matur Lubuk Basung', 1),
(4927, 1538, 'Muara Kab. Sijunjung', 1),
(4928, 1538, 'Mungka Sarilamak', 1),
(4929, 1538, 'Nan Sabris Pariaman', 1),
(4930, 1538, 'Nanggalo Padang', 1),
(4931, 1538, 'Padang', 1),
(4932, 1538, 'Padang Aro', 1),
(4933, 1538, 'Padang Barat Padang', 1),
(4934, 1538, 'Padang Ganting Batu Sangkar', 1),
(4935, 1538, 'Padang Sago Pariaman', 1),
(4936, 1538, 'Padang Selatan Padang', 1),
(4937, 1538, 'Padang Timur Padang', 1),
(4938, 1538, 'Padang Utara Padang', 1),
(4939, 1538, 'Padangpanjang', 1),
(4940, 1538, 'Pagai Selatan Tuapejat', 1),
(4941, 1538, 'Pagai Utara Tuapejat', 1),
(4942, 1538, 'Painan Kab. Pesisir Selatan', 1),
(4943, 1538, 'Palembayan Lubuk Basung', 1),
(4944, 1538, 'Palupuh Lubuk Basung', 1),
(4945, 1538, 'Pancung Soal(Pasirbukit) Painan', 1),
(4946, 1538, 'Pangkalan Kotabaru Sarilamak', 1),
(4947, 1538, 'Pantai Cermin Arosuka', 1),
(4948, 1538, 'Panti Lubuksikaping', 1),
(4949, 1538, 'Pariaman Selatan', 1),
(4950, 1538, 'Pariaman Tengah', 1),
(4951, 1538, 'Pariaman Utara', 1),
(4952, 1538, 'Pariaman Kab. Padang Pariaman', 1),
(4953, 1538, 'Pariangan Batusangkar', 1),
(4954, 1538, 'Pasaman Simpang Empat', 1),
(4955, 1538, 'Patamuan Pariaman', 1),
(4956, 1538, 'Pauh Padang', 1),
(4957, 1538, 'Payakumbuh', 1),
(4958, 1538, 'Payakumbuh Barat Payakumbuh', 1),
(4959, 1538, 'Payakumbuh Timur Payakumbuh', 1),
(4960, 1538, 'Payakumbuh Utara Payakumbuh', 1),
(4961, 1538, 'Payakumbuh Sarilamak', 1),
(4962, 1538, 'Payung Sekaki Arosuka', 1),
(4963, 1538, 'Pd. Panjang Barat Pd Panjang', 1),
(4964, 1538, 'Pd. Panjang Timur Pd Panjang', 1),
(4965, 1538, 'Pualu Punjung Kab. Dharmasraya', 1),
(4966, 1538, 'Rambatan Batusangkar', 1),
(4967, 1538, 'Ranah Balingka Simpang Empat', 1),
(4968, 1538, 'Ranah Batahan Simpang Empat', 1),
(4969, 1538, 'Ranah Pesisir Painan', 1),
(4970, 1538, 'Ranah Pesisir Simpang Empat', 1),
(4971, 1538, 'Rao Mapat Tunggul Lb. Sikaping', 1),
(4972, 1538, 'Salimpaung Batusangkar', 1),
(4973, 1538, 'Sangir Batanghari Padang Aro', 1),
(4974, 1538, 'Sangir Jujuan Padang Aro', 1),
(4975, 1538, 'Sangir Padang Aro', 1),
(4976, 1538, 'Sarilamak Kab. Limapuluh Kota', 1),
(4977, 1538, 'Sawahlunto', 1),
(4978, 1538, 'Sepuluh Koto Batu Sangkar', 1),
(4979, 1538, 'Siberut Selatan Tuapejat', 1),
(4980, 1538, 'Siberut Utara Tuapejat', 1),
(4981, 1538, 'Silungkang Sawahluntoh', 1),
(4982, 1538, 'Simpang Empat', 1),
(4983, 1538, 'Sintuk Toboh Gadang Pariaman', 1),
(4984, 1538, 'Sipora Tuapejat', 1),
(4985, 1538, 'Sitiung Pualu Punjung', 1),
(4986, 1538, 'Situjuh Lima Nagari Sarilamak', 1),
(4987, 1538, 'Solok', 1),
(4988, 1538, 'Suliki Gunung Mas Sarilamak', 1),
(4989, 1538, 'Suliki Gunung Mas Sarilamak', 1),
(4990, 1538, 'Sumpur Kudus Muara', 1),
(4991, 1538, 'Sungai Aur Simpang Empat', 1),
(4992, 1538, 'Sungai Beremas Simpang Empat', 1),
(4993, 1538, 'Sungai Geringging Pariaman', 1),
(4994, 1538, 'Sungai Limau Pariaman', 1),
(4995, 1538, 'Sungai Pagu Padang Aro', 1),
(4996, 1538, 'Sungai Puar Lubuk Basung', 1),
(4997, 1538, 'Sungai Rumbai Pualu Punjung', 1),
(4998, 1538, 'Sungai Tarab Batusangkar', 1),
(4999, 1538, 'Sungayang Batusangkar', 1),
(5000, 1538, 'Sutera Painan', 1),
(5001, 1538, 'Talamau Simpang Empat', 1),
(5002, 1538, 'Talawi Sawahluntoh', 1),
(5003, 1538, 'Tanjung Baru Batu Sangkar', 1),
(5004, 1538, 'Tanjung Emas Batusangkar', 1),
(5005, 1538, 'Tanjung Gadang Muara', 1),
(5006, 1538, 'Tanjung Harapan Solok Selatan', 1),
(5007, 1538, 'Tanjung Mutiara Lb. Basung', 1),
(5008, 1538, 'Tanjung Raya Lb. Basung', 1),
(5009, 1538, 'Tigo Lurah Arosuka', 1),
(5010, 1538, 'Tilatang Kamang Lubuk Basung', 1),
(5011, 1538, 'Tuapejat', 1),
(5012, 1538, 'Ulakan Tapakis Pariaman', 1),
(5013, 1538, 'V Koto Kampung Dalam Pariaman', 1),
(5014, 1538, 'V Koto Timur Pariaman', 1),
(5015, 1538, 'VI Lingkung Pariaman', 1),
(5016, 1538, 'VII Koto Pariaman', 1),
(5017, 1538, 'X Koto Diatas Arosuka', 1),
(5018, 1538, 'X Koto Singkarak(Kp. Teng', 1),
(5019, 1539, 'Abab ( Penukal Abab ) M. Enim', 1),
(5020, 1539, 'Air Sugihan Kayuagung', 1),
(5021, 1539, 'Babat Toman Sekayu', 1),
(5022, 1539, 'Banding Agung Muaradua', 1),
(5023, 1539, 'Banyuasin I Pangkalanbalai', 1),
(5024, 1539, 'Banyuasin III Pangkalanbalai', 1),
(5025, 1539, 'Banyusin II Pangkalan Balai', 1),
(5026, 1539, 'Batang Harileko Sekayu', 1),
(5027, 1539, 'Baturaja', 1),
(5028, 1539, 'Baturaja Barat Baturaja', 1),
(5029, 1539, 'Baturaja Timur Baturaja', 1),
(5030, 1539, 'Bayung Lincir Sekayu', 1),
(5031, 1539, 'Belitang II Martapura', 1),
(5032, 1539, 'Belitang III Martapura', 1),
(5033, 1539, 'Belitang Martapura', 1),
(5034, 1539, 'Benakat Muara Enim', 1),
(5035, 1539, 'Betung Pangkalanbalai', 1),
(5036, 1539, 'Bkl Ulu Terawas Muara Beliti Baru', 1),
(5037, 1539, 'Bts Ulu Muara Beliti Baru', 1),
(5038, 1539, 'Buay Madang Martapura', 1),
(5039, 1539, 'Buay Pemaca Muaradua', 1),
(5040, 1539, 'Buay Pemuka Peliung Martapura', 1),
(5041, 1539, 'Buay Runjung Muaradua', 1),
(5042, 1539, 'Buay Sandang Aji Muaradua', 1),
(5043, 1539, 'Bukit Kecil Palembang', 1),
(5044, 1539, 'Cambai Prabumulih', 1),
(5045, 1539, 'Cempaka Martapura', 1),
(5046, 1539, 'Cengal Kayuagung', 1),
(5047, 1539, 'Dempo Selatan Pagar Alam', 1),
(5048, 1539, 'Dempo Tengah Pagar Alam', 1),
(5049, 1539, 'Dempo Utara Pagar Alam', 1),
(5050, 1539, 'Gandus Palembang', 1),
(5051, 1539, 'Gelumbang Muara Enim', 1),
(5052, 1539, 'Gunungmegang Muaraenim', 1),
(5053, 1539, 'Ilir Barat I Palembang', 1),
(5054, 1539, 'Ilir Barat II Palembang', 1),
(5055, 1539, 'Ilir Timur I Palembang', 1),
(5056, 1539, 'Ilir Timur II Palembang', 1),
(5057, 1539, 'Indralaya Kab. Ogan Ilir', 1),
(5058, 1539, 'Jarai Lahat', 1),
(5059, 1539, 'Jayaloka Muara Beliti Baru', 1),
(5060, 1539, 'Jejawi Kayuagung', 1),
(5061, 1539, 'Kalidoni Palembang', 1),
(5062, 1539, 'Karang Dapo Muara Beliti Baru', 1),
(5063, 1539, 'Karang Jaya Muara Beliti Baru', 1),
(5064, 1539, 'Kayuagung Kab. Ogan Komering', 1),
(5065, 1539, 'Kelekar Muara Enim', 1),
(5066, 1539, 'Keluang Sekayu', 1),
(5067, 1539, 'Kemuning Palembang', 1),
(5068, 1539, 'Kertapati Palembang', 1),
(5069, 1539, 'Kikim Barat Lahat', 1),
(5070, 1539, 'Kikim Selatan Lahat', 1),
(5071, 1539, 'Kikim Tengah Lahat', 1),
(5072, 1539, 'Kikim Timur Lahat', 1),
(5073, 1539, 'Kisam Tinggi Muaradua', 1),
(5074, 1539, 'Kota Agung Lahat', 1),
(5075, 1539, 'Lahat Kab. Lahat', 1),
(5076, 1539, 'Lais Sekayu', 1),
(5077, 1539, 'Lembak Muara Enim', 1),
(5078, 1539, 'Lempuing Kayuagung', 1),
(5079, 1539, 'Lengkiti Baturaja', 1),
(5080, 1539, 'Lintang Kanan Tebing Tinggi', 1),
(5081, 1539, 'Lubai Muara Enim', 1),
(5082, 1539, 'Lubuk Batang Baturaja', 1),
(5083, 1539, 'Lubuk Linggau', 1),
(5084, 1539, 'Lubuklinggau Barat I  Lubuk Linggau', 1),
(5085, 1539, 'Lubuklinggau Barat II  Lubuk Linggau', 1),
(5086, 1539, 'Lubuklinggau Selatan I  Lubuk Linggau', 1),
(5087, 1539, 'Lubuklinggau Selatan II Lubuk Linggau', 1),
(5088, 1539, 'Lubuklinggau Timur I  Lubuk Linggau', 1),
(5089, 1539, 'Lubuklinggau Timur II  Lubuk Linggau', 1),
(5090, 1539, 'Lubuklinggau Utara I  Lubuk Linggau', 1),
(5091, 1539, 'Lubuklinggau Utara II Lubuk Linggau', 1),
(5092, 1539, 'Madang Suku I Martapura', 1),
(5093, 1539, 'Madang Suku II Martapura', 1),
(5094, 1539, 'Makartijaya  Pangkalanbalai', 1),
(5095, 1539, 'Marakuang Indralaya', 1),
(5096, 1539, 'Martapura Kab. Ogan Komering', 1),
(5097, 1539, 'Megang Sakti Muara Beliti Baru', 1),
(5098, 1539, 'Mekakau Ilir Muaradua', 1),
(5099, 1539, 'Merapi Lahat', 1),
(5100, 1539, 'Mesuji Kayuagung', 1),
(5101, 1539, 'Muara Belikan Muara Enim', 1),
(5102, 1539, 'Muara Beliti Baru Kab. Musi Rawas', 1),
(5103, 1539, 'Muara Beliti Baru Muara Beliti Baru', 1),
(5104, 1539, 'Muara Kelingi Muara Beliti Baru', 1),
(5105, 1539, 'Muara Lakitan Muara Beliti Baru', 1),
(5106, 1539, 'Muara Padang Pangkalanbalai', 1),
(5107, 1539, 'Muara Pinang Tebing Tinggi', 1),
(5108, 1539, 'Muara Rupit Muara Beliti Baru', 1),
(5109, 1539, 'Muaradua Kab. Ogan Komering Ulu', 1),
(5110, 1539, 'Muaraduakisam Muaradua', 1),
(5111, 1539, 'Muaraenim Kab. Muaraenim', 1),
(5112, 1539, 'Muaratelang Pangkalanbalai', 1),
(5113, 1539, 'Mulak Ulu Lahat', 1),
(5114, 1539, 'Nibung Muara Beliti Baru', 1),
(5115, 1539, 'Pagar Alam Selatan Pagar Alam', 1),
(5116, 1539, 'Pagar Alam Utara Pagar Alam', 1),
(5117, 1539, 'Pagaralam', 1),
(5118, 1539, 'Pajar Bulan Lahat', 1),
(5119, 1539, 'Palembang', 1),
(5120, 1539, 'Pampangan Kayuagung', 1),
(5121, 1539, 'Pangkalanbalai Kab. Banyuasin', 1),
(5122, 1539, 'Pasemah Air Keruh Tb Tinggi', 1),
(5123, 1539, 'Pedamaran Kayuagung', 1),
(5124, 1539, 'Pematang Panggang Kayuagung', 1),
(5125, 1539, 'Pemulutan Indralaya', 1),
(5126, 1539, 'Pendopo Lintang Tebing Tinggi', 1),
(5127, 1539, 'Pengandonan Baturaja', 1),
(5128, 1539, 'Peninjauan Baturaja', 1),
(5129, 1539, 'Penukal Abab Muara Enim', 1),
(5130, 1539, 'Penukal Utara Muara Enim', 1),
(5131, 1539, 'Plaju Palembang', 1),
(5132, 1539, 'Prabumulih', 1),
(5133, 1539, 'Prabumulih Barat Prabumulih', 1),
(5134, 1539, 'Prabumulih Timur Prabumulih', 1),
(5135, 1539, 'Pulau Beringin Muaradua', 1),
(5136, 1539, 'Pulau Pinang Lahat', 1),
(5137, 1539, 'Pulaurimau Pangkalanbalai', 1),
(5138, 1539, 'Purwodadi Muara Beliti Baru', 1),
(5139, 1539, 'Rambang Kapak Tengah Prabumulih', 1),
(5140, 1539, 'Rambutan Pangkalanbalai', 1),
(5141, 1539, 'Rantau Alai Indralaya', 1),
(5142, 1539, 'Rantaubayur Pangkalanbalai', 1),
(5143, 1539, 'Rawas Ilir Muara Beliti Baru', 1),
(5144, 1539, 'Rawas Ulu Muara Beliti Baru', 1),
(5145, 1539, 'Rembang Dangku Muara Enim', 1),
(5146, 1539, 'Rembang Muara Enim', 1),
(5147, 1539, 'Sako Palembang', 1),
(5148, 1539, 'Sanga Desa Sekayu', 1),
(5149, 1539, 'Seberang Ulu I Palembang', 1),
(5150, 1539, 'Seberang Ulu II Palembang', 1),
(5151, 1539, 'Sekayu Kab. Musi Banyuasin', 1),
(5152, 1539, 'Selangit Muara Beliti Baru', 1),
(5153, 1539, 'Sematang Borang Palembang', 1),
(5154, 1539, 'Semendawai Suku III Martapura', 1),
(5155, 1539, 'Semende Darat Laut Muara Enim', 1),
(5156, 1539, 'Semende Darat Tengah M. Enim', 1),
(5157, 1539, 'Semende Darat Ulu Muara Enim', 1),
(5158, 1539, 'Semidang Aji Baturaja', 1),
(5159, 1539, 'Simpang Muaradua', 1),
(5160, 1539, 'Sirah Pulau Padang Kayuagung', 1),
(5161, 1539, 'Sosoh Buay Rayap Baturaja', 1),
(5162, 1539, 'Sukarame Palembang', 1),
(5163, 1539, 'Sungai Keruh Sekayu', 1),
(5164, 1539, 'Sungai Lilin Sekayu', 1),
(5165, 1539, 'Sungai Rotan Muara Enim', 1),
(5166, 1539, 'Talang Padang Tebing Tinggi', 1),
(5167, 1539, 'Talang Ubi Muara Enim', 1),
(5168, 1539, 'Talangkelapa Pangkalanbalai', 1),
(5169, 1539, 'Tanah Abang Muara Enim', 1),
(5170, 1539, 'Tanjung Batu Indralaya', 1),
(5171, 1539, 'Tanjung Raja Indralaya', 1),
(5172, 1539, 'Tanjungagung Muaraenim', 1),
(5173, 1539, 'Tanjunglubuk Kayuagung', 1),
(5174, 1539, 'Tebing Tinggi Kab. Empat Lawang', 1),
(5175, 1539, 'Tugumulyo Muara Beliti Baru', 1),
(5176, 1539, 'Tulung Selapan Kayuagung', 1),
(5177, 1539, 'Ujan Mas Muara Enim', 1),
(5178, 1539, 'Ulu Musi Tebing Tinggi', 1),
(5179, 1539, 'Ulu Ogan Baturaja', 1),
(5180, 1539, 'Ulu Rawas Muara Beliti Baru', 1),
(5181, 1540, 'Adiankoting Tarutung', 1),
(5182, 1540, 'Adman Dewi Sibolga', 1),
(5183, 1540, 'Aek Bilah Sipirok', 1),
(5184, 1540, 'Aek Kuasan Asahan', 1),
(5185, 1540, 'Aek Kuo Labuhanbatu', 1),
(5186, 1540, 'Aek Natas Rantauprapat', 1),
(5187, 1540, 'Afulu Gunungsitoli', 1),
(5188, 1540, 'Air Joman Kisaran', 1),
(5189, 1540, 'Air Putih Limapuluh', 1),
(5190, 1540, 'Airbatu Kisaran', 1),
(5191, 1540, 'Ajibata Balige', 1),
(5192, 1540, 'Alasa Gunungsitoli', 1),
(5193, 1540, 'Amandraya Teluk Dalam', 1),
(5194, 1540, 'Arse Sipirok', 1),
(5195, 1540, 'Babalan Pangkalan Brandan', 1),
(5196, 1540, 'Badiri Sibolga', 1),
(5197, 1540, 'Baktiraja Doloksanggul', 1),
(5198, 1540, 'Balige Kab. Toba Samosir', 1),
(5199, 1540, 'Bandar Huluan Simalungun', 1),
(5200, 1540, 'Bandar Khalipah Sei Rampah', 1),
(5201, 1540, 'Bandar Masilam Simalungun', 1),
(5202, 1540, 'Bandar Pasir Mandoge Kisaran', 1),
(5203, 1540, 'Bandar Simalungun', 1),
(5204, 1540, 'Bandarpulau Kisaran', 1),
(5205, 1540, 'Bangun Purba Lubuk Pakam', 1),
(5206, 1540, 'Barumun Tengah Sibuhuan', 1),
(5207, 1540, 'Barumun Tengah Sipirok', 1),
(5208, 1540, 'Barumun Sibuhuan', 1),
(5209, 1540, 'Barumun Sipirok', 1),
(5210, 1540, 'Barus Jahe Kabanjahe', 1),
(5211, 1540, 'Barus Sibolga', 1),
(5212, 1540, 'Batahan Panyambungan', 1),
(5213, 1540, 'Batang Angkola Sipirok', 1),
(5214, 1540, 'Batang Bulu Sutam Sibuhuan', 1),
(5215, 1540, 'Batang Kuis Lubuk Pakam', 1),
(5216, 1540, 'Batang Lubu Sutam Sipirok', 1),
(5217, 1540, 'Batang Natal Panyambungan', 1),
(5218, 1540, 'Batang Onang Gunung Tua', 1),
(5219, 1540, 'Batang Onang Sipirok', 1),
(5220, 1540, 'Batang Serangan Langkat', 1),
(5221, 1540, 'Batangtoru Sipirok', 1),
(5222, 1540, 'Bawolato Gunungsitoli', 1),
(5223, 1540, 'Belawan Medan', 1),
(5224, 1540, 'Berampu Sidikalang', 1),
(5225, 1540, 'Berastagi Kabanjahe', 1),
(5226, 1540, 'Beringin Lubuk Pakam', 1),
(5227, 1540, 'Besitang Stabat', 1),
(5228, 1540, 'Bilah Barat Labuhanbatu', 1),
(5229, 1540, 'Bilah Hilir Rantauprapat', 1),
(5230, 1540, 'Bilah Hulu Labuhanbatu', 1),
(5231, 1540, 'Binjai Barat Binjai', 1),
(5232, 1540, 'Binjai Selatan Binjai', 1),
(5233, 1540, 'Binjai Timur Binjai', 1),
(5234, 1540, 'Binjai Utara Binjai', 1),
(5235, 1540, 'Binjai Binjai', 1),
(5236, 1540, 'Binjai Kota Binjai', 1),
(5237, 1540, 'Binjai Langkat', 1),
(5238, 1540, 'Bohorok Langkat', 1),
(5239, 1540, 'Bor Bor Balige', 1),
(5240, 1540, 'Bosarmaligas Simalungun', 1),
(5241, 1540, 'Brandan Barat Langkat', 1),
(5242, 1540, 'Bukit Malintang Panyambungan', 1),
(5243, 1540, 'Buntu Panei Kisaran', 1),
(5244, 1540, 'Datuk Bandar Tanjung Balai', 1),
(5245, 1540, 'Deli Tua Lubuk Pakam', 1),
(5246, 1540, 'Dolok Batunanggar Simalungun', 1),
(5247, 1540, 'Dolok Masihul Sei Rampah', 1),
(5248, 1540, 'Dolok Merawan Sei Rampah', 1),
(5249, 1540, 'Dolok Panribuan Simalungun', 1),
(5250, 1540, 'Dolok Pardamean Simalungun', 1),
(5251, 1540, 'Dolok Sigompulon Gunung Tua', 1),
(5252, 1540, 'Dolok Sigompulon Sipirok', 1),
(5253, 1540, 'Dolok Silau Simalungun', 1),
(5254, 1540, 'Dolok Gunung Tua', 1),
(5255, 1540, 'Dolok Sipirok', 1),
(5256, 1540, 'Doloksanggul Kab. Humbang', 1),
(5257, 1540, 'Galang Lubuk Pakam', 1),
(5258, 1540, 'Garoga Tarutung', 1),
(5259, 1540, 'Gebang Stabat', 1),
(5260, 1540, 'Gido Gunungsitoli', 1),
(5261, 1540, 'Girsang Sipanganbolon Simalungun', 1),
(5262, 1540, 'Gn. Meriah Lubuk Pakam', 1),
(5263, 1540, 'Gomo Teluk Dalam', 1),
(5264, 1540, 'Gunung Malela Simalungun', 1),
(5265, 1540, 'Gunung Maligas Simalungun', 1),
(5266, 1540, 'Gunung Sitember Dairi', 1),
(5267, 1540, 'Gunung Tua Padanglawas Utara', 1),
(5268, 1540, 'Gunungsitoli Kab. Nias', 1),
(5269, 1540, 'Habinsaran Balige', 1),
(5270, 1540, 'Halongonan Gunung Tua', 1),
(5271, 1540, 'Halongonan Sipirok', 1),
(5272, 1540, 'Hamparan Perak Lubuk Pakam', 1),
(5273, 1540, 'Haranggaol Horisanz Simalungun', 1),
(5274, 1540, 'Harian Pangururan', 1),
(5275, 1540, 'Hatonduhan Simalungun', 1),
(5276, 1540, 'Hibala Teluk Dalam', 1),
(5277, 1540, 'Hiliduho Gunungsitoli', 1),
(5278, 1540, 'Hinai Stabat', 1),
(5279, 1540, 'Huristak Sibuhuan', 1),
(5280, 1540, 'Huristak Sipirok', 1),
(5281, 1540, 'Huta Raja Tinggi Sibuhuan', 1),
(5282, 1540, 'Huta Raja Tinggi Sipirok', 1),
(5283, 1540, 'Hutabayuraja Simalungun', 1),
(5284, 1540, 'Idano Gawo Gunungsitoli', 1),
(5285, 1540, 'Jawa Maraja Bah Jambi Simalungun', 1),
(5286, 1540, 'Jorlang Hataran Simalungun', 1),
(5287, 1540, 'Juhar Kabanjahe', 1),
(5288, 1540, 'Kabanjahe Kab. Karo', 1),
(5289, 1540, 'Kampung Rakyat Rantauprapat', 1),
(5290, 1540, 'Kerajaan Salak', 1),
(5291, 1540, 'Kisaran Barat Asahan', 1),
(5292, 1540, 'Kisaran Timur Asahan', 1),
(5293, 1540, 'Kisaran Kab. Asahan', 1),
(5294, 1540, 'Kolang Sibolga', 1),
(5295, 1540, 'Kotanopan Panyambungan', 1),
(5296, 1540, 'Kotapinang Rantauprapat', 1),
(5297, 1540, 'Kotarih Sei Rampah', 1),
(5298, 1540, 'Kuala Stabat', 1),
(5299, 1540, 'Kualuh Hilir Rantauprapat', 1),
(5300, 1540, 'Kualuh Hulu Rantauprapat', 1),
(5301, 1540, 'Kualuh Leidong Labuhanbatu', 1),
(5302, 1540, 'Kualuh Selatan Labuhanbatu', 1),
(5303, 1540, 'Kutabuluh Kabanjahe', 1),
(5304, 1540, 'Kutalimbaru Lubuk Pakam', 1),
(5305, 1540, 'Labuhan Deli Lubuk Pakam', 1),
(5306, 1540, 'Lae Parira Dairi', 1),
(5307, 1540, 'Laguboti Balige', 1),
(5308, 1540, 'Lahewa Gunungsitoli', 1),
(5309, 1540, 'Lahusa Teluk Dalam', 1),
(5310, 1540, 'Lau Baleng Kabanjahe', 1),
(5311, 1540, 'Lembah Sorik Merapi P. Mbungan', 1),
(5312, 1540, 'Limapuluh Kab. Batubara', 1),
(5313, 1540, 'Lingga Bayu Panyambungan', 1),
(5314, 1540, 'Lintongnihuta Doloksanggul', 1),
(5315, 1540, 'Lolomatua Teluk Dalam', 1),
(5316, 1540, 'Lolotifu Moi Gunungsitoli', 1),
(5317, 1540, 'Lolowau Teluk Dalam', 1),
(5318, 1540, 'Lotu Gunungsitoli', 1),
(5319, 1540, 'Lubuk Barumun Sibuhuan', 1),
(5320, 1540, 'Lubuk Barumun Sipirok', 1),
(5321, 1540, 'Lubuk Pakam Kab. Deli Serdang', 1),
(5322, 1540, 'Lumbanjulu Balige', 1),
(5323, 1540, 'Lumut Sibolga', 1),
(5324, 1540, 'Mandrehe Gunungsitoli', 1),
(5325, 1540, 'Manduamas Sibolga', 1),
(5326, 1540, 'Marancar Sipirok', 1),
(5327, 1540, 'Mardinding Kabanjahe', 1),
(5328, 1540, 'Medan', 1),
(5329, 1540, 'Medan Amplas Medan', 1),
(5330, 1540, 'Medan Area Medan', 1),
(5331, 1540, 'Medan Barat Medan', 1),
(5332, 1540, 'Medan Baru Medan', 1),
(5333, 1540, 'Medan Deli Medan', 1),
(5334, 1540, 'Medan Denai Medan', 1),
(5335, 1540, 'Medan Helvetia Medan', 1),
(5336, 1540, 'Medan Johor Medan', 1),
(5337, 1540, 'Medan Kota Medan', 1),
(5338, 1540, 'Medan Labuhan Medan', 1),
(5339, 1540, 'Medan Maimun Medan', 1),
(5340, 1540, 'Medan Marelan Medan', 1),
(5341, 1540, 'Medan Perjuangan Medan', 1),
(5342, 1540, 'Medan Petisah Medan', 1),
(5343, 1540, 'Medan Polonia Medan', 1),
(5344, 1540, 'Medan Selayang Medan', 1),
(5345, 1540, 'Medan Sunggal Medan', 1),
(5346, 1540, 'Medan Tembung Medan', 1),
(5347, 1540, 'Medan Timur Medan', 1),
(5348, 1540, 'Medan Tuntungan Medan', 1),
(5349, 1540, 'Medang Deras Limapuluh', 1),
(5350, 1540, 'Meranti Kisaran', 1),
(5351, 1540, 'Merbau Rantauprapat', 1),
(5352, 1540, 'Merek Kabanjahe', 1),
(5353, 1540, 'Muara Batang Gadis P. Mbungan', 1),
(5354, 1540, 'Muara Tarutung', 1),
(5355, 1540, 'Muarasipongi Panyambungan', 1),
(5356, 1540, 'Munte Kabanjahe', 1),
(5357, 1540, 'Nainggolan Pangururan', 1),
(5358, 1540, 'Namo Rambe Lubuk Pakam', 1),
(5359, 1540, 'Nassau Balige', 1),
(5360, 1540, 'Natal Panyambungan', 1),
(5361, 1540, 'Onan Ganjang Doloksanggul', 1),
(5362, 1540, 'Onan Runggu Pangururan', 1),
(5363, 1540, 'Padang Bolak Julu Gunung Tua', 1),
(5364, 1540, 'Padang Bolak Julu Sipirok', 1),
(5365, 1540, 'Padang Bolak Gunung Tua', 1),
(5366, 1540, 'Padang Hilir Tebing Tinggi', 1),
(5367, 1540, 'Padang Hulu Tebing Tinggi', 1),
(5368, 1540, 'Padang Sidempuan Batu Nadua', 1),
(5369, 1540, 'Padang Sidempuan Hutaimbaru', 1),
(5370, 1540, 'Padang Sidempuan Selatan', 1),
(5371, 1540, 'Padang Sidempuan Tenggara', 1),
(5372, 1540, 'Padang Sidempuan Utara', 1),
(5373, 1540, 'Padangbolak Sipirok', 1),
(5374, 1540, 'Padangsidempuan', 1),
(5375, 1540, 'Padangsidempuan Barat Sipirok', 1),
(5376, 1540, 'Padangsidempuan Timur Sipirok', 1),
(5377, 1540, 'Padangtualang Stabat', 1),
(5378, 1540, 'Pagar Marbau Lubuk Pakam', 1),
(5379, 1540, 'Pagaran Tarutung', 1),
(5380, 1540, 'Pagindar Salak', 1);
INSERT INTO `oc_city` (`city_id`, `zone_id`, `name`, `status`) VALUES
(5381, 1540, 'Pahae Jae Tarutung', 1),
(5382, 1540, 'Pahae Julu Tarutung', 1),
(5383, 1540, 'Pakkat Doloksanggul', 1),
(5384, 1540, 'Palipi Pangururan', 1),
(5385, 1540, 'Panai Hilir Rantauprapat', 1),
(5386, 1540, 'Panai Hulu Labuhanbatu', 1),
(5387, 1540, 'Panai Tengah Rantauprapat', 1),
(5388, 1540, 'Pancur Batu Lubuk Pakam', 1),
(5389, 1540, 'Panei Simalungun', 1),
(5390, 1540, 'Pangaribuan Tarutung', 1),
(5391, 1540, 'Pangkalansusu Stabat', 1),
(5392, 1540, 'Pangkatan Labuhanbatu', 1),
(5393, 1540, 'Pangururan Kab. Samosir', 1),
(5394, 1540, 'Panombeian Pane Simalungun', 1),
(5395, 1540, 'Pantai Cermin Sei Rampah', 1),
(5396, 1540, 'Pantai Labu Lubuk Pakam', 1),
(5397, 1540, 'Panyabungan Barat Panyambungan', 1),
(5398, 1540, 'Panyabungan Kota Panyambungan', 1),
(5399, 1540, 'Panyabungan Selatan P. Mbungan', 1),
(5400, 1540, 'Panyabungan Timur Panyambungan', 1),
(5401, 1540, 'Panyabungan Utara Panyambungan', 1),
(5402, 1540, 'Panyambungan Kab. Mandailing Natal', 1),
(5403, 1540, 'Paranginan Doloksanggul', 1),
(5404, 1540, 'Parbuluan Sidikalang', 1),
(5405, 1540, 'Parlilitan Doloksanggul', 1),
(5406, 1540, 'Parmonangan Tarutung', 1),
(5407, 1540, 'Payung Kabanjahe', 1),
(5408, 1540, 'Pegangan Hilir Sidikalang', 1),
(5409, 1540, 'Pematang Bandar Simalungun', 1),
(5410, 1540, 'Pematang Raya Simalungun', 1),
(5411, 1540, 'Pematang Sidamanik Simalungun', 1),
(5412, 1540, 'Pematangsiantar', 1),
(5413, 1540, 'Perbaungan Sei Rampah', 1),
(5414, 1540, 'Percut Sei Tuan Lubuk Pakam', 1),
(5415, 1540, 'Pergetteng Sengkut Salak', 1),
(5416, 1540, 'Petumbak Lubuk Pakam', 1),
(5417, 1540, 'Pintu Pohan Meranti Balige', 1),
(5418, 1540, 'Pollung Doloksanggul', 1),
(5419, 1540, 'Poribi Gunung Tua', 1),
(5420, 1540, 'Porsea Balige', 1),
(5421, 1540, 'Portibi Sipirok', 1),
(5422, 1540, 'Pulaurakyat Kisaran', 1),
(5423, 1540, 'Purba Simalungun', 1),
(5424, 1540, 'Purbatua Tarutung', 1),
(5425, 1540, 'Rambutan Tebing Tinggi', 1),
(5426, 1540, 'Rantau Selatan Labuhanbatu', 1),
(5427, 1540, 'Rantau Utara Labuhanbatu', 1),
(5428, 1540, 'Rantauprapat Kab. Labuhan Batu', 1),
(5429, 1540, 'Raya Kahean Simalungun', 1),
(5430, 1540, 'Raya Simalungun', 1),
(5431, 1540, 'Ronggur Nihuta Pangururan', 1),
(5432, 1540, 'S. Tualang Raso Tanjung Balai', 1),
(5433, 1540, 'Saipar Dolok Hole Sipirok', 1),
(5434, 1540, 'Salak Kab. Pakpak Barat', 1),
(5435, 1540, 'Salapian Langkat', 1),
(5436, 1540, 'Sawit Seberang Langkat', 1),
(5437, 1540, 'Sayur Matinggi Sipirok', 1),
(5438, 1540, 'Secanggang Stabat', 1),
(5439, 1540, 'Sei Balai Limapuluh', 1),
(5440, 1540, 'Sei Bingai Langkat', 1),
(5441, 1540, 'Sei Kepayang Asahan', 1),
(5442, 1540, 'Sei Lepan Langkat', 1),
(5443, 1540, 'Sei Rampah Kab. Serdang Bedagai', 1),
(5444, 1540, 'Sei Suka Limapuluh', 1),
(5445, 1540, 'Selesai Langkat', 1),
(5446, 1540, 'Siabu Panyambungan', 1),
(5447, 1540, 'Siais Sipirok', 1),
(5448, 1540, 'Siantar Barat Pematangsiantar', 1),
(5449, 1540, 'Siantar Marihat Pematangsiantar', 1),
(5450, 1540, 'Siantar Martoba Pematangsiantar', 1),
(5451, 1540, 'Siantar Narumonda Balige', 1),
(5452, 1540, 'Siantar Selatan Pematangsiantar', 1),
(5453, 1540, 'Siantar Timur Pematangsiantar', 1),
(5454, 1540, 'Siantar Utara Pematangsiantar', 1),
(5455, 1540, 'Siantar Simalungun', 1),
(5456, 1540, 'Siatas Barita Tarutung', 1),
(5457, 1540, 'Sibabangun Sibolga', 1),
(5458, 1540, 'Sibolangit Lubuk Pakam', 1),
(5459, 1540, 'Sibolga Sambas Sibolga', 1),
(5460, 1540, 'Sibolga Selatan Sibolga', 1),
(5461, 1540, 'Sibolga Utara Sibolga', 1),
(5462, 1540, 'Sibolga Kab. Tapanuli Tengah', 1),
(5463, 1540, 'Sibolga Sibolga', 1),
(5464, 1540, 'Siborongborong Tarutung', 1),
(5465, 1540, 'Sibuhuan', 1),
(5466, 1540, 'Sidamanik Simalungun', 1),
(5467, 1540, 'Sidikalang Kab. Dairi', 1),
(5468, 1540, 'Siempat Nempu Hilir Sidikalang', 1),
(5469, 1540, 'Siempat Nempu Hulu Sidikalang', 1),
(5470, 1540, 'Siempat Nempu Sidikalang', 1),
(5471, 1540, 'Siempat Rube Salak', 1),
(5472, 1540, 'Sigumpar Balige', 1),
(5473, 1540, 'Sijama Polang Doloksanggul', 1),
(5474, 1540, 'Silaen Balige', 1),
(5475, 1540, 'Silangkitang Labuhanbatu', 1),
(5476, 1540, 'Silau Kahean Simalungun', 1),
(5477, 1540, 'Silima Pungga Sidikalang', 1),
(5478, 1540, 'Silimakuta Simalungun', 1),
(5479, 1540, 'Simangambat Gunung Tua', 1),
(5480, 1540, 'Simangambat Sipirok', 1),
(5481, 1540, 'Simangumban Tarutung', 1),
(5482, 1540, 'Simanindo Pangururan', 1),
(5483, 1540, 'Simpangempat Kabanjahe', 1),
(5484, 1540, 'Simpangempat Kisaran', 1),
(5485, 1540, 'Sinembah Tj. Muda Hilir Lubuk Pakam', 1),
(5486, 1540, 'Sinembah Tj. Muda Hulu Lubuk Pakam', 1),
(5487, 1540, 'Sipahutar Tarutung', 1),
(5488, 1540, 'Sipirok', 1),
(5489, 1540, 'Sipispis Sei Rampah', 1),
(5490, 1540, 'Sipoholon Tarutung', 1),
(5491, 1540, 'Sirandorung Sibolga', 1),
(5492, 1540, 'Sirombu Gunungsitoli', 1),
(5493, 1540, 'Sitahuis Sibolga', 1),
(5494, 1540, 'Sitellu Tai Urang Jehe Salak', 1),
(5495, 1540, 'Sitellu Tai Urang Julu Salak', 1),
(5496, 1540, 'Sitiotio Pangururan', 1),
(5497, 1540, 'Sorkam Barat Sibolga', 1),
(5498, 1540, 'Sorkam Sibolga', 1),
(5499, 1540, 'Sosa Sibuhuan', 1),
(5500, 1540, 'Sosa Sipirok', 1),
(5501, 1540, 'Sosopan Sibuhuan', 1),
(5502, 1540, 'Sosopan Sipirok', 1),
(5503, 1540, 'Sosor Gadong Sibolga', 1),
(5504, 1540, 'Stabat Kab. Langkat', 1),
(5505, 1540, 'Sumbul Sidikalang', 1),
(5506, 1540, 'Sungai Kanan Labuhanbatu', 1),
(5507, 1540, 'Sunggal Lubuk Pakam', 1),
(5508, 1540, 'Talawi Limapuluh', 1),
(5509, 1540, 'Tambangan Panyambungan', 1),
(5510, 1540, 'Tampahan Balige', 1),
(5511, 1540, 'Tanah Pinem Sidikalang', 1),
(5512, 1540, 'Tanahjawa Simalungun', 1),
(5513, 1540, 'Tanjung Balai', 1),
(5514, 1540, 'Tanjung Balai Asahan', 1),
(5515, 1540, 'Tanjung Beringin Sei Rampah', 1),
(5516, 1540, 'Tanjung Morawa Lubuk Pakam', 1),
(5517, 1540, 'Tanjung Tiram Limapuluh', 1),
(5518, 1540, 'Tanjungpura Stabat', 1),
(5519, 1540, 'Tapian Dolok Simalungun', 1),
(5520, 1540, 'Tapian Nauli Sibolga', 1),
(5521, 1540, 'Tarabintang Doloksanggul', 1),
(5522, 1540, 'Tarutung Kab. Tapanuli Utara', 1),
(5523, 1540, 'Tebingtinggi ', 1),
(5524, 1540, 'Tebingtinggi Sei Rampah', 1),
(5525, 1540, 'Teluk Dalam Kab. Nias Selatan', 1),
(5526, 1540, 'Teluk Mengkudu Sei Rampah', 1),
(5527, 1540, 'Teluk Nibung Tanjung Balai', 1),
(5528, 1540, 'Tg Balai Selatan Tanjung Balai', 1),
(5529, 1540, 'Tg Balai Utara Tanjung Balai', 1),
(5530, 1540, 'Tigabinanga Kabanjahe', 1),
(5531, 1540, 'Tigalingga Sidikalang', 1),
(5532, 1540, 'Tigapanah Kabanjahe', 1),
(5533, 1540, 'Tinada Salak', 1),
(5534, 1540, 'Torgamba Labuhanbatu', 1),
(5535, 1540, 'Tuhemberua Gunungsitoli', 1),
(5536, 1540, 'Tukka Sibolga', 1),
(5537, 1540, 'Ujungpadang Simalungun', 1),
(5538, 1540, 'Ulu Barumun Sibuhuan', 1),
(5539, 1540, 'Ulu Barumun Sipirok', 1),
(5540, 1540, 'Ulu Pungkut Panyambungan', 1),
(5541, 1540, 'Uluan Balige', 1),
(5542, 1540, 'Wampu Langkat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_colorskin`
--

CREATE TABLE IF NOT EXISTS `oc_colorskin` (
`skin_id` int(11) NOT NULL,
  `skinname` varchar(64) NOT NULL,
  `status` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=254 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_colorskin`
--

INSERT INTO `oc_colorskin` (`skin_id`, `skinname`, `status`) VALUES
(243, 'black-red', 0),
(244, 'black', 0),
(245, 'blue', 0),
(246, 'clean-lemon', 0),
(247, 'clean-orange', 0),
(248, 'coffee', 0),
(249, 'dark-grey', 0),
(250, 'grey-black', 0),
(251, 'grey-blue', 0),
(252, 'pastel-blue', 1),
(253, 'silver-gold', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_comunity`
--

CREATE TABLE IF NOT EXISTS `oc_comunity` (
`comunity_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_comunity`
--

INSERT INTO `oc_comunity` (`comunity_id`, `name`, `description`, `image`, `link`) VALUES
(2, 'HIMAKOM', 'Himpunan Mahasiswa Komputer', 'image/gallery/himakom.jpg', 'himakom.org'),
(6, 'Hmaprod TOI', 'Himpunan Mahasiswa Teknik Otomasi Industri', 'image/gallery/480405150405_Prodi TOI 2014 - Jurusan Teknik Elektro.jpg.jpg', 'toi.org');

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE IF NOT EXISTS `oc_country` (
`country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE IF NOT EXISTS `oc_coupon` (
`coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
`coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
`coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE IF NOT EXISTS `oc_currency` (
`currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, 'Rupiah', 'IDR', 'Rp', '', '2', 1.00000000, 1, '2015-05-05 05:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE IF NOT EXISTS `oc_customer` (
`customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL,
  `address_id` int(11) NOT NULL,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `date_added`) VALUES
(13, 2, 0, 'Pahlevi Ridwan', 'Putra', 'eripahle@gmail.com', '085624257705', '085624257705', 'ebd6fb6a4bbae5f87e857a5fe73a522c09109074', '23a4bdde6', NULL, NULL, 1, 0, '', '', 1, 1, 1, '', '2015-05-02 11:37:09'),
(8, 1, 0, 'muhammad', 'gifary', 'muhammadgifary@gmail.com', '083821391320', '', '7f33cf38c33c1e4228c0b7dfabdec347c70c5b2d', 'b6e4143db', 'a:0:{}', 'a:0:{}', 0, 5, '', '::1', 1, 1, 0, '', '2015-04-01 14:10:36'),
(18, 2, 0, 'gifary', 'editor', 'editor@gmail.com', '121524', '', 'f50f3ed2576e9fdc80d2b3344d58385412aa3d7d', '5488dadeb', 'a:0:{}', '', 0, 0, '', '::1', 1, 1, 0, '', '2015-05-05 11:40:50'),
(11, 1, 0, 'rijal', 'ghod', 'rijalul@gmail.com', '083821391320', '', '75eb62688d6cb719ded1051aa245b2782fc423df', '8db50e7e4', 'a:0:{}', '', 0, 7, '', '::1', 1, 1, 0, '', '2015-04-09 12:23:31'),
(10, 1, 0, 'Pahlevi Ridwan', 'Erik estrada', 'pahlevi.ridwan.tifd13@polban.ac.id', '085624257705', '', 'a44bfe23c811a9ab5b144ffd730348da4ad0f3ab', '742ee1736', 'a:1:{s:40:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNjt9";i:1;}', 'a:0:{}', 1, 6, '', '::1', 1, 1, 0, '', '2015-04-01 21:33:55'),
(12, 1, 0, 'percobaan', 'kota', 'kota@gmail.com', '0898393', '', 'e3b3629459bbe7a604c8c648377740f3443f198c', 'ac7f9d4ea', 'a:1:{s:40:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyODt9";i:1;}', '', 1, 8, '', '::1', 1, 1, 0, '', '2015-04-10 19:37:38'),
(14, 2, 0, 'Muhammad', 'Rizal', 'muhammad.rizal@gmail.com', '0878637256', '0878637256', '7eaab6c3e490c9506dbd025ac27a32ee946174da', '2c9459971', NULL, NULL, 1, 0, '', '', 1, 1, 0, '', '2015-05-02 12:23:33'),
(19, 3, 0, 'gifary', 'designer', 'design@gmail.com', '086789', '', 'f2e37825fef783245bb18ae5ae6f2d5c5037170f', '48b9881fd', 'a:0:{}', '', 0, 0, '', '::1', 1, 1, 0, '', '2015-05-05 11:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE IF NOT EXISTS `oc_customer_activity` (
`activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 1, 'register', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '127.0.0.1', '2015-02-18 11:45:36'),
(2, 2, 'register', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-03 10:18:37'),
(3, 2, 'edit', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-03 10:19:52'),
(4, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-03 16:35:49'),
(5, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-03 16:48:52'),
(6, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-03 16:56:25'),
(7, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-04 09:10:59'),
(8, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-05 22:05:10'),
(9, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-05 22:30:24'),
(10, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-05 22:30:39'),
(11, 0, 'register', 'a:2:{s:11:"customer_id";N;s:4:"name";s:8:"tes2 tes";}', '::1', '2015-03-06 16:26:52'),
(12, 4, 'login', 'a:2:{s:11:"customer_id";s:1:"4";s:4:"name";s:12:"editor handa";}', '::1', '2015-03-07 16:24:24'),
(13, 4, 'edit', 'a:2:{s:11:"customer_id";s:1:"4";s:4:"name";s:12:"editor handa";}', '::1', '2015-03-07 16:24:48'),
(14, 4, 'edit', 'a:2:{s:11:"customer_id";s:1:"4";s:4:"name";s:12:"editor handa";}', '::1', '2015-03-07 16:27:52'),
(15, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-09 14:04:52'),
(16, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-09 14:05:36'),
(17, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-09 14:06:47'),
(18, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-09 14:07:21'),
(19, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-09 14:08:21'),
(20, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-09 14:09:30'),
(21, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-09 14:37:46'),
(22, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-09 14:38:32'),
(23, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-09 14:40:44'),
(24, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-09 14:41:49'),
(25, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '127.0.0.1', '2015-03-09 14:49:25'),
(26, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '127.0.0.1', '2015-03-09 15:05:15'),
(27, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '127.0.0.1', '2015-03-09 15:06:16'),
(28, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '127.0.0.1', '2015-03-09 15:07:32'),
(29, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-10 19:10:29'),
(30, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-10 19:58:05'),
(31, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-10 21:33:07'),
(32, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-11 20:27:24'),
(33, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-12 23:49:01'),
(34, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-13 16:29:38'),
(35, 1, 'order_account', 'a:3:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";s:8:"order_id";i:1;}', '::1', '2015-03-13 16:31:40'),
(36, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '127.0.0.1', '2015-03-13 20:58:48'),
(37, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-14 05:44:31'),
(38, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-14 08:19:34'),
(39, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-14 15:51:53'),
(40, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-14 22:14:16'),
(41, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-15 09:03:39'),
(42, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-15 10:37:17'),
(43, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-15 12:57:08'),
(44, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-15 14:51:06'),
(45, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-15 19:42:15'),
(46, 7, 'register', 'a:2:{s:11:"customer_id";s:1:"7";s:4:"name";s:7:"tes dua";}', '::1', '2015-03-15 19:54:37'),
(47, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-15 20:01:11'),
(48, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-15 20:01:35'),
(49, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-17 18:32:41'),
(50, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-17 21:28:28'),
(51, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-17 21:28:42'),
(52, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-18 08:49:54'),
(53, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-18 21:26:40'),
(54, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-19 05:41:07'),
(55, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-19 09:51:00'),
(56, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-19 13:06:25'),
(57, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-19 16:56:00'),
(58, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-19 17:54:42'),
(59, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-20 09:40:35'),
(60, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-20 15:46:59'),
(61, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-21 05:49:47'),
(62, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-21 18:34:21'),
(63, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-21 19:06:33'),
(64, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-21 20:18:10'),
(65, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-21 20:18:43'),
(66, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-21 20:22:03'),
(67, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-21 20:22:31'),
(68, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-21 20:31:31'),
(69, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-21 21:15:01'),
(70, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-22 05:50:20'),
(71, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-22 10:34:53'),
(72, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-22 12:28:53'),
(73, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-22 12:35:43'),
(74, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-22 12:50:56'),
(75, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-22 19:37:52'),
(76, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-22 20:30:07'),
(77, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-22 20:34:45'),
(78, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-22 20:39:20'),
(79, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-22 20:39:58'),
(80, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-22 20:41:28'),
(81, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-22 20:43:20'),
(82, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-23 15:58:07'),
(83, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-23 16:26:06'),
(84, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-23 16:28:52'),
(85, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-24 13:20:42'),
(86, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-24 15:43:42'),
(87, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-24 21:12:12'),
(88, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-24 21:25:17'),
(89, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-25 05:35:30'),
(90, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-25 16:10:38'),
(91, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-25 17:05:24'),
(92, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-25 21:21:12'),
(93, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-26 03:08:33'),
(94, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-26 04:26:21'),
(95, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-27 08:38:52'),
(96, 1, 'login', 'a:2:{s:11:"customer_id";s:1:"1";s:4:"name";s:11:"gifary ghod";}', '::1', '2015-03-27 14:53:08'),
(97, 1, 'order_account', 'a:3:{s:11:"customer_id";s:1:"1";s:4:"name";s:11:"gifary ghod";s:8:"order_id";i:2;}', '::1', '2015-03-27 14:53:25'),
(98, 6, 'login', 'a:2:{s:11:"customer_id";s:1:"6";s:4:"name";s:14:"editor  handal";}', '::1', '2015-03-27 15:52:05'),
(99, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-28 02:26:59'),
(100, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-28 02:35:44'),
(101, 2, 'order_account', 'a:3:{s:11:"customer_id";s:1:"2";s:4:"name";s:19:"pahlevi rdwan putra";s:8:"order_id";i:3;}', '::1', '2015-03-28 02:36:34'),
(102, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-29 16:26:56'),
(103, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-29 16:47:55'),
(104, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-29 17:45:29'),
(105, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-31 03:33:45'),
(106, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-03-31 03:41:48'),
(107, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-04-01 04:17:44'),
(108, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:19:"pahlevi rdwan putra";}', '::1', '2015-04-01 07:30:54'),
(109, 8, 'register', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-01 14:10:38'),
(110, 9, 'login', 'a:2:{s:11:"customer_id";s:1:"9";s:4:"name";s:13:"Editor Handal";}', '::1', '2015-04-01 16:22:47'),
(111, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-01 18:52:24'),
(112, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-01 20:49:52'),
(113, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-01 21:01:49'),
(114, 9, 'login', 'a:2:{s:11:"customer_id";s:1:"9";s:4:"name";s:13:"Editor Handal";}', '::1', '2015-04-01 21:10:45'),
(115, 10, 'register', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-01 21:33:56'),
(116, 10, 'login', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-01 22:27:33'),
(117, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-02 08:45:43'),
(118, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-02 10:07:27'),
(119, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-02 19:37:25'),
(120, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-03 10:45:58'),
(121, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-03 13:02:40'),
(122, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-05 13:51:29'),
(123, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-05 13:53:36'),
(124, 0, 'order_guest', 'a:2:{s:4:"name";s:13:"sadasd gifary";s:8:"order_id";i:4;}', '::1', '2015-04-05 13:55:57'),
(125, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-08 15:55:49'),
(126, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-08 16:37:25'),
(127, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-08 16:41:52'),
(128, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-08 16:43:10'),
(129, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-08 16:44:35'),
(130, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-08 16:56:02'),
(131, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-08 17:33:07'),
(132, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-08 17:40:29'),
(133, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-08 18:31:06'),
(134, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-09 07:19:53'),
(135, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-09 09:15:05'),
(136, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-09 09:48:41'),
(137, 8, 'order_account', 'a:3:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";s:8:"order_id";i:6;}', '::1', '2015-04-09 10:02:47'),
(138, 11, 'register', 'a:2:{s:11:"customer_id";i:11;s:4:"name";s:10:"rijal ghod";}', '::1', '2015-04-09 12:23:32'),
(139, 11, 'order_account', 'a:3:{s:11:"customer_id";s:2:"11";s:4:"name";s:10:"rijal ghod";s:8:"order_id";i:7;}', '::1', '2015-04-09 12:23:57'),
(140, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-09 19:13:00'),
(141, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-04-10 13:19:53'),
(142, 12, 'register', 'a:2:{s:11:"customer_id";s:2:"12";s:4:"name";s:14:"percobaan kota";}', '::1', '2015-04-10 19:37:40'),
(143, 12, 'login', 'a:2:{s:11:"customer_id";s:2:"12";s:4:"name";s:14:"percobaan kota";}', '::1', '2015-04-10 19:40:22'),
(144, 10, 'login', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-15 20:17:54'),
(145, 10, 'login', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-22 19:18:58'),
(146, 10, 'login', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-23 07:04:15'),
(147, 10, 'login', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-24 21:28:11'),
(148, 10, 'login', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-24 22:15:11'),
(149, 10, 'login', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-25 09:07:45'),
(150, 10, 'order_account', 'a:3:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";s:8:"order_id";i:8;}', '::1', '2015-04-25 09:08:33'),
(151, 10, 'login', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-25 14:32:16'),
(152, 10, 'login', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-25 14:41:31'),
(153, 10, 'login', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-25 14:54:03'),
(154, 9, 'login', 'a:2:{s:11:"customer_id";s:1:"9";s:4:"name";s:13:"Editor Handal";}', '::1', '2015-04-25 15:03:38'),
(155, 9, 'login', 'a:2:{s:11:"customer_id";s:1:"9";s:4:"name";s:13:"Editor Handal";}', '::1', '2015-04-25 15:13:06'),
(156, 9, 'login', 'a:2:{s:11:"customer_id";s:1:"9";s:4:"name";s:13:"Editor Handal";}', '::1', '2015-04-25 15:17:20'),
(157, 10, 'login', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-25 15:19:41'),
(158, 9, 'login', 'a:2:{s:11:"customer_id";s:1:"9";s:4:"name";s:13:"Editor Handal";}', '::1', '2015-04-25 15:21:03'),
(159, 10, 'login', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-25 15:42:46'),
(160, 10, 'address_add', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-25 15:44:03'),
(161, 10, 'address_add', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-25 15:44:55'),
(162, 10, 'login', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-04-30 11:04:29'),
(163, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-05-03 15:53:04'),
(164, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-05-04 10:35:50'),
(165, 8, 'address_add', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-05-04 10:36:25'),
(166, 8, 'address_add', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-05-04 10:37:12'),
(167, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-05-04 19:19:56'),
(168, 10, 'login', 'a:2:{s:11:"customer_id";s:2:"10";s:4:"name";s:27:"Pahlevi Ridwan Erik estrada";}', '::1', '2015-05-04 20:23:18'),
(169, 15, 'login', 'a:2:{s:11:"customer_id";s:2:"15";s:4:"name";s:15:"gifary designer";}', '::1', '2015-05-05 10:19:14'),
(170, 19, 'login', 'a:2:{s:11:"customer_id";s:2:"19";s:4:"name";s:15:"gifary designer";}', '::1', '2015-05-05 11:42:49'),
(171, 19, 'login', 'a:2:{s:11:"customer_id";s:2:"19";s:4:"name";s:15:"gifary designer";}', '::1', '2015-05-05 11:55:24'),
(172, 8, 'login', 'a:2:{s:11:"customer_id";s:1:"8";s:4:"name";s:15:"muhammad gifary";}', '::1', '2015-05-05 16:20:40'),
(173, 19, 'login', 'a:2:{s:11:"customer_id";s:2:"19";s:4:"name";s:15:"gifary designer";}', '::1', '2015-05-05 16:27:38'),
(174, 18, 'login', 'a:2:{s:11:"customer_id";s:2:"18";s:4:"name";s:13:"gifary editor";}', '::1', '2015-05-05 16:28:46'),
(175, 19, 'login', 'a:2:{s:11:"customer_id";s:2:"19";s:4:"name";s:15:"gifary designer";}', '::1', '2015-05-05 16:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ban_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ban_ip` (
`customer_ban_ip_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group` (
`customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1),
(2, 0, 2),
(3, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Public', 'Bisa Upload E-book yang akan di jual atau membeli buku yang sudah ada'),
(2, 1, 'Editor', 'Dimana Editor bisa memilih buku untuk mengedit buku yang tersedia'),
(3, 1, 'Designer', 'Desginer bisa membuat design tp untuk buku2 yg minta di bikinkan desainnya');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE IF NOT EXISTS `oc_customer_history` (
`customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
`customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(7, 8, '::1', '2015-04-01 14:10:38'),
(9, 10, '::1', '2015-04-01 21:33:56'),
(10, 11, '::1', '2015-04-09 12:23:32'),
(11, 12, '::1', '2015-04-10 19:37:40'),
(13, 19, '::1', '2015-05-05 11:42:49'),
(14, 18, '::1', '2015-05-05 16:28:46');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE IF NOT EXISTS `oc_customer_login` (
`customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'admin', '127.0.0.1', 1, '2015-02-18 05:47:07', '2015-02-18 05:47:07'),
(2, 'admin', '::1', 1, '2015-03-11 14:27:20', '2015-03-11 14:27:20'),
(3, 'editor2@gmail.com', '::1', 2, '2015-03-15 04:35:58', '2015-03-15 04:36:10'),
(4, 'eripahles', '::1', 2, '2015-03-27 20:26:56', '2015-03-29 11:47:52'),
(5, 'editor', '::1', 1, '2015-03-27 20:33:34', '2015-03-27 20:33:34'),
(9, 'eripahle@gmail.com', '::1', 6, '2015-04-01 16:32:07', '2015-05-04 15:23:15'),
(12, 'pahlevi.ridwan.tfd13@polvan.ac.id', '::1', 2, '2015-04-01 17:26:45', '2015-04-01 17:26:51');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
`customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `points` int(8) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
`customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
`custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_design`
--

CREATE TABLE IF NOT EXISTS `oc_design` (
`designer_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '2',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_design`
--

INSERT INTO `oc_design` (`designer_id`, `customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `date_added`) VALUES
(9, 19, 3, 0, 'gifary', 'designer', 'design@gmail.com', '086789', '', '121b66cbaf89c5e6dd0f6733c5f41f9dfa4c45d6', 'f5cc7d038', NULL, NULL, 0, 0, '', '', 1, 1, 0, '', '2015-05-05 11:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE IF NOT EXISTS `oc_download` (
`download_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_download`
--

INSERT INTO `oc_download` (`download_id`, `filename`, `mask`, `date_added`) VALUES
(2, 'papandayan.jpg.a47b1de70a5fbacbfae70cbd7bc94af5', 'papandayan.jpg', '2015-03-25 19:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_download_description`
--

INSERT INTO `oc_download_description` (`download_id`, `language_id`, `name`) VALUES
(2, 1, 'buku');

-- --------------------------------------------------------

--
-- Table structure for table `oc_draf`
--

CREATE TABLE IF NOT EXISTS `oc_draf` (
`draf_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `draf` varchar(255) NOT NULL,
  `sample_script` varchar(255) DEFAULT NULL,
  `tanggal_upload` date NOT NULL,
  `nama_draf` varchar(255) DEFAULT NULL,
  `jenis_file` varchar(20) DEFAULT NULL,
  `ukuran_file` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_draf`
--

INSERT INTO `oc_draf` (`draf_id`, `product_id`, `draf`, `sample_script`, `tanggal_upload`, `nama_draf`, `jenis_file`, `ukuran_file`) VALUES
(47, 105, 'file/390410150401_T86_Marker_A4-1.pdf', 'file/390410150401_T86_Marker_A4-1.pdf', '2015-04-01', NULL, NULL, NULL),
(55, 113, 'file/110404150401_Sebuah Ceritra Dibalik Proyek 3.docx', 'file/390410150401_T86_Marker_A4-1.pdf', '2015-04-01', NULL, NULL, NULL),
(56, 114, 'file/590404150401_Sebuah Ceritra Dibalik Proyek 3.docx', 'file/390410150401_T86_Marker_A4-1.pdf', '2015-04-01', NULL, NULL, NULL),
(57, 115, 'file/470404150401_Sebuah Ceritra Dibalik Proyek 3.docx', 'file/390410150401_T86_Marker_A4-1.pdf', '2015-04-01', NULL, NULL, NULL),
(58, 116, 'file/120404150401_Sejarah Singkat Dunia.doc', 'file/390410150401_T86_Marker_A4-1.pdf', '2015-04-01', NULL, NULL, NULL),
(59, 117, 'file/050405150401_astronomy.doc', 'file/390410150401_T86_Marker_A4-1.pdf', '2015-04-01', NULL, NULL, NULL),
(60, 118, 'file/070405150401_islamic_daily_habit.doc', 'file/390410150401_T86_Marker_A4-1.pdf', '2015-04-01', NULL, NULL, NULL),
(61, 119, 'file/220504150504_3706-budi-PCD-Konvolusi-budi.pdf', 'file/390410150401_T86_Marker_A4-1.pdf', '2015-05-04', NULL, NULL, NULL),
(62, 120, 'file/190405150401_kado_pernikahan.doc', 'file/390410150401_T86_Marker_A4-1.pdf', '2015-04-01', NULL, NULL, NULL),
(63, 121, 'file/550405150401_hacker.doc', 'file/390410150401_T86_Marker_A4-1.pdf', '2015-04-01', NULL, NULL, NULL),
(64, 122, 'file/390405150401_listrik.doc', 'file/390410150401_T86_Marker_A4-1.pdf', '2015-04-01', NULL, NULL, NULL),
(65, 123, 'file/180405150401_kereta.doc', 'file/390410150401_T86_Marker_A4-1.pdf', '2015-04-01', NULL, NULL, NULL),
(66, 124, 'file/590405150401_UML.doc', 'file/390410150401_T86_Marker_A4-1.pdf', '2015-04-01', NULL, NULL, NULL),
(67, 125, 'file/510405150401_organisasi.doc', 'file/390410150401_T86_Marker_A4-1.pdf', '2015-04-01', NULL, NULL, NULL),
(68, 126, 'file/100405150401_kecatikan.doc', 'file/390410150401_T86_Marker_A4-1.pdf', '2015-04-01', NULL, NULL, NULL),
(71, 129, 'file/e1910d3769841cd88ac04f4c065e59cb_14842039941-384208145-ticket (1).pdf', 'file/f09c79a18ede1c564c3e5035f069a558_14842039941-384208145-ticket.pdf', '2015-04-25', NULL, NULL, NULL),
(72, 130, 'file/b685ef4025d6f3c1818e9b43dd30b219_Chapter_01.pdf', 'file/ed995cd3dc1f5a418ff94f3975ff01dd_Chapter_03.pdf', '2015-05-05', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_editor`
--

CREATE TABLE IF NOT EXISTS `oc_editor` (
`editor_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '2',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_editor`
--

INSERT INTO `oc_editor` (`editor_id`, `customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `date_added`) VALUES
(7, 13, 2, 0, 'Pahlevi Ridwan', 'Putra', 'eripahle@gmail.com', '085624257705', '085624257705', '7f34ae6b6b148186f2a4aef21a34df5224d78f96', 'c71d33895', NULL, NULL, 1, 0, '', '', 1, 1, 1, '', '2015-05-02 11:37:09'),
(8, 14, 2, 0, 'Muhammad', 'Rizal', 'muhammad.rizal@gmail.com', '0878637256', '0878637256', 'dbcfd9dcff15ad5515892ded25f27cfcffed5380', '31d15ac33', NULL, NULL, 1, 0, '', '', 1, 1, 0, '', '2015-05-02 12:23:33'),
(10, 18, 2, 0, 'gifary', 'editor', 'editor@gmail.com', '121524', '', '1b12f0a5a88b960f0f9a1ee97438f17cd9e0f004', 'a1d3dc3cb', NULL, NULL, 0, 0, '', '', 1, 1, 0, '', '2015-05-05 11:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `oc_editor_info`
--

CREATE TABLE IF NOT EXISTS `oc_editor_info` (
  `editor_id` int(11) NOT NULL,
  `info` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_editor_info`
--

INSERT INTO `oc_editor_info` (`editor_id`, `info`, `image`) VALUES
(7, 'Lulusan Sastra Bahasa Indonesia ITB 2009, penulis lebih dari 25 buku best seller teknik informatika, Dosen Teknik informasi dan science engineering di Politeknik Negeri Bandung - Jurusan Teknik Informatika', 'image/editor/430507150502_a.jpg.jpg'),
(8, 'Wirausahawan IT yang sudah malang melintang di khasanah perITan Indonesia, penulis 10 buku Enterprise editions seputar wirausaha dan IT', 'image/editor/540507150502_rizal2.png.png');

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE IF NOT EXISTS `oc_event` (
`event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE IF NOT EXISTS `oc_extension` (
`extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=487 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(426, 'module', 'carousel'),
(390, 'total', 'credit'),
(483, 'shipping', 'jne_oke'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(444, 'module', 'latest'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(427, 'module', 'featured'),
(419, 'module', 'slideshow'),
(428, 'module', 'information'),
(429, 'module', 'filter'),
(430, 'module', 'bestseller'),
(431, 'module', 'html'),
(432, 'module', 'store'),
(433, 'module', 'affiliate'),
(434, 'module', 'special'),
(435, 'module', 'mostviewed'),
(471, 'shipping', 'jne_reguler'),
(440, 'module', 'skincolor'),
(441, 'module', 'mostreviewed'),
(442, 'module', 'toprated'),
(443, 'module', 'tweetbook'),
(447, 'module', 'upload_book'),
(452, 'module', 'listeditbook'),
(455, 'module', 'gallery'),
(456, 'module', 'gallery_event'),
(457, 'module', 'gallery_event'),
(476, 'module', 'payment_approvement_admin'),
(459, 'module', 'testimony_layout'),
(460, 'module', 'abouteditor'),
(461, 'module', 'calendar_admin'),
(464, 'module', 'calendar_module_view'),
(465, 'module', 'gallery_event_simple'),
(467, 'module', 'comunity_layout'),
(468, 'module', 'comunity_layout'),
(469, 'module', 'comunity_layout'),
(470, 'module', 'comunity_layout'),
(472, 'module', 'testimoeditor'),
(473, 'module', 'comunity_admin'),
(474, 'payment', 'bank_mandiri'),
(475, 'payment', 'bank_bca'),
(477, 'module', 'editor_managment_admin'),
(478, 'module', 'editor_layout'),
(479, 'module', 'editor_layout'),
(480, 'module', 'category_wall'),
(481, 'module', 'category'),
(482, 'module', 'featuredcategory'),
(484, 'shipping', 'jne_yes'),
(486, 'module', 'listdesignbook');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE IF NOT EXISTS `oc_filter` (
`filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group` (
`filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_gallery_event`
--

CREATE TABLE IF NOT EXISTS `oc_gallery_event` (
`gallery_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_gallery_event`
--

INSERT INTO `oc_gallery_event` (`gallery_id`, `image`, `title`, `description`, `status`) VALUES
(71, 'image/gallery/370406150405_panti.jpg.jpg', 'PUBAPP Berbagu untuk panti asuhan', 'publisher.com berbagi untuk panti asuhan. Jl. Gunung Batu 20. Lebarang 2014 - 1435 H', '1'),
(72, 'image/gallery/570406150405_10703892_4773426871643_2353857759180775309_n.jpg.jpg', 'PUBAPP Prenstasi Managment Perpustakaan JTK POLBAN 2014', 'Kegiatan tahunan publisher.com untuk mahasiswa. kali ini kita merapat JTK POBLBAN untuk memberi training singkat mengenai pengelolaan perpustakaan', '1'),
(73, 'image/gallery/080406150405_10683682_4877993805751_2519856084080605049_o.jpg.jpg', 'Creq PUBAPP Sharing IT', 'Kenampakan Crew front End PUBAPp di sharing IT 2015', '1'),
(79, 'image/gallery/240406150405_10929072_10205105537615830_1420504451340617705_n.jpg.jpg', 'Pubapps menyelenggarakan kompetisi pemrogramman', 'Tisigram PUBAP', '1');

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
`geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(25, 'Papua Barat', 'Papua Barat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Papua', 'Papua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'NTT', 'NTT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'NTB', 'NTB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Maluku Utara', 'Maluku Utara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Maluku', 'Maluku', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Lampung', 'Lampung', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Kepulauan Riau', 'Kepulauan Riau', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Kalimantan Utara', 'Kalimantan Utara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Kalimantan Timur', 'Kalimantan Timur', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Kalimantan Tengah', 'Kalimantan Tengah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Kalimantan Selatan', 'Kalimantan Selatan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Kalimantan Barat', 'Kalimantan Barat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Jawa Timur', 'Jawa Timur', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Jawa Tengah', 'Jawa Tengah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Jawa Barat', 'Jawa Barat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Jambi', 'Jambi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Gorontalo', 'Gorontalo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'DKI Jakarta', 'DKI Jakarta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'D.I. Yogyakarta', 'D.I. Yogyakarta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Bengkulu', 'Bengkulu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Banten', 'Banten', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Bangka Belitung', 'Bangka Belitung', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Bali', 'Bali', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1, 'Aceh', 'Aceh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Riau', 'Riau', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Sulawesi Barat', 'Sulawesi Barat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Sulawesi Selatan', 'Sulawesi Selatan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Sulawesi Tengah', 'Sulawesi Tengah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Sulawesi Tenggara', 'Sulawesi Tenggara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Sulawesi Utara', 'Sulawesi Utara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Sumatera Barat', 'Sumatera Barat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Sumatera Selatan', 'Sumatera Selatan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Sumatera Utara', 'Sumatera Utara', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE IF NOT EXISTS `oc_information` (
`information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us Publisher&lt;br&gt;&lt;/p&gt;\r\n', 'About Us Publisher', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Saya menyetujui Segala Kebijakan yang ada baik proses pembelian buku, maupun buku yang akan di upload&lt;/p&gt;\r\n', 'privacy policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', ''),
(7, 1, 'How To Self Publish', '&lt;p&gt;&lt;span style=&quot;font-style: italic;&quot;&gt;How to publish and marketing your own Book&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-style: italic;&quot;&gt;&lt;br&gt;&lt;img src=&quot;http://localhost/PUBAPP/src/opencart/image/catalog/GAMBAR PERCOBAAN.png&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;', 'How to publish and marketing your own Book', 'How to publish and marketing your own Book', 'How to publish and marketing your own Book'),
(8, 1, 'Our Programs', '&lt;p&gt;&lt;span style=&quot;font-style: italic;&quot;&gt;Our Programs and more&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-style: italic;&quot;&gt;&lt;br&gt;&lt;img src=&quot;http://localhost/PUBAPP/src/opencart/image/catalog/GAMBAR PERCOBAAN.png&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'actifity our program', 'actifity our program', 'actifity our program'),
(9, 1, 'How To be Editor', '&lt;span style=&quot;font-style: italic;&quot;&gt;How to be Editor in PUB-APP&lt;/span&gt;&lt;p&gt;&lt;span style=&quot;font-style: italic;&quot;&gt;&lt;br&gt;&lt;img src=&quot;http://localhost/PUBAPP/src/opencart/image/catalog/GAMBAR PERCOBAAN.png&quot;&gt;&lt;/span&gt;&lt;/p&gt;', 'How to be Editor', 'How to be Editor', 'How to be Editor'),
(10, 1, 'How To Shoping', '&lt;p&gt;&lt;span style=&quot;font-style: italic;&quot;&gt;How To Shoping in PUB-APP&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://localhost/PUBAPP/src/opencart/image/catalog/GAMBAR PERCOBAAN.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'How To Shoping', 'How To Shoping', 'How To Shoping'),
(11, 1, 'FAQ', '&lt;p&gt;1 how to buy books in this web&lt;/p&gt;&lt;p&gt;......&lt;/p&gt;', 'FAQ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0),
(7, 0, 11),
(8, 0, 11),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE IF NOT EXISTS `oc_language` (
`language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE IF NOT EXISTS `oc_layout` (
`layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(14, 'LayoutOurProgram'),
(15, 'Upload Draf Buku'),
(17, 'howToSelfPublish'),
(18, 'howtobeeditor'),
(19, 'HowToShop'),
(20, 'Services'),
(21, 'newbook'),
(22, 'Top rated Product'),
(23, 'bestseller'),
(24, 'FAQ'),
(30, 'listeditbook'),
(32, 'gallery view'),
(33, 'calendar event'),
(34, 'testimony view'),
(35, 'Comunity view'),
(36, 'Upload Payment Layout'),
(37, 'testimo_editor'),
(39, 'Top Rated module unlimited'),
(40, 'about editor view'),
(41, 'category'),
(43, 'listdesignbook');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE IF NOT EXISTS `oc_layout_module` (
`layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=656 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'affiliate', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(166, 14, 'html.37', 'content_top', 0),
(414, 17, 'html.38', 'content_top', 0),
(416, 18, 'html.40', 'content_top', 0),
(417, 19, 'html.39', 'content_top', 0),
(418, 20, 'html.50', 'content_top', 0),
(420, 21, 'latest.51', 'content_top', 0),
(557, 22, 'toprated.47', 'content_top', 0),
(423, 23, 'bestseller.53', 'content_top', 0),
(456, 15, 'upload_book.56', 'content_top', 0),
(435, 24, 'html.57', 'content_top', 0),
(445, 30, 'listeditbook.64', 'content_top', 0),
(532, 33, 'calendar_module_view.71', 'content_top', 0),
(450, 32, 'gallery_event.65', 'content_top', 0),
(469, 34, 'testimony_layout.67', 'content_top', 0),
(470, 34, 'html.34', 'column_right', 0),
(498, 37, 'abouteditor.68', 'column_left', 0),
(607, 40, 'html.34', 'column_right', 1),
(556, 35, 'comunity_layout.73', 'content_top', 0),
(652, 41, 'featuredcategory', 'content_top', 0),
(650, 1, 'latest.48', 'content_top', 4),
(651, 1, 'html.44', 'column_right', 5),
(593, 39, 'toprated.76', 'content_top', 0),
(649, 1, 'toprated.47', 'content_top', 3),
(647, 1, 'gallery_event_simple.72', 'column_right', 4),
(608, 40, 'editor_layout.78', 'content_top', 1),
(648, 1, 'tweetbook', 'content_top', 5),
(646, 1, 'bestseller.53', 'content_top', 2),
(645, 1, 'slideshow.27', 'content_top', 1),
(644, 1, 'html.34', 'column_right', 1),
(643, 1, 'html.35', 'column_right', 2),
(642, 1, 'testimoeditor.75', 'content_top', 10),
(655, 43, 'listdesignbook.80', 'content_top', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE IF NOT EXISTS `oc_layout_route` (
`layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(201, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search'),
(78, 14, 0, ''),
(162, 15, 0, 'common/upload_draf_book'),
(117, 17, 0, 'information/howtoselfpublish'),
(119, 18, 0, 'information/howtobeeditor'),
(120, 19, 0, 'information/howtoshop'),
(121, 20, 0, 'information/services'),
(123, 21, 0, 'information/newbook'),
(188, 22, 0, 'information/popularbooks'),
(126, 23, 0, 'information/bestseller'),
(138, 24, 0, 'information/faq'),
(148, 30, 0, 'information/listeditbook'),
(157, 32, 0, 'common/gallery'),
(184, 33, 0, 'common/calendar'),
(165, 34, 0, 'common/testimony'),
(187, 35, 0, 'common/comunity'),
(176, 36, 0, 'common/upload_payment'),
(179, 37, 0, 'common/testimo_editor'),
(193, 39, 0, 'information/popularbooksunlimited'),
(197, 40, 0, 'common/abouteditor'),
(202, 41, 0, 'common/category'),
(205, 43, 0, 'information/listdesignbook');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE IF NOT EXISTS `oc_length_class` (
`length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
`length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE IF NOT EXISTS `oc_location` (
`location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
`manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE IF NOT EXISTS `oc_marketing` (
`marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE IF NOT EXISTS `oc_modification` (
`modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(2, 'OpenCart How - Facebook Share Improvement', 'vie_facebook_share_improvement', 'OpenCart How', '1.0', 'http://www.opencarthow.com', '<?xml version="1.0" encoding="UTF-8"?>\r\n<modification>\r\n  <name>OpenCart How - Facebook Share Improvement</name>\r\n  <code>vie_facebook_share_improvement</code>\r\n  <version>1.0</version>\r\n  <author>OpenCart How</author>\r\n  <link>http://www.opencarthow.com</link>\r\n\r\n  <file path="catalog/view/theme/*/template/product/product.tpl">\r\n    <operation>\r\n      <search><![CDATA[<?php echo $header; ?>]]></search>\r\n      <add position="replace"><![CDATA[\r\n        <?php echo str_replace(''</head>'', ''<meta property="og:image" content="''. $thumb .''"/><meta property="og:title" content="''. $heading_title .''"/><meta property="og:description" content="''. preg_replace(''#\\s+#'', '' '', strip_tags($description)) .''" /></head>'', $header); ?>\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n</modification>\r\n', 1, '2015-03-04 13:33:44'),
(3, 'admin-categories-category-filter', 'ACCF00001', 'R.P. Meij', '2.0.1.1', 'http://www.meijmedia.nl/opencart2.0.1.1', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n    <name>admin-categories-category-filter</name>\r\n    <version>2.0.1.1</version>\r\n	<author>R.P. Meij</author>\r\n	<code>ACCF00001</code>\r\n    <link>http://www.meijmedia.nl/opencart2.0.1.1</link>\r\n	<!-- Admin Edits -->\r\n	<file path="admin/view/template/catalog/category_list.tpl">\r\n		<operation>\r\n            <search trim="true|false"><![CDATA[ <div class="panel-body">]]></search>\r\n            <add position="after"><![CDATA[\r\n	<div class="well">		\r\n		<div class="row">\r\n            <div class="col-sm-4">\r\n              <div class="form-group">\r\n                <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>\r\n                <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />\r\n              </div>\r\n			</div>  		\r\n            <div class="col-sm-4">\r\n				  <div class="form-group">\r\n					<label class="control-label" for="input-category"><?php echo $entry_category; ?></label>\r\n					<select name="filter_category" id="input-category" class="form-control">\r\n					  <option value="*"></option>\r\n					  <?php foreach ($categories_drop as $category) { ?>\r\n					  <?php if ($filter_category==$category[''category_id'']) { ?>\r\n					  <option value="<?php echo $category[''category_id''] ?>" selected="selected"><?php echo $category[''name''] ?></option>\r\n					  <?php } else { ?>\r\n					  <option value="<?php echo $category[''category_id''] ?>"><?php echo $category[''name''] ?></option>\r\n					  <?php } ?>\r\n					  <?php } ?>				  \r\n					</select>\r\n				  </div>\r\n			</div>\r\n            <div class="col-sm-4">\r\n              <div class="form-group">\r\n                <label class="control-label" for="input-status"><?php echo $entry_status; ?></label>\r\n                <select name="filter_status" id="input-status" class="form-control">\r\n                  <option value="*"></option>\r\n                  <?php if ($filter_status) { ?>\r\n                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>\r\n                  <?php } else { ?>\r\n                  <option value="1"><?php echo $text_enabled; ?></option>\r\n                  <?php } ?>\r\n                  <?php if (!$filter_status && !is_null($filter_status)) { ?>\r\n                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>\r\n                  <?php } else { ?>\r\n                  <option value="0"><?php echo $text_disabled; ?></option>\r\n                  <?php } ?>\r\n                </select>\r\n              </div>\r\n              <div class="form-group">\r\n                <button type="button" id="button-filter" class="btn btn-primary pull-right"><i class="fa fa-search"></i> <?php echo $button_filter; ?></button>\r\n			  </div>			  \r\n            </div>						\r\n		</div>		\r\n	</div>	  \r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n            <search trim="true|false"><![CDATA[<?php echo $footer; ?>]]></search>\r\n            <add position="before"><![CDATA[\r\n  <script type="text/javascript"><!--\r\n$(''#button-filter'').on(''click'', function() {\r\n	var url = ''index.php?route=catalog/category&token=<?php echo $token; ?>'';\r\n\r\n	/* catgory filter */	\r\n		var filter_category = $(''select[name=\\''filter_category\\'']'').val();\r\n	\r\n		if (filter_category != ''*'') {\r\n			url += ''&filter_category='' + encodeURIComponent(filter_category);\r\n		}\r\n	/* end category filter*/	\r\n			\r\n	var filter_status = $(''select[name=\\''filter_status\\'']'').val();\r\n\r\n	if (filter_status != ''*'') {\r\n		url += ''&filter_status='' + encodeURIComponent(filter_status);\r\n	}\r\n	\r\n	var filter_name = $(''input[name=\\''filter_name\\'']'').val();\r\n\r\n	if (filter_name != ''*'') {\r\n		url += ''&filter_name='' + encodeURIComponent(filter_name);\r\n	}	\r\n\r\n	location = url;\r\n});\r\n//--></script>	\r\n			]]></add>\r\n		</operation>					\r\n	</file>\r\n	<file path="admin/language/english/catalog/category.php">\r\n		<operation>\r\n			<search trim="true|false"><![CDATA[$_[''heading_title'']          = ''Categories'';]]></search>\r\n				<add position="after"><![CDATA[\r\n			//new text categorie filters	\r\n			$_[''entry_category'']         = ''Categories'';\r\n			$_[''help_category'']          = ''(Autocomplete)'';			\r\n				]]></add>\r\n			\r\n		</operation>\r\n	</file>	\r\n	<file path="admin/controller/catalog/category.php">\r\n		<operation>\r\n			<search trim="true|false"><![CDATA[protected function getList() {]]></search>\r\n				<add position="after"><![CDATA[\r\n		//add category dropdown	\r\n	\r\n		$data[''categories-drop''] = array();\r\n\r\n		$filter_data_drop = array(\r\n			''sort''  => ''name'',\r\n			''order'' => ''ASC'',\r\n		);\r\n\r\n		$category_total_drop = $this->model_catalog_category->getTotalCategories();\r\n\r\n		$results_drop = $this->model_catalog_category->getCategories($filter_data_drop);\r\n\r\n		foreach ($results_drop as $result) {\r\n			$data[''categories_drop''][] = array(\r\n				''category_id'' => $result[''category_id''],\r\n				''name''        => $result[''name''],\r\n			);\r\n		}	\r\n\r\n		//filter\r\n		if (isset($this->request->get[''filter_status''])) {\r\n			$filter_status = $this->request->get[''filter_status''];\r\n		} else {\r\n			$filter_status = null;\r\n		}\r\n\r\n\r\n		if (isset($this->request->get[''filter_category''])) {\r\n			$filter_category = $this->request->get[''filter_category''];\r\n		} else {\r\n			$filter_category = null;\r\n		}		\r\n		\r\n		if (isset($this->request->get[''filter_name''])) {\r\n			$filter_name = $this->request->get[''filter_name''];\r\n		} else {\r\n			$filter_name = null;\r\n		}	\r\n		//end			\r\n				]]></add>\r\n			\r\n		</operation>\r\n		<operation>\r\n			<search trim="true|false"><![CDATA[$url .= ''&page='' . $this->request->get[''page''];]]></search>\r\n				<add position="after" offset="1"><![CDATA[\r\n		//new category filter\r\n		if (isset($this->request->get[''filter_category''])) {\r\n			$url .= ''&filter_category='' . $this->request->get[''filter_category''];\r\n		}			\r\n		if (isset($this->request->get[''filter_status''])) {\r\n			$url .= ''&filter_status='' . $this->request->get[''filter_status''];\r\n		}	\r\n		\r\n		if (isset($this->request->get[''filter_name''])) {\r\n			$url .= ''&filter_name='' . $this->request->get[''filter_name''];\r\n		}			\r\n		//end			\r\n				]]></add>\r\n			\r\n		</operation>\r\n		<operation>\r\n			<search trim="true|false"><![CDATA[$data[''categories''] = array();]]></search>\r\n				<add position="after" offset="2"><![CDATA[\r\n			''filter_category'' => $filter_category,\r\n			''filter_status''   => $filter_status,\r\n			''filter_name''	  => $filter_name,		\r\n				]]></add>\r\n			\r\n		</operation>					\r\n		<operation>\r\n			<search trim="true|false"><![CDATA[$data[''button_add''] = $this->language->get(''button_add'');]]></search>\r\n				<add position="after"><![CDATA[\r\n			$data[''button_filter''] = $this->language->get(''button_filter'');\r\n			$data[''entry_name''] = $this->language->get(''entry_name'');\r\n			$data[''entry_status''] = $this->language->get(''entry_status'');\r\n			$data[''entry_category''] = $this->language->get(''entry_category'');	\r\n			$data[''text_enabled''] = $this->language->get(''text_enabled'');\r\n			$data[''text_disabled''] = $this->language->get(''text_disabled'');	\r\n			$data[''token''] = $this->session->data[''token''];							\r\n				]]></add>\r\n		</operation>	\r\n		<operation>\r\n			<search trim="true|false"><![CDATA[$data[''order''] = $order;]]></search>\r\n				<add position="after"><![CDATA[\r\n		$data[''filter_category''] = $filter_category;							\r\n		$data[''filter_status''] = $filter_status;\r\n		$data[''filter_name''] = $filter_name;			\r\n				]]></add>\r\n			\r\n		</operation>	\r\n		<operation>\r\n			<search trim="true|false"><![CDATA[$category_total = $this->model_catalog_category->getTotalCategories();]]></search>\r\n				<add position="replace"><![CDATA[\r\n		$category_total = $this->model_catalog_category->getTotalCategories($filter_data);			\r\n				]]></add>\r\n		</operation>			\r\n	</file>	\r\n	<file path="admin/model/catalog/category.php">\r\n			<operation>\r\n			<search trim="true|false"><![CDATA[public function getCategories($data = array()) {]]></search>\r\n				<add position="after" offset="5"><![CDATA[\r\n//new		\r\n		if (isset($data[''filter_status'']) && !is_null($data[''filter_status''])) {\r\n			$sql .= " AND c1.status = ''" . (int)$data[''filter_status''] . "''";\r\n		}\r\n		\r\n		if (isset($data[''filter_category'']) && !is_null($data[''filter_category''])) {\r\n			$sql .= " AND (c1.category_id = ''" . (int)$data[''filter_category''] . "''";\r\n			$sql .= " OR c1.parent_id = ''" . (int)$data[''filter_category''] . "'')";\r\n		}		\r\n//end new			\r\n				]]></add>\r\n			\r\n		</operation>\r\n		<operation>\r\n			<search trim="true|false"><![CDATA[public function getTotalCategories() {]]></search>\r\n				<add position="replace"><![CDATA[\r\n		public function getTotalCategories($data = array()) {			\r\n				]]></add>\r\n			\r\n		</operation>			\r\n		<operation>\r\n			<search trim="true|false"><![CDATA[$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category");]]></search>\r\n				<add position="replace"><![CDATA[\r\n			$sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category";	\r\n			$sql .= " left Join " . DB_PREFIX . "category_description ON " . DB_PREFIX . "category.category_id = " . DB_PREFIX . "category_description.category_id";\r\n			$sql .= " WHERE 1=1 ";\r\n		if (isset($data[''filter_status'']) && !is_null($data[''filter_status''])) {\r\n			$sql .= " AND status = ''" . (int)$data[''filter_status''] . "''";\r\n		}\r\n		\r\n		if (!empty($data[''filter_name''])) {\r\n			$sql .= " AND name LIKE ''" . $this->db->escape($data[''filter_name'']) . "%''";\r\n		}		\r\n		\r\n		if (isset($data[''filter_category'']) && !is_null($data[''filter_category''])) {\r\n			$sql .= " AND (" . DB_PREFIX . "category.category_id = ''" . (int)$data[''filter_category''] . "''";\r\n			$sql .= " OR parent_id = ''" . (int)$data[''filter_category''] . "'')";\r\n		}\r\n		$query = $this->db->query($sql);			 \r\n				]]></add>\r\n			\r\n		</operation>\r\n	</file>  \r\n</modification>', 1, '2015-03-05 13:55:16'),
(4, 'Colored Opencart', 'col', 'ThemingOpencart.com', '1.0', 'ThemingOpencart.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n    <name>Colored Opencart</name>\r\n    <version>1.0</version>\r\n    <code>col</code>\r\n    <author>ThemingOpencart.com</author>\r\n    <link>ThemingOpencart.com</link>\r\n      <file path="catalog/view/theme/*/template/common/header.tpl">\r\n		<operation>\r\n			<search ><![CDATA[\r\n                          <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">\r\n			    \r\n		   ]]></search>\r\n			<add position="after" ><![CDATA[\r\n			         <?php if (!$colorskin=='''') { ?>\r\n                         <link href="<?php echo $colorskin; ?>"  rel="stylesheet">\r\n                     <?php } ?>\r\n			]]></add>\r\n		</operation>\r\n    </file>   \r\n\r\n    <file path="catalog/controller/common/header.php">\r\n        <operation>\r\n            <search><![CDATA[\r\n                  $this->load->model(''catalog/category'');\r\n            ]]></search>\r\n            <add position="after"><![CDATA[	\r\n				   $this->load->model(''catalog/colorskin'');\r\n					$result = $this->model_catalog_colorskin->Loadskin();\r\n					if (!empty($result)) {\r\n				    $data[''colorskin'']= ''catalog/view/theme/'' . $this->config->get(''config_template'') . ''/stylesheet/skincolor/'' . $result[''skinname''] . ''.css'';\r\n					}else {\r\n				    $data[''colorskin'']='''';\r\n					}\r\n            ]]></add>\r\n        </operation>\r\n    </file>  \r\n</modification>', 1, '2015-03-05 21:37:53'),
(5, 'home-btn-on-default-top-menu-kupi-bg-com', 'home-kupi-bg-com', 'Kupi-Bg-Com', '1.0.0', 'http://www.kupi-bg.com', '<modification>\r\n    <name>home-btn-on-default-top-menu-kupi-bg-com</name>\r\n	<version>1.0.0</version>\r\n	<link>http://www.kupi-bg.com</link>\r\n	<author>Kupi-Bg-Com</author>\r\n	<code>home-kupi-bg-com</code>\r\n\r\n	<file path="catalog/view/theme/*/template/common/header.tpl">\r\n		<operation>\r\n			<search ><![CDATA[<ul class="nav navbar-nav">]]></search>\r\n			<add position="after"><![CDATA[<li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n</modification>', 1, '2015-03-05 22:28:56'),
(6, 'PDF Upload', 'admin_tristar_pdfupload_ocmod', 'Tristar Web Solutions', '0.1Alpha', 'http://www.tristarwebsolutions.co.uk', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n	<name>PDF Upload</name>\r\n	<version>0.1Alpha</version>\r\n	<author>Tristar Web Solutions</author>\r\n	<link>http://www.tristarwebsolutions.co.uk</link>\r\n	<code>admin_tristar_pdfupload_ocmod</code>\r\n	<file path="admin/controller/common/filemanager.php">\r\n		<operation>\r\n			<search><![CDATA[{jpg,jpeg,png,gif,JPG,JPEG,PNG,GIF}]]></search>\r\n			<add position="replace"><![CDATA[{jpg,jpeg,png,gif,pdf,JPG,JPEG,PNG,GIF,PDF}]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$this->model_tool_image->resize(utf8_substr($image, utf8_strlen(DIR_IMAGE)), 100, 100)]]></search>\r\n			<add position="replace"><![CDATA[(strrchr($image, ''.'') != ".pdf") ? $this->model_tool_image->resize(utf8_substr($image, utf8_strlen(DIR_IMAGE)), 100, 100) : $this->model_tool_image->resize(''pdf_icon.png'', 100, 100)]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[''png'']]></search>\r\n			<add position="after"><![CDATA[,''pdf'']]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[''image/gif'']]></search>\r\n			<add position="after"><![CDATA[,''application/pdf'']]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-03-12 19:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE IF NOT EXISTS `oc_module` (
`module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(49, 'Upload Draf Book', 'html', 'a:3:{s:4:"name";s:16:"Upload Draf Book";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:0:"";s:11:"description";s:238:"&lt;iframe src=&quot;system/engine/upload/index.html&quot; scrolling=&quot;no&quot; style=&quot;border:none; overflow:hidden; height:420px; width:600px;&quot; allowtransparency=&quot;true&quot; frameborder=&quot;0&quot;&gt;&lt;/iframe&gt;";}}s:6:"status";s:1:"1";}'),
(29, 'Home Page', 'carousel', 'a:5:{s:4:"name";s:20:"Carousel - Home Page";s:9:"banner_id";s:1:"8";s:5:"width";s:3:"130";s:6:"height";s:3:"100";s:6:"status";s:1:"1";}'),
(28, 'Home Page', 'featured', 'a:6:{s:4:"name";s:20:"Featured - Home Page";s:7:"product";a:4:{i:0;s:2:"43";i:1;s:2:"40";i:2;s:2:"42";i:3;s:2:"30";}s:5:"limit";s:1:"4";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(27, 'Slideshow - Home Page', 'slideshow', 'a:5:{s:4:"name";s:21:"Slideshow - Home Page";s:9:"banner_id";s:1:"7";s:5:"width";s:3:"850";s:6:"height";s:3:"300";s:6:"status";s:1:"1";}'),
(48, 'New Book_unlimited', 'latest', 'a:5:{s:4:"name";s:18:"New Book_unlimited";s:5:"limit";s:1:"8";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:6:"status";s:1:"1";}'),
(41, ' MainConten', 'html', 'a:3:{s:4:"name";s:11:" MainConten";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:17:" Main Conten Link";s:11:"description";s:1128:"&lt;p&gt;&amp;nbsp;Main Conten Link Lorem ipsum&lt;/p&gt;&lt;p&gt;&amp;nbsp;Main Conten Link Lorem ipsum&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-style: italic;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://REGISTRASI USER&quot;&gt;REGISTRASI USER&lt;/a&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-style: italic;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;span style=&quot;color: rgb(30, 145, 207);&quot;&gt;&lt;br&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://UPLOAD BOOK&quot;&gt;UPLOAD BOOK&lt;/a&gt;&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-style: italic;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://CATALOG BOOK&quot;&gt;CATALOG BOOK&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:6:"status";s:1:"1";}'),
(42, 'DummyBestSellers', 'html', 'a:3:{s:4:"name";s:16:"DummyBestSellers";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:23:"Dummy Best Seller Books";s:11:"description";s:176:"&lt;p&gt;Dummy Best Seller Books&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://localhost/PUBAPP/src/opencart/image/catalog/GAMBAR PERCOBAAN LARGE.png&quot;&gt;&lt;br&gt;&lt;/p&gt;";}}s:6:"status";s:1:"1";}'),
(43, 'DummyNewBook', 'html', 'a:3:{s:4:"name";s:12:"DummyNewBook";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:15:"Dummy New Books";s:11:"description";s:187:"&lt;p&gt;Dummy New Books&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://localhost/PUBAPP/src/opencart/image/catalog/GAMBAR PERCOBAAN LARGE.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;";}}s:6:"status";s:1:"1";}'),
(44, 'FaceBookLikeBox', 'html', 'a:3:{s:4:"name";s:15:"FaceBookLikeBox";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:0:"";s:11:"description";s:567:"&lt;h2&gt;&amp;nbsp;&lt;br&gt;&lt;/h2&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h1&gt;Sosmed&lt;/h1&gt;&lt;iframe src=&quot;//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2FFacebookDevelopers&amp;amp;width&amp;amp;height=290&amp;amp;colorscheme=light&amp;amp;show_faces=true&amp;amp;header=true&amp;amp;stream=false&amp;amp;show_border=true&amp;amp;appId=389569284552046&quot; scrolling=&quot;no&quot; style=&quot;border:none; overflow:hidden; height:310px;&quot; allowtransparency=&quot;true&quot; frameborder=&quot;0&quot;&gt;&lt;/iframe&gt;";}}s:6:"status";s:1:"1";}'),
(33, 'Activity Gallery', 'html', 'a:3:{s:4:"name";s:16:"Activity Gallery";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:13:"Gallery Event";s:11:"description";s:152:"&lt;p&gt;&lt;a href=&quot;http://localhost/PUBAPP/src/opencart/index.php?route=common/gallery&quot;&gt;Show PUBAPP Gallery&lt;/a&gt;&lt;br&gt;&lt;/p&gt;";}}s:6:"status";s:1:"1";}'),
(34, 'Calendar Event', 'html', 'a:3:{s:4:"name";s:14:"Calendar Event";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:9:"Our Event";s:11:"description";s:368:"&lt;h4&gt;&lt;a href=&quot;http://localhost/PUBAPP/src/opencart/index.php?route=common/calendar&quot;&gt;View All Event &lt;/a&gt;&lt;iframe src=&quot;system/engine/calendar/index.html&quot; scrolling=&quot;no&quot; style=&quot;border:none; overflow:hidden; height:440px;&quot; allowtransparency=&quot;true&quot; frameborder=&quot;0&quot;&gt;&lt;/iframe&gt;&lt;/h4&gt;";}}s:6:"status";s:1:"1";}'),
(35, 'Acount Payment', 'html', 'a:3:{s:4:"name";s:14:"Acount Payment";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:14:"Acount Payment";s:11:"description";s:355:"&lt;p&gt;&lt;img style=&quot;width: 95.9167px; height: 40.4735px;&quot; src=&quot;http://localhost/PUBAPP2/src/opencart/image/catalog/bca.jpg&quot;&gt;Pahlevi Ridwan&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img style=&quot;width: 95px; height: 40.0867px;&quot; src=&quot;http://localhost/PUBAPP2/src/opencart/image/catalog/bni.jpg&quot;&gt;Pahlevi Ridwan&lt;/p&gt;";}}s:6:"status";s:1:"1";}'),
(36, 'Sosial Media', 'html', 'a:3:{s:4:"name";s:12:"Sosial Media";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:12:"Sosial Media";s:11:"description";s:189:"&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;FaceBook&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;Twitter&lt;br&gt;&lt;/p&gt;";}}s:6:"status";s:1:"1";}'),
(37, 'OurProgram', 'html', 'a:3:{s:4:"name";s:10:"OurProgram";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:10:"OurProgram";s:11:"description";s:364:"&lt;span style=&quot;font-style: italic;&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;List of our future programs&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br&gt;&lt;br&gt;&lt;p&gt;&lt;img src=&quot;http://localhost/PUBAPP/src/opencart/image/catalog/GAMBAR PERCOBAAN.png&quot;&gt;&lt;br&gt;&lt;/p&gt;";}}s:6:"status";s:1:"1";}'),
(38, 'HowToSelfPublish', 'html', 'a:3:{s:4:"name";s:16:"HowToSelfPublish";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:19:"How To Self Publish";s:11:"description";s:17864:"&lt;p&gt;&lt;span style=&quot;font-style: italic;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;How to publish your books in PUB-APP&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-style: italic;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/span&gt;&lt;img style=&quot;width: 739px; height: 461.875px;&quot; src=&quot;http://localhost/PUBAPP2/src/opencart/image/catalog/howtopublish.jpg&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;CARA KIRIM NASKAH:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;1. &lt;a href=&quot;http://www.nulisbuku.com/register&quot;&gt;REGISTER&lt;/a&gt;-&amp;gt;&amp;nbsp;&lt;strong&gt;daftar gratis di situs nulisbuku.com&lt;/strong&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;2. DOWNLOAD TEMPLATE&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;Ada dua template yang sudah disediakan:&lt;/p&gt;\r\n&lt;p&gt;(1) Template naskah (formatnya Microsoft Word, untuk memudahkan \r\nproses dan perhitungan biaya produksi buku, gunakan template ini). \r\nDOWNLOAD TEMPLATE NASKAH di sini~&amp;gt;&amp;nbsp;&lt;a tabindex=&quot;-1&quot; href=&quot;http://goo.gl/8aoua&quot;&gt;goo.gl/8aoua&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;(2) Template Cover (Formatnya JPEG, 300 dpi, Cover depan ukuran 13 x 19 cm).&amp;nbsp;DOWNLOAD TEMPLATE NASKAH di sini~&amp;gt;&amp;nbsp;&lt;a href=&quot;http://goo.gl/L2sFd&quot;&gt;http://goo.gl/L2sFd&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;3.&amp;nbsp;COPY-PASTE&lt;/strong&gt;&lt;/span&gt; naskahmu ke dalam template naskah. Rapikan halamannya supaya mendapatkan hasil cetak yang bagus dan mudah dibaca.&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;4. &lt;a href=&quot;http://www.nulisbuku.com/projects/upload&quot;&gt;UPLOAD NASKAH&lt;/a&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;- Setelah login di situs kami, silakan masuk ke halaman upload naskah, Klik: &lt;a title=&quot;Upload Naskah&quot; href=&quot;http://www.nulisbuku.com/projects/upload&quot;&gt;http://www.nulisbuku.com/projects/upload&lt;/a&gt; Kemudian, isi kolom-kolom yang tersedia:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;a href=&quot;http://nulisbuku.com/a%20href=&quot;&gt;&lt;img class=&quot;alignleft size-full wp-image-377&quot; title=&quot;Screen shot 2013-06-02 at 2.00.54 PM&quot; src=&quot;http://nulisbuku.com/blog/wp-content/uploads/2013/06/Screen-shot-2013-06-02-at-2.00.54-PM.png&quot; alt=&quot;&quot; height=&quot;280&quot; width=&quot;415&quot;&gt;&lt;/a&gt;&lt;/p&gt;\r\n&lt;div&gt;&lt;em&gt;Gambar: Alat Bantu Hitung Royalti - Otomatis&lt;/em&gt;&lt;/div&gt;\r\n&amp;nbsp;\r\n&lt;blockquote&gt;\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Keterangan gambar:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;*Title:&lt;/strong&gt; Judul Buku&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;*Author: &lt;/strong&gt;Nama penulis. (Boleh menggunakan nama pena. Bebas)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;*Category:&lt;/strong&gt; Pilih kategori bukumu. Misal: Novel, atau kumpulan cerpen, pendidikan atau politik, dll&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;*Size:&lt;/strong&gt; Pilih Ukuran buku, tersedia 3 \r\npilihan, yaitu Ukuran novel (13x19cm), ukuran Smaller Novel (11x17cm), \r\ndan ukuran Photobook (20x20cm)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;*Paper Type:&lt;/strong&gt; Jenis Kertas yang akan dicetak untuk bukumu.&amp;nbsp;&lt;/span&gt;&lt;/span&gt;Ada dua pilihan kertas:&lt;/p&gt;\r\n&lt;p&gt;&lt;em&gt;&lt;strong&gt;- Kertas HVS&lt;/strong&gt; (Kertas warna putih,&amp;nbsp;Karenanya \r\nkertas HVS sering digunakan untuk isi buku tulis, buku teks, kop surat \r\ndan produk cetakan lainnya.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;em&gt;&lt;strong&gt;- Kertas Novel:&lt;/strong&gt; Istilah yang kami gunakan untuk \r\n(book paper), kertas berwarna kecoklatan, lebih ringan daripada kertas \r\nHVS, dan banyak digunakan untuk buku-buku import atau buku-buku novel \r\nterbaru.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;*Page Color:&lt;/strong&gt; Jika naskahmu TIDAK terdapat halaman \r\nberwarna, silakan isi dengan angka 0 (nol).&amp;nbsp;Jika di dalam naskahmu \r\nterdapat halaman berwarna, baik berupa gambar, ilustrasi atau pun teks \r\nmaka isi jumlah total halaman berwarnanya. &lt;strong&gt;NOTE: Halaman berwarna ini harus berjumlah kelipatan 8.&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;*Page B/W:&lt;/strong&gt; kode B/W adalah singkatan dari Black \r\n&amp;amp; White (atau halaman hitam-putih), Silakan isi kolom ini dengan \r\nseluruh jumlah halaman teks-mu (Halaman bergambar atau foto hitam-putih \r\ntetap terhitung dalam kategori B/W). &lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Batas minimal halaman B/W ini adalah 100 halaman.&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;*Price: &lt;/strong&gt;Adalah kolom harga buku yang ditentukan oleh penulis. Minimal harga yang harus diisi adalah sebesar &lt;strong&gt;Rp 33.000&lt;/strong&gt;,- DAN/atau sama dengan harga produksi per buku (Base Price).&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;Setelah mengisi \r\nkolom-kolom di atas dengan benar, maka akan secara otomatis muncul \r\nsebuah mesin hitung kami secara otomatis yang menginformasikan \r\nperhitungan otomatis besarnya royalti yang diterima oleh penulis (atau \r\ndalam isitilah kami: Your Royalti)&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;Keterangan istilah dalam perhitungan royalti nulisbuku:&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;- Price: &lt;/em&gt;&lt;/strong&gt;&lt;em&gt;Harga Buku yang ditetapkan oleh penulis&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;- Base Price: &lt;/em&gt;&lt;/strong&gt;&lt;em&gt;Biaya Dasar, atau biaya produksi per buku.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;- Net Price: &lt;/em&gt;&lt;/strong&gt;&lt;em&gt;Selisih harga setelah Harga jual (Price) dikurangi Biaya produksi (Base Price)&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;- Nulisbuku Share: &lt;/em&gt;&lt;/strong&gt;&lt;em&gt;Adalah jumlah yang diterima oleh pihak nulisbuku.com dalam setiap penjualan per buku Anda.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;- Your Royalti: &lt;/em&gt;&lt;/strong&gt;&lt;em&gt;Adalah jumlah royalti yang diterima oleh penulis dalam setiap penjualan per buku Anda.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Setelah mengisi dengan baik semua kolom yang tersedia, proses selanjutnya adalah (WAJIB) upload file-file yang diperlukan:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&lt;a href=&quot;http://nulisbuku.com/a%20href=&quot;&gt;&lt;img class=&quot;alignleft size-full wp-image-380&quot; title=&quot;Screen shot 2013-06-02 at 2.19.51 PM&quot; src=&quot;http://nulisbuku.com/blog/wp-content/uploads/2013/06/Screen-shot-2013-06-02-at-2.19.51-PM-e1370157638744.png&quot; alt=&quot;&quot; height=&quot;269&quot; width=&quot;600&quot;&gt;&lt;/a&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;div&gt;&lt;em&gt;Gambar: Kolom Upload Naskah: Terdapat 4 kolom untuk 4 File yang berbeda.&lt;/em&gt;&lt;/div&gt;\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;Ada 4 (Empat) file yang harus di-upload bersamaan:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;(a)&amp;nbsp;&lt;strong&gt;Upload naskah (File Format PDF)&lt;/strong&gt; &amp;gt; Jangan lupa, sebelumnya isi kolom: Jenis kertas, jumlah halaman, dan harga jual bukumu&lt;/p&gt;\r\n&lt;p&gt;(b)&amp;nbsp;&lt;strong&gt;Sample Upload (File Format: PDF)&lt;/strong&gt;&amp;gt; ini adalah \r\nsemacam ''tester'' yg nantinya bisa di download GRATIS oleh calon pembeli,\r\n biasanya terdiri dari&amp;nbsp;5-10 halaman pertama naskah. Teaser berfungsi \r\nuntuk ''mengintip'' sedikit isi buku supaya calon pembeli semakin tertarik\r\n dengan buku yang Anda tulis sebelum membeli.&lt;/p&gt;\r\n&lt;p&gt;(c) &lt;strong&gt;Cover/Sampul File Upload &lt;/strong&gt;&amp;gt; Terdiri dari cover/sampul belakang &amp;amp; depan yang sudah menjadi satu file. (Seperti template cover), File format: JPEG&lt;/p&gt;\r\n&lt;p&gt;(d)&amp;nbsp;&lt;strong&gt;Cover Thumbnail Upload &amp;gt; PERHATIKAN! File ini&amp;nbsp;HANYA Cover/SAMPUL DEPAN SAJA''&lt;/strong&gt;, ukuran 13 x 19 cm (150 dpi), File format:&amp;nbsp;JPEG, GIF, PNG&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #ff0000;&quot;&gt;&lt;strong&gt;NOTE: (c) dan (d), Fungsi teknis kedua file ini: cover file &amp;amp; cover thumbnail berbeda.&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #ff0000;&quot;&gt;&lt;strong&gt;- File cover thumbnail \r\n(resolusi image rendah/ 100-150 dpi), akan digunakan untuk tampilan buku\r\n yang muncul di website nulisbuku.com.&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #ff0000;&quot;&gt;&lt;strong&gt;- File Cover/sampul file \r\n(Resolusi tinggi/300 dpi), akan digunakan pada saat pencetakan buku. \r\nKarena untuk hasil cetakan yang berkualitas membutuhkan file dengan \r\nresolusi image yang besar.&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;*Description:&lt;/strong&gt;&amp;nbsp;Kolom ini diisi dengan deskripsi \r\nbukumu, atau bisa semacam sinopsis singkat supaya calom pembeli \r\nmempunyai gambaran singkat mengenai isi buku Anda.&lt;/p&gt;\r\n&lt;p&gt;&lt;a href=&quot;http://nulisbuku.com/a%20href=&quot;&gt;&lt;img class=&quot;alignleft size-full wp-image-379&quot; title=&quot;Screen shot 2013-06-02 at 2.15.25 PM&quot; src=&quot;http://nulisbuku.com/blog/wp-content/uploads/2013/06/Screen-shot-2013-06-02-at-2.15.25-PM-e1370157381449.png&quot; alt=&quot;&quot; height=&quot;295&quot; width=&quot;500&quot;&gt;&lt;/a&gt;&lt;/p&gt;\r\n&lt;div&gt;&lt;em&gt;Gambar di atas: Kolom Deskripsi Buku&lt;/em&gt;&lt;/div&gt;\r\n&amp;nbsp;\r\n&lt;p&gt;&lt;strong&gt;Contoh:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;&lt;strong&gt;&lt;em&gt;Deskripsi buku LDR:&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;p1&quot;&gt;&lt;em&gt;Buku LDR menurut mereka&lt;/em&gt;&lt;/p&gt;\r\n&lt;p class=&quot;p2&quot;&gt;&lt;em&gt;Really love this book! Buku ini membuat hati tidak \r\nkaruan, mulai dari seneng, berdebar, sedih, sampai dengan senyum-senyum \r\nsendiri baca seluruh kisah-kisah LDR ini. Satu kata MENGHIBUR!&lt;/em&gt;&lt;/p&gt;\r\n&lt;p class=&quot;p2&quot;&gt;&lt;em&gt;Dan ini twit dari @LongDistance_R yang paling aku suka.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p class=&quot;p2&quot;&gt;&lt;em&gt;#LDR: Bahagia itu sederhana kita kan segera bersama dan kuhapus jarak ini dalam hidup kita&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;5. Lalu klik ''UPLOAD''!&lt;/span&gt;&amp;nbsp;&lt;strong&gt;Sebelumnya\r\n jangan lupa centang kolom: ''I agree with Terms &amp;amp; Conditions'', yang \r\nmenandakan bahwa Anda setuju dengan syarat &amp;amp; ketentuan yang berlaku \r\ndi nulisbuku.com&lt;/strong&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&lt;strong&gt;&lt;img title=&quot;Syarat dan Ketentuan Nulisbuku&quot; src=&quot;http://nulisbuku.com/blog/wp-content/uploads/2014/01/Screen-Shot-2014-01-08-at-3.56.12-PM.png&quot; alt=&quot;Syarat dan Ketentuan Nulisbuku&quot; height=&quot;475&quot; width=&quot;600&quot;&gt;&lt;br&gt;&lt;/strong&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Jangan lupa untuk mengisi kolom verifikasi:&lt;/p&gt;\r\n&lt;p&gt;&lt;img title=&quot;Verifikasi Upload Naskah Nulisbuku&quot; src=&quot;http://nulisbuku.com/blog/wp-content/uploads/2014/01/verifikasi.png&quot; alt=&quot;Verifikasi Upload Naskah Nulisbuku&quot; height=&quot;277&quot; width=&quot;600&quot;&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;&lt;strong&gt;6. TUNGGU&lt;/strong&gt;&lt;/span&gt;&amp;nbsp;beberapa saat (Lamanya proses\r\n ini bergantung kepada besar file yang diupload, kecepatan dan \r\nkestabilan internet yang digunakan).&amp;nbsp;&lt;span style=&quot;color: #ff0000;&quot;&gt;&lt;strong&gt;Setelah sukses upload naskahnya&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;&lt;strong&gt;(Akan muncul tulisan ini di layar:&quot;Upload Success:&amp;nbsp;&lt;span&gt;You have successfully uploaded your script. Check your email.&lt;/span&gt;&quot;)&lt;/strong&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #ff0000;&quot;&gt;&lt;strong&gt;&lt;strong&gt;&lt;img title=&quot;Sukses Upload Naskah Nulisbuku&quot; src=&quot;http://nulisbuku.com/blog/wp-content/uploads/2014/01/Screen-Shot-2014-01-08-at-4.11.54-PM.png&quot; alt=&quot;Sukses Upload Naskah Nulisbuku&quot; height=&quot;186&quot; width=&quot;600&quot;&gt;&lt;br&gt;&lt;/strong&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #ff0000;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color: #000000;&quot;&gt;&lt;strong&gt;&lt;strong&gt;Silakan cek inbox/spam email Anda,&amp;nbsp;&lt;/strong&gt;&lt;/strong&gt;PASTI Anda akan mendapatkan email notifikasi dari kami secara otomatis untuk melakukan pembelian cetakan pertama buku Anda &lt;/span&gt;(Jika\r\n Anda tidak menerima email tersebut bisa dipastikan upload Anda gagal, \r\ncoba sekali lagi atau email untuk meminta bantuan upload ke \r\nadmin@nulisbuku.com)&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #000000;&quot;&gt;&lt;strong&gt;Contoh email yang masuk di inbox email:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #ff0000;&quot;&gt;&lt;strong&gt;&lt;img title=&quot;Email Menerbitkan Buku di Nulisbuku.com&quot; src=&quot;http://nulisbuku.com/blog/wp-content/uploads/2014/01/Screen-Shot-2014-01-08-at-4.15.42-PM.png&quot; alt=&quot;Email Menerbitkan Buku di Nulisbuku.com&quot; height=&quot;242&quot; width=&quot;350&quot;&gt;&lt;br&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;Fungsi pembelian pertama dari penulisnya sendiri adalah&amp;nbsp;&lt;/span&gt;sebagai contoh ''&lt;strong&gt;&lt;em&gt;proofread&lt;/em&gt;&lt;/strong&gt;''\r\n sebelum Anda menjual ke publik. Contoh Proofread adalah sebuah contoh \r\ncetakan buku yang persis sama dengan buku yang akan kita jual untuk \r\numum.&lt;/p&gt;\r\n&lt;p&gt;Proses pemesanan proofread akan memakan waktu 10 hari kerja (Sabtu, Minggu dan hari libur tidak termasuk)&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;7. PROOFREAD:&lt;/strong&gt;&lt;/span&gt;&amp;nbsp;Jika\r\n proofread/ contoh cetakan pertama buku Anda sudah diterima, dan \r\nhasilnya sudah sesuai dengan keinginan Anda (Tidak ada revisi),&amp;nbsp;&lt;span&gt;&lt;strong&gt;maka\r\n yang harus dilakukan adalah mengirimkan email pemberitahuan kepada \r\nadmin (admin@nulisbuku.com), email ini juga sebagai bukti persetujuan \r\nbahwa naskah buku Anda sudah bisa ''Go LIVE''/ tayang di toko buku online \r\nkami: nulisbuku.com dan dapat dibeli secara umum.&amp;nbsp;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;8. GO LIVE:&amp;nbsp;&lt;/strong&gt;&lt;/span&gt;Kemudian\r\n kami akan memoderasi dan mengubah status buku Anda menjadi ''LIVE'' \r\nsetelah Anda melakukan ''proofread'' &amp;amp; memberikan persetujuan. Anda \r\nakan mendapatkan email kembali dari admin nulisbuku.com mengenai \r\npemberitahuan ''Go LIVE'' buku Anda ini.&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;9. SELAMAT!&lt;/strong&gt;&lt;/span&gt;&amp;nbsp;Sekarang bukumu sudah ter display di toko buku online nulisbuku.com!&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong&gt;10. SAATNYA PROMO BUKU!&lt;/strong&gt;&lt;/span&gt;&amp;nbsp;Setelah itu PROMOSIKAN bukumu ke Facebook + Twitter + Blog-mu! (&lt;strong&gt;Ingat: Ini adalah Self-Publishing!&amp;nbsp;&lt;/strong&gt;Artinya\r\n penulis juga berfungsi sebagai penerbit, yang bertugas untuk \r\nmempromosikan bukunya sendiri supaya diketahui banyak orang dan calon \r\npembeli)&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;&lt;strong&gt;Contoh cara mempromosikan buku di Facebook dan Twitter adalah:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;- Adakan kuis berhadiah buku karanganmu tersebut. (Kami akan \r\nmengirimkan bukumu langsung kepada pemenangnya, tentu setelah mendapat \r\nkonfirmasi via email darimu)&lt;/p&gt;\r\n&lt;p&gt;- Ajak rekan/temanmu untuk memberikan review bukumu di nulisbuku.com,\r\n supaya banyak orang tertarik untuk membeli dan membaca bukumu.&lt;/p&gt;\r\n&lt;p&gt;- BUAT VIDEO di YOUTUBE! Ceritakan dengan gaya yang menarik melalui \r\nvideo sederhana, kemudia upload di youtube! Cara ini gratis namun \r\nmemberikan kesan yang menarik jika dilakukan dengan cara yang baik. \r\nSilakan lihat sudah banyak contoh-contoh video promo buku yang sudah \r\ndiupload di youtube! \r\nContoh:&amp;nbsp;http://www.youtube.com/results?search_query=trailer+nulisbuku&amp;amp;sm=3&lt;/p&gt;\r\n&lt;p&gt;- Dan masih banyak lagi jenis promosi yang bisa kamu lakukan di Facebook + Twitter + Blogmu! Ayo tunjukkan kreativitasmu!&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;&lt;strong&gt;**CATATAN PENTING**&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;Sebaiknya naskah (Termasuk layout isi buku + desain cover depan + Cover belakang) sudah siap cetak saat upload di&amp;nbsp;&lt;a href=&quot;http://nulisbuku.com/&quot;&gt;nulisbuku&lt;/a&gt;.com&lt;/p&gt;";}}s:6:"status";s:1:"1";}'),
(39, 'HowToShoping', 'html', 'a:3:{s:4:"name";s:12:"HowToShoping";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:11:"How To Shop";s:11:"description";s:3297:"&lt;p&gt;&lt;span style=&quot;font-style: italic;&quot;&gt;How to buy some book in PUB-APP&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-style: italic;&quot;&gt;&lt;img style=&quot;width: 738.5px; height: 461.563px;&quot; src=&quot;http://localhost/PUBAPP2/src/opencart/image/catalog/howtoshop.jpg&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;1.&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://localhost/PUBAPP/src/opencart/index.php?route=account/register&quot;&gt;Daftar Jadi Anggota&lt;/a&gt;&lt;span style=&quot;font-size: medium;&quot;&gt; PUBAPP.com (bagi yang belum daftar saja)&lt;/span&gt;&lt;/h3&gt;\r\n&lt;h3&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;2. &lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://localhost/PUBAPP/src/opencart/index.php?route=account/login&quot;&gt;Login Anggota&lt;/a&gt;&lt;span style=&quot;font-size: medium;&quot;&gt; di kiri atas homepage&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;3. Cari Buku berdasarkan judul atau pengarang di kolom search maupun lewat kategori genre buku&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;4. Untuk membeli, klik tombol ADD TO CART&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;5. Di Halaman Shopping Cart, Anda \r\ndapat mengedit jumlah buku yang hendak dibeli (Setelah mengedit, klik \r\n&quot;UPDATE&quot;) atau mengeluarkan buku dari shopping &amp;nbsp;klik TAKE OUT.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;6. Untuk lanjut berbelanja, klik tombol CONTINUE SHOPPING&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;7. Klik tombol CHECKOUT jika anda sudah selesai berbelanja&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;8. Isi keterangan di kolom notes: \r\nNama penerima, Alamat lengkap tujuan (Beserta kodepos), No HP penerima. \r\nKlik DEALS jika sudah selesai&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;9. Selamat! Anda baru saja memesan \r\nbuku dari nulisbuku.com :) Email konfirmasi dari kami segera mampir di \r\nemail inbox Anda. Cek email Anda!&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: medium; background-color: #ffff00;&quot;&gt;10. \r\nSetelah melakukan pembayaran, mohon mengirimkan email ke \r\nadmin@nulisbuku.com untuk konfirmasi dan sertakan bukti pembayaran \r\nberupa foto/scan struk pembayarannya yang di-&lt;em&gt;attach&lt;/em&gt; melalui email konfirmasi tersebut.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: medium; background-color: #ffff00;&quot;&gt;Dengan mengirimkan email tersebut kami akan cek pembayaran Anda dan sebagai bukti untuk kami melakukan proses pemesanan&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: small;&quot;&gt;Selamat berbelanja buku! :)&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;em&gt;&lt;span style=&quot;font-size: small;&quot;&gt;Note: Proses produksi dan \r\npengiriman pesanan membutuhkan waktu kurang-lebih 10 hari kerja (Sabtu, \r\nMinggu dan hari besar tidak termasuk)&lt;/span&gt;&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;";}}s:6:"status";s:1:"1";}'),
(40, 'HowToBeEditor', 'html', 'a:3:{s:4:"name";s:13:"HowToBeEditor";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:13:"HowToBeEditor";s:11:"description";s:230:"&lt;p&gt;How to be an Editor in PUB-APP&lt;/p&gt;&lt;p&gt;&lt;img style=&quot;width: 738.917px; height: 461.823px;&quot; src=&quot;http://localhost/PUBAPP2/src/opencart/image/catalog/1430534281552.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;";}}s:6:"status";s:1:"1";}'),
(46, 'Most Reviewed limited', 'mostreviewed', 'a:6:{s:4:"name";s:21:"Most Reviewed limited";s:5:"limit";s:1:"4";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:12:"display_mode";s:1:"1";s:6:"status";s:1:"1";}'),
(47, 'Top Rated module limited', 'toprated', 'a:6:{s:4:"name";s:24:"Top Rated module limited";s:5:"limit";s:1:"4";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:12:"display_mode";s:1:"1";s:6:"status";s:1:"1";}'),
(50, 'Services', 'html', 'a:3:{s:4:"name";s:8:"Services";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:8:"Services";s:11:"description";s:166:"&lt;p&gt;Service di PUB-APP 2015&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://localhost/PUBAPP1/src/opencart/image/catalog/megamenu-03.png&quot;&gt;&lt;br&gt;&lt;/p&gt;";}}s:6:"status";s:1:"1";}'),
(51, 'newbook', 'latest', 'a:5:{s:4:"name";s:7:"newbook";s:5:"limit";s:3:"200";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:6:"status";s:1:"1";}'),
(56, 'Upload Draf Buku Anda', 'upload_book', 'a:6:{s:4:"name";s:21:"Upload Draf Buku Anda";s:5:"limit";s:1:"5";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:12:"display_mode";s:1:"1";s:6:"status";s:1:"1";}'),
(53, 'BestSeller limited', 'bestseller', 'a:5:{s:4:"name";s:18:"BestSeller limited";s:5:"limit";s:1:"4";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:6:"status";s:1:"1";}'),
(57, 'FAQ', 'html', 'a:3:{s:4:"name";s:3:"FAQ";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:3:"FAQ";s:11:"description";s:30:"&lt;p&gt;This is FAQ&lt;/p&gt;";}}s:6:"status";s:1:"1";}'),
(64, 'listeditbook', 'listeditbook', 'a:5:{s:4:"name";s:12:"listeditbook";s:5:"limit";s:3:"100";s:5:"width";s:3:"100";s:6:"height";s:3:"100";s:6:"status";s:1:"1";}'),
(65, 'Gallery Event PUBAPP ', 'gallery_event', 'a:6:{s:4:"name";s:21:"Gallery Event PUBAPP ";s:5:"limit";s:1:"5";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:12:"display_mode";s:1:"0";s:6:"status";s:1:"1";}'),
(78, 'Editor Layout', 'editor_layout', 'a:2:{s:4:"name";s:13:"Editor Layout";s:6:"status";s:1:"1";}'),
(67, 'Testimony Layout main', 'testimony_layout', 'a:5:{s:4:"name";s:21:"Testimony Layout main";s:5:"limit";s:1:"5";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(68, 'Abput Editor view', 'abouteditor', 'a:5:{s:4:"name";s:17:"Abput Editor view";s:5:"limit";s:1:"5";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(71, 'Calendar Module View', 'calendar_module_view', 'a:6:{s:4:"name";s:20:"Calendar Module View";s:5:"limit";s:1:"5";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:12:"display_mode";s:1:"0";s:6:"status";s:1:"1";}'),
(72, 'Gallery Event simple', 'gallery_event_simple', 'a:6:{s:4:"name";s:20:"Gallery Event simple";s:5:"limit";s:1:"5";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:12:"display_mode";s:1:"0";s:6:"status";s:1:"1";}'),
(73, 'Comunity Layout View', 'comunity_layout', 'a:5:{s:4:"name";s:20:"Comunity Layout View";s:5:"limit";s:1:"5";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(75, 'Testimony and Editor', 'testimoeditor', 'a:5:{s:4:"name";s:20:"Testimony and Editor";s:5:"limit";s:1:"5";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(76, 'Top Rated module unlimited', 'toprated', 'a:6:{s:4:"name";s:26:"Top Rated module unlimited";s:5:"limit";s:3:"100";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:12:"display_mode";s:1:"1";s:6:"status";s:1:"1";}'),
(77, 'Most Reviewed unlimited', 'mostreviewed', 'a:6:{s:4:"name";s:23:"Most Reviewed unlimited";s:5:"limit";s:3:"100";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:12:"display_mode";s:1:"1";s:6:"status";s:1:"1";}'),
(80, 'listdesignbook', 'listdesignbook', 'a:5:{s:4:"name";s:14:"listdesignbook";s:5:"limit";s:3:"100";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE IF NOT EXISTS `oc_option` (
`option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_option_value` (
`option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE IF NOT EXISTS `oc_order` (
`order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '1',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(4, 5, 'INV-2013-00', 0, 'Publisher Book Apps', 'http://localhost/PUBAPP/src/opencart/', 0, 1, 'sadasd', 'gifary', 'muhammadgifary@gmail.com', '083821391320', '', 'a:0:{}', 'sadasd', 'gifary', '', 'Jl bbk tarogong 627A/196B', '', 'Bandung', '40233', 'Indonesia', 100, 'Jawa Barat', 1515, '', 'a:0:{}', 'Transfer via Bank Mandiri<br/><img src=''catalog/view/theme/default/image/mandiri_logo.jpg''/>', 'bank_mandiri', 'sadasd', 'gifary', '', 'Jl bbk tarogong 627A/196B', '', 'Bandung', '40233', 'Indonesia', 100, 'Jawa Barat', 1515, '', 'a:0:{}', 'JNE (Reguler) - Jawa Barat  (Weight: 0.25)', 'jne_reguler.jne_reguler_5', '', '6025.0000', 5, 0, '0.0000', 0, '', 1, 4, 'IDR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2015-04-05 13:55:53', '2015-04-30 11:02:32'),
(5, 0, 'INV-2013-00', 0, 'Publisher Book Apps', 'http://localhost/PUBAPP/src/opencart/', 8, 1, 'muhammad', 'gifary', 'muhammadgifary@gmail.com', '083821391320', '', 'b:0;', 'muhammad', 'gifary', '', 'Jl bbk tarogong 627A/196B', '', 'Bandung', '40233', 'Indonesia', 100, 'Jawa Barat', 1515, '', 'b:0;', 'Transfer via Bank Mandiri<br/><img src=''catalog/view/theme/default/image/mandiri_logo.jpg''/>', 'bank_mandiri', 'muhammad', 'gifary', '', 'Jl bbk tarogong 627A/196B', '', 'Bandung', '40233', 'Indonesia', 100, 'Jawa Barat', 1515, '', 'b:0;', 'JNE (Reguler) - Jawa Barat  (Weight: 0.25)', 'jne_reguler.jne_reguler_5', '', '756000.0000', 0, 0, '0.0000', 0, '', 1, 4, 'IDR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2015-04-09 07:33:13', '2015-04-09 07:33:13'),
(6, 6, 'INV-2013-00', 0, 'Publisher Book Apps', 'http://localhost/PUBAPP/src/opencart/', 8, 1, 'muhammad', 'gifary', 'muhammadgifary@gmail.com', '083821391320', '', 'b:0;', 'muhammad', 'gifary', '', 'Jl bbk tarogong 627A/196B', '', 'Bandung', '40233', 'Indonesia', 100, 'Jawa Barat', 1515, '', 'b:0;', 'Transfer via Bank Mandiri<br/><img src=''catalog/view/theme/default/image/mandiri_logo.jpg''/>', 'bank_mandiri', 'muhammad', 'gifary', '', 'Jl bbk tarogong 627A/196B', '', 'Bandung', '40233', 'Indonesia', 100, 'Jawa Barat', 1515, '', 'b:0;', 'JNE (Reguler) - Jawa Barat  (Weight: 0.25)', 'jne_reguler.jne_reguler_5', '', '756000.0000', 5, 0, '0.0000', 0, '', 1, 4, 'IDR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2015-04-09 10:02:22', '2015-04-30 11:03:16'),
(7, 9, 'INV-2013-00', 0, 'Publisher Book Apps', 'http://localhost/PUBAPP/src/opencart/', 11, 1, 'rijal', 'ghod', 'rijalul@gmail.com', '083821391320', '', 'b:0;', 'rijal', 'ghod', '', 'Jl bbk tarogong 627A/196B', '', 'Bandung', '40233', 'Indonesia', 100, 'Jawa Barat', 1515, '', 'b:0;', 'Transfer via Bank Mandiri<br/><img src=''catalog/view/theme/default/image/mandiri_logo.jpg''/>', 'bank_mandiri', 'rijal', 'ghod', '', 'Jl bbk tarogong 627A/196B', '', 'Bandung', '40233', 'Indonesia', 100, 'Jawa Barat', 1515, '', 'b:0;', 'JNE (Reguler) - Jawa Barat  (Weight: 0.25)', 'jne_reguler.jne_reguler_5', '', '6067.0000', 5, 0, '0.0000', 0, '', 1, 4, 'IDR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2015-04-09 12:23:53', '2015-04-30 11:04:46'),
(8, 8, 'INV-2013-00', 0, 'Publisher Book Apps', 'http://localhost/PUBAPP2/src/opencart/', 10, 1, 'Pahlevi Ridwan', 'Erik estrada', 'pahlevi.ridwan.tifd13@polban.ac.id', '085624257705', '', 'b:0;', 'Pahlevi Ridwan', 'Erik estrada', '', 'Jl. Cibogo Atas No. 74 kel. sukawarna kec. sukajadi', '', 'Bandung', '40164', 'Indonesia', 100, 'Jawa Barat', 1515, '', 'b:0;', 'Transfer via Bank bca<br/><img src=''catalog/view/theme/default/image/bca_logo.png''/>', 'bank_bca', 'Pahlevi Ridwan', 'Erik estrada', '', 'Jl. Cibogo Atas No. 74 kel. sukawarna kec. sukajadi', '', 'Bandung', '40164', 'Indonesia', 100, 'Jawa Barat', 1515, '', 'b:0;', 'JNE (Reguler) - Jawa Barat  (Weight: 0.50)', 'jne_reguler.jne_reguler_5', '', '756025.0000', 5, 0, '0.0000', 0, '', 1, 4, 'IDR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0', 'id,en-US;q=0.7,en;q=0.3', '2015-04-25 09:08:23', '2015-04-30 11:03:56'),
(9, 0, 'INV-2013-00', 0, 'Publisher Book Apps', 'http://localhost/PUBAPP2/src/opencart/', 10, 1, 'Pahlevi Ridwan', 'Erik estrada', 'pahlevi.ridwan.tifd13@polban.ac.id', '085624257705', '', 'b:0;', 'Pahlevi Ridwan', 'Erik estrada', '', 'Jl. Cibogo Atas No. 74 kel. sukawarna kec. sukajadi', '', 'Bandung', '40164', 'Indonesia', 100, 'Jawa Barat', 1515, '', 'b:0;', 'Transfer via Bank bca<br/><img src=''catalog/view/theme/default/image/bca_logo.png''/>', 'bank_bca', 'Pahlevi Ridwan', 'Erik estrada', '', 'Jl. Cibogo Atas No. 74 kel. sukawarna kec. sukajadi', '', 'Bandung', '40164', 'Indonesia', 100, 'Jawa Barat', 1515, '', 'b:0;', 'JNE (Reguler) - Jawa Barat  (Weight: 0.25)', 'jne_reguler.jne_reguler_5', '', '6050.0000', 0, 0, '0.0000', 0, '', 1, 4, 'IDR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0', 'id,en-US;q=0.7,en;q=0.3', '2015-04-25 14:35:10', '2015-04-25 14:35:10'),
(10, 0, 'INV-2013-00', 0, 'Publisher Book Apps', 'http://localhost/PUBAPP2/src/opencart/', 10, 1, 'Pahlevi Ridwan', 'Erik estrada', 'pahlevi.ridwan.tifd13@polban.ac.id', '085624257705', '', 'b:0;', 'Pahlevi Ridwan', 'Erik estrada', '', 'Jl. Cibogo Atas No. 74 kel. sukawarna kec. sukajadi', '', 'Bandung', '40164', 'Indonesia', 100, 'Jawa Barat', 1515, '', 'b:0;', 'Transfer via Bank bca<br/><img src=''catalog/view/theme/default/image/bca_logo.png''/>', 'bank_bca', 'Pahlevi Ridwan', 'Erik estrada', '', 'Jl. Cibogo Atas No. 74 kel. sukawarna kec. sukajadi', '', 'Bandung', '40164', 'Indonesia', 100, 'Jawa Barat', 1515, '', 'b:0;', 'JNE (Reguler) - Jawa Barat  (Weight: 0.25)', 'jne_reguler.jne_reguler_5', '', '6050.0000', 0, 0, '0.0000', 0, '', 1, 4, 'IDR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0', 'id,en-US;q=0.7,en;q=0.3', '2015-04-25 14:36:34', '2015-04-25 14:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_order_custom_field` (
`order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_fraud`
--

CREATE TABLE IF NOT EXISTS `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE IF NOT EXISTS `oc_order_history` (
`order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(9, 4, 15, 1, 'Please transfer to the Mandiri Bank Account Number\n\nNo rek : 0882929\r\nAN : muhammad gifary\n\nOrder will be sent after we receive payment from you.', '2015-04-05 13:55:56'),
(10, 6, 15, 1, 'Please transfer to the Mandiri Bank Account Number\n\nNo rek : 0882929\r\nAN : muhammad gifary\n\nOrder will be sent after we receive payment from you.', '2015-04-09 10:02:45'),
(11, 7, 15, 1, 'Please transfer to the Mandiri Bank Account Number\n\nNo rek : 0882929\r\nAN : muhammad gifary\n\nOrder will be sent after we receive payment from you.', '2015-04-09 12:23:56'),
(12, 8, 15, 1, 'Please transfer to the bca Bank Account Number\n\nNo rek :08382920\r\nAN : muhammad gifary\n\nOrder will be sent after we receive payment from you.', '2015-04-25 09:08:32'),
(13, 4, 5, 1, 'selamat barang anda sudah tiba', '2015-04-30 11:02:32'),
(14, 6, 5, 1, 'selamat barang anda sudah tiba', '2015-04-30 11:03:16'),
(15, 7, 7, 1, 'karena batas waktu habis. barnag anda tidak kami kirimkan', '2015-04-30 11:03:43'),
(16, 8, 5, 1, 'selamat', '2015-04-30 11:03:56'),
(17, 7, 5, 1, '', '2015-04-30 11:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE IF NOT EXISTS `oc_order_option` (
`order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE IF NOT EXISTS `oc_order_product` (
`order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(5, 4, 126, 'Kecantikan Kulit Wanita', 'book', 1, '25.0000', '25.0000', '0.0000', 0),
(6, 5, 128, 'Expert Programing', 'book', 1, '750000.0000', '750000.0000', '0.0000', 0),
(7, 6, 128, 'Expert Programing', 'book', 1, '750000.0000', '750000.0000', '0.0000', 0),
(8, 7, 120, 'Kado Pernikahan', 'book', 1, '67.0000', '67.0000', '0.0000', 0),
(9, 8, 128, 'Expert Programing', 'book', 1, '750000.0000', '750000.0000', '0.0000', 0),
(10, 8, 126, 'Kecantikan Kulit Wanita', 'book', 1, '25.0000', '25.0000', '0.0000', 0),
(11, 9, 115, 'Bisnis dan Budi daya Lele', 'book', 1, '50.0000', '50.0000', '0.0000', 0),
(12, 10, 115, 'Bisnis dan Budi daya Lele', 'book', 1, '50.0000', '50.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
`order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
`order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE IF NOT EXISTS `oc_order_status` (
`order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE IF NOT EXISTS `oc_order_total` (
`order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(11, 4, 'sub_total', 'Sub-Total', '25.0000', 1),
(12, 4, 'shipping', 'JNE (Reguler) - Jawa Barat  (Weight: 0.25)', '6000.0000', 3),
(13, 4, 'total', 'Total', '6025.0000', 9),
(14, 5, 'sub_total', 'Sub-Total', '750000.0000', 1),
(15, 5, 'shipping', 'JNE (Reguler) - Jawa Barat  (Weight: 0.25)', '6000.0000', 3),
(16, 5, 'total', 'Total', '756000.0000', 9),
(17, 6, 'sub_total', 'Sub-Total', '750000.0000', 1),
(18, 6, 'shipping', 'JNE (Reguler) - Jawa Barat  (Weight: 0.25)', '6000.0000', 3),
(19, 6, 'total', 'Total', '756000.0000', 9),
(20, 7, 'sub_total', 'Sub-Total', '67.0000', 1),
(21, 7, 'shipping', 'JNE (Reguler) - Jawa Barat  (Weight: 0.25)', '6000.0000', 3),
(22, 7, 'total', 'Total', '6067.0000', 9),
(23, 8, 'sub_total', 'Sub-Total', '750025.0000', 1),
(24, 8, 'shipping', 'JNE (Reguler) - Jawa Barat  (Weight: 0.50)', '6000.0000', 3),
(25, 8, 'total', 'Total', '756025.0000', 9),
(26, 9, 'sub_total', 'Sub-Total', '50.0000', 1),
(27, 9, 'shipping', 'JNE (Reguler) - Jawa Barat  (Weight: 0.25)', '6000.0000', 3),
(28, 9, 'total', 'Total', '6050.0000', 9),
(29, 10, 'sub_total', 'Sub-Total', '50.0000', 1),
(30, 10, 'shipping', 'JNE (Reguler) - Jawa Barat  (Weight: 0.25)', '6000.0000', 3),
(31, 10, 'total', 'Total', '6050.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
`order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_paper_size`
--

CREATE TABLE IF NOT EXISTS `oc_paper_size` (
`paper_size_id` int(2) NOT NULL,
  `size` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_paper_size`
--

INSERT INTO `oc_paper_size` (`paper_size_id`, `size`) VALUES
(1, 'Novel 13x19cm'),
(2, 'Novel 11x17cm'),
(3, 'Photobook 20x20cm');

-- --------------------------------------------------------

--
-- Table structure for table `oc_paper_type`
--

CREATE TABLE IF NOT EXISTS `oc_paper_type` (
`paper_type_id` int(2) NOT NULL,
  `type` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_paper_type`
--

INSERT INTO `oc_paper_type` (`paper_type_id`, `type`) VALUES
(1, 'Kertas HVS'),
(2, 'Kertas Novel');

-- --------------------------------------------------------

--
-- Table structure for table `oc_payment`
--

CREATE TABLE IF NOT EXISTS `oc_payment` (
`payment_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `invoice` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_payment`
--

INSERT INTO `oc_payment` (`payment_id`, `customer_id`, `invoice`, `image`, `date`, `status`) VALUES
(3, 10, '10XAD001', 'image/payment/339257f1180a45550f9ba1c8ecd581a4_pembalian_domain.png', '2015-06-01', 'Sukses');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE IF NOT EXISTS `oc_product` (
`product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `editor_id` int(11) NOT NULL DEFAULT '0',
  `designer_id` int(11) NOT NULL DEFAULT '0',
  `model` varchar(64) DEFAULT 'buku',
  `sku` varchar(64) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `ean` varchar(14) DEFAULT NULL,
  `jan` varchar(13) DEFAULT NULL,
  `isbn` varchar(17) DEFAULT NULL,
  `mpn` varchar(64) DEFAULT NULL,
  `location` varchar(128) DEFAULT NULL,
  `quantity` int(4) NOT NULL DEFAULT '1',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `design_cover` varchar(255) DEFAULT NULL,
  `status_request_design` tinyint(1) DEFAULT '0',
  `desc_design` text,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `status1` int(11) NOT NULL DEFAULT '0',
  `status2` int(11) NOT NULL DEFAULT '0',
  `status3` int(11) NOT NULL DEFAULT '0',
  `royalty` float NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `customer_id`, `editor_id`, `designer_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `design_cover`, `status_request_design`, `desc_design`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `status1`, `status2`, `status3`, `royalty`, `viewed`, `date_added`, `date_modified`) VALUES
(105, 8, 6, 0, 'book', '', '', '', '', '', '', '', 1, 0, 'cover/390410150401_handPalm.png', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '456222.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 0, 0, 1, 0, 0, 0, 1, 0, 0, 2, '2015-04-01 15:54:39', '0000-00-00 00:00:00'),
(113, 10, 6, 0, 'book', '', '', '', '', '', '', '', 999, 6, 'cover/110404150401_eripahle.jpg', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '100.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, 1, 1, 0, 6, '2015-04-01 21:41:11', '2015-04-01 22:55:31'),
(114, 10, 6, 0, 'book', '', '', '', '', '', '', '', 999, 6, 'cover/590404150401_programmer for dumies.jpg', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '100.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, '2015-04-01 21:47:59', '2015-04-01 22:31:23'),
(115, 10, 6, 0, 'book', '', '', '', '', '', '', '', 999, 6, 'cover/470404150401_budidaya_lele.jpg', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '50.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, 1, 1, 0, 3, '2015-04-01 21:50:47', '2015-04-01 22:29:28'),
(116, 10, 6, 0, 'book', '', '', '', '', '', '', '', 999, 6, 'cover/120404150401_sejarah_dunia_garet_wels.jpg', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '90.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, '2015-04-01 21:59:12', '2015-04-01 22:31:55'),
(117, 10, 6, 0, 'book', '', '', '', '', '', '', '', 999, 6, 'cover/050405150401_astronomis.jpg', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '85.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, '2015-04-01 22:01:05', '2015-04-01 22:29:07'),
(118, 10, 6, 0, 'book', '', '', '', '', '', '', '', 999, 6, 'cover/070405150401_Buku-The-7-Islamic-Daily-Habits-BEST-SELLER.jpg', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '30.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, 1, 1, 0, 19, '2015-04-01 22:03:07', '2015-04-03 13:07:23'),
(119, 8, 6, 0, 'book', '', '', '', '', '', '', '', 999, 6, 'cover/490405150401_Aisyah.jpg', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '40.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, 0, 1, 0, 3, '2015-04-01 22:05:49', '2015-04-03 13:12:14'),
(120, 10, 6, 0, 'book', '', '', '', '', '', '', '', 999, 6, 'cover/190405150401_Buku-Kado-Pernikahan-Best-Seller.jpg', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '67.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, '2015-04-01 22:08:19', '2015-04-01 22:30:20'),
(121, 10, 6, 0, 'book', '', '', '', '', '', '', '', 999, 6, 'cover/550405150401_hacker.jpg', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '80.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, 1, 1, 0, 2, '2015-04-01 22:10:55', '2015-04-01 22:29:45'),
(122, 10, 6, 0, 'book', '', '', '', '', '', '', '', 999, 6, 'cover/390405150401_listrik.jpg', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '20.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, '2015-04-01 22:12:39', '2015-04-01 22:31:42'),
(123, 10, 6, 0, 'book', '', '', '', '', '', '', '', 999, 6, 'cover/180405150401_kereta.jpg', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '20.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, '2015-04-01 22:15:18', '2015-04-01 22:30:54'),
(124, 10, 6, 0, 'book', '', '', '', '', '', '', '', 999, 6, 'cover/590405150401_UML.jpg', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '200.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, 1, 1, 0, 2, '2015-04-01 22:16:59', '2015-04-01 22:28:51'),
(125, 10, 6, 0, 'book', '', '', '', '', '', '', '', 999, 6, 'cover/510405150401_organisasi.jpg', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '49.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, '2015-04-01 22:18:51', '2015-04-01 22:31:08'),
(126, 10, 6, 0, 'book', '', '', '', '', '', '', '', 999, 6, 'cover/100405150401_tata_kecantikan kulit.jpg', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '25.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, 1, 1, 0, 6, '2015-04-01 22:20:10', '2015-04-01 22:30:38'),
(128, 8, 6, 0, 'book', '', '', '', '', '', '', '', 999, 6, 'catalog/10929072_10205105537615830_1420504451340617705_n.jpg', 'cover/1137a0b86b0c14fc1dc4a4acff5f2f64_expert android.PNG', NULL, NULL, 0, 1, '750000.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, 1, 1, 0, 20, '2015-04-03 13:05:23', '2015-05-04 20:21:08'),
(129, 10, 6, 0, 'book', '', '', '', '', '', '', '', 999, 0, 'cover/26182903a7826de7f0d8f0f0801c90cb_10410902_565020423632663_2048904324717037659_n.jpg', 'cover/e0b302e7f4101c2e105117a446603cfe_10410902_565020423632663_2048904324717037659_n.jpg', NULL, NULL, 0, 1, '70000.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, '2015-04-25 14:45:42', '0000-00-00 00:00:00'),
(130, 1, 10, 0, 'book', '', '', '', '', '', '', '', 999, 0, NULL, NULL, 1, 'asdasdasd', 0, 1, '40000.0000', 0, 0, '0000-00-00', '0.25000000', 1, '0.00000000', '0.00000000', '0.00000000', 0, 0, 1, 0, 0, 0, 0, 0, 0, 4, '2015-05-05 16:26:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `paper_size_id` int(2) NOT NULL,
  `paper_type_id` int(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `author` varchar(64) NOT NULL,
  `color_page` int(11) NOT NULL,
  `bw_page` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `paper_size_id`, `paper_type_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`, `author`, `color_page`, `bw_page`) VALUES
(0, 1, 1, 1, 'ini ter percobaan', 'asdas ', '', 'book', '', '', 'I Creative Solutions', 20, 43),
(113, 1, 1, 1, 'Jurnal Of The Greates Of Eripahles', 'Biografi The Greate of Eripahles. Arti dibalik sebuah cerita, dokumentasi dari suatu prespektif, dan representasi dari sebuah apresiasi.', '', 'book', '', '', 'I Creative Solutions', 0, 0),
(114, 1, 1, 1, 'Programming For Dummies', 'Buku saku untuk para programmer muda yang masih berjuang di lembah perspektif dan asumsi, cocok bagi mereka yang bermain diranah &quot;How to Do By example&quot;, buku yang menjari trend di masanya, dummies merupakan bundle buku yang menarik untuk di amati', '', 'book', '', '', 'I Creative Solutions', 0, 0),
(115, 1, 1, 1, 'Bisnis dan Budi daya Lele', 'Buku saku bagi para wirausahawan muda yang ingin bergelut dibidang peternakan dalam hal ini LELE, komoditi yang tidak ada matinya, mudah dalam pengembangbiakan dan laris dipasaran. yuuu kita budidayakan dan lestarikan, serta tak lupa ambil keuntungan ', '', 'book', '', '', 'I Creative Solutions', 0, 0),
(116, 1, 1, 1, 'Sejarah Singkat Dunia', 'Sejarah Dunia yang tak hingga dan masih misteri kini Gareth Walse coba rangkum dalam buku nya &quot;A Short History Of the World&quot; , sebuah hikayah dan suatu peradaban', '', 'book', '', '', 'I Creative Solutions', 0, 0),
(117, 1, 1, 1, 'Astronimy', 'Buku Pegangan SMA astronomy Standar Kurikulum 2013 - Pembelajaran Bersama - paket IPA 2013', '', 'book', '', '', 'I Creative Solutions', 0, 0),
(120, 1, 1, 1, 'Kado Pernikahan', 'Pernikahan merupakan hal yang sakral, indah, dan penuh syukur nikmat, buku karya saiful m. s. i. coba angkat hal ini dari perspektif lain. mari kita telisik betapa penting nya pernikahan.', '', 'book', '', '', 'I Creative Solutions', 0, 0),
(121, 1, 1, 1, 'Hacker Uncensored', 'Hacker Handbook. now is ready for newbe. show up your skill, do what you want with elegancy and science. be quiter you become is be able you to hear - THe Hacker Hands Book - Informatic', '', 'book', '', '', 'I Creative Solutions', 0, 0),
(122, 1, 1, 1, 'Rangkaian Listrik - Hakikat Ilmu', 'Buku pegangan SMA/SMK sederajat - pemahaman dasar seputar rangkaian listrik, standar kompetensi keilmuan 2013 - kurikulum lama 1994 - Hakikat Ilmu kelistrikan', '', 'book', '', '', 'I Creative Solutions', 0, 0),
(123, 1, 1, 1, 'Kereta Api Si gerbong Panjang', 'Buku sindiran kritis seputar transportasi indonesia kini pahles group meluncurkan buku barunya yang main di area Transportasi darat kreta api. yuu kita sama-sama benahi diri, dari sindiran-sindiran kritis membangun bangsa. thnks :)', '', 'book', '', '', 'I Creative Solutions', 0, 0),
(124, 1, 1, 1, 'Applying UML and Pattern', 'UML for you, be an object man in programming.', '', 'book', '', '', 'I Creative Solutions', 0, 0),
(125, 1, 1, 1, 'Organisasi - Diantara Dinding Rumah Kaca', 'Cerita dibalik hakikat ilmu keorganisasian. &quot;kita ada di antabranta yang tak tau kapan dan dimana kita akan menang&quot;', '', 'book', '', '', 'I Creative Solutions', 0, 0),
(126, 1, 1, 1, 'Kecantikan Kulit Wanita', 'Buku simple bagi para wanita karir untuk tetap eksis dengan kecantikan maksimal', '', 'book', '', '', 'I Creative Solutions', 0, 0),
(118, 1, 0, 0, '7 Islamic Daily Habits', '7 kebiasaan muslim, renungan bagi kehidupan sehari-hari, sesuatu yang simple dan kadang terlupakan, akan coba IKMALI ungkap dalam buku karia ke 9 nya. 7 Islamic Daily Habits. Mari kita wujudkan Masyarakat MADANI ISLAM.', '', 'book', '', '', '', 0, 0),
(119, 1, 0, 0, 'Aisyah - The Greates Woman in The Wold', 'Sebuah cerita dari seorang wanita islam hebat. yang menjadi contoh bagi seluruh wanita diseluruh dunia, keteguhan hati, komitmen diri, pengabdian terhadap suami tercinta. dan berbagai hal yang patut kita renungi, kita sudah dibungkus dalam buku Aisyah - The Greates Woman in The Wold - revisi 8 . ', '', 'Aisyah - The Greates Woman in The Wold', 'Aisyah - The Greates Woman in The Wold', 'Aisyah - The Greates Woman in The Wold', 'I Creative Solutions', 0, 0),
(128, 1, 0, 0, 'Expert Programing', 'As a programmer, designer, or architect, you may be lulled into thinking that the Android API is\r\nmerely what you use to write mobile programs for the Android mobile platform—which, of course,\r\nis true. However, we believe that the Android architecture has an undercurrent that makes it a key\r\npillar in the cloud-based Google computing era that is beckoning all of us! When you learn deeply\r\nabout the Android API, you are gaining a pass to the future of Google, and perhaps to the future of\r\nall of us.\r\nThis book, Expert Android, is our fith book on Android in the last four years. In the fist four books,\r\npublished under the Pro Android name, we covered increasingly new material on the core Android API.\r\nExpert Android is the outcome of our deepest desire and commitment to bring you the essentials for\r\nwriting compelling and impactful Android applications at a faster pace.\r\nIn Expert Android, you will fid more diffiult topics that are not covered anywhere else. You will\r\ndiscover ways that help you extend Android and companion topics that will enhance your Android\r\nmobile applications. You also will fid information that is applicable for any release of Android.', '', 'book', '', '', 'Satya Komatine', 0, 0),
(129, 1, 0, 0, 'Test 1', '&lt;p&gt;teset&lt;br&gt;&lt;/p&gt;', '', 'Test 1', 'Test 1', 'Test 1', 'pahlevi', 0, 0),
(130, 1, 1, 2, 'percobaan', '&lt;p&gt;ini teh percobaa untuk mengetes fungsi designer dan editor&lt;/p&gt;', '', 'percobaan', 'percobaan', 'percobaan', 'gifary', 0, 150);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE IF NOT EXISTS `oc_product_discount` (
`product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM AUTO_INCREMENT=453 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE IF NOT EXISTS `oc_product_image` (
`product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2394 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE IF NOT EXISTS `oc_product_option` (
`product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
`product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE IF NOT EXISTS `oc_product_reward` (
`product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=647 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(636, 118, 1, 0),
(635, 118, 2, 0),
(638, 119, 1, 0),
(637, 119, 2, 0),
(609, 124, 2, 0),
(610, 124, 1, 0),
(611, 117, 2, 0),
(612, 117, 1, 0),
(613, 115, 2, 0),
(614, 115, 1, 0),
(615, 121, 2, 0),
(616, 121, 1, 0),
(619, 120, 2, 0),
(620, 120, 1, 0),
(621, 126, 2, 0),
(622, 126, 1, 0),
(623, 123, 2, 0),
(624, 123, 1, 0),
(625, 125, 2, 0),
(626, 125, 1, 0),
(627, 114, 2, 0),
(628, 114, 1, 0),
(629, 122, 2, 0),
(630, 122, 1, 0),
(631, 116, 2, 0),
(632, 116, 1, 0),
(633, 113, 2, 0),
(634, 113, 1, 0),
(646, 128, 1, 0),
(645, 128, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE IF NOT EXISTS `oc_product_special` (
`product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM AUTO_INCREMENT=448 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(0, 64),
(0, 66),
(0, 67),
(0, 68),
(0, 80),
(81, 64),
(113, 64),
(113, 69),
(113, 100),
(114, 64),
(114, 79),
(114, 93),
(115, 64),
(115, 70),
(115, 75),
(115, 90),
(116, 64),
(116, 94),
(117, 64),
(117, 89),
(117, 93),
(118, 64),
(118, 66),
(119, 64),
(119, 66),
(119, 69),
(120, 64),
(120, 66),
(121, 64),
(121, 75),
(121, 89),
(121, 90),
(121, 93),
(122, 64),
(122, 89),
(122, 90),
(122, 93),
(123, 64),
(123, 75),
(123, 77),
(124, 64),
(124, 93),
(125, 64),
(125, 89),
(125, 90),
(126, 64),
(126, 75),
(126, 80),
(126, 89),
(126, 90),
(128, 64),
(128, 79),
(128, 93),
(129, 64),
(129, 66),
(130, 64),
(130, 67);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(118, 0, 0),
(119, 0, 0),
(124, 0, 0),
(117, 0, 0),
(115, 0, 0),
(121, 0, 0),
(120, 0, 0),
(126, 0, 0),
(123, 0, 0),
(125, 0, 0),
(114, 0, 0),
(122, 0, 0),
(116, 0, 0),
(113, 0, 0),
(128, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(105, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(128, 0),
(129, 0),
(130, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_recurring` (
`recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE IF NOT EXISTS `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE IF NOT EXISTS `oc_return` (
`return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE IF NOT EXISTS `oc_return_action` (
`return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE IF NOT EXISTS `oc_return_history` (
`return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE IF NOT EXISTS `oc_return_reason` (
`return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE IF NOT EXISTS `oc_return_status` (
`return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE IF NOT EXISTS `oc_review` (
`review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(10, 126, 10, 'Siti Saadah', 'Ini buku mantep aslii. manjur,, jadi seger aja aku nih muka akuu', 4, 1, '2015-04-01 22:33:37', '2015-04-01 22:36:08'),
(11, 124, 10, 'Siti Komariah', 'Ih aku makin pusing aja . balajar UML :(( sedih', 2, 1, '2015-04-01 22:34:39', '2015-04-01 22:36:22'),
(12, 119, 10, 'Siti Maulidah', 'Ya ampun. ini menginspirasi sekali buku, jadi harus lebih istiqomah lagi dalam berkihidupan dll. thnks', 5, 1, '2015-04-01 22:35:34', '2015-04-01 22:36:31'),
(13, 115, 10, 'Siti Komarullah', 'Asli gan, recommanded bangeut lahh asli', 5, 1, '2015-04-01 22:39:51', '2015-04-01 22:41:04'),
(14, 115, 10, 'Siti Saadah Bokor', 'Wuuu. bener gan aslinya , setuju. ana... ini manjur loh', 5, 1, '2015-04-01 22:40:43', '2015-04-01 22:41:12'),
(15, 113, 10, 'Siti saadah', 'Keren ini kisah kisah eripahles sangat menginspirasi gan', 4, 1, '2015-04-01 22:56:27', '2015-04-01 22:56:58'),
(16, 113, 10, 'Siti Julaeho', 'Wuuuu..  asli keren. lucu lucu ceritanya\r\nWuuuu..  asli keren. lucu lucu ceritanya\r\nWuuuu..  asli keren. lucu lucu ceritanya\r\nWuuuu..  asli keren. lucu lucu ceritanya\r\nWuuuu..  asli keren. lucu lucu ceritanya\r\nWuuuu..  asli keren. lucu lucu ceritanya', 5, 1, '2015-04-01 22:58:23', '2015-04-01 22:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE IF NOT EXISTS `oc_setting` (
`setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1442 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(1120, 0, 'bank_bca', 'bank_bca_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(1119, 0, 'bank_bca', 'bank_bca_status', '1', 0),
(1075, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1074, 0, 'config', 'config_shared', '0', 0),
(1073, 0, 'config', 'config_secure', '0', 0),
(1072, 0, 'config', 'config_fraud_status_id', '7', 0),
(1071, 0, 'config', 'config_fraud_score', '', 0),
(1070, 0, 'config', 'config_fraud_key', '', 0),
(1069, 0, 'config', 'config_fraud_detection', '0', 0),
(1068, 0, 'config', 'config_mail_alert', '', 0),
(1067, 0, 'config', 'config_mail', 'a:7:{s:8:"protocol";s:4:"mail";s:9:"parameter";s:0:"";s:13:"smtp_hostname";s:0:"";s:13:"smtp_username";s:0:"";s:13:"smtp_password";s:0:"";s:9:"smtp_port";s:0:"";s:12:"smtp_timeout";s:0:"";}', 1),
(1066, 0, 'config', 'config_ftp_status', '0', 0),
(1065, 0, 'config', 'config_ftp_root', '', 0),
(1064, 0, 'config', 'config_ftp_password', '', 0),
(1063, 0, 'config', 'config_ftp_username', '', 0),
(1062, 0, 'config', 'config_ftp_port', '21', 0),
(1061, 0, 'config', 'config_ftp_hostname', 'localhost', 0),
(1058, 0, 'config', 'config_image_cart_height', '47', 0),
(1059, 0, 'config', 'config_image_location_width', '268', 0),
(1060, 0, 'config', 'config_image_location_height', '50', 0),
(1057, 0, 'config', 'config_image_cart_width', '47', 0),
(1056, 0, 'config', 'config_image_wishlist_height', '47', 0),
(1055, 0, 'config', 'config_image_wishlist_width', '47', 0),
(1054, 0, 'config', 'config_image_compare_height', '90', 0),
(988, 0, 'config', 'config_meta_title', 'Publisher Book Apps', 0),
(989, 0, 'config', 'config_meta_description', 'Publisher Book Apps', 0),
(990, 0, 'config', 'config_meta_keyword', 'Publisher Book Apps', 0),
(991, 0, 'config', 'config_template', 'default', 0),
(992, 0, 'config', 'config_layout_id', '1', 0),
(993, 0, 'config', 'config_country_id', '100', 0),
(994, 0, 'config', 'config_zone_id', '1515', 0),
(995, 0, 'config', 'config_language', 'en', 0),
(996, 0, 'config', 'config_admin_language', 'en', 0),
(997, 0, 'config', 'config_currency', 'IDR', 0),
(998, 0, 'config', 'config_currency_auto', '1', 0),
(999, 0, 'config', 'config_length_class_id', '1', 0),
(1000, 0, 'config', 'config_weight_class_id', '1', 0),
(1001, 0, 'config', 'config_product_count', '1', 0),
(1002, 0, 'config', 'config_product_limit', '15', 0),
(1003, 0, 'config', 'config_product_description_length', '100', 0),
(1004, 0, 'config', 'config_limit_admin', '20', 0),
(1005, 0, 'config', 'config_review_status', '1', 0),
(1006, 0, 'config', 'config_review_guest', '1', 0),
(1007, 0, 'config', 'config_review_mail', '0', 0),
(1008, 0, 'config', 'config_voucher_min', '1', 0),
(1009, 0, 'config', 'config_voucher_max', '1000', 0),
(1010, 0, 'config', 'config_tax', '1', 0),
(1011, 0, 'config', 'config_tax_default', 'shipping', 0),
(1012, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1013, 0, 'config', 'config_customer_online', '0', 0),
(1014, 0, 'config', 'config_customer_group_id', '1', 0),
(1015, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(1016, 0, 'config', 'config_customer_price', '0', 0),
(1017, 0, 'config', 'config_login_attempts', '5', 0),
(1018, 0, 'config', 'config_account_id', '3', 0),
(1019, 0, 'config', 'config_account_mail', '0', 0),
(1020, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(1021, 0, 'config', 'config_api_id', '1', 0),
(1022, 0, 'config', 'config_cart_weight', '1', 0),
(1023, 0, 'config', 'config_checkout_guest', '1', 0),
(1024, 0, 'config', 'config_checkout_id', '5', 0),
(1025, 0, 'config', 'config_order_status_id', '1', 0),
(1026, 0, 'config', 'config_processing_status', 'a:1:{i:0;s:1:"2";}', 1),
(1027, 0, 'config', 'config_complete_status', 'a:1:{i:0;s:1:"5";}', 1),
(1028, 0, 'config', 'config_order_mail', '0', 0),
(1029, 0, 'config', 'config_stock_display', '0', 0),
(1030, 0, 'config', 'config_stock_warning', '0', 0),
(1031, 0, 'config', 'config_stock_checkout', '0', 0),
(1032, 0, 'config', 'config_affiliate_approval', '0', 0),
(1033, 0, 'config', 'config_affiliate_auto', '0', 0),
(1034, 0, 'config', 'config_affiliate_commission', '5', 0),
(1035, 0, 'config', 'config_affiliate_id', '4', 0),
(1036, 0, 'config', 'config_affiliate_mail', '0', 0),
(1037, 0, 'config', 'config_return_id', '0', 0),
(1038, 0, 'config', 'config_return_status_id', '2', 0),
(1039, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(1040, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(1041, 0, 'config', 'config_image_category_width', '80', 0),
(1042, 0, 'config', 'config_image_category_height', '80', 0),
(1043, 0, 'config', 'config_image_thumb_width', '228', 0),
(1044, 0, 'config', 'config_image_thumb_height', '228', 0),
(1045, 0, 'config', 'config_image_popup_width', '500', 0),
(1046, 0, 'config', 'config_image_popup_height', '500', 0),
(1047, 0, 'config', 'config_image_product_width', '228', 0),
(1048, 0, 'config', 'config_image_product_height', '228', 0),
(1049, 0, 'config', 'config_image_additional_width', '74', 0),
(1050, 0, 'config', 'config_image_additional_height', '74', 0),
(1051, 0, 'config', 'config_image_related_width', '80', 0),
(1052, 0, 'config', 'config_image_related_height', '80', 0),
(1053, 0, 'config', 'config_image_compare_width', '90', 0),
(987, 0, 'config', 'config_comment', '', 0),
(504, 0, 'information', 'information_status', '1', 0),
(986, 0, 'config', 'config_open', '', 0),
(985, 0, 'config', 'config_image', '', 0),
(984, 0, 'config', 'config_fax', '', 0),
(983, 0, 'config', 'config_telephone', '085624257705', 0),
(982, 0, 'config', 'config_email', 'eripahle@gmail.com', 0),
(981, 0, 'config', 'config_geocode', '', 0),
(980, 0, 'config', 'config_address', 'alamat1', 0),
(979, 0, 'config', 'config_owner', 'Publisher Book Apps', 0),
(978, 0, 'config', 'config_name', 'Publisher Book Apps', 0),
(966, 0, 'tweetbook', 'tweetbook_position', '0', 0),
(964, 0, 'tweetbook', 'tweetbook_facebook', 'https://www.facebook.com/pahlevi.ridwan', 0),
(965, 0, 'tweetbook', 'tweetbook_twitter', 'https://twitter.com/eripahle', 0),
(963, 0, 'tweetbook', 'tweetbook_status', '1', 0),
(1076, 0, 'config', 'config_seo_url', '0', 0),
(1077, 0, 'config', 'config_file_max_size', '300000', 0),
(1078, 0, 'config', 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(1079, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(1080, 0, 'config', 'config_maintenance', '0', 0),
(1081, 0, 'config', 'config_password', '1', 0),
(1082, 0, 'config', 'config_encryption', 'dbcff5453c87e035dfb3c8c9e7e1e70d', 0),
(1083, 0, 'config', 'config_compression', '0', 0),
(1084, 0, 'config', 'config_error_display', '1', 0),
(1085, 0, 'config', 'config_error_log', '1', 0),
(1086, 0, 'config', 'config_error_filename', 'error.log', 0),
(1087, 0, 'config', 'config_google_analytics', '', 0),
(1301, 0, 'jne_reguler', 'jne_reguler_status', '1', 0),
(1302, 0, 'jne_reguler', 'jne_reguler_sort_order', '2', 0),
(1303, 0, 'jne_reguler', 'jne_reguler_1_rate', 'Arongan Lambalek Meulaboh,86000\r\nAtu Lintang Takengon,57000\r\nBabah Rot Blangpidie,57000\r\nBabul Makmur Kutacane,57000\r\nBabul Rahmat Kutacane,57000\r\nBabussalam Kutacane,57000\r\nBadar Kutacane,57000\r\nBaiturrahman Bandaaceh,57000\r\nBaitussalam Jantho,30000\r\nBakongan Timur Tapaktuan,57000\r\nBakongan Tapaktuan,57000\r\nBaktia Lhoksukon,57000\r\nBaktiya Barat Lhoksukon,57000\r\nBambel Kutacane,57000\r\nBanda Alam Idi Rayeuk,57000\r\nBanda Raya Bandaaceh,57000\r\nBanda Sakti Lhokseumawe,30000\r\nBandaaceh,45000\r\nBandar Baru Meureudu,30000\r\nBandar Dua Meureudu,57000\r\nBandar Simpang Tiga Redelon,57000\r\nBatee Sigli,57000\r\nBebesan Takengon,57000\r\nBendahara Kualasimpang,57000\r\nBeutong Suka Makmue,57000\r\nBies Takengon,57000\r\nBintang Takengon,57000\r\nBirem Bayeun Idi Rayeuk,57000\r\nBireuen,57000\r\nBlang Mangat Lhokseumawe,45000\r\nBlangjerango Blangkejeren,45000\r\nBlangkejeren Kab. Gayolues,57000\r\nBlangpegayon Blangkejeren,45000\r\nBlangpidie,57000\r\nBubon Meulaboh,45000\r\nBukit Tusam Kutacane,57000\r\nBukit Simpang Tiga Redelon,57000\r\nCelala Takengon,57000\r\nCot Girek Lhoksukon,57000\r\nDabunggelang Blangkejeren,57000\r\nDanau Paris Singkil,57000\r\nDarul Aman Idi Rayeuk,57000\r\nDarul Hasanah Kutacane,57000\r\nDarul Iksan Idi Rayeuk,57000\r\nDarul Imarah Jantho,57000\r\nDarul Kamal Jantho,57000\r\nDarul Makmur Suka Makmue,57000\r\nDarusalam Jantho,57000\r\nDelima Sigli,57000\r\nDewantara Lhoksukon,57000\r\nGandapura Bireuen,57000\r\nGeumpang Sigli,57000\r\nGleumpang Tiga Sigli,57000\r\nGlumpang Baro Sigli,57000\r\nGunung Meriah Singkil,57000\r\nIdi Rayeuk Kab. Aceh Timur,57000\r\nIdi Tuning Idi Rayeuk,45000\r\nIndra Jaya Sigli,57000\r\nIndra Makmur Idi Rayeuk,57000\r\nIndrapuri Jantho,57000\r\nIngin Jaya Jantho,57000\r\nJagong Jeget Takengon,57000\r\nJangka Buya Meureudu,57000\r\nJangka Bireuen,57000\r\nJantho Kab. Aceh Besar,57000\r\nJaya Baru Bandaaceh,45000\r\nJaya Krueng Sabee,30000\r\nJeumpa Bireuen,57000\r\nJeunieb Bireuen,57000\r\nJohan Pahlawan Meulaboh,57000\r\nJuli Bireuen,57000\r\nJulok Idi Rayeuk,57000\r\nKarangbaru Kualasimpang,57000\r\nKawai XVI Meulaboh,57000\r\nKebayakan Takengon,57000\r\nKejuruan Muda Kualasimpang,57000\r\nKembang Tanjung Sigli,57000\r\nKetol Takengon,57000\r\nKluet Tengah Tapaktuan,57000\r\nKluet Timur Tapaktuan,57000\r\nKluet Utara Tapaktuan,57000\r\nKota Baharu Singkil,57000\r\nKota Juang Bireuen,57000\r\nKrueng Barona Jaya Jantho,57000\r\nKrueng Sabee/calang,57000\r\nKuala Batee  Blangpidie,45000\r\nKuala Bireuen,57000\r\nKuala Suka Makmue,57000\r\nKualasimpang Kab. Aceh Tamiang,57000\r\nKuet Selatan Tapaktuan,45000\r\nKuta Alam Bandaaceh,57000\r\nKuta Blang Bireuen,30000\r\nKuta Cot Glie Jantho,57000\r\nKuta Malaka Jantho,57000\r\nKuta Panjang Blangkejeren,57000\r\nKuta Raja Bandaaceh,57000\r\nKutabaro Jantho,30000\r\nKutacane,57000\r\nKutamakmur Lhoksukon,45000\r\nKute Panang Takengon,57000\r\nLabuhan Haji Barat Tapaktuan,57000\r\nLabuhan Haji Timur Tapaktuan,57000\r\nLabuhan Haji Tapaktuan,57000\r\nLangkahan Lhoksukon,57000\r\nLangsa,57000\r\nLangsa Barat Langsa,45000\r\nLangsa Kota Langsa,45000\r\nLangsa Lama Langsa,45000\r\nLangsa Teungoh Langsa,45000\r\nLangsa Timur Langsa,45000\r\nLauttawar Takengon,45000\r\nLawe Alas Kutacane,57000\r\nLawe Bulan Kutacane,57000\r\nLawe Sigalagala Kutacane,57000\r\nLembah Seulawah Jantho,57000\r\nLeupung Jantho,57000\r\nLhoknga Jantho,57000\r\nLhokseumawe,57000\r\nLhoksukon Kab. Aceh Utara,45000\r\nLhoong Jantho,45000\r\nLinge Takengon,57000\r\nLokop(Serbajadi) Idi Rayeuk,57000\r\nLongkip Subulussalam,57000\r\nLueng Bata Bandaaceh,45000\r\nMadat Idi Rayeuk,30000\r\nMakmur Bireuen,57000\r\nMane Sigli,57000\r\nManggeng Blangpidie,57000\r\nManyuk Payed Kualasimpang,57000\r\nMatangkuli Lhoksukon,57000\r\nMesjid Raya Jantho,57000\r\nMeukek Tapaktuan,57000\r\nMeulaboh,57000\r\nMeurah Dua Meureudu,45000\r\nMeurah Mulia Lhoksukon,57000\r\nMeuraksa Bandaaceh,57000\r\nMeureudu Kab. Pidie Jaya,30000\r\nMila Sigli,45000\r\nMontasik Jantho,57000\r\nMuara Batu Lhoksukon,57000\r\nMuara Dua Lhokseumawe,57000\r\nMuara Tiga Sigli,45000\r\nMutiara Timur Sigli,57000\r\nMutiara Sigli,57000\r\nNibong Lhoksukon,57000\r\nNisam Lhoksukon,57000\r\nNurussalam Idi Rayeuk,57000\r\nPadang Tiji Sigli,57000\r\nPandrah Bireuen,57000\r\nPangat Krueng Sabee,57000\r\nPantan Jaya Blangkejeren,57000\r\nPante Beudari Idi Rayeuk,57000\r\nPante Ceureumen Meulaboh,57000\r\nPanteraja Meureudu,57000\r\nPasie Raja Tapaktuan,57000\r\nPaya Bakong Lhoksukon,57000\r\nPegasing Takengon,57000\r\nPenanggalan Subulussalam,57000\r\nPermata Simpang Tiga Redelon,45000\r\nPeudada Bireuen,57000\r\nPeudawa Idi Rayeuk,57000\r\nPeukan Bada Jantho,57000\r\nPeukan Baro Sigli,57000\r\nPeureulak Barat Idi Rayeuk,57000\r\nPeureulak Timur Idi Rayeuk,57000\r\nPeureulak Idi Rayeuk,57000\r\nPeusangan Selatan Bireuen,57000\r\nPeusangan Siblah Krueng,57000\r\nPeusangan Bireuen,57000\r\nPidie Sigli,57000\r\nPining Blangkejeren,57000\r\nPintu Rime Simpang 3 Redelon,57000\r\nPrimbang Bireuen,57000\r\nPulau Banyak Singkil,57000\r\nPuro Aceh Jantho,57000\r\nPuteribetung Blangkejeren,57000\r\nRantau Selamat Idi Rayeuk,57000\r\nRantau Selamat Kualasimpang,57000\r\nRanto Peureulak Idi Rayeuk,57000\r\nRikitgaib Blangkejeren,57000\r\nRundeng Subulussalam,57000\r\nRusip Antara Takengon,45000\r\nSabang Kota Sabang,57000\r\nSakti Sigli,45000\r\nSama Tiga Meulaboh,57000\r\nSamadua Tapaktuan,86000\r\nSamalanga Bireuen,57000\r\nSampoi Niet Krueng Sabee,57000\r\nSamudera Lhoksukon,57000\r\nSawang Lhoksukon,57000\r\nSawang Tapaktuan,57000\r\nSemadam Kutacane,57000\r\nSeruai Kualasimpang,57000\r\nSetia Bakti Krueng Sabee,57000\r\nSeulimeum Jantho,57000\r\nSeunagan Timur Suka Makmue,57000\r\nSeunagan Suka Makmue,57000\r\nSeunoddon Lhoksukon,57000\r\nSigli Kab. Pidie,57000\r\nSilih Nara Takengon,57000\r\nSimpang Jernih Idi Rayeuk,45000\r\nSimpang Kanan Singkil,57000\r\nSimpang Keuramat Lhoksukon,86000\r\nSimpang Kiri Subulussalam,86000\r\nSimpang Mamplam Bireuen,86000\r\nSimpang Tiga Redelon,57000\r\nSimpang Tiga Jantho,57000\r\nSimpang Tiga Sigli,57000\r\nSimpangulim Idi Rayeuk,45000\r\nSingkil Utara Singkil,57000\r\nSingkil Kab. Aceh Singkil,45000\r\nSingkohor Singkil,57000\r\nSubulussalam,57000\r\nSuka Makmue,57000\r\nSuka Makmur Jantho,86000\r\nSukajaya Sabang,57000\r\nSukakarya Sabang,45000\r\nSultan Daulat Subulussalam,57000\r\nSungai Mas Meulaboh,45000\r\nSungai Raya Idi Rayeuk,45000\r\nSuro Baru Singkil,57000\r\nSusoh Blangpidie,45000\r\nSyamtalira Aron Lhoksukon,45000\r\nSyamtalira Bayu Lhoksukon,45000\r\nSyiah Kuala Bandaaceh,57000\r\nSyiah Kuala Simpang 3 Redelon,57000\r\nTakengon,57000\r\nTamiang Hulu Kualasimpang,57000\r\nTanah Jambo Aye Lhoksukon,57000\r\nTanah Luas Lhoksukon,57000\r\nTanah Pasir Lhoksukon,30000\r\nTangantangan Blangpidie,57000\r\nTangse Sigli,45000\r\nTapaktuan Kab. Aceh Selatan,57000\r\nTerangon Blangkejeren,57000\r\nTeripejaya Blangkejeren,57000\r\nTeunom Krueng Sabee,57000\r\nTimang Gajah Simpang Tiga,57000\r\nTiro/truseb Sigli,57000\r\nTiteue/keumala Sigli,45000\r\nTrienggading Meureudu,86000\r\nTrumon Timur Tapaktuan,57000\r\nTrumon Tapaktuan,57000\r\nUlee Kareng Bandaaceh,57000\r\nUlim Meureudu,86000\r\nWih Pesam Simpang Tiga Redelon,86000\r\nWoyla Barat Meulaboh,57000\r\nWoyla Timur Meulaboh,57000\r\nWoyla Meulaboh,57000\r\n\r\n                  ', 0),
(1118, 0, 'bank_bca', 'bank_bca_geo_zone_id', '0', 0),
(1117, 0, 'bank_bca', 'bank_bca_order_status_id', '15', 0),
(1116, 0, 'bank_bca', 'bank_bca_total', '0.01', 0),
(1115, 0, 'bank_bca', 'bank_bca_bank1', 'No rek :08382920\r\nAN : muhammad gifary', 0),
(1109, 0, 'bank_mandiri', 'bank_mandiri_bank1', 'No rek : 0882929\r\nAN : muhammad gifary', 0),
(1110, 0, 'bank_mandiri', 'bank_mandiri_total', '0.01', 0),
(1111, 0, 'bank_mandiri', 'bank_mandiri_order_status_id', '15', 0),
(1112, 0, 'bank_mandiri', 'bank_mandiri_geo_zone_id', '0', 0),
(1113, 0, 'bank_mandiri', 'bank_mandiri_status', '1', 0),
(1114, 0, 'bank_mandiri', 'bank_mandiri_sort_order', '2', 0),
(1300, 0, 'jne_reguler', 'jne_reguler_tax_class_id', '0', 0),
(1126, 0, 'category_wall', 'category_wall_status', '1', 0),
(1127, 0, 'category', 'category_status', '1', 0),
(1145, 0, 'featuredcategory', 'featuredcategory_product', '68,66,67,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100', 0),
(1147, 0, 'featuredcategory', 'featuredcategory_module', 'a:1:{s:11:"auggxi71qqa";a:3:{s:5:"limit";s:2:"50";s:5:"width";s:2:"80";s:6:"height";s:2:"80";}}', 1),
(1146, 0, 'featuredcategory', 'featuredcategory_status', '1', 0),
(1373, 0, 'jne_yes', 'jne_yes_sort_order', '3', 0),
(1372, 0, 'jne_yes', 'jne_yes_status', '1', 0),
(1371, 0, 'jne_yes', 'jne_yes_tax_class_id', '0', 0),
(1233, 0, 'jne_oke', 'jne_oke_1_status', '1', 0),
(1234, 0, 'jne_oke', 'jne_oke_2_rate', 'Abang Amlapura,28000\r\nAbiansemal Menguwi ,28000\r\nAmlapura,22000\r\nBangli Kab. Bangli,22000\r\nBanjar Singaraja,28000\r\nBanjarangkan Semarapura,28000\r\nBaturiti Tabanan,28000\r\nBebandem Amlapura,28000\r\nBlahbatuh Gianyar,28000\r\nBuleleng Singaraja,28000\r\nBusungbiu Singaraja,28000\r\nDawan Semarapura,28000\r\nDenpasar,16000\r\nDenpasar Barat Denpasar,16000\r\nDenpasar Selatan Denpasar,16000\r\nDenpasar Timur Denpasar,16000\r\nGianyar,22000\r\nGrokgak Singaraja,28000\r\nJimbaran Kuta,16000\r\nKarangasem Amlapura,22000\r\nKediri Tabanan,28000\r\nKerambilan Tabanan,28000\r\nKintamani Bangli,28000\r\nKlungkung Semarapura,22000\r\nKubu Amlapura,28000\r\nKubutambahan Singaraja,28000\r\nKuta ,16000\r\nLegian Kuta,16000\r\nManggis Amlapura,28000\r\nMarga Tabanan,28000\r\nMelaya Negara,28000\r\nMendoyo Negara,28000\r\nMenguwi Kab. Badung,22000\r\nNegara Kab. Jembrana,22000\r\nNgurahrai Kuta,16000\r\nNusa Dua Kuta,16000\r\nNusapenida Semarapura,28000\r\nPapuan Tabanan,28000\r\nPayangan Gianyar,28000\r\nPekutatan Negara,28000\r\nPenebel Tabanan,28000\r\nPetang Menguwi ,28000\r\nRendang Amlapura,28000\r\nSanur Kuta,16000\r\nSawan Singaraja,28000\r\nSelat Amlapura,28000\r\nSelemadeg Barat Tabanan,28000\r\nSelemadeg Timur Tabanan,28000\r\nSelemadeg Tabanan,28000\r\nSemarapura,22000\r\nSeririt Singaraja,28000\r\nSidemen Amlapura,28000\r\nSingaraja Kab. Buleleng,22000\r\nSukasada Singaraja,28000\r\nSukawati Gianyar,28000\r\nSusut Bangli,28000\r\nTabanan,22000\r\nTegallalang Gianyar,28000\r\nTejakula Singaraja,28000\r\nTembuku Bangli,28000\r\nUbud Gianyar,28000\r\n', 0),
(1235, 0, 'jne_oke', 'jne_oke_2_status', '1', 0),
(1236, 0, 'jne_oke', 'jne_oke_3_rate', 'Air Gegas Toboali,34000\r\nBadau Tanjung Pandan,33000\r\nBakam Sungailiat,34000\r\nBelinyu Sungailiat,27000\r\nBukit Intan Pangkalpinang,19000\r\nDendang Manggar,33000\r\nGantung Manggar,33000\r\nGerunggang Pangkalpinang,19000\r\nJebus  Kelapa,27000\r\nKelapa Kampit Manggar,33000\r\nKelapa Kab. Bangka Barat,27000\r\nKoba Kab. Koba,27000\r\nLepar Pongok Toboali,34000\r\nManggar Kab. Belitung Barat,26000\r\nMembalong Tanjungpandan,33000\r\nMendo Barat Sungailiat,34000\r\nMentok Kelapa,27000\r\nMerawang Sungailiat,34000\r\nPangkal Balam Pangkalpinang,19000\r\nPangkalan Baru Koba,34000\r\nPangkalpinang,19000\r\nPayung Toboali,34000\r\nPemali Sungailiat,34000\r\nPuding Besar Sungailiat,34000\r\nRangkui Pangkalpinang,19000\r\nRiau Silip Sungailiat,34000\r\nSelat Nasik Tanjungpandan,33000\r\nSijuk Tanjung Pandan,33000\r\nSimpang Katis Koba,34000\r\nSimpang Rima Toboali,34000\r\nSimpang Teritip  Kelapa,34000\r\nSungai Selan Koba,34000\r\nSungailiat Kab. Bangka,27000\r\nTanjungpandan,19000\r\nTempilang  Kelapa,34000\r\nToboali Kab. Toboali,27000\r\n                                  ', 0),
(1237, 0, 'jne_oke', 'jne_oke_3_status', '1', 0),
(1238, 0, 'jne_oke', 'jne_oke_4_rate', ' Angsana Pandeglang,14000\r\nAnyar Baros,11000\r\nBalaraja Tigaraksa,9000\r\nBanjar Pandeglang,14000\r\nBanjarsari Rangkasbitung,14000\r\nBaros Kab. Serang,11000\r\nBatuceper  Tangerang,9000\r\nBayah Rangkasbitung,14000\r\nBenda Tangerang,9000\r\nBinuang Baros,14000\r\nBojonegara Baros ,14000\r\nBojong Pandeglang,14000\r\nBojongmanik Rangkasbitung,14000\r\nCadasari Pandeglang,14000\r\nCarenang Baros,14000\r\nCarita Pandeglang,14000\r\nCibadak Rangkasbitung,14000\r\nCibaliung Pandeglang,14000\r\nCibeber Cilegon,10000\r\nCibeber Rangkasbitung,14000\r\nCibitung Pandeglang,14000\r\nCibodas  Tangerang,9000\r\nCigeulis Pandeglang,14000\r\nCijaku Rangkasbitung,14000\r\nCikande Baros,14000\r\nCikedal Pandeglang,14000\r\nCikeusal Baros,14000\r\nCikeusik Pandeglang,14000\r\nCikulur Rangkasbitung,14000\r\nCikupa Tigaraksa,9000\r\nCiledug Tangerang,9000\r\nCilegon,10000\r\nCileles Rangkasbitung,14000\r\nCimanggu Pandeglang,14000\r\nCimanuk Pandeglang,14000\r\nCimarga Rangkasbitung,14000\r\nCinangka Baros,14000\r\nCiomas Baros,14000\r\nCipanas Rangkasbitung,14000\r\nCipeucang Pandeglang,14000\r\nCipocok Jaya  Serang,10000\r\nCipondoh  Tangerang,9000\r\nCiputat  Tigaraksa,9000\r\nCiruas Baros,14000\r\nCisata Pandeglang,14000\r\nCisauk Tigaraksa,9000\r\nCisoka Tigaraksa,9000\r\nCitangkil Cilegon,10000\r\nCiwandan Cilegon,10000\r\nCurug Serang,10000\r\nCurug Tigaraksa,9000\r\nCurugbitung  Rangkasbitung,14000\r\nGerogol Cilegon,10000\r\nGunung Kencana Rangkasbitung,14000\r\nJambe Tigaraksa,9000\r\nJatiuwung  Tangerang,9000\r\nJawilan Baros,14000\r\nJayanti  Tigaraksa,9000\r\nJiput Pandeglang,14000\r\nJombang Cilegon,10000\r\nKaduhejo Pandeglang,14000\r\nKarangtanjung Pandeglang,14000\r\nKarangtengah  Tangerang,9000\r\nKarawaci  Tangerang,9000\r\nKasemen Serang,10000\r\nKemiri  Tigaraksa,9000\r\nKibin Baros,14000\r\nKopo Baros,14000\r\nKosambi / Selembaran Jati,9000\r\nKragilan Baros,14000\r\nKramatwatu Baros,14000\r\nKresek Tigaraksa,9000\r\nKronjo Tigaraksa,9000\r\nLabuan Pandeglang,14000\r\nLarangan  Tangerang,9000\r\nLegok Tigaraksa,9000\r\nLeuwidamar Rangkasbitung,14000\r\nMaja Rangkasbitung,14000\r\nMalingping Rangkasbitung,14000\r\nMancak Baros,14000\r\nMandalawangi Pandeglang,14000\r\nMauk Tigaraksa,9000\r\nMenes Pandeglang,14000\r\nMerak Cilegon,10000\r\nMuncang Rangkasbitung,14000\r\nMunjul Pandeglang,14000\r\nNeglasari  Tangerang,9000\r\nPabuaran Baros,14000\r\nPadarincang Baros,14000\r\nPagedangan Tigaraksa,9000\r\nPagelaran Pandeglang,14000\r\nPakuhaji Tigaraksa,9000\r\nPamarayan Baros,14000\r\nPamulang Tigaraksa,9000\r\nPandeglang Kab. Pandeglang,11000\r\nPanggarangan Rangkasbitung,14000\r\nPanimbang Pandeglang,14000\r\nPanongan Tigaraksa,9000\r\nPasar Kemis Tigaraksa,9000\r\nPatia Pandeglang,14000\r\nPeriuk  Tangerang,9000\r\nPetir Baros,14000\r\nPicung Pandeglang,14000\r\nPinang  Tangerang,9000\r\nPondokaren / Jurang Mangu,9000\r\nPontang Baros,14000\r\nPuloampel Baros,14000\r\nPurwakarta Cilegon,10000\r\nRajeg Tigaraksa,9000\r\nRangkasbitung,11000\r\nSajira Rangkasbitung,14000\r\nSaketi Pandeglang,14000\r\nSepatan / Jatmulya Tigaraksa,9000\r\nSerang,10000\r\nSerpong,9000\r\nSobang  Rangkasbitung,14000\r\nSukadiri Tigaraksa,9000\r\nSukaresmi Pandeglang,14000\r\nSumur Pandeglang,14000\r\nTaktakan Serang,10000\r\nTangerang,9000\r\nTanjungteja Baros,14000\r\nTarana Baros,14000\r\nTeluknaga Tigaraksa,9000\r\nTigaraksa Kab. Tangerang,9000\r\nTirtayasa Baros,14000\r\nWalantaka Serang,10000\r\nWanasalam Rangkasbitung,14000\r\nWaringinkurung Baros,14000\r\nWarung Gunung Rangkasbitung,14000\r\n                                   ', 0),
(1232, 0, 'jne_oke', 'jne_oke_1_rate', 'Arongan Lambalek Meulaboh,49000\r\nAtu Lintang Takengon,49000\r\nBabah Rot Blangpidie,49000\r\nBabul Makmur Kutacane,49000\r\nBabul Rahmat Kutacane,49000\r\nBabussalam Kutacane,49000\r\nBadar Kutacane,49000\r\nBaiturrahman Bandaaceh,26000\r\nBaitussalam Jantho,49000\r\nBakongan Timur Tapaktuan,49000\r\nBakongan Tapaktuan,49000\r\nBaktia Lhoksukon,49000\r\nBaktiya Barat Lhoksukon,49000\r\nBambel Kutacane,49000\r\nBanda Alam Idi Rayeuk,49000\r\nBanda Raya Bandaaceh,26000\r\nBanda Sakti Lhokseumawe,39000\r\nBandaaceh,26000\r\nBandar Baru Meureudu,49000\r\nBandar Dua Meureudu,49000\r\nBandar Simpang Tiga Redelon,49000\r\nBatee Sigli,49000\r\nBebesan Takengon,49000\r\nBendahara Kualasimpang,49000\r\nBeutong Suka Makmue,49000\r\nBies Takengon,49000\r\nBintang Takengon,49000\r\nBirem Bayeun Idi Rayeuk,49000\r\nBireuen,39000\r\nBlang Mangat Lhokseumawe,39000\r\nBlangjerango Blangkejeren,49000\r\nBlangkejeren Kab. Gayolues,39000\r\nBlangpegayon Blangkejeren,49000\r\nBlangpidie,39000\r\nBubon Meulaboh,49000\r\nBukit Tusam Kutacane,49000\r\nBukit Simpang Tiga Redelon,49000\r\nCelala Takengon,49000\r\nCot Girek Lhoksukon,49000\r\nDabunggelang Blangkejeren,49000\r\nDanau Paris Singkil,49000\r\nDarul Aman Idi Rayeuk,49000\r\nDarul Hasanah Kutacane,49000\r\nDarul Iksan Idi Rayeuk,49000\r\nDarul Imarah Jantho,49000\r\nDarul Kamal Jantho,49000\r\nDarul Makmur Suka Makmue,49000\r\nDarusalam Jantho,49000\r\nDelima Sigli,49000\r\nDewantara Lhoksukon,49000\r\nGandapura Bireuen,49000\r\nGeumpang Sigli,49000\r\nGleumpang Tiga Sigli,49000\r\nGlumpang Baro Sigli,49000\r\nGunung Meriah Singkil,49000\r\nIdi Rayeuk Kab. Aceh Timur,39000\r\nIdi Tuning Idi Rayeuk,49000\r\nIndra Jaya Sigli,49000\r\nIndra Makmur Idi Rayeuk,49000\r\nIndrapuri Jantho,49000\r\nIngin Jaya Jantho,49000\r\nJagong Jeget Takengon,49000\r\nJangka Buya Meureudu,49000\r\nJangka Bireuen,49000\r\nJantho Kab. Aceh Besar,39000\r\nJaya Baru Bandaaceh,26000\r\nJaya Krueng Sabee,49000\r\nJeumpa Bireuen,49000\r\nJeunieb Bireuen,49000\r\nJohan Pahlawan Meulaboh,49000\r\nJuli Bireuen,49000\r\nJulok Idi Rayeuk,49000\r\nKarangbaru Kualasimpang,49000\r\nKawai XVI Meulaboh,49000\r\nKebayakan Takengon,49000\r\nKejuruan Muda Kualasimpang,49000\r\nKembang Tanjung Sigli,49000\r\nKetol Takengon,49000\r\nKluet Tengah Tapaktuan,49000\r\nKluet Timur Tapaktuan,49000\r\nKluet Utara Tapaktuan,49000\r\nKota Baharu Singkil,49000\r\nKota Juang Bireuen,49000\r\nKrueng Barona Jaya Jantho,49000\r\nKrueng Sabee/calang,39000\r\nKuala Batee  Blangpidie,49000\r\nKuala Bireuen,49000\r\nKuala Suka Makmue,49000\r\nKualasimpang Kab. Aceh Tamiang,39000\r\nKuet Selatan Tapaktuan,49000\r\nKuta Alam Bandaaceh,26000\r\nKuta Blang Bireuen,49000\r\nKuta Cot Glie Jantho,49000\r\nKuta Malaka Jantho,49000\r\nKuta Panjang Blangkejeren,49000\r\nKuta Raja Bandaaceh,26000\r\nKutabaro Jantho,49000\r\nKutacane,39000\r\nKutamakmur Lhoksukon,49000\r\nKute Panang Takengon,49000\r\nLabuhan Haji Barat Tapaktuan,49000\r\nLabuhan Haji Timur Tapaktuan,49000\r\nLabuhan Haji Tapaktuan,49000\r\nLangkahan Lhoksukon,49000\r\nLangsa,39000\r\nLangsa Barat Langsa,39000\r\nLangsa Kota Langsa,39000\r\nLangsa Lama Langsa,39000\r\nLangsa Teungoh Langsa,39000\r\nLangsa Timur Langsa,39000\r\nLauttawar Takengon,49000\r\nLawe Alas Kutacane,49000\r\nLawe Bulan Kutacane,49000\r\nLawe Sigalagala Kutacane,49000\r\nLembah Seulawah Jantho,49000\r\nLeupung Jantho,49000\r\nLhoknga Jantho,49000\r\nLhokseumawe,39000\r\nLhoksukon Kab. Aceh Utara,39000\r\nLhoong Jantho,49000\r\nLinge Takengon,49000\r\nLokop(Serbajadi) Idi Rayeuk,49000\r\nLongkip Subulussalam,39000\r\nLueng Bata Bandaaceh,26000\r\nMadat Idi Rayeuk,49000\r\nMakmur Bireuen,49000\r\nMane Sigli,49000\r\nManggeng Blangpidie,49000\r\nManyuk Payed Kualasimpang,49000\r\nMatangkuli Lhoksukon,49000\r\nMesjid Raya Jantho,49000\r\nMeukek Tapaktuan,49000\r\nMeulaboh,39000\r\nMeurah Dua Meureudu,49000\r\nMeurah Mulia Lhoksukon,49000\r\nMeuraksa Bandaaceh,26000\r\nMeureudu Kab. Pidie Jaya,39000\r\nMila Sigli,49000\r\nMontasik Jantho,49000\r\nMuara Batu Lhoksukon,49000\r\nMuara Dua Lhokseumawe,39000\r\nMuara Tiga Sigli,49000\r\nMutiara Timur Sigli,49000\r\nMutiara Sigli,49000\r\nNibong Lhoksukon,49000\r\nNisam Lhoksukon,49000\r\nNurussalam Idi Rayeuk,49000\r\nPadang Tiji Sigli,49000\r\nPandrah Bireuen,49000\r\nPangat Krueng Sabee,49000\r\nPantan Jaya Blangkejeren,49000\r\nPante Beudari Idi Rayeuk,49000\r\nPante Ceureumen Meulaboh,49000\r\nPanteraja Meureudu,49000\r\nPasie Raja Tapaktuan,49000\r\nPaya Bakong Lhoksukon,49000\r\nPegasing Takengon,49000\r\nPenanggalan Subulussalam,39000\r\nPermata Simpang Tiga Redelon,49000\r\nPeudada Bireuen,49000\r\nPeudawa Idi Rayeuk,49000\r\nPeukan Bada Jantho,49000\r\nPeukan Baro Sigli,49000\r\nPeureulak Barat Idi Rayeuk,49000\r\nPeureulak Timur Idi Rayeuk,49000\r\nPeureulak Idi Rayeuk,49000\r\nPeusangan Selatan Bireuen,49000\r\nPeusangan Siblah Krueng,49000\r\nPeusangan Bireuen,49000\r\nPidie Sigli,49000\r\nPining Blangkejeren,49000\r\nPintu Rime Simpang 3 Redelon,49000\r\nPrimbang Bireuen,49000\r\nPulau Banyak Singkil,49000\r\nPuro Aceh Jantho,49000\r\nPuteribetung Blangkejeren,49000\r\nRantau Selamat Idi Rayeuk,49000\r\nRantau Selamat Kualasimpang,49000\r\nRanto Peureulak Idi Rayeuk,49000\r\nRikitgaib Blangkejeren,49000\r\nRundeng Subulussalam,39000\r\nRusip Antara Takengon,49000\r\nSabang Kota Sabang,39000\r\nSakti Sigli,49000\r\nSama Tiga Meulaboh,49000\r\nSamadua Tapaktuan,49000\r\nSamalanga Bireuen,49000\r\nSampoi Niet Krueng Sabee,49000\r\nSamudera Lhoksukon,49000\r\nSawang Lhoksukon,49000\r\nSawang Tapaktuan,49000\r\nSemadam Kutacane,49000\r\nSeruai Kualasimpang,49000\r\nSetia Bakti Krueng Sabee,49000\r\nSeulimeum Jantho,49000\r\nSeunagan Timur Suka Makmue,49000\r\nSeunagan Suka Makmue,49000\r\nSeunoddon Lhoksukon,49000\r\nSigli Kab. Pidie,39000\r\nSilih Nara Takengon,49000\r\nSimpang Jernih Idi Rayeuk,49000\r\nSimpang Kanan Singkil,49000\r\nSimpang Keuramat Lhoksukon,49000\r\nSimpang Kiri Subulussalam,39000\r\nSimpang Mamplam Bireuen,49000\r\nSimpang Tiga Redelon,39000\r\nSimpang Tiga Jantho,49000\r\nSimpang Tiga Sigli,49000\r\nSimpangulim Idi Rayeuk,49000\r\nSingkil Utara Singkil,49000\r\nSingkil Kab. Aceh Singkil,39000\r\nSingkohor Singkil,49000\r\nSubulussalam,39000\r\nSuka Makmue,39000\r\nSuka Makmur Jantho,49000\r\nSukajaya Sabang,39000\r\nSukakarya Sabang,39000\r\nSultan Daulat Subulussalam,39000\r\nSungai Mas Meulaboh,49000\r\nSungai Raya Idi Rayeuk,49000\r\nSuro Baru Singkil,49000\r\nSusoh Blangpidie,49000\r\nSyamtalira Aron Lhoksukon,49000\r\nSyamtalira Bayu Lhoksukon,49000\r\nSyiah Kuala Bandaaceh,26000\r\nSyiah Kuala Simpang 3 Redelon,49000\r\nTakengon,39000\r\nTamiang Hulu Kualasimpang,49000\r\nTanah Jambo Aye Lhoksukon,49000\r\nTanah Luas Lhoksukon,49000\r\nTanah Pasir Lhoksukon,49000\r\nTangantangan Blangpidie,49000\r\nTangse Sigli,49000\r\nTapaktuan Kab. Aceh Selatan,39000\r\nTerangon Blangkejeren,49000\r\nTeripejaya Blangkejeren,49000\r\nTeunom Krueng Sabee,49000\r\nTimang Gajah Simpang Tiga,49000\r\nTiro/truseb Sigli,49000\r\nTiteue/keumala Sigli,49000\r\nTrienggading Meureudu,49000\r\nTrumon Timur Tapaktuan,49000\r\nTrumon Tapaktuan,49000\r\nUlee Kareng Bandaaceh,26000\r\nUlim Meureudu,49000\r\nWih Pesam Simpang Tiga Redelon,49000\r\nWoyla Barat Meulaboh,49000\r\nWoyla Timur Meulaboh,49000\r\nWoyla Meulaboh,49000\r\n', 0),
(1231, 0, 'jne_oke', 'jne_oke_sort_order', '1', 0),
(1230, 0, 'jne_oke', 'jne_oke_status', '1', 0),
(1229, 0, 'jne_oke', 'jne_oke_tax_class_id', '0', 0),
(1239, 0, 'jne_oke', 'jne_oke_4_status', '1', 0),
(1240, 0, 'jne_oke', 'jne_oke_5_rate', 'Air Besi Arga Makmur,37000\r\nAir Napal Argamakmur,37000\r\nAir Periukan Tais,37000\r\nArgamakmur Kab. Bengkulu Utara,29000\r\nBatik Nau Argamakmur,37000\r\nBengkulu,18000\r\nBermani Ilir Kepahiang,37000\r\nBermani Ulu Curup,37000\r\nCurup Kab. Rejang Lebong,29000\r\nGading Cempaka Bengkulu,18000\r\nGiri Mulyo Argamakmur,37000\r\nIlir Talo Tais,37000\r\nKampung Melayu Bengkulu,18000\r\nKarang Tinggi Argamakmur,37000\r\nKaur Selatan Kaur,29000\r\nKaur Tengah Kaur,29000\r\nKaur Utara Kaur,29000\r\nKaur Kab. Kaur,29000\r\nKedurang Manna,37000\r\nKepahiang Kab. Kepahiang,29000\r\nKerkap Argamakmur,37000\r\nKetahun Argamakmur,37000\r\nKinal Kaur,37000\r\nKota Manna Kab. Bengkulu Selatan,29000\r\nKota Padang Curup,37000\r\nLais Argamakmur,37000\r\nLebong,29000\r\nLebong Atas Lebong,29000\r\nLebong Selatan Lebong,29000\r\nLebong Utara Lebong,29000\r\nLebong. Teng Lebong,29000\r\nLubuk Sandi Tais,37000\r\nMaje Kaur,37000\r\nManna Kota Manna,37000\r\nMuara Bangkahulu Bengkulu,18000\r\nMuara Nasal Kaur,37000\r\nPadang Jaya Argamakmur,37000\r\nPadang Ulak Tanding Curup,37000\r\nPagar Jati Argamakmur,37000\r\nPematang Tiga Argamakmur,37000\r\nPino Manna,37000\r\nPinoraya Manna,37000\r\nPondok Kelapa Argamakmur,37000\r\nPutri Hijau Argamakmur,37000\r\nRatu Agung Bengkulu,18000\r\nRatu Samban Bengkulu,18000\r\nRimbo Pengadang Lebong,37000\r\nSeginim Manna,37000\r\nSelebar Bengkulu,18000\r\nSeluma Barat Tais,37000\r\nSeluma Selatan Tais,37000\r\nSeluma Timur Tais,37000\r\nSeluma Utara Tais,37000\r\nSeluma Tais,37000\r\nSelupu Rejang Curup,37000\r\nSemidang Alas Maras Tais,37000\r\nSemidang Alas Tais,37000\r\nSindang Kelingi Curup,37000\r\nSukaraja Tais,37000\r\nSungai Serut Bengkulu,18000\r\nTaba Penanjung Argamakmur,37000\r\nTais Kab. Seluma,29000\r\nTalang Empat Argamakmur,37000\r\nTalo,37000\r\nTalokecil Tais,37000\r\nTanjung Kemuning Kaur,37000\r\nTebat Karai Kepahiang,37000\r\nTeluk Segara Bengkulu,18000\r\nUjan Mas Kepahiang,37000\r\nUlu Talo,37000\r\n                                                      ', 0),
(1241, 0, 'jne_oke', 'jne_oke_5_status', '1', 0),
(1242, 0, 'jne_oke', 'jne_oke_6_rate', ' Bambanglipuro Bantul,22000\r\nBanguntapan Bantul,22000\r\nBantul Kab. Bantul,12000\r\nBerbah Sleman,22000\r\nCangkringan Sleman,22000\r\nDanurejan Yogyakarta,12000\r\nDepok Sleman,22000\r\nDlingo Bantul,22000\r\nGalur Wates,22000\r\nGamping Sleman,22000\r\nGedangsari Wonosari,22000\r\nGedongtengen Yogyakarta,12000\r\nGirimulyo Wates,22000\r\nGirisubo Wonosari,22000\r\nGodean Sleman,22000\r\nGondokusuman Yogyakarta,12000\r\nGondomanan Yogyakarta,12000\r\nImogiri Bantul,22000\r\nJetis Bantul,22000\r\nJetis Yogyakarta,12000\r\nKalasan Sleman,22000\r\nKalibawang Wates,22000\r\nKarangmojo Wonosari,22000\r\nKasihan Bantul,22000\r\nKokap Wates,22000\r\nKotagede Yogyakarta,12000\r\nKraton Yogyakarta,12000\r\nKretek Bantul,22000\r\nLendah Wates,22000\r\nMantrijeron Yogyakarta,12000\r\nMergangsan Yogyakarta,12000\r\nMinggir Sleman,22000\r\nMlati Sleman,22000\r\nMoyudan Sleman,22000\r\nNanggulan Wates,22000\r\nNgaglik Sleman,22000\r\nNgampilan Yogyakarta,12000\r\nNgawen Wonosari,22000\r\nNgemplak Sleman,22000\r\nNglipar Wonosari,22000\r\nPajangan Bantul,22000\r\nPakem Sleman,22000\r\nPakualaman Yogyakarta,12000\r\nPaliyan Wonosari,22000\r\nPandak Bantul,22000\r\nPanggang Wonosari,22000\r\nPanjatan Wates,22000\r\nPatuk Wonosari,22000\r\nPengasih Wates,22000\r\nPiyungan Bantul,22000\r\nPlayen Wonosari,22000\r\nPleret Bantul,22000\r\nPonjong Wonosari,22000\r\nPrambanan Sleman,12000\r\nPundong Bantul,22000\r\nPurwosari Wonosari,22000\r\nRongkop Wonosari,22000\r\nSamigaluh Wates,22000\r\nSanden Bantul,22000\r\nSaptosari Wonosari,22000\r\nSedayu Bantul,22000\r\nSemanu Wonosari,22000\r\nSemin Wonosari,22000\r\nSentolo Wates,22000\r\nSewon Bantul,22000\r\nSeyegan Sleman,22000\r\nSleman Kab. Sleman,12000\r\nSrandakan Bantul,22000\r\nTanjungsari Wonosari,22000\r\nTegalrejo Yogyakarta,12000\r\nTemon Wates,22000\r\nTempel Sleman,22000\r\nTepus Wonosari,22000\r\nTuri Sleman,22000\r\nUmbulharjo Yogyakarta,12000\r\nWates Kab. Kulon Progo,17000\r\nWirobrajan Yogyakarta,12000\r\nWonosari Kab. Gn. Kidul,17000\r\nYogyakarta,12000\r\n                                   ', 0),
(1243, 0, 'jne_oke', 'jne_oke_6_status', '1', 0),
(1244, 0, 'jne_oke', 'jne_oke_7_rate', ' Cakung  Jakarta Timur,8000\r\nCempaka Putih  Jakarta Pusat,8000\r\nCengkareng  Jakarta Barat,8000\r\nCilandak Jakarta Selatan,8000\r\nCilincing  Jakarta Utara,8000\r\nCipayung  Jakarta Timur,8000\r\nCiracas Jakarta Timur,8000\r\nDuren Sawit  Jakarta Timur,8000\r\nGambir  Jakarta Pusat,8000\r\nGrogol  Jakarta Barat,8000\r\nJagakarsa  Jakarta Selatan,8000\r\nJakarta,8000\r\nJakarta Barat,8000\r\nJakarta Pusat,8000\r\nJakarta Selatan,8000\r\nJakarta Timur,8000\r\nJakarta Utara,8000\r\nJatinegara  Jakarta Timur,8000\r\nJohar Baru  Jakarta Pusat,8000\r\nKalideres  Jakarta Barat,8000\r\nKebayoran Baru Jkt Selatan,8000\r\nKebayoran Lama Jkt Selatan,8000\r\nKebon Jeruk  Jakarta Barat,8000\r\nKelapa Gading  Jakarta Utara,8000\r\nKemayoran  Jakarta Pusat,8000\r\nKembangan  Jakarta Barat,8000\r\nKep. Seribu Selatan,8000\r\nKep. Seribu Utara,8000\r\nKoja  Jakarta Utara,8000\r\nKramat Jati  Jakarta Timur,8000\r\nMakassar  Jakarta Timur,8000\r\nMampang Prapatan Jkt Selatan,8000\r\nMatraman  Jakarta Timur,8000\r\nMenteng  Jakarta Pusat,8000\r\nPademangan  Jakarta Utara,8000\r\nPalmerah  Jakarta Barat,8000\r\nPancoran  Jakarta Selatan,8000\r\nPasar Minggu  Jakarta Selatan,8000\r\nPasar Rebo  Jakarta Timur,8000\r\nPenjaringan  Jakarta Utara,8000\r\nPesanggrahan  Jakarta Selatan,8000\r\nPulau Pramuka,8000\r\nPulo Gadung Jakarta Timur,8000\r\nSawah Besar  Jakarta Pusat,8000\r\nSenen  Jakarta Pusat,8000\r\nSetiabudi  Jakarta Selatan,8000\r\nTaman Sari  Jakarta Barat,8000\r\nTambora Jakarta Barat,8000\r\nTanah Abang Jakarta Pusat,8000\r\nTanjung Priok Jakarta Utara,8000\r\nTebet Jakarta Selatan,8000\r\n                                   ', 0),
(1245, 0, 'jne_oke', 'jne_oke_7_status', '1', 0),
(1246, 0, 'jne_oke', 'jne_oke_8_rate', ' Anggrek Kwandang,65000\r\nAnggrek Limboto,65000\r\nAtinggola Limboto,65000\r\nAtinggota Kwandang,65000\r\nBatudaa Limboto,65000\r\nBoliyohuto Limboto,65000\r\nBonepante Suwawa,65000\r\nBongomeme Limboto,65000\r\nBotumoito Tilamuta,65000\r\nDulupi Tilamuta,65000\r\nDungingi Gorontalo,37000\r\nGorontalo,37000\r\nKabila Suwawa,65000\r\nKota Barat Gorontalo,37000\r\nKota Selatan Gorontalo,37000\r\nKota Timur Gorontalo,37000\r\nKota Utara Gorontalo,37000\r\nKwandang Kab. Gorontalo Utara,52000\r\nLemito Marisa,65000\r\nLimboto Barat Limboto,52000\r\nLimboto Kab. Gorontalo,52000\r\nMananggu Tilamuta,65000\r\nMarisa Kab. Pahuwato,52000\r\nMootilango Limboto,65000\r\nPaguat Marisa,65000\r\nPaguyaman Tilamuta,65000\r\nPatilanggio Marisa,65000\r\nPopayato Marisa,65000\r\nPulubala Limboto,65000\r\nRandangan Marisa,65000\r\nSumalata Kwandang,65000\r\nSumalata Limboto,65000\r\nSuwawa Kab. Bone Bolango,52000\r\nTaluditi Marisa,65000\r\nTapa Suwawa,65000\r\nTelaga Limboto,65000\r\nTibawa Limboto,65000\r\nTilamuta Kab. Boalemo,52000\r\nTolangohula Limboto,65000\r\nTolinggula Limboto,65000\r\nTolingula Kwandang,65000\r\nWonosari Tilamuta,65000\r\n                                   ', 0),
(1247, 0, 'jne_oke', 'jne_oke_8_status', '1', 0),
(1248, 0, 'jne_oke', 'jne_oke_9_rate', ' Air Hangat Timur Sungaipenuh,44000\r\nAir Hangat Sungaipenuh,44000\r\nBajubang Muarabulian,44000\r\nBangko Kab. Merangin,35000\r\nBatang Merangin Sungaipenuh,44000\r\nBathin II Babeko Muarabungo,44000\r\nBatin XXIV Muarabulian,44000\r\nBetara Kualatungkal,44000\r\nDanau Kerinci Sungaipenuh,44000\r\nDanau Teluk Jambi,16000\r\nDendang Muarasabak,44000\r\nGunung Kerinci Sungaipenuh,44000\r\nHamparan Rawang Sungaipenuh,44000\r\nJambi,16000\r\nJambi Luar Kota Sengeti,44000\r\nJambi Selatan Jambi,16000\r\nJambi Timur Jambi,16000\r\nJelutung Jambi,16000\r\nKeliling Danau Sungaipenuh,44000\r\nKota Baru Jambi,16000\r\nKualatungkal,35000\r\nKumpeh Ulu Sengeti,44000\r\nKumpeh Sengeti,44000\r\nLimbur Lb Mengkuang M. Bungo,44000\r\nMandiangin Sarolangun,44000\r\nMaro Sebo Ilir Muarabulian,44000\r\nMarosebo Ulu Muarabulian,44000\r\nMarosebo Sengeti,44000\r\nMendahara Muarasabak,44000\r\nMerlung Kualatungkal,44000\r\nMersam Muarabulian,44000\r\nMestong Sengeti,44000\r\nMuara Limun Sarolangun,44000\r\nMuara Sabak Kab. Tnj Jabung Tmr,35000\r\nMuara Siau Bangko,44000\r\nMuara Tebo,35000\r\nMuarabulian Kab. Batang Hari,35000\r\nMuarabungo Kab. Bungo,35000\r\nMuaratembesi Muarabulian,44000\r\nMuko Muko Batin VII Muarabungo,44000\r\nNipahpanjang Muarasabak,44000\r\nPamenang Bangko,44000\r\nPasar Jambi Jambi,16000\r\nPauh Sarolangun,44000\r\nPelawan Singkut Sarolangun,44000\r\nPelayangan Jambi,16000\r\nPelepat Ilir Muarabungo,44000\r\nPelepat Muarabungo,44000\r\nPemayung Muarabulian,44000\r\nPengabuan Kualatungkal,44000\r\nRantau Pandan Muarabungo,44000\r\nRimbo Bujang Muara Tebo,44000\r\nRimbo Ilir Muara Tebo,44000\r\nRimbo Ulu Muara Tebo,44000\r\nSadu Muarasabak,44000\r\nSarolangun Kab. Sarolangun,35000\r\nSekernan Sengeti,44000\r\nSengeti,35000\r\nSitinjau Laut Sungaipenuh,44000\r\nSumai Muara Tebo,44000\r\nSungai Bahar Sengeti,44000\r\nSungaipenuh Kab. Kerinci,35000\r\nTabir Ulu Bangko,44000\r\nTabir Bangko,44000\r\nTanah Sepenggal Muarabungo,44000\r\nTanah Tumbuh Muarabungo,44000\r\nTebo Ilir Muara Tebo,35000\r\nTebo Tengah Muara Tebo,35000\r\nTebo Ulu Muara Tebo,35000\r\nTelanaipura Jambi,16000\r\nTengah Ilir Muara Tebo,44000\r\nTungkal Ilir Kualatungkal,35000\r\nTungkal Ulu Kualatungkal,35000\r\nVII Koto Muara Tebo,44000\r\n                                   ', 0),
(1249, 0, 'jne_oke', 'jne_oke_9_status', '1', 0);
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1250, 0, 'jne_oke', 'jne_oke_10_rate', '  Agrabinta Cianjur,17000\r\nAndir Bandung,5000\r\nAnjatan Indramayu,18000\r\nArahan  Indramayu ,18000\r\nArcamanik Bandung,5000\r\nArgapura Majalengka,18000\r\nArjasari Soreang,5000\r\nArjawinangun Sumber,18000\r\nAstanaanyar Bandung,5000\r\nAstanajapura Sumber,18000\r\nBabakan Madang Cibinong,9000\r\nBabakan Sumber,18000\r\nBabakancikao Purwakarta,9000\r\nBabakanciparay Bandung,5000\r\nBabelan Cikarang,9000\r\nBaleendah Soreang,5000\r\nBalongan Indramayu,18000\r\nBaluburlimbangan Garut,9000\r\nBandung,5000\r\nBandung Kidul Bandung,5000\r\nBandung Kulon Bandung,5000\r\nBandung Wetan Bandung,5000\r\nBangodua Indramayu,18000\r\nBanjar,7000\r\nBanjaran  Majalengka,18000\r\nBanjaran Soreang,5000\r\nBanjarsari Ciamis,9000\r\nBanjarwangi Garut,9000\r\nBantargadung Sukabumi,17000\r\nBantargebang Bekasi,9000\r\nBantarkalong Singaparna,9000\r\nBantarujeg Majalengka,18000\r\nBanyuresmi Garut,9000\r\nBanyusari Karawang,12000\r\nBaregbeg Ciamis,9000\r\nBaros Sukabumi,9000\r\nBatujajar Ngamprah,9000\r\nBatujaya Karawang,12000\r\nBatununggal Bandung,5000\r\nBayongbong Garut,9000\r\nBeber Sumber,18000\r\nBeji Depok,9000\r\nBekasi,9000\r\nBekasi Barat Bekasi,9000\r\nBekasi Selatan Bekasi,9000\r\nBekasi Timur Bekasi,9000\r\nBekasi Utara Bekasi,9000\r\nBinong Subang,9000\r\nBlanakan Subang,9000\r\nBogor,9000\r\nBogor Barat Bogor,9000\r\nBogor Selatan Bogor,9000\r\nBogor Tengah Bogor,9000\r\nBogor Timur Bogor,9000\r\nBogor Utara Bogor,9000\r\nBojong Soang Soreang,5000\r\nBojong Purwakarta,9000\r\nBojongasih Singaparna. ,9000\r\nBojonggambir Singaparna,9000\r\nBojonggede Cibinong,9000\r\nBojonggenteng Sukabumi,17000\r\nBojongloa Kaler Bandung,5000\r\nBojongloa Kidul Bandug,5000\r\nBojongmanggu Cikarang,9000\r\nBojongpicung Cianjur,17000\r\nBongas Indramayu,18000\r\nBuahdua Sumedang,9000\r\nBungbulang Garut,9000\r\nBungursari Purwakarta,9000\r\nCabangbungin Cikarang,9000\r\nCampaka Mulya Cianjur,17000\r\nCampaka Cianjur,17000\r\nCampaka Purwakarta,9000\r\nCangkuang Soreang,5000\r\nCantigi  Indramayu ,18000\r\nCaringin Cibinong,9000\r\nCaringin Garut,9000\r\nCaringin Sukabumi,17000\r\nCariu Cibinong,9000\r\nCiamis Kab. Ciamis,7000\r\nCiampea Cibinong,9000\r\nCiampel Karawang,9000\r\nCianjur Kab. Cianjur,13000\r\nCiasem Subang,9000\r\nCiawi Gebang Kuningan,18000\r\nCiawi Cibinong,9000\r\nCiawi Singaparna,9000\r\nCibadak Sukabumi,9000\r\nCibalong Garut,9000\r\nCibalong Singaparna,9000\r\nCibarusah Cikarang,9000\r\nCibatu Garut,9000\r\nCibatu Purwakarta,9000\r\nCibeber Cianjur,17000\r\nCibeunying Kaler Bandung,5000\r\nCibeunying Kidul Bandung,5000\r\nCibeureum Kuningan,18000\r\nCibeureum Sukabumi,9000\r\nCibeureum Tasikmalaya,7000\r\nCibingbin Kuningan,18000\r\nCibinong Cianjur,17000\r\nCibinong Kab. Bogor,9000\r\nCibiru Bandung,5000\r\nCibitung Cikarang,9000\r\nCibitung Sukabumi,17000\r\nCibiuk Garut,9000\r\nCibogo Subang,9000\r\nCibuaya Karawang,12000\r\nCibubur Depok,9000\r\nCibugel Sumedang,9000\r\nCibung Bulang Cibinong,9000\r\nCicadas Bandung,5000\r\nCicalengka Soreang,5000\r\nCicantayan Sukabumi,17000\r\nCicendo Bandung,5000\r\nCicurug Sukabumi,17000\r\nCidadap Bandung,5000\r\nCidadap Sukabumi,17000\r\nCidahu Kuningan,18000\r\nCidahu Sukabumi,17000\r\nCidaun Cianjur,17000\r\nCidolog Ciamis,9000\r\nCidolog Sukabumi,17000\r\nCiemas Sukabumi,17000\r\nCigalontang Singaparna,9000\r\nCigandamekar  Kuningan,18000\r\nCigasong  Majalengka,18000\r\nCigedug Garut,9000\r\nCigombong Cibinong,9000\r\nCigudeg Cibinong,9000\r\nCigugur Ciamis,9000\r\nCigugur Kuningan,18000\r\nCihampelas  Ngamprah,9000\r\nCihaurbeuti Ciamis,9000\r\nCihideung Tasikmalaya,7000\r\nCihurip Garut,9000\r\nCijambe Subang,9000\r\nCijati Cianjur,17000\r\nCijeruk Cibinong,9000\r\nCijeungjing Ciamis,9000\r\nCijulang Ciamis,9000\r\nCikadu Cianjur,17000\r\nCikajang Garut,9000\r\nCikakak Sukabumi,17000\r\nCikalong Kulon Cianjur,17000\r\nCikalong Singaparna,9000\r\nCikalongwetan Ngamprah,9000\r\nCikampek Karawang,9000\r\nCikancung Soreang,5000\r\nCikarang Barat Cikarang,9000\r\nCikarang Pusat  Cikarang,9000\r\nCikarang Selatan  Cikarang,9000\r\nCikarang Timur,9000\r\nCikarang Utara,9000\r\nCikarang Kab. Bekasi,9000\r\nCikatomas Singaparna,9000\r\nCikaum Subang,9000\r\nCikedung Indramayu,18000\r\nCikelet Garut,9000\r\nCikembar Sukabumi,17000\r\nCikidang Sukabumi,17000\r\nCikijing Majalengka,18000\r\nCikole Sukabumi,9000\r\nCikoneng Ciamis,9000\r\nCilaku Cianjur,17000\r\nCilamaya Wetan Karawang,12000\r\nCilamaya Karawang,12000\r\nCilawu Garut,9000\r\nCilebak Kuningan,18000\r\nCilebar Karawang,12000\r\nCiledug Sumber,18000\r\nCilengkrang Soreang,5000\r\nCileungsi Cibinong,9000\r\nCileunyi Soreang,5000\r\nCililin Ngamprah,9000\r\nCilimus Kuningan,18000\r\nCimahi,5000\r\nCimahi Selatan Cimahi,5000\r\nCimahi Tengah Cimahi,5000\r\nCimahi Utara Cimahi,5000\r\nCimahi Kuningan ,18000\r\nCimalaka Sumedang,9000\r\nCimanggis Depok,9000\r\nCimanggung Sumedang,9000\r\nCimaragas Ciamis,9000\r\nCimareme Ngamprah,5000\r\nCimaung Soreang,5000\r\nCimenyan Soreang,5000\r\nCimerak Ciamis,9000\r\nCineam Singaparna,9000\r\nCingambul  Majalengka,18000\r\nCiniru Kuningan ,18000\r\nCiomas Cibinong,9000\r\nCipaku Ciamis,9000\r\nCipanas Cianjur,17000\r\nCiparay Soreang,5000\r\nCipatat Ngamprah,9000\r\nCipatujah Singaparna,9000\r\nCipedes Tasikmalaya,7000\r\nCipeundeuy Ngamprah,9000\r\nCipeundeuy Subang,9000\r\nCipicung Kuningan,18000\r\nCipongkor Ngamprah,9000\r\nCipunagara Subang,9000\r\nCiracap Sukabumi,17000\r\nCiranjang Cianjur,17000\r\nCirebon,9000\r\nCirebon Barat Cirebon,9000\r\nCirebon Selatan Sumber,18000\r\nCirebon Utara Sumber,9000\r\nCireunghas Sukabumi,17000\r\nCisaat Sukabumi,9000\r\nCisaga Ciamis. ,9000\r\nCisalak Subang,9000\r\nCisarua Cibinong,9000\r\nCisarua Ngamprah,9000\r\nCisarua Sumedang,9000\r\nCisayong Singaparna,9000\r\nCiseeng Cibinong,9000\r\nCisewu Garut,9000\r\nCisitu Sumedang,9000\r\nCisolok Sukabumi,17000\r\nCisompet Garut,9000\r\nCisurupan Garut,9000\r\nCitamiang Sukabumi,9000\r\nCiteureup Cibinong,9000\r\nCiwaringin Sumber,18000\r\nCiwaru  Kuningan ,18000\r\nCiwidey Soreang,9000\r\nCoblong Bandug,5000\r\nCompreng Subang,9000\r\nConggeang Sumedang,9000\r\nCugenang Cianjur,17000\r\nCulamega Singaparna,9000\r\nCurugkembar Sukabumi,17000\r\nDarangdan Purwakarta,9000\r\nDarma Kuningan,18000\r\nDarmaraja Sumedang,9000\r\nDawuan Majalengka,18000\r\nDayeuhkolot Soreang,5000\r\nDepok,9000\r\nDepok Sumber,18000\r\nDramaga Cibinong,9000\r\nDukupuntang Sumber,18000\r\nGabus Wetan Indramayu,18000\r\nGaneas Sumedang,9000\r\nGantar  Indramayu ,18000\r\nGarawangi Kuningan,18000\r\nGarut,7000\r\nGarut Kota  Garut,7000\r\nGebang Sumber,18000\r\nGegerbitung Sukabumi,17000\r\nGegesik Sumber,18000\r\nGekbrong Cianjur,17000\r\nGempol Sumber,18000\r\nGunung Putri Cibinong,9000\r\nGunung Puyuh Sukabumi,9000\r\nGunung Sindur Cibinong,9000\r\nGunung Tanjung Singaparna,9000\r\nGunungguruh Sukabumi,17000\r\nGununghalu Ngamprah,9000\r\nHantara Kuningan,18000\r\nHarjamukti  Cirebon ,9000\r\nHaurgeulis Indramayu,18000\r\nIbun Soreang,5000\r\nIndihiang Tasikmalaya,7000\r\nIndramayu,14000\r\nJalaksana Kuningan,18000\r\nJalan Gagak Subang,9000\r\nJamanis Singaparna,9000\r\nJampang Kulon Sukabumi,17000\r\nJampang Tengah Sukabumi,17000\r\nJapara Kuningan,18000\r\nJasinga Cibinong,9000\r\nJatiasih Bekasi,9000\r\nJatibarang Indramayu,14000\r\nJatigede Sumedang,9000\r\nJatiluhur Purwakarta,9000\r\nJatinagara Ciamis,9000\r\nJatinangor Sumedang,5000\r\nJatinuggal Sumedang,9000\r\nJatisampurna Bekasi,9000\r\nJatisari Karawang,9000\r\nJatitujuh Majalengka,18000\r\nJatiwangi Majalengka,14000\r\nJatiwaras Singaparna,9000\r\nJayakerta Karawang,12000\r\nJonggol Cibinong,9000\r\nJuntinyuat Indramayu,18000\r\nKabandungan Sukabumi,17000\r\nKadipaten Majalengka,14000\r\nKadipaten Singaparna,9000\r\nKadudampit Sukabumi,17000\r\nKadugede Kuningan,18000\r\nKadungora Garut,9000\r\nKadupandak Cianjur,17000\r\nKalapanunggal Sukabumi,17000\r\nKalibunder Sukabumi,17000\r\nKalijati Subang,9000\r\nKalimanggis Kuningan,18000\r\nKalipucang Ciamis,9000\r\nKaliwedi Sumber,18000\r\nKandanghaur Indramayu,18000\r\nKapetakan Sumber,18000\r\nKarangampel Indramayu,18000\r\nKarangbahagia Cikarang,9000\r\nKarangjaya Singaparna,9000\r\nKarangkancana Kuningan,18000\r\nKarangnunggal Singaparna,9000\r\nKarangpawitan Garut,9000\r\nKarangsembung Sumber,18000\r\nKarangtengah Cianjur,17000\r\nKarangtengah Garut,9000\r\nKarangwareng Sumber,18000\r\nKarawang,9000\r\nKarawang Barat Karawang,9000\r\nKarawang Timur Karawang,9000\r\nKatapang Soreang,5000\r\nKawali Ciamis,9000\r\nKawalu Tasikmalaya,7000\r\nKebonpedes Sukabumi,17000\r\nKedawung Sumber ,9000\r\nKedokan Bunder  Indramayu ,18000\r\nKedungwaringin Cikarang,9000\r\nKejaksan  Cirebon ,9000\r\nKemang Cibinong,9000\r\nKersamanah Garut,9000\r\nKertajati Majalengka,18000\r\nKertasari Soreang,5000\r\nKertasemaya Indramayu,18000\r\nKesambi Cirebon ,9000\r\nKiaracondong Bandung,5000\r\nKiarapedes Purwakarta,9000\r\nKlangenan Sumber,18000\r\nKlapanunggal Cibinong,9000\r\nKlari Karawang,9000\r\nKotabaru Karawang,9000\r\nKramatmulya Kuningan,18000\r\nKrangkeng Indramayu,18000\r\nKroya Indramayu,18000\r\nKuningan Kab Kuningan,14000\r\nKutawaluya Karawang,12000\r\nLakbok Ciamis,9000\r\nLangensari Banjar,7000\r\nLangkap Lancar Ciamis,9000\r\nLebakwangi Kuningan,18000\r\nLegon Kulon Subang,9000\r\nLelea Indramayu,18000\r\nLeles Cianjur,17000\r\nLeles Garut,9000\r\nLemah Sugih Majalengka,18000\r\nLemahabang Wadas Karawang,9000\r\nLemahabang Sumber,18000\r\nLemahwungkuk  Cirebon ,9000\r\nLembang Ngamprah,5000\r\nLembur Situ Sukabumi,9000\r\nLengkong Bandung,5000\r\nLengkong Sukabumi,17000\r\nLeuwigoong Garut,9000\r\nLeuwiliang Cibinong,9000\r\nLeuwimunding Majalengka,18000\r\nLeuwisadeng Cibinong,9000\r\nLeuwisari Singaparna,9000\r\nLigung Majalengka,18000\r\nLimo Depok,9000\r\nLohbener Indramayu,18000\r\nLosarang Indramayu,18000\r\nLosari Sumber,14000\r\nLumbung Ciamis,9000\r\nLuragung Kuningan,18000\r\nMaja Majalengka,18000\r\nMajalaya Karawang,9000\r\nMajalaya Soreang,7000\r\nMajalengka Kab Majalengka,14000\r\nMalangbong Garut,9000\r\nMaleber Kuningan,18000\r\nMande Cianjur,17000\r\nMandirancan Kuningan,18000\r\nMangkubumi Tasikmalaya,7000\r\nMangunjaya Ciamis,9000\r\nMangunreja Singaparna,9000\r\nManiis Purwakarta,9000\r\nManonjaya Singaparna,9000\r\nMargaasih Soreang,9000\r\nMargacinta Bandung,5000\r\nMargahayu Soreang,5000\r\nMedan Satria Bekasi,9000\r\nMegamendung Cibinong,9000\r\nMekarmukti Garut,9000\r\nMuaragembong Cikarang,9000\r\nMundu Sumber,9000\r\nMustika Jaya Bekasi,9000\r\nNagrak Sukabumi,17000\r\nNagreg Soreang,9000\r\nNanggung Cibinong,9000\r\nNaringgul Cianjur,17000\r\nNgamprah Kab. Bandung Brt,5000\r\nNusaherang Kuningan,18000\r\nNyalindung Sukabumi,17000\r\nPabedilan Sumber,18000\r\nPabuaran Subang,9000\r\nPabuaran Sukabumi,17000\r\nPabuaran Sumber,18000\r\nPacet Cianjur,17000\r\nPacet Soreang,9000\r\nPadaherang Ciamis,9000\r\nPadakembang Singaparna,9000\r\nPadalarang Ngamprah,9000\r\nPagaden Subang,9000\r\nPagelaran Cianjur,17000\r\nPagerageung Singaparna,9000\r\nPakenjeng Garut,9000\r\nPakisjaya Karawang,12000\r\nPalasah Majalengka,18000\r\nPalimanan Sumber,14000\r\nPamanukan Subang,9000\r\nPamarican Ciamis,9000\r\nPameungpeuk Garut,9000\r\nPameungpeuk Soreang,5000\r\nPamijahan Cibinong,9000\r\nPamulihan Garut,9000\r\nPamulihan Sumedang,9000\r\nPanawangan Ciamis,9000\r\nPancalang Kuningan,18000\r\nPancatengah Singaparna,9000\r\nPancoranmas Depok,9000\r\nPangalengan Soreang,9000\r\nPangandaran Ciamis,9000\r\nPangenan Sumber,18000\r\nPangkalan Karawang,12000\r\nPanguragan Sumber,18000\r\nPanjalu Ciamis,9000\r\nPanumbangan Ciamis,9000\r\nPanyingkiran Majalengka,18000\r\nParakansalak Sukabumi,17000\r\nParigi Ciamis,9000\r\nParongpong Ngamprah,9000\r\nParung Cibinong,9000\r\nParungkuda Sukabumi,17000\r\nParungpanjang Cibinong,9000\r\nParungponteng Singaparna,9000\r\nPasaleman Sumber,18000\r\nPasawahan Kuningan,18000\r\nPasawahan Purwakarta,9000\r\nPaseh Soreang,9000\r\nPaseh Sumedang,9000\r\nPasirjambu Soreang,9000\r\nPasirwangi Garut,9000\r\nPataruman Banjar,7000\r\nPatokbeusi Subang,9000\r\nPebayuran Cikarang,9000\r\nPedes Karawang,12000\r\nPekalipan Cirebon ,9000\r\nPelabuhanratu Sukabumi,13000\r\nPengatikan Garut,9000\r\nPeundeuy Garut,9000\r\nPlered  Sumber,9000\r\nPlered Purwakarta,9000\r\nPlumbon Sumber,18000\r\nPondok Melati Bekasi,9000\r\nPondokgede Bekasi,9000\r\nPondoksalam Purwakarta,9000\r\nPurabaya Sukabumi,17000\r\nPurwadadi Ciamis,9000\r\nPurwadadi Subang,9000\r\nPurwaharja Banjar,7000\r\nPurwakarta Kab. Purwakarta,7000\r\nPurwasari Karawang,9000\r\nPusakanagara Subang,9000\r\nPuspahiang Singaparna,9000\r\nRajadesa Ciamis,9000\r\nRajagaluh Majalengka,18000\r\nRajapolah Singaparna,9000\r\nRanca Bungur Cibinong,9000\r\nRancabali Soreang,9000\r\nRancaekek Soreang,5000\r\nRancah Ciamis,9000\r\nRancakalong Sumedang,9000\r\nRancasari Bandung,5000\r\nRawalumbu Bekasi,9000\r\nRawamerta Karawang,9000\r\nRegol Bandung,5000\r\nRengasdengklok Karawang,9000\r\nRongga  Ngamprah,9000\r\nRumpin Cibinong,9000\r\nSadananya Ciamis,9000\r\nSagalaherang Subang,9000\r\nSagaranten Sukabumi,17000\r\nSalawu Singaparna,9000\r\nSalopa Singaparna,9000\r\nSamarang Garut,9000\r\nSariwangi Singaparna,9000\r\nSawangan,9000\r\nSedong Sumber,18000\r\nSelaawi Garut,9000\r\nSelajambe Kuningan,18000\r\nSerang Baru Cikarang,9000\r\nSetu Cikarang,9000\r\nSidamulih Ciamis,9000\r\nSimpenan Sukabumi,17000\r\nSindang Indramayu ,18000\r\nSindangagung Kuningan,18000\r\nSindangbarang Cianjur,17000\r\nSindangkasih Ciamis,9000\r\nSindangkerta Ngamprah,9000\r\nSindangwangi  Majalengka,18000\r\nSingajaya Garut,9000\r\nSingaparna Kab. Tasikmalaya,7000\r\nSituraja Sumedang,9000\r\nSliyeg Indramayu,18000\r\nSodonghilir Singaparna,9000\r\nSolokan Jeruk Soreang,5000\r\nSoreang Kab. Bandung,5000\r\nSubang Kab. Subang,7000\r\nSubang Kuningan,18000\r\nSucinaraja Garut,9000\r\nSukabumi,9000\r\nSukadana Ciamis,9000\r\nSukagumiwang  Indramayu ,18000\r\nSukahaji Majalengka,18000\r\nSukahening Singaparna,9000\r\nSukajadi Bandung,5000\r\nSukajaya Cibinong,9000\r\nSukakarya Cikarang,9000\r\nSukalarang Sukabumi,17000\r\nSukaluyu Cianjur,17000\r\nSukamakmur Cibinong,9000\r\nSukanegara Cianjur,17000\r\nSukaraja Cibinong,9000\r\nSukaraja Singaparna,9000\r\nSukaraja Sukabumi,9000\r\nSukarame Singaparna,9000\r\nSukaratu Singaparna,9000\r\nSukaresik Singaparna,9000\r\nSukaresmi Cianjur,17000\r\nSukaresmi Garut,9000\r\nSukasari Bandung,5000\r\nSukasari Purwakarta,9000\r\nSukasari Sumedang,9000\r\nSukatani Cikarang,9000\r\nSukatani Purwakarta,9000\r\nSukawangi Cikarang,9000\r\nSukawening Garut,9000\r\nSukmajaya Depok,9000\r\nSukra Indramayu,18000\r\nSumber Jaya Majalengka,18000\r\nSumber Kab Cirebon,14000\r\nSumedang,7000\r\nSumedang Selatan Sumedang,7000\r\nSumedang Utara Sumedang,7000\r\nSumurbandung Bandung,5000\r\nSurade Sukabumi,17000\r\nSurian Sumedang,9000\r\nSusukan Lebak Sumber,18000\r\nSusukan Sumber,18000\r\nTajurhalang Cibinong,9000\r\nTakokak Cianjur,17000\r\nTalaga Majalengka,18000\r\nTalagasari Karawang,9000\r\nTalegong Garut,9000\r\nTamansari Cibinong,9000\r\nTamansari Tasikmalaya,7000\r\nTambak Sari Ciamis,9000\r\nTambelang Cikarang,9000\r\nTambun Selatan Cikarang,9000\r\nTambun Utara Cikarang,9000\r\nTanah Sereal Bogor,9000\r\nTanggeung Cianjur,17000\r\nTanjungjaya Singaparna,9000\r\nTanjungkerta Sumedang,9000\r\nTanjungmedar Sumedang,9000\r\nTanjungsari Cibinong,9000\r\nTanjungsari Sumedang,9000\r\nTanjungsiang Subang,9000\r\nTaraju Singaparna,9000\r\nTarogong Kaler Garut,9000\r\nTarogong Kidul Garut,9000\r\nTarumajaya Cikarang,9000\r\nTasikmalaya,7000\r\nTawang Tasikmalaya,7000\r\nTegalbuleud Sukabumi,17000\r\nTegalwaru Karawang,12000\r\nTegalwaru Purwakarta,9000\r\nTeluk Jambe Barat Karawang,9000\r\nTeluk Jambe Timur Karawang,9000\r\nTempuran Karawang,12000\r\nTengah Tani  Sumber ,9000\r\nTenjo Cibinong,9000\r\nTenjolaya Cibinong,9000\r\nTirtajaya Karawang,12000\r\nTirtamulya Karawang,9000\r\nTomo Sumedang,9000\r\nTrisi  Indramayu ,18000\r\nUjungberung Bandung,5000\r\nUjungjaya Sumedang,9000\r\nWado Sumedang,9000\r\nWaled Sumber,18000\r\nWaluran Sukabumi,17000\r\nWanaraja Garut,9000\r\nWanayasa Purwakarta,9000\r\nWarudoyong Sukabumi,9000\r\nWarungkiara Sukabumi,17000\r\nWarungkondang Cianjur,17000\r\nWeru Sumber,18000\r\nWidasari Indramayu,18000\r\n                                  ', 0),
(1251, 0, 'jne_oke', 'jne_oke_10_status', '1', 0),
(1252, 0, 'jne_oke', 'jne_oke_11_rate', ' Adimulyo Kebumen,23000\r\nAdipala Cilacap,19000\r\nAdiwerna Slawi,22000\r\nAjibarang Purwokerto,17000\r\nAliyan Kebumen,23000\r\nAmbal Kebumen,23000\r\nAmbarawa Ungaran,17000\r\nAmpel Boyolali,22000\r\nAmpelgading Pemalang,22000\r\nAndong Boyolali,22000\r\nArgomulyo Salatiga,17000\r\nAyah Kebumen,23000\r\nBae Kudus,22000\r\nBagelen Purworejo,23000\r\nBaki Sukoharjo,22000\r\nBalapulang Slawi,22000\r\nBalen Bojonegoro,22000\r\nBancak Ungaran,22000\r\nBandar Batang,22000\r\nBandongan Magelang,23000\r\nBangsri Jepara,22000\r\nBanjarejo Blora,22000\r\nBanjarharjo Brebes,22000\r\nBanjarmangu Banjarnegara,22000\r\nBanjarnegara Kab. Banjarnegara,17000\r\nBanjarsari Solo,12000\r\nBansari Temanggung,23000\r\nBantarbolang Pemalang,22000\r\nBantarkawung Brebes,22000\r\nBantasari Cilacap,19000\r\nBanyubiru Ungaran,22000\r\nBanyudono Boyolali,22000\r\nBanyumanik Semarang,12000\r\nBanyumas Purwokerto,17000\r\nBanyuputih Batang,22000\r\nBanyuurip Purworejo,23000\r\nBatang  Kab Batang,17000\r\nBatangan Pati,22000\r\nBatealit Jepara,22000\r\nBatur Banjarnegara,22000\r\nBaturaden Purwokerto,22000\r\nBaturetno. Wonogiri,22000\r\nBatuwarno. Wonogiri,22000\r\nBaureno Bojonegoro,22000\r\nBawang Banjarnegara,22000\r\nBawang Batang,22000\r\nBawen Ungaran,22000\r\nBayan Purworejo,23000\r\nBayat Klaten,22000\r\nBejen Temanggung,23000\r\nBelik Pemalang,22000\r\nBendosari Sukoharjo,22000\r\nBener Purworejo,23000\r\nBergas Ungaran,22000\r\nBinangun Cilacap,19000\r\nBlado Batang,22000\r\nBlora Kab. Blora,17000\r\nBobotsari Purbalingga,22000\r\nBodeh Pemalang,22000\r\nBogorejo Blora,22000\r\nBoja Kendal,22000\r\nBojonegoro Kab. Bojonegoro,17000\r\nBojong Kajen,22000\r\nBojong Slawi,22000\r\nBojongsari Purbalingga,22000\r\nBonang Demak,22000\r\nBonorowo Kebumen,23000\r\nBorobudur Magelang,23000\r\nBoyolali Kab. Boyolali,17000\r\nBrangsong Kendal,22000\r\nBrati Purwodadi,22000\r\nBrebes Kab. Brebes,17000\r\nBringin Ungaran,22000\r\nBruno Purworejo,23000\r\nBuaran Kajen,22000\r\nBuayan Kebumen,23000\r\nBubulan Bojonegoro,22000\r\nBukateja Purbalingga,22000\r\nBulakamba Brebes,22000\r\nBulu Rembang,22000\r\nBulu Sukoharjo,22000\r\nBulu Temanggung,23000\r\nBulukerto. Wonogiri,22000\r\nBuluspesantren Kebumen,23000\r\nBumiayu Brebes,17000\r\nBumijawa Slawi,22000\r\nButuh Purworejo,23000\r\nCandimulyo Magelang,23000\r\nCandiroto Temanggung,23000\r\nCandisari Semarang,12000\r\nCawas Klaten,22000\r\nCeper Klaten,22000\r\nCepiring Kendal,22000\r\nCepogo Boyolali,22000\r\nCepu Blora,17000\r\nCilacap,13000\r\nCilacap Selatan Cilacap,13000\r\nCilacap Tengah Cilacap,13000\r\nCilacap Utara Cilacap,13000\r\nCilongok Purwokerto,22000\r\nCimanggu Cilacap,19000\r\nCipari Cilacap,19000\r\nCluwak Pati,22000\r\nColomadu Karanganyar,22000\r\nComal Pemalang,22000\r\nDander Bojonegoro,22000\r\nDawe Kudus,22000\r\nDayeuhluhur Cilacap,19000\r\nDelanggu Klaten,22000\r\nDemak,17000\r\nDempet Demak,22000\r\nDoro Kajen,22000\r\nDukuhseti Pati,22000\r\nDukuhturi Slawi,22000\r\nDukuhwaru Slawi,22000\r\nDukun Magelang,23000\r\nEromoko. Wonogiri,22000\r\nGabus Pati,22000\r\nGabus Purwodadi,22000\r\nGajah Demak,22000\r\nGajahmungkur Semarang,12000\r\nGandrungmangu Cilacap,19000\r\nGantiwarno Klaten,22000\r\nGarung Wonosobo,23000\r\nGatak Sukoharjo,22000\r\nGayamsari Semarang,12000\r\nGebang Purworejo,23000\r\nGebog Kudus,22000\r\nGemawang Temanggung,23000\r\nGembong Pati,22000\r\nGemolong Sragen,22000\r\nGemuh Kendal,22000\r\nGenuk Semarang,12000\r\nGesi Sragen,22000\r\nGetasan Ungaran,22000\r\nGeyer Purwodadi,22000\r\nGirimarto. Wonogiri,22000\r\nGiritontro. Wonogiri,22000\r\nGiriwoyo. Wonogiri,22000\r\nGodong Purwodadi,22000\r\nGombong Kebumen,23000\r\nGondang Bojonegoro,22000\r\nGondang Sragen,22000\r\nGondangrejo Karanganyar,22000\r\nGrabag Magelang,23000\r\nGrabag Purworejo,23000\r\nGringsing Batang,22000\r\nGrobogan Purwodadi,22000\r\nGrogol Sukoharjo,22000\r\nGubug Purwodadi,22000\r\nGumelar Purwokerto,22000\r\nGunem Rembang,22000\r\nGuntur Demak,22000\r\nGunungpati Semarang,12000\r\nGunungwungkal Pati,22000\r\nJaken Pati,22000\r\nJakenan Pati,22000\r\nJambu Ungaran,22000\r\nJapah Blora,22000\r\nJaten Karanganyar,22000\r\nJati Blora,22000\r\nJati Kudus,22000\r\nJatibarang Brebes,22000\r\nJatilawang Purwokerto,22000\r\nJatinegara Slawi,22000\r\nJatinom Klaten,22000\r\nJatipurno. Wonogiri,22000\r\nJatipuro Karanganyar,22000\r\nJatiroto. Wonogiri,22000\r\nJatisrono. Wonogiri,22000\r\nJatiyoso Karanganyar,22000\r\nJebres Solo,12000\r\nJekulo Kudus,22000\r\nJenar Sragen,22000\r\nJenawi Karanganyar,22000\r\nJepara Kab. Jepara,17000\r\nJepon Blora,22000\r\nJeruklegi Cilacap,19000\r\nJiken Blora,22000\r\nJogonalan Klaten,22000\r\nJumantono Karanganyar,22000\r\nJumapolo Karanganyar,22000\r\nJumo Temanggung,23000\r\nJuwana Pati,22000\r\nJuwangi Boyolali,22000\r\nJuwiring Klaten,22000\r\nKajen Kab. Pekalongan,22000\r\nKajoran Magelang,23000\r\nKaliangkrik Magelang,23000\r\nKalibagor Purwokerto,22000\r\nKalibawang Wonosobo,23000\r\nKalibening Banjarnegara,22000\r\nKaligesing Purworejo,23000\r\nKaligondang Purbalingga,22000\r\nKalijambe Sragen,22000\r\nKalikajar Wonosobo,23000\r\nKalikotes Klaten,22000\r\nKalimanah Purbalingga,22000\r\nKalinyamatan Jepara,22000\r\nKaliori Rembang,22000\r\nKalitidu Bojonegoro,22000\r\nKaliwiro Wonosobo,23000\r\nKaliwungu Kendal,22000\r\nKaliwungu Kudus,22000\r\nKaliwungu Ungaran,22000\r\nKaloran Temanggung,23000\r\n&quot;Kampung Laut Kab. Cilacap\r\n&quot;,19000\r\nKandang Serang Kajen,22000\r\nKandangan Temanggung,23000\r\nKandeman Batang,22000\r\nKangkung Kendal,22000\r\nKanor Bojonegoro,22000\r\nKapas Bojonegoro,22000\r\nKaranganom Klaten,22000\r\nKaranganyar Demak,22000\r\nKaranganyar Kab. Karanganyar,17000\r\nKaranganyar Kajen,22000\r\nKaranganyar Kebumen,23000\r\nKaranganyar Purbalingga,22000\r\nKarangawen Demak,22000\r\nKarangayung Purwodadi,22000\r\nKarangdadap Kajen,22000\r\nKarangdowo Klaten,22000\r\nKaranggayam Kebumen,23000\r\nKaranggede Boyolali,22000\r\nKarangjambu Purbalingga,22000\r\nKarangkobar Banjarnegara,22000\r\nKaranglewas Purwokerto,22000\r\nKarangmalang Sragen,22000\r\nKarangmoncol Purbalingga,22000\r\nKarangnongko Klaten,22000\r\nKarangpandan Karanganyar,22000\r\nKarangpucung Cilacap,19000\r\nKarangreja Purbalingga,22000\r\nKarangsambung Kebumen,23000\r\nKarangtengah Demak,22000\r\nKarangtengah. Wonogiri,22000\r\nKarimunjawa Jepara,0\r\nKartosuro Sukoharjo,17000\r\nKasiman Bojonegoro,22000\r\nKawunganten Cilacap,19000\r\nKayen Pati,22000\r\nKebakkramat Karanganyar,22000\r\nKebasen Purwokerto,22000\r\nKebonagung Demak,22000\r\nKebonarum Klaten,22000\r\nKebumen,18000\r\nKedawung Sragen,22000\r\nKedewan Bojonegoro,22000\r\nKedu Temanggung,23000\r\nKedung Jepara,22000\r\nKedungadem Bojonegoro,22000\r\nKedungbanteng Purwokerto,22000\r\nKedungbanteng Slawi,22000\r\nKedungjati Purwodadi,22000\r\nKedungrejo Cilacap,19000\r\nKedungtuban Blora,22000\r\nKedungwuni Kajen,22000\r\nKejajar Wonosobo,23000\r\nKejobong Purbalingga,22000\r\nKeling Jepara,22000\r\nKemalang Klaten,22000\r\nKemangkon Purbalingga,22000\r\nKembang Jepara,22000\r\nKembaran Purwokerto,22000\r\nKemiri Purworejo,23000\r\nKemranjen Purwokerto,22000\r\nKemusu Boyolali,22000\r\nKendal Kab. Kendal,17000\r\nKepil Wonosobo,23000\r\nKepohbaru Bojonegoro,22000\r\nKerjo Karanganyar,22000\r\nKersana Brebes,22000\r\nKertanegara Purbalingga,22000\r\nKerteg Wonosobo,23000\r\nKesesi Kajen,22000\r\nKesugihan Cilacap,19000\r\nKetanggungan Brebes,22000\r\nKismantoro. Wonogiri,22000\r\nKlambu Purwodadi,22000\r\nKlaten,17000\r\nKlaten Selatan Klaten,22000\r\nKlaten Tengah Klaten,22000\r\nKlaten Utara Klaten,22000\r\nKledung Temanggung,23000\r\nKlego Boyolali,22000\r\nKlirong Kebumen,23000\r\nKradenan Blora,22000\r\nKradenan Purwodadi,22000\r\nKragan Rembang,22000\r\nKramat Slawi,22000\r\nKranggan Temanggung,23000\r\nKroya Cilacap,19000\r\nKudus Kab. Kudus,17000\r\nKunduran Blora,22000\r\nKutasari Purbalingga,22000\r\nKutoarjo Purworejo,23000\r\nKutowinangun Kebumen,23000\r\nKuwarasan Kebumen,23000\r\nLarangan Brebes,22000\r\nLasem Rembang,22000\r\nLaweyan Solo,12000\r\nLebak Barang Kajen,22000\r\nLebaksiu Slawi,22000\r\nLeksono Wonosobo,23000\r\nLimbangan Kendal,22000\r\nLimpung Batang,22000\r\nLoano Purworejo,23000\r\nLosari Brebes,22000\r\nLumbir Purwokerto,22000\r\nMadukara Banjarnegara,22000\r\nMagelang,15000\r\nMagelang Selatan Magelang,15000\r\nMagelang Tengah Magelang,15000\r\nMagelang Utara Magelang,15000\r\nMajenang Cilacap,15000\r\nMalo Bojonegoro,22000\r\nMandiraja Banjarnegara,22000\r\nManisrenggo Klaten,22000\r\nManyaran. Wonogiri,22000\r\nMaos Cilacap,19000\r\nMargadana Tegal,17000\r\nMargasari Slawi,22000\r\nMargomulyo Bojonegoro,22000\r\nMargorejo Pati,22000\r\nMargoyoso Pati,22000\r\nMasaran Sragen,22000\r\nMatesih Karanganyar,22000\r\nMayong Jepara,22000\r\nMejobo Kudus,22000\r\nMertoyudan Magelang,23000\r\nMijen Demak,22000\r\nMijen Semarang,12000\r\nMiri Sragen,22000\r\nMirit Kebumen,23000\r\nMlonggo Jepara,22000\r\nMoga Pemalang,22000\r\nMojogedang Karanganyar,22000\r\nMojolaban Sukoharjo,22000\r\nMojosongo Boyolali,22000\r\nMojotengah Wonosobo,23000\r\nMondokan Sragen,22000\r\nMranggen Demak,22000\r\nMrebet Purbalingga,22000\r\nMungkid Kab. Magelang,18000\r\nMuntilan. Magelang,23000\r\nMusuk Boyolali,22000\r\nNalumsari Jepara,22000\r\nNgablak Magelang,23000\r\nNgadirejo Temanggung,23000\r\nNgadirojo. Wonogiri,22000\r\nNgaliyan Semarang,12000\r\nNgambon Bojonegoro,22000\r\nNgampel Kendal,22000\r\nNgargoyoso Karanganyar,22000\r\nNgaringan Purwodadi,22000\r\nNgasem Bojonegoro,22000\r\nNgawen Blora,22000\r\nNgawen Klaten,22000\r\nNgemplak Boyolali,22000\r\nNgombol Purworejo,23000\r\nNgraho Bojonegoro,22000\r\nNgrampal Sragen,22000\r\nNgulwar Magelang,23000\r\nNguntoronadi. Wonogiri,22000\r\nNguter Sukoharjo,22000\r\nNogosari Boyolali,22000\r\nNusawungu Cilacap,19000\r\nPabelan Ungaran,22000\r\nPadamara Purbalingga,22000\r\nPadangan Bojonegoro,22000\r\nPadureso Kebumen,23000\r\nPagentan Banjarnegara,22000\r\nPagerbarang Slawi,22000\r\nPageruyung Kendal,22000\r\nPaguyangan Brebes,22000\r\nPakis Magelang,23000\r\nPakuncen Purwokerto,22000\r\nPamotan Rembang,22000\r\nPancur Rembang,22000\r\nPangkah Slawi,22000\r\nPaninggaran Kajen,22000\r\nParakan Temanggung,23000\r\nParanggupito Wonogiri,22000\r\nPasar Kliwon Solo,12000\r\nPatean Kendal,22000\r\nPatebon Kendal,22000\r\nPati Kab. Pati,17000\r\nPatikraja Purwokerto,22000\r\nPatimuan Cilacap,19000\r\nPecalungan Batang,22000\r\nPecangaan Jepara,22000\r\nPedan Klaten,22000\r\nPedurungan Semarang,12000\r\nPegandon Kendal,22000\r\nPejagoan Kebumen,23000\r\nPejawaran Banjarnegara,22000\r\nPekalongan,17000\r\nPekalongan Barat Pekalongan,17000\r\nPekalongan Selatan Pekalongan,17000\r\nPekalongan Timur Pekalongan,17000\r\nPekalongan Utara Pekalongan,17000\r\nPemalang Kab. Pemalang,17000\r\nPenawangan Purwodadi,22000\r\nPengadegan Purbalingga,22000\r\nPetanahan Kebumen,23000\r\nPetarukan Pemalang,22000\r\nPetungkriyono Kajen,22000\r\nPituruh Purworejo,23000\r\nPlantungan Kendal,22000\r\nPlupuh Sragen,22000\r\nPolanharjo Klaten,22000\r\nPolokarto Sukoharjo,22000\r\nPoncowarno Kebumen,23000\r\nPracimantoro. Wonogiri,22000\r\nPrambanan Klaten,22000\r\nPrembun Kebumen,23000\r\nPringapus Ungaran,22000\r\nPringsurat Temanggung,23000\r\nPucakwangi Pati,22000\r\nPuhpelem Wonogiri,22000\r\nPulokulon Purwodadi,22000\r\nPulosari Pemalang,22000\r\nPunggelan Banjarnegara,22000\r\nPurbalingga Kab. Purbalingga,17000\r\nPuring Kebumen,23000\r\nPurwanegara Banjarnegara,22000\r\nPurwantoro. Wonogiri,22000\r\nPurwodadi Kab. Grobogan,17000\r\nPurwodadi Purworejo,18000\r\nPurwojati Purwokerto,22000\r\nPurwokerto,17000\r\nPurwokerto Barat Purwokerto,22000\r\nPurwokerto Selatan Purwokerto,22000\r\nPurwokerto Timur Purwokerto,22000\r\nPurwokerto Utara Purwokerto,22000\r\nPurworejo Kab. Purworejo,18000\r\nPurworejo/klampok Banjarnegara,22000\r\nPurwosari Bojonegoro,22000\r\nRakit Banjarnegara,22000\r\nRandublatung Blora,22000\r\nRandudongkal Pemalang,22000\r\nRawalo Purwokerto,22000\r\nReban Batang,22000\r\nRembang Kab. Rembang,17000\r\nRembang Purbalingga,17000\r\nRinginarum Kendal,22000\r\nRowokele Kebumen,23000\r\nRowosari Kendal,22000\r\nSadang Kebumen,23000\r\nSalam Muntilan,23000\r\nSalaman Magelang,23000\r\nSalatiga,17000\r\nSale Rembang,22000\r\nSalem Brebes,22000\r\nSambi Boyolali,22000\r\nSambirejo Sragen,22000\r\nSambong Blora,22000\r\nSambungmacan Sragen,22000\r\nSampang Cilacap,19000\r\nSapuran Wonosobo,23000\r\nSarang Rembang,22000\r\nSawangan Magelang,23000\r\nSawit Boyolali,22000\r\nSayung Demak,22000\r\nSecang Magelang,23000\r\nSedan Rembang,22000\r\nSekar Bojonegoro,22000\r\nSelo Boyolali,22000\r\nSelogiri. Wonogiri,22000\r\nSelomerto Wonosobo,23000\r\nSelopampang Temanggung,23000\r\nSemarang,12000\r\nSemarang Barat Semarang,12000\r\nSemarang Selatan,12000\r\nSemarang Tengah Semarang,12000\r\nSemarang Timur Semarang,12000\r\nSemarang Utara Semarang,12000\r\nSempor Kebumen,23000\r\nSerengan Solo,12000\r\nSidareja Cilacap,19000\r\nSidoharjo Sragen,22000\r\nSidoharjo. Wonogiri,22000\r\nSidomukti Salatiga,17000\r\nSidorejo Salatiga,17000\r\nSigaluh Banjarnegara,22000\r\nSimo Boyolali,22000\r\nSingorojo Kendal,22000\r\nSirampog Brebes,22000\r\nSiwalan Kajen,22000\r\nSlawi Kab. Tegal,17000\r\nSlogohimo. Wonogiri,22000\r\nSluke Rembang,22000\r\nSokaraja Purwokerto,22000\r\nSolo,12000\r\nSomagede Purwokerto,22000\r\nSonggom Brebes,22000\r\nSragen,17000\r\nSragi Kajen,22000\r\nSrumbung Magelang,23000\r\nSruweng Kebumen,23000\r\nSubah Batang,22000\r\nSugihwaras Bojonegoro,22000\r\nSukodono Sragen,22000\r\nSukoharjo,17000\r\nSukoharjo Wonosobo,23000\r\nSukolilo Pati,22000\r\nSukorejo Kendal,22000\r\nSukosewu Bojonegoro,22000\r\nSulang Rembang,22000\r\nSumbang Purwokerto,22000\r\nSumber Rembang,22000\r\nSumberejo Bojonegoro,22000\r\nSumberlawang Sragen,22000\r\nSumowono Ungaran,22000\r\nSumpiuh Purwokerto,22000\r\nSuradadi Slawi,22000\r\nSuruh Ungaran,22000\r\nSusukan Banjarnegara,22000\r\nSusukan Ungaran,22000\r\nTahunan Jepara,22000\r\nTalang Slawi,22000\r\nTalun Kajen,22000\r\nTaman Pemalang,22000\r\nTambak Purwokerto,22000\r\nTambakrejo Bojonegoro,22000\r\nTambakromo Pati,22000\r\nTangen Sragen,22000\r\nTanggungharjo Purwodadi,22000\r\nTanjung Brebes,22000\r\nTanon Sragen,22000\r\nTarub Slawi,22000\r\nTasikmadu Karanganyar,22000\r\nTawangharjo Purwodadi,22000\r\nTawangmangu Karanganyar,22000\r\nTawangsari Sukoharjo,22000\r\nTayu Pati,22000\r\nTegal,17000\r\nTegal Barat Tegal,17000\r\nTegal Selatan Tegal,17000\r\nTegal Timur Tegal,17000\r\nTegalrejo Magelang,23000\r\nTegowanu Purwodadi,22000\r\nTelogowungu Pati,22000\r\nTemanggung Kab. Temanggung,18000\r\nTemayang Bojonegoro,22000\r\nTembalang Semarang,12000\r\nTembarak Temanggung,23000\r\nTempuran Magelang,23000\r\nTengaran Ungaran,22000\r\nTeras Boyolali,22000\r\nTersono Batang,22000\r\nTingkir Salatiga,17000\r\nTirto Kajen,22000\r\nTirtomoyo. Wonogiri,22000\r\nTlogomulyo Temanggung,23000\r\nTodanan Blora,22000\r\nTonjong Brebes,22000\r\nToroh Purwodadi,22000\r\nTrangkil Pati,22000\r\nTretep Temanggung,23000\r\nTrucuk Bojonegoro,22000\r\nTrucuk Klaten,22000\r\nTugu Semarang,12000\r\nTulis Batang,22000\r\nTulung Klaten,22000\r\nTunjungan Blora,22000\r\nTuntang Ungaran,22000\r\nUlujami Pemalang,22000\r\nUndaan Kudus,22000\r\nUngaran,12000\r\nUngaran Barat Semarang,12000\r\nUngaran Timur Semarang,12000\r\nWadaslintang Wonosobo,23000\r\nWanadadi Banjarnegara,22000\r\nWanareja Cilacap,19000\r\nWanayasa Banjarnegara,22000\r\nWangon Purwokerto,22000\r\nWarungasem Batang,22000\r\nWarungpring Pemalang,22000\r\nWarureja Slawi,22000\r\nWatukumpul Pemalang,22000\r\nWatumalang Wonosobo,23000\r\nWedarijaksa Pati,22000\r\nWedi Klaten,22000\r\nWedung Demak,22000\r\nWelahan Jepara,22000\r\nWeleri Kendal,22000\r\nWeru Sukoharjo,22000\r\nWindusari Magelang,23000\r\nWinong Pati,22000\r\nWiradesa Kajen,22000\r\nWirosari Purwodadi,22000\r\nWonoboyo Temanggung,23000\r\nWonogiri Kab. Wonogiri,17000\r\nWonokerto Kajen,22000\r\nWonopringgo Kajen,22000\r\nWonosalam Demak,22000\r\nWonosari Brebes,22000\r\nWonosari Klaten,22000\r\nWonosegoro Boyolali,22000\r\nWonosobo,18000\r\nWonotunggal Batang,22000\r\nWuryantoro. Wonogiri,22000\r\n                                ', 0),
(1253, 0, 'jne_oke', 'jne_oke_11_status', '1', 0),
(1254, 0, 'jne_oke', 'jne_oke_12_rate', 'Ajung Jember,33000\r\nAmbulu Jember,33000\r\nAmbunten Sumenep,28000\r\nAmpelgading Kepanjen,33000\r\nArjasa Jember,33000\r\nArjasa Situbondo,33000\r\nArjosari Pacitan,33000\r\nArosbaya Bangkalan,28000\r\nAsembagus Situbondo,33000\r\nAsemrowo Surabaya,14000\r\nBabadan Ponorogo,33000\r\nBabat Lamongan,28000\r\nBadegan Ponorogo,33000\r\nBagor Nganjuk,28000\r\nBakung Blitar,33000\r\nBalega Bangkalan,28000\r\nBalerejo Caruban,33000\r\nBalong Ponorogo,33000\r\nBalongbendo Sidoarjo,17000\r\nBalongpanggang Gresik,28000\r\nBalung Jember,33000\r\nBancar Tuban,28000\r\nBandar Pacitan,33000\r\nBandarkedungmulyo Jombang,28000\r\nBandung Tulungagung,28000\r\nBangil Pasuruan,26000\r\nBangilan Tuban,28000\r\nBangkalan Kab. Bangkalan,22000\r\nBangorejo Banyuwangi,33000\r\nBangsal Mojokerto,17000\r\nBangsalsari Jember,33000\r\nBantaran Probolinggo,33000\r\nBantur Kepanjen,33000\r\nBanyakan Kediri,26000\r\nBanyuanyar Probolinggo,33000\r\nBanyuates Sampang,28000\r\nBanyuglugur Situbondo,33000\r\nBanyuputih Situbondo,33000\r\nBanyuwangi Kab Banyuwangi,26000\r\nBarat Magetan,33000\r\nBareng Jombang,28000\r\nBaron Nganjuk,28000\r\nBatang Batang Sumenep,28000\r\nBatu,26000\r\nBatuan Sumenep,28000\r\nBatumarmar Pamekasan,28000\r\nBatuputih Sumenep,28000\r\nBeji Pasuruan,26000\r\nBendo Magetan,33000\r\nBendungan Trenggalek,28000\r\nBenjeng Gresik,28000\r\nBenowo Surabaya,14000\r\nBerbek Nganjuk,28000\r\nBesuk Probolinggo,33000\r\nBesuki Situbondo,33000\r\nBesuki Tulungagung,28000\r\nBinakal Bondowoso,33000\r\nBinangun Blitar,33000\r\nBlimbing Malang,17000\r\nBlitar,26000\r\nBluluk Lamongan,28000\r\nBluto Sumenep,28000\r\nBondowoso Kab Bondowoso,26000\r\nBoyolangu Tulungagung,28000\r\nBringin Ngawi,33000\r\nBrondong Lamongan,28000\r\nBubutan Surabaya,14000\r\nBuduran Sidoarjo,14000\r\nBugulkidul Pasuruan,17000\r\nBulak Surabaya,14000\r\nBululawang Kepanjen,33000\r\nBumiaji Batu,26000\r\nBungah Gresik,28000\r\nBungatan Situbondo,33000\r\nBungkal Ponorogo,33000\r\nBurneh Bangkalan,28000\r\nCamplong Sampang,28000\r\nCampurdarat Tulungagung,28000\r\nCandi Sidoarjo,14000\r\nCandipuro Lumajang,33000\r\nCaruban Kab. Madiun,26000\r\nCerme Gresik,28000\r\nCermee Bondowoso,33000\r\nCluring Banyuwangi,33000\r\nCurahdami Bondowoso,33000\r\nDagangan Caruban,33000\r\nDampit Kepanjen,33000\r\nDasuk Sumenep,28000\r\nDau Kepanjen,33000\r\nDawarblandong Mojokerto,17000\r\nDeket Lamongan,28000\r\nDiwek Jombang,28000\r\nDlangu Mojokerto,17000\r\nDoko Blitar,33000\r\nDolopo Caruban,33000\r\nDongko Trenggalek,28000\r\nDonomulyo Kepanjen,33000\r\nDonorojo Pacitan,33000\r\nDringu Probolinggo,17000\r\nDriyorejo Gresik,28000\r\nDuduksampeyan Gresik,28000\r\nDukuh Pakis Surabaya,14000\r\nDukun Gresik,28000\r\nDungkek Sumenep,28000\r\nDupok Probolinggo,17000\r\nDurenan Trenggalek,28000\r\nGading Probolinggo,33000\r\nGadingrejo Pasuruan,17000\r\nGalis Bangkalan,28000\r\nGalis Pamekasan,28000\r\nGambiran Banyuwangi,33000\r\nGampengrejo Kediri,17000\r\nGanding Sumenep,28000\r\nGandusari Blitar,33000\r\nGandusari Trenggalek,28000\r\nGapura Sumenep,28000\r\nGarum Blitar,33000\r\nGayungan Surabaya,14000\r\nGedangan Kepanjen,33000\r\nGedangan Sidoarjo,14000\r\nGedeg Mojokerto,17000\r\nGeger Bangkalan,28000\r\nGeger Caruban,33000\r\nGemarang Caruban,33000\r\nGempol Pasuruan,26000\r\nGending Probolinggo,33000\r\nGeneng Ngawi,33000\r\nGenteng Banyuwangi,33000\r\nGenteng Surabaya,14000\r\nGiri Banyuwangi,33000\r\nGlagah Banyuwangi,33000\r\nGlagah Lamongan,28000\r\nGlenmore Banyuwangi,33000\r\nGondang Mojokerto,17000\r\nGondang Nganjuk,28000\r\nGondang Tulungagung,28000\r\nGondanglegi Kepanjen,33000\r\nGondangwetan Pasuruan,26000\r\nGrabagan Tuban,28000\r\nGrati Pasuruan,26000\r\nGresik Kab. Gresik,14000\r\nGrogol Kediri,26000\r\nGrujugan Bondowoso,33000\r\nGubeng Surabaya,14000\r\nGucialit Lumajang,33000\r\nGudo Jombang,28000\r\nGuluk Guluk Sumenep,28000\r\nGumukmas Jember,33000\r\nGununganyar Surabaya,14000\r\nGurah Kediri,17000\r\nJabon Sidoarjo,14000\r\nJabung Kepanjen,33000\r\nJambangan Surabaya,14000\r\nJambon Ponorogo,33000\r\nJangkar Situbondo,33000\r\nJatibanteng Situbondo,33000\r\nJatikalen Nganjuk,28000\r\nJatirejo Mojokerto,17000\r\nJatirogo Tuban,28000\r\nJatiroto Lumajang,33000\r\nJelbuk Jember,33000\r\nJember,17000\r\nJenangan Ponorogo,33000\r\nJenggawah Jember,33000\r\nJenu Tuban,28000\r\nJetis Mojokerto,17000\r\nJetis Ponorogo,33000\r\nJiwan Caruban,17000\r\nJogorogo Ngawi,33000\r\nJogoroto Jombang,28000\r\nJombang Jember,33000\r\nJombang Kab. Jombang,22000\r\nJrengik Sampang,28000\r\nJunrejo Batu,26000\r\nKabat Banyuwangi,33000\r\nKabuh Jombang,28000\r\nKademangan Blitar,33000\r\nKademangan Probolinggo,17000\r\nKadur Pamekasan,28000\r\nKalianget Sumenep,28000\r\nKalibaru Banyuwangi,33000\r\nKalidawir Tulungagung,28000\r\nKalipare Kepanjen,33000\r\nKalipuro Banyuwangi,33000\r\nKalisat Jember,33000\r\nKalitengah Lamongan,28000\r\nKaliwates Jember,17000\r\nKamal Bangkalan,28000\r\nKampak Trenggalek,28000\r\nKandangan Kediri,26000\r\nKandat Kediri,26000\r\nKanigaran Probolinggo,17000\r\nKanigoro Blitar,33000\r\nKapongan Situbondo,33000\r\nKarangan Trenggalek,28000\r\nKaranganyar Ngawi,33000\r\nKarangbinangun Lamongan,28000\r\nKaranggeneng Lamongan,28000\r\nKarangjati Ngawi,33000\r\nKarangpilang Surabaya,14000\r\nKarangploso Kepanjen,33000\r\nKarangrejo Magetan,33000\r\nKarangrejo Tulungagung,28000\r\nKaras Magetan,33000\r\nKare Caruban,33000\r\nKartoharjo Madiun,17000\r\nKartoharjo Magetan,33000\r\nKasembon Kepanjen,33000\r\nKauman Ponorogo,33000\r\nKauman Tulungagung,28000\r\nKawedanan Magetan,33000\r\nKayen Kidul Kediri,26000\r\nKebomas Gresik,28000\r\nKebonagung Pacitan,33000\r\nKebonsari Caruban,33000\r\nKedamean Gresik,28000\r\nKedawung Pasuruan,26000\r\nKediri,17000\r\nKedundung Sampang,28000\r\nKedunggalar Ngawi,33000\r\nKedungjajang Lumajang,33000\r\nKedungkandang Malang,17000\r\nKedungpring Lamongan,28000\r\nKedungwaru Tulungagung,28000\r\nKejayaan Pasuruan,26000\r\nKembangbahu Lamongan,28000\r\nKemlagi Mojokerto,17000\r\nKencong Jember,33000\r\nKendal Ngawi,33000\r\nKendit Situbondo,33000\r\nKendungan Ngawi,33000\r\nKenduruan Tuban,28000\r\nKenjeran Surabaya,14000\r\nKepanjen Kab Malang,26000\r\nKepanjenkidul Blitar,26000\r\nKepung Kediri,26000\r\nKerek Tuban,28000\r\nKertosono Nganjuk,28000\r\nKesamben Blitar,33000\r\nKesamben Jombang,28000\r\nKetapang Sampang,28000\r\nKlabang Bondowoso,33000\r\nKlakah Lumajang,33000\r\nKlampis Bangkalan,28000\r\nKlojen Malang,17000\r\nKokop Bangkalan,28000\r\nKonang Bangkalan,28000\r\nKotaanyar Probolinggo,33000\r\nKraksaan Probolinggo,26000\r\nKras Kediri,26000\r\nKraton Pasuruan,26000\r\nKrejengan Probolinggo,33000\r\nKrembangan Surabaya,14000\r\nKrembung Sidoarjo,14000\r\nKrian Kab. Sidoarjo,14000\r\nKromengan Kepanjen,33000\r\nKrucil Probolinggo,33000\r\nKudu Jombang,28000\r\nKunir Lumajang,33000\r\nKunjang Kediri,26000\r\nKuripan Probolinggo,33000\r\nKutorejo Mojokerto,17000\r\nKwadungan Ngawi,33000\r\nKwanyar Bangkalan,28000\r\nLabang Bangkalan,28000\r\nLakarsantri Surabaya,14000\r\nLamongan Kab. Lamongan,22000\r\nLarangan Pamekasan,28000\r\nLaren Lamongan,28000\r\nLawang Kepanjen,33000\r\nLeces Probolinggo,17000\r\nLedokombo Jember,33000\r\nLekok Pasuruan,26000\r\nLembeyan Magetan,33000\r\nLengkong Nganjuk,28000\r\nLenteng Sumenep,28000\r\nLicin Banyuwangi,33000\r\nLoceret Nganjuk,28000\r\nLowokwaru Malang,17000\r\nLumajang Kab. Lumajang,26000\r\nLumbang Pasuruan,26000\r\nLumbang Probolinggo,33000\r\nMadiun,17000\r\nMadiun Caruban,17000\r\nMaduran Lamongan,28000\r\nMaesan Bondowoso,33000\r\nMagersari Mojokerto,17000\r\nMagetan Kab Magetan,26000\r\nMalang,17000\r\nManding Sumenep,28000\r\nMangaran Situbondo,33000\r\nManguharjo Madiun,17000\r\nMantingan Ngawi,33000\r\nMantup Lamongan,28000\r\nManyar Gresik,28000\r\nMaospati Magetan,33000\r\nMaron Probolinggo,33000\r\nMayang Jember,33000\r\nMayangan Probolinggo,17000\r\nMegaluh Jombang,28000\r\nMejayan Caruban,33000\r\nMenganti Gresik,28000\r\nMerakkurak Tuban,28000\r\nMlandingan Situbondo,33000\r\nMlarak Ponorogo,33000\r\nModo Lamongan,28000\r\nModung Bangkalan,28000\r\nMojo Kediri,26000\r\nMojoagung Jombang,28000\r\nMojoanyar Mojokerto,17000\r\nMojokerto,17000\r\nMojoroto Kediri,17000\r\nMojosari Mojokerto,17000\r\nMojowarno Jombang,28000\r\nMontong Tuban,28000\r\nMulyorejo Surabaya,14000\r\nMumbulsari Jember,33000\r\nMuncar Banyuwangi,33000\r\nMunjungan Trenggalek,28000\r\nNawangan Pacitan,33000\r\nNgadiluwih Kediri,17000\r\nNgadirojo Pacitan,33000\r\nNgajum Kepanjen,33000\r\nNgancar Kediri,26000\r\nNganjuk Kab. Nganjuk,22000\r\nNgantang Kepanjen,33000\r\nNgantru Tulungagung,28000\r\nNgariboyo Magetan,33000\r\nNgawi Kab Ngawi,26000\r\nNgebel Ponorogo,33000\r\nNgetos Nganjuk,28000\r\nNgimbang Lamongan,28000\r\nNglegok Blitar,33000\r\nNgluyu Nganjuk,28000\r\nNgoro Jombang,28000\r\nNgoro Mojokerto,17000\r\nNgrambe Ngawi,33000\r\nNgrayun Ponorogo,33000\r\nNgronggot Nganjuk,28000\r\nNguling Pasuruan,26000\r\nNguntoronadi Magetan,33000\r\nNguntut Tulungagung,28000\r\nNgusikan  Jombang,28000\r\nNongko Jajar Pasuruan,26000\r\nOmben Sampang,28000\r\nPabean Cantikan Surabaya,14000\r\nPace Nganjuk,28000\r\nPacet Mojokerto,17000\r\nPaciran Lamongan,28000\r\nPacitan Kab Pacitan,26000\r\nPadang Lumajang,33000\r\nPadas Ngawi,33000\r\nPademawu Pamekasan,28000\r\nPagak Kepanjen,33000\r\nPagelaran Kepanjen,33000\r\nPagerwojo Tulungagung,28000\r\nPagu Kediri,26000\r\nPaiton Probolinggo,26000\r\nPajarakan Probolinggo,33000\r\nPakal Surabaya,14000\r\nPakel Tulungagung,28000\r\nPakem Bondowoso,33000\r\nPakis Kepanjen,33000\r\nPakisaji Kepanjen,33000\r\nPakong Pamekasan,28000\r\nPakuniran Probolinggo,33000\r\nPakusari Jember,33000\r\nPalang Tuban,28000\r\nPalengaan Pamekasan,28000\r\nPamekasan Kab. Pamekasan,22000\r\nPanarukan Situbondo,33000\r\nPanceng Gresik,28000\r\nPandaan,17000\r\nPanekan Magetan,33000\r\nPanggul Trenggalek,28000\r\nPanggungrejo Blitar,33000\r\nPangkur Ngawi,33000\r\nPanji Situbondo,33000\r\nPanti Jember,33000\r\nPapar Kediri,26000\r\nParajurit Kulon Mojokerto,17000\r\nParang Magetan,33000\r\nPare Kediri,17000\r\nParengan Tuban,28000\r\nParon Ngawi,33000\r\nPasean Pamekasan,28000\r\nPasirian Lumajang,33000\r\nPasongsongan Sumenep,28000\r\nPasrepan Pasuruan,26000\r\nPasrujambe Lumajang,33000\r\nPasuruan,17000\r\nPatianrowo Nganjuk,28000\r\nPatrang Jember,17000\r\nPegantenan Pamekasan,28000\r\nPerak Jombang,28000\r\nPesanggaran Banyuwangi,33000\r\nPesantren Kediri,17000\r\nPeterongan Jombang,28000\r\nPilangkenceng Caruban,33000\r\nPitu Ngawi,33000\r\nPlandaan Jombang,28000\r\nPlaosan Magetan,33000\r\nPlemahan Kediri,26000\r\nPloso Jombang,28000\r\nPlosoklaten Kediri,26000\r\nPlumbang Tuban,28000\r\nPogalan Trenggalek,28000\r\nPohjentrek Pasuruan,26000\r\nPoncokusumo Kepanjen,33000\r\nPoncol Magetan,33000\r\nPonggok Blitar,33000\r\nPonorogo Kab Ponorogo,26000\r\nPorong Sidoarjo,14000\r\nPragaan Sumenep,28000\r\nPrajekan Bondowoso,33000\r\nPrambon Nganjuk,28000\r\nPrambon Sidoarjo,17000\r\nPrigen Pasuruan,26000\r\nPringkuku Pacitan,33000\r\nProbolinggo,17000\r\nPronojiwo Lumajang,33000\r\nProppo Pamekasan,28000\r\nPucanglaban Tulungagung,28000\r\nPucuk Lamongan,28000\r\nPudak Ponorogo,33000\r\nPuger Jember,33000\r\nPujer Bondowoso,33000\r\nPujon Kepanjen,33000\r\nPule Trenggalek,28000\r\nPulung Ponorogo,33000\r\nPuncu Kediri,26000\r\nPungging Mojokerto,17000\r\nPunung Pacitan,33000\r\nPuri Mojokerto,17000\r\nPurwoasri Kediri,26000\r\nPurwodadi Pasuruan,26000\r\nPurwoharjo Banyuwangi,33000\r\nPurworejo Pasuruan,17000\r\nPurwosari Pasuruan,26000\r\nPuspo Pasuruan,26000\r\nRambipuji Jember,33000\r\nRanduagung Lumajang,33000\r\nRanuyoso Lumajang,33000\r\nRejoso Nganjuk,28000\r\nRejoso Pasuruan,26000\r\nRejotangan Tulungagung,28000\r\nRembang Pasuruan,26000\r\nRengel Tuban,28000\r\nRinginrejo Kediri,26000\r\nRobatal Sampang,28000\r\nRogojampi Banyuwangi,33000\r\nRowokangkung Lumajang,33000\r\nRubaru Sumenep,28000\r\nRungkut Surabaya,14000\r\nSambeng Lamongan,28000\r\nSambikerep Surabaya,14000\r\nSambit Ponorogo,33000\r\nSampang Kab. Sampang,22000\r\nSampung Ponorogo,33000\r\nSanankulon Blitar,33000\r\nSananwetan Blitar,26000\r\nSangkapura Gresik,28000\r\nSaradan Caruban,33000\r\nSarirejo Lamongan,28000\r\nSaronggi Sumenep,28000\r\nSawahan Caruban,33000\r\nSawahan Nganjuk,28000\r\nSawahan Surabaya,14000\r\nSawoo Ponorogo,33000\r\nSedati Sidoarjo,14000\r\nSekaran Lamongan,28000\r\nSelopuro Blitar,33000\r\nSelorejo Blitar,33000\r\nSemampir Surabaya,14000\r\nSemanding Tuban,28000\r\nSemboro Jember,33000\r\nSemen Kediri,26000\r\nSempol Bondowoso,33000\r\nSempu Banyuwangi,33000\r\nSendang Tulungagung,28000\r\nSenduro Lumajang,33000\r\nSenori Tuban,28000\r\nSepulu Bangkalan,28000\r\nSidayu Gresik,28000\r\nSidoarjo Kab. Sidoarjo,14000\r\nSiliragung Banyuwangi,33000\r\nSilo Jember,33000\r\nSiman Ponorogo,33000\r\nSimokerto  Surabaya,14000\r\nSine Ngawi,33000\r\nSinggahan Tuban,28000\r\nSingojuruh Banyuwangi,33000\r\nSingosari Kepanjen,33000\r\nSitubondo Kab. Situbondo,26000\r\nSlahung Ponorogo,33000\r\nSocah Bangkalan,28000\r\nSoko Tuban,28000\r\nSokobanah Sampang,28000\r\nSolokuro Lamongan,28000\r\nSonggon Banyuwangi,33000\r\nSooko Mojokerto,17000\r\nSooko Ponorogo,33000\r\nSrengat Blitar,33000\r\nSreseh Sampang,28000\r\nSrono Banyuwangi,33000\r\nSuboh Situbondo,33000\r\nSudimoro Pacitan,33000\r\nSugio Lamongan,28000\r\nSukapura Probolinggo,33000\r\nSukodadi Lamongan,28000\r\nSukodono Lumajang,17000\r\nSukodono Sidoarjo,14000\r\nSukolilo  Surabaya,14000\r\nSukomanunggal  Surabaya,14000\r\nSukomoro Magetan,33000\r\nSukomoro Nganjuk,28000\r\nSukorambi Jember,33000\r\nSukorame Lamongan,28000\r\nSukorejo Blitar,26000\r\nSukorejo Pasuruan,26000\r\nSukorejo Ponorogo,33000\r\nSukosari Bondowoso,33000\r\nSukowono Jember,33000\r\nSukun Malang,17000\r\nSumber Probolinggo,33000\r\nSumberasih Probolinggo,33000\r\nSumberbaru Jember,33000\r\nSumbergempol Tulungagung,28000\r\nSumberjambe Jember,33000\r\nSumbermalang Situbondo,33000\r\nSumbermanjingwetan Kepanjen,33000\r\nSumberpucung Kepanjen,33000\r\nSumbersari Jember,17000\r\nSumbersoko Lumajang,17000\r\nSumberwringin Bondowoso,33000\r\nSumenep Kab. Sumenep,22000\r\nSumobito Jombang,28000\r\nSurabaya,14000\r\nSuruh Trenggalek,28000\r\nSutojayan Blitar,33000\r\nTajinan Kepanjen,33000\r\nTakeran Magetan,33000\r\nTalun Blitar,33000\r\nTaman Kab. Sidoarjo,14000\r\nTaman Madiun,17000\r\nTamanan Bondowoso,33000\r\nTambak Gresik,28000\r\nTambakboyo Tuban,28000\r\nTambaksari Surabaya,14000\r\nTambelangan Sampang,28000\r\nTanahmerah Bangkalan,28000\r\nTandes  Surabaya,14000\r\nTanggul Jember,33000\r\nTanggulangin Sidoarjo,14000\r\nTanggung Gunung Tulungagung,28000\r\nTanjunganom Nganjuk,28000\r\nTanjungbumi Bangkalan,28000\r\nTapen Bondowoso,33000\r\nTarik Sidoarjo,17000\r\nTarokan Kediri,26000\r\nTegalampel Bondowoso,33000\r\nTegaldlimo Banyuwangi,33000\r\nTegalombo Pacitan,33000\r\nTegalsari  Surabaya,14000\r\nTegalsari Banyuwangi,33000\r\nTegalsiwalan Probolinggo,33000\r\nTekung Lumajang,33000\r\nTembelang Jombang,28000\r\nTempeh Lumajang,33000\r\nTempurejo Jember,33000\r\nTempursari Lumajang,33000\r\nTenggarang Bondowoso,33000\r\nTenggilis Mejoyo Surabaya,14000\r\nTikung Lamongan,28000\r\nTiris Probolinggo,33000\r\nTirtoyudo Kepanjen,33000\r\nTlanakan Pamekasan,28000\r\nTlogosari Bondowoso,33000\r\nTongas Probolinggo,33000\r\nTorjun Sampang,28000\r\nTosari Pasuruan,26000\r\nTragah Bangkalan,28000\r\nTrawas Mojokerto,17000\r\nTrenggalek Kab. Trenggalek,22000\r\nTrowulan Mojokerto,17000\r\nTuban Kab. Tuban,22000\r\nTugu Trenggalek,28000\r\nTulakan Pacitan,33000\r\nTulangan Sidoarjo,14000\r\nTulungagung Kab. Tulungagung,22000\r\nTumpang Kepanjen,33000\r\nTuren Kepanjen,33000\r\nTuri Lamongan,28000\r\nTutur Pasuruan,26000\r\nUdanawu Blitar,33000\r\nUjungpangkah Gresik,28000\r\nUmbulsari Jember,33000\r\nWagir Kepanjen,33000\r\nWajak Kepanjen,33000\r\nWaru Pamekasan,28000\r\nWaru Sidoarjo,14000\r\nWates Blitar,33000\r\nWates Kediri,26000\r\nWatulimo Trenggalek,28000\r\nWidang Tuban,28000\r\nWidodaren Ngawi,33000\r\nWilangan Nganjuk,28000\r\nWinongan Pasuruan,26000\r\nWiyung  Surabaya,14000\r\nWlingi Blitar,26000\r\nWongsorejo Banyuwangi,33000\r\nWonoasih Probolinggo,17000\r\nWonoasri Caruban,33000\r\nWonoayu Sidoarjo,14000\r\nWonocolo  Surabaya,14000\r\nWonodadi Blitar,33000\r\nWonokromo Surabaya,14000\r\nWonomerto Probolinggo,33000\r\nWonorejo Pasuruan,26000\r\nWonosalam Jombang,28000\r\nWonosari Bondowoso,33000\r\nWonosari Kepanjen,33000\r\nWonotirto Blitar,33000\r\nWringin Bondowoso,33000\r\nWringinanom Gresik,28000\r\nWuluhan Jember,33000\r\nWungu Caruban,33000\r\nYosowilangun Lumajang,33000\r\n                                    ', 0),
(1255, 0, 'jne_oke', 'jne_oke_12_status', '1', 0);
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1256, 0, 'jne_oke', 'jne_oke_13_rate', '    Air Besar Ngabang,45000\r\nAir Upas  Ketapang,45000\r\nAmbalau Nanga Pinoh,45000\r\nAmbalau Sintang,45000\r\nBadau Putussibau,45000\r\nBalai Sanggau,45000\r\nBatang Lupar Putussibau,45000\r\nBatu Ampar Kubu Raya,45000\r\nBatu Datu  Putussibau,45000\r\nBeduwai Sanggau,45000\r\nBelimbing Nanga Pinoh,45000\r\nBelitang Hilir Sekadau,45000\r\nBelitang Hulu Sekadau,45000\r\nBelitang Sekadau,45000\r\nBengkayang Kab Bengkayang,36000\r\nBenua Kayong  Ketapang,45000\r\nBinjai Hulu  Sintang,45000\r\nBonti Sanggau,45000\r\nBoyan Tanjung  Putussibau,45000\r\nBunut Hilir Putussibau,45000\r\nBunut Hulu Putussibau,45000\r\nDedai Sintang,45000\r\nDelta Pawan  Ketapang,45000\r\nElla Hilir Nanga Pinoh,45000\r\nEmbaloh Hilir Putussibau,45000\r\nEmbaloh Hulu Putussibau,45000\r\nEmbau  Putussibau,45000\r\nEmpanang Putussibau,45000\r\nEntikong Sanggau,45000\r\nGaling Sambas,45000\r\nHulu Gurung Putussibau,45000\r\nHulu Sungai  Ketapang,45000\r\nJagoi Babang Bengkayang,45000\r\nJangkang Sanggau,45000\r\nJawai Selatan Sambas,45000\r\nJawai Sambas,45000\r\nJelai Hulu Ketapang,45000\r\nKalis  Putussibau,45000\r\nKayan Hilir Sintang,45000\r\nKayan Hulu Sintang,45000\r\nKedamin  Putussibau,45000\r\nKelam Permai  Sintang,45000\r\nKembayan Sanggau,45000\r\nKendawangan Ketapang,45000\r\nKetapang Kab. Ketapang,36000\r\nKetungau Hilir Sintang,45000\r\nKetungau Hulu Sintang,45000\r\nKetungau Tengah Sintang,45000\r\nKuala Behe Ngabang,45000\r\nKuala Mandor Kubu Raya,45000\r\nKubu Raya Kab. Kubu Raya,22000\r\nKubu Mempawah,45000\r\nLedo Bengkayang,45000\r\nManday Putussibau,45000\r\nMandor Ngabang,45000\r\nManis Mata Ketapang,45000\r\nMarau Ketapang,45000\r\nMatan Hilir Selatan  Ketapang,45000\r\nMatan Hilir Utara Ketapang,45000\r\nMeliau Sanggau,45000\r\nMempawah Hulu Ngabang,45000\r\nMempawah Kab Pontianak,36000\r\nMenjalin Ngabang,45000\r\nMentebah  Putussibau,45000\r\nMenukung Nanga Pinoh,45000\r\nMenyuke Ngabang,45000\r\nMeranti Ngabang,45000\r\nMonterado Bengkayang,45000\r\nMuara Pawan  Ketapang,45000\r\nMukok Sanggau,45000\r\nNanga Mahap Sekadau,45000\r\nNanga Pinoh Kab Melawi,36000\r\nNanga Taman Sekadau,45000\r\nNanga Tayap Ketapang,45000\r\nNgabang Kab Landak,36000\r\nNoyan Sanggau,45000\r\nPaloh Sambas,45000\r\nParindu Sanggau,45000\r\nPemaham  Ketapang,45000\r\nPemangkat Sambas,45000\r\nPontianak,22000\r\nPontianak Barat  Pontianak,22000\r\nPontianak Kota  Pontianak,22000\r\nPontianak Selatan  Pontianak,22000\r\nPontianak Tenggara  Pontianak,22000\r\nPontianak Timur/ Jungkat,22000\r\nPontianak Utara Pontianak,22000\r\nPulau Maya Karimata Sukadana,45000\r\nPuring Kencana  Putussibau,45000\r\nPutussibau Kab. Kapuas Hulu,36000\r\nRasau Jaya Kubu Raya,45000\r\nRasau Jaya Mempawah,45000\r\nSajad Sambas,45000\r\nSajingan Sambas,45000\r\nSalamantan Bengkayang,45000\r\nSambas Kab Sambas,36000\r\nSandai Ketapang,45000\r\nSanggau Ledo Bengkayang,45000\r\nSanggau Kab Sanggau,36000\r\nSayan Nanga Pinoh,45000\r\nSebangki Ngabang,45000\r\nSebawi Sambas,45000\r\nSeberuang Putussibau,45000\r\nSejangkung Sambas,45000\r\nSekadau Hilir Kab Sekadau,36000\r\nSekadau Hulu Sekadau,45000\r\nSekayam Sanggau,45000\r\nSelakau Sambas,45000\r\nSelimbau Putussibau,45000\r\nSeluas Bengkayang,45000\r\nSemitau Putussibau,45000\r\nSemparuk Sambas,45000\r\nSengah Temila Ngabang,45000\r\nSepauk Sintang,45000\r\nSeponti Jaya Sukadana,45000\r\nSerawai Nanga Pinoh,45000\r\nSiantan/wajok Mempawah,36000\r\nSilat Hilir Putussibau,45000\r\nSilat Hulu Putussibau,45000\r\nSimpang Dua  Ketapang,45000\r\nSimpang Hilir Sukadana,45000\r\nSimpang Hulu Ketapang,45000\r\nSingkawang,36000\r\nSingkawang Barat  Singkawang,36000\r\nSingkawang Selatan,36000\r\nSingkawang Tengah Singkawang,36000\r\nSingkawang Timur  Singkawang,36000\r\nSingkawang Utara  Singkawang,36000\r\nSingkup  Ketapang,45000\r\nSintang Kab. Sintang,36000\r\nSokan Nanga Pinoh,45000\r\nSubah Sambas,45000\r\nSuhaid Putussibau,45000\r\nSui Ambawang Kubu Raya,45000\r\nSui Kakap Kubu Raya,45000\r\nSui Raya Kubu Raya,45000\r\nSukadana Kab. Kayong Utara,36000\r\nSungai Ambawang Mempawah,45000\r\nSungai Kakap Mempawah,45000\r\nSungai Kunyit Mempawah,45000\r\nSungai Laur Ketapang,45000\r\nSungai Pinyuh Mempawah,45000\r\nSungai Raya Bengkayang,36000\r\nSungai Raya Kubu Raya,45000\r\nSungai Raya Mempawah,45000\r\nSungai Tebelian  Sintang,45000\r\nSuti Semarang Bengkayang,45000\r\nTanah Pinoh Nanga Pinoh,45000\r\nTanggaran Sambas,45000\r\nTayan Hilir Sanggau,45000\r\nTayan Hulu Sanggau,45000\r\nTebas Sambas,45000\r\nTekarang Sambas,45000\r\nTelok Pakedai Mempawah,45000\r\nTeluk Batang Sukadana,45000\r\nTeluk Keramat Sambas,45000\r\nTeluk Pakedai Kubu Raya,45000\r\nTempunak Sintang,45000\r\nTerentang Kubu Raya,45000\r\nTeriak Bengkayang,45000\r\nToba Sanggau,45000\r\nToho Mempawah,45000\r\nTumbang Titi Ketapang,45000\r\n                                ', 0),
(1257, 0, 'jne_oke', 'jne_oke_13_status', '1', 0),
(1258, 0, 'jne_oke', 'jne_oke_14_rate', 'Alalak Marabahan,43000\r\nAluh Aluh Martapura,43000\r\nAmuntai,34000\r\nAmuntai Selatan Amuntai,34000\r\nAmuntai Tengah  Amuntai,34000\r\nAmuntai Utara Amuntai,34000\r\nAngkinang Kandangan,43000\r\nAnjir Muara Marabahan,43000\r\nAnjir Pasar Marabahan,43000\r\nAranio  Martapura,43000\r\nAstambul Martapura,43000\r\nAwang Tamianglayang,43000\r\nAwayan Paringin,43000\r\nBabirik Amuntai,43000\r\nBakarangan Rantau,43000\r\nBakumpai  Marabahan,43000\r\nBanjang  Amuntai,43000\r\nBanjarbaru,22000\r\nBanjarmasin,22000\r\nBanjarmasin Barat Banjarmasin,22000\r\nBanjarmasin Selatan,22000\r\nBanjarmasin Tengah,22000\r\nBanjarmasin Timur Banjarmasin,22000\r\nBanjarmasin Utara Banjarmasin,22000\r\nBanua Lawas Tanjung,43000\r\nBarabai Kab. Hulu Sungai Tngh,34000\r\nBarambai Marabahan,43000\r\nBatang Alai Selatan Barabai,43000\r\nBatang Alai Tengah Barabai,43000\r\nBatang Alai Utara Barabai,43000\r\nBatu Ampar Pelaihari,43000\r\nBatu Benawa Barabai,43000\r\nBatu Mandi Paringin,43000\r\nBatulicin Kab Tanah Bambu,34000\r\nBelawang Marabahan,43000\r\nBenua Lima Tamianglayang,43000\r\nBintang Ara  Tanjung,43000\r\nBinuang Rantau,43000\r\nBungur Rantau,43000\r\nBuntok,34000\r\nCandi Laras Selatan Rantau,43000\r\nCandi Laras Utara Rantau,43000\r\nCempaka  Banjarbaru,22000\r\nCerbon Marabahan,43000\r\nDaha Barat  Kandangan,43000\r\nDaha Selatan Kandangan,43000\r\nDaha Utara Kandangan,43000\r\nDanau Panggang Amuntai,43000\r\nDusun Hilir Buntok,43000\r\nDusun Selatan  Buntok,43000\r\nDusun Tengah Tamianglayang,43000\r\nDusun Timur  Tamiang Layang,43000\r\nDusun Utara Buntok,43000\r\nGambut Martapura,43000\r\nGunung Bintang Awai  Buntok,43000\r\nGunung Purei Muarateweh,43000\r\nGunung Timang Muarateweh,43000\r\nHalong Paringin,43000\r\nHampang Kotabarupulaulaut,43000\r\nHantakan  Barabai,43000\r\nHaruai Tanjung,43000\r\nHaruyan Barabai,43000\r\nHatungun Rantau,34000\r\nJaro Tanjung,43000\r\nJenamas Buntok,43000\r\nJorong Pelaihari,43000\r\nJuai Paringin,43000\r\nKalumpang Kandangan,43000\r\nKandangan Kab. Hulu Sungai Sltn,34000\r\nKarang Intan Martapura,43000\r\nKarau Kuala Buntok,43000\r\nKelua Tanjung,43000\r\nKelumpang Hulu K. Baru P. Laut,43000\r\nKelumpang Selatan P. Laut,43000\r\nKelumpang Tengah P. Laut,43000\r\nKelumpang Utara K. Baru P. Laut,43000\r\nKertak Hanyar Martapura,43000\r\nKintap Pelaihari,43000\r\nKotabaru Pulaulaut,34000\r\nKurau Pelaihari,43000\r\nKuripan Marabahan,43000\r\nKusan Hilir Batulicin,43000\r\nKusan Hulu Batulicin,43000\r\nLabuan Amas Selatan Barabai,43000\r\nLabuan Amas Utara Barabai,43000\r\nLahei Muarateweh,43000\r\nLampihong Paringin,43000\r\nLandasan Ulin Banjarbaru,22000\r\nLaung Tuhup Purukcahu,43000\r\nLokpaikat Rantau,43000\r\nLoksado Kandangan,43000\r\nMandastana Marabahan,43000\r\nMarabahan Kab. Barito Kuala,34000\r\nMartapura Kab. Banjar,34000\r\nMataraman  Martapura,43000\r\nMekar Sari Marabahan,43000\r\nMontalat Muarateweh,43000\r\nMuara Harus Tanjung,43000\r\nMuara Uya Tanjung,43000\r\nMuarateweh,34000\r\nMurung Pudak Tanjung,43000\r\nMurung Purukcahu,43000\r\nP. Laut Barat K. Barupulaulaut,43000\r\nP. Laut Selatan K. Baru P. Laut,43000\r\nP. Laut Timur K. Barupulaulaut,43000\r\nP. Laut Utara Kotabaru P. Laut,43000\r\nP. Sebuku Kotabarupulaulaut,43000\r\nP. Sembilan Kotabarupulaulaut,43000\r\nPadang Batung Kandangan,43000\r\nPamukan Selatan K. Baru P. Laut,43000\r\nPamukan Utara K. Barupulaulaut,43000\r\nPandawan Barabai,43000\r\nPanyipatan Pelaihari,43000\r\nParingin Kab Balangan,34000\r\nPatangkep Tutui Tamianglayang,43000\r\nPelaihari Kab. Banjarmasin,34000\r\nPematang Karau Tamianglayang,43000\r\nPengaron Martapura,43000\r\nPermata Intan Purukcahu,43000\r\nPiani Rantau,43000\r\nPugaan Tanjung,43000\r\nPuruk Cahu,34000\r\nRantau,34000\r\nRantau Badauh Marabahan,43000\r\nSalam Babaris Rantau,34000\r\nSampanahan K. Barupulaulaut,43000\r\nSatui Batulicin,43000\r\nSimpang Empat Martapura,43000\r\nSimpur Kandangan,43000\r\nSumber Barito Purukcahu,43000\r\nSungai Durian K. Barupulaulaut,43000\r\nSungai Loban Batulicin,43000\r\nSungai Pandan Amuntai,43000\r\nSungai Pinang Martapura,43000\r\nSungai Raya Kandangan,43000\r\nSungai Tabuk Martapura,43000\r\nTabukan Marabahan,43000\r\nTabunganen Marabahan,43000\r\nTakisung Pelaihari,43000\r\nTambang Ulang Pelaihari,43000\r\nTamianglayang,34000\r\nTanah Siang Purukcahu,43000\r\nTanjung Kab. Tabalong,34000\r\nTanta Tanjung,43000\r\nTapin Selatan Rantau,34000\r\nTapin Tengah Rantau,34000\r\nTapin Utara Rantau,34000\r\nTelaga Langsat Kandangan,43000\r\nTemban Marabahan,43000\r\nTeweh Tengah  Muarateweh,43000\r\nTeweh Timur Muarateweh,43000\r\nUpau Tanjung,43000\r\nWanaraya Marabahan,43000\r\n                                    ', 0),
(1259, 0, 'jne_oke', 'jne_oke_14_status', '1', 0),
(1260, 0, 'jne_oke', 'jne_oke_15_rate', ' Antang Kalang  Sampit,53000\r\nArut Selatan Pangkalanbun,53000\r\nArut Utara Pangkalanbun,53000\r\nBaamang  Sampit,53000\r\nBalai Riam Sukamara,53000\r\nBanamatingang Pulang Pisau,53000\r\nBasarang Kualakapuas,53000\r\nBukit Batu  Palangka Raya,22000\r\nBulik Nanga Bulik,53000\r\nCempaga Sampit,53000\r\nDanau Sembuluh Kualapembuang,53000\r\nJekan Raya Palangka Raya,22000\r\nJelai Sukamara,53000\r\nKahayan Hilir Pulang Pisau,53000\r\nKahayan Tengah Pulang Pisau,53000\r\nKapuas Barat Kualakapuas,53000\r\nKapuas Hilir  Kualakapuas,53000\r\nKapuas Hulu Kualakapuas,53000\r\nKapuas Kuala Kualakapuas,53000\r\nKapuas Murung Kualakapuas,53000\r\nKapuas Tengah Kualakapuas,53000\r\nKapuas Timur Kualakapuas,53000\r\nKasongan Kab. Katingan,42000\r\nKatingan Hilir  Kasongan,53000\r\nKatingan Tengah Kasongan,53000\r\nKota Besi Sampit,53000\r\nKota Waringin Lama Pk. Bun,53000\r\nKuala Pembuang,42000\r\nKualakapuas,42000\r\nKualakurun Kab. Gn. Mas,42000\r\nKumai Pangkalanbun,53000\r\nLamandau Nanga Bulik,53000\r\nMantangai Kualakapuas,53000\r\nMendawai  Kasongan,53000\r\nMentawa Baru  Sampit,53000\r\nMentaya Hilir Selatan Sampit,53000\r\nMentaya Hilir Utara Sampit,53000\r\nMentaya Hulu Sampit,53000\r\nNanga Bulik Lamandau,42000\r\nPahandut  Palangka Raya,22000\r\nPalangkaraya,22000\r\nPandihbatu Pulang Pisau,53000\r\nPangkalan Banteng Pk. Bun,53000\r\nPangkalan Lada  Pangkalanbun,53000\r\nPangkalanbun,42000\r\nParenggean Sampit,53000\r\nPulang Pisau Kab Pulang Pisau,42000\r\nPulau Hanaut Sampit,53000\r\nPulau Malan Kasongan,53000\r\nPulau Petak Kualakapuas,53000\r\nSampit,42000\r\nSebangau Palangka Raya,22000\r\nSelat Kualakapuas,53000\r\nSepang Kualakurun,53000\r\nSeruyan Hilir  Kuala Pembuang,53000\r\nSukamara Kab. Sukamara,42000\r\nTimpah Kualakapuas,53000\r\n                                   ', 0),
(1261, 0, 'jne_oke', 'jne_oke_15_status', '1', 0),
(1262, 0, 'jne_oke', 'jne_oke_16_rate', '    Anggana Tenggarong,58000\r\nBabulu Penajam,52000\r\nBalikpapan,23000\r\nBalikpapan Barat  Balikpapan,23000\r\nBalikpapan Selatan Balikpapan,23000\r\nBalikpapan Tengah Balikpapan,23000\r\nBalikpapan Timur  Balikpapan,23000\r\nBalikpapan Utara Balikpapan,23000\r\nBarongtongkok Sendawar,58000\r\nBatu Sopang Tanah Grogot,52000\r\nBengalon  Sangata,44000\r\nBiduk Biduk Tanjungredeb,52000\r\nBontang,28000\r\nBontang Barat  Bontang,28000\r\nBontang Selatan  Bontang,28000\r\nBontang Utara Bontang,28000\r\nGunung Tabur Tanjungredeb,52000\r\nKaliorang  Sangata,44000\r\nKelay Tanjungredeb,52000\r\nKota Bangun Tenggarong,58000\r\nKuaro Tanah Grogot,52000\r\nLinggang Bigung  Sendawar,58000\r\nLoa Janan,58000\r\nLoa Kulu / Loa Bakung Tenggarong,46000\r\nLong Ikis Tanah Grogot,52000\r\nLong Kali Tanah Grogot,52000\r\nMarang Kayu  Tenggarong,58000\r\nMaratua  Tanjungredeb,52000\r\nMelak Sendawar,58000\r\nMuara Badak,46000\r\nMuara Jawa,52000\r\nMuara Komam Tanah Grogot,52000\r\nMuara Muntai Tenggarong,58000\r\nMuara Wahau  Sangata,44000\r\nMuara Wis  Tenggarong,58000\r\nMuarakaman Tenggarong,58000\r\nMuaralawa Sendawar,58000\r\nMuarapahu Sendawar,58000\r\nNyuwatan  Sendawar,58000\r\nPalaran,25000\r\nPenajam Kab. Penajam Paser Utara,41000\r\nPenyinggahan Sendawar,58000\r\nPulau Derawan Tanjungredeb,52000\r\nRantau Pulung  Sangata,44000\r\nSamarinda,25000\r\nSamarinda Ilir Samarinda,25000\r\nSamarinda Seberang,25000\r\nSamarinda Ulu  Samarinda,25000\r\nSamarinda Utara Samarinda,25000\r\nSambaliung Tanjungredeb,52000\r\nSamboja Balikpapan,52000\r\nSangatta Selatan Sangata,35000\r\nSanggata Kab. Kutai Timur,35000\r\nSangkima/sangata Selatan Kab. Kutai Tim,35000\r\nSangkulirang  Sangata,44000\r\nSebulu Tenggarong,58000\r\nSegah Tanjungredeb,52000\r\nSendawar,46000\r\nSinga Gembara/sangata Urata Kab. Kutai ,35000\r\nSungai Kunjang Samarinda,25000\r\nSwarga Bara/sangata Utara Kab. Kutai Ti,35000\r\nTalisayan Tanjungredeb,52000\r\nTanah Grogot Kab Paser,41000\r\nTanjungredeb Kab. Berau,41000\r\nTeluk Bayur  Tanjungredeb,52000\r\nTeluk Pandan Sangata,35000\r\nTenggarong Seberang Tenggarong,58000\r\nTenggarong Kab. Kutai Kartanegara,46000\r\nTubaan Tanjungredeb,52000\r\nWaru Penajam,52000\r\n                                ', 0),
(1263, 0, 'jne_oke', 'jne_oke_16_status', '1', 0),
(1264, 0, 'jne_oke', 'jne_oke_17_rate', '        Kayan Hilir Malinau ,54000\r\nKayan Hulu Malinau ,54000\r\nKrayan Selatan  Nunukan,54000\r\nKrayan Nunukan,54000\r\nLumbis Nunukan,54000\r\nMalinau Barat  Malinau ,43000\r\nMalinau Selatan  Malinau ,43000\r\nMalinau Utara Malinau ,43000\r\nMalinau Kab Malinau,43000\r\nMentarang Malinau ,54000\r\nNunukan Kab Nunukan,43000\r\nPeso / Longpeso Tanjungselor,54000\r\nPeso Hilir  Tanjungselor,54000\r\nPujungan Malinau ,54000\r\nPulau Bunyu Tanjungselor,54000\r\nSebatik  Nunukan,43000\r\nSebuku Nunukan,54000\r\nSekatak  Tanjungselor,54000\r\nSembakung Tana Tidung,54000\r\nSesayap Hilir Tana Tidung,54000\r\nSesayap Tana Tidung,54000\r\nSungai Boh Malinau ,54000\r\nTana Tidung Kab Tana Tidung,43000\r\nTanah Lia  Tana Tidung,54000\r\nTanjung Palas  Tanjungselor,54000\r\nTanjung Palas Barat Tg. Selor,54000\r\nTanjung Palas Tengah  Tg. Selor,54000\r\nTanjung Palas Timur  Tg. Selor,54000\r\nTanjung Palas Utara  Tg. Selor,54000\r\nTanjung Selor Kab Bulungan,43000\r\nTarakan,30000\r\nTarakan Barat  Tarakan,30000\r\nTarakan Tengah Tarakan,30000\r\nTarakan Timur  Tarakan,30000\r\nTarakan Utara Tarakan,30000\r\n\r\n                            ', 0),
(1265, 0, 'jne_oke', 'jne_oke_17_status', '1', 0),
(1266, 0, 'jne_oke', 'jne_oke_18_rate', '                                    ', 0),
(1267, 0, 'jne_oke', 'jne_oke_18_status', '0', 0),
(1268, 0, 'jne_oke', 'jne_oke_19_rate', '                                    ', 0),
(1269, 0, 'jne_oke', 'jne_oke_19_status', '0', 0),
(1270, 0, 'jne_oke', 'jne_oke_20_rate', '                                    ', 0),
(1271, 0, 'jne_oke', 'jne_oke_20_status', '0', 0),
(1272, 0, 'jne_oke', 'jne_oke_21_rate', '                                    ', 0),
(1273, 0, 'jne_oke', 'jne_oke_21_status', '0', 0),
(1274, 0, 'jne_oke', 'jne_oke_22_rate', '                                    ', 0),
(1275, 0, 'jne_oke', 'jne_oke_22_status', '0', 0),
(1276, 0, 'jne_oke', 'jne_oke_23_rate', '                                    ', 0),
(1277, 0, 'jne_oke', 'jne_oke_23_status', '0', 0),
(1278, 0, 'jne_oke', 'jne_oke_24_rate', '                                    ', 0),
(1279, 0, 'jne_oke', 'jne_oke_24_status', '0', 0),
(1280, 0, 'jne_oke', 'jne_oke_25_rate', '                                    ', 0),
(1281, 0, 'jne_oke', 'jne_oke_25_status', '0', 0),
(1282, 0, 'jne_oke', 'jne_oke_26_rate', '                                    ', 0),
(1283, 0, 'jne_oke', 'jne_oke_26_status', '0', 0),
(1284, 0, 'jne_oke', 'jne_oke_27_rate', '                                    ', 0),
(1285, 0, 'jne_oke', 'jne_oke_27_status', '0', 0),
(1286, 0, 'jne_oke', 'jne_oke_28_rate', '                                    ', 0),
(1287, 0, 'jne_oke', 'jne_oke_28_status', '0', 0),
(1288, 0, 'jne_oke', 'jne_oke_29_rate', '                                    ', 0),
(1289, 0, 'jne_oke', 'jne_oke_29_status', '0', 0),
(1290, 0, 'jne_oke', 'jne_oke_30_rate', '                                    ', 0),
(1291, 0, 'jne_oke', 'jne_oke_30_status', '0', 0),
(1292, 0, 'jne_oke', 'jne_oke_31_rate', '                                    ', 0),
(1293, 0, 'jne_oke', 'jne_oke_31_status', '0', 0),
(1294, 0, 'jne_oke', 'jne_oke_32_rate', '                                    ', 0),
(1295, 0, 'jne_oke', 'jne_oke_32_status', '0', 0),
(1296, 0, 'jne_oke', 'jne_oke_33_rate', '                                    ', 0),
(1297, 0, 'jne_oke', 'jne_oke_33_status', '0', 0),
(1298, 0, 'jne_oke', 'jne_oke_34_rate', '                                    ', 0),
(1299, 0, 'jne_oke', 'jne_oke_34_status', '0', 0),
(1304, 0, 'jne_reguler', 'jne_reguler_1_status', '1', 0),
(1305, 0, 'jne_reguler', 'jne_reguler_2_rate', 'Abang Amlapura,32000\r\nAbiansemal Menguwi ,32000\r\nAmlapura,25000\r\nBangli Kab. Bangli,25000\r\nBanjar Singaraja,32000\r\nBanjarangkan Semarapura,32000\r\nBaturiti Tabanan,32000\r\nBebandem Amlapura,32000\r\nBlahbatuh Gianyar,32000\r\nBuleleng Singaraja,32000\r\nBusungbiu Singaraja,32000\r\nDawan Semarapura,32000\r\nDenpasar,18000\r\nDenpasar Barat Denpasar,18000\r\nDenpasar Selatan Denpasar,18000\r\nDenpasar Timur Denpasar,18000\r\nGianyar,25000\r\nGrokgak Singaraja,32000\r\nJimbaran Kuta,18000\r\nKarangasem Amlapura,25000\r\nKediri Tabanan,32000\r\nKerambilan Tabanan,32000\r\nKintamani Bangli,32000\r\nKlungkung Semarapura,25000\r\nKubu Amlapura,32000\r\nKubutambahan Singaraja,32000\r\nKuta ,18000\r\nLegian Kuta,18000\r\nManggis Amlapura,32000\r\nMarga Tabanan,32000\r\nMelaya Negara,32000\r\nMendoyo Negara,32000\r\nMenguwi Kab. Badung,25000\r\nNegara Kab. Jembrana,25000\r\nNgurahrai Kuta,18000\r\nNusa Dua Kuta,18000\r\nNusapenida Semarapura,32000\r\nPapuan Tabanan,32000\r\nPayangan Gianyar,32000\r\nPekutatan Negara,32000\r\nPenebel Tabanan,32000\r\nPetang Menguwi ,32000\r\nRendang Amlapura,32000\r\nSanur Kuta,18000\r\nSawan Singaraja,32000\r\nSelat Amlapura,32000\r\nSelemadeg Barat Tabanan,32000\r\nSelemadeg Timur Tabanan,32000\r\nSelemadeg Tabanan,32000\r\nSemarapura,25000\r\nSeririt Singaraja,32000\r\nSidemen Amlapura,32000\r\nSingaraja Kab. Buleleng,25000\r\nSukasada Singaraja,32000\r\nSukawati Gianyar,32000\r\nSusut Bangli,32000\r\nTabanan,25000\r\nTegallalang Gianyar,32000\r\nTejakula Singaraja,32000\r\nTembuku Bangli,32000\r\nUbud Gianyar,32000\r\n                  ', 0),
(1306, 0, 'jne_reguler', 'jne_reguler_2_status', '1', 0),
(1307, 0, 'jne_reguler', 'jne_reguler_3_rate', '  Air Gegas Toboali,&quot;39,000&quot;\r\nBadau Tanjung Pandan,&quot;38,000&quot;\r\nBakam Sungailiat,&quot;39,000&quot;\r\nBelinyu Sungailiat,&quot;31,000&quot;\r\nBukit Intan Pangkalpinang,&quot;22,000&quot;\r\nDendang Manggar,&quot;38,000&quot;\r\nGantung Manggar,&quot;38,000&quot;\r\nGerunggang Pangkalpinang,&quot;22,000&quot;\r\nJebus  Kelapa,&quot;31,000&quot;\r\nKelapa Kampit Manggar,&quot;38,000&quot;\r\nKelapa Kab. Bangka Barat,&quot;31,000&quot;\r\nKoba Kab. Koba,&quot;31,000&quot;\r\nLepar Pongok Toboali,&quot;39,000&quot;\r\nManggar Kab. Belitung Barat,&quot;30,000&quot;\r\nMembalong Tanjungpandan,&quot;38,000&quot;\r\nMendo Barat Sungailiat,&quot;39,000&quot;\r\nMentok Kelapa,&quot;31,000&quot;\r\nMerawang Sungailiat,&quot;39,000&quot;\r\nPangkal Balam Pangkalpinang,&quot;22,000&quot;\r\nPangkalan Baru Koba,&quot;39,000&quot;\r\nPangkalpinang,&quot;22,000&quot;\r\nPayung Toboali,&quot;39,000&quot;\r\nPemali Sungailiat,&quot;39,000&quot;\r\nPuding Besar Sungailiat,&quot;39,000&quot;\r\nRangkui Pangkalpinang,&quot;22,000&quot;\r\nRiau Silip Sungailiat,&quot;39,000&quot;\r\nSelat Nasik Tanjungpandan,&quot;38,000&quot;\r\nSijuk Tanjung Pandan,&quot;38,000&quot;\r\nSimpang Katis Koba,&quot;39,000&quot;\r\nSimpang Rima Toboali,&quot;39,000&quot;\r\nSimpang Teritip  Kelapa,&quot;39,000&quot;\r\nSungai Selan Koba,&quot;39,000&quot;\r\nSungailiat Kab. Bangka,&quot;31,000&quot;\r\nTanjungpandan,&quot;22,000&quot;\r\nTempilang  Kelapa,&quot;39,000&quot;\r\nToboali Kab. Toboali,&quot;31,000&quot;\r\n                ', 0),
(1308, 0, 'jne_reguler', 'jne_reguler_3_status', '1', 0),
(1309, 0, 'jne_reguler', 'jne_reguler_4_rate', '  Angsana Pandeglang,15000\r\nAnyar Baros,12000\r\nBalaraja Tigaraksa,10000\r\nBanjar Pandeglang,15000\r\nBanjarsari Rangkasbitung,15000\r\nBaros Kab. Serang,12000\r\nBatuceper  Tangerang,10000\r\nBayah Rangkasbitung,15000\r\nBenda Tangerang,10000\r\nBinuang Baros,15000\r\nBojonegara Baros ,15000\r\nBojong Pandeglang,15000\r\nBojongmanik Rangkasbitung,15000\r\nCadasari Pandeglang,15000\r\nCarenang Baros,15000\r\nCarita Pandeglang,15000\r\nCibadak Rangkasbitung,15000\r\nCibaliung Pandeglang,15000\r\nCibeber Cilegon,11000\r\nCibeber Rangkasbitung,15000\r\nCibitung Pandeglang,15000\r\nCibodas  Tangerang,10000\r\nCigeulis Pandeglang,15000\r\nCijaku Rangkasbitung,15000\r\nCikande Baros,15000\r\nCikedal Pandeglang,15000\r\nCikeusal Baros,15000\r\nCikeusik Pandeglang,15000\r\nCikulur Rangkasbitung,15000\r\nCikupa Tigaraksa,10000\r\nCiledug Tangerang,10000\r\nCilegon,11000\r\nCileles Rangkasbitung,15000\r\nCimanggu Pandeglang,15000\r\nCimanuk Pandeglang,15000\r\nCimarga Rangkasbitung,15000\r\nCinangka Baros,15000\r\nCiomas Baros,15000\r\nCipanas Rangkasbitung,15000\r\nCipeucang Pandeglang,15000\r\nCipocok Jaya  Serang,11000\r\nCipondoh  Tangerang,10000\r\nCiputat  Tigaraksa,10000\r\nCiruas Baros,15000\r\nCisata Pandeglang,15000\r\nCisauk Tigaraksa,10000\r\nCisoka Tigaraksa,10000\r\nCitangkil Cilegon,11000\r\nCiwandan Cilegon,11000\r\nCurug Serang,11000\r\nCurug Tigaraksa,10000\r\nCurugbitung  Rangkasbitung,15000\r\nGerogol Cilegon,11000\r\nGunung Kencana Rangkasbitung,15000\r\nJambe Tigaraksa,10000\r\nJatiuwung  Tangerang,10000\r\nJawilan Baros,15000\r\nJayanti  Tigaraksa,10000\r\nJiput Pandeglang,15000\r\nJombang Cilegon,11000\r\nKaduhejo Pandeglang,15000\r\nKarangtanjung Pandeglang,15000\r\nKarangtengah  Tangerang,10000\r\nKarawaci  Tangerang,10000\r\nKasemen Serang,11000\r\nKemiri  Tigaraksa,10000\r\nKibin Baros,15000\r\nKopo Baros,15000\r\nKosambi / Selembaran Jati,10000\r\nKragilan Baros,15000\r\nKramatwatu Baros,15000\r\nKresek Tigaraksa,10000\r\nKronjo Tigaraksa,10000\r\nLabuan Pandeglang,15000\r\nLarangan  Tangerang,10000\r\nLegok Tigaraksa,10000\r\nLeuwidamar Rangkasbitung,15000\r\nMaja Rangkasbitung,15000\r\nMalingping Rangkasbitung,15000\r\nMancak Baros,15000\r\nMandalawangi Pandeglang,15000\r\nMauk Tigaraksa,10000\r\nMenes Pandeglang,15000\r\nMerak Cilegon,11000\r\nMuncang Rangkasbitung,15000\r\nMunjul Pandeglang,15000\r\nNeglasari  Tangerang,10000\r\nPabuaran Baros,15000\r\nPadarincang Baros,15000\r\nPagedangan Tigaraksa,10000\r\nPagelaran Pandeglang,15000\r\nPakuhaji Tigaraksa,10000\r\nPamarayan Baros,15000\r\nPamulang Tigaraksa,10000\r\nPandeglang Kab. Pandeglang,12000\r\nPanggarangan Rangkasbitung,15000\r\nPanimbang Pandeglang,15000\r\nPanongan Tigaraksa,10000\r\nPasar Kemis Tigaraksa,10000\r\nPatia Pandeglang,15000\r\nPeriuk  Tangerang,10000\r\nPetir Baros,15000\r\nPicung Pandeglang,15000\r\nPinang  Tangerang,10000\r\nPondokaren / Jurang Mangu,10000\r\nPontang Baros,15000\r\nPuloampel Baros,15000\r\nPurwakarta Cilegon,11000\r\nRajeg Tigaraksa,10000\r\nRangkasbitung,12000\r\nSajira Rangkasbitung,15000\r\nSaketi Pandeglang,15000\r\nSepatan / Jatmulya Tigaraksa,10000\r\nSerang,11000\r\nSerpong,10000\r\nSobang  Rangkasbitung,15000\r\nSukadiri Tigaraksa,10000\r\nSukaresmi Pandeglang,15000\r\nSumur Pandeglang,15000\r\nTaktakan Serang,11000\r\nTangerang,10000\r\nTanjungteja Baros,15000\r\nTarana Baros,15000\r\nTeluknaga Tigaraksa,10000\r\nTigaraksa Kab. Tangerang,10000\r\nTirtayasa Baros,15000\r\nWalantaka Serang,11000\r\nWanasalam Rangkasbitung,15000\r\nWaringinkurung Baros,15000\r\nWarung Gunung Rangkasbitung,15000\r\n                ', 0),
(1310, 0, 'jne_reguler', 'jne_reguler_4_status', '1', 0),
(1311, 0, 'jne_reguler', 'jne_reguler_5_rate', 'Air Besi Arga Makmur,42000\r\nAir Napal Argamakmur,42000\r\nAir Periukan Tais,42000\r\nArgamakmur Kab. Bengkulu Utara,33000\r\nBatik Nau Argamakmur,42000\r\nBengkulu,21000\r\nBermani Ilir Kepahiang,42000\r\nBermani Ulu Curup,42000\r\nCurup Kab. Rejang Lebong,33000\r\nGading Cempaka Bengkulu,63000\r\nGiri Mulyo Argamakmur,21000\r\nIlir Talo Tais,42000\r\nKampung Melayu Bengkulu,42000\r\nKarang Tinggi Argamakmur,21000\r\nKaur Selatan Kaur,42000\r\nKaur Tengah Kaur,33000\r\nKaur Utara Kaur,33000\r\nKaur Kab. Kaur,33000\r\nKedurang Manna,33000\r\nKepahiang Kab. Kepahiang,42000\r\nKerkap Argamakmur,33000\r\nKetahun Argamakmur,42000\r\nKinal Kaur,42000\r\nKota Manna Kab. Bengkulu Selatan,42000\r\nKota Padang Curup,33000\r\nLais Argamakmur,42000\r\nLebong,42000\r\nLebong Atas Lebong,33000\r\nLebong Selatan Lebong,33000\r\nLebong Utara Lebong,33000\r\nLebong. Teng Lebong,33000\r\nLubuk Sandi Tais,33000\r\nMaje Kaur,42000\r\nManna Kota Manna,42000\r\nMuara Bangkahulu Bengkulu,42000\r\nMuara Nasal Kaur,21000\r\nPadang Jaya Argamakmur,42000\r\nPadang Ulak Tanding Curup,63000\r\nPagar Jati Argamakmur,42000\r\nPematang Tiga Argamakmur,42000\r\nPino Manna,42000\r\nPinoraya Manna,42000\r\nPondok Kelapa Argamakmur,42000\r\nPutri Hijau Argamakmur,42000\r\nRatu Agung Bengkulu,42000\r\nRatu Samban Bengkulu,42000\r\nRimbo Pengadang Lebong,21000\r\nSeginim Manna,21000\r\nSelebar Bengkulu,42000\r\nSeluma Barat Tais,42000\r\nSeluma Selatan Tais,21000\r\nSeluma Timur Tais,42000\r\nSeluma Utara Tais,42000\r\nSeluma Tais,42000\r\nSelupu Rejang Curup,42000\r\nSemidang Alas Maras Tais,42000\r\nSemidang Alas Tais,42000\r\nSindang Kelingi Curup,42000\r\nSukaraja Tais,42000\r\nSungai Serut Bengkulu,42000\r\nTaba Penanjung Argamakmur,42000\r\nTais Kab. Seluma,21000\r\nTalang Empat Argamakmur,42000\r\nTalo,33000\r\nTalokecil Tais,42000\r\nTanjung Kemuning Kaur,42000\r\nTebat Karai Kepahiang,42000\r\nTeluk Segara Bengkulu,42000\r\nUjan Mas Kepahiang,42000\r\nUlu Talo,21000\r\n', 0),
(1312, 0, 'jne_reguler', 'jne_reguler_5_status', '1', 0),
(1313, 0, 'jne_reguler', 'jne_reguler_6_rate', 'Bambanglipuro Bantul,25000\r\nBanguntapan Bantul,25000\r\nBantul Kab. Bantul,14000\r\nBerbah Sleman,25000\r\nCangkringan Sleman,25000\r\nDanurejan Yogyakarta,14000\r\nDepok Sleman,25000\r\nDlingo Bantul,25000\r\nGalur Wates,25000\r\nGamping Sleman,25000\r\nGedangsari Wonosari,25000\r\nGedongtengen Yogyakarta,14000\r\nGirimulyo Wates,25000\r\nGirisubo Wonosari,25000\r\nGodean Sleman,25000\r\nGondokusuman Yogyakarta,14000\r\nGondomanan Yogyakarta,14000\r\nImogiri Bantul,25000\r\nJetis Bantul,25000\r\nJetis Yogyakarta,14000\r\nKalasan Sleman,25000\r\nKalibawang Wates,25000\r\nKarangmojo Wonosari,25000\r\nKasihan Bantul,25000\r\nKokap Wates,25000\r\nKotagede Yogyakarta,14000\r\nKraton Yogyakarta,14000\r\nKretek Bantul,25000\r\nLendah Wates,25000\r\nMantrijeron Yogyakarta,14000\r\nMergangsan Yogyakarta,14000\r\nMinggir Sleman,25000\r\nMlati Sleman,25000\r\nMoyudan Sleman,25000\r\nNanggulan Wates,25000\r\nNgaglik Sleman,25000\r\nNgampilan Yogyakarta,14000\r\nNgawen Wonosari,25000\r\nNgemplak Sleman,25000\r\nNglipar Wonosari,25000\r\nPajangan Bantul,25000\r\nPakem Sleman,25000\r\nPakualaman Yogyakarta,14000\r\nPaliyan Wonosari,25000\r\nPandak Bantul,25000\r\nPanggang Wonosari,25000\r\nPanjatan Wates,25000\r\nPatuk Wonosari,25000\r\nPengasih Wates,25000\r\nPiyungan Bantul,25000\r\nPlayen Wonosari,25000\r\nPleret Bantul,25000\r\nPonjong Wonosari,25000\r\nPrambanan Sleman,14000\r\nPundong Bantul,25000\r\nPurwosari Wonosari,25000\r\nRongkop Wonosari,25000\r\nSamigaluh Wates,25000\r\nSanden Bantul,25000\r\nSaptosari Wonosari,25000\r\nSedayu Bantul,25000\r\nSemanu Wonosari,25000\r\nSemin Wonosari,25000\r\nSentolo Wates,25000\r\nSewon Bantul,25000\r\nSeyegan Sleman,25000\r\nSleman Kab. Sleman,14000\r\nSrandakan Bantul,25000\r\nTanjungsari Wonosari,25000\r\nTegalrejo Yogyakarta,14000\r\nTemon Wates,25000\r\nTempel Sleman,25000\r\nTepus Wonosari,25000\r\nTuri Sleman,25000\r\nUmbulharjo Yogyakarta,14000\r\nWates Kab. Kulon Progo,20000\r\nWirobrajan Yogyakarta,14000\r\nWonosari Kab. Gn. Kidul,20000\r\nYogyakarta,14000\r\n                  ', 0),
(1314, 0, 'jne_reguler', 'jne_reguler_6_status', '1', 0),
(1315, 0, 'jne_reguler', 'jne_reguler_7_rate', '  Cakung  Jakarta Timur,9000\r\nCempaka Putih  Jakarta Pusat,9000\r\nCengkareng  Jakarta Barat,9000\r\nCilandak Jakarta Selatan,9000\r\nCilincing  Jakarta Utara,9000\r\nCipayung  Jakarta Timur,9000\r\nCiracas Jakarta Timur,9000\r\nDuren Sawit  Jakarta Timur,9000\r\nGambir  Jakarta Pusat,9000\r\nGrogol  Jakarta Barat,9000\r\nJagakarsa  Jakarta Selatan,9000\r\nJakarta,9000\r\nJakarta Barat,9000\r\nJakarta Pusat,9000\r\nJakarta Selatan,9000\r\nJakarta Timur,9000\r\nJakarta Utara,9000\r\nJatinegara  Jakarta Timur,9000\r\nJohar Baru  Jakarta Pusat,9000\r\nKalideres  Jakarta Barat,9000\r\nKebayoran Baru Jkt Selatan,9000\r\nKebayoran Lama Jkt Selatan,9000\r\nKebon Jeruk  Jakarta Barat,9000\r\nKelapa Gading  Jakarta Utara,9000\r\nKemayoran  Jakarta Pusat,9000\r\nKembangan  Jakarta Barat,9000\r\nKep. Seribu Selatan,9000\r\nKep. Seribu Utara,9000\r\nKoja  Jakarta Utara,9000\r\nKramat Jati  Jakarta Timur,9000\r\nMakassar  Jakarta Timur,9000\r\nMampang Prapatan Jkt Selatan,9000\r\nMatraman  Jakarta Timur,9000\r\nMenteng  Jakarta Pusat,9000\r\nPademangan  Jakarta Utara,9000\r\nPalmerah  Jakarta Barat,9000\r\nPancoran  Jakarta Selatan,9000\r\nPasar Minggu  Jakarta Selatan,9000\r\nPasar Rebo  Jakarta Timur,9000\r\nPenjaringan  Jakarta Utara,9000\r\nPesanggrahan  Jakarta Selatan,9000\r\nPulau Pramuka,9000\r\nPulo Gadung Jakarta Timur,9000\r\nSawah Besar  Jakarta Pusat,9000\r\nSenen  Jakarta Pusat,9000\r\nSetiabudi  Jakarta Selatan,9000\r\nTaman Sari  Jakarta Barat,9000\r\nTambora Jakarta Barat,9000\r\nTanah Abang Jakarta Pusat,9000\r\nTanjung Priok Jakarta Utara,9000\r\nTebet Jakarta Selatan,9000\r\n                ', 0),
(1316, 0, 'jne_reguler', 'jne_reguler_7_status', '1', 0),
(1317, 0, 'jne_reguler', 'jne_reguler_8_rate', '    Anggrek Kwandang,77000\r\nAnggrek Limboto,77000\r\nAtinggola Limboto,77000\r\nAtinggota Kwandang,77000\r\nBatudaa Limboto,77000\r\nBoliyohuto Limboto,77000\r\nBonepante Suwawa,77000\r\nBongomeme Limboto,77000\r\nBotumoito Tilamuta,77000\r\nDulupi Tilamuta,77000\r\nDungingi Gorontalo,43000\r\nGorontalo,43000\r\nKabila Suwawa,77000\r\nKota Barat Gorontalo,43000\r\nKota Selatan Gorontalo,43000\r\nKota Timur Gorontalo,43000\r\nKota Utara Gorontalo,43000\r\nKwandang Kab. Gorontalo Utara,61000\r\nLemito Marisa,77000\r\nLimboto Barat Limboto,61000\r\nLimboto Kab. Gorontalo,61000\r\nMananggu Tilamuta,77000\r\nMarisa Kab. Pahuwato,61000\r\nMootilango Limboto,77000\r\nPaguat Marisa,77000\r\nPaguyaman Tilamuta,77000\r\nPatilanggio Marisa,77000\r\nPopayato Marisa,77000\r\nPulubala Limboto,77000\r\nRandangan Marisa,77000\r\nSumalata Kwandang,77000\r\nSumalata Limboto,77000\r\nSuwawa Kab. Bone Bolango,61000\r\nTaluditi Marisa,77000\r\nTapa Suwawa,77000\r\nTelaga Limboto,77000\r\nTibawa Limboto,77000\r\nTilamuta Kab. Boalemo,61000\r\nTolangohula Limboto,77000\r\nTolinggula Limboto,77000\r\nTolingula Kwandang,77000\r\nWonosari Tilamuta,77000\r\n              ', 0),
(1318, 0, 'jne_reguler', 'jne_reguler_8_status', '1', 0),
(1319, 0, 'jne_reguler', 'jne_reguler_9_rate', ' Air Hangat Timur Sungaipenuh,52000\r\nAir Hangat Sungaipenuh,52000\r\nBajubang Muarabulian,52000\r\nBangko Kab. Merangin,41000\r\nBatang Asai Sarolangun,78000\r\nBatang Merangin Sungaipenuh,52000\r\nBathin II Babeko Muarabungo,52000\r\nBatin XXIV Muarabulian,52000\r\nBetara Kualatungkal,52000\r\nDanau Kerinci Sungaipenuh,52000\r\nDanau Teluk Jambi,18000\r\nDendang Muarasabak,52000\r\nGunung Kerinci Sungaipenuh,52000\r\nGunung Raya Sungaipenuh,78000\r\nHamparan Rawang Sungaipenuh,52000\r\nJambi,18000\r\nJambi Luar Kota Sengeti,52000\r\nJambi Selatan Jambi,18000\r\nJambi Timur Jambi,18000\r\nJangkat Bangko,78000\r\nJelutung Jambi,18000\r\nJujuhan Muarabungo,78000\r\nKayuaro Sungaipenuh,78000\r\nKeliling Danau Sungaipenuh,52000\r\nKota Baru Jambi,18000\r\nKualatungkal,41000\r\nKumpeh Ulu Sengeti,52000\r\nKumpeh Sengeti,52000\r\nLimbur Lb Mengkuang M. Bungo,52000\r\nMandiangin Sarolangun,52000\r\nMaro Sebo Ilir Muarabulian,52000\r\nMarosebo Ulu Muarabulian,52000\r\nMarosebo Sengeti,52000\r\nMendahara Muarasabak,52000\r\nMerlung Kualatungkal,52000\r\nMersam Muarabulian,52000\r\nMestong Sengeti,52000\r\nMuara Limun Sarolangun,52000\r\nMuara Sabak Kab. Tnj Jabung Tmr,41000\r\nMuara Siau Bangko,52000\r\nMuara Tebo,41000\r\nMuarabulian Kab. Batang Hari,41000\r\nMuarabungo Kab. Bungo,41000\r\nMuaratembesi Muarabulian,52000\r\nMuko Muko Batin VII Muarabungo,52000\r\nNipahpanjang Muarasabak,52000\r\nPamenang Bangko,52000\r\nPasar Jambi Jambi,18000\r\nPauh Sarolangun,52000\r\nPelawan Singkut Sarolangun,52000\r\nPelayangan Jambi,18000\r\nPelepat Ilir Muarabungo,52000\r\nPelepat Muarabungo,52000\r\nPemayung Muarabulian,52000\r\nPengabuan Kualatungkal,52000\r\nRantau Pandan Muarabungo,52000\r\nRantaurasau Muarasabak,78000\r\nRimbo Bujang Muara Tebo,52000\r\nRimbo Ilir Muara Tebo,52000\r\nRimbo Ulu Muara Tebo,52000\r\nSadu Muarasabak,52000\r\nSarolangun Kab. Sarolangun,41000\r\nSekernan Sengeti,52000\r\nSengeti,41000\r\nSitinjau Laut Sungaipenuh,52000\r\nSumai Muara Tebo,52000\r\nSungai Bahar Sengeti,52000\r\nSungai Manau Bangko,78000\r\nSungaipenuh Kab. Kerinci,41000\r\nTabir Ulu Bangko,52000\r\nTabir Bangko,52000\r\nTanah Sepenggal Muarabungo,52000\r\nTanah Tumbuh Muarabungo,52000\r\nTebo Ilir Muara Tebo,41000\r\nTebo Tengah Muara Tebo,41000\r\nTebo Ulu Muara Tebo,41000\r\nTelanaipura Jambi,18000\r\nTengah Ilir Muara Tebo,52000\r\nTungkal Ilir Kualatungkal,41000\r\nTungkal Ulu Kualatungkal,41000\r\nVII Koto Muara Tebo,52000\r\n                 ', 0),
(1320, 0, 'jne_reguler', 'jne_reguler_9_status', '1', 0);
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1321, 0, 'jne_reguler', 'jne_reguler_10_rate', '     Agrabinta Cianjur,19000\r\nAndir Bandung,6000\r\nAnjatan Indramayu,20000\r\nArahan  Indramayu ,20000\r\nArcamanik Bandung,6000\r\nArgapura Majalengka,20000\r\nArjasari Soreang,6000\r\nArjawinangun Sumber,20000\r\nAstanaanyar Bandung,6000\r\nAstanajapura Sumber,20000\r\nBabakan Madang Cibinong,10000\r\nBabakan Sumber,20000\r\nBabakancikao Purwakarta,10000\r\nBabakanciparay Bandung,6000\r\nBabelan Cikarang,10000\r\nBaleendah Soreang,6000\r\nBalongan Indramayu,20000\r\nBaluburlimbangan Garut,10000\r\nBandung,6000\r\nBandung Kidul Bandung,6000\r\nBandung Kulon Bandung,6000\r\nBandung Wetan Bandung,6000\r\nBangodua Indramayu,20000\r\nBanjar,8000\r\nBanjaran  Majalengka,20000\r\nBanjaran Soreang,6000\r\nBanjarsari Ciamis,10000\r\nBanjarwangi Garut,10000\r\nBantargadung Sukabumi,19000\r\nBantargebang Bekasi,10000\r\nBantarkalong Singaparna,10000\r\nBantarujeg Majalengka,20000\r\nBanyuresmi Garut,10000\r\nBanyusari Karawang,13000\r\nBaregbeg Ciamis,10000\r\nBaros Sukabumi,10000\r\nBatujajar Ngamprah,10000\r\nBatujaya Karawang,13000\r\nBatununggal Bandung,6000\r\nBayongbong Garut,10000\r\nBeber Sumber,20000\r\nBeji Depok,10000\r\nBekasi,10000\r\nBekasi Barat Bekasi,10000\r\nBekasi Selatan Bekasi,10000\r\nBekasi Timur Bekasi,10000\r\nBekasi Utara Bekasi,10000\r\nBinong Subang,10000\r\nBlanakan Subang,10000\r\nBogor,10000\r\nBogor Barat Bogor,10000\r\nBogor Selatan Bogor,10000\r\nBogor Tengah Bogor,10000\r\nBogor Timur Bogor,10000\r\nBogor Utara Bogor,10000\r\nBojong Soang Soreang,6000\r\nBojong Purwakarta,10000\r\nBojongasih Singaparna. ,10000\r\nBojonggambir Singaparna,10000\r\nBojonggede Cibinong,10000\r\nBojonggenteng Sukabumi,19000\r\nBojongloa Kaler Bandung,6000\r\nBojongloa Kidul Bandug,6000\r\nBojongmanggu Cikarang,10000\r\nBojongpicung Cianjur,19000\r\nBongas Indramayu,20000\r\nBuahdua Sumedang,10000\r\nBungbulang Garut,10000\r\nBungursari Purwakarta,10000\r\nCabangbungin Cikarang,10000\r\nCampaka Mulya Cianjur,19000\r\nCampaka Cianjur,19000\r\nCampaka Purwakarta,10000\r\nCangkuang Soreang,6000\r\nCantigi  Indramayu ,20000\r\nCaringin Cibinong,10000\r\nCaringin Garut,10000\r\nCaringin Sukabumi,19000\r\nCariu Cibinong,10000\r\nCiamis Kab. Ciamis,8000\r\nCiampea Cibinong,10000\r\nCiampel Karawang,10000\r\nCianjur Kab. Cianjur,15000\r\nCiasem Subang,10000\r\nCiawi Gebang Kuningan,20000\r\nCiawi Cibinong,10000\r\nCiawi Singaparna,10000\r\nCibadak Sukabumi,10000\r\nCibalong Garut,10000\r\nCibalong Singaparna,10000\r\nCibarusah Cikarang,10000\r\nCibatu Garut,10000\r\nCibatu Purwakarta,10000\r\nCibeber Cianjur,19000\r\nCibeunying Kaler Bandung,6000\r\nCibeunying Kidul Bandung,6000\r\nCibeureum Kuningan,20000\r\nCibeureum Sukabumi,10000\r\nCibeureum Tasikmalaya,8000\r\nCibingbin Kuningan,20000\r\nCibinong Cianjur,19000\r\nCibinong Kab. Bogor,10000\r\nCibiru Bandung,6000\r\nCibitung Cikarang,10000\r\nCibitung Sukabumi,19000\r\nCibiuk Garut,10000\r\nCibogo Subang,10000\r\nCibuaya Karawang,13000\r\nCibubur Depok,10000\r\nCibugel Sumedang,10000\r\nCibung Bulang Cibinong,10000\r\nCicadas Bandung,6000\r\nCicalengka Soreang,6000\r\nCicantayan Sukabumi,19000\r\nCicendo Bandung,6000\r\nCicurug Sukabumi,19000\r\nCidadap Bandung,6000\r\nCidadap Sukabumi,19000\r\nCidahu Kuningan,20000\r\nCidahu Sukabumi,19000\r\nCidaun Cianjur,19000\r\nCidolog Ciamis,10000\r\nCidolog Sukabumi,19000\r\nCiemas Sukabumi,19000\r\nCigalontang Singaparna,10000\r\nCigandamekar  Kuningan,20000\r\nCigasong  Majalengka,20000\r\nCigedug Garut,10000\r\nCigombong Cibinong,10000\r\nCigudeg Cibinong,10000\r\nCigugur Ciamis,10000\r\nCigugur Kuningan,20000\r\nCihampelas  Ngamprah,10000\r\nCihaurbeuti Ciamis,10000\r\nCihideung Tasikmalaya,8000\r\nCihurip Garut,10000\r\nCijambe Subang,10000\r\nCijati Cianjur,19000\r\nCijeruk Cibinong,10000\r\nCijeungjing Ciamis,10000\r\nCijulang Ciamis,10000\r\nCikadu Cianjur,19000\r\nCikajang Garut,10000\r\nCikakak Sukabumi,19000\r\nCikalong Kulon Cianjur,19000\r\nCikalong Singaparna,10000\r\nCikalongwetan Ngamprah,10000\r\nCikampek Karawang,10000\r\nCikancung Soreang,6000\r\nCikarang Barat Cikarang,10000\r\nCikarang Pusat  Cikarang,10000\r\nCikarang Selatan  Cikarang,10000\r\nCikarang Timur,10000\r\nCikarang Utara,10000\r\nCikarang Kab. Bekasi,10000\r\nCikatomas Singaparna,10000\r\nCikaum Subang,10000\r\nCikedung Indramayu,20000\r\nCikelet Garut,10000\r\nCikembar Sukabumi,19000\r\nCikidang Sukabumi,19000\r\nCikijing Majalengka,20000\r\nCikole Sukabumi,10000\r\nCikoneng Ciamis,10000\r\nCilaku Cianjur,19000\r\nCilamaya Wetan Karawang,13000\r\nCilamaya Karawang,13000\r\nCilawu Garut,10000\r\nCilebak Kuningan,20000\r\nCilebar Karawang,13000\r\nCiledug Sumber,20000\r\nCilengkrang Soreang,6000\r\nCileungsi Cibinong,10000\r\nCileunyi Soreang,6000\r\nCililin Ngamprah,10000\r\nCilimus Kuningan,20000\r\nCimahi,6000\r\nCimahi Selatan Cimahi,6000\r\nCimahi Tengah Cimahi,6000\r\nCimahi Utara Cimahi,6000\r\nCimahi Kuningan ,20000\r\nCimalaka Sumedang,10000\r\nCimanggis Depok,10000\r\nCimanggung Sumedang,10000\r\nCimaragas Ciamis,10000\r\nCimareme Ngamprah,6000\r\nCimaung Soreang,6000\r\nCimenyan Soreang,6000\r\nCimerak Ciamis,10000\r\nCineam Singaparna,10000\r\nCingambul  Majalengka,20000\r\nCiniru Kuningan ,20000\r\nCiomas Cibinong,10000\r\nCipaku Ciamis,10000\r\nCipanas Cianjur,19000\r\nCiparay Soreang,6000\r\nCipatat Ngamprah,10000\r\nCipatujah Singaparna,10000\r\nCipedes Tasikmalaya,8000\r\nCipeundeuy Ngamprah,10000\r\nCipeundeuy Subang,10000\r\nCipicung Kuningan,20000\r\nCipongkor Ngamprah,10000\r\nCipunagara Subang,10000\r\nCiracap Sukabumi,19000\r\nCiranjang Cianjur,19000\r\nCirebon,10000\r\nCirebon Barat Cirebon,10000\r\nCirebon Selatan Sumber,20000\r\nCirebon Utara Sumber,10000\r\nCireunghas Sukabumi,19000\r\nCisaat Sukabumi,10000\r\nCisaga Ciamis. ,10000\r\nCisalak Subang,10000\r\nCisarua Cibinong,10000\r\nCisarua Ngamprah,10000\r\nCisarua Sumedang,10000\r\nCisayong Singaparna,10000\r\nCiseeng Cibinong,10000\r\nCisewu Garut,10000\r\nCisitu Sumedang,10000\r\nCisolok Sukabumi,19000\r\nCisompet Garut,10000\r\nCisurupan Garut,10000\r\nCitamiang Sukabumi,10000\r\nCiteureup Cibinong,10000\r\nCiwaringin Sumber,20000\r\nCiwaru  Kuningan ,20000\r\nCiwidey Soreang,10000\r\nCoblong Bandug,6000\r\nCompreng Subang,10000\r\nConggeang Sumedang,10000\r\nCugenang Cianjur,19000\r\nCulamega Singaparna,10000\r\nCurugkembar Sukabumi,19000\r\nDarangdan Purwakarta,10000\r\nDarma Kuningan,20000\r\nDarmaraja Sumedang,10000\r\nDawuan Majalengka,20000\r\nDayeuhkolot Soreang,6000\r\nDepok,10000\r\nDepok Sumber,20000\r\nDramaga Cibinong,10000\r\nDukupuntang Sumber,20000\r\nGabus Wetan Indramayu,20000\r\nGaneas Sumedang,10000\r\nGantar  Indramayu ,20000\r\nGarawangi Kuningan,20000\r\nGarut,8000\r\nGarut Kota  Garut,8000\r\nGebang Sumber,20000\r\nGegerbitung Sukabumi,19000\r\nGegesik Sumber,20000\r\nGekbrong Cianjur,19000\r\nGempol Sumber,20000\r\nGunung Putri Cibinong,10000\r\nGunung Puyuh Sukabumi,10000\r\nGunung Sindur Cibinong,10000\r\nGunung Tanjung Singaparna,10000\r\nGunungguruh Sukabumi,19000\r\nGununghalu Ngamprah,10000\r\nHantara Kuningan,20000\r\nHarjamukti  Cirebon ,10000\r\nHaurgeulis Indramayu,20000\r\nIbun Soreang,6000\r\nIndihiang Tasikmalaya,8000\r\nIndramayu,16000\r\nJalaksana Kuningan,20000\r\nJalan Gagak Subang,10000\r\nJamanis Singaparna,10000\r\nJampang Kulon Sukabumi,19000\r\nJampang Tengah Sukabumi,19000\r\nJapara Kuningan,20000\r\nJasinga Cibinong,10000\r\nJatiasih Bekasi,10000\r\nJatibarang Indramayu,16000\r\nJatigede Sumedang,10000\r\nJatiluhur Purwakarta,10000\r\nJatinagara Ciamis,10000\r\nJatinangor Sumedang,6000\r\nJatinuggal Sumedang,10000\r\nJatisampurna Bekasi,10000\r\nJatisari Karawang,10000\r\nJatitujuh Majalengka,20000\r\nJatiwangi Majalengka,16000\r\nJatiwaras Singaparna,10000\r\nJayakerta Karawang,13000\r\nJonggol Cibinong,10000\r\nJuntinyuat Indramayu,20000\r\nKabandungan Sukabumi,19000\r\nKadipaten Majalengka,16000\r\nKadipaten Singaparna,10000\r\nKadudampit Sukabumi,19000\r\nKadugede Kuningan,20000\r\nKadungora Garut,10000\r\nKadupandak Cianjur,19000\r\nKalapanunggal Sukabumi,19000\r\nKalibunder Sukabumi,19000\r\nKalijati Subang,10000\r\nKalimanggis Kuningan,20000\r\nKalipucang Ciamis,10000\r\nKaliwedi Sumber,20000\r\nKandanghaur Indramayu,20000\r\nKapetakan Sumber,20000\r\nKarangampel Indramayu,20000\r\nKarangbahagia Cikarang,10000\r\nKarangjaya Singaparna,10000\r\nKarangkancana Kuningan,20000\r\nKarangnunggal Singaparna,10000\r\nKarangpawitan Garut,10000\r\nKarangsembung Sumber,20000\r\nKarangtengah Cianjur,19000\r\nKarangtengah Garut,10000\r\nKarangwareng Sumber,20000\r\nKarawang,10000\r\nKarawang Barat Karawang,10000\r\nKarawang Timur Karawang,10000\r\nKatapang Soreang,6000\r\nKawali Ciamis,10000\r\nKawalu Tasikmalaya,8000\r\nKebonpedes Sukabumi,19000\r\nKedawung Sumber ,10000\r\nKedokan Bunder  Indramayu ,20000\r\nKedungwaringin Cikarang,10000\r\nKejaksan  Cirebon ,10000\r\nKemang Cibinong,10000\r\nKersamanah Garut,10000\r\nKertajati Majalengka,20000\r\nKertasari Soreang,6000\r\nKertasemaya Indramayu,20000\r\nKesambi Cirebon ,10000\r\nKiaracondong Bandung,6000\r\nKiarapedes Purwakarta,10000\r\nKlangenan Sumber,20000\r\nKlapanunggal Cibinong,10000\r\nKlari Karawang,10000\r\nKotabaru Karawang,10000\r\nKramatmulya Kuningan,20000\r\nKrangkeng Indramayu,20000\r\nKroya Indramayu,20000\r\nKuningan Kab Kuningan,16000\r\nKutawaluya Karawang,13000\r\nLakbok Ciamis,10000\r\nLangensari Banjar,8000\r\nLangkap Lancar Ciamis,10000\r\nLebakwangi Kuningan,20000\r\nLegon Kulon Subang,10000\r\nLelea Indramayu,20000\r\nLeles Cianjur,19000\r\nLeles Garut,10000\r\nLemah Sugih Majalengka,20000\r\nLemahabang Wadas Karawang,10000\r\nLemahabang Sumber,20000\r\nLemahwungkuk  Cirebon ,10000\r\nLembang Ngamprah,6000\r\nLembur Situ Sukabumi,10000\r\nLengkong Bandung,6000\r\nLengkong Sukabumi,19000\r\nLeuwigoong Garut,10000\r\nLeuwiliang Cibinong,10000\r\nLeuwimunding Majalengka,20000\r\nLeuwisadeng Cibinong,10000\r\nLeuwisari Singaparna,10000\r\nLigung Majalengka,20000\r\nLimo Depok,10000\r\nLohbener Indramayu,20000\r\nLosarang Indramayu,20000\r\nLosari Sumber,16000\r\nLumbung Ciamis,10000\r\nLuragung Kuningan,20000\r\nMaja Majalengka,20000\r\nMajalaya Karawang,10000\r\nMajalaya Soreang,8000\r\nMajalengka Kab Majalengka,16000\r\nMalangbong Garut,10000\r\nMaleber Kuningan,20000\r\nMande Cianjur,19000\r\nMandirancan Kuningan,20000\r\nMangkubumi Tasikmalaya,8000\r\nMangunjaya Ciamis,10000\r\nMangunreja Singaparna,10000\r\nManiis Purwakarta,10000\r\nManonjaya Singaparna,10000\r\nMargaasih Soreang,10000\r\nMargacinta Bandung,6000\r\nMargahayu Soreang,6000\r\nMedan Satria Bekasi,10000\r\nMegamendung Cibinong,10000\r\nMekarmukti Garut,10000\r\nMuaragembong Cikarang,10000\r\nMundu Sumber,10000\r\nMustika Jaya Bekasi,10000\r\nNagrak Sukabumi,19000\r\nNagreg Soreang,10000\r\nNanggung Cibinong,10000\r\nNaringgul Cianjur,19000\r\nNgamprah Kab. Bandung Brt,6000\r\nNusaherang Kuningan,20000\r\nNyalindung Sukabumi,19000\r\nPabedilan Sumber,20000\r\nPabuaran Subang,10000\r\nPabuaran Sukabumi,19000\r\nPabuaran Sumber,20000\r\nPacet Cianjur,19000\r\nPacet Soreang,10000\r\nPadaherang Ciamis,10000\r\nPadakembang Singaparna,10000\r\nPadalarang Ngamprah,10000\r\nPagaden Subang,10000\r\nPagelaran Cianjur,19000\r\nPagerageung Singaparna,10000\r\nPakenjeng Garut,10000\r\nPakisjaya Karawang,13000\r\nPalasah Majalengka,20000\r\nPalimanan Sumber,16000\r\nPamanukan Subang,10000\r\nPamarican Ciamis,10000\r\nPameungpeuk Garut,10000\r\nPameungpeuk Soreang,6000\r\nPamijahan Cibinong,10000\r\nPamulihan Garut,10000\r\nPamulihan Sumedang,10000\r\nPanawangan Ciamis,10000\r\nPancalang Kuningan,20000\r\nPancatengah Singaparna,10000\r\nPancoranmas Depok,10000\r\nPangalengan Soreang,10000\r\nPangandaran Ciamis,10000\r\nPangenan Sumber,20000\r\nPangkalan Karawang,13000\r\nPanguragan Sumber,20000\r\nPanjalu Ciamis,10000\r\nPanumbangan Ciamis,10000\r\nPanyingkiran Majalengka,20000\r\nParakansalak Sukabumi,19000\r\nParigi Ciamis,10000\r\nParongpong Ngamprah,10000\r\nParung Cibinong,10000\r\nParungkuda Sukabumi,19000\r\nParungpanjang Cibinong,10000\r\nParungponteng Singaparna,10000\r\nPasaleman Sumber,20000\r\nPasawahan Kuningan,20000\r\nPasawahan Purwakarta,10000\r\nPaseh Soreang,10000\r\nPaseh Sumedang,10000\r\nPasirjambu Soreang,10000\r\nPasirwangi Garut,10000\r\nPataruman Banjar,8000\r\nPatokbeusi Subang,10000\r\nPebayuran Cikarang,10000\r\nPedes Karawang,13000\r\nPekalipan Cirebon ,10000\r\nPelabuhanratu Sukabumi,15000\r\nPengatikan Garut,10000\r\nPeundeuy Garut,10000\r\nPlered  Sumber,10000\r\nPlered Purwakarta,10000\r\nPlumbon Sumber,20000\r\nPondok Melati Bekasi,10000\r\nPondokgede Bekasi,10000\r\nPondoksalam Purwakarta,10000\r\nPurabaya Sukabumi,19000\r\nPurwadadi Ciamis,10000\r\nPurwadadi Subang,10000\r\nPurwaharja Banjar,8000\r\nPurwakarta Kab. Purwakarta,8000\r\nPurwasari Karawang,10000\r\nPusakanagara Subang,10000\r\nPuspahiang Singaparna,10000\r\nRajadesa Ciamis,10000\r\nRajagaluh Majalengka,20000\r\nRajapolah Singaparna,10000\r\nRanca Bungur Cibinong,10000\r\nRancabali Soreang,10000\r\nRancaekek Soreang,6000\r\nRancah Ciamis,10000\r\nRancakalong Sumedang,10000\r\nRancasari Bandung,6000\r\nRawalumbu Bekasi,10000\r\nRawamerta Karawang,10000\r\nRegol Bandung,6000\r\nRengasdengklok Karawang,10000\r\nRongga  Ngamprah,10000\r\nRumpin Cibinong,10000\r\nSadananya Ciamis,10000\r\nSagalaherang Subang,10000\r\nSagaranten Sukabumi,19000\r\nSalawu Singaparna,10000\r\nSalopa Singaparna,10000\r\nSamarang Garut,10000\r\nSariwangi Singaparna,10000\r\nSawangan,10000\r\nSedong Sumber,20000\r\nSelaawi Garut,10000\r\nSelajambe Kuningan,20000\r\nSerang Baru Cikarang,10000\r\nSetu Cikarang,10000\r\nSidamulih Ciamis,10000\r\nSimpenan Sukabumi,19000\r\nSindang Indramayu ,20000\r\nSindangagung Kuningan,20000\r\nSindangbarang Cianjur,19000\r\nSindangkasih Ciamis,10000\r\nSindangkerta Ngamprah,10000\r\nSindangwangi  Majalengka,20000\r\nSingajaya Garut,10000\r\nSingaparna Kab. Tasikmalaya,8000\r\nSituraja Sumedang,10000\r\nSliyeg Indramayu,20000\r\nSodonghilir Singaparna,10000\r\nSolokan Jeruk Soreang,6000\r\nSoreang Kab. Bandung,6000\r\nSubang Kab. Subang,8000\r\nSubang Kuningan,20000\r\nSucinaraja Garut,10000\r\nSukabumi,10000\r\nSukadana Ciamis,10000\r\nSukagumiwang  Indramayu ,20000\r\nSukahaji Majalengka,20000\r\nSukahening Singaparna,10000\r\nSukajadi Bandung,6000\r\nSukajaya Cibinong,10000\r\nSukakarya Cikarang,10000\r\nSukalarang Sukabumi,19000\r\nSukaluyu Cianjur,19000\r\nSukamakmur Cibinong,10000\r\nSukanegara Cianjur,19000\r\nSukaraja Cibinong,10000\r\nSukaraja Singaparna,10000\r\nSukaraja Sukabumi,10000\r\nSukarame Singaparna,10000\r\nSukaratu Singaparna,10000\r\nSukaresik Singaparna,10000\r\nSukaresmi Cianjur,19000\r\nSukaresmi Garut,10000\r\nSukasari Bandung,6000\r\nSukasari Purwakarta,10000\r\nSukasari Sumedang,10000\r\nSukatani Cikarang,10000\r\nSukatani Purwakarta,10000\r\nSukawangi Cikarang,10000\r\nSukawening Garut,10000\r\nSukmajaya Depok,10000\r\nSukra Indramayu,20000\r\nSumber Jaya Majalengka,20000\r\nSumber Kab Cirebon,16000\r\nSumedang,8000\r\nSumedang Selatan Sumedang,8000\r\nSumedang Utara Sumedang,8000\r\nSumurbandung Bandung,6000\r\nSurade Sukabumi,19000\r\nSurian Sumedang,10000\r\nSusukan Lebak Sumber,20000\r\nSusukan Sumber,20000\r\nTajurhalang Cibinong,10000\r\nTakokak Cianjur,19000\r\nTalaga Majalengka,20000\r\nTalagasari Karawang,10000\r\nTalegong Garut,10000\r\nTamansari Cibinong,10000\r\nTamansari Tasikmalaya,8000\r\nTambak Sari Ciamis,10000\r\nTambelang Cikarang,10000\r\nTambun Selatan Cikarang,10000\r\nTambun Utara Cikarang,10000\r\nTanah Sereal Bogor,10000\r\nTanggeung Cianjur,19000\r\nTanjungjaya Singaparna,10000\r\nTanjungkerta Sumedang,10000\r\nTanjungmedar Sumedang,10000\r\nTanjungsari Cibinong,10000\r\nTanjungsari Sumedang,10000\r\nTanjungsiang Subang,10000\r\nTaraju Singaparna,10000\r\nTarogong Kaler Garut,10000\r\nTarogong Kidul Garut,10000\r\nTarumajaya Cikarang,10000\r\nTasikmalaya,8000\r\nTawang Tasikmalaya,8000\r\nTegalbuleud Sukabumi,19000\r\nTegalwaru Karawang,13000\r\nTegalwaru Purwakarta,10000\r\nTeluk Jambe Barat Karawang,10000\r\nTeluk Jambe Timur Karawang,10000\r\nTempuran Karawang,13000\r\nTengah Tani  Sumber ,10000\r\nTenjo Cibinong,10000\r\nTenjolaya Cibinong,10000\r\nTirtajaya Karawang,13000\r\nTirtamulya Karawang,10000\r\nTomo Sumedang,10000\r\nTrisi  Indramayu ,20000\r\nUjungberung Bandung,6000\r\nUjungjaya Sumedang,10000\r\nWado Sumedang,10000\r\nWaled Sumber,20000\r\nWaluran Sukabumi,19000\r\nWanaraja Garut,10000\r\nWanayasa Purwakarta,10000\r\nWarudoyong Sukabumi,10000\r\nWarungkiara Sukabumi,19000\r\nWarungkondang Cianjur,19000\r\nWeru Sumber,20000\r\nWidasari Indramayu,20000\r\n             ', 0),
(1322, 0, 'jne_reguler', 'jne_reguler_10_status', '1', 0),
(1323, 0, 'jne_reguler', 'jne_reguler_11_rate', '      Adimulyo Kebumen,27000\r\nAdipala Cilacap,22000\r\nAdiwerna Slawi,25000\r\nAjibarang Purwokerto,20000\r\nAliyan Kebumen,27000\r\nAmbal Kebumen,27000\r\nAmbarawa Ungaran,20000\r\nAmpel Boyolali,25000\r\nAmpelgading Pemalang,25000\r\nAndong Boyolali,25000\r\nArgomulyo Salatiga,20000\r\nAyah Kebumen,27000\r\nBae Kudus,25000\r\nBagelen Purworejo,27000\r\nBaki Sukoharjo,25000\r\nBalapulang Slawi,25000\r\nBalen Bojonegoro,25000\r\nBancak Ungaran,25000\r\nBandar Batang,25000\r\nBandongan Magelang,27000\r\nBangsri Jepara,25000\r\nBanjarejo Blora,25000\r\nBanjarharjo Brebes,25000\r\nBanjarmangu Banjarnegara,25000\r\nBanjarnegara Kab. Banjarnegara,20000\r\nBanjarsari Solo,14000\r\nBansari Temanggung,27000\r\nBantarbolang Pemalang,25000\r\nBantarkawung Brebes,25000\r\nBantasari Cilacap,22000\r\nBanyubiru Ungaran,25000\r\nBanyudono Boyolali,25000\r\nBanyumanik Semarang,14000\r\nBanyumas Purwokerto,20000\r\nBanyuputih Batang,25000\r\nBanyuurip Purworejo,27000\r\nBatang  Kab Batang,20000\r\nBatangan Pati,25000\r\nBatealit Jepara,25000\r\nBatur Banjarnegara,25000\r\nBaturaden Purwokerto,25000\r\nBaturetno. Wonogiri,25000\r\nBatuwarno. Wonogiri,25000\r\nBaureno Bojonegoro,25000\r\nBawang Banjarnegara,25000\r\nBawang Batang,25000\r\nBawen Ungaran,25000\r\nBayan Purworejo,27000\r\nBayat Klaten,25000\r\nBejen Temanggung,27000\r\nBelik Pemalang,25000\r\nBendosari Sukoharjo,25000\r\nBener Purworejo,27000\r\nBergas Ungaran,25000\r\nBinangun Cilacap,22000\r\nBlado Batang,25000\r\nBlora Kab. Blora,20000\r\nBobotsari Purbalingga,25000\r\nBodeh Pemalang,25000\r\nBogorejo Blora,25000\r\nBoja Kendal,25000\r\nBojonegoro Kab. Bojonegoro,20000\r\nBojong Kajen,25000\r\nBojong Slawi,25000\r\nBojongsari Purbalingga,25000\r\nBonang Demak,25000\r\nBonorowo Kebumen,27000\r\nBorobudur Magelang,27000\r\nBoyolali Kab. Boyolali,20000\r\nBrangsong Kendal,25000\r\nBrati Purwodadi,25000\r\nBrebes Kab. Brebes,20000\r\nBringin Ungaran,25000\r\nBruno Purworejo,27000\r\nBuaran Kajen,25000\r\nBuayan Kebumen,27000\r\nBubulan Bojonegoro,25000\r\nBukateja Purbalingga,25000\r\nBulakamba Brebes,25000\r\nBulu Rembang,25000\r\nBulu Sukoharjo,25000\r\nBulu Temanggung,27000\r\nBulukerto. Wonogiri,25000\r\nBuluspesantren Kebumen,27000\r\nBumiayu Brebes,20000\r\nBumijawa Slawi,25000\r\nButuh Purworejo,27000\r\nCandimulyo Magelang,27000\r\nCandiroto Temanggung,27000\r\nCandisari Semarang,14000\r\nCawas Klaten,25000\r\nCeper Klaten,25000\r\nCepiring Kendal,25000\r\nCepogo Boyolali,25000\r\nCepu Blora,20000\r\nCilacap,15000\r\nCilacap Selatan Cilacap,15000\r\nCilacap Tengah Cilacap,15000\r\nCilacap Utara Cilacap,15000\r\nCilongok Purwokerto,25000\r\nCimanggu Cilacap,22000\r\nCipari Cilacap,22000\r\nCluwak Pati,25000\r\nColomadu Karanganyar,25000\r\nComal Pemalang,25000\r\nDander Bojonegoro,25000\r\nDawe Kudus,25000\r\nDayeuhluhur Cilacap,22000\r\nDelanggu Klaten,25000\r\nDemak,20000\r\nDempet Demak,25000\r\nDoro Kajen,25000\r\nDukuhseti Pati,25000\r\nDukuhturi Slawi,25000\r\nDukuhwaru Slawi,25000\r\nDukun Magelang,27000\r\nEromoko. Wonogiri,25000\r\nGabus Pati,25000\r\nGabus Purwodadi,25000\r\nGajah Demak,25000\r\nGajahmungkur Semarang,14000\r\nGandrungmangu Cilacap,22000\r\nGantiwarno Klaten,25000\r\nGarung Wonosobo,27000\r\nGatak Sukoharjo,25000\r\nGayamsari Semarang,14000\r\nGebang Purworejo,27000\r\nGebog Kudus,25000\r\nGemawang Temanggung,27000\r\nGembong Pati,25000\r\nGemolong Sragen,25000\r\nGemuh Kendal,25000\r\nGenuk Semarang,14000\r\nGesi Sragen,25000\r\nGetasan Ungaran,25000\r\nGeyer Purwodadi,25000\r\nGirimarto. Wonogiri,25000\r\nGiritontro. Wonogiri,25000\r\nGiriwoyo. Wonogiri,25000\r\nGodong Purwodadi,25000\r\nGombong Kebumen,27000\r\nGondang Bojonegoro,25000\r\nGondang Sragen,25000\r\nGondangrejo Karanganyar,25000\r\nGrabag Magelang,27000\r\nGrabag Purworejo,27000\r\nGringsing Batang,25000\r\nGrobogan Purwodadi,25000\r\nGrogol Sukoharjo,25000\r\nGubug Purwodadi,25000\r\nGumelar Purwokerto,25000\r\nGunem Rembang,25000\r\nGuntur Demak,25000\r\nGunungpati Semarang,14000\r\nGunungwungkal Pati,25000\r\nJaken Pati,25000\r\nJakenan Pati,25000\r\nJambu Ungaran,25000\r\nJapah Blora,25000\r\nJaten Karanganyar,25000\r\nJati Blora,25000\r\nJati Kudus,25000\r\nJatibarang Brebes,25000\r\nJatilawang Purwokerto,25000\r\nJatinegara Slawi,25000\r\nJatinom Klaten,25000\r\nJatipurno. Wonogiri,25000\r\nJatipuro Karanganyar,25000\r\nJatiroto. Wonogiri,25000\r\nJatisrono. Wonogiri,25000\r\nJatiyoso Karanganyar,25000\r\nJebres Solo,14000\r\nJekulo Kudus,25000\r\nJenar Sragen,25000\r\nJenawi Karanganyar,25000\r\nJepara Kab. Jepara,20000\r\nJepon Blora,25000\r\nJeruklegi Cilacap,22000\r\nJiken Blora,25000\r\nJogonalan Klaten,25000\r\nJumantono Karanganyar,25000\r\nJumapolo Karanganyar,25000\r\nJumo Temanggung,27000\r\nJuwana Pati,25000\r\nJuwangi Boyolali,25000\r\nJuwiring Klaten,25000\r\nKajen Kab. Pekalongan,25000\r\nKajoran Magelang,27000\r\nKaliangkrik Magelang,27000\r\nKalibagor Purwokerto,25000\r\nKalibawang Wonosobo,27000\r\nKalibening Banjarnegara,25000\r\nKaligesing Purworejo,27000\r\nKaligondang Purbalingga,25000\r\nKalijambe Sragen,25000\r\nKalikajar Wonosobo,27000\r\nKalikotes Klaten,25000\r\nKalimanah Purbalingga,25000\r\nKalinyamatan Jepara,25000\r\nKaliori Rembang,25000\r\nKalitidu Bojonegoro,25000\r\nKaliwiro Wonosobo,27000\r\nKaliwungu Kendal,25000\r\nKaliwungu Kudus,25000\r\nKaliwungu Ungaran,25000\r\nKaloran Temanggung,27000\r\n&quot;Kampung Laut Kab. Cilacap\r\n&quot;,22000\r\nKandang Serang Kajen,25000\r\nKandangan Temanggung,27000\r\nKandeman Batang,25000\r\nKangkung Kendal,25000\r\nKanor Bojonegoro,25000\r\nKapas Bojonegoro,25000\r\nKaranganom Klaten,25000\r\nKaranganyar Demak,25000\r\nKaranganyar Kab. Karanganyar,20000\r\nKaranganyar Kajen,25000\r\nKaranganyar Kebumen,27000\r\nKaranganyar Purbalingga,25000\r\nKarangawen Demak,25000\r\nKarangayung Purwodadi,25000\r\nKarangdadap Kajen,25000\r\nKarangdowo Klaten,25000\r\nKaranggayam Kebumen,27000\r\nKaranggede Boyolali,25000\r\nKarangjambu Purbalingga,25000\r\nKarangkobar Banjarnegara,25000\r\nKaranglewas Purwokerto,25000\r\nKarangmalang Sragen,25000\r\nKarangmoncol Purbalingga,25000\r\nKarangnongko Klaten,25000\r\nKarangpandan Karanganyar,25000\r\nKarangpucung Cilacap,22000\r\nKarangreja Purbalingga,25000\r\nKarangsambung Kebumen,27000\r\nKarangtengah Demak,25000\r\nKarangtengah. Wonogiri,25000\r\nKarimunjawa Jepara,38000\r\nKartosuro Sukoharjo,20000\r\nKasiman Bojonegoro,25000\r\nKawunganten Cilacap,22000\r\nKayen Pati,25000\r\nKebakkramat Karanganyar,25000\r\nKebasen Purwokerto,25000\r\nKebonagung Demak,25000\r\nKebonarum Klaten,25000\r\nKebumen,21000\r\nKedawung Sragen,25000\r\nKedewan Bojonegoro,25000\r\nKedu Temanggung,27000\r\nKedung Jepara,25000\r\nKedungadem Bojonegoro,25000\r\nKedungbanteng Purwokerto,25000\r\nKedungbanteng Slawi,25000\r\nKedungjati Purwodadi,25000\r\nKedungrejo Cilacap,22000\r\nKedungtuban Blora,25000\r\nKedungwuni Kajen,25000\r\nKejajar Wonosobo,27000\r\nKejobong Purbalingga,25000\r\nKeling Jepara,25000\r\nKemalang Klaten,25000\r\nKemangkon Purbalingga,25000\r\nKembang Jepara,25000\r\nKembaran Purwokerto,25000\r\nKemiri Purworejo,27000\r\nKemranjen Purwokerto,25000\r\nKemusu Boyolali,25000\r\nKendal Kab. Kendal,20000\r\nKepil Wonosobo,27000\r\nKepohbaru Bojonegoro,25000\r\nKerjo Karanganyar,25000\r\nKersana Brebes,25000\r\nKertanegara Purbalingga,25000\r\nKerteg Wonosobo,27000\r\nKesesi Kajen,25000\r\nKesugihan Cilacap,22000\r\nKetanggungan Brebes,25000\r\nKismantoro. Wonogiri,25000\r\nKlambu Purwodadi,25000\r\nKlaten,20000\r\nKlaten Selatan Klaten,25000\r\nKlaten Tengah Klaten,25000\r\nKlaten Utara Klaten,25000\r\nKledung Temanggung,27000\r\nKlego Boyolali,25000\r\nKlirong Kebumen,27000\r\nKradenan Blora,25000\r\nKradenan Purwodadi,25000\r\nKragan Rembang,25000\r\nKramat Slawi,25000\r\nKranggan Temanggung,27000\r\nKroya Cilacap,22000\r\nKudus Kab. Kudus,20000\r\nKunduran Blora,25000\r\nKutasari Purbalingga,25000\r\nKutoarjo Purworejo,27000\r\nKutowinangun Kebumen,27000\r\nKuwarasan Kebumen,27000\r\nLarangan Brebes,25000\r\nLasem Rembang,25000\r\nLaweyan Solo,14000\r\nLebak Barang Kajen,25000\r\nLebaksiu Slawi,25000\r\nLeksono Wonosobo,27000\r\nLimbangan Kendal,25000\r\nLimpung Batang,25000\r\nLoano Purworejo,27000\r\nLosari Brebes,25000\r\nLumbir Purwokerto,25000\r\nMadukara Banjarnegara,25000\r\nMagelang,17000\r\nMagelang Selatan Magelang,17000\r\nMagelang Tengah Magelang,17000\r\nMagelang Utara Magelang,17000\r\nMajenang Cilacap,17000\r\nMalo Bojonegoro,25000\r\nMandiraja Banjarnegara,25000\r\nManisrenggo Klaten,25000\r\nManyaran. Wonogiri,25000\r\nMaos Cilacap,22000\r\nMargadana Tegal,20000\r\nMargasari Slawi,25000\r\nMargomulyo Bojonegoro,25000\r\nMargorejo Pati,25000\r\nMargoyoso Pati,25000\r\nMasaran Sragen,25000\r\nMatesih Karanganyar,25000\r\nMayong Jepara,25000\r\nMejobo Kudus,25000\r\nMertoyudan Magelang,27000\r\nMijen Demak,25000\r\nMijen Semarang,14000\r\nMiri Sragen,25000\r\nMirit Kebumen,27000\r\nMlonggo Jepara,25000\r\nMoga Pemalang,25000\r\nMojogedang Karanganyar,25000\r\nMojolaban Sukoharjo,25000\r\nMojosongo Boyolali,25000\r\nMojotengah Wonosobo,27000\r\nMondokan Sragen,25000\r\nMranggen Demak,25000\r\nMrebet Purbalingga,25000\r\nMungkid Kab. Magelang,21000\r\nMuntilan. Magelang,27000\r\nMusuk Boyolali,25000\r\nNalumsari Jepara,25000\r\nNgablak Magelang,27000\r\nNgadirejo Temanggung,27000\r\nNgadirojo. Wonogiri,25000\r\nNgaliyan Semarang,14000\r\nNgambon Bojonegoro,25000\r\nNgampel Kendal,25000\r\nNgargoyoso Karanganyar,25000\r\nNgaringan Purwodadi,25000\r\nNgasem Bojonegoro,25000\r\nNgawen Blora,25000\r\nNgawen Klaten,25000\r\nNgemplak Boyolali,25000\r\nNgombol Purworejo,27000\r\nNgraho Bojonegoro,25000\r\nNgrampal Sragen,25000\r\nNgulwar Magelang,27000\r\nNguntoronadi. Wonogiri,25000\r\nNguter Sukoharjo,25000\r\nNogosari Boyolali,25000\r\nNusawungu Cilacap,22000\r\nPabelan Ungaran,25000\r\nPadamara Purbalingga,25000\r\nPadangan Bojonegoro,25000\r\nPadureso Kebumen,27000\r\nPagentan Banjarnegara,25000\r\nPagerbarang Slawi,25000\r\nPageruyung Kendal,25000\r\nPaguyangan Brebes,25000\r\nPakis Magelang,27000\r\nPakuncen Purwokerto,25000\r\nPamotan Rembang,25000\r\nPancur Rembang,25000\r\nPangkah Slawi,25000\r\nPaninggaran Kajen,25000\r\nParakan Temanggung,27000\r\nParanggupito Wonogiri,25000\r\nPasar Kliwon Solo,14000\r\nPatean Kendal,25000\r\nPatebon Kendal,25000\r\nPati Kab. Pati,20000\r\nPatikraja Purwokerto,25000\r\nPatimuan Cilacap,22000\r\nPecalungan Batang,25000\r\nPecangaan Jepara,25000\r\nPedan Klaten,25000\r\nPedurungan Semarang,14000\r\nPegandon Kendal,25000\r\nPejagoan Kebumen,27000\r\nPejawaran Banjarnegara,25000\r\nPekalongan,20000\r\nPekalongan Barat Pekalongan,20000\r\nPekalongan Selatan Pekalongan,20000\r\nPekalongan Timur Pekalongan,20000\r\nPekalongan Utara Pekalongan,20000\r\nPemalang Kab. Pemalang,20000\r\nPenawangan Purwodadi,25000\r\nPengadegan Purbalingga,25000\r\nPetanahan Kebumen,27000\r\nPetarukan Pemalang,25000\r\nPetungkriyono Kajen,25000\r\nPituruh Purworejo,27000\r\nPlantungan Kendal,25000\r\nPlupuh Sragen,25000\r\nPolanharjo Klaten,25000\r\nPolokarto Sukoharjo,25000\r\nPoncowarno Kebumen,27000\r\nPracimantoro. Wonogiri,25000\r\nPrambanan Klaten,25000\r\nPrembun Kebumen,27000\r\nPringapus Ungaran,25000\r\nPringsurat Temanggung,27000\r\nPucakwangi Pati,25000\r\nPuhpelem Wonogiri,25000\r\nPulokulon Purwodadi,25000\r\nPulosari Pemalang,25000\r\nPunggelan Banjarnegara,25000\r\nPurbalingga Kab. Purbalingga,20000\r\nPuring Kebumen,27000\r\nPurwanegara Banjarnegara,25000\r\nPurwantoro. Wonogiri,25000\r\nPurwodadi Kab. Grobogan,20000\r\nPurwodadi Purworejo,21000\r\nPurwojati Purwokerto,25000\r\nPurwokerto,20000\r\nPurwokerto Barat Purwokerto,25000\r\nPurwokerto Selatan Purwokerto,25000\r\nPurwokerto Timur Purwokerto,25000\r\nPurwokerto Utara Purwokerto,25000\r\nPurworejo Kab. Purworejo,21000\r\nPurworejo/klampok Banjarnegara,25000\r\nPurwosari Bojonegoro,25000\r\nRakit Banjarnegara,25000\r\nRandublatung Blora,25000\r\nRandudongkal Pemalang,25000\r\nRawalo Purwokerto,25000\r\nReban Batang,25000\r\nRembang Kab. Rembang,20000\r\nRembang Purbalingga,20000\r\nRinginarum Kendal,25000\r\nRowokele Kebumen,27000\r\nRowosari Kendal,25000\r\nSadang Kebumen,27000\r\nSalam Muntilan,27000\r\nSalaman Magelang,27000\r\nSalatiga,20000\r\nSale Rembang,25000\r\nSalem Brebes,25000\r\nSambi Boyolali,25000\r\nSambirejo Sragen,25000\r\nSambong Blora,25000\r\nSambungmacan Sragen,25000\r\nSampang Cilacap,22000\r\nSapuran Wonosobo,27000\r\nSarang Rembang,25000\r\nSawangan Magelang,27000\r\nSawit Boyolali,25000\r\nSayung Demak,25000\r\nSecang Magelang,27000\r\nSedan Rembang,25000\r\nSekar Bojonegoro,25000\r\nSelo Boyolali,25000\r\nSelogiri. Wonogiri,25000\r\nSelomerto Wonosobo,27000\r\nSelopampang Temanggung,27000\r\nSemarang,14000\r\nSemarang Barat Semarang,14000\r\nSemarang Selatan,14000\r\nSemarang Tengah Semarang,14000\r\nSemarang Timur Semarang,14000\r\nSemarang Utara Semarang,14000\r\nSempor Kebumen,27000\r\nSerengan Solo,14000\r\nSidareja Cilacap,22000\r\nSidoharjo Sragen,25000\r\nSidoharjo. Wonogiri,25000\r\nSidomukti Salatiga,20000\r\nSidorejo Salatiga,20000\r\nSigaluh Banjarnegara,25000\r\nSimo Boyolali,25000\r\nSingorojo Kendal,25000\r\nSirampog Brebes,25000\r\nSiwalan Kajen,25000\r\nSlawi Kab. Tegal,20000\r\nSlogohimo. Wonogiri,25000\r\nSluke Rembang,25000\r\nSokaraja Purwokerto,25000\r\nSolo,14000\r\nSomagede Purwokerto,25000\r\nSonggom Brebes,25000\r\nSragen,20000\r\nSragi Kajen,25000\r\nSrumbung Magelang,27000\r\nSruweng Kebumen,27000\r\nSubah Batang,25000\r\nSugihwaras Bojonegoro,25000\r\nSukodono Sragen,25000\r\nSukoharjo,20000\r\nSukoharjo Wonosobo,27000\r\nSukolilo Pati,25000\r\nSukorejo Kendal,25000\r\nSukosewu Bojonegoro,25000\r\nSulang Rembang,25000\r\nSumbang Purwokerto,25000\r\nSumber Rembang,25000\r\nSumberejo Bojonegoro,25000\r\nSumberlawang Sragen,25000\r\nSumowono Ungaran,25000\r\nSumpiuh Purwokerto,25000\r\nSuradadi Slawi,25000\r\nSuruh Ungaran,25000\r\nSusukan Banjarnegara,25000\r\nSusukan Ungaran,25000\r\nTahunan Jepara,25000\r\nTalang Slawi,25000\r\nTalun Kajen,25000\r\nTaman Pemalang,25000\r\nTambak Purwokerto,25000\r\nTambakrejo Bojonegoro,25000\r\nTambakromo Pati,25000\r\nTangen Sragen,25000\r\nTanggungharjo Purwodadi,25000\r\nTanjung Brebes,25000\r\nTanon Sragen,25000\r\nTarub Slawi,25000\r\nTasikmadu Karanganyar,25000\r\nTawangharjo Purwodadi,25000\r\nTawangmangu Karanganyar,25000\r\nTawangsari Sukoharjo,25000\r\nTayu Pati,25000\r\nTegal,20000\r\nTegal Barat Tegal,20000\r\nTegal Selatan Tegal,20000\r\nTegal Timur Tegal,20000\r\nTegalrejo Magelang,27000\r\nTegowanu Purwodadi,25000\r\nTelogowungu Pati,25000\r\nTemanggung Kab. Temanggung,21000\r\nTemayang Bojonegoro,25000\r\nTembalang Semarang,14000\r\nTembarak Temanggung,27000\r\nTempuran Magelang,27000\r\nTengaran Ungaran,25000\r\nTeras Boyolali,25000\r\nTersono Batang,25000\r\nTingkir Salatiga,20000\r\nTirto Kajen,25000\r\nTirtomoyo. Wonogiri,25000\r\nTlogomulyo Temanggung,27000\r\nTodanan Blora,25000\r\nTonjong Brebes,25000\r\nToroh Purwodadi,25000\r\nTrangkil Pati,25000\r\nTretep Temanggung,27000\r\nTrucuk Bojonegoro,25000\r\nTrucuk Klaten,25000\r\nTugu Semarang,14000\r\nTulis Batang,25000\r\nTulung Klaten,25000\r\nTunjungan Blora,25000\r\nTuntang Ungaran,25000\r\nUlujami Pemalang,25000\r\nUndaan Kudus,25000\r\nUngaran,14000\r\nUngaran Barat Semarang,14000\r\nUngaran Timur Semarang,14000\r\nWadaslintang Wonosobo,27000\r\nWanadadi Banjarnegara,25000\r\nWanareja Cilacap,22000\r\nWanayasa Banjarnegara,25000\r\nWangon Purwokerto,25000\r\nWarungasem Batang,25000\r\nWarungpring Pemalang,25000\r\nWarureja Slawi,25000\r\nWatukumpul Pemalang,25000\r\nWatumalang Wonosobo,27000\r\nWedarijaksa Pati,25000\r\nWedi Klaten,25000\r\nWedung Demak,25000\r\nWelahan Jepara,25000\r\nWeleri Kendal,25000\r\nWeru Sukoharjo,25000\r\nWindusari Magelang,27000\r\nWinong Pati,25000\r\nWiradesa Kajen,25000\r\nWirosari Purwodadi,25000\r\nWonoboyo Temanggung,27000\r\nWonogiri Kab. Wonogiri,20000\r\nWonokerto Kajen,25000\r\nWonopringgo Kajen,25000\r\nWonosalam Demak,25000\r\nWonosari Brebes,25000\r\nWonosari Klaten,25000\r\nWonosegoro Boyolali,25000\r\nWonosobo,21000\r\nWonotunggal Batang,25000\r\nWuryantoro. Wonogiri,25000\r\n            ', 0),
(1324, 0, 'jne_reguler', 'jne_reguler_11_status', '1', 0),
(1325, 0, 'jne_reguler', 'jne_reguler_12_rate', '        Ajung Jember,38000\r\nAmbulu Jember,38000\r\nAmbunten Sumenep,32000\r\nAmpelgading Kepanjen,38000\r\nArjasa Jember,38000\r\nArjasa Situbondo,38000\r\nArjasa Sumenep,48000\r\nArjosari Pacitan,38000\r\nArosbaya Bangkalan,32000\r\nAsembagus Situbondo,38000\r\nAsemrowo Surabaya,16000\r\nBabadan Ponorogo,38000\r\nBabat Lamongan,32000\r\nBadegan Ponorogo,38000\r\nBagor Nganjuk,32000\r\nBakung Blitar,38000\r\nBalega Bangkalan,32000\r\nBalerejo Caruban,38000\r\nBalong Ponorogo,38000\r\nBalongbendo Sidoarjo,20000\r\nBalongpanggang Gresik,32000\r\nBalung Jember,38000\r\nBancar Tuban,32000\r\nBandar Pacitan,38000\r\nBandarkedungmulyo Jombang,32000\r\nBandung Tulungagung,32000\r\nBangil Pasuruan,30000\r\nBangilan Tuban,32000\r\nBangkalan Kab. Bangkalan,25000\r\nBangorejo Banyuwangi,38000\r\nBangsal Mojokerto,20000\r\nBangsalsari Jember,38000\r\nBantaran Probolinggo,38000\r\nBantur Kepanjen,38000\r\nBanyakan Kediri,30000\r\nBanyuanyar Probolinggo,38000\r\nBanyuates Sampang,32000\r\nBanyuglugur Situbondo,38000\r\nBanyuputih Situbondo,38000\r\nBanyuwangi Kab Banyuwangi,30000\r\nBarat Magetan,38000\r\nBareng Jombang,32000\r\nBaron Nganjuk,32000\r\nBatang Batang Sumenep,32000\r\nBatu,30000\r\nBatuan Sumenep,32000\r\nBatumarmar Pamekasan,32000\r\nBatuputih Sumenep,32000\r\nBeji Pasuruan,30000\r\nBendo Magetan,38000\r\nBendungan Trenggalek,32000\r\nBenjeng Gresik,32000\r\nBenowo Surabaya,16000\r\nBerbek Nganjuk,32000\r\nBesuk Probolinggo,38000\r\nBesuki Situbondo,38000\r\nBesuki Tulungagung,32000\r\nBinakal Bondowoso,38000\r\nBinangun Blitar,38000\r\nBlimbing Malang,20000\r\nBlitar,30000\r\nBluluk Lamongan,32000\r\nBluto Sumenep,32000\r\nBondowoso Kab Bondowoso,30000\r\nBoyolangu Tulungagung,32000\r\nBringin Ngawi,38000\r\nBrondong Lamongan,32000\r\nBubutan Surabaya,16000\r\nBuduran Sidoarjo,16000\r\nBugulkidul Pasuruan,20000\r\nBulak Surabaya,16000\r\nBululawang Kepanjen,38000\r\nBumiaji Batu,30000\r\nBungah Gresik,32000\r\nBungatan Situbondo,38000\r\nBungkal Ponorogo,38000\r\nBurneh Bangkalan,32000\r\nCamplong Sampang,32000\r\nCampurdarat Tulungagung,32000\r\nCandi Sidoarjo,16000\r\nCandipuro Lumajang,38000\r\nCaruban Kab. Madiun,30000\r\nCerme Gresik,32000\r\nCermee Bondowoso,38000\r\nCluring Banyuwangi,38000\r\nCurahdami Bondowoso,38000\r\nDagangan Caruban,38000\r\nDampit Kepanjen,38000\r\nDasuk Sumenep,32000\r\nDau Kepanjen,38000\r\nDawarblandong Mojokerto,20000\r\nDeket Lamongan,32000\r\nDiwek Jombang,32000\r\nDlangu Mojokerto,20000\r\nDoko Blitar,38000\r\nDolopo Caruban,38000\r\nDongko Trenggalek,32000\r\nDonomulyo Kepanjen,38000\r\nDonorojo Pacitan,38000\r\nDringu Probolinggo,20000\r\nDriyorejo Gresik,32000\r\nDuduksampeyan Gresik,32000\r\nDukuh Pakis Surabaya,16000\r\nDukun Gresik,32000\r\nDungkek Sumenep,32000\r\nDupok Probolinggo,20000\r\nDurenan Trenggalek,32000\r\nGading Probolinggo,38000\r\nGadingrejo Pasuruan,20000\r\nGalis Bangkalan,32000\r\nGalis Pamekasan,32000\r\nGambiran Banyuwangi,38000\r\nGampengrejo Kediri,20000\r\nGanding Sumenep,32000\r\nGandusari Blitar,38000\r\nGandusari Trenggalek,32000\r\nGapura Sumenep,32000\r\nGarum Blitar,38000\r\nGayam Sumenep,48000\r\nGayungan Surabaya,16000\r\nGedangan Kepanjen,38000\r\nGedangan Sidoarjo,16000\r\nGedeg Mojokerto,20000\r\nGeger Bangkalan,32000\r\nGeger Caruban,38000\r\nGemarang Caruban,38000\r\nGempol Pasuruan,30000\r\nGending Probolinggo,38000\r\nGeneng Ngawi,38000\r\nGenteng Banyuwangi,38000\r\nGenteng Surabaya,16000\r\nGiligenting Sumenep,48000\r\nGiri Banyuwangi,38000\r\nGlagah Banyuwangi,38000\r\nGlagah Lamongan,32000\r\nGlenmore Banyuwangi,38000\r\nGondang Mojokerto,20000\r\nGondang Nganjuk,32000\r\nGondang Tulungagung,32000\r\nGondanglegi Kepanjen,38000\r\nGondangwetan Pasuruan,30000\r\nGrabagan Tuban,32000\r\nGrati Pasuruan,30000\r\nGresik Kab. Gresik,16000\r\nGrogol Kediri,30000\r\nGrujugan Bondowoso,38000\r\nGubeng Surabaya,16000\r\nGucialit Lumajang,38000\r\nGudo Jombang,32000\r\nGuluk Guluk Sumenep,32000\r\nGumukmas Jember,38000\r\nGununganyar Surabaya,16000\r\nGurah Kediri,20000\r\nJabon Sidoarjo,16000\r\nJabung Kepanjen,38000\r\nJambangan Surabaya,16000\r\nJambon Ponorogo,38000\r\nJangkar Situbondo,38000\r\nJatibanteng Situbondo,38000\r\nJatikalen Nganjuk,32000\r\nJatirejo Mojokerto,20000\r\nJatirogo Tuban,32000\r\nJatiroto Lumajang,38000\r\nJelbuk Jember,38000\r\nJember,20000\r\nJenangan Ponorogo,38000\r\nJenggawah Jember,38000\r\nJenu Tuban,32000\r\nJetis Mojokerto,20000\r\nJetis Ponorogo,38000\r\nJiwan Caruban,20000\r\nJogorogo Ngawi,38000\r\nJogoroto Jombang,32000\r\nJombang Jember,38000\r\nJombang Kab. Jombang,25000\r\nJrengik Sampang,32000\r\nJunrejo Batu,30000\r\nKabat Banyuwangi,38000\r\nKabuh Jombang,32000\r\nKademangan Blitar,38000\r\nKademangan Probolinggo,20000\r\nKadur Pamekasan,32000\r\nKalianget Sumenep,32000\r\nKalibaru Banyuwangi,38000\r\nKalidawir Tulungagung,32000\r\nKalipare Kepanjen,38000\r\nKalipuro Banyuwangi,38000\r\nKalisat Jember,38000\r\nKalitengah Lamongan,32000\r\nKaliwates Jember,20000\r\nKamal Bangkalan,32000\r\nKampak Trenggalek,32000\r\nKandangan Kediri,30000\r\nKandat Kediri,30000\r\nKangean Sumenep,48000\r\nKanigaran Probolinggo,20000\r\nKanigoro Blitar,38000\r\nKapongan Situbondo,38000\r\nKarangan Trenggalek,32000\r\nKaranganyar Ngawi,38000\r\nKarangbinangun Lamongan,32000\r\nKaranggeneng Lamongan,32000\r\nKarangjati Ngawi,38000\r\nKarangpilang Surabaya,16000\r\nKarangploso Kepanjen,38000\r\nKarangrejo Magetan,38000\r\nKarangrejo Tulungagung,32000\r\nKaras Magetan,38000\r\nKare Caruban,38000\r\nKartoharjo Madiun,20000\r\nKartoharjo Magetan,38000\r\nKasembon Kepanjen,38000\r\nKauman Ponorogo,38000\r\nKauman Tulungagung,32000\r\nKawedanan Magetan,38000\r\nKayen Kidul Kediri,30000\r\nKebomas Gresik,32000\r\nKebonagung Pacitan,38000\r\nKebonsari Caruban,38000\r\nKedamean Gresik,32000\r\nKedawung Pasuruan,30000\r\nKediri,20000\r\nKedundung Sampang,32000\r\nKedunggalar Ngawi,38000\r\nKedungjajang Lumajang,38000\r\nKedungkandang Malang,20000\r\nKedungpring Lamongan,32000\r\nKedungwaru Tulungagung,32000\r\nKejayaan Pasuruan,30000\r\nKembangbahu Lamongan,32000\r\nKemlagi Mojokerto,20000\r\nKencong Jember,38000\r\nKendal Ngawi,38000\r\nKendit Situbondo,38000\r\nKendungan Ngawi,38000\r\nKenduruan Tuban,32000\r\nKenjeran Surabaya,16000\r\nKepanjen Kab Malang,30000\r\nKepanjenkidul Blitar,30000\r\nKepung Kediri,30000\r\nKerek Tuban,32000\r\nKertosono Nganjuk,32000\r\nKesamben Blitar,38000\r\nKesamben Jombang,32000\r\nKetapang Sampang,32000\r\nKlabang Bondowoso,38000\r\nKlakah Lumajang,38000\r\nKlampis Bangkalan,32000\r\nKlojen Malang,20000\r\nKokop Bangkalan,32000\r\nKonang Bangkalan,32000\r\nKotaanyar Probolinggo,38000\r\nKraksaan Probolinggo,30000\r\nKras Kediri,30000\r\nKraton Pasuruan,30000\r\nKrejengan Probolinggo,38000\r\nKrembangan Surabaya,16000\r\nKrembung Sidoarjo,16000\r\nKrian Kab. Sidoarjo,16000\r\nKromengan Kepanjen,38000\r\nKrucil Probolinggo,38000\r\nKudu Jombang,32000\r\nKunir Lumajang,38000\r\nKunjang Kediri,30000\r\nKuripan Probolinggo,38000\r\nKutorejo Mojokerto,20000\r\nKwadungan Ngawi,38000\r\nKwanyar Bangkalan,32000\r\nLabang Bangkalan,32000\r\nLakarsantri Surabaya,16000\r\nLamongan Kab. Lamongan,25000\r\nLarangan Pamekasan,32000\r\nLaren Lamongan,32000\r\nLawang Kepanjen,38000\r\nLeces Probolinggo,20000\r\nLedokombo Jember,38000\r\nLekok Pasuruan,30000\r\nLembeyan Magetan,38000\r\nLengkong Nganjuk,32000\r\nLenteng Sumenep,32000\r\nLicin Banyuwangi,38000\r\nLoceret Nganjuk,32000\r\nLowokwaru Malang,20000\r\nLumajang Kab. Lumajang,30000\r\nLumbang Pasuruan,30000\r\nLumbang Probolinggo,38000\r\nMadiun,20000\r\nMadiun Caruban,20000\r\nMaduran Lamongan,32000\r\nMaesan Bondowoso,38000\r\nMagersari Mojokerto,20000\r\nMagetan Kab Magetan,30000\r\nMalang,20000\r\nManding Sumenep,32000\r\nMangaran Situbondo,38000\r\nManguharjo Madiun,20000\r\nMantingan Ngawi,38000\r\nMantup Lamongan,32000\r\nManyar Gresik,32000\r\nMaospati Magetan,38000\r\nMaron Probolinggo,38000\r\nMasalembu Sumenep,48000\r\nMayang Jember,38000\r\nMayangan Probolinggo,20000\r\nMegaluh Jombang,32000\r\nMejayan Caruban,38000\r\nMenganti Gresik,32000\r\nMerakkurak Tuban,32000\r\nMlandingan Situbondo,38000\r\nMlarak Ponorogo,38000\r\nModo Lamongan,32000\r\nModung Bangkalan,32000\r\nMojo Kediri,30000\r\nMojoagung Jombang,32000\r\nMojoanyar Mojokerto,20000\r\nMojokerto,20000\r\nMojoroto Kediri,20000\r\nMojosari Mojokerto,20000\r\nMojowarno Jombang,32000\r\nMontong Tuban,32000\r\nMulyorejo Surabaya,16000\r\nMumbulsari Jember,38000\r\nMuncar Banyuwangi,38000\r\nMunjungan Trenggalek,32000\r\nNawangan Pacitan,38000\r\nNgadiluwih Kediri,20000\r\nNgadirojo Pacitan,38000\r\nNgajum Kepanjen,38000\r\nNgancar Kediri,30000\r\nNganjuk Kab. Nganjuk,25000\r\nNgantang Kepanjen,38000\r\nNgantru Tulungagung,32000\r\nNgariboyo Magetan,38000\r\nNgawi Kab Ngawi,30000\r\nNgebel Ponorogo,38000\r\nNgetos Nganjuk,32000\r\nNgimbang Lamongan,32000\r\nNglegok Blitar,38000\r\nNgluyu Nganjuk,32000\r\nNgoro Jombang,32000\r\nNgoro Mojokerto,20000\r\nNgrambe Ngawi,38000\r\nNgrayun Ponorogo,38000\r\nNgronggot Nganjuk,32000\r\nNguling Pasuruan,30000\r\nNguntoronadi Magetan,38000\r\nNguntut Tulungagung,32000\r\nNgusikan  Jombang,32000\r\nNonggunong Sumenep,48000\r\nNongko Jajar Pasuruan,30000\r\nOmben Sampang,32000\r\nPabean Cantikan Surabaya,16000\r\nPace Nganjuk,32000\r\nPacet Mojokerto,20000\r\nPaciran Lamongan,32000\r\nPacitan Kab Pacitan,30000\r\nPadang Lumajang,38000\r\nPadas Ngawi,38000\r\nPademawu Pamekasan,32000\r\nPagak Kepanjen,38000\r\nPagelaran Kepanjen,38000\r\nPagerwojo Tulungagung,32000\r\nPagu Kediri,30000\r\nPaiton Probolinggo,30000\r\nPajarakan Probolinggo,38000\r\nPakal Surabaya,16000\r\nPakel Tulungagung,32000\r\nPakem Bondowoso,38000\r\nPakis Kepanjen,38000\r\nPakisaji Kepanjen,38000\r\nPakong Pamekasan,32000\r\nPakuniran Probolinggo,38000\r\nPakusari Jember,38000\r\nPalang Tuban,32000\r\nPalengaan Pamekasan,32000\r\nPamekasan Kab. Pamekasan,25000\r\nPanarukan Situbondo,38000\r\nPanceng Gresik,32000\r\nPandaan,20000\r\nPanekan Magetan,38000\r\nPanggul Trenggalek,32000\r\nPanggungrejo Blitar,38000\r\nPangkur Ngawi,38000\r\nPanji Situbondo,38000\r\nPanti Jember,38000\r\nPapar Kediri,30000\r\nParajurit Kulon Mojokerto,20000\r\nParang Magetan,38000\r\nPare Kediri,20000\r\nParengan Tuban,32000\r\nParon Ngawi,38000\r\nPasean Pamekasan,32000\r\nPasirian Lumajang,38000\r\nPasongsongan Sumenep,32000\r\nPasrepan Pasuruan,30000\r\nPasrujambe Lumajang,38000\r\nPasuruan,20000\r\nPatianrowo Nganjuk,32000\r\nPatrang Jember,20000\r\nPegantenan Pamekasan,32000\r\nPerak Jombang,32000\r\nPesanggaran Banyuwangi,38000\r\nPesantren Kediri,20000\r\nPeterongan Jombang,32000\r\nPilangkenceng Caruban,38000\r\nPitu Ngawi,38000\r\nPlandaan Jombang,32000\r\nPlaosan Magetan,38000\r\nPlemahan Kediri,30000\r\nPloso Jombang,32000\r\nPlosoklaten Kediri,30000\r\nPlumbang Tuban,32000\r\nPogalan Trenggalek,32000\r\nPohjentrek Pasuruan,30000\r\nPoncokusumo Kepanjen,38000\r\nPoncol Magetan,38000\r\nPonggok Blitar,38000\r\nPonorogo Kab Ponorogo,30000\r\nPorong Sidoarjo,16000\r\nPragaan Sumenep,32000\r\nPrajekan Bondowoso,38000\r\nPrambon Nganjuk,32000\r\nPrambon Sidoarjo,20000\r\nPrigen Pasuruan,30000\r\nPringkuku Pacitan,38000\r\nProbolinggo,20000\r\nPronojiwo Lumajang,38000\r\nProppo Pamekasan,32000\r\nPucanglaban Tulungagung,32000\r\nPucuk Lamongan,32000\r\nPudak Ponorogo,38000\r\nPuger Jember,38000\r\nPujer Bondowoso,38000\r\nPujon Kepanjen,38000\r\nPule Trenggalek,32000\r\nPulung Ponorogo,38000\r\nPuncu Kediri,30000\r\nPungging Mojokerto,20000\r\nPunung Pacitan,38000\r\nPuri Mojokerto,20000\r\nPurwoasri Kediri,30000\r\nPurwodadi Pasuruan,30000\r\nPurwoharjo Banyuwangi,38000\r\nPurworejo Pasuruan,20000\r\nPurwosari Pasuruan,30000\r\nPuspo Pasuruan,30000\r\nRaas Sumenep,48000\r\nRambipuji Jember,38000\r\nRanduagung Lumajang,38000\r\nRanuyoso Lumajang,38000\r\nRejoso Nganjuk,32000\r\nRejoso Pasuruan,30000\r\nRejotangan Tulungagung,32000\r\nRembang Pasuruan,30000\r\nRengel Tuban,32000\r\nRinginrejo Kediri,30000\r\nRobatal Sampang,32000\r\nRogojampi Banyuwangi,38000\r\nRowokangkung Lumajang,38000\r\nRubaru Sumenep,32000\r\nRungkut Surabaya,16000\r\nSambeng Lamongan,32000\r\nSambikerep Surabaya,16000\r\nSambit Ponorogo,38000\r\nSampang Kab. Sampang,25000\r\nSampung Ponorogo,38000\r\nSanankulon Blitar,38000\r\nSananwetan Blitar,30000\r\nSangkapura Gresik,32000\r\nSapeken Sumenep,48000\r\nSaradan Caruban,38000\r\nSarirejo Lamongan,32000\r\nSaronggi Sumenep,32000\r\nSawahan Caruban,38000\r\nSawahan Nganjuk,32000\r\nSawahan Surabaya,16000\r\nSawoo Ponorogo,38000\r\nSedati Sidoarjo,16000\r\nSekaran Lamongan,32000\r\nSelopuro Blitar,38000\r\nSelorejo Blitar,38000\r\nSemampir Surabaya,16000\r\nSemanding Tuban,32000\r\nSemboro Jember,38000\r\nSemen Kediri,30000\r\nSempol Bondowoso,38000\r\nSempu Banyuwangi,38000\r\nSendang Tulungagung,32000\r\nSenduro Lumajang,38000\r\nSenori Tuban,32000\r\nSepulu Bangkalan,32000\r\nSidayu Gresik,32000\r\nSidoarjo Kab. Sidoarjo,16000\r\nSiliragung Banyuwangi,38000\r\nSilo Jember,38000\r\nSiman Ponorogo,38000\r\nSimokerto  Surabaya,16000\r\nSine Ngawi,38000\r\nSinggahan Tuban,32000\r\nSingojuruh Banyuwangi,38000\r\nSingosari Kepanjen,38000\r\nSitubondo Kab. Situbondo,30000\r\nSlahung Ponorogo,38000\r\nSocah Bangkalan,32000\r\nSoko Tuban,32000\r\nSokobanah Sampang,32000\r\nSolokuro Lamongan,32000\r\nSonggon Banyuwangi,38000\r\nSooko Mojokerto,20000\r\nSooko Ponorogo,38000\r\nSrengat Blitar,38000\r\nSreseh Sampang,32000\r\nSrono Banyuwangi,38000\r\nSuboh Situbondo,38000\r\nSudimoro Pacitan,38000\r\nSugio Lamongan,32000\r\nSukapura Probolinggo,38000\r\nSukodadi Lamongan,32000\r\nSukodono Lumajang,20000\r\nSukodono Sidoarjo,16000\r\nSukolilo  Surabaya,16000\r\nSukomanunggal  Surabaya,16000\r\nSukomoro Magetan,38000\r\nSukomoro Nganjuk,32000\r\nSukorambi Jember,38000\r\nSukorame Lamongan,32000\r\nSukorejo Blitar,30000\r\nSukorejo Pasuruan,30000\r\nSukorejo Ponorogo,38000\r\nSukosari Bondowoso,38000\r\nSukowono Jember,38000\r\nSukun Malang,20000\r\nSumber Probolinggo,38000\r\nSumberasih Probolinggo,38000\r\nSumberbaru Jember,38000\r\nSumbergempol Tulungagung,32000\r\nSumberjambe Jember,38000\r\nSumbermalang Situbondo,38000\r\nSumbermanjingwetan Kepanjen,38000\r\nSumberpucung Kepanjen,38000\r\nSumbersari Jember,20000\r\nSumbersoko Lumajang,20000\r\nSumberwringin Bondowoso,38000\r\nSumenep Kab. Sumenep,25000\r\nSumobito Jombang,32000\r\nSurabaya,16000\r\nSuruh Trenggalek,32000\r\nSutojayan Blitar,38000\r\nTajinan Kepanjen,38000\r\nTakeran Magetan,38000\r\nTalango Sumenep,48000\r\nTalun Blitar,38000\r\nTaman Kab. Sidoarjo,16000\r\nTaman Madiun,20000\r\nTamanan Bondowoso,38000\r\nTambak Gresik,32000\r\nTambakboyo Tuban,32000\r\nTambaksari Surabaya,16000\r\nTambelangan Sampang,32000\r\nTanahmerah Bangkalan,32000\r\nTandes  Surabaya,16000\r\nTanggul Jember,38000\r\nTanggulangin Sidoarjo,16000\r\nTanggung Gunung Tulungagung,32000\r\nTanjunganom Nganjuk,32000\r\nTanjungbumi Bangkalan,32000\r\nTapen Bondowoso,38000\r\nTarik Sidoarjo,20000\r\nTarokan Kediri,30000\r\nTegalampel Bondowoso,38000\r\nTegaldlimo Banyuwangi,38000\r\nTegalombo Pacitan,38000\r\nTegalsari  Surabaya,16000\r\nTegalsari Banyuwangi,38000\r\nTegalsiwalan Probolinggo,38000\r\nTekung Lumajang,38000\r\nTembelang Jombang,32000\r\nTempeh Lumajang,38000\r\nTempurejo Jember,38000\r\nTempursari Lumajang,38000\r\nTenggarang Bondowoso,38000\r\nTenggilis Mejoyo Surabaya,16000\r\nTikung Lamongan,32000\r\nTiris Probolinggo,38000\r\nTirtoyudo Kepanjen,38000\r\nTlanakan Pamekasan,32000\r\nTlogosari Bondowoso,38000\r\nTongas Probolinggo,38000\r\nTorjun Sampang,32000\r\nTosari Pasuruan,30000\r\nTragah Bangkalan,32000\r\nTrawas Mojokerto,20000\r\nTrenggalek Kab. Trenggalek,25000\r\nTrowulan Mojokerto,20000\r\nTuban Kab. Tuban,25000\r\nTugu Trenggalek,32000\r\nTulakan Pacitan,38000\r\nTulangan Sidoarjo,16000\r\nTulungagung Kab. Tulungagung,25000\r\nTumpang Kepanjen,38000\r\nTuren Kepanjen,38000\r\nTuri Lamongan,32000\r\nTutur Pasuruan,30000\r\nUdanawu Blitar,38000\r\nUjungpangkah Gresik,32000\r\nUmbulsari Jember,38000\r\nWagir Kepanjen,38000\r\nWajak Kepanjen,38000\r\nWaru Pamekasan,32000\r\nWaru Sidoarjo,16000\r\nWates Blitar,38000\r\nWates Kediri,30000\r\nWatulimo Trenggalek,32000\r\nWidang Tuban,32000\r\nWidodaren Ngawi,38000\r\nWilangan Nganjuk,32000\r\nWinongan Pasuruan,30000\r\nWiyung  Surabaya,16000\r\nWlingi Blitar,30000\r\nWongsorejo Banyuwangi,38000\r\nWonoasih Probolinggo,20000\r\nWonoasri Caruban,38000\r\nWonoayu Sidoarjo,16000\r\nWonocolo  Surabaya,16000\r\nWonodadi Blitar,38000\r\nWonokromo Surabaya,16000\r\nWonomerto Probolinggo,38000\r\nWonorejo Pasuruan,30000\r\nWonosalam Jombang,32000\r\nWonosari Bondowoso,38000\r\nWonosari Kepanjen,38000\r\nWonotirto Blitar,38000\r\nWringin Bondowoso,38000\r\nWringinanom Gresik,32000\r\nWuluhan Jember,38000\r\nWungu Caruban,38000\r\nYosowilangun Lumajang,38000\r\n          ', 0),
(1326, 0, 'jne_reguler', 'jne_reguler_12_status', '1', 0);
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1327, 0, 'jne_reguler', 'jne_reguler_13_rate', '    Air Besar Ngabang,53000\r\nAir Upas  Ketapang,53000\r\nAmbalau Nanga Pinoh,53000\r\nAmbalau Sintang,53000\r\nBadau Putussibau,53000\r\nBalai Sanggau,53000\r\nBatang Lupar Putussibau,53000\r\nBatu Ampar Kubu Raya,53000\r\nBatu Datu  Putussibau,53000\r\nBeduwai Sanggau,53000\r\nBelimbing Nanga Pinoh,53000\r\nBelitang Hilir Sekadau,53000\r\nBelitang Hulu Sekadau,53000\r\nBelitang Sekadau,53000\r\nBengkayang Kab Bengkayang,42000\r\nBenua Kayong  Ketapang,53000\r\nBinjai Hulu  Sintang,53000\r\nBonti Sanggau,53000\r\nBoyan Tanjung  Putussibau,53000\r\nBunut Hilir Putussibau,53000\r\nBunut Hulu Putussibau,53000\r\nDedai Sintang,53000\r\nDelta Pawan  Ketapang,53000\r\nElla Hilir Nanga Pinoh,53000\r\nEmbaloh Hilir Putussibau,53000\r\nEmbaloh Hulu Putussibau,53000\r\nEmbau  Putussibau,53000\r\nEmpanang Putussibau,53000\r\nEntikong Sanggau,53000\r\nGaling Sambas,53000\r\nHulu Gurung Putussibau,53000\r\nHulu Sungai  Ketapang,53000\r\nJagoi Babang Bengkayang,53000\r\nJangkang Sanggau,53000\r\nJawai Selatan Sambas,53000\r\nJawai Sambas,53000\r\nJelai Hulu Ketapang,53000\r\nKalis  Putussibau,53000\r\nKayan Hilir Sintang,53000\r\nKayan Hulu Sintang,53000\r\nKedamin  Putussibau,53000\r\nKelam Permai  Sintang,53000\r\nKembayan Sanggau,53000\r\nKendawangan Ketapang,53000\r\nKetapang Kab. Ketapang,42000\r\nKetungau Hilir Sintang,53000\r\nKetungau Hulu Sintang,53000\r\nKetungau Tengah Sintang,53000\r\nKuala Behe Ngabang,53000\r\nKuala Mandor Kubu Raya,53000\r\nKubu Raya Kab. Kubu Raya,25000\r\nKubu Mempawah,53000\r\nLedo Bengkayang,53000\r\nManday Putussibau,53000\r\nMandor Ngabang,53000\r\nManis Mata Ketapang,53000\r\nMarau Ketapang,53000\r\nMatan Hilir Selatan  Ketapang,53000\r\nMatan Hilir Utara Ketapang,53000\r\nMeliau Sanggau,53000\r\nMempawah Hulu Ngabang,53000\r\nMempawah Kab Pontianak,42000\r\nMenjalin Ngabang,53000\r\nMentebah  Putussibau,53000\r\nMenukung Nanga Pinoh,53000\r\nMenyuke Ngabang,53000\r\nMeranti Ngabang,53000\r\nMonterado Bengkayang,53000\r\nMuara Pawan  Ketapang,53000\r\nMukok Sanggau,53000\r\nNanga Mahap Sekadau,53000\r\nNanga Pinoh Kab Melawi,42000\r\nNanga Taman Sekadau,53000\r\nNanga Tayap Ketapang,53000\r\nNgabang Kab Landak,42000\r\nNoyan Sanggau,53000\r\nPaloh Sambas,53000\r\nParindu Sanggau,53000\r\nPemaham  Ketapang,53000\r\nPemangkat Sambas,53000\r\nPontianak,25000\r\nPontianak Barat  Pontianak,25000\r\nPontianak Kota  Pontianak,25000\r\nPontianak Selatan  Pontianak,25000\r\nPontianak Tenggara  Pontianak,25000\r\nPontianak Timur/ Jungkat,25000\r\nPontianak Utara Pontianak,25000\r\nPulau Maya Karimata Sukadana,53000\r\nPuring Kencana  Putussibau,53000\r\nPutussibau Kab. Kapuas Hulu,42000\r\nRasau Jaya Kubu Raya,53000\r\nRasau Jaya Mempawah,53000\r\nSajad Sambas,53000\r\nSajingan Sambas,53000\r\nSalamantan Bengkayang,53000\r\nSambas Kab Sambas,42000\r\nSandai Ketapang,53000\r\nSanggau Ledo Bengkayang,53000\r\nSanggau Kab Sanggau,42000\r\nSayan Nanga Pinoh,53000\r\nSebangki Ngabang,53000\r\nSebawi Sambas,53000\r\nSeberuang Putussibau,53000\r\nSejangkung Sambas,53000\r\nSekadau Hilir Kab Sekadau,42000\r\nSekadau Hulu Sekadau,53000\r\nSekayam Sanggau,53000\r\nSelakau Sambas,53000\r\nSelimbau Putussibau,53000\r\nSeluas Bengkayang,53000\r\nSemitau Putussibau,53000\r\nSemparuk Sambas,53000\r\nSengah Temila Ngabang,53000\r\nSepauk Sintang,53000\r\nSeponti Jaya Sukadana,53000\r\nSerawai Nanga Pinoh,53000\r\nSiantan/wajok Mempawah,42000\r\nSilat Hilir Putussibau,53000\r\nSilat Hulu Putussibau,53000\r\nSimpang Dua  Ketapang,53000\r\nSimpang Hilir Sukadana,53000\r\nSimpang Hulu Ketapang,53000\r\nSingkawang,42000\r\nSingkawang Barat  Singkawang,42000\r\nSingkawang Selatan,42000\r\nSingkawang Tengah Singkawang,42000\r\nSingkawang Timur  Singkawang,42000\r\nSingkawang Utara  Singkawang,42000\r\nSingkup  Ketapang,53000\r\nSintang Kab. Sintang,42000\r\nSokan Nanga Pinoh,53000\r\nSubah Sambas,53000\r\nSuhaid Putussibau,53000\r\nSui Ambawang Kubu Raya,53000\r\nSui Kakap Kubu Raya,53000\r\nSui Raya Kubu Raya,53000\r\nSukadana Kab. Kayong Utara,42000\r\nSungai Ambawang Mempawah,53000\r\nSungai Kakap Mempawah,53000\r\nSungai Kunyit Mempawah,53000\r\nSungai Laur Ketapang,53000\r\nSungai Pinyuh Mempawah,53000\r\nSungai Raya Bengkayang,42000\r\nSungai Raya Kubu Raya,53000\r\nSungai Raya Mempawah,53000\r\nSungai Tebelian  Sintang,53000\r\nSuti Semarang Bengkayang,53000\r\nTanah Pinoh Nanga Pinoh,53000\r\nTanggaran Sambas,53000\r\nTayan Hilir Sanggau,53000\r\nTayan Hulu Sanggau,53000\r\nTebas Sambas,53000\r\nTekarang Sambas,53000\r\nTelok Pakedai Mempawah,53000\r\nTeluk Batang Sukadana,53000\r\nTeluk Keramat Sambas,53000\r\nTeluk Pakedai Kubu Raya,53000\r\nTempunak Sintang,53000\r\nTerentang Kubu Raya,53000\r\nTeriak Bengkayang,53000\r\nToba Sanggau,53000\r\nToho Mempawah,53000\r\nTumbang Titi Ketapang,53000\r\n              ', 0),
(1328, 0, 'jne_reguler', 'jne_reguler_13_status', '1', 0),
(1329, 0, 'jne_reguler', 'jne_reguler_14_rate', '             Alalak Marabahan,49000\r\nAluh Aluh Martapura,49000\r\nAmuntai,39000\r\nAmuntai Selatan Amuntai,39000\r\nAmuntai Tengah  Amuntai,39000\r\nAmuntai Utara Amuntai,39000\r\nAngkinang Kandangan,49000\r\nAnjir Muara Marabahan,49000\r\nAnjir Pasar Marabahan,49000\r\nAranio  Martapura,49000\r\nAstambul Martapura,49000\r\nAwang Tamianglayang,49000\r\nAwayan Paringin,49000\r\nBabirik Amuntai,49000\r\nBakarangan Rantau,49000\r\nBakumpai  Marabahan,49000\r\nBanjang  Amuntai,49000\r\nBanjarbaru,25000\r\nBanjarmasin,25000\r\nBanjarmasin Barat Banjarmasin,25000\r\nBanjarmasin Selatan,25000\r\nBanjarmasin Tengah,25000\r\nBanjarmasin Timur Banjarmasin,25000\r\nBanjarmasin Utara Banjarmasin,25000\r\nBanua Lawas Tanjung,49000\r\nBarabai Kab. Hulu Sungai Tngh,39000\r\nBarambai Marabahan,49000\r\nBatang Alai Selatan Barabai,49000\r\nBatang Alai Tengah Barabai,49000\r\nBatang Alai Utara Barabai,49000\r\nBatu Ampar Pelaihari,49000\r\nBatu Benawa Barabai,49000\r\nBatu Mandi Paringin,49000\r\nBatulicin Kab Tanah Bambu,39000\r\nBelawang Marabahan,49000\r\nBenua Lima Tamianglayang,49000\r\nBintang Ara  Tanjung,49000\r\nBinuang Rantau,49000\r\nBungur Rantau,49000\r\nBuntok,39000\r\nCandi Laras Selatan Rantau,49000\r\nCandi Laras Utara Rantau,49000\r\nCempaka  Banjarbaru,25000\r\nCerbon Marabahan,49000\r\nDaha Barat  Kandangan,49000\r\nDaha Selatan Kandangan,49000\r\nDaha Utara Kandangan,49000\r\nDanau Panggang Amuntai,49000\r\nDusun Hilir Buntok,49000\r\nDusun Selatan  Buntok,49000\r\nDusun Tengah Tamianglayang,49000\r\nDusun Timur  Tamiang Layang,49000\r\nDusun Utara Buntok,49000\r\nGambut Martapura,49000\r\nGunung Bintang Awai  Buntok,49000\r\nGunung Purei Muarateweh,49000\r\nGunung Timang Muarateweh,49000\r\nHalong Paringin,49000\r\nHampang Kotabarupulaulaut,49000\r\nHantakan  Barabai,49000\r\nHaruai Tanjung,49000\r\nHaruyan Barabai,49000\r\nHatungun Rantau,39000\r\nJaro Tanjung,49000\r\nJenamas Buntok,49000\r\nJorong Pelaihari,49000\r\nJuai Paringin,49000\r\nKalumpang Kandangan,49000\r\nKandangan Kab. Hulu Sungai Sltn,39000\r\nKarang Intan Martapura,49000\r\nKarau Kuala Buntok,49000\r\nKelua Tanjung,49000\r\nKelumpang Hulu K. Baru P. Laut,49000\r\nKelumpang Selatan P. Laut,49000\r\nKelumpang Tengah P. Laut,49000\r\nKelumpang Utara K. Baru P. Laut,49000\r\nKertak Hanyar Martapura,49000\r\nKintap Pelaihari,49000\r\nKotabaru Pulaulaut,39000\r\nKurau Pelaihari,49000\r\nKuripan Marabahan,49000\r\nKusan Hilir Batulicin,49000\r\nKusan Hulu Batulicin,49000\r\nLabuan Amas Selatan Barabai,49000\r\nLabuan Amas Utara Barabai,49000\r\nLahei Muarateweh,49000\r\nLampihong Paringin,49000\r\nLandasan Ulin Banjarbaru,25000\r\nLaung Tuhup Purukcahu,49000\r\nLokpaikat Rantau,49000\r\nLoksado Kandangan,49000\r\nMandastana Marabahan,49000\r\nMarabahan Kab. Barito Kuala,39000\r\nMartapura Kab. Banjar,39000\r\nMataraman  Martapura,49000\r\nMekar Sari Marabahan,49000\r\nMontalat Muarateweh,49000\r\nMuara Harus Tanjung,49000\r\nMuara Uya Tanjung,49000\r\nMuarateweh,39000\r\nMurung Pudak Tanjung,49000\r\nMurung Purukcahu,49000\r\nP. Laut Barat K. Barupulaulaut,49000\r\nP. Laut Selatan K. Baru P. Laut,49000\r\nP. Laut Timur K. Barupulaulaut,49000\r\nP. Laut Utara Kotabaru P. Laut,49000\r\nP. Sebuku Kotabarupulaulaut,49000\r\nP. Sembilan Kotabarupulaulaut,49000\r\nPadang Batung Kandangan,49000\r\nPamukan Selatan K. Baru P. Laut,49000\r\nPamukan Utara K. Barupulaulaut,49000\r\nPandawan Barabai,49000\r\nPanyipatan Pelaihari,49000\r\nParingin Kab Balangan,39000\r\nPatangkep Tutui Tamianglayang,49000\r\nPelaihari Kab. Banjarmasin,39000\r\nPematang Karau Tamianglayang,49000\r\nPengaron Martapura,49000\r\nPermata Intan Purukcahu,49000\r\nPiani Rantau,49000\r\nPugaan Tanjung,49000\r\nPuruk Cahu,39000\r\nRantau,39000\r\nRantau Badauh Marabahan,49000\r\nSalam Babaris Rantau,39000\r\nSampanahan K. Barupulaulaut,49000\r\nSatui Batulicin,49000\r\nSimpang Empat Martapura,49000\r\nSimpur Kandangan,49000\r\nSumber Barito Purukcahu,49000\r\nSungai Durian K. Barupulaulaut,49000\r\nSungai Loban Batulicin,49000\r\nSungai Pandan Amuntai,49000\r\nSungai Pinang Martapura,49000\r\nSungai Raya Kandangan,49000\r\nSungai Tabuk Martapura,49000\r\nTabukan Marabahan,49000\r\nTabunganen Marabahan,49000\r\nTakisung Pelaihari,49000\r\nTambang Ulang Pelaihari,49000\r\nTamianglayang,39000\r\nTanah Siang Purukcahu,49000\r\nTanjung Kab. Tabalong,39000\r\nTanta Tanjung,49000\r\nTapin Selatan Rantau,39000\r\nTapin Tengah Rantau,39000\r\nTapin Utara Rantau,39000\r\nTelaga Langsat Kandangan,49000\r\nTemban Marabahan,49000\r\nTeweh Tengah  Muarateweh,49000\r\nTeweh Timur Muarateweh,49000\r\nUpau Tanjung,49000\r\nWanaraya Marabahan,49000\r\n     ', 0),
(1330, 0, 'jne_reguler', 'jne_reguler_14_status', '1', 0),
(1331, 0, 'jne_reguler', 'jne_reguler_15_rate', '                  Antang Kalang  Sampit,62000\r\nArut Selatan Pangkalanbun,62000\r\nArut Utara Pangkalanbun,62000\r\nBaamang  Sampit,62000\r\nBalai Riam Sukamara,62000\r\nBanamatingang Pulang Pisau,62000\r\nBasarang Kualakapuas,62000\r\nBukit Batu  Palangka Raya,25000\r\nBulik Nanga Bulik,62000\r\nCempaga Sampit,62000\r\nDanau Sembuluh Kualapembuang,62000\r\nDelang Nanga Bulik,93000\r\nHanau Kualapembuang,93000\r\nJekan Raya Palangka Raya,25000\r\nJelai Sukamara,62000\r\nKahayan Hilir Pulang Pisau,62000\r\nKahayan Hulu Utara Kualakurun,93000\r\nKahayan Kuala Pulang Pisau,93000\r\nKahayan Tengah Pulang Pisau,62000\r\nKamipang Kasongan,93000\r\nKapuas Barat Kualakapuas,62000\r\nKapuas Hilir  Kualakapuas,62000\r\nKapuas Hulu Kualakapuas,62000\r\nKapuas Kuala Kualakapuas,62000\r\nKapuas Murung Kualakapuas,62000\r\nKapuas Tengah Kualakapuas,62000\r\nKapuas Timur Kualakapuas,62000\r\nKasongan Kab. Katingan,49000\r\nKatingan Hilir  Kasongan,62000\r\nKatingan Hulu Kasongan,93000\r\nKatingan Kuala Kasongan,93000\r\nKatingan Tengah Kasongan,62000\r\nKota Besi Sampit,62000\r\nKota Waringin Lama Pk. Bun,62000\r\nKuala Pembuang,49000\r\nKualakapuas,49000\r\nKualakurun Kab. Gn. Mas,49000\r\nKumai Pangkalanbun,62000\r\nLamandau Nanga Bulik,62000\r\nMaliku  Pulang Pisau,93000\r\nMantangai Kualakapuas,62000\r\nMarikit Kasongan,93000\r\nMendawai  Kasongan,62000\r\nMentawa Baru  Sampit,62000\r\nMentaya Hilir Selatan Sampit,62000\r\nMentaya Hilir Utara Sampit,62000\r\nMentaya Hulu Sampit,62000\r\nMunuhing Kualakurun,93000\r\nNanga Bulik Lamandau,49000\r\nPahandut  Palangka Raya,25000\r\nPalangkaraya,25000\r\nPandihbatu Pulang Pisau,62000\r\nPangkalan Banteng Pk. Bun,62000\r\nPangkalan Lada  Pangkalanbun,62000\r\nPangkalanbun,49000\r\nParenggean Sampit,62000\r\nPulang Pisau Kab Pulang Pisau,49000\r\nPulau Hanaut Sampit,62000\r\nPulau Malan Kasongan,62000\r\nPulau Petak Kualakapuas,62000\r\nRakumpit  Palangka Raya,93000\r\nRungan Kualakurun,93000\r\nSampit,49000\r\nSebangau Palangka Raya,25000\r\nSelat Kualakapuas,62000\r\nSenamang Mentikei Kasongan,93000\r\nSepang Kualakurun,62000\r\nSeruyan Hilir  Kuala Pembuang,62000\r\nSeruyan Hulu Kualapembuang,93000\r\nSeruyan Tengah Kualapembuang,93000\r\nSukamara Kab. Sukamara,49000\r\nTasik Payawan Kasongan,93000\r\nTewah Kualakurun,93000\r\nTewang Sangalang Garing,93000\r\nTimpah Kualakapuas,62000\r\n', 0),
(1332, 0, 'jne_reguler', 'jne_reguler_15_status', '1', 0),
(1333, 0, 'jne_reguler', 'jne_reguler_16_rate', '          Anggana Tenggarong,68000\r\nBabulu Penajam,60000\r\nBalikpapan,27000\r\nBalikpapan Barat  Balikpapan,27000\r\nBalikpapan Selatan Balikpapan,27000\r\nBalikpapan Tengah Balikpapan,27000\r\nBalikpapan Timur  Balikpapan,27000\r\nBalikpapan Utara Balikpapan,27000\r\nBarongtongkok Sendawar,68000\r\nBatu Ampar  Sangata,78000\r\nBatu Engau  Tanah Grogot,90000\r\nBatu Sopang Tanah Grogot,60000\r\nBengalon  Sangata,52000\r\nBentian Besar Sendawar,102000\r\nBiduk Biduk Tanjungredeb,60000\r\nBongan Sendawar,102000\r\nBontang,32000\r\nBontang Barat  Bontang,32000\r\nBontang Selatan  Bontang,32000\r\nBontang Utara Bontang,32000\r\nBusang  Sangata,78000\r\nDamai Sendawar,102000\r\nGunung Tabur Tanjungredeb,60000\r\nJempang Sendawar,102000\r\nKaliorang  Sangata,52000\r\nKarangan  Sangata,78000\r\nKaubun  Sangata,78000\r\nKelay Tanjungredeb,60000\r\nKembang Janggut Tenggarong,102000\r\nKenohan Tenggarong,102000\r\nKongbeng  Sangata,78000\r\nKota Bangun Tenggarong,68000\r\nKuaro Tanah Grogot,60000\r\nLinggang Bigung  Sendawar,68000\r\nLoa Janan,68000\r\nLoa Kulu / Loa Bakung Tenggarong,54000\r\nLong Apari Sendawar,102000\r\nLong Hubung  Sendawar,102000\r\nLong Ikis Tanah Grogot,60000\r\nLong Kali Tanah Grogot,60000\r\nLong Masengat  Sangata,78000\r\nLongbagun Sendawar,102000\r\nLongiram Sendawar,102000\r\nLongpahangai Sendawar,102000\r\nMarang Kayu  Tenggarong,68000\r\nMaratua  Tanjungredeb,60000\r\nMelak Sendawar,68000\r\nMuara Ancalong Sangata,78000\r\nMuara Badak,54000\r\nMuara Bengkal  Sangata,78000\r\nMuara Jawa,60000\r\nMuara Komam Tanah Grogot,60000\r\nMuara Muntai Tenggarong,68000\r\nMuara Samu Tanah Grogot,90000\r\nMuara Wahau  Sangata,52000\r\nMuara Wis  Tenggarong,68000\r\nMuarakaman Tenggarong,68000\r\nMuaralawa Sendawar,68000\r\nMuarapahu Sendawar,68000\r\nNyuwatan  Sendawar,68000\r\nPalaran,29000\r\nPasir Belengkong Tanah Grogot,90000\r\nPenajam Kab. Penajam Paser Utara,48000\r\nPenyinggahan Sendawar,68000\r\nPulau Derawan Tanjungredeb,60000\r\nRantau Pulung  Sangata,52000\r\nSamarinda,29000\r\nSamarinda Ilir Samarinda,29000\r\nSamarinda Seberang,29000\r\nSamarinda Ulu  Samarinda,29000\r\nSamarinda Utara Samarinda,29000\r\nSambaliung Tanjungredeb,60000\r\nSamboja Balikpapan,60000\r\nSandaran  Sangata,78000\r\nSangatta Selatan Sangata,41000\r\nSanggata Kab. Kutai Timur,41000\r\nSangkima/sangata Selatan Kab. Kutai Tim,41000\r\nSangkulirang  Sangata,52000\r\nSebulu Tenggarong,68000\r\nSegah Tanjungredeb,60000\r\nSendawar,54000\r\nSepaku Penajam,90000\r\nSinga Gembara/sangata Urata Kab. Kutai ,41000\r\nSungai Kunjang Samarinda,29000\r\nSwarga Bara/sangata Utara Kab. Kutai Ti,41000\r\nTabang Tenggarong,102000\r\nTalisayan Tanjungredeb,60000\r\nTanah Grogot Kab Paser,48000\r\nTanjung Harapan  Tanah Grogot,90000\r\nTanjungredeb Kab. Berau,48000\r\nTelen Sangata,78000\r\nTeluk Bayur  Tanjungredeb,60000\r\nTeluk Pandan Sangata,41000\r\nTenggarong Seberang Tenggarong,68000\r\nTenggarong Kab. Kutai Kartanegara,54000\r\nTubaan Tanjungredeb,60000\r\nWaru Penajam,60000\r\n        ', 0),
(1334, 0, 'jne_reguler', 'jne_reguler_16_status', '1', 0),
(1335, 0, 'jne_reguler', 'jne_reguler_17_rate', '              Kayan Hilir Malinau ,63000\r\nKayan Hulu Malinau ,63000\r\nKrayan Selatan  Nunukan,63000\r\nKrayan Nunukan,63000\r\nLumbis Nunukan,63000\r\nMalinau Barat  Malinau ,50000\r\nMalinau Selatan  Malinau ,50000\r\nMalinau Utara Malinau ,50000\r\nMalinau Kab Malinau,50000\r\nMentarang Malinau ,63000\r\nNunukan Kab Nunukan,50000\r\nPeso / Longpeso Tanjungselor,63000\r\nPeso Hilir  Tanjungselor,63000\r\nPujungan Malinau ,63000\r\nPulau Bunyu Tanjungselor,63000\r\nSebatik  Nunukan,50000\r\nSebuku Nunukan,63000\r\nSekatak  Tanjungselor,63000\r\nSembakung Tana Tidung,63000\r\nSesayap Hilir Tana Tidung,63000\r\nSesayap Tana Tidung,63000\r\nSungai Boh Malinau ,63000\r\nTana Tidung Kab Tana Tidung,50000\r\nTanah Lia  Tana Tidung,63000\r\nTanjung Palas  Tanjungselor,63000\r\nTanjung Palas Barat Tg. Selor,63000\r\nTanjung Palas Tengah  Tg. Selor,63000\r\nTanjung Palas Timur  Tg. Selor,63000\r\nTanjung Palas Utara  Tg. Selor,63000\r\nTanjung Selor Kab Bulungan,50000\r\nTarakan,35000\r\nTarakan Barat  Tarakan,35000\r\nTarakan Tengah Tarakan,35000\r\nTarakan Timur  Tarakan,35000\r\nTarakan Utara Tarakan,35000\r\n    ', 0),
(1336, 0, 'jne_reguler', 'jne_reguler_17_status', '1', 0),
(1337, 0, 'jne_reguler', 'jne_reguler_18_rate', '                  ', 0),
(1338, 0, 'jne_reguler', 'jne_reguler_18_status', '0', 0),
(1339, 0, 'jne_reguler', 'jne_reguler_19_rate', '                  ', 0),
(1340, 0, 'jne_reguler', 'jne_reguler_19_status', '0', 0),
(1341, 0, 'jne_reguler', 'jne_reguler_20_rate', '                  ', 0),
(1342, 0, 'jne_reguler', 'jne_reguler_20_status', '0', 0),
(1343, 0, 'jne_reguler', 'jne_reguler_21_rate', '                  ', 0),
(1344, 0, 'jne_reguler', 'jne_reguler_21_status', '0', 0),
(1345, 0, 'jne_reguler', 'jne_reguler_22_rate', '                  ', 0),
(1346, 0, 'jne_reguler', 'jne_reguler_22_status', '0', 0),
(1347, 0, 'jne_reguler', 'jne_reguler_23_rate', '                  ', 0),
(1348, 0, 'jne_reguler', 'jne_reguler_23_status', '0', 0),
(1349, 0, 'jne_reguler', 'jne_reguler_24_rate', '                  ', 0),
(1350, 0, 'jne_reguler', 'jne_reguler_24_status', '0', 0),
(1351, 0, 'jne_reguler', 'jne_reguler_25_rate', '                  ', 0),
(1352, 0, 'jne_reguler', 'jne_reguler_25_status', '0', 0),
(1353, 0, 'jne_reguler', 'jne_reguler_26_rate', '                  ', 0),
(1354, 0, 'jne_reguler', 'jne_reguler_26_status', '0', 0),
(1355, 0, 'jne_reguler', 'jne_reguler_27_rate', '                  ', 0),
(1356, 0, 'jne_reguler', 'jne_reguler_27_status', '0', 0),
(1357, 0, 'jne_reguler', 'jne_reguler_28_rate', '                  ', 0),
(1358, 0, 'jne_reguler', 'jne_reguler_28_status', '0', 0),
(1359, 0, 'jne_reguler', 'jne_reguler_29_rate', '                  ', 0),
(1360, 0, 'jne_reguler', 'jne_reguler_29_status', '0', 0),
(1361, 0, 'jne_reguler', 'jne_reguler_30_rate', '                  ', 0),
(1362, 0, 'jne_reguler', 'jne_reguler_30_status', '0', 0),
(1363, 0, 'jne_reguler', 'jne_reguler_31_rate', '                  ', 0),
(1364, 0, 'jne_reguler', 'jne_reguler_31_status', '0', 0),
(1365, 0, 'jne_reguler', 'jne_reguler_32_rate', '                  ', 0),
(1366, 0, 'jne_reguler', 'jne_reguler_32_status', '0', 0),
(1367, 0, 'jne_reguler', 'jne_reguler_33_rate', '                  ', 0),
(1368, 0, 'jne_reguler', 'jne_reguler_33_status', '0', 0),
(1369, 0, 'jne_reguler', 'jne_reguler_34_rate', '                  ', 0),
(1370, 0, 'jne_reguler', 'jne_reguler_34_status', '0', 0),
(1374, 0, 'jne_yes', 'jne_yes_1_rate', '                  ', 0),
(1375, 0, 'jne_yes', 'jne_yes_1_status', '0', 0),
(1376, 0, 'jne_yes', 'jne_yes_2_rate', '                  ', 0),
(1377, 0, 'jne_yes', 'jne_yes_2_status', '0', 0),
(1378, 0, 'jne_yes', 'jne_yes_3_rate', ' Bukit Intan Pangkalpinang,27000\r\nGerunggang Pangkalpinang,27000\r\nPangkal Balam Pangkalpinang,27000\r\nPangkalan Baru Koba,43000\r\nPangkalpinang,27000\r\nRangkui Pangkalpinang,27000\r\nSungailiat Kab. Bangka,35000\r\n                 ', 0),
(1379, 0, 'jne_yes', 'jne_yes_3_status', '1', 0),
(1380, 0, 'jne_yes', 'jne_yes_4_rate', '        Balaraja Tigaraksa,15000\r\nBatuceper  Tangerang,15000\r\nBenda Tangerang,15000\r\nCibeber Cilegon,17000\r\nCibodas  Tangerang,15000\r\nCikupa Tigaraksa,15000\r\nCiledug Tangerang,15000\r\nCilegon,17000\r\nCipocok Jaya  Serang,17000\r\nCipondoh  Tangerang,15000\r\nCiputat  Tigaraksa,15000\r\nCisauk Tigaraksa,15000\r\nCisoka Tigaraksa,15000\r\nCitangkil Cilegon,17000\r\nCiwandan Cilegon,17000\r\nCurug Serang,17000\r\nCurug Tigaraksa,15000\r\nGerogol Cilegon,17000\r\nJatiuwung  Tangerang,15000\r\nJombang Cilegon,17000\r\nKarangtengah  Tangerang,15000\r\nKarawaci  Tangerang,15000\r\nKasemen Serang,17000\r\nKosambi / Selembaran Jati,15000\r\nKramatwatu Baros,17000\r\nLarangan  Tangerang,15000\r\nLegok Tigaraksa,15000\r\nMerak Cilegon,17000\r\nNeglasari  Tangerang,15000\r\nPagedangan Tigaraksa,15000\r\nPakuhaji Tigaraksa,15000\r\nPamulang Tigaraksa,15000\r\nPandeglang Kab. Pandeglang,17000\r\nPanongan Tigaraksa,15000\r\nPasar Kemis Tigaraksa,15000\r\nPeriuk  Tangerang,15000\r\nPinang  Tangerang,15000\r\nPondokaren / Jurang Mangu,15000\r\nPurwakarta Cilegon,17000\r\nRajeg Tigaraksa,15000\r\nRangkasbitung,17000\r\nSepatan / Jatmulya Tigaraksa,15000\r\nSerang,17000\r\nSerpong,15000\r\nSukadiri Tigaraksa,15000\r\nTaktakan Serang,17000\r\nTangerang,15000\r\nTeluknaga Tigaraksa,15000\r\nTigaraksa Kab. Tangerang,15000\r\n          ', 0),
(1381, 0, 'jne_yes', 'jne_yes_4_status', '1', 0),
(1382, 0, 'jne_yes', 'jne_yes_5_rate', '      Bengkulu,29000\r\nGiri Mulyo Argamakmur,29000\r\nKarang Tinggi Argamakmur,29000\r\nMuara Nasal Kaur,29000\r\nRimbo Pengadang Lebong,29000\r\nSeginim Manna,29000\r\nSeluma Selatan Tais,29000\r\nTais Kab. Seluma,29000\r\nUlu Talo,29000\r\n                              ', 0),
(1383, 0, 'jne_yes', 'jne_yes_5_status', '1', 0),
(1384, 0, 'jne_yes', 'jne_yes_6_rate', '      Bambanglipuro Bantul,29000\r\nBanguntapan Bantul,29000\r\nBantul Kab. Bantul,20000\r\nBerbah Sleman,29000\r\nCangkringan Sleman,29000\r\nDanurejan Yogyakarta,20000\r\nDepok Sleman,29000\r\nDlingo Bantul,29000\r\nGamping Sleman,29000\r\nGedongtengen Yogyakarta,20000\r\nGodean Sleman,29000\r\nGondokusuman Yogyakarta,20000\r\nGondomanan Yogyakarta,20000\r\nImogiri Bantul,29000\r\nJetis Bantul,29000\r\nJetis Yogyakarta,20000\r\nKalasan Sleman,29000\r\nKasihan Bantul,29000\r\nKotagede Yogyakarta,20000\r\nKraton Yogyakarta,20000\r\nKretek Bantul,29000\r\nMantrijeron Yogyakarta,20000\r\nMergangsan Yogyakarta,20000\r\nMinggir Sleman,29000\r\nMlati Sleman,29000\r\nMoyudan Sleman,29000\r\nNgaglik Sleman,29000\r\nNgampilan Yogyakarta,20000\r\nNgemplak Sleman,29000\r\nPajangan Bantul,29000\r\nPakem Sleman,29000\r\nPakualaman Yogyakarta,20000\r\nPandak Bantul,29000\r\nPiyungan Bantul,29000\r\nPleret Bantul,29000\r\nPrambanan Sleman,20000\r\nPundong Bantul,29000\r\nSanden Bantul,29000\r\nSedayu Bantul,29000\r\nSewon Bantul,29000\r\nSeyegan Sleman,29000\r\nSleman Kab. Sleman,20000\r\nSrandakan Bantul,29000\r\nTegalrejo Yogyakarta,20000\r\nTempel Sleman,29000\r\nTuri Sleman,29000\r\nUmbulharjo Yogyakarta,20000\r\nWates Kab. Kulon Progo,24000\r\nWirobrajan Yogyakarta,20000\r\nWonosari Kab. Gn. Kidul,24000\r\nYogyakarta,20000\r\n            ', 0),
(1385, 0, 'jne_yes', 'jne_yes_6_status', '1', 0),
(1386, 0, 'jne_yes', 'jne_yes_7_rate', ' Cakung  Jakarta Timur,13000\r\nCempaka Putih  Jakarta Pusat,13000\r\nCengkareng  Jakarta Barat,13000\r\nCilandak Jakarta Selatan,13000\r\nCilincing  Jakarta Utara,13000\r\nCipayung  Jakarta Timur,13000\r\nCiracas Jakarta Timur,13000\r\nDuren Sawit  Jakarta Timur,13000\r\nGambir  Jakarta Pusat,13000\r\nGrogol  Jakarta Barat,13000\r\nJagakarsa  Jakarta Selatan,13000\r\nJakarta,13000\r\nJakarta Barat,13000\r\nJakarta Pusat,13000\r\nJakarta Selatan,13000\r\nJakarta Timur,13000\r\nJakarta Utara,13000\r\nJatinegara  Jakarta Timur,13000\r\nJohar Baru  Jakarta Pusat,13000\r\nKalideres  Jakarta Barat,13000\r\nKebayoran Baru Jkt Selatan,13000\r\nKebayoran Lama Jkt Selatan,13000\r\nKebon Jeruk  Jakarta Barat,13000\r\nKelapa Gading  Jakarta Utara,13000\r\nKemayoran  Jakarta Pusat,13000\r\nKembangan  Jakarta Barat,13000\r\nKep. Seribu Selatan,0\r\nKep. Seribu Utara,0\r\nKoja  Jakarta Utara,13000\r\nKramat Jati  Jakarta Timur,13000\r\nMakassar  Jakarta Timur,13000\r\nMampang Prapatan Jkt Selatan,13000\r\nMatraman  Jakarta Timur,13000\r\nMenteng  Jakarta Pusat,13000\r\nPademangan  Jakarta Utara,13000\r\nPalmerah  Jakarta Barat,13000\r\nPancoran  Jakarta Selatan,13000\r\nPasar Minggu  Jakarta Selatan,13000\r\nPasar Rebo  Jakarta Timur,13000\r\nPenjaringan  Jakarta Utara,13000\r\nPesanggrahan  Jakarta Selatan,13000\r\nPulo Gadung Jakarta Timur,13000\r\nSawah Besar  Jakarta Pusat,13000\r\nSenen  Jakarta Pusat,13000\r\nSetiabudi  Jakarta Selatan,13000\r\nTaman Sari  Jakarta Barat,13000\r\nTambora Jakarta Barat,13000\r\nTanah Abang Jakarta Pusat,13000\r\nTanjung Priok Jakarta Utara,13000\r\nTebet Jakarta Selatan,13000\r\n                 ', 0),
(1387, 0, 'jne_yes', 'jne_yes_7_status', '1', 0),
(1388, 0, 'jne_yes', 'jne_yes_8_rate', '                  ', 0),
(1389, 0, 'jne_yes', 'jne_yes_8_status', '0', 0),
(1390, 0, 'jne_yes', 'jne_yes_9_rate', '   Jambi,26000\r\nJambi Selatan Jambi,26000\r\nJambi Timur Jambi,26000\r\nJelutung Jambi,26000\r\nKota Baru Jambi,26000\r\nPasar Jambi Jambi,26000\r\nTelanaipura Jambi,26000\r\n               ', 0),
(1391, 0, 'jne_yes', 'jne_yes_9_status', '1', 0),
(1392, 0, 'jne_yes', 'jne_yes_10_rate', '     Andir Bandung,8000\r\nArcamanik Bandung,8000\r\nArjasari Soreang,8000\r\nAstanaanyar Bandung,8000\r\nBabakan Madang Cibinong,15000\r\nBabakancikao Purwakarta,14000\r\nBabakanciparay Bandung,8000\r\nBabelan Cikarang,15000\r\nBaleendah Soreang,8000\r\nBalongan Indramayu,24000\r\nBandung,8000\r\nBandung Kidul Bandung,8000\r\nBandung Kulon Bandung,8000\r\nBandung Wetan Bandung,8000\r\nBanjaran Soreang,8000\r\nBantargebang Bekasi,15000\r\nBaros Sukabumi,16000\r\nBatujajar Ngamprah,14000\r\nBatununggal Bandung,8000\r\nBeji Depok,15000\r\nBekasi,15000\r\nBekasi Barat Bekasi,15000\r\nBekasi Selatan Bekasi,15000\r\nBekasi Timur Bekasi,15000\r\nBekasi Utara Bekasi,15000\r\nBogor,15000\r\nBogor Barat Bogor,15000\r\nBogor Selatan Bogor,15000\r\nBogor Tengah Bogor,15000\r\nBogor Timur Bogor,15000\r\nBogor Utara Bogor,15000\r\nBojong Soang Soreang,8000\r\nBojonggede Cibinong,15000\r\nBojongloa Kaler Bandung,8000\r\nBojongloa Kidul Bandug,8000\r\nBungursari Purwakarta,14000\r\nCampaka Purwakarta,14000\r\nCangkuang Soreang,8000\r\nCaringin Cibinong,15000\r\nCiamis Kab. Ciamis,12000\r\nCiampea Cibinong,15000\r\nCianjur Kab. Cianjur,16000\r\nCiawi Cibinong,15000\r\nCibarusah Cikarang,15000\r\nCibatu Purwakarta,14000\r\nCibeunying Kaler Bandung,8000\r\nCibeunying Kidul Bandung,8000\r\nCibeureum Sukabumi,16000\r\nCibeureum Tasikmalaya,12000\r\nCibinong Kab. Bogor,15000\r\nCibiru Bandung,8000\r\nCibitung Cikarang,15000\r\nCibubur Depok,15000\r\nCibung Bulang Cibinong,15000\r\nCicadas Bandung,8000\r\nCicendo Bandung,8000\r\nCidadap Bandung,8000\r\nCihampelas  Ngamprah,14000\r\nCihideung Tasikmalaya,12000\r\nCikampek Karawang,16000\r\nCikarang Barat Cikarang,15000\r\nCikarang Pusat  Cikarang,15000\r\nCikarang Selatan  Cikarang,15000\r\nCikarang Timur,15000\r\nCikarang Utara,15000\r\nCikarang Kab. Bekasi,15000\r\nCikole Sukabumi,16000\r\nCilengkrang Soreang,8000\r\nCileungsi Cibinong,15000\r\nCileunyi Soreang,8000\r\nCilimus Kuningan,24000\r\nCimahi,8000\r\nCimahi Selatan Cimahi,8000\r\nCimahi Tengah Cimahi,8000\r\nCimahi Utara Cimahi,8000\r\nCimanggis Depok,15000\r\nCimareme Ngamprah,8000\r\nCiomas Cibinong,15000\r\nCiparay Soreang,8000\r\nCipedes Tasikmalaya,12000\r\nCirebon,15000\r\nCirebon Barat Cirebon,15000\r\nCisaat Sukabumi,16000\r\nCisarua Cibinong,15000\r\nCiseeng Cibinong,15000\r\nCitamiang Sukabumi,16000\r\nCiteureup Cibinong,15000\r\nCoblong Bandug,8000\r\nDayeuhkolot Soreang,8000\r\nDepok,15000\r\nDramaga Cibinong,15000\r\nGarut,12000\r\nGarut Kota  Garut,12000\r\nGebang Sumber,24000\r\nGunung Putri Cibinong,15000\r\nGunung Puyuh Sukabumi,16000\r\nHarjamukti  Cirebon ,15000\r\nIndramayu,20000\r\nJalaksana Kuningan,24000\r\nJatiasih Bekasi,15000\r\nJatibarang Indramayu,20000\r\nJatiluhur Purwakarta,14000\r\nJatinangor Sumedang,8000\r\nJatisampurna Bekasi,15000\r\nJatiwangi Majalengka,20000\r\nJuntinyuat Indramayu,24000\r\nKadipaten Majalengka,20000\r\nKarawang,16000\r\nKarawang Barat Karawang,16000\r\nKarawang Timur Karawang,16000\r\nKatapang Soreang,8000\r\nKedawung Sumber ,15000\r\nKedokan Bunder  Indramayu ,24000\r\nKedungwaringin Cikarang,15000\r\nKejaksan  Cirebon ,15000\r\nKemang Cibinong,15000\r\nKesambi Cirebon ,15000\r\nKiaracondong Bandung,8000\r\nKlangenan Sumber,24000\r\nKlapanunggal Cibinong,15000\r\nKlari Karawang,16000\r\nKotabaru Karawang,16000\r\nKramatmulya Kuningan,24000\r\nKuningan Kab Kuningan,20000\r\nLemahwungkuk  Cirebon ,15000\r\nLembang Ngamprah,8000\r\nLembur Situ Sukabumi,16000\r\nLengkong Bandung,8000\r\nLeuwiliang Cibinong,15000\r\nLimo Depok,15000\r\nMajalaya Soreang,12000\r\nMajalengka Kab Majalengka,20000\r\nMargaasih Soreang,14000\r\nMargacinta Bandung,8000\r\nMargahayu Soreang,8000\r\nMedan Satria Bekasi,15000\r\nMegamendung Cibinong,15000\r\nMundu Sumber,15000\r\nMustika Jaya Bekasi,15000\r\nPabuaran Sumber,24000\r\nPadalarang Ngamprah,14000\r\nPalimanan Sumber,20000\r\nPancoranmas Depok,15000\r\nParung Cibinong,15000\r\nPekalipan Cirebon ,15000\r\nPlered  Sumber,15000\r\nPlumbon Sumber,24000\r\nPondok Melati Bekasi,15000\r\nPondokgede Bekasi,15000\r\nPurwakarta Kab. Purwakarta,12000\r\nPurwasari Karawang,16000\r\nRancaekek Soreang,8000\r\nRancasari Bandung,8000\r\nRawalumbu Bekasi,15000\r\nRegol Bandung,8000\r\nSawangan,15000\r\nSerang Baru Cikarang,15000\r\nSindang Indramayu ,24000\r\nSolokan Jeruk Soreang,8000\r\nSoreang Kab. Bandung,8000\r\nSubang Kab. Subang,12000\r\nSukabumi,16000\r\nSukajadi Bandung,8000\r\nSukaraja Cibinong,15000\r\nSukaraja Sukabumi,16000\r\nSukasari Bandung,8000\r\nSukmajaya Depok,15000\r\nSumber Kab Cirebon,20000\r\nSumedang,12000\r\nSumedang Selatan Sumedang,12000\r\nSumurbandung Bandung,8000\r\nTajurhalang Cibinong,15000\r\nTamansari Tasikmalaya,12000\r\nTambun Selatan Cikarang,15000\r\nTambun Utara Cikarang,15000\r\nTanah Sereal Bogor,15000\r\nTarogong Kaler Garut,14000\r\nTarogong Kidul Garut,14000\r\nTarumajaya Cikarang,15000\r\nTasikmalaya,12000\r\nTeluk Jambe Barat Karawang,16000\r\nTeluk Jambe Timur Karawang,16000\r\nTengah Tani  Sumber ,15000\r\nUjungberung Bandung,8000\r\nWarudoyong Sukabumi,16000\r\nWeru Sumber,24000\r\nWidasari Indramayu,24000\r\n             ', 0),
(1393, 0, 'jne_yes', 'jne_yes_10_status', '1', 0),
(1394, 0, 'jne_yes', 'jne_yes_11_rate', '      Ambarawa Ungaran,24000\r\nArgomulyo Salatiga,24000\r\nBanjarsari Solo,20000\r\nBanyumanik Semarang,20000\r\nBawen Ungaran,29000\r\nBergas Ungaran,29000\r\nBoyolali Kab. Boyolali,24000\r\nCandisari Semarang,20000\r\nCepiring Kendal,29000\r\nColomadu Karanganyar,29000\r\nGajahmungkur Semarang,20000\r\nGayamsari Semarang,20000\r\nGenuk Semarang,20000\r\nGunungpati Semarang,20000\r\nJati Kudus,29000\r\nJebres Solo,20000\r\nKaliwungu Kudus,29000\r\nKaranganyar Kab. Karanganyar,24000\r\nKartosuro Sukoharjo,24000\r\nKendal Kab. Kendal,24000\r\nKlaten,24000\r\nKlaten Selatan Klaten,29000\r\nKlaten Tengah Klaten,29000\r\nKlaten Utara Klaten,29000\r\nKudus Kab. Kudus,24000\r\nLaweyan Solo,20000\r\nMagelang,26000\r\nMagelang Selatan Magelang,26000\r\nMagelang Tengah Magelang,26000\r\nMagelang Utara Magelang,26000\r\nMijen Semarang,20000\r\nNgaliyan Semarang,20000\r\nPasar Kliwon Solo,20000\r\nPatebon Kendal,29000\r\nPedurungan Semarang,20000\r\nPringapus Ungaran,29000\r\nSalatiga,24000\r\nSemarang,20000\r\nSemarang Barat Semarang,20000\r\nSemarang Selatan,20000\r\nSemarang Tengah Semarang,20000\r\nSemarang Timur Semarang,20000\r\nSemarang Utara Semarang,20000\r\nSerengan Solo,20000\r\nSidomukti Salatiga,24000\r\nSidorejo Salatiga,24000\r\nSolo,20000\r\nSragen,24000\r\nSukoharjo,24000\r\nTembalang Semarang,20000\r\nTingkir Salatiga,24000\r\nTugu Semarang,20000\r\nTuntang Ungaran,29000\r\nUngaran,20000\r\nUngaran Barat Semarang,20000\r\nUngaran Timur Semarang,20000\r\nWeleri Kendal,29000\r\nWonogiri Kab. Wonogiri,24000\r\n            ', 0),
(1395, 0, 'jne_yes', 'jne_yes_11_status', '1', 0),
(1396, 0, 'jne_yes', 'jne_yes_12_rate', '              Asemrowo Surabaya,22000\r\nBlimbing Malang,27000\r\nBubutan Surabaya,22000\r\nBuduran Sidoarjo,22000\r\nBulak Surabaya,22000\r\nCandi Sidoarjo,22000\r\nDau Kepanjen,42000\r\nDukuh Pakis Surabaya,22000\r\nDupok Probolinggo,27000\r\nGayungan Surabaya,22000\r\nGedangan Sidoarjo,22000\r\nGenteng Surabaya,22000\r\nGresik Kab. Gresik,22000\r\nGubeng Surabaya,22000\r\nGununganyar Surabaya,22000\r\nJambangan Surabaya,22000\r\nJombang Kab. Jombang,29000\r\nKademangan Probolinggo,27000\r\nKanigaran Probolinggo,27000\r\nKarangpilang Surabaya,22000\r\nKediri,27000\r\nKedungkandang Malang,27000\r\nKenjeran Surabaya,22000\r\nKlojen Malang,27000\r\nKrembangan Surabaya,22000\r\nKrian Kab. Sidoarjo,22000\r\nLakarsantri Surabaya,22000\r\nLamongan Kab. Lamongan,29000\r\nLowokwaru Malang,27000\r\nMagersari Mojokerto,27000\r\nMalang,27000\r\nMayangan Probolinggo,27000\r\nMojokerto,27000\r\nMojoroto Kediri,27000\r\nMulyorejo Surabaya,22000\r\nPabean Cantikan Surabaya,22000\r\nPakal Surabaya,22000\r\nParajurit Kulon Mojokerto,27000\r\nPesantren Kediri,27000\r\nProbolinggo,27000\r\nRungkut Surabaya,22000\r\nSambikerep Surabaya,22000\r\nSawahan Surabaya,22000\r\nSedati Sidoarjo,22000\r\nSemampir Surabaya,22000\r\nSidoarjo Kab. Sidoarjo,22000\r\nSimokerto  Surabaya,22000\r\nSingosari Kepanjen,42000\r\nSukodono Sidoarjo,22000\r\nSukolilo  Surabaya,22000\r\nSukomanunggal  Surabaya,22000\r\nSukun Malang,27000\r\nSurabaya,22000\r\nTaman Kab. Sidoarjo,22000\r\nTambaksari Surabaya,22000\r\nTandes  Surabaya,22000\r\nTegalsari  Surabaya,22000\r\nTenggilis Mejoyo Surabaya,22000\r\nTuban Kab. Tuban,29000\r\nWaru Sidoarjo,22000\r\nWiyung  Surabaya,22000\r\nWonoasih Probolinggo,27000\r\nWonocolo  Surabaya,22000\r\nWonokromo Surabaya,22000\r\n    ', 0),
(1397, 0, 'jne_yes', 'jne_yes_12_status', '1', 0),
(1398, 0, 'jne_yes', 'jne_yes_13_rate', '                  ', 0),
(1399, 0, 'jne_yes', 'jne_yes_13_status', '0', 0),
(1400, 0, 'jne_yes', 'jne_yes_14_rate', '  Banjarmasin,33000\r\nBanjarmasin Barat Banjarmasin,33000\r\nBanjarmasin Selatan,33000\r\nBanjarmasin Tengah,33000\r\nBanjarmasin Timur Banjarmasin,33000\r\nBanjarmasin Utara Banjarmasin,33000\r\n                ', 0),
(1401, 0, 'jne_yes', 'jne_yes_14_status', '1', 0),
(1402, 0, 'jne_yes', 'jne_yes_15_rate', '     Kahayan Hilir Pulang Pisau,35000\r\nPulau Petak Kualakapuas,35000\r\nSampit,35000\r\n             ', 0),
(1403, 0, 'jne_yes', 'jne_yes_15_status', '1', 0),
(1404, 0, 'jne_yes', 'jne_yes_16_rate', '  Balikpapan,33000\r\nBalikpapan Barat  Balikpapan,33000\r\nBalikpapan Selatan Balikpapan,33000\r\nBalikpapan Tengah Balikpapan,33000\r\nBalikpapan Timur  Balikpapan,33000\r\nBalikpapan Utara Balikpapan,33000\r\n                ', 0),
(1405, 0, 'jne_yes', 'jne_yes_16_status', '1', 0),
(1406, 0, 'jne_yes', 'jne_yes_17_rate', '       Kayan Hilir Malinau ,63000\r\nKayan Hulu Malinau ,63000\r\nKrayan Selatan  Nunukan,63000\r\nKrayan Nunukan,63000\r\nLumbis Nunukan,63000\r\nMalinau Barat  Malinau ,50000\r\nMalinau Selatan  Malinau ,50000\r\nMalinau Utara Malinau ,50000\r\nMalinau Kab Malinau,50000\r\nMentarang Malinau ,63000\r\nNunukan Kab Nunukan,50000\r\nPeso / Longpeso Tanjungselor,63000\r\nPeso Hilir  Tanjungselor,63000\r\nPujungan Malinau ,63000\r\nPulau Bunyu Tanjungselor,63000\r\nSebatik  Nunukan,50000\r\nSebuku Nunukan,63000\r\nSekatak  Tanjungselor,63000\r\nSembakung Tana Tidung,63000\r\nSesayap Hilir Tana Tidung,63000\r\nSesayap Tana Tidung,63000\r\nSungai Boh Malinau ,63000\r\nTana Tidung Kab Tana Tidung,50000\r\nTanah Lia  Tana Tidung,63000\r\nTanjung Palas  Tanjungselor,63000\r\nTanjung Palas Barat Tg. Selor,63000\r\nTanjung Palas Tengah  Tg. Selor,63000\r\nTanjung Palas Timur  Tg. Selor,63000\r\nTanjung Palas Utara  Tg. Selor,63000\r\nTanjung Selor Kab Bulungan,50000\r\nTarakan,35000\r\nTarakan Barat  Tarakan,35000\r\nTarakan Tengah Tarakan,35000\r\nTarakan Timur  Tarakan,35000\r\nTarakan Utara Tarakan,35000\r\n           ', 0),
(1407, 0, 'jne_yes', 'jne_yes_17_status', '1', 0),
(1408, 0, 'jne_yes', 'jne_yes_18_rate', '                  ', 0),
(1409, 0, 'jne_yes', 'jne_yes_18_status', '0', 0),
(1410, 0, 'jne_yes', 'jne_yes_19_rate', '                  ', 0),
(1411, 0, 'jne_yes', 'jne_yes_19_status', '0', 0),
(1412, 0, 'jne_yes', 'jne_yes_20_rate', '                  ', 0),
(1413, 0, 'jne_yes', 'jne_yes_20_status', '0', 0),
(1414, 0, 'jne_yes', 'jne_yes_21_rate', '                  ', 0),
(1415, 0, 'jne_yes', 'jne_yes_21_status', '0', 0),
(1416, 0, 'jne_yes', 'jne_yes_22_rate', '                  ', 0),
(1417, 0, 'jne_yes', 'jne_yes_22_status', '0', 0),
(1418, 0, 'jne_yes', 'jne_yes_23_rate', '                  ', 0),
(1419, 0, 'jne_yes', 'jne_yes_23_status', '0', 0),
(1420, 0, 'jne_yes', 'jne_yes_24_rate', '                  ', 0),
(1421, 0, 'jne_yes', 'jne_yes_24_status', '0', 0),
(1422, 0, 'jne_yes', 'jne_yes_25_rate', '                  ', 0),
(1423, 0, 'jne_yes', 'jne_yes_25_status', '0', 0),
(1424, 0, 'jne_yes', 'jne_yes_26_rate', '                  ', 0),
(1425, 0, 'jne_yes', 'jne_yes_26_status', '0', 0),
(1426, 0, 'jne_yes', 'jne_yes_27_rate', '                  ', 0),
(1427, 0, 'jne_yes', 'jne_yes_27_status', '0', 0),
(1428, 0, 'jne_yes', 'jne_yes_28_rate', '                  ', 0),
(1429, 0, 'jne_yes', 'jne_yes_28_status', '0', 0),
(1430, 0, 'jne_yes', 'jne_yes_29_rate', '                  ', 0),
(1431, 0, 'jne_yes', 'jne_yes_29_status', '0', 0),
(1432, 0, 'jne_yes', 'jne_yes_30_rate', '                  ', 0),
(1433, 0, 'jne_yes', 'jne_yes_30_status', '0', 0),
(1434, 0, 'jne_yes', 'jne_yes_31_rate', '                  ', 0),
(1435, 0, 'jne_yes', 'jne_yes_31_status', '0', 0),
(1436, 0, 'jne_yes', 'jne_yes_32_rate', '                  ', 0),
(1437, 0, 'jne_yes', 'jne_yes_32_status', '0', 0),
(1438, 0, 'jne_yes', 'jne_yes_33_rate', '                  ', 0),
(1439, 0, 'jne_yes', 'jne_yes_33_status', '0', 0),
(1440, 0, 'jne_yes', 'jne_yes_34_rate', '                  ', 0),
(1441, 0, 'jne_yes', 'jne_yes_34_status', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE IF NOT EXISTS `oc_stock_status` (
`stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE IF NOT EXISTS `oc_store` (
`store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE IF NOT EXISTS `oc_tax_class` (
`tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
`tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
`tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE IF NOT EXISTS `oc_upload` (
`upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE IF NOT EXISTS `oc_url_alias` (
`url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=884 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(730, 'manufacturer_id=8', 'apple'),
(847, 'information_id=4', 'about_us'),
(781, 'category_id=36', 'test2'),
(775, 'category_id=46', 'macs'),
(776, 'category_id=45', 'windows'),
(780, 'category_id=35', 'test1'),
(790, 'category_id=43', 'test11'),
(791, 'category_id=44', 'test12'),
(792, 'category_id=47', 'test15'),
(793, 'category_id=48', 'test16'),
(794, 'category_id=49', 'test17'),
(795, 'category_id=50', 'test18'),
(796, 'category_id=51', 'test19'),
(797, 'category_id=52', 'test20'),
(798, 'category_id=58', 'test25'),
(799, 'category_id=53', 'test21'),
(800, 'category_id=54', 'test22'),
(801, 'category_id=55', 'test23'),
(802, 'category_id=56', 'test24'),
(803, 'category_id=38', 'test4'),
(804, 'category_id=37', 'test5'),
(805, 'category_id=39', 'test6'),
(806, 'category_id=40', 'test7'),
(807, 'category_id=41', 'test8'),
(808, 'category_id=42', 'test9'),
(828, 'manufacturer_id=9', 'canon'),
(829, 'manufacturer_id=5', 'htc'),
(830, 'manufacturer_id=7', 'hewlett-packard'),
(831, 'manufacturer_id=6', 'palm'),
(832, 'manufacturer_id=10', 'sony'),
(841, 'information_id=6', 'delivery'),
(883, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms'),
(860, 'category_id=64', ''),
(861, 'category_id=65', ''),
(862, 'category_id=66', ''),
(863, 'category_id=67', ''),
(868, 'information_id=11', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE IF NOT EXISTS `oc_user` (
`user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '960ccf0f58f15512a97d199ff4e91588ccebbd07', '01155b823', 'PUBAPP', 'Admin', 'eripahle@gmail.com', '', '', '::1', 1, '2015-02-18 07:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE IF NOT EXISTS `oc_user_group` (
`user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', 'a:2:{s:6:"access";a:240:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:18:"dashboard/activity";i:17;s:15:"dashboard/chart";i:18;s:18:"dashboard/customer";i:19;s:13:"dashboard/map";i:20;s:16:"dashboard/online";i:21;s:15:"dashboard/order";i:22;s:16:"dashboard/recent";i:23;s:14:"dashboard/sale";i:24;s:13:"design/banner";i:25;s:13:"design/layout";i:26;s:14:"extension/feed";i:27;s:19:"extension/installer";i:28;s:22:"extension/modification";i:29;s:16:"extension/module";i:30;s:17:"extension/openbay";i:31;s:17:"extension/payment";i:32;s:18:"extension/shipping";i:33;s:15:"extension/total";i:34;s:16:"feed/google_base";i:35;s:19:"feed/google_sitemap";i:36;s:15:"feed/openbaypro";i:37;s:20:"localisation/country";i:38;s:21:"localisation/currency";i:39;s:21:"localisation/geo_zone";i:40;s:21:"localisation/language";i:41;s:25:"localisation/length_class";i:42;s:21:"localisation/location";i:43;s:25:"localisation/order_status";i:44;s:26:"localisation/return_action";i:45;s:26:"localisation/return_reason";i:46;s:26:"localisation/return_status";i:47;s:25:"localisation/stock_status";i:48;s:22:"localisation/tax_class";i:49;s:21:"localisation/tax_rate";i:50;s:25:"localisation/weight_class";i:51;s:17:"localisation/zone";i:52;s:19:"marketing/affiliate";i:53;s:17:"marketing/contact";i:54;s:16:"marketing/coupon";i:55;s:19:"marketing/marketing";i:56;s:14:"module/account";i:57;s:16:"module/affiliate";i:58;s:20:"module/amazon_button";i:59;s:13:"module/banner";i:60;s:17:"module/bestseller";i:61;s:15:"module/carousel";i:62;s:15:"module/category";i:63;s:11:"module/ebay";i:64;s:15:"module/featured";i:65;s:13:"module/filter";i:66;s:22:"module/google_hangouts";i:67;s:11:"module/html";i:68;s:18:"module/information";i:69;s:13:"module/latest";i:70;s:16:"module/pp_button";i:71;s:15:"module/pp_login";i:72;s:16:"module/slideshow";i:73;s:14:"module/special";i:74;s:12:"module/store";i:75;s:14:"openbay/amazon";i:76;s:22:"openbay/amazon_listing";i:77;s:22:"openbay/amazon_product";i:78;s:16:"openbay/amazonus";i:79;s:24:"openbay/amazonus_listing";i:80;s:24:"openbay/amazonus_product";i:81;s:12:"openbay/ebay";i:82;s:20:"openbay/ebay_profile";i:83;s:21:"openbay/ebay_template";i:84;s:12:"openbay/etsy";i:85;s:20:"openbay/etsy_product";i:86;s:21:"openbay/etsy_shipping";i:87;s:17:"openbay/etsy_shop";i:88;s:23:"payment/amazon_checkout";i:89;s:24:"payment/authorizenet_aim";i:90;s:24:"payment/authorizenet_sim";i:91;s:21:"payment/bank_transfer";i:92;s:22:"payment/bluepay_hosted";i:93;s:24:"payment/bluepay_redirect";i:94;s:14:"payment/cheque";i:95;s:11:"payment/cod";i:96;s:17:"payment/firstdata";i:97;s:24:"payment/firstdata_remote";i:98;s:21:"payment/free_checkout";i:99;s:22:"payment/klarna_account";i:100;s:22:"payment/klarna_invoice";i:101;s:14:"payment/liqpay";i:102;s:14:"payment/nochex";i:103;s:15:"payment/paymate";i:104;s:16:"payment/paypoint";i:105;s:13:"payment/payza";i:106;s:26:"payment/perpetual_payments";i:107;s:18:"payment/pp_express";i:108;s:18:"payment/pp_payflow";i:109;s:25:"payment/pp_payflow_iframe";i:110;s:14:"payment/pp_pro";i:111;s:21:"payment/pp_pro_iframe";i:112;s:19:"payment/pp_standard";i:113;s:14:"payment/realex";i:114;s:21:"payment/realex_remote";i:115;s:22:"payment/sagepay_direct";i:116;s:22:"payment/sagepay_server";i:117;s:18:"payment/sagepay_us";i:118;s:24:"payment/securetrading_pp";i:119;s:24:"payment/securetrading_ws";i:120;s:14:"payment/skrill";i:121;s:19:"payment/twocheckout";i:122;s:28:"payment/web_payment_software";i:123;s:16:"payment/worldpay";i:124;s:16:"report/affiliate";i:125;s:25:"report/affiliate_activity";i:126;s:22:"report/affiliate_login";i:127;s:24:"report/customer_activity";i:128;s:22:"report/customer_credit";i:129;s:21:"report/customer_login";i:130;s:22:"report/customer_online";i:131;s:21:"report/customer_order";i:132;s:22:"report/customer_reward";i:133;s:16:"report/marketing";i:134;s:24:"report/product_purchased";i:135;s:21:"report/product_viewed";i:136;s:18:"report/sale_coupon";i:137;s:17:"report/sale_order";i:138;s:18:"report/sale_return";i:139;s:20:"report/sale_shipping";i:140;s:15:"report/sale_tax";i:141;s:17:"sale/custom_field";i:142;s:13:"sale/customer";i:143;s:20:"sale/customer_ban_ip";i:144;s:19:"sale/customer_group";i:145;s:10:"sale/order";i:146;s:14:"sale/recurring";i:147;s:11:"sale/return";i:148;s:12:"sale/voucher";i:149;s:18:"sale/voucher_theme";i:150;s:15:"setting/setting";i:151;s:13:"setting/store";i:152;s:16:"shipping/auspost";i:153;s:17:"shipping/citylink";i:154;s:14:"shipping/fedex";i:155;s:13:"shipping/flat";i:156;s:13:"shipping/free";i:157;s:13:"shipping/item";i:158;s:23:"shipping/parcelforce_48";i:159;s:15:"shipping/pickup";i:160;s:19:"shipping/royal_mail";i:161;s:12:"shipping/ups";i:162;s:13:"shipping/usps";i:163;s:15:"shipping/weight";i:164;s:11:"tool/backup";i:165;s:14:"tool/error_log";i:166;s:11:"tool/upload";i:167;s:12:"total/coupon";i:168;s:12:"total/credit";i:169;s:14:"total/handling";i:170;s:16:"total/klarna_fee";i:171;s:19:"total/low_order_fee";i:172;s:12:"total/reward";i:173;s:14:"total/shipping";i:174;s:15:"total/sub_total";i:175;s:9:"total/tax";i:176;s:11:"total/total";i:177;s:13:"total/voucher";i:178;s:8:"user/api";i:179;s:9:"user/user";i:180;s:20:"user/user_permission";i:181;s:18:"module/information";i:182;s:13:"module/filter";i:183;s:17:"module/bestseller";i:184;s:11:"module/html";i:185;s:12:"module/store";i:186;s:16:"module/affiliate";i:187;s:14:"module/special";i:188;s:17:"module/mostviewed";i:189;s:12:"module/zmenu";i:190;s:12:"module/zmenu";i:191;s:12:"module/zmenu";i:192;s:20:"module/category_wall";i:193;s:16:"module/skincolor";i:194;s:19:"module/mostreviewed";i:195;s:15:"module/toprated";i:196;s:16:"module/tweetbook";i:197;s:13:"module/latest";i:198;s:12:"shipping/jne";i:199;s:18:"module/upload_book";i:200;s:18:"module/upload_book";i:201;s:15:"module/category";i:202;s:18:"module/editingbook";i:203;s:18:"module/editingbook";i:204;s:15:"module/listedit";i:205;s:19:"module/listeditbook";i:206;s:14:"module/gallery";i:207;s:14:"module/gallery";i:208;s:14:"module/gallery";i:209;s:20:"module/gallery_event";i:210;s:20:"module/gallery_event";i:211;s:16:"module/testimony";i:212;s:23:"module/testimony_layout";i:213;s:18:"module/abouteditor";i:214;s:21:"module/calendar_admin";i:215;s:21:"module/upload_payment";i:216;s:27:"module/calendar_module_view";i:217;s:27:"module/calendar_module_view";i:218;s:27:"module/gallery_event_simple";i:219;s:15:"module/comunity";i:220;s:22:"module/comunity_layout";i:221;s:22:"module/comunity_layout";i:222;s:22:"module/comunity_layout";i:223;s:22:"module/comunity_layout";i:224;s:20:"shipping/jne_reguler";i:225;s:20:"module/testimoeditor";i:226;s:21:"module/comunity_admin";i:227;s:20:"payment/bank_mandiri";i:228;s:16:"payment/bank_bca";i:229;s:32:"module/payment_approvement_admin";i:230;s:29:"module/editor_managment_admin";i:231;s:20:"module/editor_layout";i:232;s:20:"module/editor_layout";i:233;s:20:"module/category_wall";i:234;s:15:"module/category";i:235;s:23:"module/featuredcategory";i:236;s:16:"shipping/jne_oke";i:237;s:16:"shipping/jne_yes";i:238;s:21:"module/listdesignbook";i:239;s:21:"module/listdesignbook";}s:6:"modify";a:240:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:18:"dashboard/activity";i:17;s:15:"dashboard/chart";i:18;s:18:"dashboard/customer";i:19;s:13:"dashboard/map";i:20;s:16:"dashboard/online";i:21;s:15:"dashboard/order";i:22;s:16:"dashboard/recent";i:23;s:14:"dashboard/sale";i:24;s:13:"design/banner";i:25;s:13:"design/layout";i:26;s:14:"extension/feed";i:27;s:19:"extension/installer";i:28;s:22:"extension/modification";i:29;s:16:"extension/module";i:30;s:17:"extension/openbay";i:31;s:17:"extension/payment";i:32;s:18:"extension/shipping";i:33;s:15:"extension/total";i:34;s:16:"feed/google_base";i:35;s:19:"feed/google_sitemap";i:36;s:15:"feed/openbaypro";i:37;s:20:"localisation/country";i:38;s:21:"localisation/currency";i:39;s:21:"localisation/geo_zone";i:40;s:21:"localisation/language";i:41;s:25:"localisation/length_class";i:42;s:21:"localisation/location";i:43;s:25:"localisation/order_status";i:44;s:26:"localisation/return_action";i:45;s:26:"localisation/return_reason";i:46;s:26:"localisation/return_status";i:47;s:25:"localisation/stock_status";i:48;s:22:"localisation/tax_class";i:49;s:21:"localisation/tax_rate";i:50;s:25:"localisation/weight_class";i:51;s:17:"localisation/zone";i:52;s:19:"marketing/affiliate";i:53;s:17:"marketing/contact";i:54;s:16:"marketing/coupon";i:55;s:19:"marketing/marketing";i:56;s:14:"module/account";i:57;s:16:"module/affiliate";i:58;s:20:"module/amazon_button";i:59;s:13:"module/banner";i:60;s:17:"module/bestseller";i:61;s:15:"module/carousel";i:62;s:15:"module/category";i:63;s:11:"module/ebay";i:64;s:15:"module/featured";i:65;s:13:"module/filter";i:66;s:22:"module/google_hangouts";i:67;s:11:"module/html";i:68;s:18:"module/information";i:69;s:13:"module/latest";i:70;s:16:"module/pp_button";i:71;s:15:"module/pp_login";i:72;s:16:"module/slideshow";i:73;s:14:"module/special";i:74;s:12:"module/store";i:75;s:14:"openbay/amazon";i:76;s:22:"openbay/amazon_listing";i:77;s:22:"openbay/amazon_product";i:78;s:16:"openbay/amazonus";i:79;s:24:"openbay/amazonus_listing";i:80;s:24:"openbay/amazonus_product";i:81;s:12:"openbay/ebay";i:82;s:20:"openbay/ebay_profile";i:83;s:21:"openbay/ebay_template";i:84;s:12:"openbay/etsy";i:85;s:20:"openbay/etsy_product";i:86;s:21:"openbay/etsy_shipping";i:87;s:17:"openbay/etsy_shop";i:88;s:23:"payment/amazon_checkout";i:89;s:24:"payment/authorizenet_aim";i:90;s:24:"payment/authorizenet_sim";i:91;s:21:"payment/bank_transfer";i:92;s:22:"payment/bluepay_hosted";i:93;s:24:"payment/bluepay_redirect";i:94;s:14:"payment/cheque";i:95;s:11:"payment/cod";i:96;s:17:"payment/firstdata";i:97;s:24:"payment/firstdata_remote";i:98;s:21:"payment/free_checkout";i:99;s:22:"payment/klarna_account";i:100;s:22:"payment/klarna_invoice";i:101;s:14:"payment/liqpay";i:102;s:14:"payment/nochex";i:103;s:15:"payment/paymate";i:104;s:16:"payment/paypoint";i:105;s:13:"payment/payza";i:106;s:26:"payment/perpetual_payments";i:107;s:18:"payment/pp_express";i:108;s:18:"payment/pp_payflow";i:109;s:25:"payment/pp_payflow_iframe";i:110;s:14:"payment/pp_pro";i:111;s:21:"payment/pp_pro_iframe";i:112;s:19:"payment/pp_standard";i:113;s:14:"payment/realex";i:114;s:21:"payment/realex_remote";i:115;s:22:"payment/sagepay_direct";i:116;s:22:"payment/sagepay_server";i:117;s:18:"payment/sagepay_us";i:118;s:24:"payment/securetrading_pp";i:119;s:24:"payment/securetrading_ws";i:120;s:14:"payment/skrill";i:121;s:19:"payment/twocheckout";i:122;s:28:"payment/web_payment_software";i:123;s:16:"payment/worldpay";i:124;s:16:"report/affiliate";i:125;s:25:"report/affiliate_activity";i:126;s:22:"report/affiliate_login";i:127;s:24:"report/customer_activity";i:128;s:22:"report/customer_credit";i:129;s:21:"report/customer_login";i:130;s:22:"report/customer_online";i:131;s:21:"report/customer_order";i:132;s:22:"report/customer_reward";i:133;s:16:"report/marketing";i:134;s:24:"report/product_purchased";i:135;s:21:"report/product_viewed";i:136;s:18:"report/sale_coupon";i:137;s:17:"report/sale_order";i:138;s:18:"report/sale_return";i:139;s:20:"report/sale_shipping";i:140;s:15:"report/sale_tax";i:141;s:17:"sale/custom_field";i:142;s:13:"sale/customer";i:143;s:20:"sale/customer_ban_ip";i:144;s:19:"sale/customer_group";i:145;s:10:"sale/order";i:146;s:14:"sale/recurring";i:147;s:11:"sale/return";i:148;s:12:"sale/voucher";i:149;s:18:"sale/voucher_theme";i:150;s:15:"setting/setting";i:151;s:13:"setting/store";i:152;s:16:"shipping/auspost";i:153;s:17:"shipping/citylink";i:154;s:14:"shipping/fedex";i:155;s:13:"shipping/flat";i:156;s:13:"shipping/free";i:157;s:13:"shipping/item";i:158;s:23:"shipping/parcelforce_48";i:159;s:15:"shipping/pickup";i:160;s:19:"shipping/royal_mail";i:161;s:12:"shipping/ups";i:162;s:13:"shipping/usps";i:163;s:15:"shipping/weight";i:164;s:11:"tool/backup";i:165;s:14:"tool/error_log";i:166;s:11:"tool/upload";i:167;s:12:"total/coupon";i:168;s:12:"total/credit";i:169;s:14:"total/handling";i:170;s:16:"total/klarna_fee";i:171;s:19:"total/low_order_fee";i:172;s:12:"total/reward";i:173;s:14:"total/shipping";i:174;s:15:"total/sub_total";i:175;s:9:"total/tax";i:176;s:11:"total/total";i:177;s:13:"total/voucher";i:178;s:8:"user/api";i:179;s:9:"user/user";i:180;s:20:"user/user_permission";i:181;s:18:"module/information";i:182;s:13:"module/filter";i:183;s:17:"module/bestseller";i:184;s:11:"module/html";i:185;s:12:"module/store";i:186;s:16:"module/affiliate";i:187;s:14:"module/special";i:188;s:17:"module/mostviewed";i:189;s:12:"module/zmenu";i:190;s:12:"module/zmenu";i:191;s:12:"module/zmenu";i:192;s:20:"module/category_wall";i:193;s:16:"module/skincolor";i:194;s:19:"module/mostreviewed";i:195;s:15:"module/toprated";i:196;s:16:"module/tweetbook";i:197;s:13:"module/latest";i:198;s:12:"shipping/jne";i:199;s:18:"module/upload_book";i:200;s:18:"module/upload_book";i:201;s:15:"module/category";i:202;s:18:"module/editingbook";i:203;s:18:"module/editingbook";i:204;s:15:"module/listedit";i:205;s:19:"module/listeditbook";i:206;s:14:"module/gallery";i:207;s:14:"module/gallery";i:208;s:14:"module/gallery";i:209;s:20:"module/gallery_event";i:210;s:20:"module/gallery_event";i:211;s:16:"module/testimony";i:212;s:23:"module/testimony_layout";i:213;s:18:"module/abouteditor";i:214;s:21:"module/calendar_admin";i:215;s:21:"module/upload_payment";i:216;s:27:"module/calendar_module_view";i:217;s:27:"module/calendar_module_view";i:218;s:27:"module/gallery_event_simple";i:219;s:15:"module/comunity";i:220;s:22:"module/comunity_layout";i:221;s:22:"module/comunity_layout";i:222;s:22:"module/comunity_layout";i:223;s:22:"module/comunity_layout";i:224;s:20:"shipping/jne_reguler";i:225;s:20:"module/testimoeditor";i:226;s:21:"module/comunity_admin";i:227;s:20:"payment/bank_mandiri";i:228;s:16:"payment/bank_bca";i:229;s:32:"module/payment_approvement_admin";i:230;s:29:"module/editor_managment_admin";i:231;s:20:"module/editor_layout";i:232;s:20:"module/editor_layout";i:233;s:20:"module/category_wall";i:234;s:15:"module/category";i:235;s:23:"module/featuredcategory";i:236;s:16:"shipping/jne_oke";i:237;s:16:"shipping/jne_yes";i:238;s:21:"module/listdesignbook";i:239;s:21:"module/listdesignbook";}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_voucher` (
`voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
`voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
`voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class` (
`weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
`weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone` (
`zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4230 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1507, 100, 'Aceh', 'ACH', 1),
(1508, 100, 'Bali', 'BLI', 1),
(1509, 100, 'Bangka Belitung', 'BTN', 1),
(1510, 100, 'Banten', 'BBK', 1),
(1511, 100, 'Bengkulu', 'BKL', 1),
(1512, 100, 'D.I. Yogyakarta', 'YGT', 1),
(1513, 100, 'DKI Jakarta', 'JKT', 1),
(1514, 100, 'Gorontalo', 'GRT', 1),
(1515, 100, 'Jambi', 'JBT', 1),
(1516, 100, 'Jawa Barat', 'JB', 1),
(1517, 100, 'Jawa Tengah', 'JT', 1),
(1518, 100, 'Jawa Timur', 'JTT', 1),
(1519, 100, 'Kalimantan Barat', 'KB', 1),
(1520, 100, 'Kalimantan Selatan', 'KS', 1),
(1521, 100, 'Kalimantan Tengah', 'KT', 1),
(1522, 100, 'Kalimantan Timur', 'KTT', 1),
(1523, 100, 'Kalimantan Utara', 'KU', 1),
(1524, 100, 'Kepulauan Riau', 'KR', 1),
(1525, 100, 'Lampung', 'LM', 1),
(1526, 100, 'Maluku', 'MLK', 1),
(1527, 100, 'Maluku Utara', 'MLU', 1),
(1528, 100, 'NTB', 'NTB', 1),
(1529, 100, 'NTT', 'NTT', 1),
(1530, 100, 'Papua', 'PP', 1),
(1531, 100, 'Papua Barat', 'PPB', 1),
(1532, 100, 'Riau', 'RIU', 1),
(1533, 100, 'Sulawesi Barat', 'SB', 1),
(1534, 100, 'Sulawesi Selatan', 'SS', 1),
(1535, 100, 'Sulawesi Tengah', 'ST', 1),
(1536, 100, 'Sulawesi Tenggara', 'STT', 1),
(1537, 100, 'Sulawesi Utara', 'SU', 1),
(1538, 100, 'Sumatera Barat', 'SB', 1),
(1539, 100, 'Sumatera Selatan', 'SS', 1),
(1540, 100, 'Sumatera Utara', 'SU', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
`zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 100, 1507, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 100, 1508, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 100, 1509, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 100, 1510, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 100, 1511, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 100, 1512, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 100, 1513, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 100, 1514, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 100, 1515, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 100, 1516, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 100, 1517, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 100, 1518, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 100, 1519, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 100, 1520, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 100, 1521, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 100, 1522, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 100, 1523, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 100, 1524, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 100, 1525, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 100, 1526, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 100, 1527, 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 100, 1528, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 100, 1529, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 100, 1530, 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 100, 1531, 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 100, 1532, 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 100, 1533, 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 100, 1534, 28, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 100, 1535, 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 100, 1536, 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 100, 1537, 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 100, 1538, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 100, 1539, 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 100, 1540, 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
 ADD PRIMARY KEY (`address_id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
 ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
 ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
 ADD PRIMARY KEY (`affiliate_login_id`), ADD KEY `email` (`email`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
 ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
 ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
 ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
 ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
 ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
 ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
 ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
 ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_banner_image_description`
--
ALTER TABLE `oc_banner_image_description`
 ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Indexes for table `oc_calendar_event`
--
ALTER TABLE `oc_calendar_event`
 ADD PRIMARY KEY (`calendar_event_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
 ADD PRIMARY KEY (`category_id`), ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
 ADD PRIMARY KEY (`category_id`,`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
 ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
 ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
 ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
 ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_city`
--
ALTER TABLE `oc_city`
 ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `oc_colorskin`
--
ALTER TABLE `oc_colorskin`
 ADD PRIMARY KEY (`skin_id`);

--
-- Indexes for table `oc_comunity`
--
ALTER TABLE `oc_comunity`
 ADD PRIMARY KEY (`comunity_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
 ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
 ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
 ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
 ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
 ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
 ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
 ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
 ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
 ADD PRIMARY KEY (`customer_ban_ip_id`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
 ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
 ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
 ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
 ADD PRIMARY KEY (`customer_ip_id`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
 ADD PRIMARY KEY (`customer_login_id`), ADD KEY `email` (`email`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
 ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
 ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
 ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
 ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
 ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
 ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
 ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
 ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_design`
--
ALTER TABLE `oc_design`
 ADD PRIMARY KEY (`designer_id`), ADD KEY `designer_id` (`designer_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
 ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
 ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_draf`
--
ALTER TABLE `oc_draf`
 ADD PRIMARY KEY (`draf_id`);

--
-- Indexes for table `oc_editor`
--
ALTER TABLE `oc_editor`
 ADD PRIMARY KEY (`editor_id`);

--
-- Indexes for table `oc_editor_info`
--
ALTER TABLE `oc_editor_info`
 ADD PRIMARY KEY (`editor_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
 ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
 ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
 ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
 ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
 ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_gallery_event`
--
ALTER TABLE `oc_gallery_event`
 ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
 ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
 ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
 ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
 ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
 ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
 ADD PRIMARY KEY (`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
 ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
 ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
 ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
 ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
 ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
 ADD PRIMARY KEY (`location_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
 ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
 ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
 ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
 ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
 ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
 ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
 ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
 ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
 ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
 ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Indexes for table `oc_order_fraud`
--
ALTER TABLE `oc_order_fraud`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
 ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
 ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
 ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
 ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
 ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
 ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
 ADD PRIMARY KEY (`order_total_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
 ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_paper_size`
--
ALTER TABLE `oc_paper_size`
 ADD PRIMARY KEY (`paper_size_id`);

--
-- Indexes for table `oc_paper_type`
--
ALTER TABLE `oc_paper_type`
 ADD PRIMARY KEY (`paper_type_id`);

--
-- Indexes for table `oc_payment`
--
ALTER TABLE `oc_payment`
 ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
 ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
 ADD PRIMARY KEY (`product_id`,`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
 ADD PRIMARY KEY (`product_discount_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
 ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
 ADD PRIMARY KEY (`product_image_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
 ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
 ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
 ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
 ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
 ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
 ADD PRIMARY KEY (`product_special_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
 ADD PRIMARY KEY (`product_id`,`category_id`), ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
 ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
 ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
 ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
 ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
 ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
 ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
 ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
 ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
 ADD PRIMARY KEY (`review_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
 ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
 ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
 ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
 ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
 ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
 ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
 ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
 ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
 ADD PRIMARY KEY (`url_alias_id`), ADD KEY `query` (`query`), ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
 ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
 ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
 ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
 ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
 ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
 ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
 ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
 ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
 ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `oc_calendar_event`
--
ALTER TABLE `oc_calendar_event`
MODIFY `calendar_event_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `oc_city`
--
ALTER TABLE `oc_city`
MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5543;
--
-- AUTO_INCREMENT for table `oc_colorskin`
--
ALTER TABLE `oc_colorskin`
MODIFY `skin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT for table `oc_comunity`
--
ALTER TABLE `oc_comunity`
MODIFY `comunity_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT for table `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
MODIFY `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_design`
--
ALTER TABLE `oc_design`
MODIFY `designer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_draf`
--
ALTER TABLE `oc_draf`
MODIFY `draf_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `oc_editor`
--
ALTER TABLE `oc_editor`
MODIFY `editor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=487;
--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_gallery_event`
--
ALTER TABLE `oc_gallery_event`
MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=656;
--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_paper_size`
--
ALTER TABLE `oc_paper_size`
MODIFY `paper_size_id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_paper_type`
--
ALTER TABLE `oc_paper_type`
MODIFY `paper_type_id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_payment`
--
ALTER TABLE `oc_payment`
MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=453;
--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2394;
--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=647;
--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=448;
--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1442;
--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=884;
--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4230;
--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
