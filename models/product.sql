-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 02, 2023 at 06:21 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(225) NOT NULL,
  `create_at` date NOT NULL,
  `update_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`id`, `brand_name`, `create_at`, `update_at`) VALUES
(1, 'APPLE', '2023-11-02', NULL),
(2, 'SAMSUNG', '2023-11-02', NULL),
(3, 'VIVO', '2023-11-02', NULL),
(4, 'OPPO', '2023-11-02', NULL),
(5, 'HUAWEI', '2023-11-02', NULL),
(6, 'XIAOMI', '2023-11-02', NULL),
(7, 'ONEPLUS', '2023-11-02', NULL),
(8, 'REALME', '2023-11-02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_name`
--

CREATE TABLE `tb_product_name` (
  `id` int(11) NOT NULL,
  `product_name` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_sub`
--

CREATE TABLE `tb_product_sub` (
  `id` int(11) NOT NULL,
  `product_name` varchar(225) NOT NULL,
  `brand_name_id` int(11) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `detail` varchar(225) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `create_at` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_product_name`
--
ALTER TABLE `tb_product_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_product_sub`
--
ALTER TABLE `tb_product_sub`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_product_name`
--
ALTER TABLE `tb_product_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_product_sub`
--
ALTER TABLE `tb_product_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
