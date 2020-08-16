-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 08, 2020 at 11:24 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usimbrite`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `matric_number` int(7) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`matric_number`, `password`) VALUES
(1180469, 'khai'),
(1180494, 'qurra'),
(1180480, 'dira');

-- --------------------------------------------------------

--
-- Table structure for table `organizer`
--

CREATE TABLE `organizer` (
  `id` int(3) NOT NULL,
  `poster` longblob NOT NULL,
  `series_no` int(10) NOT NULL,
  `category` varchar(50) NOT NULL,
  `organization` text NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `venue` varchar(50) NOT NULL,
  `date` varchar(10) NOT NULL,
  `time` varchar(10) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organizer`
--

INSERT INTO `organizer` (`id`, `poster`, `series_no`, `category`, `organization`, `event_name`, `venue`, `date`, `time`, `date_create`) VALUES
(111, 0x706f737465722f3131202d20436f70792e6a7067, 123456789, 'sport', 'KELAB SUKAN', 'MEMANAH', 'PAVILION,USIM', '2020-08-14', '17:00', '2020-08-08 05:25:30'),
(112, 0x706f737465722f3232202d20436f70792e6a7067, 123098764, 'sport', 'SEKREFAST', 'SUKANEKA FST', 'PAVILION,USIM', '2020-08-14', '09:00', '2020-08-08 05:26:26'),
(113, 0x706f737465722f3135353632392d686f6e65792d346b2d756c7472612d68642d77616c6c70617065722e6a7067, 123098713, 'sport', 'KELAB SUKAN', 'BOLA SEPAK', 'PAVILION,USIM', '2020-08-14', '14:00', '2020-08-08 05:27:29'),
(114, 0x706f737465722f62626262622e706e67, 123098712, 'sport', 'KELAB SUKAN', 'PINGPONG2', 'PAVILION,USIM', '2020-08-14', '14:00', '2020-08-08 05:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(3) NOT NULL,
  `matric_number` int(7) NOT NULL,
  `name` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `matric_number`, `name`, `faculty`, `event`, `email`, `phone_number`) VALUES
(1, 1180494, 'qurratul ain farhanah', 'fst', 'jalinan kasih', 'qurra@gmail.com', '0198765432'),
(2, 1180490, 'siti', 'fst', 'sport', 'siti@gmail.com', '0123456789'),
(3, 1180469, 'KHAISATUL BALQIS BINTI MAT DAUD', 'fst', 'MEMANAH', 'khai@gmail.com', '0193636497'),
(4, 1180469, 'KHAISATUL BALQIS BINTI MAT DAUD', 'fst', 'MEMANAH', 'khai@gmail.com', '0193636497'),
(5, 1180469, 'KHAISATUL BALQIS BINTI MAT DAUD', 'fst', 'MEMANAH', 'khai@gmail.com', '0193636469');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `organizer`
--
ALTER TABLE `organizer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `organizer`
--
ALTER TABLE `organizer`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
