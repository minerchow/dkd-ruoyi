-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2026-02-17 13:38:36
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
-- 表的结构 `tb_node`
--

CREATE TABLE `tb_node` (
  `id` int(11) NOT NULL COMMENT '主键id',
  `node_name` varchar(255) NOT NULL COMMENT '点位名称',
  `address` varchar(255) NOT NULL COMMENT '详细地址',
  `business_type` int(11) DEFAULT NULL COMMENT '商圈类型',
  `region_id` int(11) DEFAULT NULL COMMENT '区域ID',
  `partner_id` int(11) DEFAULT NULL COMMENT '合作商ID',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(64) DEFAULT NULL COMMENT '修改人',
  `remark` text COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='点位表';

--
-- 转存表中的数据 `tb_node`
--

INSERT INTO `tb_node` (`id`, `node_name`, `address`, `business_type`, `region_id`, `partner_id`, `create_time`, `update_time`, `create_by`, `update_by`, `remark`) VALUES
(1, '三里屯点位', '北京市朝阳区三里屯路', 1, 1, 1, '2026-02-16 09:08:45', '2026-02-16 09:08:45', NULL, NULL, NULL),
(2, '五道口点位', '北京市海淀区五道口', 2, 2, 2, '2026-02-16 09:08:45', '2026-02-16 09:08:45', NULL, NULL, NULL);

--
-- 转储表的索引
--

--
-- 表的索引 `tb_node`
--
ALTER TABLE `tb_node`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_id` (`region_id`),
  ADD KEY `partner_id` (`partner_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tb_node`
--
ALTER TABLE `tb_node`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id', AUTO_INCREMENT=3;

--
-- 限制导出的表
--

--
-- 限制表 `tb_node`
--
ALTER TABLE `tb_node`
  ADD CONSTRAINT `tb_node_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_node_ibfk_2` FOREIGN KEY (`partner_id`) REFERENCES `tb_partner` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
