-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-11-2020 a las 15:05:31
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
  `item_owner` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `auction_end`, `image_url`, `item_owner`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Rhianna Torphy', 'Sed numquam et temporibus aspernatur expedita optio quis cumque facilis voluptatibus voluptatem nihil non.', '2020-11-17 05:00:00', 'https://news.artnet.com/app/news-upload/2020/10/rudolph-256x256.jpg', NULL, NULL, '2020-11-17 15:05:14', '2020-11-17 15:05:14'),
(2, 'Helena Ward', 'Qui explicabo sapiente distinctio est quo qui cumque sed.', '2020-11-18 05:00:00', 'https://news.artnet.com/app/news-upload/2020/10/usher-and-james-Jean-256x256.jpg', NULL, NULL, '2020-11-17 15:05:14', '2020-11-17 15:05:14'),
(3, 'Dr. Ladarius Kertzmann', 'Dolorem voluptatem aut aperiam officia nemo perferendis in pariatur illo voluptas et ipsum quod.', '2020-11-19 05:00:00', 'https://news.artnet.com/app/news-upload/2020/10/AN_4607-256x256.jpg', NULL, NULL, '2020-11-17 15:05:14', '2020-11-17 15:05:14'),
(4, 'Doris Grady PhD', 'Veniam ut quod sapiente repellat reprehenderit consectetur qui laborum quis eos.', '2020-11-20 05:00:00', 'https://news.artnet.com/app/news-upload/2020/10/Sothebys-Alberto-Giacometti-Grande-femme-I-copy-256x256.jpg', NULL, NULL, '2020-11-17 15:05:14', '2020-11-17 15:05:14'),
(5, 'Jena Mitchell', 'Dolor qui dignissimos incidunt consequatur corporis quia eum numquam esse.', '2020-11-21 05:00:00', 'https://news.artnet.com/app/news-upload/2020/10/1_01.jpg', NULL, NULL, '2020-11-17 15:05:15', '2020-11-17 15:05:15'),
(6, 'Jamison Daniel', 'Qui eum officia quia sit earum veniam tempora sapiente.', '2020-11-22 05:00:00', 'https://doublethedonation.com/tips/wp-content/uploads/2016/10/signed-football-1604021_1280-2.jpg', NULL, NULL, '2020-11-17 15:05:15', '2020-11-17 15:05:15'),
(7, 'Vern Homenick', 'Labore voluptate doloribus sed blanditiis necessitatibus vitae ipsa sit quae dolorum incidunt odio.', '2020-11-23 05:00:00', 'https://dyn1.heritagestatic.com/lf?set=path%5B6%2F3%2F4%2F1%2F6341545%5D%2Csizedata%5B850x600%5D&call=url%5Bfile%3Aproduct.chain%5D', NULL, NULL, '2020-11-17 15:05:15', '2020-11-17 15:05:15'),
(8, 'Josh Hegmann Sr.', 'Quisquam veritatis nihil molestiae qui et totam quis hic voluptatem.', '2020-11-24 05:00:00', 'https://dyn1.heritagestatic.com/lf?set=path%5B1%2F7%2F5%2F0%2F6%2F17506538%5D%2Csizedata%5B850x600%5D&call=url%5Bfile%3Aproduct.chain%5D', NULL, NULL, '2020-11-17 15:05:15', '2020-11-17 15:05:15'),
(9, 'Jillian White', 'Laudantium dolorum dolores et expedita qui quo vero minima.', '2020-11-25 05:00:00', 'https://s3.amazonaws.com/images.charitybuzz.com/images/301493/original.JPG?1497967965', NULL, NULL, '2020-11-17 15:05:15', '2020-11-17 15:05:15'),
(10, 'Anthony Daniel', 'Dolores nobis et explicabo sint voluptatem qui voluptatibus incidunt.', '2020-11-26 05:00:00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQeM50EeG4RUdrM8hL9IWsAv00peJvUOk_qaQ&usqp=CAU', NULL, NULL, '2020-11-17 15:05:15', '2020-11-17 15:05:15'),
(11, 'Moses Zboncak', 'Amet ipsa est voluptate non nam commodi officiis et praesentium iusto ea nostrum quisquam.', '2020-11-27 05:00:00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSdx2pc6u3VJFQXorkFeRLAI7BBvkdY8t8QqQ&usqp=CAU', NULL, NULL, '2020-11-17 15:05:15', '2020-11-17 15:05:15'),
(12, 'Dale Weber', 'Quia culpa molestiae qui voluptatibus qui saepe et commodi laudantium atque.', '2020-11-28 05:00:00', 'https://cdn.classicdigest.com/live/carimg/72601_72700/72613_abff8cc234eee813.jpg', NULL, NULL, '2020-11-17 15:05:15', '2020-11-17 15:05:15');

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
(1, 'user', 'user@user.com', '$2y$10$p25IrqgH.1wLvuffjZoHk.PJH3cSxeNifl6PHh1msQuTVy.NcYk0O', 0, 'AZF9Xxkq5l', '2020-11-17 15:05:13', '2020-11-17 15:05:13'),
(2, 'test2', 'test2@test.com', '$2y$10$3M2AqMpeaXO5ibd/lRd9jukcMo3CjCz3SxjY3eHBnY8/a94miCJ9C', 0, 'QPWQAZ15nB', '2020-11-17 15:05:13', '2020-11-17 15:05:13'),
(3, 'admin', 'admin@admin.com', '$2y$10$uIh/vuCs4rYzyBOMudZW/u37q5QLYOMAtz.bsAQeownY/wLYdwcfi', 1, 'kSeyv4aG2W', '2020-11-17 15:05:14', '2020-11-17 15:05:14');

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
(1, 25.00, 1, 1, '2020-11-17 15:05:15', '2020-11-17 15:05:15'),
(2, 50.00, 2, 2, '2020-11-17 15:05:15', '2020-11-17 15:05:15'),
(3, 75.00, 3, 3, '2020-11-17 15:05:15', '2020-11-17 15:05:15');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_item_owner_foreign` (`item_owner`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_item_owner_foreign` FOREIGN KEY (`item_owner`) REFERENCES `users` (`id`);

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
