-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2026-02-17 18:41:25
-- 服务器版本： 8.0.12
-- PHP 版本： 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `dkd`
--

-- --------------------------------------------------------

--
-- 表的结构 `tb_partner`
--

CREATE TABLE `tb_partner` (
  `id` int(11) NOT NULL COMMENT '主键id',
  `partner_name` varchar(255) NOT NULL COMMENT '合作商名称',
  `contact_person` varchar(64) DEFAULT NULL COMMENT '联系人',
  `contact_phone` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `profit_ratio` int(11) DEFAULT NULL COMMENT '分成比例',
  `account` varchar(64) DEFAULT NULL COMMENT '账号',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(64) DEFAULT NULL COMMENT '修改人',
  `remark` text COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='合作商表';

--
-- 转存表中的数据 `tb_partner`
--

INSERT INTO `tb_partner` (`id`, `partner_name`, `contact_person`, `contact_phone`, `profit_ratio`, `account`, `password`, `create_time`, `update_time`, `create_by`, `update_by`, `remark`) VALUES
(1, '合作商A', '张三', '13800138000', 30, 'a001', 'pwdA', '2026-02-16 09:08:45', '2026-02-16 09:08:45', NULL, NULL, NULL),
(2, '合作商B', '李四', '13912345678', 25, 'b002', 'pwdB', '2026-02-16 09:08:45', '2026-02-16 09:08:45', NULL, NULL, NULL),
(3, '合作商c', 'aaa', '13211122111', 10, 'admin', '$2a$10$c2MteD7SBlIQGkKu7CgV.O35EzCtc1y9DsTxWE4V/faTRsB4ySzJ2', '2026-02-17 07:27:53', '2026-02-17 07:27:53', NULL, NULL, NULL);

--
-- 转储表的索引
--

--
-- 表的索引 `tb_partner`
--
ALTER TABLE `tb_partner`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tb_partner`
--
ALTER TABLE `tb_partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id', AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
