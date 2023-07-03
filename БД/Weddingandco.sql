-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 03 2023 г., 11:31
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
-- База данных: `Weddingandco`
--

-- --------------------------------------------------------

--
-- Структура таблицы `floristica`
--

CREATE TABLE `floristica` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `article` int NOT NULL,
  `price` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `floristica`
--

INSERT INTO `floristica` (`id`, `name`, `article`, `price`, `img`) VALUES
(7, 'Букет из калл', 137, '6 000 р.', 'img/f1.svg'),
(8, 'Букет из пионов', 138, '12 000 р.', 'img/f2.svg'),
(9, 'Букет смешанный из роз и эустом', 139, '4 000 р.', 'img/f3.svg'),
(10, 'Бутоньерка мужская “Алексис”', 140, '1 000 р.', 'img/f4.svg'),
(11, 'Бутоньерка мужская “Флорида”', 141, '1 000 р.', 'img/f5.svg'),
(12, 'Бутоньерка клaссическая с розой', 142, '1 000 р.', 'img/f6.svg');

-- --------------------------------------------------------

--
-- Структура таблицы `man_accessories`
--

CREATE TABLE `man_accessories` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `article` int NOT NULL,
  `price` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `man_accessories`
--

INSERT INTO `man_accessories` (`id`, `name`, `article`, `price`, `img`) VALUES
(1, 'Мужская бабочка в белыми вкрапинами', 131, '800 р.', 'img/ma1.svg'),
(2, 'Мужская бабочка бордовая', 132, '800 р.', 'img/ma2.svg'),
(3, 'Галстук коричневый с вкрапинами', 133, '1 000 р.', 'img/ma3.svg'),
(4, 'Ремень из натуральной кожи', 134, '10 000 р.', 'img/ma4.svg'),
(5, 'Нагрудный платок в горошек', 135, '1 000 р.', 'img/ma5.svg'),
(6, 'Подтяжки охровые', 136, '4 000 р.', 'img/ma6.svg');

-- --------------------------------------------------------

--
-- Структура таблицы `man_shoes`
--

CREATE TABLE `man_shoes` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `article` int NOT NULL,
  `price` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `man_shoes`
--

INSERT INTO `man_shoes` (`id`, `name`, `article`, `price`, `img`) VALUES
(1, 'Мужские туфли броуги лаковые\r\n', 119, '8 000 р.', 'img/msh1.svg'),
(2, 'Мужские туфли оксфорбы бордовые', 120, '10 000 р.', 'img/msh2.svg'),
(3, 'Мужские туфли оксфорбы коричневые', 121, '10 000 р.', 'img/msh3.svg'),
(4, 'Мужские туфли классические синие с прошитым краем', 122, '6 000 р.', 'img/msh4.svg'),
(5, 'Мужские туфли оксфорбы с накладкой коричневые', 123, '13 000 р.', 'img/msh5.svg'),
(6, 'Мужские туфли классические коричневые', 124, '12 000 р.', 'img/msh6.svg');

-- --------------------------------------------------------

--
-- Структура таблицы `man_suits`
--

CREATE TABLE `man_suits` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `article` int NOT NULL,
  `price` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `man_suits`
--

INSERT INTO `man_suits` (`id`, `name`, `article`, `price`, `img`) VALUES
(1, 'Свадебный костюм с нагрудным карманом “Эрнест”', 107, '70 000 р.', 'img/ms1.svg'),
(2, 'Свадебный костюм с нагрудным карманом “Броуди”', 108, '50 000 р.', 'img/ms2.svg'),
(3, 'Свадебный костюм с нагрудным карманом “Жерар”', 109, '40 000 р.', 'img/ms3.svg'),
(4, 'Свадебный костюм с нагрудным карманом “Солли”', 110, '35 000 р.', 'img/ms4.svg'),
(6, 'Свадебный костюм “Геральт”', 111, '30 000 р.', 'img/ms5.svg'),
(8, 'Свадебный костюм с нагрудным карманом “Квентин”', 112, '55 000 р.', 'img/ms6.svg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` text NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `email`, `phone`, `role`) VALUES
(63, 'user1', 'e10adc3949ba59abbe56e057f20f883e', 'user1@mail.ru', '+7 (777) 777-77-77', '0'),
(68, 'user1', 'e10adc3949ba59abbe56e057f20f883e', 'qwertyuiop@mail.ru', '+7 (111) 111-11-11', '0'),
(69, 'user2', 'e10adc3949ba59abbe56e057f20f883e', 'email@mail.ru', '+7 (891) 011-12-13', '0'),
(70, 'user4', 'e10adc3949ba59abbe56e057f20f883e', 'user4@mail.ru', '+7 (123) 242-34-23', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `woman_accessories`
--

CREATE TABLE `woman_accessories` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `article` int NOT NULL,
  `price` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `woman_accessories`
--

INSERT INTO `woman_accessories` (`id`, `name`, `article`, `price`, `img`) VALUES
(1, 'Кремовый широкий ободок с жемчужнами', 125, '5 000 р.', 'img/wa1.svg'),
(2, 'Украшение для волос \"Цветочный венок\"', 126, '3 000 р.', 'img/wa2.svg'),
(3, 'Украшение для волос с цкпочками “Индиана”', 127, '4 000 р.', 'img/wa3.svg'),
(4, 'Круежвной кейп для свадебного платья “Cелли”', 128, '17 000 р.', 'img/wa4.svg'),
(5, 'Жемчужный кейп в винтажном стиле “Кейси”', 129, '12 000 р.', 'img/wa5.svg'),
(6, 'Воздушные свадебные манжеты “Ирис”', 130, '7 000 р.', 'img/wa6.svg');

-- --------------------------------------------------------

--
-- Структура таблицы `woman_dresses`
--

CREATE TABLE `woman_dresses` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `article` int NOT NULL,
  `price` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `woman_dresses`
--

INSERT INTO `woman_dresses` (`id`, `name`, `article`, `price`, `img`) VALUES
(1, 'Свадебное платье в стиле минимализм с перьями “Леди бёрд”', 101, '105 000 р.', 'img/d1.svg'),
(2, 'Свадебное стуящееся платье с подолом “Моменто”', 102, '205 000 р.', 'img/d2.svg'),
(3, 'Свадебное платье с рукавами-накидкой “Верана”', 103, '160 000 р.', 'img/d3.svg'),
(4, 'Свадебное платье жемчужное без лямок “Грейс”', 104, '95 000 р', 'img/d4.svg'),
(6, 'Сверкающее свадебное платье без лямок “Розмари”', 105, '170 000 р.', 'img/d5.svg'),
(8, 'Свадебное платье с разрезами “Флора”', 106, '140 000 р.', 'img/d6.svg');

-- --------------------------------------------------------

--
-- Структура таблицы `woman_shoes`
--

CREATE TABLE `woman_shoes` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `article` int NOT NULL,
  `price` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `woman_shoes`
--

INSERT INTO `woman_shoes` (`id`, `name`, `article`, `price`, `img`) VALUES
(1, 'Свадебные туфли с бантом “Мора”', 113, '7 000 р.', 'img/ws1.svg'),
(2, 'Свадебные туфли с ремешком “Кенни”', 114, '13 000 р.', 'img/ws2.svg'),
(3, 'Свадебные туфли с брошью “Черрси”', 115, '10 000 р.', 'img/ws3.svg'),
(4, 'Свадебные туфли со стразами “Флайли”', 116, '15 000 р.', 'img/ws4.svg'),
(5, 'Свадебные туфли с ремешком “Аврора”', 117, '10 000 р.', 'img/ws5.svg'),
(6, 'Свадебные туфли с ремешком “Эненси”', 118, '20 000 р.', 'img/ws6.svg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `floristica`
--
ALTER TABLE `floristica`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `man_accessories`
--
ALTER TABLE `man_accessories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `man_shoes`
--
ALTER TABLE `man_shoes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `man_suits`
--
ALTER TABLE `man_suits`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `woman_accessories`
--
ALTER TABLE `woman_accessories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `woman_dresses`
--
ALTER TABLE `woman_dresses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `woman_shoes`
--
ALTER TABLE `woman_shoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `floristica`
--
ALTER TABLE `floristica`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `man_accessories`
--
ALTER TABLE `man_accessories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `man_shoes`
--
ALTER TABLE `man_shoes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `man_suits`
--
ALTER TABLE `man_suits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT для таблицы `woman_accessories`
--
ALTER TABLE `woman_accessories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `woman_dresses`
--
ALTER TABLE `woman_dresses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `woman_shoes`
--
ALTER TABLE `woman_shoes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
