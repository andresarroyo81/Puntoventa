-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.33 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para puntoventa
CREATE DATABASE IF NOT EXISTS `puntoventa` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `puntoventa`;

-- Volcando estructura para tabla puntoventa.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.categories: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(3, 'Aceites Comestibles y de Oliva', '61396e44e9586_.jpg', '2021-09-09 02:15:32', '2021-09-09 02:15:32'),
	(4, 'Arroz, Frijol y Semillas', '61396ec225c5e_.jpg', '2021-09-09 02:17:38', '2021-09-09 02:17:38'),
	(5, 'Alimentos Preparados', '61396ee73dede_.jpg', '2021-09-09 02:18:15', '2021-09-09 02:18:15'),
	(6, 'Azucares y Endulcorantes', '61396f263fa8e_.jpg', '2021-09-09 02:19:18', '2021-09-09 02:19:18'),
	(7, 'Cafe y Te', '61396f6c4d08c_.jpg', '2021-09-09 02:20:28', '2021-09-09 02:20:28'),
	(8, 'Consomes y Pures', '61396f8224f1c_.jpg', '2021-09-09 02:20:50', '2021-09-09 02:20:50'),
	(9, 'Frutas y Chiles Secos', '61396f9aa0317_.jpg', '2021-09-09 02:21:14', '2021-09-09 02:21:14'),
	(10, 'Galletas Cereales y Barras', '61396fb4cf3f6_.jpg', '2021-09-09 02:21:40', '2021-09-09 02:21:40'),
	(11, 'Harinas', '61396fced6d5a_.jpg', '2021-09-09 02:22:06', '2021-09-09 02:22:06'),
	(12, 'Mermeladas y Untables', '61396fe548a88_.jpg', '2021-09-09 02:22:29', '2021-09-09 02:22:29'),
	(13, 'Mieles', '61396ffd342cf_.jpg', '2021-09-09 02:22:53', '2021-09-09 02:22:53'),
	(14, 'Moles', '613970178371e_.jpg', '2021-09-09 02:23:19', '2021-09-09 02:23:19'),
	(15, 'Pan, Toritllas y Totopos', '61397035b6108_.jpg', '2021-09-09 02:23:49', '2021-09-09 02:23:49'),
	(16, 'Pastas y Sopas Preparadas', '6139704a2fbd3_.jpg', '2021-09-09 02:24:10', '2021-09-09 02:24:10'),
	(17, 'Pescados y Mariscos', '6139705c759c3_.jpg', '2021-09-09 02:24:28', '2021-09-09 02:24:28'),
	(18, 'Postres', '6139706a4c112_.jpg', '2021-09-09 02:24:42', '2021-09-09 02:24:42'),
	(19, 'Sales y Especies', '613970803b4d7_.jpg', '2021-09-09 02:25:04', '2021-09-09 02:25:04'),
	(20, 'Salsas', '6139708f55fdf_.jpg', '2021-09-09 02:25:19', '2021-09-09 02:25:19'),
	(21, 'Vegetales y Chiles Envasados', '613970ab49a38_.jpg', '2021-09-09 02:25:47', '2021-09-09 02:25:47'),
	(22, 'Vinagres', '61397233e69e5_.jpg', '2021-09-09 02:26:08', '2021-09-09 02:32:19'),
	(23, 'Bebidas', '6139736c210ec_.jpg', '2021-09-09 02:37:32', '2021-09-09 02:37:32');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Volcando estructura para tabla puntoventa.companies
CREATE TABLE IF NOT EXISTS `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxpayer_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.companies: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;

-- Volcando estructura para tabla puntoventa.denominations
CREATE TABLE IF NOT EXISTS `denominations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('BILLETE','MONEDA','OTRO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BILLETE',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.denominations: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `denominations` DISABLE KEYS */;
INSERT INTO `denominations` (`id`, `type`, `value`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'BILLETE', '1000', NULL, '2021-09-08 00:03:23', '2021-09-08 00:03:23'),
	(2, 'BILLETE', '500', NULL, '2021-09-08 00:03:23', '2021-09-08 00:03:23'),
	(3, 'BILLETE', '200', NULL, '2021-09-08 00:03:23', '2021-09-08 00:03:23'),
	(4, 'BILLETE', '100', NULL, '2021-09-08 00:03:23', '2021-09-08 00:03:23'),
	(5, 'BILLETE', '50', NULL, '2021-09-08 00:03:23', '2021-09-08 00:03:23'),
	(6, 'BILLETE', '20', NULL, '2021-09-08 00:03:23', '2021-09-08 00:03:23'),
	(7, 'MONEDA', '10', NULL, '2021-09-08 00:03:23', '2021-09-08 00:03:23'),
	(8, 'MONEDA', '5', NULL, '2021-09-08 00:03:23', '2021-09-08 00:03:23'),
	(9, 'MONEDA', '2', NULL, '2021-09-08 00:03:23', '2021-09-08 00:03:23'),
	(10, 'MONEDA', '1', NULL, '2021-09-08 00:03:23', '2021-09-08 00:03:23'),
	(11, 'MONEDA', '0.5', NULL, '2021-09-08 00:03:23', '2021-09-08 00:03:23'),
	(12, 'OTRO', '0', NULL, '2021-09-08 00:03:23', '2021-09-08 00:03:23');
/*!40000 ALTER TABLE `denominations` ENABLE KEYS */;

-- Volcando estructura para tabla puntoventa.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla puntoventa.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.migrations: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2021_08_18_213318_create_companies_table', 1),
	(6, '2021_08_18_213927_create_denominations_table', 1),
	(7, '2021_08_18_214329_create_categories_table', 1),
	(8, '2021_08_18_214653_create_products_table', 1),
	(9, '2021_08_18_222041_create_sales_table', 1),
	(10, '2021_08_18_223026_create_sale_details_table', 1),
	(11, '2021_08_25_135311_create_permission_tables', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla puntoventa.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.model_has_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla puntoventa.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.model_has_roles: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1),
	(1, 'App\\Models\\User', 3);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Volcando estructura para tabla puntoventa.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla puntoventa.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.permissions: ~18 rows (aproximadamente)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'Categorias_Index', 'web', '2021-09-08 00:22:24', '2021-09-08 00:35:22'),
	(2, 'Productos_Index', 'web', '2021-09-08 00:22:43', '2021-09-08 00:22:43'),
	(3, 'Ventas_Index', 'web', '2021-09-08 00:23:08', '2021-09-08 00:23:08'),
	(4, 'Roles_Index', 'web', '2021-09-08 00:23:20', '2021-09-08 00:23:20'),
	(5, 'Permisos_Index', 'web', '2021-09-08 00:23:39', '2021-09-08 00:23:39'),
	(6, 'Asignar_Index', 'web', '2021-09-08 00:28:41', '2021-09-08 00:28:41'),
	(7, 'Usuarios_Index', 'web', '2021-09-08 00:29:01', '2021-09-08 00:29:01'),
	(8, 'Monedas_Index', 'web', '2021-09-08 00:29:29', '2021-09-08 00:29:29'),
	(9, 'Arqueos_Index', 'web', '2021-09-08 00:30:08', '2021-09-08 00:30:08'),
	(10, 'Reportes_Index', 'web', '2021-09-08 00:30:19', '2021-09-08 00:30:19'),
	(11, 'Categorias_Editar', 'web', '2021-09-08 00:44:23', '2021-09-08 00:48:41'),
	(12, 'Categorias_Eliminar', 'web', '2021-09-08 00:44:53', '2021-09-08 00:48:53'),
	(13, 'Categorias_Agregar', 'web', '2021-09-08 00:46:21', '2021-09-08 00:50:16'),
	(14, 'Categorias_Buscar', 'web', '2021-09-08 00:47:59', '2021-09-08 00:47:59'),
	(15, 'Productos_Agregar', 'web', '2021-09-08 00:50:57', '2021-09-08 00:53:28'),
	(16, 'Productos_Buscar', 'web', '2021-09-08 00:51:07', '2021-09-08 00:51:07'),
	(17, 'Productos_Editar', 'web', '2021-09-08 00:51:40', '2021-09-08 00:51:40'),
	(18, 'Productos_Eliminar', 'web', '2021-09-08 00:51:59', '2021-09-08 00:52:20');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Volcando estructura para tabla puntoventa.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.personal_access_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla puntoventa.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `stock` int(11) NOT NULL,
  `alerts` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.products: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `barcode`, `cost`, `price`, `stock`, `alerts`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
	(1, 'Agua Purificada Ciel Garrafon de 20 L Retornable', '3159346', 30.00, 30.00, 1, 1, '613974b872927_.jpg', 23, '2021-09-09 02:43:04', '2021-09-09 02:43:04'),
	(2, 'Refresco Coca-Cola 335 ml', '3159347', 9.00, 9.00, 5, 2, '613976770a4d3_.jpg', 23, '2021-09-09 02:48:51', '2021-09-09 02:50:31');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Volcando estructura para tabla puntoventa.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.roles: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'Administrador', 'web', '2021-09-08 00:32:27', '2021-09-08 00:32:27'),
	(2, 'Empleado', 'web', '2021-09-08 01:10:29', '2021-09-08 01:10:29');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla puntoventa.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.role_has_permissions: ~28 rows (aproximadamente)
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(1, 2),
	(2, 2),
	(3, 2),
	(8, 2),
	(11, 2),
	(13, 2),
	(14, 2),
	(15, 2),
	(16, 2),
	(17, 2);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla puntoventa.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `total` decimal(10,2) NOT NULL,
  `items` int(11) NOT NULL,
  `cash` decimal(10,2) NOT NULL,
  `change` decimal(10,2) NOT NULL,
  `status` enum('PAGADO','PENDIENTE','CANCELADO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PAGADO',
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_user_id_foreign` (`user_id`),
  CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.sales: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

-- Volcando estructura para tabla puntoventa.sale_details
CREATE TABLE IF NOT EXISTS `sale_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL,
  `qantity` decimal(10,2) NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `sale_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_details_product_id_foreign` (`product_id`),
  KEY `sale_details_sale_id_foreign` (`sale_id`),
  CONSTRAINT `sale_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `sale_details_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.sale_details: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sale_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_details` ENABLE KEYS */;

-- Volcando estructura para tabla puntoventa.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` enum('Administrador','Empleado') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Administrador',
  `status` enum('Activo','Bloqueado') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Activo',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla puntoventa.users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `phone`, `email`, `profile`, `status`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Andres Arroyo', '6181387157', 'jaime.andres81@hotmail.com', 'Administrador', 'Activo', NULL, '$2y$10$LLjXsuwq0ODDcmHkLa1uSuX2dH.N2hDbre.q0XnoYMfrjxCb9uToe', NULL, NULL, '2021-09-08 00:03:24', '2021-09-09 02:58:19'),
	(3, 'Kalisto Lopez de la Cruz', '6181387158', 'kalixto.lopez@gmail.com', 'Administrador', 'Activo', NULL, '$2y$10$BlUXVM9n47FMjGX/bclAVOLWdyD5ENmT5fHlR8..qM7dNDMt5oI9O', NULL, NULL, '2021-09-08 00:33:59', '2021-09-08 00:33:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
