-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 10:49 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `lms_admin`
--

CREATE TABLE `lms_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `admin_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_admin`
--

INSERT INTO `lms_admin` (`admin_id`, `admin_email`, `admin_password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `lms_author`
--

CREATE TABLE `lms_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `author_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `author_created_on` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `author_updated_on` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_author`
--

INSERT INTO `lms_author` (`author_id`, `author_name`, `author_status`, `author_created_on`, `author_updated_on`) VALUES
(20, 'Robert C. Martin', 'Enable', '2024-12-16 14:01:22', ''),
(21, 'Software Development', 'Disable', '2024-12-16 14:02:04', '2024-12-16 14:02:22'),
(22, 'Steve Krug', 'Enable', '2024-12-16 14:02:43', ''),
(23, 'David A. Patterson, John L. Hennessy', 'Enable', '2024-12-16 14:02:57', ''),
(24, 'Don Norman', 'Enable', '2024-12-16 14:03:14', ''),
(25, 'Harold Abelson, Gerald Jay Sussman', 'Enable', '2024-12-16 14:03:29', '');

-- --------------------------------------------------------

--
-- Table structure for table `lms_book`
--

CREATE TABLE `lms_book` (
  `book_id` int(11) NOT NULL,
  `book_category` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `book_author` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `book_location_rack` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `book_name` text COLLATE utf8_unicode_ci NOT NULL,
  `book_isbn_number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `book_no_of_copy` int(5) NOT NULL,
  `book_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `book_added_on` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `book_updated_on` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_book`
--

INSERT INTO `lms_book` (`book_id`, `book_category`, `book_author`, `book_location_rack`, `book_name`, `book_isbn_number`, `book_no_of_copy`, `book_status`, `book_added_on`, `book_updated_on`) VALUES
(18, 'Software Development', 'Robert C. Martin', 'Rack A1', 'Clean Code: A Handbook of Agile Software Craftsmanship', '978-0132350884', 5, 'Enable', '2024-12-16 14:06:50', ''),
(19, 'UI/UX Design', 'Steve Krug', 'Rack B3', 'Don’t Make Me Think: A Common Sense Approach to Web Usability', '978-0321965516', 3, 'Enable', '2024-12-16 14:07:49', ''),
(20, 'Computer Architecture', 'David A. Patterson, John L. Hennessy', 'Rack C2', 'Computer Organization and Design: The Hardware/Software Interface', '978-0124077263', 4, 'Enable', '2024-12-16 14:08:45', ''),
(21, 'UI/UX Design', 'Don Norman', 'Rack B1', 'The Design of Everyday Things', '978-0465050659', 6, 'Enable', '2024-12-16 14:09:36', ''),
(22, 'Computer Science Fundamentals', 'Harold Abelson, Gerald Jay Sussman', 'Rack D4', 'Structure and Interpretation of Computer Programs', '978-0262510875', 1, 'Enable', '2024-12-16 14:10:25', '2024-12-16 14:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `lms_category`
--

CREATE TABLE `lms_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `category_created_on` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `category_updated_on` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_category`
--

INSERT INTO `lms_category` (`category_id`, `category_name`, `category_status`, `category_created_on`, `category_updated_on`) VALUES
(5, 'Software Development', 'Enable', '2024-12-16 14:03:46', ''),
(6, 'UI/UX Design', 'Enable', '2024-12-16 14:03:58', ''),
(7, 'Computer Architecture', 'Enable', '2024-12-16 14:04:10', ''),
(8, 'Computer Science Fundamentals', 'Enable', '2024-12-16 14:04:26', '');

-- --------------------------------------------------------

--
-- Table structure for table `lms_issue_book`
--

CREATE TABLE `lms_issue_book` (
  `issue_book_id` int(11) NOT NULL,
  `book_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `issue_date_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `expected_return_date` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `return_date_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `book_fines` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `book_issue_status` enum('Issue','Return','Not Return') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_issue_book`
--

INSERT INTO `lms_issue_book` (`issue_book_id`, `book_id`, `user_id`, `issue_date_time`, `expected_return_date`, `return_date_time`, `book_fines`, `book_issue_status`) VALUES
(10, '978-0262510875', 'UQ3242342', '2024-12-16 14:11:24', '2024-12-26 14:11:24', '', '0', 'Issue');

-- --------------------------------------------------------

--
-- Table structure for table `lms_location_rack`
--

CREATE TABLE `lms_location_rack` (
  `location_rack_id` int(11) NOT NULL,
  `location_rack_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `location_rack_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `location_rack_created_on` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `location_rack_updated_on` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_location_rack`
--

INSERT INTO `lms_location_rack` (`location_rack_id`, `location_rack_name`, `location_rack_status`, `location_rack_created_on`, `location_rack_updated_on`) VALUES
(12, 'Rack A1', 'Enable', '2024-12-16 14:04:57', ''),
(13, 'Rack B3', 'Enable', '2024-12-16 14:05:08', ''),
(14, 'Rack C2', 'Enable', '2024-12-16 14:05:21', ''),
(15, 'Rack B1', 'Enable', '2024-12-16 14:05:32', ''),
(16, 'Rack D4', 'Enable', '2024-12-16 14:05:44', '');

-- --------------------------------------------------------

--
-- Table structure for table `lms_setting`
--

CREATE TABLE `lms_setting` (
  `setting_id` int(11) NOT NULL,
  `library_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `library_address` text COLLATE utf8_unicode_ci NOT NULL,
  `library_contact_number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `library_email_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `library_total_book_issue_day` int(5) NOT NULL,
  `library_one_day_fine` decimal(4,2) NOT NULL,
  `library_issue_total_book_per_user` int(3) NOT NULL,
  `library_currency` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `library_timezone` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_setting`
--

INSERT INTO `lms_setting` (`setting_id`, `library_name`, `library_address`, `library_contact_number`, `library_email_address`, `library_total_book_issue_day`, `library_one_day_fine`, `library_issue_total_book_per_user`, `library_currency`, `library_timezone`) VALUES
(1, 'BVPDUDET Library', 'Plot No. KC-1, Sector-3, Kharghar, Navi Mumbai - 410210', '999999999', 'library@gmail.com', 10, '0.00', 3, 'INR', 'Asia/Calcutta');

-- --------------------------------------------------------

--
-- Table structure for table `lms_user`
--

CREATE TABLE `lms_user` (
  `user_id` int(11) NOT NULL,
  `user_unique_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_prn_no` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_course_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_studying_year` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_admission_year` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_contact_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` text COLLATE utf8_unicode_ci NOT NULL,
  `user_profile` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email_address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_verificaton_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_verification_status` enum('No','Yes') COLLATE utf8_unicode_ci NOT NULL,
  `user_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `user_created_on` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_updated_on` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lms_user`
--

INSERT INTO `lms_user` (`user_id`, `user_unique_id`, `user_prn_no`, `user_name`, `user_course_name`, `user_studying_year`, `user_admission_year`, `user_contact_no`, `user_address`, `user_profile`, `user_email_address`, `user_password`, `user_verificaton_code`, `user_verification_status`, `user_status`, `user_created_on`, `user_updated_on`) VALUES
(1, 'UQ3242342', '011011011', 'Abid husain', 'BCA', '3st', '2021', '1234567890', 'ABCDEFG-000000', '1654267156-413630167.png', 'Abid@gmail.com', 'abid@123', 'b190bcd6e3b29674db036670cf122724', 'Yes', 'Enable', '2022-06-01 12:21:40', '2024-12-16 13:31:12'),
(11, 'U50819097', '001001001', 'MohammadAli', 'BCA', '3', '2021', '1234567890', 'ABCDEFG-000000', '1734341501-280076239.png', 'Mohammad@gmail.com', 'moha@123', 'a28bca4a38847b31cb650a9761a651b7', 'No', 'Enable', '2024-12-16 15:01:41', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lms_admin`
--
ALTER TABLE `lms_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `lms_author`
--
ALTER TABLE `lms_author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `lms_book`
--
ALTER TABLE `lms_book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `lms_category`
--
ALTER TABLE `lms_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `lms_issue_book`
--
ALTER TABLE `lms_issue_book`
  ADD PRIMARY KEY (`issue_book_id`);

--
-- Indexes for table `lms_location_rack`
--
ALTER TABLE `lms_location_rack`
  ADD PRIMARY KEY (`location_rack_id`);

--
-- Indexes for table `lms_setting`
--
ALTER TABLE `lms_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `lms_user`
--
ALTER TABLE `lms_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lms_admin`
--
ALTER TABLE `lms_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lms_author`
--
ALTER TABLE `lms_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `lms_book`
--
ALTER TABLE `lms_book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `lms_category`
--
ALTER TABLE `lms_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lms_issue_book`
--
ALTER TABLE `lms_issue_book`
  MODIFY `issue_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lms_location_rack`
--
ALTER TABLE `lms_location_rack`
  MODIFY `location_rack_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lms_setting`
--
ALTER TABLE `lms_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lms_user`
--
ALTER TABLE `lms_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
