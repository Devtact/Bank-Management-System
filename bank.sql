-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2016 at 03:15 AM
-- Server version: 5.5.27
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
CREATE TABLE IF NOT EXISTS `banks` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `ustatus` varchar(255) DEFAULT NULL,
  `bal_amt` int(11) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`uid`, `uname`, `ustatus`, `bal_amt`) VALUES
(1, 'manish', 'saving', 800),
(2, 'suresh', 'saving', 800),
(4, 'makoy', 'saving', 10000),
(8, 'mdomast', 'saving ', 5400);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `accid` int(11) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`accid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`accid`, `username`, `password`) VALUES
(1, 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `transhis`
--

DROP TABLE IF EXISTS `transhis`;
CREATE TABLE IF NOT EXISTS `transhis` (
  `tid` int(11) NOT NULL,
  `tamt` int(11) NOT NULL,
  `tstatus` varchar(100) NOT NULL,
  `tdate` varchar(200) NOT NULL,
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transhis`
--

INSERT INTO `transhis` (`tid`, `tamt`, `tstatus`, `tdate`) VALUES
(8, 600, 'credited', 'Sun Nov 13 13:52:27 2016\n'),
(2, 100, 'deducted', 'Sun Nov 13 13:59:03 2016\n'),
(4, 2000, 'deducted', 'Sun Nov 13 13:59:03 2016\n');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
