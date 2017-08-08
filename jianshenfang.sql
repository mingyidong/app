-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-07-25 10:47:36
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jianshenfang`
--

-- --------------------------------------------------------

--
-- 表的结构 `jss_account`
--

CREATE TABLE `jss_account` (
  `account_id` int(11) NOT NULL,
  `account_balance` decimal(10,0) DEFAULT '0',
  `account_available` tinyint(4) DEFAULT '0',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jss_account`
--

INSERT INTO `jss_account` (`account_id`, `account_balance`, `account_available`, `user_id`) VALUES
(1, '0', 0, 2);

-- --------------------------------------------------------

--
-- 表的结构 `jss_coach`
--

CREATE TABLE `jss_coach` (
  `coach_id` int(11) NOT NULL,
  `coach_name` varchar(30) DEFAULT NULL,
  `coach_password` char(32) NOT NULL,
  `coach_pic` varchar(50) DEFAULT NULL,
  `coach_age` tinyint(4) DEFAULT '0',
  `coach_gender` enum('男','女') DEFAULT NULL,
  `coach_tel` char(11) DEFAULT NULL,
  `coach_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jss_coach`
--

INSERT INTO `jss_coach` (`coach_id`, `coach_name`, `coach_password`, `coach_pic`, `coach_age`, `coach_gender`, `coach_tel`, `coach_description`) VALUES
(1, '廖盛宇', '123456', NULL, 30, '男', '13110090657', '帅，很帅'),
(2, '小明', '123456', NULL, 22, '男', '13110090657', '毕业于天津理工大学');

-- --------------------------------------------------------

--
-- 表的结构 `jss_coach_course`
--

CREATE TABLE `jss_coach_course` (
  `coach_course_id` int(11) NOT NULL,
  `coach_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jss_coach_course`
--

INSERT INTO `jss_coach_course` (`coach_course_id`, `coach_id`, `course_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `jss_course`
--

CREATE TABLE `jss_course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_description` text,
  `course_pic` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jss_course`
--

INSERT INTO `jss_course` (`course_id`, `course_name`, `course_description`, `course_pic`) VALUES
(1, '健美操', '健美操是一种有氧运动，特征是持续一定时间的、中低程度的全身运动，主要锻炼练习者的心肺功能，是有氧耐力素质的基础。 跳健美操有诸多好处，不仅能帮助我们有效的强身健体，而且还有减肥的功效，这种运动减肥方法集健美和健身于一体，特别适合女性，受到了广大女性同胞的喜爱。', NULL),
(2, '爵士舞', '爵士舞主要是追求愉快、活泼、有生气的一种舞蹈。它的特征是可自由自在的跳，不必像传统式的古典芭蕾必须局限於一种形式与遵守固有的姿态。利用曲膝，使身体重心更接近地面。保持重心低，使下肢具有弹性，而上半身的各关节则可保持松弛状态，并可迅速做出节拍上需求的动作，使得在动作上获取多样性的变化。', NULL),
(3, '踏板操', '踏板操，即在踏板上随着动感音乐(每分钟120拍左右)有节奏地上下舞动，进行健美操的动作和步伐。它具有健美操的所有特点，同时，由于大部分动作是在踏板上完成，所以能更有效地增强心肺功能及协调性。因其主要针对的部位是下肢和臀部，具有明显耗能减脂(一节课可以消耗1000~1500千卡热能)，提臀美腿，改善女性肌肉线条的功效。', NULL),
(4, '瑜伽·修身养性', '瑜伽姿势运用古老而易于掌握的技巧，改善人们生理、心理、情感和精神方面的能力，是一种达到身体、心灵与精神和谐统一的运动方式，包括调身的体位法、调息的呼吸法、调心的冥想法等，以达至身心的合一。', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `jss_courseprice`
--

CREATE TABLE `jss_courseprice` (
  `courseprice_id` int(11) NOT NULL,
  `courseprice_chargeway` varchar(50) DEFAULT NULL,
  `courseprice_unit` decimal(6,0) DEFAULT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jss_courseprice`
--

INSERT INTO `jss_courseprice` (`courseprice_id`, `courseprice_chargeway`, `courseprice_unit`, `course_id`) VALUES
(1, '次', '20', 1),
(2, '月', '500', 1),
(3, '季', '1500', 1),
(4, '次', '25', 2),
(5, '月', '600', 2),
(6, '季', '1600', 2),
(7, '次', '30', 3),
(8, '月', '800', 3),
(9, '季', '2199', 3),
(10, '次', '35', 4),
(11, '月', '900', 4),
(12, '季', '2500', 4);

-- --------------------------------------------------------

--
-- 表的结构 `jss_purchase`
--

CREATE TABLE `jss_purchase` (
  `purchase_id` int(11) NOT NULL,
  `purchase_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `purchase_money` decimal(5,0) NOT NULL,
  `purchase_comment` text,
  `purchase_attachement` varchar(200) DEFAULT NULL,
  `puchase_commenttime` timestamp NULL DEFAULT NULL,
  `purchase_score` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `jss_user`
--

CREATE TABLE `jss_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `user_gender` enum('男','女') DEFAULT NULL,
  `user_age` tinyint(4) DEFAULT NULL,
  `user_nickname` varchar(30) NOT NULL,
  `user_phone` varchar(11) NOT NULL,
  `user_email` varchar(20) NOT NULL,
  `user_pwd` char(32) DEFAULT NULL,
  `usertype_id` int(11) DEFAULT '0',
  `user_pic` varchar(100) NOT NULL DEFAULT '5.jpg',
  `user_idno` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jss_user`
--

INSERT INTO `jss_user` (`user_id`, `user_name`, `user_gender`, `user_age`, `user_nickname`, `user_phone`, `user_email`, `user_pwd`, `usertype_id`, `user_pic`, `user_idno`) VALUES
(2, '廖盛宇', '男', 22, '宇哥', '13110090657', '1312486172@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '5.jpg', '350702199512183018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jss_account`
--
ALTER TABLE `jss_account`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `jss_coach`
--
ALTER TABLE `jss_coach`
  ADD PRIMARY KEY (`coach_id`);

--
-- Indexes for table `jss_coach_course`
--
ALTER TABLE `jss_coach_course`
  ADD PRIMARY KEY (`coach_course_id`);

--
-- Indexes for table `jss_course`
--
ALTER TABLE `jss_course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `jss_courseprice`
--
ALTER TABLE `jss_courseprice`
  ADD PRIMARY KEY (`courseprice_id`);

--
-- Indexes for table `jss_purchase`
--
ALTER TABLE `jss_purchase`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `jss_user`
--
ALTER TABLE `jss_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_phone` (`user_phone`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD UNIQUE KEY `user_idno` (`user_idno`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `jss_account`
--
ALTER TABLE `jss_account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `jss_coach`
--
ALTER TABLE `jss_coach`
  MODIFY `coach_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `jss_coach_course`
--
ALTER TABLE `jss_coach_course`
  MODIFY `coach_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `jss_course`
--
ALTER TABLE `jss_course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `jss_courseprice`
--
ALTER TABLE `jss_courseprice`
  MODIFY `courseprice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `jss_user`
--
ALTER TABLE `jss_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
