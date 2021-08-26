-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2021 at 05:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trufla`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `geners`
--

CREATE TABLE `geners` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `geners`
--

INSERT INTO `geners` (`id`, `name`, `created_at`, `updated_at`) VALUES
(12, 'Adventure', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(14, 'Fantasy', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(16, 'Animation', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(18, 'Drama', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(27, 'Horror', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(28, 'Action', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(35, 'Comedy', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(36, 'History', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(37, 'Western', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(53, 'Thriller', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(80, 'Crime', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(99, 'Documentary', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(878, 'Science Fiction', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(9648, 'Mystery', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(10402, 'Music', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(10749, 'Romance', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(10751, 'Family', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(10752, 'War', '2021-08-25 10:06:28', '2021-08-25 10:06:28'),
(10770, 'TV Movie', '2021-08-25 10:06:28', '2021-08-25 10:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `geners_movies`
--

CREATE TABLE `geners_movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED NOT NULL,
  `gener_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `geners_movies`
--

INSERT INTO `geners_movies` (`id`, `movie_id`, `gener_id`, `created_at`, `updated_at`) VALUES
(1, 283566, 16, '2021-08-25 11:27:07', '2021-08-25 11:27:07'),
(2, 283566, 28, '2021-08-25 11:27:07', '2021-08-25 11:27:07'),
(3, 283566, 18, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(4, 283566, 878, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(5, 19404, 35, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(6, 19404, 18, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(7, 19404, 10749, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(8, 278, 18, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(9, 278, 80, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(10, 724089, 10749, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(11, 238, 18, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(12, 238, 80, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(13, 761053, 10749, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(14, 761053, 35, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(15, 696374, 10749, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(16, 424, 18, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(17, 424, 36, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(18, 424, 10752, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(19, 240, 18, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(20, 240, 80, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(21, 526702, 18, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(22, 372058, 10749, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(23, 372058, 16, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(24, 372058, 18, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(25, 129, 16, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(26, 129, 10751, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(27, 129, 14, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(28, 255709, 18, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(29, 496243, 35, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(30, 496243, 53, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(31, 496243, 18, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(32, 592350, 16, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(33, 592350, 28, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(34, 592350, 14, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(35, 592350, 12, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(36, 497, 14, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(37, 497, 18, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(38, 497, 80, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(39, 389, 18, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(40, 441130, 16, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(41, 441130, 10751, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(42, 441130, 12, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(43, 441130, 14, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(44, 40096, 12, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(45, 40096, 35, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(46, 572154, 16, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(47, 572154, 35, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(48, 572154, 10749, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(49, 572154, 18, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(50, 572154, 14, '2021-08-25 11:27:08', '2021-08-25 11:27:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_25_103207_create_movies_table', 1),
(5, '2021_08_25_105432_create_geners_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vote_average` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `vote_average`, `created_at`, `updated_at`) VALUES
(129, 'Spirited Away', 8.5, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(238, 'The Godfather', 8.7, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(240, 'The Godfather: Part II', 8.6, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(278, 'The Shawshank Redemption', 8.7, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(389, '12 Angry Men', 8.5, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(424, 'Schindler\'s List', 8.6, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(497, 'The Green Mile', 8.5, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(19404, 'Dilwale Dulhania Le Jayenge', 8.8, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(40096, 'A Dog\'s Will', 8.5, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(255709, 'Hope', 8.5, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(283566, 'Evangelion: 3.0+1.0 Thrice Upon a Time', 8.8, '2021-08-25 11:27:07', '2021-08-25 11:27:07'),
(372058, 'Your Name.', 8.6, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(441130, 'Wolfwalkers', 8.5, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(496243, 'Parasite', 8.5, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(526702, 'Black Beauty', 8.6, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(572154, 'Rascal Does Not Dream of a Dreaming Girl', 8.5, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(592350, 'My Hero Academia: Heroes Rising', 8.5, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(696374, 'Gabriel\'s Inferno', 8.6, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(724089, 'Gabriel\'s Inferno Part II', 8.7, '2021-08-25 11:27:08', '2021-08-25 11:27:08'),
(761053, 'Gabriel\'s Inferno Part III', 8.7, '2021-08-25 11:27:08', '2021-08-25 11:27:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geners`
--
ALTER TABLE `geners`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `geners_movies`
--
ALTER TABLE `geners_movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `geners_movies`
--
ALTER TABLE `geners_movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=761054;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
