-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июн 01 2017 г., 20:34
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `web2net`
--

-- --------------------------------------------------------

--
-- Структура таблицы `art_item`
--

CREATE TABLE `art_item` (
  `id` int(11) UNSIGNED NOT NULL,
  `connect` varchar(255) NOT NULL,
  `_caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `_desc_full` text NOT NULL,
  `_desc_short` varchar(555) NOT NULL,
  `showing` int(1) NOT NULL DEFAULT '1',
  `last_update` datetime DEFAULT NULL,
  `img` varchar(155) NOT NULL,
  `hit` int(1) NOT NULL,
  `p1` varchar(255) NOT NULL DEFAULT 'You',
  `_meta_t` varchar(255) NOT NULL,
  `_meta_k` text NOT NULL,
  `_meta_d` text NOT NULL,
  `see` int(11) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `art_item_en`
--

CREATE TABLE `art_item_en` (
  `lid` int(11) UNSIGNED NOT NULL,
  `pid` varchar(99) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_full` text NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `art_item_ru`
--

CREATE TABLE `art_item_ru` (
  `lid` int(11) UNSIGNED NOT NULL,
  `pid` varchar(99) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_full` text NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `art_item_ua`
--

CREATE TABLE `art_item_ua` (
  `lid` int(11) UNSIGNED NOT NULL,
  `pid` varchar(99) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_full` text NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `art_tag`
--

CREATE TABLE `art_tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `connect` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `showing` int(1) NOT NULL,
  `hit` int(1) NOT NULL,
  `level` int(1) NOT NULL,
  `last_update` datetime NOT NULL,
  `see` int(11) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `art_tag_en`
--

CREATE TABLE `art_tag_en` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `art_tag_ru`
--

CREATE TABLE `art_tag_ru` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `art_tag_ua`
--

CREATE TABLE `art_tag_ua` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) UNSIGNED NOT NULL,
  `connect` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `desc_full` text NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `show` int(1) NOT NULL DEFAULT '1',
  `date` datetime DEFAULT NULL,
  `img` varchar(155) NOT NULL,
  `hit` int(1) NOT NULL,
  `p1` varchar(255) NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL,
  `see` int(11) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cart_tag`
--

CREATE TABLE `cart_tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `connect` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `show` int(1) NOT NULL,
  `hit` int(1) NOT NULL,
  `level` int(1) NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL,
  `date` datetime NOT NULL,
  `see` int(11) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cfg_global`
--

CREATE TABLE `cfg_global` (
  `id` int(3) NOT NULL,
  `function_name` varchar(255) NOT NULL,
  `function_description` varchar(255) NOT NULL,
  `showing` enum('Y','N') NOT NULL DEFAULT 'N',
  `enable` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cfg_global`
--

INSERT INTO `cfg_global` (`id`, `function_name`, `function_description`, `showing`, `enable`) VALUES
(1, 'multi_lang', 'Многоязычность', 'Y', '0'),
(2, 'mobi', 'Мобильная версия', 'N', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `cfg_lang`
--

CREATE TABLE `cfg_lang` (
  `id` int(3) NOT NULL,
  `lang` varchar(3) NOT NULL,
  `caption` varchar(50) NOT NULL,
  `enable` enum('1','0') NOT NULL DEFAULT '0',
  `default` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cfg_lang`
--

INSERT INTO `cfg_lang` (`id`, `lang`, `caption`, `enable`, `default`) VALUES
(1, 'ru', 'Русская версия', '1', '1'),
(2, 'en', 'English version', '1', '0'),
(3, 'ua', 'Українська версія', '1', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(9) NOT NULL,
  `type` varchar(25) NOT NULL,
  `table` varchar(50) NOT NULL DEFAULT 'feedback',
  `date` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birth` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `why` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `your_date` varchar(255) NOT NULL,
  `your_time` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `mess` text NOT NULL,
  `ip` varchar(25) NOT NULL,
  `showing` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `filter_item`
--

CREATE TABLE `filter_item` (
  `id` int(11) UNSIGNED NOT NULL,
  `connect` varchar(255) NOT NULL,
  `_caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `_desc_full` text NOT NULL,
  `_desc_short` varchar(555) NOT NULL,
  `showing` int(1) NOT NULL DEFAULT '1',
  `first_update` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `img` varchar(155) NOT NULL,
  `value1` varchar(100) NOT NULL,
  `value2` varchar(100) NOT NULL,
  `hit` int(1) NOT NULL,
  `p1` varchar(255) NOT NULL,
  `_meta_t` varchar(255) NOT NULL,
  `_meta_k` text NOT NULL,
  `_meta_d` text NOT NULL,
  `see` int(11) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `filter_item_en`
--

CREATE TABLE `filter_item_en` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `filter_item_ru`
--

CREATE TABLE `filter_item_ru` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `filter_item_ua`
--

CREATE TABLE `filter_item_ua` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `filter_tag`
--

CREATE TABLE `filter_tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `connect` varchar(255) NOT NULL,
  `_caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `_desc_short` varchar(555) NOT NULL,
  `_desc_full` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `showing` int(1) NOT NULL,
  `hit` int(1) NOT NULL,
  `level` int(1) NOT NULL,
  `_meta_t` varchar(255) NOT NULL,
  `_meta_k` text NOT NULL,
  `_meta_d` text NOT NULL,
  `date` datetime NOT NULL,
  `see` int(11) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `filter_tag_en`
--

CREATE TABLE `filter_tag_en` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `filter_tag_ru`
--

CREATE TABLE `filter_tag_ru` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `filter_tag_ua`
--

CREATE TABLE `filter_tag_ua` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_item`
--

CREATE TABLE `gallery_item` (
  `id` int(11) UNSIGNED NOT NULL,
  `connect` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `showing` int(1) NOT NULL,
  `hit` int(1) NOT NULL,
  `p1` varchar(255) NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL,
  `date` datetime NOT NULL,
  `see` int(11) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_item_en`
--

CREATE TABLE `gallery_item_en` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_item_ru`
--

CREATE TABLE `gallery_item_ru` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_item_ua`
--

CREATE TABLE `gallery_item_ua` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_tag`
--

CREATE TABLE `gallery_tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `connect` varchar(255) NOT NULL,
  `_caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `_desc_short` varchar(555) NOT NULL,
  `_desc_full` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `show` int(1) NOT NULL,
  `hit` int(1) NOT NULL,
  `level` int(1) NOT NULL,
  `_meta_t` varchar(255) NOT NULL,
  `_meta_k` text NOT NULL,
  `_meta_d` text NOT NULL,
  `date` datetime NOT NULL,
  `see` int(11) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_tag_en`
--

CREATE TABLE `gallery_tag_en` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_tag_ru`
--

CREATE TABLE `gallery_tag_ru` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_tag_ua`
--

CREATE TABLE `gallery_tag_ua` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `items_branch`
--

CREATE TABLE `items_branch` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `seolink` varchar(200) NOT NULL,
  `showing` enum('Y','N') NOT NULL DEFAULT 'Y',
  `img` varchar(5) NOT NULL,
  `order` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `items_category`
--

CREATE TABLE `items_category` (
  `id` int(11) NOT NULL,
  `level` int(1) NOT NULL DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `caption` varchar(200) NOT NULL,
  `seolink` varchar(200) NOT NULL,
  `description` varchar(220) NOT NULL,
  `showing` enum('Y','N') NOT NULL DEFAULT 'Y',
  `date` datetime NOT NULL,
  `img` varchar(155) NOT NULL,
  `image_ext` varchar(5) NOT NULL,
  `order_show` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `message_item`
--

CREATE TABLE `message_item` (
  `id` int(11) UNSIGNED NOT NULL,
  `connect` varchar(255) NOT NULL,
  `user_id` int(9) NOT NULL DEFAULT '0',
  `caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `desc_full` text NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `show` int(1) NOT NULL DEFAULT '1',
  `date` datetime DEFAULT NULL,
  `img` varchar(155) NOT NULL,
  `hit` int(1) NOT NULL,
  `p1` varchar(255) NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL,
  `see` int(11) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `message_tag`
--

CREATE TABLE `message_tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `connect` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `show` int(1) NOT NULL,
  `hit` int(1) NOT NULL,
  `level` int(1) NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL,
  `date` datetime NOT NULL,
  `see` int(11) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `param_item`
--

CREATE TABLE `param_item` (
  `id` int(11) UNSIGNED NOT NULL,
  `connect` varchar(255) NOT NULL,
  `_caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `_desc_full` text NOT NULL,
  `_desc_short` varchar(555) NOT NULL,
  `show` int(1) NOT NULL DEFAULT '1',
  `date` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `img` varchar(155) NOT NULL,
  `value1` varchar(100) NOT NULL,
  `value2` varchar(100) NOT NULL,
  `hit` int(1) NOT NULL,
  `p1` varchar(255) NOT NULL,
  `_meta_t` varchar(255) NOT NULL,
  `_meta_k` text NOT NULL,
  `_meta_d` text NOT NULL,
  `see` int(11) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `param_item_en`
--

CREATE TABLE `param_item_en` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `param_item_ru`
--

CREATE TABLE `param_item_ru` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `param_item_ua`
--

CREATE TABLE `param_item_ua` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `param_tag`
--

CREATE TABLE `param_tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `connect` varchar(255) NOT NULL,
  `_caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `_desc_short` varchar(555) NOT NULL,
  `_desc_full` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `show` int(1) NOT NULL,
  `hit` int(1) NOT NULL,
  `level` int(1) NOT NULL,
  `_meta_t` varchar(255) NOT NULL,
  `_meta_k` text NOT NULL,
  `_meta_d` text NOT NULL,
  `date` datetime NOT NULL,
  `see` int(11) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `param_tag_en`
--

CREATE TABLE `param_tag_en` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `param_tag_ru`
--

CREATE TABLE `param_tag_ru` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `param_tag_ua`
--

CREATE TABLE `param_tag_ua` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `search`
--

CREATE TABLE `search` (
  `id` int(9) NOT NULL,
  `word` varchar(55) NOT NULL,
  `count` int(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `search`
--

INSERT INTO `search` (`id`, `word`, `count`) VALUES
(11, 'sdsadsa', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_item`
--

CREATE TABLE `shop_item` (
  `id` int(11) UNSIGNED NOT NULL,
  `1Cid` varchar(255) NOT NULL,
  `connect` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `desc_full` text NOT NULL,
  `desc_short` text NOT NULL,
  `showing` int(1) NOT NULL DEFAULT '1',
  `flagman` int(1) NOT NULL,
  `good_price` tinyint(1) NOT NULL,
  `sell_out` tinyint(1) NOT NULL,
  `on_main` tinyint(1) NOT NULL,
  `price_diler` decimal(10,2) NOT NULL,
  `price_roznica` decimal(10,2) NOT NULL,
  `first_update` datetime DEFAULT NULL,
  `last_update` datetime NOT NULL,
  `img` varchar(155) NOT NULL,
  `article` varchar(100) NOT NULL DEFAULT '0',
  `ordering` smallint(5) UNSIGNED NOT NULL,
  `hit` int(1) NOT NULL,
  `garantiya` int(10) UNSIGNED NOT NULL,
  `nalichie` varchar(50) NOT NULL DEFAULT '+',
  `package` varchar(50) NOT NULL DEFAULT '0',
  `param_connect` varchar(255) NOT NULL DEFAULT '',
  `branch_connect` varchar(255) NOT NULL,
  `gallery_connect` varchar(255) NOT NULL,
  `companion_connect` varchar(255) NOT NULL,
  `filter_connect` varchar(255) NOT NULL,
  `p1` varchar(255) NOT NULL COMMENT 'DDP',
  `p2` varchar(255) NOT NULL COMMENT 'MONITOR',
  `p3` varchar(255) NOT NULL,
  `p4` varchar(255) NOT NULL,
  `p5` varchar(255) NOT NULL,
  `p6` varchar(255) NOT NULL,
  `postavschik` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL,
  `see` int(11) NOT NULL,
  `print` enum('1','0') NOT NULL DEFAULT '1',
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_item_copy`
--

CREATE TABLE `shop_item_copy` (
  `id` int(11) UNSIGNED NOT NULL,
  `1Cid` varchar(255) NOT NULL,
  `connect` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `desc_full` text NOT NULL,
  `desc_short` text NOT NULL,
  `showing` int(1) NOT NULL DEFAULT '1',
  `flagman` int(1) NOT NULL,
  `good_price` tinyint(1) NOT NULL,
  `sell_out` tinyint(1) NOT NULL,
  `on_main` tinyint(1) NOT NULL,
  `price_diler` decimal(10,2) NOT NULL,
  `price_roznica` decimal(10,2) NOT NULL,
  `first_update` datetime DEFAULT NULL,
  `last_update` datetime NOT NULL,
  `img` varchar(155) NOT NULL,
  `article` varchar(100) NOT NULL DEFAULT '0',
  `ordering` smallint(5) UNSIGNED NOT NULL,
  `hit` int(1) NOT NULL,
  `garantiya` int(10) UNSIGNED NOT NULL,
  `nalichie` varchar(50) NOT NULL DEFAULT '+',
  `package` varchar(50) NOT NULL DEFAULT '0',
  `param_connect` varchar(255) NOT NULL DEFAULT '',
  `branch_connect` varchar(255) NOT NULL,
  `gallery_connect` varchar(255) NOT NULL,
  `companion_connect` varchar(255) NOT NULL,
  `filter_connect` varchar(255) NOT NULL,
  `p1` varchar(255) NOT NULL COMMENT 'DDP',
  `p2` varchar(255) NOT NULL COMMENT 'MONITOR',
  `p3` varchar(255) NOT NULL,
  `p4` varchar(255) NOT NULL,
  `p5` varchar(255) NOT NULL,
  `p6` varchar(255) NOT NULL,
  `postavschik` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL,
  `see` int(11) NOT NULL,
  `print` enum('1','0') NOT NULL DEFAULT '1',
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_item_en`
--

CREATE TABLE `shop_item_en` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` text NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_item_en_copy`
--

CREATE TABLE `shop_item_en_copy` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` text NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_item_ru`
--

CREATE TABLE `shop_item_ru` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` text NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_item_ru_copy`
--

CREATE TABLE `shop_item_ru_copy` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` text NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_item_temp`
--

CREATE TABLE `shop_item_temp` (
  `id` int(11) UNSIGNED NOT NULL,
  `1Cid` varchar(255) NOT NULL,
  `connect` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `desc_full` text NOT NULL,
  `desc_short` text NOT NULL,
  `showing` int(1) NOT NULL DEFAULT '1',
  `flagman` int(1) NOT NULL,
  `good_price` tinyint(1) NOT NULL,
  `sell_out` tinyint(1) NOT NULL,
  `on_main` tinyint(1) NOT NULL,
  `price_diler` decimal(10,2) NOT NULL,
  `price_roznica` decimal(10,2) NOT NULL,
  `first_update` datetime DEFAULT NULL,
  `last_update` datetime NOT NULL,
  `img` varchar(155) NOT NULL,
  `article` varchar(100) NOT NULL DEFAULT '0',
  `ordering` smallint(5) UNSIGNED NOT NULL,
  `hit` int(1) NOT NULL,
  `garantiya` int(10) UNSIGNED NOT NULL,
  `nalichie` varchar(50) NOT NULL DEFAULT '+',
  `package` varchar(50) NOT NULL DEFAULT '0',
  `param_connect` varchar(255) NOT NULL DEFAULT '',
  `branch_connect` varchar(255) NOT NULL,
  `gallery_connect` varchar(255) NOT NULL,
  `companion_connect` varchar(255) NOT NULL,
  `filter_connect` varchar(255) NOT NULL,
  `p1` varchar(255) NOT NULL,
  `p2` varchar(255) NOT NULL,
  `p3` varchar(255) NOT NULL,
  `p4` varchar(255) NOT NULL,
  `p5` varchar(255) NOT NULL,
  `p6` varchar(255) NOT NULL,
  `postavschik` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL,
  `see` int(11) NOT NULL,
  `print` enum('1','0') NOT NULL DEFAULT '1',
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_item_ua`
--

CREATE TABLE `shop_item_ua` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` text NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_item_ua_copy`
--

CREATE TABLE `shop_item_ua_copy` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` text NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_setting`
--

CREATE TABLE `shop_setting` (
  `id` int(3) NOT NULL,
  `description` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_shopping`
--

CREATE TABLE `shop_shopping` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `pcount` int(3) DEFAULT NULL,
  `price_diler` varchar(10) NOT NULL,
  `price_roznica` varchar(50) NOT NULL,
  `ddp` int(2) NOT NULL,
  `date` datetime DEFAULT NULL,
  `zakaz` varchar(20) DEFAULT NULL,
  `zakaz_date` datetime DEFAULT NULL,
  `arhive` varchar(20) DEFAULT NULL,
  `order_number` varchar(50) NOT NULL,
  `Ymd` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_tag`
--

CREATE TABLE `shop_tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `connect` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `showing` int(1) NOT NULL,
  `hit` int(1) NOT NULL,
  `level` int(1) NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL,
  `date` datetime NOT NULL,
  `see` int(11) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_tag_en`
--

CREATE TABLE `shop_tag_en` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_tag_ru`
--

CREATE TABLE `shop_tag_ru` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_tag_ua`
--

CREATE TABLE `shop_tag_ua` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_user`
--

CREATE TABLE `shop_user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `city` varchar(100) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `regdate` datetime NOT NULL,
  `disabled` int(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `user_action`
--

CREATE TABLE `user_action` (
  `id` int(9) NOT NULL,
  `uid` int(9) NOT NULL,
  `date` datetime NOT NULL,
  `action` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_action`
--

INSERT INTO `user_action` (`id`, `uid`, `date`, `action`) VALUES
(1, 1, '2017-06-01 21:34:00', 'INSERT INTO search ( word ,  count  ) VALUES ( sdsadsa ,  1  )');

-- --------------------------------------------------------

--
-- Структура таблицы `user_item`
--

CREATE TABLE `user_item` (
  `id` int(11) NOT NULL,
  `sid` varchar(64) NOT NULL,
  `connect` varchar(255) NOT NULL,
  `level` int(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `buy_list` text NOT NULL COMMENT 'id~наименование~кол-во~цена&следующая позиция',
  `feedback_list` text NOT NULL COMMENT 'Дата || Сообщение',
  `phone` varchar(255) NOT NULL,
  `short_caption` varchar(255) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL DEFAULT 'user',
  `date` datetime NOT NULL,
  `pos` int(20) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `ban` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_item`
--

INSERT INTO `user_item` (`id`, `sid`, `connect`, `level`, `name`, `surname`, `email`, `buy_list`, `feedback_list`, `phone`, `short_caption`, `organization`, `address`, `job`, `date`, `pos`, `login`, `password`, `img`, `ban`) VALUES
(1, 'uscm97282ish2a3f4ages0lpi1', ';3;', 9, 'Супер-Пупер Админ', '', 'you@mkr.com.ua', '2017-02-15 07:52:48||1527||20024~bizhub 185~1~8198&||;3;\r\n2017-01-21 00:18:04||1526||15695~МФУ А3 ч/б Canon iR2204~1~390&||;3;\r\n', '\r\n', '+38 050-445-15-75', 'You', 'ООО Мастерская комплексных решений', '', 'Admin', '2017-03-03 11:33:50', 1418411742, 'web2net', 'c8c1a49b3e6f0906e9fe35681d75e1e4', 'web2net.jpg', 0),
(8, 'bd0a600650ed6a806c0acee3a0ef7a23', ';3;', 8, 'Alex', 'Shpak', 'alex@mkr.com.ua', '\r\n', '', '+38 050 680 33 97', 'Шпак', 'MKR', '', 'Директор', '2017-04-03 22:29:33', 1442860455, 'alex', '2a80f1a61101896decdf8d35eb18dd25', '', 0),
(48, '', ';8;', 0, '', '', '', '', '', '537-31-47, 537-31-48', 'Манулі Україна', 'Спільне Українсько – Італійське товариство з  обмеженою відповідальністю «Манулі Україна Лтд.»', 'м.Київ - 03680, вул.Малинська,18', '', '2017-03-03 14:52:38', 1488482452, '', '', '', 1),
(49, '', ';8;', 0, '', '', '', '', '', '517-75-00', 'Алвоген', '«Алвоген Мальта Оперейшенс (РОУ) Лімітед»', 'проспект Броварський, 5-И', '', '2017-04-20 21:20:20', 1488483434, '', '', '', 1),
(50, '', ';8;', 0, 'Александр', 'Артемчук', 'sales@posstore.com.ua', '', '', '+38 (067) 264 60 61', 'ПосСтор', 'ООО Посстор', 'г.Киев, 02160, \r\nпросп. Cоборности (Воссоединения) 19, оф. 114', 'Директор', '2017-05-19 18:58:02', 1488483910, '', '', '', 1),
(51, '', ';8;', 0, '', '', '', '', '', '', 'Гильдия', 'Гильдия', '', '', '2017-03-03 10:05:35', 1488484190, '', '', '', 1),
(52, '', ';8;', 0, 'Андрій Володимирович', 'Романенко', 'a.romanenko@globalmoney.ua', '', '', '0443777070', 'Глобал Мани', 'ТОВ ГЛОБАЛМАНІ', '01103, м.Київ, бул.Дружби народів 28-в', '', '2017-03-20 20:13:12', 1488484601, '', '', '', 1),
(53, '', ';8;', 0, 'Николай', 'Ткаченко', 'n.tkachenko@eim.com.ua', '', '', '+38(096)509-79-46', 'Энергоинвестмонтаж', 'ООО «Энергоинвестмонтаж»', '02230 Киев,\r\nул. Петровского, 18-А', 'Инженер', '2017-03-03 14:52:58', 1488485178, '', '', '', 1),
(54, '', ';8;', 0, '', '', '', '', '', '513-65-65', 'Школа №18', 'Комунальний заклад  «Вечірня (змінна) школа ІІ-ІІІ ступенів № 18» Деснянського району  міста Києва', 'Братиславська, 14-А', '', '2017-04-20 21:22:00', 1488485549, '', '', '', 1),
(55, '', ';8;', 0, 'Вадим', 'Кондратюк', 'Vadym.Kondratiuk@assist.org.ua', '', '', '+38(098)467-48-60', 'Гарант-АСІСТАНС', 'ТОВ «Гарант-АСІСТАНС»', 'пр. Перемоги, 57', 'Виконавчий директор', '2017-04-20 21:21:23', 1488485710, '', '', '', 1),
(56, '', ';8;', 0, '', '', '', '', '', '', 'Світ нерухомості', 'Свит нерухомости', '', '', '2017-03-03 10:04:38', 1488527487, '', '', '', 1),
(57, '', ';8;', 0, '', '', '', '', '', '', 'ВладаМеталСервис', 'Владаметалсервис', '', '', '2017-03-03 10:04:20', 1488527511, '', '', '', 1),
(58, '', ';8;', 0, 'О.С.', 'Смолич', '', '', '', 'ф.0442053405, 0442009550', 'Квазар', 'ПУБЛІЧНЕ АКЦІОНЕРНЕ ТОВАРИСТВО КВАЗАР', 'вул.Північно-Сирецька, буд.3', '', '2017-04-22 08:40:56', 1488527524, '', '', '', 1),
(59, '', ';8;', 0, '', '', '', '', '', '0445747202, 0442916002', 'Впровадження', 'ТОВ НАУКОВО-ВИРОБНИЧЕ ПІДПРИЄМСТВО УКРПРОМВПРОВАДЖЕННЯ', 'пров.Лабораторний, буд.1, оф.400', '', '2017-04-20 21:20:48', 1488527548, '', '', '', 1),
(60, '', ';8;', 0, '', '', '', '', '', '0442279103, 0445380234', 'Аероальянс', 'ТОВ Максімус Еірлайнс', '', '', '2017-03-22 11:18:24', 1488527563, '', '', '', 1),
(61, '', ';8;', 0, '', '', '', '', '', '', 'Моя клиника', '', '', '', '2017-03-03 11:47:30', 1488534450, '', '', '', 1),
(62, '', ';8;', 0, '', '', '', '', '', '', 'Ловекс', '', '', '', '2017-03-03 11:47:50', 1488534470, '', '', '', 1),
(63, '', ';8;', 0, '', '', '', '', '', '', 'База волынская', '', '', '', '2017-03-03 17:04:48', 1488534490, '', '', '', 1),
(64, '', ';8;', 0, '', '', '', '', '', '', 'Академия Женствености', '', '', '', '2017-03-03 11:48:22', 1488534502, '', '', '', 1),
(65, '', ';8;', 0, '', '', '', '', '', '', 'Металобаза', '', '', '', '2017-03-03 11:48:53', 1488534533, '', '', '', 1),
(66, '', ';8;', 0, '', '', '', '', '', '', 'Днипролаб', '', '', '', '2017-03-03 11:49:06', 1488534546, '', '', '', 1),
(67, '', ';8;', 0, '', '', '', '', '', '', 'Компаньон', '', '', '', '2017-03-03 11:49:21', 1488534561, '', '', '', 1),
(68, '', ';8;', 0, '', '', '', '', '', '', 'Эдвансис', '', '', '', '2017-03-03 11:49:31', 1488534571, '', '', '', 1),
(69, '', ';8;', 0, '', '', '', '', '', '0445282019, 0674075334', 'Козирні подорожі', 'ТОВ КОЗИРНІ ПОДОРОЖІ', '', '', '2017-03-22 11:17:08', 1488534587, '', '', '', 1),
(70, '', ';8;', 0, '', '', '', '', '', '', 'Поликлиника Русановка', '', '', '', '2017-03-03 11:50:00', 1488534600, '', '', '', 1),
(71, '', ';8;', 0, '', '', '', '', '', '', 'Лансис', '', '', '', '2017-03-03 11:50:18', 1488534618, '', '', '', 1),
(72, '', ';8;', 0, '', '', '', '', '', '', 'Школа №315', '', '', '', '2017-03-03 12:34:41', 1488534652, '', '', '', 1),
(73, '', ';8;', 0, '', '', '', '', '', '', 'Нотариус Кияшко', '', '', '', '2017-03-03 11:51:58', 1488534718, '', '', '', 1),
(74, '', ';8;', 0, '', '', '', '', '', '', 'Профсоюзы', '', '', '', '2017-03-03 11:52:08', 1488534728, '', '', '', 1),
(75, '', ';8;', 0, '', '', '', '', '', '', 'Дрим лайф', '', '', '', '2017-03-16 09:00:43', 1488534738, '', '', '', 1),
(76, '', ';8;', 0, '', '', '', '', '', '', 'Перспектива', '', '', '', '2017-03-03 11:52:39', 1488534756, '', '', '', 1),
(77, '', ';8;', 0, '', '', '', '', '', '', 'ABC 2000', '', '', '', '2017-03-03 21:27:50', 1488534771, '', '', '', 1),
(78, '', ';8;', 0, '', '', '', '', '', '', 'Миоре', '', '', '', '2017-03-03 11:53:02', 1488534782, '', '', '', 1),
(79, '', ';8;', 0, '', '', '', '', '', '', 'СПЗ-Групп', '', '', '', '2017-04-12 00:16:33', 1488534795, '', '', '', 1),
(80, '', ';8;', 0, '', '', '', '', '', '', 'Вип Декор', '', '', '', '2017-03-03 11:53:23', 1488534803, '', '', '', 1),
(81, '', ';8;', 0, '', '', '', '', '', '', 'Владигор', '', '', '', '2017-03-03 11:53:38', 1488534818, '', '', '', 1),
(82, '', ';8;', 0, 'О.М.', 'Шевченко', '', '', '', '0442915696, 0442915694', 'Тиларм', 'ТОВ ТІЛАРМ СЕРВІС', 'Червонозоряний 119, корпус А, оф.15', 'Директор', '2017-04-20 21:23:47', 1488534841, '', '', '', 1),
(83, '', ';8;', 0, '', '', '', '', '', '', 'Скифоил', '', '', '', '2017-03-03 12:30:02', 1488534852, '', '', '', 1),
(84, '', ';8;', 0, '', 'Будіков Є. І.', '', '', '', '0445071157', 'Визави', 'ТОВ ВІЗАВІ', 'с.Проліски, Бориспільский р-н, вул.П.Морозова 1,кв.13', 'Директор', '2017-04-20 21:25:39', 1488534866, '', '', '', 1),
(85, '', ';8;', 0, '', '', '', '', '', '', 'Политара', '', '', '', '2017-03-03 11:55:03', 1488534903, '', '', '', 1),
(86, '', ';8;', 0, 'Лілія Василівна', 'Ісай', '', '', '', '(04594) 66088 м.Бровари', 'Будмир', 'ТОВ БУДМИР', 'м.Бровари, вул.Кирпоноса, 5', 'В.о.директора', '2017-04-22 08:47:54', 1488534926, '', '', '', 1),
(87, '', ';8;', 0, '', '', '', '', '', '', 'Школа №19', 'Гимназия 19', '', '', '2017-05-04 20:44:13', 1488534939, '', '', '', 1),
(88, '', ';8;', 0, '', '', '', '', '', '', 'Потапенко и Ко', '', '', '', '2017-04-14 23:50:52', 1488534953, '', '', '', 1),
(89, '', ';8;', 0, '', '', '', '', '', '', 'УкрДах', '', '', '', '2017-04-14 21:56:56', 1488534962, '', '', '', 1),
(90, '', ';8;', 0, '', '', '', '', '', '', 'Пилон', '', '', '', '2017-03-03 11:56:12', 1488534972, '', '', '', 1),
(91, '', ';8;', 0, 'Д.Є.', 'Добуш', '', '', '', '0445255319', 'Больница №10', 'Київська міська клінічна лікарня №10', 'пр-т Голосіївський,59-б', '', '2017-04-20 21:26:03', 1488534999, '', '', '', 1),
(92, '', ';8;', 0, '', '', '', '', '', '', 'Гринстоун', '', '', '', '2017-03-03 11:56:54', 1488535014, '', '', '', 1),
(93, '', ';8;', 0, '', '', 'travel@incomartour.kiev.ua', '', '', '(044) 537-2324', 'Инкомантур', 'Туристический оператор «Инкомартур 93»', 'Владимирская 65, оф. 8', '', '2017-04-20 21:18:30', 1488535023, '', '', '', 1),
(94, '', ';8;', 0, '', '', '', '', '', '', 'Энергия', '', '', '', '2017-03-03 11:57:14', 1488535034, '', '', '', 1),
(95, '', ';8;', 0, '', '', '', '', '', '', 'Школа №238', '', '', '', '2017-03-03 11:58:10', 1488535090, '', '', '', 1),
(96, '', ';8;', 0, '', '', '', '', '', '', 'Пуратос', '', '', '', '2017-03-03 11:58:22', 1488535102, '', '', '', 1),
(97, '', ';8;', 0, '', '', '', '', '', '', 'Школа №80', '', '', '', '2017-03-03 11:59:42', 1488535114, '', '', '', 1),
(98, '', ';8;', 0, '', '', '', '', '', '', 'Яросвит', 'ТОВ Яросвит', '', '', '2017-04-22 08:50:42', 1488535127, '', '', '', 1),
(99, '', ';8;', 0, '', '', '', '', '', '', 'Тепичний', 'ПАТ КОМБІНАТ ТЕПЛИЧНИЙ', 'ЄДРПОУ 05528361 тел\r\nІПН 055283610067, номер свідоцтва 200097383\r\nАдреса 07443, смт.Калинівка, вул.Теплична 2,\r\nБроварського р-ну, Київської області', '', '2017-03-26 20:22:23', 1488535139, '', '', '', 1),
(100, '', ';8;', 0, '', '', '', '', '', '', 'Экосфера', '', '', '', '2017-03-03 11:59:19', 1488535159, '', '', '', 1),
(101, '', ';8;', 0, '', '', '', '', '', '', 'Радищева 1050', '', '', '', '2017-03-03 17:06:16', 1488535188, '', '', '', 1),
(102, '', ';8;', 0, '', '', '', '', '', '', 'Повитруля', '', '', '', '2017-03-03 12:00:18', 1488535218, '', '', '', 1),
(103, '', ';8;', 0, '', '', '', '', '', '', 'Орион', '', '', '', '2017-03-03 12:00:26', 1488535226, '', '', '', 1),
(104, '', ';8;', 0, '', '', '', '', '', '', 'Долфи', '', '', '', '2017-03-03 12:00:40', 1488535240, '', '', '', 1),
(105, '', ';8;', 0, 'Петр', 'Борисов', '', '', '', '', 'О О Н', 'Регіональне Пр-во Управління Верховного Комісара ООН у справах біженців в Україні  (УВКБ ООН)', 'Лаврская 16', '', '2017-04-20 21:24:14', 1488535254, '', '', '', 1),
(106, '', ';8;', 0, '', '', '', '', '', '', 'Градекс', '', '', '', '2017-03-03 12:30:23', 1488537023, '', '', '', 1),
(107, '', ';8;', 0, '', '', '', '', '', '', 'Фторресурсы', '', '', '', '2017-03-03 12:30:38', 1488537038, '', '', '', 1),
(108, '', ';8;', 0, '', '', '', '', '', '', 'Иститут Физхимии', '', '', '', '2017-03-03 12:30:54', 1488537054, '', '', '', 1),
(109, '', ';8;', 0, '', '', '', '', '', '', 'ЭмБиГруп', '', '', '', '2017-03-03 12:31:08', 1488537068, '', '', '', 1),
(110, '', ';8;', 0, '', '', '', '', '', '', 'Униполис', '', '', '', '2017-03-03 12:31:27', 1488537087, '', '', '', 1),
(111, '', ';8;', 0, '', '', '', '', '', '', 'СитиСайт', '', '', '', '2017-03-03 12:31:37', 1488537097, '', '', '', 1),
(112, '', ';8;', 0, '', '', '', '', '', '', 'КиевПромСервис', '', '', '', '2017-03-03 12:31:50', 1488537110, '', '', '', 1),
(113, '', ';8;', 0, '', '', '', '', '', '', 'Зевс', '', '', '', '2017-03-03 12:31:59', 1488537119, '', '', '', 1),
(114, '', ';8;', 0, '', '', '', '', '', '', 'Шабаш', '', '', '', '2017-03-03 12:32:23', 1488537143, '', '', '', 1),
(115, '', ';8;', 0, '', '', '', '', '', '', 'Креатив', '', '', '', '2017-03-03 12:33:11', 1488537191, '', '', '', 1),
(116, '', ';8;', 0, '', '', '', '', '', '', 'ГТ-Групп', '', '', '', '2017-03-03 12:33:42', 1488537222, '', '', '', 1),
(117, '', ';8;', 0, '', '', '', '', '', '0442295227', 'Укроптпостач', 'ТОВ КОМПАНІЯ УКРОПТПОСТАЧ', '', '', '2017-03-22 11:14:25', 1488537242, '', '', '', 1),
(118, '', ';8;', 0, '', '', '', '', '', '', 'Айсек', '', '', '', '2017-03-03 12:34:16', 1488537256, '', '', '', 1),
(119, '', ';8;', 0, '', '', '', '', '', '', 'Школа №148', '', '', '', '2017-03-03 12:34:46', 1488537286, '', '', '', 1),
(120, '', ';8;', 0, '', '', '', '', '', '', 'Румб Плюс', '', '', '', '2017-03-03 12:35:12', 1488537312, '', '', '', 1),
(121, '', ';8;', 0, '', '', '', '', '', '', 'Очкарики', '', '', '', '2017-03-03 12:35:32', 1488537332, '', '', '', 1),
(122, '', ';8;', 0, '', '', '', '', '', '', 'СиГэйт', '', '', '', '2017-03-03 12:36:09', 1488537369, '', '', '', 1),
(123, '', ';8;', 0, '', '', '', '', '', '', 'Профиль-Стаил', '', '', '', '2017-03-03 12:36:49', 1488537409, '', '', '', 1),
(124, '', ';8;', 0, '', '', '', '', '', '', 'Юниориент', '', '', '', '2017-03-03 12:37:08', 1488537428, '', '', '', 1),
(125, '', ';8;', 0, '', '', '', '', '', '', 'Матрикс', '', '', '', '2017-03-03 12:37:21', 1488537441, '', '', '', 1),
(126, '', ';8;', 0, '', '', '', '', '', '', 'Терминал Леша', '', '', '', '2017-03-03 17:06:45', 1488553605, '', '', '', 1),
(127, '', ';8;', 0, '', '', '', '', '', '', 'Лиса (Вишневе)', '', '', '', '2017-03-03 17:07:00', 1488553620, '', '', '', 1),
(128, '', ';8;', 0, '', '', '', '', '', '', 'Кондиба (Бровари)', '', '', '', '2017-03-03 17:07:29', 1488553649, '', '', '', 1),
(129, '', ';8;', 0, '', '', '', '', '', '', 'Салон багет', '', '', '', '2017-03-03 17:07:48', 1488553668, '', '', '', 1),
(130, '', ';8;', 0, '', '', '', '', '', '', 'Урловская', '', '', '', '2017-03-03 17:08:07', 1488553687, '', '', '', 1),
(131, '', ';8;', 0, '', '', '', '', '', '', 'Сталь', '', '', '', '2017-03-03 18:09:35', 1488557371, '', '', '', 1),
(132, '', ';8;', 0, 'О.В.', 'Кумейко', '', '', '', '0442288498', 'Окси-К', 'ТОВ ОКСІ-К', 'пр-т 40-річчя Жовтня, 124', 'Директор', '2017-04-22 08:31:58', 1488557397, '', '', '', 1),
(133, '', ';8;', 0, '', '', '', '', '', '', 'Стеклотара', '', '', '', '2017-03-06 21:23:43', 1488828223, '', '', '', 1),
(134, '', ';8;', 0, '', '', '', '', '', '', 'КНТУ', '', '', '', '2017-03-07 20:43:11', 1488912191, '', '', '', 1),
(135, '', ';8;', 0, '', '', '', '', '', '', 'Центус', '', '', '', '2017-03-07 20:43:54', 1488912234, '', '', '', 1),
(136, '', ';8;', 0, '', '', '', '', '', '0444960108', 'Молочна Слобода', 'Київська філія ТОВ ТД Молочна слобода', '', '', '2017-03-26 20:27:21', 1488912260, '', '', '', 1),
(137, '', ';8;', 0, '', 'Франтішек', '', '', '', 'ф.0442306917, 0443792057', 'УКРшпон', 'ТОВ УКРШПОН', 'вул.Деревообробна,5', 'Директор', '2017-04-20 21:19:43', 1489487772, '', '', '', 1),
(138, '', ';8;', 0, '', '', '', '', '', '', 'Пожарского', '', '', '', '2017-03-14 12:36:47', 1489487807, '', '', '', 1),
(139, '', ';8;', 0, '', '', '', '', '', '', 'Рома Большевик', '', '', '', '2017-04-11 23:36:32', 1489487859, '', '', '', 1),
(140, '', ';8;', 0, '', '', '', '', '', '', 'Авторинок 215', '', '', '', '2017-04-10 20:26:48', 1489487906, '', '', '', 1),
(141, '', ';8;', 0, '', '', '', '', '', '0445165022, 0445168651', 'Вторресурси', 'ТОВ КИЇВМІСЬКВТОРРЕСУРСИ', '', '', '2017-04-11 22:40:39', 1489487939, '', '', '', 1),
(142, '', ';8;', 0, '', '', '', '', '', '', 'Бальзака', '', '', '', '2017-03-14 12:40:30', 1489488026, '', '', '', 1),
(143, '', ';8;', 0, '', '', '', '', '', '', 'ЛакиКолор', '', '', '', '2017-03-14 12:41:15', 1489488075, '', '', '', 1),
(144, '', ';8;', 0, '', '', '', '', '', '', 'Деревообробна', '', '', '', '2017-03-14 12:42:16', 1489488136, '', '', '', 1),
(145, '', ';8;', 0, '', '', '', '', '', '', 'Супрун', '', '', '', '2017-03-16 08:59:59', 1489488163, '', '', '', 1),
(146, '', ';8;', 0, '', '', '', '', '', '', 'Л-Контракт', '', '', '', '2017-03-14 12:43:28', 1489488208, '', '', '', 1),
(147, '', ';8;', 0, '', '', '', '', '', '', 'Здолбуновская', '', '', '', '2017-03-16 08:59:17', 1489647557, '', '', '', 1),
(148, '', ';8;', 0, '', 'Нагорний Д.М.', '', '', '', 'ф.0444851501, 0509582793', 'ДС Электроникс', 'ТОВ ДС ЕЛЕКТРОНІКС', 'Північно-Сирецька, буд.1-3', 'Директор', '2017-04-20 21:23:17', 1489647695, '', '', '', 1),
(149, '', ';8;', 0, '', '', '', '', '', '', 'Юристы подол', '', '', '', '2017-03-20 20:08:25', 1490033305, '', '', '', 1),
(150, '', ';8;', 0, '', '', '', '', '', '', 'Х.шосе', '', '', '', '2017-03-20 20:08:37', 1490033317, '', '', '', 1),
(151, '', ';8;', 0, '', '', '', '', '', '0445857368, 0674457946', 'Соня', 'Торгова марка Соня', '', '', '2017-03-20 20:10:23', 1490033412, '', '', '', 1),
(152, '', ';8;', 0, 'Євген', 'Потєєв', '', '', '', '0504157499', 'Потеев', 'Фізична особа-підприємець Потєєв Євген Олегович', '', '', '2017-03-22 11:11:35', 1490173895, '', '', '', 1),
(153, '', ';8;', 0, '', '', '', '', '', '', 'Закревского', '', '', '', '2017-03-22 11:12:15', 1490173935, '', '', '', 1),
(154, '', ';8;', 0, '', '', '', '', '', '', 'Магнитогорская', '', '', '', '2017-03-22 11:12:39', 1490173959, '', '', '', 1),
(155, '', ';8;', 0, '', '', '', '', '', '', 'Укрсплав', '', '', '', '2017-03-22 11:13:03', 1490173983, '', '', '', 1),
(156, '', ';8;', 0, '', '', '', '', '', '0442482525', 'Мед Трейд', 'ТОВ МЕД-ТРЕЙД', '', '', '2017-03-22 11:15:35', 1490174135, '', '', '', 1),
(157, '', ';8;', 0, '', '', '', '', '', '', 'Бортничи', '', '', '', '2017-03-23 19:36:24', 1490290584, '', '', '', 1),
(158, '', ';8;', 0, '', '', '', '', '', '', 'Укрхимфармация', '', '', '', '2017-03-23 19:37:03', 1490290623, '', '', '', 1),
(159, '', ';8;', 0, '', '', '', '', '', '0445669946', 'Евромастила', 'ТОВ ЄВРОМАСТИЛА', 'Горлівська, 200', '', '2017-04-20 21:25:08', 1490290731, '', '', '', 1),
(160, '', ';8;', 0, '', '', '', '', '', '', 'Москаленко', '', '', '', '2017-03-26 10:16:25', 1490512585, '', '', '', 1),
(161, '', ';8;', 0, '', '', '', '', '', '', 'Хата рибака', '', '', '', '2017-03-26 10:16:36', 1490512596, '', '', '', 1),
(162, '', ';8;', 0, '', '', '', '', '', '', 'Межигорская 50', '', '', '', '2017-03-28 15:15:16', 1490703316, '', '', '', 1),
(163, '7d72014774556eab457ee4c0195e7a29', ';4;', 5, 'Редько', 'Сергей', 'redko@mkr.com.ua', '', '', '+38 050 442 36 42', 'R Sergey', 'MKR', '', '', '2017-04-03 22:27:51', 1491246890, 'rsergey', 'ee30484455e7fd9dc70764c7ca0f81cb', '', 0),
(164, 'eeb744cdf652c7b1ad1f67cad972bd49', ';4;', 5, 'Сергей', 'Сметанин', 'smetanin@mkr.com.ua', '', '', '+38 050 442 36 44', 'S Sergey', 'MKR', '', '', '2017-05-26 13:40:27', 1491247004, 'ssergey', '58f95197be9a415762fdad54f3e03ef2', '', 0),
(165, '6608c4726010ac01714b160f799e1a96', ';9;', 6, 'Ирина', '', 'irina@mkr.com.ua', '', '', '+38 050 280 01 22', 'Irina', 'MKR', '', 'Бух', '2017-05-21 07:29:22', 1491247099, 'irina', '30ff09c8e5605c0402f2fbdae9e7a290', '', 0),
(166, '', ';8;', 0, '', '', '', '', '', '', 'Женская Консультация', '', '', '', '2017-04-10 20:05:58', 1491843958, '', '', '', 1),
(167, '', ';8;', 0, '', '', '', '', '', '', 'Урловская стоматология', '', '', '', '2017-04-10 20:06:26', 1491843986, '', '', '', 1),
(168, '', ';8;', 0, '', '', '', '', '', '', 'Васильков 163', '', '', '', '2017-04-11 23:31:40', 1491844029, '', '', '', 1),
(169, '', ';8;', 0, '', '', '', '', '', '', 'Адел', '', '', '', '2017-04-10 20:17:16', 1491844636, '', '', '', 1),
(170, '', ';8;', 0, '', '', '', '', '', '', 'гудвин', '', '', '', '2017-04-10 20:18:21', 1491844701, '', '', '', 1),
(171, '', ';8;', 0, '', '', '', '', '', '', 'МГИК', '', '', '', '2017-04-10 20:18:39', 1491844719, '', '', '', 1),
(172, '', ';8;', 0, '', '', '', '', '', '', 'К-Фундамент', '', '', '', '2017-04-10 20:19:07', 1491844747, '', '', '', 1),
(173, '', ';8;', 0, '', '', '', '', '', '', 'цк профсо', '', '', '', '2017-04-10 20:19:31', 1491844771, '', '', '', 1),
(174, '', ';8;', 0, '', '', '', '', '', '', 'Украинська утилизацийна компания', '', '', '', '2017-04-10 20:19:54', 1491844794, '', '', '', 1),
(175, '', ';8;', 0, '', '', '', '', '', 'ф.0443511435, 0444929977', 'Силоджик', 'ТОВ СІЛОДЖИК ГРУП', 'Автозаводська, 54/19, літера 2А', '', '2017-04-20 21:24:42', 1491844835, '', '', '', 1),
(176, '', ';8;', 0, '', '', '', '', '', '', 'КиКимарнет', '', '', '', '2017-04-10 20:22:30', 1491844950, '', '', '', 1),
(177, '', ';8;', 0, '', '', '', '', '', '', 'Иващенко', '', '', '', '2017-04-10 20:22:54', 1491844974, '', '', '', 1),
(178, '', ';8;', 0, '', '', '', '', '', '0445331682', 'ЖБК Автотранспортник-(10)', 'ЖИТЛОВО-БУДІВЕЛЬНИЙ КООПЕРАТИВ АВТОТРАНСПОРТНИК-10', 'ЄДРПОУ 22882986\r\nІПН , номер свідоцтва\r\nАдреса 02097, м.Київ, вул.Радунська, буд.42/10,\r\nкаб.1', '', '2017-04-10 20:25:16', 1491845116, '', '', '', 1),
(179, '', ';8;', 0, '', '', '', '', '', '', 'Авторинок (Нотариус)', '', '', '', '2017-04-14 14:41:05', 1491845152, '', '', '', 1),
(180, '', ';8;', 0, '', '', '', '', '', '', 'Поликлиника Русановка (Энтузиастов 13)', '', '', 'user', '2017-04-11 22:53:40', 0, '', '', '', 1),
(181, '', ';8;', 0, '', '', '', '', '', '0442011133', 'МВЦ', 'ТОВ Міжнародний виставковий центр', 'пр-кт Броварський, буд.15', '', '2017-04-22 08:29:42', 1491943103, '', '', '', 1),
(182, '', ';8;', 0, '', '', '', '', '', '', 'Алла', '', '', '', '2017-04-12 00:07:16', 1491944836, '', '', '', 1),
(183, '', ';8;', 0, '', '', '', '', '', '', 'МясоМолПром', 'ТОВ УкрНДІмясомолпром', 'пр. Воссоединения 15, оф. 405, 407', '', '2017-04-14 21:51:03', 1491945719, '', '', '', 1),
(184, '', ';8;', 0, '', '', '', '', '', '', 'Магазин Визит (подол)', '', '', 'user', '2017-04-12 23:42:53', 0, '', '', '', 1),
(185, '', ';8;', 0, '', '', '', '', '', '', 'Виберг', '', '', '', '2017-04-12 23:49:15', 1492030155, '', '', '', 1),
(186, '', ';8;', 0, '', '', '', '', '', '', 'Бережанска 4', '', '', '', '2017-04-12 23:53:45', 1492030425, '', '', '', 1),
(187, '', ';8;', 0, '', '', '', '', '', '', 'Бойченка 16', '', '', '', '2017-04-12 23:55:08', 1492030508, '', '', '', 1),
(188, '', ';8;', 0, '', '', '', '', '', '', 'Днипролаб Дарница', '', '', 'user', '2017-04-12 23:57:03', 0, '', '', '', 1),
(189, '', ';8;', 0, '', '', '', '', '', '', 'Лесной Дима', '', '', '', '2017-04-12 23:58:35', 1492030715, '', '', '', 1),
(190, '', ';8;', 0, '', '', '', '', '', '', 'МЦ МК (Моя клиника)', '', '', '', '2017-04-12 23:59:26', 1492030766, '', '', '', 1),
(191, '', ';8;', 0, '', '', '', '', '', '', 'Центус склад', '', '', 'user', '2017-04-13 00:00:01', 0, '', '', '', 1),
(192, '', ';8;', 0, '', '', '', '', '', '', 'Боярка', '', '', 'user', '2017-04-13 00:01:00', 0, '', '', '', 1),
(193, '', ';8;', 0, '', '', '', '', '', '', 'Оболонь Соня', '', '', 'user', '2017-04-13 00:02:03', 0, '', '', '', 1),
(194, '', ';8;', 0, '', '', '', '', '', '', 'Днипролаб Маяков', '', '', 'user', '2017-04-13 00:03:45', 0, '', '', '', 1),
(195, '', ';8;', 0, '', '', '', '', '', '', 'Вишневе 2050', '', '', 'user', '2017-04-13 00:05:53', 0, '', '', '', 1),
(196, '', ';8;', 0, '', '', '', '', '', '', '5990414', '', '', 'user', '2017-04-13 00:06:46', 0, '', '', '', 1),
(197, '', ';8;', 0, 'О.А.', 'Тімофєєв', '', '', '', '0445031111', 'Кристар-Центр', 'ТОВ КРІСТАР-ЦЕНТР', 'вул.Межигірська, буд.50, кв.2', 'Директор', '2017-04-22 08:37:16', 1492234390, '', '', '', 1),
(198, '', ';8;', 0, '', '', '', '', '', '', 'Освободителей 1, оф. 609а', '', '', 'user', '2017-04-13 00:10:19', 0, '', '', '', 1),
(206, '', ';8;', 0, '', '', '', '', '', '', 'Уборевича Алена', '', '', '', '2017-04-14 23:30:31', 1492201831, '', '', '', 1),
(200, '', ';8;', 0, 'Дмитрий', '', '', '', '', '095-272-17-04', 'Планета-Сварка', '', '', '', '2017-04-14 21:49:11', 1492195751, '', '', '', 1),
(201, '', ';8;', 0, 'Александр', 'Лисовик', 'kiev@swtrawel.az', '', '', '063-359-91-09', 'СВ-Тревел', '', '', 'директор', '2017-04-14 21:53:30', 1492196010, '', '', '', 1),
(202, '', ';8;', 0, '', '', '', '', '', '', 'Просток', '', '', '', '2017-04-14 21:57:42', 1492196262, '', '', '', 1),
(204, '', ';8;', 0, '', '', '', '', '', '', 'ХЗ', '', '', 'user', '2017-04-14 23:06:19', 0, '', '', '', 1),
(205, '', ';8;', 0, 'Н.М.', 'Кононенко', '', '', '', '', 'Аскар ТБК', 'ТОВ АСКАР ТБК', 'вул.Б.Гмирі, будинок 13', 'Директор', '2017-04-22 08:33:59', 1492201625, '', '', '', 1),
(207, '', ';8;', 0, '', '', '', '', '', '', 'Поликлиника Русановка (стат отд)', '', '', '', '2017-04-14 23:31:30', 1492201890, '', '', '', 1),
(208, '', ';8;', 0, '', '', '', '', '', '', 'БМГ', '', '', 'user', '2017-04-15 08:34:28', 0, '', '', '', 1),
(209, '', ';8;', 0, '', '', '', '', '', '', 'Березняки', '', '', 'user', '2017-04-15 08:44:27', 0, '', '', '', 1),
(210, '', ';8;', 0, '', '', '', '', '', '', 'Металлобаза Юра', '', '', 'user', '2017-04-15 08:45:29', 0, '', '', '', 1),
(211, '', ';8;', 0, '', '', '', '', '', '', 'Днипролаб БакЛаб', '', '', 'user', '2017-04-15 08:46:14', 0, '', '', '', 1),
(212, '', ';8;', 0, '', '', '', '', '', '', 'Лена инфаркт отдел Запорожца ', '', '', 'user', '2017-04-15 08:47:04', 0, '', '', '', 1),
(213, '', ';8;', 0, '', '', '', '', '', '', 'Ира Леси', '', '', 'user', '2017-04-15 08:47:30', 0, '', '', '', 1),
(214, '', ';8;', 0, '', '', '', '', '', '', 'Днипролаб Кинотеатр', '', '', 'user', '2017-04-15 09:00:47', 0, '', '', '', 1),
(215, '', ';8;', 0, '', '', '', '', '', '', 'Днипролаб Гарматная', '', '', 'user', '2017-04-15 09:02:27', 0, '', '', '', 1),
(216, '', ';8;', 0, '', '', '', '', '', '', 'МКР Сайт', '', '', 'user', '2017-05-26 08:31:29', 1495776689, '', '', '', 1),
(217, '', ';8;', 0, '', '', '', '', '', '', 'СПЗ Груп', '', '', 'user', '2017-04-19 11:20:49', 0, '', '', '', 1),
(218, '', ';8;', 0, '', '', '', '', '', '', 'Наташа, Лепсе 79', '', '', 'user', '2017-04-19 23:28:35', 0, '', '', '', 1),
(219, '', ';8;', 0, '', '', '', '', '', '', 'Демеевка', '', '', 'user', '2017-04-19 23:38:54', 0, '', '', '', 1),
(220, '', ';8;', 0, '', '', '', '', '', '', 'Тепличный (Бровары)', '', '', 'user', '2017-04-19 23:39:45', 0, '', '', '', 1),
(221, '', ';8;', 0, '', '', '', '', '', '', 'Бровары', '', '', 'user', '2017-04-19 23:45:08', 0, '', '', '', 1),
(222, '', ';8;', 0, '', '', '', '', '', '', 'Луначарского 5    каб 330', '', '', 'user', '2017-04-19 23:48:16', 0, '', '', '', 1),
(223, '', ';8;', 0, '', '', '', '', '', '', 'Салон багет офис', '', '', 'user', '2017-04-19 23:55:19', 0, '', '', '', 1),
(224, '', ';8;', 0, '', '', '', '', '', '', 'Володя', '', '', 'user', '2017-04-19 23:55:46', 0, '', '', '', 1),
(225, '', ';8;', 0, '', '', '', '', '', '', 'Гмыри 13', '', '', 'user', '2017-04-20 07:44:15', 0, '', '', '', 1),
(226, '', ';8;', 0, '', '', '3653@ukr.net', '', '', '', 'Яросвит Бровары ШФ обувь', 'ТОВ Яросвит', '', 'user', '2017-04-22 08:50:57', 1492840257, '', '', '', 1),
(227, '', ';8;', 0, '', '', '', '', '', '', 'дарн профсп', '', '', 'user', '2017-04-20 07:46:01', 0, '', '', '', 1),
(228, '', ';8;', 0, '', '', '', '', '', '', 'Радунская', '', '', 'user', '2017-04-20 08:12:18', 0, '', '', '', 1),
(229, '', ';8;', 0, '', '', '', '', '', '', 'Воссоединения 19', '', '', 'user', '2017-04-20 09:29:33', 0, '', '', '', 1),
(230, '', ';8;', 0, '', '', '', '', '', '', 'МЦ МК (Моя клиника), БМГ', '', '', 'user', '2017-04-20 09:30:11', 0, '', '', '', 1),
(231, '', ';8;', 0, '', '', '', '', '', '', 'Компаньон (стройка Марка Вовчка 18а)', '', '', 'user', '2017-04-20 09:31:32', 0, '', '', '', 1),
(232, '', ';8;', 0, '', '', '', '', '', '', 'Минолта склад', '', '', 'user', '2017-04-20 09:41:20', 0, '', '', '', 1),
(233, '', ';8;', 0, '', '', '', '', '', '', 'Салон багет Мишуги', '', '', 'user', '2017-04-20 09:41:31', 0, '', '', '', 1),
(234, '', ';8;', 0, '', '', '', '', '', '', 'Електробезпека', '', '', 'user', '2017-04-20 09:42:04', 0, '', '', '', 1),
(235, '', ';8;', 0, '', '', '', '', '', '', 'Консерватория', '', '', 'user', '2017-04-20 15:33:16', 0, '', '', '', 1),
(236, '', ';8;', 0, '', '', '', '', '', '', 'Школа №86', '', 'Круглоуниверситетская 9', 'user', '2017-04-20 16:02:15', 1492693332, '', '', '', 1),
(237, '', ';8;', 0, '', '', '', '', '', '', 'Экосфера 215', 'ТОВ ЕКО-СФЕРА', '8043 3322132', '', '2017-04-22 08:35:20', 1492839320, '', '', '', 1),
(238, '', ';8;', 0, '', '', '', '', '', '', 'Эфкон', '', '', 'user', '2017-04-22 09:44:51', 0, '', '', '', 1),
(239, '', ';8;', 0, '', '', '', '', '', '', 'Великий шовковий шлях', '', '', 'user', '2017-04-22 09:46:12', 0, '', '', '', 1),
(240, '', ';8;', 0, '', '', '', '', '', '', 'УкрСнаб', '', '', 'user', '2017-04-22 09:47:52', 0, '', '', '', 1),
(241, '', ';8;', 0, '', '', '', '', '', '', 'Поликлиника Русановка (неотложка)', '', '', 'user', '2017-04-22 11:23:52', 0, '', '', '', 1),
(242, '', ';8;', 0, '', '', '', '', '', '', 'С-Клауc', '', '', 'user', '2017-04-24 21:28:58', 0, '', '', '', 1),
(243, '', ';8;', 0, '', '', '', '', '', '', 'Профиль-Стаил (склад)', '', '', 'user', '2017-04-24 22:00:10', 0, '', '', '', 1),
(244, '', ';8;', 0, '', '', '', '', '', '', 'Визави Л Т Д', '', '', 'user', '2017-04-25 21:06:49', 0, '', '', '', 1),
(245, '', ';8;', 0, '', '', '', '', '', '', 'Бутовченко', '', '', 'user', '2017-04-25 21:08:11', 0, '', '', '', 1),
(246, '', ';8;', 0, '', '', '', '', '', '', 'Харьковское шессе', '', '', 'user', '2017-04-25 21:14:40', 0, '', '', '', 1),
(247, '', ';8;', 0, '', '', '', '', '', '', 'Салон багет (саксаганского)', '', '', 'user', '2017-04-25 21:15:42', 0, '', '', '', 1),
(248, '', ';8;', 0, '', '', '', '', '', '', 'Бориспольская (Натариус)', '', '', 'user', '2017-04-25 21:16:22', 0, '', '', '', 1),
(249, '', ';8;', 0, '', '', '', '', '', '', 'ЦК Профсоюзы Энергетики', '', '', 'user', '2017-04-26 10:48:07', 0, '', '', '', 1),
(250, '', ';8;', 0, '', '', '', '', '', '', 'Леся 511', '', '', 'user', '2017-04-27 06:32:16', 0, '', '', '', 1),
(251, '', ';8;', 0, '', '', '', '', '', '', 'МКР Сервис', '', '', 'user', '2017-05-26 08:31:49', 1493369276, '', '', '', 1),
(252, '', ';8;', 0, '', '', '', '', '', '', 'Кристар', '', '', 'user', '2017-04-27 11:22:05', 0, '', '', '', 1),
(253, '', ';8;', 0, '', '', '', '', '', '', 'Татьяна Луначарского 3А', '', '', 'user', '2017-04-27 15:07:20', 0, '', '', '', 1),
(254, '', ';8;', 0, '', '', '', '', '', '', 'Бейби Центр', '', '', 'user', '2017-04-28 10:25:28', 0, '', '', '', 1),
(255, '', ';8;', 0, '', '', '', '', '', '', 'Лена красноткацкая ', '', '', 'user', '2017-04-28 17:02:09', 0, '', '', '', 1),
(256, '', ';8;', 0, '', '', '', '', '', '', 'промтранс', '', '', 'user', '2017-04-28 18:02:04', 0, '', '', '', 1),
(257, '', ';8;', 0, '', '', '', '', '', '', '19::514', '', '', 'user', '2017-04-29 09:17:35', 0, '', '', '', 1),
(258, '', ';8;', 0, '', '', '', '', '', '', '19::103', '', '', 'user', '2017-04-29 09:23:33', 0, '', '', '', 1),
(259, '', ';8;', 0, '', '', '', '', '', '', '19:409а', '', '', 'user', '2017-04-29 09:24:22', 0, '', '', '', 1),
(260, '', ';8;', 0, '', '', '', '', '', '', '19:201 (Заза)', '', '', 'user', '2017-04-29 09:24:54', 0, '', '', '', 1),
(261, '', ';8;', 0, '', '', '', '', '', '', '19:310', '', '', 'user', '2017-04-29 09:25:03', 0, '', '', '', 1),
(262, '', ';8;', 0, '', '', '', '', '', '', 'Юля Юбка', '', '', 'user', '2017-04-29 09:27:22', 0, '', '', '', 1),
(263, '', ';8;', 0, '', '', '', '', '', '', '19::310', '', '', 'user', '2017-04-29 09:29:08', 0, '', '', '', 1),
(264, '', ';8;', 0, '', '', '', '', '', '', 'С-Клаус', '', '', 'user', '2017-04-29 09:29:57', 0, '', '', '', 1),
(265, '', ';8;', 0, '', '', '', '', '', '', 'Толик Либидская', '', '', 'user', '2017-04-29 09:38:39', 0, '', '', '', 1),
(266, '', ';8;', 0, '', '', '', '', '', '', 'Вишневе', '', '', 'user', '2017-04-29 09:40:37', 0, '', '', '', 1),
(267, '', ';8;', 0, '', '', '', '', '', '', 'Каховська', '', '', 'user', '2017-04-29 09:41:24', 0, '', '', '', 1),
(268, '', ';8;', 0, '', '', '', '', '', '', 'Вышгород', '', '', 'user', '2017-04-29 09:42:28', 0, '', '', '', 1),
(269, '', ';8;', 0, '', '', '', '', '', '', 'Машинистовская', '', '', 'user', '2017-05-02 21:31:19', 0, '', '', '', 1),
(270, '', ';8;', 0, '', '', '', '', '', '', 'Тилар', '', '', 'user', '2017-05-02 21:31:49', 0, '', '', '', 1),
(271, '', ';8;', 0, '', '', '', '', '', '', 'Крещатик 32А', '', '', 'user', '2017-05-02 21:32:25', 0, '', '', '', 1),
(272, '', ';8;', 0, '', '', '', '', '', '', 'Виктория Академгородок', '', '', 'user', '2017-05-03 15:16:30', 0, '', '', '', 1),
(273, '', ';8;', 0, '', '', '', '', '', '', 'Феофания', '', '', 'user', '2017-05-03 17:18:32', 0, '', '', '', 1),
(274, '', ';8;', 0, '', '', '', '', '', '', 'Престиж Центр', '', '', 'user', '2017-05-03 21:25:39', 0, '', '', '', 1),
(275, '', ';8;', 0, '', '', '', '', '', '', 'Клиника нова', '', '', 'user', '2017-05-04 20:58:09', 0, '', '', '', 1),
(276, '', ';8;', 0, '', '', '', '', '', '', 'Бальзака 185', '', '', 'user', '2017-05-05 11:41:25', 0, '', '', '', 1),
(277, '', ';8;', 0, '', '', '', '', '', '', 'Екосфера 163 (бориспольская)', '', '', 'user', '2017-05-05 12:43:14', 0, '', '', '', 1),
(278, '', ';8;', 0, '', '', '', '', '', '', 'андрей', '', '', 'user', '2017-05-05 16:19:17', 0, '', '', '', 1),
(279, '', ';8;', 0, '', '', '', '', '', '', 'МЦ МК (Моя клиника) Мишуги', '', '', 'user', '2017-05-05 18:05:36', 0, '', '', '', 1),
(280, '', ';8;', 0, '', '', '', '', '', '', 'Свит нерухомости', '', '', 'user', '2017-05-10 15:29:29', 0, '', '', '', 1),
(281, '', ';8;', 0, '', '', '', '', '', '', 'Ловекс-К', '', '', 'user', '2017-05-11 10:37:51', 0, '', '', '', 1),
(282, '', ';8;', 0, '', '', '', '', '', '', 'Щербакова 8', '', '', 'user', '2017-05-12 19:58:36', 0, '', '', '', 1),
(283, '', ';8;', 0, '', '', '', '', '', '', 'кибернетики', '', '', 'user', '2017-05-12 20:24:33', 0, '', '', '', 1),
(284, '', ';8;', 0, '', '', '', '', '', '', 'Кивач', '', '', 'user', '2017-05-16 19:00:55', 0, '', '', '', 1),
(285, '', ';8;', 0, '', '', '', '', '', '', 'Визави ЛТД', '', '', 'user', '2017-05-16 19:05:34', 0, '', '', '', 1),
(286, '', ';8;', 0, '', '', '', '', '', '', 'Мильниченко', '', '', 'user', '2017-05-16 19:09:35', 0, '', '', '', 1),
(287, '', ';8;', 0, '', '', '', '', '', '', 'Дружби народов 28в', '', '', 'user', '2017-05-16 19:11:33', 0, '', '', '', 1),
(288, '', ';8;', 0, '', '', '', '', '', '', 'Горловская', '', '', 'user', '2017-05-16 19:15:23', 0, '', '', '', 1),
(289, '', ';8;', 0, '', '', '', '', '', '', 'ДС Электроник', '', '', 'user', '2017-05-16 19:17:56', 0, '', '', '', 1),
(290, '', ';8;', 0, '', '', '', '', '', '', 'Подол Валы', '', '', 'user', '2017-05-17 06:47:55', 0, '', '', '', 1),
(291, '', ';8;', 0, '', '', '', '', '', '', 'Борщаговская 145', '', '', 'user', '2017-05-17 06:48:21', 0, '', '', '', 1),
(292, '', ';8;', 0, 'Юрій Петрович', 'Черненький', 'spalace@ukr.net', '', '', '', 'ДП Спортивный комплекс Атлет', '', 'Спортивна пл.,1', 'Директор', '2017-05-19 08:34:19', 1495167146, '', '', '', 1),
(293, '', ';8;', 0, '', '', '', '', '', '', '!!Резерв', '', '', 'user', '2017-05-19 07:13:54', 1495167078, '', '', '', 1),
(294, '', ';8;', 0, '', '', '', '', '', '', '!!Резерв  ', '', '', '', '2017-05-19 07:50:59', 1495167248, '', '', '', 1),
(295, '', ';8;', 0, '', '', '', '', '', '', 'Таня ', '', '', 'user', '2017-05-18 17:49:46', 0, '', '', '', 1),
(296, '', ';8;', 0, '', '', '', '', '', '', '!!Резерв', '', '', 'user', '2017-05-19 08:32:56', 1495171976, '', '', '', 1),
(297, '', ';8;', 0, '', '', '', '', '', '', 'ДП \\\\', '', '', 'user', '2017-05-19 08:55:57', 0, '', '', '', 1),
(298, '', ';8;', 0, '', '', '', '', '', '', 'Формат', '', '', 'user', '2017-05-19 18:08:20', 0, '', '', '', 1),
(299, '', ';8;', 0, '', '', '', '', '', '', 'Жукова 163', '', '', 'user', '2017-05-19 18:27:08', 0, '', '', '', 1),
(300, '', ';8;', 0, '', '', '', '', '', '', 'Урловская 13 эт2)))', '', '', 'user', '2017-05-19 18:42:58', 0, '', '', '', 1),
(301, '', ';8;', 0, '', '', '', '', '', '', 'NewtonKids', '', '', 'user', '2017-05-19 19:02:43', 0, '', '', '', 1),
(302, '', ';8;', 0, '', '', '', '', '', '', 'Терминал Бровары', '', '', 'user', '2017-05-20 22:12:13', 0, '', '', '', 1),
(303, '', ';8;', 0, '', '', '', '', '', '', 'альберт', '', '', 'user', '2017-05-24 11:53:22', 0, '', '', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user_tag`
--

CREATE TABLE `user_tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `connect` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `show` int(1) NOT NULL,
  `hit` int(1) NOT NULL,
  `level` int(1) NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL,
  `date` datetime NOT NULL,
  `see` int(11) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_tag`
--

INSERT INTO `user_tag` (`id`, `connect`, `caption`, `seolink`, `desc_short`, `desc_full`, `img`, `show`, `hit`, `level`, `meta_t`, `meta_k`, `meta_d`, `date`, `see`, `pos`) VALUES
(1, ';3;4;9;', 'Администраторы', 'administratory', '', '', '', 1, 0, 1, 'Администраторы', '', '', '2014-12-12 21:12:25', 0, 1418411552),
(2, ';6;7;8;', 'Клиенты', 'klienty', '', '', '', 1, 0, 1, 'Клиенты', '', '', '2014-12-12 21:12:32', 0, 1418411545),
(3, ';1;', 'Администратор', 'administrator', '', '', '', 1, 0, 2, 'Администратор', '', '', '2014-12-12 21:13:17', 0, 1418411597),
(4, ';1;', 'Сервис', 'redaktor', '', '', '', 0, 0, 2, 'Редактор', '', '', '2017-04-05 09:13:15', 0, 1418411604),
(6, ';2;', 'VIP', 'vip', '', '', '', 1, 0, 2, 'VIP', '', '', '2014-12-14 08:30:09', 0, 1418538609),
(7, ';2;', 'Разовые', 'razovye', '', '', '', 1, 0, 2, 'Разовые', '', '', '2014-12-14 08:33:18', 0, 1418538785),
(8, ';2;', 'Клиенты', 'klienty', '', '', '', 0, 0, 2, 'Клиенты', '', '', '2017-03-03 09:33:22', 0, 1488526380),
(9, ';1;', 'Бухгалтерия', 'bukhgalteriya', '', '', '', 0, 0, 2, 'Бухгалтерия', '', '', '2017-04-05 09:13:24', 0, 1491372718);

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `id` int(9) NOT NULL,
  `date_create` varchar(255) NOT NULL,
  `date_prioritet` varchar(255) NOT NULL,
  `date_otgryzka` varchar(255) NOT NULL,
  `date_doc` varchar(255) NOT NULL,
  `date_srochno` varchar(255) NOT NULL,
  `date_pay` varchar(255) NOT NULL,
  `date_zdelano` varchar(255) NOT NULL,
  `date_archiv` varchar(255) NOT NULL,
  `client` varchar(255) NOT NULL,
  `client_id` int(9) NOT NULL,
  `data_client` text NOT NULL,
  `zdelano` enum('Y','N') NOT NULL DEFAULT 'N',
  `content` text NOT NULL,
  `divice` varchar(255) NOT NULL DEFAULT 'Картридж',
  `sn` varchar(255) NOT NULL,
  `neispravnost` text NOT NULL,
  `note` text NOT NULL,
  `viezd` enum('Y','N') NOT NULL DEFAULT 'N',
  `otgryzka` enum('Y','N') NOT NULL DEFAULT 'N',
  `doc` enum('Y','N') NOT NULL DEFAULT 'N',
  `number_bill` varchar(255) NOT NULL,
  `pay` enum('Y','N') NOT NULL DEFAULT 'N',
  `ingener` varchar(50) NOT NULL DEFAULT 'web2net',
  `responsible_ingener` varchar(255) NOT NULL,
  `nal` enum('Y','N') NOT NULL DEFAULT 'N',
  `archiv` enum('Y','N') NOT NULL DEFAULT 'N',
  `prioritet` enum('Y','N') NOT NULL DEFAULT 'N',
  `srochno` enum('Y','N') NOT NULL DEFAULT 'N',
  `trash` enum('Y','N') NOT NULL DEFAULT 'N',
  `date_trash` varchar(255) NOT NULL,
  `month_create` varchar(9) NOT NULL COMMENT '4_month_pagenator'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `works`
--

INSERT INTO `works` (`id`, `date_create`, `date_prioritet`, `date_otgryzka`, `date_doc`, `date_srochno`, `date_pay`, `date_zdelano`, `date_archiv`, `client`, `client_id`, `data_client`, `zdelano`, `content`, `divice`, `sn`, `neispravnost`, `note`, `viezd`, `otgryzka`, `doc`, `number_bill`, `pay`, `ingener`, `responsible_ingener`, `nal`, `archiv`, `prioritet`, `srochno`, `trash`, `date_trash`, `month_create`) VALUES
(1, '2014-04-02', '', '', '2014-04-15', '', '2014-04-24 irina', '2014-04-02', '2014-05-20 alexkiev', 'Румб Плюс', 120, '', 'Y', 'Заправка ', 'Samsung 1661', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(2, '2014-04-02', '', '', '2014-04-15', '', '2014-04-18 irina', '2014-04-02', '2014-05-20 alexkiev', 'Просток', 202, '', 'Y', 'Заправка - 3 шт.', 'Картридж Canon 712', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(3, '2014-04-02', '', '', '2014-04-12', '', '2014-04-18 irina', '2014-04-02', '2014-06-03 alexkiev', 'Эфкон', 238, '', 'Y', 'Застряла бумага', 'МФУ Canon 4018', '', '', '180 грн', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(4, '2014-04-02', '', '2014-04-10', '2014-04-10', '', '2014-04-10', '2014-04-02', '2014-05-20 alexkiev', 'Вип Декор', 80, '', 'Y', 'Заправка - 2 шт', 'Картридж Samsung D104S', '', '', 'Саша озвучил 1 шт.))', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(5, '2014-04-02', '', '2014-04-12', '2014-04-12', '', '2014-04-12', '2014-04-12', '2014-05-20 alexkiev', 'СПЗ-Групп', 79, '', 'Y', 'Заправка - 2 шт.', 'Картридж НР 12А', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(6, '2014-04-02', '', '', '2014-04-12', '', '2014-04-12', '2014-04-02', '2014-05-20 alexkiev', 'Великий шовковий шлях', 239, '', 'Y', 'Заправка Canon 719H - 1шт.<br />\r\nЗаправка Canon 719 - 1шт.<br />\r\nЗаправка НР 36А - 2шт.', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(7, '2014-04-02', '', '', '2014-04-23 irina', '', '2014-04-28 irina', '2014-04-02', '2014-05-20 alexkiev', 'Ловекс', 62, '', 'Y', 'Заправка - 1 шт.', 'Картридж НР 85А', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(8, '2014-04-02', '', '2014-04-18', '2014-04-15', '', '2014-04-18 irina', '2014-04-12', '2014-06-03 alexkiev', 'Орион', 103, '', 'Y', 'Заправка - 2 шт.', 'Картридж НР 85А ', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(9, '2014-04-04', '', '2014-04-04', '', '', '2014-04-04', '2014-04-04', '2014-04-04', 'УкрСнаб', 240, '', 'Y', 'Установка Win 7 Max 64', 'ПК', '', 'Вирусы (не запускались *.exe)', '300 грн.', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(10, '2014-04-04', '', '', '2014-04-15', '', '2014-04-18 irina', '2014-04-04', '2014-06-03 alexkiev', 'Перспектива', 76, '', 'Y', 'Заправка 78А - 1 шт.<br />\r\nЗаправка 728 - 1 шт.', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(11, '2014-04-04', '', '2014-04-18', '2014-04-23 irina', '', '2014-04-24 irina', '2014-04-16', '2014-06-03 alexkiev', 'Центус', 135, '', 'Y', '<!-- Заправка 35 - 1 шт.<br /> -->\r\nЗаправка 05А - 2 шт.<br />\r\nЗаправка 719Н - 2 шт.', 'Картридж', '', '', 'В 05-х глянуть барабаны - 6-я заправка!!', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(12, '2014-04-04', '', '2014-04-18', '', '', '2014-04-18', '2014-04-18', '2014-06-03 alexkiev', 'Днипролаб', 66, '', 'Y', '<p>Заправка 35А - 1 шт.<br />\r\nЗаправка 12A - 1 шт.<br />\r\nЗаправка 53A - 1 шт.</p>', 'Картридж ', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(13, '2014-04-04', '', '2014-06-03 alexkiev', '2014-04-15', '', '2014-04-18 irina', '2014-04-15', '2014-06-03 alexkiev', 'Компаньон', 67, '', 'Y', 'Заправка - 1 шт., Заправка - 1 шт', 'Картридж 719, Картридж 719Н', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(14, '2014-04-04', '', '2014-04-10', '', '', '2014-04-18', '2014-04-04', '2014-06-03 alexkiev', 'Энергия', 94, '', 'Y', 'Заправка 05А - 1 шт.<br />\r\nЗаправка 708 - 1 шт.<br />\r\n', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(15, '2014-04-04', '', '2014-04-08', '', '', '2014-04-08', '2014-04-08', '', 'УкрСнаб', 240, '', 'Y', 'ТО + чистка картриджа', 'МФУ НР M1212nf', 'CNG9D2H1CR', 'Берет пачку листов..<br />\r\nЕсли осветлять копию (при копировании) - бьет \\\"Ошибка сканера 22\\\"', '200 грн', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(16, '2014-04-04', '', '2014-04-10', '', '', '2014-04-18', '2014-04-09', '2014-06-03 alexkiev', 'Энергия', 94, '', 'Y', 'Замена плёнки', 'МФУ LBP3300', 'LQFA111136', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(17, '2014-04-07', '', '2014-04-10', '', '', '2014-04-10', '2014-04-09', '2014-04-10', 'С-Клауc', 242, '', 'Y', 'Заправка ', 'Картридж НР 12А', '', '', '90 грн', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(18, '2014-04-03', '', '2017-03-26 web2net', '2017-03-26 web2net', '2017-03-26 web2net', '2017-03-26 web2net', '2017-03-26 web2net', '', 'СВ-Тревел', 201, 'kiev@swtrawel.az\r\n063-359-91-09 Александр Лисовик (директор)\r\n\r\n050-772-85-83 Светлана (бухгалтер)', 'Y', '<p>Подключил через USB</p>', 'МФУ НР P1606dn', 'VNC4L43434', '<p>Неработает принтер НР P1606dn. Кажись слетела сетевая карта. Настроил через ЮСБ. Расшарить не получилось.. Пишет - устройство не доступно...</p>', '180 грн', 'Y', 'Y', 'Y', '', 'N', 'web2net', '', 'N', 'N', 'N', 'Y', 'Y', '2017-04-16 web2net', '2014-04'),
(19, '2014-04-07', '', '2014-04-12', '2014-04-15', '', '', '2014-04-12', '', 'СВ-Тревел', 201, 'kiev@swtrawel.az\r\n063-359-91-09 Александр Лисовик (директор)\r\n\r\n050-772-85-83 Светлана (бухгалтер)', 'Y', 'Проверка на вирусы, перестройка архитектуры сети', 'Сеть', '', 'Легла вся сеть..', '300 грн', 'Y', 'Y', 'Y', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-04'),
(20, '2014-04-01', '', '2014-05-30 web2net', '', '', '2014-05-30 web2net', '2014-05-30 web2net', '2014-04-08', 'Профиль-Стаил', 123, '', 'Y', '<p>Заклеено</p>', 'Notebook Asus Eee PC 1001PXD', '', '<p>Лопнуло крепление крышки экрана</p>', 'См. заявку 166\r\n', 'N', 'Y', 'N', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(21, '2014-04-08', '', '', '', '', '', '', '', 'Румб Плюс', 120, '', 'N', '', 'МФУ Panasonic Какой не помнит..', '', 'По словам клиента выполняет все функции кроме копии и печати', 'Просил перезвонить, посмотреть', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-04'),
(22, '2014-04-01', '', '2014-04-17', '', '', '2014-04-17', '2014-04-17', '2014-04-17', 'Профиль-Стаил', 123, '', 'Y', '<p>Пропаян разъем питания на материнской плате и прочие танцы с бубном..</p>\r\n<p>Устал, натанцевался))</p>', 'Ноутбук HP Compaq 6735s', 'CNU9106K83', '<p>Траблы с разъёмом питания либо с штекером ЗУ</p>', 'До нас его уже ковыряли, в частности паяли разъем питания на материнской плате. \r\n350 грн', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(23, '2014-04-08', '', '', '2014-04-15', '', '2014-04-24 irina', '2014-04-08', '2014-06-03 alexkiev', 'Профиль-Стаил (склад)', 243, '', 'Y', 'Заправка 2 шт.', 'Картридж 85А', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(24, '2014-04-08', '', '2014-04-18', '', '', '2014-04-18', '2014-04-18', '2014-06-03 alexkiev', 'Днипролаб', 66, '', 'Y', '<p>Заправка Canon 725 - 1 шт<br />\r\nЗаправка НР 35 А -1 шт <br />\r\nЗаправка НР 05 А - 1 шт</p>', 'Картридж', '', '', 'Дарница', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(25, '2014-04-09', '', '2014-04-15', '2014-04-15', '', '2014-04-15', '2014-04-15', '2014-06-03 alexkiev', 'Эдвансис', 68, '', 'Y', 'Заправка - 2 шт. + 1 барабан', 'Картридж НР 78А', '', '', 'предоплата 04.04.2014-820,00', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(26, '2014-04-09', '', '', '', '', '', '', '', 'Ловекс', 62, '', 'N', '', 'Факс Panasonic KX-FT932', '6KCWA024201', 'Не принимает, не отправляет, на себя не копирует', 'На себя копирует)', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-04'),
(27, '2014-04-09', '', '2014-06-03 alexkiev', '2014-04-23 irina', '', '2014-04-28 irina', '2014-04-09', '2014-06-03 alexkiev', 'Ловекс', 62, '', 'Y', 'Заправка  78А 1 шт.<br />\r\nЗаправка  85А 1 шт.', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(28, '2014-04-03', '', '2014-04-16', '2014-04-23 irina', '', '2014-05-19 irina', '2014-04-09', '2014-06-03 alexkiev', 'Инкомантур', 93, '', 'Y', 'Заправка 35А - 1 шт. <br />\r\nЗаправка 12А - 1 шт. <br />\r\nЗаправка 53А - 1 шт. <br />\r\nЗаправка Phazer 3250D(D2) - 1 шт.', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(29, '2014-04-09', '', '2014-04-18', '', '', '2014-04-18', '2014-04-18', '2014-04-18', 'Днипролаб', 66, '', 'Y', '<p>ТО</p>', 'Принтер Samsung ML-2015', '3D66BKDLB00699V', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(30, '2014-04-09', '', '2014-04-10', '', '', '2014-06-03 alexkiev', '2014-04-10', '2014-06-03 alexkiev', 'Днипролаб', 66, '', 'Y', 'Заправка', 'Картридж 53А', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(31, '2014-04-09', '', '2014-04-10', '', '', '2014-06-03 alexkiev', '2014-04-10', '2014-06-03 alexkiev', 'Днипролаб', 66, '', 'Y', 'Заправка', 'Картридж 725', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(32, '2014-04-09', '', '2014-04-10', '', '', '2014-06-03 alexkiev', '2014-04-10', '2014-06-03 alexkiev', 'ХЗ', 204, '', 'Y', 'Заправка', 'Картридж 35А', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(33, '2014-04-09', '', '2014-04-10', '', '', '2014-06-03 alexkiev', '2014-04-10', '2014-06-03 alexkiev', 'ХЗ', 204, '', 'Y', 'Заправка', 'Картридж 85А', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(34, '2014-04-09', '', '2014-04-10', '', '', '2014-06-03 alexkiev', '2014-04-10', '2014-06-03 alexkiev', 'Днипролаб', 66, '', 'Y', 'Заправка', 'Картридж 85А', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(35, '2014-04-09', '', '2014-04-10', '', '', '2014-06-03 alexkiev', '2014-04-10', '2014-06-03 alexkiev', 'Бровары', 0, '', 'Y', 'Заравка', 'Картридж 12А', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(36, '2014-04-09', '', '2014-04-18', '', '', '2014-06-03 alexkiev', '2014-04-10', '2014-06-03 alexkiev', 'ИФА', 0, '', 'Y', 'Заравка', 'Картридж 12А', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(37, '2014-04-10', '', '2014-05-13 web2net', '', '', '2014-04-14', '2014-04-14', '2014-06-03 alexkiev', 'Леся 511', 250, '', 'Y', 'Заправка 53А - 1 шт', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(38, '2014-04-10', '', '2014-04-18', '', '', '2014-06-03 alexkiev', '2014-04-10', '2014-06-03 alexkiev', 'ХЗ', 0, '', 'Y', 'Заправка', 'Картридж 35А', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(39, '2014-04-10', '', '2014-04-18', '', '', '2014-06-03 alexkiev', '2014-04-10', '2014-06-03 alexkiev', 'ХЗ', 0, '', 'Y', 'Заправка', 'Картридж 85А', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(40, '2014-04-01', '', '2014-04-18', '', '', '2014-06-03 alexkiev', '2014-04-10', '2014-06-03 alexkiev', 'Кофе', 0, '', 'Y', 'Восстановление 2 шт.', 'Картридж 78А', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(41, '2014-04-12', '', '', '', '', '', '', '', 'СВ-Тревел', 201, 'kiev@swtrawel.az\r\n063-359-91-09 Александр Лисовик (директор)\r\n\r\n050-772-85-83 Светлана (бухгалтер)\r\n', 'N', '', 'Принтер НР 1606dn', '', 'слетела сетевая карта\r\n', 'Нужно забрать и поставить подмену.', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-04'),
(42, '2014-04-12', '', '', '', '', '', '', '', 'СВ-Тревел', 201, 'kiev@swtrawel.az\r\n063-359-91-09 Александр Лисовик (директор)\r\n\r\n050-772-85-83 Светлана (бухгалтер)', 'N', '', 'Samsung 4100', '', '<p>рычит как зверь</p>', 'Уточнить у Яшара', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-04'),
(45, '2014-04-11', '', '2014-04-18', '', '', '2014-04-14', '2014-04-14', '2014-06-03 alexkiev', 'Леся 511', 1, '', 'Y', 'запр НР 53', 'картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(46, '2014-04-14 alexkiev', '', '2014-04-18 web2net', '', '', '2014-04-18 web2net', '2014-04-18 web2net', '2014-06-03 alexkiev', 'Леся 511', 1, '', 'Y', '<p>заправка НР 53А</p>', 'картридж', '', '', '100 грн', 'N', 'Y', 'N', '', 'Y', 'web2net', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(47, '2014-04-14', '', '2014-04-16', '', '', '', '2014-04-16', '', 'СПЗ Груп', 79, '', 'Y', 'на проверке', 'PC ', '', 'рабочий стол без иконок \r\n:)))', 'HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options и удаляем раздел explorer.exe.\r\nHKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Winlogon и что бы ни стояло в shell меняем этот параметр на explorer.exe\r\nПерезагрузка.. Ну и на вирусы не забыть проверить))', 'N', 'Y', 'N', '', 'N', 'alexkiev', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-04'),
(48, '2014-04-16', '', '2014-06-03 alexkiev', '2014-04-23 irina', '', '2014-04-24 irina', '2014-04-17', '2014-06-03 alexkiev', 'Центус', 0, '', 'Y', '<p>55А&nbsp;</p>\r\n<p>35 - 1 шт. + барабан<br />\r\n719H<br />\r\n80A<br />\r\n05A</p>\r\n<p>&nbsp;</p>', 'картридж', '', '<p>35A - блед печать</p>', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(63, '2014-04-17', '', '2014-04-23 alexkiev', '', '', '2014-06-03 alexkiev', '2014-04-23 alexkiev', '2014-06-03 alexkiev', 'ДнепроЛаб', 0, '', 'Y', '<p>&nbsp;85А - 4 шт</p>\r\n<p>12А - 3 шт</p>\r\n<p>&nbsp;</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(49, '2014-04-16 alixkiev', '', '2014-04-18 web2net', '2014-04-23 irina', '', '2014-04-24 irina', '2014-04-18 web2net', '2014-06-03 alexkiev', 'Великий шовковий шлях', 239, '', 'Y', '<p>запр 719</p>\r\n<p>12А</p>', 'картриджы', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(50, '2014-04-16', '', '2014-04-17', '2014-04-23 irina', '', '2014-04-28 irina', '2014-04-17', '2014-06-03 alexkiev', 'Перспектива', 76, '', 'Y', '<p>80А</p>\r\n<p>85A</p>', 'картриджы', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(51, '2014-04-16', '', '2014-04-17', '2014-04-18 irina', '', '2014-04-24 irina', '2014-04-17', '2014-06-03 alexkiev', 'Гильдия', 51, '', 'Y', '<p>НР278</p>\r\n<p>НР12А</p>\r\n<p>Самс 4300</p>', 'картриджы', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(52, '2014-04-16', '', '2014-04-17', '2014-04-23 irina', '', '2014-05-19 irina', '2014-04-17', '2014-06-03 alexkiev', 'ИнкомАртур', 0, '', 'Y', '<p>53А</p>\r\n<p>тонер Bizhub 164/185</p>', 'картридж, toner', '', '<p>мажет</p>', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(53, '2014-04-16', '', '2014-04-17', '2014-04-23 irina', '', '2014-04-28 irina', '2014-04-16', '2014-06-03 alexkiev', 'Ловекс', 0, '', 'Y', '05А - 2 шт', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(54, '2014-04-16', '', '2014-04-18', '', '', '2014-04-18', '2014-04-18', '2014-04-18', '19::103', 0, '', 'Y', '<p>Samsung D101S</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(55, '2014-04-16', '', '2014-06-03 alexkiev', '2014-06-03 alexkiev', '', '2014-06-03 alexkiev', '2014-06-03 alexkiev', '2014-06-03 alexkiev', 'ДнепроЛаб', 0, '', 'Y', '<p>05А</p>\r\n<p>725</p>', 'картриджи', '', '', 'Дарница', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(58, '2014-04-16', '', '2014-04-17', '', '', '2014-04-17', '2014-04-16', '2014-04-18', 'ДнепроЛаб', 0, '', 'Y', '<p>&nbsp;TO</p>', 'Принтер Canon LBP2900', 'LPKA051049', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(59, '2014-04-16', '', '2014-04-17', '', '', '2014-04-17', '2014-04-17', '2014-04-18', 'ДнепроЛаб', 0, '', 'Y', '<p>725</p>\r\n<p>85А - 2 шт</p>\r\n<p>36А - 2 шт</p>\r\n<p>&nbsp;</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(60, '2014-04-17', '', '2014-04-17', '2014-04-18 irina', '', '2014-04-18 irina', '2014-04-17', '2014-06-03 alexkiev', 'Эдвансис', 0, '', 'Y', '<p>Заправка - 2 шт</p>', 'Картридж НР 78А', '', '', 'предоплата заявка № 25 от 04.04.2014 - 820,00', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(61, '2014-04-17', '', '2014-04-28 alexkiev', '', '', '2014-06-03 alexkiev', '2014-04-17', '2014-06-03 alexkiev', 'ДнепроЛаб', 0, '', 'Y', '<p>&nbsp;ТО</p>', 'Факс Panasonic KX-FL403UA', 'PFGT3004ZA (8HBW016407)', '<p>&nbsp;Не тянет бумагу</p>', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(64, '2014-04-17', '', '2014-06-03 alexkiev', '2014-04-23 irina', '', '2014-05-19 irina', '2014-04-17', '2014-06-03 alexkiev', 'ИнкомАртур', 0, '', 'Y', '<p>&nbsp;35А</p>\r\n<p>53А</p>', '', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(65, '2014-04-18', '', '2014-04-23 alexkiev', '2014-04-23 alexkiev', '', '2014-04-23 alexkiev', '2014-04-23 alexkiev', '2014-06-03 alexkiev', 'Креатив', 0, '', 'Y', '', 'Канцтовары', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(66, '2014-04-18 web2net', '', '', '', '', '', '', '', '19::514', 257, '', 'N', '', '', '', '<p> Тормозит ПК</p>', 'Забрать ПК 22-23.04.2014\r\n300-400 грн.', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-04'),
(68, '2014-04-18 web2net', '', '2014-06-03 alexkiev', '2014-05-13 irina', '', '2014-05-19 irina', '2014-04-18 web2net', '2014-06-03 alexkiev', 'Компаньон', 0, '', 'Y', '<p>&nbsp;&nbsp;Заправка Samsung ML-2010D3&nbsp;</p>', 'Картридж', '', '', 'Пора менять барабан', 'Y', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(69, '2014-04-18 web2net', '', '2014-04-19 alexkiev', '2014-05-13 irina', '', '2014-05-19 irina', '2014-04-19 alexkiev', '2014-06-03 alexkiev', 'УниПолиС ))', 0, '', 'Y', '<p>&nbsp;Заправка 12А&nbsp;</p>\r\n<p><span style=\"font-size: 11px;\">&nbsp;Заправка&nbsp;</span>36A+восстан&nbsp;</p>\r\n<p><span style=\"font-size: 11px;\">Заправка&nbsp;</span>36A</p>\r\n<p>&nbsp;</p>', '', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(77, '2014-04-19 alexkiev', '', '2015-02-20 web2net', '2015-02-20 web2net', '', '2015-02-20 web2net', '2015-02-20 web2net', '2015-02-20 web2net', 'МКР Сервис', 216, '', 'Y', '', 'ЗАЯВКИ', '', '<p> отметка выполнения работ</p>\r\n<p>у <span style=\\\"color: rgb(255, 0, 255);\\\">клиента</span> или <span style=\\\"color: rgb(51, 153, 102);\\\">дома</span></p>', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-04-27 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(78, '2014-04-18 alexkiev', '', '2014-06-03 alexkiev', '2014-05-13 irina', '', '2014-05-19 irina', '2014-04-29 web2net', '2014-06-03 alexkiev', 'УниПолиС ))', 0, '', 'Y', '<p>ТО</p>', 'принтер НР 1020', 'CNC2255229', '<p>&nbsp;трещит</p>\r\n<p>похоже печка</p>', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(80, '2014-04-22 web2net', '', '2014-06-03 alexkiev', '2014-05-13 irina', '', '2014-06-04 irina', '2014-06-03 alexkiev', '2015-02-20 web2net', 'УниПолиС ))', 0, '', 'Y', '<p>&nbsp;12А - 2 шт.</p>', 'картриджи', '', '', 'Японец полосит.. Менял вал заряда и барабан - эффекта ноль(\r\nСчет не выставляла на этих 2 зап.', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(81, '2014-04-18 alexkiev', '', '2014-04-23 alexkiev', '2014-04-23 alexkiev', '', '2014-06-03 alexkiev', '2014-04-23 alexkiev', '2014-06-03 alexkiev', 'укрмашбуд', 0, '', 'Y', '<p>заправка Pe 220</p>', 'картридж Xerox 220', '', '<p>заправка Pe 220</p>', 'цену надо поднять', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(84, '2014-04-23 alexkiev', '', '2014-04-23 alexkiev', '2014-05-13 irina', '', '2014-05-19 irina', '2014-04-23 alexkiev', '2014-06-03 alexkiev', 'Перспектива', 0, '', 'Y', '<p>Заправка &nbsp;НР 278А - 1 шт.<br />\r\n.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(83, '2014-04-23 alexkiev', '', '2014-04-23 alexkiev', '2014-05-13 irina', '', '2014-05-20 irina', '2014-04-23 alexkiev', '2014-06-03 alexkiev', 'Ловекс', 0, '', 'Y', '<p>НР 505А / Canon 719 - 2 шт</p>', 'Картридж   ', '', '', 'заправки которые не включили в счет №112 от 23.04.14', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(85, '2014-04-24 alexkiev', '', '2014-04-30 alexkiev', '2014-04-30 alexkiev', '', '2014-04-30 alexkiev', '2014-04-30 alexkiev', '2014-04-30 alexkiev', 'Профсоюзы', 0, '', 'Y', '', 'Канцтовары', '', '<p>&nbsp;Бумага А4 - 25п</p>\r\n<p><span style=\"font-size: 11px;\">Бумага&nbsp;</span>туалет - 20</p>\r\n<p>полотенца - 20</p>', 'Бумага туалет - 20, полотенца - 20 оплочены 23.04.2014', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(86, '2014-04-25 web2net', '', '2014-04-28 alexkiev', '2014-05-13 irina', '', '2014-05-13 irina', '2014-04-28 alexkiev', '2014-06-03 alexkiev', 'Эдвансис', 0, '', 'Y', '<p>Заправка</p>', '741  cyan', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(87, '2014-04-29 alexkiev', '', '2014-05-05 alexkiev', '2014-05-13 irina', '', '2014-05-18 alexkiev', '2014-05-05 alexkiev', '2014-06-03 alexkiev', 'Постор', 0, '', 'Y', '<p>&nbsp;Полное ТО + Переустановка Win7 32 Home</p>', 'Ноутбук Fujitsu Siemens ESPRIMO Mobile V5535', 'YKDA436647', '<p>&nbsp;Тормозил</p>', ' 360 грн с НДС', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(88, '2014-04-29 alexkiev', '', '2014-04-30 web2net', '', '', '2014-04-30 web2net', '2014-04-30 web2net', '2014-06-03 alexkiev', 'Профиль-Стаил (314)', 0, '', 'Y', '<p>&nbsp;Пропаял.. ХЗ - работает</p>\r\n<p>Залил все нафиг молекуляркой - пусть попробуют поламать..</p>', 'Ноутбук HP Compaq 6735s', 'CNU9106K83', '<p>Траблы с разъёмом питания. Повторно см. заявку № 22 от 2014-04-01</p>', 'Типа гарантийный..', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-04'),
(89, '2014-04-30 alexkiev', '', '2014-05-05 alexkiev', '2014-05-13 irina', '', '2014-05-20 irina', '2014-04-30 web2net', '2014-06-03 alexkiev', 'Ловекс', 0, '', 'Y', '', 'Картридж   ', '', '<p>зап&nbsp;<span style=\"line-height: 1.3; font-size: 11px;\">НР 505А / Canon 719 - 1 шт + Восстановление</span></p>\r\n<p>зап 285A - 1</p>\r\n<p>зап HP 278/Canon 728 &nbsp; -1</p>', 'заправки которые не включили в счет №112 от 23.04.14', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(100, '2014-04-30 web2net', '', '', '2014-05-13 irina', '', '2014-05-19 irina', '2014-05-05 web2net', '', 'Инкомантур', 93, '', 'Y', '<p>Заправка 05А + барабан</p>', 'Картридж', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-04'),
(101, '2014-04-30 web2net', '', '2014-05-05 alexkiev', '2014-05-13 irina', '', '2014-05-19 irina', '2014-04-30 web2net', '2014-06-03 alexkiev', 'Центус', 0, '', 'Y', '<p>Заправка 719</p>\r\n<p>Заправка 35</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-04'),
(99, '2014-04-30 web2net', '', '2014-05-05 alexkiev', '', '2017-03-23 web2net', '2014-05-05 alexkiev', '2014-05-05 alexkiev', '2014-05-05 alexkiev', 'Ловекс К', 0, '', 'Y', '', 'Картридж   ', '', '<p>Samsung D105</p>', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'Y', 'N', '', '2014-04'),
(102, '2014-05-02 web2net', '', '2014-05-05 alexkiev', '2014-05-13 irina', '', '2014-05-19 irina', '2014-05-02 web2net', '2014-05-20 alexkiev', 'Центус', 0, '', 'Y', '<p>Замена термопленки</p>\r\n<p>&nbsp;</p>', 'Принтер HP P2055dn', 'CNCHC86132', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(103, '2014-05-02 web2net', '', '2014-05-20 alexkiev', '', '', '2014-05-20 alexkiev', '2014-05-20 alexkiev', '2014-06-03 alexkiev', 'ДнепроЛаб', 0, '', 'Y', '<p>&nbsp;85А - 3 шт</p>\r\n<p>12А - 1 шт</p>\r\n<p>35А - 1шт + барабан</p>\r\n<p>&nbsp;</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(104, '2014-05-02 web2net', '', '2014-05-02 web2net', '2014-05-02 web2net', '', '2014-05-02 web2net', '2014-05-02 web2net', '2014-05-02 web2net', 'МКР Сервис', 216, '', 'Y', '<p> Почистил</p>', 'Пылесос', '', '<p> Засорился</p>', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-04-27 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(105, '2014-05-02 web2net', '', '2014-05-05 web2net', '2014-06-03 alexkiev', '', '2014-06-03 alexkiev', '2014-05-05 web2net', '2014-06-03 alexkiev', 'Великий шовковий шлях', 0, '19::212а', 'Y', '<p>&nbsp;Разобрал, посмотрел, покрутил, проникся, плюнул, уехал...</p>', 'Принтер Canon MF5940dn', 'HPR27538', '<p>&nbsp;Дырчит аки падла))</p>', 'Впечатление, что что-то где-то разболталось и входит в резонанс...\r\nВсе равно рычит... ', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(106, '2014-05-05 web2net', '', '2014-05-20 alexkiev', '', '', '2014-05-20 alexkiev', '2014-05-20 alexkiev', '2014-05-20 alexkiev', 'ДнепроЛаб', 0, '', 'Y', '', 'картриджи', '', '<p>&nbsp;Забрать в Дарнице</p>', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(107, '2014-05-05 web2net', '', '2014-05-06 web2net', '2014-05-13 irina', '', '2014-05-19 irina', '2014-05-06 web2net', '2014-05-20 alexkiev', 'Румб-плюс', 0, '', 'Y', '<p>Заправка D104S</p>', 'картридж', '', '', 'Оставил в 214', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(108, '2014-05-05 web2net', '', '', '2014-05-13 irina', '', '2014-05-19 irina', '2014-05-06 web2net', '', 'Инкомантур', 93, '', 'Y', '<p>&nbsp;Замена ролика</p>', 'принтер Xerox Phaser 3117', 'L93831333', '<p>&nbsp;Не тянет бумагу</p>', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-05'),
(109, '2014-05-05 web2net', '', '', '2014-05-13 irina', '', '2014-05-19 irina', '2014-05-05 web2net', '', 'Инкомантур', 93, '', 'Y', '<p> Заправка samsung 1610 + барабан</p>', 'картридж', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-05'),
(110, '2014-05-06 web2net', '', '', '', '', '', '2014-06-03 alexkiev', '', 'МКР Сервис', 216, '', 'Y', '<p> <span style=\\\"color: rgb(255, 0, 0);\\\">Замена термопленки</span>, ТО</p>', 'Принтер HP P2035', 'CNC0M71049', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '2017-04-27 web2net', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-05'),
(111, '2014-05-06 web2net', '', '2014-05-20 alexkiev', '2014-05-13 irina', '', '2014-05-19 irina', '2014-05-06 web2net', '2014-05-20 alexkiev', 'Центус', 0, '', 'Y', '<p>Заправка 80Х + барабан</p>\r\n<p>Заправка 55А</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(112, '2014-05-06 web2net', '', '', '', '', '', '2014-05-06 web2net', '', 'МКР Сервис', 216, '', 'Y', '<p>ТО.</p>\r\n<p>Перевернул ролик подачи бумаги, устранил застревание при выходе бумаги в верхнее положение, перебрал картридж (нужно менять барабан)</p>\r\n<p>В общем работает... К компу не подключал..</p>', 'Принтер Samsung ML1250', 'B5AW202228H', '', 'Подарок от Турсума', 'N', 'N', 'N', '', 'N', 'web2net', '2017-04-27 web2net', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-05'),
(113, '2014-05-06 web2net', '', '2014-06-03 alexkiev', '2014-05-13 irina', '', '2014-05-19 irina', '2014-05-07 web2net', '2014-06-03 alexkiev', 'Великий шовковий шлях', 0, '', 'Y', '<p>&nbsp;Заправка D104S</p>\r\n<p>&nbsp;Заправка D104Х</p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(114, '2014-05-06 web2net', '', '', '2014-05-13 irina', '', '2014-05-18 alexkiev', '2014-05-06 web2net', '', 'Матрикс', 125, '', 'Y', '<p> Заправка 51А</p>', 'Картридж', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-05'),
(115, '2014-05-06 web2net', '', '2014-05-22 alexkiev', '2014-06-03 alexkiev', '', '2014-06-03 alexkiev', '2014-05-07 web2net', '2014-06-03 alexkiev', 'Николаенко', 0, '', 'Y', '<p>Выпотрошен</p>', 'Принтер HP P2015dn', 'CNBW8B938Y', '', 'Нерабочий', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(116, '2014-05-06 web2net', '', '2014-05-07 web2net', '2014-05-19 irina', '', '2014-07-08 irina', '2014-05-07 web2net', '2015-02-20 web2net', 'Сити Сайт', 0, 'Где-то далеко..', 'Y', '<p>Вычещен весь тонер, прогнано немеренно листов, засыпан &quot;правильный тонер&quot;..</p>', 'МФУ Xerox WC 3045', '3192010119', '<p>&nbsp;Не пропекает.. Судя по всему - кто-то засыпал какашный тонер..</p>', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(117, '2014-05-07 web2net', '', '2014-05-07 web2net', '2014-05-13 irina', '', '2014-07-08 irina', '2014-05-07 web2net', '2015-02-20 web2net', 'Сити Сайт', 0, '', 'Y', '<p>&nbsp;Заправка Xerox WC 3220 (106R01487)</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(118, '2014-05-07 web2net', '', '2014-05-20 alexkiev', '', '', '2014-05-20 alexkiev', '2014-05-20 alexkiev', '2014-05-20 alexkiev', 'ДнепроЛаб', 0, '', 'Y', '<p>&nbsp;Заправка&nbsp;</p>\r\n<p>35 - 1шт.</p>\r\n<p>36 - 1шт.</p>\r\n<p>725 - 3шт. + 1 барабан</p>\r\n<p>05 - 2шт</p>\r\n<p>85 - 3шт.</p>\r\n<p>12 -2шт.</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(119, '2014-05-13 web2net', '', '2014-05-16 web2net', '2014-05-19 irina', '', '2014-06-03 alexkiev', '2014-05-16 web2net', '2014-06-03 alexkiev', 'Великий шовковий шлях', 0, '', 'Y', '<p>&nbsp;Чистка печки и особенно пленки</p>\r\n<p>Не помогло.. Нужно менять пленку</p>\r\n<p>Замена термопленки</p>', 'МФУ HP LaserJet M1522nf MFP', 'VNHTB9HJFC', '<p>&nbsp;Мажет печка</p>', 'На 13-05-2014 \r\nВсего напечатано страниц 116358\r\nСчет на 560 грн.', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(120, '2014-05-13 web2net', '', '2014-05-13 web2net', '', '', '2014-05-13 web2net', '2014-05-13 web2net', '2014-05-13 web2net', 'УкрСнабТрейд (500)', 0, '', 'Y', '<p>Заправка 85</p>', 'Картридж', '', '', '90 грн', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(121, '2014-05-13 web2net', '', '2014-05-15 web2net', '', '', '2014-05-15 web2net', '2014-05-15 web2net', '2014-05-15 web2net', 'Леся 511', 0, '', 'Y', '<p>заправка НР 53А</p>', 'Картридж', '', '', '100 грн', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(122, '2014-05-13 web2net', '', '2014-05-28 alexkiev', '2014-05-28 alexkiev', '', '2014-05-28 alexkiev', '2014-05-28 alexkiev', '2014-06-03 alexkiev', 'Великий шовковий шлях', 0, '19::212а', 'Y', '<p>Ремонт МФУ (940 грн)</p>', 'МФУ Canon MF5940dn', 'HPR27538', '<p>Ошибка E100-000 (блок лазера)</p>\r\n<p>&nbsp;</p>', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(123, '2014-05-15 web2net', '', '2014-05-16 web2net', '', '', '2014-05-16 web2net', '2014-05-15 web2net', '2014-05-16 web2net', 'Леся 511', 0, '', 'Y', '<p>заправка НР 53А</p>', 'Картридж', '', '', '100 грн', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(124, '2014-05-15 web2net', '', '2014-05-15 web2net', '2014-05-19 irina', '', '2014-05-20 irina', '2014-05-15 web2net', '2014-05-28 alexkiev', 'Эдвансис', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 2 шт.</p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(125, '2014-05-15 web2net', '', '2014-05-15 web2net', '2014-06-04 irina', '', '2014-06-05 irina', '2014-05-15 web2net', '2015-02-20 web2net', 'ВипДекор', 0, '', 'Y', '<p>&nbsp;Заправка 12А</p>', '', '', '', '5 этаж', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(126, '2014-05-15 web2net', '', '2014-05-22 alexkiev', '2014-05-22 alexkiev', '', '2014-05-22 alexkiev', '2014-05-22 alexkiev', '2014-05-22 alexkiev', 'Поликлиника ', 0, '', 'Y', '<p>&nbsp;Замена пленки и резинового вала</p>', 'принтер НР 1320', 'CNHW5DWK42', '', 'ремонт принтера НР   620грн', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(127, '2014-05-15 alexkiev', '', '2014-05-16 web2net', '2014-05-19 irina', '', '2014-06-03 irina', '2014-05-15 alexkiev', '2014-06-03 alexkiev', 'Креатив', 0, '', 'Y', '<p>&nbsp;Заправка 719</p>\r\n<p>восстоновление 719</p>', '', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(128, '2014-05-16 alexkiev', '', '2014-05-18 alexkiev', '2014-05-16 alexkiev', '', '2014-05-22 alexkiev', '2014-05-18 alexkiev', '2014-06-03 alexkiev', 'Долфі', 0, '', 'Y', '<p>&nbsp;Тонер KonicaMinolta B 164/185</p>', '', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(129, '2014-05-16 web2net', '', '2014-05-20 alexkiev', '2014-05-26 irina', '', '2014-06-03 alexkiev', '2014-05-20 alexkiev', '2014-06-03 alexkiev', 'Юниориент', 124, '', 'Y', '<p> Заправка карт 255А - 1шт</p>', 'Картридж', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(130, '2014-05-16 web2net', '', '2014-06-11 alexkiev', '2014-06-20 irina', '', '2014-07-08 irina', '2014-05-30 web2net', '2015-02-20 web2net', 'центус', 0, '', 'Y', '', 'картриджи', '', '<p>&nbsp;719Н - 2 шт.</p>\r\n<p>05А - 1 шт.</p>', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(131, '2014-05-18 alexkiev', '', '2014-05-20 alexkiev', '2014-05-20 irina', '', '2014-05-26 irina', '2014-05-20 alexkiev', '2014-06-03 alexkiev', 'Профсоюзы', 0, '', 'Y', '<p>&nbsp;<span style=\"line-height: 1.3;\">Запр 285А - 2шт &nbsp;</span></p>\r\n<p>&nbsp;запр 36</p>', 'Картриджей', '', '<p>&nbsp;Запр 285</p>\r\n<p>запр 36</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(132, '2014-05-18 alexkiev', '', '2014-05-22 alexkiev', '', '', '2014-05-22 alexkiev', '2014-05-22 alexkiev', '2014-05-22 alexkiev', 'Поликлиника ', 0, '', 'Y', '', 'Картридж 12А', '', '<p>&nbsp;Запр</p>', '', 'N', 'Y', 'N', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(133, '2014-05-18 alexkiev', '', '2014-05-23 alexkiev', '', '', '2014-05-23 alexkiev', '2014-05-23 alexkiev', '2014-06-03 alexkiev', 'МД клиника', 0, '', 'Y', '<p>&nbsp;Замена пленки</p>', 'МФУ HP LaserJet M2727nf', 'CNHTB6BG0J', '<p>&nbsp;Печка</p>', '', 'N', 'Y', 'N', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(134, '2014-05-18 alexkiev', '', '', '', '', '', '', '', 'МКР Сервис', 216, '', 'N', '', 'Заявки', '', '<p> </p>\r\n<p>Сделать пункт не оплачиваетесь </p>', '', 'N', 'N', 'N', '', 'N', 'alexkiev', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-05'),
(136, '2014-05-18 alexkiev', '', '2014-06-03 alexkiev', '2014-06-03 alexkiev', '', '2014-06-03 alexkiev', '2014-06-03 alexkiev', '2014-06-03 alexkiev', 'Профиль-Стаил (314)', 0, '', 'Y', '<p>Есть NEW БП</p>', 'Ноутбук HP Compaq 6735s', 'CNU9106K83', '<p>Траблы &nbsp;Повторно см. заявку № 22 от 2014-04-01</p>', 'Типа гарантийный..', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(137, '2014-05-19 alexkiev', '', '2014-05-20 alexkiev', '2014-05-20 irina', '', '2014-05-22 alexkiev', '2014-05-20 alexkiev', '2014-05-22 alexkiev', 'Экомед', 0, '', 'Y', '<p>заправка карт Canon EP22</p>', 'картридж Canon EP22', '', '<p>&nbsp;Заправка&nbsp;</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(138, '2014-05-20 alexkiev', '', '2014-05-22 alexkiev', '2014-05-26 irina', '', '2014-06-04 irina', '2014-05-22 alexkiev', '2015-02-20 web2net', 'униполис', 0, '', 'Y', '<p>&nbsp;запр 36А - 3</p>\r\n<p>восст 36А - 1</p>\r\n<p>запр 285А - 1</p>\r\n<p>запр 12А - 2</p>', '', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(139, '2014-05-20 alexkiev', '', '', '2014-05-28 web2net', '', '2014-06-03 alexkiev', '2014-05-28 web2net', '', 'Юниориент', 124, '', 'Y', '<p> Заправка карт FX10 - 1шт</p>', 'Картридж', '', '', '', 'N', 'N', 'Y', '', 'Y', 'alexkiev', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-05'),
(140, '2014-05-20 alexkiev', '', '2014-05-21 alexkiev', '', '', '2014-06-03 alexkiev', '2014-05-21 alexkiev', '2014-06-03 alexkiev', 'ДнепроЛаб', 0, '', 'Y', '<p>&nbsp;05</p>\r\n<p>725</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(141, '2014-05-20 alexkiev', '', '2014-06-03 alexkiev', '2014-06-18 irina', '', '2014-06-20 irina', '2014-05-23 alexkiev', '2015-02-20 web2net', 'Ловекс', 0, '', 'Y', '<p>&nbsp;запр HP 285A -1+восстанов</p>\r\n<p>запр HP 505А</p>', '', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(142, '2014-05-21 alexkiev', '', '2014-05-22 alexkiev', '2014-05-26 irina', '', '2014-05-28 alexkiev', '2014-05-22 alexkiev', '2014-05-28 alexkiev', 'DUOS', 0, '', 'Y', '<p>заправка 712 - 2шт</p>', 'Картридж   712', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(143, '2014-05-22 alexkiev', '', '', '', '', '', '', '', 'МКР Сервис', 216, '', 'N', '', '', '', '<p> </p>\r\n<p><span style=\\\"color: rgb(255, 0, 0);\\\">Сделать </span><span style=\\\"color: rgb(255, 0, 0);\\\"><br type=\\\"_moz\\\" />\r\n</span></p>\r\n<p><span style=\\\"color: rgb(255, 0, 0);\\\">закрытие док</span></p>\r\n<p> </p>', '', 'N', 'N', 'N', '', 'N', 'alexkiev', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-05'),
(144, '2014-05-22 web2net', '', '2014-05-23 alexkiev', '2014-05-26 irina', '', '2014-06-03 irina', '2014-05-23 alexkiev', '2014-06-03 alexkiev', 'Поликлиника русан', 0, '', 'Y', '<p>&nbsp;ТО. Замена БП и видеокарты.&nbsp;</p>', 'ПК (Celeron 1.7)', '', '<p>&nbsp;Не запускается</p>', 'Ремонт Сис блок ПК 460', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(146, '2014-05-22 alexkiev', '', '2014-05-22 alexkiev', '2014-05-26 irina', '', '2014-06-12 irina', '2014-05-22 alexkiev', '2015-02-20 web2net', 'укрмашбуд', 0, '', 'Y', '<p>заправка Pe 220</p>', 'картридж Xerox 220', '', '<p>заправка Pe 220</p>', 'цену надо поднять', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(149, '2014-05-28 alexkiev', '', '', '', '', '', '', '', 'Креатив', 115, '', 'N', '', 'Minolta 1680', '', '<p> Запр карт <span style=\\\"color: rgb(255, 255, 0);\\\">Y</span></p>\r\n<p>                 <span style=\\\"color: rgb(255, 0, 0);\\\">M</span></p>', '', 'Y', 'N', 'N', '', 'N', 'alexkiev', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-05'),
(150, '2014-05-28 alexkiev', '', '2014-05-28 alexkiev', '2014-06-20 irina', '', '2014-07-08 irina', '2014-05-28 alexkiev', '2015-02-20 web2net', 'Центус', 0, '', 'Y', '<p>&nbsp;заправка 719/05</p>', '', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(151, '2014-05-28 alexkiev', '', '2014-05-28 alexkiev', '2014-06-04 irina', '', '2014-06-12 irina', '2014-05-28 alexkiev', '2015-02-20 web2net', 'Экомед', 0, '', 'Y', '<p>заправка карт HP C4092A</p>', 'картридж C4092A/EP22', '', '<p>&nbsp;Заправка&nbsp;</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(152, '2014-05-28 alexkiev', '', '2014-05-28 alexkiev', '2014-06-04 irina', '', '2014-06-05 irina', '2014-05-28 alexkiev', '2015-02-20 web2net', 'Айсек', 0, '', 'Y', '<p>&nbsp;Запр hp 285a -3шт</p>\r\n<p>восст 285-1шт</p>', '', '', '', 'Цена', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(153, '2014-05-28 alexkiev', '', '2014-05-28 web2net', '', '', '2014-05-28 web2net', '2014-05-28 web2net', '2014-06-03 alexkiev', 'оф 409', 0, '', 'Y', '<p>&nbsp;заправка</p>', 'Canon 3010(карт 725)', '', '', '100 грн', 'N', 'Y', 'N', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(154, '2014-05-28 alexkiev', '', '2014-05-28 web2net', '', '', '2014-05-28 web2net', '2014-05-28 web2net', '2014-06-02 alexkiev', 'Александр СПЗ', 0, '', 'Y', '', 'NEW бук', '', '', '5920 грн.', 'N', 'Y', 'N', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(155, '2014-05-28 alexkiev', '', '2014-06-03 web2net', '2014-06-03 irina', '', '2014-06-05 irina', '2014-05-28 web2net', '2015-02-20 web2net', 'Гильдия', 51, '', 'Y', '', 'картриджи', '', '<p> 05X-2</p>\r\n<p>278 - восстановление</p>\r\n<p> </p>', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(156, '2014-05-28 alexkiev', '', '', '2014-06-03 irina', '', '2014-07-08 irina', '2014-05-28 web2net', '', 'Перспектива', 76, '', 'Y', '', 'картриджи', '', '<p> запр 278-1</p>', '', 'N', 'N', 'Y', '', 'Y', 'alexkiev', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-05'),
(157, '2014-05-28 alexkiev', '', '', '', '', '', '', '', 'СитиСайт', 111, '', 'N', '', 'картридж Xerox', '', '<p> заправка</p>', '', 'N', 'N', 'N', '', 'N', 'alexkiev', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-05'),
(158, '2014-05-28 web2net', '', '2014-05-29 web2net', '2014-06-04 irina', '', '2014-06-05 irina', '2014-05-29 web2net', '2014-06-10 web2net', 'ВипДекор', 0, '', 'Y', '<p>&nbsp;Заправка Samsung D104S</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(159, '2014-05-28 web2net', '', '2017-05-12 alex', '', '', '2017-05-12 alex', '2014-06-03 alexkiev', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p>35 <span style=\\\"color: rgb(255, 0, 0);\\\">восстановление </span>- 1 шт</p>\r\n<p>36 - 1 шт.</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-05'),
(160, '2014-05-28 web2net', '', '2014-05-30 web2net', '', '', '2014-05-30 web2net', '2014-05-30 web2net', '2014-06-02 alexkiev', 'Катя СПЗ', 0, '', 'Y', '<p>&nbsp;ТО, переустановка ОС (Win7 32)</p>', 'ПК', '', '', '250 грн. + ключ на DrWeb', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(161, '2014-05-28 web2net', '', '2014-05-29 alexkiev', '', '', '2014-05-29 alexkiev', '2014-05-29 web2net', '2014-06-02 alexkiev', 'Галина', 0, '', 'Y', '<p>&nbsp;ТО, переустановка ОС (Win 7 64)</p>', 'ПК (Neos)', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(162, '2014-05-28 web2net', '', '', '', '', '', '', '', 'МКР Сервис', 216, '', 'N', '', 'Закончились 05-тые барабаны', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '2017-04-27 web2net', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-05'),
(163, '2014-05-29 alexkiev', '', '2014-05-30 web2net', '2014-06-04 irina', '', '2014-07-08 irina', '2014-05-30 web2net', '2015-02-20 web2net', 'Эдвансис ', 0, '', 'Y', '<p>&nbsp;заправка 278 - 3 шт.</p>', 'картриджи', '', '<p>&nbsp;Зайти 317</p>\r\n<p>&nbsp;</p>', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(164, '2014-05-29 web2net', '', '2014-05-29 alexkiev', '2014-06-04 irina', '', '2014-06-12 irina', '2014-05-29 alexkiev', '2015-02-20 web2net', 'Планета-Сварка', 0, '095-272-17-04 Дмитрий', 'Y', '<p>&nbsp;</p>\r\n<p>&nbsp;Заправка 285 - 2 шт.</p>\r\n<p>Зап 05a -1</p>\r\n<p><span style=\"color: rgb(255, 153, 0);\">Цена!!!!!</span></p>', 'картриджи', '', '', 'planetasvarka@gmail.com\r\n\r\n', 'Y', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(165, '2014-05-29 web2net', '', '2014-05-30 web2net', '', '', '2014-05-30 web2net', '2014-05-30 web2net', '2014-06-02 alexkiev', 'Катя СПЗ', 0, '', 'Y', '<p>&nbsp;ТО, установка ОС Win 7 64 (Home)</p>', 'Ноутбук Asus K51AC', '', '', '250 грн + DrWeb', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(166, '2014-05-30 web2net', '', '2014-05-30 web2net', '', '', '2014-05-30 web2net', '2014-05-30 web2net', '2014-06-03 alexkiev', 'Профиль-Стаил (314)', 0, '', 'Y', '<p><strike>Заклеено</strike></p>\r\n<p>Замена</p>', 'Notebook Asus Eee PC 1001PXD', '', '<p>Лопнуло крепление крышки экрана</p>\r\n<p>&nbsp;</p>', '400 грн - 100 грн (закупка)', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-05'),
(167, '2014-05-30 web2net', '', '2014-06-25 web2net', '2014-06-25 web2net', '', '2014-06-25 web2net', '2014-06-25 web2net', '2015-02-20 web2net', '19::111', 0, '', 'Y', '<p>Заправка картриджа brother DR-2275 &nbsp;</p>\r\n<p><a href=\"http://itshnik.com.ua/articles/koren/kak_zapravit_brother_tn2235_tn2275\">http://itshnik.com.ua/articles/koren/kak_zapravit_brother_tn2235_tn2275</a></p>', 'Принтер Brother HL-2132R', '', '<p>&nbsp;Нет тонера</p>', '150 грн\r\nЗа ними должок 150 грн (заправка Panasonic, январь 2014) не оплачен', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-05'),
(168, '2014-06-03 alexkiev', '', '2014-06-03 alexkiev', '2014-06-12 irina', '', '2014-06-12 irina', '2014-06-03 alexkiev', '2015-02-20 web2net', 'Компаньон', 0, '', 'Y', '', '3010', '', '<p>&nbsp;<u><span style=\"color: rgb(51, 153, 102);\">NEW картридж &nbsp;HP 285A</span></u></p>', 'СРОЧНО', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-06'),
(169, '2014-06-03 alexkiev', '', '2014-06-11 alexkiev', '2014-06-18 irina', '', '2014-06-20 irina', '2014-06-11 alexkiev', '2015-02-20 web2net', 'Ловекс', 0, '', 'Y', '<p>&nbsp;Заправка 05 - 2 шт</p>\r\n<p>&nbsp;</p>', 'картриджы', '', '<p>&nbsp;запр 05-2</p>', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-06'),
(170, '2014-06-04 web2net', '', '', '2014-06-18 irina', '', '2014-07-08 irina', '2014-06-10 web2net', '', 'Креатив', 115, '', 'Y', '<p> Заправка 719</p>\r\n<p>FX10</p>', 'картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-06'),
(171, '2014-06-04 web2net', '', '', '2014-06-05 irina', '', '2014-06-20 irina', '2014-06-04 web2net', '', 'УкрДах', 89, '', 'Y', '<p> Заправка Phaser 3140 - 1 шт.</p>\r\n<p>Заправка 85 - 1шт.</p>\r\n<p>Заправка 85 -1 шт. + барабан</p>', 'картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-06'),
(172, '2014-06-04 web2net', '', '2014-06-05 web2net', '', '', '2014-06-05 web2net', '2014-06-05 web2net', '2014-06-10 web2net', 'Леся 511', 0, '', 'Y', '<p>&nbsp;Заправка Canon 703 - 2 шт.</p>\r\n<p>Заправка 53 - 1шт + барабан</p>', 'картриджи', '', '', '100 + 100 + 100 + 180 = 500 грн (Мы должны 20 грн)\r\n', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-06'),
(173, '2014-06-05 alexkiev', '', '2014-06-05 alexkiev', '2014-11-24 irina', '', '2014-11-24 irina', '2014-06-05 alexkiev', '2015-02-20 web2net', 'Постор', 0, '', 'Y', '<p>&nbsp;Бумага А4 - 2 пач</p>\r\n<p>файлы 1 пачка</p>\r\n<p>скоч 3шт</p>\r\n<p>скоч духстор&nbsp;</p>', '', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-06'),
(174, '2014-06-10 web2net', '', '2017-05-12 alex', '', '', '2017-05-12 alex', '2014-06-10 web2net', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p> Заправка 53А</p>\r\n<p>Заправка 05 - 1 шт</p>\r\n<p>Заправка 85 - 2 шт.</p>', 'Картридж', '', '', 'Шур, глянь на барабан 53  - меня терзают смутные сомненья))', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-06'),
(175, '2014-06-10 web2net', '', '', '2014-06-18 irina', '', '2014-06-18 irina', '2014-06-10 web2net', '', 'Перспектива', 76, '', 'Y', '<p> Заправка 728 - 1шт</p>\r\n<p>Заправка 85 - 1шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-06'),
(177, '2014-06-10 web2net', '', '2014-06-10 web2net', '', '', '2014-06-10 web2net', '2014-06-10 web2net', '2014-06-10 web2net', 'Леся 19::511', 0, '', 'Y', '<p>&nbsp;Заправка 703</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-06');
INSERT INTO `works` (`id`, `date_create`, `date_prioritet`, `date_otgryzka`, `date_doc`, `date_srochno`, `date_pay`, `date_zdelano`, `date_archiv`, `client`, `client_id`, `data_client`, `zdelano`, `content`, `divice`, `sn`, `neispravnost`, `note`, `viezd`, `otgryzka`, `doc`, `number_bill`, `pay`, `ingener`, `responsible_ingener`, `nal`, `archiv`, `prioritet`, `srochno`, `trash`, `date_trash`, `month_create`) VALUES
(178, '2014-06-11 alexkiev', '', '2014-06-11 alexkiev', '2014-06-18 irina', '', '2014-06-20 irina', '2014-06-11 alexkiev', '2014-10-13 web2net', 'Ловекс', 0, '', 'Y', '<p>&nbsp;Заправка 285 - 1 шт</p>\r\n<p>&nbsp;</p>', 'картриджы', '', '<p>&nbsp;запр 285</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-06'),
(179, '2014-06-11 alexkiev', '', '2014-06-11 alexkiev', '', '', '', '2014-06-11 alexkiev', '', 'Ловекс', 62, '', 'Y', '<p> <span style=\\\"line-height: 14.300000190734863px;\\\">Заправка Samsung D105S - 1 in</span></p>', '', '', '', '', 'N', 'Y', 'N', '', 'N', 'alexkiev', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-06'),
(180, '2014-06-11 alexkiev', '', '2014-06-11 alexkiev', '2014-06-18 irina', '', '2014-06-18 irina', '2014-06-11 alexkiev', '2014-10-13 web2net', 'Просток', 0, '', 'Y', '<p>&nbsp;заправка картр НР 131 &nbsp; все четыри цвета</p>', 'картриджи', '', '<p>&nbsp;заправка</p>', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-06'),
(181, '2014-06-11 alexkiev', '', '2014-06-11 alexkiev', '2014-06-18 irina', '', '2014-07-08 irina', '2014-06-11 alexkiev', '2014-10-13 web2net', 'Поликлиника Русан', 0, '', 'Y', '<p>&nbsp;запр &nbsp;12А - 3</p>\r\n<p>восст 12А -1</p>\r\n<p>запр ЕР 22 - 1</p>', 'картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-06'),
(183, '2014-06-11 alexkiev', '', '2014-06-11 alexkiev', '2014-06-20 irina', '', '2014-07-08 irina', '2014-06-11 alexkiev', '2014-10-13 web2net', 'Инкомартур', 0, '', 'Y', '<p>&nbsp;Тонер B164-2</p>\r\n<p>&nbsp;</p>', '', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-06'),
(182, '2014-06-11 alexkiev', '', '2017-02-15 ssergey', '2017-02-15 ssergey', '', '2017-02-15 ssergey', '2017-02-15 ssergey', '2017-03-08 alexkiev', 'Энер', 0, '', 'Y', '<p>&nbsp;Заправка 708 - 1шт</p>\r\n<p>восст</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-06'),
(184, '2014-06-11 alexkiev', '', '2015-02-20 web2net', '2015-02-20 web2net', '', '2015-02-20 web2net', '2015-02-20 web2net', '2015-02-20 web2net', 'Инкомарт ', 0, '', 'Y', '<p>&nbsp;Запр 12а</p>\r\n<p>запр 05-2</p>\r\n<p>запр 53</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Картр', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-06'),
(185, '2014-06-11 alexkiev', '', '2014-06-11 alexkiev', '2014-06-20 irina', '', '2014-07-08 irina', '2014-06-11 alexkiev', '2014-10-13 web2net', 'Центус', 0, '', 'Y', '<p>&nbsp;Тонр B164-1</p>', 'B 164', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-06'),
(186, '2014-06-11 alexkiev', '', '2014-06-17 alexkiev', '2014-06-20 irina', '', '2014-07-08 irina', '2014-06-17 alexkiev', '2014-10-13 web2net', 'Центус', 0, '', 'Y', '<p>&nbsp;Карт 80А</p>\r\n<p>КаРт 05А</p>', 'Карт', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-06'),
(187, '2014-07-23 web2net', '', '2014-07-24 web2net', '', '', '2014-07-24 web2net', '2014-07-24 web2net', '', 'Эдвансис', 68, '', 'Y', '<p> Заправка 728 - 2 шт</p>', 'Картриджи', '', '', 'Проплатили..\r\n', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2014-07'),
(188, '2014-07-23 web2net', '', '2014-07-23 web2net', '', '', '', '2014-07-23 web2net', '', 'СПЗ-Групп', 79, '', 'Y', '<p> Заправка 12 - 2шт.</p>\r\n<p>Заправка 1100 - 1 шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-07'),
(189, '2014-07-24 web2net', '', '2014-07-24 web2net', '', '', '2014-07-24 web2net', '2014-07-24 web2net', '2014-10-13 web2net', 'УкрСнаб', 0, '19::409', 'Y', '<p>&nbsp;Заправка 725 - 1 шт.</p>', 'Картридж', '', '', '110 грн', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-07'),
(190, '2014-07-24 web2net', '', '2014-07-24 web2net', '', '', '', '2014-07-24 web2net', '', 'Профиль-Стаил', 123, '', 'Y', '<p> Заправка 85 - 1 шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-07'),
(191, '2014-07-24 web2net', '', '2014-07-24 web2net', '', '', '', '2014-07-24 web2net', '', '19::103', 258, '', 'Y', '<p> Заправка 12 - 1шт.</p>\r\n<p>Заправка Samsung - 1шт.</p>', 'Картриджи', '', '', '240 грн', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-07'),
(192, '2014-07-24 web2net', '', '', '', '', '', '2014-07-24 web2net', '', 'Румб Плюс', 120, '', 'Y', '<p>Заправка D104S</p>', 'картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-07'),
(193, '2014-07-29 web2net', '', '2014-07-29 web2net', '2014-11-24 irina', '', '', '2014-07-29 web2net', '', 'Гильдия', 51, '', 'Y', '<p> Заправка 12а- 1 шт</p>\r\n<p>Заправка 85 - 1 шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-07'),
(194, '2014-07-29 web2net', '', '', '2014-11-24 irina', '', '2014-11-24 irina', '2014-07-29 web2net', '', 'Ловекс', 62, '', 'Y', '<p> Заправка 85 - 1 шт.</p>\r\n<p>Заправка samsung (хз какой) - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-07'),
(195, '2014-09-25 web2net', '', '2014-09-25 web2net', '2014-11-24 irina', '', '2014-11-24 irina', '2014-09-25 web2net', '2015-02-20 web2net', 'Эдвансис', 0, '19:317', 'Y', '<p>&nbsp;Заправка 85 - 2 шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-09'),
(196, '2014-09-25 web2net', '', '2014-10-01 web2net', '', '', '2014-10-01 web2net', '2014-10-01 web2net', '2014-10-13 web2net', '19:409а', 0, '', 'Y', '<p>&nbsp;Продано две пачки маэстро 2 х 55 = 110</p>', 'Бумага', '', '', '110 грн', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-09'),
(197, '2014-09-25 web2net', '', '2014-09-25 web2net', '2014-11-24 irina', '', '2014-11-24 irina', '2014-09-25 web2net', '2015-02-20 web2net', 'Вип-декор', 0, '5 этаж', 'Y', '<p>&nbsp;Заправка 85 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-09'),
(198, '2014-10-01 web2net', '', '2014-10-01 web2net', '2014-11-24 irina', '', '2014-11-24 irina', '2014-10-01 web2net', '2015-02-20 web2net', 'ТОВ \"ШАБАШ\"', 0, '', 'Y', '<p>&nbsp;Установка памяти DDR3 8Гб</p>\r\n<p>Цену уточнить у Саши.. К цене добавить 50 грн. (долг)</p>', 'ОЗУ DDR3 8Гб', '', '', 'Для Иры.. Если доки будешь отправлять по почте, то получатель ООО \"С Клаус\"', 'Y', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-10'),
(199, '2014-10-01 web2net', '', '', '', '', '', '', '', 'ХЗ', 204, '', 'N', '<p> Переустановка Win 7 64 Home Base</p>\r\n<p><img src=\\\"/userfiles/image/Zayavki/2014-10-01%2015_17_30.jpg\\\" width=\\\"100\\\" height=\\\"75\\\" alt=\\\"\\\" /></p>', 'Ноутбук PocardBell New91 (EasyNote_TM85_JN_105RU)', 'LXBL30101502542B7C1601', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-10'),
(200, '2014-10-01 web2net', '', '2014-10-01 web2net', '2014-11-24 irina', '', '2014-11-24 irina', '2014-10-01 web2net', '2015-02-20 web2net', 'ПосСтор', 0, '', 'Y', '<p>&nbsp;Продано 2 шт</p>', 'Точилки', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-10'),
(201, '2014-10-02 web2net', '', '2014-10-02 web2net', '', '', '', '2014-10-02 web2net', '', '19:409а', 259, '', 'Y', '<p> Заправка 725</p>', 'Картридж', '', '', '110 грн', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-10'),
(202, '2014-10-13 web2net', '', '2014-10-13 web2net', '2014-11-24 irina', '', '2014-11-24 irina', '2014-10-13 web2net', '2015-02-20 web2net', 'УкрДах', 0, '', 'Y', '<p>&nbsp;Заправка 87(забыл какие) - 2 шт</p>\r\n<p>Замена барабана - 1шт&nbsp;</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-10'),
(203, '2014-10-13 web2net', '', '2014-10-13 web2net', '2014-11-24 irina', '', '2014-11-24 irina', '2014-10-13 web2net', '2015-02-20 web2net', 'Эдвансис', 0, '19::415', 'Y', '<p>&nbsp;Заправка 78 - 1шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-10'),
(204, '2014-10-13 web2net', '', '', '', '', '', '', '', 'МКР Сервис', 216, '', 'N', '<p> Закончились барабаны 1005</p>', 'Закончились барабаны 1005', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '2017-04-27 web2net', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-10'),
(205, '2014-10-15 web2net', '', '2014-10-16 web2net', '2014-11-24 irina', '', '2014-11-24 irina', '2014-10-16 web2net', '2015-02-20 web2net', 'Вип-декор', 0, '5 этаж', 'Y', '<p>Заправка 78 - шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-10'),
(206, '2014-10-15 web2net', '', '', '2014-12-11 irina', '', '2014-12-11 irina', '', '', 'СПЗ-Групп', 79, '', 'N', '<p> Заправка - 78 - 2 шт Сделано</p>\r\n<p>становка DrWeb </p>\r\n<p>АТС</p>\r\n<p>Заправка CB540A - сделано</p>\r\n<p> </p>', 'Всяко', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-10'),
(207, '2014-10-15 web2net', '', '2014-11-11 web2net', '2014-11-24 irina', '', '2014-12-11 irina', '2014-11-11 web2net', '2015-02-20 web2net', 'Перспектива', 0, '', 'Y', '<p>&nbsp;Заправка 85 - 1 шт</p>\r\n<p>80 - 1 шт.</p>\r\n<p>05 - 1 шт.</p>\r\n<p>78 - заправка + вал заряда&nbsp;</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-10'),
(208, '2014-10-16 web2net', '', '2017-05-12 alex', '', '', '2017-05-12 alex', '2014-10-16 web2net', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p>Заправка:</p>\r\n<p>36 - 1 шт</p>\r\n<p>85 - 4 шт</p>\r\n<p>35 - 1 шт</p>\r\n<p>12 - 2 шт</p>\r\n<p>703 - 1 шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-10'),
(209, '2014-10-21 web2net', '', '', '', '', '', '2014-12-17 web2net', '', '19:201 (Заза)', 260, '', 'Y', '<ol>\r\n    <li> Настройка сети</li>\r\n    <li>Настройка ПК - 3 шт</li>\r\n    <li>Разбивка HDD - 3 шт</li>\r\n    <li>Подключение и настройка принтера</li>\r\n    <li>Удлинитель 220 (Maxtro 6 роз. 3м)</li>\r\n    <li>Кабель (AM/BM) 1.8 м - 2 шт</li>\r\n    <li>Кабель 220</li>\r\n    <li>Пачкорд  ~ 8 м - 2шт</li>\r\n    <li>Настройка ПК (дрова, проги, сеть) - 1 шт</li>\r\n    <li>Кабель удлинитель USB 1 м - 1 шт</li>\r\n    <li><span style=\\\"color: rgb(255, 0, 0);\\\">Повесить доску - несделано</span></li>\r\n    <li>Папки EconoMix (Clip File) Art.no 31201 - 2шт.</li>\r\n    <li>Телефонный провод - 8 м.</li>\r\n</ol>', 'Всяко', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-10'),
(210, '2014-10-21 web2net', '', '2014-10-21 web2net', '', '', '', '2014-10-21 web2net', '', '19:310', 261, '', 'Y', '<p> 78 - 1 шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-10'),
(211, '2014-10-21 web2net', '', '2017-05-12 alex', '', '', '2017-05-12 alex', '2017-05-12 alex', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p> 85 - 2 шт</p>\r\n<p>12 - 1шт</p>\r\n<p>53 - 1шт</p>\r\n<p>35 - 1шт (сломана крышка)</p>\r\n<p>725 - 1 шт (барабан???)</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-10'),
(212, '2014-11-04 web2net', '', '2014-11-04 web2net', '', '', '', '2014-11-04 web2net', '', 'Инкомантур', 93, '', 'Y', '<p> Заправка 35 - 1 шт</p>\r\n<p>53А - 1 шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-11'),
(213, '2014-11-06 web2net', '', '', '', '', '', '2014-11-06 web2net', '', 'ХЗ', 204, '', 'Y', '<p>Погоняли под ХР - все в порядке</p>', 'Сканер HP scanjet 2400', 'CN713SR0Z2', '<p> Глючит под Win 7</p>', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-11'),
(214, '2014-11-06 web2net', '', '', '', '', '', '2014-11-06 web2net', '', 'ХЗ', 204, '', 'Y', '<p> Замена аккумулятора???</p>', 'UPS Gresso UPS-650VA', '1001300020', '', 'Неисправность не знаю...', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-11'),
(215, '2014-11-06 web2net', '', '2014-11-10 web2net', '2014-11-24 irina', '', '2014-11-24 irina', '2014-11-06 web2net', '2015-02-20 web2net', 'Vip Decor', 0, '', 'Y', '<p>&nbsp;Заправка D104S - 1шт&nbsp;</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-11'),
(216, '2014-11-06 web2net', '', '', '', '', '', '', '', 'МКР Сервис', 216, '', 'N', '<p> Закончилась вонючка</p>', 'Закончилась вонючка', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '2017-04-27 web2net', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-11'),
(217, '2014-11-06 web2net', '', '2014-11-10 web2net', '', '', '', '2014-11-06 web2net', '', '19:310', 261, '', 'Y', '<p> Заправка 728 - 1шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-11'),
(218, '2014-11-06 web2net', '', '2014-11-11 web2net', '2014-11-24 irina', '', '2014-12-11 irina', '2014-11-11 web2net', '2015-02-20 web2net', 'Эдвансис', 0, '19::317', 'Y', '<p>&nbsp;Заправка 78 - 5 шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-11'),
(219, '2014-11-06 web2net', '', '2014-11-06 web2net', '', '', '2014-11-06 web2net', '2014-11-06 web2net', '2015-02-20 web2net', 'Цифра Друк', 0, '', 'Y', '<p>&nbsp;Заправка 85 - 1 шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-11'),
(220, '2014-11-10 web2net', '', '2014-11-10 web2net', '2014-11-24 irina', '', '2014-12-11 irina', '2014-11-10 web2net', '2015-02-20 web2net', 'УкрДах', 0, '', 'Y', '<p>&nbsp;Заправка 85 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-11'),
(221, '2014-11-11 web2net', '', '2014-11-11 web2net', '', '', '', '2014-11-11 web2net', '', '19::514', 257, '', 'Y', '<p> Заправка Brother DR-2275</p>', 'Картридж', '', '', '125 грн', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-11'),
(222, '2014-11-11 web2net', '', '2014-11-11 web2net', '', '', '', '2014-11-11 web2net', '', 'СПЗ-Групп', 79, '', 'Y', '<p>Переустановка ОС (Win XP Prof SP3)</p>', 'Notebook HP compaq nx9020', 'CNF50712FC', '', 'Озвучил 350 грн', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-11'),
(223, '2014-11-11 web2net', '', '2014-11-17 web2net', '2014-11-14 irina', '', '2014-11-24 irina', '2014-11-11 web2net', '2015-02-20 web2net', 'ООО ПроектСервис', 0, 'office.prsd@gmail.com\r\n063 888 11 98\r\n066 380 21 91\r\nАлексей', 'Y', '<p>&nbsp;Чистка ролика захвата бумаги</p>', 'Принтер Epson Stylus Office T1100', 'LP2E008855', '<p>&nbsp;Незахватывает бумагу</p>', 'Сумму не озвучивал', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-11'),
(224, '2014-11-11 web2net', '', '', '', '', '', '2014-11-11 web2net', '', 'ХЗ', 204, '', 'Y', '<p> Удален клочек бумаги из печки</p>', 'Принтер Xerox Phaser 3010', '3177990921', '<p> Не выходит на готовность</p>', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-11'),
(225, '2014-11-14 web2net', '', '2014-11-24 web2net', '2014-11-24 irina', '', '2014-12-11 irina', '2014-11-14 web2net', '2015-02-20 web2net', 'Румб Плюс', 0, '', 'Y', '<p>&nbsp;Заправка D104S</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-11'),
(226, '2014-11-14 web2net', '', '', '2014-12-11 irina', '', '2015-02-09 irina', '', '', '19:201 (Заза)', 260, '', 'N', '', 'Покупки', '', '<p> НАДО</p>\r\n<p>1. Папки на резинке (А4) - 15 шт.</p>\r\n<p>2. Бумага А3 - 2 пачки</p>', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-11'),
(227, '2014-11-17 web2net', '', '2014-11-17 web2net', '2015-01-20 irina', '', '2015-01-20 irina', '2014-11-17 web2net', '2015-02-20 web2net', 'Гилдия', 0, '', 'Y', '<p>&nbsp;Запрвка 85 - 1 шт</p>\r\n<p>12 - 1 шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-11'),
(228, '2014-11-21 web2net', '', '2014-11-21 web2net', '', '', '', '2014-11-21 web2net', '', 'Гильдия', 51, '', 'Y', '<p>Обнуление СНПЧ</p>', 'Принтер Stylus Photo P50', '', '', '', 'Y', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-11'),
(229, '2014-11-21 web2net', '', '2014-11-21 web2net', '', '', '', '2014-11-21 web2net', '', 'Гильдия', 51, '', 'Y', '<p>Разобрал - достал - почистил - собрал. Все работает</p>', 'МФУ HP Laser Jet M 1319fMFP', 'CNJ8B6M16Y', '<p>Намотали клеевой стикер на резиновый вал</p>', '', 'Y', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-11'),
(230, '2014-11-28 web2net', '', '2014-11-28 web2net', '2014-12-16 irina', '', '2014-12-16 irina', '2014-11-28 web2net', '2015-02-20 web2net', 'УкрДах', 0, '', 'Y', '<p>&nbsp;Заправка 85 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-11'),
(231, '2014-12-02 web2net', '', '2014-12-30 web2net', '2014-12-30 web2net', '', '2014-12-30 web2net', '2014-12-30 web2net', '2015-02-20 web2net', 'СПЗ-Групп', 0, '', 'Y', '<p>&nbsp;Выставить счет 3799грн</p>', 'Принтер А4 Canon i-SENSYS LBP6310DN', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-12'),
(232, '2014-12-08 web2net', '', '', '', '', '', '2014-12-08 web2net', '', 'Гильдия', 51, '', 'Y', '<p> Заправка 78 - 1шт. (Лариса)</p>\r\n<p>Заправка 85 - 1 шт (Валя)</p>\r\n<p>Заправка 12 - 1 шт. (Бабушка)))</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-12'),
(233, '2014-12-08 web2net', '', '2014-12-08 web2net', '2014-12-16 irina', '', '2015-03-18 irina', '2014-12-08 web2net', '2017-04-15 web2net', 'Орион', 0, '', 'Y', '<p>&nbsp;Заправка 85 1шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-12'),
(234, '2014-12-05 web2net', '', '2014-12-10 web2net', '', '', '', '2014-12-10 web2net', '', 'ПосСтрор', 50, '', 'Y', '<p>&nbsp;Настройка Outlook</p>', 'ПК', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-12'),
(235, '2014-12-10 web2net', '', '2014-12-10 web2net', '', '', '', '2014-12-10 web2net', '', 'СПЗ-Групп', 79, '', 'Y', '<p> Настройка сетевого принтера (витая пара ~ 10 м) </p>', 'Сеть', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-12'),
(236, '2014-12-10 web2net', '', '', '', '', '', '2014-12-10 web2net', '', 'Вип Декор', 80, '', 'Y', '<p>&nbsp;Заправка 12 - 1шт.</p>\r\n<p>Заправка 106R01159(D3) - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-12'),
(237, '2014-12-10 web2net', '', '2014-12-10 web2net', '', '', '', '2014-12-10 web2net', '', 'СиГэйт', 122, '', 'Y', '<p> Пилоты - 2 шт.</p>\r\n<p>Хаб  - 1 шт.</p>\r\n<p>Обогреватель + Ножка</p>\r\n<p>Витая пара 5-7м</p>\r\n<p>Мыша</p>', 'Всяко', '', '', '', 'Y', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-12'),
(238, '2014-12-12 web2net', '', '2014-12-12 web2net', '', '', '', '2014-12-12 web2net', '', 'Юля Юбка', 262, '', 'Y', '<p> Заправка 725 - 1 шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-12'),
(239, '2014-12-12 web2net', '', '2014-12-12 web2net', '', '', '2014-12-12 web2net', '2014-12-12 web2net', '2015-02-20 web2net', 'Крестик', 0, '', 'Y', '<p>&nbsp;Заправка СЕ312А - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2014-12'),
(240, '2014-12-12 web2net', '', '2014-12-12 web2net', '2015-03-18 irina', '', '2015-03-18 irina', '2014-12-12 web2net', '2017-04-15 web2net', 'СПЗ-Групп', 0, '', 'Y', '<p>&nbsp;Заправка 78 - &nbsp;1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-12'),
(241, '2014-12-12 web2net', '', '2014-12-28 web2net', '2015-02-09 irina', '', '2015-02-09 irina', '2014-12-28 web2net', '2015-02-20 web2net', 'Эдвансис', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 4 шт.</p>\r\n<p>&nbsp;</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-12'),
(242, '2014-12-12 web2net', '', '2014-12-12 web2net', '2015-02-25 irina', '', '2015-02-25 irina', '2014-12-12 web2net', '2017-04-15 web2net', 'Вип-декор', 0, '', 'Y', '<p>&nbsp;ТО xerox phaser 3100</p>\r\n<p>Просили озвучить цены на восстановление картриджа и нового..</p>\r\n<p>Говорят, что у нас времонте лежит их картридж..</p>', 'МФУ', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-12'),
(243, '2014-12-17 web2net', '', '2014-12-17 web2net', '', '', '', '2014-12-17 web2net', '', 'ПосСтрор', 50, '', 'Y', '<p>&nbsp;Скотч 200м -4 шт.</p>\r\n<p>Нужно получить на безнал</p>', 'Скотч', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-12'),
(244, '2014-12-23 web2net', '', '2014-12-23 web2net', '2015-02-12 irina', '', '2015-02-25 irina', '2014-12-23 web2net', '2017-04-15 web2net', 'Vip Decor', 0, '', 'Y', '<p>&nbsp;Заправка D104S</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-12'),
(245, '2014-12-25 web2net', '', '2014-12-28 web2net', '2015-02-09 irina', '', '2015-02-09 irina', '2014-12-25 web2net', '2015-02-20 web2net', 'Гилдия', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-12'),
(246, '2014-12-25 web2net', '', '2014-12-25 web2net', '2015-02-25 irina', '', '2015-02-25 irina', '2014-12-25 web2net', '2017-04-15 web2net', 'Лан СИС', 0, '19::414а', 'Y', '<p>&nbsp;Заправка 78 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2014-12'),
(247, '2014-12-26 web2net', '', '', '2015-04-07 irina', '', '2015-04-07 irina', '2014-12-27 alexkiev', '', 'Вип Декор', 80, '050 749 24 44\r\nАндрей', 'Y', '<p>&nbsp;Работы с платой питания</p>', 'Монитор ViewSonic VA902', 'PSS061820449', '<p>Не включается</p>', '360 грн.', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-12'),
(248, '2014-12-27 alexkiev', '', '', '', '', '', '', '', 'МКР Сайт', 251, '', 'N', '', 'Web Kiev', '', '<p> После отправки заказа если нажать возврат на страницу назад заказ отправляется повторно</p>\r\n<p>Ввстройке не все позиции и путаница в товаре</p>', '', 'N', 'N', 'N', '', 'N', 'alexkiev', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-12'),
(249, '2014-12-30 web2net', '', '2017-05-12 alex', '2017-05-12 alex', '', '2017-05-12 alex', '2014-12-30 web2net', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p> Заправка 725 1 шт.</p>\r\n<p>Заправка 85 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'Y', '2017-04-16 web2net', '2014-12'),
(250, '2015-01-06 web2net', '', '2015-01-06 web2net', '', '', '', '2015-01-06 web2net', '', 'СиГэйт', 122, '', 'Y', '<p> Пачка бумаги А4</p>', 'Бумага', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-01'),
(251, '2015-01-12 web2net', '', '', '', '', '', '', '', 'ПосСтрор', 50, '', 'N', '<p>&nbsp;Нужны датированные ежедневники А5 (попроще) - 2шт.</p>', 'Ежедневники', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-01'),
(252, '2015-01-14 web2net', '', '2015-01-14 web2net', '2015-02-09 irina', '', '2015-03-18 irina', '2015-01-14 web2net', '2017-04-15 web2net', 'УкрДах', 0, '', 'Y', '<p>&nbsp;Заправка 85 - 2 шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-01'),
(253, '2015-01-14 web2net', '', '2015-01-14 web2net', '2015-04-07 irina', '', '2015-04-07 irina', '2015-01-14 web2net', '2017-04-15 web2net', 'СПЗ-Групп', 0, '', 'Y', '<p>&nbsp;Переустановка ОС (Win7 32) восстановление данных. настройка</p>\r\n<p>HDD WD 1Tb</p>', 'ПК', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-01'),
(254, '2015-01-14 web2net', '', '', '', '', '', '', '', 'МКР Сервис', 216, '', 'N', '<p> Закончилась</p>\r\n<p>витая пара</p>\r\n<p>салфетки</p>\r\n<p>барабаны (всякие)</p>', '', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-01'),
(255, '2015-01-17 web2net', '', '', '2015-02-09 irina', '', '2015-02-09 irina', '2015-01-17 web2net', '', 'Ловекс', 62, '', 'Y', '<p> Заправка 05 - 1шт.</p>\r\n<p>Заправка 78 - 1шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-01'),
(256, '2015-01-19 web2net', '', '', '2015-04-07 irina', '', '2015-04-07 irina', '2015-01-19 web2net', '', 'СПЗ-Групп', 79, '', 'Y', '<p> Заправка 78 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-01'),
(257, '2015-01-20 web2net', '', '2015-01-20 web2net', '2015-04-10 irina', '', '', '2015-01-20 web2net', '', '19::310', 263, '', 'Y', '<p> Замена барабана 728 - 1шт </p>\r\n<p>Заправка 728 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-01'),
(258, '2015-01-20 web2net', '', '2015-01-20 web2net', '', '', '', '2015-01-20 web2net', '', 'СПЗ-Групп', 79, '', 'Y', '<p> Продан</p>', 'Адаптер для ноутбука', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-01'),
(259, '2015-01-22 web2net', '', '2015-01-22 web2net', '2015-02-12 irina', '', '2015-02-25 irina', '2015-01-22 web2net', '2017-04-15 web2net', 'Гильдия', 51, '', 'Y', '<p> Заправка 05Х - 1 шт</p>\r\n<p>12 - 1 шт.</p>\r\n<p>78 - 1 шт.</p>\r\n<p>85 - 1 шт</p>', 'Картриджи', '', '', 'Новые реквизиты.. ', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-01'),
(260, '2015-01-22 web2net', '', '2015-01-22 web2net', '', '', '', '2015-01-22 web2net', '', 'СПЗ-Групп', 79, '', 'Y', '<p> Настройка UniFi</p>', 'Роутер', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-01'),
(261, '2015-01-27 web2net', '', '', '2015-04-07 irina', '', '2015-05-15 irina', '', '', 'С-Клаус', 264, '', 'N', '', 'ПК', '', '<p> Нужно дать предложение на ПК. Сумма 10-15К.</p>\r\n<p>Туда же незаметно включить гарнитуру (маленькую..)</p>', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-01'),
(262, '2015-01-30 web2net', '', '2015-01-30 web2net', '2015-02-12 irina', '', '2015-02-25 irina', '2015-01-30 web2net', '2017-04-15 web2net', 'Vip Decor', 0, '', 'Y', '<p>&nbsp;Заправка D104S - 1 шт</p>\r\n<p>Заправка + барабан Xerox 013R00625(D3) - 1 шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-01'),
(263, '2015-01-30 web2net', '', '2015-02-05 web2net', '2015-02-12 irina', '', '2015-02-25 irina', '2015-01-30 web2net', '2017-04-15 web2net', 'Гильдия', 51, '', 'Y', '<p> Заправка 78 - 1шт</p>\r\n<p>Профилактика принтера НР</p>', 'Всяко', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-01'),
(264, '2015-01-30 web2net', '', '2015-01-30 web2net', '2015-03-18 irina', '', '2015-03-18 irina', '2015-01-30 web2net', '2017-04-15 web2net', 'СПЗ-Групп', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 1шт</p>\r\n<p>Обжал конец Эдику )))</p>', 'Всяко', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-01'),
(265, '2015-01-30 web2net', '', '2015-02-05 web2net', '2015-02-12 irina', '', '2015-02-25 irina', '2015-01-30 web2net', '2017-04-15 web2net', 'Пуратос', 0, '', 'Y', '<p>&nbsp;Заправка WorkCenter 3045 &nbsp;- 1 шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-01'),
(266, '2015-01-30 web2net', '', '2015-02-05 web2net', '2015-02-09 irina', '', '2015-02-09 irina', '2015-02-05 web2net', '2015-02-20 web2net', 'Эдвансис', 0, '19::317', 'Y', '<p>&nbsp;<span style=\"line-height: 14.3000001907349px;\">заправка всех цветов кроме черного</span></p>', 'Принтер НР  Color LaserJet СР5220', 'CNGTF4K123', '<p>&nbsp;Не пропечатывает верхнюю границу (черный).</p>\r\n<p>&nbsp;</p>', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-01'),
(267, '2015-02-05 web2net', '', '2015-04-02 web2net', '2015-02-12 irina', '', '2015-04-07 irina', '2015-02-05 web2net', '2017-04-15 web2net', 'Эдвансис', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-02'),
(268, '2015-02-05 web2net', '', '2015-04-02 web2net', '2015-02-12 irina', '', '2015-02-25 irina', '2015-02-05 web2net', '2017-04-15 web2net', 'Вип-декор', 0, '5 этаж', 'Y', '<p>&nbsp;Заправка 12 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-02'),
(269, '2015-02-05 web2net', '', '2015-04-02 web2net', '2015-03-18 irina', '', '2015-03-18 irina', '2015-02-20 web2net', '2017-04-15 web2net', 'Орион (Дима)', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 1шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-02'),
(270, '2015-02-05 web2net', '', '2015-04-02 web2net', '2015-02-12 irina', '', '2015-02-25 irina', '2015-02-05 web2net', '2017-04-15 web2net', 'Сити Сайт', 0, '', 'Y', '<p>&nbsp;Заправка xerox 106R01487</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-02'),
(271, '2015-02-10 web2net', '', '2015-02-10 web2net', '2015-03-18 irina', '', '2015-03-18 irina', '2015-02-10 web2net', '2017-04-15 web2net', 'Перспектива', 0, '', 'Y', '<p>&nbsp;Заправка 278 - 2 шт.</p>\r\n<p>Заправка 05 - 1 шт.</p>\r\n<p>Заправка 80 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-02'),
(272, '2015-02-10 web2net', '', '2015-02-10 web2net', '2015-02-25 irina', '', '2015-02-25 irina', '2015-02-10 web2net', '2017-04-15 web2net', 'Профсоюзы', 0, '', 'Y', '<p>&nbsp;Заправка EP22 (или Нр1100) - 1 шт.</p>\r\n<p>Заправка 85 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-02'),
(273, '2015-02-10 web2net', '', '2015-02-10 web2net', '2015-03-18 irina', '', '2015-03-18 irina', '2015-02-10 web2net', '2017-04-15 web2net', 'Гильдия', 51, '', 'Y', '<p> Замена вала заряда 85</p>', 'Картридж', '', '', 'Выставить как заправку', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-02'),
(274, '2015-02-11 web2net', '', '', '2015-03-18 irina', '', '2015-04-07 irina', '2015-02-11 web2net', '', 'Ловекс', 62, '', 'Y', '<p> Заправка 05 - 2 шт.</p>\r\n<p>Заправка 728 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-02'),
(275, '2015-02-19 web2net', '', '2015-02-19 web2net', '2015-02-25 irina', '', '2015-03-18 irina', '2015-02-19 web2net', '2017-04-15 web2net', 'АВС-2000', 0, '19::420', 'Y', '<p>&nbsp;Заправка Q7115 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-02'),
(276, '2015-02-19 web2net', '', '2015-02-19 web2net', '2015-03-18 irina', '', '2015-03-18 irina', '2015-02-19 web2net', '2017-04-15 web2net', 'СПЗ-Групп', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 1 шт.</p>\r\n<p>Замена барабана 78 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-02'),
(277, '2015-02-19 web2net', '', '2015-02-19 web2net', '', '', '', '2015-02-19 web2net', '', 'СПЗ-Групп', 79, '', 'Y', '<p> Переустановка  MS Office</p>', 'Mac Book', '', '<p> Не запускается MS Office</p>', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-02'),
(279, '2015-02-20 web2net', '', '2015-03-18 irina', '2015-03-18 irina', '', '2015-04-07 irina', '2015-03-18 irina', '2017-04-15 web2net', 'Эдвансис', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-02'),
(280, '2015-02-20 web2net', '', '', '2015-04-07 irina', '', '2015-05-15 irina', '2015-02-20 web2net', '', 'Центус', 135, '', 'Y', '<p> Заправка 05 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-02'),
(281, '2015-03-13 web2net', '', '2015-03-13 web2net', '2015-04-07 irina', '', '2015-04-07 irina', '2015-03-13 web2net', '2017-04-15 web2net', 'Эдвансис', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 1шт</p>\r\n<p>Заправка СЕ740А (black)</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-03'),
(282, '2015-03-13 web2net', '', '2015-03-13 web2net', '2015-03-18 irina', '', '2015-03-18 irina', '2015-03-13 web2net', '2017-04-15 web2net', '19::409', 0, '', 'Y', '<p>&nbsp;Заправка + замена барабана 725</p>\r\n<p>Заправку проплатили. Нужно выставит счет на восстановление 725 - 240 грн.</p>\r\n<p>Счет на Велыкый Шовковый Шлях</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-03'),
(283, '2015-03-27 web2net', '', '2015-03-31 web2net', '', '', '', '2015-03-27 web2net', '', 'СПЗ Груп', 79, '', 'Y', '<p>&nbsp;Замена пленки</p>', 'МФУ HP LaserJet 3030', 'CNBF010146', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-03'),
(284, '2015-03-27 web2net', '', '2015-04-02 web2net', '2015-05-19 irina', '', '2015-06-03 irina', '2015-04-02 web2net', '2017-04-15 web2net', 'Гильдия', 51, '', 'Y', '<p> Зправка 12 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-03'),
(285, '2015-03-27 web2net', '', '2015-03-31 web2net', '', '', '2015-03-31 web2net', '2015-03-31 web2net', '2017-03-08 alexkiev', 'Валя', 0, '', 'Y', '<p>&nbsp;Исправлено</p>', 'Ноутбук', '', '<p>&nbsp;Сломано крепление крышки</p>', 'Озвучил 300 грн.', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2015-03'),
(286, '2015-04-02 web2net', '', '', '', '', '', '2015-04-02 web2net', '', 'Очкарики', 121, '', 'Y', '<p> Чистка-юстировка</p>', 'Ноутубук hp nc6400', '', '<p> Заклинело кулер</p>', '400 грн', 'N', 'N', 'N', '', 'N', 'web2net', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-04'),
(287, '2015-04-02 web2net', '', '', '', '', '', '2015-04-02 web2net', '', 'Поликлиника Русановка', 70, '', 'Y', '<p>&nbsp;Исправлено.. Включается</p>', 'Ноутбук Asus F3J', '6AN0AS088102', '<p>&nbsp;Не включается..</p>', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-04'),
(288, '2015-04-02 web2net', '', '2015-04-07 web2net', '', '', '2015-04-07 web2net', '2015-04-07 web2net', '2017-03-08 alexkiev', 'Вышиванка', 0, '', 'Y', '<p>&nbsp;Замена (материнская плата&nbsp;заказчика)</p>', 'ПК', '', '<p>&nbsp;Сгорела материнская плата</p>', '300 грн', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2015-04'),
(289, '2015-04-02 web2net', '', '2015-04-02 web2net', '2015-04-07 irina', '', '2015-05-15 irina', '2015-04-02 web2net', '2017-04-15 web2net', 'Эдвансис', 0, '19::317', 'Y', '<p>&nbsp;Заправка 278 - 6 шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-04'),
(290, '2015-04-02 web2net', '', '2015-04-02 web2net', '2015-04-07 irina', '', '2015-04-10 irina', '2015-04-02 web2net', '2017-04-15 web2net', 'SPZ-Group', 0, '', 'Y', '<p>&nbsp;Заправка 278 - 1шт</p>\r\n<p>Замена барабана 278 - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-04'),
(291, '2015-04-03 web2net', '', '', '', '', '', '2015-04-03 web2net', '', 'ХЗ', 204, '', 'Y', '<p> Заправка 85 - 1 шт.</p>\r\n<p>Заправка 719Н - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-04'),
(292, '2015-04-06 web2net', '', '2015-04-06 web2net', '2015-04-07 irina', '', '2015-04-10 irina', '2015-04-06 web2net', '2017-04-15 web2net', 'ABC-2000', 0, '', 'Y', '<p>Заправка 85 - 2 шт.&nbsp;</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-04'),
(293, '2015-04-06 web2net', '', '2015-04-07 web2net', '2015-05-19 irina', '', '2015-06-03 irina', '2015-04-06 web2net', '2017-04-15 web2net', 'Гильдия', 51, '', 'Y', '<p> Заправка 05Х - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-04'),
(294, '2015-04-07 web2net', '', '2015-04-07 web2net', '2015-04-10 irina', '', '2015-05-15 irina', '2015-04-07 web2net', '2017-04-15 web2net', 'КиевПромСервис', 0, '19::310', 'Y', '<p>&nbsp;Заправка 728 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-04'),
(295, '2015-04-15 web2net', '', '2015-04-15 web2net', '2015-04-17 irina', '', '2015-05-15 irina', '2015-04-15 web2net', '2017-04-15 web2net', 'ТОВ \"УкрНДІм\'ясомолпром\"', 0, 'пр. Воссоединения 15, оф. 405, 407', 'Y', '<p>&nbsp;Заправка НР 49Х (Patron)</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-04'),
(296, '2015-04-21 web2net', '', '2015-05-14 web2net', '2015-05-19 irina', '', '2015-06-03 irina', '2015-05-14 web2net', '2017-02-07 alexkiev', 'Vip Decor', 0, '', 'Y', '<p>&nbsp;Заправка Xerox WC 3119</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-04'),
(297, '2015-04-21 web2net', '', '', '', '', '', '2015-04-21 web2net', '', 'Румб Плюс', 120, '', 'Y', '<p> Заправка samsung 1661</p>', 'Картридж', '', '', 'Прошить чип', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-04'),
(298, '2015-05-05 web2net', '', '', '2015-05-14 web2net', '', '2015-05-14 web2net', '2015-05-14 web2net', '', 'Пуратос', 96, '', 'Y', '<p>Заправка Xerox Phaser 3010/3040 - 2 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-05'),
(299, '2015-05-05 web2net', '', '', '2015-06-17 irina', '', '2015-07-22 irina', '2015-05-05 web2net', '', 'Орион', 103, '', 'Y', '<p> Заправка 85 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-05'),
(300, '2015-05-05 web2net', '', '2015-05-15 web2net', '2015-05-19 irina', '', '2015-06-03 irina', '2015-05-14 web2net', '2017-02-07 alexkiev', 'Гильдия', 51, '', 'Y', '<p> Заправка 05 Х - 1 шт.</p>\r\n<p>Заправка 78 - 1шт.</p>\r\n<p>Заправка 85 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-05'),
(301, '2015-05-05 web2net', '', '2015-05-14 web2net', '2015-05-19 irina', '', '2015-06-03 irina', '2015-05-14 web2net', '2017-02-07 alexkiev', 'СПЗ-Групп', 0, '', 'Y', '<p>&nbsp;Заправка 15 А - 1 шт</p>\r\n<p>Заправка 719 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-05'),
(302, '2015-05-14 web2net', '', '2015-05-14 web2net', '2015-05-19 irina', '', '2015-06-03 irina', '2015-05-14 web2net', '2017-02-07 alexkiev', 'VipDecor', 0, '', 'Y', '<p>&nbsp;Заправка 12 - 1 шт.</p>\r\n<p>Заправка D104S + барабан</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-05'),
(303, '2015-05-14 web2net', '', '2015-05-14 web2net', '2015-05-19 irina', '', '2015-06-03 irina', '2015-05-14 web2net', '2017-02-07 alexkiev', 'ABS Service', 0, '', 'Y', '<p>&nbsp;Заправка + барабан 13 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-05'),
(304, '2015-05-15 web2net', '', '2015-05-15 web2net', '2015-05-19 irina', '', '2015-06-03 irina', '2015-05-15 web2net', '2017-02-07 alexkiev', 'Сити-сайт', 0, '', 'Y', '<p>Заправка Xerox WC 3210/3220</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-05'),
(305, '2015-05-19 web2net', '', '', '2015-06-03 irina', '', '2015-06-17 irina', '2015-05-27 web2net', '', 'Эдвансис', 68, '', 'Y', '<p> Заправка 78 - 4 шт</p>\r\n<p>Замена барабана 78 - 1 шт</p>\r\n<p>Это сделал я.. Что Саша - уточнить у него..</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-05'),
(306, '2015-05-21 web2net', '', '', '', '', '', '2015-05-21 web2net', '', 'ХЗ', 204, '', 'Y', '<p> Заправка 726 - 2 шт.</p>\r\n<p>Заправка 12 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2015-05'),
(307, '2015-06-03 web2net', '', '2015-06-03 web2net', '2015-10-09 irina', '', '2015-10-09 irina', '2015-06-03 web2net', '2017-02-07 alexkiev', 'Пос-сторе', 0, '', 'Y', '<p>Пачка файлов А4&nbsp;</p>', 'Файлы', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-06'),
(308, '2015-06-03 web2net', '', '2015-06-03 web2net', '2015-07-22 irina', '', '2015-07-22 irina', '2015-06-03 web2net', '2017-02-07 alexkiev', 'Вип Декор', 0, '', 'Y', '', 'Картридж', '', '<p>&nbsp;Заправка 85 - 1 шт.</p>', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-06'),
(309, '2015-06-03 web2net', '', '2015-06-03 web2net', '2015-06-03 irina', '', '2015-06-17 irina', '2015-06-03 web2net', '2017-02-07 alexkiev', 'УкрДах', 0, '', 'Y', '<p>&nbsp;Заправка 85 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-06'),
(310, '2015-06-03 web2net', '', '2015-06-03 web2net', '2015-07-09 irina', '', '2015-07-22 irina', '2015-06-03 web2net', '2017-02-07 alexkiev', 'Песпектива', 0, '', 'Y', '', 'Картридж', '', '<p>&nbsp;Восстановление 80 - 1 шт.</p>', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-06'),
(311, '2015-06-03 web2net', '', '2015-06-03 web2net', '2015-06-03 irina', '', '2015-06-17 irina', '2015-06-03 web2net', '2017-02-07 alexkiev', 'Крым Фундамент', 0, '', 'Y', '<p>&nbsp;Заправка 85 - 1 шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-06'),
(312, '2015-06-03 web2net', '', '2015-06-03 web2net', '2015-06-03 irina', '', '2015-06-23 irina', '2015-06-03 web2net', '2017-02-07 alexkiev', 'Матрикс', 0, '', 'Y', '<p>&nbsp;Заправка bizhub 190 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-06'),
(313, '2015-06-03 web2net', '', '', '', '', '', '', '', 'Гильдия', 51, '', 'N', '<p> Заправка 85 - шт. отгружено</p>\r\n<p>Заправка 85 (лариса) - несделано</p>\r\n<p>Восстановление ???? 12 - бабушка</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-06'),
(314, '2015-06-10 web2net', '', '', '2015-07-22 irina', '', '2015-07-24 irina', '2015-06-10 web2net', '', 'Инкомантур', 93, '', 'Y', '<p> Заправка 35 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-06'),
(315, '2015-06-10 web2net', '', '', '2015-07-09 irina', '', '2015-07-22 irina', '2015-06-10 web2net', '', 'Гильдия', 51, '', 'Y', '<p> Заправка 78 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-06'),
(316, '2015-06-17 web2net', '', '', '2015-10-09 irina', '', '2015-10-09 irina', '2015-06-30 web2net', '', 'ПосСтрор', 50, '', 'Y', '<p> Скотч - 3 шт</p>\r\n<p>Чистка (вирусы и прочая) ноутбука - 300грн</p>\r\n<p>Заправка panasonic - 1 шт</p>', 'Всяко', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-06'),
(317, '2015-06-30 web2net', '', '2015-06-30 web2net', '2015-07-22 irina', '', '2015-10-09 irina', '2015-06-30 web2net', '2017-02-07 alexkiev', 'Вип Декор', 0, '', 'Y', '<p>&nbsp;Заправка Xerox 3119 - 1 шт.</p>\r\n<p>Заправка Xerox 3100 - 1 шт.</p>', 'Картриджи', '', '', 'Еще один 3100 забрал в офис - пищит..', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-06'),
(318, '2015-06-30 web2net', '', '2015-06-30 web2net', '2015-07-09 irina', '', '2015-07-22 irina', '2015-06-30 web2net', '2017-02-07 alexkiev', 'АВС 200', 0, '', 'Y', '<p>&nbsp;Заправка 85 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-06'),
(319, '2015-07-01 web2net', '', '2015-07-01 web2net', '2015-07-09 irina', '', '2015-07-22 irina', '2015-07-01 web2net', '2017-02-07 alexkiev', 'УкрДах', 0, '', 'Y', '<p>&nbsp;Заправка + барабан 85 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-07'),
(320, '2015-07-01 web2net', '', '2015-07-14 web2net', '', '', '', '2015-07-01 web2net', '', '19::310', 263, '', 'Y', '<p> Заправка 728 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-07'),
(321, '2015-07-01 web2net', '', '2015-07-01 web2net', '2015-07-09 irina', '', '2015-07-22 irina', '2015-07-01 web2net', '2017-02-07 alexkiev', 'Эдвансис', 0, '', 'Y', '<p>&nbsp;Заправака 78 - 3 шт.</p>\r\n<p>Барабан - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-07'),
(322, '2015-07-06 web2net', '', '2015-07-14 web2net', '', '', '', '2015-07-06 web2net', '', 'Гильдия', 51, '', 'Y', '<p>&nbsp;Чистка, юстировка</p>', 'Принтер НР Р2055d', 'CNCJJ94957', '<p>&nbsp;Не захватывает бумагу</p>', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-07'),
(323, '2015-07-06 web2net', '', '', '', '', '', '2015-07-06 web2net', '', 'Школа №148', 119, '', 'Y', '<p>&nbsp;Чистка, юстировка</p>', 'МФУ', 'BMA384334329', '<p>&nbsp;Не берет бумагу</p>', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-07'),
(324, '2015-07-07 web2net', '', '', '', '', '', '2015-07-15 web2net', '', 'Айсек', 118, '', 'Y', '<p>&nbsp;Перебран механизм движения сканера, причищена оптопара</p>', 'МФУ HP LaswrJet M1132 MFP', 'CNG9D6GPZ8', '<p>&nbsp;Ошибка сканера Е8</p>', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-07'),
(325, '2015-07-14 web2net', '', '2015-07-14 web2net', '2015-08-06 irina', '', '2015-08-06 irina', '2015-07-14 web2net', '2017-02-07 alexkiev', 'СПЗ', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-07'),
(326, '2015-07-15 web2net', '', '2015-07-24 web2net', '', '', '', '2015-07-15 web2net', '', 'Алла', 182, '', 'Y', '<p>&nbsp;Переустановака Винды</p>', 'Notebook lenovo G500', 'CB22665567', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-07'),
(327, '2015-07-16 web2net', '', '2015-07-16 web2net', '2015-09-04 irina', '', '2015-09-04 irina', '2015-07-16 web2net', '2017-02-07 alexkiev', 'Пос-сторе', 0, '', 'Y', '<p>&nbsp;Переустановка Вин</p>', 'Ноутбук', 'забыл записать', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-07'),
(328, '2015-07-16 web2net', '', '2015-07-24 web2net', '', '', '', '2015-07-16 web2net', '', 'Алла', 182, '', 'Y', '<p>&nbsp;Сброс до заводских настроек + карточка Toshiba 8 Gb SD-C08GJ(6A&nbsp;</p>', 'Планшет Samsung GT-P3110', 'RF2D712030A', '<p>&nbsp;Не работает карточка (microSD)</p>', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-07'),
(329, '2015-07-16 web2net', '', '', '2015-10-13 irina', '', '2015-10-13 irina', '2015-07-16 web2net', '', 'Вип Декор', 80, '', 'Y', '<p> Заправка Xerox 3119 - 1 шт.</p>\r\n<p> </p>', 'Картриджи', '', '<p> 3110 - скрипит аки падла..</p>', 'Все равно скрипит + я кажись коцнул барабан..', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-07');
INSERT INTO `works` (`id`, `date_create`, `date_prioritet`, `date_otgryzka`, `date_doc`, `date_srochno`, `date_pay`, `date_zdelano`, `date_archiv`, `client`, `client_id`, `data_client`, `zdelano`, `content`, `divice`, `sn`, `neispravnost`, `note`, `viezd`, `otgryzka`, `doc`, `number_bill`, `pay`, `ingener`, `responsible_ingener`, `nal`, `archiv`, `prioritet`, `srochno`, `trash`, `date_trash`, `month_create`) VALUES
(330, '2015-07-16 web2net', '', '2015-07-17 web2net', '2015-09-04 irina', '', '2015-09-04 irina', '2015-07-17 web2net', '2017-01-27 alexkiev', 'Пос-сторе', 0, '', 'Y', '<p>&nbsp;Ручек - 6 шт.</p>\r\n<p>Кубик - 1 шт.</p>\r\n<p>Neon - 5 шт.</p>\r\n<p>Бумага А4 - НР - 1 пачка</p>\r\n<p>маркет (толстый) - 1 шт.</p>\r\n<p><img src=\"/userfiles/image/pos.jpg\" width=\"400\" height=\"240\" alt=\"\" /></p>', 'Канцтовары', '', '', 'Саша очень просит счет\r\nХотят еще широкий скотч - если по 200 м - 5 рулонов, если по 100 - 10 рулонов', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-07'),
(331, '2015-07-21 web2net', '', '', '2015-07-23 irina', '', '2015-09-04 irina', '2015-07-21 web2net', '', 'Профсоюзы', 74, '', 'Y', '<p> Заправка 85 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-07'),
(332, '2015-07-21 web2net', '', '', '2015-10-13 irina', '', '', '2015-07-21 web2net', '', 'Креатив', 115, '', 'Y', '<p> Заправка 719 - 1 шт.</p>\r\n<p>Заправка FX-10 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-07'),
(333, '2015-07-21 web2net', '', '', '2015-07-24 irina', '', '2015-10-09 irina', '2015-07-21 web2net', '', 'Орион', 103, '', 'Y', '<p> Заправка 78 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-07'),
(334, '2015-07-21 web2net', '', '', '2015-09-04 irina', '', '2015-09-04 irina', '2015-07-21 web2net', '', 'Центус', 135, '', 'Y', '<p> Заправка 719Н - 1шт.</p>\r\n<p>Заправка 719 - 1 шт.</p>\r\n<p>Заправка 05 - 1 шт.</p>\r\n<p> </p>', 'Картриджи', '', '', '55 - ждет барабан', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-07'),
(335, '2015-07-21 web2net', '', '2015-07-24 web2net', '2015-07-23 irina', '', '2015-07-24 irina', '2015-07-21 web2net', '2017-02-07 alexkiev', 'Миоре', 0, '', 'Y', '<p>&nbsp;Заправка 85 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-07'),
(336, '2015-07-24 web2net', '', '2015-07-24 web2net', '2015-07-24 irina', '', '2015-09-04 irina', '2015-07-24 web2net', '2017-02-07 alexkiev', 'УкрДах', 0, '', 'Y', '<p>&nbsp;Заправка 85 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-07'),
(337, '2015-07-24 web2net', '', '', '2015-09-04 irina', '', '2015-09-04 irina', '2015-07-24 web2net', '', 'Гильдия', 51, '', 'Y', '<p> Заправка 05Х - 2 шт.</p>\r\n<p> </p>', 'Картриджи', '', '', 'В одном возможно нужно махнуть барабан', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-07'),
(338, '2015-07-24 web2net', '', '2015-07-24 web2net', '2015-08-06 irina', '', '2015-09-04 irina', '2015-07-24 web2net', '2017-02-07 alexkiev', 'Эдвансис', 0, '', 'Y', '<p>&nbsp;Заправка СР5225</p>\r\n<p>black - 1 шт.</p>\r\n<p>magenta - 1 шт.</p>\r\n<p>Заправка 78 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-07'),
(339, '2015-07-28 web2net', '', '2015-07-28 web2net', '', '', '2015-07-28 web2net', '2015-07-28 web2net', '2017-02-07 alexkiev', 'УкрСнабТрейд', 0, '201', 'Y', '<p>&nbsp;Заправка 85 - 2 шт. + барабан</p>', 'Картриджи', '', '', '500 грн', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2015-07'),
(340, '2015-08-04 web2net', '', '2015-08-05 web2net', '2015-08-06 irina', '', '2015-09-04 irina', '2015-08-04 web2net', '2017-02-07 alexkiev', 'МясоМолПром', 0, '', 'Y', '<p>&nbsp;Заправка 35 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-08'),
(341, '2015-08-04 web2net', '', '2015-08-11 web2net', '2015-09-11 irina', '', '2015-10-09 irina', '2015-08-11 web2net', '2017-02-07 alexkiev', 'Гильдия', 51, '', 'Y', '<p>Заправка 78 - 3 шт. </p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-08'),
(342, '2015-08-06 web2net', '', '2015-08-06 web2net', '2015-09-04 irina', '', '2015-10-09 irina', '2015-08-06 web2net', '2017-02-07 alexkiev', 'Перспектива', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-08'),
(343, '2015-08-11 web2net', '', '2015-08-11 web2net', '2015-10-13 irina', '', '2015-10-13 irina', '2015-08-11 web2net', '2017-02-07 alexkiev', 'СПЗ-Групп', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-08'),
(344, '2015-08-20 web2net', '', '2015-08-20 web2net', '2015-09-04 irina', '', '2015-10-09 irina', '2015-08-20 web2net', '2017-02-07 alexkiev', 'Гильдия', 51, '', 'Y', '<p> Заправка 85 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-08'),
(345, '2015-08-25 web2net', '', '2015-09-10 web2net', '', '', '2015-09-10 web2net', '2015-09-10 web2net', '2017-02-07 alexkiev', '19::013', 0, 'Такси', 'Y', '<p>&nbsp;Заправка 12 - 1 шт</p>', 'Картридж', '', '', '140 грн', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2015-08'),
(346, '2015-08-25 web2net', '', '2015-08-28 alexkiev', '', '', '', '2015-08-28 alexkiev', '', 'Укроптпостач', 117, '19::201', 'Y', '<p> Отдана 1 пачка А4</p>', 'Бумага', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-08'),
(347, '2015-08-25 web2net', '', '', '2015-09-11 irina', '', '2015-10-09 irina', '2015-08-28 alexkiev', '', 'Центус', 135, '', 'Y', '<p> Заправка 719Н - 1 шт.</p>\r\n<p>Заправка 05А - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-08'),
(348, '2015-08-25 web2net', '', '', '', '', '', '2015-08-25 web2net', '', 'ХЗ', 204, '', 'Y', '<p> Заправка 36 - 1 шт.</p>\r\n<p>Заправка 53 - 1 шт.</p>\r\n<p>Заправка 85 - 2 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-08'),
(349, '2015-08-28 alexkiev', '', '2015-08-28 alexkiev', '2015-10-13 irina', '', '2015-10-13 irina', '2015-08-28 alexkiev', '2017-02-07 alexkiev', 'Вип декор', 0, '', 'Y', '<p>заправка</p>', 'картр 3119', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-08'),
(350, '2015-08-28 alexkiev', '', '2015-08-28 alexkiev', '2015-09-04 irina', '', '2015-10-09 irina', '2015-08-28 alexkiev', '2017-02-07 alexkiev', 'МясоМолПром', 0, '', 'Y', '<p>запр HP 49А</p>\r\n<p>ЗАПР Canon ЕР22</p>', 'картриджы', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-08'),
(351, '2015-08-28 alexkiev', '', '2015-09-09 web2net', '', '', '', '2015-09-09 web2net', '', 'Гильдия', 51, '', 'Y', '', 'картридж 278А (Лариса)', '', '', '', 'N', 'Y', 'N', '', 'N', 'alexkiev', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-08'),
(352, '2015-09-09 web2net', '', '', '2015-10-09 irina', '', '2015-10-13 irina', '2015-09-09 web2net', '', 'Инкомантур', 93, '', 'Y', '<p> Заправка 05А - 1 шт.</p>\r\n<p>Заправка 35 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-09'),
(353, '2015-09-09 web2net', '', '', '2015-09-11 irina', '', '2015-10-09 irina', '2015-09-09 web2net', '', 'Гильдия', 51, '', 'Y', '<p> Заправка 05Х - 1 шт.</p>\r\n<p>Заправка 85 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-09'),
(354, '2015-09-09 web2net', '', '', '', '', '', '2015-09-09 web2net', '', 'ХЗ', 204, '', 'Y', '<p> Поверхностное ТО МФУ</p>\r\n<p>Заправка 725 - 1 шт. + барабан + ракель</p>', 'МФУ Canon MF3010 + Картридж', 'JWN82959', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-09'),
(355, '2015-09-09 web2net', '', '', '2015-09-11 irina', '', '2015-10-09 irina', '2015-09-10 web2net', '', 'Центус', 135, '', 'Y', '<p> Заправка 719 - 1 шт.</p>\r\n<p>Заправка 05 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-09'),
(356, '2015-10-06 web2net', '', '2015-10-06 web2net', '2015-10-23 irina', '', '2015-11-11 irina', '2015-10-06 web2net', '2017-02-07 alexkiev', 'Перспектива', 0, '', 'Y', '<p>Заправка 78 - 1 шт.</p>\r\n<p>Заправка 80 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-10'),
(357, '2015-10-20 web2net', '', '2015-10-20 web2net', '2015-10-23 irina', '', '2015-10-27 irina', '2015-10-20 web2net', '2017-02-07 alexkiev', 'Гильдия', 51, '', 'Y', '<p> Заправка  85 - 3 шт.</p>\r\n<p>Заправка 78 - 2 шт.</p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-10'),
(358, '2015-10-20 web2net', '', '', '2015-10-21 irina', '', '2015-10-23 irina', '2015-10-20 web2net', '', 'Орион', 103, '', 'Y', '<p>Заправка 78 - 1 шт.</p>\r\n<p>Заправка 85 - 2 шт. </p>', 'картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-10'),
(359, '2015-10-20 web2net', '', '', '2015-11-11 irina', '', '2015-11-24 irina', '2015-10-20 web2net', '', 'Компаньон', 67, '', 'Y', '<p> Заправка 725 - 1 шт.</p>', 'картридж', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-10'),
(360, '2015-10-20 web2net', '', '2015-10-20 web2net', '2015-10-21 irina', '', '2015-10-21 irina', '2015-10-20 web2net', '2017-02-07 alexkiev', 'СПЗ-Групп', 0, '', 'Y', '<p>&nbsp;Заправка - 719 - 1 шт.</p>\r\n<p>Заправка - 78 1 шт.</p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-10'),
(361, '2015-10-20 web2net', '', '2015-10-20 web2net', '2015-10-23 irina', '', '2015-10-23 irina', '2015-10-20 web2net', '2017-02-07 alexkiev', 'Эдвансис', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 4 шт.</p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-10'),
(362, '2015-10-20 web2net', '', '2015-10-20 web2net', '2015-10-23 irina', '', '2015-10-27 irina', '2015-10-20 web2net', '2017-02-07 alexkiev', 'ЛанСис', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 1 шт.</p>', 'картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-10'),
(363, '2015-10-20 web2net', '', '2015-10-20 web2net', '2015-10-21 irina', '', '2015-10-23 irina', '2015-10-20 web2net', '2017-02-07 alexkiev', 'Миоре', 0, '', 'Y', '<p>&nbsp;Заправка ХЗ - 1 шт.</p>', 'картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-10'),
(364, '2015-10-20 web2net', '', '2015-10-20 web2net', '2015-10-21 irina', '', '2015-10-23 irina', '2015-10-20 web2net', '2017-02-07 alexkiev', 'ABS2K', 0, '', 'Y', '<p>&nbsp;Заправка 13 - 1 шт.</p>', 'картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-10'),
(365, '2015-10-21 web2net', '', '2015-10-22 web2net', '2015-10-23 irina', '', '2015-11-11 irina', '2015-10-21 web2net', '2017-02-07 alexkiev', 'МясоМолПром', 0, '', 'Y', '<p>&nbsp;Заправка 49 - 2 шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-10'),
(366, '2015-10-22 web2net', '', '', '2015-10-23 irina', '', '2015-10-27 irina', '2015-10-22 web2net', '', 'Ловекс', 62, '', 'Y', '<p> Заправка 737 - 1 шт.</p>\r\n<p>Заправка 85 - шт.</p>', 'картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-10'),
(367, '2015-10-22 web2net', '', '', '2015-10-23 irina', '', '2015-10-23 irina', '2015-10-22 web2net', '', 'Креатив', 115, '', 'Y', '<p> Заправка FX-10 - 1 шт.</p>\r\n<p>Заправка - 05 - 1 шт.</p>', 'Креатив', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-10'),
(368, '2015-10-22 web2net', '', '2015-10-22 web2net', '2015-10-23 irina', '', '2015-10-23 irina', '2015-10-22 web2net', '2017-02-07 alexkiev', 'СПЗ-Групп', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 1 шт.</p>', 'картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-10'),
(369, '2015-10-22 web2net', '', '2015-10-22 web2net', '2015-10-23 irina', '', '2015-10-23 irina', '2015-10-22 web2net', '2017-02-07 alexkiev', 'ABS2K', 0, '', 'Y', '<p>&nbsp;Заправка 85 - 1 шт.</p>', 'картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-10'),
(370, '2015-10-23 web2net', '', '2015-10-29 web2net', '2015-10-23 irina', '', '2015-11-03 irina', '2015-10-29 web2net', '2017-02-07 alexkiev', 'Поссторе', 0, '', 'Y', '<p>&nbsp;Скоч - 4 шт. отгружен</p>\r\n<p>Роутер</p>', 'Всяко', '', '', 'роутер - 375грн', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-10'),
(371, '2015-10-23 web2net', '', '2015-10-23 web2net', '', '', '', '2015-10-23 web2net', '', 'ПосСтрор', 50, '', 'Y', '<p> Скоч - 1 шт</p>', '', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-10'),
(372, '2015-10-23 web2net', '', '2015-10-23 web2net', '2015-10-23 irina', '', '2015-11-03 irina', '2015-10-23 web2net', '2017-02-07 alexkiev', 'Foratel', 0, '15\\17 :: 317', 'Y', '<p>&nbsp;Заправка Xerox 3220 - 2 шт.</p>', 'картриджи', '', '', '140 грн. (без прошивки)', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-10'),
(373, '2015-10-29 web2net', '', '2015-10-29 web2net', '2015-11-03 irina', '', '2015-11-03 irina', '2015-10-29 web2net', '2017-02-07 alexkiev', 'МясоМолПром', 0, '', 'Y', '<p>&nbsp;Заправка 35 - 2 шт.</p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-10'),
(374, '2015-10-29 web2net', '', '2015-10-29 web2net', '2015-11-11 irina', '', '2015-11-16 irina', '2015-10-29 web2net', '2017-02-07 alexkiev', 'Гильдия', 51, '', 'Y', '<p> Заправка 78 - 1 шт</p>\r\n<p>Заправка 05Х - 1 шт + барабан</p>', 'картриджи', '', '', 'ДЛЯ ИРЫ.. СЧЕТ ВЫСТАВИТЬ В НОЯБРЕ!!!', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-10'),
(375, '2015-10-29 web2net', '', '2015-10-29 web2net', '2015-11-03 irina', '', '2015-11-11 irina', '2015-10-29 web2net', '2017-02-07 alexkiev', 'Перспектива', 0, '', 'Y', '<p>&nbsp;78 - 1 шт.</p>', 'картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-10'),
(376, '2015-11-06 web2net', '', '', '2015-11-11 irina', '', '2015-11-24 irina', '', '', 'ГТ-Групп', 116, '', 'N', '<p>&nbsp;ТО принтера</p>\r\n<p>Заправк 85 - 1 шт. + барабан</p>', 'Принтер HP P1102', 'VNC6K25064', '', 'Для Иры - эти работы включить в Рахунок-фактура No СФ-0000235 ООО \"ГТ-Групп\"\r\nДля Саши - нет барабана', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-11'),
(377, '2015-11-12 web2net', '', '2015-11-12 web2net', '2015-12-01 irina', '', '2015-12-08 irina', '2015-11-12 web2net', '2017-02-07 alexkiev', 'Гильдия', 51, '', 'Y', '<p> Заправка 05Х - 1 шт.</p>\r\n<p>12 - 1 шт</p>\r\n<p>85 - 2 шт.</p>\r\n<p>78 - 1 шт.</p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-11'),
(378, '2015-11-18 web2net', '', '2015-11-18 web2net', '2015-12-01 irina', '', '2015-12-08 irina', '2015-11-18 web2net', '2017-02-07 alexkiev', 'Гильдия', 51, '', 'Y', '<p> Заправка 78 - 1  шт.</p>\r\n<p>Заправка 12 - 1 шт. + барабан</p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-11'),
(379, '2015-11-18 web2net', '', '2015-11-18 web2net', '2015-12-01 irina', '', '2015-12-08 irina', '2015-11-18 web2net', '2017-02-07 alexkiev', 'Перспектива', 0, '', 'Y', '<p>&nbsp;Заправка 7- 1 шт</p>', 'картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-11'),
(380, '2015-11-19 web2net', '', '2015-11-19 web2net', '2015-11-27 irina', '', '2015-11-27 irina', '2015-11-19 web2net', '2017-02-07 alexkiev', 'СПЗ-Групп', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 1 шт.</p>', 'картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-11'),
(381, '2015-11-19 web2net', '', '2015-11-19 web2net', '2015-12-01 irina', '', '2015-12-08 irina', '2015-11-19 web2net', '2017-02-07 alexkiev', 'Перспектива', 0, '', 'Y', '<p>&nbsp;Заправка 78 - 1 шт. + Барабан</p>', 'картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2015-11'),
(382, '2015-11-24 web2net', '', '', '2015-11-27 irina', '', '2015-12-01 irina', '2015-11-24 web2net', '', 'Эдвансис', 68, '', 'Y', '<p> Заправка 78 - 6 шт. + 1 барабан</p>', 'картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2015-11'),
(383, '2016-02-01 web2net', '', '', '', '', '', '2016-02-01 web2net', '', 'Гильдия', 51, '', 'Y', '<p> Заправка 725 - 2 шт.</p>\r\n<p>Заправка 05Х - 2 шт.</p>\r\n<p> </p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2016-02'),
(384, '2016-02-01 web2net', '', '', '', '', '', '2016-02-01 web2net', '', 'МясоМолПром', 183, '', 'Y', '<p>Заправка 49 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2016-02'),
(385, '2016-02-02 web2net', '', '', '', '', '', '2016-02-02 web2net', '', 'Перспектива', 76, '', 'Y', '<p> <span style=\\\\\\\"line-height: 14.3px;\\\\\\\"> Заправка 80 - 1 шт. + барабан</span></p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2016-02'),
(386, '2016-02-08 web2net', '', '', '', '', '', '2016-02-08 web2net', '', 'Гильдия', 51, '', 'Y', '<p> Заправка 12 1 шт. + барабан</p>\r\n<p>725 - замена барабана (без заправки)</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2016-02'),
(387, '2016-02-08 web2net', '', '', '', '', '', '2016-02-08 web2net', '', 'Перспектива', 76, '', 'Y', '<p> Заправка 80 - 1 шт.</p>\r\n<p>Заправка 278 - 1шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2016-02'),
(388, '2016-02-08 web2net', '', '', '', '', '', '2016-02-08 web2net', '', 'Компаньон', 67, '', 'Y', '<p> Заправка 719Н - 1 шт.</p>\r\n<p>Заправка 725 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2016-02'),
(389, '2016-02-12 web2net', '', '', '', '', '', '2016-02-12 web2net', '', 'Перспектива', 76, '', 'Y', '<p> Заправка 278 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2016-02'),
(390, '2016-02-12 web2net', '', '', '', '', '', '2016-02-12 web2net', '', 'Гильдия', 51, '', 'Y', '<p> Заправка 12 - 1 шт.</p>\r\n<p>Заправка 725 - шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2016-02'),
(391, '2016-02-12 web2net', '', '2017-02-25 alexkiev', '2017-02-25 alexkiev', '', '2017-02-25 alexkiev', '2017-02-25 alexkiev', '2017-02-25 alexkiev', 'Миоре', 0, '', 'Y', '<p>&nbsp;Заправка - 85 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2016-02'),
(392, '2016-02-19 web2net', '', '', '', '', '', '2016-02-19 web2net', '', 'Центус', 135, '', 'Y', '<p> Заправка 05 - 2 шт.</p>\r\n<p>Заправка 80 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2016-02'),
(393, '2016-02-19 web2net', '', '', '', '', '', '2016-02-19 web2net', '', 'Орион', 103, '', 'Y', '<p> Заправка 78 - 1 шт.</p>\r\n<p>Заправка 85 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2016-02'),
(394, '2016-02-21 web2net', '', '', '', '', '', '2016-02-21 web2net', '', 'КиевПромСервис', 112, '', 'Y', '<p>Замена термопленки, ТО</p>', 'Принтер HP LJ1010', 'CNFJ210067', '<p>&nbsp;Треснутые пластмасовые концевики (холдеры) на концах, под термопленкой..</p>', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2016-02'),
(395, '2016-02-23 web2net', '', '', '', '', '', '2016-02-23 web2net', '', 'Ловекс', 62, '', 'Y', '<p> Заправка 85 - 1 шт.</p>\r\n<p>Заправка 719 - 1 шт.</p>\r\n<p>Заправка 05 - 1 шт. + барабан</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2016-02'),
(396, '2016-02-23 web2net', '', '', '', '', '', '2016-02-23 web2net', '', 'Поликлиника Русановка', 70, '', 'Y', '<p> Заправка 726 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2016-02'),
(397, '2016-02-23 web2net', '', '', '', '', '', '2016-02-23 web2net', '', 'Инкомантур', 93, '', 'Y', '<p> Заправка 05 - 1 шт.</p>\r\n<p>Заправка 35 - 1шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-16 web2net', '2016-02'),
(398, '2016-03-16 web2net', '', '', '2017-04-21 irina', '', '2017-04-21 irina', '2016-03-16 web2net', '', 'СПЗ-Групп', 79, '', 'Y', '<p> Заправка 78 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-03'),
(399, '2016-03-16 web2net', '', '', '', '', '', '2016-03-16 web2net', '', 'Гильдия', 51, '', 'Y', '<p> Заправка 78 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-03'),
(400, '2016-03-16 web2net', '', '', '', '', '', '2016-03-16 web2net', '', 'Эдвансис', 68, '', 'Y', '<p>Заправка 78 - 3 шт. </p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-03'),
(401, '2016-03-17 web2net', '', '', '', '', '', '2016-03-17 web2net', '', 'Эдвансис', 68, '', 'Y', '<p>Заправка 78 - 3 шт. </p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-03'),
(402, '2016-03-18 web2net', '', '', '', '', '', '2016-03-18 web2net', '', 'КиевПромСервис', 112, '', 'Y', '<p> Заправка 728 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-03'),
(403, '2016-03-18 web2net', '', '', '', '', '', '2016-03-18 web2net', '', 'Лансис', 71, '', 'Y', '<p> Заправка 78 - 1 шт</p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-03'),
(404, '2016-03-22 web2net', '', '2016-03-22 web2net', '', '', '', '2016-03-22 web2net', '', 'Зевс', 113, '', 'Y', '<p>Заправка FX-10 - 1 шт.</p>', 'Картридж', '', '', '', 'Y', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-03'),
(405, '2016-04-13 web2net', '', '', '', '', '', '2016-04-13 web2net', '', 'Эдвансис', 68, '', 'Y', '<p> Заправка 78 - 1шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(406, '2016-04-13 web2net', '', '', '', '', '', '2016-04-13 web2net', '', 'Перспектива', 76, '', 'Y', '<p> Заправка 78 - 1шт.</p>\r\n<p>Заправка 85 - 1 шт.</p>\r\n<p>Заправка 05 - 1шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(407, '2016-04-13 web2net', '', '', '', '', '', '2016-04-13 web2net', '', 'Поликлиника Русановка', 70, '', 'Y', '<p> Заправка - 726 - 1 шт</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(408, '2016-04-13 web2net', '', '', '', '', '', '2016-04-13 web2net', '', 'ХЗ', 204, '', 'Y', '<p> Заправка 725 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(409, '2016-04-13 web2net', '', '', '', '', '', '2016-04-13 web2net', '', 'ХЗ', 204, '', 'Y', '<p> Заправка 53 - 1 шт</p>\r\n<p>Заправка 05 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(410, '2016-04-15 web2net', '', '', '', '', '', '2016-04-15 web2net', '', 'Поликлиника Русановка', 70, '', 'Y', '<p> Заправка FX10 - 1 шт.</p>\r\n<p>Заправка 726 - 2 шт. + 1 барабан</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(411, '2016-04-15 web2net', '', '', '', '', '', '2016-04-15 web2net', '', 'Компаньон', 67, '', 'Y', '<p> Заправка 131 - 2 шт. + 1 барабан</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(412, '2016-04-15 web2net', '', '', '', '', '', '2016-04-15 web2net', '', 'МясоМолПром', 183, '', 'Y', '<p> Заправка 35 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(413, '2016-04-15 web2net', '', '', '', '', '', '2016-04-15 web2net', '', 'Перспектива', 76, '', 'Y', '<p>Заправка 05 - 2 ШТ.</p>\r\n<p>Заправка 78 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(414, '2016-04-15 web2net', '', '', '', '', '', '2016-04-15 web2net', '', 'Компаньон', 67, '', 'Y', '<p> Заправка 719 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(415, '2016-04-15 web2net', '', '', '', '', '', '2016-04-15 web2net', '', 'ХЗ', 204, '', 'Y', '<p> Заправка 719 - 1 шт. + барабан</p>', 'Картридж', '', '', 'Предпродажная подготовка', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(416, '2016-04-15 web2net', '', '', '', '', '', '2016-04-15 web2net', '', 'ХЗ', 204, '', 'Y', '<p> Заправка - 85 - 1 шт.</p>\r\n<p>Заправка 35 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'Y', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(417, '2016-04-15 web2net', '', '', '', '', '', '2016-04-15 web2net', '', 'Центус', 135, '', 'Y', '<p> Заправка 05 - 1 шт.</p>\r\n<p>Заправка 719 - 1 шт.</p>\r\n<p>Заправка 80 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(418, '2016-04-19 web2net', '', '', '', '', '', '2016-04-19 web2net', '', 'Компаньон', 67, '', 'Y', '<p> Заправка 725 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(419, '2016-04-19 web2net', '', '', '', '', '', '2016-04-19 web2net', '', 'ХЗ', 204, '', 'Y', '<p> Заправка 78 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(420, '2016-04-21 web2net', '', '', '', '', '', '2016-04-21 web2net', '', 'Креатив', 115, '', 'Y', '<p> Заправка FX-10 - 1 шт.</p>\r\n<p>Заправка 719 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(421, '2016-04-21 web2net', '', '', '', '', '', '2016-04-21 web2net', '', 'ХЗ', 204, '', 'Y', '<p>Заправка Xerox 3210 - 1 шт</p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(422, '2016-04-22 web2net', '', '', '', '', '', '2016-04-22 web2net', '', 'Гильдия', 51, '', 'Y', '<p>Заправка 85 - 2 шт.</p>\r\n<p>запрвака 728 - 1 шт.</p>\r\n<p>заправка  725 - 2 шт.</p>\r\n<p>заправка 12 - 1 шт.</p>\r\n<p>заправка 05Х - 1 шт. </p>\r\n<p> </p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-04'),
(423, '2016-05-12 web2net', '', '2016-05-12 web2net', '', '', '', '2016-05-12 web2net', '', 'Шабаш', 114, '', 'Y', '<p> Заправка 35 - 1 шт. + барабан</p>', 'Картридж', '', '', 'Счет на klaus_68@mail.ru', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(424, '2016-05-18 web2net', '', '', '', '', '', '2016-05-18 web2net', '', 'Компаньон', 67, '', 'Y', '<p> Заправка 719Н + барабан</p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(425, '2016-05-18 web2net', '', '2017-04-19 irina', '2017-04-19 irina', '', '2017-04-19 irina', '2017-04-19 irina', '2017-04-23 web2net', 'Румб Плюс', 120, '', 'Y', '<p>&nbsp;Заправка d1043S - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(426, '2016-05-18 web2net', '', '', '', '', '', '2016-05-18 web2net', '', 'МясоМолПром', 183, '', 'Y', '<p> Заправка 49 - 1 шт</p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(427, '2016-05-19 web2net', '', '', '', '', '', '2016-05-19 web2net', '', 'Эдвансис', 68, '', 'Y', '<p> Заправка 78 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(428, '2016-05-19 web2net', '', '', '', '', '', '2016-05-19 web2net', '', 'Гильдия', 51, 'Л.Я.', 'Y', '<p> Заправка 78 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(429, '2016-05-19 web2net', '', '', '', '', '', '2016-05-19 web2net', '', 'Инкомантур', 93, '', 'Y', '<p> Заправка 05 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(430, '2016-05-19 web2net', '', '', '', '', '', '2016-05-19 web2net', '', 'Профсоюзы', 74, '', 'Y', '<p>Переустановка ОС + 1Гб DDR2</p>', 'ПК', 'Вероника', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(431, '2016-05-24 web2net', '', '', '', '', '', '2016-05-24 web2net', '', 'ХЗ', 204, '', 'Y', '<p> Заправка 131А (черн) - 1 шт.</p>\r\n<p>Заправка 131А (желт) - 1 шт.</p>\r\n<p>Заправка 131А (красн) - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(432, '2016-05-24 web2net', '', '2016-05-24 web2net', '2017-04-21 irina', '', '2017-04-21 irina', '2016-05-24 web2net', '', 'УкрДах', 89, '', 'Y', '<p> Заправка 85 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(433, '2016-05-26 web2net', '', '', '', '', '', '2016-05-26 web2net', '', 'Гринстоун', 92, '', 'Y', '<p> Заправка 719 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(434, '2016-05-26 web2net', '', '', '', '', '', '2016-05-26 web2net', '', 'Центус', 135, '', 'Y', '<p> Заправка 05 - 2 шт + барабаны - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(435, '2016-05-30 web2net', '', '2016-05-30 web2net', '', '', '', '2016-05-30 web2net', '', 'Перспектива', 76, '', 'Y', '<p> Заправка 80 - 1 шт.</p>\r\n<p>Заправка 05Х - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(436, '2016-05-30 web2net', '', '2016-05-30 web2net', '', '', '', '2016-05-30 web2net', '', 'МясоМолПром', 183, '', 'Y', '<p> Заправка 49- 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(437, '2016-05-30 web2net', '', '2016-05-30 web2net', '', '', '', '2016-05-30 web2net', '', 'Эдвансис', 68, '', 'Y', '<p> Заправка 78 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(438, '2016-05-30 web2net', '', '2017-02-25 alexkiev', '2017-02-25 alexkiev', '', '2017-02-25 alexkiev', '2017-02-25 alexkiev', '2017-02-25 alexkiev', 'Миоре', 0, '', 'Y', '<p>&nbsp;Заправка 85 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2016-05'),
(439, '2016-05-30 web2net', '', '2016-06-06 web2net', '', '', '', '2016-05-30 web2net', '', 'Эдвансис', 68, '', 'Y', '<p> Заправка 78 - 3 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(440, '2016-05-30 web2net', '', '2016-06-06 web2net', '', '', '', '2016-05-30 web2net', '', 'Гильдия', 51, '', 'Y', '<p> Заправка 725 - 1 шт. + барабан</p>\r\n<p>Заправка 05Х - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(441, '2016-05-30 web2net', '', '2016-06-06 web2net', '', '', '', '2016-05-30 web2net', '', 'МясоМолПром', 183, '', 'Y', '<p> Заправка - 49 - 1 шт.</p>\r\n<p>Заправка - 35 - 1 шт.</p>\r\n<p>Заправка - FC/PC - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-05'),
(442, '2016-06-06 web2net', '', '2016-06-06 web2net', '', '', '', '2016-06-06 web2net', '', 'Лансис', 71, '', 'Y', '<p> Заправка 78 - 1шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-06'),
(443, '2016-06-06 web2net', '', '2016-06-06 web2net', '2017-05-04 alex', '2017-05-04 alex', '2017-05-04 alex', '2016-06-06 web2net', '2017-05-04 alex', 'ABC 2000', 77, '', 'Y', '<p> Заправка 85 - 1 шт.</p>', 'Картридж', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'Y', 'Y', '2017-04-19 web2net', '2016-06'),
(444, '2016-06-09 web2net', '', '2017-02-15 ssergey', '2017-02-15 ssergey', '', '2017-02-15 ssergey', '2017-02-15 ssergey', '2017-02-17 alexkiev', 'Энергия 97', 0, '', 'Y', '<p>&nbsp;Замена термопленки</p>', 'Принтер НР LaserJet P2055', 'CNCJN74112', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2016-06'),
(445, '2016-06-09 web2net', '', '2017-02-15 ssergey', '2017-02-15 ssergey', '', '2017-02-15 ssergey', '2017-02-15 ssergey', '2017-02-17 alexkiev', 'Энергия 97', 0, '', 'Y', '<p>&nbsp;Заправка ЕР-27 - 1 шт. + барабан</p>\r\n<p>Заправка 708 - 1 шт.+ барабан</p>\r\n<p>Заправка 05 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2016-06'),
(446, '2016-06-13 web2net', '', '2016-06-13 web2net', '', '', '', '2016-06-13 web2net', '', 'КиевПромСервис', 112, '', 'Y', '<p> Заправка 728 - 1 шт.</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-06'),
(447, '2016-06-13 web2net', '', '2016-06-13 web2net', '', '', '', '2016-06-13 web2net', '', 'Гильдия', 51, '', 'Y', '<p> Заправка 05Х - 1 шт.</p>\r\n<p>Заправка 725 - 1 шт. + барабан</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-06'),
(448, '2016-06-13 web2net', '', '2016-06-13 web2net', '', '', '', '2016-06-13 web2net', '', 'Вип Декор', 80, '', 'Y', '<p> Заправка 05 - 1 шт</p>', 'Картридж', '', '', '', 'Y', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-06'),
(449, '2016-06-13 web2net', '', '', '', '', '', '', '', 'Гильдия', 51, '', 'N', '<p> Заправка 78 - 1шт</p>\r\n<p>Замена дозирующего 05 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-06'),
(450, '2016-06-16 web2net', '', '2016-06-16 web2net', '', '', '', '2016-06-16 web2net', '', 'Инкомантур', 93, '', 'Y', '<p> Заправка 05 - 1 шт.</p>', 'Картридж', '', '', '', 'Y', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-06'),
(451, '2016-06-24 web2net', '', '', '', '', '', '2016-06-24 web2net', '', 'Лансис', 71, '', 'Y', '<p> Заправка 78 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-06'),
(452, '2016-06-24 web2net', '', '', '', '', '', '2016-06-24 web2net', '', 'Гильдия', 51, '', 'Y', '<p> Заправка 725 - 1 шт.</p>\r\n<p>Заправка 05 - 1 шт. + дозирующее</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-06'),
(453, '2016-06-24 web2net', '', '', '', '', '', '2016-06-24 web2net', '', 'Перспектива', 76, '', 'Y', '<p> Заправка 05 - 2 шт.</p>\r\n<p>Заправка 80 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-06'),
(454, '2016-07-01 web2net', '', '', '', '', '', '2016-07-01 web2net', '', 'Ловекс', 62, '', 'Y', '<p> Заправка 85 - 1 шт.</p>\r\n<p>Заправка 728 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-07'),
(455, '2016-07-21 web2net', '', '2016-07-21 web2net', '2017-04-21 irina', '', '2017-04-21 irina', '2016-07-21 web2net', '2017-04-23 web2net', 'УкрДах', 89, '', 'Y', '<p> Заправка 737 - 1 шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-07'),
(456, '2016-08-11 web2net', '', '2016-08-11 web2net', '', '', '', '2016-08-11 web2net', '', 'Шабаш', 114, '', 'Y', '<p> Ремонт</p>', 'Принтер НР Р1005', '', '', '560 грн', 'Y', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-08'),
(457, '2016-08-23 web2net', '', '', '', '', '', '2016-08-23 web2net', '', 'Гильдия', 51, '', 'Y', '<p> Заправка 725 - 1 шт.</p>\r\n<p>Замена барабана 05 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-08'),
(458, '2016-08-23 web2net', '', '', '', '', '', '2016-08-23 web2net', '', 'Вип Декор', 80, '', 'Y', '<p>&nbsp;ТО + заправка картриджа</p>', 'Принтер Xerox WC 3119', 'BMA384392335', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-08'),
(459, '2016-08-29 web2net', '', '', '', '', '', '2016-09-02 web2net', '', 'Ловекс', 62, '', 'Y', '<p> Заправка 05 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-08'),
(460, '2016-08-29 web2net', '', '', '', '', '', '2016-09-02 web2net', '', 'Перспектива', 76, '', 'Y', '<p> Заправка 728 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-08'),
(461, '2016-08-29 web2net', '', '', '', '', '', '2016-09-02 web2net', '', 'Лансис', 71, '', 'Y', '<p> Заправка 78 - 1 шт. + барабан</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-08'),
(462, '2016-08-29 web2net', '', '', '', '', '', '2016-09-02 web2net', '', 'Поликлиника Русановка', 70, '', 'Y', '<p> Заправка 726 - 1 шт.</p>\r\n<p>Заправка FX10 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-08'),
(463, '2016-09-02 web2net', '', '', '', '', '', '2016-09-02 web2net', '', 'Гильдия', 51, '', 'Y', '<p> Заправка 85 - 1 шт.</p>\r\n<p>Заправка 725 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(464, '2016-09-02 web2net', '', '', '', '', '', '2016-09-02 web2net', '', 'Вип Декор', 80, '', 'Y', '<p> Заправка 05 - 1 шт</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(465, '2016-09-02 web2net', '', '', '', '', '', '2016-09-02 web2net', '', 'Компаньон', 67, '', 'Y', '<p> Заправка - 719Н - 1шт</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(466, '2016-09-02 web2net', '', '', '', '', '', '2016-09-02 web2net', '', 'Гринстоун', 92, '', 'Y', '<p> Заправка 05 - 1шт</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(467, '2016-09-02 web2net', '', '', '', '', '', '2016-09-02 web2net', '', 'ХЗ', 204, '', 'Y', '<p> Заправка 05 - 1 шт</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(468, '2016-09-02 web2net', '', '', '', '', '', '2016-09-02 web2net', '', 'Поликлиника Русановка', 70, '', 'Y', '<p> Заправка 726 - 1 шт</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(469, '2016-09-02 web2net', '', '', '', '', '', '2016-09-02 web2net', '', 'Ловекс', 62, '', 'Y', '<p> Заправка 85 - 1 шт</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(470, '2016-09-02 web2net', '', '', '', '', '', '2016-09-02 web2net', '', 'Перспектива', 76, '', 'Y', '<p> Заправка 85 - 2 шт + 1 барабан</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(471, '2016-09-02 web2net', '', '', '', '', '', '2016-09-02 web2net', '', 'МясоМолПром', 183, '', 'Y', '<p>Заправка 49 - 1 шт</p>\r\n<p>Заправка FC/PC - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(472, '2016-09-08 web2net', '', '', '', '', '', '2016-09-08 web2net', '', 'Ловекс', 62, '', 'Y', '<p> Заправка 737 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(473, '2016-09-13 web2net', '', '', '', '', '', '2016-09-13 web2net', '', 'Инкомантур', 93, '', 'Y', '<p>Заправка 05 - 2 шт.</p>\r\n<p>Заправка 12 - 1 шт.</p>\r\n<p>Заправка 35 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(474, '2016-09-13 web2net', '', '', '', '', '', '2016-09-15 web2net', '', 'ХЗ', 204, '', 'Y', '<p>Заправка 78 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(475, '2016-09-15 web2net', '', '', '', '', '', '2016-09-15 web2net', '', 'Ловекс', 62, '', 'Y', '<p> Заправка 05 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(476, '2016-09-15 web2net', '', '2016-09-15 web2net', '2017-04-21 irina', '', '2017-04-21 irina', '2016-09-15 web2net', '2017-04-23 web2net', 'УкрДах', 89, '', 'Y', '<p>Заправка 85 - 2 шт.</p>', 'Картриджи', '', '', 'Выставить отдельным счетом новые 85 картриджи - 2 шт.\r\nПередать доки:\r\nсч.10 от 21.01.16\r\nсч.77 от 01.04.16\r\nсч.95 от 11.04.16', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(477, '2016-09-16 web2net', '', '', '2017-04-21 irina', '', '2017-04-21 irina', '2016-09-16 web2net', '', 'СПЗ-Групп', 79, '', 'Y', '<p>Заправка 78 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(478, '2016-09-16 web2net', '', '', '', '', '', '2016-09-16 web2net', '', 'Эдвансис', 68, '', 'Y', '<p>Заправка 78 - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(479, '2016-09-16 web2net', '', '', '', '', '', '2016-09-16 web2net', '', 'Лансис', 71, '', 'Y', '<p> Заправка 78 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(480, '2016-09-16 web2net', '', '', '', '', '', '2016-09-16 web2net', '', 'Вип Декор', 80, '', 'Y', '<p>Заправка D104S - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(481, '2016-09-16 web2net', '', '', '', '', '', '2016-09-16 web2net', '', 'Ловекс', 62, '', 'Y', '<p>Заправка 78 - 1 шт. + барабан</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(482, '2016-09-22 web2net', '', '', '', '', '', '2016-09-22 web2net', '', 'Гильдия', 51, '', 'Y', '<p> Заправка 725 - 4 шт.</p>\r\n<p>Заправка 12 - 1 шт.</p>\r\n<p>Заправка 78 - 1 шт. </p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(483, '2016-09-27 web2net', '', '2016-09-27 web2net', '', '', '', '2016-09-27 web2net', '', 'Зевс', 113, '', 'Y', '<p> Заправка FX-10 - 1 шт. </p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-09'),
(484, '2016-09-28 web2net', '', '2017-02-16 alexkiev', '2017-02-16 alexkiev', '', '2017-02-16 alexkiev', '2017-02-16 alexkiev', '2017-02-16 alexkiev', 'Гильдия', 51, '', 'Y', '<p> Заправка 05х - 2 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'N', '', '2016-09'),
(485, '2016-09-28 web2net', '', '', '', '2017-03-23 web2net', '', '2016-09-28 web2net', '', 'Ловекс', 62, '', 'Y', '<p>Заправка 703 - 1шт.</p>\r\n<p>Заправка 737 - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'Y', 'Y', '2017-04-19 web2net', '2016-09'),
(486, '2016-11-01 web2net', '', '2016-11-10 web2net', '', '', '', '2016-11-10 web2net', '', 'КиевПромСервис', 112, '', 'Y', '<p> Заправка 728 - 1шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-11'),
(487, '2016-11-01 web2net', '', '2016-11-10 web2net', '2017-04-21 irina', '', '2017-04-21 irina', '2016-11-10 web2net', '2017-04-23 web2net', 'СПЗ-Групп', 79, '', 'Y', '<p> Заправка 78 -1шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-11'),
(488, '2016-11-01 web2net', '', '2017-03-31 irina', '2017-03-31 irina', '', '2017-03-31 irina', '2017-03-31 irina', '2017-04-23 web2net', 'Вип Декор', 80, '', 'Y', '<p> Заправка херокс, ХЗ какой - непомню</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '', 'N', 'Y', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-11'),
(489, '2016-11-10 web2net', '', '', '', '', '', '2017-03-27 irina', '', 'СитиСайт', 111, '', 'Y', '<p> Заправка Xerox 3210/3220 - 1шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '122 от 22.03.17', 'N', 'web2net', '', 'N', 'N', 'N', 'N', 'Y', '2017-04-19 web2net', '2016-11'),
(490, '2016-12-29 web2net', '', '2017-01-27 alexkiev', '', '', '2017-01-27 ssergey', '2017-01-27 alexkiev', '2017-02-07 alexkiev', 'Пупок', 0, '', 'Y', '<p>&nbsp;Замена клавиатуры</p>', 'Ноутбук HP Compaq nc6400', 'CND6470MXR', '', 'клава - 392 грн в закупке', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2016-12'),
(491, '2016-12-30 web2net', '', '2016-12-30 web2net', '', '', '2017-01-27 alexkiev', '2016-12-30 web2net', '2017-02-07 alexkiev', 'LнепроЛаб', 0, 'Мухина', 'Y', '<p>&nbsp;Заправка 53 - 1шт.</p>\r\n<p>заправка 05 - 1 шт.</p>\r\n<p>какой-то тонкий) - 1 шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '', 'Y', 'Y', 'N', 'N', 'N', '', '2016-12'),
(492, '2017-01-30 ssergey', '', '2017-04-27 alex', '2017-04-05 irina', '', '2017-04-27 alex', '2017-04-05 irina', '2017-04-27 alex', 'Будмир', 86, '', 'Y', '', 'картриджи', '', '<p>заправка canon 737 -3шт, 728 - 3шт, восст 737 - 1 шт</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-01'),
(493, '2017-01-30 ssergey', '', '2017-04-25 web2net', '2017-02-17 irina', '', '2017-02-17 alexkiev', '2017-02-01 ssergey', '2017-04-27 alex', 'Униполис', 110, '', 'Y', '<p> Поменять дозир</p>', 'картр', '', '<p> Карт 12А-1шт ремонт</p>', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-01'),
(494, '2017-01-30 ssergey', '', '2017-01-31 alexkiev', '2017-02-17 irina', '', '2017-02-17 alexkiev', '2017-01-31 alexkiev', '2017-04-20 alex', 'униполис', 110, '', 'Y', '', 'картр', '', '<p> Заправки</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'ssergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-01'),
(495, '2017-01-30 ssergey', '', '2017-02-17 alexkiev', '2017-02-17 alexkiev', '', '2017-02-17 alexkiev', '2017-02-17 alexkiev', '2017-02-17 alexkiev', 'ТОВ Укрпромвпровадження', 0, '', 'Y', '<p>&nbsp;<span style=\\\"\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;line-height:\\\\\\\\&quot;\\\\&quot;\\\">&nbsp;Заправка HP 85A - 2шт, HP 15A - 2шт, HP 12A - 1шт, Canon 737 - 1шт, Xerox 3117 - 1шт,&nbsp;ремонт картриджа Hp 12A (корона) - 1шт, ремонт принтера Samsung - 460 грн.</span></p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-01');
INSERT INTO `works` (`id`, `date_create`, `date_prioritet`, `date_otgryzka`, `date_doc`, `date_srochno`, `date_pay`, `date_zdelano`, `date_archiv`, `client`, `client_id`, `data_client`, `zdelano`, `content`, `divice`, `sn`, `neispravnost`, `note`, `viezd`, `otgryzka`, `doc`, `number_bill`, `pay`, `ingener`, `responsible_ingener`, `nal`, `archiv`, `prioritet`, `srochno`, `trash`, `date_trash`, `month_create`) VALUES
(496, '2017-02-01 ssergey', '', '2017-03-09 irina', '2017-03-09 irina', '', '2017-03-20 rsergey', '2017-03-09 irina', '2017-04-20 alex', 'УКРшпон', 137, '', 'Y', '<p>Т/О ЕР1054 - 360грн, запр</p>', '', '', '', '', 'Y', 'Y', 'Y', '61 от 17.02.17', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(497, '2017-02-01 ssergey', '', '2017-02-02 alexkiev', '', '', '2017-02-02 alexkiev', '2017-02-02 alexkiev', '2017-02-07 alexkiev', 'Пуховская', 0, '', 'Y', '<p>запр 35А-2шт х150</p>\r\n<p>т/о НР1200-200грн</p>\r\n<p>&nbsp;</p>', '', '', '<p>картриджи</p>', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(498, '2017-02-01 ssergey', '', '2017-03-08 alexkiev', '2017-03-08 alexkiev', '', '2017-03-08 alexkiev', '2017-03-08 alexkiev', '2017-04-20 alex', 'Глобал Мани', 52, '', 'Y', '<p>запр 05А-1 165грн, 05Х-1 330грн, FX10-1 165грн, Canon 728-2 150грн</p>', 'картр', '', '<p>запр</p>', '', 'Y', 'Y', 'Y', '32 від 02.02.17 р', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(499, '2017-02-01 ssergey', '', '2017-02-02 alexkiev', '2017-02-24 rsergey', '', '2017-02-20 rsergey', '2017-02-02 alexkiev', '2017-04-20 alex', 'Гмыри 13', 225, '', 'Y', '<p>СЧет не выставляем</p>', '', '', '<p>bizhub 163 черная полоса</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(500, '2017-02-01 ssergey', '', '2017-02-02 alexkiev', '2017-02-02 alexkiev', '', '2017-02-06 alexkiev', '2017-02-02 alexkiev', '2017-02-07 alexkiev', 'Скифойл', 0, '', 'Y', '', 'картриджи', '', '<p>запр 719 -1 165грн, восст 12А-1 - 180грн</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'ssergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(501, '2017-02-01 ssergey', '', '2017-02-16 rsergey', '', '', '2017-02-16 rsergey', '2017-02-16 rsergey', '2017-02-17 alexkiev', 'Авторынок', 0, '', 'Y', '<p>&nbsp;заправки</p>', 'картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(502, '2017-02-01 ssergey', '', '2017-02-02 alexkiev', '', '', '2017-02-02 alexkiev', '2017-02-02 alexkiev', '2017-02-07 alexkiev', 'Флеш', 0, '', 'Y', '', 'картр Sams 1861', '', '<p>заправка</p>', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(503, '2017-02-01 ssergey', '2017-05-12 alex', '2017-04-25 web2net', '', '', '', '', '', 'ЭмБиГруп', 109, '', 'N', '', '', '', '', '', 'Y', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'Y', 'N', 'N', '', '2017-02'),
(504, '2017-02-01 ssergey', '', '2017-02-05 rsergey', '2017-02-17 irina', '', '2017-02-24 rsergey', '2017-02-05 rsergey', '2017-04-20 alex', 'Гарант-АСІСТАНС', 55, '', 'Y', '<p> договор</p>', '', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(505, '2017-02-01 ssergey', '', '2017-02-02 alexkiev', '', '', '2017-02-02 alexkiev', '2017-02-02 alexkiev', '2017-02-07 alexkiev', 'Школа №238', 0, '', 'Y', '<p>картр М 1480</p>', 'картр М 1480', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(506, '2017-02-01 ssergey', '', '2017-02-16 rsergey', '2017-02-16 rsergey', '', '2017-02-16 rsergey', '2017-02-16 rsergey', '2017-02-17 alexkiev', 'Пилон', 0, '', 'Y', '', 'картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'ssergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(507, '2017-02-13 ssergey', '2017-05-12 alex', '2017-04-25 web2net', '', '2017-03-29 rsergey', '', '2017-03-08 alexkiev', '', 'Иститут Физхимии', 108, '', 'Y', '', 'В163', '', '<p> Т/о 360 грн+ Ракль 1шт ди 152 282грн</p>\r\n<p>договор казначейство</p>', '', 'Y', 'N', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'Y', 'Y', 'N', '', '2017-02'),
(508, '2017-02-01 ssergey', '', '2017-02-07 rsergey', '', '', '2017-02-07 rsergey', '2017-02-07 rsergey', '2017-02-07 alexkiev', 'Магнитогорская 1', 0, '', 'Y', '', 'Samsung SCX-4824', '', '<p>поменять печку</p>', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(509, '2017-02-01 ssergey', '', '2017-02-02 alexkiev', '', '', '2017-02-02 alexkiev', '2017-02-02 alexkiev', '2017-02-07 alexkiev', 'Лесной массив', 0, '', 'Y', '', 'Bzhub 215', '', '<p>поставить дуплекс</p>', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(510, '2017-02-02 alexkiev', '', '2017-02-06 rsergey', '2017-02-02 alexkiev', '', '2017-02-06 alexkiev', '2017-02-02 alexkiev', '2017-02-07 alexkiev', 'Глобал Мани', 0, '', 'Y', '<p>запр 05Х-1 330грн</p>\r\n<p>счет выставили</p>', '05Х-1 330грн', '', '<p>запр</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(511, '2017-02-02 alexkiev', '', '2017-04-27 alex', '2017-04-11 irina', '2017-04-04 rsergey', '2017-04-27 alex', '2017-04-11 irina', '2017-04-27 alex', 'Яросвит Бровары ШФ обувь', 226, '', 'Y', '', 'B 215', '', '<p>Т/о  480 грн+ 2 Колари- 160грн, тонер TN-118 - 750 грн</p>', 'ТОВ ЯРОСВІТ \r\nкод 30839754\r\n3653@ukr.net', 'Y', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(1047, '2017-04-22 alex', '', '2017-05-04 alex', '', '2017-05-18 alex', '', '2017-04-22 alex', '', 'Поликлиника Русановка (неотложка)', 241, '', 'Y', 'Запр 725', 'Картридж ', '', '', '', 'Y', 'Y', 'N', '', 'N', 'alex', '2017-04-22 alex', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(1048, '2017-04-22 alex', '2017-04-25 web2net', '2017-04-25 web2net', '', '', '', '2017-04-22 alex', '', 'БМГ', 208, '', 'Y', 'Тонер TN116', 'Bizhub 185', '', '', '', 'Y', 'Y', 'N', '', 'N', 'alex', '2017-04-22 alex', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(512, '2017-02-03 alexkiev', '', '2017-02-28 alexkiev', '2017-03-02 irina', '', '2017-02-28 alexkiev', '2017-02-28 alexkiev', '2017-04-20 alex', 'дарн профсп', 227, '', 'Y', '<p>запр ЕР27-1, 285-1, 7115А-1+ восст+дозир</p>', 'картр', '', '', '', 'Y', 'Y', 'Y', '84 від 27.02.2017', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(513, '2017-02-03 alexkiev', '', '2017-02-03 alexkiev', '', '', '2017-02-03 alexkiev', '2017-02-03 alexkiev', '2017-02-07 alexkiev', 'Школа 315', 0, '', 'Y', '<p>запр 35А</p>', 'картр', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(514, '2017-02-03 alexkiev', '', '2017-02-03 alexkiev', '', '', '2017-02-03 alexkiev', '2017-02-03 alexkiev', '2017-02-07 alexkiev', 'нотар бориспольская', 0, '', 'Y', '<p>запр 1100-150грн, барабан 160грн+корона 60грн, запр 1200 150грн</p>', 'картр', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(515, '2017-02-05 rsergey', '', '2017-02-16 alexkiev', '', '', '2017-02-16 alexkiev', '2017-02-16 alexkiev', '2017-02-17 alexkiev', 'школа №19', 0, '', 'Y', '', '', '', '<p>&nbsp;шнур hdmi &nbsp;барабан 1005 заправка</p>\r\n<p>1005 .чип. ноут. комп.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(516, '2017-02-05 rsergey', '', '2017-02-05 rsergey', '', '', '2017-02-16 rsergey', '2017-02-05 rsergey', '2017-02-17 alexkiev', 'рома большевик', 0, '', 'Y', '', '', '', '<p>&nbsp;Samsung</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(517, '2017-02-06 ssergey', '', '2017-02-13 rsergey', '2017-02-17 alexkiev', '', '2017-02-17 alexkiev', '2017-02-06 ssergey', '2017-02-17 alexkiev', 'ТОВ Укрпромвпровадження', 0, '', 'Y', '<p>&nbsp;заправка HP 85A - 1шт, HP 15A - 2шт, восстановление HP 15A - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(518, '2017-02-06 ssergey', '', '2017-02-06 ssergey', '', '', '2017-02-06 ssergey', '2017-02-06 ssergey', '2017-02-07 alexkiev', 'Роман Терминал', 0, '', 'Y', '<p>заправка HP 12A - 7шт по 90 грн = 630 грн, HP 35A - 1шт - 90 грн, Canon FC/PC - 1шт - 100 грн, барабан HP 12A - 2шт по 120грн = 240грн, корона НР12А - 1шт - 90 грн, МФУ Samsung 4200 - 2950 грн. Общая сумма - 4100 грн</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(519, '2017-02-06 ssergey', '', '2017-03-09 irina', '2017-03-09 irina', '', '2017-03-20 alexkiev', '2017-03-09 irina', '2017-04-20 alex', 'Вторресурси', 141, '', 'Y', '<p> ремонт узла закрепления НР1102W Black -1280грн</p>\r\n<p>ремонт принтера Minolta PP1350E - 480грн</p>\r\n<p><span style=\\\\\\\"\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\"line-height:\\\\\\\\\\\"\\\\\\\">замена дозирующего лезвия - canon 725</span></p>', 'Minolta PP1350E, НР1102W Black', '', '<p> Замятие в печке Minolta PP1350E,</p>\r\n<p>подрано все в печке(((( НР1102W</p>\r\n<p>картридж canon 725 - сыпет тонер</p>', '', 'N', 'Y', 'Y', '54 от 13.02.17', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(520, '2017-02-06 rsergey', '', '2017-02-07 rsergey', '', '', '2017-02-07 rsergey', '2017-02-07 rsergey', '2017-02-07 alexkiev', ' Москаленко 950', 0, '', 'Y', '', '', '', '<p>&nbsp;Нить корони +т/о</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(521, '2017-02-06 rsergey', '', '2017-02-07 rsergey', '', '', '2017-02-07 rsergey', '2017-02-07 rsergey', '2017-02-07 alexkiev', 'Жукова 163 ', 0, '', 'Y', '', '', '', '<p>&nbsp;Т/О</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(522, '2017-02-06 rsergey', '', '2017-02-08 rsergey', '', '', '2017-04-03 rsergey', '2017-02-07 ssergey', '2017-04-22 alex', 'Визави', 84, '', 'Y', '', '', '', '<p> Доки</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(523, '2017-02-06 rsergey', '', '2017-02-07 rsergey', '', '', '2017-04-18 rsergey', '2017-02-07 rsergey', '2017-04-22 alex', 'Радунская', 228, '', 'Y', '', '', '', '<p> Самсун2070.чип</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(524, '2017-02-06 alexkiev', '', '2017-04-03 irina', '2017-04-03 irina', '', '2017-04-03 irina', '2017-04-03 irina', '2017-04-20 alex', 'Градекс', 106, '', 'Y', '<p>запр Samsung 203</p>', 'картридж Sams', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(525, '2017-02-06 alexkiev', '', '2017-05-12 alex', '2017-03-27 irina', '', '2017-05-12 alex', '2017-03-27 irina', '2017-05-12 alex', 'Ловекс', 62, '', 'Y', '<p>запр 285-1, запр 737-1, запр 05А</p>', 'картр', '', '<p>карт</p>', '', 'N', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(526, '2017-02-06 rsergey', '', '2017-02-13 rsergey', '2017-02-16 rsergey', '', '2017-02-16 alexkiev', '2017-02-07 rsergey', '2017-02-17 alexkiev', 'УКРшпон', 0, '', 'Y', '', '', '', '<p>&nbsp;Завести картриджи +новие</p>', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(527, '2017-02-06 rsergey', '', '2017-02-10 ssergey', '2017-02-10 ssergey', '', '2017-02-10 ssergey', '2017-02-10 ssergey', '2017-02-10 alexkiev', 'Школа №19', 0, '', 'Y', '', '', '', '<p>&nbsp;Завести ноут+Картриджи</p>', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(528, '2017-02-06 rsergey', '', '2017-02-27 rsergey', '2017-02-27 rsergey', '', '2017-02-27 rsergey', '2017-02-27 rsergey', '2017-03-08 alexkiev', 'Впровадження ', 0, '', 'Y', '', '', '', '<p>&nbsp;Монитор ремонт</p>', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(529, '2017-02-06 rsergey', '', '2017-03-13 rsergey', '2017-03-13 rsergey', '', '2017-03-13 rsergey', '2017-03-13 rsergey', '2017-04-20 alex', 'Скифоил', 83, '', 'Y', '', '', '', '<p> Договор</p>', '', 'N', 'Y', 'Y', 'Сбросила Саше', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(530, '2017-02-06 rsergey', '', '2017-04-27 alex', '2017-03-29 rsergey', '', '2017-04-27 alex', '2017-03-29 rsergey', '2017-04-27 alex', 'О О Н', 105, '', 'Y', '', '', '', '<p> ФАКС ремонт</p>', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(531, '2017-02-06 rsergey', '', '2017-04-28 rsergey', '2017-04-07 irina', '', '2017-04-28 rsergey', '2017-04-07 irina', '2017-05-05 alex', 'Больница №10', 91, '', 'Y', '<p> РЕМОНТ XEROX 3100 -780 грн</p>', 'XEROX 3100', '', '<p> Т/О</p>', '', 'N', 'Y', 'Y', '49 от 08.02.17', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(534, '2017-02-07 alexkiev', '', '2017-03-09 irina', '2017-03-09 irina', '', '2017-03-30 alexkiev', '2017-03-09 irina', '2017-04-20 alex', 'Долфи', 104, '', 'Y', '<p>завезли тонер</p>', 'B185', '', '<p>тонер</p>', '', 'Y', 'Y', 'Y', '43 від 07.02.17', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(535, '2017-02-07 alexkiev', '', '2017-02-25 alexkiev', '', '', '2017-02-25 alexkiev', '2017-02-25 alexkiev', '2017-02-25 alexkiev', 'Инстит спорт травматологии', 0, '', 'Y', '<p>&nbsp;Т/О</p>', 'Canon 6512', '', '<p>перереодически пол листа изображения</p>', '', 'N', 'Y', 'N', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(536, '2017-02-07 alexkiev', '', '2017-05-12 alex', '2017-03-02 irina', '', '2017-05-12 alex', '2017-02-15 ssergey', '2017-05-13 alex', 'Гильдия', 51, '', 'Y', '<p> НР 05Х - 1шт, HP 78A - 1шт</p>\r\n<p>НР 85А - 2шт, НР 78А - 1шт, Canon 725 - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(537, '2017-02-07 ssergey', '', '2017-02-27 alexkiev', '2017-03-02 irina', '', '2017-02-27 alexkiev', '2017-02-27 alexkiev', '2017-04-20 alex', 'Энергия', 94, '', 'Y', '<p> Ремонт  1780грн</p>\r\n<p>термопленка, шестерни, смазка, ролик</p>', 'canon lbp 3300 принтер лазерный', '', '<p> замятие в печке</p>', '', 'N', 'Y', 'Y', '79 від 24.02.2017р', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(538, '2017-02-07 ssergey', '', '2017-03-03 alexkiev', '2017-03-03 alexkiev', '', '2017-03-03 alexkiev', '2017-03-03 alexkiev', '2017-02-25 alexkiev', 'Укршпон', 0, '', 'Y', '<p>Заправки: НР 05А - 1шт, Canon 719 - 1шт, НР 53А - 1шт, НР 12А - 1шт, НР 36А - 1шт, НР 15А - 1шт, НР 83А - 2шт, НР 78А - 1шт, НР СВ542А - 1шт</p>\r\n<p>Восстановление: НР 05А - 1шт, НР 36А - 1шт, 15А (барабан + ракель) - 1шт, Canon 719 (ракель + дозирующее лезвие) - 1шт</p>\r\n<p>Ремонт картриджа: НР 12А - дозирующее лезвие - 1шт . 85А - 1шт. &nbsp;барабан 85а- 1шт.</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '61 від 21.02.17', 'Y', 'ssergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(539, '2017-02-07 ssergey', '', '2017-02-07 ssergey', '2017-02-17 irina', '', '2017-02-17 alexkiev', '2017-02-07 ssergey', '2017-02-25 alexkiev', 'Укрдах', 0, '', 'Y', '<p>&nbsp;заправка НР 85А - 2шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(540, '2017-02-07 alexkiev', '', '2017-04-11 irina', '2017-04-11 irina', '', '2017-04-21 irina', '2017-04-11 irina', '2017-04-22 alex', 'МЦ МК (Моя клиника)', 190, '', 'Y', '<p>ТО(ремонт)</p>\r\n<p>ноут - 680грн</p>\r\n<p>ПК - 680грн</p>\r\n<p>запр карт Canon 712</p>\r\n<p> </p>', ' ноуты + ПК, картр', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(541, '2017-02-07 alexkiev', '', '2017-02-07 alexkiev', '2017-02-17 irina', '', '2017-02-07 alexkiev', '2017-02-07 alexkiev', '2017-02-25 alexkiev', 'Орион', 0, '', 'Y', '<p>завезли</p>', 'картр', '', '<p>New Canon 737</p>\r\n<p>&nbsp;</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(542, '2017-02-07 alexkiev', '', '2017-05-12 alex', '2017-02-17 irina', '', '2017-05-12 alex', '2017-02-07 rsergey', '2017-05-13 alex', 'Орион', 103, '', 'Y', '<p> запр 78а-1шт. 737-1шт.</p>', 'картр', '', '<p>запр</p>', '', 'N', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(543, '2017-02-07 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-05-12 alex', '', 'Повитруля', 102, '', 'Y', '', '', '', '', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'Y', 'N', 'N', 'N', 'Y', '2017-05-12 alex', '2017-02'),
(544, '2017-02-07 ssergey', '', '2017-02-25 alexkiev', '2017-02-25 alexkiev', '', '2017-02-25 alexkiev', '2017-02-25 alexkiev', '2017-02-25 alexkiev', 'Днипролаб', 66, '', 'Y', '<p> Заправка НР 85А - 4шт, НР 35А - 1шт, НР 12А - 1шт, canon 703 - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(545, '2017-02-07 rsergey', '', '2017-02-21 rsergey', '2017-02-21 rsergey', '', '2017-02-21 rsergey', '2017-02-21 rsergey', '2017-02-25 alexkiev', 'УКРшпон', 0, '230-69-32', 'Y', '', '217а ', '', '<p>&nbsp; новий</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(546, '2017-02-07 rsergey', '2017-05-13 alex', '2017-05-19 rsergey', '2017-05-17 irina', '2017-03-29 rsergey', '', '2017-04-11 alexkiev', '', 'Школа №18', 54, '', 'Y', '', '', '', '   КМА 215 -тонер.ТN-118  750грн   ДОговор казначейство', '', 'Y', 'Y', 'Y', '', 'N', 'rsergey', '2017-04-20 rsergey', 'N', 'N', 'Y', 'N', 'N', '', '2017-02'),
(547, '2017-02-07 rsergey', '', '2017-02-08 rsergey', '', '', '2017-02-16 rsergey', '2017-02-08 rsergey', '2017-02-17 alexkiev', 'Запорожца -215', 0, '', 'Y', '', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(548, '2017-02-07 rsergey', '', '2017-03-07 irina', '2017-03-10 rsergey', '', '2017-03-20 rsergey', '2017-03-07 irina', '2017-04-20 alex', 'Экосфера', 100, '', 'Y', '', '215', '', '<p>Барабан +ракель +Ролики 2шт +т/о 1482 грн</p>', '', 'Y', 'Y', 'Y', '93 від 07.03.17', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(549, '2017-02-08 rsergey', '', '2017-03-20 rsergey', '2017-03-20 rsergey', '', '2017-03-20 rsergey', '2017-03-20 rsergey', '2017-04-20 alex', 'Визави', 84, '', 'Y', '<p> Запр. кенон 4450 - 1шт</p>', '', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(550, '2017-02-08 rsergey', '', '2017-02-10 rsergey', '2017-03-10 rsergey', '', '2017-03-20 rsergey', '2017-02-10 rsergey', '2017-04-20 alex', 'Политара', 85, '', 'Y', '<p> <span style=\\\\\\\"line-height: 14.3px;\\\\\\\"> Заправка НР 80А 2щт Дозир.лезвие 1шт.HP1102 -заправка 1щт</span></p>', 'картридж', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(551, '2017-02-08 rsergey', '', '2017-02-08 rsergey', '2017-02-17 irina', '', '2017-02-20 alexkiev', '2017-02-08 rsergey', '2017-02-25 alexkiev', 'ПИлон', 0, '', 'Y', '', '', '', '<p>&nbsp;ЗАпр 05а &nbsp;1шт 53а 1шт. 05Х 1шт . БАРАБАН БРАЗЕР 1шт Дозирущее лезвие 1шт.</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(552, '2017-02-08 rsergey', '', '2017-02-08 rsergey', '', '', '2017-02-08 rsergey', '2017-02-08 rsergey', '2017-02-17 alexkiev', 'Гимназия №315', 0, '', 'Y', '', '', '', '<p>&nbsp;ТН-116</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(553, '2017-02-09 ssergey', '', '2017-04-25 web2net', '2017-03-27 irina', '', '2017-05-12 alex', '2017-03-27 irina', '2017-05-12 alex', 'Компаньон', 67, '', 'Y', '<p> ремонт карт Canon 719 -1шт 160грн (дозирующее лезвие)</p>', 'картридж', '', '', '', 'N', 'Y', 'Y', '150 от 27.03.17', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(554, '2017-02-09 ssergey', '', '2017-05-12 alex', '2017-03-09 irina', '', '2017-05-12 alex', '2017-03-09 irina', '2017-05-12 alex', 'Инкомантур', 93, '', 'Y', '<p> заправки xerox 3117 - 1шт, НР 05А - 1шт, НР 35А - 1шт, восстановление НР 05А (Дозирующее+корона) - 1шт, ремонт картриджа НР 05А (корона) - 1шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '48 от 08.02.17', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(555, '2017-02-09 ssergey', '', '2017-02-13 alexkiev', '2017-02-17 irina', '', '2017-02-25 alexkiev', '2017-02-09 ssergey', '2017-02-25 alexkiev', 'Поликлиника Русановка', 70, '', 'Y', '<p> заправка НР 12А - 1шт, Canon 726 - 1шт, ремонт картриджа НР 12А (дозирующее) - 1шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(556, '2017-02-10 rsergey', '', '2017-02-10 rsergey', '2017-03-10 rsergey', '', '2017-03-20 rsergey', '2017-02-10 rsergey', '2017-04-20 alex', 'Визави', 84, '', 'Y', '<p> Кенон 5980 Заправка (719)  1щт +Востановление 1 шт</p>', 'КАртриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(557, '2017-02-10 rsergey', '', '2017-02-10 rsergey', '', '', '2017-02-10 rsergey', '2017-02-10 rsergey', '2017-02-17 alexkiev', 'Визави.', 0, '', 'Y', '', 'КАртриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(558, '2017-02-10 rsergey', '', '2017-04-27 alex', '2017-04-27 alex', '', '2017-04-27 alex', '2017-02-15 alexkiev', '2017-04-27 alex', 'Ловекс', 62, '', 'Y', '', 'bizhub 185', '', '<p>Пищит</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-02'),
(559, '2017-02-10 ssergey', '', '2017-05-13 alex', '2017-03-09 irina', '', '2017-05-13 alex', '2017-03-09 irina', '2017-05-13 alex', 'Нотариус Кияшко', 73, '', 'Y', '<p>Заправка Canon 728 - 3шт</p>', 'картриджи', '', '', '', 'Y', 'Y', 'Y', '65 від 17.02.17', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(560, '2017-02-13 alexkiev', '', '2017-04-25 web2net', '2017-05-12 alex', '', '2017-04-28 alex', '2017-03-09 irina', '2017-05-12 alex', 'Энергия', 94, '', 'Y', '<p>В заявке 579</p>', 'картриджи', '', '<p>заправки</p>', '', 'N', 'Y', 'Y', '79 от 24.02.17', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(561, '2017-02-13 rsergey', '', '2017-03-24 alexkiev', '2017-03-24 alexkiev', '', '2017-03-24 alexkiev', '2017-03-24 alexkiev', '2017-04-20 alex', 'Тепличный (Бровары)', 220, '', 'Y', '', 'ЕП 1054', '', '<p> Т/О 460грн.</p>', '', 'Y', 'Y', 'Y', 'См. заявку 861', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(562, '2017-02-13 rsergey', '', '2017-02-24 rsergey', '2017-02-24 rsergey', '', '2017-02-24 rsergey', '2017-02-24 rsergey', '2017-02-25 alexkiev', 'Писаржевского', 0, '', 'Y', '<p>&nbsp;Т/О +Ракель</p>', '163', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(563, '2017-02-13 alexkiev', '', '2017-04-11 irina', '2017-04-11 irina', '', '2017-04-21 irina', '2017-04-11 irina', '2017-04-22 alex', 'МЦ МК (Моя клиника)', 190, '', 'Y', '<p>запр Canon728</p>', 'картр', '', '<p>заправка</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(564, '2017-02-13 rsergey', '', '2017-04-28 rsergey', '2017-04-28 rsergey', '', '2017-04-28 rsergey', '2017-04-11 irina', '2017-05-05 alex', 'Яросвит Бровары ШФ обувь', 226, '', 'Y', '<p> Т/О +1шт Колар</p>', '215', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(565, '2017-02-13 rsergey', '', '2017-02-16 rsergey', '2017-02-16 rsergey', '', '2017-02-16 rsergey', '2017-02-16 rsergey', '2017-02-17 alexkiev', 'Леша Терминал', 0, '', 'Y', '', 'Картриди', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(566, '2017-02-13 rsergey', '', '2017-02-20 rsergey', '', '', '2017-02-20 rsergey', '2017-02-14 rsergey', '2017-02-25 alexkiev', 'РОМА Бровари', 0, '', 'Y', '', 'КАРТРИДЖИ', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(567, '2017-02-13 rsergey', '', '2017-02-14 rsergey', '2017-02-23 rsergey', '', '2017-02-21 alexkiev', '2017-02-14 rsergey', '2017-02-25 alexkiev', 'Молочна Слобода', 0, '', 'Y', '', '283', '', '<p>&nbsp;ТN -217 4шт</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(568, '2017-02-13 rsergey', '', '2017-02-14 rsergey', '', '', '2017-02-14 rsergey', '2017-02-14 rsergey', '2017-02-17 alexkiev', 'Днепровска База ', 0, '', 'Y', '', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(569, '2017-02-13 rsergey', '', '2017-02-14 rsergey', '', '', '2017-02-14 rsergey', '2017-02-14 rsergey', '2017-02-17 alexkiev', 'Днепровска База ', 0, '', 'Y', '<p>&nbsp;Запр 3шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(570, '2017-02-13 rsergey', '', '2017-02-14 rsergey', '', '', '2017-03-20 rsergey', '2017-02-14 rsergey', '2017-04-22 alex', 'Школа №80', 97, '', 'Y', '<p> Запр 1010    Чип 3025</p>', 'картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(571, '2017-02-13 alexkiev', '', '2017-05-24 alex', '2017-03-02 irina', '', '2017-05-24 alex', '2017-02-13 alexkiev', '2017-05-24 alex', 'Лансис', 71, '', 'Y', '<p>запр 278</p>', 'картр', '', '<p>запр 278</p>', '', 'N', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(572, '2017-02-13 alexkiev', '', '2017-02-13 alexkiev', '2017-03-02 irina', '', '2017-03-02 irina', '2017-02-13 alexkiev', '2017-04-20 alex', 'Эдвансис', 68, '', 'Y', '', 'картриджи', '', '<p>запр НР 5225С</p>\r\n<p>запр НР 5225Y</p>', '', 'N', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(573, '2017-02-13 alexkiev', '', '2017-02-25 alexkiev', '2017-03-02 irina', '', '2017-03-02 irina', '2017-02-25 alexkiev', '2017-03-05 alexkiev', 'Эдвансис', 0, '', 'Y', '', 'картриджи', '', '<p>запр НР <span id=\\\"\\\\&quot;ctl00_cM_cW_gW_ctl22_sW\\\\&quot;\\\">CF230A(</span>30А) -1 шт 264грн</p>\r\n<p>запр НР 5225М</p>', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(574, '2017-02-13 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-03-27 irina', '', 'Пуратос', 96, '', 'Y', '<p>запр</p>', 'картр Xerox 3045', '', '<p>запр</p>', '', 'N', 'N', 'N', '120 от 16.03.17', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(575, '2017-02-13 alexkiev', '', '2017-05-04 alex', '2017-03-09 irina', '', '2017-05-04 alex', '2017-03-09 irina', '2017-05-04 alex', 'ABC 2000', 77, '', 'Y', '<p>запр 285</p>', 'картр  склад', '', '<p>запр 285</p>', '', 'Y', 'Y', 'Y', '100 от 09.03.17', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(576, '2017-02-13 alexkiev', '', '2017-02-13 alexkiev', '', '', '2017-02-13 alexkiev', '2017-02-13 alexkiev', '2017-02-21 alexkiev', 'Ира нотар', 0, '', 'Y', '', 'тонер ir 1018', '', '<p>мало тонера</p>', '', 'Y', 'Y', 'N', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(577, '2017-02-13 alexkiev', '', '2017-02-27 rsergey', '2017-02-27 rsergey', '', '2017-02-27 rsergey', '2017-02-27 rsergey', '2017-03-05 alexkiev', 'Школа 238', 0, '', 'Y', '', 'БУ МФУ до 2k грн', '', '<p>!!!! срок выполнения до 08.03.2017 !!!!</p>', '096 4661136 Ирина', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(578, '2017-02-14 ssergey', '', '2017-03-07 alexkiev', '2017-03-07 alexkiev', '', '2017-03-08 alexkiev', '2017-03-07 alexkiev', '2017-03-08 alexkiev', 'Глобал Мани', 0, '', 'Y', '<p>Заправка Canon 728 - 1шт,&nbsp;<span style=\\\"\\\\&quot;line-height:\\\">Canon 719 - 1шт, восстановление&nbsp;</span><span style=\\\"\\\\&quot;line-height:\\\">Canon 719 - 2 шт, ремонт картриджа&nbsp;</span><span style=\\\"\\\\&quot;line-height:\\\">Canon 719 (дозирующее) - 1шт</span></p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '56 від 14.02.17', 'Y', 'ssergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(579, '2017-02-14 ssergey', '', '2017-02-27 alexkiev', '2017-03-02 irina', '', '2017-02-27 alexkiev', '2017-02-27 alexkiev', '2017-03-05 alexkiev', 'Энергия', 0, '', 'Y', '', 'Картриджи', '', '<p>&nbsp;заправка НР 05А - 1шт, НР 05Х - 1шт, НР 12А - 1шт</p>', '', 'N', 'Y', 'Y', '79 від 24.02.2017р', 'Y', 'ssergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(580, '2017-02-14 ssergey', '', '2017-04-25 web2net', '2017-03-27 irina', '', '', '2017-03-27 irina', '', 'Компаньон', 67, '', 'Y', '<p> Заправка Canon 719h - 1шт, восстановление Canon 719h - 1шт</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '150 от 27.03.17', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(581, '2017-02-14 ssergey', '', '2017-02-28 alexkiev', '2017-03-02 irina', '', '2017-02-28 alexkiev', '2017-02-28 alexkiev', '2017-03-05 alexkiev', 'Инкомантур', 0, '', 'Y', '<p>&nbsp;заправка НР 05А - 1шт, ремонт картриджа НР 05А (дозирующее) - 1шт 190грн</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '85  від  27.02.2017р', 'Y', 'ssergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(582, '2017-02-14 rsergey', '', '2017-03-07 alexkiev', '2017-03-07 alexkiev', '', '2017-03-07 alexkiev', '2017-03-07 alexkiev', '2017-02-25 alexkiev', 'Соня (Бровари)', 0, '', 'Y', '', '', '', '<p>&nbsp;Запр 12А 3шт</p>', '', 'Y', 'Y', 'Y', '63 від 17.02.2017р.', 'Y', 'rsergey', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(583, '2017-02-14 rsergey', '', '2017-02-20 rsergey', '2017-02-20 rsergey', '', '2017-02-20 rsergey', '2017-02-20 rsergey', '2017-02-25 alexkiev', 'Супрун', 0, '', 'Y', '', '', '', '<p>&nbsp;215 Т/О</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(584, '2017-02-14 ssergey', '', '2017-02-16 rsergey', '2017-02-16 rsergey', '', '2017-02-16 rsergey', '2017-02-16 rsergey', '2017-02-17 alexkiev', 'Терминал Бровары', 302, '', 'Y', ' заправки: НР 49А - 2шт, НР 36А - 2шт, НР 53А - 1шт, Canon EP-27 - 1шт, Canon FC - 1шт, восстановление: Canon FC - 1шт, НР 49А - 1шт, НР 36А - 2шт, ремонт картриджа: НР 53А (дозирующее) - 1шт', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(585, '2017-02-14 rsergey', '', '2017-02-16 rsergey', '', '', '2017-02-16 rsergey', '2017-02-16 rsergey', '2017-02-17 alexkiev', 'Иститут Физхимии', 108, '', 'Y', '', '', '', ' Xerox 3119 Новий', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(586, '2017-02-14 rsergey', '', '2017-02-25 alexkiev', '2017-02-24 rsergey', '', '2017-02-24 rsergey', '2017-02-25 alexkiev', '2017-02-25 alexkiev', 'УКРшпон', 137, '', 'Y', 'запрака карт HP CF217А -1шт  ЦЕНА???', '', '', ' КАртридж 17А пачкает.', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(1226, '2017-05-20 web2net', '', '2017-05-21 web2net', '2017-05-21 web2net', '', '2017-05-21 web2net', '2017-05-20 web2net', '2017-05-25 alex', 'МКР Сервис', 216, '', 'Y', '', 'Поиск по номеру заявки', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-05-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-05'),
(587, '2017-02-14 rsergey', '', '2017-02-16 rsergey', '2017-02-16 rsergey', '', '2017-02-16 rsergey', '2017-02-16 rsergey', '2017-02-16 alexkiev', 'Вишневе', 266, '', 'Y', '', '163', '', '<p> Чор. полоса</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(588, '2017-02-14 rsergey', '', '2017-02-16 rsergey', '2017-02-16 rsergey', '', '2017-02-16 rsergey', '2017-02-16 rsergey', '2017-02-16 alexkiev', 'Вишневе', 266, '', 'Y', '', 'НР ', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(589, '2017-02-14 rsergey', '', '2017-02-24 rsergey', '2017-03-02 irina', '', '2017-03-24 rsergey', '2017-02-24 rsergey', '2017-04-20 alex', 'Квазар', 58, '', 'Y', '', '', '', '<p> Заправки 35а -1шт сам.4521 -1щт 12а -1шт +востановле. 49а- 1щт. сам-1шт </p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(590, '2017-02-14 rsergey', '', '2017-02-16 rsergey', '', '', '2017-02-16 rsergey', '2017-02-16 rsergey', '2017-02-16 alexkiev', 'Адел', 169, '', 'Y', '', '', '', '<p> 163 + Заправки</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(592, '2017-02-15 alexkiev', '', '2017-03-09 irina', '2017-03-09 irina', '', '2017-03-20 alexkiev', '2017-03-09 irina', '2017-04-20 alex', 'Гринстоун', 92, '', 'Y', '<p> заправка: Сanon FX10 - 2шт, Сanon719/HP 05А - 1шт,  Восст НР 05А (дозирующее + корона) - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '102 от 09.03.17', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(593, '2017-02-15 alexkiev', '', '2017-04-25 web2net', '', '2017-05-12 alex', '', '2017-02-25 alexkiev', '', 'Поликлиника Русановка', 70, '', 'Y', '<p>запр+восстан карт 725</p>', 'Canon 860, карт', '', '<p>Canon 860  пишет замятие, не коректный останов сканера</p>\r\n<p>запр+восстан карт 725 в этой же комнате</p>', '', 'Y', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-02'),
(594, '2017-02-15 ssergey', '', '2017-02-20 rsergey', '', '', '2017-02-21 rsergey', '2017-02-15 ssergey', '2017-02-23 alexkiev', 'Рома Большевик', 139, '', 'Y', '<p> Заправки: НР 12А - 2шт, НР 35А - 1шт, Canon FC - 1 шт, Xerox PE 220 - 2шт, восстановление: НР 12А - 1шт, Xerox PE 220 - 1шт, Canon FC - 1шт, ремонт картриджа: НР 12А (ракель) - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(595, '2017-02-15 ssergey', '', '2017-02-25 alexkiev', '', '', '2017-02-25 alexkiev', '2017-02-25 alexkiev', '2017-02-25 alexkiev', 'Днипролаб', 66, '', 'Y', '<p> Заправка: НР 12А - 2шт, НР 36А - 1шт, НР 35А - 1шт, НР 05А - 1шт, НР 85А - 2шт, Canon 725 - 1шт, восстановление: НР 12А - 2шт, Canon 725 - 1шт, ремонт картриджа: НР 12А (ракель) - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(596, '2017-02-15 ssergey', '', '2017-04-25 web2net', '2017-03-02 irina', '', '', '2017-02-15 ssergey', '', 'Перспектива', 76, '', 'Y', '<p> Samsung M2020 - 1шт</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(597, '2017-02-15 ssergey', '', '2017-04-25 web2net', '', '2017-05-12 alex', '', '2017-02-15 ssergey', '', 'Поликлиника Русановка', 70, '', 'Y', '<p> Заправка Canon 725 - 1шт, восстановление Canon 725 - 1шт</p>', 'Картридж', '', '', '', 'Y', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-02'),
(598, '2017-02-16 rsergey', '', '2017-02-16 alexkiev', '', '', '2017-02-16 alexkiev', '2017-02-16 alexkiev', '2017-02-17 alexkiev', 'МВЦ', 181, '', 'Y', '', '', '', '<p>Царапины на борабане</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(599, '2017-02-16 rsergey', '', '2017-02-20 rsergey', '', '', '2017-02-20 rsergey', '2017-02-16 rsergey', '2017-02-23 alexkiev', 'Борщаговская 145', 291, '', 'Y', '<p>  12а     15а    </p>', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(600, '2017-02-16 rsergey', '', '2017-04-28 rsergey', '2017-04-18 rsergey', '2017-04-14 alexkiev', '2017-04-28 rsergey', '2017-03-07 alexkiev', '2017-05-05 alex', 'Больница №10', 91, '', 'Y', '<p>Восстановление  1шт х 160</p>\r\n<p>заправка 1шт х 120</p>\r\n<p>запр Xerox 3100+чип  360грн</p>', '', '', '<p>Восстановление: НР 12А - 1шт, samsung 4200 - 1шт,  ремонт картриджа НР 12А (ракель + дозирующее)- 1шт  Чип Самсунг 1661 -3шт Чип сам 3119-2шт</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-02'),
(601, '2017-02-16 rsergey', '', '2017-04-28 rsergey', '2017-03-22 irina', '', '2017-04-28 rsergey', '2017-02-20 rsergey', '2017-05-05 alex', 'Пилон', 90, '', 'Y', '', '', '', '<p> 12А Востанов. +ракель + корона</p>', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(602, '2017-02-16 alexkiev', '', '2017-04-25 web2net', '2017-03-09 irina', '', '', '2017-03-09 irina', '', 'УкрДах', 89, '', 'Y', '<p> заправка Canon 737 - 1шт, HP 1025Black-1шт</p>\r\n<p><span style=\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\"color:\\\\\\\\\\\\\\\"><strong><span><span>ЧИП HP 1025Black</span></span></strong></span></p>', 'Картриджи', '', '<p>запр</p>', '', 'N', 'N', 'Y', '101 от 09.03.17', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(603, '2017-02-16 alexkiev', '', '2017-02-20 alexkiev', '', '', '2017-02-20 alexkiev', '2017-02-20 alexkiev', '2017-02-23 alexkiev', 'Подол Валы', 290, '', 'Y', '', 'картриджи', '', '<p>запр</p>\r\n<p>17.02.2017 с 15:00</p>', '', 'Y', 'Y', 'N', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(604, '2017-02-16 alexkiev', '', '2017-03-08 alexkiev', '2017-03-08 alexkiev', '', '2017-03-08 alexkiev', '2017-03-08 alexkiev', '2017-03-08 alexkiev', 'Потапенко и Ко', 88, '', 'Y', '', 'картр', '', '<p>запр FX10</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(605, '2017-02-16 alexkiev', '', '2017-02-25 alexkiev', '2017-02-17 irina', '', '2017-02-16 alexkiev', '2017-02-24 rsergey', '2017-03-05 alexkiev', 'Школа №19', 87, '', 'Y', '', 'NEW ПК ', '', '<p>Получуть Собрать</p>', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(606, '2017-02-16 rsergey', '', '2017-02-16 rsergey', '2017-02-17 alexkiev', '', '2017-02-21 alexkiev', '2017-02-16 rsergey', '2017-02-23 alexkiev', 'Гарант-АСІСТАНС', 55, '', 'Y', '<p>Ремонт 1782 грн  1шт.</p>', 'Develop ineo 282', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(607, '2017-02-16 alexkiev', '', '2017-02-21 alexkiev', '2017-02-21 alexkiev', '', '2017-02-21 alexkiev', '2017-02-21 alexkiev', '2017-02-23 alexkiev', 'Зевс', 113, '', 'Y', '', 'картр', '', '<p>запр</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(608, '2017-02-17 ssergey', '', '2017-02-17 ssergey', '', '', '2017-02-17 ssergey', '2017-02-17 ssergey', '2017-02-23 alexkiev', 'Престиж Центр', 274, '', 'Y', '<p> заправка НР 12А - 1шт, НР 15А - 1шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(609, '2017-02-17 ssergey', '', '2017-04-25 web2net', '2017-04-21 irina', '', '', '2017-03-27 irina', '', 'Ловекс', 62, '', 'Y', '<p> Заправка Canon 703 - 1шт</p>', 'Картридж', '', '', '', 'N', 'N', 'Y', '151 от 27.03.17', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(610, '2017-02-17 ssergey', '', '2017-04-25 web2net', '2017-03-02 irina', '', '', '2017-02-17 alexkiev', '', 'Гильдия', 51, '', 'Y', '<p> Заправка: НР 85А - 1шт, НР 78А - 1шт, Canon 725 - 1шт</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(611, '2017-02-17 alexkiev', '', '2017-04-25 web2net', '2017-04-21 irina', '', '', '2017-03-27 irina', '', 'Ловекс', 62, '', 'Y', '<p> Заправка НР 283А - 1шт</p>', 'Картридж', '', '', '', 'N', 'N', 'Y', '151 от 27.03.17', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(612, '2017-02-17 alexkiev', '', '2017-02-21 rsergey', '2017-02-21 rsergey', '', '2017-02-21 rsergey', '2017-02-21 rsergey', '2017-02-23 alexkiev', 'Ловекс', 62, '', 'Y', '<p> Заправка НР 505А - 1шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(613, '2017-02-20 rsergey', '', '2017-02-20 rsergey', '', '', '2017-02-20 rsergey', '2017-02-20 rsergey', '2017-02-23 alexkiev', 'Магнитогорская', 154, '', 'Y', '', 'Р3005 53а', '', '<p> Заправки</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(614, '2017-02-20 rsergey', '', '2017-04-05 irina', '2017-04-05 irina', '', '2017-04-12 rsergey', '2017-04-05 irina', '2017-04-20 alex', 'Будмир', 86, '', 'Y', '<p> Заправка 737 -2шт Востановление 1шт</p>', '', '', '<p>Заправки</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(615, '2017-02-20 alexkiev', '', '2017-02-23 rsergey', '2017-02-23 rsergey', '', '2017-02-23 rsergey', '2017-02-23 rsergey', '2017-02-25 alexkiev', 'УКРшпон', 137, '', 'Y', '', '', '', '<p> NEW КАртридж CF217А</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(616, '2017-02-20 ssergey', '', '2017-02-28 alexkiev', '', '', '2017-03-15 alexkiev', '2017-02-20 ssergey', '2017-04-22 alex', 'Днипролаб', 66, '', 'Y', '<p> Заправки: НР 85А - 2шт, НР 78А - 1шт, восстановление НР 78А - 1шт, ремонт картриджа НР 12А (дозирующее лезвие) - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(617, '2017-02-20 ssergey', '', '2017-02-20 ssergey', '', '', '2017-02-20 ssergey', '2017-02-20 ssergey', '2017-02-23 alexkiev', 'Крещатик 32А', 271, '', 'Y', '<p> заправка НР 85А - 1шт</p>', 'Картридж', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-02 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(618, '2017-02-20 rsergey', '', '2017-03-06 irina', '2017-03-06 irina', '', '2017-03-20 rsergey', '2017-03-06 irina', '2017-03-20 alexkiev', 'Тиларм', 82, '', 'Y', '', 'Картриджи', '', '<p> Заправки 53а 2шт</p>', '', 'Y', 'Y', 'Y', '90 від 06.03.17', 'Y', 'rsergey', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(619, '2017-02-20 rsergey', '', '2017-02-23 rsergey', '2017-02-23 rsergey', '', '2017-02-23 rsergey', '2017-02-23 rsergey', '2017-02-23 alexkiev', 'Магнитогорская', 154, '', 'Y', '', '', '', '<p> Дозирущее лезвие Р 3005</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(620, '2017-02-20 ssergey', '', '2017-04-25 web2net', '2017-03-09 irina', '', '2017-05-23 irina', '2017-03-09 irina', '', 'Профсоюзы', 74, '', 'Y', ' РЕмонт ПК - 480грн (Восстановление запуска Windows), \r\n5 упаковок резинок\r\nремонт B163 -1шт  640грн\r\n ', 'Компьютер, Канцтовары', '', ' Не запускается система', '', 'Y', 'N', 'Y', '105 от 09.03.17', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(621, '2017-02-21 rsergey', '', '2017-02-23 rsergey', '2017-02-23 rsergey', '', '2017-02-23 rsergey', '2017-02-23 rsergey', '2017-02-23 alexkiev', 'Машинистовская', 269, '', 'Y', '<p> Заправки 83а 2шт </p>', 'ЗАПРАВКИ', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(622, '2017-02-22 ssergey', '', '2017-02-27 alexkiev', '2017-03-02 irina', '', '2017-02-27 alexkiev', '2017-02-27 alexkiev', '2017-03-05 alexkiev', 'Центус', 135, '', 'Y', '<p> Ремонт принтера НР Р3015- 1шт(ролик подачи, пленка, шестерни(по сч ксовит)...  1900грн,  </p>\r\n<p>заправка НР 80А - 1шт, НР 80Х - 1шт, НР 55А - 1шт, НР 05А - 1шт, восстановление НР 55А - 1шт</p>\r\n<p>тонер В164/185</p>', 'НР Р3015, картриджи', 'VNBQD7J10T', '', '', 'N', 'Y', 'Y', '78  від 24.02.17 ', 'Y', 'ssergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(623, '2017-02-22 ssergey', '', '2017-02-27 alexkiev', '2017-03-02 irina', '', '2017-02-27 alexkiev', '2017-02-27 alexkiev', '2017-03-05 alexkiev', 'МясоМолПром', 183, '', 'Y', '<p>  Заправка НР 35А - 2шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '76 від 24.02.17', 'Y', 'ssergey', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(624, '2017-02-23 rsergey', '', '2017-03-10 irina', '2017-03-10 irina', '', '2017-03-20 rsergey', '2017-03-10 irina', '2017-04-20 alex', 'Политара', 85, '', 'Y', '<p> Заправка 1шт</p>', 'Санон 4450', '', '', '', 'Y', 'Y', 'Y', '108 от 10.03.17', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(625, '2017-02-23 rsergey', '', '2017-03-10 irina', '2017-03-10 irina', '', '2017-03-20 rsergey', '2017-03-10 irina', '2017-03-29 alexkiev', 'Визави', 84, '', 'Y', '<p> Востановление 1ШТ</p>', 'НР 125А', '', '', '', 'Y', 'Y', 'Y', '109 от 10.03.17', 'Y', 'rsergey', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(626, '2017-02-23 rsergey', '', '2017-02-27 alexkiev', '2017-03-02 rsergey', '', '2017-02-27 alexkiev', '2017-02-27 alexkiev', '2017-03-05 alexkiev', 'Манулі Україна', 48, '', 'Y', '', '', '', '<p> НР про400 комплект нових Тонер Минолта 1шт (ориг)  ЗАПР 49а 2 ШТ  Видновлення 49а 2шт  нп 1132 запр 1ШТ +дОГОВОР</p>', '', 'Y', 'Y', 'Y', '74 від 24.02.2017', 'Y', 'rsergey', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(627, '2017-02-23 rsergey', '', '2017-02-24 rsergey', '2017-02-24 rsergey', '', '2017-02-24 rsergey', '2017-02-24 rsergey', '2017-02-25 alexkiev', 'Авторинок (Нотариус)', 179, '', 'Y', '', ' Заправки', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(629, '2017-02-23 rsergey', '', '2017-03-13 rsergey', '2017-03-13 rsergey', '', '2017-03-13 rsergey', '2017-03-13 rsergey', '2017-04-20 alex', 'Виберг', 185, '', 'Y', '', '', '', '<p> Договор</p>', '', 'Y', 'Y', 'Y', 'Сбросила Саше', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(630, '2017-02-23 alexkiev', '', '2017-04-25 web2net', '2017-03-27 irina', '', '', '2017-03-27 irina', '', 'Компаньон (стройка Марка Вовчка 18а)', 231, '', 'Y', '<p>запр 285/725- 2шт</p>', 'HP 1132', '', '<p>заправка</p>', '', 'Y', 'N', 'Y', '150 от 27.03.17', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(631, '2017-02-23 rsergey', '', '2017-03-22 rsergey', '', '', '2017-03-22 rsergey', '2017-03-22 rsergey', '2017-04-22 alex', 'Школа №315', 72, '', 'Y', '', '', '', '<p> ЕР 27 </p>', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(632, '2017-02-23 rsergey', '', '2017-02-24 rsergey', '2017-02-24 rsergey', '', '2017-02-24 rsergey', '2017-02-24 rsergey', '2017-02-25 alexkiev', 'Л-Контракт', 146, '', 'Y', '', 'МИ 423', '', '<p> Не включается</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(633, '2017-02-23 alexkiev', '', '2017-04-25 web2net', '2017-04-21 irina', '2017-04-13 alexkiev', '', '2017-02-23 alexkiev', '', 'Орион', 103, '', 'Y', '<p>запр 278</p>', 'картр', '', '<p>запр</p>', '', 'N', 'N', 'Y', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-02'),
(634, '2017-02-23 rsergey', '', '2017-03-09 rsergey', '2017-03-09 rsergey', '', '2017-03-20 rsergey', '2017-03-09 rsergey', '2017-03-20 alexkiev', 'Тиларм', 82, '', 'Y', '', 'Панасоник', '', '<p>  ремонт факса 360грн</p>', '', 'Y', 'Y', 'Y', '90 від 06.03.17', 'Y', 'rsergey', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(635, '2017-02-23 alexkiev', '', '2017-04-25 web2net', '2017-03-09 irina', '', '2017-05-23 irina', '2017-03-09 irina', '', 'Профсоюзы', 74, '', 'Y', 'HDD NEW', 'HDD NEW', '', '', '', 'Y', 'N', 'Y', '105 от 09.03.17', 'Y', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(636, '2017-02-23 alexkiev', '', '2017-04-25 web2net', '2017-03-27 irina', '', '', '2017-03-27 irina', '', 'Компаньон', 67, '', 'Y', '<p> Заправка Canon 725 - 2шт</p>\r\n<p>запр HP Color  Bl,C,M,Y  все 4 цвета</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '150 от 27.03.17', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(637, '2017-02-23 rsergey', '', '2017-02-27 rsergey', '2017-02-27 rsergey', '', '2017-02-27 rsergey', '2017-02-27 rsergey', '2017-03-05 alexkiev', 'Владигор', 81, '', 'Y', '', '', '', '<p>  Картридж 53а     Б/У                                          тонер тн114</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(638, '2017-02-23 ssergey', '', '2017-04-25 web2net', '2017-05-24 irina', '', '2017-05-24 irina', '2017-03-27 irina', '', 'Вип Декор', 80, '', 'Y', ' заправка Samsung D104S - 1шт', 'Картридж', '', '', '', 'N', 'Y', 'Y', '148 от 27.03.17', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(639, '2017-02-23 ssergey', '', '2017-04-25 web2net', '2017-04-21 irina', '', '2017-04-21 irina', '2017-03-27 irina', '2017-04-27 alex', 'СПЗ Груп', 217, '', 'Y', '<p> Заправка НР 78А - 1шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '149 от 27.03.17', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(640, '2017-02-23 ssergey', '', '2017-04-25 web2net', '', '', '2017-05-05 alex', '2017-02-23 ssergey', '2017-05-05 alex', 'Воссоединения 19', 229, '', 'Y', '<p>  Заправка НР 12А - 1шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(641, '2017-02-23 ssergey', '', '2017-03-29 alexkiev', '2017-03-29 alexkiev', '', '2017-03-29 alexkiev', '2017-03-29 alexkiev', '2017-04-20 alex', 'Днипролаб', 66, '', 'Y', '<p> Заправки: НР 12А - 3шт, НР 35А - 2шт, НР 53А - 1шт, НР 85А - 3шт, НР 05А - 3шт Canon 725 - 2шт; восстановление: НР 12А - 2шт, НР 05А - 1шт; ремонт картриджа НР 12А (дозирующее лезвие) - 2шт, НР 12А (корона) - 1шт, НР 05А (корона) - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02');
INSERT INTO `works` (`id`, `date_create`, `date_prioritet`, `date_otgryzka`, `date_doc`, `date_srochno`, `date_pay`, `date_zdelano`, `date_archiv`, `client`, `client_id`, `data_client`, `zdelano`, `content`, `divice`, `sn`, `neispravnost`, `note`, `viezd`, `otgryzka`, `doc`, `number_bill`, `pay`, `ingener`, `responsible_ingener`, `nal`, `archiv`, `prioritet`, `srochno`, `trash`, `date_trash`, `month_create`) VALUES
(642, '2017-02-25 alexkiev', '', '2017-02-27 alexkiev', '2017-03-02 irina', '', '2017-02-27 alexkiev', '2017-02-27 alexkiev', '2017-03-05 alexkiev', 'Миоре', 78, '', 'Y', '<p> Заправка - 85 шт.</p>', 'Картридж', '', '', '', 'Y', 'Y', 'Y', '77 вiд 24.02.17', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(643, '2017-02-25 alexkiev', '', '2017-02-25 alexkiev', '', '', '2017-03-29 alexkiev', '2017-02-25 alexkiev', '2017-04-22 alex', 'Днипролаб Маяков', 194, '', 'Y', '<p> Заправки:  НР 85А - 3шт, НР 05А - 2шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(644, '2017-02-25 alexkiev', '', '2017-05-04 alex', '2017-03-09 irina', '', '2017-05-04 alex', '2017-03-09 irina', '2017-05-04 alex', 'ABC 2000', 77, '', 'Y', '<p>запр 13A-1, 285-1</p>', 'картр', '', '<p>картр</p>', '', 'Y', 'Y', 'Y', '100 от 09.03.17', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(645, '2017-02-25 alexkiev', '', '2017-04-25 web2net', '2017-03-02 irina', '', '', '2017-02-25 alexkiev', '', 'Перспектива', 76, '', 'Y', '<p> Заправка: НР 85А - 1шт, НР 78А - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(646, '2017-02-25 alexkiev', '2017-05-04 alex', '2017-05-05 alex', '', '', '', '2017-02-25 alexkiev', '', 'МЦ МК (Моя клиника)', 190, '', 'Y', '', 'ноут Козинская Acer', '', '<p>система</p>', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'Y', 'N', 'Y', 'N', 'N', '', '2017-02'),
(647, '2017-02-25 alexkiev', '', '2017-03-20 rsergey', '2017-03-20 rsergey', '', '2017-03-20 rsergey', '2017-03-20 rsergey', '2017-04-20 alex', 'УКРшпон', 137, '', 'Y', '<p>запрака карт HP CF217А -1шт  <span style=\\\\\\\"\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\"font-size:\\\\\\\\\\\"\\\\\\\"><span style=\\\\\\\"\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\"color:\\\\\\\\\\\"\\\\\\\">ЦЕНА???</span></span></p>', '', '', '<p> КАртридж 17А пачкает.</p>', '', 'N', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(648, '2017-02-25 alexkiev', '', '2017-04-25 web2net', '2017-03-09 irina', '', '2017-05-23 irina', '2017-03-09 irina', '', 'Профсоюзы', 74, '', 'Y', 'запр 719', 'карт', '', 'запр 719\r\nОТГРУЗИТЬ   HDD toshiba 500Gb', '', 'Y', 'N', 'Y', '105 от 09.03.17', 'Y', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(649, '2017-02-25 alexkiev', '', '2017-03-09 irina', '2017-03-09 irina', '', '2017-03-09 irina', '2017-03-09 irina', '2017-04-20 alex', 'Нотариус Кияшко', 73, '', 'Y', '<p>Заправка Canon 728 - 2шт, 12A -1шт</p>', 'картриджи', '', '', '', 'Y', 'Y', 'Y', '103 от 09.03.17', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(650, '2017-02-25 alexkiev', '', '2017-04-25 web2net', '', '2017-04-13 alexkiev', '', '2017-02-28 web2net', '', 'БМГ', 208, '', 'Y', '<p>тонер B185-1</p>\r\n<p> ремонт ноутбука -650грн</p>', 'B185', '', '<p>тонер</p>', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-02'),
(749, '2017-03-13 alexkiev', '', '2017-04-25 web2net', '', '2017-04-13 alexkiev', '', '2017-03-13 alexkiev', '', 'БМГ', 208, '', 'Y', '<p>штифт в блоке (Штифт M (ф/ц) A0XX330900 bizhub 164 OEM)</p>\r\n<p>замена тефлона, пальцы</p>\r\n<p> </p>\r\n<p> </p>', 'В185', '', '<p>застрявание в печьке</p>', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(652, '2017-02-27 rsergey', '', '2017-02-28 rsergey', '2017-02-28 rsergey', '', '2017-02-28 rsergey', '2017-02-28 rsergey', '2017-03-05 alexkiev', 'Демеевка', 219, '', 'Y', '', '163', '', '<p> трещит</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(653, '2017-02-27 rsergey', '', '2017-02-28 rsergey', '2017-02-28 rsergey', '', '2017-02-28 rsergey', '2017-02-28 rsergey', '2017-03-05 alexkiev', 'Терминал Леша', 126, '', 'Y', '', 'картридж', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(654, '2017-02-27 rsergey', '', '2017-03-02 rsergey', '2017-03-02 rsergey', '', '2017-03-02 rsergey', '2017-03-02 rsergey', '2017-03-05 alexkiev', 'Вышгород', 268, '', 'Y', '', '210', '', '<p> печка</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(655, '2017-02-27 rsergey', '', '2017-02-27 rsergey', '2017-02-27 rsergey', '', '2017-02-27 rsergey', '2017-02-27 rsergey', '2017-03-05 alexkiev', 'Школа №315', 72, '', 'Y', '', 'картридж', '', '<p> заправка</p>', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(656, '2017-02-27 rsergey', '', '2017-03-10 rsergey', '2017-03-07 irina', '', '2017-03-20 rsergey', '2017-03-07 irina', '2017-04-20 alex', 'Впровадження', 59, '', 'Y', '<p> Заправка НР 15А - 1шт, НР 12А - 1шт, НР 85А - 2шт, canon 737 - 1шт, <span style=\\\\\\\"\\\\\\\\\\\"line-height:\\\\\\\">Minolta 1600W: black - 1шт, yellow - 1шт; </span><span style=\\\\\\\"\\\\\\\\\\\"line-height:\\\\\\\"> восстановление НР 85А - 1шт, </span></p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '92 від 07.03.17', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(657, '2017-02-27 ssergey', '', '2017-04-25 web2net', '2017-04-21 irina', '', '', '2017-03-27 irina', '', 'Ловекс', 62, '', 'Y', '<p> Заправка НР 05А - 1шт, Canon 737 - 1шт</p>', 'картриджи', '', '', '', 'N', 'N', 'Y', '151 от 27.03.17', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(658, '2017-02-27 ssergey', '', '2017-05-17 alex', '', '2017-04-13 alexkiev', '2017-05-17 alex', '2017-02-27 ssergey', '', 'Центус', 135, '', 'Y', '<p> Заправка Canon 719 - 1шт</p>', 'картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-02'),
(659, '2017-02-27 ssergey', '', '2017-04-25 web2net', '', '2017-05-18 alex', '', '2017-02-28 alexkiev', '', 'Поликлиника Русановка', 70, '', 'Y', '<p> Заправка Canon 726 - 2шт, xerox 3010 - 1шт</p>', 'картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-02'),
(660, '2017-02-27 ssergey', '', '2017-04-25 web2net', '2017-03-02 irina', '', '2017-05-24 alex', '2017-02-27 ssergey', '2017-05-24 alex', 'Лансис', 71, '', 'Y', '<p> Заправка НР 78А - 1шт</p>', 'картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(661, '2017-02-27 alexkiev', '', '2017-04-25 web2net', '2017-04-21 irina', '', '', '2017-03-27 irina', '', 'Ловекс', 62, '', 'Y', '<p>запр Canon 737</p>', '', '', '', '', 'N', 'N', 'Y', '151 от 27.03.17', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(724, '2017-03-07 rsergey', '', '2017-03-29 rsergey', '2017-03-22 irina', '', '2017-03-20 rsergey', '2017-03-20 rsergey', '2017-04-20 alex', 'Впровадження', 59, '', 'Y', '', '', '', '<p> ПРЕД новий принтер</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(663, '2017-02-28 rsergey', '', '2017-02-28 rsergey', '2017-02-28 rsergey', '', '2017-02-28 rsergey', '2017-02-28 rsergey', '2017-03-05 alexkiev', 'Радищева 1050', 101, '', 'Y', '', 'РRO 1050E', '', '<p> Т/О</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(664, '2017-02-28 rsergey', '', '2017-02-28 rsergey', '2017-02-28 rsergey', '', '2017-02-28 rsergey', '2017-02-28 rsergey', '2017-02-28 alexkiev', 'Хата рибака', 161, '', 'Y', '', '', '', '<p> Заправка + востановление</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(665, '2017-02-28 rsergey', '', '2017-02-28 rsergey', '2017-02-28 rsergey', '', '2017-02-28 rsergey', '2017-02-28 rsergey', '2017-02-28 alexkiev', 'Лесной Дима', 189, '', 'Y', '', '163', '', '<p> Тонер 2шт</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-02'),
(666, '2017-02-28 alexkiev', '2017-04-27 alex', '2017-04-25 web2net', '2017-04-21 irina', '', '', '2017-04-12 web2net', '', 'Ловекс', 62, '', 'Y', '<p>Тонер В185</p>\r\n<p>запр 737-1шт</p>', '', '', '<p>Тонер В185</p>\r\n<p>картр 737</p>', '', 'N', 'N', 'Y', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-02'),
(667, '2017-02-28 alexkiev', '2017-04-24 alex', '2017-04-25 web2net', '', '2017-05-18 alex', '', '2017-04-12 web2net', '', 'Поликлиника Русановка', 70, '', 'Y', '<p>&nbsp;Заправка Sams 2070</p>\r\n<p>восст Sams 2070</p>', 'картриджи Sams 2070', '', '', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-02'),
(668, '2017-02-28 alexkiev', '', '2017-03-30 alexkiev', '2017-03-30 alexkiev', '', '2017-03-30 alexkiev', '2017-03-30 alexkiev', '2017-03-30 alexkiev', 'Урловская', 130, '', 'Y', '<p>договор</p>', 'договор', '', '', '', 'Y', 'Y', 'Y', '88  від  01.03.2017р', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(669, '2017-02-28 alexkiev', '', '2017-03-06 irina', '2017-04-07 irina', '', '2017-03-06 alexkiev', '2017-03-06 irina', '2017-04-20 alex', 'Козирні подорожі', 69, '', 'Y', '<p>запр НР12А-1шт  165грн,</p>\r\n<p>Brother-1шт  180грн,</p>', 'НР1020, Brother', '', '', 'ул. Предславенская 43/2', 'Y', 'Y', 'Y', '91 від 06.03.17', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-02'),
(671, '2017-03-01 rsergey', '', '2017-03-13 rsergey', '', '', '2017-03-13 rsergey', '2017-03-13 rsergey', '2017-04-22 alex', 'Демеевка', 219, '', 'Y', '', '163', '', '<p>т онер ТН114</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(672, '2017-03-01 rsergey', '', '2017-03-02 rsergey', '2017-03-02 rsergey', '', '2017-03-02 rsergey', '2017-03-02 rsergey', '2017-03-05 alexkiev', 'Вишневе', 266, '', 'Y', '', '', '', '<p> 163</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(673, '2017-03-01 alexkiev', '', '2017-04-25 web2net', '2017-04-21 irina', '', '2017-04-21 irina', '2017-03-09 irina', '2017-04-27 alex', 'Эдвансис', 68, '', 'Y', '<p> Заправка НР 78А - 3шт, НР 5225Bk - 1шт, восстановление НР 5225Bk - 1шт</p>', 'картриджи', '', '<p>запр НР 5225Bk</p>\r\n<p>запр 278 - 3шт</p>', '', 'N', 'Y', 'Y', '104 от 09.03.17', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(674, '2017-03-01 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-03-27 irina', '', 'Компаньон', 67, '', 'Y', '<p>вост карт 719-1шт</p>\r\n<p>карт NEW НР285А - 1шт   1280грн</p>', 'Картриджи', '', '<p>пачкают оба 719</p>', '', 'Y', 'N', 'N', '150 от 27.03.17', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(675, '2017-03-01 alexkiev', '', '2017-03-29 alexkiev', '2017-03-29 alexkiev', '', '2017-03-29 alexkiev', '2017-03-29 alexkiev', '2017-04-20 alex', 'Днипролаб Гарматная', 215, '', 'Y', '', 'Картриджи', '', '<p>принтер 2055</p>\r\n<p>ресепш заглушки, фальш</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(676, '2017-03-01 alexkiev', '', '2017-03-02 alexkiev', '', '', '2017-03-02 alexkiev', '2017-03-01 alexkiev', '2017-03-02 alexkiev', 'ВладаМеталСервис', 57, '', 'Y', '<p>запр</p>', 'картр', '', '<p>запр</p>', '', 'N', 'Y', 'N', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(678, '2017-03-01 alexkiev', '', '2017-04-25 web2net', '', '2017-04-13 alexkiev', '', '2017-03-07 alexkiev', '', 'БМГ', 208, '', 'Y', '<p>запр 725 - 2шт</p>\r\n<p>восст 725</p>', 'картр 725', '', '<p>картр 725</p>', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(679, '2017-03-01 alexkiev', '', '2017-03-03 alexkiev', '2017-03-03 alexkiev', '', '2017-03-03 alexkiev', '2017-03-03 alexkiev', '2017-03-03 alexkiev', 'Академия Женствености', 64, '', 'Y', '', 'HP Color', '', '<p>запр + Drum unit</p>', '', 'N', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(680, '2017-03-01 alexkiev', '', '2017-04-25 web2net', '', '', '', '', '', 'База волынская', 63, '', 'N', '', 'НР1020', '', '<p>мажет</p>', '', 'Y', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(681, '2017-03-01 alexkiev', '', '2017-04-25 web2net', '2017-04-21 irina', '', '', '2017-03-27 irina', '', 'Ловекс', 62, '', 'Y', '<p>Ремонт B185  печка (палец, датчик)    750грн</p>', 'картр', '', '', '', 'N', 'N', 'Y', '151 от 27.03.17', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(682, '2017-03-01 alexkiev', '', '2017-04-25 web2net', '', '2017-04-11 alex', '', '2017-03-02 alexkiev', '', 'Ловекс', 62, '', 'Y', '<p>Т/О</p>', 'В185', '', '<p>застрявание печка</p>', '', 'Y', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'Y', 'N', 'N', 'N', 'N', '', '2017-03'),
(683, '2017-03-01 alexkiev', '', '2017-04-25 web2net', '2017-03-06 alexkiev', '', '2017-03-01 alexkiev', '2017-03-01 alexkiev', '2017-04-27 alex', 'МЦ МК (Моя клиника), БМГ', 230, '', 'Y', '', 'ДОКИ', '', '<p>ДОКИ</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(684, '2017-03-01 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-03-06 ssergey', '', 'Урловская', 130, '', 'Y', '<p> Заправка Xerox 3225 - 1шт, Samsung D111s - 1шт</p>', 'картр', '', '<p>запр</p>', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(685, '2017-03-02 alexkiev', '', '2017-03-03 alexkiev', '2017-03-03 alexkiev', '', '2017-03-03 alexkiev', '2017-03-03 alexkiev', '2017-03-05 alexkiev', 'Салон багет офис', 223, '', 'Y', '', '', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(686, '2017-03-02 rsergey', '', '2017-04-03 rsergey', '', '', '2017-04-03 rsergey', '2017-04-03 rsergey', '2017-04-22 alex', 'Владигор', 81, '', 'Y', '', 'Панасоник', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(687, '2017-03-02 rsergey', '', '2017-03-03 rsergey', '', '', '2017-03-03 rsergey', '2017-03-03 rsergey', '2017-03-05 alexkiev', 'Кондиба (Бровари)', 128, '', 'Y', '', '', '', '<p> Забрать 215</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(688, '2017-03-02 rsergey', '', '2017-03-09 irina', '2017-03-09 irina', '', '2017-03-20 rsergey', '2017-03-09 irina', '2017-04-20 alex', 'Аероальянс', 60, '', 'Y', '<p>запр Canon - 3шт х 165грн</p>', '', '', '<p> Заправки</p>', '', 'Y', 'Y', 'Y', '97 от 09.03.17', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(689, '2017-03-02 rsergey', '', '2017-04-10 rsergey', '', '', '2017-04-10 rsergey', '2017-04-10 rsergey', '2017-04-22 alex', 'Лиса (Вишневе)', 127, 'забрали частично', 'Y', '<p> Забрали частично</p>', '', '', '<p> ЗАБрать технику</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(690, '2017-03-02 rsergey', '', '2017-03-07 rsergey', '2017-03-06 alexkiev', '', '2017-03-22 irina', '2017-03-06 alexkiev', '2017-04-20 alex', 'Впровадження', 59, '', 'Y', '', 'Canon LBP 6030B', '', '<p> Новий</p>', '', 'N', 'Y', 'Y', '89  від  02.03.2017р', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(691, '2017-03-02 rsergey', '', '2017-03-13 rsergey', '', '', '2017-03-13 rsergey', '2017-03-13 rsergey', '2017-04-22 alex', 'Терминал Леша', 126, '', 'Y', '<p> Востановление</p>', 'Е 16', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(692, '2017-03-02 rsergey', '', '2017-03-03 rsergey', '', '', '2017-03-03 rsergey', '2017-03-03 rsergey', '2017-03-05 alexkiev', 'Радищева 1050', 101, '', 'Y', '', '', '', '<p> Чорная полоса</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(694, '2017-03-02 alexkiev', '', '2017-04-25 web2net', '2017-04-03 irina', '', '', '2017-04-03 irina', '', 'ВладаМеталСервис', 57, '', 'Y', '<p>заправка НР 12А - 1шт</p>', 'картр', '', '<p>запр 12А</p>\r\n<p>счет на 5 пачек бум А4</p>', '', 'N', 'Y', 'Y', '96 от 09.03.17', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(695, '2017-03-03 rsergey', '', '2017-03-06 alexkiev', '', '', '2017-03-06 alexkiev', '2017-03-06 alexkiev', '2017-03-08 alexkiev', 'Світ нерухомості', 56, '', 'Y', '', '', '', '<p> Заправки</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(696, '2017-03-03 alexkiev', '', '2017-04-25 web2net', '', '2017-04-13 alexkiev', '', '', '', 'БМГ', 208, '', 'N', '<p>запр 725</p>\r\n<p> </p>', 'картр 725', '', '<p>картр 725</p>', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(697, '2017-03-03 alexkiev', '', '2017-04-25 web2net', '', '', '2017-04-21 irina', '2017-03-08 alexkiev', '', 'МЦ МК (Моя клиника)', 190, '', 'Y', '<p>картр 728- 2шт</p>', 'картр 728', '', '', 'Сч 183', 'N', 'N', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(725, '2017-03-08 alexkiev', '', '2017-03-09 irina', '2017-04-07 irina', '', '2017-03-20 alexkiev', '2017-03-09 irina', '2017-04-20 alex', 'Айсек', 118, '', 'Y', '<p>запр 285 -3шт  цена???</p>\r\n<p>восст 285 -1шт  цена???</p>', 'картриджи', '', '<p>запр</p>\r\n<p>восст</p>', '', 'Y', 'Y', 'Y', '106 от 09.03.17', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(699, '2017-03-03 rsergey', '', '2017-03-10 rsergey', '', '', '2017-03-20 rsergey', '2017-03-03 rsergey', '2017-04-22 alex', 'Окси-К', 132, '', 'Y', '<p> Т/О 210</p>', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(700, '2017-03-03 rsergey', '', '2017-05-03 rsergey', '2017-05-12 irina', '2017-04-20 alex', '2017-05-12 alex', '2017-03-15 ssergey', '2017-05-19 alex', 'Сталь', 131, '', 'Y', '<p> 1). Барабан 2)., Ракель 3)., Колары - 2шт, 4). Девелопер DV-411., 5). Т/О</p>\r\n\r\nСЧЕТ  на  девелопер DV411- 1700   грн', '', '', '<p> Кап ремонт bizhub 363</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-03'),
(702, '2017-03-03 rsergey', '', '2017-05-03 rsergey', '2017-04-05 irina', '2017-03-29 rsergey', '', '2017-04-05 irina', '', 'Больница №10', 91, '', 'Y', '<p> Тонер ТN 118  Xerox 310_ Ремонт -760 грн</p>', '215', '', '', 'Сч 350', 'Y', 'Y', 'Y', '', 'N', 'rsergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(703, '2017-03-03 rsergey', '', '2017-04-20 rsergey', '', '', '2017-04-20 rsergey', '2017-04-20 rsergey', '2017-04-22 alex', 'Володя', 224, '', 'Y', '', 'С 35', '', '<p> КУПИТь</p>', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(704, '2017-03-05 alexkiev', '', '2017-05-13 alex', '2017-04-11 irina', '2017-03-23 alexkiev', '2017-05-13 alex', '2017-03-09 irina', '', 'Нотариус Кияшко', 73, '', 'Y', '<p>Заправка НР 17А - 1шт х 270грн</p>', 'картридж HP 17A', '', '<p>Заправка</p>', '', 'Y', 'Y', 'Y', '103 от 09.03.17', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(705, '2017-03-05 alexkiev', '', '2017-04-03 rsergey', '', '', '2017-04-03 rsergey', '2017-03-06 ssergey', '2017-04-22 alex', 'Салон багет офис', 223, '', 'Y', '<p> Заправка Samsung D108s - 1шт, восстановление Samsung D108s - 1шт</p>', 'картридж Sams 1641', '', '<p>восст</p>\r\n<p>запр</p>', '', 'N', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(706, '2017-03-06 rsergey', '', '2017-03-22 irina', '2017-03-22 irina', '', '2017-03-22 irina', '2017-03-22 irina', '2017-04-20 alex', 'Стеклотара', 133, '', 'Y', '', '283', '', '<p> тонер -1576 грн х 2шт    + Заправка  83а 1 щт +Востановление</p>', '', 'Y', 'Y', 'Y', '95 від 07.03.2017р', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(707, '2017-03-06 ssergey', '', '2017-04-25 web2net', '2017-04-21 irina', '', '', '2017-03-27 irina', '', 'Ловекс', 62, '', 'Y', '<p>1). Т/О&nbsp;HP M1212nf, 2). Заправка НР 85А - 1шт</p>', 'HP M1212nf', 'CNG9D221F0', '', '', 'N', 'N', 'Y', '151 от 27.03.17', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(708, '2017-03-06 ssergey', '', '2017-03-16 rsergey', '2017-03-22 irina', '', '2017-03-29 alexkiev', '2017-03-09 irina', '2017-04-20 alex', 'Виберг', 185, '', 'Y', '<p> Заправка НР 78А - 1шт x 165грн, НР color СЕ412А<span class=\\\\\\\"\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\"st\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\"\\\\\\\"> Yellow</span> - 1шт 480грн</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '99 от 09.03.17', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(710, '2017-03-06 ssergey', '', '2017-04-25 web2net', '', '', '2017-05-12 alex', '2017-03-06 ssergey', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p> Заправка НР 35А - 1шт, НР 85А - 2шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(711, '2017-03-06 ssergey', '', '2017-04-25 web2net', '', '2017-05-18 alex', '', '2017-03-06 ssergey', '', 'Поликлиника Русановка', 70, '', 'Y', '<p> Заправка Canon 726 - 1шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'Y', 'N', 'N', 'Y', 'N', '', '2017-03'),
(712, '2017-03-07 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-03-13 rsergey', '', 'Орион', 103, '', 'Y', '<p>запр 278/737-2шт, восст 1,</p>', 'картриджи', '', '', '', 'Y', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(713, '2017-03-07 rsergey', '', '2017-03-07 rsergey', '', '', '2017-03-07 rsergey', '2017-03-07 rsergey', '2017-03-08 alexkiev', 'Школа №315', 72, '', 'Y', '<p> ТОНЕР</p>', '215', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(714, '2017-03-07 rsergey', '', '2017-03-07 rsergey', '', '', '2017-03-07 rsergey', '2017-03-07 rsergey', '2017-03-08 alexkiev', 'Радищева 1050', 101, '', 'Y', '', '', '', '<p> Т/О</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(715, '2017-03-07 rsergey', '', '2017-03-09 irina', '2017-03-10 rsergey', '', '2017-03-20 rsergey', '2017-03-09 irina', '2017-04-20 alex', 'Экосфера', 100, '', 'Y', '', 'LBP 810', '', '<p> Заправка</p>', '', 'Y', 'Y', 'Y', '94 от 07.03.17', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(716, '2017-03-07 rsergey', '', '2017-03-10 rsergey', '2017-03-09 irina', '', '2017-03-20 rsergey', '2017-03-09 irina', '2017-04-20 alex', 'Скифоил', 83, '', 'Y', '<p> Заправка НР 12А - 1шт, Canon 719 - 1шт, ремонт картриджа НР 12А (дозирующее лезвие) - 1шт  Т/О ЕР1054 390грн</p>', '', '', '', '', 'N', 'Y', 'Y', '98 от 09.03.17', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(717, '2017-03-07 rsergey', '', '2017-04-28 rsergey', '2017-03-10 irina', '', '2017-04-28 rsergey', '2017-03-10 irina', '2017-04-28 alex', 'Молочна Слобода', 136, '', 'Y', '<p> <span style=\\\\\\\"\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"line-height:\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\"\\\\\\\">Заправка НР 81А - 3шт, х360грн Восстановление НР 81А - 2шт х560грн</span></p>', 'картриджи', '', '', '', 'Y', 'Y', 'Y', '110 от 10.03.17', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(718, '2017-03-07 rsergey', '', '2017-05-17 alex', '', '2017-04-13 alexkiev', '2017-05-17 alex', '2017-03-07 rsergey', '', 'Центус', 135, '', 'Y', '<p>1). Ремонт Bizhub 164, 2). Тонер TN-116 - 1шт</p>', 'bizhub 164', '', '<p> Замятие в печке</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(719, '2017-03-07 rsergey', '', '2017-03-23 irina', '2017-03-23 irina', '2017-03-23 irina', '2017-03-23 irina', '2017-03-23 irina', '2017-04-20 alex', 'Гринстоун', 92, '', 'Y', '<p> Заправка <span style=\\\\\\\"\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\"line-height:\\\\\\\\\\\"\\\\\\\">canon 719 - 1шт</span></p>', 'картридж', '', '<p> картридж canon 719 - 1шт на заправку</p>', '', 'N', 'Y', 'Y', '102 от 09.03.17', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-03'),
(720, '2017-03-07 rsergey', '', '2017-04-25 web2net', '', '', '2017-05-12 alex', '2017-03-07 rsergey', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p> Заправка Canon 725 - 2шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(721, '2017-03-07 rsergey', '', '2017-04-25 web2net', '', '', '', '2017-03-07 rsergey', '', 'Металлобаза Юра', 210, '', 'Y', '<p>Ремонт Canon 810</p>', 'Canon 810', '', '<p> Заминает листы</p>', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 rsergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-03'),
(722, '2017-03-07 rsergey', '', '2017-03-09 rsergey', '', '', '2017-03-09 rsergey', '2017-03-09 rsergey', '2017-04-22 alex', 'КНТУ', 134, '', 'Y', '', '222', '', '<p> Автоподатчик</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(723, '2017-03-07 rsergey', '', '2017-03-13 rsergey', '', '', '2017-03-13 rsergey', '2017-03-13 rsergey', '2017-04-22 alex', 'Школа №315', 72, '', 'Y', '<p> Заправка</p>', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(726, '2017-03-09 rsergey', '', '2017-03-09 rsergey', '', '', '2017-03-09 rsergey', '2017-03-09 rsergey', '2017-04-22 alex', 'Школа №19', 87, '', 'Y', '', '', '', '<p> Заправка НР 2шт</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(727, '2017-03-09 rsergey', '', '2017-03-14 rsergey', '', '', '2017-03-14 rsergey', '2017-03-14 rsergey', '2017-04-22 alex', 'Лиса (Вишневе)', 127, '', 'Y', '', '', '', '<p> Заправки РЕ 114  САМ 3405</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(728, '2017-03-09 rsergey', '', '2017-03-27 rsergey', '2017-03-27 rsergey', '', '2017-03-27 rsergey', '2017-03-27 rsergey', '2017-04-20 alex', 'Л-Контракт', 146, '', 'Y', '', 'См.заявки 854, 855, 856', '', '<p> ТОНЕР Минолта  223 2шт 227 2шт 423 2шт </p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(729, '2017-03-09 ssergey', '', '2017-04-25 web2net', '', '', '', '2017-03-09 ssergey', '', 'Перспектива', 76, '', 'Y', '<p> Заправка НР 85А - 2шт, НР 05А - 1шт, НР 80А - 1шт; восстановление НР 85А - 1шт; Ремонт картриджа НР 05А (корона) - 1шт </p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(730, '2017-03-09 ssergey', '', '2017-04-25 web2net', '', '', '2017-05-12 alex', '2017-03-09 ssergey', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p> Заправка НР 05А - 1шт, НР 126А black - 1шт, НР 126A cyan - 1шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(731, '2017-03-09 rsergey', '', '2017-03-22 irina', '2017-03-22 irina', '', '2017-04-07 rsergey', '2017-03-22 irina', '2017-04-20 alex', 'Стеклотара', 133, '', 'Y', '', '', '', '<p> Заправка самсунг 2070 +чип 405грн</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(732, '2017-03-09 rsergey', '', '2017-03-10 irina', '2017-03-10 irina', '', '2017-03-20 alexkiev', '2017-03-10 irina', '2017-04-20 alex', 'Вторресурси', 141, '', 'Y', '<p> Т/О 185 460грн      Заправка 12а 165грн</p>', '', '', '', '', 'Y', 'Y', 'Y', '107 от 10.03.17', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(733, '2017-03-10 ssergey', '', '2017-03-14 rsergey', '', '', '2017-03-14 rsergey', '2017-03-14 rsergey', '2017-04-22 alex', 'Школа №19', 87, '', 'Y', '<p>&nbsp;Ремонт&nbsp;Canon MF3010 - 250 грн, восстановление картриджа Canon 725 - 1шт</p>', 'Canon MF3010', 'NWZ22236', '<p>&nbsp;Сломана крышка сканера</p>', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(734, '2017-03-10 rsergey', '', '2017-03-23 rsergey', '2017-03-23 rsergey', '', '2017-03-27 rsergey', '2017-03-23 rsergey', '2017-04-20 alex', 'Экосфера', 100, '', 'Y', '', '215', '', '<p> TN -!118 2шт х 1150</p>', '', 'Y', 'Y', 'Y', '113 от 13.03.17', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(735, '2017-03-10 rsergey', '', '2017-03-13 rsergey', '', '', '2017-03-13 rsergey', '2017-03-13 rsergey', '2017-04-22 alex', 'Деревообробна', 144, '', 'Y', '', '1005', '', '<p> Заправки 3от</p>\r\n<p> </p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(736, '2017-03-10 ssergey', '', '2017-04-27 alex', '2017-04-21 irina', '', '2017-04-21 irina', '2017-03-27 irina', '2017-04-27 alex', 'СПЗ Груп', 217, '', 'Y', '<p> Заправка НР 78А - 1шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'Y', '149 от 27.03.17', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(737, '2017-03-10 ssergey', '', '2017-04-25 web2net', '', '', '', '2017-03-10 ssergey', '', 'Гильдия', 51, '', 'Y', '<p> Заправка НР 12А - 1шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(738, '2017-03-10 ssergey', '', '2017-04-25 web2net', '', '', '2017-05-12 alex', '2017-03-10 ssergey', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p> Заправка НР 05А - 1шт</p>', '', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(739, '2017-03-10 ssergey', '', '2017-04-25 web2net', '', '', '', '2017-03-10 ssergey', '', 'ЛакиКолор', 143, '', 'Y', '<p> Ремонт картриджа Samsung 4100</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'Y', 'N', 'N', 'N', 'N', '', '2017-03'),
(740, '2017-03-13 rsergey', '', '2017-03-13 rsergey', '', '', '2017-03-13 rsergey', '2017-03-13 rsergey', '2017-04-22 alex', 'Бальзака', 142, '', 'Y', '', '185', '', '<p> Тонер th 116</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(741, '2017-03-13 rsergey', '', '2017-03-30 alexkiev', '2017-03-30 alexkiev', '', '2017-03-30 alexkiev', '2017-03-30 alexkiev', '2017-04-20 alex', 'Вторресурси', 141, '', 'Y', '', '', '', '<p> Заправка 36а 2 шт</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(742, '2017-03-13 rsergey', '', '2017-03-20 rsergey', '', '', '2017-03-20 rsergey', '2017-03-20 rsergey', '2017-04-22 alex', 'Терминал Леша', 126, '', 'Y', '<p> Заправка НР 53А - 3шт, НР 36А - 2шт, барабан НР 53А - 1шт, дозирующее лезвие НР 53А - 2шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(743, '2017-03-13 rsergey', '', '2017-03-13 rsergey', '', '', '2017-03-13 rsergey', '2017-03-13 rsergey', '2017-03-14 alexkiev', 'Авторинок 215', 140, '', 'Y', '', '', '', '<p> Заправки 13а -2шт Sam 3 шт Востан 13а 1шт дозир 13а 1шт</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(744, '2017-03-13 rsergey', '', '2017-03-16 rsergey', '', '', '2017-03-20 rsergey', '2017-03-16 rsergey', '2017-04-22 alex', 'Здолбуновская', 147, '', 'Y', '', 'Заправки', '', '<p> Зарав 12а 5шт 36а 4шт</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(745, '2017-03-13 alexkiev', '', '2017-03-14 ssergey', '', '', '2017-03-14 ssergey', '2017-03-14 ssergey', '2017-04-22 alex', 'Луначарского 5    каб 330', 222, '', 'Y', '<p> Заправка Brother TN-1075 - 2шт по 160 грн</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(746, '2017-03-13 alexkiev', '', '2017-04-25 web2net', '', '2017-05-18 alex', '', '2017-03-23 ssergey', '', 'Поликлиника Русановка', 70, '', 'Y', '<p> Заправка Canon 725 - 1шт</p>', 'Картридж', '', '', '', 'Y', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(747, '2017-03-13 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-03-27 irina', '', 'Компаньон', 67, '', 'Y', '<p>вост карт Sams 2015-1шт</p>\r\n<p>запр карт Sams 2015-1шт</p>\r\n<p>запр карт  НР285А/725 - 2шт  </p>\r\n<p>запр 719</p>', 'Картриджи', '', '<p>запр</p>\r\n<p>восст</p>', '', 'Y', 'Y', 'N', '150 от 27.03.17', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(748, '2017-03-13 alexkiev', '', '2017-03-20 alexkiev', '2017-04-21 irina', '', '2017-03-20 alexkiev', '2017-03-20 alexkiev', '2017-04-22 alex', 'Орион', 103, '', 'Y', '', 'NEW картридж Xerox 3020', '', '', '', 'Y', 'Y', 'Y', '111 від 13.03.17р', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(750, '2017-03-13 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-03-14 ssergey', '', 'Юниориент', 124, '', 'Y', '<p> Заправка карт 719 - 2шт, НР 55А - 1шт</p>', 'Картриджи', '', '', '', 'Y', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(751, '2017-03-13 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-03-13 alexkiev', '', 'Юниориент', 124, '', 'Y', '<p>ремонт HP Color 3600</p>', 'HP Color 3600', '', '', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(752, '2017-03-14 rsergey', '', '2017-03-16 rsergey', '', '', '2017-03-16 rsergey', '2017-03-16 rsergey', '2017-04-22 alex', 'Рома Большевик', 139, '', 'Y', '', 'Картриди', '', '<p> Востановление 49а 1шт</p>', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(753, '2017-03-14 rsergey', '', '2017-03-16 rsergey', '', '', '2017-03-20 rsergey', '2017-03-16 rsergey', '2017-04-22 alex', 'Школа №315', 72, '', 'Y', '', 'Картриди', '', '<p>  Барабан 111 + Заправка </p>', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(754, '2017-03-14 rsergey', '', '2017-04-04 rsergey', '2017-04-04 rsergey', '', '2017-04-04 rsergey', '2017-04-04 rsergey', '2017-04-20 alex', 'Больница №10', 91, '', 'Y', '', 'Картриди', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(755, '2017-03-14 rsergey', '', '2017-03-23 rsergey', '2017-03-23 rsergey', '', '2017-03-27 rsergey', '2017-03-23 rsergey', '2017-04-20 alex', 'Молочна Слобода', 136, '', 'Y', '', '283', '', '<p> Тонер TN 217 -2 шт</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(756, '2017-03-14 rsergey', '', '2017-03-14 rsergey', '', '', '2017-03-14 rsergey', '2017-03-14 rsergey', '2017-03-14 alexkiev', 'Школа №19', 87, '', 'Y', '', '', '', '<p> Ремонт НР</p>', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(757, '2017-03-14 rsergey', '', '2017-03-20 rsergey', '', '', '2017-03-20 rsergey', '2017-03-20 rsergey', '2017-04-22 alex', 'Школа №80', 97, '', 'Y', '', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(758, '2017-03-14 ssergey', '', '2017-04-25 web2net', '', '', '', '2017-03-27 irina', '', 'Компаньон', 67, '', 'Y', '<p> Заправка Canon 719 - 1шт, Canon 725 -  1шт, Samsung 2010 - 1шт, восстановление Samsung 2010 - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '150 от 27.03.17', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(759, '2017-03-14 ssergey', '', '2017-04-25 web2net', '', '', '2017-05-12 alex', '2017-03-14 ssergey', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p> Заправка НР 85А - 4шт, НР 05А - 1шт, восстановление НР 05А - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(760, '2017-03-14 rsergey', '', '2017-03-20 rsergey', '', '', '2017-03-20 rsergey', '2017-03-20 rsergey', '2017-04-22 alex', 'Пожарского', 138, '', 'Y', '', '1010', '', '<p> Заправка</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(761, '2017-03-14 rsergey', '', '2017-03-20 rsergey', '2017-03-22 rsergey', '', '2017-03-20 rsergey', '2017-03-20 rsergey', '2017-04-20 alex', 'УКРшпон', 137, '', 'Y', '', '406', '', '<p> Обнулить забрать картриджи</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(762, '2017-03-14 rsergey', '', '2017-03-16 rsergey', '', '', '2017-03-20 rsergey', '2017-03-16 rsergey', '2017-04-22 alex', 'Аероальянс', 60, '', 'Y', '', 'картридж', '', '<p> Бараан 1005</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(763, '2017-03-14 alexkiev', '', '2017-04-25 web2net', '', '2017-04-06 alexkiev', '', '', '', 'Эдвансис', 68, '', 'N', '<p>запр 278</p>', '', '', '<p>запр 278</p>', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(764, '2017-03-14 alexkiev', '', '2017-04-25 web2net', '', '2017-04-06 alexkiev', '2017-05-24 alex', '2017-05-24 alex', '', 'Лансис', 71, '', 'Y', '', '', '', '<p>запр 278</p>', '', 'N', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(806, '2017-03-14 ssergey', '', '2017-04-25 web2net', '', '2017-05-18 alex', '', '2017-03-30 alexkiev', '', 'Поликлиника Русановка', 70, '', 'Y', '<p> Заправка Canon FX-10 - 2шт, НР 12А - 1шт</p>', 'Картриджи', '', '', 'энт 49', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(807, '2017-03-15 alexkiev', '', '2017-03-22 rsergey', '2017-03-22 irina', '', '2017-03-19 alexkiev', '2017-03-22 rsergey', '2017-04-20 alex', 'Глобал Мани', 52, '', 'Y', '<p><span style=\\\\\\\"\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\"background-color:\\\\\\\\\\\"\\\\\\\">Тонер</span> bizhub C220 TN-216C - 1шт  3460грн</p>', 'Тонер C220синий', '', '<p> <span style=\\\\\\\"\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\"background-color:\\\\\\\\\\\"\\\\\\\"><span style=\\\\\\\"\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\"background-color:\\\\\\\\\\\"\\\\\\\">Тонер</span> C220синий</span></p>', '', 'N', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(808, '2017-03-15 ssergey', '', '2017-03-16 rsergey', '', '', '2017-03-20 rsergey', '2017-03-15 ssergey', '2017-04-22 alex', 'Рома Большевик', 139, '', 'Y', '<p> Заправка НР 49А - 1шт, НР 12А - 3шт, Xerox PE220 - 1шт, восстановление НР 49А - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(809, '2017-03-15 ssergey', '', '2017-04-25 web2net', '2017-04-21 irina', '', '', '2017-03-27 irina', '', 'Ловекс', 62, '', 'Y', '<p> Заправка НР 05А - 1шт, НР 78А - 1шт, Canon 737 - 1шт, Canon 725 - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '151 от 27.03.17', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(810, '2017-03-15 ssergey', '', '2017-04-25 web2net', '', '', '2017-05-12 alex', '2017-03-15 ssergey', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p> Заправка НР 12А - 3шт, НР 05А - 2шт, восстановление НР 12А - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(811, '2017-03-15 ssergey', '', '2017-04-25 web2net', '', '2017-04-06 alexkiev', '', '2017-03-15 ssergey', '', 'Эдвансис', 68, '', 'Y', '<p> Заправка НР 78А - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(812, '2017-03-15 ssergey', '', '2017-04-25 web2net', '', '2017-04-06 alexkiev', '2017-05-24 alex', '2017-03-15 ssergey', '', 'Лансис', 71, '', 'Y', '<p>  Заправка НР 78А - 1шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(813, '2017-03-15 ssergey', '', '2017-04-25 web2net', '', '2017-05-18 alex', '', '2017-03-30 alexkiev', '', 'Поликлиника Русановка', 70, '', 'Y', '<p> Заправка НР 12А - 1шт, замена короны НР 12А - 1шт</p>', 'Картридж', '', '', '(Этуз 13)', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(814, '2017-03-16 rsergey', '', '2017-03-16 rsergey', '2017-03-20 irina', '', '2017-03-29 alexkiev', '2017-03-16 rsergey', '2017-04-20 alex', 'Визави', 84, '', 'Y', '', '', '', '<p> Сanon 4410 1шт запр  НР 3050 1 шт запр </p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(815, '2017-03-16 rsergey', '', '2017-03-16 rsergey', '2017-03-20 irina', '', '2017-03-29 rsergey', '2017-03-16 rsergey', '2017-04-20 alex', 'Визави', 84, '', 'Y', '', '', '', '<p> Заправка Canon 5980 1шт</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(816, '2017-03-16 rsergey', '', '2017-03-20 rsergey', '', '', '2017-03-20 rsergey', '2017-03-20 rsergey', '2017-04-22 alex', 'Бровары', 221, '', 'Y', '<p> 2 втулки терм пленка Т/О</p>', '', '', '<p> НР 3050</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(817, '2017-03-16 rsergey', '', '2017-03-24 irina', '2017-03-24 irina', '', '2017-03-24 alexkiev', '2017-03-24 irina', '2017-04-20 alex', 'ДС Электроникс', 148, '', 'Y', '', 'Картриджи ДОКИ ПЕЧАТАТЬ С NOV !!!!!', '', '<p> Заправка  НР 26А - 4шт, Canon ЕР 27 - 1шт, Xerox 3210 - 1шт, <span style=\\\\\\\"\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\"line-height:\\\\\\\\\\\"\\\\\\\">Xerox 3210X - 2шт, Xerox 3140 - 1шт</span></p>', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(818, '2017-03-16 rsergey', '', '2017-03-20 rsergey', '2017-03-20 rsergey', '', '2017-03-24 alexkiev', '2017-03-20 rsergey', '2017-04-20 alex', 'УКРшпон', 137, '', 'Y', '<p> Заправки НР 53А - 5шт, НР 15А - 2шт, НР 49А - 1шт, НР 12А - 2шт, НР 36А - 1шт; восстановление НР 15А - 1шт; ремонт картриджа НР 12А (корона) - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(826, '2017-03-17 ssergey', '', '2017-04-25 web2net', '', '', '', '2017-03-27 irina', '', 'Компаньон', 67, '', 'Y', '<p>Ремонт HP M1132 MFP, заправка НР 85А - 1шт</p>', 'HP M1132 MFP', '', '<p> Не копирует</p>', '', 'N', 'N', 'N', '150 от 27.03.17', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(819, '2017-03-16 rsergey', '', '2017-04-28 rsergey', '', '', '2017-04-28 rsergey', '2017-03-27 rsergey', '2017-05-05 alex', 'Дрим лайф', 75, '', 'Y', '', '3050', '', '<p>Тефлон Стартер DV310-1400грн</p>\r\n<p>Ролики 2шт</p>\r\n<p>Т/О Барабан 2шт</p>\r\n<p>Ролики зах бумаги  9шт х280</p>\r\n<p>Магнитний вал 1шт</p>\r\n<p>Сетка корони 1шт</p>\r\n<p>Корона переноса 1шт</p>\r\n<p>Втулки синхровала 2шт</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(820, '2017-03-16 rsergey', '', '2017-03-20 rsergey', '', '', '2017-03-20 rsergey', '2017-03-16 ssergey', '2017-04-22 alex', 'Рома Большевик', 139, '', 'Y', '<p> Заправка НР 35А - 2шт, НР 53А - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(821, '2017-03-16 rsergey', '', '2017-04-25 web2net', '', '', '', '2017-03-24 alexkiev', '', 'Орион', 103, '', 'Y', '<p>запр xerox 3020 + чип</p>\r\n<p> </p>', '', '', '<p> Запра + чип</p>', '', 'Y', 'N', 'N', '', 'N', 'rsergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(822, '2017-03-16 rsergey', '', '2017-03-16 rsergey', '', '', '2017-03-20 rsergey', '2017-03-16 rsergey', '2017-04-22 alex', 'Супрун', 145, '', 'Y', '', '', '', '<p> Т Н 118 1щт</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(823, '2017-03-16 rsergey', '', '2017-04-05 irina', '2017-04-05 irina', '', '2017-04-13 alexkiev', '2017-04-05 irina', '2017-04-20 alex', 'Глобал Мани', 52, '', 'Y', '<p>запр FX10-1шт, 505A-1шт</p>', 'Картриджи', '', '<p> НЕОПЛАЧЕН</p>', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(824, '2017-03-16 rsergey', '', '2017-04-25 web2net', '', '', '2017-04-29 rsergey', '2017-04-29 rsergey', '2017-05-05 alex', 'Кондиба (Бровари)', 128, '', 'Y', '', '', '', '<p> Тонер с 220</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(825, '2017-03-16 rsergey', '', '2017-03-21 rsergey', '', '', '2017-03-21 rsergey', '2017-03-21 rsergey', '2017-04-22 alex', 'Здолбуновская', 147, '', 'Y', '', 'XEROX 5020', '', '<p> Тонер ориг</p>', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(827, '2017-03-18 rsergey', '', '2017-03-18 rsergey', '2017-03-20 irina', '', '2017-04-21 irina', '2017-03-18 rsergey', '2017-04-22 alex', 'Соня', 151, '', 'Y', '<p> Заправка 12А —3шт</p>', '', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(828, '2017-03-18 rsergey', '', '2017-03-23 irina', '2017-03-23 irina', '', '2017-04-21 irina', '2017-03-23 irina', '2017-04-22 alex', 'Алвоген', 49, '', 'Y', '<p> Заправка 36А —2шт</p>', '', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(829, '2017-03-18 rsergey', '', '2017-03-20 rsergey', '', '', '2017-03-20 rsergey', '2017-03-20 rsergey', '2017-04-22 alex', 'Х.шосе', 150, '', 'Y', '', '163', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(830, '2017-03-19 alexkiev', '', '2017-03-20 alexkiev', '2017-03-20 alexkiev', '', '2017-03-20 alexkiev', '2017-03-20 alexkiev', '2017-03-20 alexkiev', 'Електробезпека', 234, '', 'Y', '', '', '', '<p> Канцтовары </p>', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(831, '2017-03-19 alexkiev', '', '2017-03-20 alexkiev', '2017-03-20 alexkiev', '', '2017-03-20 alexkiev', '2017-03-20 alexkiev', '2017-03-20 alexkiev', 'Юристы подол', 149, '', 'Y', '', '', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(832, '2017-03-19 alexkiev', '', '2017-03-21 rsergey', '', '', '2017-03-21 rsergey', '2017-03-21 rsergey', '2017-03-21 alexkiev', 'Салон багет Мишуги', 233, '', 'Y', '', 'Xerox', '', '<p> Дозирующее+ заправка</p>', '', 'N', 'Y', 'N', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(833, '2017-03-19 alexkiev', '', '2017-04-25 web2net', '', '', '2017-04-21 irina', '2017-04-03 alexkiev', '', 'МЦ МК (Моя клиника)', 190, '', 'Y', '<p>картр 728- 1шт</p>', 'картр 728', '', '', 'Сч 183', 'Y', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(834, '2017-03-19 alexkiev', '', '2017-04-25 web2net', '', '', '2017-05-12 alex', '2017-05-12 alex', '2017-05-12 alex', 'Днипролаб БакЛаб', 211, '', 'Y', '<p> Заправка НР 12А - 1шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(835, '2017-03-20 rsergey', '', '2017-03-22 irina', '2017-03-22 irina', '', '2017-03-24 rsergey', '2017-03-22 irina', '2017-04-20 alex', 'УКРшпон', 137, '', 'Y', '', 'НР 2015', '', '<p>  Ролик захвата бумаги Т/О =560грн</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(836, '2017-03-20 alexkiev', '', '2017-04-25 web2net', '', '2017-04-13 alexkiev', '', '2017-03-20 alexkiev', '', 'БМГ', 208, '', 'Y', '<p>тонер В185</p>\r\n<p>устан прог</p>', 'ПК тонер В185', '', '<p>устан прог</p>\r\n<p> </p>\r\n<p> </p>', '', 'Y', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(837, '2017-03-20 alexkiev', '', '2017-04-25 web2net', '2017-05-23 irina', '', '2017-05-23 irina', '2017-03-22 ssergey', '', 'Профсоюзы', 74, '', 'Y', '1. Ремонт ноутбука, 2. Заправка Canon 725 - 1шт', 'ПК шефа', '', '', '', 'Y', 'N', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03');
INSERT INTO `works` (`id`, `date_create`, `date_prioritet`, `date_otgryzka`, `date_doc`, `date_srochno`, `date_pay`, `date_zdelano`, `date_archiv`, `client`, `client_id`, `data_client`, `zdelano`, `content`, `divice`, `sn`, `neispravnost`, `note`, `viezd`, `otgryzka`, `doc`, `number_bill`, `pay`, `ingener`, `responsible_ingener`, `nal`, `archiv`, `prioritet`, `srochno`, `trash`, `date_trash`, `month_create`) VALUES
(838, '2017-03-20 alexkiev', '', '2017-05-17 alex', '', '2017-04-13 alexkiev', '2017-05-17 alex', '2017-03-21 ssergey', '', 'Центус', 135, '', 'Y', '<p>Заправка Canon 719 - 1шт, HP 55A - 1шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(839, '2017-03-20 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-03-27 irina', '', 'СитиСайт', 111, '', 'Y', '<p> Заправка Xerox 3210/3220 - 1шт.</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '122 от 22.03.17', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(840, '2017-03-20 alexkiev', '', '2017-04-25 web2net', '2017-05-24 irina', '', '2017-05-24 irina', '2017-03-27 irina', '', 'Вип Декор', 80, '', 'Y', ' заправка  05А        - 1шт', 'Картридж', '', '', '', 'N', 'Y', 'Y', '148 от 27.03.17', 'Y', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(841, '2017-03-20 alexkiev', '', '2017-03-21 rsergey', '2017-03-22 irina', '', '2017-03-21 rsergey', '2017-03-21 rsergey', '2017-04-20 alex', 'Аероальянс', 60, '', 'Y', '', 'NEW картридж синий Xerox 6720 ', '', '<p> Заправки</p>', '', 'Y', 'Y', 'Y', '129 від 16.03.2017', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(842, '2017-03-20 alexkiev', '', '2017-03-20 alexkiev', '2017-03-22 web2net', '', '2017-03-20 alexkiev', '2017-03-20 alexkiev', '2017-04-20 alex', 'Козирні подорожі', 69, '', 'Y', '', 'NEW ноут', '', '', 'ул. Предславенская 43/2', 'Y', 'Y', 'Y', '130 від 16 березня 2017', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(843, '2017-03-20 rsergey', '', '2017-04-18 rsergey', '2017-04-18 rsergey', '', '2017-04-18 rsergey', '2017-04-18 rsergey', '2017-04-20 alex', 'Квазар', 58, '', 'Y', '', 'SCX -8425', '', '<p>&nbsp;Вал заряда в следующий счет</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(844, '2017-03-21 rsergey', '', '2017-03-22 rsergey', '', '', '2017-03-22 rsergey', '2017-03-22 rsergey', '2017-04-22 alex', 'Школа №80', 97, '', 'Y', '<p> Заправка ЕР 27</p>', 'картридж', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(845, '2017-03-21 rsergey', '', '2017-03-22 rsergey', '2017-03-22 irina', '', '2017-03-24 alexkiev', '2017-03-22 irina', '2017-04-20 alex', 'Впровадження', 59, '', 'Y', '<p> Запр 12А 1шт  15а 4шт  85А 1шт  Xerox 3117 1шт  Sam 1630+чип =285грн  Ремонт 12А (корона) 1шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(846, '2017-03-21 alexkiev', '', '2017-04-25 web2net', '', '', '', '', '', 'СитиСайт', 111, '', 'N', '<p> Заправка Xerox 3210/3220 - 1шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '122 от 22.03.17', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(847, '2017-03-21 alexkiev', '', '2017-04-25 web2net', '', '', '', '', '', 'Ира Леси', 213, '', 'N', '', '', '', '<p> Плотность бумаги</p>', '', 'Y', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(848, '2017-03-21 alexkiev', '', '2017-04-25 web2net', '', '', '', '', '', 'Лена инфаркт отдел Запорожца ', 212, '', 'N', '', 'canon струйник', '', '<p>New Перезапр карт</p>', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(849, '2017-03-21 alexkiev', '', '2017-04-25 web2net', '', '2017-04-06 alexkiev', '', '2017-03-21 alexkiev', '', 'Эдвансис', 68, '', 'Y', '', 'картриджи', '', '<p>запр НР <span id=\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"ctl00_cM_cW_gW_ctl22_sW\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\">CF230A(</span>30А) -1 шт 264грн</p>', '', 'Y', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(930, '2017-04-03 alexkiev', '', '2017-04-25 web2net', '', '2017-04-13 alexkiev', '2017-05-17 alex', '2017-04-03 alexkiev', '', 'Центус', 135, '', 'Y', '<p>Заправка Canon 719 - 2шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(931, '2017-04-03 alexkiev', '', '2017-05-17 alex', '', '2017-04-13 alexkiev', '2017-05-17 alex', '2017-04-03 alexkiev', '', 'Центус склад', 191, '', 'Y', '<p>Заправка Canon 719 - 2шт</p>\r\n<p>восст 719-1шт</p>', 'картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(851, '2017-03-21 ssergey', '', '2017-04-28 alex', '', '', '2017-05-17 alex', '2017-03-21 ssergey', '', 'Гринстоун', 92, '', 'Y', '<p>Заправка Canon 731 black - 1шт</p>', 'картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(852, '2017-03-21 ssergey', '', '2017-03-30 alexkiev', '', '', '2017-03-29 alexkiev', '2017-03-22 ssergey', '2017-04-20 alex', 'Днипролаб', 66, '', 'Y', '<p> Заправка НР 85А - 4шт, НР 12А - 1шт, НР 78А - 1шт, НР 35А - 1шт, НР 36А - 1шт, НР 05А - 1шт, Canon 725 - 2шт; восстановление НР 85А - 1шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(853, '2017-03-22 rsergey', '', '2017-03-22 rsergey', '', '', '2017-03-22 rsergey', '2017-03-22 rsergey', '2017-04-22 alex', 'Х.шосе', 150, '', 'Y', '<p> 2 шестерни</p>', '163', '', '<p> Трещит</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(854, '2017-03-22 irina', '', '2017-03-22 rsergey', '2017-03-22 irina', '', '2017-03-22 irina', '2017-03-22 rsergey', '2017-04-20 alex', 'Мед Трейд', 156, '', 'Y', '<p> Тонер Минолта 227/287/367 TN323 - 2шт</p>', 'Тонер', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'irina', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(855, '2017-03-22 irina', '', '2017-03-22 rsergey', '2017-03-22 irina', '', '2017-03-22 irina', '2017-03-22 rsergey', '2017-04-20 alex', 'Укроптпостач', 117, '', 'Y', '<p> Тонер Минолта 223/283 (17,5К) TN-217 - 2шт</p>', 'Тонер', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'irina', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(856, '2017-03-22 irina', '', '2017-03-22 rsergey', '2017-03-22 irina', '', '2017-03-24 rsergey', '2017-03-22 rsergey', '2017-04-20 alex', 'Потеев', 152, '', 'Y', '<p> Тонер Минолта 363/432 TN-414 - 2шт</p>', 'Тонер', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-03'),
(857, '2017-03-22 rsergey', '', '2017-03-22 rsergey', '', '', '2017-03-22 rsergey', '2017-03-22 rsergey', '2017-04-22 alex', 'Укрсплав', 155, '', 'Y', '<p> Запр 85А 1шт САМ 1шт Барабан 85А 1шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(858, '2017-03-22 rsergey', '', '2017-03-23 rsergey', '', '', '2017-03-23 rsergey', '2017-03-23 rsergey', '2017-04-22 alex', 'Магнитогорская', 154, '', 'Y', '', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(859, '2017-03-22 rsergey', '', '2017-03-23 rsergey', '', '', '2017-03-23 rsergey', '2017-03-23 rsergey', '2017-04-22 alex', 'Закревского', 153, '', 'Y', '', '185', '', '<p> ТН 116 1шт</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(860, '2017-03-22 rsergey', '', '2017-03-22 rsergey', '', '', '2017-03-22 rsergey', '2017-03-22 rsergey', '2017-03-22 alexkiev', 'Минолта склад', 232, '', 'Y', '', '', '', '<p> Забрать блоки Б/У</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(861, '2017-03-22 rsergey', '', '2017-03-24 alexkiev', '2017-03-24 alexkiev', '', '2017-03-24 alexkiev', '2017-03-24 alexkiev', '2017-04-20 alex', 'Тепличный (Бровары)', 220, '', 'Y', '', '1054', '', '<p> тонер 2шт  х564 грн</p>', '', 'Y', 'Y', 'Y', '№143 от 23.03.17 отправлен на почту', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(862, '2017-03-22 alexkiev', '', '2017-04-25 web2net', '', '', '2017-04-21 irina', '2017-03-23 alexkiev', '', 'МЦ МК (Моя клиника)', 190, '', 'Y', '<p>картр Xerox 3140- 1шт</p>', 'картр', '', '', 'Сч 183', 'Y', 'N', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(863, '2017-03-22 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-03-30 ssergey', '', 'Инкомантур', 93, '', 'Y', '<p> заправка НР 05А - 1шт,</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(864, '2017-03-22 alexkiev', '', '2017-04-25 web2net', '', '', '2017-04-13 alexkiev', '2017-04-12 irina', '', 'ПосСтрор', 50, '', 'Y', '<p> Постор   100816</p>\r\n<p>ЗапрPanasonic</p>\r\n<p>Бум А4-5п</p>\r\n<p>Файлы 2 п</p>\r\n<p>Было раньше</p>\r\n<p>2пач файлов</p>\r\n<p>2 маркера</p>\r\n<p>Файлы 2 пачки Виталик заносил в октябре</p>\r\n<p> </p>\r\n<p> </p>', 'картридж', '', '<p>запр картридж Panasonic</p>\r\n<p>Бумага А4 -5 пачек</p>\r\n<p>файлы   2 пачки</p>\r\n<p>СТАРыЕ РаБОТы и ТовАР!!!!!!!!!!!!</p>\r\n<p> </p>', 'Саша очень просит счет\r\n', 'N', 'N', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(865, '2017-03-22 rsergey', '', '2017-03-23 rsergey', '', '', '2017-03-23 rsergey', '2017-03-23 rsergey', '2017-04-22 alex', 'Демеевка', 219, '', 'Y', '', '163', '', '<p> Трещит</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(866, '2017-03-22 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-03-23 ssergey', '', 'Металлобаза Юра', 210, '', 'Y', '', 'Canon 810 ', '', '<p>запр ЕР22 - 1шт</p>', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'Y', 'N', 'N', 'N', 'N', '', '2017-03'),
(867, '2017-03-22 alexkiev', '', '2017-04-25 web2net', '', '', '', '', '', 'Гильдия', 51, '', 'N', '<p> Заправка  - шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(868, '2017-03-22 rsergey', '', '2017-04-25 web2net', '', '', '', '', '', 'Березняки', 209, '', 'N', '', 'РАНАСОНИК', '', '<p> ЗАПР</p>', '', 'Y', 'Y', 'N', '', 'N', 'rsergey', '2017-04-20 rsergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-03'),
(869, '2017-03-22 rsergey', '', '2017-04-11 irina', '2017-04-11 irina', '2017-03-29 rsergey', '2017-04-13 alexkiev', '2017-04-11 irina', '2017-04-20 alex', 'Больница №10', 91, '', 'Y', '<p> заправки Sam 3шт    12а 5шт   1005 3шт  Востанов 12А 1шт 1005 1шт Sam 1шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(870, '2017-03-22 ssergey', '', '2017-04-25 web2net', '', '', '2017-03-24 alexkiev', '2017-03-22 ssergey', '', 'Зевс', 113, '', 'Y', '<p>Заправка Canon FX-10 - 1шт</p>', 'картридж', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(871, '2017-03-23 alexkiev', '', '2017-04-25 web2net', '2017-04-21 irina', '', '', '2017-03-27 irina', '', 'Ловекс', 62, '', 'Y', '<p> Заправка НР 78А - 1шт, Canon ЕР22 - 1шт; восстановление Canon 728 - 1шт</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '151 от 27.03.17', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(872, '2017-03-23 alexkiev', '2017-05-13 alex', '2017-04-25 web2net', '', '', '', '', '', 'Нотариус Кияшко', 73, '', 'N', '', 'New МФУ', '', '', '', 'Y', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'Y', 'N', 'N', '', '2017-03'),
(873, '2017-03-23 irina', '', '2017-03-23 rsergey', '2017-03-23 irina', '', '2017-03-23 rsergey', '2017-03-23 rsergey', '2017-04-20 alex', 'Евромастила', 159, '', 'Y', '', 'ДОКИ по счету № 322, 39', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'irina', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(874, '2017-03-23 rsergey', '', '2017-03-28 irina', '2017-03-28 irina', '2017-03-23 rsergey', '2017-04-07 rsergey', '2017-03-28 irina', '2017-04-20 alex', 'УКРшпон', 137, '', 'Y', '', '185', '', '<p>  Тонер ТN-116 2штт   1115 грн      Т/О НР 3020 420грн</p>', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(875, '2017-03-23 alexkiev', '', '2017-04-25 web2net', '', '2017-04-28 ssergey', '', '2017-03-24 ssergey', '', 'Укрхимфармация', 158, '', 'Y', 'Заправка Samsung 4824 - 2шт, Minolta 1600 (black) - 1шт; восстановление Samsung 4824 - 1шт; ремонт картриджа Samsung 4824 (ракель) - 2шт', 'Samsung', '', '<p> Мажет ччерным  замена картриджа не помагает</p>', 'Д9 Оф 430 эт послед пешком:-))', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(876, '2017-03-23 ssergey', '', '2017-05-12 alex', '2017-05-12 alex', '', '2017-05-12 alex', '2017-03-23 ssergey', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p> Заправка НР 85А - 2шт, НР 05А - 1шт, НР 35А - 1шт, НР 53А - 1шт, Canon 725 - 1шт; восстановление НР 53А - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(877, '2017-03-23 rsergey', '', '2017-04-25 web2net', '2017-03-28 irina', '2017-03-28 rsergey', '2017-04-28 rsergey', '2017-03-29 rsergey', '2017-05-05 alex', 'Окси-К', 132, '', 'Y', '', '', '', '<p> Новий 226     Тонер ТN -114 1 шт   TN - 118 !шт </p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(878, '2017-03-23 rsergey', '', '2017-03-28 irina', '2017-03-28 irina', '2017-03-24 rsergey', '2017-04-12 rsergey', '2017-03-28 irina', '2017-04-20 alex', 'Будмир', 86, '', 'Y', '', 'Картриджи', '', '<p> Заправки 36А -3шт</p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(879, '2017-03-23 rsergey', '', '2017-03-27 rsergey', '', '', '2017-03-27 rsergey', '2017-03-27 rsergey', '2017-04-22 alex', 'Бортничи', 157, '', 'Y', '', '!85', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(880, '2017-03-23 ssergey', '', '2017-04-25 web2net', '2017-04-19 irina', '', '', '2017-04-19 irina', '', 'Румб Плюс', 120, '', 'Y', '<p>&nbsp;Заправка Samsung D1043S - 2шт</p>', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(881, '2017-03-24 alexkiev', '', '2017-04-25 web2net', '', '2017-04-13 alexkiev', '', '2017-03-24 alexkiev', '', 'Орион', 103, '', 'Y', '<p> </p>\r\n<p>запр 737-1шт</p>\r\n<p> </p>', 'картриджи', '', '<p> Запра</p>', '', 'Y', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(882, '2017-03-24 rsergey', '', '2017-04-03 rsergey', '', '', '2017-04-03 rsergey', '2017-04-03 rsergey', '2017-04-22 alex', 'Хата рибака', 161, '', 'Y', '<p>1). Т/О Xerox WC 3045, 2). Заправка Xerox WC 3045 - 1шт</p>', '', '', '<p> Посмотреть технику</p>', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(883, '2017-03-24 rsergey', '', '2017-03-31 rsergey', '', '', '2017-03-31 rsergey', '2017-03-31 rsergey', '2017-04-22 alex', 'Москаленко', 160, '', 'Y', '', '', '', '<p> Печка</p>', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(884, '2017-03-24 ssergey', '', '2017-03-29 rsergey', '2017-03-27 irina', '', '2017-03-29 alexkiev', '2017-03-27 irina', '2017-04-20 alex', 'Молочна Слобода', 136, '', 'Y', '<p> Заправка НР 81А - 2шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(885, '2017-03-24 ssergey', '', '2017-05-13 alex', '', '', '', '2017-03-30 ssergey', '', 'Инкомантур', 93, '', 'Y', '<p> Заправка НР 05А - 2шт, НР 35А - 1шт, НР 12А - 1шт; восстановление НР 35А - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(886, '2017-03-27 ssergey', '', '2017-04-25 web2net', '', '', '', '2017-03-27 ssergey', '', 'Гильдия', 51, '', 'Y', '<p> Заправка НР 05Х - 2шт, НР 85А - 1шт; восстановление НР 85А - 1шт; ремонт картриджа НР 05Х (дозирующее) - 1шт</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(887, '2017-03-27 rsergey', '', '2017-04-25 web2net', '2017-04-28 rsergey', '', '2017-04-28 rsergey', '2017-03-27 rsergey', '2017-05-05 alex', 'Визави', 84, '', 'Y', '<p> Дозиручее лезвие 1шт (след щет)</p>', 'картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(888, '2017-03-27 rsergey', '', '2017-03-27 irina', '2017-03-27 irina', '2017-03-27 rsergey', '2017-04-07 rsergey', '2017-03-27 irina', '2017-04-20 alex', 'Тиларм', 82, '', 'Y', '<p> Pемонт  480 грн</p>', 'HP m 1005', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(890, '2017-03-27 alexkiev', '', '2017-03-31 rsergey', '', '', '2017-03-31 rsergey', '2017-03-31 rsergey', '2017-04-22 alex', 'Школа №19', 87, '', 'Y', '<p> картриджа +чип =330 г</p>', 'samsun 2070', '', '', 'комн 28 Елена георгиевна 066 233 46 50', 'Y', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(891, '2017-03-28 rsergey', '', '2017-03-29 rsergey', '', '', '2017-03-29 rsergey', '2017-03-29 rsergey', '2017-04-22 alex', 'Бортничи', 157, '', 'Y', '<p> Тонер 165 1шт  1052 1шт</p>', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(892, '2017-03-28 rsergey', '', '2017-04-25 web2net', '2017-04-27 alex', '', '2017-04-26 rsergey', '2017-03-29 rsergey', '', 'Впровадження', 59, '', 'Y', '<p> Т/О в следующий сщет</p>', ' HP  1200 ', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(893, '2017-03-28 rsergey', '', '2017-03-31 rsergey', '', '', '2017-03-31 rsergey', '2017-03-31 rsergey', '2017-04-22 alex', 'Межигорская 50', 162, '', 'Y', '', 'Sam', '', '<p> Застревание</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(894, '2017-03-28 rsergey', '', '2017-04-03 irina', '2017-04-03 irina', '2017-03-29 rsergey', '2017-04-21 irina', '2017-04-03 irina', '2017-04-22 alex', 'Евромастила', 159, '', 'Y', '<p> Запр 36А 1ШТ 53А 2шт  Дозирущее лезвие 1шт-90 грн</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(895, '2017-03-28 ssergey', '', '2017-03-29 ssergey', '', '', '2017-03-29 ssergey', '2017-03-29 ssergey', '2017-04-22 alex', 'Освободителей 1, оф. 609а', 198, '', 'Y', '<p> Заправка Brother TN-2275 - 180 грн</p>', 'Картридж', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(896, '2017-03-28 ssergey', '', '2017-05-13 alex', '2017-04-11 irina', '', '2017-05-13 alex', '2017-04-11 irina', '2017-05-13 alex', 'Нотариус Кияшко', 73, '', 'Y', '<p> Заправка НР 17А - 1шт, Canon 728 - 1шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(897, '2017-03-28 ssergey', '', '2017-04-25 web2net', '', '', '', '2017-03-28 ssergey', '', 'Ловекс', 62, '', 'Y', '<p> Заправка Xerox 3020 - 1шт, Canon 737 - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(898, '2017-03-28 irina', '', '2017-04-25 web2net', '2017-05-23 irina', '', '2017-05-23 irina', '', '', 'Профсоюзы', 74, '', 'N', ' Стикеры 75х75мм (арт.1153) - 20 шт. \r\n Стаканы (арт.11369) - 300 шт.', 'стикеры, стаканы', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'irina', '2017-04-28 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(899, '2017-03-29 ssergey', '', '2017-04-25 web2net', '', '', '', '', '', 'Освободителей 1, оф. 609а', 198, '', 'N', '<p>Бумага Xerox - 1 пачка - 75 грн</p>', 'Бумага', '', '', '', 'Y', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'Y', 'N', 'N', 'N', 'N', '', '2017-03'),
(900, '2017-03-29 ssergey', '', '2017-04-25 web2net', '', '', '2017-05-12 alex', '2017-03-29 ssergey', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p>&nbsp;Заправка НР 05А - 1шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(901, '2017-03-29 ssergey', '', '2017-04-27 alex', '', '', '2017-04-27 alex', '2017-03-30 rsergey', '2017-04-27 alex', 'О О Н', 105, '', 'Y', '<p>&nbsp;1. Ремонт&nbsp;Panasonic KX-FL403; 2. Заправка картриджа - 1шт</p>', 'Panasonic KX-FL403', '', '<p>Не берет бумагу</p>', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(902, '2017-03-29 ssergey', '', '2017-04-06 rsergey', '2017-03-31 irina', '2017-03-30 ssergey', '2017-04-21 irina', '2017-03-31 irina', '2017-04-22 alex', 'Кристар', 197, '', 'Y', '<p>&nbsp;1). Ремонт&nbsp;Samsung SCX-4623F - 480грн</p>\r\n<p>2). Заправка НР 35А - 1шт, НР 85А - 2шт, Samsung D105S (без чипа) - 1шт &nbsp;все по 165 грн</p>', 'Samsung SCX-4623F, картриджи', '', '<p>&nbsp;Не берет бумагу</p>', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(903, '2017-03-29 alexkiev', '', '2017-03-30 alexkiev', '', '', '2017-03-30 alexkiev', '2017-03-30 ssergey', '2017-03-30 alexkiev', 'Днипролаб Маяков', 194, '', 'Y', '', 'Картридж', '', '<p>Заправка Canon 719 - 1шт, Canon 725-1шт</p>', '', 'N', 'Y', 'N', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(904, '2017-03-29 alexkiev', '', '2017-03-30 alexkiev', '', '', '2017-03-30 alexkiev', '2017-03-30 alexkiev', '2017-03-30 alexkiev', 'Днипролаб Маяков', 194, '', 'Y', '<p>Заправка 285/725-2шт</p>', 'Картридж', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(905, '2017-03-29 rsergey', '', '2017-04-05 irina', '2017-04-05 irina', '2017-04-04 rsergey', '2017-04-21 irina', '2017-04-05 irina', '2017-04-22 alex', 'Украинська утилизацийна компания', 174, '', 'Y', '<p>&nbsp;Заправка &nbsp;85А -2шт 165 грн</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(906, '2017-03-29 rsergey', '', '2017-04-05 rsergey', '', '', '2017-04-05 rsergey', '2017-04-05 rsergey', '2017-04-22 alex', 'Радищева 1050', 101, '', 'Y', '', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(907, '2017-03-29 rsergey', '', '2017-03-29 alexkiev', '', '', '2017-03-29 alexkiev', '2017-03-29 alexkiev', '2017-03-30 alexkiev', 'Л-Контракт', 146, '', 'Y', '', 'Ноут новий DELL', '', '', '1/3788108_3 от 29.03.17 login', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(908, '2017-03-29 rsergey', '', '2017-04-12 rsergey', '2017-04-12 rsergey', '2017-04-04 rsergey', '2017-04-13 alexkiev', '2017-04-12 rsergey', '2017-04-20 alex', 'Молочна Слобода', 136, '', 'Y', '', '283', '', '<p>&nbsp;Тонер ТN- 217 2шт х 900грн</p>', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(909, '2017-03-29 rsergey', '', '2017-03-31 irina', '2017-03-31 irina', '2017-03-29 rsergey', '2017-04-21 irina', '2017-03-31 irina', '2017-04-22 alex', 'ДС Электроникс', 148, '', 'Y', '<p>&nbsp;Заправка 26А 2шт</p>', 'Принтер НР 402', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(910, '2017-03-30 rsergey', '', '2017-04-25 web2net', '', '', '2017-04-29 rsergey', '2017-04-29 rsergey', '2017-05-05 alex', '5990414', 196, '', 'Y', '', 'brother', '', '<p>&nbsp;заправка</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(911, '2017-03-30 rsergey', '', '2017-03-31 ssergey', '', '', '2017-04-06 rsergey', '2017-03-31 ssergey', '2017-04-22 alex', 'Школа №80', 97, '', 'Y', '<p>&nbsp;Заправка Canon EP-27 - 1шт, восстановление&nbsp;Canon EP-27 - 1шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(912, '2017-03-30 rsergey', '', '2017-04-03 rsergey', '', '', '2017-04-03 rsergey', '2017-04-03 rsergey', '2017-04-22 alex', 'Вишневе 2050', 195, '', 'Y', '', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(913, '2017-03-30 alexkiev', '', '2017-03-30 alexkiev', '2017-03-30 alexkiev', '2017-03-30 alexkiev', '2017-03-30 alexkiev', '2017-03-30 alexkiev', '2017-03-30 alexkiev', 'Днипролаб Кинотеатр', 214, '', 'Y', '<p> Заправка НР 285 - 3шт</p>', 'Картридж', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(914, '2017-03-30 alexkiev', '', '2017-04-25 web2net', '', '2017-05-18 alex', '', '2017-03-30 alexkiev', '', 'Поликлиника Русановка ', 70, '', 'Y', '<p>ремонт</p>', 'Xerox 3010', '', '', '(Лун 5 ком330)', 'N', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(915, '2017-03-30 alexkiev', '', '2017-05-17 alex', '', '', '2017-05-17 alex', '2017-04-04 alexkiev', '', 'Долфи', 104, '', 'Y', 'Ремонт КМА Konica Minolta Bizhub 185 - 1шт - 4600грн\r\n\r\nсписываем: тефлон.вал В185/164-1, ролики(калары) -2шт, фотоцилиндр-1шт, ракель OEM -1шт, стартер DV116-1шт, пальцы по тефлону 4шт', 'КМА Bizhub 185', '', '<p>Кап ремонт + печка</p>\r\n<p>АКТ ТЕХ СОСТОЯНИЯ</p>', '', 'N', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-03'),
(916, '2017-03-30 alexkiev', '', '2017-05-12 alex', '', '', '2017-05-12 alex', '2017-03-30 alexkiev', '2017-05-12 alex', 'Днипролаб Дарница', 188, '', 'Y', '<p>&nbsp;Заправка Canon 726 - 1шт</p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(917, '2017-03-30 alexkiev', '', '2017-04-25 web2net', '', '2017-05-18 alex', '', '', '', 'Поликлиника Русановка (Энтузиастов 13)', 180, '', 'N', '<p>запр карт Canon 725-1шт</p>', 'картр', '', '', '(Оксана Энтузиастов 13)', 'N', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(918, '2017-03-30 alexkiev', '', '2017-05-12 alex', '2017-05-12 alex', '', '2017-05-12 alex', '2017-05-12 alex', '2017-05-12 alex', 'Днипролаб Маяков', 194, '', 'Y', '', 'Картридж', '', '<p>Заправка Canon 719 - 1шт, Canon&nbsp;725-1шт</p>', '', 'N', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(919, '2017-03-30 alexkiev', '', '2017-04-25 web2net', '', '', '2017-05-12 alex', '2017-05-12 alex', '2017-05-12 alex', 'Днипролаб Маяков', 194, '', 'Y', '', 'Картридж', '', '<p>Заправка Canon 719 - 1шт, Canon&nbsp;725-1шт</p>', '', 'N', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(920, '2017-03-31 rsergey', '', '2017-04-06 rsergey', '', '', '2017-04-03 rsergey', '2017-04-03 rsergey', '2017-04-21 alex', 'Авторинок (Нотариус)', 179, '', 'Y', '<p>&nbsp;Запр Сам 2 шт Бараб сам 4220 1 шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(921, '2017-03-31 rsergey', '', '2017-04-03 rsergey', '', '', '2017-04-03 rsergey', '2017-04-03 rsergey', '2017-04-21 alex', 'Скифоил', 83, '', 'Y', '', '', '', '', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(922, '2017-03-31 rsergey', '', '2017-04-25 web2net', '', '', '2017-04-28 rsergey', '2017-03-31 ssergey', '2017-05-05 alex', 'Дрим лайф', 75, '', 'Y', '', '350', '', '<p>Печатает белые полосы</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(923, '2017-03-31 rsergey', '', '2017-04-03 rsergey', '', '', '2017-04-03 rsergey', '2017-04-03 rsergey', '2017-04-21 alex', 'Терминал Леша', 126, '', 'Y', '<p>&nbsp;Замена шестерни термо пленки втулки т/о</p>', '2015', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(924, '2017-03-31 rsergey', '', '2017-04-10 rsergey', '', '', '2017-04-10 rsergey', '2017-04-10 rsergey', '2017-04-21 alex', 'Оболонь Соня', 193, '', 'Y', '', 'і R 1510', '', '<p>Барабан 1510 1шт барабан 53А 1шт</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(925, '2017-03-31 ssergey', '', '2017-04-25 web2net', '', '', '2017-05-12 alex', '2017-03-31 ssergey', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p>&nbsp;Заправка НР 12А - 4шт, НР 85А - 2шт, НР 05А - 1шт, Canon 725 - 1шт; восстановление НР 12А - 1шт, НР 05А - 1шт; Ремонт картриджа НР 12А (корона) - 2шт, НР 35А (дозирующее) - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(926, '2017-03-31 rsergey', '', '2017-04-13 irina', '2017-04-13 irina', '2017-04-13 rsergey', '2017-04-21 irina', '2017-04-13 irina', '2017-04-22 alex', 'МВЦ', 181, '', 'Y', '<p>принтер HP 1200 Термопленка -360 грн Т/О 240 грн &nbsp;Заправка 53а 1шт 15а 1шт</p>', '', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-03'),
(927, '2017-03-31 rsergey', '', '2017-04-25 web2net', '', '', '2017-04-29 rsergey', '2017-04-29 rsergey', '2017-05-05 alex', 'Боярка', 192, '', 'Y', '', '163', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(928, '2017-03-31 rsergey', '', '2017-05-23 rsergey', '2017-04-18 rsergey', '2017-04-04 rsergey', '', '2017-04-04 rsergey', '', 'Школа №18', 54, '', 'Y', ' Заправвка М Ф У  17А 2шт', 'Картридж', '', ' Договор', '', 'Y', 'Y', 'Y', '', 'N', 'rsergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-03'),
(929, '2017-03-31 rsergey', '', '2017-04-04 rsergey', '', '', '2017-04-04 rsergey', '2017-04-04 rsergey', '2017-04-20 alex', 'Авторинок 215', 140, '', 'Y', '', '215', '', '<p>&nbsp;Тонер тнт118 2шт</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-03'),
(932, '2017-04-03 alexkiev', '', '2017-04-25 web2net', '', '', '2017-04-21 irina', '2017-04-03 rsergey', '', 'МЦ МК (Моя клиника)', 190, '', 'Y', '<p>картр 728- 1шт</p>\r\n<p>712-1шт</p>', 'Картриджи', '', '', 'Сч 183', 'Y', 'N', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(933, '2017-04-03 rsergey', '', '2017-04-03 rsergey', '', '', '2017-04-03 rsergey', '2017-04-03 rsergey', '2017-04-20 alex', 'Лесной Дима', 189, '', 'Y', '<p>&nbsp;Тонер 215 2 шт</p>', '215', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(934, '2017-04-03 rsergey', '', '2017-04-04 rsergey', '', '', '2017-04-04 rsergey', '2017-04-04 rsergey', '2017-04-20 alex', 'Деревообробна', 144, '', 'Y', '<p>&nbsp;ЗАПР36а 2шт</p>', '1005', '', '<p>&nbsp;Заправки</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(935, '2017-04-03 rsergey', '', '2017-04-03 rsergey', '', '', '2017-04-03 rsergey', '2017-04-03 rsergey', '2017-04-20 alex', 'Владигор', 81, '', 'Y', '', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(936, '2017-04-03 rsergey', '', '2017-04-03 rsergey', '', '', '2017-04-03 rsergey', '2017-04-03 rsergey', '2017-04-20 alex', 'Евромастила', 159, '', 'Y', '<p>&nbsp;Термо пленка Т/О Заправка &nbsp;ЕР 22- 2 шт</p>', '1120', '', '', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(937, '2017-04-03 ssergey', '', '2017-04-03 alexkiev', '', '', '2017-04-10 alexkiev', '2017-04-03 ssergey', '2017-04-20 alex', 'Днипролаб Дарница', 188, '', 'Y', '<p>Заправка НР 1025 Yellow - 1шт, magenta - 1шт, НР 05А - 1шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(938, '2017-04-03 ssergey', '', '2017-04-25 web2net', '', '2017-04-13 alexkiev', '', '2017-04-03 ssergey', '', 'Орион', 103, '', 'Y', '<p> Заправка НР 78А - 1шт</p>', 'картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(939, '2017-04-03 ssergey', '', '2017-04-25 web2net', '', '2017-04-13 alexkiev', '2017-05-17 alex', '2017-04-03 ssergey', '', 'Центус', 135, '', 'Y', '<p> Заправка Canon 719 - 1шт; ремонт картриджа Canon 719 (дозирующее) - 1шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(940, '2017-04-03 ssergey', '', '2017-04-25 web2net', '', '', '', '2017-04-03 ssergey', '', 'Инкомантур', 93, '', 'Y', '<p> Заправка НР 05А - 2шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(941, '2017-04-03 ssergey', '', '2017-04-25 web2net', '', '', '2017-05-17 alex', '2017-04-03 ssergey', '', 'МясоМолПром', 183, '', 'Y', '<p> Заправка НР 49А - 1шт, ремонт картриджа НР 49А (Дозирующее) - 1шт</p>', 'картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(942, '2017-04-03 ssergey', '', '2017-04-06 rsergey', '', '', '2017-04-06 rsergey', '2017-04-03 rsergey', '2017-04-20 alex', 'Владигор', 81, '', 'Y', '<p>&nbsp;Заправка Canon FC - 1шт, восстановление&nbsp;Canon FC - 1шт</p>', 'картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(943, '2017-04-03 rsergey', '', '2017-04-03 rsergey', '', '', '2017-04-03 rsergey', '2017-04-03 rsergey', '2017-04-20 alex', 'Бойченка 16', 187, '', 'Y', '<p>&nbsp;Заправка</p>', '1005', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(944, '2017-04-03 rsergey', '', '2017-04-04 rsergey', '', '', '2017-04-05 rsergey', '2017-04-04 rsergey', '2017-04-20 alex', 'Школа №315', 72, '', 'Y', '', '185', '', '<p>&nbsp;Тонер</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(945, '2017-04-03 rsergey', '', '2017-04-05 rsergey', '', '', '2017-04-05 rsergey', '2017-04-05 rsergey', '2017-04-20 alex', 'Радищева 1050', 101, '', 'Y', '', '', '', '<p>&nbsp;Полотенце</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(946, '2017-04-03 rsergey', '', '2017-04-04 rsergey', '', '', '2017-04-04 rsergey', '2017-04-04 rsergey', '2017-04-20 alex', 'Бережанска 4', 186, '', 'Y', '<p>&nbsp;Запр 36 а 2шт 53а 1шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(947, '2017-04-03 rsergey', '', '2017-04-04 rsergey', '', '', '2017-04-04 rsergey', '2017-04-04 rsergey', '2017-04-20 alex', 'Авторинок (Нотариус)', 179, '', 'Y', '<p>&nbsp;Заправка Сам 1шт Барабан 1ш 12а 2шт &nbsp;15а 1шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(948, '2017-04-03 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-04-06 alexkiev', '', 'Гильдия', 51, '', 'Y', '<p>&nbsp;Заправка&nbsp; - 725/285 -4 шт</p>', 'Картридж', '', '', '', 'Y', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(949, '2017-04-03 alexkiev', '', '2017-04-25 web2net', '', '2017-05-18 alex', '', '2017-04-06 alexkiev', '', 'Поликлиника Русановка', 70, '', 'Y', '<p> Заправка Sams 2070(111S)\r\n<p> </p>\r\nВосст SAMs 111S', 'картриджи Sams 2070', '', '', '', 'Y', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(950, '2017-04-04 alexkiev', '', '2017-04-06 alexkiev', '2017-04-06 alexkiev', '', '2017-04-06 alexkiev', '2017-04-06 alexkiev', '2017-04-06 alexkiev', 'Здолбуновская', 147, '', 'Y', '', '', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'alexkiev', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(951, '2017-04-04 rsergey', '', '2017-04-07 rsergey', '2017-04-05 irina', '2017-04-04 rsergey', '2017-04-21 irina', '2017-04-05 irina', '2017-04-22 alex', 'Глобал Мани', 52, '', 'Y', '<p>&nbsp;Запр FX 10 2шт &nbsp;Вост FX 10 2ШТ запр 719 X 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(952, '2017-04-04 rsergey', '', '2017-04-05 irina', '2017-04-05 irina', '2017-04-04 rsergey', '2017-04-12 rsergey', '2017-04-05 irina', '2017-04-20 alex', 'Будмир', 86, '', 'Y', '<p>&nbsp;Заправка 737 2шт Востан 737 1 шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(953, '2017-04-04 rsergey', '', '2017-04-11 irina', '2017-04-11 irina', '2017-04-04 rsergey', '2017-04-14 alexkiev', '2017-04-11 irina', '2017-04-20 alex', 'Виберг', 185, '', 'Y', '<p>&nbsp;Запр 78а 1шт Тонер TH 118 2шт х 1150грн (ориг)</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(954, '2017-04-04 rsergey', '', '2017-04-13 rsergey', '2017-04-11 irina', '2017-04-10 rsergey', '2017-04-13 alexkiev', '2017-04-11 irina', '2017-04-20 alex', 'УКРшпон', 137, '', 'Y', '<p>&nbsp;Замена термопленки Т/О 760 грн</p>', 'Принтер 2015', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(955, '2017-04-04 rsergey', '', '2017-04-11 irina', '2017-04-11 irina', '2017-04-07 rsergey', '2017-04-13 alexkiev', '2017-04-11 irina', '2017-04-20 alex', 'Визави', 84, '', 'Y', '<p>&nbsp;Заправка НР 1300 1шт НР 4450 1шт &nbsp;728 1шт &nbsp;Ремонт нр 1300 1 шт-564грн</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(956, '2017-04-04 rsergey', '', '2017-04-12 rsergey', '2017-04-12 rsergey', '2017-04-04 rsergey', '2017-04-12 rsergey', '2017-04-12 rsergey', '2017-04-20 alex', 'ЖБК Автотранспортник-(10)', 178, '', 'Y', '<p>&nbsp;Заправка МФУ Сам &nbsp;2070 2шт +Чип 111 &nbsp;2шт &nbsp;х 345грн</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-21 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(957, '2017-04-04 rsergey', '', '2017-04-07 rsergey', '', '', '2017-04-07 rsergey', '2017-04-07 rsergey', '2017-04-20 alex', 'Авторинок 215', 140, '', 'Y', '<p>&nbsp;Ремонт</p>', 'МФУ М1005', '', '', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(958, '2017-04-04 rsergey', '', '2017-04-25 web2net', '', '2017-04-05 rsergey', '', '', '', 'Сталь', 131, '', 'N', '', '', '', 'TH 014 Цена\r\n\r\n014-(155)  4400\r\n015-(175)  4980', '', 'N', 'Y', 'N', '', 'N', 'rsergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'Y', 'Y', '2017-05-17 rsergey', '2017-04'),
(959, '2017-04-04 alexkiev', '', '2017-04-25 web2net', '', '', '2017-05-26 alex', '2017-04-05 ssergey', '', 'Иващенко', 177, '', 'Y', '1. Canon 6670 - Замена термопленки + Т/О\r\n2. Заправка Canon 719 - 1шт, 719h - 1шт; восстановление Canon 719 - 2шт\r\n ', 'Canon 6670', '', 'печка\r\nкартриджи', '', 'N', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'Y', 'N', 'N', 'N', 'N', '', '2017-04'),
(960, '2017-04-04 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-04-10 ssergey', '', 'КиКимарнет', 176, '', 'Y', '<p>Замена девелопера + Т/О</p>', 'Xerox 3045', '', '', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'Y', 'N', 'N', 'N', 'N', '', '2017-04'),
(961, '2017-04-05 rsergey', '', '2017-04-25 web2net', '2017-04-29 rsergey', '', '2017-04-29 rsergey', '2017-04-29 rsergey', '2017-05-05 alex', 'Пилон', 90, '', 'Y', '', '', '', '<p> Б/У картридж 12а</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(962, '2017-04-05 rsergey', '', '2017-04-07 irina', '2017-04-07 irina', '2017-04-06 rsergey', '2017-04-21 irina', '2017-04-07 irina', '2017-04-22 alex', 'Силоджик', 175, '', 'Y', '<p>&nbsp;Заправка 85а 1 штук &nbsp;165Грин &nbsp;49а 1штук 165 &nbsp;грн&nbsp;</p>', 'Картриджи', '', '', '\r\n', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(963, '2017-04-05 rsergey', '', '2017-04-28 rsergey', '2017-04-18 irina', '2017-04-12 rsergey', '2017-04-28 rsergey', '2017-04-18 irina', '2017-05-05 alex', 'Квазар', 58, '', 'Y', '<p> Заправка 12А -3шт 06А(1100)-1шт Samsung-3шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(964, '2017-04-05 rsergey', '', '2017-04-25 web2net', '', '', '', '', '', 'Украинська утилизацийна компания', 174, '', 'N', '', '', '', '<p>&nbsp;Предложение на Сканер или МФУ</p>', '', 'N', 'Y', 'N', '', 'N', 'rsergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'Y', '2017-05-17 rsergey', '2017-04'),
(965, '2017-04-05 ssergey', '', '2017-04-10 alexkiev', '', '', '2017-04-10 alexkiev', '2017-04-10 alexkiev', '2017-04-10 alexkiev', 'Днипролаб', 66, '', 'Y', '<p> Заправка НР 12А - 1шт</p>', 'картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(966, '2017-04-05 ssergey', '', '2017-04-25 web2net', '', '', '', '2017-04-05 ssergey', '', 'Ловекс', 62, '', 'Y', '<p> Заправка Canon 737 - 1шт, Canon 719 - 2шт</p>', 'картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(967, '2017-04-05 rsergey', '', '2017-04-06 rsergey', '', '', '2017-04-06 rsergey', '2017-04-06 rsergey', '2017-04-20 alex', 'цк профсо', 173, '', 'Y', '', '', '', '<p>&nbsp;Заправк1005</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(968, '2017-04-06 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-04-10 alexkiev', '', 'Урловская', 130, '', 'Y', '<p>&nbsp;Заправка Xerox 3225 - 1шт, HP12A - 1шт</p>', 'картр', '', '<p>запр</p>', '', 'Y', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(969, '2017-04-06 alexkiev', '', '2017-04-07 ssergey', '2017-04-11 irina', '', '2017-04-21 irina', '2017-04-07 ssergey', '2017-04-22 alex', 'К-Фундамент', 172, '', 'Y', 'Заправка НР 12А - 1шт, НР 85А - 1шт', 'картр 12А', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(970, '2017-04-06 alexkiev', '', '2017-04-25 web2net', '', '2017-05-18 alex', '', '2017-04-07 ssergey', '', 'Поликлиника Русановка', 70, '', 'Y', '<p>Заправка НР 12А - 1шт</p>\r\n<p>&nbsp;</p>', 'картридж 12А ', '', '', 'регистратура', 'Y', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(973, '2017-04-06 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-04-06 alexkiev', '', 'МГИК', 171, '', 'Y', '<p>запр картр Xerox РЕ220</p>', 'картр Xerox РЕ220', '', '', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'Y', 'N', 'N', 'N', 'N', '', '2017-04'),
(972, '2017-04-06 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-04-06 alexkiev', '', 'Перспектива', 76, '', 'Y', '<p>&nbsp;Заправка: НР 78А - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(974, '2017-04-06 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-04-06 alexkiev', '', 'гудвин', 170, '', 'Y', '<p>запр+восст картр Samsung 4200</p>', 'картр Samsung 4200', '', '', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'Y', 'N', 'N', 'N', 'N', '', '2017-04'),
(975, '2017-04-06 rsergey', '', '2017-04-06 rsergey', '', '', '2017-04-06 rsergey', '2017-04-06 rsergey', '2017-04-20 alex', 'КНТУ', 134, '', 'Y', '<p>&nbsp;D v 310 то</p>', '222', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(976, '2017-04-06 rsergey', '', '2017-04-07 rsergey', '', '', '2017-04-07 rsergey', '2017-04-07 rsergey', '2017-04-20 alex', 'Тиларм', 82, '', 'Y', '<p>&nbsp;Еp 27 барабан заправка</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(977, '2017-04-06 rsergey', '', '2017-04-06 rsergey', '', '', '2017-04-06 rsergey', '2017-04-06 rsergey', '2017-04-20 alex', 'Больница №10', 91, '', 'Y', '<p>&nbsp;Свич</p>', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(978, '2017-04-06 rsergey', '', '2017-04-25 web2net', '2017-04-21 irina', '2017-04-06 rsergey', '2017-04-21 irina', '2017-04-11 irina', '2017-04-27 alex', 'О О Н', 105, '', 'Y', '', '', '', '<p> Картриджи</p>', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(979, '2017-04-06 rsergey', '', '2017-04-07 rsergey', '', '', '2017-04-07 rsergey', '2017-04-07 rsergey', '2017-04-20 alex', 'Адел', 169, '', 'Y', '<p>&nbsp;Заправка 53а 5шт 49 1шт вост 53а 2шт вал заряда 1in</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(980, '2017-04-06 rsergey', '', '2017-04-10 rsergey', '', '', '2017-04-10 rsergey', '2017-04-10 rsergey', '2017-04-20 alex', 'Рома Большевик', 139, '', 'Y', '<p>&nbsp;Заправка 35а 2шт 12а 1шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(981, '2017-04-07 ssergey', '', '2017-04-10 rsergey', '', '', '2017-04-10 rsergey', '2017-04-10 rsergey', '2017-04-20 alex', 'Терминал Леша', 126, '', 'Y', '<p>&nbsp;Заправка Нр 49А - 3шт, НР 36А - 3шт; восстановление НР 49А - 2шт, НР 36А - 2шт; ремонт картриджа НР 49А (дозирующее) - 1шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-02 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(982, '2017-04-07 rsergey', '', '2017-04-12 irina', '2017-04-12 irina', '2017-04-10 rsergey', '2017-04-21 irina', '2017-04-12 irina', '2017-04-22 alex', 'Тиларм', 82, '', 'Y', '<p>Заправка НР 12А - 8шт; восстановление НР 12А - 1шт; ремонт картриджа НР 12А (дозирующее) - 3шт, корона - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(983, '2017-04-10 rsergey', '', '2017-04-28 rsergey', '2017-04-13 irina', '2017-04-11 rsergey', '2017-04-28 rsergey', '2017-04-13 irina', '2017-04-28 alex', 'Алвоген', 49, '', 'Y', '<p> Заправка 85а 2шт х 165грн  Ремонт+востановление+заправка 83а  (1-2шт)=900грн</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(984, '2017-04-10 rsergey', '', '2017-04-10 rsergey', '', '', '2017-04-10 rsergey', '2017-04-10 rsergey', '2017-04-20 alex', 'Здолбуновская', 147, '', 'Y', '<p>&nbsp;Заправка 12а 1шт Ворстановление 1шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(985, '2017-04-10 alexkiev', '', '2017-05-13 alex', '', '', '', '2017-04-10 alexkiev', '', 'Инкомантур', 93, '', 'Y', '<p> Тонер B185 - 1шт</p>', 'тонер В185', '', '<p>Тонер B185 - 1шт</p>\r\n<p> </p>', '', 'Y', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(986, '2017-04-10 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-04-11 ssergey', '', 'Инкомантур', 93, '', 'Y', '<p>запр Xerox3250</p>', 'картр', '', '<p>запр Xerox3250</p>\r\n<p> </p>', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(987, '2017-04-10 rsergey', '', '2017-04-10 rsergey', '', '', '2017-04-10 rsergey', '2017-04-10 rsergey', '2017-04-20 alex', 'Рома Большевик', 139, '', 'Y', '<p>&nbsp;Т/О замена ролика</p>', 'М1005', '', '', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(988, '2017-04-10 rsergey', '', '2017-04-10 rsergey', '', '', '2017-04-18 rsergey', '2017-04-10 rsergey', '2017-04-20 alex', 'Васильков 163', 168, '', 'Y', '<p>&nbsp;Тонер 2шт</p>', 'Б163', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(989, '2017-04-10 ssergey', '', '2017-04-25 web2net', '', '', '2017-05-12 alex', '2017-04-10 ssergey', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p>&nbsp;Заправка НР 85А - 2шт, НР 35А - 1шт, НР 12А - 2шт, Canon 725 - 3шт, НР 05А - 1шт; ремонт картриджа НР 12А (корона) - 1шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(990, '2017-04-10 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-04-10 ssergey', '', 'Урловская', 130, '', 'Y', '<p>&nbsp;Заправка HP12A - 1шт</p>\r\n<p>ремонт НР 3050(печка)</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'картр', '', '<p>запр ремонт НР 3050(печка)</p>', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(991, '2017-04-10 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-04-10 alexkiev', '', 'Урловская стоматология', 167, '', 'Y', '<p>Заправка Xerox 3225 - 1шт</p>', '', '', '', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'Y', 'N', 'N', 'N', 'N', '', '2017-04');
INSERT INTO `works` (`id`, `date_create`, `date_prioritet`, `date_otgryzka`, `date_doc`, `date_srochno`, `date_pay`, `date_zdelano`, `date_archiv`, `client`, `client_id`, `data_client`, `zdelano`, `content`, `divice`, `sn`, `neispravnost`, `note`, `viezd`, `otgryzka`, `doc`, `number_bill`, `pay`, `ingener`, `responsible_ingener`, `nal`, `archiv`, `prioritet`, `srochno`, `trash`, `date_trash`, `month_create`) VALUES
(992, '2017-04-10 ssergey', '', '2017-04-25 web2net', '', '', '2017-04-10 ssergey', '2017-04-10 ssergey', '2017-04-27 alex', 'Женская Консультация', 166, '', 'Y', '<p>&nbsp;Заправка Canon 719 - 1шт</p>', 'картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(993, '2017-04-11 ssergey', '', '2017-04-25 web2net', '', '', '', '2017-04-11 ssergey', '', 'Ловекс', 62, '', 'Y', '<p> Заправка НР 83х - 1шт</p>', 'картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(994, '2017-04-11 ssergey', '', '2017-04-25 web2net', '', '2017-05-18 alex', '', '2017-04-11 ssergey', '', 'Поликлиника Русановка (Энтузиастов 13)', 180, '', 'Y', '<p>&nbsp;Заправка Canon 726 - 1шт</p>', 'картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(995, '2017-04-11 rsergey0', '', '2017-04-12 rsergey', '', '', '2017-04-12 rsergey', '2017-04-12 rsergey', '2017-04-20 alex', 'Школа №315', 72, '', 'Y', '<p>&nbsp;Заправка 12а</p>', 'Картридж', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(996, '2017-04-11 ssergey', '', '2017-04-25 web2net', '', '', '', '2017-04-11 ssergey', '', 'Ловекс', 62, '', 'Y', '<p> Заправка НР 85А - 1шт</p>', 'картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(997, '2017-04-11 irina', '', '2017-04-12 rsergey', '2017-04-12 rsergey', '2017-04-11 web2net', '2017-04-12 rsergey', '2017-04-12 rsergey', '2017-04-20 alex', 'Вторресурси', 141, '', 'Y', '<p>&nbsp;Тонер 164/185 2 шт х 750</p>', 'Заявка 998', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'irina', '', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(998, '2017-04-11 rsergey', '', '2017-04-11 rsergey', '2017-04-11 irina', '2017-04-11 rsergey', '2017-04-11 rsergey', '2017-04-11 rsergey', '2017-04-20 alex', 'Вторресурси', 141, '', 'Y', '<p>&nbsp;Тонер TN 116 2штх-750 грн</p>', '185', '', '', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(999, '2017-04-12 ssergey', '', '2017-04-25 web2net', '', '', '2017-05-12 alex', '2017-04-12 ssergey', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', '<p>&nbsp;Заправка НР 85А - 3шт, НР 53А - 1шт, НР 36А - 1шт, НР 78А - 1шт, НР 35А - 1шт, НР 12А - 1шт, Canon 725 - 1шт; восстановление НР 35А - 1шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1000, '2017-04-12 rsergey', '', '2017-04-25 rsergey', '2017-04-13 irina', '2017-04-12 rsergey', '2017-04-28 rsergey', '2017-04-13 irina', '2017-04-28 alex', 'Молочна Слобода', 136, '', 'Y', '<p> Тонер TN-116 3шт х 750грн    Minolta bizhub 283 Т/О 582гр( Ремонт Печки) Тефлон 1500грн Заправка 281а 1шт + ремонт картриджа 180грн</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1001, '2017-04-12 rsergey', '', '2017-04-12 rsergey', '', '', '2017-04-12 rsergey', '2017-04-12 rsergey', '2017-04-20 alex', 'Школа №19', 87, '', 'Y', '<p>&nbsp;Заправка сам 2 шт Востановление 1005 1шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1002, '2017-04-12 rsergey', '', '2017-04-25 rsergey', '2017-04-18 irina', '2017-04-12 rsergey', '', '2017-04-18 irina', '', 'Потеев', 152, '', 'Y', '<p>&nbsp;Т/О-582грн Ролики<span style=\\\"\\\\&quot;\\\\\\\\&quot;line-height:\\\\&quot;\\\">(A00J563600)</span><span style=\\\"\\\\&quot;\\\\\\\\&quot;line-height:\\\\&quot;\\\">&nbsp;9шт х252грн</span></p>', 'Minolta bizhub 423', '', '', '', 'Y', 'Y', 'Y', '', 'N', 'rsergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1003, '2017-04-12 rsergey', '', '2017-04-25 web2net', '2017-04-18 irina', '2017-04-13 rsergey', '2017-04-28 alex', '2017-04-18 irina', '2017-04-28 alex', 'ДС Электроникс', 148, '', 'Y', '<p>&nbsp;Заправка Xerox 3210 - 1шт</p>', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1004, '2017-04-12 rsergey', '', '2017-04-28 rsergey', '', '', '2017-04-28 rsergey', '2017-04-20 rsergey', '2017-05-05 alex', 'Магазин Визит (подол)', 184, '', 'Y', 'Заправка Сам 1шт', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1005, '2017-04-12 rsergey', '', '2017-04-25 web2net', '', '', '', '', '', 'Потапенко и Ко', 88, '', 'N', '', 'картр', '', '<p>запр FX10</p>', '', 'Y', 'Y', 'N', '', 'N', 'alex', '2017-04-20 rsergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-04'),
(1006, '2017-04-12 rsergey', '', '2017-04-25 web2net', '', '2017-05-18 alex', '', '2017-04-13 ssergey', '', 'Поликлиника Русановка (стат отд)', 207, '', 'Y', '<p> Заправка Canon 726 - 2шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(1007, '2017-04-13 ssergey', '', '2017-04-25 rsergey', '2017-04-18 irina', '2017-04-14 rsergey', '', '2017-04-18 irina', '', 'Кристар', 252, '', 'Y', '<p> Заправка НР 85А - 1шт, НР 35А - 1шт, НР 78А - 1шт, НР 12А - 1шт, Samsung D117s (без чипа) - 1шт, Samsung D105s (без чипа) - 1шт; ремонт картриджа НР 12А (дозирующее) - 1шт</p>', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'N', 'ssergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1008, '2017-04-13 ssergey', '', '2017-05-13 alex', '', '', '2017-05-17 alex', '2017-04-13 ssergey', '', 'Инкомантур', 93, '', 'Y', '<p> 1. Т/О НР 2055d</p>\r\n<p>2. Заправка НР 05А - 1шт</p>\r\n<p>3. Замена дозирующего лезвия НР 05А - 1шт</p>', 'НР P2055d', 'VNC3M01574', '<p>заминает бумагу в дуплексе</p>', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1009, '2017-04-13 rsergey', '', '2017-04-13 rsergey', '', '', '2017-04-13 rsergey', '2017-04-13 rsergey', '2017-04-20 alex', 'Уборевича Алена', 206, '', 'Y', '<p> Заправка 83а 1шт востановление 1шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-21 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1010, '2017-04-13 rsergey', '', '2017-04-25 web2net', '', '', '', '2017-04-14 rsergey', '', 'Школа №18', 54, '', 'Y', '<p> Тонер ТN-118 1шт 750грн</p>', '215', '', '', '', 'N', 'Y', 'N', '', 'N', 'rsergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1011, '2017-04-13 rsergey', '', '2017-04-25 rsergey', '2017-04-18 irina', '2017-04-13 rsergey', '2017-04-28 alex', '2017-04-20 rsergey', '2017-04-28 alex', 'Экосфера 215', 237, '', 'Y', '', '215', '', '<p> Тонер ТN 118 2шт (оригинал) </p>', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1012, '2017-04-13 rsergey', '', '2017-04-28 rsergey', '', '', '2017-04-28 rsergey', '2017-04-14 rsergey', '2017-05-04 alex', 'Школа №315', 72, '', 'Y', '', 'Картриджи', '', '<p> Востановление 83а 1шт</p>', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1013, '2017-04-14 rsergey', '2017-05-24 alex', '2017-05-26 rsergey', '', '2017-04-18 rsergey', '2017-05-24 alex', '2017-05-26 rsergey', '', 'Гарант-АСІСТАНС', 55, '', 'Y', '<p> DR-310 3402грн 1шт     DV 310 1392 1шт   Колари A1UR90100 1комплект 558 грн     Втулки 1164354901 4шт х114грн     Т/О 582грн</p>', 'кма Develop ineo 282', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'N', 'Y', 'Y', 'N', '', '2017-04'),
(1014, '2017-04-14 rsergey', '', '2017-04-20 rsergey', '', '', '2017-04-20 rsergey', '2017-04-20 rsergey', '2017-04-20 alex', 'Деревообробна', 144, '', 'Y', '', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1015, '2017-04-14 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-04-18 ssergey', '', 'Эдвансис', 68, '', 'Y', '<p>Заправка НР 78А - 1шт</p>', 'картр', '', '<p>HP 278</p>', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1016, '2017-04-14 alexkiev', '', '2017-04-25 web2net', '', '', '2017-05-24 alex', '2017-04-18 ssergey', '', 'Лансис', 71, '', 'Y', '<p> Заправка НР 78А - 2шт</p>', 'Картридж', '', '<p>Заправка НР 78А - 2шт</p>', '', 'N', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1017, '2017-04-14 alexkiev', '', '2017-04-25 web2net', '', '2017-05-04 alex', '', '2017-04-19 alexkiev', '', 'ABC 2000', 77, '', 'Y', '<p>запр 13A-1</p>', 'картр', '', '<p>картр</p>', '', 'Y', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(1018, '2017-04-14 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-04-18 ssergey', '', 'СПЗ-Групп', 79, '', 'Y', '<p>&nbsp;<span style=\\\"line-height: 14.3px;\\\">Заправка НР 78А - 1шт, восстановление НР 78А - 1шт</span></p>', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1019, '2017-04-14 alexkiev', '', '2017-04-25 web2net', '', '', '2017-05-12 alex', '2017-05-12 alex', '2017-05-12 alex', 'Днипролаб Маяков', 194, '', 'Y', '<p>Заправка Canon 719 - 2шт, Canon 725-3шт</p>\r\n<p>восст Canon 719 - 1шт</p>', 'Картридж', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'alex', '2017-04-20 web2net', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1020, '2017-04-14 rsergey', '', '2017-04-27 rsergey', '2017-04-19 irina', '2017-04-18 rsergey', '2017-04-27 alex', '2017-04-19 irina', '2017-04-27 alex', 'Аскар ТБК', 205, '', 'Y', '<p>&nbsp;Заправка 49а 2шт &nbsp;Востановление 49а &nbsp;1шт</p>', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1021, '2017-04-19 alexkiev', '', '2017-04-25 web2net', '', '', '', '2017-04-19 ssergey', '', 'Ловекс', 62, '', 'Y', '<p>Тонер TN116 - 1шт; заправка НР 78А - 1шт, НР 05А - 1шт; восстановление НР78А - 1шт</p>\r\nXerox 3020-1, Canon EP22', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1022, '2017-04-19 alexkiev', '', '2017-04-25 web2net', '', '2017-05-04 alex', '', '2017-04-19 ssergey', '', 'СитиСайт', 111, '', 'Y', '<p>&nbsp;Заправка Xerox 3210/3220 - 1шт.</p>', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(1023, '2017-04-19 web2net', '2017-04-19 web2net', '2017-05-25 web2net', '2017-05-25 web2net', '', '2017-05-25 web2net', '2017-05-25 web2net', '', 'МКР Сервис', 216, '', 'Y', '', 'Печать выделенных позиций в бегунке', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1049, '2017-04-23 web2net', '2017-04-25 web2net', '2017-04-25 web2net', '', '', '', '', '', 'МКР Сервис', 216, '', 'N', '', 'В общем списке триггер без перезагрузки страницы', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '2017-04-23 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1024, '2017-04-19 rsergey', '', '2017-04-25 web2net', '2017-04-21 irina', '2017-04-20 rsergey', '2017-04-28 rsergey', '2017-04-20 rsergey', '2017-04-28 alex', 'Впровадження', 59, '', 'Y', 'Заправка 737 1шт \r\n85А 3шт\r\n15А 3шт \r\nВостановление 15А 2шт\r\nКорона 15А 2шт\r\nДозирущее 15А 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-04'),
(1025, '2017-04-19 rsergey', '', '2017-04-25 rsergey', '2017-04-19 irina', '2017-04-19 rsergey', '2017-04-28 rsergey', '2017-04-20 rsergey', '2017-05-04 alex', 'Окси-К', 132, '', 'Y', '<p> Т/О -480грн</p>', 'КМА   Minolta bizhub  226', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1026, '2017-04-19 ssergey', '', '2017-05-13 alex', '', '', '', '2017-04-19 ssergey', '', 'Нотариус Кияшко', 73, '', 'Y', '<p> Заправка Canon 728 - 2шт, НР 17А - 1шт; восстановление Canon 728 - 1шт</p>', 'картриджи', '', '', '', 'Y', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1027, '2017-04-19 ssergey', '', '2017-04-25 web2net', '', '2017-05-04 alex', '', '2017-04-19 ssergey', '', 'ABC 2000', 77, '', 'Y', '<p>Ремонт драм-картриджа Panasonic KX-FAD89 - 1шт</p>', 'картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(1028, '2017-04-19 ssergey', '', '2017-04-25 web2net', '', '', '', '2017-04-19 ssergey', '', 'Компаньон', 67, '', 'Y', '<p> Заправка Canon 725 - 2шт</p>', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1029, '2017-04-19 ssergey', '', '2017-04-25 web2net', '', '', '', '2017-04-19 ssergey', '', 'КиевПромСервис', 112, '', 'Y', '<p> 1). Ремонт принтера <span style=\\\\\\\"line-height: 14.3px;\\\\\\\">Samsung CLX-3175</span></p>\r\n<p>2). <span style=\\\\\\\"line-height: 14.3px;\\\\\\\">Заправка картриджа Samsung CLT-K409s - 2шт</span></p>\r\n<p> </p>', 'Samsung clx-3175, картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1030, '2017-04-19 ssergey', '', '2017-04-25 web2net', '', '', '2017-04-23 ssergey', '2017-04-23 ssergey', '', 'Наташа, Лепсе 79', 218, '', 'Y', '', 'Тонер', '', '<p> Заправка bizhub 215 - 1шт</p>', '', 'N', 'N', 'N', '', 'Y', 'ssergey', '2017-04-20 rsergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-04'),
(1031, '2017-04-20 ssergey', '', '2017-04-25 web2net', '2017-04-21 irina', '', '2017-05-16 irina', '2017-04-20 ssergey', '2017-05-19 alex', 'МВЦ', 181, '', 'Y', 'Заправка НР 85А - 1шт; восстановление НР 85А - 1шт', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1032, '2017-04-20 alex', '', '2017-04-25 web2net', '', '', '', '2017-05-12 ssergey', '', 'Униполис', 110, '', 'Y', '1. Замена шлейфа сканера\r\n2. Заправка НР 85А - 1шт', 'НР М1132 MFP', '', 'порвался шлейф сканера', '', 'Y', 'N', 'N', '', 'N', 'alex', '2017-04-20 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1033, '2017-04-20 ssergey', '', '2017-04-25 web2net', '', '2017-04-20 alex', '', '2017-04-20 ssergey', '', 'УкрДах', 89, '', 'Y', 'Заправка НР 85А - 1шт, НР СР1025 (black) - 1шт', 'картриджи', '', '', 'Сч 351', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(1034, '2017-04-20 ssergey', '', '2017-04-25 web2net', '', '', '2017-05-12 alex', '2017-04-20 ssergey', '2017-05-12 alex', 'Днипролаб Дарница', 188, '', 'Y', 'Заправка НР 05А - 1шт, Canon 725 - 1шт', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1035, '2017-04-20 ssergey', '', '2017-05-04 alex', '', '2017-05-18 alex', '', '2017-04-20 ssergey', '', 'Поликлиника Русановка', 70, '', 'Y', 'Заправка Canon 726 - 1шт, Canon FC - 1шт', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(1036, '2017-04-20 rsergey', '', '2017-04-25 web2net', '2017-04-21 irina', '2017-04-20 rsergey', '2017-05-17 alex', '2017-04-20 rsergey', '2017-05-04 alex', 'Алвоген', 49, '', 'Y', 'Заправка 83А 3шт', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-04'),
(1037, '2017-04-20 rsergey', '', '2017-04-25 web2net', '', '', '', '2017-04-24 rsergey', '', 'Консерватория', 235, '', 'Y', '', ' КМА Minolta bizhub  c 220', '', 'Трансфер драми 4шт (чорний)Печка Ролики', '', 'N', 'N', 'N', '', 'N', 'rsergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1038, '2017-04-20 rsergey', '', '2017-04-27 rsergey', '', '', '2017-04-24 rsergey', '2017-04-24 rsergey', '2017-04-27 alex', 'Школа №86', 236, '', 'Y', 'Отгрузка', 'Minolta bizhub  c 35', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1039, '2017-04-20 rsergey', '', '2017-04-25 web2net', '', '', '', '2017-04-20 rsergey', '', 'УКРшпон', 137, '', 'N', 'Новий картридж 30А 1шт', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'rsergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1040, '2017-04-20 rsergey', '', '2017-04-25 web2net', '', '', '2017-04-27 rsergey', '2017-04-27 rsergey', '2017-05-04 alex', 'Минолта склад', 232, '', 'Y', '', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1041, '2017-04-20 rsergey', '2017-04-20 rsergey', '2017-04-25 web2net', '2017-05-18 irina', '2017-04-20 rsergey', '2017-05-17 alex', '2017-04-24 rsergey', '2017-05-19 alex', 'Потеев', 152, '', 'Y', 'DR411 1шт  2850грн  \r\nDV411-1шт  1560грн  \r\nРолики A1UDR90100 1Компл  564грн\r\n\r\nРемонт 460грн', '  КМА   Minolta bizhub 423', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-04'),
(1042, '2017-04-20 rsergey', '', '2017-04-25 web2net', '', '', '', '2017-04-20 rsergey', '', 'Орион', 103, '', 'Y', 'Заправка 78А 1шт', 'Картридж', '', '', '', 'N', 'Y', 'N', '', 'N', 'rsergey', '2017-04-20 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1043, '2017-04-20 rsergey', '', '2017-05-03 rsergey', '2017-04-26 irina', '2017-04-20 rsergey', '2017-05-16 irina', '2017-04-20 rsergey', '2017-05-19 alex', 'УКРшпон', 137, '', 'Y', 'Заправка 30А 2шт по 270 грн', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-20 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-04'),
(1044, '2017-04-20 alex', '', '2017-05-17 alex', '2017-05-03 irina', '', '2017-05-17 alex', '2017-04-20 alex', '2017-05-17 alex', 'Долфи', 104, '', 'Y', 'тонер TN-116', 'КМА Bizhub 185', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'alex', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1045, '2017-04-20 web2net', '', '2017-04-24 web2net', '2017-04-24 web2net', '', '2017-04-24 web2net', '2017-04-24 web2net', '2017-04-24 web2net', 'МКР Сервис', 216, '', 'Y', '', 'Тест', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-04-20 web2net', 'N', 'Y', 'N', 'N', 'Y', '2017-04-20 web2net', '2017-04'),
(1046, '2017-04-20 alex', '', '2017-04-25 web2net', '', '', '', '', '', 'Энергия', 94, '', 'N', '', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'N', 'alex', '2017-04-20 alex', 'N', 'N', 'N', 'N', 'Y', '2017-04-27 ssergey', '2017-04'),
(1050, '2017-04-24 alex', '', '2017-04-25 web2net', '', '', '', '', '', 'Ловекс', 62, '', 'N', 'Canon 737', 'картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-04-24 alex', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1051, '2017-04-24 ssergey', '', '2017-04-25 web2net', '2017-04-26 irina', '', '', '2017-04-24 ssergey', '', 'Козирні подорожі', 69, '', 'Y', 'Заправка НР 12А - 1шт', 'Картридж', '', '', '', 'Y', 'Y', 'Y', '', 'N', 'ssergey', '2017-04-24 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1052, '2017-04-24 ssergey', '', '2017-05-12 alex', '', '', '2017-05-12 alex', '2017-04-24 ssergey', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', 'Заправка НР 12А - 3шт, НР 85А - 5шт, НР 35А - 1шт, НР 05А - 2шт, Canon 725 - 1шт; восстановление НР 35А - 1шт', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-24 ssergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1053, '2017-04-24 ssergey', '', '2017-04-25 alex', '', '', '2017-05-17 alex', '2017-04-24 ssergey', '', 'МясоМолПром', 183, '', 'Y', 'Заправка НР 49А - 1шт, НР 35А - 1шт, Canon FC - 1шт; восстановление НР 35А - 1шт', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-24 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1054, '2017-04-25 ssergey', '', '', '', '', '', '2017-04-25 ssergey', '', 'МГИК', 171, '', 'Y', 'Заправка НР CF350A black - 1шт, НР 85А - 1шт, Samsung D111s - 1шт', 'картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-04-25 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1055, '2017-04-25 ssergey', '', '', '', '', '', '2017-04-25 ssergey', '', 'Миоре', 78, '', 'Y', 'Заправка НР 85А - 1шт', 'картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-04-25 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1056, '2017-04-25 ssergey', '', '', '', '', '', '2017-04-25 ssergey', '', 'МЦ МК (Моя клиника)', 190, '', 'Y', 'Заправка НР 78А - 1шт', 'картридж', '', '', 'Сч 183', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-04-25 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1057, '2017-04-25 rsergey', '', '2017-04-25 rsergey', '2017-04-26 irina', '2017-04-25 rsergey', '', '2017-04-25 rsergey', '', 'Политара', 85, '', 'Y', 'Заправка Canon4450 1шт 80а 1шт Востановление 80а 1шт', '', '', '', '', 'Y', 'Y', 'Y', '', 'N', 'rsergey', '2017-04-25 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(1058, '2017-04-25 rsergey', '', '2017-04-25 rsergey', '2017-04-26 irina', '2017-04-25 rsergey', '', '2017-04-25 rsergey', '', 'Визави Л Т Д', 244, '', 'Y', 'Canon 4450 Востановление 1шт (барабан) Дозирущее 1шт', '', '', '', '', 'N', 'Y', 'Y', '', 'N', 'rsergey', '2017-04-25 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(1059, '2017-04-25 rsergey', '', '2017-04-25 rsergey', '', '', '2017-04-25 rsergey', '2017-04-25 rsergey', '2017-04-25 alex', 'Бутовченко', 245, '', 'Y', 'Тонер 211 1шт', '222', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-25 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1060, '2017-04-25 rsergey', '', '2017-04-29 rsergey', '2017-04-28 rsergey', '', '2017-04-29 rsergey', '2017-04-26 ssergey', '2017-05-04 alex', 'Хата рибака', 161, '', 'Y', 'Т/О НР Р1006', 'Р 1006', '', '', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-25 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1061, '2017-04-25 rsergey', '', '2017-04-25 rsergey', '2017-04-26 irina', '2017-04-25 rsergey', '2017-05-16 irina', '2017-04-25 rsergey', '2017-05-19 alex', 'Скифоил', 83, '', 'Y', 'Заправка 719 2шт', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-25 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-04'),
(1062, '2017-04-25 rsergey', '', '2017-04-26 rsergey', '', '', '2017-04-26 rsergey', '2017-04-26 rsergey', '2017-04-27 alex', 'Харьковское шессе', 246, '', 'Y', '', '185', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-25 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1063, '2017-04-25 alex', '', '2017-04-25 alex', '', '', '2017-04-25 alex', '2017-04-25 alex', '2017-04-25 alex', 'Салон багет (саксаганского)', 247, '', 'Y', '', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'alex', '2017-04-25 alex', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1064, '2017-04-25 rsergey', '', '2017-04-25 rsergey', '', '', '2017-04-25 rsergey', '2017-04-25 rsergey', '2017-04-25 alex', 'Бориспольская (Натариус)', 248, '', 'Y', 'Востановление 1шт', 'картридж', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-25 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1065, '2017-04-25 alex', '', '2017-04-25 alex', '', '', '', '2017-04-25 alex', '', 'МЦ МК (Моя клиника)', 190, '', 'Y', 'ремонт принтера Canon - 780грн\r\nзапр 278А- 1шт', 'принтер, картр', '', '', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-25 alex', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1066, '2017-04-26 ssergey', '', '2017-04-27 rsergey', '2017-04-26 irina', '2017-04-26 ssergey', '2017-05-17 alex', '2017-04-26 ssergey', '2017-05-17 alex', 'Глобал Мани', 52, '', 'Y', 'Заправка Canon 719 - 1шт; ремонт картриджа Canon 719 (дозирующее)- 2шт', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '2017-04-26 ssergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-04'),
(1067, '2017-04-26 ssergey', '', '', '', '', '', '2017-04-26 ssergey', '', 'ВладаМеталСервис', 57, '', 'Y', 'Заправка НР 12А - 1шт; восстановление НР 12А - 1шт', 'картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-04-26 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1068, '2017-04-26 ssergey', '', '2017-05-05 rsergey', '2017-04-27 irina', '', '2017-05-16 irina', '2017-04-26 ssergey', '2017-05-19 alex', 'ЦК Профсоюзы Энергетики', 249, '', 'Y', 'Восстановление картриджа Panasonic KX-MB1500 - 1шт 280грн\r\nЗаправка 737 1щт 165 грн', 'картридж', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '2017-04-26 ssergey', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1069, '2017-04-26 ssergey', '', '2017-04-26 ssergey', '', '', '', '2017-04-26 ssergey', '', 'Нотариус Кияшко', 73, '', 'Y', 'Восстановление Canon 728 - 1шт, ремонт картриджа Canon 728 (корона) - 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'N', 'ssergey', '2017-04-26 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1070, '2017-04-26 ssergey', '', '2017-04-26 ssergey', '', '', '2017-05-17 alex', '2017-04-26 ssergey', '', 'Центус', 135, '', 'Y', 'Заправка Canon 719 - 1шт, Canon 719h - 1шт', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-26 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1071, '2017-04-26 ssergey', '', '2017-04-26 ssergey', '', '2017-04-27 ssergey', '2017-05-17 alex', '2017-04-26 ssergey', '', 'Гринстоун', 92, '', 'Y', 'Заправка Canon 731 black - 1шт', 'Картридж', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-26 ssergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(1072, '2017-04-26 alex', '2017-04-28 alex', '', '', '', '', '2017-04-27 web2net', '', 'Орион', 103, '', 'N', '', 'Картриджи ', '', 'Запр 737', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-04-26 alex', 'N', 'N', 'Y', 'N', 'Y', '2017-05-04 alex', '2017-04'),
(1073, '2017-04-26 alex', '2017-05-04 alex', '', '', '', '', '2017-04-27 web2net', '', 'Урловская', 130, '', 'N', '', 'Карт', '', 'Запр 12А, xerox', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-04-26 alex', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1074, '2017-04-26 ssergey', '', '2017-05-05 rsergey', '', '', '2017-05-05 rsergey', '2017-04-26 ssergey', '2017-05-05 alex', 'Рома Большевик', 139, '', 'Y', 'Заправка НР 12А - 4шт, НР 53А - 1шт; восстановление НР 12А - 1шт; ремонт картриджа НР 12А (дозирующее) - 1шт, (корона) - 1шт', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-26 ssergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1075, '2017-04-27 rsergey', '', '2017-04-28 rsergey', '', '', '2017-04-28 rsergey', '2017-04-28 rsergey', '2017-05-04 alex', 'Адел', 169, '', 'Y', 'Запр 53а 2шт 53х 2шт 15а 1шт термо пленка 1шт шестерня привода 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-27 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1076, '2017-04-27 rsergey', '', '2017-04-29 rsergey', '2017-04-27 irina', '2017-04-27 rsergey', '2017-04-28 alex', '2017-04-29 rsergey', '2017-05-04 alex', 'Молочна Слобода', 136, '', 'Y', 'Заправка 81а 2шт Тонер ТN 217 2шт', 'КМА   Minolta bizhub  283', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-27 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-04'),
(1077, '2017-04-27 rsergey', '', '2017-04-28 rsergey', '2017-04-27 irina', '2017-04-27 rsergey', '2017-04-28 alex', '2017-04-28 rsergey', '2017-04-28 alex', 'Стеклотара', 133, '', 'Y', 'Заправка 83а 1шт Samsung 2070+чип (111)', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-27 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-04'),
(1078, '2017-04-27 rsergey', '', '2017-04-27 rsergey', '', '', '2017-04-27 rsergey', '2017-04-27 rsergey', '2017-04-27 alex', 'Бутовченко', 245, '', 'Y', '', 'Картриджи', '', '', 'Тонер НР Тонер TN211 1in', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-27 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1079, '2017-04-27 rsergey', '', '2017-05-05 rsergey', '', '', '2017-05-05 rsergey', '2017-04-28 rsergey', '2017-05-05 alex', 'Радищева 1050', 101, '', 'Y', 'Плата', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-27 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1080, '2017-04-27 rsergey', '', '2017-04-27 rsergey', '', '', '2017-04-27 rsergey', '2017-04-27 rsergey', '2017-04-27 alex', 'Демеевка', 219, '', 'Y', 'Замена блокак', '211', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-27 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1081, '2017-04-27 rsergey', '', '2017-04-28 rsergey', '2017-05-10 irina', '2017-04-27 rsergey', '2017-05-24 alex', '2017-04-28 rsergey', '2017-05-24 alex', 'Больница №10', 91, '', 'Y', 'DVD RW-420грн     SSD 120Gb-1600грн', '', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-27 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-04'),
(1082, '2017-04-27 ssergey', '', '2017-04-28 alex', '2017-05-16 irina', '2017-05-04 alex', '2017-05-16 irina', '2017-04-27 ssergey', '2017-05-19 alex', 'Энергия', 94, '', 'Y', 'Заправка Canon 703 - 1шт, Canon EP-27 - 1шт, НР 05А - 1шт; восстановление Canon 703 - 1шт, НР 05А - 1шт; ремонт картриджа НР 05А (дозирующее) - 1шт', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '2017-04-27 ssergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-04'),
(1083, '2017-04-27 irina', '', '2017-04-28 rsergey', '2017-04-28 rsergey', '', '2017-04-28 rsergey', '2017-04-28 rsergey', '2017-04-28 alex', 'Кристар', 252, '', 'Y', '', '', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'irina', '2017-04-27 irina', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1084, '2017-04-27 ssergey', '', '2017-04-27 ssergey', '', '', '2017-04-27 ssergey', '2017-04-27 ssergey', '2017-04-28 alex', 'Татьяна Луначарского 3А', 253, '', 'Y', 'Чистка картриджа Minolta PP 1480 - 100 грн', 'картридж', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-27 ssergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1085, '2017-04-27 web2net', '', '2017-05-21 web2net', '2017-05-21 web2net', '', '2017-05-21 web2net', '2017-04-27 web2net', '2017-05-25 alex', 'МКР Сервис', 216, '', 'Y', '', 'Кнопка назад в списке Фильтр по клиентам ', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-04-27 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1086, '2017-04-27 web2net', '2017-04-29 web2net', '2017-05-21 web2net', '2017-05-21 web2net', '', '2017-05-21 web2net', '2017-04-29 web2net', '2017-05-25 alex', 'МКР Сервис', 216, '', 'Y', '', 'Помесячный пагинатор', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-04-27 web2net', 'N', 'Y', 'Y', 'N', 'N', '', '2017-04'),
(1087, '2017-04-28 web2net', '', '', '', '', '', '', '', 'МКР Сервис', 216, '', 'N', '', 'Обратный триггер - архив, корзина..', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '2017-04-28 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1088, '2017-04-28 web2net', '2017-04-29 web2net', '2017-05-21 web2net', '2017-05-21 web2net', '', '2017-05-21 web2net', '2017-04-29 web2net', '2017-05-25 alex', 'МКР Сервис', 216, '', 'Y', '', 'Чекбоксы деяний в первичной форме эда..', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-04-28 web2net', 'N', 'Y', 'Y', 'N', 'N', '', '2017-04'),
(1089, '2017-04-28 web2net', '', '', '', '', '', '', '', 'МКР Сервис', 216, '', 'N', '', 'Кнопка наверх', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '2017-04-28 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1090, '2017-04-28 web2net', '', '2017-05-21 web2net', '2017-05-21 web2net', '', '2017-05-21 web2net', '2017-04-28 web2net', '2017-05-25 alex', 'МКР Сервис', 216, '', 'Y', '', 'Добавить Иру в список бегунков', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-04-28 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1091, '2017-04-28 rsergey', '', '', '', '', '', '', '', 'Кристар-Центр', 197, '', 'N', '', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'rsergey', '2017-04-28 rsergey', 'N', 'N', 'N', 'N', 'Y', '2017-04-28 ssergey', '2017-04'),
(1092, '2017-04-28 rsergey', '', '2017-05-05 ssergey', '2017-05-03 irina', '2017-05-03 rsergey', '2017-05-16 irina', '2017-05-03 ssergey', '2017-05-19 alex', 'Виберг', 185, '', 'Y', 'Заправка НР CE410A - 1шт, HP CE411A - 1шт, HP CE413A - 1шт по 480 грн , НР 78А - 1шт; ремонт картриджа HP CE413A (ракель) - 1шт - 180 грн', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-28 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-04'),
(1093, '2017-04-28 rsergey', '', '2017-05-05 rsergey', '2017-05-03 irina', '2017-04-29 rsergey', '2017-05-16 irina', '2017-04-28 ssergey', '2017-05-19 alex', 'ДС Электроникс', 148, '', 'Y', 'Заправка Samsund ML-D2850 (без чипа) - 2шт', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-28 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-04'),
(1094, '2017-04-28 rsergey', '', '', '', '', '', '', '', 'Школа №19', 87, '', 'N', 'Заправка 2070+чип', 'картридж', '', '', '', 'Y', 'N', 'N', '', 'N', 'rsergey', '2017-04-28 rsergey', 'Y', 'N', 'N', 'N', 'Y', '2017-05-04 alex', '2017-04'),
(1095, '2017-04-28 rsergey', '', '2017-04-28 alex', '2017-04-28 irina', '2017-04-28 rsergey', '2017-04-28 alex', '2017-04-28 alex', '2017-04-29 web2net', 'Молочна Слобода', 136, '', 'Y', '', 'Принтер А4 L120', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-28 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-04'),
(1096, '2017-04-28 rsergey', '', '2017-05-03 rsergey', '2017-05-18 irina', '', '', '2017-05-03 rsergey', '', 'Больница №10', 91, '', 'Y', 'Xerox 3122 Т/О 280грн', 'Принтер ', '', '', '', 'N', 'Y', 'Y', '', 'N', 'rsergey', '2017-04-28 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1097, '2017-04-28 rsergey', '', '2017-05-05 rsergey', '', '', '2017-05-05 rsergey', '2017-05-05 rsergey', '2017-05-05 alex', 'Минолта склад', 232, '', 'Y', 'Даплекс блоки', '215', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-28 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1098, '2017-04-28 rsergey', '2017-05-12 alex', '', '', '', '', '', '', 'Ловекс', 62, '', 'N', '', 'Ламинатор', '', 'Предложить новий', '', 'N', 'N', 'N', '', 'N', 'rsergey', '2017-04-28 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1099, '2017-04-28 ssergey', '2017-05-04 alex', '2017-05-16 alex', '', '', '2017-05-16 alex', '2017-04-28 ssergey', '2017-05-16 alex', 'Бейби Центр', 254, '', 'Y', 'Заправка Samsung d104s - 1шт', 'картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-04-28 ssergey', 'Y', 'Y', 'Y', 'N', 'N', '', '2017-04'),
(1100, '2017-04-28 ssergey', '', '2017-05-05 rsergey', '2017-05-03 irina', '2017-04-29 rsergey', '', '2017-04-28 ssergey', '', 'Кристар', 252, '', 'Y', 'Заправка НР 53А - 1шт, НР 78А - 1шт, НР 85А - 1шт, Samsung d117s (без чипа) - 1шт, Samsung d105s (без чипа) - 1шт', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'N', 'ssergey', '2017-04-28 ssergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(1101, '2017-04-28 alex', '2017-05-15 alex', '2017-05-15 alex', '', '', '2017-05-15 alex', '2017-05-15 alex', '2017-05-15 alex', 'Лена красноткацкая ', 255, '', 'Y', '', 'NEW монитор', '', '', 'дом 16 кв 22   063 6107209', 'N', 'Y', 'N', '', 'Y', 'alex', '2017-04-28 alex', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1102, '2017-04-28 alex', '2017-04-28 alex', '', '', '', '', '', '', 'Профсоюзы', 74, '', 'N', '', 'NEW ПК+монитор', '', '', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-04-28 alex', 'N', 'N', 'Y', 'N', 'N', '', '2017-04'),
(1103, '2017-04-28 alex', '2017-05-26 alex', '2017-05-26 alex', '2017-05-26 alex', '2017-05-24 alex', '2017-05-26 alex', '2017-05-26 alex', '2017-05-26 alex', 'Иващенко', 177, '', 'Y', '', 'КМА Bizhub 185', '', 'Капремонт драма (счетчик 153k)', '', 'Y', 'Y', 'Y', '', 'Y', 'alex', '2017-04-28 alex', 'Y', 'Y', 'N', 'Y', 'N', '', '2017-04'),
(1104, '2017-04-28 alex', '', '2017-05-04 alex', '', '2017-05-04 alex', '', '2017-05-04 alex', '', 'Укрхимфармация', 158, '', 'Y', 'Ремонт МФУ Samsung SCX-4824 / 4828 (печь в сборе)   - 1шт  2480грн\r\n', 'Samsung SCX-4824 / 4828', '', '', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-04-28 alex', 'N', 'N', 'N', 'Y', 'N', '', '2017-04'),
(1105, '2017-04-28 alex', '', '2017-05-16 irina', '2017-04-28 alex', '', '2017-04-28 alex', '2017-04-28 alex', '2017-05-19 alex', 'промтранс', 256, '', 'Y', '', 'плотер ', '', 'NEW картриджи №11 Yellow, №11 Magenta,№10 Black', '', 'N', 'Y', 'Y', '', 'Y', 'alex', '2017-04-28 alex', 'N', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1107, '2017-04-29 web2net', '', '2017-05-21 web2net', '', '', '', '', '', 'МКР Сервис', 216, '', 'N', '', 'Закончить подвязку клиентов к БД. Остался архив.', '', '', '', 'N', 'N', 'N', '', 'N', 'web2net', '2017-04-29 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-04'),
(1108, '2017-04-29 rsergey', '', '2017-04-29 rsergey', '2017-05-18 irina', '2017-04-29 rsergey', '2017-05-24 alex', '2017-04-29 rsergey', '2017-05-24 alex', 'Молочна Слобода', 136, '', 'Y', 'РОлики A00J563600 3шт  Т/О 360грн 1шт', 'КМА   Minolta bizhub  283', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-04-29 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-04'),
(1109, '2017-04-29 rsergey', '', '2017-04-29 rsergey', '', '', '2017-04-29 rsergey', '2017-04-29 rsergey', '2017-05-04 alex', 'Толик Либидская', 265, '', 'Y', 'Т/О', 'КМА   Minolta bizhub  222', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-29 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1110, '2017-04-29 rsergey', '', '2017-04-29 rsergey', '', '', '2017-04-29 rsergey', '2017-04-29 rsergey', '2017-05-04 alex', 'Рома Большевик', 139, '', 'Y', 'Востановление 12а 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-29 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1111, '2017-04-29 rsergey', '', '2017-05-03 rsergey', '', '', '2017-05-03 rsergey', '2017-05-03 rsergey', '2017-05-04 alex', 'Каховська', 267, '', 'Y', 'Заправка 85а 5шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-04-29 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-04'),
(1112, '2017-05-03 ssergey', '', '2017-05-03 ssergey', '2017-05-17 alex', '', '', '2017-05-03 ssergey', '', 'СиГэйт', 122, '', 'Y', 'Установка Windows, программ, шифрование диска\r\n', 'Компьютер', 'гарантийный))', '', '', 'N', 'Y', 'Y', '', 'N', 'ssergey', '2017-05-03 ssergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1113, '2017-05-03 ssergey', '', '2017-05-05 ssergey', '', '', '2017-05-05 ssergey', '2017-05-03 ssergey', '2017-05-05 alex', 'Виктория Академгородок', 272, '', 'Y', 'Завезти 4.05.2017, сумма - 9000 грн', 'Bizhub 215', '', 'Подготовить к продаже', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-03 ssergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1114, '2017-05-03 ssergey', '', '', '', '2017-05-17 alex', '', '2017-05-03 ssergey', '', 'Поликлиника Русановка', 70, '', 'Y', 'Заправка    восстановление НР 12А - 1шт', 'картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-03 ssergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1115, '2017-05-03 ssergey', '', '2017-05-12 alex', '', '', '2017-05-12 alex', '2017-05-03 ssergey', '2017-05-12 alex', 'Днипролаб Дарница', 188, '', 'Y', 'Заправка НР СР1025 black - 1шт, НР 05А - 1шт, НР 53А - 1шт, Canon 725 - 1шт; ремонт картриджа НР 05А (дозирующее) - 1шт', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-03 ssergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1116, '2017-05-03 rsergey', '', '2017-05-10 rsergey', '2017-05-12 irina', '2017-05-05 rsergey', '2017-05-12 alex', '2017-05-10 rsergey', '2017-05-17 alex', 'Манулі Україна', 48, '', 'Y', 'востановление737 заправка 737 1шт, НР СЕ410А - 1шт, НР СЕ 411а 1шт 49а 1шт\r\nРамонт КМА Minolta bizhub 163 (барабан +стартер DV110 +ракель+ ролики 2шт+ 4163526001 2шт\r\n4163522101 2шт +Т/О 480грн) Заправка НР26а 2шт 26Х 1щт', 'Картриджи ', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-05-03 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-05'),
(1117, '2017-05-03 rsergey', '', '2017-05-03 rsergey', '', '', '2017-05-03 rsergey', '2017-05-03 rsergey', '2017-05-04 alex', 'Феофания', 273, '', 'Y', 'Заправка 85а 1шт', 'Картридж', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-03 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1118, '2017-05-03 rsergey', '', '2017-05-03 rsergey', '', '2017-05-04 alex', '', '2017-05-03 rsergey', '', 'Орион', 103, '', 'Y', 'Заправка 737 2щт 85а 1шт Востановление 85а 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'N', 'rsergey', '2017-05-03 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1119, '2017-05-04 rsergey', '', '2017-05-05 rsergey', '', '', '2017-05-05 rsergey', '2017-05-05 rsergey', '2017-05-05 alex', 'Авторинок (Нотариус)', 179, '', 'Y', 'заправка 12а 3щт 15а 1шт сам 3шт вос 12а 1шт сам 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-04 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1120, '2017-05-04 alex', '', '2017-05-04 alex', '2017-05-04 alex', '', '2017-05-04 alex', '2017-05-04 alex', '2017-05-04 alex', 'Школа №19', 87, '', 'Y', 'Запр +чип', 'Samsung 111S', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'alex', '2017-05-04 alex', 'N', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1121, '2017-05-04 alex', '2017-05-12 alex', '2017-05-05 alex', '', '', '2017-05-05 alex', '2017-05-05 alex', '2017-05-05 alex', 'Клиника нова', 275, '', 'Y', '', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'alex', '2017-05-04 alex', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1122, '2017-05-04 alex', '2017-05-05 alex', '2017-05-05 alex', '', '', '2017-05-05 alex', '2017-05-05 ssergey', '2017-05-05 alex', 'Лена инфаркт отдел Запорожца ', 212, '', 'Y', '', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'alex', '2017-05-04 alex', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1123, '2017-05-04 alex', '', '', '2017-05-16 irina', '2017-05-04 alex', '2017-05-16 irina', '2017-05-04 alex', '', 'Энергия', 94, '', 'Y', 'Тонер Canon iR1018- 1шт, Canon EP-27 - 1шt', '', '', '', '', 'N', 'N', 'Y', '', 'Y', 'alex', '2017-05-04 alex', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1124, '2017-05-04 alex', '', '', '', '2017-05-17 alex', '', '2017-05-05 ssergey', '', 'МЦ МК (Моя клиника)', 190, '', 'Y', 'Ремонт МФУ HP M1132 1шт 860грн\r\nРемонт картр 285 380грн', '', '', '', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-05-04 alex', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1125, '2017-05-05 ssergey', '', '2017-05-05 rsergey', '2017-05-10 irina', '2017-05-05 rsergey', '', '2017-05-05 ssergey', '', 'МВЦ', 181, '', 'Y', 'Заправка НР 85А - 2шт', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'N', 'rsergey', '2017-05-05 alex', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1126, '2017-05-05 rsergey', '', '2017-05-10 rsergey', '', '', '2017-05-10 rsergey', '2017-05-10 rsergey', '2017-05-12 alex', 'Бальзака 185', 276, '', 'Y', 'Тонер 2шт ', '185', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-05 alex', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1127, '2017-05-05 rsergey', '', '2017-05-12 rsergey', '2017-05-10 irina', '2017-05-05 rsergey', '2017-05-10 irina', '2017-05-11 rsergey', '2017-05-15 alex', 'Глобал Мани', 52, '', 'Y', 'Тонер красний TN216', 'КМА   Minolta bizhub  220', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-05-05 alex', 'N', 'Y', 'N', 'Y', 'N', '', '2017-05'),
(1128, '2017-05-05 rsergey', '', '2017-05-05 rsergey', '2017-05-10 irina', '2017-05-05 rsergey', '', '2017-05-05 rsergey', '', 'Алвоген', 49, '', 'Y', 'Заправка 36а 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'N', 'rsergey', '2017-05-05 alex', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1129, '2017-05-05 rsergey', '', '2017-05-10 rsergey', '2017-05-12 irina', '2017-05-10 rsergey', '2017-05-17 alex', '2017-05-10 rsergey', '2017-05-17 alex', 'Екосфера 163 (бориспольская)', 277, '', 'Y', 'ТОнер ТN 114 2шт Ремонт Minolta bizhub 211 DV 110 1ШТ Колари АОХХ3745500-2шт шестерня4021522701 1шт 4163526001 1шт 4163522101 1щт т/о 420грн', '163', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-05-05 alex', 'N', 'Y', 'N', 'Y', 'N', '', '2017-05'),
(1130, '2017-05-05 rsergey', '', '2017-05-10 rsergey', '2017-05-15 irina', '2017-05-10 rsergey', '2017-05-19 alex', '2017-05-10 rsergey', '2017-05-19 alex', 'ДС Электроникс', 148, '', 'Y', 'Заправка 26а 1шт 26х 1шт', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-05-05 alex', 'N', 'Y', 'N', 'Y', 'N', '', '2017-05'),
(1131, '2017-05-05 rsergey', '', '2017-05-11 rsergey', '', '', '2017-05-11 rsergey', '2017-05-11 rsergey', '2017-05-12 alex', 'Школа №80', 97, '', 'Y', '', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-05 alex', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1132, '2017-05-05 rsergey', '', '2017-05-11 rsergey', '2017-05-10 irina', '2017-05-05 rsergey', '2017-05-17 alex', '2017-05-11 rsergey', '2017-05-17 alex', 'Глобал Мани', 52, '', 'Y', 'КАрт новие Т 007  Т 009', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-05-05 alex', 'N', 'Y', 'N', 'Y', 'N', '', '2017-05'),
(1133, '2017-05-05 rsergey', '', '2017-05-11 rsergey', '', '', '2017-05-11 rsergey', '2017-05-05 rsergey', '2017-05-12 alex', 'Андрей', 278, '', 'Y', 'завести', '1522', '', '', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-05 alex', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1134, '2017-05-05 rsergey', '', '2017-05-05 rsergey', '', '', '2017-05-25 rsergey', '2017-05-05 rsergey', '', 'Дрим лайф', 75, '', 'Y', 'ТН 211', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-05 alex', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1135, '2017-05-05 rsergey', '', '2017-05-05 rsergey', '2017-05-10 irina', '2017-05-05 rsergey', '2017-05-17 alex', '2017-05-05 rsergey', '2017-05-17 alex', 'Будмир', 86, '', 'Y', 'Заправка 737 4шт', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-05-05 alex', 'N', 'Y', 'N', 'Y', 'N', '', '2017-05'),
(1136, '2017-05-05 rsergey', '2017-05-05 alex', '', '', '', '', '', '', 'Ловекс', 62, '', 'N', '', '185 ', '', '', '', 'Y', 'N', 'N', '', 'N', 'rsergey', '2017-05-05 alex', 'N', 'N', 'Y', 'N', 'Y', '2017-05-12 alex', '2017-05'),
(1137, '2017-05-05 ssergey', '2017-05-12 alex', '2017-05-12 alex', '', '', '', '2017-05-05 ssergey', '', 'МЦ МК (Моя клиника) Мишуги', 279, '', 'Y', '1. Замена шлейфа сканера - 1шт\r\n2. Заправка картриджа xerox 3119 - 1шт', 'Xerox 3119', 'BMA383303363', 'Черные полосы при копировании', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-05-05 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1138, '2017-05-05 alex', '2017-05-12 alex', '', '', '2017-05-18 alex', '', '2017-05-10 ssergey', '', 'Поликлиника Русановка (Энтузиастов 13)', 180, '', 'Y', 'Заправка Сanon 726 - 1шт, Canon 725 - 1шт, Xerox 3010 - 1шт', 'картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-05-05 alex', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1139, '2017-05-10 ssergey', '', '2017-05-12 alex', '', '', '2017-05-12 alex', '2017-05-10 ssergey', '2017-05-12 alex', 'Днипролаб', 66, '', 'Y', 'Заправка НР 85А - 5шт, НР 05А - 2шт, НР 35А - 1шт, НР 12А - 3шт, Canon 725 - 4шт, Canon 703 - 1шт, Canon 719 - 1шт', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-10 ssergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1140, '2017-05-10 rsergey', '', '2017-05-11 rsergey', '', '', '2017-05-11 rsergey', '2017-05-11 rsergey', '2017-05-12 alex', 'Свит нерухомости', 280, '', 'Y', 'Заправка 12а 1шт востановление 12а 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-10 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1141, '2017-05-10 rsergey', '', '2017-05-10 rsergey', '', '', '2017-05-11 rsergey', '2017-05-10 rsergey', '2017-05-12 alex', 'Школа №80', 97, '', 'Y', 'Заправка 12а', 'Картриджи', '063 180 70 18', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-10 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1142, '2017-05-10 rsergey', '', '2017-05-12 rsergey', '2017-05-10 irina', '', '', '2017-05-10 rsergey', '', 'Кристар-Центр', 197, '', 'Y', 'Заправка Samsung D105 1шт D 117 1шт НР 85а 1шт ', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'N', 'rsergey', '2017-05-10 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1143, '2017-05-10 rsergey', '', '2017-05-11 rsergey', '', '', '2017-05-11 rsergey', '2017-05-10 rsergey', '2017-05-12 alex', 'Молочна Слобода', 136, '', 'Y', 'Б/У продан', 'Принтер Samsung 1641', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-10 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1144, '2017-05-11 ssergey', '', '', '', '', '', '2017-05-11 ssergey', '', 'Ловекс-К', 281, '', 'Y', 'Заправка НР 05А - 1шт', 'картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-11 ssergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1145, '2017-05-11 ssergey', '', '', '', '', '', '2017-05-11 ssergey', '', 'Ловекс', 62, '', 'Y', 'Заправка НР 05А - 1шт, НР 83А - 1шт, НР 12А - 1шт; восстановление НР 12А - 1шт; ремонт картриджа НР 05А (корона) - 1шт', 'картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-11 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1146, '2017-05-11 ssergey', '', '', '', '', '', '2017-05-11 ssergey', '', 'СиГэйт', 122, '', 'Y', 'Установка Windows, программ, шифрование диска', 'Ноутбук Acer', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-11 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1147, '2017-05-11 ssergey', '', '2017-05-11 rsergey', '2017-05-12 irina', '', '2017-05-11 rsergey', '2017-05-11 ssergey', '2017-05-17 alex', 'Манулі Україна', 48, '', 'Y', 'Заправка НР 26А - 2шт, НР 26Х - 1шт', 'картриджи', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'ssergey', '2017-05-11 ssergey', 'N', 'Y', 'N', 'N', 'Y', '2017-05-11 rsergey', '2017-05'),
(1148, '2017-05-11 rsergey', '', '2017-05-16 rsergey', '', '', '2017-05-16 rsergey', '2017-05-16 rsergey', '', 'Рома большевик                                           ', 139, '', 'Y', '', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-11 rsergey', 'Y', 'N', 'N', 'N', 'Y', '2017-05-16 rsergey', '2017-05'),
(1149, '2017-05-12 rsergey', '', '2017-05-16 rsergey', '', '', '2017-05-16 rsergey', '2017-05-16 rsergey', '2017-05-17 alex', 'Школа №315', 72, '', 'Y', 'Заправка+ Востановление 1005', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-12 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05');
INSERT INTO `works` (`id`, `date_create`, `date_prioritet`, `date_otgryzka`, `date_doc`, `date_srochno`, `date_pay`, `date_zdelano`, `date_archiv`, `client`, `client_id`, `data_client`, `zdelano`, `content`, `divice`, `sn`, `neispravnost`, `note`, `viezd`, `otgryzka`, `doc`, `number_bill`, `pay`, `ingener`, `responsible_ingener`, `nal`, `archiv`, `prioritet`, `srochno`, `trash`, `date_trash`, `month_create`) VALUES
(1150, '2017-05-12 rsergey', '', '2017-05-16 rsergey', '2017-05-19 alex', '', '2017-05-16 rsergey', '2017-05-16 rsergey', '2017-05-19 alex', 'Больница №10', 91, '', 'Y', 'чип (микросхема)2шт160х2', 'Xerox3100', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-05-12 rsergey', 'Y', 'Y', 'N', 'N', 'Y', '2017-05-16 rsergey', '2017-05'),
(1151, '2017-05-12 ssergey', '', '2017-05-12 ssergey', '', '', '2017-05-12 ssergey', '2017-05-12 ssergey', '2017-05-12 alex', 'Престиж Центр', 274, '', 'Y', '1. Заправка НР 15А - 1шт - 150 грн\r\n2. Тонер TN-116 - 1шт - 750 грн', 'картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-12 ssergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1152, '2017-05-12 ssergey', '', '2017-05-12 ssergey', '', '', '2017-05-12 ssergey', '2017-05-12 ssergey', '2017-05-12 alex', 'Иващенко', 177, '', 'Y', '1. Замена термопленки\r\n2. Замена ролика подачи бумаги\r\n3. Заправка Canon 719h - 1шт\r\n4. Восстановление Canon 719h - 1шт', 'Принтер Canon 6310', '', 'Застряет бумага', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-12 ssergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1153, '2017-05-12 alex', '', '2017-05-16 rsergey', '', '', '', '2017-05-16 rsergey', '', 'Урловская', 130, '', 'Y', '', 'картриджи', '', 'запр Xerox 3225+чип  -1шт\r\nзапр 12А - 2шт\r\nвосст 1 + ракель + дозир +корона', '', 'Y', 'Y', 'N', '', 'N', 'alex', '2017-05-12 alex', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1154, '2017-05-12 rsergey', '', '2017-05-12 rsergey', '', '', '2017-05-12 rsergey', '2017-05-12 rsergey', '2017-05-13 alex', 'Щербакова 8', 282, '', 'Y', 'Тонер тн114 1шт', '163', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-12 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1155, '2017-05-12 rsergey', '', '2017-05-12 rsergey', '2017-05-15 irina', '2017-05-12 rsergey', '2017-05-19 alex', '2017-05-12 rsergey', '2017-05-19 alex', 'Манулі Україна', 48, '', 'Y', 'Востановление 26а 2шт', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-05-12 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-05'),
(1156, '2017-05-12 alex', '', '2017-05-12 alex', '', '', '', '2017-05-12 alex', '', 'Сталь', 131, '', 'Y', ' 1). Барабан 2)., Ракель 3)., Колары - 2шт,  5). Т/О', '', '', '', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-05-12 alex', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1157, '2017-05-12 rsergey', '', '', '', '', '', '', '', 'кибернетики', 283, '', 'N', '', '', '', '', '', 'Y', 'N', 'N', '', 'N', 'rsergey', '2017-05-12 rsergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1158, '2017-05-12 rsergey', '', '2017-05-16 rsergey', '', '', '2017-05-16 rsergey', '2017-05-16 rsergey', '2017-05-17 alex', 'Радищева 1050', 101, '', 'Y', 'Тонер ТН 920', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-12 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1159, '2017-05-13 ssergey', '', '', '', '', '', '2017-05-13 ssergey', '', 'Эдвансис', 68, '', 'Y', 'Заправка НР 30А - 1шт, НР СЕ740А - 1шт; восстановление НР СЕ741A - 1шт (барабан НР 5225)', 'картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-13 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1160, '2017-05-13 alex', '', '2017-05-13 alex', '', '2017-05-13 alex', '2017-05-17 alex', '2017-05-13 alex', '', 'Инкомантур', 93, '', 'Y', 'выставляем как Картридж CE505A 2шт на сумму 4020грн', 'NEW БУ принтер HP P2055dn', '', '', '', 'N', 'Y', 'N', '', 'Y', 'alex', '2017-05-13 alex', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1161, '2017-05-13 ssergey', '', '2017-05-16 rsergey', '', '', '', '2017-05-13 ssergey', '', 'Ловекс', 62, '', 'Y', 'Заправка Canon 737 - 2шт; Canon 737 - 1шт', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-05-13 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1162, '2017-05-15 ssergey', '', '2017-05-18 ssergey', '', '', '', '2017-05-15 ssergey', '', 'Инкомантур', 93, '', 'Y', 'Заправка НР 05А - 2шт; восстановление НР 05А - 1шт', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-05-15 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1163, '2017-05-15 ssergey', '', '2017-05-16 rsergey', '', '', '2017-05-16 rsergey', '2017-05-15 ssergey', '2017-05-17 alex', 'Рома Большевик', 139, '', 'Y', 'Заправка НР 12А - 2шт, НР 53А - 1шт', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-15 ssergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1164, '2017-05-15 ssergey', '', '', '', '', '', '2017-05-15 ssergey', '', 'МЦ МК (Моя клиника)', 190, '', 'Y', 'Заправка НР 78А - 1шт', 'картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-15 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1165, '2017-05-15 ssergey', '', '2017-05-25 alex', '', '', '2017-05-25 alex', '2017-05-15 ssergey', '', 'Днипролаб', 66, '', 'Y', 'Заправка Canon 703 - 1шт, НР 85А - 1шт', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-15 ssergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1166, '2017-05-16 ssergey', '', '2017-05-17 rsergey', '2017-05-18 irina', '2017-05-16 rsergey', '', '2017-05-16 ssergey', '', 'Больница №10', 91, '', 'Y', '3. Заправка Xerox 3100- 1шт + чип 1 х 160,00\r\n4. Восстановление Xerox 3100 - 1шт + чип 1 х 16', 'картридж', '', '', '', 'N', 'Y', 'Y', '', 'N', 'ssergey', '2017-05-16 ssergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1211, '2017-05-19 rsergey', '', '2017-05-19 rsergey', '', '', '', '2017-05-19 rsergey', '', 'Больница №10', 91, '', 'Y', '1.Резиновий вал 1шт 460грн\r\n2.Термопленка 1шт 280грн\r\n3.Т/О принтера НР 1018 1шт 260 грн', 'Принтер 1018', '', '', '', 'N', 'Y', 'N', '', 'N', 'rsergey', '2017-05-19 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1167, '2017-05-16 ssergey', '', '', '2017-05-17 irina', '2017-05-16 rsergey', '2017-05-24 alex', '2017-05-18 ssergey', '', 'Впровадження', 59, '', 'Y', 'Заправка НР 15А - 1шт, НР 85А - 1шт, Xerox 3117 - 1шт, Minolta bizhub 20p (TNP-24)- 1шт, Minolta 1600w: magenta - 1шт, yellow - 1шт, black - 1шт', 'картриджи', '', '', '', 'N', 'N', 'Y', '', 'Y', 'ssergey', '2017-05-16 ssergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1168, '2017-05-16 alex', '', '2017-05-16 alex', '', '2017-05-18 alex', '', '2017-05-16 alex', '', 'Поликлиника Русановка (Энтузиастов 13)', 180, '', 'Y', 'запр карт Canon 725', 'карт Canon 725 Оксана', '', '', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-05-16 alex', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1169, '2017-05-16 alex', '', '2017-05-16 alex', '', '2017-05-18 alex', '', '2017-05-16 alex', '', 'Поликлиника Русановка', 70, '', 'Y', 'Тонер TN116-  1шт', 'КМА Bizhub 185', '', '', '', 'N', 'Y', 'N', '', 'N', 'alex', '2017-05-16 alex', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1170, '2017-05-16 rsergey', '', '2017-05-16 rsergey', '', '', '2017-05-17 alex', '2017-05-16 rsergey', '2017-05-17 alex', 'Школа №315', 72, '', 'Y', '', 'Картриджи', '', 'Востановление 1005', '', 'Y', 'Y', 'N', '', 'N', 'rsergey', '2017-05-16 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1171, '2017-05-16 rsergey', '', '2017-05-16 rsergey', '2017-05-17 irina', '2017-05-16 rsergey', '2017-05-24 alex', '2017-05-16 rsergey', '2017-05-24 alex', 'Кивач', 284, '', 'Y', 'Заправка Саnon 4730 1шт Востановление 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-05-16 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-05'),
(1172, '2017-05-16 rsergey', '', '2017-05-16 rsergey', '2017-05-17 irina', '2017-05-16 rsergey', '2017-05-24 alex', '2017-05-16 rsergey', '2017-05-24 alex', 'Визави', 84, '', 'Y', 'Заправка НР 1300 1шт + востановление 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-05-16 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-05'),
(1173, '2017-05-16 rsergey', '', '2017-05-16 rsergey', '2017-05-17 irina', '2017-05-16 rsergey', '2017-05-24 alex', '2017-05-16 rsergey', '2017-05-24 alex', 'Визави ЛТД', 285, '', 'Y', 'Заправка НР 1100 1шт 83А 1шт\r\n', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-05-16 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-05'),
(1174, '2017-05-16 rsergey', '', '2017-05-16 rsergey', '', '', '2017-05-16 rsergey', '2017-05-16 rsergey', '2017-05-17 alex', 'Радищева 1050', 101, '', 'Y', 'Т/О', '1050', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-16 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1175, '2017-05-16 rsergey', '', '2017-05-16 rsergey', '', '', '2017-05-16 rsergey', '2017-05-16 rsergey', '2017-05-17 alex', 'Мильниченко', 286, '', 'Y', '', 'Картриджи', '', '', 'Заправка 1005 2шт Востановление 1шт', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-16 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1176, '2017-05-16 rsergey', '', '2017-05-16 rsergey', '', '', '2017-05-16 rsergey', '2017-05-16 rsergey', '2017-05-17 alex', 'Дружби народов 28в', 287, '', 'Y', 'Заправка 1005 1шт', 'картридж', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-16 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1177, '2017-05-16 rsergey', '', '2017-05-16 rsergey', '', '', '2017-05-16 rsergey', '2017-05-16 rsergey', '2017-05-17 alex', 'Демеевка', 219, '', 'Y', 'Тонер 1шт', '185', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-16 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1178, '2017-05-16 rsergey', '', '2017-05-23 rsergey', '2017-05-18 irina', '2017-05-17 rsergey', '', '2017-05-17 ssergey', '', 'Глобал Мани', 52, '', 'Y', 'Заправка Canon FX-10 - 2шт, Canon 719 - 1шт', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'N', 'rsergey', '2017-05-16 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1179, '2017-05-16 rsergey', '', '2017-05-23 rsergey', '', '', '2017-05-23 rsergey', '2017-05-23 rsergey', '2017-05-25 alex', 'Горловская', 288, '', 'Y', '', 'brazer', '', '', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-16 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1180, '2017-05-16 rsergey', '', '2017-05-17 rsergey', '', '', '2017-05-17 rsergey', '2017-05-17 rsergey', '2017-05-17 alex', 'Оболонь Соня', 193, '', 'Y', 'Запправка 53Х 1шт', '', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-16 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1181, '2017-05-16 rsergey', '', '2017-05-17 rsergey', '2017-05-18 irina', '2017-05-17 rsergey', '', '2017-05-17 rsergey', '', 'ДС Электроник', 289, '', 'Y', 'Ремонт 520грн', 'Canon МФУ MF 3228', '', '', '', 'Y', 'Y', 'Y', '', 'N', 'rsergey', '2017-05-16 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1182, '2017-05-16 rsergey', '', '2017-05-18 rsergey', '2017-05-19 irina', '2017-05-18 rsergey', '', '2017-05-18 rsergey', '', 'Кристар-Центр', 197, '', 'Y', 'Ремонт 580грн Заправка 1шт', 'Samcung   SCX 4655', '', '', '', 'Y', 'Y', 'Y', '', 'N', 'rsergey', '2017-05-16 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1183, '2017-05-16 rsergey', '', '2017-05-16 rsergey', '2017-05-17 irina', '2017-05-16 rsergey', '', '2017-05-16 rsergey', '', 'Окси-К', 132, '', 'Y', 'Тонер TN 118 1шт (оригинал) 1150грн', '226', '', '', '', 'Y', 'Y', 'Y', '', 'N', 'rsergey', '2017-05-16 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1184, '2017-05-16 rsergey', '', '2017-05-16 rsergey', '', '', '2017-05-26 rsergey', '2017-05-16 rsergey', '', 'Сталь', 131, '', 'Y', 'Тонер 015 1шт', '363', '', '', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-16 rsergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1185, '2017-05-16 rsergey', '', '2017-05-16 rsergey', '', '', '2017-05-16 rsergey', '2017-05-16 rsergey', '2017-05-17 alex', 'Горловская', 288, '', 'Y', 'Заправка  Canon 2016 83А', '2016', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-16 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1186, '2017-05-17 web2net', '', '2017-05-21 web2net', '', '', '2017-05-21 web2net', '2017-05-17 web2net', '', 'МКР Сайт', 216, '', 'Y', 'Нужно продумать структуру минолтавских опций..', 'Минолта::Опции', '', '', '', 'N', 'Y', 'N', '', 'Y', 'web2net', '2017-05-17 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1187, '2017-05-17 alex', '', '2017-05-17 alex', '', '', '2017-05-17 alex', '2017-05-17 alex', '2017-05-17 alex', 'Ловекс-К', 281, '', 'Y', 'восстановление НР 05А - 1шт,', 'картр CE505A', '', '', '', 'N', 'Y', 'N', '', 'Y', 'alex', '2017-05-17 alex', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1188, '2017-05-17 alex', '', '', '', '', '', '', '', 'Гринстоун', 92, '', 'N', '', '', '', 'запр 719\r\nзапр FX10', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-05-17 alex', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1189, '2017-05-17 ssergey', '', '2017-05-18 ssergey', '', '', '2017-05-18 ssergey', '2017-05-17 ssergey', '2017-05-19 alex', 'Рома Большевик', 139, '', 'Y', 'Заправка НР 12А - 1шт', 'картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-17 ssergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1190, '2017-05-17 ssergey', '', '2017-05-17 ssergey', '', '', '', '2017-05-17 ssergey', '', 'СиГэйт', 122, '', 'Y', 'Установка антивируса на 5 компьютеров', 'Компьютеры', '', '', '', 'Y', 'Y', 'N', '', 'N', 'ssergey', '2017-05-17 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1191, '2017-05-17 ssergey', '', '2017-05-17 ssergey', '', '', '2017-05-17 ssergey', '2017-05-17 ssergey', '2017-05-17 alex', 'Луначарского 5    каб 330', 222, '', 'Y', 'Заправка Brother TN-1075 - 2шт', 'картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-17 ssergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1192, '2017-05-17 ssergey', '', '2017-05-17 ssergey', '', '2017-05-18 alex', '', '2017-05-17 ssergey', '', 'Поликлиника Русановка', 70, '', 'Y', 'Разобрали принтер и достали застрявшую бумагу', 'Xerox 3010', '', 'Застряла бумага в печке', '', 'N', 'Y', 'N', '', 'N', 'ssergey', '2017-05-17 ssergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1193, '2017-05-17 rsergey', '', '2017-05-25 rsergey', '2017-05-18 irina', '2017-05-17 rsergey', '2017-05-25 alex', '2017-05-25 rsergey', '2017-05-25 alex', 'Манулі Україна', 48, '', 'Y', 'Тонер ТN 114 (ОР)', '163', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'rsergey', '2017-05-17 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-05'),
(1194, '2017-05-17 rsergey', '', '2017-05-23 rsergey', '2017-05-18 irina', '2017-05-17 rsergey', '', '2017-05-23 rsergey', '', 'Глобал Мани', 52, '', 'Y', 'Тонер ТN 216  1890 грн', '220', '', '', '', 'Y', 'Y', 'Y', '', 'N', 'rsergey', '2017-05-17 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1195, '2017-05-17 rsergey', '', '2017-05-18 rsergey', '', '', '2017-05-18 rsergey', '2017-05-18 rsergey', '2017-05-19 alex', 'Авторинок 215', 140, '', 'Y', 'Заправка 12А 2шт +востановление 1шт Ракель 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-17 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1196, '2017-05-17 rsergey', '2017-05-24 alex', '2017-05-19 rsergey', '', '', '2017-05-19 rsergey', '2017-05-19 rsergey', '2017-05-25 alex', 'Оболонь Соня', 193, '', 'Y', 'Заправка 55Х  1шт Востановление 1шт, Ремонт картриджа (Дозирующее + магнитный вал)', '3015', '', '', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-17 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1197, '2017-05-17 alex', '', '2017-05-18 alex', '', '', '2017-05-17 alex', '2017-05-17 alex', '', 'Профсоюзы', 74, '', 'Y', '', 'Шрэдер', '', '', '', 'N', 'Y', 'N', '', 'Y', 'alex', '2017-05-17 alex', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1198, '2017-05-18 ssergey', '', '', '2017-05-18 irina', '', '', '2017-05-18 ssergey', '', 'Кристар', 252, '', 'Y', 'Заправка НР 78А - 1шт, Samsung D117s (без чипа) - 2шт', 'картриджи', '', '', '', 'N', 'N', 'Y', '', 'N', 'ssergey', '2017-05-18 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1199, '2017-05-18 alex', '', '2017-05-18 alex', '', '', '2017-05-24 alex', '2017-05-18 alex', '', 'Ловекс', 62, '', 'Y', '', 'NEW картридж Xerox 3020', '', '', '351', 'Y', 'Y', 'N', '', 'Y', 'alex', '2017-05-18 alex', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1200, '2017-05-18 alex', '', '2017-05-18 alex', '', '2017-05-18 alex', '', '2017-05-18 alex', '', 'Поликлиника Русановка (Энтузиастов 13)', 180, '', 'Y', 'печка застревание бумага', 'Canon LBP 6230', '', 'светит красным)))', '', 'Y', 'Y', 'N', '', 'N', 'alex', '2017-05-18 alex', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1201, '2017-05-18 alex', '', '2017-05-18 alex', '', '', '', '2017-05-18 alex', '', 'ABC 2000', 77, '', 'Y', 'заправка HP CE285A', 'картр HP CE285A', '', '', '', 'Y', 'Y', 'N', '', 'N', 'alex', '2017-05-18 alex', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1202, '2017-05-18 alex', '', '', '', '', '', '2017-05-18 ssergey', '', 'Вип Декор', 80, '', 'Y', 'Зправка НР 05А - 1шт', 'картр CE505A', '', 'запр', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-05-18 alex', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1203, '2017-05-18 alex', '2017-05-18 alex', '', '', '', '', '', '', 'Ира Леси', 213, '', 'N', '', 'Canon ir 1018', '', 'Застревание', 'на 8:00   22.05.17', 'Y', 'N', 'N', '', 'N', 'alex', '2017-05-18 alex', 'N', 'N', 'Y', 'N', 'N', '', '2017-05'),
(1204, '2017-05-18 alex', '', '2017-05-24 alex', '2017-05-22 irina', '2017-05-18 alex', '2017-05-24 alex', '2017-05-24 alex', '2017-05-24 alex', 'ДП Спортивный комплекс Атлет', 292, '', 'Y', '', 'картр', '', 'запр+чип Minolta 1350 - 3шт х 240\r\nвосст 85А х 180\r\nзапр 85А х 165\r\nзапр 83Х х 280\r\nзапр C4092A (НРlj1100) х 165\r\nвосст C4092A х 180', '', 'N', 'Y', 'Y', '', 'Y', 'alex', '2017-05-18 alex', 'N', 'Y', 'N', 'Y', 'N', '', '2017-05'),
(1205, '2017-05-18 rsergey', '', '2017-05-18 rsergey', '2017-05-19 irina', '2017-05-18 rsergey', '', '2017-05-18 rsergey', '', 'Будмир', 86, '', 'Y', 'Заправка 737 4шт Корона 1шт Доз лезвие 1шт', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'N', 'rsergey', '2017-05-18 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1206, '2017-05-18 rsergey', '', '2017-05-18 rsergey', '2017-05-19 irina', '2017-05-18 rsergey', '', '2017-05-18 rsergey', '', 'Квазар', 58, '', 'Y', 'Заправка 12А 2шт 92А 1шт Samsung 2шт', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'N', 'rsergey', '2017-05-18 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1207, '2017-05-18 rsergey', '', '2017-05-18 rsergey', '', '', '2017-05-25 rsergey', '2017-05-18 rsergey', '2017-05-25 alex', 'Таня ', 295, '', 'Y', 'Заправка +востановление', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-18 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1208, '2017-05-18 rsergey', '', '2017-05-19 rsergey', '2017-05-23 irina', '2017-05-19 rsergey', '', '2017-05-19 rsergey', '', 'Пилон', 90, '', 'Y', '', 'Картриджи', '', 'Заправка 05Х 1шт 12а 1шт', '', 'Y', 'Y', 'Y', '', 'N', 'rsergey', '2017-05-18 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1209, '2017-05-19 rsergey', '', '', '', '', '', '', '', 'Авторинок (Нотариус)', 179, '', 'N', '', 'Canon FC/PC', '', '', '', 'N', 'N', 'N', '', 'N', 'rsergey', '2017-05-19 rsergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1210, '2017-05-19 irina', '', '2017-05-26 irina', '2017-05-19 irina', '', '2017-05-19 irina', '2017-05-19 irina', '', 'К-Фундамент', 172, '', 'Y', '', 'Блок ПК, мыша+клав', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'irina', '2017-05-19 irina', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1212, '2017-05-19 ssergey', '', '2017-05-25 alex', '', '', '2017-05-25 alex', '2017-05-19 ssergey', '', 'Днипролаб', 66, '', 'Y', 'Заправка НР 12А - 2шт, НР 05А - 1шт, Canon 719 - 1шт, Canon 725 - 2шт, НР 35А - 1шт, НР 85А - 1шт; восстановление НР 05А - 1шт', 'картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-19 ssergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1213, '2017-05-19 ssergey', '', '', '', '', '', '2017-05-19 ssergey', '', 'Перспектива', 76, '', 'Y', 'Заправка НР 85А - 2шт, НР 78А - 2шт; ремонт картриджа НР 05А (дозирующее) - 1шт', 'картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-19 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1214, '2017-05-19 ssergey', '', '', '', '', '', '2017-05-19 ssergey', '', 'Гильдия', 51, '', 'Y', 'Заправка НР 85А - 1шт, Canon 725 - 1шт, НР 78А - 1шт; ремонт картриджа НР 85А (магнитный вал) - 1шт', 'картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-19 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1215, '2017-05-19 ssergey', '', '', '', '', '', '2017-05-19 ssergey', '', 'Инкомантур', 93, '', 'Y', 'Заправка НР 05А - 2шт', 'картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-19 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1216, '2017-05-19 rsergey', '', '2017-05-22 rsergey', '', '', '', '2017-05-22 rsergey', '', 'Алвоген', 49, '', 'Y', '', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'rsergey', '2017-05-19 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1217, '2017-05-19 rsergey', '', '2017-05-26 rsergey', '', '', '2017-05-26 rsergey', '2017-05-26 rsergey', '', 'Формат', 298, '', 'Y', 'Замена барабана 1350', 'Minolta  1350', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-19 rsergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1218, '2017-05-19 rsergey', '', '2017-05-19 rsergey', '2017-05-23 irina', '', '', '2017-05-19 rsergey', '', 'Впровадження', 59, '', 'Y', '1. Замена термопленки 260 грн Т/О 240грн\r\n2.Ремонт МФУ Minolta 1680 360грн', 'НР 1200', '', '', '', 'Y', 'Y', 'Y', '', 'N', 'rsergey', '2017-05-19 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1219, '2017-05-19 rsergey', '', '2017-05-20 rsergey', '', '', '2017-05-20 rsergey', '2017-05-20 rsergey', '2017-05-25 alex', 'Жукова 163', 299, '', 'Y', 'Тонер 2шт', 'Minolta bizhub 163', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-19 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1220, '2017-05-19 alex', '', '2017-05-19 alex', '', '', '2017-05-19 alex', '2017-05-19 alex', '2017-05-19 alex', 'Урловская 13 эт2)))', 300, '', 'Y', 'запр 3225', 'картр', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'alex', '2017-05-19 alex', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1221, '2017-05-19 alex', '', '', '', '', '', '2017-05-23 ssergey', '', 'NewtonKids', 301, '', 'Y', '', 'Samsung', '', 'запр 101', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-05-19 alex', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1222, '2017-05-20 web2net', '', '2017-05-21 web2net', '2017-05-21 web2net', '', '2017-05-21 web2net', '2017-05-20 web2net', '2017-05-25 alex', 'МКР Сервис', 216, '', 'Y', '', 'Н/Б в распечатке', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-05-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1223, '2017-05-20 web2net', '2017-05-20 web2net', '2017-05-21 web2net', '2017-05-21 web2net', '', '2017-05-21 web2net', '2017-05-20 web2net', '2017-05-25 alex', 'МКР Сервис', 216, '', 'Y', '', 'Номер доков в списке', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-05-20 web2net', 'N', 'Y', 'Y', 'N', 'N', '', '2017-05'),
(1224, '2017-05-20 web2net', '', '2017-05-21 web2net', '2017-05-21 web2net', '', '2017-05-21 web2net', '2017-05-20 web2net', '2017-05-25 alex', 'МКР Сервис', 216, '', 'Y', 'По ссылке Страничка::Инженер появилась кнопка Отчет.\r\nТуда входят:\r\nЗаявки, которые Сделаны или Отгружены, но не в корзине и не в архиве.', 'Вторая форма распечатки', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-05-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1225, '2017-05-20 web2net', '', '2017-05-21 web2net', '2017-05-21 web2net', '', '2017-05-21 web2net', '2017-05-20 web2net', '2017-05-25 alex', 'МКР Сервис', 216, '', 'Y', 'Имена авторов в списке заявок. (Под кнопочками)', 'Подписи, кто-что делал в общем списке', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-05-20 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1227, '2017-05-21 web2net', '', '2017-05-21 web2net', '2017-05-21 web2net', '', '2017-05-21 web2net', '2017-05-21 web2net', '2017-05-25 alex', 'МКР Сервис', 216, '', 'Y', 'При безналичном расчете кнопка  Оплатили  активна только для уровней 6 и выше (бухгалтерия, директор)..', 'Кнопка Оплатили', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-05-22 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1228, '2017-05-22 rsergey', '', '2017-05-22 rsergey', '', '', '2017-05-24 rsergey', '2017-05-22 rsergey', '2017-05-25 alex', 'Супрун', 145, '', 'Y', 'Тонер тн118', '215', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-22 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1229, '2017-05-22 rsergey', '', '2017-05-23 rsergey', '2017-05-24 irina', '2017-05-23 rsergey', '2017-05-25 alex', '2017-05-23 rsergey', '2017-05-25 alex', 'Молочна Слобода', 136, '', 'Y', 'Заправка принтера НР 90А 2шт х 480,00 81А 2шт  Тонер Minolta TN217 2шт', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'Y', 'rsergey', '2017-05-22 rsergey', 'N', 'Y', 'N', 'Y', 'N', '', '2017-05'),
(1230, '2017-05-22 rsergey', '', '2017-05-24 rsergey', '', '', '2017-05-24 rsergey', '2017-05-24 rsergey', '2017-05-25 alex', 'цк профсо', 173, '', 'Y', 'Заправка 1005 2шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-22 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1231, '2017-05-22 rsergey', '', '2017-05-23 rsergey', '', '', '', '2017-05-23 rsergey', '', 'Школа №315', 72, '', 'Y', 'Заправка 1005 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'N', 'rsergey', '2017-05-22 rsergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1232, '2017-05-22 rsergey', '', '', '2017-05-23 irina', '2017-05-23 rsergey', '', '2017-05-22 rsergey', '', 'МВЦ', 181, '', 'Y', 'Заправка 53а 1шт  15а 1шт Ремонт 53а 1шт (180грн )  Ремонт 15а 1шт (дозирующее лезвие)', '', '', '', '', 'N', 'N', 'Y', '', 'N', 'rsergey', '2017-05-22 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1233, '2017-05-22 rsergey', '', '2017-05-23 rsergey', '', '', '2017-05-24 rsergey', '2017-05-23 rsergey', '2017-05-25 alex', 'Тиларм', 82, '', 'Y', '', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-22 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1234, '2017-05-22 web2net', '', '2017-05-22 web2net', '2017-05-22 web2net', '', '2017-05-22 web2net', '2017-05-23 web2net', '2017-05-25 alex', 'МКР Сервис', 216, '', 'Y', 'Теперь каждый пользователь может работать только со своими заявками..\r\n\r\nЧто-бы  активировать  сию чудную возможность, достаточно ткнуть мышкой в ссылку  Страничка::Инженер .\r\n\r\nПосле этого ссылка подсветится салатовой рамочкой и все кнопочки (Срочняковые, Нужны ДОКИ, Всё, Неоплачено, а также месяца и т.д.) будут фильтровать только заявки выбранного инженера.\r\n\r\nДля того, что-бы работать со ВСЕМИ заявками, необходимо кликнуть в красную кнопку  Страничка::MKR  - и Вашему взору предстанут ВСЕ заявки ВСЕХ инженеров, соответственно и кнопочки фильтров так-же будут фильтровать ВСЕ заявки..', 'Разбивка фильтров по инженерам', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-05-22 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1235, '2017-05-23 ssergey', '', '', '', '', '', '2017-05-23 ssergey', '', 'Женская Консультация', 166, '', 'Y', 'Заправка НР 05А - 1шт', 'картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-23 ssergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1236, '2017-05-23 ssergey', '', '2017-05-25 alex', '', '', '2017-05-25 alex', '2017-05-23 ssergey', '', 'Днипролаб Маяков', 194, '', 'Y', 'Заправка НР 05А - 1шт', 'картридж', '', '', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-23 ssergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1237, '2017-05-23 alex', '', '', '', '2017-05-23 alex', '', '', '', 'Профсоюзы', 74, '', 'N', '', 'хозтовары', '', 'полотенца -40шт\r\nтуалет бумага - 40шт\r\nфакс бум -5шт\r\nбум А4 - 25 пачек', '', 'Y', 'N', 'N', '', 'N', 'alex', '2017-05-23 alex', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1238, '2017-05-23 web2net', '', '2017-05-23 web2net', '2017-05-23 web2net', '', '2017-05-23 web2net', '2017-05-23 web2net', '2017-05-25 alex', 'МКР Сервис', 216, '', 'Y', '', 'Исправил кнопку оплаты. Заявка 1227', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-05-23 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1239, '2017-05-23 web2net', '', '2017-05-23 web2net', '2017-05-23 web2net', '', '2017-05-23 web2net', '2017-05-23 web2net', '2017-05-25 alex', 'МКР Сервис', 216, '', 'Y', '', 'Открытие документов из списка', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-05-23 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1240, '2017-05-23 rsergey', '', '2017-05-24 rsergey', '', '', '', '2017-05-24 rsergey', '', 'Школа №315', 72, '', 'Y', 'Заправка 1005 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'N', 'rsergey', '2017-05-23 rsergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1241, '2017-05-23 web2net', '', '2017-05-23 web2net', '2017-05-23 web2net', '', '2017-05-23 web2net', '2017-05-23 web2net', '2017-05-25 alex', 'МКР Сервис', 216, '', 'Y', '', 'В распечатке отчета убрал колонку Кто-чего..', '', '', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-05-23 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1242, '2017-05-23 rsergey', '', '2017-05-26 rsergey', '', '', '2017-05-26 rsergey', '2017-05-26 rsergey', '', 'Здолбуновская', 147, '', 'Y', 'Заправка 12а 5шт 1005 2шт Дозирущее 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-23 rsergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1243, '2017-05-23 ssergey', '', '', '', '', '', '2017-05-23 ssergey', '', 'Ловекс', 62, '', 'Y', 'Заправка Canon 719 - 1шт, Canon 703 - 1шт, Samsung D105s - 1шт', 'картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-23 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1244, '2017-05-24 alex', '', '2017-05-24 alex', '', '2017-05-26 alex', '2017-05-25 alex', '2017-05-24 alex', '', 'Днипролаб Маяков', 194, '', 'Y', 'Запр285-4,05-1, в05-1', 'Карт', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'alex', '2017-05-24 alex', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1245, '2017-05-24 rsergey', '', '2017-05-24 rsergey', '2017-05-25 irina', '2017-05-25 rsergey', '', '2017-05-24 rsergey', '', 'Соня', 151, '', 'Y', 'Заправка 12а 3шт', 'Картриджи', '', '', '', 'Y', 'Y', 'Y', '', 'N', 'rsergey', '2017-05-24 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1246, '2017-05-24 rsergey', '', '', '', '', '', '2017-05-25 ssergey', '', 'Терминал Леша', 126, '', 'Y', 'Заправка НР 36А - 4шт, НР 53А - 3шт, Minolta 1350 (6к) - 1шт; восстановление НР 36А - 1шт, НР 53А - 1шт; ремонт картриджа НР 53А (дозирующее) - 1шт', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'rsergey', '2017-05-24 rsergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1247, '2017-05-24 rsergey', '', '2017-05-26 rsergey', '2017-05-26 irina', '2017-05-26 rsergey', '', '2017-05-25 ssergey', '', 'УКРшпон', 137, '', 'Y', 'Заправка Panasonik KX 403 1шт -180грн, НР 12А - 5шт, НР 53А - 5шт, НР 36А - 2шт, Canon 719 - 1шт ; ремонт картриджа НР 53А (корона) - 2шт', 'Картриджи', '', '', '', 'N', 'Y', 'Y', '', 'N', 'rsergey', '2017-05-24 rsergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1248, '2017-05-24 rsergey', '', '2017-05-25 rsergey', '', '', '2017-05-25 rsergey', '2017-05-25 rsergey', '2017-05-25 alex', 'Школа №80', 97, '', 'Y', 'Востановление 12а 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-24 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1249, '2017-05-24 alex', '', '', '', '', '', '', '', 'альберт', 303, '', 'N', '', '', '', '', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-05-24 alex', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1250, '2017-05-25 ssergey', '', '2017-05-25 ssergey', '', '', '2017-05-25 ssergey', '2017-05-25 ssergey', '2017-05-25 alex', 'Виктория Академгородок', 272, '', 'Y', '1. Замена держателей крышки\r\n2. Забрал остаток суммы за аппарат - 3000 грн', 'Bizhub 215', '', 'Заклинило держатели крышки оригинала', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-25 ssergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1251, '2017-05-25 ssergey', '', '2017-05-25 ssergey', '', '', '2017-05-25 ssergey', '2017-05-25 ssergey', '2017-05-25 alex', 'Престиж Центр', 274, '', 'Y', 'Завезли тонер Bizhub 350 Tomoegawa - 800 грн', 'Тонер Bizhub 350 Tomoegawa', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-25 ssergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1252, '2017-05-25 rsergey', '', '2017-05-25 rsergey', '', '', '', '2017-05-25 rsergey', '', 'Квазар', 58, '', 'Y', 'Заправка Samsung 1шт', '', '', '', '', 'Y', 'Y', 'N', '', 'N', 'rsergey', '2017-05-25 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1253, '2017-05-25 rsergey', '', '2017-05-26 rsergey', '', '', '', '2017-05-25 ssergey', '', 'Орион', 103, '', 'Y', 'Заправка 78А 1шт, восстановление НР 78А - 1шт', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'N', 'rsergey', '2017-05-25 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1254, '2017-05-25 rsergey', '', '', '2017-05-26 irina', '', '', '2017-05-25 ssergey', '', 'Кристар-Центр', 197, '', 'Y', 'Заправка Samsung D117s - 1шт, НР 35А - 1шт', 'Картриджи', '', '', '', 'N', 'N', 'Y', '', 'N', 'rsergey', '2017-05-25 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1255, '2017-05-25 ssergey', '', '2017-05-25 alex', '', '', '2017-05-25 alex', '2017-05-25 ssergey', '', 'Днипролаб', 66, '', 'Y', 'Заправка НР 12А - 2шт, НР 85А - 2шт, НР 36А - 1шт, НР 05А - 2шт, НР 78А - 1шт, НР 53А - 1шт, Canon 725 - 1шт; восстановление НР 12А - 1шт, НР 36А - 1шт', 'картриджи', '', 'ок', '', 'N', 'Y', 'N', '', 'Y', 'ssergey', '2017-05-25 ssergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1256, '2017-05-25 rsergey', '', '2017-05-25 rsergey', '', '', '2017-05-25 rsergey', '2017-05-25 rsergey', '2017-05-25 alex', 'Андрей', 278, '', 'Y', 'Заправка+ востановление 12а 1шт', 'Картриджи', '', '', '', 'N', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-25 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1257, '2017-05-25 rsergey', '', '2017-05-26 rsergey', '', '', '2017-05-26 rsergey', '2017-05-26 rsergey', '', 'Бортничи', 157, '', 'Y', 'Тонер тн116 1шт заправка 12а 2шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-25 rsergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1258, '2017-05-25 ssergey', '', '', '', '', '', '2017-05-25 ssergey', '', 'Центус', 135, '', 'Y', 'Заправка Canon 719h - 1шт, НР 05А - 2шт, НР 55А - 1шт; восстановление НР 55А - 1шт', 'картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-25 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1259, '2017-05-25 ssergey', '', '', '', '', '', '2017-05-25 ssergey', '', 'Гринстоун', 92, '', 'Y', 'Заправка Canon FX-10 - 2щт, Canon 719 - 1шт, Canon 731 (black) - 1шт', 'картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-25 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1260, '2017-05-25 web2net', '', '', '', '', '', '', '', 'МКР Сервис', 216, '', 'N', '', 'Склад', '', 'Продумать алгоритм работы Склада.', '', 'N', 'N', 'N', '', 'N', 'web2net', '2017-05-25 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1261, '2017-05-25 web2net', '', '', '', '', '', '', '', 'МКР Сервис', 216, '', 'N', '', 'Спецсимволы', '', 'В названиях клиента добавить обработку спецсимволов..', '', 'N', 'N', 'N', '', 'N', 'web2net', '2017-05-25 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1262, '2017-05-25 web2net', '', '', '', '', '', '', '', 'МКР Сервис', 216, '', 'N', '', 'Внутренняя переписка и отправка писем', '', 'Отправка тела заявки выбранным адресатам (наверно тогл) с комментами и подписью..', '', 'N', 'N', 'N', '', 'N', 'web2net', '2017-05-25 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1263, '2017-05-25 web2net', '', '', '', '', '', '', '', 'МКР Сервис', 216, '', 'N', '', 'Сохранение отчета и бегунка', '', 'Сохранение отчета и бегунка в .docx и .xlsx', '', 'N', 'N', 'N', '', 'N', 'web2net', '2017-05-25 web2net', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1264, '2017-05-25 web2net', '', '2017-05-25 web2net', '2017-05-25 web2net', '', '2017-05-25 web2net', '2017-05-25 web2net', '2017-05-26 alex', 'МКР Сервис', 216, '', 'Y', '', 'Кнопка Архив', '', 'Вернуть кнопку архив для всех юзверей..', '', 'N', 'Y', 'Y', '', 'Y', 'web2net', '2017-05-25 web2net', 'N', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1265, '2017-05-26 rsergey', '', '', '', '', '', '', '', 'Сталь', 131, '', 'N', 'Тонер ТН 014 2шт', 'Тонер', '', '', '', 'Y', 'N', 'N', '', 'N', 'rsergey', '2017-05-26 rsergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1266, '2017-05-26 ssergey', '', '', '', '2017-05-26 ssergey', '', '2017-05-26 ssergey', '', 'МГИК', 171, '', 'Y', 'Заправка НР 83А - 1шт, восстановление НР 83А - 1шт', 'картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-26 ssergey', 'N', 'N', 'N', 'Y', 'N', '', '2017-05'),
(1267, '2017-05-26 ssergey', '', '', '', '', '', '2017-05-26 ssergey', '', 'Гильдия', 51, '', 'Y', 'Заправка Canon 725 - 2шт', 'картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-26 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1268, '2017-05-26 ssergey', '', '', '', '', '', '2017-05-26 ssergey', '', 'МясоМолПром', 183, '', 'Y', 'Заправка НР 35А - 1шт, НР 49А - 1шт, Canon FC/PC - 1шт', 'картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-26 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1269, '2017-05-26 ssergey', '', '', '', '', '', '2017-05-26 ssergey', '', 'Днипролаб', 66, '', 'Y', 'Заправка НР 85А - 3шт, Canon 725 - 1шт, Canon 703 - 1шт', 'картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-26 ssergey', 'Y', 'N', 'N', 'N', 'N', '', '2017-05'),
(1270, '2017-05-26 ssergey', '', '', '', '', '', '2017-05-26 ssergey', '', 'Ловекс', 62, '', 'Y', 'Заправка Canon 737 - 1шт', 'картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-26 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1271, '2017-05-26 ssergey', '', '', '', '', '', '2017-05-26 ssergey', '', 'ABC 2000', 77, '', 'Y', 'Заправка НР 13А - 1шт, Ремонт картриджа НР 13А (корона) - 1шт', 'картридж', '', '', '', 'N', 'N', 'N', '', 'N', 'ssergey', '2017-05-26 ssergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1272, '2017-05-26 rsergey', '', '2017-05-26 rsergey', '', '', '2017-05-26 rsergey', '2017-05-26 rsergey', '2017-05-26 alex', 'Авторинок (Нотариус)', 179, '', 'Y', 'Заправки 12А 2шт САм 1шт Ф/Р 1шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-26 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1273, '2017-05-26 rsergey', '', '2017-05-26 rsergey', '', '', '2017-05-26 rsergey', '2017-05-26 rsergey', '2017-05-26 alex', 'Деревообробна', 144, '', 'Y', 'Заправка 1005 1шт Востановление 1 шт', 'Картриджи', '', '', '', 'Y', 'Y', 'N', '', 'Y', 'rsergey', '2017-05-26 rsergey', 'Y', 'Y', 'N', 'N', 'N', '', '2017-05'),
(1274, '2017-05-26 rsergey', '', '', '', '', '', '2017-05-26 rsergey', '', 'Ловекс', 62, '', 'Y', 'Заправка 737', 'Картриджи', '', '', '', 'N', 'N', 'N', '', 'N', 'rsergey', '2017-05-26 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1275, '2017-05-26 rsergey', '', '', '', '', '', '', '', 'Впровадження', 59, '', 'N', 'Продать', 'HP 1200', '', '', '', 'N', 'N', 'N', '', 'N', 'rsergey', '2017-05-26 rsergey', 'N', 'N', 'N', 'N', 'N', '', '2017-05'),
(1276, '2017-05-26 alex', '2017-05-26 alex', '', '', '', '', '', '', 'горловская', 288, '', 'N', '', 'brother', '', '', '', 'N', 'N', 'N', '', 'N', 'rsergey', '2017-05-26 alex', 'Y', 'N', 'Y', 'N', 'N', '', '2017-05'),
(1277, '2017-05-26 alex', '', '', '', '', '', '2017-05-26 alex', '', 'МКР Сайт', 216, '', 'N', '', 'Отправка на мобил смс напоминалка', '', '', '', 'N', 'N', 'N', '', 'N', 'alex', '2017-05-26 alex', 'N', 'N', 'N', 'N', 'N', '', '2017-05');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `art_item`
--
ALTER TABLE `art_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `art_item_en`
--
ALTER TABLE `art_item_en`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `art_item_ru`
--
ALTER TABLE `art_item_ru`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `art_item_ua`
--
ALTER TABLE `art_item_ua`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `art_tag`
--
ALTER TABLE `art_tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `art_tag_en`
--
ALTER TABLE `art_tag_en`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `art_tag_ru`
--
ALTER TABLE `art_tag_ru`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `art_tag_ua`
--
ALTER TABLE `art_tag_ua`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cart_tag`
--
ALTER TABLE `cart_tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cfg_global`
--
ALTER TABLE `cfg_global`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cfg_lang`
--
ALTER TABLE `cfg_lang`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `filter_item`
--
ALTER TABLE `filter_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `filter_item_en`
--
ALTER TABLE `filter_item_en`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `filter_item_ru`
--
ALTER TABLE `filter_item_ru`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `filter_item_ua`
--
ALTER TABLE `filter_item_ua`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `filter_tag`
--
ALTER TABLE `filter_tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `filter_tag_en`
--
ALTER TABLE `filter_tag_en`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `filter_tag_ru`
--
ALTER TABLE `filter_tag_ru`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `filter_tag_ua`
--
ALTER TABLE `filter_tag_ua`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `gallery_item`
--
ALTER TABLE `gallery_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery_item_en`
--
ALTER TABLE `gallery_item_en`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `gallery_item_ru`
--
ALTER TABLE `gallery_item_ru`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `gallery_item_ua`
--
ALTER TABLE `gallery_item_ua`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `gallery_tag`
--
ALTER TABLE `gallery_tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery_tag_en`
--
ALTER TABLE `gallery_tag_en`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `gallery_tag_ru`
--
ALTER TABLE `gallery_tag_ru`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `gallery_tag_ua`
--
ALTER TABLE `gallery_tag_ua`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `items_branch`
--
ALTER TABLE `items_branch`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `items_category`
--
ALTER TABLE `items_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `message_item`
--
ALTER TABLE `message_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `message_tag`
--
ALTER TABLE `message_tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `param_item`
--
ALTER TABLE `param_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `param_item_en`
--
ALTER TABLE `param_item_en`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `param_item_ru`
--
ALTER TABLE `param_item_ru`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `param_item_ua`
--
ALTER TABLE `param_item_ua`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `param_tag`
--
ALTER TABLE `param_tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `param_tag_en`
--
ALTER TABLE `param_tag_en`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `param_tag_ru`
--
ALTER TABLE `param_tag_ru`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `param_tag_ua`
--
ALTER TABLE `param_tag_ua`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `word` (`word`);

--
-- Индексы таблицы `shop_item`
--
ALTER TABLE `shop_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_item_copy`
--
ALTER TABLE `shop_item_copy`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_item_en`
--
ALTER TABLE `shop_item_en`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `shop_item_en_copy`
--
ALTER TABLE `shop_item_en_copy`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `shop_item_ru`
--
ALTER TABLE `shop_item_ru`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `shop_item_ru_copy`
--
ALTER TABLE `shop_item_ru_copy`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `shop_item_temp`
--
ALTER TABLE `shop_item_temp`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_item_ua`
--
ALTER TABLE `shop_item_ua`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `shop_item_ua_copy`
--
ALTER TABLE `shop_item_ua_copy`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `shop_setting`
--
ALTER TABLE `shop_setting`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_shopping`
--
ALTER TABLE `shop_shopping`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_tag`
--
ALTER TABLE `shop_tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_tag_en`
--
ALTER TABLE `shop_tag_en`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `shop_tag_ru`
--
ALTER TABLE `shop_tag_ru`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `shop_tag_ua`
--
ALTER TABLE `shop_tag_ua`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `shop_user`
--
ALTER TABLE `shop_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_action`
--
ALTER TABLE `user_action`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_item`
--
ALTER TABLE `user_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_tag`
--
ALTER TABLE `user_tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `art_item`
--
ALTER TABLE `art_item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT для таблицы `art_item_en`
--
ALTER TABLE `art_item_en`
  MODIFY `lid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT для таблицы `art_item_ru`
--
ALTER TABLE `art_item_ru`
  MODIFY `lid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT для таблицы `art_item_ua`
--
ALTER TABLE `art_item_ua`
  MODIFY `lid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT для таблицы `art_tag`
--
ALTER TABLE `art_tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `art_tag_en`
--
ALTER TABLE `art_tag_en`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `art_tag_ru`
--
ALTER TABLE `art_tag_ru`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `art_tag_ua`
--
ALTER TABLE `art_tag_ua`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1528;
--
-- AUTO_INCREMENT для таблицы `cart_tag`
--
ALTER TABLE `cart_tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `cfg_global`
--
ALTER TABLE `cfg_global`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `cfg_lang`
--
ALTER TABLE `cfg_lang`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT для таблицы `filter_item`
--
ALTER TABLE `filter_item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `filter_item_en`
--
ALTER TABLE `filter_item_en`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `filter_item_ru`
--
ALTER TABLE `filter_item_ru`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `filter_item_ua`
--
ALTER TABLE `filter_item_ua`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `filter_tag`
--
ALTER TABLE `filter_tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `filter_tag_en`
--
ALTER TABLE `filter_tag_en`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `filter_tag_ru`
--
ALTER TABLE `filter_tag_ru`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `filter_tag_ua`
--
ALTER TABLE `filter_tag_ua`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `gallery_item`
--
ALTER TABLE `gallery_item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT для таблицы `gallery_item_en`
--
ALTER TABLE `gallery_item_en`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT для таблицы `gallery_item_ru`
--
ALTER TABLE `gallery_item_ru`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT для таблицы `gallery_item_ua`
--
ALTER TABLE `gallery_item_ua`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT для таблицы `gallery_tag`
--
ALTER TABLE `gallery_tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `gallery_tag_en`
--
ALTER TABLE `gallery_tag_en`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `gallery_tag_ru`
--
ALTER TABLE `gallery_tag_ru`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `gallery_tag_ua`
--
ALTER TABLE `gallery_tag_ua`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `items_branch`
--
ALTER TABLE `items_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `items_category`
--
ALTER TABLE `items_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `message_item`
--
ALTER TABLE `message_item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT для таблицы `message_tag`
--
ALTER TABLE `message_tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `param_item`
--
ALTER TABLE `param_item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `param_item_en`
--
ALTER TABLE `param_item_en`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `param_item_ru`
--
ALTER TABLE `param_item_ru`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `param_item_ua`
--
ALTER TABLE `param_item_ua`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `param_tag`
--
ALTER TABLE `param_tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `param_tag_en`
--
ALTER TABLE `param_tag_en`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `param_tag_ru`
--
ALTER TABLE `param_tag_ru`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `param_tag_ua`
--
ALTER TABLE `param_tag_ua`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `search`
--
ALTER TABLE `search`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `shop_item`
--
ALTER TABLE `shop_item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20068;
--
-- AUTO_INCREMENT для таблицы `shop_item_copy`
--
ALTER TABLE `shop_item_copy`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `shop_item_en`
--
ALTER TABLE `shop_item_en`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT для таблицы `shop_item_en_copy`
--
ALTER TABLE `shop_item_en_copy`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `shop_item_ru`
--
ALTER TABLE `shop_item_ru`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20068;
--
-- AUTO_INCREMENT для таблицы `shop_item_ru_copy`
--
ALTER TABLE `shop_item_ru_copy`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `shop_item_temp`
--
ALTER TABLE `shop_item_temp`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `shop_item_ua`
--
ALTER TABLE `shop_item_ua`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT для таблицы `shop_item_ua_copy`
--
ALTER TABLE `shop_item_ua_copy`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT для таблицы `shop_setting`
--
ALTER TABLE `shop_setting`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `shop_shopping`
--
ALTER TABLE `shop_shopping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `shop_tag`
--
ALTER TABLE `shop_tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;
--
-- AUTO_INCREMENT для таблицы `shop_tag_en`
--
ALTER TABLE `shop_tag_en`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;
--
-- AUTO_INCREMENT для таблицы `shop_tag_ru`
--
ALTER TABLE `shop_tag_ru`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;
--
-- AUTO_INCREMENT для таблицы `shop_tag_ua`
--
ALTER TABLE `shop_tag_ua`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;
--
-- AUTO_INCREMENT для таблицы `shop_user`
--
ALTER TABLE `shop_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `user_action`
--
ALTER TABLE `user_action`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `user_item`
--
ALTER TABLE `user_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;
--
-- AUTO_INCREMENT для таблицы `user_tag`
--
ALTER TABLE `user_tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `works`
--
ALTER TABLE `works`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1278;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
