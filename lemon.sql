-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-01-01 14:41:45
-- 服务器版本： 10.1.36-MariaDB
-- PHP 版本： 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `lemon`
--

-- --------------------------------------------------------

--
-- 表的结构 `carousel`
--

CREATE TABLE `carousel` (
  `cid` int(11) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `spot` varchar(50) DEFAULT NULL,
  `src` varchar(200) DEFAULT NULL,
  `lg_url` varchar(200) DEFAULT NULL,
  `md_url` varchar(200) DEFAULT NULL,
  `sm_url` varchar(200) DEFAULT NULL,
  `years` varchar(20) DEFAULT NULL,
  `day` char(1) DEFAULT NULL,
  `tip` varchar(50) DEFAULT NULL,
  `theme` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `carousel`
--

INSERT INTO `carousel` (`cid`, `country`, `spot`, `src`, `lg_url`, `md_url`, `sm_url`, `years`, `day`, `tip`, `theme`) VALUES
(1, '中国', '西藏', 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb01.png', 'http://127.0.0.1:3001/img/carousel/lb01_500x250.png', 'http://127.0.0.1:3001/img/carousel/sm_lb01.png', 'Nov.2018', '2', '来一场说走就走的旅行...', '人文'),
(2, '中国', '台湾', 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb02.png', 'http://127.0.0.1:3001/img/carousel/lb02_500x250.png', NULL, NULL, NULL, NULL, '美食'),
(3, NULL, NULL, 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb03.png', 'http://127.0.0.1:3001/img/carousel/lb03_500x250.png', NULL, NULL, NULL, NULL, '山水'),
(4, '法国', '巴黎', 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb04.png', 'http://127.0.0.1:3001/img/carousel/lb04_500x250.png', 'http://127.0.0.1:3001/img/carousel/sm_lb04.png', 'Nov.2016', '1', '我和你就像一座埃菲尔铁塔和爱琴海。', '休闲'),
(5, NULL, NULL, 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb05.png', 'http://127.0.0.1:3001/img/carousel/lb05_500x250.png', NULL, NULL, NULL, NULL, '美食'),
(6, '新加坡', NULL, 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb06.png', 'http://127.0.0.1:3001/img/carousel/lb06_500x250.png', NULL, NULL, NULL, NULL, '美食'),
(7, '尼泊尔', NULL, 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb07.png', 'http://127.0.0.1:3001/img/carousel/lb07_500x250.png', NULL, NULL, NULL, NULL, '休闲'),
(8, '中国', '青海', 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb08.png', 'http://127.0.0.1:3001/img/carousel/lb08_500x250.png', 'http://127.0.0.1:3001/img/carousel/sm_lb08.png', 'Nov.2017', '4', '生活就像一盒巧克力。', '山水'),
(9, '中国', '九寨沟', 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb09.png', 'http://127.0.0.1:3001/img/carousel/lb09_500x250.png', NULL, NULL, NULL, NULL, '山水'),
(10, '法国', '巴黎', 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb10.png', 'http://127.0.0.1:3001/img/carousel/lb10_500x250.png', NULL, NULL, NULL, NULL, '休闲'),
(11, '中国', '杭州', 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb11.png', 'http://127.0.0.1:3001/img/carousel/lb11_500x250.png', NULL, NULL, NULL, NULL, '人文'),
(12, '中国', '苏州', 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb12.png', 'http://127.0.0.1:3001/img/carousel/lb12_500x250.png', NULL, NULL, NULL, NULL, '人文'),
(13, '中国', '青海', 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb13.png', 'http://127.0.0.1:3001/img/carousel/lb13_500x250.png', NULL, NULL, NULL, NULL, '休闲'),
(14, '马来西亚', NULL, 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb14.png', 'http://127.0.0.1:3001/img/carousel/lb14_500x250.png', NULL, NULL, NULL, NULL, '海岛'),
(15, '新加坡', NULL, 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb15.png', 'http://127.0.0.1:3001/img/carousel/lb15_500x250.png', NULL, NULL, NULL, NULL, '休闲'),
(16, '尼泊尔', NULL, 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb16.png', 'http://127.0.0.1:3001/img/carousel/lb16_500x250.png', NULL, NULL, NULL, NULL, '人文'),
(17, NULL, NULL, 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb17.png', 'http://127.0.0.1:3001/img/carousel/lb17_500x250.png', 'http://127.0.0.1:3001/img/carousel/sm_lb17.png', 'Nov.2016', '2', '听说摩天轮的每个格子里都装满幸福...', '美食'),
(18, '日本', NULL, 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb18.png', 'http://127.0.0.1:3001/img/carousel/lb18_500x250.png', 'http://127.0.0.1:3001/img/carousel/sm_lb18.png', 'Nov.2018', '1', '是我选择了生活，而不是生活选择了我。', '美食'),
(19, '菲律宾', NULL, 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb19.png', 'http://127.0.0.1:3001/img/carousel/lb19_500x250.png', NULL, NULL, NULL, NULL, '海岛'),
(20, '日本', NULL, 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb20.png', 'http://127.0.0.1:3001/img/carousel/lb20_500x250.png', NULL, NULL, NULL, NULL, '人文'),
(21, '中国', '台湾', 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb21.png', 'http://127.0.0.1:3001/img/carousel/lb21_500x250.png', NULL, NULL, NULL, NULL, '海岛'),
(22, NULL, '西藏', 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb22.png', 'http://127.0.0.1:3001/img/carousel/lb22_500_250.png', NULL, NULL, NULL, NULL, '休闲'),
(23, '中国', '香港', 'http://127.0.0.1:3001/img/carousel/picture.png', 'http://127.0.0.1:3001/img/carousel/lb23.png', 'http://127.0.0.1:3001/img/carousel/lb23_500x250.png', NULL, NULL, NULL, NULL, '美食');

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE `comments` (
  `cid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `txt` varchar(200) DEFAULT NULL,
  `time` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`cid`, `uid`, `tid`, `sid`, `txt`, `time`) VALUES
(1, 2, 10, NULL, '\"??\"', 0),
(2, 3, 10, NULL, '?????', 0);

-- --------------------------------------------------------

--
-- 表的结构 `img`
--

CREATE TABLE `img` (
  `iid` int(11) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `iimg_170_240` varchar(80) DEFAULT NULL,
  `iimg_270_165` varchar(80) DEFAULT NULL,
  `iimg_380_220` varchar(80) DEFAULT NULL,
  `iimg_390_552` varchar(80) DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `theme` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `img`
--

INSERT INTO `img` (`iid`, `sid`, `iimg_170_240`, `iimg_270_165`, `iimg_380_220`, `iimg_390_552`, `season`, `theme`) VALUES
(1, 1, 'http://127.0.0.1:3001/img/170-240/china-emeishan01.png', 'http://127.0.0.1:3001/img/270-165/china-emeishan01.png', 'http://127.0.0.1:3001/img/380-220/china-emeishan01_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-emeishan01_390_552.png', 5, '山水'),
(2, 1, 'http://127.0.0.1:3001/img/170-240/china-emeishan02.png', 'http://127.0.0.1:3001/img/270-165/china-emeishan02.png', 'http://127.0.0.1:3001/img/380-220/china-emeishan02_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-emeishan02_390_552.png', 0, '人文'),
(3, 1, 'http://127.0.0.1:3001/img/170-240/china-emeishan03.png', 'http://127.0.0.1:3001/img/270-165/china-emeishan03.png', 'http://127.0.0.1:3001/img/380-220/china-emeishan03_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-emeishan03_390_552.png', 9, '美食'),
(4, 1, 'http://127.0.0.1:3001/img/170-240/china-emeishan04.png', 'http://127.0.0.1:3001/img/270-165/china-emeishan04.png', 'http://127.0.0.1:3001/img/380-220/china-emeishan04_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-emeishan04_390_552.png', 10, NULL),
(5, 1, 'http://127.0.0.1:3001/img/170-240/china-emeishan05.png', 'http://127.0.0.1:3001/img/270-165/china-emeishan05.png', 'http://127.0.0.1:3001/img/380-220/china-emeishan05_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-emeishan05_390_552.png', 3, NULL),
(6, 1, 'http://127.0.0.1:3001/img/170-240/china-emeishan06.png', 'http://127.0.0.1:3001/img/270-165/china-emeishan06.png', 'http://127.0.0.1:3001/img/380-220/china-emeishan06_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-emeishan06_390_552.png', 6, NULL),
(7, 2, 'http://127.0.0.1:3001/img/170-240/china-huangshan01.png', 'http://127.0.0.1:3001/img/270-165/china-huangshan01.png', 'http://127.0.0.1:3001/img/380-220/china-huangshan01_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-huangshan01_390_552.png', 5, '山水'),
(8, 2, 'http://127.0.0.1:3001/img/170-240/china-huangshan02.png', 'http://127.0.0.1:3001/img/270-165/china-huangshan02.png', 'http://127.0.0.1:3001/img/380-220/china-huangshan02_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-huangshan02_390_552.png', 1, '人文'),
(9, 2, 'http://127.0.0.1:3001/img/170-240/china-huangshan03.png', 'http://127.0.0.1:3001/img/270-165/china-huangshan03.png', 'http://127.0.0.1:3001/img/380-220/china-huangshan03_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-huangshan03_390_552.png', 0, '美食'),
(10, 2, 'http://127.0.0.1:3001/img/170-240/china-huangshan04.png', 'http://127.0.0.1:3001/img/270-165/china-huangshan04.png', 'http://127.0.0.1:3001/img/380-220/china-huangshan04_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-huangshan04_390_552.png', 9, NULL),
(11, 2, 'http://127.0.0.1:3001/img/170-240/china-huangshan05.png', 'http://127.0.0.1:3001/img/270-165/china-huangshan05.png', 'http://127.0.0.1:3001/img/380-220/china-huangshan05_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-huangshan05_390_552.png', 10, NULL),
(12, 2, 'http://127.0.0.1:3001/img/170-240/china-huangshan06.png', 'http://127.0.0.1:3001/img/270-165/china-huangshan06.png', 'http://127.0.0.1:3001/img/380-220/china-huangshan06_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-huangshan06_390_552.png', 6, NULL),
(13, 3, 'http://127.0.0.1:3001/img/170-240/china-jiuzhaigou01.png', 'http://127.0.0.1:3001/img/270-165/china-jiuzhaigou01.png', 'http://127.0.0.1:3001/img/380-220/china-jiuzhaigou01_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-jiuzhaigou01_390_552.png', 5, '山水'),
(14, 3, 'http://127.0.0.1:3001/img/170-240/china-jiuzhaigou02.png', 'http://127.0.0.1:3001/img/270-165/china-jiuzhaigou02.png', 'http://127.0.0.1:3001/img/380-220/china-jiuzhaigou02_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-jiuzhaigou02_390_552.png', 2, '人文'),
(15, 3, 'http://127.0.0.1:3001/img/170-240/china-jiuzhaigou03.png', 'http://127.0.0.1:3001/img/270-165/china-jiuzhaigou03.png', 'http://127.0.0.1:3001/img/380-220/china-jiuzhaigou03_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-jiuzhaigou03_390_552.png', 0, NULL),
(16, 3, 'http://127.0.0.1:3001/img/170-240/china-jiuzhaigou04.png', 'http://127.0.0.1:3001/img/270-165/china-jiuzhaigou04.png', 'http://127.0.0.1:3001/img/380-220/china-jiuzhaigou04_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-jiuzhaigou04_390_552.png', 9, '美食'),
(17, 3, 'http://127.0.0.1:3001/img/170-240/china-jiuzhaigou05.png', 'http://127.0.0.1:3001/img/270-165/china-jiuzhaigou05.png', 'http://127.0.0.1:3001/img/380-220/china-jiuzhaigou05_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-jiuzhaigou05_390_552.png', 8, NULL),
(18, 3, 'http://127.0.0.1:3001/img/170-240/china-jiuzhaigou06.png', 'http://127.0.0.1:3001/img/270-165/china-jiuzhaigou06.png', 'http://127.0.0.1:3001/img/380-220/china-jiuzhaigou06_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-jiuzhaigou06_390_552.png', 6, NULL),
(19, 4, 'http://127.0.0.1:3001/img/170-240/china-qinghaihu01.png', 'http://127.0.0.1:3001/img/270-165/china-qinghaihu01.png', 'http://127.0.0.1:3001/img/380-220/china-qinghaihu01_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-qinghaihu01_390_552.png', 5, '山水'),
(20, 4, 'http://127.0.0.1:3001/img/170-240/china-qinghaihu02.png', 'http://127.0.0.1:3001/img/270-165/china-qinghaihu02.png', 'http://127.0.0.1:3001/img/380-220/china-qinghaihu02_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-qinghaihu02_390_552.png', 4, '美食'),
(21, 4, 'http://127.0.0.1:3001/img/170-240/china-qinghaihu03.png', 'http://127.0.0.1:3001/img/270-165/china-qinghaihu03.png', 'http://127.0.0.1:3001/img/380-220/china-qinghaihu03_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-qinghaihu03_390_552.png', 6, '人文'),
(22, 4, 'http://127.0.0.1:3001/img/170-240/china-qinghaihu04.png', 'http://127.0.0.1:3001/img/270-165/china-qinghaihu04.png', 'http://127.0.0.1:3001/img/380-220/china-qinghaihu04_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-qinghaihu04_390_552.png', 9, NULL),
(23, 4, 'http://127.0.0.1:3001/img/170-240/china-qinghaihu05.png', 'http://127.0.0.1:3001/img/270-165/china-qinghaihu05.png', 'http://127.0.0.1:3001/img/380-220/china-qinghaihu05_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-qinghaihu05_390_552.png', 8, NULL),
(24, 4, 'http://127.0.0.1:3001/img/170-240/china-qinghaihu06.png', 'http://127.0.0.1:3001/img/270-165/china-qinghaihu06.png', 'http://127.0.0.1:3001/img/380-220/china-qinghaihu06_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-qinghaihu06_390_552.png', 10, NULL),
(25, 5, 'http://127.0.0.1:3001/img/170-240/china-xizang01.png', 'http://127.0.0.1:3001/img/270-165/china-xizang01.png', 'http://127.0.0.1:3001/img/380-220/china-xizang01_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-xizang01_390_552.png', 0, NULL),
(26, 5, 'http://127.0.0.1:3001/img/170-240/china-xizang02.png', 'http://127.0.0.1:3001/img/270-165/china-xizang02.png', 'http://127.0.0.1:3001/img/380-220/china-xizang02_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-xizang02_390_552.png', 6, '人文'),
(27, 5, 'http://127.0.0.1:3001/img/170-240/china-xizang03.png', 'http://127.0.0.1:3001/img/270-165/china-xizang03.png', 'http://127.0.0.1:3001/img/380-220/china-xizang03_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-xizang03_390_552.png', 9, NULL),
(28, 5, 'http://127.0.0.1:3001/img/170-240/china-xizang04.png', 'http://127.0.0.1:3001/img/270-165/china-xizang04.png', 'http://127.0.0.1:3001/img/380-220/china-xizang04_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-xizang04_390_552.png', 10, '美食'),
(29, 5, 'http://127.0.0.1:3001/img/170-240/china-xizang05.png', 'http://127.0.0.1:3001/img/270-165/china-xizang05.png', 'http://127.0.0.1:3001/img/380-220/china-xizang05_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-xizang05_390_552.png', 8, NULL),
(30, 5, 'http://127.0.0.1:3001/img/170-240/china-xizang06.png', 'http://127.0.0.1:3001/img/270-165/china-xizang06.png', 'http://127.0.0.1:3001/img/380-220/china-xizang06_368_220.png', 'http://127.0.0.1:3001/img/390-552/china-xizang06_390_552.png', 5, NULL),
(31, 6, 'http://127.0.0.1:3001/img/170-240/tw_101.png', 'http://127.0.0.1:3001/img/270-165/tw_101.png', 'http://127.0.0.1:3001/img/380-220/tw_101_368_220.png', 'http://127.0.0.1:3001/img/390-552/tw_101.png', 0, '人文'),
(32, 6, 'http://127.0.0.1:3001/img/170-240/tw_gx.png', 'http://127.0.0.1:3001/img/270-165/tw_gx.png', 'http://127.0.0.1:3001/img/380-220/tw_gx368_220.png', 'http://127.0.0.1:3001/img/390-552/tw_gx.png', 1, '休闲'),
(33, 6, 'http://127.0.0.1:3001/img/170-240/tw_kd.png', 'http://127.0.0.1:3001/img/270-165/tw_kd.png', 'http://127.0.0.1:3001/img/380-220/tw_kd368_220.png', 'http://127.0.0.1:3001/img/390-552/tw_kd.png', 6, '美食'),
(34, 6, 'http://127.0.0.1:3001/img/170-240/tw_nh.png', 'http://127.0.0.1:3001/img/270-165/tw_nh.png', 'http://127.0.0.1:3001/img/380-220/tw_nh368_220.png', 'http://127.0.0.1:3001/img/390-552/tw_nh.png', 7, '海岛'),
(35, 6, 'http://127.0.0.1:3001/img/170-240/tw_xj.png', 'http://127.0.0.1:3001/img/270-165/tw_xj.png', 'http://127.0.0.1:3001/img/380-220/tw_xj368_220.png', 'http://127.0.0.1:3001/img/390-552/tw_xj.png', 9, NULL),
(36, 6, 'http://127.0.0.1:3001/img/170-240/tw-dbj.png', 'http://127.0.0.1:3001/img/270-165/tw-dbj.png', 'http://127.0.0.1:3001/img/380-220/tw-dbj368_220.png', 'http://127.0.0.1:3001/img/390-552/tw-dbj.png', 5, NULL),
(37, 7, 'http://127.0.0.1:3001/img/170-240/hg_fs.png', 'http://127.0.0.1:3001/img/270-165/hg_fs.png', 'http://127.0.0.1:3001/img/380-220/hg_fs368_220.png', 'http://127.0.0.1:3001/img/390-552/hg_fs.png', 1, NULL),
(38, 8, 'http://127.0.0.1:3001/img/170-240/hg_jjd.png', 'http://127.0.0.1:3001/img/270-165/hg_jjd.png', 'http://127.0.0.1:3001/img/380-220/hg_jjd368_220.png', 'http://127.0.0.1:3001/img/390-552/hg_jjd.png', 10, NULL),
(39, 9, 'http://127.0.0.1:3001/img/170-240/hg_jyd.png', 'http://127.0.0.1:3001/img/270-165/hg_jyd.png', 'http://127.0.0.1:3001/img/380-220/hg_jyd368_220.png', 'http://127.0.0.1:3001/img/390-552/hg_jyd.png', 5, '休闲'),
(40, 10, 'http://127.0.0.1:3001/img/170-240/hg_jzd.png', 'http://127.0.0.1:3001/img/270-165/hg_jzd.png', 'http://127.0.0.1:3001/img/380-220/hg_jzd368_220.png', 'http://127.0.0.1:3001/img/390-552/hg_jzd.png', 10, '海岛'),
(41, 11, 'http://127.0.0.1:3001/img/170-240/hg_rc.png', 'http://127.0.0.1:3001/img/270-165/hg_rc.png', 'http://127.0.0.1:3001/img/380-220/hg_rc368_220.png', 'http://127.0.0.1:3001/img/390-552/hg_rc.png', 4, NULL),
(42, 12, 'http://127.0.0.1:3001/img/170-240/hg_cd.png', 'http://127.0.0.1:3001/img/270-165/hg_cd.png', 'http://127.0.0.1:3001/img/380-220/hg_cd368_220.png', 'http://127.0.0.1:3001/img/390-552/hg_cd.png', 4, '海岛'),
(43, 13, 'http://127.0.0.1:3001/img/170-240/Malaysia01.png', 'http://127.0.0.1:3001/img/270-165/Malaysia01.png', 'http://127.0.0.1:3001/img/380-220/Malaysia01_368_220.png', 'http://127.0.0.1:3001/img/390-552/Malaysia01_390_552.png', 1, '休闲'),
(44, 13, 'http://127.0.0.1:3001/img/170-240/Malaysia02.png', 'http://127.0.0.1:3001/img/270-165/Malaysia02.png', 'http://127.0.0.1:3001/img/380-220/Malaysia02_368_220.png', 'http://127.0.0.1:3001/img/390-552/Malaysia02_390_552.png', 7, NULL),
(45, 13, 'http://127.0.0.1:3001/img/170-240/Malaysia03.png', 'http://127.0.0.1:3001/img/270-165/Malaysia03.png', 'http://127.0.0.1:3001/img/380-220/Malaysia03_368_220.png', 'http://127.0.0.1:3001/img/390-552/Malaysia03_390_552.png', 7, '海岛'),
(46, 13, 'http://127.0.0.1:3001/img/170-240/Malaysia04.png', 'http://127.0.0.1:3001/img/270-165/Malaysia04.png', 'http://127.0.0.1:3001/img/380-220/Malaysia04_368_220.png', 'http://127.0.0.1:3001/img/390-552/Malaysia04_390_552.png', 7, NULL),
(47, 13, 'http://127.0.0.1:3001/img/170-240/Malaysia05.png', 'http://127.0.0.1:3001/img/270-165/Malaysia05.png', 'http://127.0.0.1:3001/img/380-220/Malaysia05_368_220.png', 'http://127.0.0.1:3001/img/390-552/Malaysia05_390_552.png', 7, NULL),
(48, 13, 'http://127.0.0.1:3001/img/170-240/Malaysia06.png', 'http://127.0.0.1:3001/img/270-165/Malaysia06.png', 'http://127.0.0.1:3001/img/380-220/Malaysia06_368_220.png', 'http://127.0.0.1:3001/img/390-552/Malaysia06_390_552.png', 4, NULL),
(49, 14, 'http://127.0.0.1:3001/img/170-240/Nepal01.png', 'http://127.0.0.1:3001/img/270-165/Nepal01.png', 'http://127.0.0.1:3001/img/380-220/Nepal01_368_220.png', 'http://127.0.0.1:3001/img/390-552/Nepal01_390_552.png', 7, NULL),
(50, 14, 'http://127.0.0.1:3001/img/170-240/Nepal02.png', 'http://127.0.0.1:3001/img/270-165/Nepal02.png', 'http://127.0.0.1:3001/img/380-220/Nepal02_368_220.png', 'http://127.0.0.1:3001/img/390-552/Nepal02_390_552.png', 8, '休闲'),
(51, 14, 'http://127.0.0.1:3001/img/170-240/Nepal03.png', 'http://127.0.0.1:3001/img/270-165/Nepal03.png', 'http://127.0.0.1:3001/img/380-220/Nepal03_368_220.png', 'http://127.0.0.1:3001/img/390-552/Nepal03_390_552.png', 5, '山水'),
(52, 14, 'http://127.0.0.1:3001/img/170-240/Nepal04.png', 'http://127.0.0.1:3001/img/270-165/Nepal04.png', 'http://127.0.0.1:3001/img/380-220/Nepal04_368_220.png', 'http://127.0.0.1:3001/img/390-552/Nepal04_390_552.png', 1, NULL),
(53, 14, 'http://127.0.0.1:3001/img/170-240/Nepal05.png', 'http://127.0.0.1:3001/img/270-165/Nepal05.png', 'http://127.0.0.1:3001/img/380-220/Nepal05_368_220.png', 'http://127.0.0.1:3001/img/390-552/Nepal05_390_552.png', 11, NULL),
(54, 14, 'http://127.0.0.1:3001/img/170-240/Nepal06.png', 'http://127.0.0.1:3001/img/270-165/Nepal06.png', 'http://127.0.0.1:3001/img/380-220/Nepal06_368_220.png', 'http://127.0.0.1:3001/img/390-552/Nepal06_390_552.png', 4, NULL),
(55, 15, 'http://127.0.0.1:3001/img/170-240/Philippine01.png', 'http://127.0.0.1:3001/img/270-165/Philippine01.png', 'http://127.0.0.1:3001/img/380-220/Philippine01_368_220.png', 'http://127.0.0.1:3001/img/390-552/Philippine01_390_552.png', 1, NULL),
(56, 15, 'http://127.0.0.1:3001/img/170-240/Philippine02.png', 'http://127.0.0.1:3001/img/270-165/Philippine02.png', 'http://127.0.0.1:3001/img/380-220/Philippine02_368_220.png', 'http://127.0.0.1:3001/img/390-552/Philippine02_390_552.png', 8, NULL),
(57, 15, 'http://127.0.0.1:3001/img/170-240/Philippine03.png', 'http://127.0.0.1:3001/img/270-165/Philippine03.png', 'http://127.0.0.1:3001/img/380-220/Philippine03_368_220.png', 'http://127.0.0.1:3001/img/390-552/Philippine03_390_552.png', 11, NULL),
(58, 15, 'http://127.0.0.1:3001/img/170-240/Philippine04.png', 'http://127.0.0.1:3001/img/270-165/Philippine04.png', 'http://127.0.0.1:3001/img/380-220/Philippine04_368_220.png', 'http://127.0.0.1:3001/img/390-552/Philippine04_390_552.png', 0, '海岛'),
(59, 15, 'http://127.0.0.1:3001/img/170-240/Philippine05.png', 'http://127.0.0.1:3001/img/270-165/Philippine05.png', 'http://127.0.0.1:3001/img/380-220/Philippine05_368_220.png', 'http://127.0.0.1:3001/img/390-552/Philippine05_390_552.png', 11, '休闲'),
(60, 15, 'http://127.0.0.1:3001/img/170-240/Philippine06.png', 'http://127.0.0.1:3001/img/270-165/Philippine06.png', 'http://127.0.0.1:3001/img/380-220/Philippine06_368_220.png', 'http://127.0.0.1:3001/img/390-552/Philippine06_390_552.png', 8, NULL),
(61, 15, 'http://127.0.0.1:3001/img/170-240/Philippine07.png', 'http://127.0.0.1:3001/img/270-165/Philippine07.png', 'http://127.0.0.1:3001/img/380-220/Philippine07_368_220.png', 'http://127.0.0.1:3001/img/390-552/Philippine07_390_552.png', 4, NULL),
(62, 16, 'http://127.0.0.1:3001/img/170-240/rb_bhd.png', 'http://127.0.0.1:3001/img/270-165/rb_bhd.png', 'http://127.0.0.1:3001/img/380-220/rb_bhd368_220.png', 'http://127.0.0.1:3001/img/390-552/rb_bhd.png', 5, '山水'),
(63, 17, 'http://127.0.0.1:3001/img/170-240/rb_db.png', 'http://127.0.0.1:3001/img/270-165/rb_db.png', 'http://127.0.0.1:3001/img/380-220/rb_db368_220.png', 'http://127.0.0.1:3001/img/390-552/rb_db.png', 1, '休闲'),
(64, 18, 'http://127.0.0.1:3001/img/170-240/rb_jgs.png', 'http://127.0.0.1:3001/img/270-165/rb_jgs.png', 'http://127.0.0.1:3001/img/380-220/rb_jgs368_220.png', 'http://127.0.0.1:3001/img/390-552/rb_jgs.png', 2, NULL),
(65, 19, 'http://127.0.0.1:3001/img/170-240/rb_nl.png', 'http://127.0.0.1:3001/img/270-165/rb_nl.png', 'http://127.0.0.1:3001/img/380-220/rb_nl368_220.png', 'http://127.0.0.1:3001/img/390-552/rb_nl.png', 2, NULL),
(66, 20, 'http://127.0.0.1:3001/img/170-240/rb_yhdc.png', 'http://127.0.0.1:3001/img/270-165/rb_yhdc.png', 'http://127.0.0.1:3001/img/380-220/rb_yhdc368_220.png', 'http://127.0.0.1:3001/img/390-552/rb_yhdc.png', 2, NULL),
(67, 21, 'http://127.0.0.1:3001/img/170-240/rb_fss.png', 'http://127.0.0.1:3001/img/270-165/rb_fss.png', 'http://127.0.0.1:3001/img/380-220/rb_fss368_220.png', 'http://127.0.0.1:3001/img/390-552/rb_fss.png', 2, NULL),
(68, 22, 'http://127.0.0.1:3001/img/170-240/Singapore01.png', 'http://127.0.0.1:3001/img/270-165/Singapore02.png', 'http://127.0.0.1:3001/img/380-220/Singapore02_368_220.png', 'http://127.0.0.1:3001/img/390-552/Singapore02_390_552.png', 2, '山水'),
(69, 22, 'http://127.0.0.1:3001/img/170-240/Singapore02.png', 'http://127.0.0.1:3001/img/270-165/Singapore03.png', 'http://127.0.0.1:3001/img/380-220/Singapore03_368_220.png', 'http://127.0.0.1:3001/img/390-552/Singapore03_390_552.png', 11, NULL),
(70, 22, 'http://127.0.0.1:3001/img/170-240/Singapore03.png', 'http://127.0.0.1:3001/img/270-165/Singapore04.png', 'http://127.0.0.1:3001/img/380-220/Singapore04_368_220.png', 'http://127.0.0.1:3001/img/390-552/Singapore04_390_552.png', 10, NULL),
(71, 22, 'http://127.0.0.1:3001/img/170-240/Singapore04.png', 'http://127.0.0.1:3001/img/270-165/Singapore05.png', 'http://127.0.0.1:3001/img/380-220/Singapore05_368_220.png', 'http://127.0.0.1:3001/img/390-552/Singapore05_390_552.png', 11, NULL),
(72, 22, 'http://127.0.0.1:3001/img/170-240/Singapore05.png', 'http://127.0.0.1:3001/img/270-165/Singapore06.png', 'http://127.0.0.1:3001/img/380-220/Singapore06_368_220.png', 'http://127.0.0.1:3001/img/390-552/Singapore06_390_552.png', 5, NULL),
(73, 22, 'http://127.0.0.1:3001/img/170-240/Singapore06.png', 'http://127.0.0.1:3001/img/270-165/Singapore07.png', 'http://127.0.0.1:3001/img/380-220/Singapore07_368_220.png', 'http://127.0.0.1:3001/img/390-552/Singapore07_390_552.png', 11, '休闲'),
(74, 22, 'http://127.0.0.1:3001/img/170-240/Singapore07.png', 'http://127.0.0.1:3001/img/270-165/Singapore08.png', 'http://127.0.0.1:3001/img/380-220/Singapore08_368_220.png', 'http://127.0.0.1:3001/img/390-552/Singapore08_390_552.png', 4, NULL),
(75, 22, 'http://127.0.0.1:3001/img/170-240/Singapore08.png', 'http://127.0.0.1:3001/img/270-165/Singapore04.png', 'http://127.0.0.1:3001/img/380-220/Singapore04_368_220.png', 'http://127.0.0.1:3001/img/390-552/Singapore04_390_552.png', 3, NULL),
(76, 23, 'http://127.0.0.1:3001/img/170-240/tg_mg.png', 'http://127.0.0.1:3001/img/270-165/tg_mg.png', 'http://127.0.0.1:3001/img/380-220/tg_mg368_220.png', 'http://127.0.0.1:3001/img/390-552/tg_mg.png', 2, NULL),
(77, 24, 'http://127.0.0.1:3001/img/170-240/tg_pjd.png', 'http://127.0.0.1:3001/img/270-165/tg_pjd.png', 'http://127.0.0.1:3001/img/380-220/tg_pjd368_220.png', 'http://127.0.0.1:3001/img/390-552/tg_pjd.png', 3, '海岛'),
(78, 25, 'http://127.0.0.1:3001/img/170-240/tg_qms.png', 'http://127.0.0.1:3001/img/270-165/tg_qms.png', 'http://127.0.0.1:3001/img/380-220/tg_qms368_220.png', 'http://127.0.0.1:3001/img/390-552/tg_qms.png', 3, NULL),
(79, 26, 'http://127.0.0.1:3001/img/170-240/tg_dbly.png', 'http://127.0.0.1:3001/img/270-165/tg_dbly.png', 'http://127.0.0.1:3001/img/380-220/tg_dbly368_220.png', 'http://127.0.0.1:3001/img/390-552/tg_dbly.png', 3, '休闲'),
(80, 27, 'http://127.0.0.1:3001/img/170-240/tg_llgc.png', 'http://127.0.0.1:3001/img/270-165/tg_llgc.png', 'http://127.0.0.1:3001/img/380-220/tg_llgc368_220.png', 'http://127.0.0.1:3001/img/390-552/tg_llgc.png', 3, '休闲'),
(81, 28, 'http://127.0.0.1:3001/img/170-240/tg_bty.png', 'http://127.0.0.1:3001/img/270-165/tg_bty.png', 'http://127.0.0.1:3001/img/380-220/tg_bty368_220.png', 'http://127.0.0.1:3001/img/390-552/tg_bty.png', 3, '休闲');

-- --------------------------------------------------------

--
-- 表的结构 `logo_img`
--

CREATE TABLE `logo_img` (
  `logo_pid` int(11) NOT NULL,
  `img_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `logo_img`
--

INSERT INTO `logo_img` (`logo_pid`, `img_url`) VALUES
(1, 'http://127.0.0.1:3001/img/logo/lemon_logo_black.png'),
(2, 'http://127.0.0.1:3001/img/logo/lemon_logo_white.png');

-- --------------------------------------------------------

--
-- 表的结构 `pointer`
--

CREATE TABLE `pointer` (
  `pid` int(11) NOT NULL,
  `spot` varchar(50) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `Ttime` varchar(50) DEFAULT NULL,
  `tview` int(11) DEFAULT NULL,
  `zan` int(11) DEFAULT NULL,
  `totaltitle` varchar(50) DEFAULT NULL,
  `subtitle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pointer`
--

INSERT INTO `pointer` (`pid`, `spot`, `img`, `Ttime`, `tview`, `zan`, `totaltitle`, `subtitle`) VALUES
(1, '重庆', 'http://127.0.0.1:3001/img/chongqing_strategy/cm.jpg\n&http://127.0.0.1:3001/img/chongqing_strategy/cq_route2.png&http://127.0.0.1:3001/img/chongqing_strategy/cqk.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/nanbinglu.png&\nhttp://127.0.0.1:3001/img/cho', '2018-5-8', 355316, 2331, '重庆48h｜网红、艺术、市井全体验，山城这样玩才地道！', NULL),
(2, '香港', 'http://127.0.0.1:3001/img/chongqing_strategy/HongKong1.jpg\n&http://127.0.0.1:3001/img/chongqing_strategy/HongKong2.jpg\n&http://127.0.0.1:3001/img/chongqing_strategy/HongKong3.jpg', '2018-5-8', 355316, 2331, '我的2017# 二刷香港——“打个飞的去红馆看杨小姐演唱会！', NULL),
(3, '上海', 'http://127.0.0.1:3001/img/chongqing_strategy/Disney1.jpg\n&http://127.0.0.1:3001/img/chongqing_strategy/Disney2.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/Disney3.jpg', '2018-5-8', 355316, 2331, '上海迪士尼最全攻略！好吃好玩带娃必备！', NULL),
(4, '大阪', 'http://127.0.0.1:3001/img/chongqing_strategy/db1.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/db2.png&http://127.0.0.1:3001/img/chongqing_strategy/db3.jpg', '2018-5-8', 355316, 2331, '大阪经典2日玩法（含购物攻略）！', NULL),
(5, '北海道', 'http://127.0.0.1:3001/img/chongqing_strategy/cm.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/cq_route2.png&http://127.0.0.1:3001/img/chongqing_strategy/cqk.jpg', '2018-5-8', 355316, 2331, '没有樱花没有雪 秋天的北海道也挺美！', NULL),
(6, '美国大峡谷', 'http://127.0.0.1:3001/img/chongqing_strategy/America1.jpg\n&http://127.0.0.1:3001/img/chongqing_strategy/America2.jpg&http://127.0.0.1:3001/img/chongqing_strategy/America3.jpg', '2018-5-8', 355316, 2331, '美国大峡谷环线自驾：住宿优选！', NULL),
(7, '三亚', 'http://127.0.0.1:3001/img/chongqing_strategy/cm.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/cq_route2.png&http://127.0.0.1:3001/img/chongqing_strategy/cqk.jpg', '2018-5-8', 355316, 2331, '天堂大佛石全海景玻璃栈道，开启三亚新体验！', NULL),
(8, '香港', 'http://127.0.0.1:3001/img/chongqing_strategy/HongKong1.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/HongKong2.jpg&http://127.0.0.1:3001/img/chongqing_strategy/HongKong3.jpg', '2018-5-8', 355316, 2331, '香港美食地图，惊艳了味蕾的9家店！', NULL),
(9, '云南', 'http://127.0.0.1:3001/img/chongqing_strategy/yunnan1.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/yunnan2.jpg&http://127.0.0.1:3001/img/chongqing_strategy/yunnan3.jpg', '2018-5-8', 355316, 2331, '云南的天空，开出漫天的花（大理、丽江、泸沽湖、昆明）！', NULL),
(10, '重庆', 'http://127.0.0.1:3001/img/chongqing_strategy/cm.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/cq_route2.png&http://127.0.0.1:3001/img/chongqing_strategy/cqk.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/nanbinglu.png&\nhttp://127.0.0.1:3001/img/cho', '2018-5-8', 355316, 2331, '重庆48h｜网红、艺术、市井全体验，山城这样玩才地道！', NULL),
(11, '香港', 'http://127.0.0.1:3001/img/chongqing_strategy/HongKong1.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/HongKong2.jpg&http://127.0.0.1:3001/img/chongqing_strategy/HongKong3.jpg', '2018-5-8', 355316, 2331, '我的2017# 二刷香港——“打个飞的去红馆看杨小姐演唱会！', NULL),
(12, '上海', 'http://127.0.0.1:3001/img/chongqing_strategy/Disney1.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/Disney2.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/Disney3.jpg', '2018-5-8', 355316, 2331, '上海迪士尼最全攻略！好吃好玩带娃必备！', NULL),
(13, '大阪', 'http://127.0.0.1:3001/img/chongqing_strategy/db1.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/db2.png&http://127.0.0.1:3001/img/chongqing_strategy/db3.jpg', '2018-5-8', 355316, 2331, '大阪经典2日玩法（含购物攻略）！', NULL),
(14, '北海道', 'http://127.0.0.1:3001/img/chongqing_strategy/cm.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/cq_route2.png&http://127.0.0.1:3001/img/chongqing_strategy/cqk.jpg', '2018-5-8', 355316, 2331, '没有樱花没有雪 秋天的北海道也挺美！', NULL),
(15, '美国大峡谷', 'http://127.0.0.1:3001/img/chongqing_strategy/America1.jpg\n&http://127.0.0.1:3001/img/chongqing_strategy/America2.jpg\n&http://127.0.0.1:3001/img/chongqing_strategy/America3.jpg', '2018-5-8', 355316, 2331, '美国大峡谷环线自驾：住宿优选！', NULL),
(16, '三亚大佛石', 'http://127.0.0.1:3001/img/chongqing_strategy/cm.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/cq_route2.png&http://127.0.0.1:3001/img/chongqing_strategy/cqk.jpg', '2018-5-8', 355316, 2331, '天堂大佛石全海景玻璃栈道，开启三亚新体验！', NULL),
(17, '香港', 'http://127.0.0.1:3001/img/chongqing_strategy/HongKong1.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/HongKong2.jpg&http://127.0.0.1:3001/img/chongqing_strategy/HongKong3.jpg', '2018-5-8', 355316, 2331, '香港美食地图，惊艳了味蕾的9家店！', NULL),
(18, '云南', 'http://127.0.0.1:3001/img/chongqing_strategy/yunnan1.jpg&\nhttp://127.0.0.1:3001/img/chongqing_strategy/yunnan2.jpg&http://127.0.0.1:3001/img/chongqing_strategy/yunnan3.jpg', '2018-5-8', 355316, 2331, '云南的天空，开出漫天的花（大理、丽江、泸沽湖、昆明）！', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `spot`
--

CREATE TABLE `spot` (
  `sid` int(11) NOT NULL,
  `country` varchar(48) DEFAULT NULL,
  `spot` varchar(48) DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `click_rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `spot`
--

INSERT INTO `spot` (`sid`, `country`, `spot`, `hot`, `click_rate`) VALUES
(1, '中国', '峨眉山', 3, 1111),
(2, '中国', '黄山', 4, 1112),
(3, '中国', '九寨沟', 3, 1113),
(4, '中国', '青海湖', 2, 1114),
(5, '中国', '西藏', 5, 1115),
(6, '中国', '台湾', 5, 1114),
(7, '韩国', '釜山', 4, 1114),
(8, '韩国', '京畿道', 1, 1114),
(9, '韩国', '江原道', 2, 1114),
(10, '韩国', '济州岛', 3, 1118),
(11, '韩国', '仁川', 5, 1114),
(12, '韩国', '长岛', 4, 1119),
(13, '马来西亚', NULL, 1, 1120),
(14, '尼泊尔', NULL, 2, 1114),
(15, '菲律宾', NULL, 2, 1114),
(16, '日本', '北海道', 1, 1114),
(17, '日本', '大阪', 5, 1114),
(18, '日本', '金阁寺', 1, 1114),
(19, '日本', '奈良', 4, 1114),
(20, '日本', '宇和岛城', 3, 1121),
(21, '日本', '富士山', 4, 1114),
(22, '新加坡', NULL, 3, 1122),
(23, '泰国', '曼谷', 5, 1114),
(24, '泰国', '普吉岛', 2, 1123),
(25, '泰国', '清迈', 4, 1114),
(26, '泰国', '东芭乐园', 1, 1114),
(27, '泰国', '暹罗广场', 2, 1114),
(28, '泰国', '芭提雅', 3, 1114),
(29, '中国', '苏州', 5, 1110),
(30, '中国', '杭州', 5, 1110),
(31, '中国', '重庆', 5, 1110),
(32, '中国', '香港', 5, 1110),
(33, '中国', '成都', 5, 1110),
(34, '中国', '呼伦贝尔', 5, 1110),
(35, '中国', '哈尔滨', 5, 1110),
(36, '中国', '青岛', 5, 1110),
(37, '中国', '大连', 5, 1110),
(38, '中国', '云南', 5, 1110),
(39, '中国', '桂林', 5, 1110),
(40, '中国', '贵州', 5, 1110),
(41, '中国', '四姑娘山', 5, 1110),
(42, '中国', '泸沽湖', 5, 1110),
(43, '中国', '上海', 5, 1110);

-- --------------------------------------------------------

--
-- 表的结构 `travel`
--

CREATE TABLE `travel` (
  `tid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `spot` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `headerImg` varchar(100) DEFAULT NULL,
  `describle` varchar(100) DEFAULT NULL,
  `txt` text,
  `Ttime` bigint(15) DEFAULT NULL,
  `tview` int(11) DEFAULT NULL,
  `zan` int(11) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `travel`
--

INSERT INTO `travel` (`tid`, `uid`, `spot`, `title`, `headerImg`, `describle`, `txt`, `Ttime`, `tview`, `zan`, `comment`) VALUES
(9, 1, '成都', '一个人旅行的好处', 'http://127.0.0.1:3001/upload/1545889687725.png', '“在相当长的一段时间里，我都完全不知道应', '<p class=\"pl-3\">“在相当长的一段时间里，我都完全不知道应该如何进行一场孤身一人的旅行。从不知所措，到后来慢慢地被迫习惯，慢慢地学会接受，直到最后懂得喜爱。”\n\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/1545889606898730.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\">成都</span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">\n这是蔻蔻梁，在《如果你在就好了》序言里写的话。《如果你在就好了》最近一直在读的一本书，很别致独特的一本旅行随笔。\n\n\n\n很喜欢书封面上的那段话：一个人旅行最大的好处，是因为孤独所以被迫张开全身感官，与自己的感觉相伴，所以格外渴求地探索周围的世界。所有的神经末梢都膨胀得更为巨大。每一种情绪都自带了膨胀系数。这是一个对外界开放的状态，你想所有的陌生人和陌生事奉献出自己，以求获取某些神秘的共振这是和自己较劲的过程，赢了，就轻盈了。\n\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458896318895405.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\">成都</span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">每个人都有梦想，但在现实面前，敢于放弃物质生活去实现梦想的人可谓少之又少。她，蔻蔻梁，一个曾经的媒体“白骨精”，一个为工作打拼多年的姑娘，为了实现梦想，毅然放弃了眼前的康庄大道，辞职后只身挺进环球之旅。瑞士、法国、意大利、西班牙、葡萄牙、美国、墨西哥、马来西亚……在环游世界的过程中，她说：“我只想见证生命中的奇迹。”\n\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458896471615133.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\"></span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">如果说辞职，去旅行，是件非常疯狂的事，那么独自去旅行，更为疯狂添加了寂寞，但这两样交织起来并没有抹杀掉旅行的乐趣。蔻蔻梁拖着行李，一个人满世界跑跑停停，又孤单又美好， 因为一个人旅行，所以才能向整个陌生的世界敞开自己。她觉得每一个地方都会有个独特的妙人，每一段旅途都成就一个独特的故事。她在旅途中遇到真实版的里昂和马蒂达，遇到年老色衰的卡门，遇到怀念初恋的老人，遇到在垃圾堆里仰望星空的拾荒者……那些都是她和他们想象过的世界，谈论过的话题，现在她以一个人的方式抵达，无论喜怒哀乐，一回头，却都是无人分享的遗憾——然而其实哪怕不是旅行，哪怕只是在自己城市的时候，某个惬意或者内心安静的时刻，都会想起某个人，想对他说，hey，如果你在就好了。\n\n\n\n蔻蔻梁在书的序言中写到：“我在路上依然会有无数个时刻在喃喃自语：这个，他会喜欢；这个，要带她来看；这个，要告诉他，和她，还有它。到底有没有一种方式能把我旅程中的种种原封不动地带回来给你，当我归来开始诉说的时候，你到底能感受其中的多少。这依然是个难题，正因为有了这样的难题，才有了这本书。每一个爱我的，我爱的人，如果你在就好。”\n\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458896564849140.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\"></span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">《如果你在就好了》，一封旅途写就的情书，在旅途中，蔻蔻梁时刻保持着与寻常生活的距离，用别人的故事丰富自己的记忆，用别人的城市滋养自己的心灵。作为一个冷静而敏感的猎人，她用文字和感官捕捉异邦生活里稍纵即逝的灵光和曼妙时刻，只是为了把它们带回来与最亲爱的人共享。我想，这应该就是她旅行的意义所在吧。\n\n\n\n一次和一朋友聊天，偶然间提到这本书，我说，看完后，突然有种独自旅行的冲动，去陌生的地方走走看看，熟悉的地方没有风景。朋友听后，笑了笑，说到：“你要想，中国的古人，交通不便，通讯不便，过的却如此的精致，他们总能细致入微的从生活中发现意趣，即使在寒冬腊月，还饶有兴致地数九。在冬天来临前在宣纸上画上九朵梅花，每朵梅花有九瓣，每天描上一笔，待纸上的花开，春天也来了。古代视男女为大防，春天来临又是拜佛烧香的好日子，久居深闺的姑娘小姐们别提多开心了，她们拜的不是佛，而是自然天性的流露。所以风景不在远方，佛不在庙里，在心中。”\n\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458896670113183.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\"></span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">\n朋友的一席话如醍醐灌顶，让我一下子领悟到一些先前忽略的或是从未在意的一些东西。外面的风景，其实都一样，你只是去一个别人呆腻的地方。所谓风景，是因为你还没有看腻。陌生的地方，因为那里是陌生的，陌生的，就可以不必伪装不必掩饰，你在大街上大声嚷嚷吵吵闹闹没有形象没人认识你，你想做什么都没人管你，就算做了什么丢脸的事情，时间一到，买张回程票，这里的人也不会记得你，你便觉得那就是自由。也许这只能证明你平时活的太假，只能用旅游的机会去发泄自己。每天活的太累，忙忙碌碌不知道为了什么，想着出去走走，可以什么都不做，轻松又快活。你对自己的生活不满意，或者想要更多，现状满足不了你，想扔下一切什么都不管。可是心是不自由的，踏过各种名胜古迹，走遍世界又如何？\n\n\n\n其实旅行，不在于你走过多少路，或者去过了什么地方，而是你明白了什么。就算你走遍了全世界，还是一样没有弄懂，跟没有去过任何地方的人又有什么区别？所以哪怕只是在自己再熟悉不过的环境里走一遭，只是换个心情，以另一种眼光和姿态重新审视，观赏周围的一切，也会有不一样的感觉，有时还会有意外的惊喜。即使不去远行，但是只要带上旅行时的那份悠闲的无功利的心，甚至更高明的，淳朴的心加之旁观者的身份面对生活，那也是件很美的事情了。\n\n\n\n就像蔻蔻梁在一次采访中所说的：“其实只要心态对，那么楼下草坪里新开的小黄花也是美丽的。三条街以外的那个公园里也有美丽的小湖水。可我们往往忽视身边街巷的美好。你知道自己楼下那棵树是什么树吗？它什么时候发第一个春芽，会开怎样的花？这就是微距旅行。”\n\n </p>', 1545889694177, 759, 757, NULL),
(10, 2, '云南', '云南自由行', 'http://127.0.0.1:3001/upload/1545897685398.png', '我和老公上个月去的云南，玩了7天，去之前', '<p class=\"pl-3\">我和老公上个月去的云南，玩了7天，去之前在网上做了足够的功课，再加游完之后的感受和经验，总结分享给你，希望对你有帮助！\n\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458977995061761.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\">大理</span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\"></p><h5 class=\"h5 pl-3\" style=\"font-weight:bold;\">第一、云南不是一次就玩得转的，一定要有所取舍！</h5><p class=\"pl-3\">云南可以说是目前国内旅游资源最丰富的地方，好玩的地方很多，丽江、大理、昆明、西双版纳、泸沽湖、香格里拉、洱海、滇池、三大雪山、腾冲等，每个都是鼎鼎大名，美的冒泡！\n但是这些景点，每个的距离跨度都很大，比如：昆明到西双版纳537公里，昆明到泸沽湖540公里，如果行程和酒店没有合理安排好，会玩得特别累！\n\n\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458978138108493.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\">云南</span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\"></p><h5 class=\"h5 pl-3\" style=\"font-weight:bold;\">第二、第一次去云南，请导游是必须的，但必须慎重选择，黑导很多！</h5><p class=\"pl-3\">第一次去云南没有靠谱的导游带你玩，你就只能像只无头苍蝇一样到处乱撞，很难玩好，还会因为不熟路线走很多冤枉路！这点是做再多攻略都没用的，毕竟没有过去，攻略就成了纸上谈兵！\n但是也不要选择传统旅行社，四五十个人一团，游玩景点像赶鸭子一样。每天时间就花在购物上，坑钱套路又很多，体验感特别差！\n\n\n\n我去的时候，找的是云南当地导游—小芳，她为我们安排的自由行行程，包含酒店、门票、车辆、饮食等，我们都很满意 ，玩得超开心，她的微信号是： 16674205769 （长按复制），楼主你去的时候也可以找小芳，她会给你安排的非常好！\n\n\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458978287694823.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\">大理</span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\"></p><h5 class=\"h5 pl-3\" style=\"font-weight:bold;\">第三、行程、景点、出行用车、酒店要合理安排 </h5><p class=\"pl-3\">第一点说到过，云南的景点跨度很大，行程、景点、出行用车、酒店也是旅游中最重要的几个环节，这几点没有合理安排好，很破坏心情的，比如你要出门了发现没有车，酒店离景点特别远，三分之二的时间在路上，都玩不到什么精华景点了！\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458978493535707.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\">昆明</span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">小芳当时给我们安排的自由行行程和酒店是这样的，我觉得特别合理，你可以参考一下（包含了大理、丽江、香格里拉）：\n\nD1 天：到达丽江机场—小芳接机—入住酒店\nD2 天：拉市海—束河古镇—丽江古城—入住特色客栈\nD3 天：香格里拉普达措—藏家土司宴—入住特色客栈\nD4 天：龟山公园—独克宗古城—入住特色酒店\nD5 天：大理古城—洱海—入住五星级酒店\nD6 天：蝴蝶泉—崇圣寺三塔—市区闲逛—入住星级酒店\nD7 天：自由活动—小芳送机—返回\n\n\n\n </p>', 1545897873182, 742, 862, NULL),
(11, 3, '日本', '日本7日游', 'http://127.0.0.1:3001/upload/1545898254761.png', '早想去日本旅游，不想跟团游，又没做好自由', '<p class=\"pl-3\">早想去日本旅游，不想跟团游，又没做好自由行的心理准备，一直拖了下来。这次儿子提出可以与我们同行两天，于是壮了胆，与他们分别从上海和北京出发到东京羽田机场会合，开始了2018年4月13日到18日的东京、箱根、京东、大阪游。\n\n13日晚，下了飞机立即开启租用的随身ＷＩＦＩ，利用网络很顺利的与儿子联系上。住东京。\n\n\n </p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458982962172961.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\">东京的一角</span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\"></p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/154589832617245.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\">浅草寺</span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">14\n日，上午去地处东京市中心的著名古寺浅草寺。人很多，全世界黑、白、黄、褐，各种肤色汇杂的人群覆盖着不大的寺院。日本人也很多，我抱怨：他们本国人也在周末凑热闹。后来知道这些日本人也是利用周末的时间从外地来东京游览的。求签的人很多，大多是日本人。匆匆穿过人群一掠而过。\n\n好奇心驱使去看看那令中国政府十分反感的靖国神社。原来这是专门纪念日本有史以来为国捐躯的军人的地方，比起浅草寺，这里占地多但游人很少。其中有个比较大的展馆，一楼有二战期间的飞机大炮火车头和各种枪械、军事用品实物展，免费参观。二楼是个布展精细史料比较详实的展览，需要购票。全部展品用日、英两种文字标注，看不懂，只能看看年代，看看展品，看看镶进日文中的汉字。这是日本战争史，看到二战时期，心里总想起姥姥奶奶“跑鬼子”，总想起抗日的将士们。总体感觉展览中贯穿的是军人精神，没有看到对侵略战争的反思和检讨。\n\n中午在繁华的新宿吃鳗鱼饭，过了把吃生鱼片的瘾，然后去参观附近的谷歌公司东京办公室。\n\n据说谷歌公司把员工当独生子女供着，上班时间可以睡、可以吃，可以玩、此外这些“独生子女”们还可以带家人和朋友到公司里面参观，吃饭。今天是休息日，好多办公室不开，没看到传说中的各类休息室、游艺室、健身房、按摩室，餐厅等等，只看到几处自助小餐厅，各类小吃、水果、坚果、饮料、冰箱烤箱微波炉咖啡机一应俱全，还很体贴的把甜品和甜饮料放在隐秘的地方，“爱子之心”可见一斑。全世界的谷歌办公室都是这待遇，包括中国。幸福的“谷子”们！\n\n </p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458983474361665.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\">谷歌的东京办公室</span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">下午乘租来的商务车一个半小时到达日本的温泉之乡箱根，住进地处大山脚下的温泉酒店，真真的享受了一把日式生活：走进日式房间，换上和服，去日式餐厅吃地道的日本怀石料理，吃完饭去泡个日式室外温泉。\n\n吃饭过程是一道道艺术品的欣赏过程，每一道菜品精美得不忍下筷，甚至视觉干扰了味觉。吃到扶墙而出，又被引导到旁边的茶餐屋——还有饭后点心！可惜了这么诱人精美的小点心，如换作今天吃，其中的滋味才会肆意泛滥在口舌之间。\n\n \n \n\n </p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"blob:http://localhost:8080/f3195814-1188-4dd1-890c-3e0e4900a34d\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\">怀石料理</span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">\n泡温泉。真正来自大山之间的温泉水被引进用树、竹、花围成的小小的庭院里，夜空下温水中，顶着蒙蒙细雨，别有一番乐趣。夜来睡榻榻米，听风雨声，担心明天的行程。\n\n15\n日，天晴了。被雨水洗过的天、山和树一片清新，空气是甜的，每一片树叶都闪着亮光。乘小火车上山，红色小火车行驶在绿色树林间煞是好看，路过一个个车站，都小小的很有人情味，仿佛揣着无数离别的故事。\n\n </p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458984183745428.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\">箱根小火车站</span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">\n进了山发现这里会藏着这么多的内容，有很多好去处。用四个小时参观了箱根美术馆、雕刻美术馆和一个公园，有点骑驴看花的节奏。下午直奔东京羽田机场，儿子他们飞回北京上班，我们飞去大阪开始京都和大阪游。\n\n </p>', 1545898437708, 691, 801, NULL),
(12, 4, '巴厘岛', '云南人去巴厘岛旅游怎么玩？需要多少钱？奉上2018最新版巴厘岛半自由行攻略，第一次去巴厘岛必看！（图', 'http://127.0.0.1:3001/upload/1545899048413.png', '大家好，我是小婷，云南昆明人，喜欢旅行与', '<p class=\"pl-3\">大家好，我是小婷，云南昆明人，喜欢旅行与记录，去过的每一个地方，都喜欢记录下来，希望用我的文字，圆更多人的旅游梦！\n\n\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458989319096495.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\">苟富贵</span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">这次的巴厘岛之旅，可以说是“蓄谋已久”，和我以往的旅游方式不同！\n\n以前出去旅游，一般都是选择在旅行社跟团或者当地找旅游团，但是没有一次玩得开心的，逼迫购物、加点加自费不说，看个景点还赶鸭子上架，行程安排的又多，可精华景点少，全是为垃圾景点拉客！每次心里超级不爽又没办法！\n\n去年去丽江的时候，我也尝试过自助游，自己找攻略、定酒店、制行程，辛苦不说还意外倍出，不是到地方定的酒店没有了，就是景区排队买门票时间长（热门景点一般两小时），更重要的是在行程中，需要出发或者返程的时候，经常打不到车，在路边等车能等到让人发飙，旅行中美美的心情都没了！\n\n\n而这一次通过朋友介绍认识了云南本地做巴厘岛半自由行-小飞微信电话同号：18988433531 (复制加好友)，知道了一种叫“管家式自由行”的旅行方式，不用找攻略、不用定酒店，出国签证、出境资料、国外用车安排、出行安排，费用的预算等行程中任何细小的事情-小飞都会安排好，而且是巴厘岛本土导游，对巴厘岛非常熟悉，全程带我们玩，给我们讲解，做翻译，品尝当地最地道的特色美食，我们只需要欣赏美景和玩就行了！全程0自费、0购物点，这正是我想要与追寻已久的旅行方式，连男朋友这个处女座都对这次巴厘岛半自由行连连称赞！\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458989452315255.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\"></span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">\n%26gt;%26gt;我的行程概要（详细行程往下翻）\n\nD1 昆明长水国际机场 J 区集合-飞往巴厘岛\nD2 乌布皇宫外观—金巴兰海滩\nD3 蜜月湾—海龟岛—乌鲁瓦图情人崖\nD4 蓝梦—贝尼达双岛\nD5 全天自由活动\nD6 全天自由活动\n\nD7 海神庙—网红大秋千%2B鸟巢—库塔海滩%2B库塔洋人街\n%26gt;%26gt;关于费用（住宿/出行/美食）\n\n出发之前，我们对比很多种方式，网上的报团线路，7天5晚的一般价格在8000左右，不太敢定，想想都知道很多坑！后来找到小飞，对她的管家式自由行非常感兴趣，通过多次的沟通后，定了小飞为我们定制的巴厘岛7天5晚豪华套餐，6080元一价全含！包括接送、游玩全程交通、导游费用 、景点门票、5晚五星住宿、吃饭、小飞的服务费等，还有游艇费用都包含了的！\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458989506809479.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\"></span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">回来后自己小算了一下，如果自已玩，需要多少钱呢？\n门票：2000元\n住宿：5晚4星至少3000元，还不一定有房哦\n餐饮：2000元\n交通：1000元\n导游：800元\n游艇：800元（可能还订不到）\n自己玩加起来要到8000以上了，还是穷游，而小飞推荐的套餐即省心又省钱，最重要的是安排的住宿很有特色，都是很具巴厘岛特色的五星与海边酒店，上几张图你们感受一下，我和男朋友都表示满意，最重要的是自由度还高！\n\n你们想去巴厘岛也可以联系小飞—微信电话同号：18988433531 (复制加好友)\n\n\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458989565393788.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\"></span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">%26gt;%26gt;详细行程\n\n第一天：昆明长水国际机场集合\n\n我是从广州出发，晚上才到昆明机场！\n\n因为第一次出国，签证没经验，不知道怎么弄，在哪里弄，我和男友外语又都不好，一路担心了好久！\n\n还好有-小飞，原来去巴厘岛是不需要签证办理的！\n\n关于签证不知道怎么弄的朋友（除巴厘岛不需要），也可以咨询一下小飞，她人脉广，如果你落地签不想排队，她也可以让你走绿色通道，十来分钟就可以搞定！\n\n巴厘岛半自由行-小飞微信：18988433531 (复制加好友)\n\n备注：小飞平时挺忙的，这篇攻略放出她的联系方式也是为了帮助更多想要去巴厘岛的朋友，提供免费巴厘岛旅游咨询服务，但是她的精力有限，接待人数有限，请大家珍惜哦！\n\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458989662969420.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\"></span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">坐上飞机之后，一路开心的前往巴厘岛，\n\n\n\n第二天：乌布皇宫外观—金巴兰海滩\n\n据说巴厘岛人大多是爪哇印度教王室及其宫廷画师、乐师的后裔，故其艺术家的天赋再加上高贵的血 统，创造出了乌布皇宫这样的建筑精品\n\n我们早早的跟随小飞来到乌布皇宫，人没有想象中的多，我们不是跟大团，也没有具体的游玩时间，所以在里面走走停停，拍拍照，只-小飞讲诉乌布皇宫起源与历史，慢慢的被带入其中，离开之后还有点意犹未尽！\n\n游完乌布皇宫后，去乌布传统市场，乌布是巴厘岛绘画和艺术重镇，蜚声世界的艺术村。这里安祥美丽的田园风光和无处不在的艺术气息 令西方人感到新奇\n\n\n\n\n\n休息够了，后面我们就精力充沛的前往金巴兰海滩！\n\n它是世界上十大著名的落日美景之一金巴兰海滩！在这里一边欣赏落日的余辉，整个沙滩在西边，面临着浩翰的印度洋，在傍 晚时分的晚霞非常的美丽\n\nPS：晚上时，会有弹琴 的印尼民歌手来献唱\n\n真心的建议还是找小飞，巴厘岛本土人，对巴厘岛每个景点都了如指掌，你们大可以放心找她！\n\n巴厘岛半自由行-小飞微信：18988433531 (复制加好友)\n\n\n\n晚上如果累了可以回酒店休息，但是好不容易来次巴厘岛，我们还是不愿意错过悠扬的印尼民歌。\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458989744674806.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\"></span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">观看的过程中，小飞和我讲诉了好多关于印尼的故事，包括印尼的起源、历史由来、现状等，改观了我对印尼人的看法，内容太长，这里我就不多写了，有机会大家自由去亲身体验吧！\n\n\n\n第三天：蜜月湾—海龟岛—乌鲁瓦图情人崖\n\n今天我们准备前往蜜月湾，可把我男朋友给乐坏了！\n\n这一天行程，活动比较多，小飞会跟着我们，在我们有需要的时候提供帮助，让我们可以更加自由、随心所欲的去体检巴厘岛风情与文化！\n\n来趟海洋泛舟之旅、搭乘玻璃底船、刺激悬疑的斗鸡大赛、凄美的乌鲁瓦图情人崖等项目让我和男友流连忘返，一直玩到晚上才返回我们的海景酒店！\n\n这里重点和大家说下，小飞为我们定的海景房实在太棒了，打开窗就能看到海，出门就是沙滩，早上还能看日出！但是这样的房间很难订到，网上的大多户型不太好，大家一要提前找靠谱的人预定\n\n巴厘岛半自由行-小飞微信：18988433531 (复制加好友)\n\n\n\n\n\n第四天：蓝梦%2B贝尼达双岛一日游\n\n本次旅游的压轴来了！今天我们将搭乘快艇，前往巴厘岛最纯净的蓝梦岛，所以一大早我们就起来了，兴奋的睡不着！\n\n我一直很想坐快艇出海，小飞得知我的想法后还真帮我预定到了，船很新很豪华，可以放肆的里上面晒日光浴、海钓，与鱼儿亲密接触！玩累了就去体验当地古法按摩，缓解几天的疲劳。\n\nPS：快艇是小飞的独家资源，自助游的跟团是预定不到的，如果有想体验的朋友可以咨询小飞\n</p><div>\n                            <div class=\" d-flex flex-column justify-content-center item\">\n                                <div class=\"position-relative text-center mb-3 m-auto\" data-target=\"inserted\">\n                                <img src=\"http://127.0.0.1:3001/upload/15458989808622722.jpg\" alt=\"\">\n                                    \n                                </div>\n                                <div class=\"m-auto border-bottom\">\n                                    <span class=\"text-info p-2 iconfont icon-tubiao\"></span>\n                                    <span class=\"p-2\" style=\"height:24px\"></span>\n                                </div> \n                                <!-- <div class=\"position-absolute w-100 h-100 border master\" style=\"top:0;left:0;background: rgba(0,0,0,0.3)\">\n                                    123\n                                </div> -->\n                            </div>\n                        </div><p class=\"pl-3\">巴厘岛半自由行-小飞微信：18988433531 (复制加好友)\n\n\n\n来巴厘岛，蓝梦岛庄之旅、海藻田,最高峰拍照留念, 欣赏蓝梦岛全景、情人桥都是必须去的\n\n\n\n第五天：全天自由活动\n\n全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受 热带的南洋风情， 或远离尘嚣自由行，享受大自然赋予的乐趣。\n\n到了夜晚，我让小飞带我去了免税店和网红火车夜市，准备买买买，给亲朋好友带伴手礼！\n\n\n\n\n\n第六天：全天自由活动\n\n最后两天了，我们抓紧时间到处拍照留念！\n\n\n\n\n\n感谢小飞为我们拍的照片，这个人美心善的妹子，拍照技术还这么好，简直就是一个多啦A梦，处处给我们惊喜！\n\n巴厘岛半自由行\n\n第七天：海神庙→网红大秋千%2B鸟巢—库塔海滩%2B库塔洋人街\n\n接着来到巴厘岛高逼格的高空秋千和鸟巢，有人专程为了拍一张类似的照片不远万里来到巴厘岛，在半裸荡高空秋千的照片，脚下是郁郁葱葱的热带丛林，不远处的山脉间薄雾缭绕，这人这景让众多少 少花痴不已\n\n\n\n%26gt;%26gt;巴厘岛游后感\n\n回来之后，身边的很多朋友受我的感染都想去巴厘岛，我同样的把小飞介绍给他们，其中很多人会问我：“你这么会玩，为什么还要找人啊？”\n\n原因很简单，我想让我的行程更简单、更轻松，我不用花太多的时间去想酒店的预定、用车的安排、出行的安排，费用的预算，我想的旅行，就是我轻轻松松的去玩，其它的锁事儿，有靠谱的人安排就行！相信你们也很想要这么一个人陪你一起旅行，而小飞就是这么一个人——\n\n1、根据我的想法帮我做好线路定制，安排好行车、酒店、特色饮食等\n2、提供全面的护照、出入境、签证等免费咨询，对第一次出国的人很有帮助\n3、关于要买票的景点，提前帮我们预定好，节约排队时间\n4、提供免费接送服务，行程自由，不赶鸭子上架\n5、小飞安排的巴厘岛管家式导游，专业、口碑好\n6、属于自由行，行程自由，想去哪就去哪，轻松自在\n7、美，人长得特美（颜值控没办法）\n\n我贴出巴厘岛半自由行小飞的微信给大家，你们去巴厘岛，一定要找她：\n\n微信电话同号：15388835400（长按复制）\n\n（备注：小飞平时挺忙的，这篇攻略放出她的联系方式也是为了帮助更多想要去巴厘岛的朋友，提供免费巴厘岛旅游咨询服务，但是她的精力有限，接待人数有限，请大家珍惜哦！）\n\n好了，我的分享就到这里，曾有人说最美好的瞬间，莫过于回眸那一霎那，微微的一笑，便成了回忆里最温暖的存在，在巴厘岛，每一个瞬间都是与美的邂逅，如果你不信，那么你亲自来看吧！\n\n </p>', 1545899053254, 920, 642, NULL),
(13, 5, '台湾', '台湾快活游', 'http://127.0.0.1:3001/upload/1545899453101.png', '大家好，我是小婷，云南昆明人，喜欢旅行与', '<p class=\"pl-3\">大家好，我是小婷，云南昆明人，喜欢旅行与记录，去过的每一个地方，都喜欢记录下来，希望用我的文字，圆更多人的旅游梦！\n\n\n\n这次的巴厘岛之旅，可以说是“蓄谋已久”，和我以往的旅游方式不同！\n\n以前出去旅游，一般都是选择在旅行社跟团或者当地找旅游团，但是没有一次玩得开心的，逼迫购物、加点加自费不说，看个景点还赶鸭子上架，行程安排的又多，可精华景点少，全是为垃圾景点拉客！每次心里超级不爽又没办法！\n\n去年去丽江的时候，我也尝试过自助游，自己找攻略、定酒店、制行程，辛苦不说还意外倍出，不是到地方定的酒店没有了，就是景区排队买门票时间长（热门景点一般两小时），更重要的是在行程中，需要出发或者返程的时候，经常打不到车，在路边等车能等到让人发飙，旅行中美美的心情都没了！\n\n\n而这一次通过朋友介绍认识了云南本地做巴厘岛半自由行-小飞微信电话同号：18988433531 (复制加好友)，知道了一种叫“管家式自由行”的旅行方式，不用找攻略、不用定酒店，出国签证、出境资料、国外用车安排、出行安排，费用的预算等行程中任何细小的事情-小飞都会安排好，而且是巴厘岛本土导游，对巴厘岛非常熟悉，全程带我们玩，给我们讲解，做翻译，品尝当地最地道的特色美食，我们只需要欣赏美景和玩就行了！全程0自费、0购物点，这正是我想要与追寻已久的旅行方式，连男朋友这个处女座都对这次巴厘岛半自由行连连称赞！\n\n\n\n\n\n</p>', 1545899505929, 520, 510, NULL),
(14, 6, '丽江', '丽江双飞', 'http://127.0.0.1:3001/upload/1545899557375.png', '大家好，我是小婷，云南昆明人，喜欢旅行与', '<p class=\"pl-3\">大家好，我是小婷，云南昆明人，喜欢旅行与记录，去过的每一个地方，都喜欢记录下来，希望用我的文字，圆更多人的旅游梦！\n\n\n\n这次的巴厘岛之旅，可以说是“蓄谋已久”，和我以往的旅游方式不同！\n\n以前出去旅游，一般都是选择在旅行社跟团或者当地找旅游团，但是没有一次玩得开心的，逼迫购物、加点加自费不说，看个景点还赶鸭子上架，行程安排的又多，可精华景点少，全是为垃圾景点拉客！每次心里超级不爽又没办法！\n\n\n\n\n\n%26gt;%26gt;详细行程\n\n第一天：昆明长水国际机场集合\n\n\n\n\n它\n</p>', 1545899622818, 420, 454, NULL),
(15, 7, '青岛', '美丽青岛', 'http://127.0.0.1:3001/upload/1545899828057.png', '大家好，我是小婷，云南昆明人，喜欢旅行与', '<p class=\"pl-3\">大家好，我是小婷，云南昆明人，喜欢旅行与记录，去过的每一个地方，都喜欢记录下来，希望用我的文字，圆更多人的旅游梦！\n\n\n\n这次的巴厘岛之旅，可以说是“蓄谋已久”，和我以往的旅游方式不同！\n\n以前出去旅游，一般都是选择在旅行社跟团或者当地找旅游团，但是没有一次玩得开心的，逼迫购物、加点加自费不说，看个景点还赶鸭子上架，行程安排的又多，可精华景点少，全是为垃圾景点拉客！每次心里超级不爽又没办法！\n\n\n\n\n\n%26gt;%26gt;详细行程\n\n第一天：昆明长水国际机场集合\n\n\n\n\n它\n</p>', 1545899855780, 460, 453, NULL),
(16, 8, '北京', '北京吧啦吧啦吧', 'http://127.0.0.1:3001/upload/1545900032711.png', '大家好，我是小婷，云南昆明人，喜欢旅行与', '<p class=\"pl-3\">大家好，我是小婷，云南昆明人，喜欢旅行与记录，去过的每一个地方，都喜欢记录下来，希望用我的文字，圆更多人的旅游梦！\n\n\n\n这次的巴厘岛之旅，可以说是“蓄谋已久”，和我以往的旅游方式不同！\n\n以前出去旅游，一般都是选择在旅行社跟团或者当地找旅游团，但是没有一次玩得开心的，逼迫购物、加点加自费不说，看个景点还赶鸭子上架，行程安排的又多，可精华景点少，全是为垃圾景点拉客！每次心里超级不爽又没办法！\n\n\n\n\n\n%26gt;%26gt;详细行程\n\n第一天：昆明长水国际机场集合\n\n\n\n\n它\n</p>', 1545900089098, 500, 450, NULL),
(17, 9, '美国', '美国巴拉巴拉巴拉', 'http://127.0.0.1:3001/upload/1545900199799.png', '大家好，我是小婷，云南昆明人，喜欢旅行与', '<p class=\"pl-3\">大家好，我是小婷，云南昆明人，喜欢旅行与记录，去过的每一个地方，都喜欢记录下来，希望用我的文字，圆更多人的旅游梦！\n\n\n\n这次的巴厘岛之旅，可以说是“蓄谋已久”，和我以往的旅游方式不同！\n\n以前出去旅游，一般都是选择在旅行社跟团或者当地找旅游团，但是没有一次玩得开心的，逼迫购物、加点加自费不说，看个景点还赶鸭子上架，行程安排的又多，可精华景点少，全是为垃圾景点拉客！每次心里超级不爽又没办法！\n\n\n\n\n\n%26gt;%26gt;详细行程\n\n第一天：昆明长水国际机场集合\n\n\n\n\n它\n</p>', 1545900231754, 490, 420, NULL),
(18, 9, '泸沽湖', '泸沽湖巴拉巴拉', 'http://127.0.0.1:3001/upload/1545900332292.png', '大家好，我是小婷，云南昆明人，喜欢旅行与', '<p class=\"pl-3\">大家好，我是小婷，云南昆明人，喜欢旅行与记录，去过的每一个地方，都喜欢记录下来，希望用我的文字，圆更多人的旅游梦！\n\n\n\n这次的巴厘岛之旅，可以说是“蓄谋已久”，和我以往的旅游方式不同！\n\n以前出去旅游，一般都是选择在旅行社跟团或者当地找旅游团，但是没有一次玩得开心的，逼迫购物、加点加自费不说，看个景点还赶鸭子上架，行程安排的又多，可精华景点少，全是为垃圾景点拉客！每次心里超级不爽又没办法！\n\n\n\n\n\n%26gt;%26gt;详细行程\n\n第一天：昆明长水国际机场集合\n\n\n\n\n它\n</p>', 1545900353288, 491, 440, NULL),
(19, 10, '尼泊尔', '尼泊尔巴拉巴拉', 'http://127.0.0.1:3001/upload/1545901448600.png', '大家好，我是小婷，云南昆明人，喜欢旅行与', '<p class=\"pl-3\">大家好，我是小婷，云南昆明人，喜欢旅行与记录，去过的每一个地方，都喜欢记录下来，希望用我的文字，圆更多人的旅游梦！\n\n\n\n这次的巴厘岛之旅，可以说是“蓄谋已久”，和我以往的旅游方式不同！\n\n以前出去旅游，一般都是选择在旅行社跟团或者当地找旅游团，但是没有一次玩得开心的，逼迫购物、加点加自费不说，看个景点还赶鸭子上架，行程安排的又多，可精华景点少，全是为垃圾景点拉客！每次心里超级不爽又没办法！\n\n\n\n\n\n%26gt;%26gt;详细行程\n\n第一天：昆明长水国际机场集合\n\n\n\n\n它\n</p>', 1545901462265, 430, 410, NULL),
(20, 11, '巴黎', '巴黎巴拉巴拉', 'http://127.0.0.1:3001/upload/1545901532592.png', '大家好，我是小婷，云南昆明人，喜欢旅行与', '<p class=\"pl-3\">大家好，我是小婷，云南昆明人，喜欢旅行与记录，去过的每一个地方，都喜欢记录下来，希望用我的文字，圆更多人的旅游梦！\n\n\n\n这次的巴厘岛之旅，可以说是“蓄谋已久”，和我以往的旅游方式不同！\n\n以前出去旅游，一般都是选择在旅行社跟团或者当地找旅游团，但是没有一次玩得开心的，逼迫购物、加点加自费不说，看个景点还赶鸭子上架，行程安排的又多，可精华景点少，全是为垃圾景点拉客！每次心里超级不爽又没办法！\n\n\n\n\n\n%26gt;%26gt;详细行程\n\n第一天：昆明长水国际机场集合\n\n\n\n\n它\n</p>', 1545901548897, 433, 481, NULL),
(21, 12, '菲律宾', '菲律宾巴拉巴拉', 'http://127.0.0.1:3001/upload/1545901761075.png', '大家好，我是小婷，云南昆明人，喜欢旅行与', '<p class=\"pl-3\">大家好，我是小婷，云南昆明人，喜欢旅行与记录，去过的每一个地方，都喜欢记录下来，希望用我的文字，圆更多人的旅游梦！\n\n\n\n这次的巴厘岛之旅，可以说是“蓄谋已久”，和我以往的旅游方式不同！\n\n以前出去旅游，一般都是选择在旅行社跟团或者当地找旅游团，但是没有一次玩得开心的，逼迫购物、加点加自费不说，看个景点还赶鸭子上架，行程安排的又多，可精华景点少，全是为垃圾景点拉客！每次心里超级不爽又没办法！\n\n\n\n\n\n%26gt;%26gt;详细行程\n\n第一天：昆明长水国际机场集合\n\n\n\n\n它\n</p>', 1545901809424, 466, 444, NULL),
(22, 12, '杭州', '杭州巴拉巴拉', 'http://127.0.0.1:3001/upload/1545901867029.png', '大家好，我是小婷，云南昆明人，喜欢旅行与', '<p class=\"pl-3\">大家好，我是小婷，云南昆明人，喜欢旅行与记录，去过的每一个地方，都喜欢记录下来，希望用我的文字，圆更多人的旅游梦！\n\n\n\n这次的巴厘岛之旅，可以说是“蓄谋已久”，和我以往的旅游方式不同！\n\n以前出去旅游，一般都是选择在旅行社跟团或者当地找旅游团，但是没有一次玩得开心的，逼迫购物、加点加自费不说，看个景点还赶鸭子上架，行程安排的又多，可精华景点少，全是为垃圾景点拉客！每次心里超级不爽又没办法！\n\n\n\n\n\n%26gt;%26gt;详细行程\n\n第一天：昆明长水国际机场集合\n\n\n\n\n它\n</p>', 1545901889030, 411, 440, NULL),
(23, 12, '美国黄石公园', '黄石公园巴拉巴拉', 'http://127.0.0.1:3001/upload/1545901921485.png', '大家好，我是小婷，云南昆明人，喜欢旅行与', '<p class=\"pl-3\">大家好，我是小婷，云南昆明人，喜欢旅行与记录，去过的每一个地方，都喜欢记录下来，希望用我的文字，圆更多人的旅游梦！\n\n\n\n这次的巴厘岛之旅，可以说是“蓄谋已久”，和我以往的旅游方式不同！\n\n以前出去旅游，一般都是选择在旅行社跟团或者当地找旅游团，但是没有一次玩得开心的，逼迫购物、加点加自费不说，看个景点还赶鸭子上架，行程安排的又多，可精华景点少，全是为垃圾景点拉客！每次心里超级不爽又没办法！\n\n\n\n\n\n%26gt;%26gt;详细行程\n\n第一天：昆明长水国际机场集合\n\n\n\n\n它\n</p>', 1545901953239, 435, 456, NULL),
(24, 12, '贵阳', '贵阳巴拉巴拉', 'http://127.0.0.1:3001/upload/1545903086661.png', '三亚，是一座小旅兔向往已久的城市。想观赏', '<p class=\"pl-3\">三亚，是一座小旅兔向往已久的城市。想观赏那碧海蓝天、椰林婆娑的美景，想感受海风拂面、海浪拍打脚丫的轻柔，想和最爱的人一起看日出沧海和渔船归帆……这次，因参加百家号的“百家趣玩咖第3站•三亚Fun肆之旅”活动，小旅兔终于来到了心心念念的三亚。三亚，是一座小旅兔向往已久的城市。想观赏那碧海蓝天、椰林婆娑的美景，想感受海风拂面、海浪拍打脚丫的轻柔，想和最爱的人一起看日出沧海和渔船归帆……这次，因参加百家号的“百家趣玩咖第3站•三亚Fun肆之旅”活动，小旅兔终于来到了心心念念的三亚。三亚，是一座小旅兔向往已久的城市。想观赏那碧海蓝天、椰林婆娑的美景，想感受海风拂面、海浪拍打脚丫的轻柔，想和最爱的人一起看日出沧海和渔船归帆……这次，因参加百家号的“百家趣玩咖第3站•三亚Fun肆之旅”活动，小旅兔终于来到了心心念念的三亚。三亚，是一座小旅兔向往已久的城市。想观赏那碧海蓝天、椰林婆娑的美景，想感受海风拂面、海浪拍打脚丫的轻柔，想和最爱的人一起看日出沧海和渔船归帆……这次，因参加百家号的“百家趣玩咖第3站•三亚Fun肆之旅”活动，小旅兔终于来到了心心念念的三亚。三亚，是一座小旅兔向往已久的城市。想观赏那碧海蓝天、椰林婆娑的美景，想感受海风拂面、海浪拍打脚丫的轻柔，想和最爱的人一起看日出沧海和渔船归帆……这次，因参加百家号的“百家趣玩咖第3站•三亚Fun肆之旅”活动，小旅兔终于来到了心心念念的三亚。三亚，是一座小旅兔向往已久的城市。想观赏那心心念念的三亚。</p>', 1545903130618, 429, 412, NULL),
(25, 12, '深圳', '深圳巴拉巴拉', 'http://127.0.0.1:3001/upload/1545903139195.png', '三亚，是一座小旅兔向往已久的城市。想观赏', '<p class=\"pl-3\">三亚，是一座小旅兔向往已久的城市。想观赏那碧海蓝天、椰林婆娑的美景，想感受海风拂面、海浪拍打脚丫的轻柔，想和最爱的人一起看日出沧海和渔船归帆……这次，因参加百家号的“百家趣玩咖第3站•三亚Fun肆之旅”活动，小旅兔终于来到了心心念念的三亚。三亚，是一座小旅兔向往已久的城市。想观赏那碧海蓝天、椰林婆娑的美景，想感受海风拂面、海浪拍打脚丫的轻柔，想和最爱的人一起看日出沧海和渔船归帆……这次，因参加百家号的“百家趣玩咖第3站•三亚Fun肆之旅”活动，小旅兔终于来到了心心念念的三亚。三亚，是一座小旅兔向往已久的城市。想观赏那碧海蓝天、椰林婆娑的美景，想感受海风拂面、海浪拍打脚丫的轻柔，想和最爱的人一起看日出沧海和渔船归帆……这次，因参加百家号的“百家趣玩咖第3站•三亚Fun肆之旅”活动，小旅兔终于来到了心心念念的三亚。三亚，是一座小旅兔向往已久的城市。想观赏那碧海蓝天、椰林婆娑的美景，想感受海风拂面、海浪拍打脚丫的轻柔，想和最爱的人一起看日出沧海和渔船归帆……这次，因参加百家号的“百家趣玩咖第3站•三亚Fun肆之旅”活动，小旅兔终于来到了心心念念的三亚。</p>', 1545903156999, 123, 456, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(16) DEFAULT NULL,
  `upwd` varchar(16) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `profile` varchar(125) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `uname`, `upwd`, `phone`, `sex`, `email`, `vid`, `profile`) VALUES
(1, 'jack', 'aa123456', '13012345678', 1, 'jack@163.com', NULL, '我是jack'),
(2, '发动机开发', '123456', '13883129561', NULL, '123456@qq.com', NULL, NULL),
(3, NULL, '123456', NULL, NULL, '123450@qq.com', NULL, NULL),
(4, NULL, '123456', NULL, NULL, '123451@qq.com', NULL, NULL),
(5, NULL, '123456', NULL, NULL, '123452@qq.com', NULL, NULL),
(6, NULL, '123456', NULL, NULL, '123453@qq.com', NULL, NULL),
(7, NULL, '123456', NULL, NULL, '123454@qq.com', NULL, NULL),
(8, NULL, '123456', NULL, NULL, '123455@qq.com', NULL, NULL),
(9, NULL, '123456', NULL, NULL, '123457@qq.com', NULL, NULL),
(10, NULL, '123456', NULL, NULL, '123458@qq.com', NULL, NULL),
(11, NULL, '123456', NULL, NULL, '123459@qq.com', NULL, NULL),
(12, 'lily', '123456', NULL, NULL, '1234560@qq.com', NULL, NULL),
(13, '1234', '1qaz2wsx', '18888888888', 1, 'chenglei.1986@163.com', NULL, 'ewde');

-- --------------------------------------------------------

--
-- 表的结构 `zan`
--

CREATE TABLE `zan` (
  `zid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `zan`
--

INSERT INTO `zan` (`zid`, `uid`, `tid`, `sid`) VALUES
(12, 2, 20, NULL);

--
-- 转储表的索引
--

--
-- 表的索引 `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`cid`);

--
-- 表的索引 `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cid`);

--
-- 表的索引 `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`iid`);

--
-- 表的索引 `logo_img`
--
ALTER TABLE `logo_img`
  ADD PRIMARY KEY (`logo_pid`);

--
-- 表的索引 `pointer`
--
ALTER TABLE `pointer`
  ADD PRIMARY KEY (`pid`);

--
-- 表的索引 `spot`
--
ALTER TABLE `spot`
  ADD PRIMARY KEY (`sid`);

--
-- 表的索引 `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`tid`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- 表的索引 `zan`
--
ALTER TABLE `zan`
  ADD PRIMARY KEY (`zid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `carousel`
--
ALTER TABLE `carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用表AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `img`
--
ALTER TABLE `img`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- 使用表AUTO_INCREMENT `logo_img`
--
ALTER TABLE `logo_img`
  MODIFY `logo_pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `pointer`
--
ALTER TABLE `pointer`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `spot`
--
ALTER TABLE `spot`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- 使用表AUTO_INCREMENT `travel`
--
ALTER TABLE `travel`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `zan`
--
ALTER TABLE `zan`
  MODIFY `zid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
