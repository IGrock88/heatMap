-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 29 2018 г., 19:27
-- Версия сервера: 5.7.20
-- Версия PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `heat-map`
--

-- --------------------------------------------------------

--
-- Структура таблицы `click`
--

CREATE TABLE `click` (
  `id` int(11) NOT NULL,
  `coord_x` int(11) NOT NULL,
  `coord_y` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `click`
--

INSERT INTO `click` (`id`, `coord_x`, `coord_y`, `quantity`) VALUES
(613, 1255, 36, 2),
(614, 1217, 29, 1),
(615, 1213, 29, 1),
(616, 138, 718, 1),
(617, 778, 653, 1),
(618, 1125, 713, 1),
(619, 1393, 728, 1),
(620, 1442, 591, 1),
(621, 716, 809, 1),
(622, 500, 639, 1),
(623, 280, 666, 1),
(624, 1265, 35, 1),
(625, 1237, 30, 2),
(626, 966, 608, 1),
(627, 715, 596, 1),
(628, 496, 608, 1),
(629, 370, 828, 1),
(630, 874, 824, 1),
(631, 1239, 28, 1),
(632, 1106, 613, 1),
(633, 668, 666, 11),
(634, 663, 668, 2),
(635, 659, 669, 1),
(636, 655, 670, 1),
(637, 650, 672, 1),
(638, 631, 672, 2),
(639, 609, 670, 1),
(640, 591, 670, 1),
(641, 585, 671, 2),
(642, 586, 672, 1),
(643, 1195, 35, 1),
(644, 1195, 30, 1),
(645, 984, 641, 2),
(646, 1053, 657, 2),
(647, 1052, 657, 1),
(648, 1205, 623, 1),
(649, 1300, 640, 1),
(650, 1282, 729, 1),
(651, 1243, 780, 1),
(652, 1149, 806, 1),
(653, 1146, 807, 1),
(654, 999, 791, 1),
(655, 928, 776, 1),
(656, 1255, 34, 1),
(657, 407, 716, 32),
(658, 1243, 26, 1),
(659, 1242, 26, 1),
(660, 1232, 38, 1),
(661, 535, 689, 1),
(662, 521, 716, 2),
(663, 392, 623, 1),
(664, 381, 621, 1),
(665, 342, 607, 1),
(666, 338, 606, 1),
(667, 258, 593, 1),
(668, 165, 627, 1),
(669, 135, 662, 1),
(670, 197, 689, 1),
(671, 222, 700, 1),
(672, 237, 736, 1),
(673, 1268, 32, 1),
(674, 1257, 33, 1),
(675, 1260, 38, 1),
(676, 247, 324, 1),
(677, 767, 317, 2),
(678, 768, 317, 1),
(679, 770, 317, 1),
(680, 828, 328, 1),
(681, 1731, 33, 1),
(682, 790, 33, 13),
(683, 760, 26, 1),
(684, 727, 27, 2),
(685, 725, 28, 1),
(686, 717, 29, 4),
(687, 720, 29, 1),
(688, 720, 28, 13),
(689, 1749, 28, 1),
(690, 1746, 31, 1),
(691, 1441, 589, 3),
(692, 1444, 589, 3),
(693, 1445, 589, 24),
(694, 1446, 589, 26),
(695, 1447, 589, 1),
(696, 1733, 29, 2),
(697, 906, 653, 1),
(698, 717, 644, 2),
(699, 876, 668, 1),
(700, 267, 27, 1),
(701, 237, 39, 1),
(702, 1126, 274, 3),
(703, 960, 273, 1),
(704, 835, 252, 1),
(705, 834, 251, 2),
(706, 411, 391, 4),
(707, 219, 382, 3),
(708, 1228, 558, 3),
(709, 1546, 276, 2),
(710, 776, 682, 1),
(711, 776, 681, 3),
(712, 293, 40, 1),
(713, 290, 37, 1),
(714, 791, 349, 2),
(715, 946, 178, 4),
(716, 609, 228, 3),
(717, 1274, 352, 4),
(718, 1338, 580, 3),
(719, 1368, 556, 4),
(720, 1636, 670, 1),
(721, 1542, 662, 4),
(722, 1541, 721, 4),
(723, 1185, 444, 1),
(724, 1185, 441, 3),
(725, 1020, 333, 2),
(726, 1020, 332, 1),
(727, 772, 284, 2),
(728, 772, 283, 4),
(729, 226, 35, 2),
(730, 252, 29, 1),
(731, 561, 241, 2),
(732, 673, 178, 1),
(733, 673, 177, 2),
(734, 248, 38, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `click`
--
ALTER TABLE `click`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `click`
--
ALTER TABLE `click`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=735;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
