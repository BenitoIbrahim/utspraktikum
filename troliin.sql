-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2022 at 07:33 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `troliin`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_troliin`
--

CREATE TABLE `db_troliin` (
  `id` int(11) NOT NULL,
  `jenis_barang` varchar(50) NOT NULL,
  `produsen` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `date_modified` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_troliin`
--

INSERT INTO `db_troliin` (`id`, `jenis_barang`, `produsen`, `harga`, `date_modified`) VALUES
(41, 'Ayam', 'Peternak lokal', 30000, '2022-10-17'),
(42, 'Sayur ', 'Petani lokal', 15000, '2022-10-17'),
(43, 'Celana', 'Levis', 80000, '2022-10-17');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `jenis_barang` varchar(50) NOT NULL,
  `produsen` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `date_modified` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `jenis_barang`, `produsen`, `harga`, `date_modified`) VALUES
(7, 'Ayam', 'Peternak lokal', 30000, '2022-10-17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`) VALUES
(12312448, 'a1@gmail.com', '202cb962ac59075b964b07152d234b70', 'a'),
(12312449, 'benitoibrahim@gmail.com', '005333da9bc15a48d3b7b0430a7009bd', 'benito');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_troliin`
--
ALTER TABLE `db_troliin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
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
-- AUTO_INCREMENT for table `db_troliin`
--
ALTER TABLE `db_troliin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12312450;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
