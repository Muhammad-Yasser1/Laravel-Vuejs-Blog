-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2018 at 04:31 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `image`, `author`, `created_at`, `updated_at`) VALUES
(1, 'Nihil deserunt at itaque hic est maxime sint.', 'Aliquam enim laborum et nam quod at dolor. Sint et beatae perferendis omnis consectetur. Aut sint ea eveniet sit in.', 'asset 1.jpeg', 'Muhammad Yasser', '2018-12-28 00:03:12', '2018-12-28 00:03:12'),
(2, 'Mollitia voluptatum et voluptatem ea dolorem et.', 'Dolorum odio odio quia fugiat quam facilis. Sunt quo sapiente voluptatum distinctio adipisci. Molestias quis qui est nisi recusandae vel. Natus et dolor nisi vitae voluptas aperiam minus.', 'asset 2.jpeg', 'Muhammad Yasser', '2018-12-28 00:03:12', '2018-12-28 00:03:12'),
(3, 'Debitis blanditiis facilis porro voluptas.', 'Magnam commodi dolore modi ipsam sit facilis. Magni eum minima harum et porro velit. Dolore deleniti dolorem voluptatibus. Corrupti cumque illum qui delectus velit officiis.', 'asset 3.jpeg', 'Muhammad Yasser', '2018-12-28 00:03:12', '2018-12-28 00:03:12'),
(4, 'Sed consequatur sit sunt asperiores.', 'Iusto facilis necessitatibus omnis placeat beatae sit odit. Animi molestiae laborum totam eius corrupti. Veritatis provident eum commodi nihil enim deserunt. Ipsam iusto commodi consectetur sunt animi quia et.', 'asset 4.jpeg', 'Muhammad Yasser', '2018-12-28 00:03:12', '2018-12-28 00:03:12'),
(5, 'Facilis velit sit qui doloribus dolorem fuga.', 'Excepturi culpa ratione quia vel enim optio est voluptates. Et id placeat quas dolor minus fugiat in. Sequi blanditiis sunt ut dolorem facere quibusdam eos. Nobis officiis id iure commodi.', 'asset 5.jpeg', 'Muhammad Yasser', '2018-12-28 00:03:12', '2018-12-28 00:03:12'),
(6, 'In nisi quibusdam est rerum vero.', 'Soluta et et itaque nihil ratione quos suscipit. Est accusantium omnis autem voluptatem est. Error culpa facere ab similique quisquam numquam voluptatum.', 'asset 6.jpeg', 'Muhammad Yasser', '2018-12-28 00:03:12', '2018-12-28 00:03:12'),
(7, 'Laboriosam quam qui sunt voluptatem.', 'Deleniti saepe est reprehenderit perspiciatis culpa animi ratione. Impedit impedit optio est cumque optio nostrum.', 'asset 7.jpeg', 'Muhammad Yasser', '2018-12-28 00:03:12', '2018-12-28 00:03:12'),
(8, 'Qui sint aut omnis blanditiis.', 'Quidem provident voluptas quasi ullam. Ratione accusantium aliquid molestiae dolores voluptatem. Optio et veniam deserunt temporibus consequuntur quia.', 'asset 8.jpeg', 'Muhammad Yasser', '2018-12-28 00:03:12', '2018-12-28 00:03:12'),
(9, 'Neque modi accusantium odio assumenda officiis.', 'Iste soluta tempore et at. Commodi minima aut ut cum tempore tenetur. Officia veritatis sequi aut qui molestiae error debitis repudiandae.', 'asset 9.jpeg', 'Muhammad Yasser', '2018-12-28 00:03:12', '2018-12-28 00:03:12'),
(10, 'Sit quisquam dolore sint.', 'Porro quasi voluptatibus aperiam optio repudiandae magnam. Facere et est dolor sequi. Et id autem molestiae omnis. Consequatur autem laborum qui repellendus et.', 'asset 10.jpeg', 'Muhammad Yasser', '2018-12-28 00:03:12', '2018-12-28 00:03:12'),
(11, 'Eius aut blanditiis dolore iste.', 'Dicta iusto suscipit velit. Ipsam vero doloribus dolorem iusto. Iste ut labore enim velit enim quisquam. Asperiores debitis et necessitatibus minus adipisci quas. Est consequatur inventore earum similique recusandae pariatur.', 'asset 11.jpeg', 'Muhammad Yasser', '2018-12-28 00:03:12', '2018-12-28 00:03:12'),
(12, 'Quia deleniti corporis eum ut.', 'Qui quidem itaque provident aut quo. Cum dicta dolore consectetur. Exercitationem officia maxime quo hic.', 'asset 12.jpeg', 'Muhammad Yasser', '2018-12-28 00:03:12', '2018-12-28 00:03:12'),
(13, 'Dolorem et optio dolorem.', 'Reiciendis recusandae nihil beatae consequuntur earum. Eveniet et earum enim suscipit ad animi.', 'asset 13.jpeg', 'Muhammad Yasser', '2018-12-28 00:03:12', '2018-12-28 00:03:12'),
(14, 'Commodi eos suscipit earum.', 'Dolores magnam delectus in eligendi et. Omnis et voluptatem aut praesentium ullam natus reprehenderit. Placeat magnam quis ratione non et quod.', 'asset 14.jpeg', 'Muhammad Yasser', '2018-12-28 00:03:12', '2018-12-28 00:03:12'),
(15, 'Non eligendi et molestiae aut.', 'Voluptas possimus cupiditate sed aperiam. Harum fugiat nihil impedit modi. Voluptatibus dolore omnis porro voluptate hic.', 'asset 15.jpeg', 'Muhammad Yasser', '2018-12-28 00:03:12', '2018-12-28 00:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_27_201918_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
