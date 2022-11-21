-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 18, 2022 at 07:58 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beboss`
--

-- --------------------------------------------------------

--
-- Table structure for table `ai_content_ufm`
--

DROP TABLE IF EXISTS `ai_content_ufm`;
CREATE TABLE IF NOT EXISTS `ai_content_ufm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(700) NOT NULL,
  `type` enum('message','text','select','image','video') NOT NULL,
  `no_of_inputs` tinyint(3) DEFAULT NULL,
  `json_data` text,
  `video_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ai_content_ufm`
--

INSERT INTO `ai_content_ufm` (`id`, `question`, `type`, `no_of_inputs`, `json_data`, `video_url`) VALUES
(1, 'Welcome back, BOSS..', 'message', NULL, NULL, NULL),
(2, 'You have already designed Basic Set-up, selected Menu Items, Header & Footer items, Company Details, User details.\r\nNow it’s time to connect your users with offering services.', 'message', NULL, NULL, NULL),
(3, 'Before Proceeding further, Please watch this video for an idea, how to proceed and prepare a notes of your Services', 'video', NULL, NULL, 'https://www.youtube.com/embed/q2kYT-Sd-XQ'),
(4, 'Now please select one of your Users Below..', 'select', 6, NULL, NULL),
(5, 'You have Selected %UserType%', 'message', NULL, NULL, NULL),
(6, 'Now please assign the types of services that you want to assign to %UserType%', 'select', 5, NULL, NULL),
(7, 'You have Selected %Selected_Service_Array%', 'message', NULL, NULL, NULL),
(8, 'Now please mention how many approximate functionalities you allot under %Service 1%', 'text', NULL, NULL, NULL),
(9, 'You have Selected %Functionality_Count%', 'message', NULL, NULL, NULL),
(10, 'Now please select a design for this Service..\r\n', 'image', NULL, '\r\n{\r\n  \"image\":[\r\n    {\r\n      \"id\" : \"1\",\r\n      \"description\":\"Lady with a red umbrella\",\r\n      \"image-url\":\"https://www.freepik.com/free-vector/www-concept-illustration_8331461.htm\"\r\n    },\r\n    {\r\n      \"id\" : \"2\",\r\n      \"description\":\"Flowers and some fruits\",\r\n      \"image-url\":\"https://www.freepik.com/free-vector/www-concept-illustration_8331461.htm\"\r\n    },\r\n    {\r\n      \"id\" : \"3\",\r\n      \"description\":\"Beautiful scenery\",\r\n      \"image-url\":\"https://www.freepik.com/free-vector/www-concept-illustration_8331461.htm\"\r\n    },\r\n    {\r\n      \"id\" : \"4\",\r\n      \"description\":\"Some kind of bird\",\r\n      \"image-url\":\"https://www.freepik.com/free-vector/www-concept-illustration_8331461.htm\"\r\n    },\r\n    {\r\n      \"id\" : \"5\",\r\n      \"description\":\"The attack of dragons\",\r\n      \"image-url\":\"https://www.freepik.com/free-vector/www-concept-illustration_8331461.htm\"\r\n    }\r\n    \r\n  ]\r\n\r\n}', NULL),
(11, 'You have Selected %Selected_Design%', 'message', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
