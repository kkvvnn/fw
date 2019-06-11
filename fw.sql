-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 11 2019 г., 18:53
-- Версия сервера: 5.5.62-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `fw`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `parent` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1001 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent`) VALUES
(685, 'Комплектующие к Apple', 0),
(691, 'Запчасти iPad', 685),
(692, 'Запчасти iPhone', 685),
(693, 'Запчасти iPod', 685),
(694, 'Запчасти Mac', 685),
(695, 'iPad', 691),
(696, 'iPad 2', 691),
(697, 'iPad NEW (iPad 3)', 691),
(698, 'iPad 4', 691),
(699, 'iPad mini', 691),
(700, 'iPhone', 692),
(701, 'iPhone 3G/3GS', 692),
(702, 'iPhone 4', 692),
(703, 'iPhone 4S', 692),
(704, 'iPhone 5', 692),
(705, 'Микросхемы Apple', 685),
(836, 'Защитные плёнки на Apple', 0),
(840, 'iPad', 836),
(841, 'iPhone', 836),
(842, 'iPod', 836),
(843, 'Mac', 836),
(853, 'Оборудование для ремонта Apple', 0),
(876, 'Аксессуары для Apple', 0),
(877, 'Аксессуары iPad', 876),
(878, 'Аксессуары iPhone', 876),
(879, 'Аксессуары iPod', 876),
(880, 'Аксессуары Mac', 876),
(881, 'iPad', 877),
(882, 'iPad 2', 877),
(883, 'iPad NEW 3 / iPad 4', 877),
(884, 'iPad mini', 877),
(885, 'iPhone 3G / 3GS', 878),
(886, 'iPhone 4 / 4S', 878),
(887, 'iPhone 5', 878),
(888, 'Аксессуары для Apple', 876),
(895, 'iPhone 5 Lamborghini', 878);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Категория 1'),
(2, 'Category 3'),
(3, 'Категория 3'),
(4, 'Category 3'),
(5, 'Категория 3'),
(6, 'Категория 3');

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `base` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`id`, `code`, `title`, `base`) VALUES
(1, 'ru', 'Русский', '1'),
(2, 'en', 'English', '0'),
(3, 'fr', 'France', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `excerpt`, `text`, `keywords`, `description`) VALUES
(1, 2, 'Адаптивный дизайн сайта и основные стратегии по его внедрению', 'Адаптивный дизайн сайта — это совершенно новый подход к дизайну, который привлекает к себе все больше внимания, но, учитывая, насколько сильно он отличается от традиционных методов разработки, вначале он может показаться заоблачно сложным для начинающих в', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia optio odit unde quam dolore vel vitae in! Obcaecati velit rem alias exercitationem error eveniet autem, voluptatibus esse ab placeat blanditiis omnis! Necessitatibus, officia velit, laboriosam deleniti quis aperiam? Nesciunt inventore consequuntur dolores, excepturi magnam illum modi unde quis sit deserunt.</p>', 'адаптивный дизайн', 'Адаптивный дизайн сайта и основные стратегии по его внедрению'),
(2, 2, 'Советы по выравниванию иконок в тексте', 'Иконки сейчас очень популярны, они дополняют контент (в большинстве случаев). Но с другой стороны они могут доставить немало хлопот. Если вы определились с форматом (SVG или шрифты-иконки?) и создали сами иконки, все равно по мере разработки будут всплыва', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia optio odit unde quam dolore vel vitae in! Obcaecati velit rem alias exercitationem error eveniet autem, voluptatibus esse ab placeat blanditiis omnis! Necessitatibus, officia velit, laboriosam deleniti quis aperiam? Nesciunt inventore consequuntur dolores, excepturi magnam illum modi unde quis sit deserunt.</p>', 'ключевики', 'мета-описание'),
(3, 1, 'Редко используемые селекторы JQuery', 'Селекторы в JQuery играют главенствующую роль. Большинство методов в JQuery работают только на каких-то элементах, поэтому перед их использованием необходимо выбрать какой-либо тег. К примеру, чтобы прикрепить событие click к кнопке, эту кнопку сначала не', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia optio odit unde quam dolore vel vitae in! Obcaecati velit rem alias exercitationem error eveniet autem, voluptatibus esse ab placeat blanditiis omnis! Necessitatibus, officia velit, laboriosam deleniti quis aperiam? Nesciunt inventore consequuntur dolores, excepturi magnam illum modi unde quis sit deserunt.</p>', NULL, NULL),
(4, 4, 'Тестовый пост', 'lorem ipsum...', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia optio odit unde quam dolore vel vitae in! Obcaecati velit rem alias exercitationem error eveniet autem, voluptatibus esse ab placeat blanditiis omnis! Necessitatibus, officia velit, laboriosam deleniti quis aperiam? Nesciunt inventore consequuntur dolores, excepturi magnam illum modi unde quis sit deserunt.</p>', '', ''),
(5, 4, 'Тестовый пост 2', 'Краткое описание статьи "Тестовый пост"', '42342', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `email`, `name`, `role`) VALUES
(2, 'user1', '$2y$10$dPk4DZzZ9ZCSBlH6rqouTenRH9JMX.rQdOIRM4sb9fQ3.//q0M7Cu', '1@1.com', 'User1', 'user'),
(4, 'user2', '$2y$10$lA1LU0jrJ7ognwJxy4AGg.BfT2TH10yiS3BbNTdyxPoRZMGG7Mngq', '2@1.com', 'User2', 'user'),
(5, 'user3', '$2y$10$DqMN9zwT7YgmnIRQhgGGC.iIE5faCaOcJ3kwY1WuRnjWHZ/N1qLwO', '3@1.com', 'User3', 'user');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;