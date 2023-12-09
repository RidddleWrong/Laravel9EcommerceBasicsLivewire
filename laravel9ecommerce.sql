-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 09 2023 г., 23:57
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `task2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`, `image`, `is_popular`) VALUES
(1, 'minima eveniet', 'minima-eveniet', '2023-11-13 14:23:06', '2023-12-09 16:52:19', NULL, '1702151539.jpg', 1),
(2, 'illo nemo', 'illo-nemo', '2023-11-13 14:23:06', '2023-12-09 16:51:44', NULL, '1702151504.jpg', 1),
(3, 'et molestias', 'et-molestias', '2023-11-13 14:23:06', '2023-12-09 16:51:28', NULL, '1702151488.jpg', 1),
(4, 'debitis ea', 'debitis-ea', '2023-11-13 14:23:06', '2023-12-09 16:51:02', NULL, '1702151462.jpg', 1),
(5, 'et blanditiis', 'et-blanditiis', '2023-11-13 14:23:06', '2023-12-09 16:51:17', NULL, '1702151477.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `top_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `top_title`, `title`, `sub_title`, `offer`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Slide top title', 'Slide title', 'Slide sub title', 'Slide offer', 'http://127.0.0.1:8000/shop', '1702002186.png', 1, '2023-12-07 23:23:06', '2023-12-07 23:23:21'),
(3, 'Slide top title 2', 'Slide title 2', 'Slide sub title 2', 'Slide offer 2', 'http://127.0.0.1:8000/shop', '1702002458.png', 1, '2023-12-07 23:25:58', '2023-12-07 23:27:38');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_12_204745_create_categories_table', 1),
(6, '2023_11_12_210859_create_products_table', 1),
(8, '2023_12_06_174749_add_column_soft_deletes_to_products_table', 2),
(10, '2023_12_06_190504_add_column_soft_deletes_to_categories_table', 3),
(11, '2023_12_08_001341_create_home_sliders_table', 4),
(13, '2023_12_09_180538_add_image_and_is_popular_column_to_categories_table', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int UNSIGNED NOT NULL DEFAULT '10',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'modi est recusandae explicabo omnis ab', 'modi-est-recusandae-explicabo-omnis-ab', 'Id culpa quibusdam voluptatum sit voluptatem non. Ut corrupti corporis asperiores qui est voluptas placeat. Veniam voluptatem ut est nostrum.', 'Eum autem asperiores non harum nobis sed tenetur et. Aliquid aut est laudantium dolor animi sit. Provident qui amet aut temporibus tempore. Sequi libero exercitationem autem provident sequi quae quae. Reprehenderit velit sed voluptatem nisi sunt aut et rem. Occaecati et quia placeat aut et excepturi. Ut et ut maiores labore id. Hic soluta velit ut consectetur repellat sapiente soluta. Temporibus laboriosam ut provident voluptas corrupti nobis labore.', '111.00', NULL, 'PRD268', 'instock', 1, 32, 'product-6.jpg', NULL, 2, '2023-11-13 14:23:06', '2023-12-08 12:51:09', NULL),
(2, 'rem ea et nam qui facilis', 'rem-ea-et-nam-qui-facilis', 'Ut dignissimos quis adipisci ad inventore. Nihil provident error aliquid et sunt placeat inventore. Nemo dolorum unde incidunt maiores nam ipsa est.', 'Nesciunt perferendis ducimus in sit. Omnis dolor quaerat amet omnis. Quo dolor ut dolor tenetur nihil animi. Non a iste dolores ab quibusdam aliquid quae id. Consectetur sunt ut ipsam porro repellendus ducimus. Est et qui consequatur provident. Perferendis exercitationem quis cupiditate voluptatem. Porro cumque ut atque ipsa. Excepturi accusantium praesentium sed autem minus provident odit. Dignissimos recusandae porro est et. Ratione quis minima vel.', '185.00', NULL, 'PRD441', 'instock', 1, 49, 'product-16.jpg', NULL, 3, '2023-11-13 14:23:06', '2023-12-08 12:50:26', NULL),
(3, 'rem sint excepturi qui ut saepe', 'rem-sint-excepturi-qui-ut-saepe', 'Praesentium aperiam est necessitatibus quibusdam. Porro illum eaque dicta est ut dolorum. Ipsa fuga est aut qui.', 'Cupiditate et a ipsum iure aut ut voluptate. Iusto ab ipsa placeat autem aperiam. Assumenda omnis minus quo aut laboriosam facilis ab. Doloremque cupiditate eaque harum consequuntur. Id perferendis dolorem occaecati quae autem nemo et animi. Modi ducimus voluptas amet aliquam explicabo quaerat. At dolorem at fugit quisquam. Quis enim distinctio perferendis voluptatibus consectetur aut.', '236.00', NULL, 'PRD214', 'instock', 1, 12, 'product-7.jpg', NULL, 2, '2023-11-13 14:23:06', '2023-12-08 12:51:19', NULL),
(4, 'quod labore repudiandae sunt consequatur non', 'quod-labore-repudiandae-sunt-consequatur-non', 'Sint ab voluptas voluptates necessitatibus. Ut fugit ipsa ut esse ea molestias sit.', 'Est quia voluptas similique alias nesciunt voluptate. Deserunt magni modi voluptatum aspernatur ut libero nobis. Distinctio qui enim dolores. Cumque et aut vel dolorem cumque est voluptatibus. Dolorem quibusdam corrupti adipisci occaecati natus sunt. Reiciendis consequatur animi culpa. Iste minima perspiciatis ea qui similique. Quisquam provident eligendi et modi ut velit. Eum dignissimos repudiandae dicta at eaque rerum.', '158.00', NULL, 'PRD133', 'instock', 0, 31, 'product-1.jpg', NULL, 4, '2023-11-13 14:23:06', '2023-11-13 14:23:06', NULL),
(5, 'magnam accusamus ratione ut ut vel', 'magnam-accusamus-ratione-ut-ut-vel', 'Ut temporibus minus asperiores est et nihil aperiam sit. Voluptatibus vel ea in aliquam ut autem. Asperiores debitis expedita et et velit. Deleniti totam eum magnam sint dolorem.', 'Voluptates molestiae non ipsam modi id quo ipsa earum. Quibusdam quia officiis corrupti. Similique aperiam id esse beatae et. Quis quo ea eaque veniam. Porro mollitia dignissimos ipsum est. Illo provident accusamus quia quo sit voluptates aut. Eveniet magnam laudantium amet. Delectus est dolorum et tenetur omnis. Explicabo odio illum blanditiis repudiandae labore ipsum. Qui illo quidem alias hic deleniti. Est et sint sit eaque. Maxime voluptatibus aut et ipsum.', '61.00', NULL, 'PRD211', 'instock', 0, 11, 'product-12.jpg', NULL, 3, '2023-11-13 14:23:06', '2023-11-13 14:23:06', NULL),
(6, 'odio non facere harum illum accusantium', 'odio-non-facere-harum-illum-accusantium', 'Ad id quo ex quo voluptate laboriosam. Voluptatem voluptatem et non. Voluptate qui et suscipit incidunt mollitia. Aspernatur enim ea reiciendis quod ullam aliquam aut.', 'Dolor quae rerum ipsa assumenda dolorum aut quae. Quis praesentium unde praesentium suscipit optio ad est. Vel perspiciatis deleniti omnis repellendus. Incidunt et consequuntur veritatis est cupiditate dolor eaque sint. Recusandae et vel praesentium quaerat optio possimus quo nobis. Iste et placeat ullam eum. Cumque maiores vel dolor et rerum. Eligendi ducimus cupiditate nihil modi veritatis facilis repellat. Quia voluptatem et voluptates ut praesentium dolore.', '19.00', NULL, 'PRD254', 'instock', 1, 32, 'product-14.jpg', NULL, 1, '2023-11-13 14:23:06', '2023-12-08 12:51:41', NULL),
(7, 'eligendi non eos maiores distinctio quia', 'eligendi-non-eos-maiores-distinctio-quia', 'Perspiciatis quidem molestias dicta asperiores enim quia. Veniam voluptates voluptatem ipsum et similique. Qui sit quos maxime ratione assumenda.', 'Provident dolorem est deserunt sit praesentium dolore. Expedita laboriosam et qui consequatur. Possimus aperiam omnis asperiores et officiis cupiditate nam quia. Qui alias aliquid id et a ducimus animi. Vero voluptatem incidunt vel ut magnam. Vel cupiditate odit similique culpa voluptate blanditiis. Ut possimus quod ut quia et facilis. Ut rerum ipsum ab reprehenderit. Aut ea tempora ut. Architecto in numquam illum placeat temporibus nam quisquam eveniet.', '241.00', NULL, 'PRD428', 'instock', 0, 38, 'product-13.jpg', NULL, 2, '2023-11-13 14:23:06', '2023-11-13 14:23:06', NULL),
(8, 'eligendi eius perspiciatis velit voluptatibus ut', 'eligendi-eius-perspiciatis-velit-voluptatibus-ut', 'A maiores sit nostrum. Officiis sint blanditiis possimus rerum et. Animi aut praesentium voluptates quaerat. Ut omnis non amet.', 'Nostrum nihil molestiae ipsa ut dolor occaecati. Unde quisquam ex occaecati aliquam. Quia repellat ullam hic maxime odio. Minima et explicabo quia quasi nesciunt laborum. Quia a vitae minus placeat beatae odit sit reiciendis. Sequi qui omnis et blanditiis est. Dolorem sit ut autem ea qui. Ipsum et laboriosam deleniti quia. Est maiores consequatur voluptas. Ut quia nulla neque cupiditate ut est. Nobis autem voluptate aperiam quasi reprehenderit.', '249.00', NULL, 'PRD423', 'instock', 0, 25, 'product-16.jpg', NULL, 1, '2023-11-13 14:23:06', '2023-11-13 14:23:06', NULL),
(9, 'fugiat deserunt sed sit commodi iusto', 'fugiat-deserunt-sed-sit-commodi-iusto', 'Ut praesentium explicabo saepe omnis beatae totam. Facilis tempore consequatur itaque. Ea vel quia tempore expedita et ipsam dolores.', 'Deserunt incidunt facere sunt officiis dolorem omnis. Sit illo vitae ipsam distinctio saepe cum. Est autem sed quia ab. Et aut nesciunt sed et vitae eveniet neque. Illo maxime pariatur animi natus repellat sit temporibus. Quia quia aliquam a quo ut dolor eum. Ratione minus reprehenderit labore eos molestias est est accusantium. Modi ipsam illum incidunt illo et enim enim. Ut qui et totam non nulla quibusdam. Voluptatum ab laborum est dolores error autem sapiente dolor.', '473.00', NULL, 'PRD278', 'instock', 0, 47, 'product-11.jpg', NULL, 5, '2023-11-13 14:23:06', '2023-11-13 14:23:06', NULL),
(10, 'voluptatem ea at cumque ex et', 'voluptatem-ea-at-cumque-ex-et', 'Sapiente est a odit reiciendis praesentium. Autem illo dolor voluptates. Perspiciatis error aut cumque vel.', 'Dolorem consectetur quo corrupti nam amet. Ut necessitatibus laboriosam ratione excepturi. Quos non iusto quod. Dolorum tenetur et possimus aperiam et. Qui expedita minus odit illo consequatur. Est sit voluptatem iusto consequatur libero quam. Soluta molestiae facilis aspernatur tempora officia aut. Eum commodi similique unde ea est est quidem. Molestiae odio eius dolore omnis itaque quidem.', '279.00', NULL, 'PRD342', 'instock', 0, 43, 'product-2.jpg', NULL, 4, '2023-11-13 14:23:06', '2023-11-13 14:23:06', NULL),
(11, 'dignissimos ipsam nesciunt veritatis voluptas voluptates', 'dignissimos-ipsam-nesciunt-veritatis-voluptas-voluptates', 'Deserunt ut repudiandae velit corrupti aut velit maxime. Animi neque quos autem nostrum nisi dolores. Culpa nulla eum perferendis expedita iste est. Sequi vero enim quo sit ut a.', 'Ipsam ducimus dolore est voluptas aspernatur voluptatem qui. A voluptatem et tempore eum aliquid eos totam voluptates. Et enim accusantium ipsum reiciendis omnis quibusdam. Doloremque necessitatibus earum eos dolore exercitationem quae minus possimus. Architecto quos non ipsa iure a non. Exercitationem est dolores sint placeat.', '372.00', NULL, 'PRD427', 'instock', 0, 24, 'product-15.jpg', NULL, 1, '2023-11-13 14:23:06', '2023-12-08 12:58:05', NULL),
(12, 'voluptatibus voluptate molestiae vel aut aliquid', 'voluptatibus-voluptate-molestiae-vel-aut-aliquid', 'Enim explicabo iure aut at porro assumenda nesciunt et. Sequi beatae reiciendis est aut in. Id quisquam est quisquam maiores saepe corrupti reprehenderit necessitatibus.', 'Odit reprehenderit voluptatem consequuntur aut enim. Perferendis a unde eum officiis sint. Sequi iusto et et at. Ex error at sit. Id ut ea tenetur vero et in quas. Voluptas distinctio cum aliquam. Commodi impedit vel vel et maxime praesentium. Quaerat nihil minus voluptas vero ea expedita vel. Debitis fuga voluptatem consequatur ipsa atque ex. Itaque distinctio ut quas sapiente. Deleniti facere officia et soluta itaque ut excepturi omnis.', '486.00', NULL, 'PRD494', 'instock', 0, 19, 'product-4.jpg', NULL, 5, '2023-11-13 14:23:06', '2023-11-13 14:23:06', NULL),
(13, 'nesciunt placeat harum natus sit in', 'nesciunt-placeat-harum-natus-sit-in', 'Itaque deleniti in quia atque et iste. Est voluptate quos ut sit cum cumque. Et eum reiciendis laboriosam tenetur velit.', 'Eos est et molestiae aut amet quas sint. Rem nobis accusamus recusandae et odio voluptatem blanditiis accusamus. Impedit consequuntur eaque dolor libero. Ea voluptatem explicabo est provident perferendis. Alias incidunt ut maiores voluptatem voluptas non et. Ea tempore voluptates rerum qui expedita cum. Laborum id libero facilis omnis voluptas.', '277.00', NULL, 'PRD222', 'instock', 0, 42, 'product-3.jpg', NULL, 3, '2023-11-13 14:23:06', '2023-11-13 14:23:06', NULL),
(14, 'quo aut officia dicta voluptatibus dolor', 'quo-aut-officia-dicta-voluptatibus-dolor', 'Facere assumenda id natus molestias dignissimos quia. Autem totam omnis enim cupiditate ratione error aut consequatur. Vitae vel odio ut incidunt. Quia ratione sequi temporibus sunt eaque quae.', 'Totam tempore ipsum exercitationem voluptas facere laudantium dicta blanditiis. Quaerat perferendis a illo praesentium. Ea fugit sapiente explicabo aut eos. A minus molestiae doloremque atque excepturi excepturi numquam. Omnis cupiditate itaque pariatur. Fuga consequatur omnis qui libero minus repellendus. Aliquid possimus enim rerum id alias ut nam. Aut est nulla aut. Qui et harum placeat quia reprehenderit. Ex autem omnis qui qui deleniti est earum.', '276.00', NULL, 'PRD347', 'instock', 0, 13, 'product-5.jpg', NULL, 3, '2023-11-13 14:23:06', '2023-11-13 14:23:06', NULL),
(15, 'odio est est aut quaerat corrupti', 'odio-est-est-aut-quaerat-corrupti', 'Provident similique architecto neque dicta error cum cupiditate. Iure et nihil aut sed saepe. Hic dignissimos reprehenderit voluptatem et non.', 'Quia debitis in fugiat optio debitis et aperiam. Nostrum odio enim aut vitae voluptatem. Aliquam consequatur dignissimos sit dolorem. Aut autem et delectus debitis magnam est blanditiis quis. Aut cum alias praesentium neque natus est. Quis ad nobis harum minima quo est reprehenderit et. Et aut omnis impedit minima eum ullam quia. Distinctio minus reprehenderit odit quo et maxime. Odit ut dolorum fuga aut qui temporibus ex nisi. Ut necessitatibus earum dolor et consequatur unde.', '25.00', NULL, 'PRD332', 'instock', 0, 27, 'product-15.jpg', NULL, 2, '2023-11-13 14:23:06', '2023-11-13 14:23:06', NULL),
(16, 'recusandae ratione earum voluptas impedit maiores', 'recusandae-ratione-earum-voluptas-impedit-maiores', 'Et placeat veniam veritatis. Officiis dolor doloremque repellat voluptatum.', 'Eligendi nihil placeat ex ad. Quo sunt voluptate voluptas odio. Autem voluptatem doloribus quia dolor unde commodi. Repellendus quibusdam occaecati quia quia quas occaecati qui. Et veniam qui reprehenderit suscipit sed nihil ea. Molestiae modi omnis nihil molestiae vero officia. Et quibusdam et sunt cumque in qui tempore. Nihil dolorem molestiae quis laborum dolorem quasi dicta.', '196.00', NULL, 'PRD137', 'instock', 0, 20, 'product-2.jpg', NULL, 2, '2023-11-13 14:23:06', '2023-11-13 14:23:06', NULL),
(17, 'New Product Edited', 'new-product-edited', 'New product 1 short description edited', 'New product 1 description edited', '333.00', '280.00', 'PDR333', 'outofstock', 0, 11, '1702050227.jpg', NULL, 1, '2023-12-03 14:00:36', '2023-12-08 12:57:50', NULL),
(18, 'asdasd', 'asdasd', 'asd', 'asd', '123.00', '123.00', 'asd', 'instock', 0, 123, '1702002762.png', NULL, 4, '2023-12-07 23:32:42', '2023-12-08 13:24:06', '2023-12-08 13:24:06');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for nirmal User',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Main admin', 'admin@gmail.com', NULL, '$2y$10$lIeogXwcawdhnygoLWRXwO9qFn8QN4IKPsAJ86U3Z5RhCJ5jIOrQ6', 'ADM', NULL, '2023-11-26 19:18:53', '2023-11-26 19:18:53');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
