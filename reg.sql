-- phpMyAdmin SQL Dump
-- version 3.2.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 13, 2015 at 12:24 PM
-- Server version: 5.1.40
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `reg`
--

-- --------------------------------------------------------

--
-- Table structure for table `bez_content`
--

CREATE TABLE IF NOT EXISTS `bez_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bez_content`
--

INSERT INTO `bez_content` (`id`, `content`, `role`) VALUES
(1, '«Бомбардировщики Су-34 нанесли удар по лагерю боевиков, расположенному в районе города Мастума, провинция Идлиб. По данным разведки, данный лагерь использовался группировкой ИГИЛ как накопительный пункт для боевиков, прибывших из других стран», — сказал он журналистам.\r\n\r\nВ этом же лагере «осуществлялась комплексная доподготовка террористов по программам специальной тактики и минно-взрывного дела под руководством опытных инструкторов», заявил представитель российского военного ведомства.\r\n', '1,2'),
(2, 'Москва. 12 октября. INTERFAX.RU — Нобелевская премия по экономике в 2015 году досталась англо-американскому экономисту Энгусу Дитону (Angus Deaton) «за анализ потребления, бедности и благосостояния», объявили в понедельник в шведской Королевской академии наук.\r\n\r\nДитон, работающий в Принстонсоком университете, специализируется на проблемах микроэкономики. В своих работах он анализирует модели поведения потребителей, вопросы бедности и благосостояния населения на микроуровне. Согласно пресс-релизу, опубликованному на сайте Нобелевского комитета, исследования Дитона внесли большой вклад в понимание того, как делают выбор отдельные потребители, что важно для формирования экономической политики, способствующей благосостоянию и снижающей бедность.\r\n', '1,3'),
(3, '«Мы приглашаем любых заинтересованных коллег подключиться к работе того информационного центра, который мы создали вместе с правительствами Ирака, Сирии и Ирана в Багдаде. Готовы рассматриваться и другие точки в регионе, где такую координацию можно наладить не только с участием этих стран, но и других стран Ближнего Востока и Севера Африки», — заявил российский министр.\r\n\r\nВместе с тем он отметил, что Россия просила своих западных коллег, если они обладают соответствующей информацией, сообщать о местах дислокации боевиков в Сирии.\r\n\r\n«Пока наши коллеги из коалиции на это не готовы. Просили мы и о том, чтобы нам сообщили, в каких районах работает не террористическая оппозиция, а так называемая “патриотическая” оппозиция с тем, чтобы мы учитывали это в наших действиях. На это тоже пока наши партнеры из коалиции не идут», — сказал Лавров.\r\n', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bez_reg`
--

CREATE TABLE IF NOT EXISTS `bez_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(200) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `active_hex` varchar(32) NOT NULL,
  `status` int(1) NOT NULL,
  `role` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bez_reg`
--

INSERT INTO `bez_reg` (`id`, `login`, `pass`, `salt`, `active_hex`, `status`, `role`) VALUES
(1, 'admin@mail.ru', 'c77fc3fe8ecc690e77471292b5230df7', '2c7aeb79', '1cb2061e07decece820a6ec617a20309', 1, 1),
(2, 'moderator@mail.ru', '895d793af1a4b2bdee2c0316e20cc6ea', '56b3c0d8', 'dd0d89e0770bbfb39ab42e28b403fe24', 1, 2),
(3, 'user@mail.ru', '89345bf81dfff60cb6766ab875586085', 'eee3d058', '0e482e1de1739f39f6a0da52d982d53c', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `bez_role`
--

CREATE TABLE IF NOT EXISTS `bez_role` (
  `id_role` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bez_role`
--

INSERT INTO `bez_role` (`id_role`, `name`) VALUES
(1, 'Администратор'),
(2, 'Модератор'),
(3, 'Пользователь');
