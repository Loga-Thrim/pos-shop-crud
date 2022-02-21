-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 07, 2022 at 07:32 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `6212231004`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `totalPrice` varchar(20) NOT NULL,
  `paid` varchar(20) NOT NULL,
  `products` longtext NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `totalPrice`, `paid`, `products`, `time`) VALUES
(2, '3415800', '3500000', '[{\"id\":\"10\",\"name\":\"ภาพธรรมชาติ\",\"price\":\"10000\",\"remain\":\"14\",\"img\":\"vu4z6Ztbqg.jpeg\",\"count\":1},{\"id\":\"12\",\"name\":\"My team\",\"price\":\"1500000\",\"remain\":\"28\",\"img\":\"8zaF155SyY.jpg\",\"count\":2},{\"id\":\"14\",\"name\":\"Jigsaw logo\",\"price\":\"100000\",\"remain\":\"871\",\"img\":\"qOPmPpBsf0.png\",\"count\":4},{\"id\":\"15\",\"name\":\"event banner\",\"price\":\"5000\",\"remain\":\"10\",\"img\":\"bj81jP1JQ0.png\",\"count\":1},{\"id\":\"16\",\"name\":\"Authentication banner\",\"price\":\"200\",\"remain\":\"88\",\"img\":\"50jM8onZLX.png\",\"count\":4}]', '2022-02-07 12:09:30 PM'),
(3, '200000', '200000', '[{\"id\":\"14\",\"name\":\"Jigsaw logo\",\"price\":\"100000\",\"remain\":\"867\",\"img\":\"qOPmPpBsf0.png\",\"count\":2}]', '2022-02-07 12:18:24 PM'),
(4, '3600000', '3700000', '[{\"id\":\"12\",\"name\":\"My team\",\"price\":\"1500000\",\"remain\":\"26\",\"img\":\"8zaF155SyY.jpg\",\"count\":2},{\"id\":\"14\",\"name\":\"Jigsaw logo\",\"price\":\"100000\",\"remain\":\"865\",\"img\":\"qOPmPpBsf0.png\",\"count\":6}]', '2022-02-07 03:59:52 PM');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL,
  `remain` int(10) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `remain`, `img`) VALUES
(6, 'House', '2900000', 9, 'fgSjLJFbAn.png'),
(8, 'Wolf Picture', '75400', 1, 'P8LFNA6VE0.png'),
(10, 'ภาพธรรมชาติ', '10000', 13, 'vu4z6Ztbqg.jpeg'),
(11, 'Smart man', '1500', 1, 'GdnHA1cKgm.jpeg'),
(12, 'My team', '1500000', 24, '8zaF155SyY.jpg'),
(14, 'Jigsaw logo', '100000', 859, 'qOPmPpBsf0.png'),
(15, 'event banner', '5000', 9, 'bj81jP1JQ0.png'),
(16, 'Authentication banner', '200', 84, '50jM8onZLX.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
