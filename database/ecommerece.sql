-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 12:58 AM
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
-- Database: `ecommerece`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Madhav Equipments'),
(2, 'Rupa Electric'),
(3, 'Crompton Argitech'),
(4, 'Z+ Bore Soln'),
(5, 'JJ Heavy'),
(6, 'Jet Press');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(6, 26, '::1', 4, 1),
(9, 10, '::1', 7, 1),
(10, 11, '::1', 7, 1),
(11, 45, '::1', 7, 1),
(44, 5, '::1', 3, 0),
(48, 72, '::1', 3, 0),
(49, 60, '::1', 8, 1),
(50, 61, '::1', 8, 1),
(51, 1, '::1', 8, 1),
(52, 5, '::1', 9, 1),
(54, 3, '::1', 14, 1),
(55, 5, '::1', 14, 1),
(56, 1, '::1', 9, 1),
(71, 61, '127.0.0.1', -1, 1),
(149, 1, '::1', 28, 1),
(150, 1, '::1', 27, 1),
(151, 1, '::1', -1, 1),
(152, 13, '::1', -1, 1),
(153, 23, '::1', -1, 1),
(154, 25, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'DC-Motor'),
(2, 'Submersible Pumps'),
(3, 'Control Panel'),
(4, 'Other Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com'),
(4, 'puneethreddy951@gmail.com'),
(5, 'puneethreddy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(2, 14, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 12, 'Puneeth', 'puneethreddy951@gmail.com', 'Bangalore, Kumbalagodu, Karnataka', 'Bangalore', 'Karnataka', 560074, 'pokjhgfcxc', '4321 2345 6788 7654', '12/90', 3, 77000, 1234),
(2, 26, 'Ajay', 'ajay@gmail.com', 'Kalyan', 'Thane', 'maha', 200012, 'Ajau', '1281831839139131', '10/24', 1, 5000, 555);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(73, 1, 1, 1, 5000),
(74, 1, 4, 2, 64000),
(75, 1, 8, 1, 40000),
(91, 2, 1, 1, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'CRI Steel 2 HP 10 L 102 ft', 5399, 'CRI Pumps Stainless Steel 2 HP 10 L 102 ft Borewell Submersible Pumpset (Silver)\nAbout this item\nMaterial: Stainless Steel; Color: Silver\nDimensions: 35 cm x 28 cm x 20\nCapacity per Hour: 10 Ltrs; Horse Power: 2 HP\nWeight: 5 kg ; Head: 102 feet\nVoltage: Single phase, 200-240 V, CSCR, Three phase 380-450 V', 'motor1.jpg', 'samsung mobile electronics'),
(2, 1, 3, 'BAC-S-200 is a 2HP', 6449, 'BAC-S-200 is a 2 horse power single cylinder compressor with high load carrying capacity. These compressors are continuous run worthy and provide higher discharge of water compared to 1 HP and 1.5 HP versions. These compressors are ideal for household purposes and are capable to for low voltage running. They have proven working conditions upto 600 feet at optimal working conditions.', 'motor4.png', 'mobile iphone apple'),
(3, 2, 3, 'LUBI 3 Pumps', 21499, 'LUBI 3 to 20 Stages 5 Inch Water Filled Borewell Submersible Pumpsets (LSA/LSK Series) For Agriculture\nBorewell-Motor Phase-Three Phase\nProduct Brochure\nNumber Of Stages - 3 to 20 Stages\nUsage/Application-Agriculture\nModel Name/Number-LSA/LSK', 'pump2.jpg', 'apple ipad tablet'),
(4, 3, 3, ' Madhav Control Panel', 1499, '1 HP Single Phase Submersible Pump Control Panel/Starter (1 HP)', 'panel2.jpg', 'iphone apple mobile'),
(5, 3, 3, 'Load Panel', 2599, 'FeaturesAdditional information\nDigital Display for current and Voltage\nMCB for Overload & short circuit protection\nON/OFF indicator along with ON/OFF switch', 'panel1.png', 'ipad tablet samsung'),
(6, 1, 5, 'JJ Motor', 6299, 'We are one of the well-distinguished companies in this business and are involved in providing Borewell Motor to our valuable clients. This Borewell Motor is manufactured in accordance with set market quality standards and norms. In addition, we also test these products for quality', 'motor2.jpg', 'samsung laptop '),
(7, 1, 5, 'JJ Heavy Duty+', 7500, 'Usage/Application	Sewage, Industrial, Agriculture, Domestic\nPower Source	Hydraulic\nDischarge Outlet Size	1 to 2 in\nMaximum Discharge Flow	100 - 500 LPM\nType	Borewell\nType of Submersible Pumps(V3, V4, V5, V6, V8)\nMaximum Head-15 to 50 m\nMotor Phase-Three Phase', 'motor3.jpg', 'Laptop Hp Pavillion'),
(8, 1, 4, 'BAC-S-300', 4899, 'Pump Dealers, Borewell Contractors, Water Pump Repair & Services, Water Pump Dealers, Submersible Water Pump Dealers, Borewell Contractors For Drinking Water, Openwell Submersible Pump Dealers, Borewell Pump Dealers.', 'motor5.png', 'sony mobile'),
(9, 1, 5, 'KWV+', 5500, 'MODEL POWER RANGE (KW) VERSION SPEED TOTAL HEAD RANGE NOMINAL OUTLET SIZE Self Priming 0.37 kw-0.75kw Single Phase 200-230V 50Hz-2800Rpm 5-42m 1\"\nWe are one of the well-distinguished companies in the market that is into presenting a quality approved range of Regenerative Self Priming Pump.', 'motor6.jpg', 'iphone apple mobile'),
(10, 1, 5, 'SW Jet', 4950, 'Shallow Well Jet Pumps can pump water from 0\' to 25\' deep. Convertible Well Jet Pumps pump water from 0\' to 90\' deep. A Convertible Well Jet Pump can operate between 0\' to 25\' with a shallow jet well nozzle or between 25\' to 90\' deep with an ejector assembly.', 'motor7.jpg', 'red dress '),
(11, 1, 5, 'CP 1Hp', 4500, '1 hp borewell air compressor pumps have been manufactured to draw water from the depth of 100-400 feet. Discharge capacity of water varies from depth of bore. Specially manufacturers to run effectively in the field of agriculture and domestic purpose. Our monoblock borewell air compressor pumps discharges water effectively at low power consumption.', 'motor8.png', 'blue dress cloths'),
(12, 1, 3, 'Centrifugal Monoset', 8300, 'Centrifugal Monoset Pumps\nFeaturesAdditional information\nMonoset Construction with High Quality Mechanical Seal\nHigh Grade Electrical Stamping CRNGO-M47 for higher efficiency\nWorks in wide voltage band effectively', 'motor9.png', 'girl dress cloths casual'),
(13, 2, 6, 'KirloskarSP', 15900, 'Discharge Outlet Size	51 to 100 mm\nMaximum Discharge Flow	100 - 500 LPM\nBrand	Kirloskar\nApplication	Agriculture\nPhase	Single', 'pump1.jpg', 'girl dress'),
(14, 2, 4, 'V-4 Water filled', 28000, 'FeaturesAdditional information\nSpecially designed thrust bearing ensures highest reliability\nHigh Grade Electrical Stamping CRNGO-M47 for higher efficiency\nWide voltage operation from 250 -440V', 'pump3.png', 'ladies cloths girl'),
(15, 2, 4, 'V-4 Stainless Steel Pumps', 23500, 'FeaturesAdditional information\nSpecially designed thrust bearing ensures highest reliability\nHigh Grade Electrical Stamping CRNGO-M47 for higher efficiency\nWide voltage operation from 250 -440V', 'pump4.png', 'ladies wears dress girl'),
(16, 2, 6, 'V-6 Water Filled', 38000, 'FeaturesAdditional information\nSpecially designed thrust bearing ensures highest reliability\nHigh Grade Electrical Stamping CRNGO-M47 for higher efficiency\nIn built Check Valve prevents pumps parts from damage due to sudden back pressure', 'pump5.png', 'black sweter cloth winter'),
(17, 2, 4, 'ACM Agricultural Solar Pump', 32800, 'FeaturesAdditional information\nPure SS304 Stainless Steel construction\nHighly reliable & long operating life\nEasy Installation in remote places', 'pump6.png', 'gents wear cloths'),
(18, 4, 2, 'UJ Pipes', 450, 'A pipe is a tubular section or hollow cylinder, usually but not necessarily of circular cross-section, used mainly to convey substances which can flow ', 'pipe1.jpg', ''),
(19, 4, 2, 'Poly Strength', 800, 'A pipe is a tubular section or hollow cylinder, usually but not necessarily of circular cross-section, used mainly to convey substances which can flow ', 'pipe2.png', ''),
(20, 4, 2, '100MM Water pipes', 1200, 'A pipe is a tubular section or hollow cylinder, usually but not necessarily of circular cross-section, used mainly to convey substances which can flow ', 'pipe5.jpg', ''),
(21, 4, 2, 'SLP Boring Pipes', 600, 'A pipe is a tubular section or hollow cylinder, usually but not necessarily of circular cross-section, used mainly to convey substances which can flow ', 'pipe4.png', ''),
(22, 3, 1, 'Case CP', 1800, 'Iron Control Panel For Open Borewell Submersible Pumps, Packaging Type: Box', 'caseCP.jpg', ''),
(23, 3, 1, 'Plastic Panel', 990, 'Backed by a latest infrastructural setup, we are providing the best quality approved an array of Automatic Control Panel For Borewell Submersible Pump in the market.', 'cp3.jpg', ''),
(25, 4, 1, 'Submersible Cables', 750, 'We are a well-known organization, involved in providing a finely developed Submersible Cable, which is highly demanded in the market.', 'cable1.jpg', ''),
(26, 4, 1, 'KEI Submersible Cables', 900, 'KEI’s especially designed winding wires, outfitted with a high-grade insulation impermeable to liquids, offer highest quality for submersible motors and guarantee trouble-free operation and long motor life. These Wires serve maximum range of submersible pump manufactures and thousands of rewinders across the country due to KEI’s proven reliability in quality products.', 'cable2.jpg', ''),
(82, 4, 2, 'Pipe connector Set', 350, 'A pipe is a tubular section or hollow cylinder, usually but not necessarily of circular cross-section, used mainly to convey substances which can flow ', 'connectors1.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'puneeth', 'Reddy', 'puneethreddy951@gmail.com', 'puneeth', '9448121558', '123456789', 'sdcjns,djc'),
(15, 'hemu', 'ajhgdg', 'puneethreddy951@gmail.com', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(26, 'ajay', 'raman', 'ajay@gmail.com', 'ajay@1234', '8282822882', 'Kalyan', 'Thane'),
(27, 'Rajeev', 'v', 'rajeev@gmail.com', '12345678', '22222', 'Thane', 'sdadasdad'),
(28, 'Aman', 'S', 'aman@gmail.com', 'asdnas1212@@12', '9388267682', 'adaksdk kkask dkaskksdka k', 'Pune');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'puneeth', 'Reddy', 'puneethreddy951@gmail.com', '123456789', '9448121558', '123456789', 'sdcjns,djc'),
(14, 'hemanthu', 'reddy', 'hemanthreddy951@gmail.com', '123456788', '6526436723', 's,dc wfjvnvn', 'b efhfhvvbr'),
(15, 'hemu', 'ajhgdg', 'keeru@gmail.com', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(20, 'pramod', 'vh', 'pramod@gmail.com', '124335353', '9767645653', 'ksbdfcdf', 'sjrgrevgsib'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(26, 'ajay', 'raman', 'ajay@gmail.com', 'ajay@1234', '8282822882', 'Kalyan', 'Thane'),
(27, 'Rajeev', 'v', 'rajeev@gmail.com', '12345678', '22222', 'Thane', 'sdadasdad'),
(28, 'Aman', 'S', 'aman@gmail.com', 'asdnas1212@@12', '9388267682', 'adaksdk kkask dkaskksdka k', 'Pune');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
