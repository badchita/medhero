-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 08:31 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `androidexamdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `otc_list`
--

CREATE TABLE `otc_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `drug_name` varchar(255) DEFAULT NULL,
  `price` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otc_list`
--

INSERT INTO `otc_list` (`id`, `name`, `description`, `drug_name`, `price`) VALUES
(1, 'OTC clotrimazole (vaginal use)', '', 'Mycelex', 100),
(2, 'OTC clotrimazole (topical use)\r\n', '', 'Lotrimin', 50),
(3, 'OTC triple antibiotic cream', '', 'Neosporin', 250),
(4, 'OTC acetaminophen tablets, capsules,\r\nsuppositories, liquids, drops', '', 'Tylenol', 100),
(5, 'OTC EC aspirin 81 mg, 325 mg,\r\nOTC aspirin 325 mg', '', 'Ecotrin', 150);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_list`
--

CREATE TABLE `prescription_list` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desription` varchar(255) NOT NULL,
  `price` int(200) NOT NULL,
  `medical_uses` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription_list`
--

INSERT INTO `prescription_list` (`id`, `title`, `desription`, `price`, `medical_uses`) VALUES
(1, 'oxycodone (OxyContin)', '', 100, 'used to treat pain or relieve coughs or diarrhea.'),
(2, 'henobarbital (Luminal)', '', 250, 'to treat anxiety, tension, panic attacks, and sleep disorders'),
(3, 'methylphenidate (Ritalin) and amphetamine/dextroamphetamine', '', 150, 'used to treat narcolepsy and ADHD'),
(4, 'hydrocodone (Vicodin)', '', 100, 'used to treat pain or relieve coughs or diarrhea.'),
(5, ' diazepam (Valium)', '', 200, 'depressants are used to treat anxiety, tension, panic attacks, and sleep disorders');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `otc_list`
--
ALTER TABLE `otc_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription_list`
--
ALTER TABLE `prescription_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `otc_list`
--
ALTER TABLE `otc_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prescription_list`
--
ALTER TABLE `prescription_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
