-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 11, 2015 at 12:37 PM
-- Server version: 5.6.25-0ubuntu0.15.04.1
-- PHP Version: 5.6.4-4ubuntu6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `legistify`
--

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE IF NOT EXISTS `queries` (
`id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`id`, `name`, `date`, `time`, `message`, `email`) VALUES
(1, 'SHUBHAM MITTAL', '11/10/1994', '12:36', 'This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page', 'shubham.mittal.kv1@gmail.com'),
(2, 'Surbhi Mittal', '24/12/1996', '16:20', 'This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page', 'asam41394@gmail.com'),
(3, 'chitrangana sharma', '12/04/1997', '15:20', 'This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page', 'chitrangana.sharma4@gmail.com'),
(4, 'Surbhi Shekhawat', '12/03/2004', '16:20', 'This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page', 'surabhi.shekhawat94@gmail.com'),
(5, 'Rakesh Gupta', '25/09/2014', '11:11', 'This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page', 'rk63g@gmail.com'),
(6, 'Kunal Gupta', '22/11/2015', '23:15', 'This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page This is the query which an user post on this page', 'dirtydevil2789@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
`id` int(100) NOT NULL,
  `up` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id`, `up`) VALUES
(1, 'My Name'),
(2, 'file_upload/'),
(3, 'file_upload/'),
(4, 'file_upload/Screenshot from 2015-10-01 00:52:54.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
