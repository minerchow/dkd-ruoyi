-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2026-02-18 14:26:12
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
-- 表的结构 `tb_vending_machine`
--

CREATE TABLE `tb_vending_machine` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `inner_code` varchar(15) DEFAULT '000' COMMENT '设备编号',
  `channel_max_capacity` int(11) DEFAULT NULL COMMENT '设备容量',
  `node_id` int(11) NOT NULL COMMENT '点位Id',
  `addr` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `last_supply_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '上次补货时间',
  `business_type` int(11) NOT NULL COMMENT '商圈类型',
  `region_id` int(11) NOT NULL COMMENT '区域Id',
  `partner_id` int(11) NOT NULL COMMENT '合作商Id',
  `vm_type_id` int(11) NOT NULL DEFAULT '0' COMMENT '设备型号',
  `vm_status` int(11) NOT NULL DEFAULT '0' COMMENT '设备状态，0:未投放;1-运营;3-撤机',
  `running_status` varchar(100) DEFAULT NULL COMMENT '运行状态',
  `longitudes` double DEFAULT '0' COMMENT '经度',
  `latitude` double DEFAULT '0' COMMENT '维度',
  `client_id` varchar(50) DEFAULT NULL COMMENT '客户端连接Id,做emq认证用',
  `policy_id` bigint(20) DEFAULT NULL COMMENT '策略id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='设备表';

--
-- 转存表中的数据 `tb_vending_machine`
--

INSERT INTO `tb_vending_machine` (`id`, `inner_code`, `channel_max_capacity`, `node_id`, `addr`, `last_supply_time`, `business_type`, `region_id`, `partner_id`, `vm_type_id`, `vm_status`, `running_status`, `longitudes`, `latitude`, `client_id`, `policy_id`, `create_time`, `update_time`) VALUES
(80, 'A1000001', 10, 2, '顺义奥林匹克水上公园', '2023-03-22 00:00:00', 1, 3, 28, 1, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '70122567fcc13e7615e7239812c20448', 1, '2020-12-18 07:49:03', '2024-05-14 01:21:58'),
(86, 'aim5xu4I', 10, 2, '北京市海淀区西直门北大街32号', '2000-01-01 00:00:00', 2, 1, 1, 2, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '9d1d927b2651dba9f117a9801e7fd916', 1, '2020-12-18 02:39:22', '2024-05-14 01:24:53'),
(87, '5cy5BdUs', 10, 2, '北京市海淀区西直门北大街32号', '2022-12-05 00:00:00', 2, 1, 1, 2, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, 'fdf33db4de889d6c31fe6351a7333072', 2, '2020-12-18 02:39:22', '2024-05-12 15:19:10'),
(88, 'tCeiyxLx', 10, 1, '北京市昌平区建材城西路22号', '2000-01-01 00:00:00', 2, 1, 1, 1, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '0805f7585e4366b021268f8850d1e091', 1, '2020-09-10 01:41:02', '2024-05-14 01:24:55'),
(89, 'bR1cfQRa', 10, 2, '北京市海淀区西直门北大街32号', '2000-01-01 00:00:00', 2, 1, 1, 2, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, 'e4e02a07b11865bf262afb5d4507e7b3', 1, '2020-12-18 02:39:22', '2024-05-14 01:24:56'),
(90, 'RhLWjaeR', 10, 1, '北京市昌平区建材城西路22号', '2000-01-01 00:00:00', 2, 1, 1, 1, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '0cc9e22badf6a0f41b5fad2c8b788fcd', 2, '2020-09-10 01:41:02', '2024-05-14 01:25:07'),
(91, 'qUObmvbM', 10, 2, '北京市海淀区西直门北大街32号', '2022-12-06 00:00:00', 2, 1, 1, 2, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '34a1779725b4e06edd7cac8a518474f1', 2, '2020-12-18 02:39:22', '2024-05-14 01:25:11'),
(92, 'tU6K5IHg', 10, 1, '北京市昌平区建材城西路22号', '2000-01-01 00:00:00', 2, 1, 1, 2, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, 'fbb7f7c0bfd38785866844f983b3a887', 5, '2020-09-10 01:41:02', '2024-05-14 01:25:14'),
(93, 'iSzMcQXJ', 10, 1, '北京市昌平区建材城西路22号', '2000-01-01 00:00:00', 2, 1, 1, 1, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '7c6f5ad6edd6e161d6ca8b94d0324fe5', 2, '2020-09-10 01:41:02', '2024-05-14 01:25:19'),
(105, 'nf2UVwi5', 8, 2, '北京顺义区国际鲜花港', '2000-01-01 00:00:00', 1, 3, 1, 4, 0, NULL, 0, 0, NULL, NULL, '2020-12-18 07:48:13', '2024-05-13 10:47:32'),
(106, 'vWgqPhpu', 10, 1, '北京市昌平区建材城西路22号', '2024-05-18 15:26:37', 2, 1, 1, 1, 1, NULL, 0, 0, NULL, NULL, '2020-09-10 01:41:02', '2024-05-12 15:20:41'),
(107, 'SFNuCUe8', 8, 1, '北京市昌平区建材城西路22号', '2000-01-01 00:00:00', 2, 1, 1, 4, 0, NULL, 0, 0, NULL, NULL, '2020-09-10 01:41:02', '2024-05-12 15:20:41'),
(111, 'K6YYXHLY', 10, 2, '北京顺义区国际鲜花港', '2000-01-01 00:00:00', 1, 3, 1, 1, 0, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, NULL, NULL, '2020-12-18 07:48:13', '2024-05-19 07:32:27');

--
-- 转储表的索引
--

--
-- 表的索引 `tb_vending_machine`
--
ALTER TABLE `tb_vending_machine`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendingmachine_VmId_uindex` (`inner_code`),
  ADD KEY `vendingmachine_node_Id_fk` (`node_id`),
  ADD KEY `vendingmachine_vmtype_TypeId_fk` (`vm_type_id`),
  ADD KEY `policy_id` (`policy_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tb_vending_machine`
--
ALTER TABLE `tb_vending_machine`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=112;

--
-- 限制导出的表
--

--
-- 限制表 `tb_vending_machine`
--
ALTER TABLE `tb_vending_machine`
  ADD CONSTRAINT `tb_vending_machine_ibfk_1` FOREIGN KEY (`vm_type_id`) REFERENCES `tb_vm_type` (`id`),
  ADD CONSTRAINT `tb_vending_machine_ibfk_2` FOREIGN KEY (`node_id`) REFERENCES `tb_node` (`id`),
  ADD CONSTRAINT `tb_vending_machine_ibfk_3` FOREIGN KEY (`policy_id`) REFERENCES `tb_policy` (`policy_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
