-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 07 2020 г., 16:32
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `news`
--

-- --------------------------------------------------------

--
-- Структура таблицы `list`
--

CREATE TABLE `list` (
  `id` int(20) NOT NULL,
  `headline` varchar(200) NOT NULL,
  `maintext` text NOT NULL,
  `imagesource` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `list`
--

INSERT INTO `list` (`id`, `headline`, `maintext`, `imagesource`) VALUES
(1, '1', '1', 'images\\rabbit.jpg'),
(2, '1', '1', 'images\\2803089410.jpg'),
(3, '2', '2', 'images\\s1200.jfif'),
(4, '3', '3', 'images\\s1200 (1).jfif'),
(5, '4', '4', 'images\\s1200.jpg'),
(6, '5', '5', 'images\\2803089410.jpg'),
(7, '6', '6', 'images\\rabbit.jpg'),
(8, '7', '7', 'images\\s1200 (1).jfif'),
(9, '8', '8', 'images\\s1200.jpg'),
(10, '9', '9', 'images\\sepik.jpg'),
(11, '10', '10', 'images\\rabbit.jpg'),
(12, '11', '11', 'images\\s1200 (1).jfif'),
(13, '12', '12', 'images\\2803089410.jpg'),
(14, '13', '13', 'images\\sepik.jpg'),
(15, '14', '14', 'images\\s1200.jfif'),
(16, '15', '15', 'images\\s1200.jpg'),
(17, '16', '16', 'images\\rabbit.jpg'),
(18, '17', '17', 'images\\s1200 (1).jfif'),
(19, '18', '18', 'images\\rabbit.jpg'),
(20, '19', '19', 'images\\sepik.jpg'),
(21, '20', '20', 'images\\s1200.jfif'),
(22, '21', '21', 'images\\s1200.jpg'),
(23, '22', '22', 'images\\rabbit.jpg'),
(24, '23', '23', 'images\\sepik.jpg'),
(25, '24', '24', 'images\\rabbit.jpg'),
(26, '25', '25', 'images\\2803089410.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `msg`) VALUES
(8, 'Аделина', 'adelka@mail.ru', 'Очень милые животные у Вас!!'),
(9, 'Эвелина', 'evelina@yandex.ru', 'Снова к Вам приеду!');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `created`, `modified`) VALUES
(1, 'Маргарита', 'yun_margo@mail.ru', '+79375464564', '2020-03-17 00:00:00', '2020-04-07 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `list`
--
ALTER TABLE `list`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
