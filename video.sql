-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-12-01 12:42:07
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `video`
--

-- --------------------------------------------------------

--
-- 表的结构 `scenic`
--

CREATE TABLE `scenic` (
  `ScenicId` int(11) NOT NULL,
  `BusinessName` text COLLATE utf8_bin NOT NULL,
  `Summary` text COLLATE utf8_bin NOT NULL,
  `DetailUrl` text COLLATE utf8_bin NOT NULL,
  `MainImage` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `scenic`
--

INSERT INTO `scenic` (`ScenicId`, `BusinessName`, `Summary`, `DetailUrl`, `MainImage`) VALUES
(1, '北京市奥林匹克公园', '北京奥林匹克公园位于北京市朝阳区，地处北京城中轴线北端，北至', 'http://weizhannew.fengjing.com/webapp/index.html#/scenic/564139?rs=3', 'http://shopmanager.fengjing.com/File/scenic/image/2017/1/24/20170124238916_h_c_s2.jpg'),
(2, '南昆山大观园生态旅游区', '景区配套设施齐全拥有酒店，餐饮，温泉欢乐水世界，国际会议中心', 'http://weizhannew.fengjing.com/webapp/index.html#/scenic/197?rs=3', 'http://shopmanager.fengjing.com/File/scenic/image/2015/11/28/20151128272695.jpg'),
(3, '香溪堡旅游区', '香溪堡详情游玩景点香溪堡香溪堡旅游区位于惠州市龙门县沙迳镇', 'http://weizhannew.fengjing.com/webapp/index.html#/scenic/205?rs=3', 'http://shopmanager.fengjing.com/File/scenic/image/2015/11/27/20151127176305.png');

-- --------------------------------------------------------

--
-- 表的结构 `scenic_detail`
--

CREATE TABLE `scenic_detail` (
  `ScenicId` int(11) NOT NULL,
  `BusinessId` int(11) NOT NULL,
  `ScenicName` text COLLATE utf8_bin NOT NULL,
  `Longitude` text COLLATE utf8_bin NOT NULL,
  `Latitude` text COLLATE utf8_bin NOT NULL,
  `Address` text COLLATE utf8_bin NOT NULL,
  `Summary` text COLLATE utf8_bin NOT NULL,
  `LinkNumber` text COLLATE utf8_bin NOT NULL,
  `Traffic` text COLLATE utf8_bin NOT NULL,
  `MapUrl` text COLLATE utf8_bin NOT NULL,
  `OpeningHours` text COLLATE utf8_bin NOT NULL,
  `ImageList` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `scenic_detail`
--

INSERT INTO `scenic_detail` (`ScenicId`, `BusinessId`, `ScenicName`, `Longitude`, `Latitude`, `Address`, `Summary`, `LinkNumber`, `Traffic`, `MapUrl`, `OpeningHours`, `ImageList`) VALUES
(1, 1, '北京市奥林匹克公园', '116.406719', '39.997669', '北京市朝阳区北辰东路15号', '北京奥林匹克公园位于北京市朝阳区，地处北京城中轴线北端，北至清河南岸，南至北土城路，东至安立路和北辰东路，西至林翠路和北辰西路。奥林匹克公园总占地面积11.59平方公里，分三个区域，北部是森林公园，占地6.8平方公里；中部是主要场馆和配套设施，占地3.15平方公里；南部是已建成场馆区和预留地，占地1.64平方公里。奥林匹克公园是城市传统中轴线的延伸，意喻中国千年历史文化的延续，集中体现了\\"科技、绿色、人文\\"三大理念，是融合了办公、商业、酒店、文化、体育、会议、居住多种功能的新型城市区域，区域内有完善的能源基础、四通八达的交通网络。', '010-84992008', '地铁： 共有3条地铁线路，分别是8号线、10号线和5号线。其中地铁8号线南起北土城，北至森林公园。设有北土城站、奥体中心站、奥林匹克公园站和森林公园站4个站点。 乘坐10号线到北土城站转乘8号线即可到达奥林匹克公园。地铁10号线起点为劲松站，终点为巴沟站，沿线经过了中心城的朝阳区、丰台区和海淀区，北连CBD，南接城市东南方向最重要的公共交通枢纽宋家庄公交枢纽，西连城市交通枢纽六里桥。乘坐10号线到北土城站转乘8号线即可到达奥林匹克公园。 地铁5号线南起丰台区宋家庄，北至昌平区天通苑。 公交： 乘839，510路北辰西桥北站下； 运通113，407，386，656，836快车，983空调车路线，753，740内外环，939，944支，944，660，689路北辰桥西站下； 328，379，419，425，484，518，628，751，836，851，913，949，963，运通110路洼里南口站下。', 'http://api.map.baidu.com/marker?location=39.997669,116.406719&title=北京市奥林匹克公园&content=北京市朝阳区北辰东路15号&output=html', '9:00-18:00', 'http://shopmanager.fengjing.com//File/scenic/image/2017/1/24/20170124238916_h_c.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `scenic`
--
ALTER TABLE `scenic`
  ADD PRIMARY KEY (`ScenicId`);

--
-- Indexes for table `scenic_detail`
--
ALTER TABLE `scenic_detail`
  ADD PRIMARY KEY (`ScenicId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
