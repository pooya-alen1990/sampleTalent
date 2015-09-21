-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2015 at 01:42 AM
-- Server version: 5.6.25-0ubuntu0.15.04.1
-- PHP Version: 5.6.4-4ubuntu6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `talentyab`
--

DELIMITER $$
--
-- Procedures
--
CREATE PROCEDURE `sp_admins_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `admins` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_admins_Insert`(IN _first_name varchar(250), IN _last_name varchar(250), IN _password varchar(250), IN _mobile varchar(250), IN _about text, IN _roles_id int)
BEGIN
   INSERT INTO `admins`
   (`first_name` , `last_name` , `password` , `mobile` , `about` , `roles_id` )
         VALUES(_first_name , _last_name , _password , _mobile , _about , _roles_id );
END$$

CREATE PROCEDURE `sp_admins_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `first_name`, `last_name`, `password`, `mobile`, `about`, `roles_id` FROM `admins` ;
END$$

CREATE PROCEDURE `sp_admins_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `first_name`, `last_name`, `password`, `mobile`, `about`, `roles_id` FROM `admins` WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_admins_UpdateRow`(IN _id int, IN _first_name varchar(250), IN _last_name varchar(250), IN _password varchar(250), IN _mobile varchar(250), IN _about text, IN _roles_id int)
BEGIN
   UPDATE `admins`
   SET `first_name` = _first_name, `last_name` = _last_name, `password` = _password, `mobile` = _mobile, `about` = _about, `roles_id` = _roles_id 
        WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_answers_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `answers` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_answers_Insert`(IN _answer_title varchar(255), IN _answer_value varchar(255))
BEGIN
   INSERT INTO `answers`
   (`answer_title` , `answer_value` )
         VALUES(_answer_title , _answer_value );
END$$

CREATE PROCEDURE `sp_answers_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `answer_title`, `answer_value` FROM `answers` ;
END$$

CREATE PROCEDURE `sp_answers_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `answer_title`, `answer_value` FROM `answers` WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_answers_UpdateRow`(IN _id int, IN _answer_title varchar(255), IN _answer_value varchar(255))
BEGIN
   UPDATE `answers`
   SET `answer_title` = _answer_title, `answer_value` = _answer_value 
        WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_authors_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `authors` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_authors_Insert`(IN _full_name varchar(255))
BEGIN
   INSERT INTO `authors`
   (`full_name` )
         VALUES(_full_name );
END$$

CREATE PROCEDURE `sp_authors_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `full_name` FROM `authors` ;
END$$

CREATE PROCEDURE `sp_authors_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `full_name` FROM `authors` WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_authors_UpdateRow`(IN _id int, IN _full_name varchar(255))
BEGIN
   UPDATE `authors`
   SET `full_name` = _full_name 
        WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_blogs_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `blogs` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_blogs_Insert`(IN _title varchar(255), IN _title_en varchar(255), IN _image varchar(255), IN _text text, IN _source varchar(255), IN _video text, IN _description varchar(255), IN _read_time bigint, IN _hit_count varchar(255), IN _admin_id varchar(255), IN _add_time bigint, IN _modify_time bigint, IN _activate varchar(255))
BEGIN
   INSERT INTO `blogs`
   (`title` , `title_en` , `image` , `text` , `source` , `video` , `description` , `read_time` , `hit_count` , `admin_id` , `add_time` , `modify_time` , `activate` )
         VALUES(_title , _title_en , _image , _text , _source , _video , _description , _read_time , _hit_count , _admin_id , _add_time , _modify_time , _activate );
END$$

CREATE PROCEDURE `sp_blogs_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `title`, `title_en`, `image`, `text`, `source`, `video`, `description`, `read_time`, `hit_count`, `admin_id`, `add_time`, `modify_time`, `activate` FROM `blogs` ;
END$$

CREATE PROCEDURE `sp_blogs_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `title`, `title_en`, `image`, `text`, `source`, `video`, `description`, `read_time`, `hit_count`, `admin_id`, `add_time`, `modify_time`, `activate` FROM `blogs` WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_blogs_UpdateRow`(IN _id int, IN _title varchar(255), IN _title_en varchar(255), IN _image varchar(255), IN _text text, IN _source varchar(255), IN _video text, IN _description varchar(255), IN _read_time bigint, IN _hit_count varchar(255), IN _admin_id varchar(255), IN _add_time bigint, IN _modify_time bigint, IN _activate varchar(255))
BEGIN
   UPDATE `blogs`
   SET `title` = _title, `title_en` = _title_en, `image` = _image, `text` = _text, `source` = _source, `video` = _video, `description` = _description, `read_time` = _read_time, `hit_count` = _hit_count, `admin_id` = _admin_id, `add_time` = _add_time, `modify_time` = _modify_time, `activate` = _activate 
        WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_blog_audience_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `blog_audience` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_blog_audience_Insert`(IN _audience_name varchar(255))
BEGIN
   INSERT INTO `blog_audience`
   (`audience_name` )
         VALUES(_audience_name );
END$$

CREATE PROCEDURE `sp_blog_audience_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `audience_name` FROM `blog_audience` ;
END$$

CREATE PROCEDURE `sp_blog_audience_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `audience_name` FROM `blog_audience` WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_blog_audience_UpdateRow`(IN _id int, IN _audience_name varchar(255))
BEGIN
   UPDATE `blog_audience`
   SET `audience_name` = _audience_name 
        WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_blog_keywords_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `blog_keywords` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_blog_keywords_Insert`(IN _blog_id int, IN _keyword varchar(255))
BEGIN
   INSERT INTO `blog_keywords`
   (`blog_id` , `keyword` )
         VALUES(_blog_id , _keyword );
END$$

CREATE PROCEDURE `sp_blog_keywords_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `blog_id`, `keyword` FROM `blog_keywords` ;
END$$

CREATE PROCEDURE `sp_blog_keywords_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `blog_id`, `keyword` FROM `blog_keywords` WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_blog_keywords_UpdateRow`(IN _id int, IN _blog_id int, IN _keyword varchar(255))
BEGIN
   UPDATE `blog_keywords`
   SET `blog_id` = _blog_id, `keyword` = _keyword 
        WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_blog_subject_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `blog_subject` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_blog_subject_Insert`(IN _subject_name varchar(255))
BEGIN
   INSERT INTO `blog_subject`
   (`subject_name` )
         VALUES(_subject_name );
END$$

CREATE PROCEDURE `sp_blog_subject_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `subject_name` FROM `blog_subject` ;
END$$

CREATE PROCEDURE `sp_blog_subject_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `subject_name` FROM `blog_subject` WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_blog_subject_UpdateRow`(IN _id int, IN _subject_name varchar(255))
BEGIN
   UPDATE `blog_subject`
   SET `subject_name` = _subject_name 
        WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_blog_type_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `blog_type` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_blog_type_Insert`(IN _type_name varchar(255))
BEGIN
   INSERT INTO `blog_type`
   (`type_name` )
         VALUES(_type_name );
END$$

CREATE PROCEDURE `sp_blog_type_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `type_name` FROM `blog_type` ;
END$$

CREATE PROCEDURE `sp_blog_type_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `type_name` FROM `blog_type` WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_blog_type_UpdateRow`(IN _id int, IN _type_name varchar(255))
BEGIN
   UPDATE `blog_type`
   SET `type_name` = _type_name 
        WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_b_a_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `b_a` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_b_a_Insert`(IN _blog_id int, IN _audience_id int)
BEGIN
   INSERT INTO `b_a`
   (`blog_id` , `audience_id` )
         VALUES(_blog_id , _audience_id );
END$$

CREATE PROCEDURE `sp_b_a_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `blog_id`, `audience_id` FROM `b_a` ;
END$$

CREATE PROCEDURE `sp_b_a_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `blog_id`, `audience_id` FROM `b_a` WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_b_a_UpdateRow`(IN _id int, IN _blog_id int, IN _audience_id int)
BEGIN
   UPDATE `b_a`
   SET `blog_id` = _blog_id, `audience_id` = _audience_id 
        WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_b_s_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `b_s` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_b_s_Insert`(IN _blog_id int, IN _subject_id int)
BEGIN
   INSERT INTO `b_s`
   (`blog_id` , `subject_id` )
         VALUES(_blog_id , _subject_id );
END$$

CREATE PROCEDURE `sp_b_s_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `blog_id`, `subject_id` FROM `b_s` ;
END$$

CREATE PROCEDURE `sp_b_s_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `blog_id`, `subject_id` FROM `b_s` WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_b_s_UpdateRow`(IN _id int, IN _blog_id int, IN _subject_id int)
BEGIN
   UPDATE `b_s`
   SET `blog_id` = _blog_id, `subject_id` = _subject_id 
        WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_b_t_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `b_t` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_b_t_Insert`(IN _blog_id int, IN _type_id int)
BEGIN
   INSERT INTO `b_t`
   (`blog_id` , `type_id` )
         VALUES(_blog_id , _type_id );
END$$

CREATE PROCEDURE `sp_b_t_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `blog_id`, `type_id` FROM `b_t` ;
END$$

CREATE PROCEDURE `sp_b_t_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `blog_id`, `type_id` FROM `b_t` WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_b_t_UpdateRow`(IN _id int, IN _blog_id int, IN _type_id int)
BEGIN
   UPDATE `b_t`
   SET `blog_id` = _blog_id, `type_id` = _type_id 
        WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_comments_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `comments` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_comments_Insert`(IN _full_name varchar(255), IN _mail varchar(255), IN _text text, IN _add_time bigint, IN _activate tinyint, IN _ip varchar(255), IN _user_id int, IN _admin_id int, IN _blog_id int, IN _comment_id int)
BEGIN
   INSERT INTO `comments`
   (`full_name` , `mail` , `text` , `add_time` , `activate` , `ip` , `user_id` , `admin_id` , `blog_id` , `comment_id` )
         VALUES(_full_name , _mail , _text , _add_time , _activate , _ip , _user_id , _admin_id , _blog_id , _comment_id );
END$$

CREATE PROCEDURE `sp_comments_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `full_name`, `mail`, `text`, `add_time`, `activate`, `ip`, `user_id`, `admin_id`, `blog_id`, `comment_id` FROM `comments` ;
END$$

CREATE PROCEDURE `sp_comments_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `full_name`, `mail`, `text`, `add_time`, `activate`, `ip`, `user_id`, `admin_id`, `blog_id`, `comment_id` FROM `comments` WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_comments_UpdateRow`(IN _id int, IN _full_name varchar(255), IN _mail varchar(255), IN _text text, IN _add_time bigint, IN _activate tinyint, IN _ip varchar(255), IN _user_id int, IN _admin_id int, IN _blog_id int, IN _comment_id int)
BEGIN
   UPDATE `comments`
   SET `full_name` = _full_name, `mail` = _mail, `text` = _text, `add_time` = _add_time, `activate` = _activate, `ip` = _ip, `user_id` = _user_id, `admin_id` = _admin_id, `blog_id` = _blog_id, `comment_id` = _comment_id 
        WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_permissions_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `permissions` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_permissions_Insert`(IN _title varchar(250), IN _ENtitle varchar(250))
BEGIN
   INSERT INTO `permissions`
   (`title` , `ENtitle` )
         VALUES(_title , _ENtitle );
END$$

CREATE PROCEDURE `sp_permissions_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `title`, `ENtitle` FROM `permissions` ;
END$$

CREATE PROCEDURE `sp_permissions_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `title`, `ENtitle` FROM `permissions` WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_permissions_UpdateRow`(IN _id int, IN _title varchar(250), IN _ENtitle varchar(250))
BEGIN
   UPDATE `permissions`
   SET `title` = _title, `ENtitle` = _ENtitle 
        WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_quotations_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `quotations` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_quotations_Insert`(IN _author varchar(255), IN _text varchar(255))
BEGIN
   INSERT INTO `quotations`
   (`author` , `text` )
         VALUES(_author , _text );
END$$

CREATE PROCEDURE `sp_quotations_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `author`, `text` FROM `quotations` ;
END$$

CREATE PROCEDURE `sp_quotations_SelectOneRandom`()
BEGIN
    SET NAMES UTF8;
    SELECT * FROM quotations ORDER BY RAND() LIMIT 1 ;
END$$

CREATE PROCEDURE `sp_quotations_UpdateRow`(IN _id int, IN _author varchar(255), IN _text varchar(255))
BEGIN
   UPDATE `quotations`
   SET `author` = _author, `text` = _text 
        WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_rolespermissions_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `rolespermissions` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_rolespermissions_Insert`(IN _roles_id int, IN _permissions_id int)
BEGIN
   INSERT INTO `rolespermissions`
   (`roles_id` , `permissions_id` )
         VALUES(_roles_id , _permissions_id );
END$$

CREATE PROCEDURE `sp_rolespermissions_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `roles_id`, `permissions_id` FROM `rolespermissions` ;
END$$

CREATE PROCEDURE `sp_rolespermissions_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `roles_id`, `permissions_id` FROM `rolespermissions` WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_rolespermissions_UpdateRow`(IN _id int, IN _roles_id int, IN _permissions_id int)
BEGIN
   UPDATE `rolespermissions`
   SET `roles_id` = _roles_id, `permissions_id` = _permissions_id 
        WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_roles_DeleteRow`(IN _id int)
BEGIN
    DELETE FROM `roles` WHERE `id` = _id ;
END$$

CREATE PROCEDURE `sp_roles_Insert`(IN _title varchar(250))
BEGIN
   INSERT INTO `roles`
   (`title` )
         VALUES(_title );
END$$

CREATE PROCEDURE `sp_roles_SelectAll`()
BEGIN
    SET NAMES UTF8;
	SELECT `id`, `title` FROM `roles` ;
END$$

CREATE PROCEDURE `sp_roles_SelectRow`(IN _id int)
BEGIN
    SET NAMES UTF8;
    SELECT `id`, `title` FROM `roles` WHERE `id` = _id;
END$$

CREATE PROCEDURE `sp_roles_UpdateRow`(IN _id int, IN _title varchar(250))
BEGIN
   UPDATE `roles`
   SET `title` = _title 
        WHERE `id` = _id;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
`id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `about` text NOT NULL,
  `roles_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `password`, `mobile`, `about`, `roles_id`) VALUES
(1, 'پویا', 'صبرآموز', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '09361946269', 'درباره من', 1),
(2, 'میلاد', 'بختی', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '09123963251', 'من میلاد بختی هستم', 1),
(3, 'احسان', 'تعدادی', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '09123049342', '؟...1367، خراسان - تاکنون) که با عنوان «پدر علم تعلیم و تربیت ایران» نیز شناخته می‌شود از مدرسین قدیمی تعلیم و تربیت و نیز وزیر آموزش و پرورش نظام جمهوری اسلامی ایران خواهد شد. وی دارای مدرک دکترای علوم تربینی بوده و با وجود سابقه اندک در تعلیم و تربیت و امور پژوهشی، لقب چهره ماندگار تعلیم و تربیت ایران را به خود اختصاص داده است. ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
`id` int(11) NOT NULL,
  `answer_title` varchar(255) NOT NULL,
  `answer_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
`id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `full_name`) VALUES
(1, 'احسان تعدادی'),
(2, 'میلاد بختی');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `source` varchar(255) NOT NULL,
  `video` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `read_time` bigint(20) NOT NULL,
  `hit_count` varchar(255) NOT NULL,
  `admin_id` varchar(255) NOT NULL,
  `add_time` bigint(20) NOT NULL,
  `modify_time` bigint(20) NOT NULL,
  `activate` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `title_en`, `image`, `text`, `source`, `video`, `description`, `read_time`, `hit_count`, `admin_id`, `add_time`, `modify_time`, `activate`) VALUES
(18, '5  روش برای خود آگاهی بیشتر', '5_approach', '/talentyab/upload/blog_images/blog-image.png', '<p>با نزدیک شدن به پایان دوران فارغ التحصیلی، بسیاری از دانشجویان سابق به دنبال یافتن مسیر آینده شغلی خود هستند. شاید بسیاری از افراد مهارت ها و توانایی های کافی برای ورود به شغلرا داشته باشند، اما توانایی متقاعد کردن کارفرما نسبت به شایستگی که از آن برخوردار هستید، از اهمیت زیادی برخوردار است. مفهوم ساده توانایی جذب شدن یا استخدام، یعنی دست یافتن به فرصت شغلی بر اساس مهارت، تجربه، ویژگی ها و شایستگی هایی هر فرد. زیرا این عوامل می تواند بر تصمیم کارفرما اثر بگذارد.</p>\r\n\r\n<p>وقتی افراد در ارتباط با موضوع جذب و استخدام صحبت می کنند، بیشتر تصور دارند که برای نفوذ پذیری بر کارفرما و اثر گذاری در تصمیم او باید مهارت خاصی داشته باشند و حتی افراد فکر می کنند بدون تایید شدن از جانب فردی یا به اصطلاح داشتن معرف ، ورود به موقعیت شغلی دشوار است. موضوع مهم این است که کارفرما انتظار دارد شما حداقل مهارت های مربوط به آن موقعیت شغلی را داشته باشید. هر چند ممکن است برخی از کارفرمایان کلیشه هایی نیز داشته باشند. در هر صورت برای ورود باید تلاش کنید. موقعیت ها محدود به یک دوره زمانی نیست. با از دست دادن یک موقعیت شغلی نباید امید خودتان را از دست بدهید، به همان اندازه که ورود به فرصت شغلی تضمین آینده نیست.</p>\r\n\r\n<p>ارتباطات، کلید ورود</p>\r\n\r\n<p>مهارت های زیادی وجود دارند که شما می توانید بر اساس آنها شانس جذب شدن خود را افزایش دهید. مانند ارتباطات و شناخت افراد، مدیریت زمان و مهارت های مربوط به شغل.</p>\r\n\r\n<p>بدون صحبت کردن با افراد و داشتن شبکه های ارتباطی، یافتن مسیر درست شاید دشوار به نظر برسد. یکی از سرمایه های اصلی که بسیاری از افراد آن را نادیده می گیرند، ایجاد شبکه های ارتباطی (برای مطالعه بیشتر رجوع شود به هنر توسعه شبکه ارتباطات حرفه ای) است. هر چه بیشتر بتوانید مهارت ارتباطی خود را افزایش دهید، شانس شما برای ورود به شغل هایی که به روابط عمومی بالایی نیز نیاز دارند، بیشتر می شود. بسیاری از اوقات افراد منتظرند تا دیگران سراغ آنها بیایند. در حالی که دیگران اطلاع ندارند نیاز و یا هدف شما چیست. پس برای توسعه شبکه ارتباطی خود برنامه داشته باشید. برای شروع، برند شخصی (اینفوگراف برند شخصی برای شما در این موضوع کمک زیادی می کند) خودتان را تقویت کنید. یادتان باشد اعتماد مهم ترین عامل برای اثر گذاری در ارتباط خواهد بود.</p>\r\n\r\n<p>خود-انگیختگی و خلاقیت</p>\r\n\r\n<p>مهارتی که شاید برای بسیاری از کارفرماها مهم تر از بسیاری از جنبه های دیگر باشد، انگیزه، خلاقیت و ابتکار عمل است. بر اساس این مهارت شما می توانید نسبت به موقعیت ها تحلیل مناسبی انجام داده و ایده پردازی کنید. خود انگیختگی نیز انرژی و شوق شما را نشان می دهد که می تواند تصمیم کارفرما را برای انتخاب شما بیشتر مجاب کند. انگیزه داشتن، مثبت نگری به آینده و سخت کوشی است که شما را در برابر مشکلات و چالش ها موفق می کند.</p>\r\n\r\n<p>مدیریت: زمان و برنامه ریزی</p>\r\n\r\n<p>برنامه ریزی صرفا نوشتن اولویت های آینده روی کاغذ نیست. جنبه مهم تر تعهد به برنامه و اجرای مستمر آن است. برای کارفرمایان بسیار اهمیت دارد که نشان دهید برنامه های خود را منظم و در مهلت های زمانی مقرر انجام می دهید. مثال ساده آن می تواند تکلیف و پروژه های دانشگاه باشد که در اجرای آن عملکرد مناسبی داشته اید.</p>\r\n\r\n<p>آگاهی از وضعیت صنعت و شغل مورد نظر</p>\r\n\r\n<p>یکی دیگر از نکات مهمی که برای ورود حرفه ای به شغل مورد نظر باید روی آن تمرکز کنید، این است که تا چه اندازه کسب و کار و فعالیت مورد نظرتان را می شناسید. در واقع قبل از مصاحبه بهتر است بدانید که هدف سازمان و شرکتی که برای مصاحبه دعوت شده اید چیست. به رقبا، وضعیت فعلی صنعت و عوامل مربوط به موفقیت سازمان به صورت هوشمندانه در میان مصاحبه ها اشاره کنید. باید نشان بدهید که شناخت خوبی از کسب و کار پیدا کرده اید. و مهم تر این که توقع این نیست که تحلیل های کارشناسی انجام داده اید، همین که نشان دهید به شرکت آینده اهمیت داده اید، شانس شما برای کسب موقعیت بیشتر می شود.</p>\r\n\r\n<p>با وجود این که تجربه کاری شاید برای بسیاری از شرکت ها اهمیت دارد و تصور این است که شناخت صنعت و یا کسب و کار صرفا از این راه ممکن خواهد بود. اما اگر شایستگی خودتان را نشان دهید، تصمیم کارفرما را نیز سخت تر خواهید کرد. بسیاری از دانشجویان با توجه به شرایط، دسترسی به شغل و یا تجربه شغلی ندارند، به همین منظور پیشنهاد می شود به مطالعه وب سایت ها، اخبار، ویژه نامه و مقالاتی که در حوزه صنعت آنها بوده بپردازند و با کارفرمایان مورد نظر بیشتر آشنا شوند. گاهی حتی سعی کنید ارتباط خود را با مدیران منابع انسانی سازمان ها بیشتر کنید و با دقت و هوشمندی شایستگی های خود را نشان دهید.</p>\r\n\r\n<p>همواره موقعیت ها را پیگیری کنید و حتی اگر فکر می کنید شانسی در مصاحبه دعوت شده (برای مطالعه بیشتر رجوع کنید به مقاله چهار نکته ای که در مصاحبه شغلی نباید انجام دهید) ندارید، حتما در آن حضور پیدا کنید. زیرا یکی از بهترین بازخوردها، مصاحبه های شغلی است که هم با صنعت و شغل آینده خودتان بیشتر آشنا می شوید و هم این که تجربه مناسبی برای مصاحبه های آینده خواهد بود.</p>\r\n\r\n<p>منبع: <a href="#">I could</a></p>\r\n', '', '', 'با نزدیک شدن به پایان دوران فارغ التحصیلی، بسیاری از دانشجویان سابق به دنبال یافتن مسیر آینده شغلی خود هستند. شاید بسیاری از افراد مهارت ها و توانایی های کافی برای ورود به شغلرا داشته باشند، اما توانایی متقاعد کردن کارفرما نسبت به شایستگی که از آن برخوردا', 10, '10', '3', 1441633873, 1442245785, '0'),
(19, 'مدیریت احساسات: چگونه هیجانات منفی محیط کار خود را مدیریت کنیم؟ (قسمت دوم)', 'manage_emotion_part2', '/talentyab/upload/blog_images/blog-image.png', '<p>در رابطه با برخی احساسات منفی در محیط کار و راهکارهای پیشگری از بروز آنها صحبت کردیم. این هفته بحث را ادامه داده و تکمیل خواهیم کرد. &laquo;سرخوردگی &ndash; رنجش&raquo; و &laquo;نگرانی &ndash; استرس&raquo; را بررسی کردیم. در این مقاله احساسات منفی متداول &laquo;خشم- عصبانیت&raquo;، &laquo;تنفر- بیزاری&raquo; و &laquo;دلخوری- ناراحتی&raquo; را &nbsp;برای شما همراهان خوب تلنت یاب&nbsp;معرفی می کنیم. &nbsp;&nbsp;&nbsp;</p>\r\n\r\n<h5><strong>خشم- عصبانیت</strong></h5>\r\n\r\n<p>خشم و عصبانیتی که از کنترل خارج شود، یکی از مخرب ترین هیجان هایی محسوب می شود که ممکن است افراد در محیط کار تجربه کنند. بیشتر افراد در کنترل خشم و عصبانیت با مشکل مواجه می شوند و واکنش های تندی را متعاقب شرایط پیش آمده نشان می دهند. اگر شما نیز در مدیریت آن با ضعف روبر می شوید، به راهکارهای زیر توجه کنید: (<a href="http://talentyab.com/?p=6199" target="_blank">در این زمینه می توانید مراجعه کنید به آزمون سنجش حالات خشم</a>)</p>\r\n\r\n<p><strong>به نشانه های اولیه خشم دقت کنید:</strong> فقط خودتان می دانید که خشم چه زمانی به سراغ شما آمده است. در واقع تشخیص آن برای شما به مراتب راحت تر از دیگران است. یکی از نکات کلیدی این است که با دانستن این نشانه ها خشم خود را می توانید زودتر کنترل کنید. همانطور که قبلا اشاره شد، در انتخاب واکنش آزاد هستید، اما به یاد داشته باشید که واکنش فوری و همراه با عصبانیت بهترین پاسخ به شرایط نیست و بیش تر از همه به خودتان آسیب می رساند (<a href="http://talentyab.com/?p=6096" target="_blank">استراتژی های <strong>مدیریت خشم</strong> (<strong>قسمت اول</strong> و <strong>دوم</strong>) برای مطالعه بیشتر پیشنهاد می شود</a>).</p>\r\n\r\n<p><strong>اگر عصبانی هستید، از کار کردن برای مدتی دست بکشید</strong>: پیشنهاد می شود برای مدتی چشم های خودتان را ببندید، و مثل همیشه تنفس عمیق را فراموش نکنید. سعی کنید افکار منفی که باعث خشونت می شود را کنار بگذارید و مثبت فکر کنید. دلیل و ریشه یابی حوادث یکی از بهترین راه حل ها برای رسیدن به شرایط منطقی است.</p>\r\n\r\n<p><strong>خودتان را در شرایطی که عصبانی هستید تصور کنید:</strong> اگر قبل از این که عصبانی شوید، رفتار خودتان را تصور کنید، دیدگاه بیشتری از خودتان پیدا می کنید و این تمرین به شما کمک می کند که هنگام عصبانیت با یادآوری عواقب آن برای خودتان زودتر بتوانید خشم خود را مدیریت کنید. در واقع فکر کنید اگر عصبانی شوید، چه واکنش هایی در شما ایجاد می شود. به عنوان مثال واکنش فیزیکی شما می تواند تغییر رنگ صورت یا لرزش صدا و &hellip; باشد.</p>\r\n\r\n<h5><strong>&nbsp;تنفر و بیزاری</strong></h5>\r\n\r\n<p>ممکن است در محیط کار نسبت به افراد یا اشیا حس تنفری در ما شکل بگیرد. به صورت ذاتی ممکن است نسبت به برخی افراد رفتار سرد داشته باشیم. یا حتی سایر افراد این حس را در قبال ما داشته باشند. پیشنهاد این است که حتی اگر این حس خارج از کنترل شماست رفتار حرفه ای خودتان را حفظ کنید. تمرین بیشتر نکات زیر به حل این مساله کمک می کند.</p>\r\n\r\n<p><strong>با احترام رفتار کنید: </strong>در صورتی که مجبور شده اید با کسی که به او حس تنفر دارید کار مشترکی انجام دهید، سعی کنید که غرور و حس برتری خودتان را کنار بگذارید. با او مودبانه و با احترام برخورد کنید. همانطور که از دیگران چنین انتظاری را دارید. بیشتر اوقات این حس به دلیل پیش قضاوتی ها و کم بودن عمق شناخت ما از طرف مقابل رخ می دهد و اگر بتوانید اشتراک های خود را پیدا کنید، تعامل بیشتری نشان می دهید.</p>\r\n\r\n<p><strong>قاطع باشید: </strong>حتی اگر طرف مقابل شما رفتار غیر حرفه ای نشان داد، سعی کنید <a href="http://talentyab.com/?p=6271" target="_blank">قاطع باشید</a> و به این حرکت، واکنش مقابله به مثل نشان ندهید. در هر صورت سعی کنید حرفه ای فکر کنید و حرفه ای عمل کنید. اگر شرایط بدتر شد، بهترین راه حل ترک کردن موقعیت است.</p>\r\n\r\n<h5><strong>دلخوری &ndash; ناراحتی</strong></h5>\r\n\r\n<p>شاید مقابله با ناراحتی در محیط کار در مدت زمان کوتاه مشکل باشد. همه احساساتی که در محیط کار با آن روبرو می شوید، بی تردید در بهره وری شما اثر خواهد داشت. اگر ناراحتی شدیدی به شما دست می دهد و از شرایط دلخوری زیادی دارید، انرژی شما به پایین تر حد ممکن می رسد و شما قادر به ادامه دادن فعالیت و رسیدن به اهداف روزمره نخواهید بود. &nbsp;در هر صورت برای بازیابی روحیه نکات زیر پیشنهاد می شود:</p>\r\n\r\n<p><strong>ذهنیت مثبت خودتان را حفظ کنید: </strong>به یاد داشته باشید که روزگار همیشه به وفق مراد شما نیست و ممکن است اهداف شما حتی با وجود تلاش محقق نشود. در غیر این صورت زندگی مانند جاده ای صاف و مستقیم بود که به همه مسیر ها می شد دسترسی داشت! اما می دانیم زندگی پر از فراز و نشیب ها است و جذابیت آن نیز به همین ویژگی هاست.</p>\r\n\r\n<p><strong>اهداف خودتان را دوباره تنظیم کنید:</strong> اگر به اهداف خود نرسیده اید، به این معنی نیست که دیگر دست یافتی نیستند. سعی کنید به صورت واقع بینانه مشکلات را بررسی کنید. اهداف خود را دوباره تنظیم کنید و برنامه ریزی بهتری انجام دهید.</p>\r\n\r\n<p><strong>افکار خود را ثبت کنید: </strong>نوشتن یکی از راهکارهای مشترک احساسات منفی است. با نوشتن همانطور که قبلا گفته شد مشکلات برایتان عینی شده و خلاقیت شما نیز برای یافتن راه حل بیشتر می شود. در واقع شما با طوفان مغزی می توانید گزینه های بیشتری را در نظر بگیرید. همیشه می توان شرایط را تغییر داد.</p>\r\n\r\n<p><strong>بخندید:&nbsp;</strong>لبخند حتی در بدترین شرایط، حرفه ای بودن شما را نشان می دهد. خندیدن یکی از راهکارهای ساده و در عین حال فوق العاده اثر بخش است. چرا که &nbsp;متعاقب آن تغییر زیادی در روحیه شما ایجاد می شود. بنابراین حتی اگر خیلی ناراحت هستید، یک لبخند کوچک هم می تواند حال شما را بهتر کند.</p>\r\n\r\n<h5>به یاد داشته باشید که مقابله با احساسات منفی در محیط کار کار ساده و راحتی نیست و باید برای تمرکز بیشتر تمرین بیشتری برای تسلط پیدا کردن بر روی خودتان داشته باشید. پیشنهاد می شود مقاله<strong> <a href="http://talentyab.com/?p=5700" target="_blank">عادت های بد در محیط کار</a></strong> را مرور کنید. پیدا کردن راه حل به زمان نیاز دارد و مهم تر از همه به اراده شما. چون شما همیشه در انتخاب واکنش آزاد هستید!</h5>\r\n\r\n<p><strong>منبع</strong>: Mind Tools</p>\r\n', 'sdf', '', 'با نزدیک شدن به پایان دوران فارغ التحصیلی، بسیاری از دانشجویان سابق به دنبال یافتن مسیر آینده شغلی خود هستند. شاید بسیاری از افراد مهارت ها و توانایی های کافی برای ورود به شغلرا داشته باشند، اما توانایی متقاعد کردن کارفرما نسبت به شایستگی که از آن برخوردا', 35, '', '', 1441633874, 1442232763, '0'),
(20, 'نمونه ویدیو در مقاله ', '5_approach2', '/talentyab/upload/blog_images/blog-image.png', 'ویدپو در رابطه با برخی احسابا برخی احساسات منفی در محیط کار و راهکبا برخی احساسات منفی در محیط کار و راهکبا برخی احساسات منفی در محیط کار و راهکبا برخی احساسات منفی در محیط کار و راهکبا برخی احساسات منفی در محیط کار و راهکبا برخی احساسات منفی در محیط کار و راهکسات منفی در محیط کار و راهکارهای پیشگری از بروز آنها صحبت کردیم. این هفته بحث را ادامه داده و تکمیل خواهیم کرد. \n\n<br>\n<iframe src="http://www.aparat.com/video/video/embed/videohash/BHSA4/vt/frame" allowFullScreen="true" webkitallowfullscreen="true" mozallowfullscreen="true" height="360" width="640" ></iframe>\n<br>\n\nهفته گذشته</a> مباحث مربوط به &laquo;سرخوردگی &ndash; رنجش&raquo; و &laquo;نگرانی &ndash; استرس&raquo; را بررسی کردیم. در این مقاله احساسات منفی متداول &laquo;خشم- عصبانیت&raquo;، &laquo;تنفر- بیزاری&raquo; و &laquo;دلخوری- ناراحتی&raquo; را &nbsp;برای شما همراهان خوب تلنت یاب&nbsp;معرفی می کنیم. &nbsp;&nbsp;&nbsp;</h5>\n\n<h5><strong>خشم- عصبانیت</strong></h5>\n\n<p>خشم و عصبانیتی که از کنترل خارج شود، یکی از مخرب ترین هیجان هایی محسوب می شود که ممکن است افراد در محیط کار تجربه کنند. بیشتر افراد در کنترل خشم و عصبانیت با مشکل مواجه می شوند و واکنش های تندی را متعاقب شرایط پیش آمده نشان می دهند. اگر شما نیز در مدیریت آن با ضعف روبر می شوید، به راهکارهای زیر توجه کنید: (<a href="http://talentyab.com/?p=6199" target="_blank">در این زمینه می توانید مراجعه کنید به آزمون سنجش حالات خشم</a>)</p>\n\n<p><strong>به نشانه های اولیه خشم دقت کنید:</strong> فقط خودتان می دانید که خشم چه زمانی به سراغ شما آمده است. در واقع تشخیص آن برای شما به مراتب راحت تر از دیگران است. یکی از نکات کلیدی این است که با دانستن این نشانه ها خشم خود را می توانید زودتر کنترل کنید. همانطور که قبلا اشاره شد، در انتخاب واکنش آزاد هستید، اما به یاد داشته باشید که واکنش فوری و همراه با عصبانیت بهترین پاسخ به شرایط نیست و بیش تر از همه به خودتان آسیب می رساند (<a href="http://talentyab.com/?p=6096" target="_blank">استراتژی های <strong>مدیریت خشم</strong> (<strong>قسمت اول</strong> و <strong>دوم</strong>) برای مطالعه بیشتر پیشنهاد می شود</a>).</p>\n\n<p><strong>اگر عصبانی هستید، از کار کردن برای مدتی دست بکشید</strong>: پیشنهاد می شود برای مدتی چشم های خودتان را ببندید، و مثل همیشه تنفس عمیق را فراموش نکنید. سعی کنید افکار منفی که باعث خشونت می شود را کنار بگذارید و مثبت فکر کنید. دلیل و ریشه یابی حوادث یکی از بهترین راه حل ها برای رسیدن به شرایط منطقی است.</p>\n\n<p><strong>خودتان را در شرایطی که عصبانی هستید تصور کنید:</strong> اگر قبل از این که عصبانی شوید، رفتار خودتان را تصور کنید، دیدگاه بیشتری از خودتان پیدا می کنید و این تمرین به شما کمک می کند که هنگام عصبانیت با یادآوری عواقب آن برای خودتان زودتر بتوانید خشم خود را مدیریت کنید. در واقع فکر کنید اگر عصبانی شوید، چه واکنش هایی در شما ایجاد می شود. به عنوان مثال واکنش فیزیکی شما می تواند تغییر رنگ صورت یا لرزش صدا و &hellip; باشد.</p>\n\n<h5><strong>&nbsp;تنفر و بیزاری</strong></h5>\n\n<p>ممکن است در محیط کار نسبت به افراد یا اشیا حس تنفری در ما شکل بگیرد. به صورت ذاتی ممکن است نسبت به برخی افراد رفتار سرد داشته باشیم. یا حتی سایر افراد این حس را در قبال ما داشته باشند. پیشنهاد این است که حتی اگر این حس خارج از کنترل شماست رفتار حرفه ای خودتان را حفظ کنید. تمرین بیشتر نکات زیر به حل این مساله کمک می کند.</p>\n\n<p><strong>با احترام رفتار کنید: </strong>در صورتی که مجبور شده اید با کسی که به او حس تنفر دارید کار مشترکی انجام دهید، سعی کنید که غرور و حس برتری خودتان را کنار بگذارید. با او مودبانه و با احترام برخورد کنید. همانطور که از دیگران چنین انتظاری را دارید. بیشتر اوقات این حس به دلیل پیش قضاوتی ها و کم بودن عمق شناخت ما از طرف مقابل رخ می دهد و اگر بتوانید اشتراک های خود را پیدا کنید، تعامل بیشتری نشان می دهید.</p>\n\n<p><strong>قاطع باشید: </strong>حتی اگر طرف مقابل شما رفتار غیر حرفه ای نشان داد، سعی کنید <a href="http://talentyab.com/?p=6271" target="_blank">قاطع باشید</a> و به این حرکت، واکنش مقابله به مثل نشان ندهید. در هر صورت سعی کنید حرفه ای فکر کنید و حرفه ای عمل کنید. اگر شرایط بدتر شد، بهترین راه حل ترک کردن موقعیت است.</p>\n\n<h5><str', '', '', 'شسبشسب شسب شسب شسب', 30, '26', '3', 1441633873, 0, '1'),
(21, 'تست ویدیو', 'video', '/talentyab/upload/blog_images/blog-image.png', '<p>sdfsdf</p>\r\n', '', '<iframe src="http://www.aparat.com/video/video/embed/videohash/Tikhy/vt/frame" allowFullScreen="true" webkitallowfullscreen="true" mozallowfullscreen="true" height="360" width="640" ></iframe>', 'sdfsdf', 23, '0', '1', 1441796218, 0, '0'),
(22, 'wefwe', 'wefwef', '/talentyab/upload/blog_images/managing-emotions02.png', '<p>sdfsdf</p>\r\n', '', '', '', 23, '0', '1', 1442041659, 0, '1'),
(23, 'مدیریت احساسات: 2', 'manage_emotion_part3', '/talentyab/upload/blog_images/managing-emotions02.png', 'در رابطه با برخی احساسات منفی در محیط کار و راهکارهای پیشگری از بروز آنها صحبت کردیم. این هفته بحث را ادامه داده و تکمیل خواهیم کرد.  &laquo;سرخوردگی &ndash; رنجش&raquo; و &laquo;نگرانی &ndash; استرس&raquo; را بررسی کردیم. در این مقاله احساسات منفی متداول &laquo;خشم- عصبانیت&raquo;، &laquo;تنفر- بیزاری&raquo; و &laquo;دلخوری- ناراحتی&raquo; را &nbsp;برای شما همراهان خوب تلنت یاب&nbsp;معرفی می کنیم. &nbsp;&nbsp;&nbsp;</h5>\r\n\r\n<h5><strong>خشم- عصبانیت</strong></h5>\r\n\r\n<p>خشم و عصبانیتی که از کنترل خارج شود، یکی از مخرب ترین هیجان هایی محسوب می شود که ممکن است افراد در محیط کار تجربه کنند. بیشتر افراد در کنترل خشم و عصبانیت با مشکل مواجه می شوند و واکنش های تندی را متعاقب شرایط پیش آمده نشان می دهند. اگر شما نیز در مدیریت آن با ضعف روبر می شوید، به راهکارهای زیر توجه کنید: (<a href="http://talentyab.com/?p=6199" target="_blank">در این زمینه می توانید مراجعه کنید به آزمون سنجش حالات خشم</a>)</p>\r\n\r\n<p><strong>به نشانه های اولیه خشم دقت کنید:</strong> فقط خودتان می دانید که خشم چه زمانی به سراغ شما آمده است. در واقع تشخیص آن برای شما به مراتب راحت تر از دیگران است. یکی از نکات کلیدی این است که با دانستن این نشانه ها خشم خود را می توانید زودتر کنترل کنید. همانطور که قبلا اشاره شد، در انتخاب واکنش آزاد هستید، اما به یاد داشته باشید که واکنش فوری و همراه با عصبانیت بهترین پاسخ به شرایط نیست و بیش تر از همه به خودتان آسیب می رساند (<a href="http://talentyab.com/?p=6096" target="_blank">استراتژی های <strong>مدیریت خشم</strong> (<strong>قسمت اول</strong> و <strong>دوم</strong>) برای مطالعه بیشتر پیشنهاد می شود</a>).</p>\r\n\r\n<p><strong>اگر عصبانی هستید، از کار کردن برای مدتی دست بکشید</strong>: پیشنهاد می شود برای مدتی چشم های خودتان را ببندید، و مثل همیشه تنفس عمیق را فراموش نکنید. سعی کنید افکار منفی که باعث خشونت می شود را کنار بگذارید و مثبت فکر کنید. دلیل و ریشه یابی حوادث یکی از بهترین راه حل ها برای رسیدن به شرایط منطقی است.</p>\r\n\r\n<p><strong>خودتان را در شرایطی که عصبانی هستید تصور کنید:</strong> اگر قبل از این که عصبانی شوید، رفتار خودتان را تصور کنید، دیدگاه بیشتری از خودتان پیدا می کنید و این تمرین به شما کمک می کند که هنگام عصبانیت با یادآوری عواقب آن برای خودتان زودتر بتوانید خشم خود را مدیریت کنید. در واقع فکر کنید اگر عصبانی شوید، چه واکنش هایی در شما ایجاد می شود. به عنوان مثال واکنش فیزیکی شما می تواند تغییر رنگ صورت یا لرزش صدا و &hellip; باشد.</p>\r\n\r\n<h5><strong>&nbsp;تنفر و بیزاری</strong></h5>\r\n\r\n<p>ممکن است در محیط کار نسبت به افراد یا اشیا حس تنفری در ما شکل بگیرد. به صورت ذاتی ممکن است نسبت به برخی افراد رفتار سرد داشته باشیم. یا حتی سایر افراد این حس را در قبال ما داشته باشند. پیشنهاد این است که حتی اگر این حس خارج از کنترل شماست رفتار حرفه ای خودتان را حفظ کنید. تمرین بیشتر نکات زیر به حل این مساله کمک می کند.</p>\r\n\r\n<p><strong>با احترام رفتار کنید: </strong>در صورتی که مجبور شده اید با کسی که به او حس تنفر دارید کار مشترکی انجام دهید، سعی کنید که غرور و حس برتری خودتان را کنار بگذارید. با او مودبانه و با احترام برخورد کنید. همانطور که از دیگران چنین انتظاری را دارید. بیشتر اوقات این حس به دلیل پیش قضاوتی ها و کم بودن عمق شناخت ما از طرف مقابل رخ می دهد و اگر بتوانید اشتراک های خود را پیدا کنید، تعامل بیشتری نشان می دهید.</p>\r\n\r\n<p><strong>قاطع باشید: </strong>حتی اگر طرف مقابل شما رفتار غیر حرفه ای نشان داد، سعی کنید <a href="http://talentyab.com/?p=6271" target="_blank">قاطع باشید</a> و به این حرکت، واکنش مقابله به مثل نشان ندهید. در هر صورت سعی کنید حرفه ای فکر کنید و حرفه ای عمل کنید. اگر شرایط بدتر شد، بهترین راه حل ترک کردن موقعیت است.</p>\r\n\r\n<h5><strong>دلخوری &ndash; ناراحتی</strong></h5>\r\n\r\n<p>شاید مقابله با ناراحتی در محیط کار در مدت زمان کوتاه مشکل باشد. همه احساساتی که در محیط کار با آن روبرو می شوید، بی تردید در بهره وری شما اثر خواهد داشت. اگر ناراحتی شدیدی به شما دست می دهد و از شرایط دلخوری زیادی دارید، انرژی شما به پایین تر حد ممکن می رسد و شما قادر به ادامه دادن فعالیت و رسیدن به اهداف روزمره نخواهید بود. &nbsp;در هر صورت برای بازیابی روحیه نکات زیر پیشنهاد می شود:</p>\r\n\r\n<p><strong>ذهنیت مثبت خودتان را حفظ کنید: </strong>به یاد داشته باشید که روزگار همیشه به وفق مراد شما نیست و ممکن است اهداف شما حتی با وجود تلاش محقق نشود. در غیر این صورت زندگی مانند جاده ای صاف و مستقیم بود که به همه مسیر ها می شد دسترسی داشت! اما می دانیم زندگی پر از فراز و نشیب ها است و جذابیت آن نیز به همین ویژگی هاست.</p>\r\n\r\n<p><strong>اهداف خودتان را دوباره تنظیم کنید:</strong> اگر به اهداف خود نرسیده اید، به این معنی نیست که دیگر دست یافتی نیستند. سعی کنید به صورت واقع بینانه مشکلات را بررسی کنید. اهداف خود را دوباره تنظیم کنید و برنامه ریزی بهتری انجام دهید.</p>\r\n\r\n<p><strong>افکار خود را ثبت کنید: </strong>نوشتن یکی از راهکارهای مشترک احساسات منفی است. با نوشتن همانطور که قبلا گفته شد مشکلات برایتان عینی شده و خلاقیت شما نیز برای یافتن راه حل بیشتر می شود. در واقع شما با طوفان مغزی می توانید گزینه های بیشتری را در نظر بگیرید. همیشه می توان شرایط را تغییر داد.</p>\r\n\r\n<p><strong>بخندید:&nbsp;</strong>لبخند حتی در بدترین شرایط، حرفه ای بودن شما را نشان می دهد. خندیدن یکی از راهکارهای ساده و در عین حال فوق العاده اثر بخش است. چرا که &nbsp;متعاقب آن تغییر زیادی در روحیه شما ایجاد می شود. بنابراین حتی اگر خیلی ناراحت هستید، یک لبخند کوچک هم می تواند حال شما را بهتر کند.</p>\r\n\r\n<h5>به یاد داشته باشید که مقابله با احساسات منفی در محیط کار کار ساده و راحتی نیست و باید برای تمرکز بیشتر تمرین بیشتری برای تسلط پیدا کردن بر روی خودتان داشته باشید. پیشنهاد می شود مقاله<strong> <a href="http://talentyab.com/?p=5700" target="_blank">عادت های بد در محیط کار</a></strong> را مرور کنید. پیدا کردن راه حل به زمان نیاز دارد و مهم تر از همه به اراده شما. چون شما همیشه در انتخاب واکنش آزاد هستید!</h5>\r\n\r\n<p><strong>منبع</strong>: Mind Tools</p>\r\n', '', '', 'kholase', 20, '1578', '2', 1441637098, 0, '1'),
(24, 'ویدپو دارد', 'dsfsdg', '/talentyab/upload/blog_images/blog-image.png', '<p>asfasfasf</p>\r\n', '', '<iframe src="http://www.aparat.com/video/video/embed/videohash/mL0G6/vt/frame" allowFullScreen="true" webkitallowfullscreen="true" mozallowfullscreen="true" height="360" width="640" ></iframe>', 'خلاصه', 0, '0', '1', 1442044788, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `blog_audience`
--

CREATE TABLE IF NOT EXISTS `blog_audience` (
`id` int(11) NOT NULL,
  `audience_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_audience`
--

INSERT INTO `blog_audience` (`id`, `audience_name`) VALUES
(1, 'دانشجو'),
(2, 'تازه کار'),
(3, 'مدیر');

-- --------------------------------------------------------

--
-- Table structure for table `blog_keywords`
--

CREATE TABLE IF NOT EXISTS `blog_keywords` (
`id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_keywords`
--

INSERT INTO `blog_keywords` (`id`, `blog_id`, `keyword`) VALUES
(77, 18, ''),
(34, 19, ''),
(50, 19, 'asd'),
(49, 19, 'sda'),
(65, 19, 'بسب');

-- --------------------------------------------------------

--
-- Table structure for table `blog_subject`
--

CREATE TABLE IF NOT EXISTS `blog_subject` (
`id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_subject`
--

INSERT INTO `blog_subject` (`id`, `subject_name`) VALUES
(1, 'مهارت های رهبری'),
(2, 'مهارت های خود مدیریتی'),
(3, 'مهارت های کار تیمی'),
(4, 'توسعه مسیر حرفه ای');

-- --------------------------------------------------------

--
-- Table structure for table `blog_type`
--

CREATE TABLE IF NOT EXISTS `blog_type` (
`id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_type`
--

INSERT INTO `blog_type` (`id`, `type_name`) VALUES
(1, 'پیام صوتی'),
(2, 'مشاغل'),
(3, 'ابزار'),
(4, 'اینفوگراف'),
(5, 'ویدیو'),
(6, 'مقالات');

-- --------------------------------------------------------

--
-- Table structure for table `b_a`
--

CREATE TABLE IF NOT EXISTS `b_a` (
`id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `audience_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `b_a`
--

INSERT INTO `b_a` (`id`, `blog_id`, `audience_id`) VALUES
(6, 8, 1),
(7, 8, 2),
(9, 10, 3),
(10, 11, 1),
(11, 12, 2),
(12, 13, 2),
(13, 14, 3),
(14, 15, 3),
(15, 16, 3),
(18, 18, 3),
(19, 19, 1),
(20, 19, 2),
(21, 19, 3),
(16, 20, 2),
(22, 21, 2),
(23, 22, 2),
(24, 23, 1),
(25, 24, 2);

-- --------------------------------------------------------

--
-- Table structure for table `b_s`
--

CREATE TABLE IF NOT EXISTS `b_s` (
`id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `b_s`
--

INSERT INTO `b_s` (`id`, `blog_id`, `subject_id`) VALUES
(6, 8, 1),
(7, 8, 2),
(10, 10, 1),
(11, 10, 2),
(12, 11, 1),
(13, 12, 1),
(14, 12, 2),
(20, 13, 1),
(15, 13, 2),
(16, 14, 2),
(17, 15, 2),
(18, 16, 2),
(22, 18, 2),
(23, 19, 1),
(19, 20, 1),
(24, 21, 1),
(25, 22, 1),
(26, 23, 1),
(27, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `b_t`
--

CREATE TABLE IF NOT EXISTS `b_t` (
`id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `b_t`
--

INSERT INTO `b_t` (`id`, `blog_id`, `type_id`) VALUES
(4, 8, 6),
(6, 10, 4),
(7, 10, 5),
(8, 11, 1),
(9, 12, 3),
(10, 12, 4),
(11, 13, 2),
(12, 14, 2),
(13, 15, 2),
(14, 16, 2),
(17, 18, 4),
(18, 19, 6),
(15, 20, 2),
(19, 21, 2),
(20, 22, 3),
(21, 23, 1),
(22, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `province` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `add_time` bigint(20) NOT NULL,
  `activate` tinyint(4) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `full_name`, `mail`, `text`, `add_time`, `activate`, `ip`, `user_id`, `admin_id`, `blog_id`, `comment_id`) VALUES
(1, 'پویا صبرآموز', 'pooya_alen1990@yahoo.com', '  سلام  بسیار سپاسگزارم از سایت عالیتون. واقعا محتواتون عالیه. کارتون ارزشمند و قابل تقدیره', 1442403503, 1, '127.0.0.1', 0, 0, 18, 0),
(2, 'علی علایی', 'a_alaee2010@yahoo.com', 'سلام سجاد عزیز؛ خیلی خوشحالیم از این نظر دلگرم کننده و همراهی شما با تیم تلنت یاب', 1442403603, 1, '127.0.0.1', 0, 0, 18, 1),
(3, 'erg', 'erg', 'erg', 1442403703, 1, '127.0.0.1', 0, 0, 18, 0),
(4, 'تست تست', 'pooya_alen@yahoo.com', 'من کامنت تایید نشده ام', 1442404182, 0, '127.0.0.1', 0, 0, 18, 0),
(10, 'wef', 'ssdfsd@asfd.com', 'wef', 1442405343, 0, '127.0.0.1', 0, 0, 18, 0),
(11, 'asd', 'asfasf@asds.com', 'asd', 1442405575, 0, '127.0.0.1', 0, 0, 18, 0),
(12, 'asfa', 'asfasf@asds.com', 'fasf', 1442412273, 0, '127.0.0.1', 0, 0, 18, 0),
(13, 'sdgsdg', 'asfasf@asds.com', 'اصغر', 1442413738, 1, '127.0.0.1', 0, 0, 18, 1),
(14, 'asd', 'pooya_alen@yahoo.com', 'sdfsdf', 1442413782, 0, '127.0.0.1', 0, 0, 18, 3),
(15, 'سیلسیل', 'fghfgh@df.com', 'یلسی', 1442413850, 0, '127.0.0.1', 0, 0, 18, 1),
(24, 'wef', 'asfasf@asds.com', 'wef', 1442416536, 0, '127.0.0.1', 0, 0, 18, 3);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
`id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `add_time` bigint(20) NOT NULL,
  `response_time` varchar(255) NOT NULL,
  `response_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE IF NOT EXISTS `educations` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `education_level` varchar(255) NOT NULL,
  `education_average` float NOT NULL,
  `education_university` varchar(255) NOT NULL,
  `education_branch` varchar(255) NOT NULL,
  `education_sub_branch` varchar(255) NOT NULL,
  `education_graduation_date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_user`
--

CREATE TABLE IF NOT EXISTS `favorite_user` (
`id` int(11) NOT NULL,
  `favorite_blog` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `functions`
--

CREATE TABLE IF NOT EXISTS `functions` (
`id` int(11) NOT NULL,
  `quize_id` varchar(255) NOT NULL,
  `function` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `job_name` varchar(255) NOT NULL,
  `job_position` varchar(255) NOT NULL,
  `job_duration` int(11) NOT NULL,
  `job_exit_cause` text NOT NULL,
  `job_tel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
`id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `ENtitle` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `ENtitle`) VALUES
(1, 'لیست بلاگ ها', 'blog_list'),
(2, 'افزودن بلاگ', 'blog_insert'),
(3, 'لیست کامنت ها', 'comment_list'),
(14, 'تغییر سطح دسترسی', 'change_privileges'),
(31, 'پذیرندگان در ماه (چاپی)', 'transactions_month_chapi'),
(32, 'پیگیری خرید ها در ماه', 'transactions_month_follow');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE IF NOT EXISTS `province` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quizes`
--

CREATE TABLE IF NOT EXISTS `quizes` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `multi_choice` varchar(255) NOT NULL,
  `activate` varchar(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `add_date` bigint(20) NOT NULL,
  `modify_date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quize_user`
--

CREATE TABLE IF NOT EXISTS `quize_user` (
`id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE IF NOT EXISTS `quotations` (
`id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2001 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `author`, `text`) VALUES
(1, 'امام علی (ع)', 'كسی كه فراوان سخن بگوید، به سرسام‌گویی افتد و كسی كه بیندیشد، بینا شود.'),
(2, 'مثل باستان', 'روغن همیشه زیر آب نمی‌ماند.'),
(3, 'جیم رآن', 'همواره در نبودِ نیكی، شر و بدی به وجود می‌آید.'),
(4, 'افلاطون', 'نیكمرد نیست كه به مهمانی زیردست می رود، بلكه زیردستی به مهمانی نیكمرد می رود.'),
(5, 'آبراهام مازلو', 'آموزش و پرورش ما باید بر مبنای چَم جدید آموزش، یعنی آفرینندگی باشد.'),
(6, 'زیگموند فروید', 'تسلط بر طبیعت تنها شرط نیك بختی انسان نیست، چنان كه تنها هدف كوشش های تمدن هم نیست، اما نمی توان بی ارزش بودن پیشرفت های تمدن را از آن نتیجه گرفت.'),
(7, 'برنارد مالامود', 'بدون وجود قهرمانان، انسان، موجود دردمندی است كه نمی‌داند تا كجا می‌تواند پیش برود.'),
(8, 'حضرت محمد (ص)', 'هرگز عمل گروهی بد نمی‌شود مگر این كه مساجد خود را زینت می‌دهند. (افرادی هستند كه به ظاهر دین چسبیده و باطن آن را فراموش می‌كنند مثل این كه حقیقت اسلام را نفهمیده ولی به دنبال زینت مساجد می‌روند.)'),
(9, 'بوك مینستر فولر', 'شما هرگز قادر به آموختن كم و اندك نخواهید بود، تنها می توان بیشتر و بیشتر یاد گرفت.'),
(10, 'افلاطون', 'آموزش و پرورش، اگر به حد كمال فراهم شود، نهاد انسان را سامان می‌دهد.'),
(11, 'ریچارد باخ', 'همیشه مختاری كه باورت را تغییر دهی و آینده ای متفاوت را برگزینی.'),
(12, 'حضرت محمد (ص)', '‌شیطان با یك نفر و دو نفر كار دارد (زیرا یك نفر تنهاست و دو نفر هم ممكن است با هم اختلاف كنند) و زمانی كه سه نفر شدند،‌ نمی‌تواند قصد بدی نسبت به آنها داشته باشد.'),
(13, 'ژول كاراتی', 'اگر یكی از مشتاقان كتاب هستید بزرگترین خوشبختی جهان را دارا می باشید.'),
(14, 'امام علی (ع)', 'تفاوت زیادی است بین دو عمل: عملی كه لذتش می‌گذرد و نتیجه‌ی زشتش می‌ماند، و عملی كه زحمتش می‌رود و پاداش نیكویش می‌ماند.'),
(15, 'جك كانفیلد', 'بیشتر از آنچه مردم چشم‌داشت آن را دارند، ارائه دهید.'),
(16, 'آندره موروا', 'امید و رویای یك مرد عمل این است كه در زمانهای بی نهایت دشوار و در موارد پیچیده و سخت، نسبت به ادراك حیوانی و هوش فطری خویش اطمینان خاطر كامل به دست آورد.'),
(17, 'امام علی (ع)', 'ظلم و ارتكابِ خلافِ واقع، انسان را در دنیا و آخرتش هلاك می‌كند و نقص و اختلالِ وجودیِ او را نزد عیب‌جوی او پدیدار می‌نماید.'),
(18, 'لو هولتز', 'اگر از زندگی خسته شده‌اید، اگر هر روز با یك آرزوی داغ برای انجام كاری از خواب بیدار نمی‌شوید، برای این است كه به اندازه‌ی كافی هدف ندارید.'),
(19, 'آنتونی رابینز', 'چنانچه بخواهیم از زندگی خود بهره‌ی بیشتری ببریم، شاید می‌بایست از تجربه‌ی نزدیكان بهره بگیریم و از آنها بیاموزیم.'),
(20, 'امام علی (ع)', 'خیری در این دنیا نیست، جز برای دو نفر: شخصی كه از گناهانی كه مرتكب شده، توبه كند و آن‌ها را جبران نماید و شخصی كه برای وصول به خیرات بشتابد.'),
(21, 'پرمودا باترا', 'در آغاز هر كاری، چیزی كه یاد می‌گیرید، مهم‌تر از درآمدی‌ است كه دارید.'),
(22, 'اریك نیوتن', 'فهم ما از هنر به میزان گسترده ای تابع تجربه ی اندوخته شده ای است كه درباره ی آن به دست آورده ایم.'),
(23, 'ویلیام شكسپیر', 'آنان كه توان آزردن دارند و هیچ كس را نمی آزارند به درستی كه وارثان شكوه ملكوتند.'),
(24, 'حضرت محمد (ص)', 'خداوند، سه بار خواسته‌ی مرا نسبت به كسی كه مؤمنی را به قتل برساند، رد كرد. (كه آنها را نمی¬بخشم)'),
(25, 'سیسیل رورس', 'وقتی به رودخانه ای می رسیم، تمام عمر در انتظار می نشینیم تا شاید شخص دیگری بیاید و روی آن پلی برای ما بسازد.'),
(26, 'ریچارد تمپلر', 'زندگی، همین است و قرار نیست چیزی جز این باشد؛ زنجیره ای از نبردها و آسودگی ها.'),
(27, 'كریستین بوبن', 'اینكه مطلقاً [ =به تمامی ]، خودمان بمانیم، كاری بس دشوار است.'),
(28, 'حضرت محمد (ص)', 'كسی كه از خدا بترسد، خداوند، تمام چیزها را از او می¬ترساند و كسی كه از خدا نترسد، خداوند او را از تمام چیزها می¬ترساند.'),
(29, 'اُرد بزرگ', 'شالوده و زیربنای گسترش هر كشور، فرهنگ است.'),
(30, 'حضرت محمد (ص)', 'جهاد بر چهار نوع است:‌ فرمان به كار خوب و نهی از كار بد و راستی در موقع صبر (سختی و فشار باعث دروغ نشود) و انزجار از شخص فاسق.'),
(31, '؟', 'اگر می خواهید برای خویش دشمنی بتراشید، خود را برتر از دوستان نشان بدهید و اگر می خواهید دوستان شما زیاد شوند، بگذارید از شما برتر باشند.'),
(32, 'پرمودا باترا', 'به آن آسانی كه می‌توانید خودتان را دگرگون كنید، دیگران را نمی‌توانید.'),
(33, 'چارلز مورگان', 'هیچ چیز در زندگی شیرین تر از این نیست كه كسی انسان را دوست بدارد. من در زندگانی خود هر وقت فهمیده ام كه مورد محبت كسی هستم مثل این بوده است كه دست خداوند عالم را بر شانه خویش احساس كرده ام.'),
(34, 'آبراهام مازلو', 'یكی از راههای برقراری و بهبود ارتباط با افراد، آن است كه عبارت از همان فرد شویم.'),
(35, 'ادوارد مانه', 'زمین و آسمان مكمل یكدیگرند و هر دو در خدمت بشر.'),
(36, 'ارسطو', 'انسانها به دلیل شخصیت هایشان آن چیزی هستند كه هستند، اما در كردار است كه آنها به خوشبختی و یا بدبختی دست می یابند.'),
(37, 'كن رابرتز', 'برای كامیابی، به تنها چیزی كه نیاز دارید، آگاهی تازه و راستینی است كه به راستی، در آرزوی ناب شما در مورد آنچه با همه‌ی وجود آرزو دارید كه باشید، لنگر انداخته است.'),
(38, 'هنری تورئو', 'آن گونه كه باور دارید، زندگی كنید. آنگاه می توانید دنیا را زیر و رو نمایید.'),
(39, 'فرانتس كافكا', 'از یك نقطه مشخص، دیگر راهی برای بازگشت وجود ندارد؛ به این نقطه مشخص می توان دست  یافت.'),
(40, 'ساموئل جانسون', 'ذهن خود را از ناتوانی ها خالی كنید.'),
(41, 'حضرت محمد (ص)', 'سه چیز است كه بر هر مسلمانی لازم است (مستحبّ مؤكّد می‌باشد:) غسل جمعه و مسواك و بوی خوش.'),
(42, 'روزا لوكزامبورگ', 'آزادی یعنی آزادی دگراندیشان.'),
(43, 'نیچه', 'آوازه، همه ی هوش و حواس ات را گرفته؟ پس این آموزه را در گوش گیر: هر از گاهی به دلخواه از ستایش روی بگردان.'),
(44, 'حضرت محمد (ص)', 'كسی كه (خطاهای) برادر (ایمانی)‌خود را (از دیگران) بپوشاند، خداوند (نیز)‌ در دنیا و آخرت؛ (‌گناه او را از دیگران)‌ می¬پوشاند.'),
(45, 'شیلون', 'نگذارید زبان شما از افكارتان جلوتر برود.'),
(46, 'فلورانس اسكاول شین', 'كامیابی، راز نیست، نظام [ =سامانه ] است.'),
(47, 'كلیله و دمنه', 'مرد بلندهمت تا پایه ی بلند به دست نیاورد، از پای طلب ننشیند.'),
(48, 'جان ماكسول', 'عاشق تغییر باشید تا این عشق، شما را دگرگون كند.'),
(49, 'اُرد بزرگ', 'هرگز هنگام گام برداشتن به سوی آرمان بزرگ، نگاهت به كسانی كه دستمزد خود را پیشاپیش می خواهند نباشد! تنها به توانایی های خود بیندیش.'),
(50, '؟', 'اگر تاكنون چندین بار شكست خورده اید، نگویید كه شكست خوردم، تنها بگویید تنبلی كردم. زیرا اگر شخص تنبل نباشد، هیچ گاه شكست نخواهد خورد.'),
(51, 'وین دایر', 'گذشته ی شما بهبود نخواهد یافت، پس آن را رها كنید.'),
(52, 'افلاطون', 'بزرگترین خردمندی، خرد و معرفتی است كه به تنظیم امور خانواده و اجتماع مربوط است و آن، تسلط بر خود و حق طلبی و اعتدال نامیده می شود.'),
(53, 'آنتونی رابینز', 'هنگامی كه دو نفر با هم رابطه ایجاد می‌كنند و دو نظر، باور و یا نگرش بسیار دیگرگون نسبت به امری مشترك دارند، از یكدیگر دوری می‌گزینند و نمی‌توانند به سوی دنیاهای یكدیگر پل بزنند.'),
(54, 'بیل گیتس', 'هر گاه خبرهای بد را به عنوان یك نیاز به تغییر و نه یك خبر منفی پذیرفتید، شما از آن شكست نخورده اید، بلكه چیزهای تازه ای از آن آموخته اید.'),
(55, 'حضرت محمد (ص)', 'مؤمن، عزیز و جوانمرد است (ولی) انسان بدكار، حیله‌گر و پَست می‌باشد.'),
(56, 'ناپلئون بناپارت', 'فن جنگ، نیرومند بودن در یك نقطه ی مشخص و روشن است.'),
(57, 'پائولو كوئیلو', 'عشق، در هیچ شرایطی مانع از برآورده شدن "افسانه ی شخصی" یك مرد نیست و اگر این گونه باشد، یعنی آن عشق راستین نبوده است.'),
(58, 'بولور', 'افكار ما همانند درختان نارنج در گلدان نگهداری می شوند و به نسبت بزرگی گلدانی كه ریشه های آنها را در خود دارد، رشد می كنند.'),
(59, 'فرانسوا ولتر', 'تصور می كنم كه اگر كسی یك ربع ساعت تنها به فكر زندگی خود باشد و بیندیشد كه آن را اصلاح كند، هر ماه از زندگی او بهتر از ماه قبل خواهد شد.'),
(60, 'حضرت محمد (ص)‌', 'كسی كه به مصیبت‌زده‌ای، تعزیت و تسلیّت بگوید، مانند مصیبت‌زده، پاداش دارد. (زیرا مصیبت‌زده¬ای كه در مصیبت خود صبور باشد، از طرف خداوند،‌ به او پاداش داده می¬شود.)'),
(61, 'پائولو كوئیلو', 'انسان باید از گذشته رها شود و از میان راههایی كه به او پیشنهاد می شود، بهترین را برگزیند.'),
(62, 'رابیند رانات تاگور', 'هر چه را كه ندهید از دست داده اید.'),
(63, 'مایك مورداك', 'برای اینكه با افراد فوق‌العاده باشید، هر بهایی كه نیاز است، بپردازید.'),
(64, 'حضرت محمد (ص)', 'حقیقتاً خداوند بزرگ می‌فرماید: من تا زمانی كه بنده‌ام، مرا یاد می‌كند و لب‌هایش برای (ذكر نام من) به حركت در می‌آید، با او هستم.'),
(65, 'میگوئل بوفلر', 'چنین است طبیعت زن: دوستت ندارد تا دوستش داری و چو دوستش نداری دوستت دارد.'),
(66, 'آنتونی رابینز', 'زندگی، پدیده ای دگرگون شونده است، از این رو، قوانین ما باید به گونه ای باشد كه به ما اجازه ی سازگاری، رشد و لذت را بدهد.'),
(67, 'نیچه', 'خودپسندی ما از آنچه به بهترین نحو انجام می دهیم، می طلبد كه آن را سخت ترین كار بدانیم و این، سرمنشاء بسیاری از امور اخلاقی است.'),
(68, 'حضرت محمد (ص)', 'مسواك زدن جزء فطرت (انسان) است. (یعنی فطرت انسان پاكیزگی را دوست دارد و مسواك زدن نیز پاكیزگی دهان را به همراه دارد، پس جزء فطرت است.)'),
(69, 'دانته', 'یك زبان ادبی مشهور، اساسی، زیبا و ظریف باید از پالایش مس بی ارزش گفتار روزمره به دست آید.'),
(70, 'سنگا', 'دلم می خواهد چنان زندگی كنم كه وجود خدا را تنها در سودی كه به دیگران می رسانم، احساس نمایم.'),
(71, 'میكل آنژ', 'ارزش ندارد كه آدمی برای مبارزه كردن با كوته‌فكران، خود را آزرده سازد؛ زیرا پیروزی بر آنها هیچ ارزشی ندارد.'),
(72, 'ویلیام شكسپیر', 'دیرگاهی كه مرگش فرارسید، ذره ذره از پیكرش ستاره بساز! آنگاه طاق نیلگون آسمان را چراغانی خواهد كرد تا جهان عاشق به شب تبدیل شود و هیچ انسانی به ستایش خورشید خودپرست ننشیند.'),
(73, 'دیل كارنگی', 'فراموش نكنیم كه حق شناسی نشانه ای از آموزش درست است. پس اگر از فرزندانمان توقع حق شناسی داریم، باید آنها را حق شناس بار بیاوریم.'),
(74, 'نیچه', 'خودستایی مایل است كه به وسیله ی شما اعتماد به خود را بیاموزد. او از نگاههای شما تغذیه می كند و در دستهای شما تعریف و تمجید نسبت به خود را می بلعد.'),
(75, 'ریچارد براتیگان', 'خیلی خوبه كه صبح ها تنهای تنها از خواب بیدار شی و مجبور نباشی به یه عده بگی كه دوست شون داری، در حالی كه دیگه دوست شون هم نداری.'),
(76, 'افلاطون', 'عشق تنها مرضی است كه بیمار از آن لذت می برد.'),
(77, 'اریك تِیلر', 'زندگی، كوتاهتر از آن است كه حتی دمی از آن را با غم و غصه بگذرانید؛ پس همیشه شاد باشید.'),
(78, 'نیچه', 'دوست می دارم آن را كه روان اش خویشتن، بر باد ده است و نه اهل سپاس خواستن است و نه سپاس گزاردن؛ زیرا كه همواره بخشنده است و به دور از پاییدن خویشتن.'),
(79, 'مثل روسی', 'اگر به میهمانی گرگ می روی، سگ به همراه ببر.'),
(80, 'میكل آنژ', 'عشق، آدمی را به كمال می رساند.'),
(81, 'اسكار وایلد', 'هیچ كس آن قدر ثروتمند نیست كه بتواند گذشته ی خود را بخرد.'),
(82, 'هیلیس میلر', 'تنها زمانی می توانید چیزی را كه ریشه های ژرف در فرهنگ شما دارد به روشنی ببینید كه آن چیز در حال دور شدن از شما و فرو رفتن در دور دست باشد.'),
(83, 'مثل فارسی', 'هر سخن جایی و هر نكته مقامی دارد.'),
(84, 'كنفوسیوس', 'كار دلخواه برگزین تا رنج نبینی.'),
(85, 'شوپن', 'هنر، تلخی های زندگی را افزون می سازد و این تلخی ها، زندگی را شیرین می كند.'),
(86, 'پرمودا باترا', 'هیچ‌كس، از جمله من و شما، آنقدر بی‌فایده نیست كه نتواند به دیگران كمك كند.'),
(87, '؟', 'به دوست خود راز دل مگو كه او نیز به دوست خود گوید.'),
(88, 'بزرگمهر', 'برترین دانش ها یزدان پرستی است.'),
(89, 'حضرت محمد (ص)', 'صبح خوابیدن، مانع از روزی می‌شود. (زیرا صبح‌ها كار و كسب شروع می‌شود و هر كسی دیر برسد،‌ از آن روز،‌ سودی نخواهد برد.)'),
(90, 'ویكتور هوگو', 'زندگی، گلی است كه عشق، شهد آن است.'),
(91, 'سعدی', 'اندیشه كردن كه چه بگویم، به از اینكه بگویی چرا گفتم.'),
(92, '؟', 'تا كاری نكنید، چیزی تغییر نمی‌كند.'),
(93, 'مثل', 'آدم زنده، زندگی می خواد.'),
(94, 'نیچه', 'این تاج مرد خندان، این تاج گل سرخ را من خود بر سر نهادم. من خود خنده ی خویش را مقدس خواندم. بهر چنین كاری هیچ كس دیگر را امروز چندان كه باید نیرومند نیافته ام.'),
(95, 'جك كانفیلد', 'اگر می‌خواهید از نظر مادی كامروا شوید، هشیار باشید و نه تنها به درستی بدانید كجا هستید، بلكه به درستی بدانید به كجا می‌خواهید برسید و برای رسیدن به آن مرحله به چه چیزهایی نیاز دارید.'),
(96, 'حضرت محمد (ص)', 'كسی كه بدون شناخت گمشده‌ای به او پناه دهد،‌ گمراه است. (باید از هویّت افراد گمشده مطمئن بود وگرنه بدون شناخت آنها، باعث می‌شود مشكلاتی برای انسان به وجود آید.)'),
(97, 'حضرت محمد (ص)', 'هر كه در دنیا سیرتر است در قیامت گرسنه‌تر است.'),
(98, 'نیچه', 'هر اندازه كمتر توان فرماندهی داشته باشیم، بیشتر می خواهیم فرمان پذیر و تحت تسلط باشیم.'),
(99, 'رودلف فلش', 'اندیشه‌ی آفریننده، ممكن است فقط برای دریافتن این امر باشد كه دلیلی ندارد همان گونه رفتار كنیم كه پیش از این، رفتار می‌شده است.'),
(100, 'حضرت محمد (ص)', 'بندگان خود را به قدر عقل ایشان مورد عتاب قرار دهید.'),
(101, 'نیچه', 'حماقت های هوشمندان را باور نمی كنیم؛ چه لطمه هایی به حقوق بشر!'),
(102, 'امام علی (ع)', 'مال و فرزندان، كِشتگاه دنیاست و عمل صالح، محصولی از كِشتگاه دنیا برای آخرت است.'),
(103, ' مثل فارسی', 'دشمن دانا از دوست نادان بهتر است.'),
(104, 'فرناندو پسوا', 'هر یك از ما جامعه ای كامل است.'),
(105, 'دكارت', 'رقابت تا زمانی پسندیده است كه كار را به حسادت نكشاند.'),
(106, 'استیو چندلر', 'برای خودتان، آیین و تشریفاتی به وجود آورید كه تنها از آن خودتان باشد و با یك راه "میان‌بر"، شما را به دگرگونی برساند.'),
(107, 'هالی تربون', 'دانش بدون تكامل اخلاقی خطرناك و نابود كننده است.'),
(108, 'آنتوان دوسنت اگزوپری', 'سرچشمه ی همه سوءتفاهم ها زیر سر زبان است.'),
(109, 'نیچه', 'ما در خواب و رویا انسانی را می آفرینیم و به او جان می دهیم و بعد هم در آمد و شد با او، این موضوع را از یاد می بریم.'),
(110, 'میگوئل د اونامونو', 'كسی كه زیاد سفر می كند قصدش فرار از مبدأ است نه رسیدن به مقصود.'),
(111, '؟', 'ذهن مانند چتر نجات است؛ فقط زمانی به كنش می‌پردازد كه باز شده باشد.'),
(112, 'حضرت محمد (ص)', 'پاداش كسی كه در حال گشایش (و نداشتن مشكل) بخشش می-كند، از كسی كه در حال نیاز، آن را می¬پذیرد، بیشتر نیست. (فقیر نیز در صورت نیاز و رعایت جوانمردی، ثواب زیادی می¬برد.)'),
(113, 'امام علی (ع)', 'به درستی كه چیزی بدتر از شرّ نیست، جز كیفر آن و چیزی بهتر از خیر نیست، جز پاداش آن.'),
(114, 'نیچه', 'خرد اندیشی همچون دمل آگینی [ = آلوده ] است كه پنهان می خزد و هیچ جا روی نشان نمی دهد تا آنكه تن سراپا از دملها پر شود و بگندد.'),
(115, 'امام موسی (ع)', 'هر كه مست شود از شراب و بعد از آن تا چهل روز بمیرد نزد خدا مانند بت پرست باشد.'),
(116, 'آنتونی رابینز', 'یكی از سست‌كننده‌ترین باورهایی كه می‌توانیم داشته باشیم، آن است كه گمان كنیم رویدادها، امور و پدیده‌ها در كنترل ما نیستند.'),
(117, '؟', 'خوشبختی به كسانی روی می آورد كه برای خوشبخت كردن دیگران می كوشند.'),
(118, 'كرك داگلاس', 'برای رسیدن به هر چیزی باید شجاعت شكست خوردن را داشته باشی.'),
(119, 'گاندی', 'خود را قربانی كنیم بهتر است كه دیگران را.'),
(120, 'سعید نفیسی', 'بالاترین رمز كامیابی اینست كه انسان چیزی بگوید و كاری بكند و چیزی را بخواهد كه دیگران معمولاً آنرا نمی گویند و نمی كنند و نمی خواهند، یا در گفتن و كردن و خواستن آن تردید دارند.'),
(121, 'ارد بزرگ', 'در كنارمان دلبر هست و اگر نیست، در سفر رسیدن به اویم؛ پس تنهایی وجود ندارد.'),
(122, 'سنت فرانسیس', 'هیچ كس به اندازه ی ابلهی كه زبانش را نگه می دارد، به یك مرد عاقل شباهت ندارد.'),
(123, 'امام علی (ع)', 'مردم فرزندان دنیا هستند و مرد به محبت مادرش توبیخ نمی‌شود.'),
(124, 'نیچه', 'پختگی مرد یعنی كشف دوباره همان جدیتی كه در كودكی و به هنگام بازی داشته ایم.'),
(125, 'مثل انگلیسی', 'حیوان به پایش بسته می شود، انسان به قولش.'),
(126, 'كری گرانت', 'مهم این است كه بدانید از كجا آمده اید و به این شكل می توانید بفهمید كه به كجا می روید.'),
(127, 'آبراهام مازلو', 'افرادی كه پیشه‌ی خود را عاشقانه دوست می‌دارند، می‌خواهند با پیشه‌ی خود، یكی و تركیب شوند و آن را به صورت ویژگی ستودنی خویشتن دربیاورند. در این صورت، پیشه، خود، بخشی از خویشتن‌ آنها می‌شود.'),
(128, 'فرناندو پسوا', 'آرامش تنها از آرامش نشات می گیرد.'),
(129, 'جرج برنارد شاو', 'هیچ گاه در اندیشه ی مرگ نباشید، بی گمان، مرگ در اندیشه ی شماست.'),
(130, 'دیل كارنگی', 'نباید یكی از مصلحان بزرگ باشید تا در راه اصلاح دنیا قدم بردارید.'),
(131, 'حضرت محمد (ص)', 'وعده دادن مؤمن، حقّی واجب است. (‌كه مؤمن باید آن را ادا كند.)'),
(132, 'حضرت محمد (ص)', 'اگر سختی آمده و وارد سوراخی (هم) شود، آسانی می‌آید و داخل آن جا شده و سختی را بیرون می‌كند. (پس هیچ سختی وجود ندارد مگر این كه یك آسانی را به همراه خود دارد.)'),
(133, 'نیچه', 'بدترین پاداش یك استاد این است كه دانشجویانش تا ابد شاگرد وی باقی بمانند.'),
(134, 'پرمودا باترا', 'سخنرانی نكنید؛ مرد عمل باشید.'),
(135, 'حضرت محمد (ص)', 'سه چیز است كه در هر كس باشد، ایمانش كامل است: مردی كه در راه خدا از سرزنش ملامت كننده ترسی ندارد و در چیزی از عملش، ریا نمی‌كند و زمانی كه دو كار بر او پیش آمد كه یكی برای دنیا و دیگری برای آخرت باشد، كار مربوط به آخرت را بر دنیا اختیار می‌كند.'),
(136, 'حضرت محمد (ص)', '‌خداوند رحمت كند كسی را كه زبان خود را (‌از سخن زشت مثل تهمت و غیبت و دشنام و سخن‌چینی) حفظ كند.'),
(137, 'ویكتور هوگو', 'آینده ی كودكان بسته به تربیت پدر و مادر است.'),
(138, 'فرناندو پسوا', 'ما تنها دارنده ی ادراك شخص خود هستیم و باید از این پس، بر آن و نه بر آنچه كه می بینیم واقعیت زندگی مان را بنا كنیم.'),
(139, 'آنتونی رابینز', 'هیچ چیز به خودی خود دارای معنا نیست، بلكه احساسات، رفتارها و واكنش های ما نسبت به هر چیز بستگی به نحوه ی ادراك و تصور ما از آن چیز دارد.'),
(140, 'جبران خلیل جبران', 'روح غمگین، در تنهایی آرام می‌گیرد و از انسانها می‌هراسد؛ چون آهویی زخمی كه گله را به جا نهاده و به زندگی غار رو می‌آورد تا بهبود یافته یا بمیرد.'),
(141, 'نادین استیر', 'اگر یك بار دیگر به دنیا می آمدم بسیار سبك تر گردش می كردم. در بهار با پای برهنه زودتر به راه می افتادم و در خزان با همان پاها دیرتر برمی گشتم. بیشتر می رقصیدم، بانشاط بیشتر اسب سواری می كردم و داوودی های بیشتری می چیدم.'),
(142, 'لئوبوسكالیا', 'خوب است فراموش نكنیم كه عشق، همانند زمان، چشم به راه كسی نمی‌ماند.'),
(143, 'داستایوسكی', 'انسان موجودی است كه به همه چیز عادت می كند.'),
(144, 'مثل', 'به امید فردا زندگی نمی توان كرد.'),
(145, 'آندره میتوس', 'بهترین راه شاد زیستن، انجام كار برای دیگران است. ما حتی از لحظه تصمیم به شاد كردن دیگران احساس بهتری خواهیم داشت.'),
(146, 'حضرت محمد (ص)', 'زمانی كه خداوند خوبی بنده‌ای را بخواهد، برای او پند دهنده‌ای در درونش قرار می‌دهد تا او را (به كارهای خوب) امر كرده و (از كارهای بد) نهی نماید.'),
(147, 'فرانسوا ولتر', 'كار و كوشش ما را از سه عیب دور می دارد: افسردگی، دزدی و نیازمندی.'),
(148, 'حضرت محمد (ص)', 'در قبرها (و عاقبت انسان كه سرازیر قبر می¬شود) بیندیش و از قیامت، پند بگیر (كه انسان باید پاسخ¬گوی تمام اعمال بد خود باشد.)'),
(149, 'امام علی بن الحسین (ع)', 'هر كه زنی به مؤمنی بدهد كه به او انس گیرد حق تعالی ملكی را در قبر مونس او گرداند به صورت محبوب‌ترین اهل او نزد او.'),
(150, 'جان ماكسول', 'وقتی انسان با دیگران به گونه ای ثمربخش ارتباط برقرار كند، شناسایی به وجود می آید و این شناسایی به نوبه خود منجر به نفوذ می شود.'),
(151, 'بزرگمهر', 'اگر مرگ حق است، دل بر جهان نهادن عین نادانی است.'),
(152, 'آلك بورن', 'می توان یك میلیون حقیقت را در مغز انباشت، اما همچنان بی سواد بود.'),
(153, 'هولمس', 'از این امر به خود نبالید كه دوستی به شما اجازه می دهد حرفهای ناپسند به دوستان صمیمی خود بگویید. هر چه روابط شما با كسی نزدیكتر باشد، متانت، احترام و مهربانی بیشتری ضرورت پیدا می كند.'),
(154, 'الكساندر پوپ', 'احمق ها تحسین می كنند و خردمندان تایید.'),
(155, 'سعید نفیسی', 'تنها، كسی كه هنر دارد و كاری از او ساخته است می تواند به فردای خویش اطمینان كند.'),
(156, 'جبران خلیل جبران', 'گروهی از مردم اندكی از ثروت كلان خویش را می بخشند و آرزویی جز شهرت ندارند. این خودخواهی و این شهرت پرستی كه به طور ناخودآگاه گرفتارش هستند بخشش آنها را تباه می سازد.'),
(157, 'لئوبوسكالیا', 'با عاشق شدن است كه ژرف‌ترین شادی، آرامش و امنیت ممكن را تجربه می‌كنیم و به ژرف‌ترین وجه درمی‌یابیم كه یكی بودن، چه اندازه شگفت‌آور است.'),
(158, 'بودا', 'اگر كسی با وانهادن خوشی اندك، خوشی بزرگ بیند، پس فرزانه نیز شاید كه خوشی اندك وانهد و به خوشی بزرگ نِگَرَد.'),
(159, 'ماكس فریدلندر', 'هر دوران، دیدی جداگانه به دست می آورد.'),
(160, 'ریچارد تمپلر', 'اگر می خواهید دوست باشید، یك دوست خوب باشید.'),
(161, 'گریستن', 'آن كه از دست روزگار به خشم می آید، هر آنچه آموخته بیهوده بوده است.'),
(162, 'حضرت محمد (ص)', 'برای كسی، در معصیت و گناه، اطاعت نیست (كسی نمی‌تواند با گناه كردن بگوید طاعت خدا می‌كنم) و اطاعت فقط در انجام دادن كار نیك است.'),
(163, 'استیون سمیت', 'در پنجاه سال نخست زندگی مراقب شكم خود باشید تا در پنجاه سال دیگر، شكم از شما مراقبت كند.'),
(164, 'حضرت محمد (ص)', 'بهترین عبادت، پنهان‌ترین آن می‌باشد. (تا انسان از ریا دور شده و به اخلاص نزدیك‌تر باشد.)'),
(165, 'آنتونی رابینز', 'رسیدن به برخی چیزها ایمان محكم و انرژی و تلاش فراوان می خواهد، گرچه می توان به آنها رسید، اما باید به راستی كار كرد.'),
(166, 'آلدوس هاكسلی', 'پس از سكوت، موسیقی، نزدیكترین امر به بیان ناگفته‌هاست.'),
(167, 'دكارت', 'من در هر چه شك كنم، در این شك نمی توانم كرد كه شك می كنم و چون شك می كنم، می اندیشم؛ می اندیشم، پس هستم.'),
(168, 'آنتونی رابینز', 'هر روز به گونه ای زندگی كنید كه گویی آن روز، مهمترین روز زندگی شما است.'),
(169, 'جك كانفیلد', 'آینده از آن شماست؛ آن را ببینید، احساس كنید و باور كنید.'),
(170, 'حضرت محمد (ص)', 'همانا مؤمن (‌هم) با شمشیر و (هم)‌ با زبان خود (در برابر دشمنان اسلام) ‌می‌جنگد.'),
(171, 'رُز كندی', 'این سالها نیستند كه زندگی را می سازند، بلكه لحظاتند.'),
(172, 'رابرت لوئیس استیونسون', 'دوست، هدیه‌ای است كه شما به خودتان می‌دهید.'),
(173, 'بیل هریس', 'تنها هنگامی كه نقش خودتان را در زندگی، مشخص و قدرت خودتان را درك كنید، امكان درست كردن وضعیت زندگی تان و آفرینش داستانی متفاوت [ =دیگرگون ] وجود خواهد داشت.'),
(174, 'پائولو كوئیلو', 'پیچ و خم ها برای كاروان اهمیت ندارد، چون هدف همواره ثابت است.'),
(175, 'هایدگر', 'اگر راه رسیدن و تقرب به خداوند، ایمان باشد و [شرط] وارد شدن به ابدیت، چیزی جز همین ایمان نباشد، پس فلسفه هیچگاه ابدیت نخواهد داشت.'),
(176, 'اشو', 'انسان، آزاد به دنیا می آید؛ او هیچ سرنوشتی ندارد. اگر سرنوشتی وجود داشت، آزادی انسان از بین می رفت و او تبدیل به یك دستگاه می شد.'),
(177, 'ران كافمن', 'عشق ورزیدن به انسان‌هایی كه دوست‌شان نداریم، می‌تواند سبب دگرگونی هر دو نفر شود.'),
(178, 'میلان كوندرا', 'آن كسی بازیگر است كه از كودكی می پذیرد تمامی زندگی خود را برای مردم ناشناس به نمایش گذارد. اگر كسی به این كار بنیادی تن ندهد– كه هیچ ربطی به استعداد ندارد و چیزی ژرفتر از آن است – نمی تواند بازیگر شود.'),
(179, 'جان اشتاین بك', 'سرشت آدمی‌ این است كه همچنان كه بر سن او افزوده می‌شود، از دگرگونی نافرمانی كند، به ویژه با بهبود یافتن.'),
(180, 'بنجامین فرانكلین', 'از هزینه های كوچك و غیر ضروری دوری كن. زیرا یك سوراخ كوچك موجب غرق شدن یك كشتی بزرگ می شود.'),
(181, 'حضرت محمد (ص)', 'كسی كه داخل خانه‌ی خود شود سلام بكند كه سبب بركت می‌شود و ملائكه در آن خانه انس می‌گیرند.'),
(182, '‌حضرت محمد (ص)', 'همانا یكی از سعادت‌های هر شخصی این است كه عمرش، طولانی شود و خداوند، توبه كردن را، روزیش نماید.'),
(183, 'پائولو كوئیلو', 'هم می توان دنیا را با چشمان یك غارت شده ی بدیخت نگریست و هم با چشمان یك ماجراجوی در جستجوی گنج.'),
(184, 'فرانكلین برود', 'همواره آنچه را كه خواستار آن هستید، نمی توانید به دست آورید، ولی آنچه را هم كه خواهانش نیستید، به كف نخواهید آورد، مگر اینكه یك بیماری واگیردار باشد.'),
(185, 'امام علی (ع)', 'روز محاسبه‌ی مظلوم بر ظالم، سخت‌تر است از روز ستم ظالم بر مظلوم.'),
(186, 'دورنر', 'درحقیقت پیش از آنكه آدمی مالك وجدان باشد، وجدان، مالك آدمی است.'),
(187, 'كونی', 'اساس آموزش و پرورش ساختن ماشین نیست، بلكه ساختن انسان است.'),
(188, 'گای فینلی', 'جرأت پیشروی داشته باشید، حتی زمانی كه می‌ترسید.'),
(189, 'امام علی (ع)', 'شقی آن كسی است كه از هوا و غرور خود فریب خورد.'),
(190, 'امام علی (ع)', 'هر كس بدون آشنایی با فقه به تجارت پرداخت، خود را در معرض ربا قرار داد.'),
(191, 'ماهاتما گاندی', 'آنچنان زندگی كن كه گویی فردا خواهی مرد و آنچنان بیاموز كه گویی تا ابد زنده خواهی ماند.'),
(192, 'حضرت محمد (ص)', 'آیا به شما به ساده‌ترین عبادت خبر ندهم كه آسان‌ترین عبادت بر بدن است؟ (نه تنها بدن خسته نمی‌شود، بلكه به نفع روح و جسم انسان است آن عبادات عبارتند از:) سكوت و خوش خلقی.'),
(193, 'چستر فیلد', 'اگر می خواهید احساسات حقیقی شنونده خود را دریابید، درست در صورت وی بنگرید، چون او می تواند كلمات را در فرمان خود داشته باشد، ولی قیافه و چهره به این آسانی در فرمان او قرار نمی گیرد.'),
(194, 'ابوالعلاءمُعری', 'دوستان دو گونه اند : یكی آنان كه همیشه شما را می خندانند و از ایشان خیری نخواهید دید، دیگر آنان كه عیب شما را می گویند و شما را به اندیشه وا می دارند؛ قدر ایشان را بدانید.'),
(195, 'پائولو كوئیلو', 'بهترین راه شناخت و نابودی یك دشمن این است كه خود را دوست او بدانیم.'),
(196, 'دن رابی', 'عادتهای ما در منش، تندرستی و كمابیش، همه ی جنبه های زندگی مان تاثیر می گذارند.'),
(197, 'فردوسی', 'ابلیس مانند نیكخواهان پیش می آید؛ ابتدا عهد و پیمان می گیرد، سپس راز می گوید.'),
(198, 'حضرت محمد (ص)', 'خداوند، بنده‌ای را رحمت كند كه زمان فروش و زمان خرید و موقع پرداختن و موقع گرفتن سهل بگیرد.'),
(199, 'افلاطون', 'عشق، نزدیكترین دوست آدمیان است و شفابخش دردهایی است كه راه خوشبختی و سعادت را بر بشر فرو بسته اند.'),
(200, 'حضرت محمد (ص)', '(‌سخن) ‌حقّ را بگویید، اگر چه تلخ باشد (و دیگران آن را نپسندند.)'),
(201, 'ذیمقراطیس', 'آنگاه كه خرد، شكست خورده ی خشم تو است، خود را انسان به شمار نیاور.'),
(202, 'حضرت محمد (ص)', 'روزه بگیرید،‌ تا سالم بمانید. (و ‌امروزه از نظر علم پزشكی سلامتی جسمی انسان به واسطه‌ی روزه به اثبات رسیده است.)'),
(203, 'امام علی (ع)', 'هر كس دورن خود را اصلاح كند، خداوند هم آشكار او را اصلاح فرماید و هر كس برای دین خود عمل كند، خداوند برای امر دنیای او كفایت كند و هر كس رابطه‌ی بین خود و خدا را نیكو نماید، خداوند رابطه‌ی بین او و مردم را نیكو فرماید.'),
(204, 'بلر وارن', 'باید جستجوی دانش، جایگزین جستجوی هدف شود.'),
(205, 'ژاك كاستو', 'اگر انسان به هر دلیل، فرصت هدایت زندگی بسیار خوبی را داشته باشد، حق دارد كه آن فرصت‌ را برای خودش نگه دارد.'),
(206, 'امام علی (ع)', 'مشورت با جماعتی بكن كه از خدا ترسند.'),
(207, 'حضرت محمد (ص)', 'مدارا كردن با مردم، صدقه است. (زیرا انسان مهربانی را به دیگران بذل می¬كند.)'),
(208, 'یوهان اسمیت', 'پایه ی دوستی این است كه هرچه دادید، فراموش كنید و هرچه گرفتید، به یاد بسپارید.'),
(209, 'حضرت محمد (ص)', 'قبل از خریدن خانه به دنبال همسایه‌ی خوب باشید (و بعد از آن كه از همسایه‌ی خود مطمئن شدید، اقدام به خریدن خانه كنید) و قبل از رفتن به راهی (سفر)، دوست پیدا كنید.'),
(210, 'بوسكالیا', 'یك زندگی را زمانی می شود با خوشبختی همراه دانست كه آغازش با عشق باشد و پایانش با جاه طلبی.'),
(211, 'اُرد بزرگ', 'آدم خودباور هیچ گاه برای رسیدن به مادیات، ارزشهای انسانی را زیر پا نمی گذارد.'),
(212, 'فرناندو پسوا', 'چیزی كه نوشته شده هم یك موجود زنده است، كلمه اگر دیده یا شنیده شود كامل است.'),
(213, 'رومن رولان', 'اگر هنر و حقیقت نمی توانند با هم زنده بمانند، بگذار هنر بمیرد.'),
(214, 'ج. ك. چسترتن', 'راه عشق ورزیدن به چیزی، این است كه بدانیم شاید از دست‌مان برود.'),
(215, 'هنری دیوید تورئو', 'نیازی نیست با سختی یا فشار، به خرد راستین دست یافت، بلكه خرد با سرخوشی و نشاط كودكانه به دست می‌آید. اگر به این امر آگاه باشید، بیش از هر چیزی باید سرزنده باشید.'),
(216, 'فرانك اسكولی', 'چرا خودمان را به سر شاخه نرسانیم؟ مگر آنجا محل رویش میوه نیست؟'),
(217, 'آنتونی رابینز', 'كارهایی را كه می توانیم یا نمی توانیم بكنیم و آنچه را كه شدنی یا نشدنی می پنداریم، به ندرت، برآمده از توانایی راستین ما بوده و بیشتر از باورهایی كه نسبت به خود داریم، سرچشمه می گیرد.'),
(218, 'چارلی چاپلین', 'وقتی زندگی صد دلیل برای گریه كردن به تو نشون می ده، تو هزار دلیل برای خندیدن به اون نشون بده.'),
(219, 'جان ماكسول', 'رهبران برخوردار از بینش و بصیرت می دانند كه كدام نیمه را باور كنند.'),
(220, 'حضرت محمد (ص)', 'هر كه مار را برای این نكشد كه كشتن آن گناه است از من نیست اما اگر برای این نكشی كه حیوانی است و به تو آزاری نمی‌رساند باكی نیست.'),
(221, 'جیم رآن', 'آنچه كه به دست می‌آوریم، سبب ارزشمندی ما نمی‌شود، بلكه چیزی كه در فرآیند كنش‌ها می‌شویم، ارزش را به زندگی ما می‌آورد.'),
(222, 'ژان روستان', 'من اگر در بهشت باشم، ولی به من بگویند حق نداری جهنم را به این بهشت ترجیح دهی، از آن بهشت بیرون می روم.'),
(223, 'حضرت محمد (ص)', 'سفر، بخشی از عذاب است. (زیرا با امكانات آن روز و زمین ناهموارش، مردم به سختی مسافرت می‌كردند، اگرچه الان نیز با بعضی از وسائل، مسافرت كردن، مشكل است.)'),
(224, 'حضرت محمد (ص)', '(‌سرنوشت) انسان بدبخت و خوشبخت به قلم رفته است. (یعنی نوشته شده است.)‌'),
(225, 'ویكتور هوگو', 'انسان اندیشمند، بیشتر، انسانی بردبار است.'),
(226, 'حضرت محمد (ص)', 'جبرئیل به نزد من نیامد مگر این كه مرا به مسواك زدن (از طرف خداوند) امر می‌كرد تا جایی كه ترسیدم باید جلوی دهان خود را ببرّم. (تا دهان با دندان شروع شود و لبی در كار نباشد.)'),
(227, 'ویلیام جیمز', 'عاقل كسی است كه می داند چه كارهایی را باید كنار بگذارد.'),
(228, 'ماری كوری', 'در زندگی، از چیزی نباید ترسید، باید آن را درك كرد.'),
(229, 'ویكتور هوگو', 'هر زن پاكدامنی، زیبا و دلپسند است.'),
(230, 'هانری دونومتر', 'بسیار نادر است، كلمه هایی كه ارزششان بیشتر از سكوت باشد.'),
(231, 'پیتر اوبروت', 'ارزش و آبرو، بیست درصد دادنی است و هشتاد درصد، گرفتنی... پس آن را بگیرید!'),
(232, 'آبراهام لینكلن', 'مصمم به نیك بختی باش، نیك بخت می شوی.'),
(233, 'حضرت محمد (ص)‌', 'من، برای آوردن دین آسان، مبعوث شده¬ام و كسی كه با سنت من (آسانی در دین)‌ مخالفت كند (و سخت گیری نماید)‌ از من نیست.'),
(234, 'حضرت محمد (ص)', '‌اساس عقل بعد از ایمان به خدا، دوستی با مردم است و انجام كار نیك با هر انسان خوب و بدكاری كه باشد.'),
(235, 'حضرت محمد (ص)', 'كسی نمی‌میرد، مگر این كه (باید) ‌به خداوند، گمان خوب داشته باشد. (یعنی خداوند در بعد از مرگ، با عدالت كامل، رفتار می‌كند.)'),
(236, 'جواهر لعل نهرو', 'اكنون روزگاری است كه شخصی كه هیچ كار نمی كند پولهای اضافی هنگفتی به دست می آورد، در حالی كه بیشتر كسانی كه با زحمت و سختی، كار زیادی انجام می دهند هیچ سهمی از آن به دست نمی آورند!'),
(237, 'امام علی (ع)', 'خواب كردن پیش از نماز طلوع آفتاب و پیش از نماز خفتن پریشانی و فقر می‌آورد.'),
(238, 'حضرت محمد (ص)', 'خوشا به حال كسی كه نادانی را (با تلاش جهت یادگیری) رها كند و كارهای ثواب به جا بیاورد و به عدالت رفتار نماید.'),
(239, 'نیچه', 'هر كه كوهها را جا به جا كند دره ها و پستی ها را نیز جا به جا می كند.'),
(240, 'لئو نیكولایویچ تولستوی', 'بشریت به ظاهر نیست، به باطن است.'),
(241, 'ریچارد تمپلر', 'اگر به هر روز، چنان كه گویی روز مهمی است، درود بگویید، بر سرافرازی، احترام [ =بزرگ داشتن ] و خودباوری شما تاثیری شگرف بر جای خواهد گذاشت.'),
(242, 'حضرت محمد (ص)', 'اگر ده نفر از یهودیان به من ایمان آورده بودند، تمام یهودیان به من ایمان می‌آوردند.'),
(243, 'گابریل گارسیا ماركز', 'زمانی كه یك نوزاد برای بار نخست، انگشت پدرش را با مشت كوچك خود می گیرد و می فشارد، آن را برای همیشه گرفته است.'),
(244, 'حضرت محمد (ص)', 'به وسیله‌‌ی ازدواج (از خدا) روزی طلب كنید. (زیرا با ازدواج یك جوان به ناچار برای امرار معاش خود و زن و فرزندانش تلاش می‌كند.)'),
(245, 'پائولو كوئیلو', 'احساس پیش از وقوع، شیرجه ی سریع روح در جریان جهانی حیات است كه تاریخچه ی زندگی همه ی انسانها در آغوش آن به هم می پیوندد و یگانه می گردد، به گونه ای كه می توانیم همه چیز را بدانیم، چون همه چیز در آن نوشته است.'),
(246, 'فرانسوا لارشفوكو', 'دوستان خود را از بین طبقه ی فقیر برگزینید؛ چه صمیمیت در قلوب آنها بیشتر حكمفرما است.'),
(247, 'حضرت محمد (ص)', 'وای به حال ثروتمندان، نسبت به فقراء. (كه اگر از حال آنها، غافل شوند، به عذاب دردناكی دچار خواهند شد.)'),
(248, 'فرانسوا ولتر', 'كتاب بر دنیای تمدن فرمانروایی می كند.'),
(249, 'بقراط', 'انسان باید خود را به دو چیز عادت دهد : جفای ایمان و ستم بشریت.'),
(250, 'حضرت محمد (ص)', 'از خدا بترسید و میان فرزندان خود به عدالت رفتار كنید همان طوری كه دوست دارید با شما به نیكی رفتار كنند.'),
(251, 'لئو نیكولایویچ تولستوی', '«عشق ورزیدن كافی است، آنگاه همه چیز لذت بخش است.');
INSERT INTO `quotations` (`id`, `author`, `text`) VALUES
(252, 'كلود برنار', 'انسان چیزی نمی‌آموزد، مگر با سفر از شناخته‌ها به ناشناخته‌ها.'),
(253, 'میگوئل سروانتس ساآودِرا', 'قلم، زبان ذهن است.'),
(254, 'سعدی', 'خشم بیش از حد، وحشت آرد و لطف بی وقت هیبت ببرد.'),
(255, 'میلتون', 'كسی كه نخواهد امید خود را به نوشتن درباره ی چیزهای ستایش انگیز از دست بدهد، خود باید یك شعر حقیقی، یك اثر و الگوی بهترین و شریف ترین چیزها باشد.'),
(256, 'اریك نیوتن', 'یكی از موجبات پیدایش زیبایی این است كه در خمیره ی مأنوس و فهمیدنی، اندك مایه ای از نامأنوس و نافهمیدنی افزوده شود.'),
(257, 'جك كانفیلد', 'در طی سال‌ها آموخته‌ام كه هرگاه انسان می‌پندارد دری بسته شده است، بی‌گمان، در دیگری باز می‌شود. فقط باید مثبت باشید، آگاه بمانید و بنگرید و ببینید فرصتی كه پیش می‌آید چیست.'),
(258, 'گای فینلی', 'اگر شیوه ی نگریستن خود را به زندگی دگرگون كنید، زندگی‌تان دگرگون می‌شود.'),
(259, 'ایمانوئل كانت', 'خدا را باور كنید، برای اینكه به چنین باوری محتاجید.'),
(260, 'مثل انگلیسی', 'هر كار ارزشمند، ارزش آن را دارد كه آغاز بدی داشته باشد.'),
(261, 'باربارا دی آنجلیس', 'تنها با عشق میان دلهایتان است كه عشق شما عمق و استحكام حقیقی خود را نشان خواهد داد.'),
(262, 'آنتونی رابینز', 'استعدادهای درون خود را كشف و شكوفا كنید.'),
(263, 'استیو چندلر', 'با ایجاد پندار نیرومند، می‌توان به بالا رفتن امكان هر رویدادی كمك فراوان كرد.'),
(264, 'آبراهام مازلو', 'فرد خودشكوفا به گونه‌ی خود به خود و طبیعی به كنش می‌پردازد و آسان‌تر در قالب خود قرار می‌گیرد تا در قالب دیگران.'),
(265, 'حضرت محمد (ص)', 'هیچ بنده‌ای، كار (‌زشتی)‌ را به خاطر خداوند ترك نمی‌كند، مگر اینكه خداوند، آنچه كه برای دین و دنیایش بهتر باشد، به او می‌دهد.'),
(266, 'والت ویتمن', 'من بر این باورم كه دیدن یك برگ علف، كمتر از سفر به ستارگان نیست.'),
(267, 'حضرت محمد (ص)', 'از بیمار خود، عیادت كنید و جنازه‌های (برادران ایمانی) را مشایعت نمایید تا آخرت را به یاد شما بیندازد.'),
(268, 'حضرت محمد (ص)', 'حقیقتاً فرزند، (موجب) بخل، ترس، نادانی و غم است. (پس اولیاء وظیفه دارند این صفات را از او دور سازند.)'),
(269, 'آبراهام مازلو', 'ارج نهادن، برای از بین بردن احساس بی‌ارزشی فرد، داروی بسیار كارآمدی است.'),
(270, 'بزرگمهر', 'خودرایی و خودبینی، همه كام و مراد خود طلبیدن و دیگران را نامراد و خوار و زبون خواستن، راه اهرمن و دل به نیكی سپردن، راه یزدان است.'),
(271, 'حضرت محمد (ص)', 'سَرور هر قومی خدمت‌گذار آن قوم است و (ساقی كسی كه آب تقسیم می‌كند) ‌آخر از همه می‌نوشد.'),
(272, 'گوته', 'زندگی را هر گونه كه نگاه می كنی زیبا است.'),
(273, 'ریچارد باخ', 'هر آنچه كه یك استاد می گوید، واژه هایی زیبا هستند كه نمی توانند او را رهایی بخشند؛ آنهم از نخستین حمله ی یك سگ هار در یك چراگاه.'),
(274, 'ژان پل سارتر', 'مردم از هر چیزی سخن می گویند، به ویژه از آنچه درباره اش هیچ نمی دانند.'),
(275, 'ارد بزرگ', 'رسانه تنها می تواند پژواك ندای مردم باشد، نه اینكه به مردم بگوید شما چه بگویید كه خوشایند ما باشد.'),
(276, 'فلسفه ی ذِن', 'پیش از رسیدن به مقام روشن‌بینی، هیزم بشكن و آب بیاور؛ پس از رسیدن به مقام روشن‌بینی، هیزم بشكن و آب بیاور.'),
(277, 'دیل كارنگی', 'بگذارید هر كس بر مبنای باور، فكر، آرزو، مطالعه و دانسته های خود قضاوت كند، نه اینكه شخص طوطی صفت گفته دیگران را بازگو كند.'),
(278, 'آنتونی رابینز', 'چنانچه كامیابی‌ها و دستاوردهای شما به زندگی‌تان مفهومی نبخشند، همه بیهوده خواهند بود.'),
(279, 'باربارا دی آنجلیس', 'چنانچه می خواهید راه خود را به سوی عشق و شور زندگی بازیابید، باید راه دل و قلب خود را بیابید. آنجا، در مركز وجودی شما، تمامی آنچه هستید سكونت دارد. شما خود نور هستید؛ شما شور و شادمانی هستید؛ شما از جنس عشق هستید.'),
(280, 'مَت بَكَك', 'مردم بیشتر به رفتار شما اهمیت می دهند تا به سخنانی كه می گویید.'),
(281, 'جبران خلیل جبران', 'قلبت را دنبال كن...قلب تو برای هر كار بزرگی راهنمای درستی است. تقدیر هر كاری كه انجام می دهی با آن عنصر قدسی كه درون هر یك از ماست تعیین می شود.'),
(282, 'امام جعفر صادق (ع)', 'هر كه خرج دو دختر یا دو خواهر یا دو خاله یا دو عمه را بكشد از آتش جهنم حاجب او باشند.'),
(283, 'گیل لیندن فیلد', 'كاری پسندیده است كه از آن احساس لذت كنیم و نیازهای روانی ما را بهیود بخشد و این امر، هرگز ارتباطی به میزان دریافت مادی ما ندارد.'),
(284, 'سیسرو', 'انسانها در هیچ یك از ویژگی هایشان به اندازه نیكی كردن به همنوعان خویش، خدای گونه نیستند.'),
(285, 'ریچارد تمپلر', 'شما وظیفه دارید در برابر پدر و مادر خود، با ادب، سنجیده، شكیبا و دارای روحیه ی همكاری باشید.'),
(286, 'امام جعفر صادق (ع)', 'سه چیز است كه موجب راحت مؤمن‌اند: خانه‌ی گشاده كه عیب‌ها و امور مخفی او را از مردم پنهان دارد، و زن صالحه كه بر امور دنیا و آخرت او را یاری نماید، و دختری یا خواهری كه او را از خانه بیرون كند یا به مردن یا به شوهر دادن.'),
(287, 'هربرت كاسون', 'بسیاری از افراد مانند واگن های قطار باید به كار كشانده شوند. تنها عده ی كمی مانند لوكوموتیو هستند كه می توانند خود با اراده و اختیار خود كار كنند و یا دیگران را وادار به كار نمایند.'),
(288, 'جبران خلیل جبران', 'كوه در نزد كوهنورد، بزرگتر و بهتر آشكار می‌شود تا اینكه آن را از دشتی دور ببیند.'),
(289, 'آرتور شوپنهاور', 'در پاره ای از موارد، عشق با احساسی كاملاً متفاوت در هم می آمیزد؛ یعنی رفاقت حقیقی.'),
(290, 'جك كانفیلد', 'هر كسی كه كامروا شده و به اوج رسیده، به ناگزیر پاسخ‌های منفی زیادی را تاب آورده است. فقط باید بدانید كه این امر، برای همه پیش آمده است.'),
(291, 'مارك تواین', 'اگر انسان گاهی در كشور وهم و خیال، شوالیه باشد بهتر از این نیست كه در جهان واقع، كنت باشد؟'),
(292, 'لرد بایرن', 'اگر كسی گوش شنوا داشته باشد، موسیقی را در همه چیز خواهد شنید.'),
(293, 'امام علی (ع)', 'هیچ علمی مانند اندیشه، و عبادتی مانند ادای واجبات و هیچ ایمانی مانند شرم و حیا و هیچ شكیبایی و حیثیّتی مانند تواضع و فروتنی و هیچ شرفی مانند علم و هیچ عزتی مانند متانت و بردباری، و هیچ یاری و یاوری محكم‌تر از مشورت نمی‌باشد.'),
(294, 'بنجامین فرانكلین', 'استعدادهای خود را پنهان نكنید. استعداد برای این خلق شده است كه به كار گرفته شود. گذاشتن ساعت آفتابی در سایه چه فایده ای دارد؟'),
(295, 'ژان ژاك روسو', 'مرد آنچه را می داند، می گوید و زن آنچه را كه خوش آیند شنونده است.'),
(296, 'آنتونی رابینز', 'من و شما نیز می توانیم زندگانی خود را به شكل یكی از این افسانه ها در آوریم، به شرط اینكه شهامت داشته باشیم و بدانیم كه قادریم اختیار رخدادهایی را كه در زندگیمان روی می دهد، به دست گیریم.'),
(297, 'هنری فورد', 'چنانچه نتوانم حوادث را از بین ببرم، آنها را به حال خود می گذارم تا به خودی خود حل شوند.'),
(298, 'بنجامین فرانكلین', 'اگر به تغییرات پایان دهید، زندگی خود را پایان داده اید.'),
(299, 'استیو چندلر', 'زیاد هم دربند به ثمر رسیدن مو‌ به موی رویاهایتان نباشید؛ چرا كه مهم‌تر از آن، دگرگونی بزرگی است كه با این روش، در منش راستین شما به وجود می‌آید.'),
(300, 'اریك نیوتن', 'هر فردی به سلیقه ی خود، فهرست جداگانه ای از اشیا را زیبا می داند و برای هر قلم آن نیز رقم شاخص یا ارزش هنری متفاوتی قائل می شود.'),
(301, 'حضرت محمد (ص)', '‌محبّت خداوند لازم است بر كسی كه خشمگین شده و سپس بردباری (و صبر)‌ كند. (و خشم خود را فرو نشاند.)‌'),
(302, 'رابرت لویی استیونسون', 'دوست، هدیه ای است كه برای خود خریداری می كنید.'),
(303, 'جیم ران', 'اگر دلیل كافی داشته باشی به هر كاری توانا خواهی شد.'),
(304, 'نیچه', 'كارهای بزرگ را همه دور از بازار و نام آوری كرده اند. پایه گذاران ارزشهای نو همیشه دور از بازار و نام آوری زیسته اند.'),
(305, 'حضرت محمد (ص)', 'من مثل (دیگر) بندگان (غذا)‌ می¬خورم و مثل نشستن دیگران، می‌نشینم.'),
(306, 'حضرت محمد (ص)', '‌كسی كه رحم كند اگرچه نسبت به سر بریدن گنجشكی باشد (‌و از روی ترحّم او را رها كند)‌ خداوند (نیز) در روز قیامت او را مورد رحمت خود قرار می‌دهد.'),
(307, 'جان ماكسول', 'رمز برخورداری از نگرش خوب، داشتن شوق به تغییر است.'),
(308, 'فردوسی', 'آن كه آفریننده و باشكوه است، در این جهان رنجهای بسیار خواهد دید.'),
(309, 'بودا', 'آن كه صد سال تنبل و سست زیَد، زندگی یكروزه‌ی آن كه نیروی استوار یافته، بهتر از آن صد سال است.'),
(310, 'جرج برنارد شاو', 'قوانین طبیعت با رسوم قبیله ی شما تفاوت دارد.'),
(311, 'ارنست سی. ویلسون', 'مردان خردمند امروز، بدون ترس و نگرانی، با فردا روبرو می شوند.'),
(312, 'حضرت محمد (ص)', 'این كه درون (باطن) مردی پر از چرك (و كثافت) شود، برای او بهتر است از این كه پر از شعر (بیهوده و چاپلوسانه در وصف دیگران) باشد.'),
(313, 'شری كارتر اسكات', 'هر زمان كه نتوانید به خواسته ای برسید، بدانید كه فرصتی برای آموختن نكته ای مهم از اندیشه ها و رفتارتان به دست آورده اید.'),
(314, 'افلاطون', 'بدی كردن، خواه با دوست و خواه با دیگران، كار آدم دادگر نیست؛ بلكه كار شخص ستمگر است.'),
(315, 'حضرت محمد (ص)', 'در زمان آسایش به سوی خدا، توجّه كن و او را بشناس تا او نیز تو را در سختی بشناسد (و در آن موقع كه كاری از كسی برنمی‌آید، به كمك تو برسد)'),
(316, 'هلن كلر', 'من می توانم ادعا كنم كه در هنر تحمل بار سرنوشت، خواه شادی و خواه محنت، آنقدر مسلط شده ام كه سختی ها و رنجها در نهاد من وجد و نشاطی ایجاد می كند كه به سعادت نزدیك است.'),
(317, 'مهاتما گاندی', 'پیروزی آن نیست كه هرگز زمین نخوری، آن است كه بعد از هر زمین خوردنی برخیزی.'),
(318, 'رام داس', 'بردبار باشید. بردبار باشید تا ببینید كه چه زمان باید از خواب برخیزید و به پیش بروید.'),
(319, 'شری كارتر اسكات', 'پذیرش دگرگونی، به شما این اجازه را می دهد كه به جای كوركورانه رد شدن، آماده ی هر پیچ و خمی باشید كه زندگی برایتان پیش می آورد.'),
(320, 'كریستین بوبن', 'افسوس كه نمی توان كسانی را كه از پیش در خود احساسی نیافته اند، به درجه ای بالاتر از راستی و درستی رسانید.'),
(321, 'جرج برنز', 'هنگامی كه از دهش و بخشش به مردم باز می ایستید، زمان آن است كه سرتان را بگذارید و بمیرید.'),
(322, 'آرتور شوپنهاور', '[ در نویسندگی ]، انتخاب لغات همواره موجد كوتاه كردن و تراكم معنا است و به اندیشه رخصت می دهد تا بیان موافق و مفهوم خود را بیابد و به سلامت به مقصد برسد.'),
(323, 'حضرت محمد (ص)', 'فضیلت علم از فضیلت عبادت، بالاتر است.'),
(324, 'توماس كارلایل', 'آرزوهای مثبت، "نیك بختی" و آرزوهای منفی، "سنگدلی" است.'),
(325, 'امام علی (ع)', 'ای بندگان خدا! شما را به تقوای الهی توصیه می‌كنم. زیرا تقواست كه مهار حقیقی از آلودگی‌ها و انحرافات است و استحكام‌بخش [حیات معقولِ] انسان‌ها.'),
(326, 'جان ماكسول', 'هرچه رهبر بزرگتر باشد میزان از خودگدشتگی او باید بیشتر شود.'),
(327, 'جیم رآن', 'ما همه می‌توانیم به آن جایگاهی كه می‌خواهیم، برسیم.'),
(328, 'نیچه', 'اریب می روند، بزرگان و رودخانه ها راهشان را، اما به سوی هدف خویش. نیكوترین جسارتشان، نهراسیدن از راههای اریب است.'),
(329, 'ویكتور هوگو', 'علت اینكه ما از موسیقی خوشمان می آید این است كه در دنیای رؤیاهای خود فرو می رویم. سرشت های عالی، موسیقی را دوست می دارند، اما بهتر می دانند كه از آن به عنوان ابزاری برای رسیدن به رؤیاهای خویش استفاده كنند.'),
(330, 'پائولو كوئیلو', 'پول، چیزی جادویی است؛ با پول، انسان هیچ وقت كاملاً تنها نیست.'),
(331, 'اپیكتت', 'ایمان به بخت و قسمت، بدترین نوع بردگی است.'),
(332, '؟', 'اگر زندگی اشخاص به راستی موفق را كه بر دنیا تاثیر گذاشته اند، مرور كنید، خواهید دید كه عملاً در تمام موارد، زمان قابل ملاحظه ای را به خلوت كردن با خود می گذرانند، به تعمق و تامل می پردازند، مراقبه می كنند و گوش می دهند.'),
(333, 'امام علی (ع)', 'ای مردم! تأدیب و تربیتِ نفوس خویش را خود به عهده بگیرید و نفس‌های خود را از عاداتِ پلید منصرف كنید.'),
(334, 'گوته', 'به من بگو دلم چه می خواهد... دلم در كنار تو است، حقیرش نشمار.'),
(335, 'حكیم هندی', 'هر كسی گمان می‌كند فقط ساعت خودش، زمان درست را نشان می‌دهد.'),
(336, 'اندرو كارنگی', 'هر زمان متوجه این حقیقت شوید كه سایر افراد می توانند در انجام كاری به شما كمك كنند تا آن را بهتر انجام دهید، گامی بزرگ برای پیشرفت و توسعه ی شخصی خود برداشته اید.'),
(337, 'ضرب المثل شرقی', 'كلمه ها حباب آبند و اعمال، قطره طلا.'),
(338, 'امام جعفر صادق (ع)', 'فقراء مؤمنان چهل سال پیش از توانگران ایشان در بهشت متنعّم می‌شوند.'),
(339, 'الیزابت استون', 'اراده برای بچه‌دار شدن، هدفی بسیار مهم و حیاتی است. با این هدف، قلب‌تان را از سینه بیرون می‌كشید و قلب شما تا ابد، از آنِ فرزندتان بوده و پیوسته دل نگران او خواهید بود.'),
(340, 'مثل چینی', 'كسی كه آهسته رود، دور رود.'),
(341, 'امام جعفر صادق (ع)', 'ما چیزی را نمی‌دانیم كه عمر را زیاد كند مانند صله‌ی رحم تا آنكه گاه هست كه شخصی سه سال از عمرش مانده است و به سبب صله‌ی رحم سی و سه سال می‌شود و گاه هست كه كسی از عمرش سی و سه سال مانده است و به سبب قطع صله‌ی رحم سه سال می‌شود.'),
(342, 'تاسیت', 'آنها كه غم كمتری دارند، با خودنمایی بیشتری می گریند.'),
(343, 'مری كرایستل ماكالوسو', 'اگر شادمانی، پس توانگری. شادمانی، نیازی به حساب بانكی ندارد.'),
(344, 'فرناندو پسوا', 'هر غروب خورشید، غروب خورشید است؛ ضرورتی وجود ندارد كه انسان غروب خورشید را در قسطنطنیه تماشا كند. اگر رهایی در درونم نباشد در هیچ جای دیگری هم نیست.'),
(345, 'استیو چندلر', 'همیشه یك دارایی بزرگ و دور از چشم‌داشت، در برابر یك تلاش بزرگ و به دور از چشم‌داشت، به وجود خواهد آمد.'),
(346, 'آنتونی رابینز', 'آنچه شادمانی و خوشبختی شما را در زندگی رقم می‌زند، كامیابی‌ها و پیروز‌هایتان نیست. این، هویت، منش و ماهیت بنیادی شماست كه باارزش است و می‌توانید به آن ببالید.'),
(347, 'شری كارتر اسكات', 'اگر از وابستگی به آنچه می خواهیم در زندگی مان رخ دهد، دست برنداریم، بی شك از زندگی لذت نخواهیم برد.'),
(348, 'لویی كان', 'پروژه؛ یعنی شالوده دادن به یك فرم، درون یك نظم.'),
(349, '‌حضرت محمد (ص)‌', 'كسی كه (فقط) از خدا بترسد، خداوند (نیز)، كاری می¬كند كه همه‌ی مردم، از او بترسند.'),
(350, 'میكل آنژ', 'مهم‌ترین شرط ازدواج با یك دختر، پاكی نفس و شرافت ذاتی او است.'),
(351, 'نیچه', 'شادمانی شریرانه از بدبیاری همسایه، گستاخانه ترین بیان پیروزی و بازتولید همسان سازی [برابری] است؛ حتی در درون والاترین نظام جهان.'),
(352, 'سن سانس', 'موسیقی، زبان راستین جهانی است. موسیقی، هنر عقل های گمراه و اسیر نیست، بلكه هنر آزاده ترین و پركارترین عقل هاست. موسیقی وسیله ای برای اتفاق و تفاهم مشترك بین مردم است.'),
(353, 'ژول رومن', 'آیا می توان با محكوم كردن نویسندگان كه عیبهای اخلاقی را بی پرده نشان می دهند، اخلاق را اصلاح كرد؟ این كار به شكستن آیینه ای می ماند كه روی زشت را صادقانه می نمایاند.'),
(354, 'آنتونی رابینز', 'ما در جهانی زندگی می كنیم كه بایستی هویت هایمان پیوسته گسترده تر شوند تا كیفیت زندگی مان بهتر گردد.'),
(355, 'مثل فرانسوی', 'كسی كه از احمق تعریف كند، احمق تر از اوست.'),
(356, 'فرناندو پسوا', 'رویاها همواره رویا می مانند. پس نیازی نیست كه لمس شان كنی. اگر رویای خود را لمس كنی خواهد مرد.'),
(357, 'اُرد بزرگ', 'آدمی با كینه، زندگی را بر دوستان نیز تنگ می كند.'),
(358, 'رالف والدو امرسون', 'شادی را گسترش دهید.'),
(359, 'فلورانس اسكاول شین', 'آزمندی، ریشه ی همه ی بدیها است.'),
(360, 'كازوبون', 'انسان اگر ناخوش باشد و كار كند، بهتر از این است كه سلامت باشد و بیكار بنشیند.'),
(361, 'برادلی', 'اگر به قلبت گوش كنی و مغزت را به كار اندازی، هرگز اشتباه نمی كنی.'),
(362, 'حضرت محمد (ص)', 'خداوند، چیزی را در زمین كمتر از عقل، نیافریده است (‌یعنی عقلی كه تمام انسان‌ها را حیران كرده است، نزد خداوند چیز كوچكی است)‌ و حقیقتاً‌ عقل در زمین از كبریت (‌گوگرد) ‌سرخ، كمتر است. (یعنی مردم،‌ ارزش عقل را نمی‌دانند.)'),
(363, 'افلاطون', 'مهم‌ترین بخش هر كار، آغاز آن است.'),
(364, 'مثل آفریقایی', 'دروغ شكوفه می آورد، اما میوه ندارد.'),
(365, 'جیمز آلن', 'شما به همان اندازه كه بخواهید كوچك و به همان اندازه كه آرزو كنید بزرگ می شوید.'),
(366, 'اگوست كنت', 'هیچ قدرت دنیوی نیست كه بدون پشتیبانی یك قدرت معنوی دوام بیاورد.'),
(367, 'فدریكو فلینی', 'در زندگی زناشویی، كارگردانی و فیلمنامه [ نویسی ] به عهده ی شوهر و صدابرداری و دیالوگ به عهده ی زن است.'),
(368, 'جان ماكسول', 'اگر می خواهید در همه شئون زندگانی موفق شوید، یكی از نخستین وظیفه ها مبارزه با هر نوع گرایش به بهانه تراشی است.'),
(369, 'بنجامین فرانكلین', 'پیش از ازدواج چشمهایتان را خوب باز کنید و بعد از ازدواج آنها را كمی روی هم بگذارید.'),
(370, 'استیو چندلر', 'لازم است بدانید كه نخستین گام، بسیار مهم است و گام دیگر، ساختن یك دورنمای مثبت است.'),
(371, 'جك كانفیلد', 'هنگامی كه افراد، زمانی را برای انجام كاری تعیین می‌كنند و مسئولیت آن را می‌پذیرند، بازدهی بیشتری دارند.'),
(372, 'دوك ولینگتون', 'به نظر من در میدان نبرد، ارزش ناپلئون برابر چهل هزار مرد جنگی است.'),
(373, 'جك كانفیلد', 'به یاد داشته باشید كه هر رویداد به ظاهر منفی نیز می‌تواند بذر چیزی زیبا و سودمند بشود.'),
(374, 'جان ماكسول', 'نگرش انسان با استعداد و ظرفیت او رابطه مستقیم دارد.'),
(375, 'جان ماكسول', 'هر كسی كه عادت دارد آدمها را به دور خود جمع كرده و از آنها تنها برای منافع خودش بهره گیرد، سازنده ی یك تیم نیست، بلكه یك دیكتاتور است.'),
(376, 'امام محمد باقر (ع)', 'یك حج بهتر است از هفتاد بنده آزاد كردن و خرج كشیدن و نفقه دادن اهل یك خانه از مسلمانان كه ایشان را سیر كند و بپوشاند و روی ایشان را از سؤال كردن حفظ كند بهتر است از هفتاد حج.'),
(377, 'یوگاناندا', 'شما باید بیاموزید كه با درد و رنج، شادی كنید؛ زیرا همه‌ی كارهای خدا خیر است.'),
(378, 'حضرت محمد (ص)', 'در طلب علم، شتاب كنید. پس (شنیدن) یك سخن راست (از شخص عالم) از دنیا و آن چه در آن است یعنی طلا و نقره بهتر است. (زیرا سخن او، راه سعادت را به انسان می‌آموزد.)'),
(379, 'شری كارتر اسكات', 'داوری ها همیشه منفی نیستند.'),
(380, 'توماس فولر', 'نادان، پرسه می‌زند و خردمند، سفر می‌كند.'),
(381, 'جك كانفیلد', 'شكست بخور، ولی پیش برو.'),
(382, 'حضرت محمد (ص)', 'دنیا از كسی گرفته نشده است مگر این كه (این گرفتن) برای او خیر (به همراه) دارد. (دوری از دنیا و دل نبستن به آن، برای انسان خیر است.)'),
(383, 'حضرت محمد (ص)', 'اولین چیزی كه از (میان) این امت برداشته می‌شود، حیاء‌ و امانت است.'),
(384, 'آنتونی رابینز', 'چنانچه بیاموزیم كه از تردید و دودلی لذت ببریم و از آن به سود خود بهره بگیریم، زندگی به مراتب، ساده‌تر و زیباتر خواهد شد.'),
(385, 'حضرت محمد (ص)', 'كامل‌ترین مؤمن از نظر ایمانی كسی است كه خوش‌ خلق‌تر باشد و بهترین شما كسانی هستند كه به زنان‌شان بهتر باشند.'),
(386, 'حضرت محمد (ص)', 'میان دو نفر منشینید مگر از آن دو، اجازه بگیرید.'),
(387, 'گوته', 'نیاسایید، زندگی در گذر است. بروید و دلیری كنید، پیش از آنكه بمیرید، چیزی نیرومند و متعالی از خود بجای گذارید تا بر زمان چیره شوید.'),
(388, 'كنفوسیس', 'ملتی كه از علم و دانش بهره مند باشند، دیگر طعم گرسنگی را نچشیده و زندگی راحت و آسوده ای خواهند داشت.'),
(389, 'حضرت محمد (ص)', 'چه بسا (شخصی) غذا خورده و شكر (خدا را) می‌كند و ثوابش از روزه‌دار صبور (هم) بیشتر است.'),
(390, 'فرناندو پسوا', 'كسی كه سفر می كند ناتوان از احساس است. برای همین هم كتابهای سفر در نقش كتابهای تجربه، چنین كم محتوا هستند و ارزش آنها قدردان خیال كسی است كه آنها را نوشته است.'),
(391, 'توماس ادیسون', 'ما یك میلیونیم درصد درباره‌ی هیچ چیز نمی‌دانیم.'),
(392, 'حضرت محمد (ص) ‌', 'بالاترین عمل، بعد از ایمان به خدا، دوستی با مردم است.'),
(393, 'زیگ زیگلار', 'رو به خورشید بایستید، سایه ها پشت شما خواهند بود.'),
(394, 'حضرت محمد (ص)', 'زمانی كه خداوند خوبی گروهی را می‌خواهد، عمر آنها را طولانی و شكر را بر زبان‌شان جاری می‌كند.'),
(395, 'حضرت محمد (ص)', '‌زمانی كه خداوند، بنده‌ای را دوست داشته باشد، او را آزمایش می‌كند تا صدای ناله و زاری او را بشنود.'),
(396, 'گوته', 'به زودی روزگار انتقاد و عیب جویی به پایان می رسد و به وسیله پیشرفت تمدن، آزادی اندیشه به تمام معنی در جهان حكمفرما می شود و همه كس می تواند به دلخواه خود راجع به فلسفه وجود بیاندیشد.'),
(397, 'هنری تورئو', 'زمانی به آگاهی می رسیم كه بیدار باشیم.'),
(398, 'دیل كارنگی', 'برای حل مشكل ابتدا باید حقیقت را دریابیم.'),
(399, 'گابریل گارسیا ماركز', 'هرگز وقت خود را با كسی كه حاضر نیست وقتش را با تو بگذراند، نگذران.'),
(400, 'نیچه', 'حالا می فهمم كه بهبود یافته ای، زیرا آن كس كه فراموش كرد بهبود یافت.'),
(401, 'فرانك گلت بارگس', 'اگر همواره به لبخند فكر كنی، صورتت جوان و شاداب خواهد ماند.'),
(402, 'مارتین لوتركینگ', 'ما یا باید یاد بگیریم كه چگونه با هم مثل برادر زندگی كنیم، یا باید مثل احمق ها نابود شویم.'),
(403, 'امام علی (ع)', 'هر كس حق كسی را ادا كند كه حق او را ادا نمی‌كند، او را پرستیده است.'),
(404, 'برتراند راسل', 'فلسفه نباید از زندگانی شخصی بكاهد، بلكه باید بر آن بیفزاید.'),
(405, 'دنیس ویتلی', 'همیشه در مورد كاری كه می خواهید انجام بدهید، مثبت سخن بگویید.'),
(406, 'مثل آلمانی', 'گذشت زمان بیشتر از كتاب می آموزد.'),
(407, 'امام علی (ع)', 'كسی كه چیزی از وی خواسته شده، تا وقتی وعده نداده، آزاد است.'),
(408, 'امام علی (ع)', 'برای خداوند سبحان و متعال، هیچ چیزی از آن‌چه كه بندگان در شب و روزهای‌شان در آن اختلاف دارند، پنهان نیست.'),
(409, 'امام جعفر صادق (ع)', 'بنده‌ای كه مؤمن باشد چون هفت سال خدمت كند آزاد می‌شود و بعد از آن خدمت فرمودن او حلال نیست.'),
(410, 'آرتور شوپنهاور', 'در جهان واقعی، پس از اراده حیات، این عشق است كه خود را به عنوان قویترین و فعال ترین همه ی محركها به نمایش می گذارد.'),
(411, 'لئوبوسكالیا', 'با عشق می‌توانیم به كمك آن كه دوست می‌داریم و با برابر هم نهادن باورها و رفتارهایمان، به دیدگاه‌هایی تازه برسیم.'),
(412, 'حضرت محمد (ص)', 'هدیه دادن به موقع نیاز (آن طرف) خیلی خوب است. (زیرا ممكن است همین هدیه مشكل او را تا حدودی رفع نماید.)'),
(413, 'ویل راجرز', 'تمام چیزها و رخدادها مسخره است، اما تا زمانی كه بر سر دیگران می آید.'),
(414, 'حضرت محمد (ص)', '‌زنای زبان، سخن (زشت) است.'),
(415, 'حضرت محمد (ص)', 'برای شخص فاسق (كسی كه آشكارا گناه می‌كند) غیبتی نیست. (پشت سر چنین فردی می‌توان از او بدگویی كرد.)'),
(416, 'گابریل گارسیا ماركز', 'انسان تنها زمانی حق دارد به انسانی دیگر از بالا به پائین بنگرد كه ناگزیر است او را یاری رساند تا روی پای خود بایستد.'),
(417, 'استیو چندلر', 'نگرانی، سبب رشد دشواری‌ها می‌شود.'),
(418, 'مثل', 'نابرده رنج، گنج میسر نمی شود.'),
(419, 'یونگ', 'هدر دادن زمان، خودكشی حقیقی است.'),
(420, 'جین دلافانتین', 'انسان به گونه‌ای آفریده شده كه هر گاه آتش آرزومندی به جانش بیفتد، ناممكن ها ناپدید می شوند.'),
(421, 'پائولو كوئیلو', 'دو اشتباه بسیار بزرگ وجود دارد: یكی اینكه قبل از موعد اقدام به عمل كنیم و دیگری اینكه فرصت مناسب را از دست بدهیم.'),
(422, 'لیدی برد جانسون', 'بچه‌ها بنا به خواست و آرزوی شما، بزرگ می‌شوند و شكل می‌گیرند.'),
(423, 'نیچه', 'آموزش را در خانواده، دانش را در جامعه و بینش را در تفكرات تنهایی می آموزند.'),
(424, 'وینس لومباردی', 'هر چه بیشتر تلاش كنید، تسلیم شدن و دست كشیدن دشوارتر می شود.'),
(425, 'جك كانفیلد', 'زندگی با هدف، نه تنها بیان راستین این امر است كه شما به راستی، كه هستید، بلكه به این معناست كه شما موهبتی برای جهان به شمار می‌روید و جهان به آنچه به آن می‌دهید، نیازمند است.'),
(426, 'آبراهام مازلو', 'عاشق ِ بودن (كسی كه بودن را درك می‌كند)، جزئیاتی را مشاهده خواهد كرد كه از چشمان كسی كه عاشق كمبود است یا عاشق هیچ چیز نیست، پنهان خواهد ماند.'),
(427, 'باربارا دی آنجلیس', 'عشق و شور زندگانی را در درون خودتان جست و جو كنید. سرزندگی و زنده بودن را تنها از درون خودتان جویا شوید.'),
(428, 'حضرت محمد (ص)', 'مرد باید به برادر خود یاری برساند چه برادرش ظالم باشد و چه ستمگر (زیرا) اگر ظالم باشد، او را ظلم باز می‌دارد؛‌ پس (در واقع)‌ به او یاری رسانده است و اگر مظلوم باشد به یاریش بشتابد.'),
(429, 'برایان تریسی', 'آنچه به نظر می رسد بزرگترین مشكل زندگی شماست ممكن است تبدیل به بزرگترین موقعیت شما شود.'),
(430, 'لئوبوسكالیا', 'منكر گذشته نمی‌توان شد، ولی گردن به بردگی آن نیز نمی‌باید نهاد. گذشته فقط می‌تواند فردا را تا اندازه‌ای برایمان پیش‌بینی‌پذیر كند.'),
(431, 'حضرت محمد (ص)', 'خداوند به هیچ عالِمی، علم نداده است،‌ مگر این كه از او عهد و پیمان گرفته است كه علم خود را (‌برای یاد دادن به دیگران)‌ پنهان نسازد.'),
(432, 'مارشا برایتِن باخ', 'محدودیت شما به اندازه ای است كه خودتان می اندیشید.'),
(433, 'گاندی', 'گاهی ساده‌ترین چیزها به نظر ما دشوارترین كارها می‌نماید. اگر دل‌های ما باز بود، هیچ‌گاه به مشكلی برنمی‌خوردیم.'),
(434, 'حضرت محمد (ص)', 'كسی كه تقوایی ندارد تا موقع خلوت، او را از نافرمانی خدا، باز دارد، خداوند، به عمل او هیچ اعتنایی نمی¬كند. (زیرا عمل بدون تقوا، پایدار نیست.)'),
(435, 'جك كانفیلد', 'اگر خواهان احترام و باور دیگران [نسبت به خود] هستید؛ كه برای انجام كارهای مهم و بزرگ در زندگی بسیار اهمیت دارد؛ باید بر سر پیمان‌های خود باشید.'),
(436, 'آلن لوی مك‌ گینس', 'افراد مثبت، همیشه در جهت توانمند كردن نیروهای از دست داده‌ی خود به پیش می‌روند. آنها می‌دانند كه انرژی انسان به مرور زمان كاهش می‌یابد، ولی به موجب قانون فیزیك، با بهره‌گیری از یك انرژی تازه، اعضای ناتوان دوباره زنده خواهند شد.'),
(437, 'اپیكتت', 'با خود صحبت كن؛ خیلی چیزها داری كه به خودت بگویی و خیلی سوالها داری كه باید از خودت بپرسی.'),
(438, 'ارد بزرگ', 'جهان همواره در حال دگرگونی و رشد است؛ نباید این پویندگی را زشت دانست، باید همراه بود و سهمی از این رشد را بر عهده داشت.'),
(439, 'انوشیروان', 'دارو در تندرستی خورید.'),
(440, 'حضرت محمد (ص)', 'حقیقتاًً خداوند همان طوری كه به من دستور ادای واجبات را داده، همین طور (هم) به من دستور مدارا كردن با مردم را داده است.'),
(441, 'حضرت محمد (ص)', 'همانا خوش خلقی، گناه را از بین می‌برد، همان طوری كه آفتاب، یخ را ذوب می‌كند.'),
(442, 'بودا', 'یك كلمه‌ی با معنی [ =با چَم ]، بهتر از هزار كلمه‌ی بی‌معنی است كه آن كلمه‌ی بامعنی را گر كسی شنود، خاموش گردد.'),
(443, 'كنفوسیوس', 'كسب دانش وظیفه اساسی هر انسانی است. در [ راه انجام ] این وظیفه، دانشجو می تواند و حق دارد كه از آموزگار خود هم پیشی بگیرد و زودتر به مقصد برسد.'),
(444, 'فلورانس اسكاول شین', 'انسان باید رها در لحظه [ =دم ] زندگی كند.'),
(445, 'آنتونی رابینز', 'چنانچه هدف از زندگانی خود را ندانید و نشناسید، چگونه می‌توانید در بازی زندگی برنده باشید؟'),
(446, 'حضرت محمد (ص)', '‌هر نعمتی به جز نعمت اهل بهشت از بین می‌رود و هر غمی به جز غم اهل جهنّم، منقطع (و نابود) می‌شود.'),
(447, 'اریك نیوتن', 'روش طرح ریزی هر نقاش تنها ابزار وی در بیان حالت درونی او نسبت به زندگی است.'),
(448, 'دكترماكارنكو', 'قدرت تسلط بر احساسات، تصورات و آرزوهای خویش از بزرگترین قدرتهایی است كه هر فرد باید در خود به وجود بیاورد.'),
(449, 'حضرت محمد (ص)', 'مهربانی كن با مردم تا تو را دوست دارند.'),
(450, 'توماس ادیسون', 'اگر هر كاری را كه توان انجامش را داریم بكنیم، براستی، خود را سرگشته خواهیم ساخت.'),
(451, 'آلبرت هوبارد', 'بزرگترین اشتباه زندگی هر كس این خواهد بود كه از اشتباه بترسد.'),
(452, 'نیچه', 'من اكنون به اندازه كافی مقتدر هستم كه شكست را تحمل كنم.'),
(453, 'كریشنا مورتی', 'مادام كه حیوان، ناز و نوازش می شود، واكنش های زیبایی دارد، ولی به محض اینكه با او مخالفت می شود، همه ی خشونت طبیعتش پدیدار می گردد.'),
(454, 'افلاطون', 'نغمه و وزن موسیقی تاثیر فوق العاده ای بر روح انسان دارد و اگر درست به كار رود، می تواند زیبایی را در رویاهای روح جایگزین كند.'),
(455, 'مثل ایتالیایی', 'موفقیت برای اشخاص كم ظرفیت مقدمه ی گستاخی است.'),
(456, 'مثل سوئدی', 'آنچه را كه یك نفر می داند هیچ كس نمی داند، ولی اگر دو نفر بدانند همه كس می داند.'),
(457, 'پرمودا باترا', 'نیاز را می‌توان برآورده كرد، ولی آز را هرگز.'),
(458, 'فرناندو پسوا', 'كسی كه هرگز تحت فشار نزیسته باشد، آزادی را لمس نمی كند.'),
(459, 'آنتونی رابینز', 'هر كسی دارای قوانین و ارزش های ویژه ای است كه ممكن است با قوانین و ارزش های شما متفاوت [ =دیگرگون ] باشد؛ ارزش های آنها نه بهتر است و نه بدتر.'),
(460, 'امام علی (ع)', 'ایمان هیچ بنده‌ای مطابق واقع نمی‌شود، جز اینكه به آنچه در اختیار خداست، مطمئن‌تر از آن باشد كه در اختیار خودِ اوست.'),
(461, 'جبران خلیل جبران', 'به رویاها ایمان بیاورید كه دروازه های ابدیت اند.'),
(462, 'جك كانفیلد', 'یكی از مهم‌ترین اصول كامیابی، پافشاری است، نه خسته شدن و دست از كار كشیدن.'),
(463, 'حضرت محمد (ص)', 'همانا خداوند بزرگ، بندگانی دارد كه آنها را مخصوص برطرف كردن نیازهای مردم، قرار داده است، مردم در نیازهای خود به او پناه آورده و آن‌ها كسانی هستند كه از عذاب الهی در امانند.'),
(464, 'ثعالبی شیرازی', 'پایان نگر كسی است كه آنچه را در دست دارد، نگاه داشته و كار امروز را به فردا نسپارد.'),
(465, 'امام علی (ع)', 'هر كه جهاد را با قدرت بر آن ترك كند حق تعالی بر او جامه‌ی مذلّت و خواری بپوشاند و بلا او را فرو گیرد و خشنودی از او دوری كند و در دیده‌ها حقیر و بی‌مقدار شود و راه اندیشه بر دلش بسته شود و مغلوب حق گردد و با او با انصاف و عدالت سلوك نكنند.'),
(466, 'برایان تریسی', 'ریشه همه شكست ها و پریشانیها در احساس منفی است.'),
(467, 'حضرت محمد (ص)', 'هیچ بنده‌ای نیست كه به بنده‌ای دیگر ظلم كند كه (مظلوم) قصاص (از ظالم) نكند، خداوند، روز قیامت او را قصاص خواهد كرد.'),
(468, 'جك كانفیلد', 'افراد كامروا دوست دارند دیگران را از آنچه به دست آورده‌اند، بهره‌مند سازند.'),
(469, 'اشو', 'شك و تردیدها را نباید سركوب كرد. از آنها باید به عنوان سكوی پرش استفاده نمود.'),
(470, '؟', 'آتشی مانند هوای نفسانی، كوسه ای مانند نفرت، دامی مانند نادانی و عذابی مانند حرص وجود ندارد.'),
(471, 'فرناندو پسوا', 'مایه ی خوشبختی انسانیت است كه هر انسانی فقط آنی هست كه هست.'),
(472, 'كریم خان زند', 'كاش نادر شاه همچنان زنده بود و می توانستم در ركابش برای سربلندی ایران شمشیر بزنم.'),
(473, 'ناپلئون بناپارت', 'چه بسا اشخاصی كه فقط با صدای كلنگ گوركن از خواب بیدار می شوند.'),
(474, 'امام علی (ع)', 'هر آن چه قابل شمارش است، پایان می‌پذیرد و هر آن چه مورد انتظار است، فرا می‌رسد.'),
(475, 'آبراهام مازلو', 'آدمی باید برای ابتكار و آفریدن، از غرور "آفرینش" برخوردار باشد.'),
(476, 'امام علی (ع)', 'آن قدر پینه بر جامه‌ی خود زدم كه شرم كردم از آن كس كه بر آن پینه می‌زد.'),
(477, 'نیچه', 'هر آنچه كه در طبیعت و در تاریخ برایم آشنا است با من حرف می زند، مرا می ستاید، به پیش می راند و تسكین می دهد. اما من بقیه را نمی شنوم یا آن را فوری فراموش می كنم. در حقیقت، ما همیشه چیزی را كه در میان ما آشنا است می خواهیم.'),
(478, 'جان ماكسول', 'پیشرفت دادن مردم در هر راهی نتیجه ی خوب در پی دارد.'),
(479, 'جیم رآن', 'در هیچ كجای دنیا، فرصت‌ها كم نیستند. كمبود، فقط در افرادی‌ست كه اصولاً خود را وقف كامیابی نمی‌كنند.'),
(480, 'جیمی كارتر', 'خداوند همه ی دعاهای ما را برآورده می كند. گاهی پاسخ آن، آری است، گاهی نه، گاهی پاسخ این است كه نكند شوخی‌ات گرفته!'),
(481, 'استیو چندلر', 'در رویارویی با دشواری‌ها، با كمك نردبان اندیشه، بالا روید و با اندیشه و بینش، به ایجاد طرح‌ها و راهكارهای منطقی دست بزنید.'),
(482, 'اُرد بزرگ', 'در زندگی نادان، سرانجام یك گره [ مانند ] صدها گره باز نشدنی است.'),
(483, 'حضرت محمد (ص)', '(كسی كه) بد سرشت باشد، به بهشت نمی‌رود.'),
(484, 'آنتونی رابینز', 'بدبختانه، بیشتر مردم، تربیت را تنها در رفتن به مدرسه می دانند و همین كه فارغ التحصیل [ =دانش آموخته ] شدند، دست از پژوهش و آموختن می كشند.'),
(485, 'حضرت محمد (ص)', 'فكر بد، تا زمانی كه به آن عمل نشود و به سخن در نیاید، صاحبش، بخشیده شده است.'),
(486, 'حضرت محمد (ص)‌', '‌همانا شیطان بزرگ (ابلیس)، محكم¬ترین و نیرومندترین یاران خود را به سوی كسی كه با ثروت خود، كار نیك می¬سازد، می¬فرستد. (مثل ساختن مسجد، مدرسه و تأسیس مراكز توانبخشی و امور محرومین.)'),
(487, 'بزرگمهر', 'دل آدمی بنده آرزو است. سرشتها یكسان نیست، هر كس خویی دارد و جویا و خواهان چیزی است.'),
(488, 'دام راس', 'تردیدهای خود را بپذیرید و به حرفهای آنها گوش كنید؛ آنگاه می توانید راهی برای آنها بیابید.'),
(489, 'لین یوتانك', 'آرامش حقیقی زمانی به دست می آید كه بتوانیم بدترین حادثه و نتیجه را بپذیریم.'),
(490, 'امام علی (ع)', 'بخشش و احسان، نگهبان حیثیّت است و بردباری دهن‌بندِ احمق، و عفو زكات پیروزی است.'),
(491, 'جواهر لعل نهرو', 'تنها راه حقیقی برای درك داستان زمین این نیست كه در این باره در كتابهای مردم دیگر، مطالبی بخوانیم بلكه بهتر این است كه به خود كتاب طبیعت باز گردیم.'),
(492, 'نیچه', 'اگر الف تا یای من این است كه هر آن چه سنگینی است سبك شود و تن ها همه رقاص و جانها همه پرنده؛ به راستی، این است الف تا یای من!'),
(493, 'محمد اقبال', 'اگر تنها از امید انتظار معجزه داری، در اشتباهی؛ امید باید با حركت همراه باشد.'),
(494, 'آرتور شوپنهاور', 'در حقیقت، محنت و رنج، اولین شرط و اساس هستی است.'),
(495, 'ارد بزرگ', 'سفر، نای روان است برای اندیشه و آرمان بزرگ.'),
(496, 'جبران خلیل جبران', 'اگر سزاوار است كه دوست با جزر زندگی ات آشنا شود، بگذار تا با مد آن نیز آشنا گردد، زیرا چه امیدی است به دوستی كه می خواهی در كنارش باشی ، تنها برای ساعتها و یا قلمرو مشخصی؟'),
(497, 'ویكتور هوگو', 'گسیختن رشته ی علایق فرزندی، غریزه ی برخی از خانواده های بینوا است.');
INSERT INTO `quotations` (`id`, `author`, `text`) VALUES
(498, 'پائولو كوئیلو', 'وقتی با آدمها حرف می زنی، یك چیزهایی به تو می گویند كه نمی دانی چگونه به گفتگو ادامه دهی.'),
(499, 'حضرت محمد (ص)', 'همانا خداوند، بنده‌ی مؤمن خود را به بیماری دچار می‌سازد تا هر گناهی از او برطرف شود.'),
(500, 'مثل ایتالیایی', 'كسانی كه در انتظار زمان نشسته اند، آن را از دست داده اند.'),
(501, 'جیمی هیلفرن', 'شما نمی‌توانید همدل و همدرد كسی باشید، اگر به دیده‌ی خواری به او بنگرید.'),
(502, 'مثل آفریقائی', 'میهمان پررو را كباب كن و بخور.'),
(503, 'حضرت محمد (ص)', 'دست خود را به لباس كسی كه آن را نمی‌پوشی (‌متعلّق به تو نیست)‌ مسح نكن (دست خیس خود را با آن خشك مكن.)'),
(504, 'دیل كارنگی', 'با نشان دادن علاقه و علاقه مند شدن به دیگران، خود را از یاد ببرید.'),
(505, 'ارسطو', 'عشق، یك روح است كه در دو جسم دمیده شده.'),
(506, 'چانگ سی', 'ارزش یك پیمان نامه ی خوب، بستگی به میزان اعتبار آن دارد.'),
(507, 'رالف والدو امرسون', 'جهان هستی به كسی كه می داند به كجا می رود، راه نشان می دهد.'),
(508, 'حضرت محمد (ص)', 'كسی كه میان مسلمانان به قضاوت دچار شود، نباید صدای خود را بر یكی از دو متّهم بلند نماید، مگر این كه بر دیگری (نیز) صدای خود را بلند كند.'),
(509, 'امام علی (ع)', 'پروردگارا! بر من ببخشا آن‌چه را كه درباره‌ی من از من داناتری. اگر بار دیگر به خطایی كه كرده بودم، برگردم، بار دیگر با بخشش خود بر من عنایت بفرما. خداوندا! بر من ببخشا آن‌چه را كه از نفْس خود وعده كردم و تو درباره‌ی آن وعده از من وفا ندیدی.'),
(510, 'تیلر', 'برای رسیدن به شادی بزرگ باید از شادی های كوچك صرف نظر كرد.'),
(511, 'استیو چندلر', 'از خودتان وجودی بسازید كه زیاد دربند پیشداوری دیگران نباشید.'),
(512, 'فرانسوا ولتر', 'جنگ تهاجمی، جنگ وحشی ها است؛ آن  كه از خود دفاع می كند، سزاوار آن است.'),
(513, 'بنجامین فرانكلین', 'چشم دیگران چشمی است كه ما را ورشكست می كند. اگر همه غیر از خودم كور بودند، من نه به خانه باشكوه احتیاج داشتم و نه به مبل عالی.'),
(514, 'آریستوفان', 'انسان می‌تواند خرد را حتی از دشمن بیاموزد.'),
(515, 'آنتونی رابینز', 'بدون هدف، همواره دستخوش نیروهای موافق [ =سازوار ] و مخالف و شرایط پیرامونتان خواهید بود، نه گزینش‌های خودتان.'),
(516, 'وین دایر', 'به جای تردید و دودلی و یا تلاش برای كشف اسرار نظام هستی، آن را باور كنید و از خشنودی و خرسندی‌ای كه میوه و ثمره‌ی این باور است، بهره‌مند شوید.'),
(517, 'حضرت محمد (ص)', 'زمانی بر مردم می‌آید كه در آن مؤمن از گوسفندش ذلیل‌تر است. (آن چنان كه به گوسفند و گوشت و شیر و خرید و فروش آن اهمیت می‌دهند و به آن می رسند، به مؤمن اهمیت نمی‌دهند)'),
(518, 'لئوبوسكالیا', 'عادی‌ترین امور هم سرشار از زیبایی و جذابیت [=گیرایی] است؛ فقط باید نگاه كرد و یافت.'),
(519, 'مثل چینی', 'برا ی یافتن زن، می ارزد كه یك كفش بیشتر پاره كنی.'),
(520, 'آرتور شوپنهاور', 'برای چه آن چیزی كه معمولی است باید با تحقیر همراه باشد؟'),
(521, 'دنیس د. لیتل', 'با اینهمه رنگهای تماشایی كه در جهان است، مایه شرمساری است اگر بخواهیم هر چیز را سیاه یا سفید بدانیم.'),
(522, 'آن لندرز', 'دشواری را بخش گریزناپذیر زندگی بدان و چشم‌براه آن باش؛ زمانی كه سر رسید، سرت را بالا بگیر، در چشم‌هایش نگاه كن و بگو: "من از تو بزرگترم؛ نمی‌توانی شكستم دهی."'),
(523, 'جان ماكسول', 'همه مهم هستند، اما همه با هم برابر نیستند.'),
(524, 'حضرت محمد (ص)', 'هر زنی كه شوهر خود را بر زبان آزار دهد حق تعالی هیچ حسنه‌ی او را قبول نفرماید تا او را از خود راضی گرداند هر چند روزها به روزه باشد و شب‌ها به نماز بایستد و بنده‌ها آزاد كند و مردان را بر اسبان سوار كرده به جهاد بفرستد.'),
(525, 'فریمن', 'آن كس كه می تواند از بدی جلوگیری نماید و با وجود این چنین نمی كند، خود دستیار كسی است كه بدی می كند.'),
(526, 'آنتونی رابینز', 'رفتارهای ما به شدت تحت تاثیر باورهای ما هستند.'),
(527, 'حضرت محمد (ص)', 'هر كه صبر كند از برای خدا بر كج خلقی زن خود حق تعالی ثواب شكر كنندگان او را كرامت فرماید.'),
(528, 'آرتور شوپنهاور', 'هر جدایی یك نوع مرگ است و هر ملاقات یك نوع رستاخیز.'),
(529, 'افلاطون', 'تمسخر، جز در مورد كردارهای زشت، نشانه‌ی سطحی بودن اندیشه است.'),
(530, 'لئوبوسكالیا', 'عشق، بازدارنده‌ی عشق نیست. عشق، فقط زمانی عشق است كه آزاد كند.'),
(531, 'لئو نیكولایویچ تولستوی', 'انسان نمی تواند به تنهایی و برای خود زندگی كند؛ این مرگ است نه زندگی.'),
(532, 'امام جعفر صادق (ع)', 'هر كه زنی بخواهد برای حسن و جمال یا از برای مال از هر دو محروم ماند و اگر از برای دینداری و صلاح او بخواهد حق تعالی مال و جمال او را روزی كند.'),
(533, 'حضرت محمد (ص)', '‌شراب،‌ مجموعه‌‌ای (از)‌ گناهان است. (یعنی با این گناه،‌ گناهان زیاد دیگری به وجود می‌آید.)'),
(534, 'ارد بزرگ', 'اندیشه همه گیر مردمی همیشگی نیست، زیرا همواره دستخوش دگرگونی به دست جوانان پس از خود است. ورود جوانان به تدریج آرمانهای نو پدید می آورد و اگر آرمان گذشتگان نتواند خود را بازسازی كند ناگریز نابود می شود.'),
(535, 'وند', 'آنچه را انسان دوست دارد، از صمیم قلب انجام می دهد. اگر شما نیكی را دوست بدارید، نیكی خواهید كرد.'),
(536, 'حضرت محمد (ص)', 'بنده¬ای كه مطیع پدر و مادر و پروردگار خود است، در بهشت در مكان‌های بالا به سر می¬برد.'),
(537, 'برایان تریسی', 'یك روش عالی برای موفقیت در كار این است : افكارتان را روی كاغذ بیاورید.'),
(538, 'انجیل متی', 'هر حكومتی كه به دسته‌های مخالف تقسیم شود، نابودی آن حتمی است.'),
(539, 'زیگموند فروید', 'نظم، نوعی اجبار در تكرار است كه وقتی برقرار شد، مشخص می كند كه یك كار، كی، كجا و چگونه انجام شود و با این روش، آدمی را از درنگ و تردید در تكرار موارد مشابه به دور می دارد.'),
(540, 'انجیل یوحنا', 'در زندگی، سعادت در این است كه به آنچه می‌دانید، عمل كنید.'),
(541, 'هنری فورد', 'من هیچ وقت در جایی كه می توانم بنشینم نمی ایستم و آنجا كه می توانم بخوابم نمی نشینم.'),
(542, 'بزرگمهر', 'آن كس كه به آموختن كوشاتر و گوشش به دانش شنواتر است، امیدوارترین كسان است.'),
(543, 'امام علی (ع)', 'بهترین شهر یا كشور برای تو، جایی است كه زندگی تو را تنظیم و آماده كند.'),
(544, 'ژان پل سارتر', 'بی دانش، نه می توان امیدوار بود نه ناامید.'),
(545, 'امام علی (ع)', '«با یكدیگر عداوت نورزید، زیرا عداوت تراشنده [و محو كننده‌ی] ایمان است.»'),
(546, 'ضرب المثل ژاپنی', 'از این نترس كه آهسته حركت می كنی، از این بترس كه هنوز حركت نكرده ای.'),
(547, 'سنت بور', 'تنها برای دست یافتن به امور محال است كه بشر می تواند به بالاترین حد امور ممكن دست یابد.'),
(548, 'ریچارد براتیگان', 'سرانجام، جایی دارد باران می بارد و برنامه ی گلها را تنظیم می كند و حلزونها را شاد نگه می دارد؛ تمام چیزی كه ارزش اندیشیدن را دارد این است.'),
(549, 'آندره ژید', 'بهتر است برای چیزی كه هستی، مورد نفرت باشی تا اینكه برای چیزی كه نیستی محبوب باشی.'),
(550, 'آرتور شوپنهاور', 'اینكه مغز باید نوكر و كارگر شكم باشد در حقیقت عقیده ی آن كسانی است كه نه حاصل دسترنج خود را می خورند و نه به سهم خود قناعت می كنند.'),
(551, 'امام علی (ع)', 'فقر، آدم باهوش را از اقامه‌ی دلیل لال می‌كند.'),
(552, 'فرانكلین پی جونز', 'این عشق نیست كه دنیا را می چرخاند؛ عشق چیزی است كه چرخش آن را ارزشمند می كند.'),
(553, 'میگوئل سروانتس ساآودِرا', 'برای یك زندگی آرام و بدون دردسر، شوهر باید كر و زن باید لال باشد.'),
(554, 'آنتونی رابینز', 'اندیشه‌ها و ذهنیات شما با تندرستی فیزیكی و جسمانی‌تان، رابطه‌ی نزدیك و تنگاتنگ دارند و بر آن تاثیرگذارند.'),
(555, 'اُرد بزرگ', 'هر آرزویی بدون پژوهش و تلاش به سرانجام نخواهد رسید.'),
(556, 'میلان كوندرا', 'آدمی به ضعف خویش آگاهی دارد و نمی خواهد در برابر آن ایستادگی نماید، بلكه خود را به آن تسلیم می كند.'),
(557, 'انجیل لوقا', 'وای به حال آنانی كه اكنون سیر هستند، زیرا دوران گرسنگی‌شان فرا خواهد رسید!'),
(558, 'آنتونی رابینز', 'هیچ چیز در زندگی معنا ندارد، مگر معنایی كه شما به آن بدهید.'),
(559, 'پابلو پیكاسو', 'برای جوانمردی و مروتی كه در حق هر كس می كنی، امید هیچ پاداشی نداشته باش.'),
(560, 'زیگ زیگلار', 'تهیدست ترین انسان، كسی است كه رؤیایی در سر ندارد.'),
(561, 'اُرد بزرگ', 'نادانی، خودخواهی به بار می آورد.'),
(562, 'امام علی (ع)', 'هر كسی دو شریك در مال دارد: وارث و حوادث.'),
(563, 'حضرت محمد (ص)', 'كمتر قرض بگیر تا آزاد زندگی كنی. (زیرا طلبكاران همیشه به دنبال بدهكاران می¬باشند و زندگی برای انسان بدهكار تنگ می¬شود.)'),
(564, 'فرناندو پسوا', 'هیچ چیز روشن تر از این واقعیت، فقر اندیشه را بروز نمی دهد كه انسان بتواند به حساب دیگران با فراست [ =با فهم و درك ] باشد.'),
(565, 'گوته', 'با یك اراده ی نیرومند، شرایط دیگر چندان اهمیت ندارد.'),
(566, 'لودویگ وان بتهوون', 'هنر و دانش، برگزیده ترین و بزرگوارترین انسانها را به هم می پیوندد.'),
(567, 'حضرت محمد (ص)', 'اگر افراد نیازمند دروغ نمی‌گفتند (در حالی كه بی‌نیاز می‌باشند امّا به دروغ می‌گویند، ما فقیر هستیم) كسانی كه آنها را رد كرده (و چیزی نمی‌دادند) تأیید نمی‌شدند. (پس كسی كه نیازمند دروغ‌گو را از در خانه‌ی خود بیرون كند مورد سرزنش قرار نمی‌گیرد.)'),
(568, 'امام علی (ع)', 'توحید آن است كه خدا را در توهّم نیاوری و عدالت آن است كه او را متهم نسازی.'),
(569, 'جان راسكن', 'آفتاب دلپذیر است، باران شاداب كننده است، باد ما را تر و تازه می كند، برف شادی بخش است، به راستی هوایی به نام هوای بد وجود ندارد، تنها گونه های متفاوت [ =دیگرگون ] هوای خوب وجود دارد.'),
(570, 'امام علی (ع)', 'از مشورت با زنان بپرهیز، زیرا رأی و نظر آنان سست و تصمیم‌شان بی‌اساس است.'),
(571, 'آبراهام لینكلن', 'چنانچه می خواهی منش كسی را بسنجی، به او قدرت بده.'),
(572, 'آرتور شوپنهاور', 'اینكه شخصی بخواهد هرچه را می خواند حفظ كند مثل این است كه سعی كند هر آنچه را كه می خورد در معده نگاه دارد.'),
(573, 'آرتور شوپنهاور', 'هرگز نگذاریم هیچ چیزی زندگی فكری ما را متوقف سازد، هرچند ممكن است طوفان بی امان جهان محیط ما را آشفته سازد و در هم ریزد.'),
(574, 'مارتین لوید جونز', 'بیشتر ناملایمات زندگی ناشی از این است كه به خودتان گوش می دهید به جای اینكه با خودتان حرف بزنید.'),
(575, 'كریستین بوبن', 'در كنار نردبانی كه تا ستاره ها بالا می رود، از انبوه آرزومندان خبری نیست؛ دشواری كار از شمار مشتاقان كاسته است.'),
(576, 'ویلیام. ای. گلادستون', 'هیچ انسانی، تاكنون، خوب یا بزرگ نشده است، مگر با اشتباهات بزرگ و زیاد.'),
(577, 'رالف والدو امرسون', 'یافتن نیكویی‌ها در همه جا، معیار سلامت روانی است.'),
(578, 'ویلیام شكسپیر', 'یك بار دیگر، دوستان عزیز، یك بار دیگر برق آسا حمله كنید!'),
(579, 'برادلی', 'اشتباه نیز جزیی از زندگی است، پس وقت خودت را تلف نكن و خودت را برای اشتباههای گذشته سرزنش نكن.'),
(580, 'آركیبالد مك لیش', 'دانستنی‌های بدون درك و فهم انسان، همانند پاسخ بدون پرسش است.'),
(581, 'حضرت محمد (ص)', 'انسان بدكاری كه به رحمت خداوند بزرگ، امیدوار است از عابدی كه مأیوس است، به خداوند نزدیك‌تر است.'),
(582, 'مثل یوگسلاوی', 'انسان در طول زندگی، سرگرم یاد گرفتن است، ولی با این همه، نادان می‌میرد.'),
(583, 'امام علی (ع)', 'دمساز طبع درشت‌خو، چونان سوار بر شتر چموش است كه اگر افسارش را بكشد، بینی‌اش بریده شود و اگر رهایش كند، از اختیارش به‌در می‌رود.'),
(584, 'اُرد بزرگ', 'میهمانی های فراوان از ارزش آدمی می كاهد، مگر دیدار پدر و مادر.'),
(585, 'آندره موروا', 'هیچ انقلابی نتوانسته است نیكبختی و خوشبختی جاودانه ی اجتماعی را تضمین كند.'),
(586, 'آنتونی رابینز', 'قوانین فردی، بر همه ی كنش های ما فرمانروایی می كنند.'),
(587, 'جان كولینز', 'راز موفقیت در زندگی را تنها افرادی آموخته اند كه در زندگی موفق شده اند.'),
(588, 'فرانسوا ولتر', 'وقتی كه حرف پول پیش می آید، همه پیرو یك كیش و آیین می شوند.'),
(589, 'فرناندو پسوا', 'این انسانها كه همواره مرا در بر می گیرند، ارواحی هستند كه مرا نمی شناسند و روز به روز با همنشینی و شیوه ی سخنوری خود وانمود می كنند كه مرا می شناسند.'),
(590, 'مثل فرانسوی', 'كسی كه وجدانش پاك باشد، زود خوابش می برد.'),
(591, 'موریس مترلینگ', 'ما هیچ دلیلی در دست نداریم كه بتوانیم وجود فهم و شعور را در سنگ و درخت و غیره منكر بشویم و در این صورت بعید نیست دنیاهایی وجود داشته باشد كه در آن، سنگ ها و سایر جمادات مثل ما زندگی كنند و بلكه زندگی فكری آنها از ما بالاتر باشد.'),
(592, 'تئودور پاركر', 'كاش دانسته بودم چگونه زندگی كنم یا كسی را یافته بودم كه روش زندگی را به من آموزش دهد.'),
(593, 'حضرت محمد (ص)', 'تنهایی بهتر از همنشینی با انسان بد است و داشتن همنشین خوب، بهتر از تنهایی است و كلام (سخن گفتن) نیكو، بهتر از سكوت و سكوت، بهتر از سخن شر (بد و فتنه‌انگیز و زشت) است.'),
(594, 'بوذرجمهر', 'بهترین كارها این است كه درجوانی دانش اندوزی و در پیری به كاربری.'),
(595, '؟', 'ناخدایی كه نمی داند مقصدش كجاست، هر بادی برایش باد مخالف است.'),
(596, 'اُرد بزرگ', 'دودمانی كه بزرگان و ریش سفیدانش خوار باشند، به كالبد بیجانی ماند كه خوراك جانوران دیگر شود.'),
(597, 'كارل فریدریش ویلهلم واندر', 'روح عاشق هیچ گاه در خانه نیست.'),
(598, 'جان ماكسول', 'برای غلبه بر ترس باید ترس را احساس كنید و با این حال، دست به كار شوید.'),
(599, 'امام علی (ع)', 'زشتی كه تو را غمگین كند، بهتر از كاری است كه تو را به نخوت كشاند.'),
(600, 'سر والتر راج', 'عشق راستین، آتشی پایدار است كه در اندیشه ی انسان شعله ای جاودان دارد. رخوت پیری و مرگ را در آن راهی نیست؛ همیشه چنین خواهد بود.'),
(601, 'آبراهام مازلو', 'ما نسبت به آنچه كه در درون خود، كور و كر هستیم، نسبت به همان، در دنیای بیرون نیز كور و كریم.'),
(602, 'ریچارد تمپلر', 'همه ی ما گاهی شكست می خوریم و هیچ كس كامل نیست.'),
(603, 'نیچه', 'دانایی بسیار داشتن ما را جوان نگه می دارد، اما بایستی این را نیز برتابیم كه از این بابت ما را پیرتر از آنچه هستیم بپندارند.'),
(604, 'راسفور', 'بخت و اقبال اصطلاحی است كه ضعفا به كار می برند و عذر و بهانه ای برای ارتكاب هر نوع اشتباه است. افراد توانا و خردمند به وجود سرنوشت باور ندارند.'),
(605, 'لرد چسترفیلد', 'اگر می توانی، خردمندتر از بقیه ی مردم باش؛ ولی در این مورد، چیزی به آنها نگو.'),
(606, 'حضرت محمد (ص)', 'مؤمن از بعضی از فرشتگان نزد خداوند، گرامی‌تر است. (نه فرشتگان مقرّب مانند جبرییل و عزرائیل و میكائیل و ...)'),
(607, 'سقراط', 'مرد عاقل كسی است كه كم گوید و زیاد شنود.'),
(608, 'لارشفو كولد', 'اگر می خواهی خوشبخت باشی، جز آنچه برایت مهیاست آرزو مكن.'),
(609, 'ویلیام شكسپیر', 'روزگار [ مانند ] دریایی است كه كشتی زندگی ما بر روی آن به طرف ساحل هدف می رود. این دریای بزرگ همیشه در [ حال ] جزر و مد است. اگر امروز آرام باشد، به طور حتم فردا طوفانی خواهد بود. بنابراین وقتی آرام است، [ باید ] فرصت را غنیمت شماریم.'),
(610, 'اُرد بزرگ', 'در پشت هیچ در بسته ای ننشینید به امید اینكه روزی باز شود، [ بلكه ] در دیگری را جستجو کنید و اگر نیافتید، همان در را بشکنید.'),
(611, 'نیچه', 'با شناختن هر چیزی در كسی آن چیز را در او برافروخته می سازیم. پس، از خُردان بپرهیز.'),
(612, 'آنتوان دوسنت اگزوپری', 'بر سفره‌ای كه در زیر درخت سیبی پهن شده باشد، جز سیب بر آن فرود نخواهد آمد و سفره‌ی گسترده‌ی زیر ستارگان، فقط پذیرای غبارات كوكب‌هاست.'),
(613, 'امام علی (ع)', 'زیان‌كارترین مردم از حیث كالا و محروم‌ترین آنان از نظر تلاش، مردی است كه بدن خود را در طلب مال ناتوان ساخت و فرسود، ولی مقدّرات، اراده‌ی او را یاری نكرد؛ پس با حسرت همان مال از دنیا خارج شد و با نتیجه‌ی فاسدِ آن، وارد آخرت شد.'),
(614, 'اریك نیوتن', 'هنر برخلاف طبیعت، پر است از نیت ها و نظرها و توضیحات [ =بازنمودن ] و بیزاریها و پسندهای بشری و اگر قرار باشد كه هنر فهمیده شود باید نخست همه ی آن عوامل فهمیده شوند.'),
(615, 'پرمودا باترا', 'درس و دانش، با فهم و خرد تفاوت دارد.'),
(616, 'جان ماكسول', 'كسی كه پا را از مرز زندگی عادی فراتر می نهد، آرزویی بزرگ در دل دارد.'),
(617, 'هرشل', 'اگر می خواهید در زندگی، دوستان وفادار و یاران غمخوار داشته  باشید، كم و خیلی دیر با مردم دوست شوید.'),
(618, 'حضرت محمد (ص)', 'هر كه به سخن گفتن ابتدا كند پیش از سلام جوابش مگویید و كسی را به طعام خود مطلبید پیش از آنكه سلام كند.'),
(619, 'بوفون', 'نبوغ چیزی نیست، مگر استعداد فراوان در صبر و شكیبایی.'),
(620, 'فلورانس اسكاول شین', 'مهم نیست كه چند بار شكست بخورید؛ دیگر بار برخیزید و از نو آغاز كنید.'),
(621, 'نیچه', 'مرد حقیقی خواستار دو چیز است : خطر و بازی. از این رو زن را به عنوان خطرناك ترین بازیچه ها می طلبد.'),
(622, 'ضرب المثل چینی', 'یك تصور، خیلی بهتر از ده هزار كلمه با انسان حرف می زند.'),
(623, 'بودا', 'نادان كه داند نادان است، دستِ‌كم تا همین اندازه بخرد است. ولی نادانی كه خود را دانا انگارد، به راستی، نادان خوانده شود.'),
(624, 'هرمان هسه', 'آنان كه نمی توانند مسئولیت بپذیرند، به رهبر نیاز دارند و برای داشتن رهبر، داد و فریاد راه می اندازند.'),
(625, 'م حضرت محمد (ص)', 'علم را با نوشتن مهار كنید. (نشستن و شنیدن حرف عالم خوب است ولی به مرور زمان از یاد می‌رود پس بهتر است نوشته شود تا با مراجعه به آن، دوباره به یاد بیاوریم.)'),
(626, 'وین دایر', 'هر روز، سازش و آرامش بیشتری را به زندگی‌تان فراخوانید.'),
(627, 'سیلونه', 'اگر این همه استاد برای پند دادن وجود نداشت، پند گرفتن كار آسانی بود.'),
(628, 'كریستین بوبن', 'نوزادان، آموزندگان اندیشه اند كه هرگز غم به خود راه نمی دهند.'),
(629, 'حضرت محمد (ص)', 'مرگ برای نصیحت كردن (انسان) و یقین برای بی‌نیازی كافی می‌باشد.'),
(630, 'استیو چندلر', 'در مورد آنچه در ذهن خود دارید، احساس مسئولیت داشته باشید تا بتوانید از یك ذهن مثبت و بزرگ برخوردار شوید.'),
(631, 'فلورانس اسكاول شین', 'حسد، بزرگترین دشمن عشق است.'),
(632, 'امام علی (ع)', 'برای فرزند بر پدر حقی است و برای پدر بر فرزند، حقی. حق پدر بر فرزند این است كه: او را در همه چیز اطاعت كند، جز در معصیتِ خداوند سبحان. و حق فرزند بر پدر آن است كه: نام زیبا بر او بگذارد و فرهنگِ سازنده‌ی او را نیكو كند و قرآن را به او تعلیم دهد.'),
(633, 'چارلز فیلد', 'بی مصرف ترین روزها روزی است كه در آن نخندیده باشید.'),
(634, 'رالف والدو امرسون', 'هر لحظه بزرگ و ماندنی در تاریخچه ی جهان در حقیقت ثمره ی پیروزی اشتیاق ها است.'),
(635, 'نیچه', 'تو با حقایقت سخت فرو می كوبی. اما چماقت از من می راند این حقیقت را!'),
(636, 'افلاطون', 'به راستی همان عشق به تنهایی كافی است كه موجد اتحاد و توانایی افراد جامعه باشد.'),
(637, 'مثل فارسی', 'كس نخارد پشت من جز ناخن انگشت من.'),
(638, 'امام علی (ع)', 'جاهلی كه یادگیرنده است، مانند عالِم است و عالِمی كه كه در علم كجروی می‌كند، شبیه به جاهلی است موذی و لجوج.'),
(639, 'فیثاغورث', 'سكوت را بیاموز؛ بگذار ذهن آرام تو گوش كند و بیاموزد.'),
(640, 'استیو چندلر', 'زندگی ما با همه‌ی دگرگونی‌هایش، در دست خودمان است. اكنون می‌خواهید آن را بی‌رمق و بی‌روشنایی بگذرانید، یا پر از شور و الهام؟'),
(641, 'هاوارد سیلته', 'من می دانم كه زیباترین عشق خود را در یك كتابخانه دیدار خواهم كرد.'),
(642, 'أوله جیمز اوناستاد', 'اینكه كسی تبهكار اجتماعی باشد، مانند این است كه هفت سال با كوشش و سختی در دانشگاه تحصیل كرده، اما هیچ چیز نیاموخته باشد.'),
(643, 'اسمایلز', 'اخلاق، سرمایه است؛ اخلاق، بهترین و عالی ترین دارایی ما به شمار می رود.'),
(644, 'پرمودا باترا', 'برای پدران دارا و توانگر، به دست آوردن دارایی زیاد، آسان‌تر از پرورش پسران خوب است.'),
(645, 'جرج برنارد شاو', 'از مكالمه و پرگویی بیجا نجات پیدا خواهید كرد، اگر به خاطر بیاورید كه مردم هرگز نصایح شما را قبول نمی كنند، مگر اینكه وكیل مدافع و یا دكتر باشید و آنها برای شنیدن صحبت های شما پول خرج كرده باشند.'),
(646, 'آرتور شوپنهاور', 'یك پزشك همه كس را می تواند درمان كند جز خودش را؛ زمانی كه بیمار شود، نزد یك همكار می رود.'),
(647, 'بودا', 'آنچه كس از كردنش پشیمان گردد، نیك نیست و پادافراه [ =سزای ] وی شیون و چهره‌ی اشكبار باشد. آن كرده‌ی نیك است كه كس از آن پشیمانی نخورد و پادافراه آن شادمانه و شادمان نبیند.'),
(648, 'جان ماكسول', 'حقیقت این است كه تیم شما باید به اندازه ی رویای شما بزرگ باشد. در غیر این صورت نمی توانید به رویای خود جامه ی عمل بپوشانید.'),
(649, 'نیچه', 'در هنگام لزوم نه تنها مشكلات و حوادث ناگوار را صبورانه بپذیر و تحمل كن، بلكه آنها را دوست بدار.'),
(650, 'جین انویل', 'موضوع [ =جستار ] هنر، شكل دادن به زندگی است.'),
(651, 'مادر ترزا', 'سكوت پیش از آغاز آفرینش به وجود آمده است و آسمانها در فضا پراكنده شدند، بی هیچ حرفی و سخنی.'),
(652, 'افلاطون', 'نگهبانی نیرومندتر از عشق وجود ندارد؛ نه مال و جلال و نه قوم و خویش و در میان مردمان كاری را كه از توان عشق ساخته است نتواند كرد.'),
(653, 'نیچه', 'هیچ یك از شما نمی خواهد در زورق مرگ پای گذارد! پس از چه رو می خواهید از جهان خسته باشید!'),
(654, 'آنتونی رابینز', 'ما با كنش های خود، ژرفترین ارزشها و باورهایمان را بیان می كنیم.'),
(655, 'توماس ادیسون', 'من شكست نخورده ام، تنها هزار راه حل پیدا كرده ام كه به كار نمی آیند.'),
(656, 'مایكل ال اشتال', 'همیشه زمانی كه كمترین احساس آسایش را دارید، می توانید چیزی یاد بگیرید.'),
(657, 'جان ماكسول', 'اگر نقاط ضعف یكدیگر را به رخ هم نكشیم زندگی زناشویی بهتر می شود.'),
(658, 'ارد بزرگ', 'آن كه مدام از كمبودها و ناراستی های زندگی خویش سخن می گوید، دوست خوبی برای تو نخواهد بود.'),
(659, 'الیوید کلد اسمیت', 'ساعاتی كه در انتظار خوشبختی هستیم، لذت بخش تر از دقایقی است كه به لذت خوشبختی رسیده ایم.'),
(660, 'نیچه', 'هیچ فاتحی به اتفاق و حادثه عقیده ندارد.'),
(661, 'رندل جرل', 'یكی از روشن ترین راستی‌ها درباره‌ی دیدگاه افراد بزرگسال نسبت به كودك، این است كه كودكی را فراموش كرده‌اند.'),
(662, 'فرانسوا ولتر', 'آنهایی كه در زبان بازی مهارت به خرج می دهند، بیشتر، نیت پلید را در قلب خود می پرورانند.'),
(663, 'مصطفی كمال پاشا', 'آینده متعلق به كسانی است كه در آرزوی آن هستند و به آن ایمان دارند.'),
(664, 'آبراهام لینكلن', 'هر كاری كه تصمیم آن را بگیرید، نصفش را انجام داده اید.'),
(665, 'نیچه', 'اگر مقایسه های بی پروا دلیل سبك سری ( خواست كینه توزانه ) نویسنده نباشند، پس به یقین، دلیل خیال خسته و درمانده ی او هستند.'),
(666, 'ناپلئون بناپارت', 'برخی از مردان اگر بخواهند به فضیلت خود، مردانگی خود و صلابت خود دست یابند به دشمنانی صادق نیاز دارند.'),
(667, 'جین وبستر', 'گاهی یتیم بودن هم مزایایی دارد.'),
(668, 'تن', 'آنكه با خودش تنهاست، هرگز كامل نیست.'),
(669, 'ویلیام شكسپیر', 'از دست دادن امیدی پوچ و آرزویی دست نایافتنی، خود، كامیابی و پیشرفت بزرگی است.'),
(670, 'حضرت محمد (ص)', 'زمانی كه اهل گرسنگی و اندیشه را دیدید به آنها نزدیك شوید زیرا حكمت و دانش، بر زبان آنها جاری می¬شود.'),
(671, 'والت دیسنی', 'اگر بتوانید آرزوهای خود را تجسم كنید، بی‌گمان به آنها دست پیدا خواهید كرد.'),
(672, 'یَشتها', 'روان مردِ دُر وَند [= دروغ پرست، دیو پرست، گمراه، ناپاك] در نخستین گام به پایگاه اندیشه‌ی بد درآید. پس در دومین گام به پایگاه گفتار بد درآید. سپس در سومین گام به پایگاه كردار بد درآید.'),
(673, 'جك كانفیلد', 'جهان هستی همچون یك آینه است؛ یعنی هر گونه انرژی‌ كه می‌فرستید، به شما برگشت می‌دهد.'),
(674, 'رالف والدو امرسون', 'فردا، غریبه‌ای، استادانه، درست آنچه را در همه‌ی زندگی به آن اندیشیده‌ایم و احساس كرده‌ایم، خواهد گفت.'),
(675, 'باربارا دی آنجلیس', 'عشق، همان چیزی است كه به شما امكان می دهد بارها و بارها زاده شوید.'),
(676, 'لقمان', 'آن كه خوراكش كم است، عمرش زیاد و طولانی است.'),
(677, 'آناتول فرانس', 'خنده، بهترین اسلحه جنگ با زندگی است.'),
(678, 'پائولو كوئیلو', 'هرگز نباید سست شد، حتی اگر راه زیادی را پیموده باشی.'),
(679, 'سیسرون', 'نفرت همان خشم و غضب است كه روی هم انباشته شده است.'),
(680, 'جان كاینرل', 'هرگز از خودتان [ چیزی ] نگویید و تعریف نكنید؛ بگذارید اگر صفاتی دارید، از زبان دیگران شنیده شود.'),
(681, 'جبران خلیل جبران', 'اندرز من به زوجهای جوان این است كه به هنگام شادی، همگام با یكدیگر نغمه ساز كنید و پای بكوبید و شادمان باشید، اما امان دهید كه هر یك در حریم خلوت خویش آسوده باشد و تنها؛ چون تارهای عود كه تنهایند هر كدام، اما به كار یك ترانه ی واحد در ارتعاش.'),
(682, 'ویكتور هوگو', 'اگر نمی‌خواهی تو را بیازمایند، كار خود را درست انجام بده.'),
(683, 'نیچه', 'جرم این است كه ندانیم زندگی خیلی ساده تر از اینهاست كه ما فكر می كنیم.'),
(684, 'برایان تریسی', 'انجام كاری كه براستی از آن لذت می برید رمز عملكرد عالی است.'),
(685, 'نرمن وینسنت پیل', 'وقتی همه نیروهای جسمی و ذهنی متمركز شوند، توانایی فرد برای حل مشكلات به طور حیرت انگیزی چند برابر می شود.'),
(686, 'حضرت محمد (ص)', 'عمّامه تاج عربان است. هرگاه كه عمّامه را بطرف كنند خدا عزّت‌شان را برطرف خواهد كرد.'),
(687, 'برتراند راسل', 'دلایل این ناتوانی مسخره و اندوهبار در اینكه چنان رفتار كنیم كه منافع همگان حكم می كند، در امور خارجی نیست، بلكه در طبیعت عاطفی خود ماست.'),
(688, 'اریك فروم', 'وظیفه ی اصلی انسان در زندگی، تلاش برای زایش دوباره ی خودش است، تا شایستگی های درونی خود را شكوفا سازد.'),
(689, 'جك كانفیلد', 'ذوق و شوق، ابزاری نیرومند برای رسیدن به كامیابی است و شایستگی آن را دارد كه همواره درباره‌اش كار كنید.'),
(690, 'نیچه', 'آدمی را ارزش های دروغین و كلامهای پوچ، هولناك ترین هیولاست! سرنوشت شوم دیری در آنها می خسبد و چشم براه می ماند.'),
(691, 'گیل لیندن فیلد', 'یك زندگی اجتماعی والا هرگز نمی تواند این توانایی را داشته باشد كه تجربه های ژرف پر معنایی [ =چَمی ] را بدون خواست خود در دسترس مان قرار دهد.'),
(692, 'فرناندو پسوا', 'اگر از زندگی سر در می آوردیم، تحمل ناپذیر می شد. خوشبختانه چنین نیست. ما با همان ناآگاهی مثل حیوانات زندگی می كنیم و مانند آنها بیهوده و عبث.'),
(693, 'نیچه', 'او از مردم گریزان است، اما مردم به دنبال او می دوند، زیرا او پیشاپیش آنها است... چقدر مردم گلّه صفت هستند.'),
(694, 'حضرت محمد (ص)', 'بدان كه پیروزی با صبر كردن و گشایش (در كارها) با رنج و گرفتاری به دست می‌آید و بعد از (هر سختی آرامش وجود دارد.)'),
(695, 'فلورانس اسكاول شین', 'نوآوران بزرگ هرگز از كار خود به ستوه نمی آیند؛ وگرنه نمی توانستند به نوآوری های بزرگ دست بزنند.'),
(696, 'جان ماكسول', 'در رندگانی هیچ چیز به اندازه سختی و ناكامی، انسان را بهبودپذیر نمی كند.'),
(697, 'حضرت محمد (ص)', 'چیزی نزد خدا،‌ از دعا، گرامی‌تر نیست.'),
(698, 'دیل كارنگی', 'برای راه یافتن به دل هر كس باید از چیزی سخن گفت كه نزد او عزیزتر است.'),
(699, 'حضرت محمد (ص)', '‌سه چیز است كه در هر كسی باشد، خداوند بزرگ او را در پناه خودش جای می‌دهد و به بهشت‌اش داخل می‌كند: مدارا كردن با افراد ضعیف و مهربانی كردن با پدر و مادر و نیكی با افراد زیر دست.'),
(700, 'اُرد بزرگ', 'دیدگاه خوب مردم، بهترین پشتیبان برگزیدگان است.'),
(701, 'والت ویتمن', 'خیال می كنم كه همه قهرمان ها و تمامی شعرهای آزاد در هوای آزاد به تصور درآمده است.'),
(702, 'یان اسكاسل', 'شاعران شعر را نمی آفرینند، شعر جایی در آن پس و پشت ها است، از دیر زمان در آنجا است. شاعر كاری نمی كند مگر كشف آن!'),
(703, 'هنری میلر', 'دارایی و ثروتی ندارم، تنها سرمایه ام، روح شاد من است.'),
(704, 'نیچه', 'انزجار از كثیفی ممكن است چنان شدید باشد كه ما خود را پاك نكنیم، یعنی توجیه نكنیم.'),
(705, 'آلبرت انیشتین', 'پی بردن به اسرار اتم برای من آسانتر از درك مكنونات [ =نهان داشته های ] یك زن است.'),
(706, 'جرج برنارد شاو', 'زندگی، پُر از ماجراهای دلنشین و هیجان انگیز است؛ هرگز شانس خود را برای یافتن آنها از دست ندهید.'),
(707, 'آرتور شوپنهاور', 'نابغه همنشین خود را فراموش می كند و بی توجه به اینكه آیا وی سخنان او را می فهمد یا نه، چنان به حرف زدن ادامه می دهد كه گویی كودكی با عروسكش سخن می گوید.'),
(708, 'كریشنا', 'آنچه مغز و قلب را از آلایش پاك می كند، فقط دانش است؛ آنچه برجای می ماند بی دانشی است.'),
(709, 'آنتونی رابینز', 'اندیشه های خود را شكل دهید، وگرنه دیگران، اندیشه های شما را شكل می دهند.'),
(710, 'نیچه', 'چه چیز موجب قهرمانی است؟ همزمان به استقبال بزرگترین رنج و بزرگترین امید خود رفتن.'),
(711, 'حضرت محمد (ص)', 'همانا بر خدا لازم است كه چیزی از امور دنیا بالا نبرد مگر این كه در (آن را روز به روز)‌ پایین‌تر ببرد.'),
(712, 'پائولو كوئیلو', 'وقتی تو چیزی را می خواهی همه ی جهان دست به یكی می كند تا تو آرزویت را برآورده سازی.'),
(713, 'نیچه', 'هزار تلاش انسان به اندازه ی یك تقدیر كارساز نیست.'),
(714, 'نیچه', 'تا زمانی كه امری یا كسی را كم ارزش می پنداریم، نفرت نمی ورزیم، بلكه تازه زمانی چنین می كنیم كه آن را همسان یا برتر می دانیم.'),
(715, 'فلورانس اسكاول شین', 'از امور جزیی درس بگیرید تا برای اداره ی امور بزرگ آماده شوید.'),
(716, 'اریكا یانگ', 'مهار زندگی خود را خود، به دست بگیرید. چه پیش خواهد آمد؟ هراسناك است، دیگر كسی نیست كه گناه‌ها را به گردنش بیندازید.'),
(717, 'بلز پاسكال', 'تمامی مقام و بزرگی انسان در اندیشیدن است.'),
(718, 'ماركولی', 'مرد باید راست بایستد، نه اینكه دیگران او را راست نگه دارند.'),
(719, 'حضرت محمد (ص)', 'سه گروه هستند كه از آتش جهنّم باز داشته نمی‌شوند (یعنی قطعاً‌ اهل جهنّم‌اند) منّت‌گذار (‌وقتی انفاق می‌كند،‌ منّت می‌گذارد)‌ و عاقّ‌ پدر و مادر (كسی كه پدر و مادرش از او چنان ناراضی هستند كه نفرینش می‌كنند) و كسی كه همیشه شراب می‌نوشد.'),
(720, 'لئوبوسكالیا', 'هر كسی را می‌توان دوست داشت، فقط از آن رو كه انسان است و یكی از آفریده‌های بی‌همتای خداوند.'),
(721, 'امام علی (ع)', 'از عقلی كه داری، همین تو را بس كه راه‌های گمراهی را از رستگاری‌ات روشن بسازد.'),
(722, 'پائولو كوئیلو', 'خودت را تسلیم ناامیدی نكن؛ این امر تو را از گفتگو با قلبت باز می دارد.'),
(723, 'ویكتور فرانكل', 'آخرین آزادی ما انسانها این است كه نگرش خود را در هر شرایطی خود انتخاب كنیم.'),
(724, 'امام علی بن الحسین (ع)', 'هر كه حاجت برادر مؤمن خود را برآورد حق تعالی صد حاجت او را برآورد كه یكی بهشت باشد.'),
(725, 'حضرت محمد (ص)', 'بزرگ‌ترین ظلم آن است كه شخصی، یك ذراع (به اندازه‌ی آرنج تا انگشتان) از زمین برادر (مسلمان) خود بردارد، چیزی از آن زمین را نمی‌گیرد، مگر این كه خداوند در روز قیامت، به صورت طوقی در گردن او می‌اندازد.'),
(726, 'حضرت محمد (ص)', 'بهترین عمل، نیّت راست است. (یعنی اگر عملی با نیّت راست همراه باشد، بهترین عمل خواهد شد.)'),
(727, 'فرانتس كافكا', 'هراس، تیره بختی است، اما شهامت را نمی توان نیكبختی دانست؛ نهراسیدن سعادت است.'),
(728, 'جان. اف. كندی', 'كودكان، ارزشمندترین سرچشمه های دنیا و بهترین امید برای آینده‌اند.'),
(729, 'حضرت محمد (ص)', 'هر كه مسلمان فقیری را سبك شمارد حق خدا را سبك شمرده است و حق تعالی او را در قیامت سبك شمارد مگر آنكه توبه كند.'),
(730, 'جرج پتون', 'ترس، كُشنده‌تر از مرگ است.'),
(731, 'امام رضا (ع)', 'یك شب درد سر هر گناهی را برطرف می‌كند مگر گناهان كبیره را.'),
(732, 'سامول جانسون', 'كمابیش همه ی مردم بخشی از عمرشان را در تلاش برای نشان دادن ویژگی هایی كه ندارند، هدر می دهند.'),
(733, 'آنا آندریم', 'شناختن خود، خرد است؛ ولی شناختن دیگری، هوش سرشار.'),
(734, 'ثورو ویك', 'زندگیت هرچه كه باشد با آن روبرو شو و آن را در آغوش بگیر، از آن دوری مكن و به نامهای سخت و درشتش مخوان؛ زندگی آنقدر بد نیست كه تو هستی.'),
(735, 'آیروینگ ستون', 'هنر نیازی اساسی مانند نان یا نوشیدنی یا پالتوی گرم در فصل زمستان است. روح انسان همان‌گونه آرزومند هنر می‌شود كه شكم برای غذا به صدا در می‌آید.'),
(736, 'رالف والدو امرسون', 'اگر هركس با فكر خود و بدون نفوذ خارجی برای رسیدن به هدفش كوشش كند، سرانجام، طبیعت تسلیم او شده و دنیا به او روی می آورد.'),
(737, 'خیام', 'به مجرد اینكه انگشت تو حركت كرد و چیزی نوشت و به نوشتن ادامه داد، نه پارسایی و پرهیزگاری و نه فهم و زیركی تو می‌تواند نیم خط آن را از بین ببرد، و نه اشك‌های تو می‌تواند واژه‌‌ای از آن را بشوید و پاك كند.'),
(738, 'توماس كارلایل', 'وظیفه و كار ما این نیست كه دلواپس فاصله های دور و مبهم و ناشناخته ای كه در پشت ابر و تاریكی پنهان شده اند باشیم، بلكه باید وقت خود را صرف آن چیزهایی بكنیم كه در دسترس ما قرار گرفته اند.'),
(739, 'استیو چندلر', 'عشق، نه می‌آید و نه روی می‌دهد، بلكه عشق، آفریده می‌شود.'),
(740, 'محمدحجازی', 'امید سرابی است كه اگر ناپدید شود همه از تشنگی خواهیم سوخت.'),
(741, 'پرمودا باترا', 'شما زمان خود را صرف ورزش نمی‌كنید، بلكه زمان خود را روی ورزش، سرمایه‌گذاری می‌كنید.'),
(742, 'امام علی (ع)', 'به خدا تقوا بورزید، تقوای كسی كه شنید و خشوع كرد، گناه اندوخت و اعتراف كرد، ترسید و عمل نمود، حذر كرد و به انجام اعمالِ نیكو مبادرت ورزید. به مقام یقین رسید و به نیكوكاری پرداخت، وسیله‌ی عبرت بر او عرضه شد، عبرت گرفت. برحذر داشته شد، حذر نمود.'),
(743, 'ویلیام شكسپیر', 'یقین است كه رفتار حكیمانه با وضع جاهلانه همچون بیماری از یك شخص به شخص دیگر سرایت می كند؛ پس لازم است كه مردمان مراقب انتخاب همنشینان خود باشند.'),
(744, 'نیچه', 'در مدارس، اندك نشانی از آموزش اندیشه كردن نمی توان یافت؛ حتی در دانشگاه ها؛ حتی در میان شناخته ترین فیلسوفان؛ آری می بینم كه منطق به عنوان یك نظریه، كار و تكنیك دارد به سستی می گراید.'),
(745, 'سورن كیركه گارد', 'مردم به جبران آزادی فكر كه به ندرت از آن بهره می برند، خواستار آزادی بیان هستند.'),
(746, 'پتیاگور', 'دو كلمه آری و نه كه تلفظ شان آسان است، كلماتی هستند كه برای ادای آنها اندیشه و مطالعه فراوان لازم است.'),
(747, 'باربارا دی آنجلیس', 'كارتان را با عشق انجام دهید.'),
(748, 'آرتور شوپنهاور', 'افكار هم مثل انسانها هستند؛ همواره و به دلخواه نمی آیند؛ باید انتظار كشید.');
INSERT INTO `quotations` (`id`, `author`, `text`) VALUES
(749, 'كن بلانچارد', 'كار كردن بدون رعایت اصول اخلاقی به فساد و تباهی می انجامد.'),
(750, 'امام علی (ع)', 'بر تو باد به حاضر شدن در مجالسی كه در آنجا یاد خدا كنند.'),
(751, 'امام جعفر صادق (ع)', 'خانه‌ای كه مسلمانی در آن قرآن خواند اهل آسمان آن خانه را به یكدیگر می‌نمایند چنان كه كواكب آسمان را اهل زمین به یكدیگر می‌نمایند.'),
(752, 'زونا گیل', 'عشق‌ورزی همانند نیایش، هم گونه‌ای رفتار است، هم گونه‌ای نیروی شفابخش و آفریننده.'),
(753, 'آلدوس هاكلی', 'زندگی مانند نقش و نگارهای قالی ایرانی است كه زیبا هست، اما درك معنای آن مشكل است.'),
(754, 'مایكل جردن', 'قلب همان چیزی است كه خوب را از عالی جدا می كند.'),
(755, 'حضرت محمد (ص)', 'به وسیله‌ی كتمان و پنهان‌كاری، بر انجام كارهای خود، كمك بگیرید، زیرا هر كسی كه دارای نعمتی (از طرف خدا)‌ باشد،‌ مورد حسادت قرار می‌گیرد.'),
(756, 'امام زین‌العابدین (ع)', 'با اهل دین و معرفت همنشینی كنید و اگر به دست شما نیایند تنهایی مونس‌تر و سالم‌تر است از مصاحبت غیر ایشان.'),
(757, 'پرمودا باترا', 'بزرگترین دشمن انسان، خودش است.'),
(758, 'بزرگمهر', 'تن به تن آسایی و كاهلی نباید سپرد؛ كاری باش و از این راه شادی و آسایش را فراهم كن.'),
(759, 'استیو چندلر', 'مهم‌ترین بخش تجسم پویا، نه تنها دستیابی به رویاست، بلكه ایجاد آن دگرگونی‌هایی است كه نخست در درون انسان روی می‌دهد.'),
(760, 'اُرد بزرگ', 'خویشتن و مردم را زمانی می شناسی كه تنها شوی.'),
(761, 'مادر ترزا', 'كار بزرگ عبارت است از انجام كار كوچك با عشق زیاد.'),
(762, 'اشو', 'مردم به این دلیل عشق می ورزند كه غمگین اند؛ به این دلیل در جست و جوی دیگری اند كه تنها هستند و عشق فقط زمانی امكان پذیر است كه تو تنها نباشی، بلكه در یگانگی باشی؛ با خودت قهر نباشی، بلكه با خودت در شیفتگی و سرمستی باشی.'),
(763, 'شری كارتر اسكات', 'خرد، كیفیتی نیست كه باید به آن رسید، بلكه كیفیتی است كه باید به یاد آورده شود.'),
(764, 'حضرت محمد (ص)', 'بالاترین عبادت، سكوت است. (زیرا با سكوت از زبان و گناهان آن جلوگیری می‌شود.)'),
(765, 'میلان كوندرا', 'زمانه ی آكنده از انبوه ایده ها و بی اعتنا نسبت به آثار [ ادبی و هنری ] ، مرا غرق در نومیدی می سازد.'),
(766, 'استیو چندلر', 'آنچه انجام می‌دهید، بسیار مهم‌تر از آن چیزهایی است كه مرتب از آن سخن می‌گویید.'),
(767, 'آبراهام مازلو', 'درست همان گونه كه برای شنیدن نوای زمزمه‌ی كسی باید سكوت كنیم و بی‌حركت باشیم، نگرش ما به هنر نیز باید با عشق و ستایش همراه باشد.'),
(768, 'جرج الیوت', 'برای ارواح بشری چه چیزی بالاتر از این است كه در هر رنج و محنتی غمخوار یكدیگر و در هر شادی، شریك خنده های هم و در خلوت خاطره های یكدیگر تنها تصاویر ماندگار و ابدی وجود هم باشند.'),
(769, 'فریدریش شیلر', 'با مردم زمانه همنشین باش، اما مانند آنان مباش و برای معاصرین خود مطالبی بنویس كه به آن محتاجند، نه مطالبی كه می پسندند.'),
(770, '؟', 'نگرانی درباره‌ی چیزهایی كه در كنترل شما نیست، معنا ندارد، زیرا در چنین شرایطی، تلاش و نگرانی‌تان، چیزی را تغییر نمی‌دهد.'),
(771, 'اشو', 'عشق حقیقی بسیار لحظه ای است، اما هیهات از این لحظه!'),
(772, 'حضرت محمد (ص)', 'پروردگارا! من از همسایه‌ی بد كه مكان ثابتی هم دارد (و از آنجا هم نمی‌رود) به تو پناه می‌برم زیرا همسایه‌ی بیابانی (یعنی اجاره نشین) متحوّل می‌شود. (یعنی دیر یا زود آنجا را ترك می‌كنند.)'),
(773, 'میلان كوندرا', 'دورنمایه ی فراموش نشدنی وابسته به تولد عشق با زیبایی اضطراب آورش درست در لحظه ی ناامیدی انسان را به سوی خود می كشد. انسان همیشه ندانسته، حتی در ژرف ترین لحظه های پریشانی، زندگیش را بر مبنای قوانین زیبایی می سازد.'),
(774, 'حضرت محمد (ص)', '(در) دو وقت است كه درهای آسمان در آن دو وقت باز است و كم‌تر امكان دارد كه دعای، دعاكننده‌ای،‌ رد شود: به هنگام نماز و به هنگام صف‌آرایی (در جبهه‌ی جنگ) ‌در راه خداوند.'),
(775, 'ژوبر', 'كودكان بیش از انتقاد به الگو و سرمشق  نیازمندند.'),
(776, 'هنری كایز', 'مشكلات فرصتهایی هستند در لباس كار و تللاش.'),
(777, 'گای فینلی', 'ترسیدن از اینكه ممكن است دیگران را آزرده كنید، به هیچ وجه خوشایند نیست.'),
(778, 'حضرت محمد (ص)', 'هیچ یك از شما نباید به خاطر سختی‌ای كه به او رسیده است، آرزوی مرگ كند. (زیرا سختی مرگ بسیار بالاتر از سختی‌های در دنیاست.)'),
(779, 'هوارد فاست', 'بزرگترین شادی تولد است و بزرگترین غمها مرگ.'),
(780, 'افلاطون', 'انجام هر نوع خدمت و تحمل هر گونه سختی و مذلت را به راه معشوق، ننگ عاشق نشماریم، بلكه آن را از افتخاراتش دانیم و مایه آراستگی و برازندگی او شناسیم.'),
(781, 'اسكار وایلد', 'تا زنده هستید، دل خود را زنده و شاداب نگهدارید؛ فرصت برای دلتنگی و مرگ بسیار زیاد است.'),
(782, 'فرانك', 'ما در بین كسانی كه با ما هم عقیده اند، احساس آرامش داریم، اما زمانی بزرگ می شویم كه در بین كسانی باشیم كه با ما هم عقیده نباشند.'),
(783, 'حضرت محمد (ص)', 'خداوند بزرگ فرمود: محبوب‌ترین چیزی كه بنده‌ی من به واسطه‌ی آن مرا عبادت می‌كند، اخلاص (در كارها) برای من است.'),
(784, 'حضرت محمد (ص)', '‌كارهای حرام، روشن است (‌و باید آن‌ها را ترك كرد) و كارهای حلال (‌هم)‌ روشن است (باید آن‌ها را انجام داد ولی) ‌كارهایی كه (نسبت به آن) شك داری (كه حلال است یا حرام) ‌رها كن و كارهایی كه شك نداری را انجام بده.'),
(785, 'امام علی (ع)', 'بزرگ‌ترین توانگری، ناامیدی است از آنچه در دست مردم است.'),
(786, 'آندره ژید', 'من بر این باورم كه عشق به یك شخص ِبزرگوار، بیش از هر چیز دیگر به انسان فروتنی می آموزد.'),
(787, 'ویلیام شكسپیر', 'هیچ چیز خوب یا بد نیست، بلكه شیوه اندیشیدن ما است كه آنها را نیك یا ناپسند جلوه گر می كند.'),
(788, 'ضرب المثل فرانسوی', 'اگر [ تا به حال ] داماد نشده ای، از یک شب شادمانی و عمری بداخلاقی محروم گشته ای.'),
(789, 'حضرت محمد (ص)', 'روزه، سپر (در مقابل عذاب الهی) است،‌ تا زمانی كه با دروغ یا غیبت دریده نشود. (یعنی پراكنده و بی‌تأثیر نشود.)'),
(790, 'میلان كوندرا', 'گرایش به آشتی دادن ماجرای عشق شهوانی با عشق پاك، عین ذات لذت پرستی است و دلیل ناممكن بودن این آشتی است.'),
(791, 'حضرت محمد (ص)', 'بهترین شما كسی است كه از طایفه (و قبیله‌ی)‌ خود تا زمانی كه به گناه نینجامد، دفاع كند.'),
(792, 'فرناندو پسوا', 'خالص بودن، نجیب یا قوی بودن نیست، بلكه خود بودن است. كسی كه عشق ارزانی می دارد، عشق را می بازد.'),
(793, 'كریستین بوبن', 'تجربه‌ی خوار شدن، همچون تجربه‌ی عشق است؛ فراموش نشدنی.'),
(794, 'فلورانس اسكاول شین', '"بازی زندگی"، یك بازی فردی است؛ اگر خودتان دگرگون شوید، همه ی اوضاع و شرایط عمومی دگرگون خواهد شد.'),
(795, 'حضرت محمد (ص)', '‌بهترین چیزی كه به مرد مؤمن داده شده است، خوش خلقی است و بدترین چیزی كه به مرد داده شده است، بد دلی است در حالی كه صورت نیكویی دارد. (بد سیرتی در خوش سیرتی)'),
(796, 'استیون شَپیرو', 'هنگامی كه روی هدفهای نزدیك تمركز می كنید و به آینده و اهداف دور و دراز نمی اندیشید، آسوده دل خواهید شد و فرصت های بسیار بزرگ و والا سر راهتان قرار خواهند گرفت.'),
(797, 'مثل چینی', 'با ثروت می توان بر شیاطین فرمانروایی كرد، بدون ثروت حتی نمی توان بره ای را احضار كرد.'),
(798, 'ناپلئون هیل', 'چشم براه مباش؛ زمانه هرگز به مراد دل ما نخواهد بود.'),
(799, 'مثل آفریقائی', 'رفتار خوب تو، همسایه خوب به وجود می آورد.'),
(800, 'نیچه', 'بگریز، دوست من، به تنهایی ات بگریز! تو را از بانگ بزرگ مردان كر و از نیش خردان زخمگین می بینم.'),
(801, 'بودا', 'رها كردن را بیاموزید كه كلیدخوشبختی است.'),
(802, 'كریستین بوبن', 'یك نویسنده بیشتر اسیر وظیفه است تا حق.'),
(803, 'الکساندر دوما', 'وقتی که زنان دوستمان می دارند، ما را از هر لحاظ به دیده عفو می نگرند؛ حتی جنایاتمان را. ولی وقتی که دوستمان نمی دارند، ارزشی حتی برای فضائل مان قایل نمی شوند.'),
(804, 'پائولو كوئیلو', 'خداوند دعای كسانی را می شنود كه می خواهند نفرت از آنها گرفته شود، اما نسبت به آنهایی كه می خواهند از عشق بگریزند ناشنواست.'),
(805, 'كریستوفر مارلو', 'هر چه صبر بیشتر باشد، دقت بیشتر است و هر چه دقت بیشتر باشد، موفقیت بیشتر است.'),
(806, 'مثل انگلیسی', 'قمار، مشروب و زن بد، خنده را از لبان مرد دور می كند.'),
(807, 'پرمودا باترا', 'شما در زندگی، فرصت‌های زیادی دارید تا شرایط دشوار را به شرایطی بسیار خوب تبدیل كنید.'),
(808, 'مارك تواین', 'حقیقت گرانبهاترین چیزی است كه ما داریم.'),
(809, '؟', 'آن اندازه كه من از خود توقع دارم، كسی از من انتظار ندارد.'),
(810, 'كارل سند برگ', 'بدون داشتن یك آرزو، هیچ تغییری به وجود نمی آید.'),
(811, 'ویلیام شكسپیر', 'دشمنان بسیار دارید كه نمی دانند چرا دشمن شما هستند؛ همچون سگهای ولگرد هنگامی كه رفیقشان بانگ بردارد، آنان نیز بانگ بر می دارند.'),
(812, 'پائولو كوئیلو', 'آنچه بیش از همه انسانها را شیفته می كند زیبایی است.'),
(813, 'برایان تریسی', 'با افراد مناسب یعنی انسانهای مثبت و هدفمندی كه شما را تشویق می كنند و الهام بخش هستند، نشست و برخاست كنید.'),
(814, 'حضرت محمد (ص)', 'هر شخصی بر طبق دین دوستش است. (اگر دوستش دیندار و معتقد باشد، او نیز دیندار خواهد بود وگرنه بی‌دین می‌شود.)'),
(815, 'ماری لولا', 'بهای عشق چیست به جز عشق ؟'),
(816, 'اسكات پك', 'دوست داشتن انسان ها به معنای دوست داشتن خود به اندازه ی دیگری است.'),
(817, 'دكارت', 'انسان نباید هیچ امری را به عنوان حقیقت قبول كند، مگر آنكه به راستی در نظر او حقیقت باشد.'),
(818, 'حضرت محمد (ص)', 'صدقه دادن پنهانی، خشم خداوند را فرو می‌نشاند و همانا پیوند با خویشاوندان،‌ عمر را زیاد می‌كند و انجام كارهای خوب انسان را از حوادث بد،‌ محفوظ می‌دارد.'),
(819, 'حضرت محمد (ص)', 'هیچ‌كس از امّت من (اسلام) ‌نیست كه سرپرستی سه دختر یا سه خواهر (خود را) بر عهده دارد و به آن‌ها به نیكی رفتار می‌كند،‌ مگر این كه (‌خداوند) برای او، حجابی از آتش (جهنّم) قرار می‌دهد. (تا به او نرسد.)'),
(820, 'حضرت محمد (ص)', 'برای لغزش¬های افراد جوانمرد، عفو بتراشید (یعنی به طوری گناهان آنها را توجیه كنید و این دفاع از شخص او نیست بلكه دفاع از حریم جوانمردی می¬باشد.)'),
(821, 'مثل روسی', 'برای كسی كه شكمش خالی است، هر نوع باری سنگین است.'),
(822, 'جبران خلیل جبران', 'ای كاش آهوان می‌توانستند شتاب و چابكی را به لاك‌پشت‌های كُندرو بیاموزند!'),
(823, 'دنیس ویتلی', 'هنگامی كه آدمهای كامیاب شكست می خورند، به جای اینكه شكست شان را نوعی گرفتاری و امری بازدارنده بدانند، آن را یك دشواری زودگذر، فرصتی برای یادگیری، جای پایی برای پیشرفت، یا یك مسئله ی سراسر نامربوط می دانند.'),
(824, 'جبران خلیل جبران', 'برادرم تو را دوست دارم، هر كه می خواهی باش، خواه در كلیسایت نیایش كن، خواه در معبد و یا در مسجد. من و تو فرزندان یك آیین هستیم، زیرا آیین های گوناگون، انگشتان دست دوست داشتنی "یگانه ی برتر " هستند... .'),
(825, 'سعید نفیسی', 'تنها كسانی كه دل داده ی دانشند بزرگند، نه آنها كه سوداگر دانشند.'),
(826, 'امام علی (ع)', 'هیچ خیری در سكوت از حكمِ به‌جا نیست، چنان كه هیچ خیری در سخن بر مبنای نادانی نیست.'),
(827, 'آنتوان دوسنت اگزوپری', 'عشق آن نیست كه به هم خیره شویم، عشق آن است كه هر دو به یك سو بنگریم.'),
(828, 'گاندی', 'بزرگترین پیروزی آن است كه به گونه ای رفتار كنیم تا مبارزان قویتر از آن بشوند كه در شروع كار مبارزه بوده اند.'),
(829, 'بنجامین فرانكلین', 'زود خوابیدن و زود برخاستن، مرد را سلامت، ثروتمند و عاقل می كند.'),
(830, '؟', 'همیشه كوتاهترین لذت، شیرین ترین لذتهاست.'),
(831, 'لئوبوسكالیا', 'هرچه بیشتر خود را بشناسیم، به شناخت بیش‌تر دیگران می‌رسیم.'),
(832, 'ریچارد تمپلر', 'شما بزرگتر می شوید، ولی ناگزیر، خردمندتر نمی شوید.'),
(833, 'بودا', 'آن كه همراه نادانان شود، به راهی دراز رنجه گردد. همراهی نادانان چون همراهی دشمنان همواره دردناك است.'),
(834, 'اُرد بزرگ', 'همه آدمیان به شیوه های گوناگون، سختی های روزگار را می چشند.'),
(835, 'امام محمد باقر (ع)', 'هر مؤمنی كه به قصد دیدن برادر مؤمن خود از خانه بیرون رود حق او را شناسد حق تعالی به هر گامی حسنه‌ای در نامه‌ی عملش بنویسد و گناهی از او محو كند و درجه‌ای برای او بلند كند.'),
(836, 'توربز', 'درباره وقت خسیس باشیم.'),
(837, 'افلاطون', 'گسترش شهر، تا زمانی كه یكپارچگی آن را به خطر نیندازد، مجاز است.'),
(838, 'جان د راكلفر', 'هر حقی یك مسئولیت، هر فرصتی یك اجبار و هر مالكیتی یك وظیفه به همراه دارد.'),
(839, 'ابوعلی سینا', 'هر كس عادت كند كه بدون دلیل هر حرفی را باور كند، از صورت انسانی خارج است.'),
(840, 'حضرت محمد (ص)', 'همانا خداوند بزرگ (همان‌طور) ‌كه درد آفریده، ‌درمان را نیز خلق كرده است، پس (‌دردهای خود را با داروی خاصّ خودش) ‌درمان كنید.'),
(841, 'سیمون دوبووار', 'ازدواج سرنوشتی است كه جامعه ی سنتی به زن عرضه می كند. زن مجرد خواه محروم از پیوند، خواه طغیان كرده بر آن و یا حتی بی اعتنا به این نهاد، بر اساس ازدواج تعریف می شود… .'),
(842, 'آرتور شوپنهاور', 'چه سبك سرانه است برای انسان كه بر فرصتهای گذشته افسوس بخورد و دل بسوزاند.'),
(843, 'برتراند راسل', 'كسانی كه عقلشان ضعیف است حاضر نیستند این را در مورد خودشان بپذیرند؛ هر چند همه این را در مورد دیگران می پذیرند.'),
(844, 'نیچه', 'هر هنر و فلسفه ای می تواند دارویی شفابخش برای زندگی، یاور و نیرویی برای رشد آن و مرهمی برای مبارزه ها باشد.'),
(845, 'حضرت محمد (ص)', 'بنده‌ای كه خداوند بزرگ در قلبش، مهربانی نسبت به انسان‌ها را قرار نداده است (و او به واسطه‌ی اعمال بد خود مثل بداخلاقی و بخل این توفیق را از دست داده باشد) پشیمان و زیان‌كار می‌باشد.'),
(846, 'هراكلیت', 'ای جویندگان خرد! كاری را بكنید كه من كرده‌ام؛ در مورد همه چیز پژوهش كنید.'),
(847, 'حضرت محمد (ص)', 'همان‌طوری كه شما رفتار می‌كنید، بر شما حكوت می‌كنند. (اگر مطیع حاكمان باشید با شما كاری ندارند وگرنه مورد آزار آن‌ها قرار می‌گیرید.)'),
(848, 'حضرت محمد (ص)', 'سه چیز است كه در هر كسی وجود داشته باشد، (در نهایت) به صاحبش برمی¬گردد: ظلم و حیله و پیمان شكنی.'),
(849, 'نیچه', 'اگر ناگزیر شویم نظر خود را در مورد كسی تغییر دهیم، به خاطر این زحمتی كه فراهم كرده است، انتقام سختی از او خواهیم گرفت.'),
(850, 'مثل اسكاتلندی', 'برای میهمانی هر قدر  هم خرج كنی، بالاخره از یاد میهمان خواهد رفت.'),
(851, '؟', 'خواندن و عمل نكردن مثل شخم زدن و تخم نپاشیدن است.'),
(852, 'امام علی (ع)', 'بهترین وسیله‌ای كه توسّل‌كنندگان به خداوند- سبحانه و تعالی- انتخاب نموده‌اند، ایمان به او، و به فرستاده‌ی او، و جهاد در راه اوست. زیرا جهاد در راه خدا، مقام اعلای اسلام است، و كلمه‌ی اخلاص، مبنای فطرت اصلی انسان بر آن است.'),
(853, 'حضرت محمد (ص)', '‌كنیزان خود را به خاطر شكستن ظرف‌هایتان نزنید زیرا ظروف مانند مرگ مردم،‌ زمان دارد. (‌كه وقتی زمانش به سر آمد،‌ می‌شكند.)'),
(854, 'هرمان هسه', 'پاكدل را كسی باور نمی كند، مگر پاكدل.'),
(855, 'آندره موروا', 'گاهی عامل زمان آنقدر مهم است كه باید تنها عامل روشن و فرضیه ی اساسی و اصلی برای پاسخ به مسأله قرار گیرد.'),
(856, 'آبراهام لینكلن', 'من دیده ام كه درجه سعادت اشخاص بستگی به اراده و میل خود آنها دارد.'),
(857, 'اندرو متیوس', 'برای پول درآوردن یا گرد‌آوردن آن، باید بتوانید با آن شاد باشید.'),
(858, 'حضرت محمد (ص)', '‌زمانی كه خداوند،‌ انجام كاری را دوست داشته باشد‌،‌ عقل (انسان‌های)‌ خردمند را می‌گیرد. (كارهای خداوند، در آن موقع انجام می‌شود، پس تقدیر الهی یا اختیار انسان در ارتباط است.)‌'),
(859, 'لئوناردو داوینچی', 'ثابت ماندن در یك‌جا سبب از دست رفتن قوه‌ی ادراك شما می‌شود. اندكی فراتر بروید تا چیزهای دیگری را نیز ببینید كه در آنها نبود سامان و تناسب، قابل مشاهده است.'),
(860, 'آلبرت انیشتین', 'شتابنده ترین راه دریافت عشق، بخشیدن آن به دیگران است.'),
(861, 'گوته', 'مگر نه این است كه هرگاه دلی پر از مهر و صفا رنج می برد تا شما را شادمان كند و چون شمع می سوزد تا راه شما را روشن نماید، فریاد می زنید: "برای این دیوانه زنجیر بیاورید."'),
(862, 'گوته', 'دنیا پر از ابلیسانی است كه پیوسته به ما كینه می ورزند، زیرا طاقت آنكه كمال خود را به حال خود گذارند، ندارند.'),
(863, '؟', 'بسیاری از نقاط روشن و درخشان زندگی ما در گرو تشویق هایی است كه از ما به عمل آمده است.'),
(864, 'آنتوان دوسنت اگزوپری', 'شكوه و بزرگی یك پیشه، شاید پیش از هر چیز، در یكی شدن روح‌هاست و این، یك شكوه راستین است؛ شكوه مناسبات روابط انسانی.'),
(865, 'جك كانفیلد', 'برای اینكه كامیاب باشید، باید كاری را بكنید كه افراد كامروا می‌كنند.'),
(866, 'مثل آمریكایی', 'مهربانی مانند كاشتن بذر گندم  است كه با گذشت زمان افزایش می یابد.'),
(867, 'جولیا كامرون', 'خالق بزرگ به ما خلاقیت بخشیده است. پیشكش ما نیز به او به كار بردن آن خلاقیت است.'),
(868, 'جك كانفیلد', 'افراد بسیار كامیاب، به هر تجربه‌ای به چشم فرصت می‌نگرند.'),
(869, 'لامارتین', 'خداوند شایستگی زن را در قلب او قرار داده است.'),
(870, 'فرناندو پسوا', 'انسان به هر میزان از مقام برتری برخوردار باشد، باید به همان نسبت از بسیاری از چیزها چشم پوشی كند.'),
(871, 'حضرت محمد (ص)', '‌امانت‌داری،‌ روزی را و خیانت، فقر را فراهم می‌سازد. (‌زیرا به انسان امانت‌دار، اعتماد زیادی می‌شود و كارهای مهمّ و اساسی و پردرآمد به او سپرده می‌شود ولی انسان خائن در هیچ جایی،‌ اعتبار ندارد.)'),
(872, 'ژوبر', 'امید جزیی از خوشبختی است.'),
(873, 'ویلیام آرتور وارد', 'ناكامی یعنی تاخیر، نه شكست؛ مسیر انحرافی موقت است، نه كوچه ی بن بست.'),
(874, 'نیچه', 'هرگز آنچه را همه چیز دانان مغرور و آشفته سران می نویسند، نخوانید.'),
(875, 'هرو دت', 'زن پهلوانی است كه دلیرترین مردان را در سخت ترین اوقات خشم، آرام می كند.'),
(876, 'مثل آفریقایی', 'یك دوست خوب را با هر دو دستت نگاهدار.'),
(877, 'فردوسی', 'به این زمین گرد كه به سرعت می گردد بنگر كه درمان ما در آن است و درد ما نیز. نگاه كن و ببین كه نه گردش زمانه آن را می فرساید و نه رنج و بهبودی حال بشر آن را به آتش می كشد، نه آرام می شود و نه همچون ما تباهی می پذیرد.'),
(878, 'حضرت محمد (ص)', 'محبوب‌ترین اعمال نزد خداوند، بعد از واجبات، داخل كردن شادی در قلب فرد مسلمان است. (یعنی كار مشروعی انجام دهد كه او شاد گردد.)'),
(879, 'امام علی (ع)', 'سُرور و شادمانی مؤمن در چهره‌ی اوست و اندوهش در قلبش.'),
(880, 'حضرت محمد (ص)', 'سهل و آسان گرفتن (نسبت به كارها بر دیگران) باعث سود و نفع كردن و سخت گرفتن، شوم و بد است. (زیرا یاران انسان را پراكنده می‌كند.)'),
(881, 'ریچارد تمپلر', 'برای نفس دانستنی ها به گردآوری آنها نپردازید، بلكه ببینید با آنها چه كار می توانید بكنید كه ارزشمند باشد.'),
(882, 'موریس مترلینگ', 'تمام چیزهایی كه نوابغ آینده خواهند گفت، هم اكنون در وجود من و شما هست؛ منتها باید آنها را پیدا كرد و روی آنها انگشت گذاشت.'),
(883, 'فلورانس اسكاول شین', 'شگفتا كه اگر آدمی برای كسی بركت بخواهد، توان آزار رسانیدن را از او خواهد گرفت.'),
(884, 'كارل هنریش ماركس', 'اگر انسان در جسم خود فانی است، در عمل تاریخی خود باقی است.'),
(885, 'حضرت محمد (ص)', 'جوینده‌ی علم در میان افراد نادان، مانند (انسان) زنده در میان مردگان است. (یعنی در مقابل او حركتی ندارند.)'),
(886, 'لیندن بی. جانسن', 'دیروز، از آنِ ما نیست كه آن را بازستانیم. ولی فردا از آنِ ماست كه آن را ببریم یا ببازیم.'),
(887, 'كیم وو چونگ', 'كسب و كار، فراتر از پول درآوردن است. گاهی، كمتر ضرر دادن نیز مهم است.'),
(888, 'رالف والدو امرسون', 'پرتلاش، پرانرژی و آرزومند باشید و ایمان داشته باشید تا به هدف خود برسید.'),
(889, 'امام علی (ع)', 'از حدس و گمان‌های مردمانِ با ایمان بترسید، زیرا خداوند متعال حق را در زبان آنان قرار داده است.'),
(890, 'سقراط', 'ابله ترین دوستان ما خطرناكترین دشمنان هستند.'),
(891, 'حضرت محمد (ص)', 'اظهار دوستی و مهربانی با مردم كردن نصف عقل است.'),
(892, '؟', 'اگر ندانی به كجا می روی، پس به راستی هیچ اهمیتی نخواهد داشت كه چگونه به آنجا می رسی!'),
(893, 'آرتور شوپنهاور', 'ازدواج، اتحاد دلها است نه ذهنها.'),
(894, 'مارتین هایدگر', 'گفتن و بیانی كه كامل تر است تنها پاره ای از اوقات پدید می آید. تنها كسانی كه جسورتر هستند نسبت به آن توانمندند؛ زیرا این كاری دشوار است. مشكل، دستیابی به وجود است.'),
(895, 'حضرت محمد (ص)', 'از فقر و عیال‌مندی (پر جمعیّت بودن از نظر فرزند) و از ظلم كردن و ظلم دیدن به خدا پناه ببرید.'),
(896, 'آنتونی رابینز', 'هیچ‌كس دوست ندارد درباره‌اش پیشداوری كنند یا سرزنش شود، حتی خودتان؛ پس بكوشید هرگز چیزی را كه برای خود نمی‌پسندید، به دیگران نیز روا ندارید.'),
(897, 'چارلز دیكنز', 'برترین ویژگی بشری، مردانگی است.'),
(898, 'حضرت محمد (ص)', '‌زمانی كه یكی از شما، از برادر (ایمانی) خود،‌ حاجتی می‌خواهد، ابتداء او را ستایش نكند تا پشت او قطع نشود. (كنایه‌ از این كه او شما را چاپلوس نخواند و در نتیجه اعتمادش از شما سلب نشود.)'),
(899, 'نیچه', 'آنچه آدمی را والا می سازد، مدت زمان احساس های والا در اوست، نه شدت آن احساس ها.'),
(900, 'آبراهام لینكلن', 'ادعا نمی‌كنم كه رویدادها را مهار كرده‌ام، بلكه با افسوس بی‌پایان، می‌گویم كه رویدادها مرا مهار كرده‌اند.'),
(901, 'حضرت محمد (ص)', 'خداوند مردی را كه مانند لباس زنان، لباس پوشیده و زنی را كه مثل مردان، لباس می¬پوشد را لعنت كند.'),
(902, 'استیو چندلر', 'برای شكست‌های زندگی، برنامه‌ریزی كنید.'),
(903, 'امام علی (ع)', 'مردم در این دنیا با فتنه‌ها آزمایش می‌شوند.'),
(904, 'حضرت محمد (ص)', 'كسی كه از بیماری عیادت می‌كند تا زمانی كه بر می‌گردد (مثل این است كه) در راه بهشت قدم می‌زند. (چنین ثوابی نباید از دست برود.)'),
(905, 'جان ماكسول', 'از خودگذشتگی ساده نیست، اما ضرورت دارد.'),
(906, 'حضرت محمد (ص)', 'بهترین زنان كسانی هستند كه وقتی به آنها نگاه كنی (یعنی شوهرشان نگاه‌شان می‌كند) خوشحال می‌شوند و زمانی كه به آنها دستور دادی، اطاعت می‌كنند و در غیاب شما، از جان و مال شما، محافظت می‌كنند.'),
(907, 'جیمز هاول', 'خداوند زمانی می آید كه او را دورتر از همیشه تصور می كنیم.'),
(908, 'رنان', 'همیشه كسانی از زندگی شكایت می كنند كه چیزهای غیر ممكن خواسته اند.'),
(909, 'آبراهام لینكلن', 'قشنگ‌ترین زمان‌های زندگی شما زمان‌هایی است كه با دوستانتان سپری می‌كنید.'),
(910, 'جین آنوئیل', 'هر چه را دوست بداری، زیباست.'),
(911, 'نادر شاه افشار', 'میدان جنگ می تواند میدان دوستی نیز باشد؛ اگر نیروهای دو طرف میدان به حقوق خویش بسنده كنند.'),
(912, 'ویلیام جیمز', 'بنیادی‌ترین اصل در طبیعت آدمی، اشتیاق [=آرزو] فراوان اوست به گرامی داشته شدن.'),
(913, 'آندره توریه', 'عشق گل كمیابی است.'),
(914, 'اسمایلز', 'مردم با اخلاق معمولاً دارای وجدانی پاك هستند.'),
(915, 'حضرت محمد (ص)', 'خداوند رحمت كند كسی را كه زبانش را (از گناه) باز دارد و به زمان خویش آگاه باشد و در راه (راست) خود، ثابت قدم بماند.'),
(916, 'حضرت محمد (ص)', '‌به هر كسی، خردمندی‌،‌ روزی داده شده‌ است، رستگار می‌باشد.'),
(917, 'توماس ادیسون', 'طعم بسیاری از شكست های زندگی را كسانی چشیده اند كه در دو قدمی كامیابی از تلاش خود دست كشیده اند.'),
(918, 'جفری كروكشنك', 'یكی از بدترین كارهایی كه یك مدیر می‌تواند انجام دهد، این است كه بین كارمندانش، تبعیض [=برتری یكی بر دیگری] به وجود بیاورد. اگر مزایایی وجود دارد، باید برای همه باشد.'),
(919, 'حضرت محمد (ص)', 'قبل از آمدن قیامت، روزگاری آشفته وجود دارد.'),
(920, 'حضرت محمد (ص)', 'زمانی كه یكی از شما با برادر خود، مشورت می‌كند، باید با او مشورت كند. (و نظرات خود را به او بگو.)'),
(921, 'مثل آفریقایی', 'كسی كه پاروزنی بداند، همیشه جایی در قایق پیدا می كند.'),
(922, 'باربارا دی آنجلیس', 'موهبت عشق و شور زندگی، دست به دست و سینه به سینه خواهد گشت، بارها و بارها. آیا به راستی این معجزه ای كم نظیر نیست؟ هرگز نمی توان برای تاثیری كه عشق شما بر جهان هستی خواهد گذشت پایانی متصور شد...'),
(923, 'دنیس ویتلی', 'مهمترین منتقد [ =خرده گیر ] شما، خودتان هستید.'),
(924, 'هلن رولان', 'پیش از ازدواج، مرد قبل از خواب به حرف هایی می اندیشد كه شما گفته اید، اما پس از ازدواج، مرد قبل از این كه شما حرف بزنید به خواب می رود!'),
(925, 'آبراهام مازلو', 'اگر آدمی از شغل‌ خود خرسند نباشد، یكی از مهم‌ترین راههای دستیابی به خویشتن را گم كرده است.'),
(926, 'هنری جی . ام. نوون', 'زندگی معنوی، ما را از دنیا دور نمی كند، بلكه به ژرفای آن رهنمون می شود.'),
(927, 'ژان پل سارتر', 'نبوغ، جوهر تفكر است.'),
(928, 'توماس كلارنس', 'برخورد خوب، درهایی را می گشاید كه بالاترین تحصیلات نیز قادر به گشودن آن نیست.'),
(929, 'أوسه ریتر ایویدسن', 'هر انسان یك جزیره است در میان دریای عشق و محبت كه انسانها را بهم می پیوندد.'),
(930, 'استیو چندلر', 'خودتان را از جرگه‌ی دوستانی كه شما را برای دستیابی به هدف‌هایتان پشتیبانی نمی‌كنند، با خوشرویی كنار بكشید، چرا كه دوستان نزدیك، همیشه می‌توانند در دگرگونی زندگی انسان كارساز باشند.'),
(931, 'كنفوسیوس', 'ایمان به حقیقت را هدف و مقصد اساسی زندگی خود قرار دادن و تكالیف را از روی وجدان به جا آوردن، طبع مرد را بلندتر و كاملتر می سازد. یكی را دوست داشتن و حیات او را آرزو كردن و دیگری را دشمن داشتن و مرگ او را خواستن، ناگزیر طبع آدمی را تاریك می سازد.'),
(932, 'اورسون سوت ماردن', 'همه ی كسانی كه به كامیابی های بزرگی دست یافته اند، هدفهای بزرگی نیز در سر می پرورده و نگاه خویش را به سوی هدفی كه والاتر از همه بوده است، متمركز كرده بودند؛ هدفی كه در آغاز، دست نیافتنی به نظر می رسیده است.'),
(933, 'نیچه', 'خنده یعنی دیدن درون چیزها.'),
(934, 'اشو', 'زندگی ات را قربانی چیزی مكن، همه چیز را قربانی زندگیت كن.'),
(935, 'اُرد بزرگ', 'هنگام گسستن و بریدن از همه چیز می توانی بسیاری از نداشته ها را در آغوش بكشی.'),
(936, 'مَت بَكَك', 'شما بیشتر از آنچه كه می اندیشید، تجربه هایی دارید كه می توانید آنها را در دسترس دیگران قرار دهید.'),
(937, '؟', 'فروتنی زینت علم و كمال و جاه و جلال است. اهل هنر اگر فروتن باشند، هنر آنان بهتر جلوه می كند؛ همان طور كه سایه عكس آن را برجسته و نمودار می كند، فروتنی نیز هنر را آشكار می سازد.'),
(938, 'افلاطون', 'عشق عبارت است از اشتیاق به دست آوردن خوبی برای همیشه.'),
(939, 'اشو', 'آزادی طلبی ما به این دلیل نیست كه عاشق آزادی هستیم، بلكه در حقیقت، ما خود آزادی هستیم و فقط در آزادی می توانیم رشد كنیم.'),
(940, 'جرج برنارد شاو', 'من به آوازه ای بین المللی دست یافتم، چون یك یا دو بار در هفته می اندیشم.'),
(941, 'حضرت محمد (ص)', 'كسی كه عیبی را كه در شخص دیگری نیست یاد كند، خداوند او را در آتش جهنّم زندانی می‌كند تا زمانی كه علتی برای گفته‌ی خود بیاورد. (یعنی بگوید چرا و از كجا این حرف را زده است.)'),
(942, 'جان استوارت میل', 'حقایق بسیاری هستند كه نمی‌توان معنای [=چَم] كامل‌شان را دریافت، مگر آنكه از راه تجربه‌ی شخصی فراهم آید.'),
(943, 'ویكتور هوگو', 'بدبختی، مربی استعداد است.'),
(944, 'امام علی (ع)', 'دوست واقعی كسی است كه هویّتِ دوستی را در نهان حفظ كند.'),
(945, 'فرنكلین دی. روزولت', 'شادی در شادمانی، كامیابی و هیجان تلاش نوآورانه نهفته است.'),
(946, 'جبران خلیل جبران', 'اگر یكی از شما بخواهد با نام دادگری بر درخت بدی تیشه زند، در آغاز باید نگاهی به ریشه‌ی آن بیندازد.'),
(947, 'ژان ژاك روسو', 'مردم بدون عشق [ همچون ] كورانی هستند كه به هیچ وجه به منزل نخواهند رسید.'),
(948, 'رالف والدو امرسون', 'من در طبیعت وحشی، احساس ارزشمند و آشنایی را درك  كرده ام كه در خیابانها و دهكده ها هرگز به  آن دست نیافته ام. در دشت های آرام، بویژه در مرزهای افق دوردست، انسان شاهد دل انگیزترین و باشكوه ترین زیبایی هایی است كه با سرشت او همگون است.'),
(949, 'ر.كیپلینگ', 'اگر آنچه را كه خواهانش هستید كسب نكرده اید، نشانه آن است كه یا به درستی آن را نخواسته اید و یا اینكه سعی نكرده اید سر قیمتش چانه بزنید.'),
(950, 'میكل آنژ', 'عشق، سبب رسیدن به خداست.'),
(951, 'جبران خلیل جبران', 'بهترین مردم كسانی هستند كه اگر از آنها تعریف كنید، خجل شوند و چون بد گفتید، سكوت كنند.'),
(952, 'اُرد بزرگ', 'جز ناامیدی و افسردگی هیچ بن بستی در زندگی آدمی نیست.'),
(953, 'حضرت محمد (ص)', 'حقیقتاً فضیلت نیكوكاران را (فقط) صاحب آنها می¬شناسند. (كسانی كه از روی علم و معرفت، كارهای شایسته انجام می¬دهند، ارزش و جایگاه چنین اعمالی را می¬دانند.)'),
(954, 'ارد بزرگ', 'برای آنكه به پایین پرتاب نشوی، دست گیر آدمیان شو.'),
(955, 'رالف والدو امرسون', 'نوابغ بزرگ زندگینامه بسیار کوتاهی دارند.'),
(956, 'حضرت محمد (ص)', 'كسی كه با تازیانه به ظلم، دیگری را بزند، خداوند روز قیامت از او انتقام می¬گیرد.'),
(957, 'اُرد بزرگ', 'تنها مادر و پدر خواسته های فرزند را بی هیچ چشم داشتی بر آورده می سازند.'),
(958, 'اُرد بزرگ', 'دانش امروز شكوه بسیاری در پی داشته، اما نیروی آرامش بخشیدن به روان ما را ندارد؛ امنیت را بزرگان خردمند به ما می بخشند.'),
(959, 'بودا', 'خردمند با بیدار كردن خوداشتیاقی و خویشتنداری، تواند برای خویش جزیره‌ای سازد كه هیچ سیلی آن را غرق نتواند كرد.'),
(960, 'اشو', 'من هرگز مخالف دانش نیستم، اما دوست دارم انسان نخست در قلب خود ریشه بدواند و سپس، دانش را به عنوان یك وسیله به كار گیرد.'),
(961, 'لئوبوسكالیا', 'نرمخویی همواره برآمده از قدرت است. قدرت است كه سبب می‌شود بیاموزیم كسی را به سبب ناتوانی یا ترس یا خشم، محكوم نكنیم.'),
(962, 'نیچه', 'امروز او فقیر است، اما نه به این دلیل كه همه چیزش را گرفته اند، بلكه به این دلیل كه همه چیز را دور ریخته است. برایش چه اهمیتی دارد! او به یافتن عادت دارد. این فقرا هستند كه فقر داوطلبانه او را به خوبی درك نمی كنند.'),
(963, '؟', 'دیگران عشقی را كه به خود دارم به من باز می گردانند.'),
(964, 'پائولو كوئیلو', 'اگر نسبت به دیگران صبور باشیم، پذیرش خطاهای خودمان ساده تر می شود.'),
(965, 'امام جعفر صادق (ع)', 'شایسته نیست دست بوسیدن مگر پیغمبر یا وصی پیغمبر را.'),
(966, 'حضرت محمد (ص)', 'نان را گرامی بدارید (و به آن بی‌احترامی نكنید) زیرا خداوند آن را از بركات آسمان فرستاده و از بركات زمین بیرون آورده است (یعنی از آسمان باران باریده و زمین را حاصلخیز می‌كند و از زمین نیز گندم روییده و آرد می‌شود و در نهایت تبدیل به نان می‌گردد.)'),
(967, 'حضرت محمد (ص)', 'هر كه شهادت ناحقی بر احدی از مردم بدهد حق تعالی او را بر زبانش درآویزد در درك اسفل جهنم با منافقان.'),
(968, 'استیو چندلر', 'تا خودتان نخواهید، هیچ رویدادی پیش نخواهد آمد و هیچ‌كس به انجام كاری كه دوست ندارید، ناچارتان نخواهد كرد.'),
(969, 'لئو نیكولایویچ تولستوی', 'نیكی همه چیز را مغلوب می كند و خودش مغلوب نمی شود.'),
(970, 'نیچه', 'بیش از آن دوست بدارید كه دوست تان می دارند و در این كار هرگز از هیچ كس واپس نمانید.'),
(971, 'ویكتور هوگو', 'هر چه از كوه بالاتر رویم، چشم انداز گسترده تری را می بینیم.'),
(972, 'وین دایر', 'بكوشید تا در برخورد با هر كس، او را به دیده ی یك آموزگار بنگرید و چیزی از او بیاموزید.'),
(973, 'دومایر', 'تصمیم گرفتن آسان است ولی نگهداری آن بسیار دشوار است.'),
(974, 'ترنس', 'كسی كه ساده ترین كار را با اكراه و بی میلی انجام دهد، آن را تبدیل به دشوارترین مسأله خواهد كرد.'),
(975, 'محمد حجازی', 'داروی تمام دردها نیكی است؛ به شرط آنكه ندانند شما نیك هستید، وگرنه نمی گذارند نیك بمانید.'),
(976, 'سقراط', 'داروی خشم، خاموشی است.'),
(977, 'حضرت محمد (ص)‌', 'كسی كه به عمد، بر من دروغ ببندد، مقعد (‌نشیمنگاه‌اش) از آتش پر می¬شود.'),
(978, 'والداس آدامكوس', 'در زندگی انسان، محدودیت وجود ندارد.'),
(979, 'كتاب مقدس', 'شخصیت، مهمترین چیز است، اما تنها شخصیت نیست كه اهمیت دارد.'),
(980, 'امام جعفر صادق (ع)', 'سگ شكاری را در خانه نگاه مدار مگر آنكه میان تو و او دری باشد كه بر روی آن سگ بسته شود.'),
(981, 'لرد چستر فورد', 'اگر كسی نتواند به خوبی بنویسد و حرف بزند، به جایی نمی رسد. اما كسی كه با ده درصد توانمندی شما می تواند با دیگران ارتباط برقرار كند، از شما جلو می زند.'),
(982, 'حضرت محمد (ص)', 'به یكدیگر هدیه بدهید زیرا هدیه دادن، كینه را می‌برد و اگر مرا به شانه‌ی گوسفندی دعوت كنند، می‌پذیرم و اگر یك شانه‌ی گوسفند به من هدیه دهند، قبول می‌كنم.'),
(983, 'برایان تریسی', 'اكثر مردم سرگرم فعالیت هایی هستند كه بیشتر آرامش بخشند تا هدفمند.'),
(984, 'تام هانا', 'بردباری و ستایش تفاوتهای فردی، آتشی است كه عشقی جاودان را تشدید می‌كند.'),
(985, 'بن جانسون', 'زبان، بیش از هر چیز دیگری انسان را نشان می دهد؛ حرف بزن تا تو را ببینم.'),
(986, 'حضرت محمد (ص)', 'بهترین (‌عمل)‌ دین شما آن است كه ساده‌تر باشد. (‌دین اسلام، دین سخت نیست تا احكامش نیز مشكل باشد.)'),
(987, 'امام علی (ع)', 'هر كسی سستی را اطاعت كند، حقوق را ضایع سازد و هر كس سخن‌چین را اطاعت نماید، دوست را تباه كند.'),
(988, 'كریستین بوبن', 'كودكی، دنیای شگفتی‌‌ست، دوست داشتنی و كسل كننده؛ هم گنج است و هم ابهام.'),
(989, 'جك كانفیلد', 'زندگی، به معنای راستین كلمه، همان چیزی‌ست كه شما از آن می‌سازید.'),
(990, 'عبید زاكانی', 'مردی با سپری بزرگ به جنگ با دشمنان رفت. از بالای قلعه، سنگی بر سرش زدند و سرش را شكستند. برنجید و گفت: مردك، كوری! سپری بدین بزرگی نمی بینی و سنگ بر سر من می زنی؟'),
(991, 'حضرت محمد (ص)‌', 'چاپلوسی كردن از اخلاق مؤمن نیست.'),
(992, 'حضرت محمد (ص)', '(ای گروه فقیران!) اگر بدانید كه نزد خداوند برای شما (به خاطر فقر و حاجت و تحمّل و صبر بر آن) چه چیزهایی وجود دارد. دوست داشتید كه فقر و نیاز شما بیشتر شود.'),
(993, 'حضرت محمد (ص)', 'منفورترین خلق نزد خداوند كسی است كه (به خدا) ایمان آورده و بعد از آن كافر شده است. (زیرا باعث می¬شود كه دین و ارزش¬های آن را به مسخره بگیرد.)'),
(994, 'باربارا دی آنجلیس', 'عشق ماندگار هرگز بر جاذبه ی جسمانی میان شما و معشوق كه همواره در حال تغییر است متكی نیست.'),
(995, 'آبراهام مازلو', 'بهترین شیوه برای اینكه آدمی بداند چه باید بكند، این است كه ابتدا ببیند خودش كیست و چیست.');
INSERT INTO `quotations` (`id`, `author`, `text`) VALUES
(996, 'امام علی (ع)', 'وحشتناك‌ترین هراسی كه درباره‌ی شما دارم، دو چیز است: پیروی از هوا و درازای آرزو.'),
(997, 'حضرت محمد (ص)', 'كسی كه زكات مال خود را بدهد و مهمان را محترم بشمارد و در هنگام سختی (‌هم)‌ بخشش نماید، از بخل ‌ (و خسیسی) به دور است.'),
(998, 'براونینگ', 'عشق، انسان را خردمند و باتجربه می كند.'),
(999, 'ساموئل اسمایلز', 'سختی ها و ناراحتی ها بهترین وسیله ی آزمایش زندگی زناشویی است، زیرا رنج و محنت، اخلاق حقیقی زن و مرد را آشكار می سازد.'),
(1000, 'جك كانفیلد', 'برای اینكه به هدفی بزرگ برسید، باید به انسانی بزرگ‌تر تبدیل شوید.'),
(1001, 'اشو', 'انسانی كه به حقیقت دست یافته چگونه می تواند دروغ بگوید؟ برای چه باید دروغ بگوید؟ او هیچ دروغی برای گفتن ندارد.'),
(1002, 'آنتونی رابینز', 'شاید زمان آن رسیده باشد كه دوباره بر روی چَم، مفهوم و هدف از زندگانی خود تمركز و توجه كنید.'),
(1003, 'امام جعفر صادق (ع)', 'اگر بت پرستی در وقت مردن اقرار به امامت ائمه معصومین (ع) بكند و دین تشیّع را اعتقاد كند آتش جهنم به هیچ عضو او نرسد.'),
(1004, 'پرمودا باترا', 'كارآمدترین راه برای كاهش پیامدهای منفی و زیان‌بخش تغییرات، این است كه برنامه‌ریزی ذهنی داشته باشید.'),
(1005, 'حضرت محمد (ص)', '‌خاموشی زبان، سبب سلامتی انسان است. (‌دیگران در مورد او قضاوت بد نمی‌كنند و مورد غیبت و تهمت هم قرار نمی‌گیرد.)'),
(1006, 'آل پاچینو', 'یك بازیگر با احساساتش ورزش می كند، این پروسه ی رنج آوری است.'),
(1007, 'حضرت محمد (ص)', 'هیچ گناه كبیره‌ای با استغفار كبیره نمی‌ماند و گناهی كه با اصرار انجام شود، صغیره نیست. (استغفار گناه كبیره را نیز از بین می‌برد ولی اگر كسی گناه صغیره را به خاطر صغیره بودنش زیاد انجام دهد، تبدیل به كبیره خواهد شد.)'),
(1008, 'پرمودا باترا', 'اگر كسی از من یك اسكناس صد ریالی بخواهد، شاید بگویم نه، ولی اگر از من بخواهد آموزه‌های خود را در اختیار او بگذارم، با شادمانی بسیار، این كار را خواهم كرد.'),
(1009, 'اُرد بزرگ', 'اندرز جوان باید كوتاه، تازه و داستان وار باشد.'),
(1010, 'حضرت محمد (ص)', 'كم راحت‌ترین مردم كسی است كه بخیل است.'),
(1011, 'كارل سندبرگ', 'هر فرزندی، نشان دهنده‌ی باور خداوند است كه زندگی باید همچنان جریان داشته باشد.'),
(1012, 'فرناندو پسوا', 'اگر هر كسی فقط فكر كند كه برای پیروزی به چه چیز نیاز دارد، پیروز می شود.'),
(1013, 'فرناندو پسوا', 'تجربه های زندگی به ما چیزی نمی آموزد، همان گونه كه تاریخ هم ما را از چیزی آگاه نمی كند. تجربه ی حقیقی زمانی به دست می آید كه ارتباط با واقعیت را محدود كنیم و كاهش ارتباط را نیرو بخشیم.'),
(1014, 'آرتور شوپنهاور', 'هر عدم تناسب بین اراده و خرد به بدبختی انسان منجر می گردد.'),
(1015, 'گارفیلد', 'اندیشه ها بزرگترین جنگنده های جهانند و جنگی كه اندیشه ای در پی دارد، چیزی جز وحشی گری نیست.'),
(1016, 'سقراط', 'ممكن است مقداری زهر در كوزه ای ریخت و آن كوزه را شست و اثرات زهر را از بین برد، ولی چیزی را كه در ذهنتان جای دارد، خوب یا بد، بر شما فرمانروایی خواهد كرد و هرگز از آن رهایی نتوانید یافت.'),
(1017, 'آنا س نین', 'هر دوست، دنیای جدیدی را به ما نشان می دهد؛ این دنیا پیش از آشنایی با دوستان شكل نمی گیرد و تنها از راه این آشنایی ها است كه دنیای جدید متولد می شود.'),
(1018, 'امام علی (ع)', 'سوگند به خدا! من بنده‌ای را نمی‌بینم كه تقوا ورزیدن سودی به حال او داشته باشد، جز این‌كه زیان خود را حفظ كند. قطعاً زبان شخص باایمان در پشت قلب او و قلب منافق پشت زبان اوست.'),
(1019, 'امام علی (ع)', 'علم به عمل دعوت می‌كند. اگر عمل آن را اجابت كرد، با آن خواهد بود، وگرنه كوچ می‌كند و از صحنه‌ی وجود آدمی خارج می‌شود.'),
(1020, 'لارشفوكولد', 'بیشتر مردم عدالت را از آن جهت دوست دارند كه می ترسند روزی به آنها ستم شود.'),
(1021, 'اسپنسر جانسون', 'كامیابی، یعنی پیشروی به سوی هر آنچه كه می اندیشی مهم است.'),
(1022, 'حضرت محمد (ص)', 'نخستین چیزی كه (روز قیامت) در ترازوی (سنجش اعمال) برای وزن گذاشته می‌شود، خوش خلقی است.'),
(1023, 'ایمانوئل كانت', 'اخلاق باید بر هنر حكومت كند.'),
(1024, 'شری كارتر اسكات', 'خرد، با هوش تفاوت دارد. خرد، كاری به بهره ی هوشی شما و یا اینكه در مدرسه چه می كرده اید، ندارد.'),
(1025, 'سقراط', 'تفاوت انسان با حیوان در كنترل هوای نفس و هوس ها است.'),
(1026, 'وین دایر', 'میزان كمك خداوند به شما بسیار بیشتر از تصور ما است.'),
(1027, 'حضرت محمد (ص)', '‌كسی كه با مسلمانی (در معامله و فروش كالا به او) تقلب نماید (‌و جنس قلابی به او بدهد) ‌یا به او ضرر بزند و یا با او نیرنگ و حیله كند، از ما (مسلمانان) نیست.'),
(1028, 'آنتونی رابینز', 'می‌بایست در زندگی، هدفمند باشید. می‌بایست هدفی را دنبال كنید. می‌بایست برگزینید و تصمیم بگیرید؛ آن هم، هم‌اكنون.'),
(1029, 'افلاطون', 'اگر كسی در آب بیفتد، خواه در حوض افتاده باشد، خواه در میان دریا، به ناچار باید شنا كند.'),
(1030, 'آنتونی رابینز', 'جنایت، مشكل بشر نیست، بلكه این رفتار انسانها است كه جنایت را می آفریند.'),
(1031, 'جرج برنارد شاو', 'به تجربه آموختم كه انسانها هرگز از تجربه چیزی نمی آموزند.'),
(1032, 'نیچه', 'عینكی تیره بر چشم زنیم، زیرا گاهی نباید هیچ كس، چشمان و هیچ بنی بشری، "كنه" وجود ما را ببیند.'),
(1033, 'جك كانفیلد', 'پنهان كردن حقایق همیشه نتیجه‌ی وارونه دارد. هر چه بیشتر آن را پنهان كنید، بدتر به خودتان و كسان دیگری كه در آن بهره‌ای دارند، آسیب می‌رسانید.'),
(1034, 'فرناندو پسوا', 'هنر عبارت از این است كه فرصت دهیم تا سایر انسانها آنچه را كه ما احساس می كنیم، احساس كنند، آنها را از خودشان رها سازیم و برای این رهایی خاص شخصیت خودمان را به آنها پیشنهاد كنیم.'),
(1035, 'آلبرت انیشتین', 'در سقوط افراد در چاه عشق، قانون جاذبه تقصیری ندارد.'),
(1036, 'مثل', 'هیچ نرده ای را از جا مكن، مگر آنكه بدانی برای چه ساخته شده است.'),
(1037, 'افلاطون', 'آن كه نه فضیلت دارد و نه دانش، به آنچه هست خرسند است.'),
(1038, 'گاندی', 'عشق به كسی كه از ما بیزار است، دشوارترین كارهاست. ولی به لطف پروردگار، حتی این دشوارترین كارها نیز اگر بخواهیم انجام‌شان دهیم، آسان و ساده خواهد شد.'),
(1039, 'هوراس', 'بدبختی، هوش سرشار را نمایان می كند و خوشبختی، آن را می پوشاند.'),
(1040, 'آبراهام لینكلن', 'چیزهایی كه من مایل به دانستن آنها هستم در كتاب وجود دارد و بهترین رفیق من كسی است كه كتابی به من بدهد كه [ آن را ] نخوانده باشم.'),
(1041, '‌حضرت محمد (ص)', 'زمانی كه كار بدی انجام دادی، از آن توبه كن، (توبه‌ی‌ پنهانی) برای گناه پنهانی و توبه‌ی آشكار برای گناه آشكار است.'),
(1042, 'رالف والدو امرسون', 'نشان همیشگی خرد، دیدن معجزه [=كاری شگفت‌انگیز] میان چیزهای مرسوم است.'),
(1043, 'پرمودا باترا', 'یك هدف باید پایان قابل دركی داشته باشد و یك برنامه‌ی فعال با زمان خاص برای رسیدن به هدف.'),
(1044, 'گوئن جكسون', 'انسان می‌تواند بیست سال، پی كاری را بگیرد و به اندازه‌ی بیست سال، تجربه‌ی گرانبها بیندوزد؛ یا اینكه بیست بار، پی كاری را بگیرد و تنها به اندازه‌ی یك سال تجربه اندوخته باشد.'),
(1045, 'لئوناردو داوینچی', 'كار همیشگی و پی در پی سبب می‌شود كه نیروی سنجش و ارزیابی خود را از دست بدهید.'),
(1046, 'امام علی (ع)', 'پیش از حركت در راه، از همراه و پیش از قرار گرفتن در خانه درباره‌ی همسایه تحقیق نما.'),
(1047, 'امام علی (ع)', 'حج، جهاد هر ناتوانی است و برای هر چیزی زكاتی است و زكات بدن روزه می‌باشد و جهادِ زن، شوهرداریِ نیكوست.'),
(1048, 'ران كافمن', 'به خودتان فضایی برای اشتباه كردن بدهید تا فضایی برای رشد كردن داشته باشید.'),
(1049, 'امام علی (ع)', 'هنگامی كه بر دشمنت پیروز شدی، عفو و بخشش را شُكر غلبه‌ات بر او قرار بده.'),
(1050, 'اُرد بزرگ', 'ثمره كشتن، كشته شدن است.'),
(1051, 'ژان ژوند', 'فردا هرگز دیر نخواهد بود، اگر بدانید كه در جستجوی دانش هستید.'),
(1052, 'راكفلر', 'شكست بیش از موفقیت آموزنده است؛ كسی كه هیچگاه اشتباه نمی كند، هرگز به جایی نمی رسد.'),
(1053, 'فرناندو پسوا', 'كاهلی بیش از هر چیزی آرامش بخش است.'),
(1054, 'افلاطون', 'باور درستی كه نتواند منطق خود را اثبات كند، دانایی نیست، اما چون شناخت به حقیقت است، نادانی هم نمی باشد و این فاصله ی میان دانایی و نادانی است.'),
(1055, 'ژان ژاك روسو', 'انسان از مادر، آزاد آفریده شده است.'),
(1056, 'الكسیس كارل', 'بشر به وسیله دعا سعی دارد نیرو و توان خود را به نیرویی مافوق قدرت بشری متصل سازد تا بدین طریق از توانی دوچندان برخوردار گردد. در حقیقت ما با خواندن دعا خود را به نیرویی اتصال می دهیم كه تمامی جهان هستی را بهم مرتبط ساخته است.'),
(1057, 'برتراند راسل', 'اگر آدمی آنقدر به غذا بی اعتنا باشد كه زرد و ناتوان شود، ما نباید او را تحسین كنیم؛ اما مردی كه از آگاهی به نیازهای خویش به مرحله ی همدردی با گرسنگان رسیده باشد سزاوار تحسین ما خواهد بود.'),
(1058, 'چارلز رابرت داروین', 'انسان، فرزند كار و زحمت خویش است.'),
(1059, 'استیو چندلر', 'با پرسیدن پرسش‌های بسیار می‌توانید ارتباطات خود را پایدار كنید و پایه‌ی دگرگونی‌های درخشانی را در زندگی‌تان بنا نهید.'),
(1060, 'اندرییس ارت', 'اگر روی چیزی كه دارید تمركز كنید، نه آنچه كه می خواهید داشته باشید، متوجه می شوید كه هم اكنون نیز ثروتمند هستید.'),
(1061, 'جورج ارول', 'همچنان كه اندیشه زبان را فاسد می كند، زبان نیز اندیشه را فاسد می سازد.'),
(1062, 'استیو چندلر', 'خودسازی و رشد هر كس، تنها به خود آن شخص، بستگی دارد.'),
(1063, 'نیچه', 'آن كس كه نداند خواست خویش را در چیزها چگونه بگمارد؛ دست كم معنایی بر آن خواهد افزود ... و از آن، این پندار زاده می شود كه گاهی در آن خواست بنیاد باوری بوده است.'),
(1064, 'ارد بزرگ', 'میهن دوستی، دسته و گروه نمی خواهد! این خواستی همه گیر است؛ كه اگر جز این باشد باید در شگفت بود.'),
(1065, 'وباهاروف', 'ای مهر مادری كه مقدس ترین محبتها هستی، زبان زمینی ما ناتوان از وصف عظمت آسمانی تو است.'),
(1066, 'امام علی (ع)', 'هر كس "نمی‌دانم" را ترك كند، در هلاكت‌گاه‌ها سقوط می‌كند.'),
(1067, 'مادر ترزا', 'سكوت ژرف را به مثابه لحظاتی مقدس و گران بها پاس بدار؛ لحظاتی برای پناه جستن در سكوت زنده  خانه آفریدگار.'),
(1068, 'استیسی میو', 'ناگزیر، كاری را انجام دهید كه به آن دلبستگی دارید، ولی بدانید كه رفتن به دنبال دلبستگی هایتان، گام نخست یك راهِ دور و دراز برای رسیدن به آرزوهایتان است.'),
(1069, 'نیچه', 'آرزو كردن چه قدر فرحبخش است، اما وقتی به آرزوی خود رسیدیم، شادی از درون ما رخت برمی بندد.'),
(1070, '؟', 'نخستین فصل سیاست چیست؟ آموزش و پرورش؛ دومین، باز هم آموزش و پرورش و سرانجام سومین فصل آن هم آموزش و پرورش است.'),
(1071, 'نیچه', 'جنایتكار اغلب به كفایت، شایسته كار خویش نیست و به همین دلیل، آن را خوار می دارد و بدنام می كند.'),
(1072, 'كریستین آندرسن', 'هزار آسایش، به خوشی یك پیروزی پس از رنج و تلاش نمی ارزد.'),
(1073, 'حضرت محمد (ص)', 'كسی كه زنا كند، از ایمان خارج می‌شود و اگر توبه كند، خداوند، توبه‌ی او را می‌پذیرد.'),
(1074, 'فرانسوا ولتر', 'بهترین راه برای جلب نیكی، رفع بدی است.'),
(1075, 'جان میلتون', 'بیچارگی و ناتوانی این نیست كه شخص، نابینا باشد، بلكه در این است كه نتواند آن را تحمل كند.'),
(1076, 'حضرت محمد (ص)‌', 'بهترین توشه (‌برای انسان در بعد از مرگ) تقوی است و بهترین چیزی كه در قلب القاء‌ شده، (به قلب داده شده و در آن نهادینه شده است) یقین است. (‌زیرا با یقین، قلب انسان دچار تزلزل نمی¬شود.)'),
(1077, 'دوكلوس', 'نفهمی و نادانی سه دسته است : یكی آنكه انسان هیچ نداند، دوم آنكه آنچه لازم است نداند و سوم آنكه آنچه را نباید بداند، بداند.'),
(1078, 'دیل كارنگی', 'برای زندگی فكر كنید، اما غصه نخورید.'),
(1079, 'ریچارد باخ', 'دگرگونی ناچیز امروز به فردایی سراسر دیگرگون راه می گشاید. به آنان كه در زندگی راههایی دشوار و والا پی می گیرند، پاداشی برتر ارزانی خواهد شد، هر چند پس از گذشت سالها.'),
(1080, 'ارد بزرگ', 'اندیشه و انگاره ی بیمار، آینده را تیره و تار می بیند.'),
(1081, 'مثل چینی', 'آنكه تهمت می زند، هزار بار می كشد و قاتل، یكبار.'),
(1082, 'لئوبوسكالیا', 'عشق، همیشه به دست آمدنی‌ست. باید پرسید آیا آنقدر خواهان آن هستیم كه رنج جست‌و‌جو و تكاپوی سخت روح را بر خود هموار كنیم، یا فقط خودمان را سر كار گذاشته‌ایم؟'),
(1083, 'اسمایلز', 'تنها سرمایه گرانبهای ما وقت است و اگر رفت دیگر بر نمی گردد.'),
(1084, 'امام علی (ع)', 'علم، راه پوزش را بر كسانی كه می‌خواهند بر جهل خود اصرار بورزند و علت برای آن می‌آورند، بسته است.'),
(1085, 'جك كانفیلد', 'اگر به راستی می‌خواهید در كاری كه می‌كنید، برتر باشید، بیشتر از آنچه خواسته شده، انجام دهید.'),
(1086, 'جك كانفیلد', 'بیشتر از آنچه می‌بخشید، دریافت می‌كنید.'),
(1087, 'شاه اسماعیل سامانی', 'هیچ سرزمین سختی نمی تواند مانع جوشیدن چشمه هنر و دانش ایرانیان گردد.'),
(1088, 'گابریل گارسیا ماركز', 'همه ی مردم دوست دارند در اوج و قله ی كوه زندگی كنند، بی آنكه متوجه باشند خوشبختی حقیقی در سراشیبی ای است كه به سمت بالای كوه می پیماییم.'),
(1089, 'سقراط', 'تمام محبت خود را به یكباره برای دوستت ظاهر مكن؛ زیرا هر وقت اندك تغییری مشاهده كرد تو را دشمن می پندارد.'),
(1090, 'جان ماكسول', 'اگر تیمی با عظمت و با یك رویای كوچك داشته باشید بسیار بهتر از رویایی عظیم با یك تیم كوچك است.'),
(1091, 'اُرد بزرگ', 'اگر آغاز زندگیت با سپیده دم و روز همزاد گشت، همواره در جست و جوی چراغ و پناهگاهی برای شبانگاهان باش و اگر در شب و سیاهی آغاز شد، چراغی از امید در خود بیافروز كه پگاه خوشبختی نزدیك است.'),
(1092, '؟', 'هیچ‌كس نمی‌تواند بدون خواست خودمان، ما را آشفته و پریشان كند.'),
(1093, 'حضرت محمد (ص)', 'یكی از ارزش‌های مؤمن نزد خداوند این است كه لباسش پاكیزه باشد و به كم راضی شود.'),
(1094, 'اسمایلز', 'اشخاص عاقل و با اخلاق هرگز كلامی بر زبان نمی آورند كه احساسات دیگران را جریحه دار سازند.'),
(1095, 'حضرت محمد (ص)', '‌بدترین مردم كسی است كه آخرت خود را به دنیایش بفروشد و از او بدتر كسی است كه آخرت خود را به دنیای غیر خودش بفروشد.'),
(1096, 'جانولی', 'با تمام راههایی كه می توانید، در تمام جاهایی كه می توانید، در تمام اوقاتی كه می توانید، با تمام مردمی كه می توانید، تا آنجایی كه می توانید خوبی كنید.'),
(1097, 'افلاطون', 'آنجا كه جویندگان زمامداری، گدایان و گرسنگان باشند كه می‌خواهند از این راه كسب مال كنند، هرگز حكومت درستكار برپا نخواهد شد.'),
(1098, 'وین دایر', 'این دست و آن دست كردن كارها سبب می‌شود كه زمان گرانمایه‌ی امروز را نیز از دست بدهید.'),
(1099, 'مثل آمریكایی', 'زود رسیده زود فاسد می شود.'),
(1100, 'مثل چینی', 'فتح ستارگانی كه هزاران فرسنگ با ما فاصله دارند با برداشتن اولین گام ممكن شده است.'),
(1101, 'جبران خلیل جبران', 'انسان خردمند با مشعـل دانش و حكمت، پیش رفته و راه بشریت را روشن می سازد.'),
(1102, 'حضرت محمد (ص)', 'بدترین غذاها، غذای ولیمه (جشن مثل عروسی) است زیرا كسی كه نیاز دارد، به او نمی‌دهند و كسی كه نیاز ندارد، به او می‌دهند. (چون در چنین مراسمی، افراد فامیل و نزدیك را دعوت می‌كنند.)'),
(1103, 'جك كانفیلد', 'كامرواترین مردمانی كه تاكنون دیده‌ام، بیشترین دلبستگی‌شان به كاری‌ست كه می‌كنند.'),
(1104, 'جان ماكسول', 'زیاد كار كردن هنر نیست، هوشمندانه كار كردن هنر است.'),
(1105, 'ریچارد باخ', 'تو نیاز داری كه به شناختن خود ادامه دهی؛ هر روز كمی بیشتر از روز پیش.'),
(1106, 'كیم وو چونگ', 'زندگی، درهای خود را به روی كسانی می‌گشاید كه خود را باور دارند؛ آنانی كه ایمان دارند؛ آنهایی كه زندگی را با انرژی و قدرت به مبارزه می‌طلبند.'),
(1107, 'لئوبوسكالیا', 'برای شناخت درست كسی، باید بیشتر به كردار او توجه كرد تا به گفتارش.'),
(1108, 'اشو', 'به یاد داشته باش كه تنها تو نیستی كه حقیقیت را می جویی، حقیقت نیز در جستجوی تو است.'),
(1109, 'پارلاگركوئیست', 'كسی كه سنگ قیمتی برایش ارزشمند است باید هر جا می رود گنجینه ها او را در بر گیرند.'),
(1110, 'مادر ترزا', 'اگر شروع به قضاوت كردن در مورد مردم بكنی، وقت پیدا نمی كنی كه آنها را دوست داشته باشی.'),
(1111, 'حضرت محمد (ص)', '(بر دیگران) آسان بگیر تا به تو (نیز) آسان گرفته شود.'),
(1112, '؟', 'همواره به یاد داشته باشید كه نیاز، سبب آفرینش و نوآوری است.'),
(1113, 'بیل گیتس', 'مشتریان ناراضی همیشه موجب نگرانی هستند. آنها در عین حال فرصت طلایی شما هستند.'),
(1114, 'ای.هابارد', 'شكست، تنها زمانی رخ می دهد كه تلاشی در كار نباشد.'),
(1115, 'حضرت محمد (ص)', 'هر زنی كه لباسش را در غیر خانه‌ی خود بیرون بیاورد (‌و حجاب خود را رعایت نكند) خداوند، پرده‌ی خود را از او پاره می‌كند (و در دنیا و آخرت رسوایش می‌سازد.)‌'),
(1116, 'حضرت محمد (ص)', 'كسی كه چیزی را دوست داشته باشد، زیاد از او یاد می‌كند.'),
(1117, 'جی.پی.واسوانی', 'ذهن همچون ساعتی پیوسته در حال كار كردن است و باید هر روز با اندیشه های خوب آن را كوك كرد.'),
(1118, 'ژان لویی فورنیه', 'یاد بگیرید كه زندگی كنید؛ برای زندگی كردن فقط یك دوره عمر دارید نه بیشتر.'),
(1119, 'جك كانفیلد', 'اگرچه در بسیاری از موارد می‌ترسیم كه اگر كارمان را به فرد دیگری بسپاریم، آن را خوب انجام ندهد، افراد بسیاری، عاشق انجام كاری هستند كه شما از آن بیزارید و آن كار را بسیار بهتر از خودتان انجام می‌دهند؛ با هزینه‌ای بسیار كمتر.'),
(1120, 'حضرت محمد (ص)', 'پرخوری، قلب را سخت می¬كند (باعث می¬شود، تمام توجّه آن شخص به خودش بوده و از حال دیگران غافل باشد.)'),
(1121, 'حضرت محمد (ص)', 'فقیرترین مردم صاحب طمع است و بی‌نیازترین مردم كسی است كه اسیر حرص نباشد.'),
(1122, 'آنتوان دوسنت اگزوپری', 'شما هیچ به گل من نمی مانید. شما هنوز هیچ چیز نشده اید. كسی شما را اهلی نكرده و شما نیز كسی را اهلی نكرده اید. برای شما نمی توان مُرد. البته گل سرخ من هم در نظر یك رهگذر عادی به شما می ماند، اما او به تنهایی از همه ی شما برتر است؛ زیرا او گل سرخ من است...'),
(1123, 'شری كارتر اسكات', 'برای شما چه چیز لذت آور است؟ آن را انجام دهید، پی در پی انجام دهید، چون قلبتان را سبك می كند و معجزه گر وجودتان می شود.'),
(1124, 'بروس لی', 'فقط دانستن كافی نیست، باید به كار گرفت، فقط خواستن كافی نیست، باید انجام داد.'),
(1125, 'حضرت محمد (ص)', 'آنچه برای خود می‌پسندی برای مردم هم بپسند تا مؤمن باشی و با همسایگان خود به نیكی رفتار كن تا مسلمان باشی. (پس كسی كه به همسایگان خود احترام نمی‌گذارد، مسلمان نیست.)'),
(1126, 'جك كانفیلد', 'اگر با همه‌ی مردم به خوبی گفتگو، رفتار و برخورد كنم و از آن‌ها چشم‌داشت واكنش خوب داشته باشم، همیشه برپایه‌ی همان چشم‌داشت‌های مثبتی كه از آن‌ها دارم، رفتار خواهند كرد.'),
(1127, 'پرمودا باترا', 'نسبت به همه، خوش‌بین باشید.'),
(1128, 'بانواستاهل', 'یگانه عملی كه در زندگی، انسان را به هدفش می رساند، انجام وظیفه است.'),
(1129, 'كنفوسیوس', 'از مرد آزاده، چشم داشت ایستادگی و پایداری را دارند، نه فرمانبرداری كوركورانه.'),
(1130, 'لئوبوسكالیا', 'هر اندازه بگذاریم دیگران نیروی خود را بر ما بكار گیرند، پیوندمان با آنچه هستیم و حق ماست، بیشتر گسسته می‌شود.'),
(1131, 'امام علی (ع)', 'اگر از چیزی ترسیدی، در همان چیز وارد شو، زیرا شدتِ ناراحتی پرهیز و خویشتن‌داری از آن، بزرگ‌تر از آن است كه می‌ترسی.'),
(1132, 'فویرباخ', 'انسان، خدای انسان است.'),
(1133, 'جان. اف. كندی', 'هنگامی كه قدرت، توجه انسان را محدود می‌سازد، سروده، توانگری و گوناگونی وجودش را به او یادآور می‌شود.'),
(1134, 'سیدنی اسمیت', 'تعریف من از ازدواج چنین است: قضیه با دو نفر آغاز می شود كه زندگی را بدون وجود یكدیگر غیرقابل تحمل می بینند و بعد از مدتی به همان دو نفر ختم می شود كه دیگر زندگی را در كنار هم غیرقابل تحمل می بینند.'),
(1135, 'ناپلئون بناپارت', 'اشكال كارتان این است كه تازه روز قبل از نبرد، در حالی كه هنوز از تحركات دشمنتان بی خبرید، نقشه می كشید.'),
(1136, 'برانچ كامل', 'فرد خوشبین اظهار می دارد كه ما در بهترین دنیای ممكنه بسر می بریم و شخص بدبین بیمناك است كه نكند سخن او راست باشد.'),
(1137, 'حضرت محمد (ص)', 'خروس را دشنام مدهید كه مردم را از برای نماز بیدار می‌كند.'),
(1138, 'حضرت محمد (ص)', 'وای به حال كسی كه مسلمانی را معطّل كند (بی‌جهت او را نگه دارد) تا حقّش از بین برود.'),
(1139, 'برایان تریسی', 'برای كامیابی همواره باید چند احساس مثبت در زندگی ما حاكم باشد.'),
(1140, 'جان ماكسول', 'من معتقدم موفقیت زمانی به دست می آید كه یك قدم جلوتر برویم؛ یعنی ضمن استقبال از ناملایمات و سختی ها شكست را بخشی از زندگانی خود بدانیم.'),
(1141, 'مایكل ماسترسون', 'سحرخیز باش تا كامروا شوی.'),
(1142, 'امام جعفر صادق (ع)', 'خدا خلقی از سگ نجس‌تر خلق نكرده است و كسی كه عداوت ما اهل بیت دارد از سگ نجس‌تر است.'),
(1143, 'والتر بنیامین', '"تهیدستی، ننگ نیست." چه جور هم! ولی آنان [گویندگان این سخن] تهیدستان را به دیده‌ی ننگ می‌نگرند. چنین می‌كنند و سپس، او را با گفتن چند مثل، آرام می‌كنند.'),
(1144, 'فرناندو پسوا', 'هرچه در ما وجود دارد پیشامد گونه و فریبكارانه است و بلندایی كه در درونمان داریم، در درونمان نداریم؛ ما در بلندی ها، بلندتر از بلندای خودمان نیستیم.'),
(1145, 'ریشله', 'عشق چیزی است كه به هیچ چیز دیگر شباهت ندارد.'),
(1146, 'جان ماكسول', 'آدم عادی منتظر می ماند تا فرد دیگری در او انگیزه ایجاد كند و تصور می كند كه شیوه تفكر او نتیجه شرایط و زندگی اوست.'),
(1147, 'هوندا', 'من اگر تسلیم می شدم، افرادی كه به من متكی بودند از گرسنگی می مردند. تصویر این افراد جدی و تهیدست همیشه در ذهنم رژه می رفت.'),
(1148, 'لابرویر', 'تواضعِ بی جا آخرین حد تكبر است.'),
(1149, 'آلن فروم', 'مردم این گونه هستند كه در همكاری با دیگران موفق ترند تا در ضدیت با آنها.'),
(1150, 'برایان تریسی', 'یک انسان عادی اگر بتواند این عادت را در خود ایجاد کند که کارهایش را به گونه ای روشن اولویت بندی کند و کارهای مهم را به سرعت انجام دهد، می تواند از یک نابغه که زیاد حرف می زند و نقشه های عالی می کشد، اما کمتر کاری را به انجام می رساند، پیشی بگیرد.'),
(1151, 'حضرت محمد (ص)', 'بهترین زنان امّت من آن است كه خوشروتر و مَهرش كمتر باشد.'),
(1152, 'بزرگمهر', 'همرزمان هوشیار برگزین و اگر خصم بر تو تیز گردید از او برمتاب. اما چون یقین كردی كه در برابر او تاب پایداری نداری به جنگ مكوش و با خصم پر توان میاشوب.'),
(1153, 'وین دایر', 'دل قوی دارید كه او هرگز ما را رها نمی كند و هر لحظه در درون ما زنده است.'),
(1154, 'حضرت محمد (ص)', 'از (موارد) خوشبختی هر فردی، خوش اخلاقی (نسبت به دیگران) و همسایه‌ی شایسته و وسیله‌ی (نقلیّه‌ی) خوب است. (در زمان پیامبر، وسیله‌ی نقلیّه‌ی خوب، اسب رام شده بود ولی امروز اتومبیل‌های مختلفی می‌باشد.)'),
(1155, 'حضرت محمد (ص)', '‌كسی كه خداوند به او شصت سال عمر دهد، نسبت به عمر، معذور است. (حجّت بر او تمام می‌باشد و هر گناهی انجام داد، سریعاً‌ نوشته می‌شود.)'),
(1156, 'حضرت محمد (ص)', '‌رضایت خداوند،‌ در رضایت پدر و مادر است و خشم او در خشم آنهاست.'),
(1157, 'امام علی (ع)', 'قلب احمق در دهان اوست و زبان خردمند در قلب اوست.'),
(1158, 'ریچارد براتیگان', 'هنگامی كه رویاها می روند، زندگی از دست رفته است.'),
(1159, 'نیچه', 'مسایل بزرگ نیاز به عشقی بزرگ دارند و تنها روحیه های قوی، شفاف، مطمئن و با بینایی مستحكم قادر به داشتن این عشق بزرگ هستند.'),
(1160, 'جیم رآن', 'شادمانی، چیزی نیست كه بتوان از حساب بانكی برداشت كرد. شادمانی را از زندگی و محیط پیرامون‌مان می‌توانیم برداشت كنیم.'),
(1161, 'رالف والدو امرسون', 'خاموش باشیم، زیرا در آن زمان است كه صدای نجوای خدا را خواهیم شنید.'),
(1162, 'مثل چینی', 'اگر از آینده باخبر باشی، امروز كار نمی كنی.'),
(1163, 'امام جعفر صادق (ع)', 'دست را برای طعام خوردن كه بشویی به دستمال پاك مكن زیرا كه تا تری در دست هست بركت در طعام هست.'),
(1164, 'حضرت محمد (ص)', 'حقیقتاً دهان شما راهی برای (بیان و فهماندن) قرآن است پس با مسواك زدن، دهان‌های خود را پاكیزه كنید.'),
(1165, 'مارك تواین', 'باید هوشیار باشیم و از هر تجربه، فقط حكمتی را كه در آن نهفته است كسب كنیم.'),
(1166, 'ویلیام شكسپیر', 'دوستانی كه داری و آنان را آزموده ای، با قلاب های پولادین به جان و دل خود پیوسته نگاه دار.'),
(1167, 'ساموئل كالریج', 'دوستی، درختی برای پناه گرفتن است.'),
(1168, 'باربارا دی آنجلیس', 'هرگاه به خود اجازه دهید تا هستی و آفرینش را با همه ی شكوه و بزرگی آن بنگرید، آنگاه به توانایی، زیبایی و عشق و شور زندگی در خودتان پی خواهید برد؛ زیرا شما نیز بخشی از همین شكوه و بزرگی هستید.'),
(1169, 'كریستین بوبن', 'شگفت آور است بگویم، ولی در پنجاه سالگی تازه می توانم نخستین گام هایم را بردارم.'),
(1170, 'امام جعفر صادق (ع)', 'مزاح كردن از نیكی خلق است و موجب خوشحالی برادر مؤمن می‌شود.'),
(1171, 'فیلیپ چسترفیلد', 'كسی كه شتاب می‌كند، نشان می‌دهد چیزی كه در موردش شتاب می‌كند بیش از حد برایش بزرگ است.'),
(1172, 'كیم وو چونگ', 'نوآوری‌های بزرگ، نتیجه‌ی انباشتن نوآوری‌های كوچكِ بسیار است.'),
(1173, 'جین وبستر', 'مهمترین ویژگی آدمی، قوه ی تخیل و تصور او است. برای اینكه انسان می تواند خودش را به جای دیگری در نظر بگیرد. این ویژگی، انسان را فهمیده و دلسوز می كند.'),
(1174, 'اُرد بزرگ', 'آن كه پندپذیر نیست، در حال افتادن در چاله سستی و زبونی است.'),
(1175, 'مثل فارسی', 'عشق و مشك پنهان نمی ماند.'),
(1176, 'امام علی (ع)', 'هر كس دلش به محبت دنیا شیفته شد، دل او به سه چیز از دنیا می‌چسبد: اندوهی كه از او ناپدید نشود و طمعی كه رهایش نسازد و آرزویی كه به آن نخواهد رسید.'),
(1177, 'میلان كوندرا', 'اگر ما شایستگی دوست داشتن را نداریم، شاید به این دلیل است كه خواهانیم تا دوستمان بدارند؛ یعنی چشم داشت چیزی (عشق) را از دیگری داریم؛ به جای آنكه بدون ادعا و توقع به سویش برویم و تنها خواستار حضورش باشیم.'),
(1178, 'الینور روزولت', 'یادتان باشد كه فردیت، صرفاً حق شما نیست؛ متعهدید [=پایبند] كه فردی باشید.'),
(1179, 'اریك نیوتن', 'هر نقاش فقط چیزهایی را می بیند كه می خواهد ببیند و فقط چیزهایی را می خواهد ببیند كه دوست می دارد.'),
(1180, 'ریچارد تمپلر', 'اگر نمی توانید سازی بنوازید، بد نیست به یك قطعه ی موسیقی گوش كنید كه همواره می تواند شما را سبك و آسوده دل كند.'),
(1181, 'حضرت محمد (ص)', 'چهار چیز در دنیا غریبند: قرآن در نزد ظالم (زیرا تمام كارهایش بر خلاف قرآنی است كه خوانده است) و مسجدی كه در منطقه¬ای قرار دارد كه در آن نماز نمی¬خوانند و قرآن در خانه¬ای كه خوانده نشود و مرد شایسته¬ای كه (در میان) گروه بد باشد.'),
(1182, 'جیم رآن', 'با دگرگون ساختن روش درك، داوری و تصمیم‌گیری‌ها، می‌توان زندگی را به گونه‌ی چشم‌گیری دگرگون ساخت.'),
(1183, 'میلان كوندرا', 'ما بیشتر برای از یاد بردن درد و رنج خویش به آینده پناه می بریم؛ در پهنه ی زمان، خطی را تصور می كنیم كه فراسوی آن خط، درد و رنج ما پایان خواهد یافت.'),
(1184, 'جك كانفیلد', 'بیشتر ترسهای ما ساخته و پرداخته ی خودمان است.'),
(1185, 'حضرت محمد (ص)', 'هیچ غمی مانند غم قرض گرفتن و هیچ دردی مانند درد چشم نیست.'),
(1186, 'مارگارت یانگ', 'تو نخست باید آن كسی كه به راستی هستی، باشی، آنگاه برای به دست آوردن چیزهایی كه می خواهی، دست به كار شوی.'),
(1187, 'لئوبوسكالیا', 'امروز بر پایه‌ی خاطره‌ی [=یادبود] دیروز، داوری نكن.'),
(1188, 'جیم رآن', 'ما باید همواره به یاد داشته باشیم كه كژی‌های بزرگ، از كارهای نادرست كوچك آغاز می‌شوند و كارهای نادرست كوچك به مرور زمان تبدیل به كژی می‌شوند.'),
(1189, 'حضرت محمد (ص)', 'اعمال با توجّه به نیّات و پایان آن است. (اگر عملی با نیّت خوب به پایان برسد، ارزش خواهد داشت.)'),
(1190, 'نیچه', 'فكر به خودكشی راهی موثر برای تسلی خاطر است و با آن می توان به خوبی از پس برخی شبهای سخت برآمد.'),
(1191, 'پاندر', 'از اندیشه ها و آرزوهای دیگران برای موفقیت خود، یاری بگیرید.'),
(1192, 'آبراهام مازلو', 'اگر در زندگی، سرور و شادمانی نبود، زندگی، ارزش زیستن نداشت.'),
(1193, 'آبراهام مازلو', 'اگر اندیشه‌ی بكری به نظر آدمی برسد، اگر اندیشه‌ی تازه‌ای را بیابد و آن را به انجام رساند، افراد گوناگون دیگری نیز همزمان به ساختن و پرداختن همان اندیشه سرگرم خواهند بود.'),
(1194, 'واگنر', 'آنجا كه دل نیست، موسیقی وجود ندارد.'),
(1195, 'نیچه', 'آدمی با رنج عمیق درونی از دیگران جدا می شود و والا می گردد. انسان های آزاده، دلِ شكسته و پر غرور خود را پنهان می كنند.'),
(1196, 'افلاطون', 'رأیی كه متكی به دانش نباشد، هیچ ارزشی ندارد، بلكه رأی كوران است.'),
(1197, 'اُرد بزرگ', 'هنگامی كه می خواهی وظیفه و بایسته خویش را انجام دهی، از كسی فرمان نگیر.'),
(1198, 'آنتونی رابینز', 'تنها كسانی كه نیروی خدمت سخاوت مندانه و صمیمانه را آموخته اند، ژرفترین خوشی های زندگی و موقعیت های راستین را درك می كنند.'),
(1199, 'استیو براون', 'كاری كه باید بشود، ارزش انجام شدن را دارد، گرچه بد انجام شود.'),
(1200, 'خواجه نصیر توسی', 'پیروزی از آن مردمانی است كه همیشه تواناییِ [ ایستادگی ] در برابر سختی ها را داشته باشند.'),
(1201, 'امام جعفر صادق (ع)', 'از تعظیم خداست تعظیم پیران كردن.'),
(1202, 'فلورانس اسكاول شین', 'آرزوهای به ستوه آورنده ی آدمی، به گونه ای اندوه بار برآورده می شوند.'),
(1203, 'زیگ زیگلار', 'نگران چیزی نباشید كه نمی توانید آن را تغییر دهید، در برابر، انرژی خود را در موارد مثبت و سازنده بكار برید.'),
(1204, 'حضرت محمد (ص)', '‌سزاوارترین مردم به بخشش، كسانی هستند كه بر عقوبت، بیشتر قدرت دارند.'),
(1205, '؟', 'هر كه جور آموزگار نبیند، به جفای روزگار گرفتار آید.'),
(1206, 'لاروشفوكو', 'ناكامی‌های ما همواره از بهانه‌هایی كه برای توجیه كردن آن‍ها می‌آوریم، بخشش‌پذیرترند.'),
(1207, 'پوشه', 'بزرگترین سرمایه ی آدمی، توانگری نیست، بلكه خوی خوش است.'),
(1208, 'فلورانس اسكاول شین', 'آنان كه در گذشته زندگی می كنند، تماس خود را با حال شگفت آور از دست می دهند.'),
(1209, 'پونگ', 'به یقین، خاك و كود لازم است تا گل سرخ بروید؛ اما گل سرخ نه خاك است و نه كود.'),
(1210, 'مثل ایرلندی', 'فرد كنجكاو در نیمه‌ی راه خردمندی است.'),
(1211, 'لارنس لی', 'دانسته های ما اهمیتی ندارند، آنچه با دانسته هایمان انجام می دهیم مهم است.'),
(1212, 'جان پریسكورن', 'مهمترین كامیابی یی كه به دست آوردم، پرسیدن و خواستن از خویشتن بود.'),
(1213, 'حضرت محمد (ص)', 'خوش به حال كسی كه برای (رسیدن به) اسلام هدایت شده است و معیشت او به اندازه‌ی كفاف (زندگی او ) باشد و (در زندگی) قناعت كند.'),
(1214, 'حضرت محمد (ص)', 'از زمین محافظت كنید زیرا مانند مادر شماست چون كسی كاری از خوب یا بد روی زمین انجام نمی‌دهد مگر این كه (روز قیامت) خبر می‌دهد.'),
(1215, 'حضرت محمد (ص) ‌', 'دعا، همان (نوعی) عبادت است.'),
(1216, 'نیچه', 'هیچ پدیده ای اخلاقی وجود ندارد، بلكه تعبیرهای اخلاقی از پدیده ها وجود دارد.'),
(1217, 'برتراند راسل', 'اگر تمامی ما قدرت جادویی خواندن افكار یكدیگر را داشتیم، نخستین چیزی كه در دنیا از بین می رفت عشق بود.'),
(1218, 'اُرد بزرگ', 'اگر برای رسیدن به خواهشها و آرزوهای خود زورگویی پیشه کنیم، پس از چندی کسانی را در برابرمان خواهیم دید که دیگر زورمان به آنها نمی رسد.'),
(1219, 'آرتور شوپنهاور', 'وقتی كه وصف این اعجوبه های دانش و فضیلت دانشگاهی پرهیبت را می شنوم گاهی به خود می گویم: آه، برای اینكه بتوانند زیاد بخوانند ناچار بوده اند چقدر كم فكر كنند!'),
(1220, 'امام علی (ع)', 'از عیادت كنندگان كسی ثوابش بیشتر است كه زودتر برخیزد مگر آنكه بیمار نشستن او را خواهد و از او سؤال كند كه بنشیند.'),
(1221, 'نیچه', 'اگر بگویند كه من انسانم این پیشداوری است. اما در میان انسانها نیز زندگی كرده ام و با هرچه كه انسانها احساس می كنند آشنا هستم، از چیزهای كوچك تا بزرگ.'),
(1222, 'كیم وو چونگ', 'دوستان گوناگون از طبقات گوناگون داشتن، دارایی بزرگی‌ست.'),
(1223, 'نیچه', 'تنها با دست نمی نویسم: پا نیز، همواره، همراهی نویسنده را می خواهد. استوار، آزاد و دلیر می دَوَد، گاهی بر دشت، گاهی بر كاغذ.'),
(1224, 'نیچه', 'اِعمال قدرت، زحمت دارد و مردانگی می خواهد؛ این است كه بسیاری، حق مسلم و ثابت خود را جاری نمی كنند.'),
(1225, 'امام علی (ع)', 'از موارد عبرت‌گیری از این دنیا، این‌كه: آدمی نزدیكِ وصل به آرزویش می‌شود، در آن حال، حضور مرگش آرزو را از او قطع می‌كند. پس نه آرزویی یافت می‌شود و نه آن‌چه رها شده، او را رها می‌سازد.'),
(1226, 'مثل', 'هر جا شاگردی آماده باشد، آموزگار، پیدا می شود.'),
(1227, 'والتر', 'یك حكومت بد همیشه تا جایی برای ماندن خود پافشاری می كند كه به نظر می آید تغییر آن، آسانتر از ترمیم آن است.'),
(1228, 'گونتر گراس', 'افسانه ها جوهره تجربه ، رؤیاها، آرزوهای انسان و حس گمگشتگی ما در دنیا را به قالب می ریزند تا حقیقت را بازگو كنند و از این رو، حقیقی تر از بسیاری از واقعیت ها هستند.'),
(1229, 'ماكسیم گوركی', 'جهان به یك شب می‌ماند. هركس باید خود چراغ خود را بیفروزد.'),
(1230, 'بیل گیتس', 'پیش از آنكه شما متولد بشوید، پدر و مادر شما هم جوانان پرشوری بودند و تا به آن اندازه كه اكنون به نظر شما می رسد، موجب آزردگی خاطر نبودند.'),
(1231, 'اسپنسر جانسون', 'كامیابی یعنی تبدیل شدن به آن كسی كه می توانید باشید و پیش رفتن به سوی اهداف باارزش.'),
(1232, 'لئوبوسكالیا', 'اگر هیچ نشان آشكاری از عشق ما در كردارمان به چشم نمی‌خورَد، باید در بود و نبود آن شك كرد.'),
(1233, 'پابلو پیكاسو', 'آسایش، ناموس طبیعت است. همه به آسایش نیاز دارند، حتی گیاهان!'),
(1234, 'امام علی (ع)', 'هر كس پنهان و آشكارش و كردار و گفتارش، مخالف یكدیگر نباشد، قطعاً امانتِ انسان بودن را ادا كرده و در عبادت اخلاص ورزیده است.'),
(1235, 'حضرت محمد (ص)', '‌كسی كه در هنگام حضور مردم كه او را می‌بینند، نماز خوب بخواند (ولی) سپس در هنگام خلوت، آن را بد به جا بیاورد، این كار (نوعی) توهین است و (‌در واقع) به خداوند خود،‌ توهین كرده است.'),
(1236, 'جرج برنارد شاو', 'انسان ها به نسبت ظرفیتی كه برای كسب تجربه دارند عاقل اند نه به نسبت تجاربی كه اندوخته اند.'),
(1237, 'پرمودا باترا', 'كسب سود پیش از به وجود آوردن كیفیت و خدمات خوب، مانند بستن اسب به پشت گاری است.');
INSERT INTO `quotations` (`id`, `author`, `text`) VALUES
(1238, 'لقمان', 'جوانمردی آن است كه نیازمندان را نرنجانی.'),
(1239, 'جان ماكسول', 'در برخورد با یك مسئله یكی می گوید: "من تسلیم شدم"، در حالی كه دیگری در برخورد با همین مسئله ممكن است بگوید: "عجب فرصت جالبی!"'),
(1240, 'حضرت محمد (ص)', 'كسی كه نمازش، او را از كارهای زشت و بد، منع نكند، از طرف خدا به جز دوری از او، چیزی به او اضافه نمی‌شود. (نمازش او را از خدا، دورتر می‌كند.)'),
(1241, 'جان ماكسول', 'رهبری چیزی جز داشتن قدرت نفوذ و اثرگذاری بر دیگران نیست.'),
(1242, 'اشو', 'انسانی كه در راه كشف حقیقت تلاش می كند، جامعه بی درنگ دشمن او می شود.'),
(1243, 'مثل كره‌ای', 'صندلی گردان، می‌چرخد و می‌چرخد و از آنِ كسی‌ست كه روی آن بنشیند.'),
(1244, 'حضرت محمد (ص)', '‌هیچ مردی نیست كه خود را بزرگ شمرده و در راه رفتن، مغرورانه می‌رود مگر این كه خداوند موقع ملاقات با او، خشمگین است.'),
(1245, 'مارگارت تاچر', 'اتفاق نظر یعنی اینكه همه باورها، اصول، ارزش و سیاستهای خود را رها كنیم و دنبال چیزی بگردیم كه هیچ كس اعتقادی به آن ندارد.'),
(1246, '؟', 'انسان، تازه‌ترین آوازی را كه از دهان آوازه‌خوان بشنود، بیشتر می‌پسندد.'),
(1247, 'پرمودا باترا', 'هرگز شرافت خود را از دست ندهید، چون اگر این را از دست بدهید، همه چیز را از دست داده‌اید.'),
(1248, 'لئوناردو داوینچی', 'نگذارید خشم و بدخواهی شما سبب نابودی زندگی شود؛ زیرا كسی كه به زندگی ارج ننهد، خود، شایسته‌ی آن نیست.'),
(1249, 'نیچه', 'به راستی، آن كه روزگاری اندیشه ی خود را اینجا در سنگ بر هم انباشت و بر افراشت، از آن خردمند ترین مردمانی بود كه راز زندگی را می دانند. او اینجا با ساده ترین مثال به ما می آموزاند كه در زیبایی نیز جنگ است و نابرابری و نبرد بر سر قدرت و چیرگی.'),
(1250, 'ناتانیل براندن', 'هدف از زندگی این است كه از یك حرمت نفس والا برخوردار باشیم و بتوانیم جدا از مهارت یا عدم مهارت در یك تخصص یا زمینه ی خاص و تأیید یا عدم تأیید دیگران، حرمت نفس خود را پاس داریم.'),
(1251, '؟', 'اگر مردم را به حال خودشان گذاشتی، تو را به حال خودت خواهند گذاشت.'),
(1252, 'لئوبوسكالیا', 'آثار محسوس [=چشم‌گیر] هنری با گذشت زمان از بین می‌روند، از دیوارها كنده می‌شوند و با بكارگیری سلیقه‌های گذرا از اعتبار می‌افتند؛ ولی زندگی عشق، همیشگی‌ست.'),
(1253, 'نیچه', 'بشر در این دنیا بیشتر از همه موجودات، گرفتاری و عذاب كشیده است. بهترین دلیلش هم این است كه در بین تمام آنها تنها او می تواند بخندد.'),
(1254, 'اُرد بزرگ', 'همرنگ دیگران شدن، باور هیچ كدام از بزرگان نبوده است.'),
(1255, 'جاكسون', 'ابزار شجاعت غالبا نتایج مثبت دور از انتظاری به بار می آورد.'),
(1256, 'وین دایر', 'روح از عشق بیكران و بی پایان، مایه می‌گیرد؛ و تنها آرزویش دستیابی به آرامش و سازش است.'),
(1257, 'امام جعفر صادق (ع)', 'هر كه برادر مؤمنش با او مشورت كند و آنچه محض خیر او داند نگوید خدا عقل و رأیش را برطرف می‌كند.'),
(1258, 'جانسون', 'شخصیت خودت را زیر ذره بین ببر تا بتوانی عوامل ناهنجاری ها را از آن بیرون كنی، به ویژه عواملی كه امكان دارد از آنها بی خبر باشی.'),
(1259, 'حضرت محمد (ص)', '(با توجّه و متناسب) با اخلاق مردم، با آنها رابطه داشته باشید و با اعمال (بدشان) با آنها مخالفت كنید.'),
(1260, 'لولاند فوستر وود', 'موفقیت در ازدواج تنها این نیست كه ما شخص مناسبی برای خود پیدا كنیم، بلكه بیشتر به این بستگی دارد كه خود ما نیز شخص مناسبی برای دیگری باشیم.'),
(1261, 'لئوبوسكالیا', 'از روی راستی، ستایش كردن، آسان است و هیچ گونه خرجی برنمی‌دارد، ولی نباید ارزش آن را دست كم گرفت.'),
(1262, 'دی اچ لارسن', 'آنچه صادقانه باور داری، نادرست نخواهد بود.'),
(1263, 'بزرگمهر', 'خرد در نظر گاه مردمان آزاده و نیك سرشت جهان، پر از شادی و شكوه می نماید. بهره خردمندان و امیدواران، همیشه شادكامی است.'),
(1264, 'لئوبوسكالیا', 'در پی كسی باشید كه شما را به سبب تفاوت [=دیگرگونی]‌هایتان دوست بدارد، نه به رغم [=برخلاف] آنها.'),
(1265, 'جرج برنارد شاو', 'هر كسی نمی تواند حافظ، سعدی یا مولانا شود؛ هر كس به جای خود و برای خود كسی است؛ هر كس دارای سبكی است.'),
(1266, 'فرناندو پسوا', 'یك اثر كامل حتا اگر بد هم باشد بهتر است، چون در هر صورت یك اثر است، یا سكوت واژه ها، خموشی كل روان، تا نویسنده با آن به ناتوانی رفتار خود را ثابت كند.'),
(1267, 'سوزان جفرسون', 'ترس را احساس كن و با وجود آن، اقدام كن.'),
(1268, 'فلورانس اسكاول شین', 'میزان كامیابی و نیك بختی هر كس، بستگی مستقیم به میزان برابری و هم سنگی او دارد.'),
(1269, 'لیندا هوگن', 'در حالی كه قدم می زنم، به مسیر ژرف تری توجه می كنم. ناگهان تمام نیاكان خود را پشت سرم می یابم. آنها می گویند، آرام باش؛ تو در اثر عشق هزاران نفر به وجود آمده ای.'),
(1270, 'چارلز دیوبولیس', 'مهم ترین نكته این است كه در هر لحظه بتوانیم آنچه را كه هستیم به خاطر آنچه می توانیم بشویم قربانی كنیم.'),
(1271, 'جان ماكسول', 'از آنچه در اختیار دارید مایه بگذارید، اما بیشتر از آن خیر.'),
(1272, 'مادر ترزا', 'اگر می‌خواهید برای ایجاد آشتی در جهان، كاری انجام دهید، به خانه‌تان بروید و خانواده‌تان را دوست بدارید.'),
(1273, 'روزولت', 'ستون تمدن قرن بیستم، كتاب و مطبو عات است.'),
(1274, 'حضرت محمد (ص)', 'تمام چیزهای مسلمان كه عبارتند از ثروت و آبرو و خون بر مسلمان دیگر حرام است (كه آنها را از بین ببرد) و برای شرّ بودن یك فرد، همین كافی است كه برادر مسلمان خود را كوچك كند.'),
(1275, 'كنفسیوس', 'تو نیكی را از دست مده، دیگران نیز خوب خواهند شد. وجود نیكان همچون باد  و [ وجود ] بدان همچون گیاه است. هرجا باد بوزد، گیاه به ناچار سر فرود می آورد.'),
(1276, 'اشو', 'زندگی به هیچ وجه اسرارآمیز نیست. بر هر برگ درخت، بر هر ریگ ساحل، زندگی را می خوانیم. این زندگی است كه در هر پرتو آفتاب می رقصد؛ هر آنچه می بینی، خود زندگی است با تمام زیبایی.'),
(1277, 'راجر همیلتون', 'خبر بد این است كه زمان شما پرواز می‌كند و می‌رود. خبر خوب این است كه خلبان، خود شما هستید.'),
(1278, 'لافونتن', 'در آغاز هر كار مهم یك زن وجود دارد.'),
(1279, 'برایان تریسی', 'پیش از شروع هر کاری از خودتان بپرسید: انجام دادن یا ندادن این کار چه تاثیرات بلندمدتی بر زندگی من خواهد داشت؟'),
(1280, 'پائولو كوئیلو', 'شتاب زمان به اندازه ای است كه در چند لحظه می تواند مردم را از بهشت به دوزخ بفرستد.'),
(1281, 'فلورانس اسكاول شین', 'هر آنچه از آدمی در سخن یا كردار، آشكار شود یا بروز كند، به خود او باز خواهد گشت؛ و هرچه بدهد، باز خواهد گرفت.'),
(1282, 'آتور كافمن', 'با زور، برخی زمانها می‌شود به هدف رسید، ولی با مهربانی، همیشه.'),
(1283, 'یَسنَه', 'من دین مَزداپرستی را باور دارم كه جنگ را براندازد و رزم‌افزار را به كنار گذارد و خویشاوند پیوندی را فرمان دهد.'),
(1284, 'امام علی (ع)', 'با زنان مشورت مكن، رأی ایشان ضعیف و عزم ایشان سست است.'),
(1285, 'فلورانس اسكاول شین', 'تنها آن چیزهایی را به سوی خود می كشید كه بسیار به آن می اندیشید.'),
(1286, 'آنتونی رابینز', 'كارهایی كه در زندگی انجام می‌دهیم، پشت صحنه‌ی هیچ فیلمی نیست. همه‌ی صحنه‌ها همان برداشت نهایی است كه قرار است به روی پرده بیاید و نمایش داده شود. چیزی به نام "تمرین" وجود ندارد.'),
(1287, 'می سارتن', 'به من كمك كن تا همیشه باغبان امیدوار روحم باشم؛ باغبانی كه می داند بدون تاریكی هیچ چیز زاده نمی شود؛ همان گونه كه بدون نور، هیچ گیاهی گل نمی دهد.'),
(1288, 'مثل هندی', 'عاقل همان كاری را ابتدا انجام می دهد كه نادان در آخر.'),
(1289, 'ویلیام آلن هوایت', 'من از فردای خود نمی ترسم، دیروز سپری شده، امروزم را دوست دارم.'),
(1290, 'حضرت محمد (ص)', 'دست خدا (یاری خدا) همراه با جماعت است.'),
(1291, 'امام علی (ع)', 'در جهاد با دشمن‌تان صدق نیّت داشته باشید.'),
(1292, 'فرناندو پسوا', 'اگر انسانها بخواهند درباره ی اسرار زندگی كاوش كنند، اگر می توانستند هزاران پیچیدگی را احساس كنند كه جزء جزء رفتار روان را گوش می ایستد، هرگز رفتاری پیشه نمی كردند و حتا دیگر نمی زیستند.'),
(1293, 'پرمودا باترا', 'به یاد داشته باشید، خداوند به آنهایی كمك می‌كند كه به خودشان كمك كنند.'),
(1294, 'لیندا مور', 'رویاهایت را دنبال كن... زیرا جستجوی همان رویاهاست كه به زندگی، ارزش زندگی می بخشد.'),
(1295, 'ارد بزرگ', 'پشیمانی، اولین گام برای پوزش است.'),
(1296, 'مثل سیسیلی', 'هنگامی كه چهره‌ی شما كثیف است، تنها دوستان راستین هستند كه این امر را به شما گوشزد می‌كنند.'),
(1297, 'مثل لاتین', 'ازدواج مانند نردبان است؛ هر چه آن را بیشتر خم كنید، بهتر می توانید بالا بروید.'),
(1298, 'جان ماكسول', 'رویای بزرگ با یك تیم بد چیزی فراتر از یك كابوس نیست.'),
(1299, 'مثل ژاپنی', 'وقتی از اخلاق یك فرد سر در نمی آوری به دوستانش نگاه كن.'),
(1300, 'كریستین بوبن', 'اگر كسی، زندانی همیشگی گذشته ی خود نبوده باشد، برای همیشه رنگی از تبار و دودمان خویش بازگو خواهد كرد.'),
(1301, 'پائولو كوئیلو', 'تكبر و خودپسندی در بسیاری از موارد، ماسكی بی ارزش از ترس و وحشت است.'),
(1302, 'وین دایر', 'مدار جهان، بر گذشت و بخشودگی می‌گردد.'),
(1303, 'ارد بزرگ', 'هنرمندان و خردمندان قهرمانان ناب روزگارند.'),
(1304, 'حضرت محمد (ص)‌', 'ای فرزندان اسماعیل! (‌مسلمانان) ‌تیراندازی كنید زیرا پدر شما (‌حضرت ابراهیم) تیرانداز بود (‌یعنی در مقابل كفر و شرك می¬ایستاد و لحظه¬ای عقب نشینی نكرد.)‌'),
(1305, 'بایرون', 'به آنها كه مرا دوست دارند لبخند می زنم و برای آنها كه از من متنفرند آه می كشم، آسمان هر جور كه بالای سر من قرار دارد بی تفاوت است، زیرا در درون من قلبی است كه برای مواجهه با هر سرنوشت و تقدیری آماده است.'),
(1306, 'محمد حجازی', 'اگر آنچه از گذشته تجربه آموخته ایم در آینده به كار بریم، مثل این است كه دو بار عمر كرده باشیم.'),
(1307, 'ویكتور هوگو', 'روزی جهانیان، همه، دست برادری به ‌یكدیگر خواهند داد و آن، روزی ا‌ست كه بدبختی و تیره روزی در گستره‌ی جهان یافت نخواهد شد.'),
(1308, 'ناپلئون بناپارت', 'باید در مشاوره، دقیق و خوشرو باشیم و در اجرای آن سخت و جدی.'),
(1309, 'پائولو كوئیلو', 'لازم نیست آدم از كوهی بالا رود تا بفهمد بلند است.'),
(1310, 'اریك نیوتن', 'تجربه ی زندگی نیز آفریننده ی راستین هر اثر هنری است.'),
(1311, 'جبران خلیل جبران', 'اگر بخواهید ترسی را از خویش برانید، بدانید كه جایگاه ترس در دلتان ریشه دارد و نه در كسانی كه از آنها می‌ترسید.'),
(1312, 'جك كانفیلد', 'برپایه‌ی بالاترین معیارهای [=سنجه‌های] خود زندگی كنید.'),
(1313, 'استرن', 'به یاد داشته باشید كه امروز همان فردایی است كه دیروز نگرانش بودید. از خود بپرسید دست كم این چیزی كه برایش نگرانم به وقوع خواهد پیوست یا خیر؟'),
(1314, 'حضرت محمد (ص)', 'هر كه در خانه‌ی او گوسفند شیر ده یا بز شیر ده یا گاو شیر ده باشد باعث بركت خانه‌ی او می‌شود.'),
(1315, 'گای فینلی', 'شما نمی‌توانید به چند بخش تقسیم شوید و خرسند هم باشید. بنابراین یكپارچگی و كامل بودن را برگزینید.'),
(1316, 'مثل مجارستانی', 'در پی برقی كه در آسمان شانس زده می شود، ابر تیره را هم در انتظار داشته باش.'),
(1317, 'امام علی (ع)', 'هر كه خود را در محل تهمت درآورد كسی را كه گمان بد به او می‌برد ملامت نكند و هر كه راز خود را پنهان دارد اختیار با خودش است و هر سخنی كه از دو كس گذشت فاش می‌شود.'),
(1318, 'برایان تریسی', 'اگر هر چه بیشتر، كنش ها، گفتار و كردار شما بر پایه ی والاترین ارزش هایتان باشند، بیشتر به خودتان دلبسته شده و احساس بهتری نسبت به خودتان پیدا می كنید.'),
(1319, 'لئوبوسكالیا', 'كمتر مانعی‌ست كه با پایداری، اراده، شكیبایی و به ویژه عشق بیشتر، از میان برداشته نشود.'),
(1320, 'امام علی (ع)', 'ناتوان‌ترین مردم كسی است كه از به دست آوردن دوستان عاجز است و ناتوان‌تر از آن، كسی است كه دوستی را پیدا كند و او را از دست بدهد.'),
(1321, 'نیچه', 'پاكی نفس، جدایی می آورد.'),
(1322, 'آنتونی رابینز', 'كسانی كه به مجردِ برخورد با سختی، كار را رها می كنند، هرگز به جایی نمی رسند.'),
(1323, 'جك كانفیلد', 'اگر به اندازه‌ی كافی تلاش كنید، به خرسندی می‌رسید.'),
(1324, 'فلورانس اسكاول شین', 'هر آنچه آدمی به گونه ای ژرف، احساس، یا به روشنی مجسم كند، بر ذهن نیمه هشیار اثر می گذارد و مو به مو در صحنه ی زندگی پدیدار می شود.'),
(1325, 'مادر ترزا', 'مردم غالبا نامعقول، خودخواه و غیر منطقی هستند، با وجود این آنها را ببخشید.'),
(1326, 'ارسطو', 'برتری باسواد بر بی سواد همانند برتری زندگان بر مردگان است.'),
(1327, 'نیچه', 'بین مردمان كوچك، دروغگویی فراوان است.'),
(1328, 'حضرت محمد (ص)', 'ایمان خود را با (ذكر) لا اله الا الله همیشه تازه كنید (با زبان، اقرار به وحدانیّت و یگانی خدا داشته باشید.)'),
(1329, 'فردوسی', 'آزادگان را كاهلی بنده می سازد.'),
(1330, 'الاویلر ویلكاكس', 'اگر بخندی، دنیا با تو می‌خندد و اگر گریه كنی، تنها خود، گریه خواهی كرد؛ زیرا زمین پیر و اندوهگین باید شادمانی‌ات را امانت بگیرد، در حالی كه به اندازه‌ی كافی، درگیر دشواری‌های خویش است.'),
(1331, 'آنتونی رابینز', 'محیط را می توان نیرومندترین عامل مولد ایمان و باور دانست، اما تنها عامل آن نیست. در غیر این صورت، جامعه، پویایی خود را از دست می داد.'),
(1332, 'ویكتور هوگو', 'بهترین دوستان من كسانی هستند كه پیشانی و ابروهای آنها باز است.'),
(1333, 'كریستین بوبن', 'راستی، به خرگوش ها می ماند؛ [آنها] با گوش هایشان اسیر می شوند.'),
(1334, 'موریس مترلینگ', 'وقتی عشقی در كار است، پای عقل می لنگد.'),
(1335, 'كرت لوین', 'اگر به راستی می خواهید چیزی را درك كنید، بكوشید آن را تغییر دهید.'),
(1336, 'جك كانفیلد', 'اگر فقط در جهتی كه می‌خواهید به پیش روید، آغاز كنید و به پیش رفتن ادامه دهید، همه‌ی فرصت‌های نادیدنی به سوی شما می‌آیند.'),
(1337, 'پرمودا باترا', 'قول ندهید، مگر آنكه بتوانید حتماً به آن عمل كنید. وگرنه، بدون توجه به شخصیت و دارایی‌تان، احترام خود را از دست می‌دهید و شخص قابل اعتمادی نخواهید بود.'),
(1338, 'جان. اف. كندی', 'تغییر، قانون زندگی است و كسانی كه فقط به گذشته یا اكنون می‌نگرند، بی‌شك، آینده را از دست می‌دهند.'),
(1339, 'شری كارتر اسكات', 'رشد و پیشرفت شما بستگی به این دارد كه از درسهایی كه آموخته اید، كِی و چگونه بهره بگیرید.'),
(1340, 'آنتونی رابینز', 'الهام بخش زندگی من، شرح حال كسانی بوده است كه امكانات و استعدادهای خود را به كار می گیرند تا به موفقیت ها و نتایجی تازه، چه برای خود و چه برای دیگران دست یابند.'),
(1341, 'افلاطون', 'بزرگترین خطای پزشكان این است كه صرفاً به مداوای جسم بیمار اقدام می كنند، بدون اینكه لحظه ای هم به فكر در مان روح برآیند. در حالی كه جسم و فكر با هم هستند و نمی توان آنها را از هم تفكیك كرد و به طور جداگانه درمان نمود.'),
(1342, 'والتر بنیامین', 'بدون استثنا، نویسندگان بزرگ، آثار خود را در جهانی می‌پرورانند كه تازه پس از آنها فرا می‌رسد.'),
(1343, 'اوا گرگری', 'تنها با دگرگونی دیدگاه تان خواهید دید كه تا چه اندازه وضعیت زندگی تان دگرگون می شود؛ از این دگرگونی، شگفت زده خواهید شد.'),
(1344, 'ریچارد تمپلر', 'مردم دوست دارند در پیرامون كسانی باشند كه خوشبین، مثبت، شاد و دارای خودباوری هستند.'),
(1345, 'گوته', 'از بسیاری چیزهای بزرگ می‌گذریم، ولی به ندرت، در امور جزئی، از خودگذشتگی می‌كنیم.'),
(1346, 'ویلیام ماتیوس', 'تمركز، نخشتین شرط رسیدن به موفقیت است. تمركز یعنی هدایت تمام نیروها به یك نقطه؛ سپس به شكل مستقیم به سمت آن نقطه بروید و به اطراف منحرف نشوید.'),
(1347, 'مونسكیو', 'نداشتن بردباری و شكیبایی در كارهای كوچك، نقشه های بزرگ را بر هم می زند.'),
(1348, 'ماهاتما گاندی', 'كسی كه از خردمندی خود بسیار آسوده دل باشد، خردمند نیست. باید به یاد داشت كه شاید نیرومندترین افراد، ناتوان شوند و خردمندترین افراد كار نادرستی انجام دهند.'),
(1349, 'امام علی (ع)', 'خداوند سبحان توبه را به سببِ فراوانی روزی و رحمت بر مخلوقاتِ خود قرار داده است.'),
(1350, 'جان ماكسول', 'مردم از كسی لذت می برند كه از زندگی لذت ببرد.'),
(1351, 'جفری كروكشنك', 'در پناه كسی بودن، به راستی، زیباست؛ ولی از آن هم زیباتر، بودن در پناه كسی‌ست كه ما را دوست دارد و همیشه در كنار ماست.'),
(1352, 'آندره موروا', 'افراد بشر هیچ گاه نمی توانند به اقدامی مفید مبادرت ورزند و به عملی مشترك دست زنند، مگر اینكه یكی از میان آنان برخاسته و تلاش همه را هر لحظه به سوی هدف مشترك رهبری كند.'),
(1353, 'انوشیروان عادل', 'اگر می خواهی اندوهگین نباشی، حسود مباش.'),
(1354, 'مثل چینی', 'كفش گشاد كه پوشیدی، منتظر زمین خوردن هم باش.'),
(1355, 'سقراط', 'لازمه قضاوت، شكیبایی به هنگام شنیدن، اندیشیدن به هنگام گفتن، بینش به هنگام رسیدگی و بیطرفی به هنگام قضاوت است.'),
(1356, 'ناپلئون هیل', 'هر پیشامد و رویدادی منفی، در درون خود، بذری از كامیابی و شادی بیشتر دارد.'),
(1357, 'دیوید ویسكوت', 'تنها كسانی مزه ی شكست را می چشند كه دست از تلاش و كوشش می كشند.'),
(1358, 'حضرت محمد (ص)', 'چه خوب عطیّه و هدیّه‌ای است، سخن حقّی كه آن را بشنوی سپس آن را به سوی برادر مسلمان خود بفرستی.'),
(1359, 'ایمانوئل كانت', 'شیرین ترن نتیجه ی دقت و نظم، پیروزی است.'),
(1360, 'كنفوسیوس', 'مرد بزرگ، وقار دارد، ولی مغرور نیست و مرد كوچك غرور دارد، ولی وقار ندارد.'),
(1361, 'تامس كمپبل', 'زنده ماندن در دل‌ها، یعنی نمردن.'),
(1362, 'جین وبستر', 'به ناراحتی ها (حتی دندان درد) مانند تجربه ی جالبی می نگرم و از اینكه از تجربه ی تازه ای بیخبر نمانده ام، شادمانم. آسمان بالای سر من به هر رنگی باشد، من برای هر گونه سرنوشتی آماده ام.'),
(1363, 'جیم رآن', 'اگر دستاوردهای كنونی، خرسند كننده باشند، آینده هم به همان اندازه، برداشتی پُر ثمر خواهد داشت.'),
(1364, 'وین دایر', 'هرچه خانه‌ی دل را از آرامش بیشتر لبریز كنید، آسیب‌پذیری‌تان در برابر دشمنی و بدخواهی دیگران كمتر می‌شود.'),
(1365, 'سرنگ', 'در  برخی از موارد، فریب خوردن بهتر از بی اعتمادی است.'),
(1366, 'حضرت محمد (ص)', 'هر كه از مؤمنی شدّتی و غمی از غم‌های دنیا بردارد حق تعالی هفتاد و دو غم از غم‌های آخرت را از او بردارد و هفتاد و دو بلا از بلاهای دنیا را از او دفع كند.'),
(1367, 'استانیلوس', 'كمابیش نیازمندترین افراد همیشه از سایرین بخشنده ترند.'),
(1368, 'فلورانس اسكاول شین', 'شخص عادی، كمابیش همه چیز را نشدنی می پندارد.'),
(1369, 'گوته', 'سعادتمند كسی است كه هر چه پیرتر شود، مهربانتر گردد.'),
(1370, 'حضرت محمد (ص)', 'عاقل‌ترین مردم، كسی است كه در مهربانی با مردم، شدیدتر باشد.'),
(1371, 'نیچه', 'این هنرمندان و به خصوص هنرمندان تئاتر بودند كه اولین بار به انسانها چشم و گوش دادند تا هر كس آنچه هست، آنچه بر دیگران گذشته و آنچه می خواهد را با نوعی لذت ببیند و بشنود.'),
(1372, 'جیم روهن', 'در اندیشه ی آسان تر شدن آرزوهایت مباش، آرزو كن خود بهتر باشی.'),
(1373, 'بلر وارن', 'دانش، تنها راه یا حتی مهم ترین راه رسیدن به كامیابی نیست. اگر دانش را مهم تر از دلبستگی، پایداری، آگاهی و هوش و ذكاوت بدانیم، به راستی، نادانی خودمان را نشان داده ایم.'),
(1374, 'حضرت محمد (ص)', '‌بیشترین گناهان انسان‌، در زبانش وجود دارد.'),
(1375, 'حضرت محمد (ص)', 'با زن به خاطر چهار چیز ازدواج می‌كنند: ثروت، مقام، زیبایی و دینش. پس تو (ای مسلمان) به خاطر دین زنی را انتخاب كن زیرا دستان تو زیاد می‌شوند. (كنایه از این كه چون به خاطر دین ازدواج كردی، فرزندان صالحی نصیبت خواهند شد.)'),
(1376, 'فرناندو پسوا', 'ما با رفتارمان، یعنی خواسته هایمان زندگی می كنیم.'),
(1377, 'كریشنا مورتی', 'یكی از دشواریهای بزرگ ما، ندیدن خودمان به گونه ای درست و روشن است.'),
(1378, 'حضرت محمد (ص)', 'هیچ كاسبی، مثل برتری علم كه صاحبش را به هدایت، رهنمون ساخته یا از خطرات رهانیده است، كسب و كار نكرده است و دین شخص قوّت نمی‌گیرد مگر این كه عقلش استحكام یابد.'),
(1379, 'ارد بزرگ', 'ستایشگران میهن، زنان و مردان آزاده اند.'),
(1380, 'لورنس جی .', 'كسی بهتر می‌خندد كه بیشتر بخندد.'),
(1381, 'بودا', 'در آن كس كه راستی، نیكویی، آمرزش، پاكدامنی، خویشتنداری، میانه‌روی، بی‌آلایشی و خردمندی باشد، چنین كسی پیر است.'),
(1382, 'جیمز آ. میشنر', 'سفر به دورن، همان چیزی است كه انسان‌ها، از زن و مرد، برای یافتن خویش باید انجام دهند و انجام آن، به مراتب مهم‌تر از كامیابی در آن است.'),
(1383, 'حضرت محمد (ص)', '‌برای موعظه (و پند دادن به انسان)‌ ‌روزگار كافی ‌است (كه می‌رود و می‌آید و عدّه‌ای به دنیا آمده و عدّه‌ای دیگر می‌میرند)‌ و برای جدایی،‌ مرگ كافی می‌باشد.'),
(1384, 'اُرد بزرگ', 'گیتی همواره در حال زایش است و پویشی آرام در همه گونه های آن در حال پیدایش است.'),
(1385, 'لئوبوسكالیا', 'عشق را باید پیوسته ابراز كرد، پرورش داد و بدان نیرو بخشید.'),
(1386, 'فلورانس اسكاول شین', 'ترس، بدترین دشمن آدمی است، زیرا از هرچه بترسید، همان بر سرتان می آید. به راستی، با ترس، آن را به سوی خود می كشانید.'),
(1387, 'جبران خلیل جبران', 'هنگامی كه به بالای كوه رسیدید، تازه آغاز بالا رفتن است.'),
(1388, 'وین دایر', 'هرگز ناگزیر نیستید آنچه را كه در درون و یا بیرون خود می‌بینید، دگرگون سازید؛ فقط كافی است زاویه‌ی دیدتان را دگرگون كنید و راه گذر ضمیر برتر خود را بگشایید؛ این است روشن‌بینی.'),
(1389, 'مونتگن', 'بالاترین خرد، سرور همیشگی است. چنین حالتی شبیه به منطقه‌ی بالای ماه، همیشه هموار و روشن است.'),
(1390, 'آنتونی رابینز', 'تنها با اتكا به یك رفتار نادرست، همه‌ی هویت و منش افراد را زیر سؤال نبرید.'),
(1391, 'ناپلئون هیل', 'منتظر نمانید، زمانی مناسب تر از اکنون وجود ندارد. از همین نقطه ای که ایستاده اید و با همین ابزار و امکاناتی که در اختیار دارید، کار را ادامه دهید. همین طور که پیش می روید، ابزار ها و امکانات بهتر و مناسب تر را پیدا می کنید.'),
(1392, 'فلورانس اسكاول شین', 'چه بسیارند مردمان كامیابی كه دلیل كامیابی آنها، باور همسرشان به آنها بوده است.'),
(1393, 'فلورانس اسكاول شین', 'زندگی، یك جدول واژه های متقاطع است. واژه ی درست، پاسخ مورد نیاز را در دسترس تان قرار می دهد.'),
(1394, 'فرناندو پسوا', 'همه ی چیزهایی كه از دید ما ناپدید می شوند، در درون ما هم ناپدید می شوند.'),
(1395, 'والری', 'آنچه كه اهمیت دارد، پیدا كردن نیست، بلكه افزودن و اضافه كردن آن چیزی است كه پیدا می شود.'),
(1396, 'فرنك بیانكو', 'اگر زندگی را با جست و جوی خدایی آغاز كنید كه در پیرامون شماست، هر دَم، یك عبادت می شود.'),
(1397, 'امام رضا (ع)', 'با عاقل مصاحبت كن هر چند كریم نباشد و از عقلش بهره‌ور شو و از خُلق بدش احتراز كن و با كریم مصاحبت كن هر چند عاقل نباشد كه به عقل خود از كرم او منتفع می‌شوی و بگریز نهایت گریختن از احمقی كه بخیل باشد.'),
(1398, 'زیگموند فروید', 'آدمی به كار كمتر گرایش دارد تا به امكانات دیگر خشنود شدن. بیشتر انسانها به اجبار كار می كنند و این فرار طبیعی از كار موجب پیچیده ترین دشواری های اجتماعی می شود.'),
(1399, 'آنتوان دوسنت اگزوپری', 'آنچه انسان را رهایی می بخشد، برداشتن گامی است كه در پی آن، گامهای دیگر هم برداشته شود.'),
(1400, 'اریك نیوتن', 'هر اثر هنری به مثابه ی كودكی است كه هنرمند، مادرش و محیط زندگی هنرمند، پدرش باشد.'),
(1401, 'استاندال', 'اگر به هدف نزدیك شده اید، باید پیوسته شلیك كنید.'),
(1402, 'حضرت محمد (ص)', '‌بالاترین صدقه،‌ صدقه دادن به خویشاوندی است كه (‌با تو) ‌دشمن است. (‌اگر به خویشاوند نیازمندی كه حتّی دشمن ما باشد، صدقه بدهیم،‌ بهتر از صدقه دادن به دیگران است.)'),
(1403, 'آنتونی رابینز', 'نهایت قدرت در این است كه نتایج مورد نظر خود را به دست آورید و در عین حال به دیگران ارج بگذارید.'),
(1404, 'جان اشتاین بك', 'یك كتاب، مثل یك انسان است: باهوش و كودن، دلیر و ترسو، زیبا و زشت.'),
(1405, 'افلاطون', 'اگر بازی، قانون نداشته باشد، كودكان هم به بی‌قانونی خو می‌گیرند و زمانی كه بزرگ شدند، مردان وظیفه‌شناس و درستكار نخواهند بود.'),
(1406, 'گوته', 'سخن گفتن یك نوع نیاز است، ولی گوش دادن هنر است.'),
(1407, 'افلاطون', 'نیك بختی جامعه به مراتب مهمتر از نیك بختی فرد است.'),
(1408, 'حضرت محمد (ص)', 'چیزی كه در راه مسلمانان، اذیّت و آزار به وجود می‌آورد را دور كن تا كارهای نیك تو زیاد شود.'),
(1409, 'آنتوان دوسنت اگزوپری', 'محاكمه كردن خود از محاكمه كردن دیگران خیلی مشكلتر است. اگر توانستی در مورد خودت قضاوت درستی بكنی، معلوم می شود یك فرزانه تمام عیاری.'),
(1410, 'هرمن كین', 'موفقیت كلید شادی نیست، شادی كلید موفقیت است؛ اگر آن چه انجام می دهی دوست بداری، موفق خواهی بود.'),
(1411, 'نیچه', 'لذت بیرحمی در دیدن رنج دیگران است، اما فردی كه بیرحم است این بیرحمی گریبانگیر خودش هم می شود و به ایشان نیز آزار خواهد رسید.'),
(1412, 'حضرت محمد (ص)', 'قرآن شفاعت كننده‌ی خوبی برای رفیق خود است. (یعنی كسی كه همیشه قرآن خوانده و در معنای آن تدبّر می‌كند.)'),
(1413, 'حضرت محمد (ص)', '(نعمت)‌ كمی كه بتوان شكر آن را به جا آورد، از (نعمت) ‌زیادی كه طاقت شكرش نمی‌باشد، بهتر است.'),
(1414, 'ویلیام تن', 'عقل بی عاطفه خطرناك است و عاطفه بدون عقل، قابل اعتماد نیست. آدم كامل آن است كه هم عقل دارد و هم عاطفه.'),
(1415, 'حضرت محمد (ص)', 'هیچ مسلمانی نیست كه دو دختر داشته باشد و با آن‌ها نیكی كرده و همراهی نماید، مگر این كه (‌مهربانی)‌ آن دو دختر،‌ او را به بهشت داخل می‌كند.'),
(1416, 'حضرت محمد (ص)', 'هر حسنه‌ای، صدقه است و هر چیزی كه مرد مسلمان از ثروت خود برای خود و خانواده‌اش انفاق كند، برای او صدقه (نزد خدا) نوشته می‌شود و هر چیزی كه شخص مسلمان به وسیله‌ی آن،‌ آبروی خود را حفظ كند، برای او به خاطر حفظ كردنش، صدقه نوشته می‌شود.'),
(1417, 'اونوره دو بالزاك', 'هنرمند راستین باید طرفدار اصل هنر برای هنر باشد.'),
(1418, 'فی داناوی', 'نخستین پیشه ی من این است كه مادر خوبی باشم.'),
(1419, 'آرتور شوپنهاور', 'اهل فضل كسانی هستند كه مطالعه ی خود را در میان صفحات كتابها انجام داده اند.'),
(1420, 'حضرت محمد (ص)', 'كفّاره‌ی كسی كه غیبت او را كرده‌ای این است كه برای او (از خداوند) طلب آمرزش كنی.'),
(1421, 'مثل فرانسوی', 'كسی كه به امید شانس زنده باشد، سالها قبل مرده است.'),
(1422, 'امام علی (ع)', 'حق، گسترده‌ترین اشیاء است در توصیف، و محدودترین و تنگ‌ترین اشیاء است به هنگام اجرای منصفانه.'),
(1423, 'حضرت محمد (ص)', 'دست خود را (‌از دزدی و كارهای ناشایست) نگه دار. (‌و بر دستان خود تسلّط داشته باشد.)'),
(1424, 'بریگام یانگ', 'ما هرگز نباید به خودمان اجازه‌ی انجام كارهایی را بدهیم كه هیچ‌گاه دوست نداریم فرزندانمان انجام بدهند.'),
(1425, 'فرناندو پسوا', 'ما مطلق پرست هستیم، چون به آن دسترسی پیدا نمی كنیم، اگر آن را می داشتیم دورش می انداختیم. مطلق غیر انسانی است، چرا كه انسان ناقص است.'),
(1426, 'جك كانفیلد', 'تجربه به من نشان داده كه یكی از تفاوت‌های موجود بین افراد كامیاب و دیگر مردم دنیا این است كه آن‌ها به آسودگی، رویاهای بزرگ‌تری برای خود در نظر می‌گیرند.'),
(1427, 'ج.بالفور', 'عشق و احساس شورانگیز، جهانی را به جنبش وامی دارد.'),
(1428, 'اسكار وایلد', 'عشق را در دل نگه دار؛ زندگی بدون آن همچون باغی‌ست بی‌بهره از آفتاب كه گل‌های آن، همه پژمرده باشند.'),
(1429, 'ویلیام بلیك', 'بی‌نهایت را در كف دست‌تان و ابدیت را در یك ساعت نگاه دارید.'),
(1430, 'زیگموند فروید', 'رابطه ی بین خود (ego) و نهاد (id) را می توان با رابطه ی بین سوار و اسب مقایسه كرد. اسب، تامین كننده ی انرژی و سوار، هدف گذار و راهنما است.'),
(1431, 'جك كانفیلد', 'هنگامی كه در راستای هدف، شور و اشتیاق و حقیقت باطنی خود زندگی كنید، جهان در همه‌ی تلاش‌هایتان از شما پشتیبانی خواهد كرد.'),
(1432, 'حضرت محمد (ص)', 'كسی كه زمینی را آباد كند و در آنجا چاهی حفر شود تا از آن، تشنه-ای بنوشد، خداوند برای او به واسطه‌ی آباد كردن زمین، پاداش می-دهد.'),
(1433, 'جان ماكسول', 'نگرش، حقیقت هر كس را برملا می كند و تظاهر آن، كارها و حركات او است.'),
(1434, 'امام موسی (ع)', 'در مزد گرفتن برای نوشتن قرآن باكی نیست.'),
(1435, 'سعدی', 'مردن به علت به كه زندگانی به ذلت.'),
(1436, 'منسیوس', 'مرد بزرگ، كسی است كه كودكی خود را گم نكند.'),
(1437, 'پائولو كوئیلو', 'بهتر است گاهی چیزها را به حال خود رها كنیم.'),
(1438, 'كنراد آدنور', 'یك پوست كلفت، هدیه‌ای است از جانب خداوند.'),
(1439, 'ایمانوئل كانت', 'حتی خشم آسمان برای زمین، فراوانی است.'),
(1440, 'برایان تریسی', 'راحت طلبی، دشمن شماره یك شهامت و اعتماد به نفس است.'),
(1441, 'كیم وو چونگ', 'كسی كه دارایی ناچیزی دارد و می‌داند كه چگونه از آن به سود دیگران بهره بگیرد، توانگر راستین است.'),
(1442, 'حضرت محمد (ص)', 'بهترین شعری كه عرب‌ها به آن تكلّم كرده‌اند، سخن لبید است (كه آن عبارت است از این كه) آگاه باشید! كه همه چیز به غیر از خدا، باطل است.'),
(1443, 'امام علی (ع)', 'سنگِ غضب در بنای خانه، ضامن ویرانی آن است.'),
(1444, 'پستالوژی', 'از همان لحظه كه به فكر كردن خو می گیرید در راه ترقی گام بر می دارید.'),
(1445, 'مثل فارسی', 'دانش، از بهر دین پروردن است نه از بهر دنیا خوردن.'),
(1446, 'جان ماكسول', 'تیم شما تنها در صورتی به توانایی خود دست می یابد كه شما به توانایی شخصی خود دست یابید.'),
(1447, 'لرد آویبوری', 'كسی كه در جوانی چیزهایی را می خرد كه لازم ندارد، در پیری ناچار است چیزهایی را كه لازم دارد بفروشد.'),
(1448, 'حضرت محمد (ص)', 'حیوانات در خانه بسیار نگاه دارید كه شیاطین به آنها مشغول شوند و طفلان شما را ضرر نرسانند.'),
(1449, 'بودا', 'حیات بشر همچون شبنمی است كه روی برگ گلی می لغزد و می افتد.'),
(1450, 'جیم رآن', 'ارزش‌های بالا، پاداش‌های بالا نیز به همراه دارند.'),
(1451, 'افلاطون', 'نیكمردان به مهمانی زیردستان ناخوانده می روند، خوبان نیز ناخوانده به مهمانی خوبان می روند.'),
(1452, 'برایان تریسی', 'پذیرش مسئولیت مهمترین نشانه رشد و بلوغ یك انسان است.'),
(1453, 'لئوبوسكالیا', 'شیوه‌ی رشد و آگاهی‌‌ست، شیوه‌ی عشق.'),
(1454, 'آنتونی رابینز', 'خوبی یا بدیِ هر چیزی نسبی است و بستگی به این دارد كه با چه چیز سنجیده شود.'),
(1455, 'حضرت محمد (ص)', 'جهاد كن در راه خدا كه اگر كشته شوی نزد خدا زنده خواهی بود و روزی در بهشت خواهی یافت و اگر بمیری مزدت با خداست و اگر زنده برگردی از گناهان به در می‌آیی مانند روزی كه از مادر متولد شده‌ای.'),
(1456, 'ابوعلی سینا', 'اگر می دانستید كه یك محكوم به مرگ هنگام مجازات تا چه حد آرزوی بازگشت به زندگی را دارد، آنگاه قدر روزهایی را كه با غم سپری می كنید، می دانستید.'),
(1457, 'انجیل لوقا', 'مردم بی‌ایمان، در روابط خود با دیگران و در كارهای خود، زیرك‌تر از مردم خداشناس هستند.'),
(1458, 'فلورانس اسكاول شین', 'زمانی كه انسان با خشنودی و بدون ترس خرج كند، راه را برای سرازیر شدن پول بیشتر می گشاید.'),
(1459, 'گوته', 'فقط كافی‌ست برخیزید و وارد میدان كارزار زندگی شوید تا كار، كامل شود و به پایان برسد.'),
(1460, 'وین دایر', 'زمانی كه تعطیلات را آغاز می كنید، در برابر آینه بایستید و به خود بگویید: كسی حق ندارد این روزهای خوش را از من بگیرد، حتی تو!'),
(1461, 'آنتونی رابینز', 'زمانی كه ایمان و باور خود را از دست می‌دهید، زندگی، پوچ و بی‌معنا می‌شود و زمانی كه زندگی، پوچ و بی‌معنا شود، دیگر زنده نخواهید بود و زندگی را از كف خواهید داد.'),
(1462, 'آبراهام مازلو', 'آگاهی بسنده سبب از بین بردن دشواری می‌شود و بیشتر، در مراحل گزینش و تصمیم‌گیری، در انجام دادن یا ندادن كاری از نظر اخلاقی و رعایت اصول اخلاقی، به ما كمك می‌كند.'),
(1463, 'نیچه', 'دوست می دارم آن را كه فضایل بسیار نمی خواهد. زیرا كه یك فضیلت به است از دو فضیلت؛ زیرا كه یك فضیلت، چنبری استوارتر برای در آویختن سرنوشت است.'),
(1464, 'پیتر مك ویلیمز', 'گرچه می‌توان از خواری بسیار آموخت، ولی بسیاری از همان درسها را می‌توان از خنده و شادی نیز آموخت.'),
(1465, 'جان ریورس', 'پیش از اینكه با یك نفر احساس راحتی بكنی، مجبوری بارها بخندی و گریه كنی.'),
(1466, 'ویكتور هوگو', 'در بینوایی همچنان كه در سرما نیز دیده می شود، افراد به یكدیگر فشرده می گردند.'),
(1467, 'میكل آنژ', 'دیدگاه هر نویسنده را از كتاب او و دیدگاه هر هنرمند را از هنرش می‌توان دریافت.'),
(1468, 'وین دایر', 'عشق، انگیزه‌ی دستیابی انسان به درجات عالی و متعالی‌ست.'),
(1469, 'جان ماكسول', 'اگر موفقیت تیم با از خودگذشتگی شما كسب می شود، چه بهتر كه این از خودگذشتگی را نشان بدهید.'),
(1470, 'اُرد بزرگ', 'بدبخت كسی است كه نمی تواند ناراستی خویش را درست كند.'),
(1471, 'آلدوس هاكسلی', 'هیچ دستور و شیوه‌ی كاری در میان نیست؛ عشق ورزیدن را با عشق‌ورزی می‌آموزند.'),
(1472, 'ریچارد لیدر', 'هدف از زندگی، زندگی هدفمند است.'),
(1473, 'گوته', 'پیش از آنكه كاری بكنی، باید كسی باشی.'),
(1474, 'اریك نیوتن', 'عشق با بهره گیری از وجود هنرمند به اراده ی خود تحقق می بخشد و سرانجام، خویشتن را با ابزاری كه به گونه ای ناچیز قابل اندازه گیری هستند به بیان درمی آورد.'),
(1475, 'گریس هانسن', 'از آن نترس كه زندگانی‌ات پایان پذیرد، از آن بترس كه هرگز آغاز نشود.'),
(1476, 'حضرت محمد (ص) ‌', 'من زنی كه از خانه‌اش، دامن كشان برای شكایت از شوهرش بیرون برود را دشمن می‌دارم. (یعنی زن و شوهر تا جایی كه امكان دارد اختلافات خود را خودشان حلّ كنند.)‌'),
(1477, 'لئو نیكولایویچ تولستوی', 'انسان، تنها برای نیكی كردن آفریده شده است.'),
(1478, 'میلتون', 'حقیقت، سرچشمه ای است كه پیوسته جاری است و سرزمین افكار را سیراب می كند و هیچ زمان بر نمی گردد، زیرا اگر آب چشمه به عقب برگردد مردابی كثیف می شود.'),
(1479, 'امام علی (ع)', 'هر كس ترسد (احتیاط كند)، در امان باشد و هر كس عبرت بگیرد، بینا گردد و هر شخصی كه بینا شود، به مقام فهم رسد و كسی كه بفهمد، به علم نایل گردد.'),
(1480, 'برایان تریسی', 'درستی، زیربنای منش است و ساختن منش، مهمترین وظیفه ی ما است.'),
(1481, 'فرناندو پسوا', 'آرزوی هر روان ناب است كه كل زندگی را طی كند، تجربه هایی درباره ی همه ی چیزها، همه ی نواحی و همه ی احساس طی شده گرد آورد و چون چنین چیزی غیرممكن است، زندگی فقط به گونه ی ذهنی می تواند به طور كامل طی شود.'),
(1482, 'دوریس دی', 'زن خودش را خوشگل می كند چون خوب می داند كه چشم مرد، تكامل یافته تر از مغز اوست!');
INSERT INTO `quotations` (`id`, `author`, `text`) VALUES
(1483, 'جان ماكسول', 'یكبار غافلگیر شدن مجاز است، اما اگر این اتفاق دوباره بیفتد، نشانه آن است كه از آمادگی لازم برخوردار نیستید.'),
(1484, 'ساندرا راجرز', 'هر بار كه از كُنه قلب و با تمام وجود، آرزو و خواست خود را با خدا در میان گذاشته و هیچ شك و تردیدی در این باره نداشته باشیم، به مراد دل خود می رسیم.'),
(1485, 'سر آرتور هلپس', 'بزرگترین لذت دارایی این است كه سبب می‌شود از شنیدن سیل اندرزهای خوب رهایی یابید.'),
(1486, 'افلاطون', 'درستكاری، سبب پیدایش نیكویی است و نادرستی، سبب بروز بدی.'),
(1487, 'آبراهام مازلو', 'آدمی نمی‌تواند دست به گزینش خردمندانه بزند، مگر اینكه جرأت داشته باشد در دمادم زندگی به ندای درونی خود، به خویشتن خود، گوش فرا دهد و خونسردانه بگوید: "نه، من چنین و چنان را دوست ندارم."'),
(1488, 'والتر بنیامین', 'جدل [=یك و دو كردن]، یعنی كتابی را با بكار بردن چند سخن آن، نابود كردن. هرچه كتاب، كمتر بررسی شود، بهتر است. فقط كسی كه بتواند كتابی را ویران كند، می‌تواند آن را نقد كند [=بر آن خرده گیرد].'),
(1489, 'حضرت محمد (ص)', 'خوش باطنی و نیك سرشتی، سرمایه و بد خلقی، شوم و نیكی در طول عمر (سپری كردن عمر از جوانی تا پیری در اطاعت از خدا) و صدقه از مرگ بد جلوگیری می‌كند.'),
(1490, 'آرتور شوپنهاور', 'نویسندگانی كه جملات سخت و پیچیده و مبهم به هم می بافند، براستی نمی دانند چه می خواهند بگویند... آنها اغلب مایلند از خودشان و دیگران پنهان سازند كه حرفی برای گفتن ندارند.'),
(1491, 'توماس هابز', 'آسایش ما در فلسفه است.'),
(1492, 'مثل یونانی', 'همه چیز زاده ی نابخردی است.'),
(1493, 'حضرت محمد (ص)', 'پروردگارا! از دوست حیله‌گری كه چشمانش مرا می‌بیند و دلش مراقب من است (به طوری كه) اگر خوبی ببیند، پنهان كرده و اگر بدیی ببیند، آن را اعلام می‌كند، به تو پناه می‌برم.'),
(1494, 'ارسطو', 'هیچ چیز مانند بخشش و نیكی انسان را سیر نمی كند.'),
(1495, 'ایزاك سینگر', 'اگر پیوسته ورد زبانتان باشد كه شرایط، بد است، هیچ بعید [=دور از ذهن] نیست كه پیشگو شوید.'),
(1496, 'فردریك كینگ', 'خوشبختی، در به دست آوردن آنچه نداریم نیست، بلكه در یافتن چیزهایی‌ست كه داریم و از وجود آنها خرسندیم.'),
(1497, 'حضرت محمد (ص)', 'نهایت ستم و كفر آن است كه كسی صدای منادی را (كه مردم را) به طرف نماز می‌خواند، بشنود كه آنها را به رستگاری دعوت می‌كند، (ولی) دعوت او را اجابت نكند.'),
(1498, 'جبران خلیل جبران', 'سخت است زندگی، برای كسی كه آرزوی مرگ دارد، ولی بهر دلبندانش می‌زید.'),
(1499, 'اسپی زان', 'وقتی بخواهیم در مورد عشق منطقی فكر كنیم، عشق حقیقت خود را از دست می دهد.'),
(1500, 'نیچه', 'اندیشه های ما، آری و نه گفتن های ما و اگر و اما گفتن های ما، همه با همان ضرورتی از درون ما رشد می كنند كه میوه از دل درخت؛ به هم مربوط و با هم خویشاوندند و همه از یك اراده، یك وضع جسمانی، یك خاك و یك خورشید نشان دارند.'),
(1501, 'آلبرت انیشتین', 'هیچ كس به خرد غایی نرسد، مگر آن را در خود جست و جو كند.'),
(1502, 'نیلسه أوله أفته بُرو', 'جوان بودن مانند رها بودن در باد است كه به سرعت نیز می گذرد.'),
(1503, 'كریستین بوبن', 'اندیشه ی راستین، زودتر از همه به تكاپو می افتد.'),
(1504, 'گوته', 'ما می توانیم بخشش های بزرگ داشته باشیم، اما در مورد چیزهای كوچك به ندرت از خودگذشتگی به خرج می دهیم.'),
(1505, 'آبراهام لینكلن', 'هرگاه بتوانیم بعد از شكست لبخند بزنیم شجاع هستیم.'),
(1506, 'امام جعفر صادق (ع)', 'چون برادر مؤمن تو به خانه‌ی تو بیاید مپرس كه امروز چیزی خورده‌ای ولیكن هر چه حاضر داری به نزد او بیاور كه جواد و جوانمرد آن است كه هر چه دارد حاضر سازد.'),
(1507, 'الكساندر پوپ', 'اندیشه های ما در غرفه های بیشمار مغز با زنجیر ناپیدا به یكدیگر پیوسته اند. چون یكی از آنها بیدار شود، هزار تای دیگر نیز سر بر می دارند.'),
(1508, 'دموكریت', 'در این هستی هیچ چیز وجود ندارد، مگر اتم و فضای خالی؛ هر چیز دیگری پندار آدمی است.'),
(1509, 'حضرت محمد (ص)', '‌سخن نیك بگویید (‌تا خود نیز) بهره‌مند شوید و (‌در غیر این صورت) ساكت مانده تا سالم بمانید.'),
(1510, 'بودا', 'نادانان از پی بیهودگی روند، خردمند اشتیاق را چون گرانبهاترین گوهر خویش نگاه دارد.'),
(1511, 'امام علی (ع)', 'هیچ‌كس به خیر نمی‌رسد، جز كسی كه عمل به خیر می‌كند و به هیچ‌كس پاداش شرّ داده نمی‌شود، جز به مرتكب شرّ.'),
(1512, 'آنتونی رابینز', 'چنانچه با آسایش و بی هیچ شك و تردیدی، آنچه را می‌خواهید در دنیای بیرون شاهد روی دادن آن باشید، به روشنی در ذهن‌تان ببینید، بی‌شك روی خواهد داد.'),
(1513, 'ارد بزرگ', 'قوم بی نیا و مرد كهن، به هزار آیین اهریمنی اداره می شود.'),
(1514, 'حضرت محمد (ص)', '‌بهترین دوستان (تا)‌ چهار نفر و بهترین فرماندهان، تا چهارصد هزار نفر است.'),
(1515, 'حضرت محمد (ص)', 'زمین، زمین خداست (ملك شخصی كسی نیست) و بندگان، بندگان او هستند،‌ كسی كه زمین مرده‌ای را آباد كند،‌ متعلّق به خود اوست.'),
(1516, 'جرج هالاس', 'كسی كه بیشترین تلاش خود را می كند، هرگز پشیمان نمی شود.'),
(1517, 'گوته', 'هنرمند به تنهایی، ارواح را می‌بیند، ولی زمانی كه از او خواسته می‌شود ارواح را پدیدار سازد، همه ی آنها را می‌بینند.'),
(1518, 'آرتور شوپنهاور', 'برای اینكه مردی عاشق شود به گذر زمان برای تامل و انتخاب نیازی نیست، بلكه همدلی و جاذبه ای شخصی كه در نخستین نگاه، وجود هر دو طرف را سرشار می سازد كفایت می كند، یا همان كه معمولاً كشش خون می نامندش و آن نیروی ویژه ای كه ستارگان را می راند.'),
(1519, 'استیو چندلر', 'شادمان بودن، از همان روز زایش، حق طبیعی شماست و هیچ لازم نیست كه وابسته به چیز دیگری باشد.'),
(1520, 'ژرژ هربرت', 'با مردمان نیك نشست و برخاست كن تا خودت هم یكی از آنها شوی.'),
(1521, 'حضرت محمد (ص)', 'دو جا وجود دارد كه خداوند عقاب آن دو جا را به سرعت در همین دنیا می¬دهد: طغیانگری (تجاوز بیش از حدّ به حقوق دیگران) و عاقّ پدر و مادر.'),
(1522, 'الكساندر پوپ', 'خوشا به حال فردی كه ساعت‌ها، روزها و سال‌های زندگی‌اش، با آرامش و سازش سپری می‌شود.'),
(1523, 'حضرت محمد (ص)', 'محبوب‌ترین غذاها نزد خداوند آن است كه دست‌های زیادی بر آن دراز شود (یعنی كسی كه بی‌نیاز است به فكر نیازمندان هم باشد.)'),
(1524, 'ج.ج. هالند', 'خداوند، روزی دهنده ی همه ی پرندگان است، ولی روزی آنها را به درون لانه نمی ریزد.'),
(1525, 'حضرت محمد (ص)', 'هنگام وضوء، میان انگشتان خود را باز كرده (تا آب میان آنها جاری شود) و به این وسیله، خداوند میان آنها را با آتش فاصله نمی‌دهد.'),
(1526, 'آندره موروا', 'یك روح آرامش جو كه آرامش و مسالمت [ =سازواری ] را در سراسر وجود خود احساس می كند، چه ترسی ممكن است به خود راه دهد؟'),
(1527, 'اسكار وایلد', 'امروزه جوانان تصور می‌كنند كه پول، همه چیز است و زمانی كه بزرگتر شدند، یقین پیدا می‌كنند كه این چنین است.'),
(1528, 'آنتونی رابینز', 'اگر به دیگران، قوانین خود را نگویید، نباید امید داشته باشید كه آنان بر پایه ی قوانین شما رفتار كنند.'),
(1529, 'حضرت محمد (ص)', '‌بیشتر اهل جهنّم، زنان هستند. (قبلاً گفتیم با توجّه به جمعیّت‌‌شان نسبت به مردان است.)‌'),
(1530, 'استیو چندلر', 'به هر كاری كه از سر خوشی و شادمانی بنگرید، شادمان و خوشایند می‌شوید.'),
(1531, 'ویلیام باتلر ییتس', 'خوشبختی یعنی رشد، یعنی زمانی كه شما در حال رشد هستید؛ و یك چشم و هم‌چشمی خوب سبب این رشد شده است.'),
(1532, 'هنری وادزورث لانگ‌فلو', 'زمانی كه روحیه ی شما سست می شود و ناامید می گردید، به یاد آورید: پایین تر جزر است كه مد را ایجاد می كند.'),
(1533, 'پائولو كوئیلو', 'بیشتر آدمها دنیا را چیز تهدیدكننده ای می بینند و به همین دلیل هم دنیا برای آنها تهدیدكننده می شود.'),
(1534, 'شری كارتر اسكات', 'هنگامی كه سر رشته ی زندگی تان را در دست خود بگیرید، دنیا پاسخ مثبت می دهد و هوش سرشار، برافروخته می گردد.'),
(1535, 'حضرت محمد (ص)', 'مرگ برای هر مرد و زن مسلمان، كفّاره است. (فشار و سختی مرگ، كفّاره‌ی گناهان مؤمن است.)'),
(1536, 'جین وبستر', 'من با این فلسفه كه ناامیدی و نكبت و غم، نیروی اخلاقی را تقویت می كند مخالفم. افراد نیكبخت و شادمان هستند كه مهر و محبت می بخشند.'),
(1537, 'لاروشفوکو', 'فقط یک چیز از رسوایی سیاسی بدتر است! گمنامی سیاسی.'),
(1538, 'ویكتور هوگو', 'خشك سالی و بیماری در مقام مقایسه با جنگ، چیزی نیست زیرا خود این دو نیز ناشی از پیامدهای دشوار و ناهنجار جنگ هستند.'),
(1539, 'آندره موروا', 'همان گونه كه هر چیز تازه ای، جذابیت و تمایل بیشتری دارد، در برابر، از قابلیت فناپذیری بیشتری نیز برخوردار است.'),
(1540, 'حضرت محمد (ص)', 'همانا برای هر دینی، خُلق و خویی وجود دارد و خُلق و خوی این دین (اسلام)‌ حیاء (شرم از خدا نسبت به گناهان) ‌است.'),
(1541, 'هاینریش هاینه', 'مردم پاریس، آزادی را به جهان ارزانی داشتند، بی آنكه پاداشی بخواهند.'),
(1542, 'اُرد بزرگ', 'اندیشه و سخن ریش سفیدان، برآیند بردباری، مردم داری و سرد و گرم چشیدگی روزگار است.'),
(1543, 'سیسرون', 'احمق هیچ گاه سعادتمند نمی شود.'),
(1544, 'حضرت محمد (ص)', 'منافق، مالك چشمان خود می‌باشد به طوری كه هر وقت بخواهد، گریه می‌كند. (منافق با ظاهرسازی قصد فریب طرف مقابل خود را دارد با او نشسته و در مقابلش گریه می‌كند و مخاطب، لحظه‌ای به او مشكوك نمی‌شود.)'),
(1545, 'كیم وو چونگ', 'مفهوم زندگی در از خودگذشتگی یافت می‌شود، نه در خودخواهی و خودپسندی.'),
(1546, '؟', 'عاشق محبوبش را مظهر تمام چیزهای برگزیده و نیكو می بیند و بتدریج، دایره عشق او از پرستش زیبایی در یك وجود تجاوز كرده، پرستش همه مظاهر طبیعت را آغاز می كند.'),
(1547, 'فرانسیس بیكن', 'مطالعه، انسان را كامل می كند، سخنرانی به او حضور ذهن و سرعت انتقال می دهد، اما نوشتن، انسان را دقیق می كند.'),
(1548, 'لئو نیكولایویچ تولستوی', 'فرق انسان و سگ در آن است كه اگر به سگی غذا بدهی، هرگز تو را گاز نخواهد گرفت.'),
(1549, 'آبراهام مازلو', 'ما باید به توانمندی و توانایی خود باور داشته باشیم كه اگر در آینده با چیز تازه‌ای روبرو شدیم، بتوانیم نااندیشیده به كنش بپردازیم.'),
(1550, 'حضرت محمد (ص)', 'همانا خداوند، راضی می‌شود از بنده‌ای كه وقتی غذایی می‌خورد، او را سپاس می‌گوید و زمانی كه نوشیدنی می‌نوشد، او را مورد ستایش قرار دهد.'),
(1551, 'حضرت محمد (ص)', 'چیزی را كه تو را به شك می‌اندازد رها كن و آن چیزی را كه تو را به شك نمی‌اندازد (بگیر) زیرا راستی (باعث) نجات است. (انسان باید چیزهای مشكوك و شبهه‌‌ناك را رها كند.)'),
(1552, 'حضرت محمد (ص)', '‌كسی كه از مردم شرم نكند (‌و گناهان را در مقابل چشم آن‌ها به جای بیاورد)‌ از خداوند (نیز) شرم نمی‌كند.'),
(1553, 'ریچارد تمپلر', 'شما نمی توانید یك بچه ی بد را دگرگون كنید، ولی رفتار بد را می توانید.'),
(1554, 'آندره موروا', 'هر بشری می تواند در ژرفای اندیشه ی خود پناهگاهی بسازد و در آن جای امن، هر گلوله ی سنگین و گران و هر سخن نابجا و نیشدار و مسمومی را ناچیز شمرد.'),
(1555, 'اشو', 'پدر و مادرت تنها جسم تو را متولد می سازند نه روحت را.'),
(1556, 'اسپنسر جانسون', 'درست هنگامی كه از آفتاب بالای سرمان غفلت می كنیم، پل یخی زیر پای ما كه زمانی سفت و محكم بود، زیر پایمان آب می شود.'),
(1557, 'رام تیرت', 'نیایش ها همان گونه پاسخ می یابند كه پرسیده شده اند.'),
(1558, 'استیو چندلر', 'انسان، بدون توجه و آگاهی نسبت به مرگ، كه پایان بازی است، هرگز نمی‌تواند به زندگی خود، آن‌ گونه كه باید نزدیك شود.'),
(1559, 'جان دان', 'عشق نه فصل می شناسد و نه سرما و گرما، نه ساعت و نه سن و سال و ماه كه حیله های زمانند.'),
(1560, 'جرج برنارد شاو', 'علت بدبختی و بیچارگی ما داشتن فرصتهای زیادی است كه صرف اندیشیدن درباره خوشبختی و بدبختی می گردد.'),
(1561, 'استیو چندلر', 'برای دست یافتن به سطح بالاتری از تجربه برای نوآوری و خودسازی، به دنبال فرصت‌هایی بگردید كه برقراركننده‌ی ارتباط‌‌‌ های دوسویه باشد.'),
(1562, 'آبراهام مازلو', 'یك پیشه می‌تواند ابزاری برای هدف‌های پنهان و سركوب شده باشد، به همان سادگی كه می‌تواند فی‌نفسه، خود هدف باشد.'),
(1563, 'حضرت محمد (ص)', 'بهترین اعمال نزد حق تعالی سه چیز است: سیر كردن مسلمان گرسنه، یا قرض مسلمان را ادا كردن، یا غمی را از دل او برداشتن.'),
(1564, 'آنتونی رابینز', 'چنانچه به راستی خواهان آن باشید كه به خودباوری و بی‌گمانی راستین برسید، بی‌شك راه آن را خواهید یافت.'),
(1565, 'اپیكور', 'برای شاد كردن دیگران، آرزوهایشان را بفهم.'),
(1566, '؟', 'تفاوت زن و مرد در این است كه مردان همیشه آینده را می نگرند و زنها گذشته را به یاد می آورند.'),
(1567, 'تام ویلسون', 'خرد، همیشه با گذر زمان به دست نمی‌آید. گاهی زمان همچنان می‌گذرد.'),
(1568, 'حضرت محمد (ص)', 'دل‌های خود را با یاد (توجّه به)‌ دنیا مشغول نسازید.'),
(1569, 'یورتن', 'دیوانگی محض است كه كسی برای آنكه ثروتمند بمیرد، زندگی خود را چون فقرا و بیچارگان به سر آورد.'),
(1570, 'مثل ایتالیایی', 'دو نوع زن وجود دارد؛ با یكی ثروتمند می شوی و با دیگری فقیر.'),
(1571, 'بودا', 'نیكان از دور بدرخشند، چون كوههای پوشیده از برف. بَدان دیده نشوند، چون تیرهایی كه به شب اندازند.'),
(1572, 'نیچه', 'توان انتقاد كردن و حفظ وجدان صادق در مخالفت با آنچه كه همیشگی، سنتی و مقدس است، هنری والاتر از تحمل و تحریك انتقاد است و این هنر در فرهنگ ما به راستی بزرگ، نو و شگفت آور است.'),
(1573, 'جك كانفیلد', 'فراموش نكنید هر آنچه پیوسته از آن سخن می‌گویید، بر سر شما خواهد آمد.'),
(1574, 'گای فینلی', 'حالت‌های خشمناك درونی هرگز در پی راه حل نیستند؛ آنها تنها در پی دلایلی هستند كه بر حق بودن خود را ثابت كنند.'),
(1575, 'ساموئل جانسون', 'تشكر و حق شناسی ثمره درختی است كه با اصول صحیح پرورش یافته است و نمی توان این میوه را در میان كسانی یافت كه به گونه ای صحیح و اصولی پرورش نیافته اند.'),
(1576, 'اندرو ماتیوس', 'شانس هرگز كافی نیست.'),
(1577, '؟', 'دوستی كسانی كه در هنگام برگشت روزگار با انسان همراهی كرده اند، فراموش شدنی نیست.'),
(1578, 'آنتونی رابینز', 'نمی توان به اصطلاح با قدرت اراده با دیگران ارتباط برقرار كرد و با كمك چماق، آنها را وادار به پدیرفتن باورها و نقطه نظرهای خود كرد.'),
(1579, 'جك كانفیلد', 'نبوغ و استعداد اصلی شما، هوش طبیعی شماست؛ زمینه‌ای كه در آن می‌درخشید.'),
(1580, 'جك كانفیلد', 'اگر برای مدتی طولانی و كافی، به چیزی بچسبید و آن را ادامه دهید، سرانجام به هدف خود می‌رسید.'),
(1581, 'پرمودا باترا', 'فقط نگرش شما در قبال شكست و كامیابی‌ست كه آینده‌ی شما را تعیین و تضمین می‌كند.'),
(1582, 'پرمودا باترا', 'ناامید هرگز برنده نمی‌شود و برنده، هرگز ناامید نمی‌شود.'),
(1583, 'امام جعفر صادق (ع)', 'هر كه بیماری را عیادت كند حق تعالی موكل سازد به او هفتاد هزار ملك را كه همیشه به خانه‌ی او آیند و تا روز قیامت در آن خانه تسبیح و تكبیر و تهلیل و تقدیس الهی گویند و نصف ثواب ایشان از برای او باشد.'),
(1584, 'الین چانك', 'آدم شجاع یك بار می میرد، اما ترسو هزار بار.'),
(1585, 'لئوبوسكالیا', 'گاهی، بهترین خدمتی كه می‌توانیم به آنها كه دوست‌شان داریم، بكنیم، این است كه كنارشان بایستیم، خاموش باشیم، شكیبایی به خرج دهیم، امیدوار باشیم، درك كنیم و چشم‌براه بمانیم.'),
(1586, 'پابلو پیكاسو', 'هنگام كار كردن راحت هستم؛ چیزی كه مرا خسته می كند بیكاری و دیدار اشخاص است.'),
(1587, 'عنصرالمعالی', 'بسیار [ اتفاق ] افتد كه ابهت و شجاعت سود ندارد و هر دانش كه بدانی روزی به كار آید.'),
(1588, 'شری كارتر اسكات', 'هیچ بخشی از زندگی نیست كه درس نباشد. اگر زنده هستید، درسهایتان را نیز باید بیاموزید.'),
(1589, 'ارسطو', 'در زندگی، زمانی كه كاری برای انجام یا چیزی برای عشق ورزیدن یا بارقه ای برای امیدوار بودن داشتید، آن گاه بدانید فرد شادی خواهید بود.'),
(1590, 'ارنست دیمنه', 'افكار افراد متفكر خودبخود می اندیشد.'),
(1591, 'حضرت محمد (ص)', 'بدترین (فرد از میان) مردم دارای دو رو است كه با یك گروه، با رویی و با گروه مردم با رویی دیگر مواجه می‌شود. (یعنی منافق است.)'),
(1592, 'زیگموند فروید', 'ترس استثمارگران از قیام سركوب شدگان، آنها را به سمت اقدام های دوراندیشانه ی شدید سوق می دهد.'),
(1593, 'پوسه نه', 'تنبلی، آدمی را خیال پرست بار می آورد.'),
(1594, 'آبراهام مازلو', 'ممكن است "كوشش" برای آنچه كه آدمی باید باشد، به خوبی آنچه كه آدمی به راستی هست و خود را بیان می‌كند، نباشد، بلكه نومیدی و دست از تلاش و كوشش كشیدن، بهتر از آن است كه آدمی بكوشد ماسك بر چهره بزند.'),
(1595, 'افلاطون', 'هیچ یك از امور بشری ارزش تشویش ندارند.'),
(1596, 'دكتر ماكارنكو', 'انسانِ خوشخوی و متمدن به راستی زیبا است.'),
(1597, 'حضرت محمد (ص)', 'حقیقتاً شخص غیب‌گو در آتش (جهنّم) با شدّت تمام، انداخته می‌شود.'),
(1598, 'حضرت محمد (ص)', 'شعر، مانند سخن گفتن است، اگر خوب باشد،‌ سخن خوب و اگر بد باشد،‌ سخن بد، محسوب می‌شود.'),
(1599, 'ویلیام شكسپیر', 'ما در طول عمرمان مثل بازیگرانی هستیم كه چند لحظه ای روی صحنه ظاهر می شویم.'),
(1600, 'فلورانس اسكاول شین', 'برای اینكه فروشنده ی خوبی باشید، باید برای كالاهایی كه می فروشید، شور و شوق داشته باشید.'),
(1601, 'ناپلئون بناپارت', 'اگر به كسی اعتماد نداری از او دوری كن.'),
(1602, 'افلاطون', 'در یك شهر به‌سامان، دادگری، بی‌شك وجود خواهد داشت.'),
(1603, 'گئورگ بوشنر', 'صلح در كلبه ها، جنگ در كاخ ها.'),
(1604, 'فلورانس اسكاول شین', 'هرچه بیشتر نفرت بورزید، بر دوام نفرت خود افزوده اید و در ذهن خود، شیاری از نفرت حك می كنید كه خود را در حالت همیشگی چهره تان نشان خواهد داد.'),
(1605, 'بن سیرا', 'آنگاه كه به جستجوی خرد روی، هوشمندی و آنگاه كه گمان كنی آن را یافته‌ای، نادانی.'),
(1606, 'جك كانفیلد', 'زندگی خود را با این باور كه نمی‌توانید، هدر ندهید.'),
(1607, 'میكل آنژ', 'انسان، با مغز نقاشی می‌كند نه با دست. هر كه اندیشه‌هایش گرفتار مسایل دیگر باشد، كارش رسوایی به بار می‌آورد.'),
(1608, 'تِرنس یانگ', 'بسیاری از زمان‌ها، دوستی‌های بزرگ از آغازی بد شكل یافته است.'),
(1609, 'ریلكه', 'تنها یك سفر، سفری به ژرفای وجود خود.'),
(1610, 'رابرت سی ساویج', 'داراترین اشخاص، كسانی هستند كه به آنچه دارند، خشنود می باشند.'),
(1611, 'لئوبوسكالیا', 'تو وجودی هستی كه پس از این هرگز نخواهد توانست هستی یابد. نادیده گرفتن چنین وجودی، نه فقط برای خودت، بلكه برای همه‌ی جهان، اندوه‌ برانگیز خواهد بود.'),
(1612, 'نیچه', 'آنجا كه عشق یا نفرت اهمیتی ندارد، زن نقشی میانه بر عهده می گیرد.'),
(1613, 'پاتانجالی', 'در برابر كسی كه دشمنی در او به كلی مرده است، دیگران نیز نمی‌توانند دشمنی بورزند؛ چرا كه او با كسی ستیزی ندارد.'),
(1614, 'حضرت محمد (ص)', 'غافل‌ترین مردم كسی است كه از گردیدن‌های دنیا از حالی به حالی پند نگیرد.'),
(1615, 'گاندی', 'بی‌اعتمادی، نشانی از ناتوانی‌ست.'),
(1616, 'مایسون', 'سرنوشت آدمی را تنها عشق تعیین می كند.'),
(1617, 'جبران خلیل جبران', 'فضایی بین پندار و عمل وجود دارد كه با پشتكار پیموده می شود.'),
(1618, 'حضرت محمد (ص)', 'قرآن را تلاوت كنید زیرا خداوند بزرگ قلبی كه قرآن را درك كرده است، (روز قیامت) عذاب نمی¬كند.'),
(1619, 'توماس جفرسون', 'بانكها از ارتش آماده به جنگ، خطرناك ترند.'),
(1620, 'كیم وو چونگ', 'تاریخ، از آنِ كسانی‌ست كه رؤیاهای بزرگ در سر دارند.'),
(1621, 'اریستن كیوس', 'فضیلت عبارت است از سلامت روح.'),
(1622, 'حضرت محمد (ص)', 'وضو گرفتن قبل از غذا، فقر را برده و بعد از غذا، وسوسه را می‌برد و به چشم، سلامتی (و روشنایی) می‌دهد.'),
(1623, 'لیزكلن', 'مردم به همان اندازه احساس خوشبختی می كنند كه تصمیم گرفته اند خوشبخت باشند.'),
(1624, 'حضرت محمد (ص)', 'سه گروه، داخل بهشت نمی¬شوند: كسی كه همیشه، شراب می‌نوشد (‌دائم‌ الخمر‌) و كسی كه پیوند با خویشاوندان را قطع كرده است و كسی كه جادوگری را راست (‌و حقیقت) بداند.'),
(1625, 'حضرت محمد (ص)‌', 'كسی كه بین مادر و فرزندش، جدایی بیفكند، خداوند (نیز) بین او و دوستانش در روز قیامت، جدایی می¬اندازد. (شرح این حدیث گذشت)'),
(1626, 'افلاطون', 'نهالی كه خود، روییده و به دست دیگری پرورش نیافته باشد، از این رو، دِینی به دیگران ندارد.'),
(1627, 'پائولو كوئیلو', 'تنها ترس ما این است كه آنچه را داریم از دست بدهیم، خواه زندگیمان باشد و خواه مزارعمان. این ترس زمانی از بین می رود كه بفهمیم داستان زندگی ما و داستان جهان، هر دو را یك دست مشترك رقم زده است.'),
(1628, 'كارل هنریش ماركس', 'انسان، تنها از راه آگاهی می تواند به شأن سزاوارش دست یابد.'),
(1629, 'دالای لاما', 'فضای عشق در خانه ی تو شالوده ای برای زندگی ات به شمار می رود.'),
(1630, 'امت فاكس', 'تا حواس خود را روی همین امروز و همین ساعتی كه در پیش دارید، متمركز نكنید، به آن آرامش و خوشبختی ژرفی كه دوست دارید، نخواهید رسید.'),
(1631, 'حضرت محمد (ص)', 'همانا خداوند بزرگ، خلق خود را در تاریكی آفرید و از نور خود بر آنها تاباند، پس كسی كه در آن روز، از آن نور به او رسیده است، هدایت یافته و كسی كه از آن نور دور شده است، گمراه گشته است.'),
(1632, '؟', 'اولین وظیفه ما این است كه برای دیگران سودمند باشیم.'),
(1633, 'اسكار وایلد', 'مرد با اراده مردی است كه شخصیت انفرادی خود را در اجتماع گم نمی كند و شجاعت آن را دارد كه باورهای خاص خود را آشكار نماید.'),
(1634, 'آنتونی رابینز', 'روحیه، مجموعه ی میلیونها جریان عصبی است كه در درون ما رخ می دهد؛ به عبارت دیگر، جمع كل تجربه های ما در هر لحظه از زمان است.'),
(1635, 'حضرت محمد (ص)', 'سپاس و تشكر بر نعمت (نزد خداوند) آن را از نابودی در امان می‌دارد.'),
(1636, 'حضرت محمد (ص)', '(برای آگاه شدن از خوبی یا بدی) از خودت سؤال كن، اگرچه دیگران چیزهای دیگری بگویند (و برخلاف تو نظر بدهند زیرا خود آدم به وضع خودش آگاهی بیشتری دارد.)'),
(1637, 'فلورانس اسكاول شین', 'چه بسیار پیش آمده كه آدمی با دیدن بدیهای خود در دیگران، شفا یافته است.'),
(1638, 'ارد بزرگ', 'زندگی، میدان ادامه ی راه اشتباه نیست؛ هر گاه پی به ناراستی راه خود بردیم باید به ریشه و بن پاكی خویش باز گردیم، نه آنكه با اشتباهی دیگر آن را ادامه دهیم كه برآیند آن، از دست دادن همه عمر است.'),
(1639, 'حضرت محمد (ص)', 'زیرك‌ترین مردم كسی است كه یاد مرگ بیشتر كند.'),
(1640, 'مایكل لاندن', 'هر كاری را كه می‌خواهید انجام دهید، همین اكنون انجام دهید. فرداهای زیادی وجود ندارند.'),
(1641, 'بزرگمهر', 'آن كه پیرو خرد است، دل به هوس نمی سپارد.'),
(1642, 'امام موسی (ع)', 'مؤمن می‌باید از پنج چیز خالی نباشد: مسواك و شانه و جانماز و تسبیحی از تربت كه سی و چهار دانه باشد و انگشتر عقیق.'),
(1643, 'اریك نیوتن', 'این اندیشه كه در جایی هنری خالص و به كلی جدا از زندگی یا دنیایی وجود داشته باشد كه تشنگی ذاتی چشم را برآورد، بدون آنكه تایید و كمكی از ذهن یا حافظه بخواهد، مسلماً پذیرفتنی نیست.'),
(1644, 'فلورانس اسكاول شین', 'همه ی ما گنجینه ای داریم كه هرچه بخواهیم می توانیم از آن بیرون بكشیم؛ گنجینه ی گمان!'),
(1645, 'حضرت محمد (ص)', 'دشنام دادن مؤمن گناه بزرگ است و با او جنگ كردن كفر است و غیبت او كردن نافرمانی خداست.'),
(1646, 'فلورانس اسكاول شین', 'زندگی چه باشكوه می شود، اگر تن به استدلال [ =گواه آوردن ] ندهید.'),
(1647, 'افلاطون', 'تربیت در همان جوانی، كارساز بوده و بنای هر نقشی كه در آن هنگام بریزد، پابرجا خواهد ماند.'),
(1648, 'چارلز دوگل', 'مرد پر جربزه و كار آزموده، وقتی با بحران روبرو می شود، به تكیه گاه فكر نمی كند؛ روش خود را تحمیل می كند، مسئولیتش را می پذیرد و نتیجه كار را [پیروزی یا شكست] از آن خود می داند.'),
(1649, 'فرانسوا ولتر', 'سعادت وكامیابی در زندگانی تابع رویدادها نیست، بلكه از خود ما سرچشمه می گیرد.'),
(1650, 'استیو چندلر', 'نیروی اراده و سامان شخصی را تنها خودتان می‌توانید در خودتان به وجود بیاورید؛ تنها باید اراده كنید.'),
(1651, 'فلورانس اسكاول شین', 'محبت و خوش قلبی در كسب و كار نیز گرانبها است.'),
(1652, 'امام علی (ع)', 'انسان ذلیل و خوار، از ورود ستم بر خود جلوگیری نمی‌كند. حقّ بدون جدّیت قابل وصول نیست.'),
(1653, 'گابریل گارسیا ماركز', 'خدای من؛ اگر قلب داشتم، كینه و نفرتهای خود را بر روی یخ می نوشتم و به امید برآمدن خورشید می ماندم.'),
(1654, 'سو پاتون توئل', 'نباید بگذارید امیدها و چشم‌داشت‌های دیگران، شما را بترساند.'),
(1655, 'حضرت محمد (ص)', 'سخت‌‌ترین مردم از جهت پشیمانی در روز قیامت، مردمی است كه آخرت خود را به دنیای غیر خودش فروخته است. (یعنی حتّی نفع دنیایی هم به او نرسیده‌ است و افراد دیگر بهره مند شده‌اند)'),
(1656, 'جیم رآن', 'یكی از روش‌های یادگیری انجام درست یك كار، انجام نادرست آن است.'),
(1657, 'جك كانفیلد', 'شما می‌توانید نگرش خود را دگرگون ساخته و در نتیجه، زندگی خود را دگرگون سازید.'),
(1658, 'نیچه', 'بیش از همه، ظریفترین و كاری ترین حیوانات آماده ی رنج و سختی هستند.'),
(1659, 'آنتونی رابینز', 'هریك از ما در زندگی، حق گزینش داریم و می‌توانیم اندیشه‌ها و احساسات خود را برگزینیم. چنانچه آگاهانه به گزینش نپردازیم، بهای آن را خواهیم پرداخت.'),
(1660, 'مونتنی', 'ای بشر نادانی كه نمی توانی كرمی را بیافرینی .... با وجود این، یك دو جین خدا می سازی.'),
(1661, 'فیگاور', 'چهره نیست كه فریب می دهد، ماییم كه با خواندن آنچه آنجا نوشته شده فریب می خوریم.'),
(1662, 'كانتر', 'آرام برو و از زندگی لذت ببر. وقتی كه خیلی تند می روی، نه تنها مناظر سر راه را از دست می دهی، بلكه ممكن است این حس را كه به كجا و برای چه می روی را هم از دست بدهی.'),
(1663, 'كریستین بوبن', 'با دقت در بیان راستی و درستی، می توان به گمان دست یافت.'),
(1664, 'نیچه', 'سبك نوشتار بر آن است كه با كمترین ابزار، خواننده را به همان دریافتی برساند كه سبك گفتار می رساند.'),
(1665, 'نیچه', 'بزرگترین خطر در كجاست؟ در دلسوزی.'),
(1666, 'كُنراد هیلتون', 'انسان به كمك خداوند و از خودگذشتگی، توانایی انجام هر كاری را دارد.'),
(1667, 'وینفری', 'بخت و اقبال یعنی آمادگی در بهره گیری از فرصت.'),
(1668, 'برایان تریسی', 'بخش قابل توجهی از زمان خود را با كسانی بگذرانید كه در زندگی، بیشترین اهمیت را برای شما دارند و نگذارید كه در طول این مدت كسی مزاحمتان شود.'),
(1669, 'حضرت محمد (ص)', 'هر چیزی كه آمدنی است، نزدیك است (یعنی هر چیزی كه آمدن آن حتمی می¬باشد، بالاخره می¬آید.)'),
(1670, 'شری كارتر اسكات', 'زندگی مان، زمانی صاف و هموارتر می شود كه به پیام های درون خود توجه كنیم.'),
(1671, 'حضرت محمد (ص)', 'صدقه دادن،‌ هفتاد در از مرگ بد را می‌بندد. (و نمی‌گذارد به انسان برسد.)'),
(1672, '؟', 'بیچاره كسی كه از ترس شكست دست به كار نمی برد.'),
(1673, 'حضرت محمد (ص)', 'از بول دوری كنید زیرا عذاب قبر بیشتر از اجتناب كردن از بول است.'),
(1674, 'جان فلچر', 'روحی كه بتواند به گونه ای به كنش بپردازد كه انسان كامل و راستگویی را به بشریت ارائه نماید، سزاوار تمام نیكی ها بوده و بر تمام قدرتها و سرنوشت ها فرمان می راند.'),
(1675, 'جرلد جامپولسكی', 'اراده كنید كه در پی عشق باشید، نه كاستی‌.'),
(1676, 'برایان تریسی', 'مدیریت زمان بیش از هر چیز نیاز به انضباط فردی، خویشتن داری و تسلط بر نفس دارد.'),
(1677, 'ران كافمن', 'آشیانه‌ای پر از عشق، همیشه دو نفر را در خود جای می‌دهد.'),
(1678, 'هربرت اسپنسر', 'فكر نو بسیار ظریف و حساس است؛ با یك ریشخند كوچك می میرد و كنایه ای كوچك آن را به سختی مجروح می كند.'),
(1679, 'برایان تریسی', 'ادیسون در اختراع 1097 پدیده، بیشترین شكست ها را تحمل كرده است.'),
(1680, 'صادق هدایت', 'انسان خودش از مرگ می‌ترسد، ولی اسباب مرگ دیگران را فراهم می‌آورد.'),
(1681, 'جبران خلیل جبران', 'تا هنگامی كه پاره‌ای از وجود خویش را نبخشید، بخشش‌تان بی‌ارزش و بی‌مقدار خواهد بود.'),
(1682, 'مارلو', 'گویاترین زبان، عمل است.'),
(1683, 'هلن كلر', 'چهره ی خود را به سوی خورشید بگردان، آن گاه تمام سایه ها پشت سر تو خواهند افتاد.'),
(1684, 'امام جعفر صادق (ع)', 'اول چیزی كه در عنوان نامه‌ی مؤمن بعد از مرگش می‌نویسند آن چیزی است كه مردم در حق او می‌گویند اگر نیك می‌گویند نیك می‌نویسند و اگر بد می‌گویند بد می‌نویسند.'),
(1685, 'گاندی', 'می‌توان امیدوار بود كه فردی خشن، روزی دست از خشونت بردارد، ولی چنین امیدی در مورد ترسویان وجود ندارد.'),
(1686, 'بیگن', 'تن درست برای روان، مهمانخانه و برای تن ناسالم بیمارستان است.'),
(1687, 'جان ماكسول', 'بچه همیشه از محیط خود، اولویتها، نگرشها و علایق و اصول اعتقادی را می گیرد.'),
(1688, 'حضرت محمد (ص)', 'مشورت، حصاری (در مقابل) پشیمانی و ایمنی (در مقابل) سرزنش (دیگران) است.'),
(1689, 'جك كانفیلد', 'شما و شما به تنهایی مسئول اقدام جهت آفرینش زندگی رویایی خودتان هستید. هیچ كس دیگری نمی‌تواند آن را برای شما انجام دهد.'),
(1690, 'جرج برنارد شاو', 'تو چیزها را می بینی و می پرسی: چرا؟ من خواب چیزهایی را كه وجود ندارند می بینم و می گویم: چرا كه نه؟'),
(1691, 'آلن گرین اسپان', 'مشكل درجه یك نسل امروز و اقتصاد روز، نداشتن سود مالی است.'),
(1692, 'نیچه', 'همه انسانهای به اصطلاح عملگرا گونه ای مهارت در خدمت گزاری دارند؛ همان چیزی كه آنها را عملگرا می سازد، چه برای دیگری و چه برای خود.'),
(1693, 'حضرت محمد (ص)', 'گفتن حرف‌های دیگران و حرف‌های خود و زیاد پرسیدن (درباره‌ی هر چیزی) و از بین بردن ثروت خود (با حالت اسراف) را رها كن.'),
(1694, 'امام علی (ع)', 'خداوند، مردم نادان را برای تعلّم مسئول قرار نداد، جز این كه نخست اهل علم را برای تعلیم آنان قرار داد.'),
(1695, 'پوشكین', 'دانش و هنر از هر سرزمینی برخیزد و وابسته به هر قومی كه باشد از آن ِ همه ی جهانیان است.'),
(1696, 'اریش سكال', 'عشق یعنی هرگز پشیمان نشدن.'),
(1697, 'جك كانفیلد', 'نگذارید دیگران با سخنان خود، شما را از رویاهایتان دور كنند.'),
(1698, 'اسپنسر جانسون', 'صخره ها و مارها همیشه وجود دارند، اما اگر آنها را پیش بینی كرده و درباره ی همه چیز پیشاپیش بیندیشیم، می توانیم به خوبی از پس كارها برآییم.'),
(1699, 'انجیل متی', 'هرگاه دعا می‌كنی، مانند ریاكاران نباش كه دوست دارند در عبادتگاه‌ها یا در گوشه و كنار خیابان‌ها نماز بخوانند تا توجه مردم را به خود جلب كنند و خود را مؤمن نشان دهند. مطمئن باش اجری را كه باید از خدا بگیرند، همین‌ جا از مردم گرفته‌اند.'),
(1700, 'نیچه', 'تا زمانی كه چشم تنها به حفظ امت دوخته شده باشد و رفتار غیر اخلاقی را دقیقا و صرفا در اموری جستجو كنند كه موجودیت امت را به خطر می اندازد، اخلاق نوعدوستی دیگر وجود نخواهد داشت.'),
(1701, 'نیچه', 'برای چیرگی، راه و روشهای بسیار هست: در پی راه و روش خویش باش!'),
(1702, 'حضرت محمد (ص)', 'ذلیل‌ترین مردم كسی است كه مردم را خوار گرداند.'),
(1703, 'ارسطو', 'در همه ی جنبه‌های طبیعت، امری شگفت انگیز وجود دارد.'),
(1704, 'میلان كوندرا', 'شریف ترین احساسات می تواند به آسانی برای توجیه بزرگترین وحشت ها به كار گرفته شود.'),
(1705, 'آبراهام مازلو', 'یك شیوه‌ی پرورش افراد پخته این است كه مسئولیتی به دوش آنها بگذاریم، با فرض اینكه می‌توانند از پس آن برآیند و بگذاریم برای انجام آن تلاش كنند.'),
(1706, 'امام علی (ع)', 'ای بندگان خدا! از مرگ و نزدیكی آن برحذر باشید و توشه‌ی آن را مهیا سازید، زیرا مرگ حقیقتی با عظمت و حادثه‌ای بزرگ با خود خواهد آورد: یا خیر [و سعادتی] كه هرگز شرّی پس از آن وجود نخواهد داشت و یا شرّ [و شقاوتی] كه هرگز خیری پس از آن نخواهد بود.'),
(1707, 'بودا', 'چشم گریان دیگران را به نگاههای سرور آمیز تبدیل كردن، لذت بخش ترین خوشبختی ها است.'),
(1708, 'نیچه', 'انسان چیزی است كه بر او چیره می باید شد.'),
(1709, 'حضرت محمد (ص)', 'كسی كه مشتاق به (رسیدن به) بهشت است به سوی كارهای نیك، می‌شتابد و كسی كه از آتش (جهنّم) می‌‌ترسد، از شهوات می‌گذرد و كسی كه منتظر مرگ است، از لذّت‌های (حرام) دست می‌كشد و كسی كه در دنیا زاهد است، مصیبت‌ها بر او آسان می‌شود.'),
(1710, 'حضرت محمد (ص)', 'همانا مردم چیزی بهتر از خوش خلقی دریافت نكرد‌ه‌اند (زیرا آسایش و رحمت الهی را به همراه دارد و میان انسان‌ها محبوب می‌شود.)'),
(1711, 'مثل قدیمی', 'اگر تنها كار كنید و سرگرمی نداشته باشید، پژمرده می شوید.'),
(1712, 'گای فینلی', 'نیروی باطنی ریشه‌دار، نه چشم و هم‌چشمی می‌كند نه سنجش؛ درست مانند اینكه عقابی بخواهد شبیه كلاغ پرواز كند یا شبیه اردك راه برود. نه نیروی راستین و نه عقاب، نیاز ندارند چیزی را ثابت كنند.'),
(1713, 'ماركارت اتوود', 'دوست دارم فرزندان، همچون سرانجامی خوش بر داستان زندگی‌ام باشند.'),
(1714, 'انجیل لوقا', 'سعی كنید كه به پیغام خدا خوب گوش فرا دهید. چون هر كه دارد، به او بیشتر داده خواهد شد، و هر كه ندارد، آنچه گمان می‌كند دارد نیز از او گرفته خواهد شد.'),
(1715, 'مارلون براندو', 'هر چه شما را نمی كشد شما را قوی تر می كند.'),
(1716, 'تااونه كینگ', 'مرد خسیس، گرانتر می پردازد.'),
(1717, 'ژری تایلر', 'زندگی مانند لبخند ژوكوند است، در نگاه اول به روی بیننده می خندد، اما اگر در او دقیق شوی می گرید.'),
(1718, 'امام جعفر صادق (ع)', 'نیكو چیزی است هدیه فرستادن پیش از آنكه حاجت خود را بگویی.'),
(1719, 'حضرت محمد (ص)', 'زبان خود را تحت سلطه‌ی خودت قرا بده. (نه اینكه بدون توجّه تو، ‌به حركت در بیابید.)'),
(1720, 'مارك اورول', 'برای همه آرزوی خیر كنید، چرا كه خودتان هم جزیی از همه هستید.'),
(1721, 'حضرت محمد (ص)', 'موی زیبا، یكی از دو نوع زیبایی است كه خداوند به فرد مسلمان می‌دهد.'),
(1722, 'كریتس', 'هر كه هستیم و هر كجا هستیم، خودمان اینگونه خواسته ایم.'),
(1723, 'پائولو كوئیلو', 'پذیرفتن نیك سرشتی خود همیشه آسانتر از رویارویی با دیگران و جنگیدن برای حقوق خویش است.'),
(1724, 'فرنك بارن هیل', 'هر كار نادرست، فرصتی برای یادگیری بیشتر است.'),
(1725, 'حضرت محمد (ص)', 'روزی را در زیر زمین طلب كنید. (‌زمین و خاك آن یكی از مهم‌ترین مكان‌های بدست آوردن روزی حلال است از زراعت و كشاورزی گرفته تا استخراج معادن و فلزات گران قیمت كه همگی در امر معاش انسان مؤثر است.)'),
(1726, 'حضرت محمد (ص)', 'با یكدیگر دشمنی نكنید و پشت (هم) به یكدیگر نكنید و چشم و هم‌چشمی ننمایید و ای بندگان خدا با هم برادر باشید.'),
(1727, 'جمال الدین اسدآبادی', 'هواخواه مرگ در راه سربلندی وطن، یا با قهرمانی به شهادت می رسد یا زندگی شرافتمندانه ای به دست می آورد.'),
(1728, 'پیتر مك ویلیام', 'تنها، شخص كنجكاو است كه خواهد آموخت و تنها، انسان با اراده، بر موانع [ =بازدارنده های ] راه علم و دانش چیره خواهد شد.');
INSERT INTO `quotations` (`id`, `author`, `text`) VALUES
(1729, 'چارلی چاپلین', 'شكست خوردن ناراحتی ندارد. آدم باید شجاع باشد تا بتواند از خودش یك احمق بسازد!'),
(1730, 'ساموئل اسمایلز', 'ما، بیشتر از شكست‌هایمان می‌آموزیم تا از كامیابی‌ها. بیشتر با دریافتن اینكه چه كاری نباید انجام دهیم، درمی‌یابیم كه چه كاری باید انجام دهیم و شاید كسی كه هرگز مرتكب اشتباهی نشده، هرگز چیزی كشف نكرده است.'),
(1731, 'آنتونی رابینز', 'مردم، حیوانات و همه‌ی موجودات زنده را دوست داشته باش و به آنها عشق بورز.'),
(1732, 'جك كانفیلد', 'توانایی شما در مجسم كردن رویاهایتان، یك عامل شتاب‌دهنده برای آفرینش آن‌هاست.'),
(1733, 'فلورانس اسكاول شین', 'از هیچ وضعیتی برآشفته نباشید تا وزن و سنگینی خود را از دست بدهد.'),
(1734, 'آبراهام لینكلن', 'مرد بی شهامت كسی است كه در جایی كه باید اعتراف كند، خاموش بنشیند.'),
(1735, 'استیو چندلر', 'اشتباه ما در این است كه گمان می‌كنیم تنها داوری دیگران اهمیت دارد نه داوری خودمان.'),
(1736, 'نیچه', 'آرامش همیشگی نیز كسل كننده است؛ گاهی طوفان هم لازم است.'),
(1737, 'ریچارد تمپلر', 'رویاها باشكوه اند، ولی واقعیت هم خوب است.'),
(1738, 'افلاطون', 'پرورش بدن باید از كودكی آغاز شود و در همه‌ی دوره‌ی زندگی ادامه یابد.'),
(1739, 'حضرت محمد (ص)', '‌مجازات كردن را در صورت بروز شبهات دفع كنید و از لغزش‌‌های بزرگان خود، بگذرید مگر آن لغزش‌هایی كه مستوجب حد (الهی) است.'),
(1740, 'حضرت محمد (ص)', '‌برترین مؤمن در اسلام كسی است كه مسلمانان از زبان و دستش در امان باشند و برترین مؤمن در ایمان، خوش خلق‌ترین شما است.'),
(1741, 'كیم وو چونگ', 'فریاد كشیدن بر سر شاگردانی كه خوب درس نمی‌خوانند و سبب دردسر هم هستند و نیز سرزنش آنها، كاری از پیش نمی‌برد. باید به آنها دلبستگی نشان داد و شایستگی‌های بی‌همتایشان را كشف كرد.'),
(1742, 'حضرت محمد (ص)', 'برای كسی كه گدایی می‌كند، حقّی وجود دارد (كه باید به او داده شود) اگرچه بر اسب سوار شده و به نزد تو بیاید. (و تو نباید بگویی پس چون سوار بر اسب است، دروغ می‌گوید.)'),
(1743, 'ژان پل سارتر', 'مسئله تنها این نیست كه چیزها ناپدید می شوند، بلكه پس از آن، یادشان نیز نابود می شود.'),
(1744, 'بودا', 'به جهان چنان نگر كه به حباب یا سراب نگری، شهریار مرگ آن را كه به جهان چنین نگرد، نبیند.'),
(1745, 'هوراس', 'بدون عشق در زندگی شادمانی وجود نخواهد داشت.'),
(1746, 'وزیری', 'به ستایش ها و موفقیت های زودگذر تكیه نكنید.'),
(1747, 'گای فینلی', 'اگر از بیم نادان جلوه كردن، وانمود كنید كه چیزی را فهمیده‌اید، درحالی كه این‌ گونه نیست، می‌توانید مطمئن [ =آرامنده ] باشید كه در همه ی دوران زندگی خود، فریبنده‌ای ترسو باقی خواهید ماند.'),
(1748, 'سیمون دوبووار', 'یكدندگی به خرج دادن در برابر چیزی كه برداشتنی نیست، رفتاری نابخردانه است.'),
(1749, 'اریك نیوتن', 'هر اثر بزرگ نقاشی این ویژگی را دارد كه پس از دیدن آن، گوشه ای از زندگی در نظر انسان تغییر می یابد و دیگر هرگز آنچه بوده است باقی نمی ماند.'),
(1750, 'افلاطون', 'عشق بلایی است كه همه خواستارش هستند.'),
(1751, 'حضرت محمد (ص)', 'سر بریدن مرد، این است كه روبروی او، ستایشش كنی. (و او مغرور شده و دیگران نیز نسبت به او حسودی كنند.)'),
(1752, 'حضرت محمد (ص) ‌', 'رفیق را با رفیقش می‌سنجند. (یعنی كسی كه دوستش مؤمن باشد، خودش را نیز مؤمن حساب می‌كنند ولی كسی كه دوستش، ‌انسان فاسدی باشد خودش را نیز شخص بدی به شمار می‌آورند.)'),
(1753, 'پرمودا باترا', 'مشورت، كلید همكاری‌ها و ماندن در كنار یكدیگر است.'),
(1754, 'امام موسی (ع)', 'نیكی زندگانی در گشادگی خانه و بسیاری خدمتكاران است.'),
(1755, 'میلان كوندرا', 'آدمی كه كتاب می نویسد، یا همه چیز است یا هیچ و چون هرگز همه چیز به هیچ كس داده نمی شود، هریك از ما كه كتاب می نویسیم، هیچیم.'),
(1756, 'گوته', 'هر شك و تردیدی تأخیرهای خاص خود را به همراه دارد و ایام، با افسوس بر روزهای از دست رفته می گذرد.'),
(1757, 'حضرت محمد (ص)', 'نیرومند كسی است كه بر (هوای نفس) خودش پیروز شود.'),
(1758, 'حضرت محمد (ص)', 'چون كسی عطسه كند او را دعا كنید اگرچه دریا در میان فاصله باشد.'),
(1759, 'جیم رآن', 'آنچه كه ما را از شناسایی شایستگی‌ها و موهبت‌های ذاتی خویش باز می‌دارد، رفتار نه چندان خوبی‌ست كه با خود داریم.'),
(1760, 'حضرت محمد (ص)', 'آرامش نوعی امنیّت و رها كردن آن نوعی زیان است.'),
(1761, 'پرمودا باترا', 'شكست، پایان همه‌ی رویاها نیست؛ بلكه فقط یك آغاز تازه است.'),
(1762, 'حضرت محمد (ص)', 'حقیقتاً خداوند بزرگ با شخص بدگو و بد زبان دشمن است.'),
(1763, 'ارد بزرگ', 'نادانی و پستی یك نفر در گذشته نمی تواند میدان انتقام از خاندان او باشد.'),
(1764, 'اُرد بزرگ', 'اگر كسی را با زیباترین منشها و صفات بخوانیم چیزی از ارزش ما نمی كاهد، بلكه او را دلگرم ساخته ایم آنگونه باشد كه ما می گوییم.'),
(1765, 'تن', 'ریاست باده ای است كه هر كس نوشید، نمی تواند از مستی آن در امان باشد.'),
(1766, 'آروس كیند', 'تلاش و كوشش، بسیار خوب است، زیرا اگر مردم كاری بكنند كه درست باشد، از انجام آن لذت خواهند برد.'),
(1767, '؟', 'خود را بشناس و به روح خویش فرمانروایی كن. در این صورت می توانی امیدوار باشی كه روزی مقتدر و سعادتمند خواهی شد.'),
(1768, 'پیتر مك ویلیام', 'از آنچه زندگی به شما می بخشد، لذت ببرید، ولی همیشه آزاد و رها باقی بمانید.'),
(1769, 'افلاطون', 'باید تا می‌توانیم بكوشیم نخستین داستان‌هایی كه برای كودكانمان گفته می‌شود، مشوق نیكویی اخلاق باشد.'),
(1770, 'حجازی', 'شاعر، سازی است كه استاد طبیعت ساخته و پرداخته و به دست خود گوشمالی داده است و به هر نسیمی كه بر او بوزد، به نوا می آید. ما چون از هیچ باد سختی به صدا نمی آییم، گویندگان را شوریده تصور می كنیم.'),
(1771, 'ریچارد تمپلر', 'اگر بخواهید، می توانید هر گونه احساس بیزاری، افسوس و خشم را از خود دور كنید.'),
(1772, 'جك كانفیلد', 'به دنبال دوستانی باشید كه دارای همان تجربه‌ای هستند كه شما برای رسیدن به هدفتان به آن نیاز دارید.'),
(1773, 'پائولو كوئیلو', 'مردم، بسیار از نشانه حرف می زنند، اما نمی دانند كه به راستی درباره ی چه چیز حرف می زنند.'),
(1774, '؟', 'زنهایی كه در روزگار پیری مقدس و مؤمن می شوند چیزی را به خدا تقدیم می كنند كه از بخشیدن آن به شیطان شرم دارند.'),
(1775, 'ویكتور هوگو', 'مردم، توان و نیرو دارند؛ اراده ندارند.'),
(1776, 'پرمودا باترا', 'گذشته‌ی شما، آنچه را كه امروز هستید، پیشكش می‌كند و آینده‌ی شما در نگرش امروز شما نهفته است.'),
(1777, 'فرناندو پسوا', 'وظیفه ی كشتی، دریانوردی نیست، ورود به بندر است.'),
(1778, 'آنتونی رابینز', 'شاید عشق و شور راستین این باشد كه با چشم‌پوشی از اینكه چه رویدادی در زندگی‌تان رخ دهد، بی‌درنگ، كنترل شرایط و امور را در دست گیرید و به خود امكان دهید سراپا، با آنچه پیش آمده، درآمیزید و با آن، یكی شوید و با همه‌ی وجود، آن را احساس كنید.'),
(1779, 'نیچه', 'باید اوزان همه چیز را از نو تعیین كرد.'),
(1780, 'حضرت محمد (ص)', 'كسی كه پدر و مادر خود را راضی كند، حقیقتاً‌ خداوند را نیز راضی كرده است و كسی كه پدر و مادر خود را خشمگین سازد، حقیقتاً خدا را خشمگین كرده است.'),
(1781, 'دالای لاما', 'آغوشت را به سوی دگرگونی بگشای، اما از ارزش های خود دست بر ندار.'),
(1782, 'فرناندو پسوا', 'این كار ما نیست كه آشكار بدانیم چه كسی هستیم؛ آن چه ما فكر و احساس می كنیم همواره برگردانی است از اینكه، آنچه می خواهیم، هرگز نخواسته ایم و به احتمال زیاد هرگز كسی نخواسته است.'),
(1783, 'اریك نیوتن', 'آرزوهای هر كس نتیجه ی تجربه های زندگی او است.'),
(1784, 'كالوس كاستاندا', 'هیچ چیز عوض نمی شود! شما دیدتان را عوض كنید؛ رمز كار این است.'),
(1785, 'جان‌ اف‌ كندی‌', 'هر برنامه، اقدام و مخاطرات و هزینه هایی در بر دارد، اما این مخاطرات و هزینه ها به مراتب از مخاطرات و هزینه های بلندمدت راحت نشستن و كاری نكردن كمتر است.'),
(1786, 'حضرت محمد (ص)', 'شقی‌ترین مردم پادشاهانند.'),
(1787, 'آلفرد هیچكاك', 'قبل از تولید فیلم، تمام ریزه كاری هایش را در ذهنم مجسم می كنم، آنگاه به نظرم می رسد كه فیلم را دیده ام، درست به همین دلیل از ساختن آن دست می كشم.'),
(1788, 'ارد بزرگ', 'در هر سرنوشتی، رازی مهم فرو نهفته است.'),
(1789, 'سمیول باتلر', 'با ایمان،كار زیادی نمی توانید بكنید، ولی بدون آن، هیچ كاری نمی توانید انجام دهید.'),
(1790, 'جان ماكسول', 'بیشتر اشخاص در سه موقعیت، اقدام به تغییر خود می كنند: از بس كه رنج می برند به این كار تن می دهند؛ از بس كه آموخته اند مایل به این كار می شوند؛ یا از بس كه عایدی دارند از توان انجام این كار برخوردارند.'),
(1791, 'ویلسون میزنر', 'شنونده ی خوب، نه تنها در هر كجا جانبدارانی دارد، بلكه پس از مدتی، چیزی می داند.'),
(1792, 'محمد حجازی', 'جهان هر كس به اندازه وسعت فكر اوست.'),
(1793, 'دیل كارنگی', 'شما با دلبسته شدن به دیگر مردم، می توانید طی دو ماه دوستان بیشتری بیابید، تا اینكه طی دو سال بكوشید مردم را وادار نمایید به شما دلبسته شوند.'),
(1794, 'حضرت محمد (ص)', 'روزه گرفتن در زمستان، با بهره‌مندی‌ از سردی است (یعنی هم لذّت روزه و هم لذّت هوای سرد را می‌برد و از این جهت فشار بر روزه‌دار از نظر جسمی وارد نمی‌شود.)'),
(1795, 'افلاطون', 'خیر در نظر همه‌ی مردم، همان درك خوشی‌ها و در نظر خواص [=ویژگان]، همان شناخت است.'),
(1796, 'حضرت محمد (ص)', 'هرگز شاهد دروغگو، قدم بر نمی‌دارد، ‌مگر این كه جهنّم بر او واجب می‌شود.'),
(1797, 'حضرت محمد (ص)', '‌كسی گناه كند (و در عین گناه)‌ خندان باشد، با حالت گریان، وارد جهنّم می‌شود.'),
(1798, 'برایان ورث', 'افرادی كه "نه" گفتن برایشان دشوار باشد، از زندگی لذت زیادی نخواهند برد؛ زیرا منش خود را پیش نزدیكان شان از دست می دهند و در پایان، چیز دلپذیری برای خودشان نمی ماند.'),
(1799, 'پرمودا باترا', 'خدمت كردن بدون چشم‌داشت، لذت ویژه‌ای به همراه دارد.'),
(1800, 'لئوناردو داوینچی', 'آرزو كردن شرط نیست، شرط تحقق آرزو است.'),
(1801, 'امام علی (ع)', 'برترین بندگان خدا نزد خداوند سبحان، امامی است عادل كه هدایت شده و مردم به وسیله‌ی او هدایت شوند. سنّت معلوم را برپا بدارد و بدعت مجهول را بمیراند.'),
(1802, 'جان بونیان', 'اگر برای كسی كه نتواند لطف شما را جبران كند كاری انجام ندهید، امروز را زندگی نكرده اید.'),
(1803, 'جكسون براون', 'به گونه ای زندگی كنید كه وقتی فرزندانتان به یاد عدالت، صداقت و مهربانی می افتند، شما در نظرشان جلوه گر شوید.'),
(1804, 'توماس ادیسون', 'من دلسرد نمی شوم، زیرا هر تلاش نادرستی كه كنار گذاشته شود، گامی به سوی پیش است.'),
(1805, 'حضرت محمد (ص)', 'اولین (‌مرحله‌ی) عبادت، سكوت است. (یعنی فقط باید از عالمان دینی درس بیاموزد و تا نرسیدن به آن مرحله‌،‌ سكوت اختیار كند.)'),
(1806, 'زیگ زیگلار', 'تكرار كردن، پایه ی یادگیری و ابزاری نیرومند است.'),
(1807, 'هنری وادزورث لانگ‌فلو', 'كسی كه به خود ارج می نهد، از آسیب دیگران در امان است؛ زرهی بر تن دارد كه به هیچ وجه دریده نمی شود.'),
(1808, 'لوسیا كاپاچیون', 'بازی، ما را شادمان و زنده نگاه می‌دارد؛ به ما شور و شوق زندگی می‌بخشد كه جانشینی ندارد؛ بدون آن، مزه‌ی زندگی خوب نیست.'),
(1809, 'آبراهام لینكلن', 'مردم حق دارند در هر كجای دنیا كه باشند در برابر حكومتی كه نمی خواهند، به پا خیزند و آن را به زیر كشند تا حاكمیتی را كه خود سزاوار خویش می دانند، برپا كنند. این "حق" تنها نیرویی است كه می تواند همه جهان را آزاد كند.'),
(1810, 'آرتور اَش', 'ما با آنچه به دست می آوریم می توانیم گذران زندگی كنیم، اما آنچه می دهیم زندگیمان را می سازد.'),
(1811, 'ژزف رو', 'كوههای عظیم پر از چشمه اند و قلبهای بزرگ پر از اشك.'),
(1812, 'حضرت محمد (ص)', 'بدترین غذا، غذای ولیمه است كه افراد سیر را برای خوردن آن دعوت كرده و افراد گرسنه را از خوردن آن منع می‌كنند.'),
(1813, 'فلورانس نایتینگل', 'انسان به درستی همان می شود كه به آن می اندیشد.'),
(1814, 'لئوبوسكالیا', 'بد نیست بخواهیم آنها كه دوست‌شان داریم، بهترین‌ها باشند، ولی این امر را هرگز با جاری كردن سیلی از خرده‌گیری‌های منفی‌نگرانه نمی‌توانیم برآورده كنیم.'),
(1815, 'واتلی', 'از ستایش و عیب جویی مردمان، هیچكدام را نباید عامل سنجش حقیقت شمرد، اما از هر دوی آنها می توان برای سنجش خود بهره گرفت.'),
(1816, 'تناجیو', 'وقتی در زندگی به داشته هایمان فكر می كنیم، خود را خوشبخت و زمانی كه به نداشته می اندیشیم، خود را بدبخت حس می كنیم؛ پس خوشبختی ما در تصور خود ماست.'),
(1817, 'الجرنون چارلز سوین برن', 'هنگامی كه روح لذت و دلخوشی، از خنده‌ی پاك و بی‌آلایش كودك موج می‌زند، همه‌ی ارواح انسانی با آن شاد می‌شوند.'),
(1818, 'ژان پل سارتر', 'شما آزاده اید؛ راه خود را برگزینید؛ یعنی بیافرینید.'),
(1819, 'حضرت محمد (ص)', 'اگر بر امّت من سخت نبود، حتماً آنها را به مسواك زدن موقع هر نمازی، دستور می‌دادم.'),
(1820, 'پوشگین', 'كسی كه برای محبت حدودی قایل می شود، هرگز معنای محبت را نفهمیده است.'),
(1821, 'امام علی (ع)', 'عمل هر روز را در همان روز به جای بیاور، زیرا برای هر روز موقعیت و قانون خاصی حكم‌فرماست.'),
(1822, 'گوته', 'اگر به مهمانی گرگ می روید، سگ خود را به همراه ببرید.'),
(1823, 'آبراهام مازلو', 'اگر جستارهای روانكاوی هیچ چیز هم به ما نیاموخته باشد، دست كم این را به ما آموخته است كه سركوب كردن امیال خویشتن، روش خوبی برای از بین بردن دشواری‌ها نیست.'),
(1824, 'حضرت محمد (ص)', '‌هر كسی كه مورد حساب قرار گیرد، عذاب می‌شود. (‌ترازوی عدالت خداوند الهی به گونه‌ای است كه ریزترین اعمال را هم حساب می‌كند، پس افراد كمی هستند كه در حساب قرار گرفته و بدون عذاب خارج شوند.)'),
(1825, 'بودا', 'همچنان كه كماندار، تیرهای خود را می تراشد و هموار می كند، هر انسانی می تواند افكار آشفته خود را جهت دهد.'),
(1826, 'حضرت محمد (ص)', '‌بر شما لازم است كه راست بگویید زیرا راستی، دری از درهای بهشت است و از دروغ دوری كنید زیرا دری از درهای جهنّم است.'),
(1827, 'جان فاستر', 'كسی كه در بند شخصیت خویش نباشد، نمی توان گفت كه به خود تعلق دارد؛ او متعلق به هر كس و هر چیزی است كه او را اسیر خود سازد.'),
(1828, 'حضرت محمد (ص)', 'همانا خودپسندی،‌ عمل هفتاد سال (انسان) را،‌ نابود می‌كند. (زیرا اعمالش با اخلاص همراه نبوده است.)'),
(1829, 'استیو چندلر', 'اگر در این اندیشه باشیم كه برای زندگی كردن، یك دنیا زمان داریم، دچار اشتباه محض شده‌ایم و زمانهای خود را از دست داده‌ایم.'),
(1830, 'لائوتسه', 'هنگامی كه صمیمیت ناب در درون شما به وجود می آید، بلافاصله به بیرون تراوش می كند و در قلب دیگران احساس می شود.'),
(1831, 'اریك نیوتن', 'یكی از ویژگی های ذوق، قابلیت سرایت آن است.'),
(1832, 'اُرد بزرگ', 'آینده جوانان را از روی خواسته ها و گفتار ساده شان می توان حدس زد. مپنداریم كه میزان دارایی و یا امكانات آنها دلیلی بر پیروزی و شكست آنهاست، تنها [ مسئله ی ] مهم، خواسته و آرزوی آنهاست.'),
(1833, 'فلورانس اسكاول شین', 'هر پیشرفتی، نتیجه ی آرزو است.'),
(1834, 'گوته', 'طبیعت همانند بیماری جسمانی در برابر ضعف اخلاقی واكنش نشان می دهد. زمانی كه بر دامنه ی خطر افزوده می شود به همان نسبت بر میزان شهامت فرد نیز افزوده می گردد.'),
(1835, 'ویكتور هوگو', 'یك پرنده ی كوچك كه زیر برگها آواز می خواند برای اثبات خدا كافی است.'),
(1836, 'حضرت محمد (ص)', 'اگر شرم، (شبیه) مردی می‌شد (یعنی به صورت انسان در می‌آمد) حتماً مرد، صالحی می‌گشت.'),
(1837, 'اُرد بزرگ', 'همواره تنهایی، توانایی به بار می آورد.'),
(1838, 'ویلیام جیمز', 'هنر عاقل بودن عبارت است از هنر آگاهی از اینكه نسبت به چه چیزهایی چشم پوشی كنید.'),
(1839, 'اُرد بزرگ', 'جام عمر را جز با می دلدادگی به خرد و دانش پر مكن.'),
(1840, 'آرتور شوپنهاور', 'ازدواج یعنی نصف كردن حقوق و دوچندان كردن مسئولیت ها.'),
(1841, 'حضرت محمد (ص)', 'هر كه اطاعت زن خود بكند خدا او را سرنگون در جهنم اندازد.'),
(1842, 'كارل هنریش ماركس', 'رادیكال بودن به معنی فهم ریشه ای امور است، اما برای انسان، ریشه خود انسان است.'),
(1843, 'امام علی بن الحسین (ع)', 'هر كه در بیماری عیادت مؤمنی بكند ملائكه او را از همه جهت فرو گیرند و گویند خوشا به حال تو و گوارا باد بهشت از برای تو.'),
(1844, 'حضرت محمد (ص)', 'زمانی كه خداوند، خوبی بنده‌ای را بخواهد، نیازهای مردم را به (دست او) قرار می‌دهد.'),
(1845, 'آنتونی رابینز', 'ذهن می تواند به عقب بازگردد، اما زمان قابل بازگشت نیست.'),
(1846, 'حضرت محمد (ص)', 'هر كه تفحص عیب‌های مردم كند خدا او را رسوا كند اگرچه گناه را در میان خانه‌ی خود كرده باشد.'),
(1847, 'جی دابلیو فارستر', 'ریشه ی بسیاری از مسائل اجتماعی، از نابودی شهرها گرفته تا تهدید جهانی محیط زیست، در سیاست های به ظاهر مناسبی كه جهت آسایش آنها طراحی و اتخاذ شده، نهفته است.'),
(1848, 'لئو نیكولایویچ تولستوی', 'هنر خوب است، اگر احساسات خوب را ترویج كند. احساسات هنگامی خوب است كه شعور جداكننده ی نیك و بد به خوبی آنها حكم دهد و این شعور در میان مردم یك عصر مشترك است. هنر جهانی یك محك درونی دارد كه پا برجا و بی خطاست و آن هم وجدان پاك نام دارد.'),
(1849, 'جك كانفیلد', 'از سفر زندگی لذت ببرید و هر روز را با لذت و حق‌شناسی، سپری كنید؛ از حضور خداوند در زندگی خود، قدردانی كنید.'),
(1850, 'امام علی (ع)', 'كسی كه اطاعت نمی‌شود، رأیی ندارد.'),
(1851, 'كراتس', 'عشق دردی است كه تنها سه دارو دارد: گرسنگی، انتظار و انتحار [= خودكشی ].'),
(1852, 'امام علی (ع)', 'هر كس نزدیك توانگر وارد شود و به خاطر توانگریِ او فروتنی كند، دو سوم دین خود را از دست داده است.'),
(1853, 'نیچه', 'اینها ضعفا هستند كه اراده به سوی قدرت خودشان را به این صورت مخفی می كنند كه جهان دیگری بسازند؛ در حقیقت جهان افلاطونی همین است.'),
(1854, 'یَسنَه', 'اینچنین می‌ستاییم گوشْور وَن [= «روان آفرینش» یا «روان جهان» یا «روان زمین»] و گِوش تَشَن [= آفریدگار جهان یا سازنده آفرینش] و روان‌های خود و روان‌های چارپایان را كه مایه‌ی زندگی ما هستند؛ كه ما برای آنهاییم و آنها برای مایند.'),
(1855, 'بزرگمهر', 'فر و شكوه زمانی فزونی می یابد كه دانا در نزد ما ارجمند باشد و كام بدخواه را به زهر بی اعتنایی بیالاییم.'),
(1856, 'حضرت محمد (ص)', 'در بهشت چیزهایی هست كه هیچ چشمی (آن را) ندیده و هیچ گوشی نشنیده و به قلب هیچ بشری نگذشته است.'),
(1857, 'ناشناس', 'اگر دو خرگوش را دنبال كنید، هیچ كدام را نخواهید گرفت.'),
(1858, 'پرمودا باترا', 'یك لبخند ساده، بسیار بهتر از یك لباس گران‌قیمت است.'),
(1859, 'اورپیدوس', 'نیكوست كه ثروتمند باشی و پرتوان، اما نیكوتر آن است كه دوستت بدارند.'),
(1860, 'اتومی', 'جاه طلبی شهوتی است كه هرگز فرو نمی نشیند، بلكه با لذتی كه از آن فراهم می شود پیوسته مشتعل تر و جنون آمیز تر می گردد.'),
(1861, 'سقراط', 'من حقیقت را نمی دانم و از راه مباحثه با اشخاص می خواهم آن را كشف كنم و كسب دانش نمایم.'),
(1862, 'نیچه', 'دوست می دارم آنانی را كه برای فرو شدن و فدا شدن، نخست فراپشت ستارگان از پی دلیل نمی گردند، بل خویش را فدای زمین می كنند تا زمین روزی از آن ابرانسان شود.'),
(1863, 'ماهاتما گاندی', 'آزادی، هرگز به معنی مجوز [ =روا دارنده ] برای به كار بستن استبداد نبوده است.'),
(1864, 'ویكتور هوگو', 'جان آدمی چه اندوهگین است، هنگامی كه اندوه‌اش از عشق است.'),
(1865, 'فرانسوا ولتر', 'تاریخ تنها تصویر جنایتها و تیره بختی های بشر است.'),
(1866, 'روتر فورد', 'درمان غم و اندوه، سرگرم ساختن مغز به اندیشه های نشاط آور است.'),
(1867, 'نیچه', 'هر گدایی حیله گر می شود؛ همانند هر كسی كه از سر كمبود یا نیازمندی (چه شخصی و چه عمومی) پیشه ای را در پیش می گیرد.'),
(1868, 'آنتونی رابینز', 'دست به كنش بزنید و از كشف توانایی های تازه لذت ببرید.'),
(1869, 'آرتور شوپنهاور', 'نگهداری دم ماهی و دل زن از دشواری ها است.'),
(1870, 'هربرت اسپنسر', 'حكومت جمهوری بهترین نوع حكومت است، ولی به همان دلیل كه بهترین نوع حكومت است نیاز به بهترین افراد دارد؛ افرادی كه تا به حال در هیچ كجای دنیا مشاهده نشده اند.'),
(1871, 'وارن بنیس', 'رهبری، توانایی تبدیل دورنما به واقعیت است.'),
(1872, 'كیم وو چونگ', 'فایده‌ی شكم پُر با فكر خالی یا كج‌اندیش چیست؟'),
(1873, 'كیم وو چونگ', 'مسئولیت شخص نسبت به جامعه، به نسبت افزایش دارایی‌ او بیشتر می‌شود. هر آنچه كه ما داریم، جامعه به ما داده است.'),
(1874, 'آبراهام لینكلن', 'شما می‌توانید هرچه را كه می‌خواهید، داشته باشید؛ به شرطی كه آن را به شدت بخواهید.'),
(1875, 'محمد غزالی', 'راه حق یكی و راه باطل هزار.'),
(1876, 'امام علی (ع)', 'به درستی كه جهاد كردن برای خدا دری است از درهای بهشت كه حق تعالی برای مخصوصان دوستانش گشوده است و نعمتی است كه برای ایشان ذخیره گردانیده است.'),
(1877, 'ارد بزرگ', 'در هستی، جنبش حشرات هم چهار چوبی دارد.'),
(1878, 'زیگ زیگلر', 'یك انسان ناسپاسِ خوشبخت نشان بده.'),
(1879, 'جك كانفیلد', 'در زندگی خود، به افراد منفی، خرده نگیرید، فقط داد و ستد خود با آنها را تا آنجا كه می‌شود، محدود كنید.'),
(1880, 'ویلیام شكسپیر', 'صورت شما كتابی است كه مردم می توانند از آن چیزهای عجیب بخوانند.'),
(1881, 'مانفرد رومل', 'تا وقتی كه نتوان با تلویزیون یك مگس را كشت، جای روزنامه را نخواهد گرفت.'),
(1882, 'ناتانیل براندن', 'دستیابی به آرمانها، بدون تلاش و جنبش، به هیچ جا جز خواب و گمان راه نخواهد یافت.'),
(1883, 'امام علی (ع)', 'دنیا برای حقیقتی دیگر آفریده شده است، نه برای خویشتن.'),
(1884, 'حضرت محمد (ص)', 'كسی كه به زیاد خوردن و زیاد نوشیدن عادت كند، قلبش سخت می-شود. (هم نسبت به دیگران بی‌اعتنا می¬شود و هم توفیقات خود را از دست می¬دهد.)'),
(1885, 'ناشناس', 'به خدا تكیه كن و یقین داشته باش كه زیر سایه خدا دوستان زیادی پیدا می كنی.'),
(1886, 'منتسكیو', 'عاشقان دلباخته معمولأ در سكوت به  سر می برند.'),
(1887, 'امام علی (ع)', 'خداوند درِ دعا را بر بنده‌ای باز نمی‌كند كه درِ پذیرش دعا را به روی او ببندد و چنان است كه درِ توبه را برای بنده‌ای باز كند و درِ بخشایش را بر او ببندد.'),
(1888, 'امام علی (ع)', 'مردم، دشمن آن چیزی هستند كه آن را نمی‌دانند.'),
(1889, 'ویلیام شكسپیر', 'تردیدهای ما خائنانی هستند كه با ایجاد ترس در درونمان، ما را از تلاش باز می دارند و در نتیجه، سبب می شوند كه نتایج دلخواه را به دست نیاوریم.'),
(1890, 'دیل كارنگی', 'بیایید آنقدر سرگرم نشویم یا با شتاب زندگی نكنیم كه نتوانیم به موسیقی چمنزار یا آن سمفونی كه جنگل را می ستاید، گوش فرا دهیم. برخی چیزها در جهان خیلی مهمتر از دارایی‌اند. یكی از آنها توانایی خوش بودن با چیزهای ساده است.'),
(1891, 'آنتونی رابینز', 'همواره با چشم‌پوشی از اینكه چه پیشامدی در زندگی و در جهان بیرون روی می‌دهد، چَم و مفهومی كه به آن نسبت می‌دهید، با شما و به میل و اراده و گزینش خودتان است.'),
(1892, 'ادوارد گوردن كرگ', 'من صحنه ی نمایشنامه ها را صرفاً بر اساس متن طراحی نمی كنم، بلكه متن را می خوانم و می گذارم صحنه ی آن در ذهن و اندیشه ام شكل گیرد، آنگاه آن را ترسیم می كنم.'),
(1893, 'نیچه', 'كشتی ای را كه به خشكی بچسبد و به آغوشِ آن پناه برد، [ برای بستن اش ] تار تارتَنَكی [= عنكبوتی ] از خشكی بس! اكنون به ریسمانی سخت تر ازین نیازی نیست.'),
(1894, 'سعید نفیسی', 'آزادی باده ای است كه هزاران تن آن را برای بدمستی می نوشند و یك تن برای سرمستی.'),
(1895, 'حضرت محمد (ص)', 'طمع‌كار،‌ فقیرترین انسان است.'),
(1896, 'حضرت محمد (ص)', 'كسی كه به او صورت زیبا و خوش خلقی و زن شایسته و سخاوتمندی روزی شده است، بهره از دنیا و آخرت به او داده شده است.'),
(1897, 'الیور وندل هلمز', 'همین كه ذهن بشر به نظریه ی تازه ای رسید، دیگر هرگز به مقیاس های [ =پیمانه های ] پیشین خود باز نمی گردد.'),
(1898, 'آرتور شوپنهاور', 'ازدواج یعنی با چشمان بسته به امید گرفتن یك مارماهی، دست فروبردن در جوالی [ =ظرفی از پشم بافته ] پر از مار.'),
(1899, 'حضرت محمد (ص)', 'احدی را نیست كه سخنی را كه صاحبش پنهان دارد او نقل كند مگر آنكه علمی باشد كه اظهار آن لازم یا ذكر نیكی‌های آن شخص باشد.'),
(1900, 'كوینسی جونز', 'سن هر كس با توجه به میزان درد و رنجی كه در برخورد با ایده های نو تجربه می كند، تعیین می شود.'),
(1901, 'آرتور شوپنهاور', 'نوابغ بر خلاف اشخاص عادی، تنها به فكر خود نیستند و منافع شخصی را در نظر نمی گیرند. بدین جهت در آثار نوابغ همیشه نظریاتی دیده می شود كه دارای جنبه كلی و جهانی است و از حدود زمان فراتر می رود.'),
(1902, 'نیچه', 'اگر وجدان خویش را همانند اسبان آموزش داده باشیم، به هنگام گاز گرفتن، بوسه ای نیز بر ما خواهد زد.'),
(1903, 'حضرت محمد (ص)', 'هر كار خیری كه انجام دهی، (نوعی) صدقه است چه در حقّ انسان فقیر باشد و چه در حقّ ثروتمند.'),
(1904, 'انجیل یوحنا', 'بزرگ‌ترین محبتی كه شخص می‌تواند در حق دوستانش بكند، این است كه جان خود را در راه ایشان فدا سازد. محبت را باید اینچنین سنجید.'),
(1905, 'سیریل كانلی', 'اگر كسی در اندیشیدن بسیار تنبل، در انجام كاری بسیار مغرور و در اعتراف به این دو، بسیار بزدل باشد، هرگز به خردمندی دست نخواهد یافت.'),
(1906, 'كنفوسیوس', 'شتاب در یاد گرفتن مثل این است كه از پی كسی بدوی و به او نرسی و بترسی كه او را گم كنی.'),
(1907, 'پابلو پیكاسو', 'كار بی‌هدف، راهی‌ است كه به پایان نمی‌رسد.'),
(1908, 'بوبن', 'مرگ پایان انسان نیست، اما برخی مرگشان زودتر از مردن فرا می رسد.'),
(1909, 'حضرت محمد (ص)', 'هیچ جرعه‌ای نزد خدا محبوب‌تر از جرعه‌ی خشمی نیست كه بنده‌ای آن را فرو برده است. (و) هیچ بنده‌‌ای خشم خود را فرو نمی‌برد، مگر این كه خداوند، درونش را پر از ایمان می‌كند.'),
(1910, 'فرانسوا ولتر', 'زنها مثل ماهی هستند؛ به دست آوردن آنها آسان و نگهداشتن آنها مشكل است.'),
(1911, 'آنتونی رابینز', 'چنانچه خواهان روابطی پسندیده و كامروا با دیگران هستید، نخستین باور هسته‌ای و مركزی كه می‌باید داشته باشید، آن است كه بدانید هویت و منش راستین مردم با رفتارها، پاسخ‌ها و واكنش‌های آنها یكی نیست.'),
(1912, 'جان ماكسول', 'كسی كه كار خود را تنها زمانی انجام می دهد كه سر حال باشد یا انجام آن راحت باشد، توفیقی پیدا نخواهد كرد.'),
(1913, 'آنتونی رابینز', 'گاهی، كمی درد و رنج برای رشد و آموختن هرچه بیشتر لازم است.'),
(1914, 'جان ماكسول', 'خیلی ها غافل از نقاط قوت یكدیگر راهی دادگاه طلاق می شوند. این زوجها تابع افراط و تفریط هستند. اول دنبال نقاط قوت هم و برجسته كردن آن می روند و در نهایت تنها نقاط ضعف را می بینند.'),
(1915, 'پرمودا باترا', 'اشتباه كردن سبب شرمساری نمی‌شود؛ یك عذرخواهی خالصانه، روش بزرگ منشانه‌ای برای جبران كار نادرست است.'),
(1916, 'لئوبوسكالیا', 'فقط به همان اندازه می‌توانید دیگران را دوست بدارید كه خودتان را دوست دارید.'),
(1917, 'میلان كوندرا', 'فراموشی، در عین حال بی عدالتی مطلق و آسایش مطلق است.'),
(1918, 'مارك تواین', 'انسان تنها حیوانی است كه چهره اش از شرم سرخ می شود و یا باید بشود.'),
(1919, 'اُرد بزرگ', 'آزمودگی انسانها از زر هم با ارزش تر است.'),
(1920, 'حضرت محمد (ص)', 'حقیقتاً ‌‌صدقه، خشم خدا را فرو می‌نشاند و از مرگ بد،‌ جلوگیری می‌كند.'),
(1921, 'سیلوستر استالونه', 'مردم فكر می كنند كه من عقل چندانی ندارم، پس چرا تصورشان را بر هم زنم؟'),
(1922, 'حضرت محمد (ص)', '‌با كسی كه پیوندش را با تو قطع كرده است، ارتباط برقرار كن و با كسی كه به تو بدی كرده است، نیكی كن و (سخن) حقّ‌ را بگو، اگر چه به ضرر تو باشد.'),
(1923, 'امام علی (ع)', 'دنیا جایگاهی است كه فنا بر آن مقدّر و خروج از آن به اهلش اجباری شده است. این دنیا بر مذاق فرزندانش شیرین و بر خیره‌شوندگانش سبز و با طراوت است. این دنیا برای جوینده‌اش شتابان است، و بر دلِ نظاره‌كننده‌اش مخلوط كننده و فریبا.'),
(1924, 'تونی دیویس', 'انسانیت ذاتی در میان همه ی انسانها در هر زمان و مكانی مشترك است.'),
(1925, 'حضرت محمد (ص)', '‌كسی كه دائماً روزه باشد، روزه و افطار او صحیح نیست (زیرا اسلام دین سختی و فشار نیست و كسی كه بخواهد همیشه روزه بگیرد، به خودش ضرر می‌زند و حقّ خانواده‌ی خود را نیز ضایع می‌كند.)'),
(1926, 'امام علی (ع)', 'مسلمان كسی است كه مسلمانان از زبان و دستش سالم باشند، جز در مسیر حق. و اذیت و آزار مسلم صحیح نیست، جز برای وجوب.'),
(1927, 'امام علی (ع)', 'بپرهیز از دوست داشتن مدّاحی و تملّق دیگران، زیرا این صفات پلید از محكم‌ترین فرصت‌ها برای شیطان است كه نیكی نیكوكاران را در آن محو می‌سازد.'),
(1928, 'فرانسیس تامپسون', 'شاعر باید در قلب خود بیندیشد.'),
(1929, 'وین دایر', 'تو جدا از دیگران نیستی؛ قضاوت در مورد كارهای خوب دیگران هم دست كمی از قضاوت در مورد كارهای بدشان ندارد.'),
(1930, 'زیگ زیگلار', 'همواره اندیشه های تازه وجود دارند كه باید كشف شوند.'),
(1931, 'بزرگمهر', 'خود را به هوس نزدیك مكن كه خرد از تو روی برمی تابد.'),
(1932, 'سقراط', 'در دوستی درنگ كن، اما وقتی دوست شدی ثابت قدم و پایدار باش.'),
(1933, 'اشو', 'تنها انسان مرده تلاش می كند ثابت كند كه زنده است.'),
(1934, 'اونوره دو بالزاك', 'وقتی زنها دوستمان می دارند، ما را از هر لحاظ به دیده عقل می نگرند؛ حتی جنایات ما را. ولی وقتی علاقه ای به ما نداشته باشند، ارزشی برای فضایل مان نیز قایل نمی شوند.'),
(1935, 'مادر ترزا', 'كارهای ما چندان نیز بزرگ نیستند، تنها كاری كه از ما ساخته است، این است كه كارهای كوچك را با عشقی بزرگ انجام دهیم.'),
(1936, 'ابوالعلامعری', 'از مردم دور باش و تنها زندگی كن، نه به كسی ستم كن و نه بگذار كسی به تو ستم كند.'),
(1937, 'اُرد بزرگ', 'برای رسیدن به كامیابی نباید از شكست های پیشین خیلی ساده بگذرید، شناخت موشكافانه آنها، پیشرفت شما را در پی خواهد داشت.'),
(1938, 'بن بیكر', 'مردانی كه می كوشند زنها را درك كنند، فقط موفق می شوند با آنها ازدواج كنند.'),
(1939, 'حضرت محمد (ص)', 'كار اندكی كه با آگاهی همراه باشد، زیاد است و كار زیادی كه با نادانی همراه باشد، كم است.'),
(1940, 'اشو', 'این تو و فقط تویی كه مسئول آن چیزی هستی كه برایت پیش می آید.'),
(1941, 'مثل فرانسوی', 'خانه ات را برای ترساندن موش آتش مزن.'),
(1942, 'فرناندو پسوا', 'تنهایی رفتار مرا رقم می زند نه انسانها.'),
(1943, 'بنجامین فرانكلین', 'شما ممكن است تعلل كنید، اما زمان هرگز.'),
(1944, 'آنتونی رابینز', 'مردم در روابط خود، خواهان عشق هستند. عشق، به زندگی نیرو و رنگ و معنا می بخشد. هیچ عظمتی بدون عشقی بزرگ به دست نمی آید.'),
(1945, 'حضرت محمد (ص)', 'كسی كه صبح كند در حالی كه تمام فكر و تلاش او، پرهیزگاری باشد، سپس در میان روز، گناهی از او سر بزند، خداوند، گناهش را می¬¬آمرزد.'),
(1946, 'نیچه', 'گونه ای از نخوت در نیكی وجود دارد كه همانند بدی، موردی استثنایی است.'),
(1947, 'جان ازبورن', 'كامپیوتر همان انسان توسعه یافته است: هوشمند، اما بدون اخلاق.'),
(1948, 'فلورانس اسكاول شین', 'هرگز نگذارید كه آرزوی قلبی شما به بیماری قلبی بدل شود. زمانی كه بیش از اندازه چیزی را خواهانید، همه ی كشش خود را از دست می دهد.'),
(1949, 'وودرو ویلسون', 'دوستی، تنها پیوندی است كه می تواند همه ی دنیا را با هم نگاه دارد.'),
(1950, 'ناپلئون بناپارت', 'مردم از ترس شكست می بازند.'),
(1951, 'گاری كاسپارف', 'شطرنج، تنها اندوختن دانش نیست، بلكه یك بازی پویا و دینامیك است. هرگونه نتیجه گیری قطعی همواره موقت خواهد بود؛ حقیقت می بایست هر بار جداگانه به اثبات برسد.'),
(1952, 'حضرت محمد (ص)', 'به افراد مؤمن فقیر بشارت بده كه پانصد سال از ثروتمندان در روز قیامت (از حساب، زودتر) فارغ می¬شوند، این گروه (مؤمنان فقیر) در بهشت، مشغول (استفاده كردن) از نعمت¬ها هستند (ولی) ثروتمندان (هنوز) در محاسبه‌ی اعمال خود به سر می¬برند.'),
(1953, '؟', 'دنباله رو كسی نباش، اما از همه بیاموز.'),
(1954, 'امام علی (ع)', 'نفس خود را برای عبادت خداوندی رام و مطیع بسازید و حركت كنید به سوی خداوندی با اطاعتی كه شایسته‌ی اوست.'),
(1955, 'جورج كلاسرن', 'پولی را كه با زحمت و تلاش به دست آورده‌اید، به آسانی به كسی هدیه نكنید.'),
(1956, 'كارل ساگان', 'معجون قدرت عظیم و نادانی عظیم، فاجعه ای عظیم است.'),
(1957, 'ریچارد وگنر', 'شادی در چیزها نیست، در ماست.'),
(1958, 'لابرویر', 'اصیل بودن سعادت است، اما خوب است رفتار ما به گونه ای باشد كه نیاز به پرسش از اصل ما نباشد.'),
(1959, 'امام علی (ع)', 'كمیِ عائله (نان‌خور) یكی از دو توانگری است.'),
(1960, 'استیو چندلر', 'اگر بتوانیم خود را در زیر جریان جاری ترس كه مانند آبشاری بر سرمان می‌ریزد، بگذاریم، ترس‌مان با همان قطره‌های آب فرو می‌ریزد و با احساسی سرشار از یك انرژی بی‌مانند روبرو خواهیم شد.'),
(1961, 'چارلز شواب', 'شخصیت زیبا برای انسان در حكم عطر برای یك گل است.'),
(1962, 'مثل افریقائی', 'ممكن است دروغ یك سال بدود، راستی در یك روز از او جلو می افتد.'),
(1963, 'افلاطون', 'آن اصلی كه باید انسان را در راه رسیدن به یك زندگی باارزش و سعادتمند رهبری كند، نه نزدیكان و نه خویشان می توانند به كسی ببخشند و نه از ثروت و مال و مقام به دست می آید؛ بلكه تنها نیروی عشق است كه آن را پدید می آورد.'),
(1964, 'آنتوان دوسنت اگزوپری', 'فقط گامی كه به پیش برمی‌داریم، می‌تواند رهایی‌بخش باشد.'),
(1965, 'آرتور شوپنهاور', 'ما مردان هر گاه احساساتمان برانگیخته می شوند در اهمیت امور قدری اغراق می كنیم.'),
(1966, 'تئودور روزولت', 'همه‌ی منابع مورد نیاز ما در ذهن ماست.'),
(1967, 'حضرت محمد (ص)', 'كسی كه عملش او را به جایی نرساند (و نسبت به فضائل اخلاقی پیشرفت نكند) نسبش، او را در كارها، سرعت نمی‌بخشد. (زیرا فرزند كسی بودن، هیچ فضیلتی برای انسان ندارد.)'),
(1968, 'امام علی (ع)', 'كسی به بهشت داخل نمی‌شود، جز این‌كه پیشوایان الهی را بشناسد و آنان نیز او را بشناسند و كسی به دوزخ داخل نشود، جز این‌كه آنان را منكر و آنان نیز او را منكر شوند.'),
(1969, 'نیچه', 'در تمام دوران طولانی تاریخ بشر چیزی وحشتناك تر از احساس تنهایی وجود نداشته است.'),
(1970, 'شری كارتر اسكات', 'نمی توانید درسی را بیاموزید، مگر اینكه از آن آگاه شوید.'),
(1971, 'لئوناردو داوینچی', 'اگر پیوسته و بدون درنگ كار كنید، توان داوری خود را از دست می‌دهید.'),
(1972, 'زیگ زیگلار', 'هنگامی كه خسته می شوید، اگر پایبند باشید، نخستین اندیشه ای كه به ذهن تان می رسد، این است كه چگونه آن دشواری را از بین ببرید. ولی اگر پایبند نباشید، نخستین اندیشه ای كه به ذهن تان می رسد، این است كه چگونه از كار بگریزید.'),
(1973, 'فردریك كبیر', 'سیاست در ایجاد فرصت نیست، بلكه در استفاده از فرصت است.');
INSERT INTO `quotations` (`id`, `author`, `text`) VALUES
(1974, 'امام موسی (ع)', 'در قیامت سه كس در سایه‌ی عرش الهی باشند در روزی كه سایه‌ای به غیر آن نباشد: كسی كه برادر مسلمان خود را زنی بدهد و كسی كه خادمی به او بدهد و كسی كه راز او را پنهان دارد.'),
(1975, 'مثل آفریقائی', 'وجدان بد، انسان را ترسو بار می آورد.'),
(1976, 'ناشناس', 'خدا هرگز وعده آسمان همیشه آبی، مراتع همیشه سبز و قلب همیشه رها از رنجها را نداده است، بلكه او وعده عشق و محبت نامیرا و حضور وفادارانه و همدلانه خود را داده است.'),
(1977, 'حضرت محمد (ص)', 'توبه‌ی خالص، پشیمانی از گناه است و (آن توبه خالص)‌ هنگامی است كه وقتی از تو،‌ گناهی سر می¬زند، از خداوند، طلب بخشش كرده سپس به آن گناه اصلا ً‌بر نگردی.'),
(1978, 'اُرد بزرگ', 'اندیشه برتر در روزهای طوفانی و آشوب و در همان حال خموشی و آرامش، توانایی برتر خویش را از دست نمی دهد.'),
(1979, 'حضرت محمد (ص)', 'عادل‌ترین مردم كسی است كه از برای مردم بپسندد آنچه از برای خود می‌پسندد و از برای مردم نخواهد آنچه از برای خود نخواهد.'),
(1980, 'دیزریلی', 'بزرگترین نیكی شما در حق دیگران این نیست كه بخشی از ثروت خود را به آنها ببخشید، بلكه این است كه ثروتهای خودشان را بر آنان آشكار سازید.'),
(1981, '؟', 'فرق میان من و تو در شنیدن است؛ تو صدای بسته شدن در را می شنوی و من صدای باز شدن آن را.'),
(1982, 'ماریو بوتا', 'مصالح، دنیای خاص خود را دارند. با چگونگی قرار دادن آنها در كنار یكدیگر و نیز علایمی كه از طریق بافت و رنگ آنها به دست می‎آید، زبانی حاصل می ‎شود كه می‎تواند مكمل اندیشه و راهگشای معماری باشد.'),
(1983, 'آنتونی رابینز', 'اساساً ایمان عبارت از هر گونه اصل راهنما، باور، یقین و یا گرایش است كه به زندگی معنا بخشیده و به آن جهت می دهد.'),
(1984, 'اُرد بزرگ', 'شباهنگام برای خانواده و نزدیكانت نامه بنویس و در روز برای اربابان و سرپرستان.'),
(1985, 'دیل كارنگی', 'روزانه یك كار نیك انجام دهید و پس از انجام دادن یك كار خوب لبخند بزنید و شاهد لبخند دیگران باشید.'),
(1986, 'پائولو كوئیلو', 'ترس از رنج از خود رنج بدتر است.'),
(1987, 'حضرت محمد (ص)', '‌خوبی دنیا و آخرت با علم، و بدی دنیا و آخرت با نادانی،‌ همراه است.'),
(1988, 'نیچه', 'اگر دانش ما تا این اندازه به بی طرف بودن خود می نازد، از آن رو است كه جز كنجكاوی ناسالمِ ناتوانان چیز دیگری ندارد.'),
(1989, 'گوستاولوبون', 'مقام هر فرد در زندگی بسته به آنچه كه می داند نیست، بلكه بستگی دارد به آنچه كه می خواهد و آنچه كه می تواند.'),
(1990, 'ضرب المثل چینی', 'نمی توانیم كاری كنیم كه مرغان غم، بالای سرِ ما پرواز نكنند، اما می توانیم نگذاریم كه روی سرِ ما آشیانه بسازند.'),
(1991, 'اشو', 'بزرگسالان الگوی یادگیری كودكان هستند.'),
(1992, 'چارلز جی. گیونز', 'تكرار كاری كه بی‌نتیجه است، سبب بهتر انجام دادن آن نمی‌شود.'),
(1993, 'جیمز آلن', 'انسان نمی تواند به گونه ای مستقیم حوادث زندگی خودش را انتخاب كند، ولی می تواند افكار خود را انتخاب كند و با این عمل به طور غیر مستقیم، شكل حوادث زندگی خود را تعیین نماید.'),
(1994, 'نیچه', 'درك منظور دشوار است، به ویژه هر بار كه بسان رود كنگ بیندیشیم و میان انسانهایی زندگی كنیم كه دگرگونه می اندیشند و به شیوه "قورباغه ها" راه می روند.'),
(1995, 'حضرت محمد (ص)', 'حقیقتاً خداوند بزرگ، غیرت را برای زنان و جهاد را برای مردان قرار داده است. پس هر كدام از زنان بر ایمان خود، صبور باشند، مانند پاداش شهید، ثواب می‌برند.'),
(1996, 'ریكاردا هوخ', 'هنر در دسترس همگان قرار ندارد، اما رقص و موسیقی برای همگان هست.'),
(1997, 'آبراهام مازلو', 'اگر آدمی می‌خواهد به دیگران كمك كند، پسندیده‌ترین روش این است كه خود، انسان والاتری شود.'),
(1998, 'فرناندو پسوا', 'دور از ذهن ترین چیز در همه ی انسانها، بی اهمیت بودنشان در تمام عرصه هاست.'),
(1999, 'لودویگ وان بتهوون', 'موسیقی از فكر تراوش می كند و در قلب می نشیند.'),
(2000, 'گاندی', 'همان گونه كه گرما، اگر مهار شود، به انرِژی تبدیل می‌شود، خشم نیز در صورت مهار شدن می‌تواند به نیرویی مبدل گردد كه جهان را به لرزه درمی‌آورد.');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
`id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`) VALUES
(1, 'مدیر سایت'),
(2, 'منشی و پشتیبان تلفنی');

-- --------------------------------------------------------

--
-- Table structure for table `rolespermissions`
--

CREATE TABLE IF NOT EXISTS `rolespermissions` (
`id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL,
  `permissions_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rolespermissions`
--

INSERT INTO `rolespermissions` (`id`, `roles_id`, `permissions_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 14),
(4, 1, 3),
(5, 1, 32);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
`id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `adv_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `request_date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
`id` int(11) NOT NULL,
  `tag_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tags_blogs`
--

CREATE TABLE IF NOT EXISTS `tags_blogs` (
`id` int(11) NOT NULL,
  `tag_id` varchar(255) NOT NULL,
  `blogs_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
`id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `text`) VALUES
(1, '<p>This is my textarea to be replaced with CKEditor.iuyi</p>\n'),
(3, '<p>Ø³Ù„Ø§Ù…</p>\r\n'),
(4, '<blockquote>\n<p style="text-align: center;">This is my textarea to be replaced with CKEditor.Ø´ØµØ¨Ø´ØµØ¨Ø´ØµØ¨Ø´ØµØ¨Ø³ÛŒØ¨Ø³</p>\n</blockquote>\n\n<p style="text-align: center;">&nbsp;</p>\n\n<p><img alt="" src="/bakhti/upload/Screenshot from 2015-08-09 114357.png" style="height:60px; width:69px" /></p>\n'),
(5, '<h2 style="font-style:italic;">This is my textarea to b<span style="color:#006400">e replaced with CKEditor.</span></h2>\r\n'),
(6, '<p>This is my textarea to be replaced with CKEditor.</p>\r\n'),
(7, '<p>Ø³Ù„Ø§Ù…Ø³ÛŒØ¨ Ø³ÛŒØ¨Ø³ÛŒ</p>\r\n'),
(8, '<p style="text-align: left;">Ù„Ø³ÛŒÙ„ Ø³ÛŒÙ„</p>\r\n'),
(9, '<p>This is my textarea to be replaced with CKEditor.ftiftifti</p>\r\n'),
(10, '<p><img alt="" src="/bakhti/upload/sdf/ad.jpg" style="height:500px; width:889px" />This is my textarea to be replaced with CKEditor.</p>\n'),
(11, '<p>Ø³Ø¨Ø´Ø¨Ø´Ø³Ø¨</p>\r\n'),
(12, '<p><img alt="" src="/bakhti/upload/Screenshot from 2015-08-09 114357.png" style="height:691px; width:799px" />This is my textarea to be replaced with CKEditor.</p>\r\n'),
(13, '<p><img alt="" src="/talentyab/upload/Screenshot from 2015-08-09 114357.png" style="height:691px; width:799px" />This is my textarea to be replaced with CKEditor.</p>\n'),
(14, '<p>This is my textarea to be replaced with CKEditor.rherherh</p>\n'),
(15, '<p>sdfsdfsdfsdfsdfsdfsdfsdf</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `activation_code` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `soldiening_state` varchar(255) NOT NULL,
  `marriage_state` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `birthday` bigint(20) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `job_state` varchar(255) NOT NULL,
  `job_kind` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL,
  `province_id_2` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `about_me` text NOT NULL,
  `register_date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
 ADD PRIMARY KEY (`id`), ADD KEY `roles_id` (`roles_id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title_en` (`title_en`);

--
-- Indexes for table `blog_audience`
--
ALTER TABLE `blog_audience`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_keywords`
--
ALTER TABLE `blog_keywords`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `unique_index_keywords` (`blog_id`,`keyword`);

--
-- Indexes for table `blog_subject`
--
ALTER TABLE `blog_subject`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_type`
--
ALTER TABLE `blog_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b_a`
--
ALTER TABLE `b_a`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `unique_b_a` (`blog_id`,`audience_id`);

--
-- Indexes for table `b_s`
--
ALTER TABLE `b_s`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `unique_b_s` (`blog_id`,`subject_id`);

--
-- Indexes for table `b_t`
--
ALTER TABLE `b_t`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `unique_b_t` (`blog_id`,`type_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_user`
--
ALTER TABLE `favorite_user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `functions`
--
ALTER TABLE `functions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizes`
--
ALTER TABLE `quizes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quize_user`
--
ALTER TABLE `quize_user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rolespermissions`
--
ALTER TABLE `rolespermissions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_blogs`
--
ALTER TABLE `tags_blogs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `blog_audience`
--
ALTER TABLE `blog_audience`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `blog_keywords`
--
ALTER TABLE `blog_keywords`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `blog_subject`
--
ALTER TABLE `blog_subject`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `blog_type`
--
ALTER TABLE `blog_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `b_a`
--
ALTER TABLE `b_a`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `b_s`
--
ALTER TABLE `b_s`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `b_t`
--
ALTER TABLE `b_t`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `favorite_user`
--
ALTER TABLE `favorite_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `functions`
--
ALTER TABLE `functions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quizes`
--
ALTER TABLE `quizes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quize_user`
--
ALTER TABLE `quize_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2001;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rolespermissions`
--
ALTER TABLE `rolespermissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags_blogs`
--
ALTER TABLE `tags_blogs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
