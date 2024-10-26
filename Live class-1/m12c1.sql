-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2024 at 04:57 AM
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
-- Database: `m12c1`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Toni Kuhlman', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(2, 'Eliza Morar', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(3, 'Enoch Nolan', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(4, 'Loren O\'Conner PhD', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(5, 'Janessa Ferry', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(6, 'Mr. Lowell Macejkovic DVM', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(7, 'Marie Crooks', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(8, 'Dr. Joesph Kuphal', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(9, 'Erica Beier', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(10, 'Francesca Swaniawski', '2024-08-10 10:56:07', '2024-08-10 10:56:07');

-- --------------------------------------------------------

--
-- Table structure for table `author_book`
--

CREATE TABLE `author_book` (
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `author_book`
--

INSERT INTO `author_book` (`author_id`, `book_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(3, 5, NULL, NULL),
(3, 6, NULL, NULL),
(3, 7, NULL, NULL),
(4, 8, NULL, NULL),
(4, 9, NULL, NULL),
(4, 10, NULL, NULL),
(4, 11, NULL, NULL),
(5, 12, NULL, NULL),
(5, 13, NULL, NULL),
(5, 14, NULL, NULL),
(6, 15, NULL, NULL),
(6, 16, NULL, NULL),
(6, 17, NULL, NULL),
(7, 18, NULL, NULL),
(7, 19, NULL, NULL),
(8, 20, NULL, NULL),
(8, 21, NULL, NULL),
(9, 22, NULL, NULL),
(9, 23, NULL, NULL),
(9, 24, NULL, NULL),
(9, 25, NULL, NULL),
(10, 26, NULL, NULL),
(10, 27, NULL, NULL),
(5, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Ad vero omnis quibusdam.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(2, 'Enim est consequuntur nisi.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(3, 'Quidem accusantium illum.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(4, 'Velit et tenetur.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(5, 'Atque quidem dolores illo.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(6, 'Necessitatibus quibusdam doloribus illo.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(7, 'Et dignissimos.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(8, 'Quidem temporibus sint saepe.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(9, 'Magnam at voluptate dolore.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(10, 'Consectetur cumque odit possimus quaerat.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(11, 'Rerum sit nihil illo.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(12, 'Modi ea sed.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(13, 'Sapiente eum soluta voluptatem.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(14, 'Quas aspernatur animi.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(15, 'Sed velit sint.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(16, 'Accusantium natus assumenda.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(17, 'Dignissimos voluptatem omnis et.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(18, 'Quas iste possimus asperiores.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(19, 'Aut reprehenderit ab.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(20, 'Non et recusandae.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(21, 'Ab quo explicabo.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(22, 'Similique hic quae.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(23, 'Et magni reiciendis incidunt.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(24, 'Dolorem odio.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(25, 'Quas sed est.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(26, 'Assumenda laborum voluptatem.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(27, 'Minus doloremque animi expedita.', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(28, 'Book X', '2024-08-10 11:03:20', '2024-08-10 11:03:20'),
(29, 'Book Y', '2024-08-10 11:03:46', '2024-08-10 11:03:46');

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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client` varchar(255) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `user_id`, `client`, `total_price`, `paid`, `created_at`, `updated_at`) VALUES
(1, 1, 'Miss Danyka Will II', 867.47, 0, '2024-08-09 13:21:29', '2024-08-10 02:47:18'),
(2, 1, 'Eve Cronin', 2818.56, 0, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(3, 1, 'Mrs. Ima Effertz', 1967.16, 0, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(4, 1, 'Howard Brakus', 4493.19, 0, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(5, 1, 'Prof. Kale Hirthe', 3041.32, 1, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(6, 1, 'Vladimir Jerde', 3840.37, 0, '2024-08-09 13:21:29', '2024-08-09 13:21:30'),
(7, 1, 'Wellington Ledner', 536.31, 1, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(8, 1, 'Jeffery Labadie', 1671.20, 0, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(9, 1, 'Blanche Morar PhD', 1530.45, 0, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(10, 1, 'Maryse Rowe I', 2098.77, 1, '2024-08-09 13:21:30', '2024-08-09 13:21:30');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `title`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aut corporis aut dolore placeat quia.', 162.33, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(2, 1, 'Tempore ducimus enim consequatur.', 358.26, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(3, 1, 'Consequuntur dolores atque doloremque architecto qui.', 149.85, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(4, 1, 'Eos quo eos repellendus.', 197.03, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(5, 2, 'Explicabo quaerat ipsam nihil quasi ipsam.', 500.08, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(6, 2, 'Voluptates in debitis minus et.', 778.16, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(7, 2, 'Vel voluptas sed in.', 586.94, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(8, 2, 'Ut repellat adipisci quia corrupti.', 757.73, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(9, 2, 'Et distinctio quas ea.', 195.65, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(10, 3, 'Dolore et incidunt expedita.', 595.12, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(11, 3, 'Dolor dolorem ut voluptatem sed qui.', 231.01, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(12, 3, 'Aut et exercitationem occaecati sapiente.', 486.43, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(13, 3, 'Suscipit commodi a voluptatem odit eaque.', 654.60, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(14, 4, 'Et dolore optio eveniet magni eos.', 973.94, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(15, 4, 'Facere amet autem possimus ipsum ut voluptate.', 994.69, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(16, 4, 'Voluptatum delectus laborum perspiciatis doloribus.', 442.76, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(17, 4, 'Quis sint rerum rem voluptatem.', 189.92, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(18, 4, 'Omnis harum sit laboriosam modi.', 477.46, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(19, 4, 'Possimus velit ut debitis nulla et accusamus.', 468.03, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(20, 4, 'Saepe quae sit et enim beatae quo.', 946.39, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(21, 5, 'Sit magni ullam quasi ex sapiente.', 542.94, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(22, 5, 'Minus ipsum nihil amet consequatur.', 925.04, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(23, 5, 'Qui et sit corrupti.', 235.19, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(24, 5, 'Et odio aperiam illum error asperiores.', 277.89, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(25, 5, 'Totam sit aut et.', 220.24, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(26, 5, 'Harum est optio suscipit in.', 623.06, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(27, 5, 'Sed sit aspernatur similique voluptas nemo.', 216.96, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(28, 6, 'Placeat qui enim magni optio nemo perferendis.', 685.86, '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(29, 6, 'Vitae ad quam voluptatem aut dolorem.', 433.92, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(30, 6, 'Deserunt expedita quos enim.', 655.18, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(31, 6, 'Qui molestias soluta quasi.', 938.81, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(32, 6, 'Voluptas dolores similique quasi ab voluptatem laboriosam.', 181.40, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(33, 6, 'Sed enim voluptatibus quam consequuntur.', 375.26, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(34, 6, 'Iure quia magnam ea aut.', 569.94, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(35, 7, 'Voluptatem voluptates doloribus numquam.', 536.31, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(36, 8, 'Id sunt doloremque temporibus rerum ut.', 538.59, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(37, 8, 'Ipsum voluptas facilis quas possimus nihil non.', 281.91, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(38, 8, 'Doloribus qui voluptas dolores ut.', 116.36, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(39, 8, 'Assumenda rerum assumenda impedit sequi ut aut.', 734.34, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(40, 9, 'Ut porro et ut aut libero.', 539.05, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(41, 9, 'Voluptate ut nesciunt ducimus et.', 441.96, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(42, 9, 'Dolor numquam possimus et vel necessitatibus.', 549.44, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(43, 10, 'Et culpa consequatur rerum reiciendis.', 648.45, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(44, 10, 'Ipsum voluptates eos nihil voluptas voluptas.', 977.80, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(45, 10, 'Impedit veritatis architecto commodi aspernatur minus adipisci.', 472.52, '2024-08-09 13:21:30', '2024-08-09 13:21:30'),
(46, 1, 'Item Y', 200.00, '2024-08-10 05:07:06', '2024-08-10 05:07:06'),
(48, 1, 'Item X', 100.00, '2024-08-10 05:13:14', '2024-08-10 05:13:14');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_09_174601_create_invoices_table', 1),
(6, '2024_08_09_174626_create_invoice_items_table', 1),
(7, '2024_08_10_113340_create_authors_table', 2),
(8, '2024_08_10_113403_create_books_table', 2),
(9, '2024_08_10_114954_create_author_book_table', 2);

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
  `expires_at` timestamp NULL DEFAULT NULL,
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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin vai', 'admin@gmail.com', NULL, '$2y$12$x6n45kdJAwM07lntSagtSenObLSTb4Osv9QpyiR4DsxtYVDNzC4oy', NULL, '2024-08-09 13:06:24', '2024-08-09 13:06:24'),
(2, 'Joanne Koss', 'oreilly.cathrine@example.org', '2024-08-09 13:21:28', '$2y$12$Z3HE4n5NJ8g7.pE7/w8/s.C1TnjvxmSuOrxZw2T7hn1U6O7lzrW6K', 'hjiFXMxCil', '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(3, 'Dr. Salvatore Heller I', 'kilback.bridie@example.net', '2024-08-09 13:21:29', '$2y$12$Z3HE4n5NJ8g7.pE7/w8/s.C1TnjvxmSuOrxZw2T7hn1U6O7lzrW6K', 'jyjZvlcYyY', '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(4, 'Dee Hudson', 'deion.russel@example.net', '2024-08-09 13:21:29', '$2y$12$Z3HE4n5NJ8g7.pE7/w8/s.C1TnjvxmSuOrxZw2T7hn1U6O7lzrW6K', 'mQNOvRoxb7', '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(5, 'Logan Zboncak', 'stanford.langworth@example.net', '2024-08-09 13:21:29', '$2y$12$Z3HE4n5NJ8g7.pE7/w8/s.C1TnjvxmSuOrxZw2T7hn1U6O7lzrW6K', 'aRqcpCUr8L', '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(6, 'Sibyl Marvin', 'towne.allison@example.net', '2024-08-09 13:21:29', '$2y$12$Z3HE4n5NJ8g7.pE7/w8/s.C1TnjvxmSuOrxZw2T7hn1U6O7lzrW6K', '6LnIk8R5kL', '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(7, 'Mark Treutel', 'vandervort.gunnar@example.com', '2024-08-09 13:21:29', '$2y$12$Z3HE4n5NJ8g7.pE7/w8/s.C1TnjvxmSuOrxZw2T7hn1U6O7lzrW6K', 'QU05gr7eA8', '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(8, 'Dr. Ned Bergnaum', 'pkuhic@example.net', '2024-08-09 13:21:29', '$2y$12$Z3HE4n5NJ8g7.pE7/w8/s.C1TnjvxmSuOrxZw2T7hn1U6O7lzrW6K', 'LCiUNYSsLU', '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(9, 'Mona Greenholt', 'amara76@example.org', '2024-08-09 13:21:29', '$2y$12$Z3HE4n5NJ8g7.pE7/w8/s.C1TnjvxmSuOrxZw2T7hn1U6O7lzrW6K', 'uIGdL2R4wi', '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(10, 'Miss Jenifer Hansen', 'lou93@example.net', '2024-08-09 13:21:29', '$2y$12$Z3HE4n5NJ8g7.pE7/w8/s.C1TnjvxmSuOrxZw2T7hn1U6O7lzrW6K', 't3Zw468vn9', '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(11, 'Mr. Benny Stracke IV', 'magdalen.bruen@example.com', '2024-08-09 13:21:29', '$2y$12$Z3HE4n5NJ8g7.pE7/w8/s.C1TnjvxmSuOrxZw2T7hn1U6O7lzrW6K', 'yc7qP3TUdJ', '2024-08-09 13:21:29', '2024-08-09 13:21:29'),
(12, 'Grace Larson', 'kylee.welch@example.net', '2024-08-10 06:11:53', '$2y$12$vrzuOeYNdZ6jWDN6C8sp..KsMK5XvOxvIn90icv6ZA.OmDSOj0DJ.', 'lWnnVlbrWS', '2024-08-10 06:11:54', '2024-08-10 06:11:54'),
(13, 'Clara Rosenbaum', 'kieran.paucek@example.net', '2024-08-10 06:11:54', '$2y$12$vrzuOeYNdZ6jWDN6C8sp..KsMK5XvOxvIn90icv6ZA.OmDSOj0DJ.', 'eUbhoFKkSA', '2024-08-10 06:11:54', '2024-08-10 06:11:54'),
(14, 'Enos O\'Kon', 'caleb17@example.net', '2024-08-10 06:11:54', '$2y$12$vrzuOeYNdZ6jWDN6C8sp..KsMK5XvOxvIn90icv6ZA.OmDSOj0DJ.', 'QIt51VE4rW', '2024-08-10 06:11:54', '2024-08-10 06:11:54'),
(15, 'Raymond McKenzie', 'tstreich@example.org', '2024-08-10 06:11:54', '$2y$12$vrzuOeYNdZ6jWDN6C8sp..KsMK5XvOxvIn90icv6ZA.OmDSOj0DJ.', '0dzd4RJwzq', '2024-08-10 06:11:54', '2024-08-10 06:11:54'),
(16, 'Jordane Douglas', 'aniya.kunze@example.com', '2024-08-10 06:11:54', '$2y$12$vrzuOeYNdZ6jWDN6C8sp..KsMK5XvOxvIn90icv6ZA.OmDSOj0DJ.', 'jwEKTFvZS3', '2024-08-10 06:11:54', '2024-08-10 06:11:54'),
(17, 'Mrs. Herta Kutch', 'hilpert.margarita@example.com', '2024-08-10 06:11:54', '$2y$12$vrzuOeYNdZ6jWDN6C8sp..KsMK5XvOxvIn90icv6ZA.OmDSOj0DJ.', 'M7mix1a1ZG', '2024-08-10 06:11:54', '2024-08-10 06:11:54'),
(18, 'Kobe Koss', 'jhudson@example.com', '2024-08-10 06:11:54', '$2y$12$vrzuOeYNdZ6jWDN6C8sp..KsMK5XvOxvIn90icv6ZA.OmDSOj0DJ.', 'KPyc1ccj9I', '2024-08-10 06:11:54', '2024-08-10 06:11:54'),
(19, 'Joelle Tremblay', 'lfisher@example.org', '2024-08-10 06:11:54', '$2y$12$vrzuOeYNdZ6jWDN6C8sp..KsMK5XvOxvIn90icv6ZA.OmDSOj0DJ.', 'YLq4MkPUTi', '2024-08-10 06:11:54', '2024-08-10 06:11:54'),
(20, 'Kenyatta Schowalter I', 'ferry.matilde@example.net', '2024-08-10 06:11:54', '$2y$12$vrzuOeYNdZ6jWDN6C8sp..KsMK5XvOxvIn90icv6ZA.OmDSOj0DJ.', '1LbIdYJES8', '2024-08-10 06:11:54', '2024-08-10 06:11:54'),
(21, 'Karolann Boyer II', 'ruthie.hill@example.org', '2024-08-10 06:11:54', '$2y$12$vrzuOeYNdZ6jWDN6C8sp..KsMK5XvOxvIn90icv6ZA.OmDSOj0DJ.', 'vSMleI2AgS', '2024-08-10 06:11:54', '2024-08-10 06:11:54'),
(22, 'Bertram Gislason', 'ohara.toy@example.com', '2024-08-10 10:53:35', '$2y$12$MZa.HnVdcWKnPP6ywY888eTCjVWn2ra9wSGynoUnJXAZkaiJdFyRy', 'TyOslXuMHI', '2024-08-10 10:53:35', '2024-08-10 10:53:35'),
(23, 'Hilda Prohaska', 'marina92@example.net', '2024-08-10 10:53:35', '$2y$12$MZa.HnVdcWKnPP6ywY888eTCjVWn2ra9wSGynoUnJXAZkaiJdFyRy', 'FviCLRFzTV', '2024-08-10 10:53:35', '2024-08-10 10:53:35'),
(24, 'Alejandrin Lakin', 'cremin.emile@example.net', '2024-08-10 10:53:35', '$2y$12$MZa.HnVdcWKnPP6ywY888eTCjVWn2ra9wSGynoUnJXAZkaiJdFyRy', 'MYuLqNKXBK', '2024-08-10 10:53:35', '2024-08-10 10:53:35'),
(25, 'Ms. Alessia Brekke', 'larkin.robbie@example.net', '2024-08-10 10:53:35', '$2y$12$MZa.HnVdcWKnPP6ywY888eTCjVWn2ra9wSGynoUnJXAZkaiJdFyRy', '7ClYN8vKva', '2024-08-10 10:53:35', '2024-08-10 10:53:35'),
(26, 'Modesto Roob DDS', 'lura.haag@example.net', '2024-08-10 10:53:35', '$2y$12$MZa.HnVdcWKnPP6ywY888eTCjVWn2ra9wSGynoUnJXAZkaiJdFyRy', 'JtdN2tkplC', '2024-08-10 10:53:35', '2024-08-10 10:53:35'),
(27, 'Mr. Jedediah Grant DVM', 'seth99@example.org', '2024-08-10 10:53:35', '$2y$12$MZa.HnVdcWKnPP6ywY888eTCjVWn2ra9wSGynoUnJXAZkaiJdFyRy', 'hDY5WuB5Pd', '2024-08-10 10:53:35', '2024-08-10 10:53:35'),
(28, 'Gabe Prohaska', 'dameon37@example.net', '2024-08-10 10:53:35', '$2y$12$MZa.HnVdcWKnPP6ywY888eTCjVWn2ra9wSGynoUnJXAZkaiJdFyRy', '8dHTWKhGX9', '2024-08-10 10:53:35', '2024-08-10 10:53:35'),
(29, 'Dr. Obie Pouros', 'rozella.damore@example.net', '2024-08-10 10:53:35', '$2y$12$MZa.HnVdcWKnPP6ywY888eTCjVWn2ra9wSGynoUnJXAZkaiJdFyRy', '7CBmtMutWL', '2024-08-10 10:53:35', '2024-08-10 10:53:35'),
(30, 'Elwin Botsford', 'klein.demond@example.com', '2024-08-10 10:53:35', '$2y$12$MZa.HnVdcWKnPP6ywY888eTCjVWn2ra9wSGynoUnJXAZkaiJdFyRy', '7HUdHsQhIr', '2024-08-10 10:53:35', '2024-08-10 10:53:35'),
(31, 'Darlene Okuneva', 'dbayer@example.com', '2024-08-10 10:53:35', '$2y$12$MZa.HnVdcWKnPP6ywY888eTCjVWn2ra9wSGynoUnJXAZkaiJdFyRy', 'BfC7tNZjva', '2024-08-10 10:53:35', '2024-08-10 10:53:35'),
(32, 'Prof. Marjorie Zemlak', 'xebert@example.org', '2024-08-10 10:54:40', '$2y$12$4O/kK2ngTFy5COv6mfK2tOtrLjGKQ51WetgweCNpfba3dAPQaNQ2G', 'YytXLbEO1Y', '2024-08-10 10:54:41', '2024-08-10 10:54:41'),
(33, 'Dalton Satterfield', 'lula41@example.com', '2024-08-10 10:54:41', '$2y$12$4O/kK2ngTFy5COv6mfK2tOtrLjGKQ51WetgweCNpfba3dAPQaNQ2G', 'RFRgitRDWr', '2024-08-10 10:54:41', '2024-08-10 10:54:41'),
(34, 'Wendy Dietrich Jr.', 'mayer.angeline@example.net', '2024-08-10 10:54:41', '$2y$12$4O/kK2ngTFy5COv6mfK2tOtrLjGKQ51WetgweCNpfba3dAPQaNQ2G', 'AfHHamMTtJ', '2024-08-10 10:54:41', '2024-08-10 10:54:41'),
(35, 'Clotilde Dibbert', 'kuvalis.graham@example.net', '2024-08-10 10:54:41', '$2y$12$4O/kK2ngTFy5COv6mfK2tOtrLjGKQ51WetgweCNpfba3dAPQaNQ2G', 's8mpc5gXf7', '2024-08-10 10:54:41', '2024-08-10 10:54:41'),
(36, 'Trent Stark', 'mitchell.garland@example.net', '2024-08-10 10:54:41', '$2y$12$4O/kK2ngTFy5COv6mfK2tOtrLjGKQ51WetgweCNpfba3dAPQaNQ2G', 'ILaPAVgAxy', '2024-08-10 10:54:41', '2024-08-10 10:54:41'),
(37, 'Prof. Rupert Abernathy III', 'julianne.cummings@example.org', '2024-08-10 10:54:41', '$2y$12$4O/kK2ngTFy5COv6mfK2tOtrLjGKQ51WetgweCNpfba3dAPQaNQ2G', 'Mv3r7sWNPd', '2024-08-10 10:54:41', '2024-08-10 10:54:41'),
(38, 'Aubree Farrell', 'qnicolas@example.net', '2024-08-10 10:54:41', '$2y$12$4O/kK2ngTFy5COv6mfK2tOtrLjGKQ51WetgweCNpfba3dAPQaNQ2G', 'EzPmBEK8lY', '2024-08-10 10:54:41', '2024-08-10 10:54:41'),
(39, 'Dr. Dorthy Sauer', 'dalton21@example.net', '2024-08-10 10:54:41', '$2y$12$4O/kK2ngTFy5COv6mfK2tOtrLjGKQ51WetgweCNpfba3dAPQaNQ2G', 'bInipyilXm', '2024-08-10 10:54:41', '2024-08-10 10:54:41'),
(40, 'Della Prohaska DDS', 'clifton61@example.net', '2024-08-10 10:54:41', '$2y$12$4O/kK2ngTFy5COv6mfK2tOtrLjGKQ51WetgweCNpfba3dAPQaNQ2G', 'E1XtWmNiTt', '2024-08-10 10:54:41', '2024-08-10 10:54:41'),
(41, 'Julia Beer', 'quentin27@example.org', '2024-08-10 10:54:41', '$2y$12$4O/kK2ngTFy5COv6mfK2tOtrLjGKQ51WetgweCNpfba3dAPQaNQ2G', 'AXvAXn5bCy', '2024-08-10 10:54:41', '2024-08-10 10:54:41'),
(42, 'Mr. Dillon Dickens Sr.', 'imorissette@example.org', '2024-08-10 10:56:06', '$2y$12$l6ynpMqKkdSL.tNJjkjhNOSazHSEai0bF4sxEJDOCSjbzby10LtOa', 'dm7aCrQVQb', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(43, 'Ernie Stamm V', 'dare.matt@example.com', '2024-08-10 10:56:07', '$2y$12$l6ynpMqKkdSL.tNJjkjhNOSazHSEai0bF4sxEJDOCSjbzby10LtOa', 'POPVYuf2if', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(44, 'Rodolfo Weissnat II', 'ehartmann@example.org', '2024-08-10 10:56:07', '$2y$12$l6ynpMqKkdSL.tNJjkjhNOSazHSEai0bF4sxEJDOCSjbzby10LtOa', 's6jCheNdv7', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(45, 'Alia Collins', 'ortiz.elisha@example.com', '2024-08-10 10:56:07', '$2y$12$l6ynpMqKkdSL.tNJjkjhNOSazHSEai0bF4sxEJDOCSjbzby10LtOa', 'huYukN2GiS', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(46, 'Jaeden Krajcik', 'tglover@example.com', '2024-08-10 10:56:07', '$2y$12$l6ynpMqKkdSL.tNJjkjhNOSazHSEai0bF4sxEJDOCSjbzby10LtOa', 'yN3CHVBmQ8', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(47, 'Dr. Kimberly Rosenbaum', 'rjaskolski@example.net', '2024-08-10 10:56:07', '$2y$12$l6ynpMqKkdSL.tNJjkjhNOSazHSEai0bF4sxEJDOCSjbzby10LtOa', 'fs5k3RmElB', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(48, 'Prof. Marlon VonRueden IV', 'jeanette.glover@example.com', '2024-08-10 10:56:07', '$2y$12$l6ynpMqKkdSL.tNJjkjhNOSazHSEai0bF4sxEJDOCSjbzby10LtOa', 'rQQzeHXh99', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(49, 'Mrs. Colleen Bauch', 'vmacejkovic@example.org', '2024-08-10 10:56:07', '$2y$12$l6ynpMqKkdSL.tNJjkjhNOSazHSEai0bF4sxEJDOCSjbzby10LtOa', 'idTt0JzQd2', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(50, 'Nasir Dietrich', 'hand.kelsie@example.net', '2024-08-10 10:56:07', '$2y$12$l6ynpMqKkdSL.tNJjkjhNOSazHSEai0bF4sxEJDOCSjbzby10LtOa', 'ysHnWtHjU7', '2024-08-10 10:56:07', '2024-08-10 10:56:07'),
(51, 'Hope Larson PhD', 'lweber@example.org', '2024-08-10 10:56:07', '$2y$12$l6ynpMqKkdSL.tNJjkjhNOSazHSEai0bF4sxEJDOCSjbzby10LtOa', 'h6VE2x2Csr', '2024-08-10 10:56:07', '2024-08-10 10:56:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author_book`
--
ALTER TABLE `author_book`
  ADD KEY `author_book_author_id_foreign` (`author_id`),
  ADD KEY `author_book_book_id_foreign` (`book_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author_book`
--
ALTER TABLE `author_book`
  ADD CONSTRAINT `author_book_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_book_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
