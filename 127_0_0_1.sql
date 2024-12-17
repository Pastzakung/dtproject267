-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2024 at 09:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbsdb`
--
CREATE DATABASE IF NOT EXISTS `bbsdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bbsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `AdminuserName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UserType` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UserType`) VALUES
(2, 'Admin', 'admin', 8956565656, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2024-08-31 18:30:00', 1),
(3, 'เดชา ขำแก้ว', 'user1', 1234567890, 'decha.k@gmail.com', '24c9e15e52afc47c225b757e7bee1f9d', '2024-09-10 18:30:00', 0),
(7, 'จิตสุภา ปราชเปรื่อง', 'user2', 7894561236, 'meenu@gmail.com', '7e58d63b60197ceb55a1c487989a3720', '2024-09-25 05:57:24', 0),
(9, 'past', 'past', 1111111111, 'past@gmail.com', 'b59c67bf196a4758191e42f76670ceba', '2024-12-14 02:40:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblboat`
--

CREATE TABLE `tblboat` (
  `ID` int(5) NOT NULL,
  `BoatName` varchar(250) DEFAULT NULL,
  `Image` varchar(250) DEFAULT NULL,
  `Size` varchar(100) DEFAULT NULL,
  `Capacity` varchar(100) DEFAULT NULL,
  `Source` varchar(250) DEFAULT NULL,
  `Destination` varchar(250) DEFAULT NULL,
  `Route` varchar(250) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `AddedBy` int(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblboat`
--

INSERT INTO `tblboat` (`ID`, `BoatName`, `Image`, `Size`, `Capacity`, `Source`, `Destination`, `Route`, `Price`, `Description`, `AddedBy`, `CreationDate`) VALUES
(1, 'ล่องเรือสำราญ Costa Serena เกาะฟูก๊วก ', 'a8729154268d0ca74bda4afa4937a7121734162192.jpg', 'Large', '1000', 'เกาะสมุย', 'แหลมฉบัง', 'เกาะสวรรค์แห่งเวียดนาม', 11000, 'สมุย 4 วัน 3 คืน', 2, '2024-09-25 06:31:44'),
(2, 'Flash Sale ล่องเรือสำราญ', '660abd2c2a99e6da52e3dd00b6ae07b11727416540.jpg', 'Medium', '1-4', 'สิงคโปร์', 'กัวลาลัมเปอร์', 'สิงคโปร์', 3000, ' 2 วัน 1 คืน สิงคโปร์', 2, '2024-09-25 06:34:28'),
(3, 'เซเรเนด ออฟ เดอะ ซีส์', '983e18b7880ce3f7f39bed9aab911b341734157698.jpg', 'Large', '1000', 'ไมอามี', 'ล่องเรือรอบโลก', 'ล่องเรือรอบโลก', 60000, 'ไปรอบโลก', 2, '2024-09-25 06:35:33'),
(4, 'ล่องเรือเจ้าพระยา', '7ac5bd980dbbc68164693cad0e43fbfd1727416688.jpg', 'Small', '1-15', 'เจ้าพระยา', 'เจ้าพระยา', 'อ', 700, 'Test', 2, '2024-09-25 06:36:33'),
(5, 'Bazare Motor Boat', '983e18b7880ce3f7f39bed9aab911b341727416755.jpg', 'Large', '1-20', NULL, NULL, NULL, 120, 'Bazare Motor Boat is run through motor having capacity 1-20 persons', 2, '2024-09-26 04:55:19'),
(6, 'Motor Boat', '492b8f062a509fe7bea34b18fdf61f951734158603.jpg', 'Small', '1-6', 'Assi Ghat', 'Ramanagar', 'gghgth,hgfgh', 200, '<br />\r\n<b>Warning</b>:  Undefined array key \"Description\" in <b>C:xampphtdocs2024bsadminedit-boat.php</b> on line <b>156</b><br />\r\n', 2, '2024-09-26 05:34:22'),
(7, 'M10', '7ac5bd980dbbc68164693cad0e43fbfd1727330194.jpg', 'Large', '1-10', 'vanupuram', 'Vasant Vihar', 'gghgth,hgfgh', 150, '<br />\r\n<b>Warning</b>:  Undefined array key \"Description\" in <b>C:xampphtdocs2024bsadminedit-boat.php</b> on line <b>156</b><br />\r\n', 2, '2024-09-26 05:35:12'),
(8, 'M4A2LEE', 'd41d8cd98f00b204e9800998ecf8427e1727332206', 'Small', '1-4', 'abc', 'xyz', 'abc, dcf, ghj, klp', 100, '<br />\r\n<b>Warning</b>:  Undefined array key \"Description\" in <b>C:xampphtdocs2024bsadminedit-boat.php</b> on line <b>156</b><br />\r\n', 2, '2024-09-26 06:30:06'),
(9, 'T92', 'd41d8cd98f00b204e9800998ecf8427e1727415693', 'Large', '1-20', 'Assi Ghat', 'Dashashwamedh Ghat', 'Janki Ghat, Shivala Ghat, Harischandra Ghat, Manikarnika Ghat', 200, '<br />\r\n<b>Warning</b>:  Undefined array key \"Description\" in <b>C:xampphtdocs2024bsadminedit-boat.php</b> on line <b>156</b><br />\r\n', 2, '2024-09-27 05:41:33'),
(10, 'M109', 'd41d8cd98f00b204e9800998ecf8427e1727759143', 'Medium', '1-4', 'Hari Nagar', 'Vaishali', 'gghgth,hgfgh,', 1000, 'hand boat hand boat hand boat hand boat hand boat hand boat', 2, '2024-10-01 05:05:43'),
(11, 'STVR', 'd41d8cd98f00b204e9800998ecf8427e1734144677', 'Large', '100', 'ไทย', 'อังกฤษ', 'พระราม 8', 10000, '240 km', 2, '2024-12-14 02:51:17'),
(12, 'พี่Pมีอยู่จริง', 'd41d8cd98f00b204e9800998ecf8427e1734144749', 'Large', '100', 'ไทย', 'อังกฤษ', 'พระราม 8', 10000, '120 km', 9, '2024-12-14 02:52:29'),
(13, 'พี่Pมีอยู่จริง222', 'd41d8cd98f00b204e9800998ecf8427e1734159841', 'Medium', '1-3', '1414', '141', '141', 1111, '111', 2, '2024-12-14 07:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblbookings`
--

CREATE TABLE `tblbookings` (
  `ID` int(5) NOT NULL,
  `BoatID` int(10) DEFAULT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `PhoneNumber` bigint(12) DEFAULT NULL,
  `BookingDateFrom` varchar(250) DEFAULT NULL,
  `BookingDateTo` varchar(250) DEFAULT NULL,
  `BookingTime` varchar(100) DEFAULT NULL,
  `NumnerofPeople` int(5) DEFAULT NULL,
  `Notes` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` varchar(250) DEFAULT NULL,
  `BookingStatus` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbookings`
--

INSERT INTO `tblbookings` (`ID`, `BoatID`, `BookingNumber`, `FullName`, `EmailId`, `PhoneNumber`, `BookingDateFrom`, `BookingDateTo`, `BookingTime`, `NumnerofPeople`, `Notes`, `postingDate`, `AdminRemark`, `BookingStatus`, `UpdationDate`) VALUES
(1, 4, 2147483647, 'Anuj kumar', 'anujk@gmail.com', 1233211230, '2024-10-15', '2024-10-17', '10:00', 5, 'NA', '2024-10-08 17:14:58', 'NA', 'Accepted', '2024-10-10 17:46:17'),
(2, 2, 2147483647, 'Garima', 'garima123@gmail.com', 1231231230, '2024-11-01', '2024-11-05', '11:30', 4, 'NA', '2024-10-11 14:57:50', NULL, NULL, '2024-10-11 14:57:50'),
(4, 6, 5811679355, 'John ', 'john12@gmail.com', 4566541230, '2024-11-08', '2024-11-09', '10:30', 4, 'NA', '2024-10-14 15:11:02', 'Booking Appoved', 'Accepted', '2024-10-14 15:11:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblboat`
--
ALTER TABLE `tblboat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbookings`
--
ALTER TABLE `tblbookings`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `bid` (`BoatID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblboat`
--
ALTER TABLE `tblboat`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblbookings`
--
ALTER TABLE `tblbookings`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblbookings`
--
ALTER TABLE `tblbookings`
  ADD CONSTRAINT `bid` FOREIGN KEY (`BoatID`) REFERENCES `tblboat` (`ID`);
--
-- Database: `dbproject267`
--
CREATE DATABASE IF NOT EXISTS `dbproject267` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbproject267`;

-- --------------------------------------------------------

--
-- Table structure for table `tbbook`
--

CREATE TABLE `tbbook` (
  `bookid` int(11) NOT NULL,
  `bookname` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `booktypeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbbook`
--

INSERT INTO `tbbook` (`bookid`, `bookname`, `author`, `price`, `stock`, `booktypeid`) VALUES
(1, 'TGAT2 & TGAT3 การคิดอย่างมีเหตุผล', 'ผู้เขียน: ณภัทร รอดเหตุภัย (อ.ขลุ่ย)', 266, 20, 1),
(2, 'แนวข้อสอบ TGAT ภาษาอังกฤษ', 'ผู้เขียน: รศ.ดร.ศุภวัฒน์ พุกเจริญ', 225, 50, 1),
(3, 'จิตวิทยาสายดาร์ก\r\n', 'ผู้เขียน: Dr.Hiro', 213, 50, 2),
(4, 'โฟร์ทวิง FOURTH WING (พิมพ์ครั้งที่ 3)', 'ผู้เขียน: รีเบกกา ยาร์รอส (รีเบ็คก้า ยาร์รอส, Rebecca Yarros)', 506, 15, 2),
(5, 'อ่านชะตาวันสิ้นโลก เล่ม 2 (Mg)', 'ผู้เขียน: sing N song', 446, 16, 3),
(6, 'GACHIAKUTA เล่ม 3 (ฉบับปรับปรุง)(Mg)', 'ผู้เขียน: เค อุรานะ', 158, 30, 3),
(7, 'ประกาศให้โลกรู้ว่าเจ้าสาวของผมเป็นอัศวินหญิงจากต่างโลก ', 'ผู้เขียน: โนริ โกโร่', 135, 40, 3),
(8, 'กลับบ้านไปเถอะครับ! คุณอาคุตสึ \r\n', 'ผู้เขียน: ไทจิ นากาโอกะ', 175, 60, 4),
(9, 'GACHIAKUTA เล่ม 3 (ฉบับปรับปรุง)(Mg)', 'ผู้เขียน: เค อุรานะ', 158, 30, 4),
(18, 'วา', 'วา', 500, 20, 9),
(19, '', '', 0, 0, 0),
(20, '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbbooktype`
--

CREATE TABLE `tbbooktype` (
  `booktypeid` int(11) NOT NULL,
  `booktypename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbbooktype`
--

INSERT INTO `tbbooktype` (`booktypeid`, `booktypename`) VALUES
(1, 'นิยาย'),
(2, 'การ์ตูน'),
(3, 'ความรัก'),
(4, 'เล่าเรื่อง'),
(5, 'เศร้า'),
(7, 'สารคดี'),
(8, 'นาวา'),
(9, 'นาวา');

-- --------------------------------------------------------

--
-- Table structure for table `tbroom`
--

CREATE TABLE `tbroom` (
  `roomid` int(11) NOT NULL,
  `roomname` varchar(50) NOT NULL,
  `detail` text NOT NULL,
  `roomtypeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbroom`
--

INSERT INTO `tbroom` (`roomid`, `roomname`, `detail`, `roomtypeid`) VALUES
(2, '902', 'มีโต๊ะ เตียง ที่นอน ตู้เสื้อผ้า และติดทะเล', 3),
(3, '905', 'ติดน้ำตก วิวดี', 3),
(4, '906', 'วิวทะเลสวย พักได้ 2-3 คน', 2),
(5, '909', 'วิวทะเลสวย พักได้ 2-3 คน', 2),
(6, '910', 'วิวทะเลสวย พักได้ 2-3 คน', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbroomtype`
--

CREATE TABLE `tbroomtype` (
  `roomtypeid` int(11) NOT NULL,
  `roomtypename` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbroomtype`
--

INSERT INTO `tbroomtype` (`roomtypeid`, `roomtypename`, `price`) VALUES
(1, 'สแตนดาร์ด', 1200),
(2, 'ซูฟีเรีย', 2200),
(3, 'ดีลักซ์', 4000);

-- --------------------------------------------------------

--
-- Table structure for table `tbstudent`
--

CREATE TABLE `tbstudent` (
  `stdid` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbstudent`
--

INSERT INTO `tbstudent` (`stdid`, `firstname`, `lastname`, `email`, `address`) VALUES
(1, 'พี่P', 'zeed', '', '4หมู่.25  อ.เมือง จ.ลพบุรี 13000 '),
(2, 'Past', 'za', '', '5หมู่.25  อ.เมือง จ.ลพบุรี 13000'),
(3, 'kjhd', 'dddd', '', '8หมู่.25  อ.เมือง จ.ลพบุรี 13000'),
(4, 'B', 'G', '', '8หมู่.25  อ.เมือง จ.ลพบุรี 13000'),
(5, 'OPz', 'TV', '', '8หมู่.25  อ.เมือง จ.ลพบุรี 13000');

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`id`, `firstname`, `lastname`, `username`, `password`) VALUES
(5, 'Past', 'za', 'Pastza', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'Past', 'kung', 'Admin9', '01b16fd41fbf0c3fda84a1e22f0b8b20');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(10) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `fullName`, `emailAddress`, `city`, `country`, `created_at`) VALUES
(8, 'มอส', '46666sdasd@gmail.com', 'อยุธยา', 'Thai', '2024-12-06 17:04:48'),
(9, 'Past kung', 'Pastza@gmail.com', 'ลพบุรี', 'Thai', '2024-12-13 16:44:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbbook`
--
ALTER TABLE `tbbook`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `tbbooktype`
--
ALTER TABLE `tbbooktype`
  ADD PRIMARY KEY (`booktypeid`);

--
-- Indexes for table `tbroom`
--
ALTER TABLE `tbroom`
  ADD PRIMARY KEY (`roomid`);

--
-- Indexes for table `tbroomtype`
--
ALTER TABLE `tbroomtype`
  ADD PRIMARY KEY (`roomtypeid`);

--
-- Indexes for table `tbstudent`
--
ALTER TABLE `tbstudent`
  ADD PRIMARY KEY (`stdid`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbbook`
--
ALTER TABLE `tbbook`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbbooktype`
--
ALTER TABLE `tbbooktype`
  MODIFY `booktypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbroom`
--
ALTER TABLE `tbroom`
  MODIFY `roomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbroomtype`
--
ALTER TABLE `tbroomtype`
  MODIFY `roomtypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbstudent`
--
ALTER TABLE `tbstudent`
  MODIFY `stdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
