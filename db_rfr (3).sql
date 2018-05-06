-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2018 at 07:25 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rfr`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `ID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `Reply_ID` int(11) NOT NULL,
  `TID` int(11) NOT NULL COMMENT 'tenant',
  `RID` int(11) NOT NULL DEFAULT '0' COMMENT 'owner',
  `comment` text NOT NULL,
  `timestamps` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sstatus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`ID`, `PID`, `Reply_ID`, `TID`, `RID`, `comment`, `timestamps`, `sstatus`) VALUES
(1, 2, 0, 1, 0, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2018-04-01 02:02:04', 1),
(2, 1, 0, 2, 0, 'sssssssssssssssssssssssssss', '2018-04-01 02:05:59', 1),
(3, 2, 0, 2, 0, 'sssssssssssssssssss', '2018-04-01 02:19:57', 1),
(4, 1, 1, 1, 0, 'asdasdasd', '2018-04-04 10:18:03', 1),
(5, 1, 3, 1, 0, '', '2018-04-04 10:18:25', 1),
(6, 1, 1, 1, 0, 'dasdasdasd', '2018-04-04 10:50:52', 1),
(7, 2, 1, 1, 0, 'pppppppppppppppp', '2018-04-04 11:09:37', 1),
(8, 2, 3, 1, 0, 'dsasdasd', '2018-04-04 11:09:48', 1),
(9, 2, 1, 1, 0, 'asdasdasdasd', '2018-04-04 11:14:52', 1),
(10, 2, 1, 0, 1, 'saba', '2018-04-04 11:53:45', 1),
(11, 2, 1, 0, 1, 'asdasdasd', '2018-04-04 11:59:30', 1),
(12, 2, 3, 0, 1, '', '2018-04-04 12:11:06', 1),
(13, 2, 0, 0, 1, 'ako c tawing baw', '2018-04-04 12:52:02', 1),
(14, 2, 3, 0, 1, '', '2018-04-10 05:49:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `ID` int(11) NOT NULL,
  `RID` int(11) NOT NULL,
  `rmessage` text NOT NULL,
  `TID` int(11) NOT NULL,
  `tmessage` text NOT NULL,
  `datestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `tstatus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmessage`
--

INSERT INTO `tblmessage` (`ID`, `RID`, `rmessage`, `TID`, `tmessage`, `datestamp`, `status`, `tstatus`) VALUES
(1, 1, 'hello', 1, '', '2018-04-01 11:32:03', 1, 1),
(2, 1, '', 2, 'hi', '2018-04-01 11:32:06', 1, 1),
(3, 1, 'hello', 2, '', '2018-04-11 17:23:59', 1, 1),
(4, 1, '', 2, 'available pa?', '2018-04-01 11:32:06', 1, 1),
(5, 1, '', 1, 'Naa pay Bakante?', '2018-04-01 11:30:30', 1, 1),
(6, 1, 'Sir', 1, '', '2018-04-11 15:44:34', 1, 1),
(7, 1, '', 1, 'Naa Pa?', '2018-04-04 11:16:16', 1, 1),
(8, 1, 'Wala Na', 1, '', '2018-04-11 15:44:34', 1, 1),
(9, 1, 'promise', 1, '', '2018-04-01 10:24:39', 1, 1),
(10, 1, 'asdasdasd', 1, '', '2018-04-01 10:24:47', 1, 1),
(11, 1, '', 1, 'asdasdasd', '2018-04-01 11:32:03', 1, 1),
(12, 1, '', 1, 'asdasdasd', '2018-04-01 10:24:55', 1, 1),
(13, 1, '', 1, 'aaaaaaaaaaaaaaaaa', '2018-04-10 06:09:57', 1, 1),
(14, 1, 'sssssssssss', 1, '', '2018-04-10 06:09:57', 1, 1),
(15, 1, '', 1, 'sdsd', '2018-04-11 15:47:55', 0, 1),
(16, 1, '', 2, 'sir? avilable pa?', '2018-04-11 17:24:43', 1, 1),
(17, 1, 'uu boss naa pa', 2, '', '2018-04-11 17:24:54', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblratereview`
--

CREATE TABLE `tblratereview` (
  `ID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `TID` int(11) NOT NULL,
  `stars` int(11) NOT NULL,
  `descr` text NOT NULL,
  `stamps` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblratereview`
--

INSERT INTO `tblratereview` (`ID`, `PID`, `TID`, `stars`, `descr`, `stamps`) VALUES
(1, 2, 2, 5, 'ssssssssssssssssssssssssssssssssssssssssss', '2018-04-11 17:22:15'),
(2, 2, 1, 3, 'hahahahahah', '2018-04-11 17:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblrenters`
--

CREATE TABLE `tblrenters` (
  `RID` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `telenumber` varchar(20) NOT NULL,
  `cellnumber` varchar(20) NOT NULL,
  `date_reg` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrenters`
--

INSERT INTO `tblrenters` (`RID`, `fname`, `mname`, `lname`, `sname`, `address`, `telenumber`, `cellnumber`, `date_reg`, `status`) VALUES
(1, 'Ruel', 'Osares', 'Paquera', '', 'Matina Davao City', '09107443354', '09107443354', '2018-03-31 19:25:10', 1),
(2, 'Emarjun', 'Biatin', 'Nacario', '', 'Tagum City', '09107443354', '09107443354', '2018-04-11 22:46:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblrenter_property`
--

CREATE TABLE `tblrenter_property` (
  `ID` int(11) NOT NULL,
  `RPID` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `water` int(11) NOT NULL,
  `electricity` int(11) NOT NULL,
  `pay_advance` int(11) NOT NULL,
  `pay_deposit` int(11) NOT NULL,
  `count_available` varchar(10) NOT NULL,
  `discription` varchar(255) NOT NULL,
  `lat` varchar(200) DEFAULT '0',
  `lng` varchar(200) DEFAULT '0',
  `status` int(11) NOT NULL,
  `astatus` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrenter_property`
--

INSERT INTO `tblrenter_property` (`ID`, `RPID`, `category`, `address`, `size`, `price`, `water`, `electricity`, `pay_advance`, `pay_deposit`, `count_available`, `discription`, `lat`, `lng`, `status`, `astatus`) VALUES
(1, 1, 'Room', 'Matina', '100 Feet', '1100', 1, 0, 0, 0, '2', 'Barato', '7.0579338624643855', '125.5693926681563', 1, 0),
(2, 1, 'Room', 'Magallanes', '1010', '1500', 0, 0, 0, 0, '3', 'Downtown', '7.065511573378774', '125.60354919358986', 1, 0),
(3, 1, 'Room', 'Toril Davao City', '20 Meter', '1500', 0, 0, 0, 0, '5', 'GAmay lang xa', '0', '0', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblrenter_property_images`
--

CREATE TABLE `tblrenter_property_images` (
  `ID` int(11) NOT NULL,
  `RPID` int(11) NOT NULL,
  `images_name` varchar(100) NOT NULL,
  `images` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrenter_property_images`
--

INSERT INTO `tblrenter_property_images` (`ID`, `RPID`, `images_name`, `images`) VALUES
(1, 1, 'images (1).jpg', ''),
(2, 1, 'images (2).jpg', ''),
(3, 2, 'images (2).jpg', ''),
(4, 2, 'images (3).jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblreservation`
--

CREATE TABLE `tblreservation` (
  `ID` int(11) NOT NULL,
  `TID` int(11) NOT NULL,
  `RID` int(11) NOT NULL,
  `RPID` int(11) NOT NULL,
  `datereserve` varchar(100) NOT NULL,
  `message` varchar(225) NOT NULL,
  `status` int(11) DEFAULT '0',
  `ResStatus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreservation`
--

INSERT INTO `tblreservation` (`ID`, `TID`, `RID`, `RPID`, `datereserve`, `message`, `status`, `ResStatus`) VALUES
(1, 1, 1, 2, '2018-04-01 10:02 am', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1, 0),
(2, 2, 1, 1, '2018-04-01 10:05 am', 'sssssssssssssssssssssssssss', 0, 0),
(3, 2, 1, 2, '2018-04-01 10:19 am', 'sssssssssssssssssss', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbltenant`
--

CREATE TABLE `tbltenant` (
  `TID` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `age` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `cellnumber` varchar(20) NOT NULL,
  `marital_stat` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `date_reg` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltenant`
--

INSERT INTO `tbltenant` (`TID`, `fname`, `mname`, `lname`, `sname`, `age`, `gender`, `paddress`, `cellnumber`, `marital_stat`, `status`, `date_reg`) VALUES
(1, 'Emily', 'Biatin', 'Nacario', '', '21', 'Male', 'Tagum City', '09107443354', 'Single', 'Student', '2018-03-31 19:24:10'),
(2, 'Jhon', 'Mendes', 'Ortes', '', '55', 'Male', 'TAgum City', '09107443354', 'Single', 'Working', '2018-03-31 22:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `ID` int(11) NOT NULL,
  `UID` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `upass` varchar(100) NOT NULL,
  `gmailsign` tinyint(1) NOT NULL DEFAULT '0',
  `gmailtoken` varchar(255) NOT NULL,
  `fbsign` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`ID`, `UID`, `fullname`, `utype`, `uname`, `upass`, `gmailsign`, `gmailtoken`, `fbsign`, `status`) VALUES
(1, '0', 'SysAdmin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, '', 0, 1),
(2, '1', 'EMILY BIATIN NACARIO', 'tenant', 'emememem', 'e484df113bd74f7486d9d53b72844045', 0, '', 0, 0),
(3, '1', 'RUEL OSARES PAQUERA', 'renter', 'tawingwing', '184165480057cf2c8bfee400b50e69f7', 0, '', 0, 0),
(4, '2', 'JHON MENDES ORTES', 'tenant', 'jjjjjjjj', '4bb2c9d9a57a0d2a53e7c4d56c952331', 0, '', 0, 0),
(5, '2', 'EMARJUN BIATIN NACARIO', 'renter', 'emarjunemarjun', 'b37da9b3003247b681753c62ed611b62', 0, '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblratereview`
--
ALTER TABLE `tblratereview`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblrenters`
--
ALTER TABLE `tblrenters`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `tblrenter_property`
--
ALTER TABLE `tblrenter_property`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblrenter_property_images`
--
ALTER TABLE `tblrenter_property_images`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblreservation`
--
ALTER TABLE `tblreservation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltenant`
--
ALTER TABLE `tbltenant`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tblratereview`
--
ALTER TABLE `tblratereview`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblrenters`
--
ALTER TABLE `tblrenters`
  MODIFY `RID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblrenter_property`
--
ALTER TABLE `tblrenter_property`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblrenter_property_images`
--
ALTER TABLE `tblrenter_property_images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblreservation`
--
ALTER TABLE `tblreservation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbltenant`
--
ALTER TABLE `tbltenant`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
