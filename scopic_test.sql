-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-11-2020 a las 15:13:34
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `scopic_test`
--
CREATE DATABASE IF NOT EXISTS `scopic_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `scopic_test`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auction_end` timestamp NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `auction_end`, `image_url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ephraim Ziemann', 'Aut exercitationem maxime est facilis possimus quia nihil in.', '2020-11-06 15:07:51', 'https://news.artnet.com/app/news-upload/2020/10/rudolph-256x256.jpg', NULL, '2020-11-06 15:07:51', '2020-11-06 15:07:51'),
(2, 'Mrs. Martina Gutmann', 'Id eos sunt qui non quibusdam culpa praesentium totam.', '2020-11-07 15:07:51', 'https://news.artnet.com/app/news-upload/2020/10/usher-and-james-Jean-256x256.jpg', NULL, '2020-11-06 15:07:51', '2020-11-06 15:07:51'),
(3, 'Rory Jacobs', 'Ut cumque voluptate odit nobis tempore vero ea veritatis et delectus doloribus.', '2020-11-08 15:07:51', 'https://news.artnet.com/app/news-upload/2020/10/AN_4607-256x256.jpg', NULL, '2020-11-06 15:07:51', '2020-11-06 15:07:51'),
(4, 'Lucius Paucek', 'Necessitatibus accusantium quae et architecto aut et quia commodi voluptate ex aperiam.', '2020-11-09 15:07:51', 'https://news.artnet.com/app/news-upload/2020/10/Sothebys-Alberto-Giacometti-Grande-femme-I-copy-256x256.jpg', NULL, '2020-11-06 15:07:51', '2020-11-06 15:07:51'),
(5, 'Prof. Devante Goldner', 'Ab fugit laborum nihil accusamus sequi incidunt doloremque natus et.', '2020-11-10 15:07:51', 'https://news.artnet.com/app/news-upload/2020/10/1_01.jpg', NULL, '2020-11-06 15:07:51', '2020-11-06 15:07:51'),
(6, 'Mr. Rudolph Hagenes DDS', 'Quam fuga aut a culpa qui iusto sit est voluptatem rerum ea.', '2020-11-11 15:07:51', 'https://doublethedonation.com/tips/wp-content/uploads/2016/10/signed-football-1604021_1280-2.jpg', NULL, '2020-11-06 15:07:51', '2020-11-06 15:07:51'),
(7, 'Sylvan D\'Amore', 'Similique nihil optio quasi rerum omnis aut.', '2020-11-12 15:07:51', 'https://dyn1.heritagestatic.com/lf?set=path%5B6%2F3%2F4%2F1%2F6341545%5D%2Csizedata%5B850x600%5D&call=url%5Bfile%3Aproduct.chain%5D', NULL, '2020-11-06 15:07:51', '2020-11-06 15:07:51'),
(8, 'Susie Sawayn I', 'Soluta sunt inventore similique placeat explicabo officia modi error reprehenderit praesentium distinctio dolorum.', '2020-11-13 15:07:51', 'https://dyn1.heritagestatic.com/lf?set=path%5B1%2F7%2F5%2F0%2F6%2F17506538%5D%2Csizedata%5B850x600%5D&call=url%5Bfile%3Aproduct.chain%5D', NULL, '2020-11-06 15:07:51', '2020-11-06 15:07:51'),
(9, 'Adolfo Ullrich', 'Quis rerum quos dolores consequatur omnis eos voluptates fugit tempore omnis.', '2020-11-14 15:07:52', 'https://s3.amazonaws.com/images.charitybuzz.com/images/301493/original.JPG?1497967965', NULL, '2020-11-06 15:07:52', '2020-11-06 15:07:52'),
(10, 'Dr. Kathryn Greenholt', 'Corporis non perspiciatis dolorum et nisi et inventore explicabo occaecati rerum atque.', '2020-11-15 15:07:52', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQeM50EeG4RUdrM8hL9IWsAv00peJvUOk_qaQ&usqp=CAU', NULL, '2020-11-06 15:07:52', '2020-11-06 15:07:52'),
(11, 'Mr. Clinton Kuhlman', 'Molestias esse nemo tenetur est quasi et soluta tenetur rem.', '2020-11-16 15:07:52', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSdx2pc6u3VJFQXorkFeRLAI7BBvkdY8t8QqQ&usqp=CAU', NULL, '2020-11-06 15:07:52', '2020-11-06 15:07:52'),
(12, 'Karli Lubowitz', 'Consequatur nobis ipsam deleniti quia et dignissimos.', '2020-11-17 15:07:52', 'https://cdn.classicdigest.com/live/carimg/72601_72700/72613_abff8cc234eee813.jpg', NULL, '2020-11-06 15:07:52', '2020-11-06 15:07:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_11_04_174838_create_items_table', 1),
(9, '2020_11_04_174933_create_user_auctions_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('964be6b8f32c69fb656cf20c419f22d2c541c83189a48a79c81afd97d304beb6bd81539acb110608', 3, 2, NULL, '[\"*\"]', 0, '2020-11-06 15:08:29', '2020-11-06 15:08:29', '2021-11-06 10:08:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'hN3Hk60akbmH1FYMwxdYnwddfprHnpslZxxWzRDG', NULL, 'http://localhost', 1, 0, 0, '2020-11-05 18:41:07', '2020-11-05 18:41:07'),
(2, NULL, 'Laravel Personal Access Client', '7R5Ahiv2xteJB0XKZ3N8RPYDG17VQbN9TNOLRvCg', 'users', 'http://localhost', 0, 1, 0, '2020-11-05 18:41:07', '2020-11-05 18:41:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-05 18:41:07', '2020-11-05 18:41:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('36417177999ca8f4d099607d04cfd6d3b5ecfdb7c0e9924c90c9b0d2ab7f1da0eae850ffd98a1a07', '964be6b8f32c69fb656cf20c419f22d2c541c83189a48a79c81afd97d304beb6bd81539acb110608', 0, '2021-11-06 10:08:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@user.com', '$2y$10$khb4oZG7CUjHJT9kr3oUg.MgreT9mlyPveUDXIiyjUpopQ/UCu1Ja', 0, 'qImkfh1FYg', '2020-11-06 15:07:51', '2020-11-06 15:07:51'),
(2, 'test2', 'test2@test.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'W9JIut6qn9', '2020-11-06 15:07:51', '2020-11-06 15:07:51'),
(3, 'admin', 'admin@admin.com', '$2y$10$o.bMuWeaNwlmU0FTw.Fsv.dkZ/HeTW5vRU5pIwUOrkUmGYKWn4rPi', 1, 'gcIwxpOnvC', '2020-11-06 15:07:51', '2020-11-06 15:07:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_auctions`
--

CREATE TABLE `user_auctions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bid` double(11,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_auctions`
--

INSERT INTO `user_auctions` (`id`, `bid`, `user_id`, `item_id`, `created_at`, `updated_at`) VALUES
(1, 12.00, 3, 2, '2020-11-06 15:10:29', '2020-11-06 15:10:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `user_auctions`
--
ALTER TABLE `user_auctions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_auctions_user_id_foreign` (`user_id`),
  ADD KEY `user_auctions_item_id_foreign` (`item_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `user_auctions`
--
ALTER TABLE `user_auctions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `user_auctions`
--
ALTER TABLE `user_auctions`
  ADD CONSTRAINT `user_auctions_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `user_auctions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
