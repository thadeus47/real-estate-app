-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 01:08 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eproperty`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
('BcjKNX58e4x7bIqIvxG7', 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
('jcoS9fniXkmpswSU6bmI', 'wayne', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e'),
('rhgPXtIsha65Y6AgikaD', 'jeff', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `created_at`) VALUES
('cus_NBZli8ZFrajGr6', 'michael ', 'cole', 'mcole@gmail.com', '2023-01-17 13:41:41'),
('cus_NBZmGWNh6KBymq', 'paul', 'wall', 'pall.wall@gmail.com', '2023-01-17 13:42:40'),
('cus_NBZm3SDIVsvAzU', 'paul', 'wall', 'pall.wall@gmail.com', '2023-01-17 13:42:40');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `number`, `message`) VALUES
('U82LWBZ100fNXnAHkQF7', 'Michael Cole', 'mcole@gmail.com', '0729495859', 'This is a message');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `property_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `offer` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `furnished` varchar(50) NOT NULL,
  `deposite` varchar(10) NOT NULL,
  `bedroom` varchar(10) NOT NULL,
  `bathroom` varchar(10) NOT NULL,
  `balcony` varchar(10) NOT NULL,
  `lift` varchar(3) NOT NULL DEFAULT 'no',
  `security_guard` varchar(3) NOT NULL DEFAULT 'no',
  `play_ground` varchar(3) NOT NULL DEFAULT 'no',
  `garden` varchar(3) NOT NULL DEFAULT 'no',
  `water_supply` varchar(3) NOT NULL DEFAULT 'no',
  `power_backup` varchar(3) NOT NULL DEFAULT 'no',
  `parking_area` varchar(3) NOT NULL DEFAULT 'no',
  `gym` varchar(3) NOT NULL DEFAULT 'no',
  `shopping_mall` varchar(3) NOT NULL DEFAULT 'no',
  `hospital` varchar(3) NOT NULL DEFAULT 'no',
  `school` varchar(3) NOT NULL DEFAULT 'no',
  `market_area` varchar(3) NOT NULL DEFAULT 'no',
  `image_01` varchar(50) NOT NULL,
  `image_02` varchar(50) NOT NULL,
  `image_03` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `creation_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `modification_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `user_id`, `property_name`, `address`, `price`, `type`, `offer`, `status`, `furnished`, `deposite`, `bedroom`, `bathroom`, `balcony`, `lift`, `security_guard`, `play_ground`, `garden`, `water_supply`, `power_backup`, `parking_area`, `gym`, `shopping_mall`, `hospital`, `school`, `market_area`, `image_01`, `image_02`, `image_03`, `description`, `creation_time`, `modification_time`) VALUES
('J2jlA5KLjlzPfkjcsTpl', 'hCxVGhs1wanPpoatNhVP', 'house for sale in karen', 'karen, karen blixen ,kenya', '20000000', 'house', 'sale', 'ready to move', 'furnished', '850000', '4', '4', '4', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'CU096uVpX5jB7Lwip9vn.jpg', '99Xzs3ziOBJsTMZ4cUWb.jpg', '0d3XGz9ARzIgnT82mVp2.jpg', 'This property will have you feeling as if you were in the mountains! Your monthly rent already covers power, water, sewer and trash so all you need to do is move in! Washer and dryer are already in house.', '2022-12-08 00:00:00', NULL),
('58jfdhkubAj7RLQG2ek9', 'hCxVGhs1wanPpoatNhVP', 'Kileleshwa', 'kileshwa , nairobi', '6000000', 'house', 'sale', 'ready to move', 'furnished', '450000', '3', '3', '3', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', '8UomVRRQ2NVnijZiMgOD.jpg', 'fpQAIinV3npCXnqOOkBL.jpg', 'XlVijyVL12eZnLncqSiN.jpg', 'This property will have you feeling as if you were in the mountains! Your monthly rent already covers power, water, sewer and trash so all you need to do is move in! Washer and dryer are already in house', '2022-12-09 00:00:00', NULL),
('YJdKhKylLSULbW4oe9TI', 'hCxVGhs1wanPpoatNhVP', 'Kileleshwa', 'kileshwa , nairobi', '6000000', 'house', 'sale', 'ready to move', 'furnished', '450000', '3', '3', '3', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'rirJz63SwvMGKStC8Q0P.jpg', 'pgyotleRBVX4SEjQBZud.jpg', 'wRmKHuL3mxhsYQqi9ILe.jpg', 'This property will have you feeling as if you were in the mountains! Your monthly rent already covers power, water, sewer and trash so all you need to do is move in! Washer and dryer are already in house', '2022-12-09 00:00:00', NULL),
('6krCRvf2IuXPIAw57VsF', 'hCxVGhs1wanPpoatNhVP', 'house for sale in langÃ¡ta', 'lang&#39;ata&#39;, nairobi', '15000000', 'house', 'sale', 'ready to move', 'unfurnished', '1500000', '4', '3', '1', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'EuGVsQ5q4ZePEPSOi0Oo.jpg', 'FHTTEkr1qfCGCo485qXA.jpg', '', 'This property will have you feeling as if you were in the mountains! Your monthly rent already covers power, water, sewer and trash so all you need to do is move in! Washer and dryer are already in house', '2022-12-09 00:00:00', NULL),
('7yv2sclTLXJZwXMW7uTQ', 'hCxVGhs1wanPpoatNhVP', 'house for sale in kilimani', 'lang&#39;ata&#39;, nairobi', '15000000', 'house', 'sale', 'ready to move', 'unfurnished', '1500000', '4', '3', '1', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'UDvGDVR8S9imMhYF5hK0.jpg', '9AbG8uCfFvUDeoSTBHBV.jpg', '', 'This property will have you feeling as if you were in the mountains! Your monthly rent already covers power, water, sewer and trash so all you need to do is move in! Washer and dryer are already in house', '2022-12-09 00:00:00', NULL),
('hnd4wrAm3e4E6aTiCoT6', 'hCxVGhs1wanPpoatNhVP', 'house for sale in kilimani', 'lang&#39;ata&#39;, nairobi', '15000000', 'house', 'sale', 'ready to move', 'unfurnished', '1500000', '4', '3', '1', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'WJVQAVO7U0rdWK7Ts8x8.jpg', 'vF3HC0o7x91mAaWD0Tmd.jpg', '', 'This property will have you feeling as if you were in the mountains! Your monthly rent already covers power, water, sewer and trash so all you need to do is move in! Washer and dryer are already in house', '2022-12-09 00:00:00', '2022-12-14 12:56:59'),
('J2jlA5KLjlzPfkjcsTpl', 'hCxVGhs1wanPpoatNhVP', 'house for sale in karen', 'karen, karen blixen ,kenya', '20000000', 'house', 'sale', 'ready to move', 'furnished', '850000', '4', '4', '4', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'CU096uVpX5jB7Lwip9vn.jpg', '99Xzs3ziOBJsTMZ4cUWb.jpg', '0d3XGz9ARzIgnT82mVp2.jpg', 'This property will have you feeling as if you were in the mountains! Your monthly rent already covers power, water, sewer and trash so all you need to do is move in! Washer and dryer are already in house.', '2022-12-08 00:00:00', NULL),
('58jfdhkubAj7RLQG2ek9', 'hCxVGhs1wanPpoatNhVP', 'Kileleshwa', 'kileshwa , nairobi', '6000000', 'house', 'sale', 'ready to move', 'furnished', '450000', '3', '3', '3', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', '8UomVRRQ2NVnijZiMgOD.jpg', 'fpQAIinV3npCXnqOOkBL.jpg', 'XlVijyVL12eZnLncqSiN.jpg', 'This property will have you feeling as if you were in the mountains! Your monthly rent already covers power, water, sewer and trash so all you need to do is move in! Washer and dryer are already in house', '2022-12-09 00:00:00', NULL),
('YJdKhKylLSULbW4oe9TI', 'hCxVGhs1wanPpoatNhVP', 'Kileleshwa', 'kileshwa , nairobi', '6000000', 'house', 'sale', 'ready to move', 'furnished', '450000', '3', '3', '3', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'rirJz63SwvMGKStC8Q0P.jpg', 'pgyotleRBVX4SEjQBZud.jpg', 'wRmKHuL3mxhsYQqi9ILe.jpg', 'This property will have you feeling as if you were in the mountains! Your monthly rent already covers power, water, sewer and trash so all you need to do is move in! Washer and dryer are already in house', '2022-12-09 00:00:00', NULL),
('6krCRvf2IuXPIAw57VsF', 'hCxVGhs1wanPpoatNhVP', 'house for sale in langÃ¡ta', 'lang&#39;ata&#39;, nairobi', '15000000', 'house', 'sale', 'ready to move', 'unfurnished', '1500000', '4', '3', '1', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'EuGVsQ5q4ZePEPSOi0Oo.jpg', 'FHTTEkr1qfCGCo485qXA.jpg', '', 'This property will have you feeling as if you were in the mountains! Your monthly rent already covers power, water, sewer and trash so all you need to do is move in! Washer and dryer are already in house', '2022-12-09 00:00:00', NULL),
('7yv2sclTLXJZwXMW7uTQ', 'hCxVGhs1wanPpoatNhVP', 'house for sale in kilimani', 'lang&#39;ata&#39;, nairobi', '15000000', 'house', 'sale', 'ready to move', 'unfurnished', '1500000', '4', '3', '1', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'UDvGDVR8S9imMhYF5hK0.jpg', '9AbG8uCfFvUDeoSTBHBV.jpg', '', 'This property will have you feeling as if you were in the mountains! Your monthly rent already covers power, water, sewer and trash so all you need to do is move in! Washer and dryer are already in house', '2022-12-09 00:00:00', NULL),
('hnd4wrAm3e4E6aTiCoT6', 'hCxVGhs1wanPpoatNhVP', 'house for sale in kilimani', 'lang&#39;ata&#39;, nairobi', '15000000', 'house', 'sale', 'ready to move', 'unfurnished', '1500000', '4', '3', '1', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'WJVQAVO7U0rdWK7Ts8x8.jpg', 'vF3HC0o7x91mAaWD0Tmd.jpg', '', 'This property will have you feeling as if you were in the mountains! Your monthly rent already covers power, water, sewer and trash so all you need to do is move in! Washer and dryer are already in house', '2022-12-09 00:00:00', '2022-12-14 12:56:59'),
('8ZdUIf0hANJ1kdNHShoU', 'J4vMbogOrQNQJTPm25u2', 'Karen, ', 'Nairobi Karen', '500000', 'flat', 'sale', 'under construction', 'unfurnished', '30000', '3', '2', '2', 'yes', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', '8CrmIht9I5SvRzpmUbOX.jpg', 'L8FFsUQxTix9eDMPwnTX.jpg', '', 'This property will have you feeling as if you were...', NULL, NULL),
('EzYh2XIHk4Q3DortOYmn', 'J4vMbogOrQNQJTPm25u2', 'Karen, ', 'Nairobi Karen', '6000000', 'flat', 'sale', 'ready to move', 'furnished', '400000', '1', '1', '0', 'no', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'no', 'yes', 'xCKrTngsERWb8M5pRYJV.jpg', 'WmTV0HW0iuZ2ByIV1GR0.jpg', '', 'This property will have you feeling as if you were...', NULL, NULL),
('Cy41o91ivU2briG7joQq', 'IcD7PZnzEo5bErH0NLDS', 'house for sale in Karen', 'Nairobi Karen', '400000', 'house', 'sale', 'ready to move', 'furnished', '20000', '4', '4', '0', 'yes', 'yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'nHKAWb3HmWvbA3GUgxcn.jpg', 'ec2sj3IxTCewdZyKAXC5.jpg', 'CoOH5gS6eFVzU7yof3ui.jpg', 'This property will have you feeling as if you were...', '2022-12-21 17:48:36', NULL),
('bZs0K0oFgebN7v7dYoEM', 'YavUNoKdTkhOEgKNYCWd', 'house for sale in kilimani', 'Nairobi Kilimani', '50000000', 'house', 'sale', 'ready to move', 'semi-furnished', '200000', '3', '2', '1', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '2PeOTNjgU8YySzF8HAJg.jpg', 'bRuEhqZAcON44FsbyEg7.jpg', '', 'Enter your house details above and click the Generate description button to see a custom social copy display here', '2022-12-21 23:53:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `creation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `property_id`, `sender`, `receiver`, `creation`) VALUES
('oNKSY1Mrc58rQkZz4maH', '58jfdhkubAj7RLQG2ek9', 'I1jM8Oiq8N6Mup9uoUXv', 'hCxVGhs1wanPpoatNhVP', '0000-00-00'),
('ttEsSMuSnTxxecBMfeI0', 'YJdKhKylLSULbW4oe9TI', 'I1jM8Oiq8N6Mup9uoUXv', 'hCxVGhs1wanPpoatNhVP', '0000-00-00'),
('l8MeOasvSrfAbJSPOt3V', 'hnd4wrAm3e4E6aTiCoT6', 'I1jM8Oiq8N6Mup9uoUXv', 'hCxVGhs1wanPpoatNhVP', '0000-00-00'),
('dU1qUtH0mzggi8boEPo1', 'YJdKhKylLSULbW4oe9TI', 'J4vMbogOrQNQJTPm25u2', 'hCxVGhs1wanPpoatNhVP', '0000-00-00'),
('tIvee0MrfmM89dzdlqRu', 'Cy41o91ivU2briG7joQq', 'J4vMbogOrQNQJTPm25u2', 'IcD7PZnzEo5bErH0NLDS', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

CREATE TABLE `saved` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saved`
--

INSERT INTO `saved` (`id`, `property_id`, `user_id`) VALUES
('FNJFQdMdWoHScXqLv5Kr', '7yv2sclTLXJZwXMW7uTQ', 'YavUNoKdTkhOEgKNYCWd'),
('4zrV0oPkyazJwJglhByF', 'J2jlA5KLjlzPfkjcsTpl', 'YavUNoKdTkhOEgKNYCWd'),
('rgy8HBQX3c7OjvFlzNOa', '6krCRvf2IuXPIAw57VsF', 'YavUNoKdTkhOEgKNYCWd'),
('z6ykiksvpmcZBT4WUNEP', 'bZs0K0oFgebN7v7dYoEM', 'YavUNoKdTkhOEgKNYCWd'),
('rIwkifQ71c0ngJI3ZTrA', '58jfdhkubAj7RLQG2ek9', 'I1jM8Oiq8N6Mup9uoUXv'),
('4siKqyntD6TXCX0CBEgg', 'Cy41o91ivU2briG7joQq', 'I1jM8Oiq8N6Mup9uoUXv'),
('aOZ74BLP7jzIlDWQA1Z6', '58jfdhkubAj7RLQG2ek9', 'J4vMbogOrQNQJTPm25u2'),
('nfnf47M5YVFpRsmVknNj', 'YJdKhKylLSULbW4oe9TI', 'J4vMbogOrQNQJTPm25u2');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customer_id`, `product`, `amount`, `currency`, `status`, `created_at`) VALUES
('ch_3MRCboKYKuqrBb6h1cYnz4Wl', 'cus_NBZli8ZFrajGr6', 'Valuation Payment', '400000', 'usd', 'succeeded', '2023-01-17 13:41:41'),
('ch_3MRCclKYKuqrBb6h0ZWLJGXT', 'cus_NBZmGWNh6KBymq', 'Valuation Payment', '400000', 'usd', 'succeeded', '2023-01-17 13:42:40'),
('ch_3MRCcmKYKuqrBb6h1RAkrso9', 'cus_NBZm3SDIVsvAzU', 'Valuation Payment', '400000', 'usd', 'succeeded', '2023-01-17 13:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `number`, `email`, `password`) VALUES
('YavUNoKdTkhOEgKNYCWd', 'Kyle Walker', '0717042623', 'kwalker@gmail.com', '20d75fe135fc3abc15aee2f6e4657c3107899d6a'),
('IcD7PZnzEo5bErH0NLDS', 'Michael Kean', '0724858605', 'mkean@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e'),
('J4vMbogOrQNQJTPm25u2', 'carrick', '0717482734', 'mcarrick@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e'),
('I1jM8Oiq8N6Mup9uoUXv', 'mesut ozil', '0745676090', 'mesut@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
