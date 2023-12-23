-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 23 2023 г., 06:38
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `peopleandmoney`
--

-- --------------------------------------------------------

--
-- Структура таблицы `job`
--

CREATE TABLE `job` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `job`
--

INSERT INTO `job` (`id`, `name`) VALUES
(1, 'учитель'),
(2, 'разнорабочий'),
(3, 'инженер'),
(4, 'работник ЖКХ');

-- --------------------------------------------------------

--
-- Структура таблицы `job_seq`
--

CREATE TABLE `job_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `job_seq`
--

INSERT INTO `job_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1, 1, 9223372036854775806, 1, 50, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `period`
--

CREATE TABLE `period` (
  `id` bigint(20) NOT NULL,
  `coef` double NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `end` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `period`
--

INSERT INTO `period` (`id`, `coef`, `description`, `end`, `name`, `start`) VALUES
(1, 1360, 'НЭП был ответом на экономический кризис после Гражданской войны. Разрешили частную торговлю и дали возможность частным предпринимателям участвовать в экономике. Цены формировались на основе спроса и предложения на рынке.', 1931, 'НЭП', 1921),
(2, 250.78, 'Перед Второй мировой войной экономика в СССР сталкивалась с множеством вызовов. Государство направляло ресурсы на подготовку к войне, устанавливая контроль над ценами на товары, необходимые для военных целей. ', 1941, 'Довоенное время', 1932),
(3, 116.47, 'После Второй мировой войны в стране наступило время восстановления. В этот период государство активно контролировало цены, регулировало спрос и предложение на рынке.', 1953, 'Послевоенное время ', 1945),
(4, 90.09, 'Перед началом периода реформ было падение эффективности плановой экономики: устаревшие методы управления привели к дисбалансу в экономике. Также отсутствие современных технологий и инноваций ограничивало производство и влияло на ценовую политику.', 1960, 'Дореформенное время', 1954),
(5, 861, 'В послереформенный период в экономике СССР происходил выраженный сдвиг в сторону интенсивных факторов экономического роста. Основным фактором роста было повышение производительности общественного труда и экономии живого труда, то есть уменьшалась роль основного экстенсивного фактора — увеличения числа занятых.', 1964, 'Послереформенное время', 1961),
(6, 538.46, 'Это время характеризовалось стагнацией в экономике. Распространение бюрократии и коррупции в системе управления привело к неэффективности и искажению цен.', 1984, 'Застой', 1965),
(7, 322.58, 'Перестройка призвана была реформировать экономику. Либерализация в экономической политике стимулировали свободу ценообразования и частную инициативу.', 1991, 'Перестройка', 1985);

-- --------------------------------------------------------

--
-- Структура таблицы `period_seq`
--

CREATE TABLE `period_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `period_seq`
--

INSERT INTO `period_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1, 1, 9223372036854775806, 1, 50, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `price`
--

CREATE TABLE `price` (
  `id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `period_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `price`
--

INSERT INTO `price` (`id`, `price`, `period_id`, `product_id`) VALUES
(1, 0.2, 1, 1),
(2, 0.06, 1, 2),
(3, 0.09, 1, 3),
(4, 0.41, 1, 4),
(5, 0.79, 1, 5),
(6, 0.25, 1, 6),
(7, 0.82, 1, 7),
(8, 0.54, 1, 8),
(9, 0.4, 1, 9),
(10, 0.32, 1, 10),
(11, 170, 1, 11),
(12, 0.06, 1, 12),
(13, 70, 1, 13),
(14, 0.5, 1, 14),
(15, 0.07, 1, 15),
(16, 0.06, 1, 16),
(17, 2, 2, 15),
(18, 0.51, 2, 12),
(19, 6.5, 2, 9),
(20, 4.1, 2, 17),
(21, 0.12, 2, 16),
(22, 1.7, 2, 1),
(23, 4.6, 2, 3),
(24, 11.5, 2, 18),
(25, 11, 2, 19),
(26, 90, 2, 13),
(27, 377, 2, 11),
(28, 2.4, 3, 15),
(29, 0.9, 3, 12),
(30, 9.5, 3, 9),
(31, 9, 3, 17),
(32, 0.7, 3, 16),
(33, 1.3, 3, 1),
(34, 4.1, 3, 3),
(35, 21.2, 3, 18),
(36, 16.6, 3, 19),
(37, 148, 3, 13),
(38, 725, 3, 11),
(39, 2.2, 4, 15),
(40, 0.9, 4, 12),
(41, 7, 4, 9),
(42, 9.4, 4, 17),
(43, 0.7, 4, 16),
(44, 1.35, 4, 20),
(45, 4.1, 4, 3),
(46, 40, 4, 21),
(47, 12.6, 4, 19),
(48, 202, 4, 13),
(49, 732, 4, 11),
(50, 592, 4, 22),
(51, 0.36, 5, 15),
(52, 0.1, 5, 12),
(53, 1.1, 5, 9),
(54, 0.94, 5, 17),
(55, 0.1, 5, 16),
(56, 0.16, 5, 20),
(57, 0.46, 5, 3),
(58, 4, 5, 21),
(59, 2, 5, 19),
(60, 0.24, 6, 15),
(61, 0.13, 6, 12),
(62, 1.02, 6, 9),
(63, 0.84, 6, 17),
(64, 0.07, 6, 16),
(65, 0.23, 6, 1),
(66, 0.41, 6, 3),
(67, 2.87, 6, 21),
(68, 2.8, 6, 19),
(69, 18.7, 6, 13),
(70, 128, 6, 11),
(71, 0.26, 7, 15),
(72, 0.13, 7, 12),
(73, 1.1, 7, 9),
(74, 0.92, 7, 17),
(75, 0.06, 7, 16),
(76, 0.24, 7, 1),
(77, 0.35, 7, 3),
(78, 10.2, 7, 18),
(79, 3, 7, 19),
(81, 75, 7, 22);

-- --------------------------------------------------------

--
-- Структура таблицы `price_seq`
--

CREATE TABLE `price_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `price_seq`
--

INSERT INTO `price_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1, 1, 9223372036854775806, 1, 50, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`) VALUES
(1, 'Белый хлеб, 1шт'),
(2, 'Ржаная мука, 1кг'),
(3, 'Пшеничная мука, 1кг'),
(4, 'Селёдка, 1кг'),
(5, 'Сахар-рафинад, 0.5кг'),
(6, 'Перловая крупа, 1кг'),
(7, 'Варёная колбаса 1 сорт, 1шт'),
(8, 'Варёная колбаса 2 сорт, 1шт'),
(9, 'Яйца, 10шт'),
(10, 'Творог, 0.3кг'),
(11, 'Пальто, 1шт'),
(12, 'Картофель, 1кг'),
(13, 'Ботинки мужские, 1шт'),
(14, 'Мясо, 1кг'),
(15, 'Молоко, 1л'),
(16, 'Соль, 1кг'),
(17, 'Сахар, 1кг'),
(18, 'Водка, 0.5л'),
(19, 'Говядина, 1кг'),
(20, 'Ржаной хлеб, 1шт'),
(21, 'Водка, 1л'),
(22, 'Велосипед, 1шт'),
(23, 'Шапка кроличья, 1шт');

-- --------------------------------------------------------

--
-- Структура таблицы `product_seq`
--

CREATE TABLE `product_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `product_seq`
--

INSERT INTO `product_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1, 1, 9223372036854775806, 1, 50, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `salary`
--

CREATE TABLE `salary` (
  `id` bigint(20) NOT NULL,
  `salary` double NOT NULL,
  `period_id` bigint(20) DEFAULT NULL,
  `job_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `salary`
--

INSERT INTO `salary` (`id`, `salary`, `period_id`, `job_id`) VALUES
(1, 62, 1, 1),
(2, 340, 2, 1),
(3, 70, 3, 1),
(4, 90, 4, 1),
(5, 117, 5, 1),
(6, 166, 6, 1),
(7, 190, 7, 1),
(8, 50, 1, 2),
(9, 60, 2, 2),
(10, 90, 3, 2),
(11, 90, 4, 2),
(12, 130, 5, 2),
(13, 186, 6, 2),
(14, 215, 7, 2),
(15, 67, 1, 3),
(16, 75, 2, 3),
(17, 120, 3, 3),
(18, 140, 4, 3),
(19, 200, 5, 3),
(20, 212, 6, 3),
(21, 240, 7, 3),
(22, 20, 1, 4),
(23, 26, 2, 4),
(24, 40, 3, 4),
(25, 58, 4, 4),
(26, 95, 5, 4),
(27, 133, 6, 4),
(28, 147, 7, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `salary_seq`
--

CREATE TABLE `salary_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `salary_seq`
--

INSERT INTO `salary_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1, 1, 9223372036854775806, 1, 50, 1000, 0, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKm8n9phm3ywc6pqgc7ol8r9ua2` (`period_id`),
  ADD KEY `FKk4mbgqf5yru5ib5b6w5l6ukkj` (`product_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5vweh2duqguo9yirg57hxnmd6` (`period_id`),
  ADD KEY `FKhxp5b3d491si77wbo04n97ixh` (`job_id`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `FKk4mbgqf5yru5ib5b6w5l6ukkj` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKm8n9phm3ywc6pqgc7ol8r9ua2` FOREIGN KEY (`period_id`) REFERENCES `period` (`id`);

--
-- Ограничения внешнего ключа таблицы `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `FK5vweh2duqguo9yirg57hxnmd6` FOREIGN KEY (`period_id`) REFERENCES `period` (`id`),
  ADD CONSTRAINT `FKhxp5b3d491si77wbo04n97ixh` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
