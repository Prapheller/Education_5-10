-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 27, 2023 at 05:59 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aroundearth`
--

-- --------------------------------------------------------

--
-- Table structure for table `continent`
--

CREATE TABLE `continent` (
  `continent_id` int NOT NULL,
  `continent_name` varchar(40) NOT NULL,
  `continent_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `continent`
--

INSERT INTO `continent` (`continent_id`, `continent_name`, `continent_img`) VALUES
(1, 'เอเชีย', 'img/asia.jpg'),
(2, 'ยุโรป', 'img/europe.jpg'),
(3, 'อเมริกา', 'img/america.jpg'),
(4, 'ออสเตเลีย', 'img/australia.jpg'),
(5, 'แอฟริกา', 'img/africa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int NOT NULL,
  `continent_id` int NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `country_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `continent_id`, `country_name`, `country_img`) VALUES
(1, 1, 'ญี่ปุ่น', 'img/japan.jpg'),
(2, 1, 'เกาหลีใต้', 'img/south_korea.jpg'),
(3, 1, 'จีน', 'img/china.jpg'),
(4, 1, 'อินเดีย', 'img/india.jpg'),
(5, 1, 'อาหรับเอมิเรท', 'img/arab_emirates.jpg'),
(6, 1, 'จอเจีย', 'img/georgia.jpg'),
(7, 4, 'ออสเตรเลีย', 'img/austelia.jpg'),
(8, 4, 'นิวซีแลนด์', 'img/new_zealand.jpg'),
(9, 4, 'ปาปัวนิวกินี', 'img/papua_new_guinea.jpg'),
(10, 5, 'แอฟริกาใต้', 'img/south_africa.jpg'),
(11, 5, 'เอธิโอเปีย', 'img/ethiopia.jpg'),
(12, 5, 'อียิปต์', 'img/egypt.jpg'),
(13, 5, 'บูร์กินาฟาโซ', 'img/burkina_faso.jpg'),
(14, 5, 'แคเมอรูน', 'img/cameroon.jpg'),
(15, 3, 'สหรัฐอเมริกา', 'img/amarica.jpg'),
(16, 3, 'เม็กซิโก', 'img/mexico.jpg'),
(17, 3, 'แคนาดา', 'img/canada.jpg'),
(18, 3, 'บราซิล', 'img/brazil.jpg'),
(19, 3, 'ชิลี', 'img/chile.jpg'),
(20, 3, 'อาร์เจนตินา', 'img/argentina.jpg'),
(21, 2, 'อังกฤษ', 'img/england.jpg'),
(22, 2, 'ฝรั่งเศส', 'img/france.jpg'),
(23, 2, 'เยอรมนี', 'img/germany.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `place_id` int NOT NULL,
  `country_id` int NOT NULL,
  `place_name` varchar(50) NOT NULL,
  `place_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`place_id`, `country_id`, `place_name`, `place_img`) VALUES
(1, 1, 'ทุ่งดอกลาเวนเดอร์ที่ ฟาร์มโทมิตะ (Tomita Farm)', 'img1.png'),
(2, 1, 'โรงงานช็อคโกแล็ตชิโรอิ โคอิบิโตะ (Shiroi Koibito -', 'img2.png'),
(3, 1, 'วัดเซนโซจิ หรือวัดอาซากุสะ (Sensoji Temple)', 'img3.png'),
(4, 2, 'เมียงดง', 'img4.png'),
(5, 2, 'คลองซองกเยซอน', 'img5.png'),
(6, 2, 'ตลาดปลาจากัลจิ', 'img6.png'),
(7, 3, 'Blue Moon Valley', 'img7.png'),
(8, 3, 'Dagu Glacier National Park', 'img8.png'),
(9, 3, 'Daocheng Yading Nature Reserve', 'img9.png'),
(10, 4, 'ทัชมาฮาล (Taj Mahal), เมืองอัครา (Agra)', 'img10.png'),
(11, 4, 'เมืองเดลี (Delhi)', 'img11.png'),
(12, 4, '(Lotus Temple)', 'img12.png'),
(13, 5, 'ตึกเบิร์จคาลิฟา Burj Khalifa', 'img13.png'),
(14, 5, 'Dubai Mall Aquarium ', 'img14.png'),
(15, 5, 'สวนน้ำ Wild Wadi', 'img15.png'),
(16, 6, 'Telavi', 'img16.png'),
(17, 6, 'Sighnaghi', 'img17.png'),
(18, 6, 'Tusheti National Park', 'img18.png'),
(19, 7, 'ซิดนีย์ โอเปร่าเฮาส์ (SYDNEY OPERA HOUSE)', 'img19.png'),
(20, 7, 'ย่านเดอะร็อคส์ (THE ROCKS)', 'img20.png'),
(21, 7, 'สะพานฮาร์เบอร์ (HARBOUR BRIDGE)', 'img21.png'),
(22, 8, 'ทะเลสาบปูคากิ', 'img22.png'),
(23, 8, 'ทะเลสาบเทคาโป', 'img23.png'),
(24, 8, 'ถ้ำไวโตโมโกลว์วอร์ม', 'img24.png'),
(25, 9, 'Lawadi เมือง Milne Bay', 'img25.png'),
(26, 9, 'เมืองพอร์ตมอร์สบี (Port Moresby)', 'img26.png'),
(27, 9, 'เกาะบูเกนวิลล์ (Bougainville Island)', 'img27.png'),
(28, 10, 'วังบาหิอา', 'img28.png'),
(29, 10, 'วิคตอเรียแอนด์ อัลเฟรด วอเตอร์ฟร้อนท์', 'img29.png'),
(30, 10, 'เขาคิลิมันจาโร', 'img30.png'),
(31, 11, 'ลาลิเบลา', 'img31.png'),
(32, 11, 'แอ่งดานาคิล (Danakil Depression) ', 'img32.png'),
(33, 11, 'ภูเขาไฟเอร์ตาอาเล', 'img33.png'),
(34, 12, 'หุบเขากษัตริย์', 'img34.png'),
(35, 12, 'วิหารคาร์นัค', 'img35.png'),
(36, 12, 'ปิรามิดแห่งกิซ่า (The Great Pyramid of Giza)', 'img36.png'),
(37, 13, 'Karfiguela Falls', 'img37.png'),
(38, 13, 'Les Cascades de Banfora', 'img38.png'),
(39, 13, 'The Sindou Spics', 'img39.png'),
(40, 14, 'Mandara Mountains', 'img40.png'),
(41, 14, 'Mongo ma Ndemi National Park', 'img41.png'),
(42, 14, 'Sangha Trinational', 'img42.png'),
(43, 15, 'The Palouse รัฐวอชิงตันและรัฐไอดาโฮ', 'img43.png'),
(44, 15, 'บิ๊กเซอร์ (Big Sur) รัฐแคลิฟอร์เนีย', 'img44.png'),
(45, 15, 'แอนเทอโลป แคนยอน (Antelope Canyon) รัฐแอริโซนา', 'img45.png'),
(46, 16, 'ปาเลงเก (Palenque)', 'img46.png'),
(47, 16, 'กวานาฮัวโต (Guanajuato) ', 'img47.png'),
(48, 16, 'ทูลัม (Tulum) ', 'img48.png'),
(49, 17, 'น้ำตกไนแอการา (Niagara Falls) ', 'img49.png'),
(50, 17, 'Lake Louise', 'img50.png'),
(51, 17, 'อุทยานแห่งชาติแบมฟ์ (Banff National Park) ', 'img51.png'),
(52, 18, 'ซัลวาดอร์ (Salvador)', 'img52.png'),
(53, 18, 'มาเนาส์ (Manaus)', 'img53.png'),
(54, 18, 'ฟอร์ตาเลซา (Fortaleza)', 'img54.png'),
(55, 19, 'Todos Los Santos Lake', 'img55.png'),
(56, 19, 'General Carrera Lake', 'img56.png'),
(57, 19, 'โมอาย เกาะอีสเตอร์ Moai, Easter Island', 'img57.png'),
(58, 20, 'Ushuaia', 'img58.png'),
(59, 20, 'Mount Fitz Roy', 'img59.png'),
(60, 20, 'Perito Moreno Glacier', 'img60.png'),
(61, 21, 'หอคอยแห่งลอนดอน (Tower of London)', 'img61.png'),
(62, 21, 'สโตนเฮนจ์ (Stonehenge)', 'img62.png'),
(63, 21, 'วิหารเมืองยอร์ค (York Minster and Historic Yorkshi', 'img63.png'),
(64, 22, 'เมืองโคโลญ', 'img64.png'),
(65, 22, 'ปราสาทนอยชวานชไตน์', 'img65.png'),
(66, 22, 'กรุงเบอร์ลิน', 'img66.png'),
(67, 23, 'หอไอเฟล (Eiffel Tower)', 'img67.png'),
(68, 23, 'แม่น้ำแซน (Seine River)', 'img68.png'),
(69, 23, 'ประตูชัยฝรั่งเศส(Arc de Triomphe)', 'img69.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `continent`
--
ALTER TABLE `continent`
  ADD PRIMARY KEY (`continent_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`place_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `continent`
--
ALTER TABLE `continent`
  MODIFY `continent_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `place_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
