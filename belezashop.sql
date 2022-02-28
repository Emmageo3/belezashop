-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 19 juin 2021 à 10:27
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `belezashop`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_06_16_120014_create_users_table', 1),
(2, '2021_06_16_130125_create_products_table', 2),
(3, '2021_06_16_161238_create_cart_table', 3),
(4, '2021_06_16_193519_create_orders_table', 4),
(5, '2021_06_17_092331_create_categories_table', 5);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `status`, `payment_method`, `payment_status`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'en cours', 'cash', 'pending', 'Grand Yoff', '2021-06-16 18:51:36', '2021-06-16 18:51:36'),
(2, 5, 1, 'pending', 'cash', 'pending', 'Grand Yoff', '2021-06-16 18:51:36', '2021-06-16 18:51:36'),
(3, 4, 1, 'pending', 'cash', 'pending', 'grand yoff', NULL, NULL),
(4, 5, 1, 'pending', 'cash', 'en cours', 'grand yoff', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `nom`, `categorie`, `prix`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Perruque Julia', 'Wigs', '65000', 'Perruques cheveux raides naturels pour black middle lace front wig straight hair perruque vrai cheveux doux humain naturel perruque femme vrai cheveux bresilien (22 inch, Naturel)', 'https://images-na.ssl-images-amazon.com/images/I/61SDYWEzK-L._AC_SY355_.jpg', NULL, NULL),
(2, 'Puff Sleeve Mini Dress', 'Outfits', '15000', 'robe très tendance disponible en plusieurs couleurs', 'https://cdn.shopify.com/s/files/1/0293/9277/products/05-05-20_studio_1_rm_ca_10-42-30_7__71318fn_white_3719_ra_468x.jpg?v=1588880755', NULL, NULL),
(3, 'Cotten Candy', 'Shoes', '7000', 'Hyper confortable', 'https://cdn.shopify.com/s/files/1/0401/7117/6092/products/image_4ebc4d93-e261-4697-9dd3-cedc5110106a_580x.jpg?v=1609011396', NULL, NULL),
(4, 'Mini sac', 'Bags', '5000', 'dimensions : 150x110x5,9mm, Poignée portative + chaîne, Mini sac épaule ou main à bandoulière,Existe en 4 coloris ', 'https://media.cdnws.com/_i/169562/m840-10042/353/42/mini-petit-sac-carr-2020-nouvelle-mode-qualit-pu-cuir-femmes-sac-main-alligator-cuir-cha.jpeg', NULL, NULL),
(5, 'Collier Baddie', 'Jewelry', '5000', 'Collier en acier inoxydable avec pendentif en forme de lettre en forme de baddie', 'https://i1.wp.com/grunge-clothing.com/wp-content/uploads/2021/03/Hc5053c94fc2e45e6970b8b1acec5cf2fX.jpg?fit=1200%2C1200&ssl=1', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Emma Kanfany', 'kingmzaa2@gmail.com', '$2y$10$f4PpvirgVM5.LqBb8ZJ2dentJ5KRq9qDs3Izez/T5qyRhS.WF7I0y', NULL, NULL),
(2, 'Isabelle Mendy', 'isabelle22@gmail.com', '$2y$10$5V6Y2v7.k0w5H5L9NLdLiebDvsWV3EmTeZ9ipp0e.1yMhuo1upAzy', '2021-06-16 20:21:17', '2021-06-16 20:21:17');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
