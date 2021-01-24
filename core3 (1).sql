-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2021 at 12:54 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `core3`
--

-- --------------------------------------------------------

--
-- Table structure for table `core3_diet_plan`
--

CREATE TABLE `core3_diet_plan` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core3_diet_plan`
--

INSERT INTO `core3_diet_plan` (`id`, `patient_id`, `firstname`, `middlename`, `lastname`, `created_at`) VALUES
(1, 2, 'test', 'test', 'test', '2021-01-22 22:40:54'),
(2, 2, 'test', 'test', 'test', '2021-01-22 22:55:20'),
(3, 2, 'test', 'test', 'test', '2021-01-22 22:56:02'),
(4, 2, 'test', 'test', 'test', '2021-01-22 22:56:26'),
(5, 2, 'test', 'test', 'test', '2021-01-22 22:57:28'),
(6, 2, 'test', 'test', 'test', '2021-01-22 22:58:41'),
(7, 2, 'test', 'test', 'test', '2021-01-22 22:59:50'),
(8, 2, 'test', 'test', 'test', '2021-01-22 23:02:44'),
(9, 1, 'test101', 'test101', 'test101', '2021-01-22 23:03:50'),
(10, 1, 'test101', 'test101', 'test101', '2021-01-22 23:04:37'),
(11, 1, 'test101', 'test101', 'test101', '2021-01-22 23:06:01'),
(12, 1, 'test101', 'test101', 'test101', '2021-01-22 23:06:17'),
(13, 1, 'test101', 'test101', 'test101', '2021-01-22 23:06:44'),
(14, 1, 'test101', 'test101', 'test101', '2021-01-22 23:07:12'),
(15, 2, 'test1111', 'test1111', 'test1111', '2021-01-22 23:07:47'),
(16, 2, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:21'),
(17, 2, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:56'),
(18, 2, 'test1111', 'test1111', 'test1111', '2021-01-22 23:14:17'),
(19, 1, 'test100100', 'test100100', 'test100100', '2021-01-22 23:14:46'),
(20, 1, 'test100100', 'test100100', 'test100100', '2021-01-22 23:15:46'),
(21, 1, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:20'),
(22, 1, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:31'),
(23, 1, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:33'),
(24, 1, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:35'),
(25, 1, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:39'),
(26, 1, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:19'),
(27, 1, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:24'),
(28, 1, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:29'),
(29, 2, 'test101101', 'test101101', 'test101101', '2021-01-22 23:19:24'),
(30, 1, 'ronstadt', 'ronstadt', 'ronstadt', '2021-01-22 23:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `core3_med_avail`
--

CREATE TABLE `core3_med_avail` (
  `id` int(11) NOT NULL,
  `med_pack_id` int(11) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `exam_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core3_med_avail`
--

INSERT INTO `core3_med_avail` (`id`, `med_pack_id`, `patient_name`, `department`, `created_at`, `exam_date`) VALUES
(3, 3, 'Aga Bungi', 'Outpatient', '2020-10-01 23:40:47', '2020-10-02 15:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `core3_med_pack`
--

CREATE TABLE `core3_med_pack` (
  `id` int(11) NOT NULL,
  `mp_name` varchar(255) NOT NULL,
  `mp_price` int(11) NOT NULL,
  `mp_desc` text NOT NULL,
  `mp_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core3_med_pack`
--

INSERT INTO `core3_med_pack` (`id`, `mp_name`, `mp_price`, `mp_desc`, `mp_status`) VALUES
(2, 'Pregnant Package', 1000, 'For Health treatment', 'Active'),
(3, 'Student Medical Package', 1200, 'For Educational purpose examination', 'Active'),
(4, 'Swab Test', 3500, 'testing test', 'Active'),
(5, 'Rapid test', 2000, 'Fast testing', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `core3_med_pack_inc`
--

CREATE TABLE `core3_med_pack_inc` (
  `id` int(11) NOT NULL,
  `testname` varchar(255) NOT NULL,
  `med_pack_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core3_med_pack_inc`
--

INSERT INTO `core3_med_pack_inc` (`id`, `testname`, `med_pack_id`) VALUES
(40, 'Ultrasound', 2),
(41, 'X-ray', 3),
(44, 'Swab test', 4),
(45, 'Rapid test kit', 5);

-- --------------------------------------------------------

--
-- Table structure for table `core3_pharmacy_drugs`
--

CREATE TABLE `core3_pharmacy_drugs` (
  `drug_id` int(11) NOT NULL,
  `drug_name` varchar(255) NOT NULL,
  `drug_price` double NOT NULL,
  `drug_type` varchar(255) NOT NULL,
  `drug_description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core3_pharmacy_drugs`
--

INSERT INTO `core3_pharmacy_drugs` (`drug_id`, `drug_name`, `drug_price`, `drug_type`, `drug_description`, `created_at`) VALUES
(1, 'Paracetamol', 5, 'Test', 'This is just a test.', '2020-01-30 02:56:47'),
(2, 'Pinisilin', 10, 'Test', 'This is just a test 2.', '2020-01-30 03:14:53'),
(3, 'Test 3', 15, 'Test 3', 'This is test 3.', '2020-01-30 03:15:33'),
(4, 'Test 4', 11, 'Test 4', 'This is test 4.', '2020-01-30 03:25:08'),
(5, 'ARNEIL NUAY', 200, 'SHABU SHABU', 'MURA LANG ANG BIGAYAN, HANAPIN MO LANG AKO SA LUGAR NA KUNG SAAN MADILIM AT MAY PWESTO...', '2020-01-30 05:09:47'),
(6, 'Maxifeel', 50, 'Skin Care', 'Pang tangaal ng mukha', '2020-02-05 07:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `core3_pharmacy_drug_stocks`
--

CREATE TABLE `core3_pharmacy_drug_stocks` (
  `stock_id` int(11) NOT NULL,
  `drug_id` int(11) DEFAULT NULL,
  `stock_quantity` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `expiration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core3_pharmacy_drug_stocks`
--

INSERT INTO `core3_pharmacy_drug_stocks` (`stock_id`, `drug_id`, `stock_quantity`, `created_at`, `expiration_date`) VALUES
(8, 6, 50, '2020-02-05 08:01:57', '2022-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `core3_pharmacy_drug_transaction`
--

CREATE TABLE `core3_pharmacy_drug_transaction` (
  `id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` datetime NOT NULL,
  `transactionNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core3_pharmacy_drug_transaction`
--

INSERT INTO `core3_pharmacy_drug_transaction` (`id`, `drug_id`, `quantity`, `amount`, `created_at`, `transactionNo`) VALUES
(9, 5, 1, 200, '2020-02-05 03:41:34', 2010001),
(10, 4, 2, 22, '2020-02-05 03:41:34', 2010001),
(11, 5, 2, 400, '2020-02-05 05:34:04', 2010002),
(12, 2, 2, 20, '2020-02-05 07:49:40', 2010003),
(13, 1, 1, 5, '2020-02-05 07:49:40', 2010003),
(14, 6, 1, 50, '2020-02-05 07:54:25', 2010004),
(15, 6, 1, 50, '2020-02-05 07:55:19', 2010005);

-- --------------------------------------------------------

--
-- Table structure for table `core3_pharmacy_payment`
--

CREATE TABLE `core3_pharmacy_payment` (
  `id` int(11) NOT NULL,
  `total_cost` double NOT NULL,
  `cash_amount` double NOT NULL,
  `created_at` datetime NOT NULL,
  `transactionNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core3_pharmacy_payment`
--

INSERT INTO `core3_pharmacy_payment` (`id`, `total_cost`, `cash_amount`, `created_at`, `transactionNo`) VALUES
(1, 222, 250, '2020-02-05 03:41:34', 2010001),
(2, 400, 1000, '2020-02-05 05:34:04', 2010002),
(3, 25, 50, '2020-02-05 07:49:40', 2010003),
(4, 50, 50, '2020-02-05 07:54:25', 2010004),
(5, 50, 50, '2020-02-05 07:55:19', 2010005);

-- --------------------------------------------------------

--
-- Table structure for table `diet_friday`
--

CREATE TABLE `diet_friday` (
  `id` int(11) NOT NULL,
  `diet_id` int(11) DEFAULT NULL,
  `breakfast` varchar(255) DEFAULT NULL,
  `lunch` varchar(255) DEFAULT NULL,
  `dinner` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diet_friday`
--

INSERT INTO `diet_friday` (`id`, `diet_id`, `breakfast`, `lunch`, `dinner`, `created_at`) VALUES
(1, 10, 'test101', 'test101', 'test101', '2021-01-22 23:04:37'),
(2, 11, 'test101', 'test101', 'test101', '2021-01-22 23:06:01'),
(3, 12, 'test101', 'test101', 'test101', '2021-01-22 23:06:17'),
(4, 13, 'test101', 'test101', 'test101', '2021-01-22 23:06:44'),
(5, 14, 'test101', 'test101', 'test101', '2021-01-22 23:07:12'),
(6, 15, 'test1111', 'test1111', 'test1111', '2021-01-22 23:07:47'),
(7, 16, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:21'),
(8, 17, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:56'),
(9, 18, 'test1111', 'test1111', 'test1111', '2021-01-22 23:14:17'),
(10, 19, 'test100100', 'test100100', 'test100100', '2021-01-22 23:14:46'),
(11, 20, 'test100100', 'test100100', 'test100100', '2021-01-22 23:15:46'),
(12, 21, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:20'),
(13, 22, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:31'),
(14, 23, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:33'),
(15, 24, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:35'),
(16, 25, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:39'),
(17, 26, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:19'),
(18, 27, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:24'),
(19, 28, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:29'),
(20, 29, 'test101101', 'test101101', 'test101101', '2021-01-22 23:19:24'),
(21, 30, 'ronstadt', 'ronstadt', 'ronstadt', '2021-01-22 23:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `diet_monday`
--

CREATE TABLE `diet_monday` (
  `id` int(11) NOT NULL,
  `diet_id` int(11) DEFAULT NULL,
  `breakfast` varchar(255) DEFAULT NULL,
  `lunch` varchar(255) DEFAULT NULL,
  `dinner` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diet_monday`
--

INSERT INTO `diet_monday` (`id`, `diet_id`, `breakfast`, `lunch`, `dinner`, `created_at`) VALUES
(1, 7, '', '', '', '2021-01-22 22:59:50'),
(2, 8, '', '', '', '2021-01-22 23:02:44'),
(3, 9, 'test101', 'test101', 'test101', '2021-01-22 23:03:50'),
(4, 10, 'test101', 'test101', 'test101', '2021-01-22 23:04:37'),
(5, 11, 'test101', 'test101', 'test101', '2021-01-22 23:06:01'),
(6, 12, 'test101', 'test101', 'test101', '2021-01-22 23:06:17'),
(7, 13, 'test101', 'test101', 'test101', '2021-01-22 23:06:44'),
(8, 14, 'test101', 'test101', 'test101', '2021-01-22 23:07:12'),
(9, 15, 'test1111', 'test1111', 'test1111', '2021-01-22 23:07:47'),
(10, 16, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:21'),
(11, 17, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:56'),
(12, 18, 'test1111', 'test1111', 'test1111', '2021-01-22 23:14:17'),
(13, 19, 'test100100', 'test100100', 'test100100', '2021-01-22 23:14:46'),
(14, 20, 'test100100', 'test100100', 'test100100', '2021-01-22 23:15:46'),
(15, 21, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:20'),
(16, 22, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:31'),
(17, 23, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:33'),
(18, 24, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:35'),
(19, 25, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:39'),
(20, 26, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:19'),
(21, 27, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:24'),
(22, 28, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:29'),
(23, 29, 'test101101', 'test101101', 'test101101', '2021-01-22 23:19:24'),
(24, 30, 'ronstadt', 'ronstadt', 'ronstadt', '2021-01-22 23:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `diet_saturday`
--

CREATE TABLE `diet_saturday` (
  `id` int(11) NOT NULL,
  `diet_id` int(11) DEFAULT NULL,
  `breakfast` varchar(255) DEFAULT NULL,
  `lunch` varchar(255) DEFAULT NULL,
  `dinner` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diet_saturday`
--

INSERT INTO `diet_saturday` (`id`, `diet_id`, `breakfast`, `lunch`, `dinner`, `created_at`) VALUES
(1, 12, 'test101', 'test101', 'test101', '2021-01-22 23:06:17'),
(2, 13, 'test101', 'test101', 'test101', '2021-01-22 23:06:44'),
(3, 14, 'test101', 'test101', 'test101', '2021-01-22 23:07:12'),
(4, 15, 'test1111', 'test1111', 'test1111', '2021-01-22 23:07:47'),
(5, 16, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:21'),
(6, 17, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:56'),
(7, 18, 'test1111', 'test1111', 'test1111', '2021-01-22 23:14:17'),
(8, 19, 'test100100', 'test100100', 'test100100', '2021-01-22 23:14:46'),
(9, 20, 'test100100', 'test100100', 'v', '2021-01-22 23:15:46'),
(10, 21, 'test100100', 'test100100', 'v', '2021-01-22 23:17:20'),
(11, 22, 'test100100', 'test100100', 'v', '2021-01-22 23:17:31'),
(12, 23, 'test100100', 'test100100', 'v', '2021-01-22 23:17:33'),
(13, 24, 'test100100', 'test100100', 'v', '2021-01-22 23:17:35'),
(14, 25, 'test100100', 'test100100', 'v', '2021-01-22 23:17:39'),
(15, 26, 'test100100', 'test100100', 'v', '2021-01-22 23:18:19'),
(16, 27, 'test100100', 'test100100', 'v', '2021-01-22 23:18:24'),
(17, 28, 'test100100', 'test100100', 'v', '2021-01-22 23:18:29'),
(18, 29, 'test101101', 'test101101', 'test101101', '2021-01-22 23:19:24'),
(19, 30, 'ronstadt', 'ronstadt', 'ronstadt', '2021-01-22 23:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `diet_sunday`
--

CREATE TABLE `diet_sunday` (
  `id` int(11) NOT NULL,
  `diet_id` int(11) DEFAULT NULL,
  `breakfast` varchar(255) DEFAULT NULL,
  `lunch` varchar(255) DEFAULT NULL,
  `dinner` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diet_sunday`
--

INSERT INTO `diet_sunday` (`id`, `diet_id`, `breakfast`, `lunch`, `dinner`, `created_at`) VALUES
(1, 12, 'test101', 'test101', 'test101', '2021-01-22 23:06:17'),
(2, 13, 'test101', 'test101', 'test101', '2021-01-22 23:06:44'),
(3, 14, 'test101', 'test101', 'test101', '2021-01-22 23:07:12'),
(4, 15, 'test1111', 'test1111', 'test1111', '2021-01-22 23:07:47'),
(5, 16, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:21'),
(6, 17, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:56'),
(7, 18, 'test1111', 'test1111', 'test1111', '2021-01-22 23:14:17'),
(8, 19, 'test100100', 'test100100', 'test100100', '2021-01-22 23:14:46'),
(9, 20, 'test100100', 'test100100', 'test100100', '2021-01-22 23:15:46'),
(10, 21, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:20'),
(11, 22, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:31'),
(12, 23, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:33'),
(13, 24, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:35'),
(14, 25, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:39'),
(15, 26, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:19'),
(16, 27, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:24'),
(17, 28, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:29'),
(18, 29, 'test101101', 'test101101', 'test101101', '2021-01-22 23:19:24'),
(19, 30, 'ronstadt', 'ronstadt', 'ronstadt', '2021-01-22 23:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `diet_thursday`
--

CREATE TABLE `diet_thursday` (
  `id` int(11) NOT NULL,
  `diet_id` int(11) DEFAULT NULL,
  `breakfast` varchar(255) DEFAULT NULL,
  `lunch` varchar(255) DEFAULT NULL,
  `dinner` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diet_thursday`
--

INSERT INTO `diet_thursday` (`id`, `diet_id`, `breakfast`, `lunch`, `dinner`, `created_at`) VALUES
(1, 10, 'test101', 'test101', 'test101', '2021-01-22 23:04:37'),
(2, 11, 'test101', 'test101', 'test101', '2021-01-22 23:06:01'),
(3, 12, 'test101', 'test101', 'test101', '2021-01-22 23:06:17'),
(4, 13, 'test101', 'test101', 'test101', '2021-01-22 23:06:44'),
(5, 14, 'test101', 'test101', 'test101', '2021-01-22 23:07:12'),
(6, 15, 'test1111', 'test1111', 'test1111', '2021-01-22 23:07:47'),
(7, 16, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:21'),
(8, 17, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:56'),
(9, 18, 'test1111', 'test1111', 'test1111', '2021-01-22 23:14:17'),
(10, 19, 'test100100', 'test100100', 'test100100', '2021-01-22 23:14:46'),
(11, 20, 'test100100', 'test100100', 'test100100', '2021-01-22 23:15:46'),
(12, 21, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:20'),
(13, 22, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:31'),
(14, 23, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:33'),
(15, 24, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:35'),
(16, 25, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:39'),
(17, 26, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:19'),
(18, 27, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:24'),
(19, 28, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:29'),
(20, 29, 'test101101', 'test101101', 'test101101', '2021-01-22 23:19:24'),
(21, 30, 'ronstadt', 'ronstadt', 'ronstadt', '2021-01-22 23:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `diet_tuesday`
--

CREATE TABLE `diet_tuesday` (
  `id` int(11) NOT NULL,
  `diet_id` int(11) DEFAULT NULL,
  `breakfast` varchar(255) DEFAULT NULL,
  `lunch` varchar(255) DEFAULT NULL,
  `dinner` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diet_tuesday`
--

INSERT INTO `diet_tuesday` (`id`, `diet_id`, `breakfast`, `lunch`, `dinner`, `created_at`) VALUES
(1, 8, '', '', '', '2021-01-22 23:02:44'),
(2, 9, 'test101', 'test101', 'test101', '2021-01-22 23:03:50'),
(3, 10, 'test101', 'test101', 'test101', '2021-01-22 23:04:37'),
(4, 11, 'test101', 'test101', 'test101', '2021-01-22 23:06:01'),
(5, 12, 'test101', 'test101', 'test101', '2021-01-22 23:06:17'),
(6, 13, 'test101', 'test101', 'test101', '2021-01-22 23:06:44'),
(7, 14, 'test101', 'test101', 'test101', '2021-01-22 23:07:12'),
(8, 15, 'test1111', 'test1111', 'test1111', '2021-01-22 23:07:47'),
(9, 16, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:21'),
(10, 17, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:56'),
(11, 18, 'test1111', 'test1111', 'test1111', '2021-01-22 23:14:17'),
(12, 19, 'test100100', 'test100100', 'test100100', '2021-01-22 23:14:46'),
(13, 20, 'test100100', 'test100100', 'test100100', '2021-01-22 23:15:46'),
(14, 21, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:20'),
(15, 22, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:31'),
(16, 23, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:33'),
(17, 24, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:35'),
(18, 25, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:39'),
(19, 26, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:19'),
(20, 27, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:24'),
(21, 28, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:29'),
(22, 29, 'test101101', 'test101101', 'test101101', '2021-01-22 23:19:24'),
(23, 30, 'ronstadt', 'ronstadt', 'ronstadt', '2021-01-22 23:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `diet_wednesday`
--

CREATE TABLE `diet_wednesday` (
  `id` int(11) NOT NULL,
  `diet_id` int(11) DEFAULT NULL,
  `breakfast` varchar(255) DEFAULT NULL,
  `lunch` varchar(255) DEFAULT NULL,
  `dinner` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diet_wednesday`
--

INSERT INTO `diet_wednesday` (`id`, `diet_id`, `breakfast`, `lunch`, `dinner`, `created_at`) VALUES
(1, 8, '', '', '', '2021-01-22 23:02:44'),
(2, 9, 'test101', 'test101', 'test101', '2021-01-22 23:03:50'),
(3, 10, 'test101', 'test101', 'test101', '2021-01-22 23:04:37'),
(4, 11, 'test101', 'test101', 'test101', '2021-01-22 23:06:01'),
(5, 12, 'test101', 'test101', 'test101', '2021-01-22 23:06:17'),
(6, 13, 'test101', 'test101', 'test101', '2021-01-22 23:06:44'),
(7, 14, 'test101', 'test101', 'test101', '2021-01-22 23:07:12'),
(8, 15, 'test1111', 'test1111', 'test1111', '2021-01-22 23:07:47'),
(9, 16, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:21'),
(10, 17, 'test1111', 'test1111', 'test1111', '2021-01-22 23:10:56'),
(11, 18, 'test1111', 'test1111', 'test1111', '2021-01-22 23:14:17'),
(12, 19, 'test100100', 'test100100', 'test100100', '2021-01-22 23:14:46'),
(13, 20, 'test100100', 'test100100', 'test100100', '2021-01-22 23:15:46'),
(14, 21, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:20'),
(15, 22, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:31'),
(16, 23, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:33'),
(17, 24, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:35'),
(18, 25, 'test100100', 'test100100', 'test100100', '2021-01-22 23:17:39'),
(19, 26, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:19'),
(20, 27, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:24'),
(21, 28, 'test100100', 'test100100', 'test100100', '2021-01-22 23:18:29'),
(22, 29, 'test101101', 'test101101', 'test101101', '2021-01-22 23:19:24'),
(23, 30, 'ronstadt', 'ronstadt', 'ronstadt', '2021-01-22 23:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `doctors_appointment_tbl`
--

CREATE TABLE `doctors_appointment_tbl` (
  `apt_id` int(11) NOT NULL,
  `apt_doctors_name` varchar(255) NOT NULL,
  `apt_sched_date` date NOT NULL,
  `apt_sched_time` varchar(255) NOT NULL,
  `apt_sched_cause` varchar(255) NOT NULL,
  `apt_patient_name` varchar(255) NOT NULL,
  `apt_patient_lastvisit` date DEFAULT NULL,
  `apt_remarks` varchar(255) NOT NULL,
  `apt_sub_doctor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors_appointment_tbl`
--

INSERT INTO `doctors_appointment_tbl` (`apt_id`, `apt_doctors_name`, `apt_sched_date`, `apt_sched_time`, `apt_sched_cause`, `apt_patient_name`, `apt_patient_lastvisit`, `apt_remarks`, `apt_sub_doctor`) VALUES
(1, 'DRA. ELSA JIMENEZ', '2021-01-12', '8AM', 'CHECK UP FOR MY WOUNDED LEG', 'GLADYS BALLESTEROS', '2021-01-11', 'SCHEDULED', NULL),
(2, 'DR. RAMON KATIGBAK', '2021-01-11', '4PM', 'MONTHLY CHECK UP', 'MANALOTO, PEPITO G.', '2021-01-11', 'PATIENT UNATTENDED', 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `patient_registration_tbl`
--

CREATE TABLE `patient_registration_tbl` (
  `patient_id` int(11) NOT NULL,
  `patient_fullname` varchar(255) NOT NULL,
  `patient_birthdate` date NOT NULL,
  `patient_age` int(11) NOT NULL,
  `patient_citizenship` varchar(255) NOT NULL,
  `patient_gender` varchar(255) NOT NULL,
  `patient_civilstatus` varchar(255) NOT NULL,
  `patient_fulladdress` varchar(255) NOT NULL,
  `patient_occupation` varchar(255) NOT NULL,
  `patient_mobileno` varchar(255) NOT NULL,
  `patient_contact1` varchar(255) NOT NULL,
  `patient_contact2` varchar(255) NOT NULL,
  `patient_disorder` varchar(255) NOT NULL,
  `patient_health_insurance` varchar(255) NOT NULL,
  `patient_philhealth` varchar(255) NOT NULL,
  `patient_prev_hospital` varchar(255) NOT NULL,
  `patient_lastvisit` date DEFAULT NULL,
  `patient_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_registration_tbl`
--

INSERT INTO `patient_registration_tbl` (`patient_id`, `patient_fullname`, `patient_birthdate`, `patient_age`, `patient_citizenship`, `patient_gender`, `patient_civilstatus`, `patient_fulladdress`, `patient_occupation`, `patient_mobileno`, `patient_contact1`, `patient_contact2`, `patient_disorder`, `patient_health_insurance`, `patient_philhealth`, `patient_prev_hospital`, `patient_lastvisit`, `patient_status`) VALUES
(1, 'MANALOTO, PEPITO G.', '1849-11-12', 34, 'FILIPINO', 'MALE', 'SINGLE', 'blk 226 lot 8 won st. phase 8, north fairview quezon city', 'BUSINESSMAN', '09278539533', 'ALEJANDRO M. DUGAS / 09992314212', 'NOSI D. MAKITA / 09283991202', 'SCHIZOTYPAL PERSONALITY DISORDER', 'NONE', '11-201534404-7', 'NONE', NULL, 'Registered'),
(2, 'GLADYS BALLESTEROS', '1994-11-23', 32, 'FILIPINO', 'FEMALE', 'SINGLE', 'blk 226 lot 8 won st. phase 8, north fairview quezon city', 'FREELANCER', '09278539533', 'ALEJANDRO M. DUGAS / 09992314212', 'NOSI D. MAKITA / 09283991202', 'SCHIZOTYPAL PERSONALITY DISORDER', 'NONE', '11-201531232-7', 'NONE', '2021-01-11', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `user_type`) VALUES
(1, 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `core3_diet_plan`
--
ALTER TABLE `core3_diet_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `core3_med_avail`
--
ALTER TABLE `core3_med_avail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core3_med_pack`
--
ALTER TABLE `core3_med_pack`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core3_med_pack_inc`
--
ALTER TABLE `core3_med_pack_inc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core3_pharmacy_drugs`
--
ALTER TABLE `core3_pharmacy_drugs`
  ADD PRIMARY KEY (`drug_id`);

--
-- Indexes for table `core3_pharmacy_drug_stocks`
--
ALTER TABLE `core3_pharmacy_drug_stocks`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `drug_id` (`drug_id`);

--
-- Indexes for table `core3_pharmacy_drug_transaction`
--
ALTER TABLE `core3_pharmacy_drug_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core3_pharmacy_payment`
--
ALTER TABLE `core3_pharmacy_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diet_friday`
--
ALTER TABLE `diet_friday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diet_id` (`diet_id`);

--
-- Indexes for table `diet_monday`
--
ALTER TABLE `diet_monday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diet_id` (`diet_id`);

--
-- Indexes for table `diet_saturday`
--
ALTER TABLE `diet_saturday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diet_id` (`diet_id`);

--
-- Indexes for table `diet_sunday`
--
ALTER TABLE `diet_sunday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diet_id` (`diet_id`);

--
-- Indexes for table `diet_thursday`
--
ALTER TABLE `diet_thursday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diet_id` (`diet_id`);

--
-- Indexes for table `diet_tuesday`
--
ALTER TABLE `diet_tuesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diet_id` (`diet_id`);

--
-- Indexes for table `diet_wednesday`
--
ALTER TABLE `diet_wednesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diet_id` (`diet_id`);

--
-- Indexes for table `doctors_appointment_tbl`
--
ALTER TABLE `doctors_appointment_tbl`
  ADD PRIMARY KEY (`apt_id`);

--
-- Indexes for table `patient_registration_tbl`
--
ALTER TABLE `patient_registration_tbl`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `core3_diet_plan`
--
ALTER TABLE `core3_diet_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `core3_med_avail`
--
ALTER TABLE `core3_med_avail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `core3_med_pack_inc`
--
ALTER TABLE `core3_med_pack_inc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `core3_pharmacy_drugs`
--
ALTER TABLE `core3_pharmacy_drugs`
  MODIFY `drug_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core3_pharmacy_drug_stocks`
--
ALTER TABLE `core3_pharmacy_drug_stocks`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `core3_pharmacy_drug_transaction`
--
ALTER TABLE `core3_pharmacy_drug_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `core3_pharmacy_payment`
--
ALTER TABLE `core3_pharmacy_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `diet_friday`
--
ALTER TABLE `diet_friday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `diet_monday`
--
ALTER TABLE `diet_monday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `diet_saturday`
--
ALTER TABLE `diet_saturday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `diet_sunday`
--
ALTER TABLE `diet_sunday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `diet_thursday`
--
ALTER TABLE `diet_thursday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `diet_tuesday`
--
ALTER TABLE `diet_tuesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `diet_wednesday`
--
ALTER TABLE `diet_wednesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `doctors_appointment_tbl`
--
ALTER TABLE `doctors_appointment_tbl`
  MODIFY `apt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_registration_tbl`
--
ALTER TABLE `patient_registration_tbl`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `core3_diet_plan`
--
ALTER TABLE `core3_diet_plan`
  ADD CONSTRAINT `core3_diet_plan_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient_registration_tbl` (`patient_id`);

--
-- Constraints for table `core3_pharmacy_drug_stocks`
--
ALTER TABLE `core3_pharmacy_drug_stocks`
  ADD CONSTRAINT `core3_pharmacy_drug_stocks_ibfk_1` FOREIGN KEY (`drug_id`) REFERENCES `core3_pharmacy_drugs` (`drug_id`);

--
-- Constraints for table `diet_friday`
--
ALTER TABLE `diet_friday`
  ADD CONSTRAINT `diet_friday_ibfk_1` FOREIGN KEY (`diet_id`) REFERENCES `core3_diet_plan` (`id`);

--
-- Constraints for table `diet_monday`
--
ALTER TABLE `diet_monday`
  ADD CONSTRAINT `diet_monday_ibfk_1` FOREIGN KEY (`diet_id`) REFERENCES `core3_diet_plan` (`id`);

--
-- Constraints for table `diet_saturday`
--
ALTER TABLE `diet_saturday`
  ADD CONSTRAINT `diet_saturday_ibfk_1` FOREIGN KEY (`diet_id`) REFERENCES `core3_diet_plan` (`id`);

--
-- Constraints for table `diet_sunday`
--
ALTER TABLE `diet_sunday`
  ADD CONSTRAINT `diet_sunday_ibfk_1` FOREIGN KEY (`diet_id`) REFERENCES `core3_diet_plan` (`id`);

--
-- Constraints for table `diet_thursday`
--
ALTER TABLE `diet_thursday`
  ADD CONSTRAINT `diet_thursday_ibfk_1` FOREIGN KEY (`diet_id`) REFERENCES `core3_diet_plan` (`id`);

--
-- Constraints for table `diet_tuesday`
--
ALTER TABLE `diet_tuesday`
  ADD CONSTRAINT `diet_tuesday_ibfk_1` FOREIGN KEY (`diet_id`) REFERENCES `core3_diet_plan` (`id`);

--
-- Constraints for table `diet_wednesday`
--
ALTER TABLE `diet_wednesday`
  ADD CONSTRAINT `diet_wednesday_ibfk_1` FOREIGN KEY (`diet_id`) REFERENCES `core3_diet_plan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
