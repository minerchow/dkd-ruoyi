-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2026-02-17 13:39:24
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
-- 表的结构 `tb_region`
--

CREATE TABLE `tb_region` (
  `id` int(11) NOT NULL COMMENT '主键id',
  `region_name` varchar(255) NOT NULL COMMENT '区域名称',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(64) DEFAULT NULL COMMENT '修改人',
  `remark` text COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='区域表';

--
-- 转存表中的数据 `tb_region`
--

INSERT INTO `tb_region` (`id`, `region_name`, `create_time`, `update_time`, `create_by`, `update_by`, `remark`) VALUES
(1, '北京市朝阳区', '2026-02-16 09:08:45', '2026-02-16 09:08:45', NULL, NULL, '北京市朝阳区'),
(2, '北京市海淀区', '2026-02-16 09:08:45', '2026-02-16 09:08:45', NULL, NULL, '北京市海淀区'),
(3, '北京市东城区', '2026-02-16 09:08:45', '2026-02-16 09:08:45', NULL, NULL, '北京市东城区'),
(4, '北京市北五区', '2026-02-16 13:54:47', '2026-02-16 13:54:47', NULL, NULL, '北京市北五区');

--
-- 转储表的索引
--

--
-- 表的索引 `tb_region`
--
ALTER TABLE `tb_region`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tb_region`
--
ALTER TABLE `tb_region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id', AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
