-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Gegenereerd op: 26 sep 2020 om 08:11
-- Serverversie: 8.0.19
-- PHP-versie: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeception`
--

/* ff test om te zien of na gebruik env var de initial dump nog werkt, kan dus weg */
CREATE TABLE `walter_test` (
    `id` int NOT NULL,
    `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `walter_test2` (
                               `id` int NOT NULL,
                               `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `api_token`
--

CREATE TABLE `api_token` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `api_token`
--

INSERT INTO `api_token` (`id`, `user_id`, `token`, `expires_at`) VALUES
(1, 1, 'bf71455aa0c6da6501c4d78384a0ccfbac79853eb7e3342016e1c6825468fe08d876d018e7a20f8760eb837f8c446b8331009453910d0b041a7349e0', '2020-09-25 15:11:43'),
(2, 1, 'f87ec5e84d7d581bc8bc7529b5e94452e41b06d16e8532140a1bfff001e9e8fa1369de99ce69e96f53c16c25098cec84abff1dc09a5680864fa05a55', '2020-09-25 15:11:43'),
(3, 2, '9f7a1b814208c00579a1d0d3a8cbe267889516f21cd390c4800034d9d9524217dd41bcfa7a8cc8cbf2f4834faa64a515cf41b6d8eeffa123a4d0e1ea', '2020-09-25 15:11:43'),
(4, 2, '0a30efc252cec2f3be0b3eba32b25ec214214fff49e7d6348db5014afea01c0b5f2e18ab8e2dea6da78f8565d75d59e462bb09e8fd158cea170f06b3', '2020-09-25 15:11:43'),
(5, 3, '6c90da8efe75fb9dc83e90f12998b26155619dc1532ceb3dc8a7bafd4676ed0cb1155844ae97e9ed1b5f38a218596f54ad055e713b8543db5d64df62', '2020-09-25 15:11:43'),
(6, 3, '71ec2e006a00481fe579ac9ab295ef065af7fe60f4b9b054bf0cab866d52827ffef539a26d9cb70b22c0f7372ba4262586704c1f1df71ef9900eed40', '2020-09-25 15:11:43'),
(7, 4, '1e610f9b28051c1d008ab99fe3232d9aa50bb240b2ef88d5da403456fee63c43eb646f7ed2029973b1fd51ae14760d2af6ce5bf80cdf52caa880d2da', '2020-09-25 15:11:43'),
(8, 4, '0117acbd11ef18be0c1c41d701433ab966106b08a4f39ea287fe78d63b1a2d2e1fb053be93037443ca557baba17afc182527ead76566ee3b7d783810', '2020-09-25 15:11:43'),
(9, 5, 'c848d3d78ddc003f6f5dcb29a7d53ac45480ed1f386b13487cb69c9fd9e7fe1009947757b1286303f94c091037bb8a0bd81c9f262fd31ed22c1c744a', '2020-09-25 15:11:43'),
(10, 5, '5d60abddbb28e5feeffb49423ef62534488cbe8b65640dd2e6f79150d4ff47ae92c9db3ca0a1bbb200d56df01d424b4cd33caf3757f0dbe48bf830e7', '2020-09-25 15:11:43'),
(11, 6, 'e24cbef2b4e9ca59cc5504fd5ed21a9da8f5e81eb3c39aa7a7c2f161f6380909492c3f7aa5b1fa4442260faf778a44b88ce250dc1173326eac7ed02b', '2020-09-25 15:11:43'),
(12, 6, '50a787246b83d27dccef38fc37d5e32aa974c41e34f7b1b70cbcb13c71d5880611684f2eaf98f5eb1fca3f67b4dbb39df36fbb0cd1c26cc0567f5c66', '2020-09-25 15:11:43'),
(13, 7, 'fb5370ee2d6de2a55136b1fa9b94559ed1464a8d1897c6759206c2ea6730ffbe70a65e1c82e08b0603e979e2d668def318e531fc6d5bf34658dc2480', '2020-09-25 15:11:43'),
(14, 7, '1a2b79f4b1b5c7d92b8973566d10091dd18283d254f9586d7927a72d16a263b6c6450c749ca5987011c0eb681d265392d299c132aac4f6cba0999881', '2020-09-25 15:11:43'),
(15, 8, '6f712ee0c67952a83bf48338e585f34fb5a7e91e0dd7b6a05a7b7249c4370e65900287be97300e9dfb7c89af7539d2c4acc409c44c51683964abd7fa', '2020-09-25 15:11:44'),
(16, 8, '42e958c551ed0337b49bf1baf416b764d6ff19efd7c68ac6d5c744a46ef5635ccba68c786d4aae33c12e855eb884b7a7d19c3e5e44c8a1272e940fab', '2020-09-25 15:11:44'),
(17, 9, 'dab01ab67735ad2ee112706cda41924ec6d2260df8535a50efe3e2f1637c772962bd21dbd48582935acfa526123960ccf78df210405231317e31fe26', '2020-09-25 15:11:44'),
(18, 9, 'db5ec069e60343649331e5f3037770be1a5a75b31b21fa40efa84e0adb2c39b7c59d2c1924657a114859bd9219057214abe5aba71568459287e545c3', '2020-09-25 15:11:44'),
(19, 10, 'bea2d907ef820f3d93a965af0b205dd11bd318ca68abe7ffd84f6e51acda6d819a174b0be20243e79f3ef3aeb2995b7b45e221d09d10142018f77788', '2020-09-25 15:11:44'),
(20, 10, '3104f871411a43313955fb68ebb81946d6e0d4c81097f586f2fbf0d61daa3a8e660d805137ca68ffbe22e00a5db72243b163da24ae3332c842c056e5', '2020-09-25 15:11:44');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `article`
--

CREATE TABLE `article` (
  `id` int NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `published_at` datetime DEFAULT NULL,
  `heart_count` int NOT NULL,
  `image_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `article`
--

INSERT INTO `article` (`id`, `author_id`, `title`, `slug`, `content`, `published_at`, `heart_count`, `image_filename`, `created_at`, `updated_at`) VALUES
(1, 8, 'Life on Planet Mercury: Tan, Relaxing and Fabulous', 'life-on-planet-mercury-tan-relaxing-and-fabulous', 'Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.', '2020-07-26 06:18:39', 77, 'mercury.jpeg', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(2, 2, 'Light Speed Travel: Fountain of Youth or Fallacy', 'light-speed-travel-fountain-of-youth-or-fallacy', 'Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.', '2020-07-11 04:10:50', 43, 'mercury.jpeg', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(3, 1, 'Light Speed Travel: Fountain of Youth or Fallacy', 'light-speed-travel-fountain-of-youth-or-fallacy-1', 'Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.', '2020-09-23 22:16:34', 100, 'lightspeed.png', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(4, 8, 'Why Asteroids Taste Like Bacon', 'why-asteroids-taste-like-bacon', 'Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.', NULL, 95, 'lightspeed.png', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(5, 4, 'Light Speed Travel: Fountain of Youth or Fallacy', 'light-speed-travel-fountain-of-youth-or-fallacy-2', 'Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.', '2020-09-16 18:40:42', 8, 'lightspeed.png', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(6, 8, 'Why Asteroids Taste Like Bacon', 'why-asteroids-taste-like-bacon-1', 'Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.', '2020-08-30 15:36:37', 64, 'lightspeed.png', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(7, 1, 'Light Speed Travel: Fountain of Youth or Fallacy', 'light-speed-travel-fountain-of-youth-or-fallacy-3', 'Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.', '2020-08-11 22:19:51', 65, 'asteroid.jpeg', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(8, 4, 'Why Asteroids Taste Like Bacon', 'why-asteroids-taste-like-bacon-2', 'Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.', '2020-07-06 02:17:10', 88, 'mercury.jpeg', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(9, 5, 'Why Asteroids Taste Like Bacon', 'why-asteroids-taste-like-bacon-3', 'Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.', NULL, 54, 'mercury.jpeg', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(10, 2, 'Why Asteroids Taste Like Bacon', 'why-asteroids-taste-like-bacon-4', 'Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\nlorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\nlabore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n**turkey** shank eu pork belly meatball non cupim.\n\nLaboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\nlaboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\ncapicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\npicanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\noccaecat lorem meatball prosciutto quis strip steak.\n\nMeatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\nmollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\nstrip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\ncow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\nfugiat.', '2020-06-21 03:48:53', 42, 'asteroid.jpeg', '2020-09-25 14:11:44', '2020-09-25 14:11:44');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `article_tag`
--

CREATE TABLE `article_tag` (
  `article_id` int NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `article_tag`
--

INSERT INTO `article_tag` (`article_id`, `tag_id`) VALUES
(2, 1),
(2, 2),
(2, 7),
(3, 4),
(4, 7),
(5, 3),
(5, 4),
(5, 7),
(5, 9),
(5, 10),
(7, 1),
(7, 2),
(7, 10),
(8, 4),
(8, 10),
(9, 5),
(9, 10),
(10, 5),
(10, 8),
(10, 10);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL,
  `article_id` int NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `author_name`, `content`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 10, 'Minerva Erdman', 'Ut dolor maxime molestias ratione dignissimos maxime. Commodi iusto atque labore laboriosam ut animi. Repellat sequi illum accusamus asperiores. Non repellendus quos ut aut repudiandae dolor nam. Similique recusandae explicabo autem rerum quam non.', 1, '2020-09-01 21:02:47', '2020-09-25 14:11:44'),
(2, 6, 'Dr. Ryder Prohaska DVM', 'Adipisci ut numquam magnam nihil odit distinctio cumque eaque. Et occaecati incidunt excepturi qui sed repellendus.', 0, '2020-09-20 20:28:59', '2020-09-25 14:11:44'),
(3, 9, 'Jaydon Larson II', 'Ducimus et rem quaerat molestiae qui minima. Eos qui ratione rem itaque et culpa.', 0, '2020-09-20 08:27:09', '2020-09-25 14:11:44'),
(4, 3, 'Horacio Krajcik V', 'Iste perferendis minima quos error molestiae. Exercitationem molestias itaque ea quibusdam rerum odio. Rerum non ea suscipit nemo repellendus ipsam voluptatem.', 0, '2020-09-10 09:59:39', '2020-09-25 14:11:44'),
(5, 2, 'Phoebe Little Jr.', 'In doloribus officiis repellendus provident nesciunt. Repellat ex ipsa exercitationem. Perspiciatis id exercitationem eius dolorem molestiae molestiae. Quasi illum incidunt repellat ea aperiam veritatis.', 0, '2020-09-13 19:27:25', '2020-09-25 14:11:44'),
(6, 3, 'Dr. Kasey Hoeger', 'Nulla soluta mollitia est consequatur. Quisquam animi quia perferendis enim. Ullam exercitationem ut rerum ut. Asperiores cum molestias sequi nobis veniam et.', 0, '2020-09-22 23:17:31', '2020-09-25 14:11:44'),
(7, 1, 'Prof. Cody Cummings V', 'Voluptatem voluptas nihil modi vero. Doloribus omnis amet similique aut assumenda cupiditate quis. Id qui unde fugit voluptas. Doloribus est explicabo sit facilis alias.', 0, '2020-09-21 04:06:33', '2020-09-25 14:11:44'),
(8, 3, 'Mrs. Mattie Will', 'Perferendis ipsa tenetur est nobis iusto. Repudiandae qui id aspernatur labore quasi.', 0, '2020-09-11 16:50:56', '2020-09-25 14:11:44'),
(9, 4, 'Ms. Virginie Tromp', 'At exercitationem ut quae natus. Exercitationem omnis aut ipsam amet accusamus.', 0, '2020-09-02 12:47:56', '2020-09-25 14:11:44'),
(10, 3, 'Marisa Wuckert', 'Facere mollitia ipsam facilis sit. Molestias aut illo consectetur rerum molestias dolores.', 0, '2020-09-13 06:57:39', '2020-09-25 14:11:44'),
(11, 8, 'Miss Alvera McKenzie III', 'Vitae est earum et dolores veritatis accusamus nisi voluptatum. Minima est et ipsam nostrum culpa vel.', 0, '2020-08-27 01:38:00', '2020-09-25 14:11:44'),
(12, 6, 'Mr. Jayde Kilback Jr.', 'Delectus sapiente distinctio repudiandae enim. Quibusdam excepturi illo qui occaecati provident doloribus numquam quas.', 1, '2020-09-21 11:27:38', '2020-09-25 14:11:44'),
(13, 7, 'Josh Hettinger', 'Sequi culpa voluptatem voluptatem voluptas sunt. Et sunt est voluptatem eaque officia non aliquam aut.', 0, '2020-08-31 15:41:39', '2020-09-25 14:11:44'),
(14, 6, 'Ian Collier', 'Facere consectetur qui rerum laborum totam distinctio. Occaecati dolores molestias voluptatem illo deleniti. Soluta sapiente soluta cupiditate necessitatibus dolor quibusdam. Enim et aut sit recusandae aut odio sint. Maxime delectus incidunt qui et facere.', 0, '2020-09-20 21:38:06', '2020-09-25 14:11:44'),
(15, 1, 'Tania Balistreri', 'Velit ducimus vel perspiciatis possimus. Accusamus expedita quos expedita et qui harum. Quia odit officia eos in vitae. Sit voluptate a ut dignissimos in quo rerum molestiae.', 0, '2020-09-21 06:10:04', '2020-09-25 14:11:44'),
(16, 6, 'Omer Towne III', 'Repellendus necessitatibus aperiam non delectus nihil expedita ullam odio. Nemo voluptatum vero voluptatum velit ut alias voluptatem.', 0, '2020-08-29 16:03:24', '2020-09-25 14:11:44'),
(17, 1, 'Jeramy Gulgowski III', 'Magni et error sunt perspiciatis id modi. Asperiores id maiores libero est.', 0, '2020-09-05 02:17:12', '2020-09-25 14:11:44'),
(18, 8, 'Mr. Stuart Bogan', 'Ad adipisci neque impedit pariatur et. Iure deleniti quibusdam exercitationem ut numquam.', 0, '2020-09-24 02:49:12', '2020-09-25 14:11:44'),
(19, 4, 'Georgiana Upton', 'Quidem eos temporibus possimus ducimus animi. Expedita minus iure nihil asperiores.', 0, '2020-08-26 01:01:04', '2020-09-25 14:11:44'),
(20, 5, 'Martin Reilly', 'Et perferendis tempore soluta qui totam ipsam. Minus debitis autem provident consequuntur.', 0, '2020-09-17 10:46:23', '2020-09-25 14:11:44'),
(21, 2, 'Andreanne Block', 'Quas aut nemo molestiae nobis odio. Autem rerum error non omnis quia in.', 0, '2020-09-16 22:59:22', '2020-09-25 14:11:44'),
(22, 2, 'Martina Gerlach IV', 'Consectetur sint ducimus officia deleniti aut consequatur. Blanditiis enim fugit deleniti sit dolor illum deserunt. Aut est similique facilis incidunt.', 1, '2020-09-15 06:57:20', '2020-09-25 14:11:44'),
(23, 4, 'Prof. Adrian Labadie DDS', 'Voluptatem sunt est officiis maxime in. Est cupiditate aspernatur eum numquam. Et error velit suscipit et distinctio non aut.', 1, '2020-09-01 13:20:09', '2020-09-25 14:11:44'),
(24, 9, 'Johnnie Howell IV', 'Amet veritatis ut voluptas incidunt eos. Sapiente sed autem qui praesentium et. Omnis velit commodi maxime beatae fugit esse necessitatibus sit. Recusandae quos velit aut dolor.', 0, '2020-08-26 05:29:59', '2020-09-25 14:11:44'),
(25, 10, 'Camille Moen', 'Odio et est aut voluptatem est velit. Sit culpa aut non omnis. Aut consequatur quia explicabo necessitatibus non perspiciatis. Architecto eveniet ut odio molestiae quia. Reiciendis et labore facilis vel.', 0, '2020-09-01 16:19:41', '2020-09-25 14:11:44'),
(26, 2, 'Ms. Shanny Hintz Sr.', 'Voluptatem soluta aut eum dolores accusantium. Qui voluptatum perspiciatis sit minus. Doloremque voluptas sit ut alias dolorem eos.', 0, '2020-09-10 16:23:59', '2020-09-25 14:11:44'),
(27, 1, 'Mr. Pete Kozey', 'Consectetur provident cumque repudiandae non porro architecto animi quo. Quos suscipit non consequatur labore quas quam.', 0, '2020-09-16 05:22:44', '2020-09-25 14:11:44'),
(28, 6, 'Germaine Dickinson', 'Quis aut repellendus incidunt eos et odit dolore. Non officiis quidem illum autem blanditiis quia quisquam.', 1, '2020-09-15 06:45:00', '2020-09-25 14:11:44'),
(29, 4, 'Laila Corwin Sr.', 'Cumque fugit sunt voluptatem illum sed dolores. Et omnis sed at mollitia.', 0, '2020-09-10 02:39:44', '2020-09-25 14:11:44'),
(30, 10, 'Bruce Conn MD', 'Quia qui sequi magni qui doloremque voluptas voluptas quasi. Error qui consequatur sed id et.', 0, '2020-09-02 05:59:47', '2020-09-25 14:11:44'),
(31, 6, 'Jessyca Hayes Jr.', 'Maiores ut et esse mollitia accusamus quia voluptate. Temporibus dolor exercitationem maxime corrupti et quo facilis dolores.', 0, '2020-09-16 10:35:37', '2020-09-25 14:11:44'),
(32, 5, 'Una Dicki', 'Omnis maxime quae earum. Velit eos ipsam accusantium aut temporibus. Laudantium sit sint labore dicta qui delectus.', 1, '2020-08-30 01:19:05', '2020-09-25 14:11:44'),
(33, 2, 'Ms. Hosea Welch', 'Qui nihil tempora autem et nam. Totam sit facilis adipisci libero illo commodi. Quia ut aut eveniet rem a optio. Laboriosam consectetur sapiente ipsam recusandae. Aspernatur quam adipisci tempore optio et eligendi.', 1, '2020-08-26 17:20:11', '2020-09-25 14:11:44'),
(34, 10, 'Maximilian Legros', 'Aut nulla voluptates quia voluptatem. Placeat distinctio enim dolorum optio.', 0, '2020-09-21 10:45:45', '2020-09-25 14:11:44'),
(35, 3, 'Brielle Daniel', 'Molestias velit porro ab esse. Occaecati neque aut culpa aperiam hic nobis.', 0, '2020-09-13 14:55:19', '2020-09-25 14:11:44'),
(36, 8, 'Shanelle Olson', 'Debitis quia libero excepturi tempore. Occaecati perferendis molestiae aut eligendi quia nobis fugit.', 0, '2020-09-07 02:53:24', '2020-09-25 14:11:44'),
(37, 8, 'Prof. Maximilian Gutkowski', 'Rerum fugit libero nam consequatur soluta. Molestias est nam qui nesciunt repellendus.', 1, '2020-09-18 18:51:43', '2020-09-25 14:11:44'),
(38, 9, 'Ms. Norene Kuhlman IV', 'Suscipit esse ab quas ea id nesciunt neque possimus. Ut et iure voluptatem tempore veritatis. Ipsum accusantium exercitationem id non eum dolor. Quidem recusandae in expedita itaque alias sint.', 1, '2020-09-05 02:43:00', '2020-09-25 14:11:44'),
(39, 3, 'Aaliyah Turner', 'Sint est at consequuntur ea hic iste impedit. Dolor quaerat fugiat explicabo omnis dignissimos distinctio accusantium temporibus. At possimus ut repellat deleniti ipsum dolorum quasi expedita. Et voluptatem iure culpa earum aut at sit. Sint maxime ea eos consectetur soluta sint architecto.', 1, '2020-09-13 14:45:20', '2020-09-25 14:11:44'),
(40, 3, 'Christopher Blick', 'Quaerat possimus eveniet omnis quidem quia eligendi soluta. Aut dolorem enim dolores. Repellendus sint accusamus unde deleniti quis tenetur repellat. Ad enim rem voluptatem quo iste.', 0, '2020-09-12 21:07:18', '2020-09-25 14:11:44'),
(41, 4, 'Heather Strosin', 'Soluta sed officia autem voluptatum eveniet et et. Enim sint reprehenderit et nostrum rerum odio.', 1, '2020-08-26 04:18:11', '2020-09-25 14:11:44'),
(42, 9, 'Broderick Turcotte', 'Quis perferendis aut ut sapiente iure neque. Hic magni iste inventore dolorem sed quo voluptas. Distinctio soluta rerum ipsum aspernatur. Ducimus quod dolores quia esse et dolores rerum consequuntur.', 0, '2020-09-18 05:03:21', '2020-09-25 14:11:44'),
(43, 9, 'Columbus O\'Connell', 'Voluptate corporis esse exercitationem dolores porro excepturi. Et voluptatem necessitatibus explicabo qui.', 0, '2020-09-15 23:12:37', '2020-09-25 14:11:44'),
(44, 6, 'Miss Beulah Cremin', 'Consequatur nostrum aut ut voluptas sed sapiente esse. Sit ut non ab saepe esse placeat. Optio quaerat quis ut quidem est. Molestiae sed consequatur atque recusandae autem.', 1, '2020-09-14 15:18:35', '2020-09-25 14:11:44'),
(45, 5, 'Prof. Albin Bergstrom', 'Aliquam provident mollitia aliquam corporis dolorum saepe voluptatibus. Voluptas sed sit ut et repellat. Officiis ut tenetur reprehenderit quisquam architecto. Occaecati sed natus asperiores et omnis iure eligendi.', 1, '2020-09-12 19:45:55', '2020-09-25 14:11:44'),
(46, 7, 'Gilberto Hoppe III', 'Exercitationem et sint minima voluptatem ut perferendis vero. Rerum saepe alias aliquid expedita quam aliquid ipsa.', 0, '2020-09-01 13:42:38', '2020-09-25 14:11:45'),
(47, 5, 'Prof. Raquel Beahan DVM', 'Fugit repellendus aut ratione rerum nobis aut. Sed inventore ipsa consectetur est quidem recusandae. Aliquid consequatur quisquam provident omnis.', 0, '2020-09-21 03:34:36', '2020-09-25 14:11:45'),
(48, 8, 'Abagail Pagac', 'Amet sint est perferendis necessitatibus deserunt veritatis. Suscipit adipisci eaque iste est ab ullam. Reprehenderit quod tempore vitae et qui est voluptate. Ea dolorem ut dicta consectetur.', 0, '2020-09-17 12:50:49', '2020-09-25 14:11:45'),
(49, 6, 'Cayla Hintz', 'Doloribus doloremque itaque optio necessitatibus repudiandae vero. Ut qui at pariatur dolorem odio atque aspernatur.', 0, '2020-09-01 05:44:43', '2020-09-25 14:11:45'),
(50, 5, 'Effie Johnston IV', 'Saepe ad impedit labore repudiandae. Tempora sequi sint ut omnis.', 0, '2020-09-19 20:40:05', '2020-09-25 14:11:45'),
(51, 2, 'Cassandre Stoltenberg', 'Vitae dicta blanditiis necessitatibus deleniti quas dicta voluptates. Sed ipsa rerum tempora impedit. Nesciunt dolor tempore quam possimus odit et.', 0, '2020-09-16 15:10:04', '2020-09-25 14:11:45'),
(52, 5, 'Caleb Medhurst', 'Temporibus eos earum id eaque ab deserunt nostrum. Ut et qui qui est. Veniam mollitia in quo error qui.', 0, '2020-09-08 11:14:18', '2020-09-25 14:11:45'),
(53, 3, 'Korbin Ritchie', 'Rerum quo occaecati rem blanditiis porro dolores. Reiciendis autem saepe animi numquam officiis omnis.', 0, '2020-09-06 14:08:56', '2020-09-25 14:11:45'),
(54, 9, 'Clare Hegmann', 'Dicta cum sit aut nisi et. Quasi est nulla ea eaque hic aut. Laudantium perspiciatis laborum non debitis sit ut amet.', 0, '2020-09-09 10:57:50', '2020-09-25 14:11:45'),
(55, 3, 'Prof. Loren Olson V', 'Sit debitis vel qui est cupiditate. Dicta eaque vitae blanditiis nostrum. Consequatur incidunt deserunt cum.', 0, '2020-09-20 15:57:33', '2020-09-25 14:11:45'),
(56, 2, 'Walter Lueilwitz DVM', 'Et illo vitae tempora mollitia. Culpa blanditiis qui et.', 0, '2020-08-29 19:04:57', '2020-09-25 14:11:45'),
(57, 9, 'Dr. Anthony Towne', 'Eaque facilis pariatur temporibus error quod. Consequatur qui deleniti nihil ut nostrum cupiditate.', 0, '2020-09-17 06:52:59', '2020-09-25 14:11:45'),
(58, 8, 'Dr. Tyree Schowalter Jr.', 'Et ullam hic ut aliquid modi itaque. Omnis aut dolorem autem ea minus qui.', 0, '2020-09-01 03:33:03', '2020-09-25 14:11:45'),
(59, 7, 'Melyssa Bailey MD', 'Minus amet perspiciatis quam ex perferendis ullam. Expedita ut voluptatem id voluptatem et et. Maiores nulla est ex perspiciatis nam sit ipsum.', 0, '2020-09-10 03:44:28', '2020-09-25 14:11:45'),
(60, 1, 'Effie O\'Connell I', 'Dolores libero iste omnis voluptate voluptatem. Expedita ipsa voluptatibus architecto temporibus ab qui at.', 0, '2020-09-20 04:58:23', '2020-09-25 14:11:45'),
(61, 9, 'Aileen Roberts MD', 'Similique non consequatur omnis occaecati. Delectus mollitia quo nihil corporis aliquid quo explicabo. Minus rem sed veniam quae vel vitae.', 0, '2020-09-20 19:13:16', '2020-09-25 14:11:45'),
(62, 10, 'Dr. Fritz Lueilwitz', 'Facilis doloremque fugiat dolorem sapiente. Dignissimos excepturi architecto non. Hic odit qui rem excepturi ut occaecati ipsum.', 0, '2020-09-04 04:55:00', '2020-09-25 14:11:45'),
(63, 6, 'Ms. Ethelyn Vandervort DVM', 'Aut repudiandae aspernatur dicta pariatur est dolor voluptatem. Et eaque harum illo non. Et vel rerum error incidunt labore ipsum voluptate.', 0, '2020-09-19 08:41:08', '2020-09-25 14:11:45'),
(64, 9, 'Dr. Rose Reilly', 'At itaque similique aut a incidunt mollitia. Voluptatum ex omnis et atque. Beatae perferendis harum provident aut laudantium est quas. Accusamus qui quas rerum sunt fuga. Eum omnis aut ut sequi soluta.', 0, '2020-09-17 09:13:33', '2020-09-25 14:11:45'),
(65, 1, 'Dax Streich PhD', 'Et id maiores omnis est. Unde rerum corporis nihil.', 0, '2020-09-02 14:12:24', '2020-09-25 14:11:45'),
(66, 4, 'Gerard Dare', 'Libero accusamus in possimus et aspernatur eum. Velit numquam est in sit. Saepe voluptatem minus consequatur perspiciatis.', 0, '2020-09-02 09:53:13', '2020-09-25 14:11:45'),
(67, 2, 'Brendon Harber', 'Natus nisi nam saepe sit eos impedit omnis. Deleniti aut doloribus maiores aut ut. Dicta et rerum doloremque magni cum. Ex et voluptate consequatur quae sunt.', 0, '2020-09-21 09:44:19', '2020-09-25 14:11:45'),
(68, 7, 'Riley Cartwright', 'Id consequatur assumenda sunt perspiciatis est. Dolor animi repudiandae alias quia. Recusandae nam reiciendis molestiae inventore id rerum voluptas. Temporibus itaque culpa rerum.', 0, '2020-09-07 08:35:02', '2020-09-25 14:11:45'),
(69, 6, 'Karelle Braun', 'Qui ea maxime enim. Rerum quia dicta porro ex. Aut suscipit corporis quod molestiae quod.', 0, '2020-09-02 23:26:56', '2020-09-25 14:11:45'),
(70, 2, 'Osbaldo Stanton', 'Nam ut distinctio asperiores et fuga nostrum velit. Molestiae eos aut dolore quia.', 0, '2020-09-02 21:39:50', '2020-09-25 14:11:45'),
(71, 2, 'Jeramie Jaskolski', 'Ea reiciendis alias sint voluptatem in veniam nemo et. Omnis et minima dolor. Dolorum modi aut non a ut rerum.', 0, '2020-09-20 12:04:41', '2020-09-25 14:11:45'),
(72, 1, 'Joannie Hermann IV', 'Qui qui aut praesentium natus voluptas occaecati. Delectus enim vel aut fugiat itaque totam necessitatibus.', 0, '2020-09-13 11:06:43', '2020-09-25 14:11:45'),
(73, 8, 'Kathleen Hill', 'Vero dolore sapiente dolores iste sit illum. Nihil atque quibusdam consectetur.', 0, '2020-09-15 22:20:57', '2020-09-25 14:11:45'),
(74, 5, 'Frieda Dietrich', 'Eaque et quo nostrum delectus quos nam. Aut nam vel voluptates velit fugit.', 0, '2020-09-17 17:34:53', '2020-09-25 14:11:45'),
(75, 5, 'Prof. Helene Bergstrom', 'Qui ipsum officia voluptate sunt impedit corporis autem. Error non reiciendis quis corrupti et quo. Qui praesentium praesentium quasi quidem.', 0, '2020-09-12 06:12:11', '2020-09-25 14:11:45'),
(76, 8, 'Haylee Stiedemann', 'Rem optio officia dolor sed natus magnam. Cum quibusdam est tempore qui voluptas dolore. Quidem ut atque pariatur autem dolorem odit.', 0, '2020-09-07 11:17:52', '2020-09-25 14:11:45'),
(77, 4, 'Napoleon Anderson III', 'Id odit quia id et. At quasi quo quidem ad maxime architecto. Porro cum veritatis qui vitae doloremque.', 0, '2020-08-30 05:00:11', '2020-09-25 14:11:45'),
(78, 10, 'Brayan Erdman', 'Aut rerum ab et odio temporibus sapiente molestiae. Consequatur minima et cum.', 1, '2020-09-17 07:56:06', '2020-09-25 14:11:45'),
(79, 3, 'Elian Nienow', 'Vitae quia saepe adipisci quaerat iure corrupti. Impedit maxime ipsum voluptatem iure sed. Minima tempore voluptatibus qui ut nisi vero molestias.', 1, '2020-08-31 19:49:04', '2020-09-25 14:11:45'),
(80, 10, 'Mr. Carson Runolfsdottir DDS', 'Dolores consequatur sunt et ut sed enim et. Est cum odio dignissimos maxime vero. A omnis nostrum aut.', 0, '2020-08-28 15:05:28', '2020-09-25 14:11:45'),
(81, 4, 'Prof. Eva Labadie Sr.', 'Non est ad voluptas quia. Aut a ut laudantium.', 1, '2020-09-11 02:22:02', '2020-09-25 14:11:45'),
(82, 9, 'Timmy Aufderhar', 'Nostrum est sed minus ex. Est omnis placeat laboriosam aut perferendis ipsum inventore. Sed et dicta ea aut.', 0, '2020-09-03 06:58:46', '2020-09-25 14:11:45'),
(83, 5, 'Gregorio Windler', 'Nisi blanditiis eum nulla culpa itaque. Laudantium sit ratione odit. Repellat placeat maiores et fugiat et tempora. Quaerat esse amet temporibus incidunt itaque voluptatem et.', 0, '2020-09-19 23:11:25', '2020-09-25 14:11:45'),
(84, 6, 'Corrine Kuvalis III', 'Excepturi qui et voluptate. Explicabo aperiam laudantium error illum voluptatem voluptatibus id.', 0, '2020-09-07 22:49:25', '2020-09-25 14:11:45'),
(85, 10, 'Miss Anabelle Zboncak DDS', 'Corrupti laudantium unde non tenetur iusto sequi non. Consequatur consequatur molestiae nihil in molestiae.', 0, '2020-09-13 03:33:32', '2020-09-25 14:11:45'),
(86, 9, 'Ms. Emie Howe Jr.', 'Voluptatem ea quasi autem dolorum molestiae ut. Dolorem deleniti eos error et.', 0, '2020-09-10 13:42:23', '2020-09-25 14:11:45'),
(87, 9, 'Prof. Theodora Jones Sr.', 'Placeat qui id sint. Accusamus ipsum distinctio omnis distinctio totam laborum sint. Et occaecati animi accusamus quam sint. Molestiae velit aperiam dolores accusamus.', 1, '2020-09-22 01:01:17', '2020-09-25 14:11:45'),
(88, 8, 'Willis Rice MD', 'Fuga laboriosam rerum possimus facere odio. Quis id dolorem dignissimos hic quo dolor iste. Repudiandae placeat voluptate blanditiis odit expedita impedit fugit.', 1, '2020-09-19 23:17:50', '2020-09-25 14:11:45'),
(89, 10, 'Jacinto Anderson', 'Facilis voluptas itaque suscipit ut iste. Voluptatibus qui adipisci praesentium est. Et sit est inventore.', 1, '2020-09-05 11:30:18', '2020-09-25 14:11:45'),
(90, 9, 'Aurelia Rowe II', 'Rerum illo ut quo perferendis assumenda. Officiis quis corrupti tempore et debitis quas est excepturi. Consequatur suscipit quia ut a vel et. Maiores eos nam totam magni.', 0, '2020-09-06 00:04:06', '2020-09-25 14:11:45'),
(91, 6, 'Jonathan Ruecker', 'Reiciendis pariatur sed praesentium odit. Cupiditate incidunt inventore et tempore ipsam culpa doloremque possimus.', 0, '2020-09-04 15:19:35', '2020-09-25 14:11:45'),
(92, 1, 'Celia Reilly', 'Impedit corporis veritatis ea iusto rerum eos eligendi. Ut autem odit excepturi in nihil itaque vel magnam.', 0, '2020-09-14 00:47:25', '2020-09-25 14:11:45'),
(93, 7, 'Foster Kuvalis', 'Voluptatem nulla veritatis minus ex fugiat animi esse. Deleniti a voluptates molestiae modi. Neque non omnis dignissimos dolor exercitationem aut. Voluptatum et nihil qui blanditiis reiciendis enim eveniet id.', 0, '2020-08-27 16:40:56', '2020-09-25 14:11:45'),
(94, 9, 'Dr. Allen Abshire Jr.', 'Voluptatem quas sint repellendus asperiores. Ducimus id in eaque est qui doloribus adipisci. Voluptatem adipisci numquam itaque excepturi quia. Laboriosam mollitia sit et modi ut in.', 1, '2020-09-02 06:44:25', '2020-09-25 14:11:45'),
(95, 8, 'Tyrese Lubowitz', 'Debitis doloremque ullam laudantium nostrum porro est. Similique rem inventore quaerat tempore est et porro.', 0, '2020-09-13 15:00:49', '2020-09-25 14:11:45'),
(96, 9, 'Mr. Brannon Olson', 'Vel incidunt fuga voluptatem deserunt eius nihil aspernatur. Fugiat quia voluptatem sed repellat quis. Quibusdam consequatur excepturi omnis nulla. Atque officiis officia consequuntur aut dolorem voluptas veritatis.', 0, '2020-08-28 13:15:06', '2020-09-25 14:11:45'),
(97, 5, 'Leann Gleichner DVM', 'Veritatis maxime et omnis magnam enim ut. Repellendus tenetur omnis itaque eius cumque ut neque.', 0, '2020-09-08 09:10:28', '2020-09-25 14:11:45'),
(98, 1, 'Alden Hoppe I', 'Autem labore et consequatur. Excepturi omnis sit voluptatem quasi id omnis provident.', 1, '2020-09-10 20:06:32', '2020-09-25 14:11:45'),
(99, 1, 'Freddie Raynor', 'Maxime odio aut earum quod ut. Saepe aliquam libero aliquam dicta ea autem ut. Nobis quia modi enim occaecati maiores mollitia rem. Modi voluptas totam qui a earum modi.', 1, '2020-09-12 23:16:32', '2020-09-25 14:11:45'),
(100, 3, 'Prof. Murphy Harris DDS', 'Numquam magnam voluptas sit molestiae itaque eligendi veniam. Adipisci sit eligendi officia mollitia.', 1, '2020-09-11 20:27:19', '2020-09-25 14:11:45');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200925134548', '2020-09-25 13:46:12'),
('20200925145019', '2020-09-25 14:50:24');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `person`
--

CREATE TABLE `person` (
  `id` int NOT NULL,
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `person`
--

INSERT INTO `person` (`id`, `first_name`, `last_name`, `street_name`, `street_number`, `zipcode`, `age`, `gender`) VALUES
(30, 'walterx', 'Pothofx', 'Donaudal', '67', '7007hc', 46, 'male');
-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tag`
--

CREATE TABLE `tag` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `tag`
--

INSERT INTO `tag` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Down, down, down.', 'down-down-down', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(2, 'But the snail.', 'but-the-snail', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(3, 'I suppose, by.', 'i-suppose-by', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(4, 'Caterpillar The.', 'caterpillar-the', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(5, 'Hatter: \'as the.', 'hatter-as-the', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(6, 'I eat\" is the.', 'i-eat-is-the', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(7, 'Queen. \'Can you.', 'queen-can-you', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(8, 'Alice: \'I don\'t.', 'alice-i-dont', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(9, 'YOUR adventures.\'.', 'your-adventures', '2020-09-25 14:11:44', '2020-09-25 14:11:44'),
(10, 'ONE respectable.', 'one-respectable', '2020-09-25 14:11:44', '2020-09-25 14:11:44');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `first_name`, `password`, `twitter_username`) VALUES
(1, 'spacebar0@thespacebar.com', '[]', 'Karine', '$argon2id$v=19$m=65536,t=4,p=1$rdfmFQAJnWxHV6ub7vfj/Q$LCugd6PHQZeFHZFFCAUYkCvN+GM9T9WPkuimjll65Yo', NULL),
(2, 'spacebar1@thespacebar.com', '[]', 'Dominique', '$argon2id$v=19$m=65536,t=4,p=1$9s6G+xVa2VTFrIuB8jfdRA$xqzQTOzWAYZ3GGFrY3wyJFI6ltkP9XK4FVSVKjBaous', NULL),
(3, 'spacebar2@thespacebar.com', '[]', 'Madge', '$argon2id$v=19$m=65536,t=4,p=1$fEH7RKIhZJTsunOunXwqzA$nS0JMhHms3ltnq0VxvSkIAO0JxiyB8PL1KXPWZX+djI', 'theodore.hane'),
(4, 'spacebar3@thespacebar.com', '[]', 'Wellington', '$argon2id$v=19$m=65536,t=4,p=1$W7/YxRVAKZ36+bbhacizVg$TGJma0pWbXUestTElUVYjJFN4d6ySNdII9x5RfFgTXQ', 'mmills'),
(5, 'spacebar4@thespacebar.com', '[]', 'Berta', '$argon2id$v=19$m=65536,t=4,p=1$vc2cOqaAllZ98QI1tdmc8A$h+Ty82A0YP9zXXd0D5UyPQwQRnGQUcS/bgmY/Qq6s30', 'sbreitenberg'),
(6, 'spacebar5@thespacebar.com', '[]', 'Jovani', '$argon2id$v=19$m=65536,t=4,p=1$ur87+/dINVmZeaHUQ2n7Xg$y9ZUY1eQIeqSEULS40IPqxfquJsbp43Wy1k8vuh+exU', 'kilback.syble'),
(7, 'spacebar6@thespacebar.com', '[]', 'Bette', '$argon2id$v=19$m=65536,t=4,p=1$Z/hOHeGD4geexckh6AvGWQ$C02qhLRE0gxUNGPT3Ab3SJUlrL1nNweHiuZtgLwf9Zk', 'pcarroll'),
(8, 'spacebar7@thespacebar.com', '[]', 'Bernadine', '$argon2id$v=19$m=65536,t=4,p=1$kaZ8rBkdgvYoTeHb7i0AwQ$+IQzC62VAuKKPQWOUjiG0dIKJzaTSxpPsmrZJR7GkZA', 'feeney.heber'),
(9, 'spacebar8@thespacebar.com', '[]', 'Guy', '$argon2id$v=19$m=65536,t=4,p=1$TOeKHH26YDgu99FVzqf6yw$/YvyHAqrsRDrj7KWiEC/HA9U+MHVX7SpnQb6UH+oGTw', 'clarissa.rowe'),
(10, 'spacebar9@thespacebar.com', '[]', 'Celestine', '$argon2id$v=19$m=65536,t=4,p=1$XWCAt4nDN7oXmt5mtGbCgQ$GATuR0FX++JC0h2ohOX9vIkw3mmkkYK3pCOICUCvhx4', NULL),
(11, 'admin0@thespacebar.com', '[\"ROLE_ADMIN\"]', 'Giles', '$argon2id$v=19$m=65536,t=4,p=1$wsMS9UBOJrujYGRVNagV9A$/pIna/uTO02qJtEyWidmVOCCFNJvUzJ6fmV5WY/rsjI', NULL),
(12, 'admin1@thespacebar.com', '[\"ROLE_ADMIN\"]', 'Sydnie', '$argon2id$v=19$m=65536,t=4,p=1$OtMjlL5YBDLZ82XYsnzIZQ$P/tiBksdIgRFHU6uJ6TEs+O6MxQrWN/Jw2HrzXEeZUM', NULL),
(13, 'admin2@thespacebar.com', '[\"ROLE_ADMIN\"]', 'Chloe', '$argon2id$v=19$m=65536,t=4,p=1$xFZ4DIkzBrx8U5XOoAIjHQ$mbar6Tb13QUuk+3jgPPXAo3Y3nGQNwRnGVgS7kUHMyg', NULL);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `api_token`
--
ALTER TABLE `api_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7BA2F5EBA76ED395` (`user_id`);

--
-- Indexen voor tabel `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_23A0E66989D9B62` (`slug`),
  ADD KEY `IDX_23A0E66F675F31B` (`author_id`);

--
-- Indexen voor tabel `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`article_id`,`tag_id`),
  ADD KEY `IDX_919694F97294869C` (`article_id`),
  ADD KEY `IDX_919694F9BAD26311` (`tag_id`);

--
-- Indexen voor tabel `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C7294869C` (`article_id`);

--
-- Indexen voor tabel `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexen voor tabel `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_389B783989D9B62` (`slug`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `api_token`
--
ALTER TABLE `api_token`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT voor een tabel `article`
--
ALTER TABLE `article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT voor een tabel `person`
--
ALTER TABLE `person`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT voor een tabel `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `api_token`
--
ALTER TABLE `api_token`
  ADD CONSTRAINT `FK_7BA2F5EBA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Beperkingen voor tabel `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Beperkingen voor tabel `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `FK_919694F97294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_919694F9BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
