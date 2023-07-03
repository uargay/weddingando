-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 03 2023 г., 11:33
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
-- База данных: `WeddingSalon`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Clients`
--

CREATE TABLE `Clients` (
  `id` int NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Clients`
--

INSERT INTO `Clients` (`id`, `first_name`, `last_name`, `contact_number`, `email`) VALUES
(1, 'Вера', 'Абрамова', '7 (916)816-59-84', 'heucoicaquoitti-3797@yopmail.com'),
(2, 'Ясмина', 'Кондратьева', '7 (916)743-19-27', 'dojessouyufo-5707@yopmail.com'),
(3, 'Виктория', 'Голубева', '7 (916)017-49-06', 'memmauyezocoi-5142@yopmail.com'),
(4, 'Степан', 'Родин', '7 (916)768-46-57', 'toxemebeudi-4453@yopmail.com'),
(5, 'Софья', 'Румянцева', '7 (916)740-73-50', 'queullipoissoize-4214@yopmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `Dresses`
--

CREATE TABLE `Dresses` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Dresses`
--

INSERT INTO `Dresses` (`id`, `name`, `manufacturer`, `price`) VALUES
(1, 'платье \"Верона\"', 'halal', '100000.00'),
(2, 'платье \"Амиро\"', 'haukla', '120000.00'),
(3, 'платье \"Курель\"', 'skowdi', '170000.00'),
(4, 'платье \"Хвена\"', 'bdlow', '134000.00'),
(5, 'платье \"\'Эммануэль\"', 'emiglas', '170000.00');

-- --------------------------------------------------------

--
-- Структура таблицы `Fittings`
--

CREATE TABLE `Fittings` (
  `id` int NOT NULL,
  `dress_id` int DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  `fitting_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Fittings`
--

INSERT INTO `Fittings` (`id`, `dress_id`, `client_id`, `fitting_date`, `status`) VALUES
(1, 4, 3, '2023-08-10', 'ожидает примерки'),
(2, 5, 4, '2023-07-11', 'отменено'),
(3, 3, 1, '2023-07-23', 'ожидает примерки'),
(4, 1, 4, '2023-07-26', 'ожидает примерки'),
(5, 3, 2, '2023-08-01', 'отменено');

-- --------------------------------------------------------

--
-- Структура таблицы `Orders`
--

CREATE TABLE `Orders` (
  `id` int NOT NULL,
  `dress_id` int DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `theme_id` int NOT NULL,
  `venue_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Orders`
--

INSERT INTO `Orders` (`id`, `dress_id`, `client_id`, `order_date`, `status`, `theme_id`, `venue_id`) VALUES
(1, 4, 3, '2023-07-05', 'не оплачено', 1, 3),
(2, 5, 5, '2023-07-09', 'оплачено', 3, 5),
(3, 1, 2, '2023-07-16', 'оплаено', 4, 5),
(4, 2, 4, '2023-07-19', 'не оплачено', 1, 4),
(5, 3, 1, '2023-07-25', 'оплачено', 3, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `Services`
--

CREATE TABLE `Services` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Services`
--

INSERT INTO `Services` (`id`, `name`, `description`, `price`) VALUES
(1, 'фотограф', 'Фото- и видео- съёмка торжества', '3000.00'),
(2, 'Ведущий', 'Проведение церемонии и вечернего торжества', '15000.00'),
(3, 'аренда авто', 'водитель катает людей по городу', '12000.00'),
(4, 'флорист', 'украшение зала и других атрибутов', '30000.00'),
(5, 'массажист', 'расслабит перед волнительным днём', '10000.00');

-- --------------------------------------------------------

--
-- Структура таблицы `Service_Orders`
--

CREATE TABLE `Service_Orders` (
  `id` int NOT NULL,
  `service_id` int DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Service_Orders`
--

INSERT INTO `Service_Orders` (`id`, `service_id`, `client_id`, `order_date`, `amount`) VALUES
(1, 2, 3, '2023-09-02', '100000.00'),
(2, 1, 5, '2023-09-11', '120000.00'),
(3, 3, 2, '2023-09-21', '20000.00'),
(4, 4, 4, '2023-09-18', '40000.00'),
(5, 4, 1, '2023-09-21', '30000.00');

-- --------------------------------------------------------

--
-- Структура таблицы `Themes`
--

CREATE TABLE `Themes` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Themes`
--

INSERT INTO `Themes` (`id`, `name`, `description`) VALUES
(1, 'рустик', 'натуральный природный стиль с использованием брёвен и зелени'),
(2, 'минимализм', 'острые и прямые углы, минимум деталей'),
(3, 'классический', 'белые ленты, цветы и другие атрибуты'),
(4, 'хиппи', 'яркие цвета и неординарные формы'),
(5, 'олд мани', 'позолоченные детали, мрамор и элегантные благородные цвета');

-- --------------------------------------------------------

--
-- Структура таблицы `Venues`
--

CREATE TABLE `Venues` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `capacity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Venues`
--

INSERT INTO `Venues` (`id`, `name`, `address`, `capacity`) VALUES
(1, 'холл \"эвона\"', 'Новгородская область, город Клин, шоссе Ленина, 51', 50),
(2, 'коттедж \"Журрель\"', 'Новгородская область, город Щёлково, наб. 1905 года, 50', 30),
(3, 'парк-отель \"лесник\"', 'Новосибирская область, город Истра, пр. Будапештсткая, 35', 100),
(4, 'пароход \"синяя роза\"', 'Вологодская область, город Щёлково, проезд Гоголя, 56', 65),
(5, 'мпт', 'Новосибирская область, город Москва, пр. Ленина, 09', 1000);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `запрос1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `запрос1` (
`id` int
,`name` varchar(255)
,`manufacturer` varchar(255)
,`price` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `запрос2`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `запрос2` (
`id` int
,`name` varchar(255)
,`description` text
,`price` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `запрос3`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `запрос3` (
`id` int
,`first_name` varchar(255)
,`last_name` varchar(255)
,`contact_number` varchar(255)
,`email` varchar(255)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `запрос4`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `запрос4` (
`id` int
,`first_name` varchar(255)
,`last_name` varchar(255)
,`contact_number` varchar(255)
,`email` varchar(255)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `запрос5`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `запрос5` (
`status` varchar(255)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `запрос6`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `запрос6` (
`id` int
,`name` varchar(255)
,`address` varchar(255)
,`capacity` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `запрос7`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `запрос7` (
`id` int
,`first_name` varchar(255)
,`last_name` varchar(255)
,`contact_number` varchar(255)
,`email` varchar(255)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `запрос8`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `запрос8` (
`first_name` varchar(255)
,`last_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `запрос9`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `запрос9` (
`first_name` varchar(255)
,`last_name` varchar(255)
,`total_amount` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `запрос10`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `запрос10` (
`first_name` varchar(255)
,`last_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Структура для представления `запрос1`
--
DROP TABLE IF EXISTS `запрос1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `запрос1`  AS SELECT `dresses`.`id` AS `id`, `dresses`.`name` AS `name`, `dresses`.`manufacturer` AS `manufacturer`, `dresses`.`price` AS `price` FROM `dresses` WHERE (`dresses`.`manufacturer` = 'halal')  ;

-- --------------------------------------------------------

--
-- Структура для представления `запрос2`
--
DROP TABLE IF EXISTS `запрос2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `запрос2`  AS SELECT `services`.`id` AS `id`, `services`.`name` AS `name`, `services`.`description` AS `description`, `services`.`price` AS `price` FROM `services``services`  ;

-- --------------------------------------------------------

--
-- Структура для представления `запрос3`
--
DROP TABLE IF EXISTS `запрос3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `запрос3`  AS SELECT `clients`.`id` AS `id`, `clients`.`first_name` AS `first_name`, `clients`.`last_name` AS `last_name`, `clients`.`contact_number` AS `contact_number`, `clients`.`email` AS `email` FROM (`clients` join `orders` on((`clients`.`id` = `orders`.`client_id`))) WHERE (`orders`.`dress_id` is not null)  ;

-- --------------------------------------------------------

--
-- Структура для представления `запрос4`
--
DROP TABLE IF EXISTS `запрос4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `запрос4`  AS SELECT `clients`.`id` AS `id`, `clients`.`first_name` AS `first_name`, `clients`.`last_name` AS `last_name`, `clients`.`contact_number` AS `contact_number`, `clients`.`email` AS `email` FROM (`clients` join `fittings` on((`clients`.`id` = `fittings`.`client_id`))) WHERE (`fittings`.`status` = 'ожидает примерки')  ;

-- --------------------------------------------------------

--
-- Структура для представления `запрос5`
--
DROP TABLE IF EXISTS `запрос5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `запрос5`  AS SELECT `fittings`.`status` AS `status` FROM (`fittings` join `clients` on((`clients`.`id` = `fittings`.`client_id`))) WHERE (`clients`.`id` = '1')  ;

-- --------------------------------------------------------

--
-- Структура для представления `запрос6`
--
DROP TABLE IF EXISTS `запрос6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `запрос6`  AS SELECT `venues`.`id` AS `id`, `venues`.`name` AS `name`, `venues`.`address` AS `address`, `venues`.`capacity` AS `capacity` FROM `venues``venues`  ;

-- --------------------------------------------------------

--
-- Структура для представления `запрос7`
--
DROP TABLE IF EXISTS `запрос7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `запрос7`  AS SELECT `clients`.`id` AS `id`, `clients`.`first_name` AS `first_name`, `clients`.`last_name` AS `last_name`, `clients`.`contact_number` AS `contact_number`, `clients`.`email` AS `email` FROM (`clients` join `orders` on((`clients`.`id` = `orders`.`client_id`))) WHERE ((`orders`.`venue_id` = '3') AND (`orders`.`theme_id` = '2'))  ;

-- --------------------------------------------------------

--
-- Структура для представления `запрос8`
--
DROP TABLE IF EXISTS `запрос8`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `запрос8`  AS SELECT `clients`.`first_name` AS `first_name`, `clients`.`last_name` AS `last_name` FROM (((`clients` join `orders` on((`clients`.`id` = `orders`.`client_id`))) join `venues` on((`orders`.`venue_id` = `venues`.`id`))) join `themes` on((`orders`.`theme_id` = `themes`.`id`))) WHERE ((`orders`.`order_date` between '2021-01-01' and '2021-12-31') AND (`venues`.`name` = 'пароход "синяя роза"') AND (`themes`.`name` = 'хиппи'))  ;

-- --------------------------------------------------------

--
-- Структура для представления `запрос9`
--
DROP TABLE IF EXISTS `запрос9`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `запрос9`  AS SELECT `clients`.`first_name` AS `first_name`, `clients`.`last_name` AS `last_name`, sum(`service_orders`.`amount`) AS `total_amount` FROM ((`clients` join `service_orders` on((`clients`.`id` = `service_orders`.`client_id`))) join `services` on((`service_orders`.`client_id` = `clients`.`id`))) WHERE (`services`.`name` = 'фотограф') GROUP BY `clients`.`id``id`  ;

-- --------------------------------------------------------

--
-- Структура для представления `запрос10`
--
DROP TABLE IF EXISTS `запрос10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `запрос10`  AS SELECT `clients`.`first_name` AS `first_name`, `clients`.`last_name` AS `last_name` FROM ((`clients` join `service_orders` on((`clients`.`id` = `service_orders`.`client_id`))) join `services` on((`service_orders`.`service_id` = `services`.`id`))) WHERE (`services`.`name` = 'флорист')  ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Dresses`
--
ALTER TABLE `Dresses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Fittings`
--
ALTER TABLE `Fittings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dress_id` (`dress_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Индексы таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dress_id` (`dress_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `theme_id` (`theme_id`),
  ADD KEY `venue_id` (`venue_id`);

--
-- Индексы таблицы `Services`
--
ALTER TABLE `Services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Service_Orders`
--
ALTER TABLE `Service_Orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Индексы таблицы `Themes`
--
ALTER TABLE `Themes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Venues`
--
ALTER TABLE `Venues`
  ADD PRIMARY KEY (`id`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Fittings`
--
ALTER TABLE `Fittings`
  ADD CONSTRAINT `fittings_ibfk_1` FOREIGN KEY (`dress_id`) REFERENCES `Dresses` (`id`),
  ADD CONSTRAINT `fittings_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `Clients` (`id`);

--
-- Ограничения внешнего ключа таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`dress_id`) REFERENCES `Dresses` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `Clients` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`theme_id`) REFERENCES `Themes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`venue_id`) REFERENCES `Venues` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `Service_Orders`
--
ALTER TABLE `Service_Orders`
  ADD CONSTRAINT `service_orders_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `Services` (`id`),
  ADD CONSTRAINT `service_orders_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `Clients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
