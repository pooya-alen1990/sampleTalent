-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2014 at 07:20 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `khodro_db`
--
CREATE DATABASE IF NOT EXISTS `khodro_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `khodro_db`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_advertisment_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `advertisment` WHERE `id` = _id ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_advertisment_Insert`(IN _name varchar(250), IN _state varchar(250))
BEGIN
   INSERT INTO `advertisment`
   (`name` , `state` )
         VALUES(_name , _state );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_advertisment_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `name`, `state` FROM `advertisment` ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_advertisment_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `name`, `state` FROM `advertisment` WHERE `id` = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_advertisment_SelectRowByState`(IN `_state` VARCHAR(250))
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `name`, `state` FROM `advertisment` WHERE `state` = _state;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_advertisment_UpdateRow`(IN _id int, IN _name varchar(250), IN _state varchar(250))
BEGIN
   UPDATE `advertisment`
   SET `name` = _name, `state` = _state 
        WHERE `id` = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_advertisment_UpdateRowByState`(IN _name varchar(250), IN _state varchar(250))
BEGIN
   UPDATE `advertisment`
   SET `name` = _name
        WHERE  `state` = _state;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_products_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `products` WHERE `id` = _id ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_products_Insert`(IN _productname varchar(250), IN _explain text, IN _price int, IN _date bigint, IN _hitcounter int, IN _user_id int)
BEGIN
   INSERT INTO `products`
   (`productname` , `explain` , `price` , `date` , `hitcounter` , `user_id` )
         VALUES(_productname , _explain , _price , _date , _hitcounter , _user_id );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_products_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `productname`, `explain`, `price`, `date`, `hitcounter`, `user_id` FROM `products` ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_products_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `productname`, `explain`, `price`, `date`, `hitcounter`, `user_id` FROM `products` WHERE `id` = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_products_SelectRowsByUserId`(IN _userid int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `productname`, `explain`, `price`, `date`, `hitcounter`, `user_id` FROM `products` WHERE `user_id` = _userid;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_products_UpdateRow`(IN _id int, IN _productname varchar(250), IN _explain text, IN _price int, IN _date bigint, IN _hitcounter int, IN _user_id int)
BEGIN
   UPDATE `products`
   SET `productname` = _productname, `explain` = _explain, `price` = _price, `date` = _date, `hitcounter` = _hitcounter, `user_id` = _user_id 
        WHERE `id` = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_users_CheckPassword`(IN _id int, IN _password varchar(250))
BEGIN
   SELECT * FROM users WHERE id=_id AND password=_password;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_users_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `users` WHERE `id` = _id ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_users_Insert`(IN _username varchar(250), IN _password varchar(250), IN _fname varchar(250), IN _lname varchar(250), IN _shopname varchar(250), IN _subgroup varchar(250), IN _tel varchar(250), IN _mobile varchar(250), IN _city varchar(250), IN _email varchar(250), IN _address text, IN _activate int)
BEGIN
   INSERT INTO `users`
   (`username` , `password` , `fname` , `lname` , `shopname` , `subgroup` , `tel` , `mobile` , `city` , `email` , `address` , `activate` )
         VALUES(_username , _password , _fname , _lname , _shopname , _subgroup , _tel , _mobile , _city , _email , _address , _activate );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_users_Login`(IN _username varchar(250), IN _password varchar(250))
BEGIN
   SELECT * FROM users WHERE username=_username AND password=_password;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_users_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `username`, `password`, `fname`, `lname`, `shopname`, `subgroup`, `tel`, `mobile`, `city`, `email`, `address`, `activate` FROM `users` ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_users_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `username`, `password`, `fname`, `lname`, `shopname`, `subgroup`, `tel`, `mobile`, `city`, `email`, `address`, `activate` FROM `users` WHERE `id` = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_users_UpdateRow`(IN _id int, IN _username varchar(250), IN _password varchar(250), IN _fname varchar(250), IN _lname varchar(250), IN _shopname varchar(250), IN _subgroup varchar(250), IN _tel varchar(250), IN _mobile varchar(250), IN _city varchar(250), IN _email varchar(250), IN _address text, IN _activate int)
BEGIN
   UPDATE `users`
   SET `username` = _username, `password` = _password, `fname` = _fname, `lname` = _lname, `shopname` = _shopname, `subgroup` = _subgroup, `tel` = _tel, `mobile` = _mobile, `city` = _city, `email` = _email, `address` = _address, `activate` = _activate 
        WHERE `id` = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_users_UpdateRowPassword`(IN _id int,IN _password varchar(250))
BEGIN
   UPDATE `users`
   SET `password` = _password
        WHERE `id` = _id;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `advertisment`
--

CREATE TABLE IF NOT EXISTS `advertisment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `advertisment`
--

INSERT INTO `advertisment` (`id`, `name`, `state`) VALUES
(2, 'mainRightToparrow.png', 'mainRightTop'),
(3, 'mainRightBottomsmall_ad.jpg', 'mainRightBottom'),
(4, 'panelRightTopnext.png', 'panelRightTop'),
(5, 'panelRightBottomsmall_ad.jpg', 'panelRightBottom'),
(6, 'panelLeftTopsmall_ad.jpg', 'panelLeftTop'),
(7, 'panelLeftMiddlesmall_ad.jpg', 'panelLeftMiddle'),
(8, 'panelLeftBottomw3.png', 'panelLeftBottom'),
(9, 'banner1img1.jpg', 'banner1'),
(10, 'banner2img2.jpg', 'banner2'),
(11, 'banner3img3.jpg', 'banner3');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(250) NOT NULL,
  `explain` text NOT NULL,
  `price` int(11) NOT NULL,
  `date` bigint(20) NOT NULL,
  `hitcounter` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productname`, `explain`, `price`, `date`, `hitcounter`, `user_id`) VALUES
(6, 'تذتئدذندklnkl', 'knklتذننمتدذتنمد نمدن', 100012, 1396615899, 0, 50),
(9, 'kj', 'jkb', 12, 0, 12, 3),
(10, 'kj', 'jkb', 12, 13, 12, 3),
(12, 'kl', 'kh', 0, 1396633744, 0, 51);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `fname` varchar(250) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `shopname` varchar(250) NOT NULL,
  `subgroup` varchar(250) NOT NULL,
  `tel` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `activate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fname`, `lname`, `shopname`, `subgroup`, `tel`, `mobile`, `city`, `email`, `address`, `activate`) VALUES
(50, 'admin', '123', 'پویا', 'صبرآموز', 'jkbkj', 'صنعتی', 'jkb', 'bkjb', 'jk', 'bkj', 'bjk', 0),
(51, '12', '123', 'dndfn', '', '', '', '', '', '', '', '', 0),
(66, 'nkjnk', '65364', 'jknkj', 'jknjk', 'jnjkn', 'صنعتی', '986896896', '98696969', 'kjhjk', 'kjhjk@jkhkj.com', 'jkbkjbkj', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
