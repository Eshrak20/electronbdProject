-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 10, 2025 at 05:38 PM
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
-- Database: `electronbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `year`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 2016, 'Company Founded', 'Electron (EEPS) was established with a vision to contribute to the growing power and energy sector in Bangladesh, focusing on generation, transmission, and distribution of electricity.', NULL, NULL),
(2, 2017, 'First Major Project', 'Successfully completed our first major electrical project in the power generation sector, laying the foundation for future growth in the energy market.', NULL, NULL),
(3, 2018, 'Expansion into Transmission', 'Electron expanded into the transmission sector, working on key projects that enhanced the electricity distribution network across Bangladesh.', NULL, NULL),
(4, 2019, 'Key Partnership with Government', 'Formed strategic partnerships with the government and other key stakeholders to support the ongoing growth in Bangladesh\'s power sector.', NULL, NULL),
(5, 2020, 'Increased Distribution Capacity', 'Electron increased its electricity distribution capacity by several folds, contributing to the growing demands of the national grid.', NULL, NULL),
(6, 2021, 'Sustainability Initiatives', 'Launched sustainability initiatives aimed at reducing environmental impact and optimizing energy use in all our electrical and automation services.', NULL, NULL),
(7, 2022, 'International Expansion', 'Began expanding into international markets, taking our expertise in the power sector to new regions, contributing to global energy solutions.', NULL, NULL),
(8, 2023, 'Technological Advancements', 'Electron introduced advanced automation technologies to improve efficiency and reduce operational costs in the power generation and distribution sectors.', NULL, NULL),
(9, 2024, 'Achieving Self-Sufficiency', 'Electron achieved self-sufficiency in meeting a significant portion of Bangladesh’s electrical demand through self-owned generation and distribution projects.', NULL, NULL),
(10, 2025, 'Future Vision for Growth', 'Looking forward to continued expansion, we aim to be a leader in the energy sector, meeting the growing needs of the Bangladeshi economy and continuing to enhance our service offerings.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equipment_lists`
--

CREATE TABLE `equipment_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipment_lists`
--

INSERT INTO `equipment_lists` (`id`, `name`, `category`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'Multi-Functional- Primary Injection test set for Substation Testing and commissioning work', 'owned', 5, NULL, NULL),
(2, '2000A Current Booster : Output current of the CPC100 gets increased to upto 2000 A', 'owned', 2, NULL, NULL),
(3, 'The CP TD12 are accessories for CPC 100 for performing power/dissipation factor and capacitance measurements', 'owned', 5, NULL, NULL),
(4, 'Universal Protection Relay test set and commissioning tool', 'owned', 8, NULL, NULL),
(5, 'Double Stage High Vacuum Transformer Oil Centrifuging Capacity:6000Litter/ Hour', 'owned', 1, NULL, NULL),
(6, 'Double Stage Vacuum Pump with Booster Pump set Capacity:70Litter/ Second', 'owned', 8, NULL, NULL),
(7, 'Break Down Voltage(BDV) Test Kit (100 kV)', 'owned', 10, NULL, NULL),
(8, 'Dew Point Meter(DM-70) and Moisture Test meter(MM-70)', 'owned', 8, NULL, NULL),
(9, 'Dry Air Generator (DAG) for Transformer Erection Works Capacity : 120M3/Hour', 'owned', 5, NULL, NULL),
(10, 'High Voltage(Hi-Pot) Tester Capacity:125kVAC and DC', 'owned', 8, NULL, NULL),
(11, 'Circuit Breaker Analyzer for testing closing time and opening time', 'owned', 10, NULL, NULL),
(12, 'Contact Resistance Measuring (CRM) kit for Circuit Breaker', 'owned', 6, NULL, NULL),
(13, '1000A primary current injection test set (Primary Current injection test Kit)', 'owned', 7, NULL, NULL),
(14, 'Digital Multi Meter & Earth Resistance Measuring Kit', 'owned', 9, NULL, NULL),
(15, 'McLeod Gauge for Measuring Vacuum Condition of Transformer', 'owned', 9, NULL, NULL),
(16, 'Variable Transformer (Variac Transformer) Adjustable Manual Voltage Regulator 1KVA 5 Amp Output 0-220V', 'owned', 7, NULL, NULL),
(17, '3000VA Voltage Stabilizer for Testing Equipment', 'owned', 2, NULL, NULL),
(18, '5kV and 10kV DC Insulation Resistance Tester', 'owned', 3, NULL, NULL),
(19, 'PV Analysis Kit for Photovoltaic field testing and fault finding', 'owned', 7, NULL, NULL),
(20, 'Electrical Power Analyzer to achieve an accuracy of ±0.03% at 50/60 Hz System', 'owned', 6, NULL, NULL),
(21, 'KYORITSU IR Tester', 'owned', 4, NULL, NULL),
(22, 'Fluke IR Tester', 'owned', 1, NULL, NULL),
(23, 'Ferrule Printing Machine', 'owned', 3, NULL, NULL),
(24, 'True-RMS AC/DC Clamp Meter', 'owned', 1, NULL, NULL),
(25, 'CT Analyzer', 'owned', 8, NULL, NULL),
(26, 'SFRA Testing Set', 'owned', 3, NULL, NULL),
(27, 'Contact Resistance Tester/ Low Resistance Ohm Meter', 'owned', 7, NULL, NULL),
(28, 'IR Test Kit-10kV', 'owned', 7, NULL, NULL),
(29, 'Circuit Breaker Analyzer', 'owned', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `name`, `company`, `phone`, `email`, `description`, `created_at`, `updated_at`) VALUES
(16, 'Eshrak G', 'Innovation Lab', '01309176398', 'eshrakg@gmail.com', 'Just Check', '2025-04-08 12:40:34', '2025-04-08 12:40:34'),
(17, 'Eshrak G', 'Innovation Lab', '01309176398', 'eshrakg622@gmail.com', 'Check', '2025-04-09 07:49:57', '2025-04-09 07:49:57'),
(18, 'Eshrak G', 'Innovation Lab', '01309176398', 'teshrakg62@gmail.com', 'tt', '2025-04-09 10:23:19', '2025-04-09 10:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(23, 'Pic1', 'reactAssets/Images/Gallery/1.jpeg', NULL, NULL),
(24, 'Pic2', 'reactAssets/Images/Gallery/2.jpeg', NULL, NULL),
(25, 'Pic3', 'reactAssets/Images/Gallery/3.jpeg', NULL, NULL),
(26, 'Pic4', 'reactAssets/Images/Gallery/4.jpeg', NULL, NULL),
(27, 'Pic5', 'reactAssets/Images/Gallery/5.jpeg', NULL, NULL),
(28, 'Pic6', 'reactAssets/Images/Gallery/6.jpeg', NULL, NULL),
(29, 'Pic7', 'reactAssets/Images/Gallery/7.jpeg', NULL, NULL),
(30, 'Pic8', 'reactAssets/Images/Gallery/8.jpeg', NULL, NULL),
(31, 'Pic9', 'reactAssets/Images/Gallery/9.jpeg', NULL, NULL),
(32, 'Pic10', 'reactAssets/Images/Gallery/10.jpeg', NULL, NULL),
(33, 'Pic11', 'reactAssets/Images/Gallery/11.jpeg', NULL, NULL),
(34, 'Pic12', 'reactAssets/Images/Gallery/12.jpeg', NULL, NULL),
(35, 'Pic13', 'reactAssets/Images/Gallery/13.jpeg', NULL, NULL),
(36, 'Pic14', 'reactAssets/Images/Gallery/14.jpeg', NULL, NULL),
(37, 'Pic15', 'reactAssets/Images/Gallery/15.jpeg', NULL, NULL),
(38, 'Pic16', 'reactAssets/Images/Gallery/16.jpeg', NULL, NULL),
(39, 'Pic17', 'reactAssets/Images/Gallery/17.jpeg', NULL, NULL),
(40, 'Pic18', 'reactAssets/Images/Gallery/18.jpeg', NULL, NULL),
(41, 'Pic19', 'reactAssets/Images/Gallery/19.jpeg', NULL, NULL),
(42, 'Pic20', 'reactAssets/Images/Gallery/20.jpeg', NULL, NULL),
(43, 'Pic21', 'reactAssets/Images/Gallery/21.jpeg', NULL, NULL),
(44, 'Pic22', 'reactAssets/Images/Gallery/22.jpeg', NULL, NULL),
(45, 'Pic23', 'reactAssets/Images/Gallery/23.jpeg', NULL, NULL),
(46, 'Pic24', 'reactAssets/Images/Gallery/24.jpeg', NULL, NULL),
(47, 'Pic25', 'reactAssets/Images/Gallery/25.jpeg', NULL, NULL),
(48, 'Pic26', 'reactAssets/Images/Gallery/26.jpeg', NULL, NULL),
(49, 'Pic27', 'reactAssets/Images/Gallery/27.jpeg', NULL, NULL),
(50, 'Pic28', 'reactAssets/Images/Gallery/28.jpeg', NULL, NULL),
(51, 'Pic29', 'reactAssets/Images/Gallery/29.jpeg', NULL, NULL),
(52, 'Pic30', 'reactAssets/Images/Gallery/30.jpeg', NULL, NULL),
(53, 'Pic31', 'reactAssets/Images/Gallery/31.jpeg', NULL, NULL),
(54, 'Pic32', 'reactAssets/Images/Gallery/32.jpeg', NULL, NULL),
(55, 'Pic33', 'reactAssets/Images/Gallery/33.jpeg', NULL, NULL),
(56, 'Pic34', 'reactAssets/Images/Gallery/34.jpeg', NULL, NULL),
(57, 'Pic35', 'reactAssets/Images/Gallery/35.jpeg', NULL, NULL),
(58, 'Pic36', 'reactAssets/Images/Gallery/36.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(255) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`content`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaders`
--

CREATE TABLE `leaders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `specialization` text DEFAULT NULL,
  `projects` text DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaders`
--

INSERT INTO `leaders` (`id`, `name`, `image`, `designation`, `degree`, `specialization`, `projects`, `linkedin`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Md. Ariful Hoque Shuhan', 'reactAssets/Images/Leaders/1.jpg', 'Chairman', 'BSC. IN EEE, BUET', 'Specialized in substation automation and remote communication systems.', 'Successfully completed multiple projects of AMR & SCADA.', 'https://www.linkedin.com/in/arifulshuhan', '01309176398', 'ariful@example.com', '2025-03-17 16:06:29', '2025-03-17 16:06:29'),
(2, 'Dr. Kamrul Hasan', 'reactAssets/Images/Leaders/2.jpg', 'Managing Director', 'PhD in Computer Science, MIT', 'Expert in AI and machine learning applications in healthcare.', 'Developed an AI-based early detection system for heart diseases.', 'https://www.linkedin.com/in/kamrulhasan', '01309176398', 'kamrul@example.com', '2025-03-17 16:06:29', '2025-03-17 16:06:29'),
(3, 'Engr. Farhana Rahman', 'reactAssets/Images/Leaders/3.jpg', 'Chief Technical Officer', 'MSc in Electrical Engineering, Stanford', 'Specialized in renewable energy and smart grid technologies.', 'Led a team in building Bangladesh’s first solar-powered smart grid.', 'https://www.linkedin.com/in/farhanarahman', '01309176398', 'farhana@example.com', '2025-03-17 16:06:29', '2025-03-17 16:06:29'),
(4, 'Prof. Tanvir Ahmed', 'reactAssets/Images/Leaders/4.jpg', 'Director of Research', 'PhD in Robotics, Tokyo University', 'Expert in automation and industrial robotics.', 'Designed a robotic arm for precision manufacturing.', 'https://www.linkedin.com/in/tanvirahmed', '01309176398', 'tanvir@example.com', '2025-03-17 16:06:29', '2025-03-17 16:06:29'),
(5, 'Sadia Chowdhury', 'reactAssets/Images/Leaders/5.jpg', 'Head of Marketing', 'MBA in Business Strategy, Harvard', 'Specialized in digital marketing and brand growth strategies.', 'Launched a nationwide digital campaign that increased brand reach by 200%.', 'https://www.linkedin.com/in/sadiachowdhury', '01309176398', 'sadia@example.com', '2025-03-17 16:06:29', '2025-03-17 16:06:29'),
(6, 'Mohammad Iqbal', 'reactAssets/Images/Leaders/6.jpg', 'Chief Financial Officer', 'CFA, London Business School', 'Expert in financial analytics and investment strategies.', 'Implemented a cost-saving strategy that increased company profits by 30%.', 'https://www.linkedin.com/in/mohammadiqbal', '01309176398', 'iqbal@example.com', '2025-03-17 16:06:29', '2025-03-17 16:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `management_tables`
--

CREATE TABLE `management_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `management_tables`
--

INSERT INTO `management_tables` (`id`, `name`, `number`, `created_at`, `updated_at`) VALUES
(1, 'Project Management', '08', NULL, NULL),
(2, 'Development', '17', NULL, NULL),
(3, 'Implementation', '48', NULL, NULL),
(4, 'Service & Support', '20', NULL, NULL),
(5, 'Sales & Marketing', '15', NULL, NULL),
(6, 'Administration', '12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_02_163601_create_homes_table', 1),
(5, '2025_03_13_192849_create_our_services_table', 2),
(9, '2025_03_14_084627_create_our_solutions_table', 3),
(10, '2025_03_14_091411_create_our_products_table', 4),
(11, '2025_03_14_092507_create_our_projects_table', 5),
(13, '2025_03_14_093841_create_our_customers_table', 6),
(14, '2025_03_17_140856_add_fields_to_our_projects_table', 7),
(15, '2025_03_17_155557_create_leaders_table', 8),
(16, '2025_03_17_160442_add_fields_to_leaders_table', 9),
(17, '2025_03_17_162844_create_press_table', 10),
(18, '2025_03_18_081537_add_fields_to_projects_table', 11),
(19, '2025_03_19_183424_add_features_to_our_products', 12),
(20, '2025_03_19_184625_add_type_to_our_products', 13),
(21, '2025_03_19_202444_create_management_tables', 14),
(22, '2025_03_20_083357_create_achievements_table', 15),
(23, '2025_04_07_145640_create_our_partners_table', 16),
(24, '2025_04_07_150855_create_galleries_table', 17),
(25, '2025_04_08_160857_create_equipment_lists_table', 18),
(26, '2025_04_08_175151_create_forms_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `our_customers`
--

CREATE TABLE `our_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_customers`
--

INSERT INTO `our_customers` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'reactAssets/Images/HomeClient/1.png', 'Customer 1', 'Description for customer 1', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(2, 'reactAssets/Images/HomeClient/2.jpeg', 'Customer 2', 'Description for customer 2', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(3, 'reactAssets/Images/HomeClient/3.jpeg', 'Customer 3', 'Description for customer 3', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(4, 'reactAssets/Images/HomeClient/4.jpeg', 'Customer 4', 'Description for customer 4', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(5, 'reactAssets/Images/HomeClient/5.jpg', 'Customer 5', 'Description for customer 5', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(6, 'reactAssets/Images/HomeClient/6.png', 'Customer 6', 'Description for customer 6', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(7, 'reactAssets/Images/HomeClient/7.jpg', 'Customer 7', 'Description for customer 7', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(8, 'reactAssets/Images/HomeClient/8.png', 'Customer 8', 'Description for customer 8', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(9, 'reactAssets/Images/HomeClient/9.png', 'Customer 9', 'Description for customer 9', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(10, 'reactAssets/Images/HomeClient/10.jpg', 'Customer 10', 'Description for customer 10', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(11, 'reactAssets/Images/HomeClient/11.png', 'Customer 11', 'Description for customer 11', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(12, 'reactAssets/Images/HomeClient/12.png', 'Customer 12', 'Description for customer 12', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(13, 'reactAssets/Images/HomeClient/13.png', 'Customer 13', 'Description for customer 13', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(14, 'reactAssets/Images/HomeClient/14.png', 'Customer 14', 'Description for customer 14', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(15, 'reactAssets/Images/HomeClient/15.png', 'Customer 15', 'Description for customer 15', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(16, 'reactAssets/Images/HomeClient/18.jpg', 'Customer 1', 'Description for customer 1', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(17, 'reactAssets/Images/HomeClient/2.jpeg', 'Customer 2', 'Description for customer 2', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(18, 'reactAssets/Images/HomeClient/19.jpg', 'Customer 3', 'Description for customer 3', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(19, 'reactAssets/Images/HomeClient/20.png', 'Customer 4', 'Description for customer 4', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(20, 'reactAssets/Images/HomeClient/21.png', 'Customer 5', 'Description for customer 5', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(21, 'reactAssets/Images/HomeClient/22.png', 'Customer 6', 'Description for customer 6', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(22, 'reactAssets/Images/HomeClient/23.jpg', 'Customer 7', 'Description for customer 7', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(23, 'reactAssets/Images/HomeClient/8.png', 'Customer 8', 'Description for customer 8', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(24, 'reactAssets/Images/HomeClient/24.jpeg', 'Customer 9', 'Description for customer 9', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(25, 'reactAssets/Images/HomeClient/25.jpeg', 'Customer 10', 'Description for customer 10', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(26, 'reactAssets/Images/HomeClient/26.jpeg', 'Customer 11', 'Description for customer 11', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(27, 'reactAssets/Images/HomeClient/27.jpeg', 'Customer 12', 'Description for customer 12', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(28, 'reactAssets/Images/HomeClient/28.jpeg', 'Customer 13', 'Description for customer 13', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(29, 'reactAssets/Images/HomeClient/29.jpeg', 'Customer 14', 'Description for customer 14', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(30, 'reactAssets/Images/HomeClient/30.jpeg', 'Customer 15', 'Description for customer 15', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(31, 'reactAssets/Images/HomeClient/31.jpeg', 'Customer 11', 'Description for customer 11', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(32, 'reactAssets/Images/HomeClient/32.jpeg', 'Customer 12', 'Description for customer 12', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(33, 'reactAssets/Images/HomeClient/33.png', 'Customer 13', 'Description for customer 13', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(34, 'reactAssets/Images/HomeClient/34.png', 'Customer 14', 'Description for customer 14', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(35, 'reactAssets/Images/HomeClient/35.jpeg', 'Customer 15', 'Description for customer 15', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(36, 'reactAssets/Images/HomeClient/36.png', 'Customer 11', 'Description for customer 11', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(37, 'reactAssets/Images/HomeClient/37.png', 'Customer 12', 'Description for customer 12', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(38, 'reactAssets/Images/HomeClient/38.png', 'Customer 13', 'Description for customer 13', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(39, 'reactAssets/Images/HomeClient/39.webp', 'Customer 14', 'Description for customer 14', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(40, 'reactAssets/Images/HomeClient/40.png', 'Customer 15', 'Description for customer 15', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(41, 'reactAssets/Images/HomeClient/41.png', 'Customer 11', 'Description for customer 11', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(42, 'reactAssets/Images/HomeClient/42.png', 'Customer 12', 'Description for customer 12', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(43, 'reactAssets/Images/HomeClient/43.jpg', 'Customer 13', 'Description for customer 13', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(44, 'reactAssets/Images/HomeClient/44.jpg', 'Customer 14', 'Description for customer 14', '2025-03-17 15:03:51', '2025-03-17 15:03:51'),
(45, 'reactAssets/Images/HomeClient/45.jpg', 'Customer 15', 'Description for customer 15', '2025-03-17 15:03:51', '2025-03-17 15:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `our_partners`
--

CREATE TABLE `our_partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_partners`
--

INSERT INTO `our_partners` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'reactAssets/Images/Partners/1.png', 'Customer 1', 'Description for customer 1', '2025-03-14 09:36:25', '2024-08-20 12:06:13'),
(2, 'reactAssets/Images/Partners/2.jpeg', 'Customer 1', 'Description for customer 1', '2025-03-14 09:36:25', '2024-08-20 12:06:13'),
(3, 'reactAssets/Images/Partners/3.jpeg', 'Customer 1', 'Description for customer 1', '2025-03-14 09:36:25', '2024-08-20 12:06:13'),
(4, 'reactAssets/Images/Partners/4.png', 'Customer 1', 'Description for customer 1', '2025-03-14 09:36:25', '2024-08-20 12:06:13'),
(5, 'reactAssets/Images/Partners/5.jpeg', 'Customer 1', 'Description for customer 1', '2025-03-14 09:36:25', '2024-08-20 12:06:13'),
(6, 'reactAssets/Images/Partners/6.jpg', 'Customer 1', 'Description for customer 1', '2025-03-14 09:36:25', '2024-08-20 12:06:13'),
(7, 'reactAssets/Images/Partners/7.png', 'Customer 1', 'Description for customer 1', '2025-03-14 09:36:25', '2024-08-20 12:06:13'),
(8, 'reactAssets/Images/Partners/8.png', 'Customer 1', 'Description for customer 1', '2025-03-14 09:36:25', '2024-08-20 12:06:13'),
(9, 'reactAssets/Images/Partners/9.png', 'Customer 1', 'Description for customer 1', '2025-03-14 09:36:25', '2024-08-20 12:06:13'),
(10, 'reactAssets/Images/Partners/10.png', 'Customer 1', 'Description for customer 1', '2025-03-14 09:36:25', '2024-08-20 12:06:13'),
(11, 'reactAssets/Images/Partners/11.jpeg', 'Customer 1', 'Description for customer 1', '2025-03-14 09:36:25', '2024-08-20 12:06:13'),
(12, 'reactAssets/Images/Partners/12.jpeg', 'Partner 12 Title', 'Partner 12 Description', NULL, NULL),
(13, 'reactAssets/Images/Partners/13.jpeg', 'Partner 13 Title', 'Partner 13 Description', NULL, NULL),
(14, 'reactAssets/Images/Partners/14.jpeg', 'Partner 14 Title', 'Partner 14 Description', NULL, NULL),
(15, 'reactAssets/Images/Partners/15.jpeg', 'Partner 15 Title', 'Partner 15 Description', NULL, NULL),
(16, 'reactAssets/Images/Partners/16.jpeg', 'Partner 16 Title', 'Partner 16 Description', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `our_products`
--

CREATE TABLE `our_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`features`)),
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_products`
--

INSERT INTO `our_products` (`id`, `icon`, `title`, `description`, `features`, `type`, `created_at`, `updated_at`) VALUES
(1, 'reactAssets/Images/Product/10.jpeg', 'Transformer', '\n    A. Power Transformer: We provide power transformer upto 132kV, 80/120MVA for power grid, power plant, solar power plant etc.', '[\n  \"High Voltage Capacity: Designed to handle voltages up to 132kV, ensuring compatibility with large-scale power transmission systems.\",\n  \"Large Power Rating: Offering capacities like 80/120MVA to meet the demands of high-power loads.\",\n  \"Efficiency: Engineered for minimal energy losses, ensuring optimal performance and cost-effectiveness.\",\n  \"Durability: Built with robust materials to withstand extreme weather conditions and prolonged operation.\",\n  \"Advanced Cooling Systems: Equipped with oil or air cooling systems for efficient heat dissipation and prevention of overheating.\",\n  \"Low Noise Operation: Designed with mechanisms to reduce noise levels, ensuring quieter operation in various environments.\",\n  \"Overload Capability: Able to handle temporary overloads without compromising performance.\",\n  \"Customizability: Can be tailored to specific project requirements, such as solar power integration or unique grid configurations.\",\n  \"Safety Features: Includes protections against short circuits, overvoltage, and surges to enhance operational safety.\",\n  \"Compliance with Standards: Certified to meet international standards like IEC, ANSI, or IEEE, ensuring quality and reliability.\"\n]\n', 'Substation', '2025-03-14 09:15:28', '2025-03-14 09:15:28'),
(2, 'reactAssets/Images/Product/5.jpg', 'Distribution Transformer:', 'We supply and manufacture distribution tranformers upto 11kV, 5000kVA for commercial and residential projects. Distribution transformers play a key role in delivering electricity from the power grid to end users, such as homes, businesses, and small industries. They step down high voltage from transmission lines to a lower, usable voltage level. Here are some highlights:', '[\n  \"Voltage Step-Down: Typically convert voltages from 11kV or higher down to the standard voltage levels used in residential or industrial setups, like 230V or 400V.\",\n  \"Compact Design: Smaller and more lightweight compared to power transformers, making them easy to install in local areas.\",\n  \"High Efficiency at Low Load: Designed to perform optimally even at lower load levels typical in neighborhoods.\",\n  \"Cooling Systems: Usually air-cooled or oil-cooled, depending on their capacity and application.\",\n  \"Mounting Options: Can be pole-mounted, pad-mounted, or placed underground.\",\n  \"Reliability: Designed for continuous operation with minimal maintenance.\",\n  \"Low Noise: Operates quietly, suitable for urban and residential environments.\",\n  \"Safety Features: Includes protection against overload, short circuits, and environmental factors.\"\n]\n', 'Substation', '2025-03-14 09:15:28', '2025-03-14 09:15:28'),
(3, 'reactAssets/Images/Product/3.jpg', 'Cast Resin Transformers: ', 'Cast resin transformers are a type of dry-type transformer known for their reliability, safety, and environmental friendliness. Here\'s an overview of their features and benefits:', '[\n  \"Epoxy Resin Insulation: The windings are encapsulated in epoxy resin, providing excellent protection against moisture, dust, and pollutants.\",\n  \"Fire Resistance: Non-flammable and self-extinguishing, making them ideal for indoor applications and areas with high fire risk.\",\n  \"Low Maintenance: Require minimal upkeep due to their robust design and lack of oil-based cooling systems.\",\n  \"Compact Design: Suitable for installations in confined spaces, such as commercial buildings and industrial facilities.\",\n  \"High Mechanical Strength: Can withstand thermal and mechanical stresses, including short circuits and load cycling.\",\n  \"Eco-Friendly: No risk of oil leaks, reducing environmental impact.\",\n  \"Cooling Options: Typically cooled by natural air (AN) or forced air (AF), ensuring efficient heat dissipation.\"\n]\n', 'Substation', '2025-03-14 09:15:28', '2025-03-14 09:15:28'),
(4, 'reactAssets/Images/Product/9.jpg', 'MV Switchgrear', 'Medium Voltage (MV) Switchgear is essential for managing and protecting electrical systems operating between 1kV and 36kV. Here are its **key features**:\nIEC 62271 Series: Addresses high-voltage switchgear and controlgear, including general specifications and testing.', '[\n  \"Voltage Range: Operates efficiently within the medium voltage range of 1kV to 36kV.\",\n  \"Advanced Protection: Equipped with protective relays and circuit breakers to safeguard against faults like overloads and short circuits.\",\n  \"Durable Design: Built to withstand harsh industrial and outdoor environments.\",\n  \"Automation Capabilities: Often integrated with SCADA systems for remote monitoring and control.\",\n  \"Compact and Modular: Designed for easy installation and scalability in various applications.\",\n  \"Safety Features: Includes isolators, earthing switches, and arc fault protection for enhanced operational safety.\",\n  \"Low Maintenance: Requires minimal upkeep due to robust construction and reliable components.\",\n  \"Versatility: Suitable for diverse applications, including industrial plants, commercial buildings, and utility substations.\"\n]\n', 'Substation', '2025-03-14 09:15:28', '2025-03-14 09:15:28'),
(5, 'reactAssets/Images/Product/7.jpg', 'LV Switchgear: (LT Panel, MCC Panel, PFI Panel)', '  IEC 60947 Series: Covers low-voltage switchgear and controlgear, including circuit breakers, switches, and motor starters.\n    IEC 61439 Series: Specifies requirements for low-voltage switchgear assemblies, emphasizing design verification and safety.', '[\n  \"Voltage Range: Operates at voltages up to 1,000V, suitable for distribution in residential, commercial, and industrial facilities.\",\n  \"Protection Systems: Integrates circuit breakers, relays, and fuses to guard against overloads, short circuits, and earth faults.\",\n  \"Modular Design: Offers flexibility for easy expansion and customization to meet specific operational needs.\",\n  \"Compact and Space-Saving: Designed for efficient use of space while maintaining accessibility for maintenance.\",\n  \"High Safety Standards: Includes arc fault protection, interlocking systems, and insulation barriers to enhance operator safety.\",\n  \"Automation-Ready: Can be equipped with communication systems for remote monitoring and control, supporting smart grid and industrial automation.\",\n  \"Durable Construction: Resistant to heat, humidity, and other environmental conditions, ensuring a long operational lifespan.\",\n  \"Efficient Power Distribution: Minimizes energy loss and ensures reliable performance under various load conditions.\",\n  \"User-Friendly Maintenance: Accessible compartments and clear labeling simplify servicing and reduce downtime.\",\n  \"Compliance with Standards: Designed and tested in accordance with IEC 61439 to ensure quality and reliability.\"\n]\n', 'Substation', '2025-03-14 09:15:28', '2025-03-14 09:15:28'),
(6, 'reactAssets/Images/Product/8.jpg', 'Medium Voltage Circuit  Breakers:', 'Medium Voltage (MV) circuit breakers are essential for controlling and protecting electrical circuits in medium voltage systems. Here are some key features:', '[\n  \"Vacuum Circuit Breakers: Known for their long contact life, low maintenance, and high reliability.\",\n  \"SF6 Gas Circuit Breakers: Effective for high voltage applications but require careful handling due to environmental concerns.\",\n  \"Air-Magnetic Circuit Breakers: Older technology, less common today.\",\n  \"Arc Extinguishers: Help in safely interrupting the electrical arc during fault conditions.\",\n  \"Operating Mechanisms: Include stored energy systems like springs or magnetic techniques for quick operation.\",\n  \"Contact Assemblies: Ensure reliable electrical connections and disconnections.\",\n  \"Rated voltage, current, and short-circuit capacity.\",\n  \"Compliance with IEC or ANSI standards for safety and performance.\",\n  \"Integrated with protection relays and current transformers for automatic tripping during faults.\",\n  \"Can be operated locally or remotely for flexibility.\",\n  \"Fixed or draw-out designs for ease of maintenance and replacement.\"\n]\n', 'Substation', '2025-03-14 09:15:28', '2025-03-14 09:15:28'),
(7, 'reactAssets/Images/Product/6.jpg', 'MDB, SDB, ASDB, LDB, FDB Panel', 'Here are the key features of SDB (Sub Distribution Boards) and MDB (Main Distribution Boards):', '[\n  \"Purpose: Distributes power from the Main Distribution Board to localized areas or specific circuits.\",\n  \"Compact Design: Smaller and more compact compared to MDBs, suitable for localized power distribution.\",\n  \"Circuit Protection: Houses circuit breakers, fuses, and residual current devices for safety.\",\n  \"Customization: Can be tailored to specific applications, such as lighting or HVAC systems.\",\n  \"Ease of Maintenance: Modular design allows for easy access and maintenance.\"\n]\n', 'Substation', '2025-03-19 18:51:27', '2025-03-19 18:51:27'),
(8, 'reactAssets/Images/Product/2.jpg', 'CABLE TRAYS', 'Cable trays are essential components in electrical systems, providing a structured pathway for organizing and protecting cables. Here are their key features:', '[\n  \"Ladder Cable Tray: Offers excellent ventilation and heat dissipation, ideal for industrial environments.\",\n  \"Perforated Cable Tray: Features holes for ventilation, providing moderate protection and support.\",\n  \"Wire Mesh Cable Tray: Lightweight and promotes airflow, commonly used in IT and telecommunication setups.\",\n  \"Solid Bottom Cable Tray: Provides full protection from external elements like dust and moisture.\",\n  \"Materials: Made from steel, aluminum, or fiberglass, often with anti-corrosion coatings for durability.\",\n  \"Sizes: Available in various widths, heights, and lengths to suit different applications.\",\n  \"Applications: Used in industrial plants, data centers, commercial buildings, and transport hubs for efficient cable management.\",\n  \"Advantages: Prevents overheating and cable damage.\",\n  \"Advantages: Simplifies maintenance and future modifications.\",\n  \"Advantages: Enhances safety by reducing clutter and tripping hazards.\"\n]\n', 'Substation', '2025-03-19 18:51:27', '2025-03-19 18:51:27'),
(9, 'reactAssets/Images/Product/4.jpg', 'Early Streamer Emission (ESE) Lightning Protection System & Earthing System. (Chemical and Genera', 'Generators are crucial devices for producing electrical power in the absence of a direct power supply. Here are their key features:', '[\r\n  \"Standby Generators: Provide backup power during outages, ensuring uninterrupted service.\",\r\n  \"Portable Generators: Lightweight and mobile, they are ideal for temporary or remote use.\",\r\n  \"Industrial Generators: Designed for large-scale, high-power applications, capable of handling heavy loads.\",\r\n  \"Power Output: Rated based on wattage (kW or MW), generators cater to various needs, from household use to large industrial facilities.\",\r\n  \"Fuel Types: Common fuels include diesel, gasoline, natural gas, and propane, with some modern generators also supporting renewable sources like solar.\",\r\n  \"Key Components: The engine converts fuel into mechanical energy, the alternator converts mechanical energy into electrical energy, the control system manages the generator\'s operation, and the cooling system prevents overheating during operation.\",\r\n  \"Efficiency & Features: Modern generators feature an automatic transfer switch (ATS) for seamless power supply during outages, noise-reduction technology, and remote monitoring and control in advanced models.\",\r\n  \"Safety & Standards: Equipped with overload protection and safety shutdown features, generators comply with industry standards such as ISO and IEC.\"\r\n]\r\n', 'GENERATOR', '2025-03-19 18:51:27', '2025-03-19 18:51:27'),
(10, 'reactAssets/Images/Product/1.jpg', 'Auto Voltage Regulator', 'Automatic Voltage Regulators (AVRs) are essential devices for maintaining stable voltage levels and protecting electronic equipment. Here are some key features of AVRs', '[\r\n  \"Voltage Stabilization: AVRs ensure a constant voltage supply by automatically adjusting fluctuations to a set value.\",\r\n  \"Wide Voltage Range: They can regulate large voltage ranges, adapting to various electrical network conditions.\",\r\n  \"Fast Response Time: AVRs quickly detect and correct voltage variations, often with regulation speeds of 20 Volts/sec.\",\r\n  \"Compatibility: They are versatile and can be used with lighting systems, industrial machinery, and other equipment.\",\r\n  \"Efficiency: AVRs minimize energy loss during regulation, contributing to energy efficiency.\",\r\n  \"Protection: They safeguard devices from overvoltage, undervoltage, and sudden voltage spikes.\"\r\n]\r\n', 'AVR', '2025-03-14 09:15:28', '2025-03-14 09:15:28'),
(19, 'reactAssets/Images/Product/23.webp', '1.33/11kV VCB (Vacuum Circuit breaker)', 'A 33/11kV Vacuum Circuit Breaker (VCB) is used in medium-voltage substations for switching and protection. It\'s essential in power distribution between high voltage (33kV) and medium voltage (11kV) networks. Here are the key features of a 33/11kV VCB:', '[\r\n  \"Voltage Rating: Typically 33kV (primary) / 11kV (secondary) for standard medium voltage applications.\",\r\n  \"Breaking Medium: Uses vacuum technology to ensure arc quenching in a sealed environment with minimal wear.\",\r\n  \"Insulation Medium: Commonly insulated using air or solid materials, depending on the design.\",\r\n  \"Interrupting Capacity: Typically ranges from 16kA to 31.5kA based on the application and design specifications.\",\r\n  \"Rated Current: Supports current ratings commonly between 630A to 1250A.\",\r\n  \"Operating Mechanism: Utilizes spring-charged or motor-operated mechanisms for efficient remote or automatic operation.\"\r\n]\r\n', 'Others', '2025-03-14 09:15:28', '2025-03-14 09:15:28'),
(20, 'reactAssets/Images/Product/17.jpg', '11kV LBS (Load Break Switch) Panel', 'An 11kV LBS (Load Break Switch) Panel is a crucial part of medium-voltage power distribution systems. It\'s used for switching under normal load conditions, not for fault interruption (unlike circuit breakers). These panels are widely used in ring main units (RMUs), distribution substations, and industrial setups.', '[\r\n  \"Rated Voltage: Typically 11kV, with maximum ratings up to 12kV depending on system requirements.\",\r\n  \"Rated Current: Commonly ranges from 400A to 630A for standard applications.\",\r\n  \"Short Circuit Withstand: Designed to withstand approximately 16kA for 3 seconds, depending on design specifications.\",\r\n  \"Frequency: Operates at a standard frequency of 50 Hz.\"\r\n]\r\n', 'Others', '2025-03-14 09:15:28', '2025-03-14 09:15:28'),
(21, 'reactAssets/Images/Product/22.jpg', '33/11kV GIS Switchgear', 'Medium Voltage (MV) circuit breakers are essential for controlling and protecting electrical circuits in medium voltage systems. Here are some key features:', '[\r\n  \"Compact Design: Enclosed in a metal housing filled with SF₆ gas, enabling a significantly smaller footprint compared to conventional air-insulated switchgear (AIS).\",\r\n  \"High Reliability & Safety: Utilizes SF₆ gas for superior dielectric strength and arc-quenching, while a fully enclosed system reduces risks of flashovers and accidental contact.\",\r\n  \"Low Maintenance: Features a sealed-for-life design, making most components maintenance-free throughout their operational lifespan.\",\r\n  \"Operational Flexibility: Offers configurable options such as single busbar, double busbar, and ring main unit (RMU) arrangements for various system needs.\"\r\n]\r\n', 'Others', '2025-03-14 09:15:28', '2025-03-14 09:15:28'),
(22, 'reactAssets/Images/Product/14.jpg', '33kV/11kV Current Transformer (CT)', 'A 33kV/11kV Current Transformer (CT) is used in high-voltage power distribution systems to step down current levels from 33kV to 11kV systems for measurement, protection, and control. Here are the key features of a typical 33kV/11kV CT:', '[\r\n  \"Voltage Rating: Typically rated at 33kV for primary and 11kV for secondary voltage levels.\",\r\n  \"Current Ratio: Common ratios include 100/1 A, 200/1 A, and 400/5 A, with customization available based on system requirements.\"\r\n]\r\n', 'Others', '2025-03-19 18:51:27', '2025-03-19 18:51:27'),
(23, 'reactAssets/Images/Product/20.jpg', '33kV/11kV Potential Transformer (PT)', 'Here are the 🔑 Key Features of a 33kV/11kV Potential Transformer (PT), also known as a Voltage Transformer (VT), which is used for voltage measurement and protection in high-voltage systems:', '[\r\n  \"Primary Voltage: Rated at 33kV for high voltage applications.\",\r\n  \"Secondary Voltage: Typically 110V or 115V, standard for metering and protection systems.\",\r\n  \"Accuracy Class: Available in Class 0.2 and 0.5 for metering, and Class 3P and 6P for protection purposes.\",\r\n  \"Burden: Offered in 10 VA, 15 VA, 30 VA, or as per specific system requirements.\",\r\n  \"Construction Type: Available in resin cast for indoor use, and oil-filled or SF₆ insulated for outdoor installations.\",\r\n  \"Insulation Level (BIL): Supports up to 170kV impulse withstand and 70kV power frequency withstand levels.\",\r\n  \"Frequency: Designed for operation at standard frequencies of 50Hz or 60Hz.\",\r\n  \"Standards Compliance: Complies with international standards such as IEC 61869-3, IS 3156, and ANSI C57.\",\r\n  \"Mounting: Suitable for pole-mounted, panel-mounted, or base-mounted configurations.\",\r\n  \"Safety Features: Includes earth terminals, optional fused secondary, and test links for enhanced safety.\",\r\n  \"Applications: Used in substations for voltage measurement, protection, and SCADA system integration.\"\r\n]\r\n', 'Others', '2025-03-19 18:51:27', '2025-03-19 18:51:27'),
(24, 'reactAssets/Images/Product/15.webp', '33/11kV Disconnecting Switch', 'A 33/11kV disconnecting switch (also known as an isolator switch) is a high-voltage switch used to ensure that an electrical circuit is completely de-energized for maintenance or service. These switches are crucial components in substations and distribution systems. Here are the key features of a typical 33/11kV disconnecting switch', '[\r\n  \"Voltage & Current Ratings: Nominal voltage is typically 33kV or 11kV, with rated currents ranging from 400A to 1600A depending on application. Short-time withstand current generally ranges from 16kA to 31.5kA for 1 to 3 seconds.\",\r\n  \"Type of Switch: Utilizes off-load switches that are operated when the line is de-energized, not intended for breaking load current. Available types include single-break, double-break, and centre-break configurations based on design requirements.\"\r\n]\r\n', 'Others', '2025-03-19 18:51:27', '2025-03-19 18:51:27'),
(25, 'reactAssets/Images/Product/12.jpg', 'Air Circuit Breakers (ACBs) rated up to 6300A', 'Air Circuit Breakers (ACBs) rated up to 6300A are high-capacity circuit breakers typically used in industrial and commercial power systems for protection, isolation, and control of electrical circuits. Here are the key features of ACBs up to 6300A', '[\r\n  \"Rated Current (In): Supports ratings up to 6300A for high-demand applications.\",\r\n  \"Rated Voltage (Ue): Typically designed for 690V AC systems, with variations depending on application.\",\r\n  \"Breaking Capacity (Icu/Ics): Ranges from 50kA to 150kA or higher, depending on the circuit breaker model and design.\"\r\n]\r\n', 'Others', '2025-03-19 18:51:27', '2025-03-19 18:51:27'),
(26, 'reactAssets/Images/Product/19.webp', 'Basic Specifications (Typical for MCCBs up to 1600A)', 'Circuit breakers are designed to provide protection for electrical systems, with current ratings ranging from 100A to 1600A. They feature varying breaking capacities, such as 36kA, 50kA, 65kA, 85kA, and up to 100kA at 415V AC, ensuring compatibility with different fault current levels. Available in 3P or 4P configurations, they support three-phase systems with or without a neutral connection. Typically rated for 415V AC operational voltage, some models can handle higher voltages depending on the brand. The insulation voltage is often up to 1000V for safe operation under high-voltage conditions. Circuit breakers come with thermal-magnetic trip mechanisms for basic applications and electronic trip mechanisms for adjustable and advanced protection. These features make them suitable for industrial, commercial, and specialized power systems.', '[\r\n  \"Current Rating (In): Ranges from approximately 100A to 1600A, depending on the application and model.\",\r\n  \"Breaking Capacity (Icu/Ics): Varies by model, with options such as 36kA, 50kA, 65kA, 85kA, or even 100kA at 415V AC.\",\r\n  \"Number of Poles: Available in 3-pole (3P) or 4-pole (4P) configurations.\",\r\n  \"Rated Voltage (Ue): Typically 415V AC, with higher ratings available depending on the brand and specifications.\",\r\n  \"Rated Insulation Voltage (Ui): Often rated up to 1000V for reliable insulation.\",\r\n  \"Trip Mechanism: Includes thermal-magnetic for basic applications and electronic for advanced protection with adjustable settings.\"\r\n]\r\n', 'Others', '2025-03-19 18:51:27', '2025-03-19 18:51:27'),
(27, 'reactAssets/Images/Product/18.jpg', 'P (Triple Pole), DP (Double Pole), and SP (Single Pole) MCBs (Miniature Circuit Breakers)', 'Here\'s a concise breakdown of the key features for TP (Triple Pole), DP (Double Pole), and SP (Single Pole) MCBs (Miniature Circuit Breakers)', '[\r\n  \"SP (Single Pole) MCB: Designed with 1 pole, connecting only the phase wire, for use in single-phase circuits. Rated for 230V AC, it protects a single live conductor and is commonly used in residential wiring. It offers a compact, space-saving design with short-circuit and overload protection.\",\r\n  \"DP (Double Pole) MCB: Features 2 poles to disconnect both the phase and neutral for single-phase circuits. Typically rated for 230V/240V AC, this MCB provides simultaneous disconnection of both conductors for enhanced safety during faults, making it ideal for appliances requiring full isolation.\",\r\n  \"TP (Triple Pole) MCB: Equipped with 3 poles, designed for use in three-phase systems with voltages typically rated for 400V AC. This MCB ensures protection across all three phases (R, Y, B), ideal for industrial and commercial applications.\"\r\n]\r\n', 'Others', '2025-03-19 18:51:27', '2025-03-19 18:51:27'),
(28, 'reactAssets/Images/Product/13.webp', '11kV Capacitor', 'Here are the key features of an 11kV capacitor, typically used in power factor correction and reactive power compensation in medium-voltage electrical networks', '[\r\n  \"Rated Current (In): Supports ratings up to 6300A for high-demand applications.\",\r\n  \"Rated Voltage (Ue): Typically designed for 690V AC systems, with variations depending on application.\",\r\n  \"Breaking Capacity (Icu/Ics): Ranges from 50kA to 150kA or higher, depending on the circuit breaker model and design.\"\r\n]\r\n', 'Others', '2025-03-19 18:51:27', '2025-03-19 18:51:27'),
(29, 'reactAssets/Images/Product/4.jpg', 'Technical Features', 'Voltage stabilizers are critical devices designed to ensure consistent and reliable power supply for high-power applications. With a capacity of up to 1250 kVA, they are suitable for industrial and commercial environments. The input voltage range typically varies from ±15% to ±40%, accommodating fluctuations such as 340V–460V in 3-phase systems. These stabilizers provide stabilized output voltage at 400V with a tight tolerance of ±1% or ±2%, ensuring precision for sensitive equipment. Correction speed ranges from 10–40 ms per volt, enabling rapid adjustments to voltage changes. Compatible with both 50 Hz and 60 Hz systems, these stabilizers are versatile and adaptable to various power systems worldwide.', '[\r\n  \"Capacity: Supports up to 1250 kVA for high-power applications.\",\r\n  \"Input Voltage Range: Typically varies from ±15% to ±40%, with an example range of 340V–460V for 3-phase systems.\",\r\n  \"Output Voltage: Stabilized at 400V with a tolerance of ±1% or ±2% for 3-phase systems.\",\r\n  \"Correction Speed: Adjusts at a rate of around 10–40 ms per volt, depending on the model.\",\r\n  \"Frequency: Compatible with both 50 Hz and 60 Hz systems.\"\r\n]\r\n', 'Others', '2025-03-19 18:51:27', '2025-03-19 18:51:27'),
(30, 'reactAssets/Images/Product/1.jpg', 'Early Streamer Emission (ESE) Lightning Protection System & Earthing System. (Chemical and Genera', 'Here’s a detailed breakdown of Early Streamer Emission (ESE) Lightning Protection System and the Earthing System, focusing on chemical and general key features', '[\r\n  \"Advanced Technology: ESE systems use a proactive method to intercept lightning strikes earlier than conventional lightning rods by emitting an upward streamer before a downward leader can reach ground level, thereby increasing the protection radius.\",\r\n  \"Extended Protection Radius: A single ESE air terminal can cover a larger area, up to 120 meters in radius, depending on its efficiency and height. This makes it suitable for wide-area protection, including buildings, industrial plants, and open grounds.\",\r\n  \"Time Advance Mechanism (ΔT): Refers to the time difference between when the ESE terminal emits a streamer compared to a standard rod. Common values for ΔT range from 10 µs to 60 µs.\",\r\n  \"Stainless Steel or Copper Alloy Construction: Made from corrosion-resistant materials that are highly conductive, ensuring long life even in harsh environmental conditions.\",\r\n  \"Compliance Standards: Typically tested and certified according to NF C 17-102, UNE 21186, or IEC 62305 standards for quality assurance.\",\r\n  \"Low Maintenance: Once installed, ESE systems require minimal maintenance, with periodic inspections sufficient to ensure continued reliability.\"\r\n]\r\n', 'Others', '2025-03-19 18:51:27', '2025-03-19 18:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `our_projects`
--

CREATE TABLE `our_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `commercial_operation_date` date NOT NULL DEFAULT '2025-03-17',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_projects`
--

INSERT INTO `our_projects` (`id`, `image`, `title`, `description`, `type`, `status`, `owner`, `area`, `commercial_operation_date`, `created_at`, `updated_at`) VALUES
(1, 'reactAssets/Images/Project/Matarbari.jepg', '400kV, 25MVAR Shunt Reactors GIS Substation ', 'Design, Supply, Installation, Testing, and Commissioning of 400kV GIS Substation\n25MVAR Three Phase Shunt Reactors at Matarbari  400kV GIS Substation with Associated Supply and Services on a Turnkey basis ', 'Grid Substations', 'Completed', 'Power Grid Company of Bangladesh (PGCB)', 'Matarbari, Bangladesh.', '2025-02-02', '2025-03-14 09:36:25', '2025-03-14 09:36:25'),
(2, 'reactAssets/Images/Project/BHANDARIA.jpeg', '132/33kV AIS Substation, Bhandaria.', 'Design, Supply, Installation, Testing, and Commissioning of 132/33kV AIS Substation\n50/75MVA Three Phase Power transformer  at Bhandaria 132/33kV AIS Substation with Associated Supply and Services on a Turnkey basis ', 'Grid Substations', 'Completed', 'Power Grid Company of Bangladesh (PGCB).', 'Bhandaria, Bangladesh.', '2025-01-28', '2025-03-14 09:36:25', '2025-03-14 09:36:25'),
(3, 'reactAssets/Images/Project/Mongla.jpeg', '132/33kV AIS Substation, Mongla.', 'Design, Supply, Installation, Testing, and Commissioning of 132/33kV AIS Substation\n50/75MVA Three Phase Power transformer  at Mongla 132/33kV AIS Substation with Associated Supply and Services on a Turnkey basis ', 'Grid Substations', ' Completed', 'Power Grid Company of Bangladesh (PGCB).', 'Mongla, Bangladesh.', '2025-03-29', '2025-03-14 09:36:25', '2025-03-14 09:36:25'),
(4, 'reactAssets/Images/Project/GOPALGONJ.jpeg', '132/33kV AIS Substation, Gopalganj.', 'Design, Supply, Installation, Testing, and Commissioning of 132/33kV AIS Substation\n80/120MVA Three Phase Power transformer  at Gopalgonj 132/33kV AIS Substation with Associated Supply and Services on a Turnkey basis ', 'Grid Substations', ' Running', 'Power Grid Company of Bangladesh (PGCB).', 'Gopalgonj, Bangladesh.', '2025-03-17', '2025-03-14 09:36:25', '2025-03-14 09:36:25'),
(5, 'reactAssets/Images/Project/UNITED GROUP.jpeg', 'United Healthcare, United City, \nUnited Group ', 'Analyzing and optimizing power distribution for industries and utilities.Providing expert electrical engineering solutions for industrial and commercial projects.', 'Commercial ', ' Completed', ' United', 'Madani Avenue, Badda , Dhaka', '2025-03-17', '2025-03-14 09:36:25', '2025-03-14 09:36:25'),
(6, 'reactAssets/Images/Project/IPCO.jpeg', ' IPCO Developments BD. Ltd, Airport. \nUnited Group ', '    IPCO Developments BD. Ltd, Airport. \nUnited Group ', 'Commercial ', ' Completed', ' United', 'Dhaka', '2025-03-17', '2025-03-14 09:36:25', '2025-03-14 09:36:25'),
(7, 'reactAssets/Images/Project/GULSHAN CENTER POINT.jpeg', '    3. Gulshan Center Point (GCP), Gulshan 2. \nUnited Group ', 'Providing expert electrical engineering solutions for industrial and commercial projects.Providing expert electrical engineering solutions for industrial and commercial projects.', 'Commercial ', 'Completed', ' United', 'Dhaka', '2025-03-17', '2025-03-14 09:36:25', '2025-03-14 09:36:25'),
(8, 'reactAssets/Images/Project/SIMANTO SHAMVER.jpeg', 'Shiamto Shombhar, BGB Headquaters, Pilkhana, Dhaka', 'Analyzing and optimizing power distribution for industries and utilities.Providing expert electrical engineering solutions for industrial and commercial projects.', 'Commercial ', 'Completed', 'Shimanto Shombhar Shopping Complex', 'Pilkhana, Dhaka.', '2025-03-17', '2025-03-14 09:36:25', '2025-03-14 09:36:25'),
(9, 'reactAssets/Images/Project/EAST WEST MEDICAL COLLAGE.jpeg', 'East West Medical College Hospital.', 'Analyzing and optimizing power distribution for industries and utilities.', 'Commercial ', 'Completed', 'East West Medical College Hospital:', ' Narayanganj', '2025-03-17', '2025-03-14 09:36:25', '2025-03-14 09:36:25'),
(10, 'reactAssets/Images/Project/BEOL.jpeg', 'BEOL,Rupshi, Narayanganj', 'Analyzing and Providing expert electrical engineering solutions for industrial and commercial projects.optimizing power distribution for industries and utilities.', 'Industrial Projects', 'Completed', 'Bangladesh Edible Oil Limited(BEOL).', ' Narayanganj', '2025-03-17', '2025-03-14 09:36:25', '2025-03-14 09:36:25'),
(12, 'reactAssets/Images/Project/MARCER KNIT.jpeg', 'Marcer Knit Composite, Asulia, Savar, Dhaka', 'Offering consulting and implementation for solar and wind energy systems.Providing expert electrical engineering solutions for industrial and commercial projects.', 'Industrial Projects', 'Completed', 'Marcer Knit Composite', ' Savar', '2025-03-17', '2025-03-14 09:36:25', '2025-03-14 09:36:25'),
(13, 'reactAssets/Images/Project/METRO KNIT.jpeg', 'Power Distribution Analysis', 'Metro Knit Composite, Asulia, Savar, Dhaka', 'Industrial Projects', 'Completed', 'Metro Knit Composite', ' Savar', '2025-03-17', '2025-03-14 09:36:25', '2025-03-14 09:36:25'),
(14, 'reactAssets/Images/Project/AHAMED WOOD.jpeg', 'Ahmed Wood Crafts (PVT.) Ltd, Saidpur', 'Designing and installing industrial automation and SCADA systems.Providing expert electrical engineering solutions for industrial and commercial projects.', 'Industrial Projects', 'Completed', 'Ahmed Wood Crafts(PVT.) Ltd.', ' Saidpur', '2025-03-17', '2025-03-14 09:36:25', '2025-03-14 09:36:25'),
(15, 'reactAssets/Images/Project/SOLAR.jpeg', 'Power Plant', 'Designing and installing industrial automation and SCADA systems.Providing expert electrical engineering solutions for industrial and commercial projects.', 'Power Plant', ' Completed', ' PGCB', 'Ishwardi, Pabna', '2025-03-17', '2025-03-14 09:36:25', '2025-03-14 09:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `our_services`
--

CREATE TABLE `our_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_services`
--

INSERT INTO `our_services` (`id`, `icon`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'reactAssets/Images/Service/cloud.png', 'Erection, Testing & Commissioning ', 'We deliver precise and safe electrical system erection services, adhering to technical standards. Our expert engineers ensure thorough testing and verification to guarantee optimal functionality and performance post-installation.', '2025-03-13 19:53:31', '2025-03-13 19:53:31'),
(2, 'reactAssets/Images/Service/CustomSoftware.png', 'Project Consulting ', 'We provide consultancy services for HV/MV/LV  substation projects, power plants and Industrial, commercial projects and others.', '2025-03-13 19:53:31', '2025-03-13 19:53:31'),
(3, 'reactAssets/Images/Service/DigitalMarketing.png', 'Project Management', 'Our dedicated professionals oversee the entire project management process, adhering strictly to technical specifications. We ensure all tasks are performed with precision, safety, and excellence, following approved method statements for quality workmanship.', '2025-03-13 19:53:31', '2025-03-13 19:53:31'),
(4, 'reactAssets/Images/Service/DomainHosting.png', 'Engineering Design', 'We deliver exceptional design and engineering solutions, leveraging a team of highly skilled and experienced professionals combined with cutting-edge technology.Our dedicated professionals oversee the entire project management process, adhering strictly to technical specifications. ', '2025-03-14 09:03:53', '2025-03-14 09:03:53'),
(5, 'reactAssets/Images/Service/DomainHosting.png', 'Substation', 'We offer to 400kV,230kV,132kV,33kV,11kV & 0.4kV   substation solutions, incorporating advanced designs, top-tier engineering expertise, and robust technologies to ensure reliable and efficient power distribution.', '2025-03-14 09:03:53', '2025-03-14 09:03:53'),
(6, 'reactAssets/Images/Service/DomainHosting.png', 'ETC', 'We specialize in providing efficient erection services for electrical systems, ensuring precision, safety, and adherence to technical standards to deliver high-quality installations. Our experienced engineers are involved in verifying the functionality and performance of systems or equipment after installation. ', '2025-03-14 09:03:53', '2025-03-14 09:03:53'),
(7, 'reactAssets/Images/Service/DomainHosting.png', 'Automation', 'We offer comprehensive automation solutions for industrial and substation settings, employing advanced control systems like SCADA, PLCs, and robotics. Our expertise ensures streamlined operations, increased efficiency, reduced human intervention, and reliable monitoring and control of processes.', '2025-03-14 09:03:53', '2025-03-14 09:03:53'),
(8, 'reactAssets/Images/Service/DomainHosting.png', 'Operation Maintenance', 'We deliver comprehensive after-sales support and advanced services, offering seamless solutions for the complete operation and maintenance (O&M) of substations.', '2025-03-14 09:03:53', '2025-03-14 09:03:53'),
(9, 'reactAssets/Images/Service/DomainHosting.png', 'Civil & Electro-Mechanical', ' We specialize in delivering comprehensive Civil and Electro-Mechanical Construction solutions, combining expertise in structural works with the seamless integration of electrical and mechanical systems. ', '2025-03-14 09:03:53', '2025-03-14 09:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `our_solutions`
--

CREATE TABLE `our_solutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_solutions`
--

INSERT INTO `our_solutions` (`id`, `icon`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'reactAssets/Images/Service/e-commerce.png', 'Substation Solution', 'We offer comprehensive substation solutions across High Voltage (HV), Medium Voltage (MV), and Low Voltage (LV) systems. Our services include advanced design, efficient implementation, and reliable operation to meet diverse power distribution and management needs.', '2025-03-14 09:11:28', '2025-03-14 09:11:28'),
(2, 'reactAssets/Images/Service/e-commerce.png', 'Manufacturing & Electrical Equipment', ' We provide innovative solutions for manufacturing and electrical equipment, focusing on high-quality production and advanced technology integration.', '2025-03-14 09:11:28', '2025-03-14 09:11:28'),
(3, 'reactAssets/Images/Service/e-commerce.png', 'Generator & Synchronization', 'We specialize in installing and managing generators and advanced synchronization solutions, ensuring consistent and reliable energy supply tailored to your operational needs.', '2025-03-14 09:11:28', '2025-03-14 09:11:28'),
(4, 'reactAssets/Images/Service/e-commerce.png', 'Transmission & Distribution ', 'Our company has extensive experience in Transmission and Distribution up to 230kV , delivering efficient and reliable power solutions', '2025-03-14 09:11:28', '2025-03-14 09:11:28'),
(5, 'reactAssets/Images/Service/e-commerce.png', 'MEP Solution', 'We offer comprehensive MEP (Mechanical, Electrical, and Plumbing) solutions, ensuring seamless integration of systems. Our services focus on delivering efficient designs, installations, and maintenance to meet diverse operational requirements with precision and reliability for industrial, commercial, Hotels etc.', '2025-03-14 09:11:28', '2025-03-14 09:11:28'),
(6, 'reactAssets/Images/Service/e-commerce.png', 'Logistic & Transportation', 'We deliver reliable logistics and transportation solutions, ensuring efficient movement of goods and materials. Our services are designed to optimize supply chain operations, providing timely and cost-effective transport tailored to your needs.', '2025-03-14 09:11:28', '2025-03-14 09:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `press`
--

CREATE TABLE `press` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `when` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `press`
--

INSERT INTO `press` (`id`, `image`, `title`, `description`, `place`, `time`, `when`, `created_at`, `updated_at`) VALUES
(1, 'reactAssets/Images/HomePress/1.jpeg', 'Modernization and capacity enhancement of BREB networks (Khulna Division) Project under BREB', 'Contract Signing: Design, Supply, Installation, Testing, and Commissioning of 12 Nos 33kV GIS substation including Substation Automation System of Value 26Million USD approx. This includes all civil works, land development, and other related tasks, fully completed as required on a turn-key basis.', 'Khulna Division', '10:00 AM', '2024-03-10', NULL, NULL),
(2, 'reactAssets/Images/HomePress/2.jpg', 'Modernization and capacity enhancement of BREB networks (Khulna Division) Project under BREB', 'Contract Signing: Design, Supply, Installation, Testing, and Commissioning of 12 Nos 33kV GIS substation including Substation Automation System of Value 26Million USD approx. This includes all civil works, land development, and other related tasks, fully completed as required on a turn-key basis.', 'Khulna Division', '11:00 AM', '2024-03-12', NULL, NULL),
(3, 'reactAssets/Images/HomePress/3.jpg', 'Modernization and capacity enhancement of BREB networks (Khulna Division) Project under BREB', 'Contract Signing: Design, Supply, Installation, Testing, and Commissioning of 12 Nos 33kV GIS substation including Substation Automation System of Value 26Million USD approx. This includes all civil works, land development, and other related tasks, fully completed as required on a turn-key basis.', 'Khulna Division', '12:00 PM', '2024-03-15', NULL, NULL),
(4, 'reactAssets/Images/HomePress/1.jpeg', 'New Project Launch in Dhaka City', 'We are excited to announce the launch of a new multi-million dollar project aimed at improving infrastructure in Dhaka city. This project will focus on road development, urban mobility, and creating green spaces.', 'Dhaka', '2:00 PM', '2024-04-01', NULL, NULL),
(5, 'reactAssets/Images/HomePress/2.jpg', 'New Project Launch in Dhaka City', 'We are excited to announce the launch of a new multi-million dollar project aimed at improving infrastructure in Dhaka city. This project will focus on road development, urban mobility, and creating green spaces.', 'Dhaka', '3:00 PM', '2024-04-03', NULL, NULL),
(6, 'reactAssets/Images/HomePress/3.jpg', 'New Project Launch in Dhaka City', 'We are excited to announce the launch of a new multi-million dollar project aimed at improving infrastructure in Dhaka city. This project will focus on road development, urban mobility, and creating green spaces.', 'Dhaka', '4:00 PM', '2024-04-05', NULL, NULL),
(7, 'reactAssets/Images/HomePress/1.jpeg', 'Modernization and capacity enhancement of BREB networks (Khulna Division) Project under BREB', 'Contract Signing: Design, Supply, Installation, Testing, and Commissioning of 12 Nos 33kV GIS substation including Substation Automation System of Value 26Million USD approx. This includes all civil works, land development, and other related tasks, fully completed as required on a turn-key basis.', 'Khulna Division', '10:00 AM', '2024-03-10', NULL, NULL),
(8, 'reactAssets/Images/HomePress/2.jpg', 'Modernization and capacity enhancement of BREB networks (Khulna Division) Project under BREB', 'Contract Signing: Design, Supply, Installation, Testing, and Commissioning of 12 Nos 33kV GIS substation including Substation Automation System of Value 26Million USD approx. This includes all civil works, land development, and other related tasks, fully completed as required on a turn-key basis.', 'Khulna Division', '11:00 AM', '2024-03-12', NULL, NULL),
(9, 'reactAssets/Images/HomePress/3.jpg', 'Modernization and capacity enhancement of BREB networks (Khulna Division) Project under BREB', 'Contract Signing: Design, Supply, Installation, Testing, and Commissioning of 12 Nos 33kV GIS substation including Substation Automation System of Value 26Million USD approx. This includes all civil works, land development, and other related tasks, fully completed as required on a turn-key basis.', 'Khulna Division', '12:00 PM', '2024-03-15', NULL, NULL),
(10, 'reactAssets/Images/HomePress/1.jpeg', 'Modernization and capacity enhancement of BREB networks (Khulna Division) Project under BREB', 'Contract Signing: Design, Supply, Installation, Testing, and Commissioning of 12 Nos 33kV GIS substation including Substation Automation System of Value 26Million USD approx. This includes all civil works, land development, and other related tasks, fully completed as required on a turn-key basis.', 'Khulna Division', '10:00 AM', '2024-03-10', NULL, NULL),
(11, 'reactAssets/Images/HomePress/2.jpg', 'Modernization and capacity enhancement of BREB networks (Khulna Division) Project under BREB', 'Contract Signing: Design, Supply, Installation, Testing, and Commissioning of 12 Nos 33kV GIS substation including Substation Automation System of Value 26Million USD approx. This includes all civil works, land development, and other related tasks, fully completed as required on a turn-key basis.', 'Khulna Division', '11:00 AM', '2024-03-12', NULL, NULL),
(12, 'reactAssets/Images/HomePress/3.jpg', 'Modernization and capacity enhancement of BREB networks (Khulna Division) Project under BREB', 'Contract Signing: Design, Supply, Installation, Testing, and Commissioning of 12 Nos 33kV GIS substation including Substation Automation System of Value 26Million USD approx. This includes all civil works, land development, and other related tasks, fully completed as required on a turn-key basis.', 'Khulna Division', '12:00 PM', '2024-03-15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('832edTtAoIgj45LYhAumdRxAdna2nGUj76Er0fcJ', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1N0bGFEdFlVM0tpTE1uQUtsY1dEb1I5NURrdlVsaGlmQjdrYzV5cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9qZWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1744299450),
('m50yYpBzp2PlxJkMG5E6ZtXB76urzWgKDjAPeDbo', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkNHM3N6SGNvMk1uMmQ3ZjkycFJ2RmRuY25OekVEazExZTM4SzJNSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1744217405),
('xuOr02zxerh7AjyEbsqFBuJMhbHp2UUetFxdv0KY', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicU4wMUpSS1B2REZIdnJqUE43V1A3dEdlaU1oalk1VWpZMzh1TU1tWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1744238226);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `equipment_lists`
--
ALTER TABLE `equipment_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forms_email_unique` (`email`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaders`
--
ALTER TABLE `leaders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leaders_email_unique` (`email`);

--
-- Indexes for table `management_tables`
--
ALTER TABLE `management_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_customers`
--
ALTER TABLE `our_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_partners`
--
ALTER TABLE `our_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_products`
--
ALTER TABLE `our_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_projects`
--
ALTER TABLE `our_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_services`
--
ALTER TABLE `our_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_solutions`
--
ALTER TABLE `our_solutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `press`
--
ALTER TABLE `press`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `equipment_lists`
--
ALTER TABLE `equipment_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaders`
--
ALTER TABLE `leaders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `management_tables`
--
ALTER TABLE `management_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `our_customers`
--
ALTER TABLE `our_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `our_partners`
--
ALTER TABLE `our_partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `our_products`
--
ALTER TABLE `our_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `our_projects`
--
ALTER TABLE `our_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `our_services`
--
ALTER TABLE `our_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `our_solutions`
--
ALTER TABLE `our_solutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `press`
--
ALTER TABLE `press`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
