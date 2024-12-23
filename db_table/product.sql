-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2024 at 07:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'php', 'gdgrfgr', '17340148578633448d8af1a43098d1498d0d4aa9b2.png', 'Active', '2024-12-12 09:17:38', '2024-12-12 09:17:38'),
(2, 'laravel', 'gdgbsd', '1734014936254f940188a2b5c73d86319e35a40eca.png', 'Active', '2024-12-12 09:18:56', '2024-12-12 09:18:56'),
(3, 'node js ', 'gdgbsdbgvbg', '1734015069254f940188a2b5c73d86319e35a40eca.png', 'Active', '2024-12-12 09:21:10', '2024-12-12 10:10:21'),
(4, 'react js era', 'react is getting more line light and securing more jobs in the market due its highly efficiency features .\r\n\r\nThe shimmering light of the morning sun danced across the surface of the calm lake. Birds chirped in harmony, creating a symphony that blended seamlessly with the gentle rustling of the leaves. A curious', '1734628473473c6361254a12da713c7634b5113d2a.jpg', 'Active', '2024-12-19 11:44:34', '2024-12-19 11:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(6, 'Fiona Green1', 'fiona.green@example.com1', 'Thanks for the update!000', '2024-11-30 16:37:17', '2024-12-01 13:17:19'),
(7, 'George White taylor', 'george.white@example.com', 'Please share more details.', '2024-11-30 16:37:17', '2024-12-02 08:44:29'),
(8, 'j', 'h@h.com', 'h', '2024-11-30 16:37:17', '2024-12-01 13:06:04'),
(9, 'Ian Moore', 'ian.moore@example.com', 'Let me know your thoughts.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(10, 'Jessica Taylor', 'jessica.taylor@example.com', 'This is a follow-up message.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(11, 'Kyle Johnson', 'kyle.johnson@example.com', 'Great to hear from you!', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(12, 'Liam Carter', 'liam.carter@example.com', 'I need help with my account.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(13, 'Mia Clark', 'mia.clark@example.com', 'Can you send the documents?', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(14, 'Nathaniel Wilson', 'nathaniel.wilson@example.com', 'What are the next steps?', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(15, 'Olivia Anderson', 'olivia.anderson@example.com', 'Thank you for your quick reply.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(16, 'Paul Walker', 'paul.walker@example.com', 'Let’s catch up soon!', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(17, 'Quincy Baker', 'quincy.baker@example.com', 'Can you clarify this point?', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(18, 'Rachel King', 'rachel.king@example.com', 'Here is my feedback.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(19, 'Sam Peterson', 'sam.peterson@example.com', 'I would like to know more.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(20, 'Tina Martin', 'tina.martin@example.com', 'Looking forward to your input.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(21, 'Uma Harris', 'uma.harris@example.com', 'Please confirm receipt.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(22, 'Victor Bell', 'victor.bell@example.com', 'Thanks for your help.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(23, 'Wendy Young', 'wendy.young@example.com', 'Please call me back.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(24, 'Xander Lee', 'xander.lee@example.com', 'Let’s discuss this tomorrow.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(25, 'Yara Perez', 'yara.perez@example.com', 'What’s your opinion on this?', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(26, 'Zane Hall', 'zane.hall@example.com', 'Happy to assist!', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(27, 'Andrew Scott', 'andrew.scott@example.com', 'Here’s my proposal.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(28, 'Bethany Clark', 'bethany.clark@example.com', 'Please share the agenda.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(29, 'Connor Evans', 'connor.evans@example.com', 'Thanks for your patience.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(30, 'Derek Carter', 'derek.carter@example.com', 'I’ll review and get back.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(31, 'Emily Wright', 'emily.wright@example.com', 'Can you elaborate?', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(32, 'Franklin Webb', 'franklin.webb@example.com', 'Good to connect again.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(33, 'Grace Mitchell', 'grace.mitchell@example.com', 'Please approve the request.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(34, 'Harold Brooks', 'harold.brooks@example.com', 'Here are the details.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(35, 'Isla Hughes', 'isla.hughes@example.com', 'Do you need any more info?', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(36, 'James Murphy', 'james.murphy@example.com', 'Looking forward to it.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(37, 'Katherine Ford', 'katherine.ford@example.com', 'Thanks for your time.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(38, 'Lucas Rivera', 'lucas.rivera@example.com', 'I’ll update you soon.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(39, 'Megan Ortiz', 'megan.ortiz@example.com', 'What’s the next milestone?', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(40, 'Noah Bailey', 'noah.bailey@example.com', 'Please let me know.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(41, 'Olga Griffin', 'olga.griffin@example.com', 'Great work on this!', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(42, 'Patrick Reed', 'patrick.reed@example.com', 'Any updates on this?', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(43, 'Quinn Howard', 'quinn.howard@example.com', 'Let’s wrap this up.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(44, 'Ruby Torres', 'ruby.torres@example.com', 'Thank you for the clarification.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(45, 'Steven Coleman', 'steven.coleman@example.com', 'Can you verify this?', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(46, 'Tara Perry', 'tara.perry@example.com', 'Please finalize the draft.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(47, 'Umar Edwards', 'umar.edwards@example.com', 'Can you confirm this?', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(48, 'Victor Wright', 'victor.wright@example.com', 'This looks good to me.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(49, 'Willow Bennett', 'willow.bennett@example.com', 'Please check the attachment.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(50, 'Xena Palmer', 'xena.palmer@example.com', 'I’m sharing the file.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(51, 'Yusuf Hunter', 'yusuf.hunter@example.com', 'Hope this helps.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(52, 'Zoey Price', 'zoey.price@example.com', 'Do let me know.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(53, 'Adam Watson', 'adam.watson@example.com', 'What’s the timeline?', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(54, 'Brenda Stone', 'brenda.stone@example.com', 'Here’s the invoice.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(55, 'Caleb Morgan', 'caleb.morgan@example.com', 'Can we reschedule?', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(56, 'Danielle James', 'danielle.james@example.com', 'All clear from my side.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(57, 'Ethan Hayes', 'ethan.hayes@example.com', 'I’ll handle this.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(58, 'Fiona Cox', 'fiona.cox@example.com', 'Please reach out soon.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(59, 'George Foster', 'george.foster@example.com', 'Do we need changes?', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(60, 'Hailey Bennett', 'hailey.bennett@example.com', 'Here’s the status.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(61, 'Ian Nelson', 'ian.nelson@example.com', 'We’re on track.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(62, 'Jenna Young', 'jenna.young@example.com', 'Please review and confirm.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(63, 'Kurt Adams', 'kurt.adams@example.com', 'I’ll send updates.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(64, 'Lila Cook', 'lila.cook@example.com', 'Kindly approve this.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(65, 'Mason Bell', 'mason.bell@example.com', 'Thanks for following up.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(66, 'Natalie Long', 'natalie.long@example.com', 'All good on my end.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(67, 'Oliver Torres', 'oliver.torres@example.com', 'This looks perfect.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(68, 'Paula Ross', 'paula.ross@example.com', 'Let’s proceed.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(69, 'Quentin King', 'quentin.king@example.com', 'Can you provide an update?', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(70, 'Rachel Edwards', 'rachel.edwards@example.com', 'Let me check on this.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(71, 'Sophia Stewart', 'sophia.stewart@example.com', 'Here’s my take on this.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(72, 'Travis Jenkins', 'travis.jenkins@example.com', 'What’s the ETA?', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(73, 'Ursula Brown', 'ursula.brown@example.com', 'Good job on this!', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(74, 'Victor Young', 'victor.young@example.com', 'Let’s sync up tomorrow.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(75, 'Wanda Green', 'wanda.green@example.com', 'Sending the details shortly.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(76, 'Xavier Scott', 'xavier.scott@example.com', 'Please share the feedback.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(77, 'Yvette Harris', 'yvette.harris@example.com', 'Looking forward to your reply.', '2024-11-30 16:37:17', '2024-11-30 16:37:17'),
(78, 'ffff', 'f@d.com', 'ff', '2024-12-01 12:29:37', '2024-12-01 12:29:37'),
(79, 'dfds', 'f@dd.com', 'dddd', '2024-12-01 12:32:17', '2024-12-01 12:32:17'),
(80, 'dfds', 'f@dd.com', 'dddd', '2024-12-01 12:32:45', '2024-12-01 12:32:45'),
(81, 'ddd', 'd@d.com', 'q', '2024-12-01 12:38:34', '2024-12-01 12:38:34'),
(82, 'dsd', 'd@dd.com', 'fdfdfdf', '2024-12-01 12:41:09', '2024-12-01 12:41:09'),
(83, 'dsd', 'd@dd.com', 'fdfdfdf', '2024-12-01 12:41:43', '2024-12-01 12:41:43'),
(84, 'dd', 'd@d.com', 'wwww', '2024-12-01 12:45:55', '2024-12-01 12:45:55'),
(85, 'kas', 'k@k.com', 'hh', '2024-12-01 13:16:40', '2024-12-01 13:16:40'),
(86, 'xzv', 'zxvdzx@gmail.com', 'egrg', '2024-12-02 08:10:41', '2024-12-02 08:10:41'),
(87, 'csc', 'cs@gmail.com', 'dsvds', '2024-12-02 08:13:25', '2024-12-02 08:13:25'),
(88, 'cs', 'c@gmaol.com', 'vdsv', '2024-12-02 08:14:32', '2024-12-02 08:14:32'),
(89, 'cs', 'c@gmaol.com', 'vdsv', '2024-12-02 08:14:36', '2024-12-02 08:14:36'),
(90, 'cs', 'c@gmaol.com', 'vdsv', '2024-12-02 08:15:47', '2024-12-02 08:15:47'),
(91, 'cs', 'c@gmaol.com', 'vdsv', '2024-12-02 08:16:12', '2024-12-02 08:16:12'),
(92, 'csa', 'csa@gmail.com', 'dvdv', '2024-12-02 08:21:29', '2024-12-02 08:21:29'),
(93, 'cdc', 'dc@Gmail.comcdwvc', 'vd', '2024-12-02 08:23:00', '2024-12-02 08:23:00'),
(94, 'xsac', 'cs', 'csc', '2024-12-02 08:24:09', '2024-12-02 08:24:09'),
(95, 'xsac', 'sa@gmail.com', 'cdv', '2024-12-02 08:42:04', '2024-12-02 08:42:04');

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
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(15, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(16, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(17, '2016_06_01_000004_create_oauth_clients_table', 1),
(18, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(21, '2022_07_23_160720_create_products_table', 1),
(22, '2024_11_21_033821_create_contacts_table', 1),
(23, '2024_12_02_151833_create_blogs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00f01b058f3f38a79c368308576d05dceedf45221154cc768aded91fda12ab54d137d892e08fdf45', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:25:18', '2024-11-30 09:25:18', '2025-11-30 14:55:18'),
('02ea6cdb3146b814712affdf9029c0ea89f1ae9c6c6d7965d123f643cd41b1689e61ee87d347c5c1', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:44:14', '2024-11-30 09:44:14', '2025-11-30 15:14:14'),
('0cf54e79585181af7e95d0fce80dfcc65e5c80e777c12b1c17a66f7ff9353dc497c5811be31f90b4', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:10:33', '2024-11-30 09:10:33', '2025-11-30 14:40:33'),
('0f6087a8907f0e144aa53528316729ce6f5d88483f0d6fed1ef20d68281865f942d5e55df48914b8', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:32:06', '2024-11-30 09:32:06', '2025-11-30 15:02:06'),
('10ac4bac62546db77fc78bbd69d5c9e4d7033ce6ebf7aeafd5d2ad515fbc353b3b9131186db3d75f', 1, 1, 'auth_token', '[]', 0, '2024-12-09 04:41:32', '2024-12-09 04:41:32', '2025-12-09 10:11:32'),
('174da85a2779d892eacddaac896eb431a7610f49ef26980f94cafce5928b7d2a3d80f1224f673a5a', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:29:31', '2024-11-30 09:29:31', '2025-11-30 14:59:31'),
('1a6a70df2c1770e4a4b453f27234dbe2788557ef29f141ad13876bd4e8aed715910b1d710aa3d405', 1, 1, 'auth_token', '[]', 0, '2024-12-17 06:39:40', '2024-12-17 06:39:40', '2025-12-17 12:09:40'),
('201bdac5c4e23d0f8c73990ccca6b2b764dba290c11d721600201775fda6221c804d8caee9053dc5', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:36:24', '2024-11-30 09:36:24', '2025-11-30 15:06:24'),
('2111acb6e3b6b8dc34134a7b8d9423b51017e42833fbd56329f319580c11c5d3f7177d6c08864e4e', 1, 1, 'auth_token', '[]', 0, '2024-12-19 12:19:45', '2024-12-19 12:19:45', '2025-12-19 17:49:45'),
('223d7cfcdf9b0556f606d3014ce23b7947b0ac54f6d641e897712af8242eb0c508353949a7e24850', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:31:55', '2024-11-30 09:31:55', '2025-11-30 15:01:55'),
('233b30e326619e48712e91b8db1c76d48e80a5afe80331609b286be4b801f9c8148ad0ba42a0ba21', 1, 1, 'auth_token', '[]', 0, '2024-12-09 04:30:02', '2024-12-09 04:30:02', '2025-12-09 10:00:02'),
('23656d772cae743aefb205e5f963145e0138a5f3e3acece82666a9033990ac2b41ae698752647c31', 1, 1, 'auth_token', '[]', 0, '2024-12-23 11:56:08', '2024-12-23 11:56:08', '2025-12-23 17:26:08'),
('25fdd1d7e2f481f32d249e8a15ec8058b7f67069f21d81df2de43a58955ede9d893b505b4a6c6f95', 1, 1, 'auth_token', '[]', 0, '2024-12-19 12:50:55', '2024-12-19 12:50:55', '2025-12-19 18:20:55'),
('295b1585ff665925f9e419120d09eed1a58404c51aa7640f800e90330d6e7061c05ce6d53eb9e944', 1, 1, 'auth_token', '[]', 0, '2024-11-30 08:14:10', '2024-11-30 08:14:10', '2025-11-30 13:44:10'),
('2ab5c54e2fbcee8972f4c9a03a5ab6670000af147ea15cd503c8e03b8ed5a2573d13e5da28ea89ce', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:43:23', '2024-11-30 09:43:23', '2025-11-30 15:13:23'),
('2e62572e28eebcab67e4297d42edb372ccd4ef4cf10dd18f84a97b4e9bac55fe3e15352feb8860e0', 1, 1, 'auth_token', '[]', 0, '2024-12-19 12:19:53', '2024-12-19 12:19:53', '2025-12-19 17:49:53'),
('2e9675ed776b81dc23ada30ce15a06212889638fd89f657e53b60a593b37b7769f91c68b29902db4', 1, 1, 'auth_token', '[]', 0, '2024-12-23 11:55:57', '2024-12-23 11:55:57', '2025-12-23 17:25:57'),
('323c5336c8028f09697a17bd2780f49667ac7e2aeb6163825876624dc9dc8fe116a7eddb8f0df7aa', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:43:46', '2024-11-30 09:43:46', '2025-11-30 15:13:46'),
('3c1d8f59912fe35ffa111c80d4dcecfec2dac59a00ffb2d2345201b44f02ab518fa423b1ada53f99', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:55:11', '2024-11-30 09:55:11', '2025-11-30 15:25:11'),
('3ca6a1cb33ea013b081ada18883ffd1232a202920b70326f904b33ce28a7e82c0c88ea43cd6a3efb', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:19:10', '2024-11-30 09:19:10', '2025-11-30 14:49:10'),
('3d352e52618e873109d5b0cd39a68ba5d5f5f4735b7095496b7b6090c62a1abf03c84adc76febb08', 1, 1, 'auth_token', '[]', 0, '2024-11-30 12:41:47', '2024-11-30 12:41:47', '2025-11-30 18:11:47'),
('3fde09c7b05115cb734878054b0cddc1657df66642257c983fb284b90ad17ed75724ab839db0baac', 1, 1, 'auth_token', '[]', 0, '2024-11-30 08:13:33', '2024-11-30 08:13:33', '2025-11-30 13:43:33'),
('4137ef3155a503618815a4ee5775fdcce57a8f19556ef3e141cb9ca07182ae593504597cedcc6513', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:07:33', '2024-11-30 09:07:33', '2025-11-30 14:37:33'),
('44f378070e3279fa1481d9747f4bb0bd0002cb73d0a07b1600a29771c868eefd60bac5359e7c95d8', 1, 1, 'auth_token', '[]', 0, '2024-11-30 08:19:49', '2024-11-30 08:19:49', '2025-11-30 13:49:49'),
('47a34e8fde1102c4b5810d69c020960fe76f806fb252d30e7ddd2672cb05872e71f9bc65678827dd', 1, 1, 'auth_token', '[]', 0, '2024-12-23 11:56:06', '2024-12-23 11:56:06', '2025-12-23 17:26:06'),
('4d851bc9d8b930246f4b428910deb341a6ed95c3bfaabb6c2bc69337cee9dcb72e5c9002eec71d64', 1, 1, 'auth_token', '[]', 0, '2024-12-19 12:19:01', '2024-12-19 12:19:01', '2025-12-19 17:49:01'),
('5115ca0ccda069f3a4170602558d74e3ebed3a0040a035b3b302121c145130fa738c3dea62772b79', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:36:42', '2024-11-30 09:36:42', '2025-11-30 15:06:42'),
('527784406a45d90d21f42ded077347696c989223ab0dddac37dc86f34c7851081bb6fb9a17bfb8bd', 1, 1, 'auth_token', '[]', 0, '2024-12-23 11:56:05', '2024-12-23 11:56:05', '2025-12-23 17:26:05'),
('56085424b9814c50ed289123463d2e0c341ef81fa059916fdbed011c416ee67e0ce3bb3639bca1d1', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:30:15', '2024-11-30 09:30:15', '2025-11-30 15:00:15'),
('56301efef9117438dea887244bf26e6aa20d11f3263d793c33041a09c99b605efb848b4d7483b91a', 1, 1, 'auth_token', '[]', 0, '2024-12-19 11:42:39', '2024-12-19 11:42:39', '2025-12-19 17:12:39'),
('5b83e4e3b0a5919ce6c8f22ce2e55a70afe9b1284f285ca7776f21c90f6e99238b78953be89f60df', 1, 1, 'auth_token', '[]', 0, '2024-11-30 10:05:09', '2024-11-30 10:05:09', '2025-11-30 15:35:09'),
('5c97264291fcb98c4ba8224a7a895d8a380fe2a1ae73a015db2b1e9caa8189c9a741341d20fc0427', 1, 1, 'auth_token', '[]', 0, '2024-11-30 08:53:47', '2024-11-30 08:53:47', '2025-11-30 14:23:47'),
('65ae00afbbfabb10e0d9b922006fd4136c24e7021666d5cbde59188aa9976c481c43a4aed789daeb', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:34:53', '2024-11-30 09:34:53', '2025-11-30 15:04:53'),
('6dee96b1b291963b01936474ce33d90ee23b757ea666c25a1bc0336f56c66b4409f0aa56e15cf06a', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:29:56', '2024-11-30 09:29:56', '2025-11-30 14:59:56'),
('710bd8ec2dc3b986d301432e3cd4088779d7b3bec2ca20b6fddb3bca2e19a469250b08600304b466', 1, 1, 'auth_token', '[]', 0, '2024-11-30 12:42:01', '2024-11-30 12:42:01', '2025-11-30 18:12:01'),
('71e54bd0ce514245a8f026c27bd2d3d5606fb4abf245e4a285ab892250fdd8dfb1c515d1208518ee', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:32:29', '2024-11-30 09:32:29', '2025-11-30 15:02:29'),
('71eb0e481b0d6646cd9a7e2e2a33731cdc0683e7da344db3c97bc11c12fe465d020d3a15b498f802', 1, 1, 'auth_token', '[]', 0, '2024-11-30 12:41:50', '2024-11-30 12:41:50', '2025-11-30 18:11:50'),
('728b4539cc669f52de7322de7a60dd6e05c090de8740c617d2c032e974af95dc051e8a7d5d79fa33', 1, 1, 'auth_token', '[]', 0, '2024-11-30 10:05:41', '2024-11-30 10:05:41', '2025-11-30 15:35:41'),
('7583e80afa4e9cfd773f784631d0eb8e6a0cb54eb64fc9b702385ca03ddd9fc42f80e9e889ad5db8', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:08:39', '2024-11-30 09:08:39', '2025-11-30 14:38:39'),
('781399d2e41a5affd92864c04fb6a67b94aa37f0ce7ca0b654d2d35bf43d63914ce07d7402af071c', 1, 1, 'auth_token', '[]', 0, '2024-11-30 08:53:28', '2024-11-30 08:53:28', '2025-11-30 14:23:28'),
('78946b56143f470acd61d88d5db30698f80c95a8df05013dca5b04d3aa775b954f5eb385863a5847', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:18:29', '2024-11-30 09:18:29', '2025-11-30 14:48:29'),
('7a99112ce5d643e3e2cafb064c040d94a0f1c023a3d78f496eebda23ff27e0216fb97015dd961512', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:18:56', '2024-11-30 09:18:56', '2025-11-30 14:48:56'),
('81adb05cb9688362e31760de9b4e386c2801e51aaed73970e72ba7ac1a2a0f88abdb12b144032968', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:44:59', '2024-11-30 09:44:59', '2025-11-30 15:14:59'),
('81c44e77315c15fdf7db45794d1c0930dcceb24f5a05089aa651a44a4d864345a553622fb66656ba', 1, 1, 'auth_token', '[]', 0, '2024-12-19 12:19:09', '2024-12-19 12:19:09', '2025-12-19 17:49:09'),
('8a16d9c33331c9eb15a632703d572889784ab6dd7ada7a4c665b45bc3101fb2510489eca40688b4e', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:25:38', '2024-11-30 09:25:38', '2025-11-30 14:55:38'),
('8b47f5f99a1e492818d5d4c0bbe72b7314ae9be4f481d2d217bedd3e426aab9dc705156b94eee9a5', 1, 1, 'auth_token', '[]', 0, '2024-11-30 08:17:56', '2024-11-30 08:17:56', '2025-11-30 13:47:56'),
('94600a0e1f41feb40a9d3999a1173bb088288bf517b117a019e9eb523df89e34df94a7914d2b734b', 1, 1, 'auth_token', '[]', 0, '2024-12-19 12:48:40', '2024-12-19 12:48:40', '2025-12-19 18:18:40'),
('9478d5dae66f0905687946b2d2db06778d95b731466bb2954741ab69192473aa314ed754ef6c9186', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:46:12', '2024-11-30 09:46:12', '2025-11-30 15:16:12'),
('957d1db291510d9a6e9c6ae92fb61f36e6413fa35b4b7d4c7ae6d8907a440fcbb29c1b336d288770', 1, 1, 'auth_token', '[]', 0, '2024-11-30 08:45:57', '2024-11-30 08:45:57', '2025-11-30 14:15:57'),
('9bb9e735a1d241d1568172c892d426a902dbd2d2f14b9674859451569990b525621deccb354f1f02', 1, 1, 'auth_token', '[]', 0, '2024-11-30 08:52:38', '2024-11-30 08:52:38', '2025-11-30 14:22:38'),
('a0925bf4ae332f73c26f8ced0a773193d4f7eb76ae215b30395aa75445e93400afcbfdd4225cc66c', 1, 1, 'auth_token', '[]', 0, '2024-11-30 08:57:55', '2024-11-30 08:57:55', '2025-11-30 14:27:55'),
('a15e8a735d3ed2193d38e30c0c08f085e64344e309510e86215fbcb334b5ba5ebd590ba8f1d74283', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:52:57', '2024-11-30 09:52:57', '2025-11-30 15:22:57'),
('a1876086a7d0f961ff244cb5165a043d915e461421c3ade632bea6dfb7874cbdb3fc6ca5279c06f4', 1, 1, 'auth_token', '[]', 0, '2024-12-23 11:56:09', '2024-12-23 11:56:09', '2025-12-23 17:26:09'),
('a5270f187156378de831dcad9cdb52aee32b9ff859bb6b68bbe42c852e7f4734138da6581264d15e', 1, 1, 'auth_token', '[]', 0, '2024-12-19 12:35:42', '2024-12-19 12:35:42', '2025-12-19 18:05:42'),
('a7755abbf1f951785b48a0848428d25b15d5ae079bab3420716b9128856b2fecce44257e287689ec', 1, 1, 'auth_token', '[]', 0, '2024-12-19 12:19:31', '2024-12-19 12:19:31', '2025-12-19 17:49:31'),
('a9a05b1856f23d04268e2ab4dd908899d0a0beb2f02f1dab44264ce205b3745ce859fec3c78895db', 1, 1, 'auth_token', '[]', 0, '2024-12-19 12:23:34', '2024-12-19 12:23:34', '2025-12-19 17:53:34'),
('a9c063423dc13352c8a81d495a8605dfa8c8baa70bf14d4fbad0e277df27711c707404d2db9021cc', 1, 1, 'auth_token', '[]', 0, '2024-11-30 08:56:25', '2024-11-30 08:56:25', '2025-11-30 14:26:25'),
('aa5569bf0be3f3b4304011b6ec9e44db4808f80006e3a7c2b47f3c2f362849785584a353bbb6a7fa', 1, 1, 'auth_token', '[]', 0, '2024-11-30 22:34:44', '2024-11-30 22:34:44', '2025-12-01 04:04:44'),
('ab2a3db342a3e66d89195ffa0c64dbbf56a9e39225ee7df0ef7c548bf0e1179c0cab6b40122c58e8', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:59:44', '2024-11-30 09:59:44', '2025-11-30 15:29:44'),
('ae84a6e385c3b704d00b3bbac60c5aba984d42816a4e15c6a0b2ec9f6c71ea55e3c8bfeaca18bed9', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:40:55', '2024-11-30 09:40:55', '2025-11-30 15:10:55'),
('b100b9653886bf986aaac74418ff826324b9295dbb6f8d45bc11826c972f6b1970f5202a1f12bd12', 1, 1, 'auth_token', '[]', 0, '2024-11-30 08:14:40', '2024-11-30 08:14:40', '2025-11-30 13:44:40'),
('b1f64653ae2e1a4d0af7041ded933747ada1f4a8599c2744a2bcb4ac8bce886ab80839d43f8f5099', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:29:43', '2024-11-30 09:29:43', '2025-11-30 14:59:43'),
('b382617fa7a4fd64959acef1971a9e9d3ad5d5922356dad0c470fc05411bb5a56c9c8dd42b18ec41', 1, 1, 'auth_token', '[]', 0, '2024-11-30 08:56:30', '2024-11-30 08:56:30', '2025-11-30 14:26:30'),
('b65a98039f3c04f53023c70a82d8e51a2ab5d44a94180a03f8e09dd46f63eab94bd786794aa46b8b', 1, 1, 'auth_token', '[]', 0, '2024-12-09 04:30:07', '2024-12-09 04:30:07', '2025-12-09 10:00:07'),
('bad68673bb2de9c79d3264ed08530307e692feecab46559710ab64a36c3b8d676bbc483158b25719', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:31:48', '2024-11-30 09:31:48', '2025-11-30 15:01:48'),
('befd0ba6ef7697f9818508e4756857f638e598ec58659f65ebefd2a3af8874c90c4a62e5f364dec0', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:43:40', '2024-11-30 09:43:40', '2025-11-30 15:13:40'),
('c408874a2cf0dfc3a88078a427c9718748c2829f71b0d083ad2a73b565efdb47d411c46449dd7f56', 1, 1, 'auth_token', '[]', 0, '2024-12-05 03:45:31', '2024-12-05 03:45:31', '2025-12-05 09:15:31'),
('cd29f57db69f99ba775977104af97408dac560be6cd5ea72868ec255c2d84947a439288055fc05a1', 1, 1, 'auth_token', '[]', 0, '2024-12-19 12:35:54', '2024-12-19 12:35:54', '2025-12-19 18:05:54'),
('d3bb551aba11953e90ef7875bbc7cd40f6e1a98bb0680ae85e0f7b2bf64059df2d7411fe230c6a46', 1, 1, 'auth_token', '[]', 0, '2024-12-23 11:56:03', '2024-12-23 11:56:03', '2025-12-23 17:26:03'),
('d89b0f36dfacdcd16351b554b0a53eebe1067dd6a3ceba66f7986ee0023d2aee24c2300ffcb6fb7d', 1, 1, 'auth_token', '[]', 0, '2024-12-09 04:36:37', '2024-12-09 04:36:37', '2025-12-09 10:06:37'),
('d9007bb51e59e9ca171ef87484c2b779e9c65a32cf625f3e386edf196c0053cc1e59e43cf14c1956', 1, 1, 'auth_token', '[]', 0, '2024-11-30 08:11:14', '2024-11-30 08:11:14', '2025-11-30 13:41:14'),
('dddbd833e8a429f71a8cb764b0d10665ade8cbffcaf3d6f069cec3a93fc0091a29f64ea60c8dbc23', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:32:33', '2024-11-30 09:32:33', '2025-11-30 15:02:33'),
('de2cddf93bd75e182d9eb9a85e9e70a82751c9d7726dda9579a7bc1a321bde6f6e1641603fb0906f', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:40:59', '2024-11-30 09:40:59', '2025-11-30 15:10:59'),
('e3e926cda0b1a543b98004a5b71a79f892f4b4667832ddce7495723ab7978c2dddae1660448ce36d', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:09:04', '2024-11-30 09:09:04', '2025-11-30 14:39:04'),
('e635e755c2b452e5accc42058e1c0447b41f6785b1ddd9ced233be2b7c125f295fc3d85db7f3d1d7', 1, 1, 'auth_token', '[]', 0, '2024-12-09 04:36:17', '2024-12-09 04:36:17', '2025-12-09 10:06:17'),
('e83901037515ae52153d8c7e453da7a8d2753c4b26a009fa870f301b48a5f75345e39a4b1082d9c1', 1, 1, 'auth_token', '[]', 0, '2024-11-30 10:08:24', '2024-11-30 10:08:24', '2025-11-30 15:38:24'),
('ebd7ba2675250b33c59e5b9ded72d4a0936683bbdef54d43709899df1bbdde70468982b0ac31c57d', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:21:29', '2024-11-30 09:21:29', '2025-11-30 14:51:29'),
('f1740a3edac8ae40d5d3f3f9181edcac18672ea8a1364bdc2f8703a8b37899112062d503e35e9bba', 1, 1, 'auth_token', '[]', 0, '2024-12-12 12:50:23', '2024-12-12 12:50:23', '2025-12-12 18:20:23'),
('f40a4acc7efc7e8f7332d016b7d66bbe1413229dd8c0bbd3e214bbd8fcb48e88203f124b2df8aef3', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:43:49', '2024-11-30 09:43:49', '2025-11-30 15:13:49'),
('f4ad5b16b2e7799083d6276744f7ecaa58918561705a834a34dd667ccc826e68ff83c4517629974a', 1, 1, 'auth_token', '[]', 0, '2024-12-19 12:19:06', '2024-12-19 12:19:06', '2025-12-19 17:49:06'),
('f4ff02a18ddb6ac22f8a4f0b776097bd6e13dfc2d4802e898756b6fcc13dadc62f90dced88048eb2', 1, 1, 'auth_token', '[]', 0, '2024-11-30 13:35:15', '2024-11-30 13:35:15', '2025-11-30 19:05:15'),
('fa5918e1db977461e745c578c7e0fe62705ec1ea8a40fd6a0956caf6c9eea3d4a207b0d10642a838', 1, 1, 'auth_token', '[]', 0, '2024-11-30 09:41:02', '2024-11-30 09:41:02', '2025-11-30 15:11:02'),
('faa160dbf76c7356275d6e571e9d70b2bd6c452ad853bbf2b34305b33b1c47f6eef335dd2f88d58a', 1, 1, 'auth_token', '[]', 0, '2024-12-04 04:27:02', '2024-12-04 04:27:02', '2025-12-04 09:57:02'),
('fba7fc0dcf63c937a1d200767c7351f9735191d90c028b788e8bbe414071421761da22ad1376880a', 1, 1, 'auth_token', '[]', 0, '2024-12-23 11:56:07', '2024-12-23 11:56:07', '2025-12-23 17:26:07'),
('fc1a5074318820a52e223cd9b6e24b873e0ce72150402393df41795046bb88b3e152cb872bdcb691', 1, 1, 'auth_token', '[]', 0, '2024-11-30 08:09:08', '2024-11-30 08:09:08', '2025-11-30 13:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '24gV0vqCYLumLhI0e8A0pT1JnEXR3VlMF0ohCWNj', NULL, 'http://localhost', 1, 0, 0, '2024-11-30 08:07:11', '2024-11-30 08:07:11'),
(2, NULL, 'Laravel Password Grant Client', 'RZYaKicnXytU96WbazFMRvoGqpDBrMNnMYIBDXTA', 'users', 'http://localhost', 0, 1, 0, '2024-11-30 08:07:11', '2024-11-30 08:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-11-30 08:07:11', '2024-11-30 08:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prod_name` varchar(255) DEFAULT NULL,
  `prod_price` varchar(255) DEFAULT NULL,
  `prod_desc` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `push_token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `push_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin@blog.com', '2024-11-30 13:38:08', '$2a$12$DUeoc1Dw0dzKk6i7c1LfruSvlReL.ZXT9xJj01o4.pAMZInwwXoNS', NULL, NULL, '2024-11-30 13:38:08', '2024-11-30 13:38:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
