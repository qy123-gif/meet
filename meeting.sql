/*
 Navicat Premium Data Transfer

 Source Server         : mysql8.0
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : meeting

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 19/10/2024 11:27:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin_log_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_log_xq`;
CREATE TABLE `t_admin_log_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT,
  `action_module_xq` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '操作模块',
  `action_user_id_xq` int(0) NOT NULL COMMENT '操作人id',
  `action_url_xq` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'url',
  `action_content_xq` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '请求参数',
  `action_type_xq` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '操作类型 查看 编辑 删除 新增',
  `action_ip_xq` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '操作ip',
  `action_time_xq` datetime(0) NOT NULL COMMENT '操作时间',
  `action_success_xq` tinyint(1) NOT NULL COMMENT '操作是否成功',
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `action_user_id`(`action_user_id_xq`) USING BTREE,
  CONSTRAINT `t_admin_log_xq_ibfk_1` FOREIGN KEY (`action_user_id_xq`) REFERENCES `t_users_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1880 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_admin_log_xq
-- ----------------------------
INSERT INTO `t_admin_log_xq` VALUES (1548, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-06 02:49:57', 1);
INSERT INTO `t_admin_log_xq` VALUES (1549, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 02:50:00', 1);
INSERT INTO `t_admin_log_xq` VALUES (1550, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 02:50:11', 1);
INSERT INTO `t_admin_log_xq` VALUES (1551, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 02:50:12', 1);
INSERT INTO `t_admin_log_xq` VALUES (1552, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 02:50:12', 1);
INSERT INTO `t_admin_log_xq` VALUES (1553, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 02:50:13', 1);
INSERT INTO `t_admin_log_xq` VALUES (1554, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 02:50:36', 1);
INSERT INTO `t_admin_log_xq` VALUES (1555, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 02:50:39', 1);
INSERT INTO `t_admin_log_xq` VALUES (1556, 'chatFilter', 1, '/chatFilter', '{\"filterContent\":\"sb\",\"filterRule\":1,\"id\":10,\"replaceContent\":\"**\"}', '新增', NULL, '2024-01-06 02:50:57', 1);
INSERT INTO `t_admin_log_xq` VALUES (1557, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 02:50:57', 1);
INSERT INTO `t_admin_log_xq` VALUES (1558, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 02:51:19', 1);
INSERT INTO `t_admin_log_xq` VALUES (1559, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 02:51:27', 1);
INSERT INTO `t_admin_log_xq` VALUES (1560, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 02:51:27', 1);
INSERT INTO `t_admin_log_xq` VALUES (1561, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 02:51:27', 1);
INSERT INTO `t_admin_log_xq` VALUES (1562, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 03:23:29', 1);
INSERT INTO `t_admin_log_xq` VALUES (1563, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-01-06 03:23:32', 1);
INSERT INTO `t_admin_log_xq` VALUES (1564, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 03:23:33', 1);
INSERT INTO `t_admin_log_xq` VALUES (1565, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 03:23:33', 1);
INSERT INTO `t_admin_log_xq` VALUES (1566, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 03:23:33', 1);
INSERT INTO `t_admin_log_xq` VALUES (1567, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 03:23:36', 1);
INSERT INTO `t_admin_log_xq` VALUES (1568, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-06 03:23:47', 1);
INSERT INTO `t_admin_log_xq` VALUES (1569, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 03:26:09', 1);
INSERT INTO `t_admin_log_xq` VALUES (1570, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-06 03:43:38', 1);
INSERT INTO `t_admin_log_xq` VALUES (1571, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 03:43:39', 1);
INSERT INTO `t_admin_log_xq` VALUES (1572, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 03:43:40', 1);
INSERT INTO `t_admin_log_xq` VALUES (1573, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 03:43:40', 1);
INSERT INTO `t_admin_log_xq` VALUES (1574, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 03:43:40', 1);
INSERT INTO `t_admin_log_xq` VALUES (1575, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-01-06 03:43:42', 1);
INSERT INTO `t_admin_log_xq` VALUES (1576, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 03:43:42', 1);
INSERT INTO `t_admin_log_xq` VALUES (1577, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 03:43:42', 1);
INSERT INTO `t_admin_log_xq` VALUES (1578, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 03:43:42', 1);
INSERT INTO `t_admin_log_xq` VALUES (1579, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 03:43:42', 1);
INSERT INTO `t_admin_log_xq` VALUES (1580, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 03:43:42', 1);
INSERT INTO `t_admin_log_xq` VALUES (1581, 'chatFilter', 1, '/chatFilter', '{\"filterContent\":\"mmp\",\"filterRule\":1,\"id\":11,\"replaceContent\":\"***\"}', '新增', NULL, '2024-01-06 03:44:06', 1);
INSERT INTO `t_admin_log_xq` VALUES (1582, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 03:44:06', 1);
INSERT INTO `t_admin_log_xq` VALUES (1583, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-06 03:58:15', 1);
INSERT INTO `t_admin_log_xq` VALUES (1584, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 03:58:15', 1);
INSERT INTO `t_admin_log_xq` VALUES (1585, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 03:58:17', 1);
INSERT INTO `t_admin_log_xq` VALUES (1586, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 03:58:18', 1);
INSERT INTO `t_admin_log_xq` VALUES (1587, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 03:58:18', 1);
INSERT INTO `t_admin_log_xq` VALUES (1588, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 03:58:19', 1);
INSERT INTO `t_admin_log_xq` VALUES (1589, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-01-06 03:58:20', 1);
INSERT INTO `t_admin_log_xq` VALUES (1590, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 03:58:20', 1);
INSERT INTO `t_admin_log_xq` VALUES (1591, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 03:58:20', 1);
INSERT INTO `t_admin_log_xq` VALUES (1592, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 03:58:20', 1);
INSERT INTO `t_admin_log_xq` VALUES (1593, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 03:58:21', 1);
INSERT INTO `t_admin_log_xq` VALUES (1594, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 03:58:21', 1);
INSERT INTO `t_admin_log_xq` VALUES (1595, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-06 03:58:21', 1);
INSERT INTO `t_admin_log_xq` VALUES (1596, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 03:58:22', 1);
INSERT INTO `t_admin_log_xq` VALUES (1597, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 03:58:22', 1);
INSERT INTO `t_admin_log_xq` VALUES (1598, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 03:58:22', 1);
INSERT INTO `t_admin_log_xq` VALUES (1599, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 03:58:22', 1);
INSERT INTO `t_admin_log_xq` VALUES (1600, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-01-06 03:58:24', 1);
INSERT INTO `t_admin_log_xq` VALUES (1601, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-06 03:58:25', 1);
INSERT INTO `t_admin_log_xq` VALUES (1602, 'user', 1, '/admins/users/53', '{\"email\":\"123456@qq.com\",\"id\":53,\"isAdmin\":false,\"name\":\"123456\",\"password\":\"\",\"telephone\":\"13522303650\",\"username\":\"鹏宇垣\"}', '编辑', NULL, '2024-01-06 03:58:53', 1);
INSERT INTO `t_admin_log_xq` VALUES (1603, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 03:58:57', 1);
INSERT INTO `t_admin_log_xq` VALUES (1604, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 03:59:01', 1);
INSERT INTO `t_admin_log_xq` VALUES (1605, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 03:59:03', 1);
INSERT INTO `t_admin_log_xq` VALUES (1606, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 03:59:03', 1);
INSERT INTO `t_admin_log_xq` VALUES (1607, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 03:59:03', 1);
INSERT INTO `t_admin_log_xq` VALUES (1608, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-01-06 03:59:06', 1);
INSERT INTO `t_admin_log_xq` VALUES (1609, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 03:59:07', 1);
INSERT INTO `t_admin_log_xq` VALUES (1610, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 03:59:07', 1);
INSERT INTO `t_admin_log_xq` VALUES (1611, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 03:59:07', 1);
INSERT INTO `t_admin_log_xq` VALUES (1612, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-06 03:59:08', 1);
INSERT INTO `t_admin_log_xq` VALUES (1613, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:15:21', 1);
INSERT INTO `t_admin_log_xq` VALUES (1614, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 04:15:26', 1);
INSERT INTO `t_admin_log_xq` VALUES (1615, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 04:15:26', 1);
INSERT INTO `t_admin_log_xq` VALUES (1616, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 04:15:26', 1);
INSERT INTO `t_admin_log_xq` VALUES (1617, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 04:15:26', 1);
INSERT INTO `t_admin_log_xq` VALUES (1618, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 04:15:28', 1);
INSERT INTO `t_admin_log_xq` VALUES (1619, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 04:15:28', 1);
INSERT INTO `t_admin_log_xq` VALUES (1620, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 04:15:28', 1);
INSERT INTO `t_admin_log_xq` VALUES (1621, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:15:28', 1);
INSERT INTO `t_admin_log_xq` VALUES (1622, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 04:15:28', 1);
INSERT INTO `t_admin_log_xq` VALUES (1623, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-06 04:15:29', 1);
INSERT INTO `t_admin_log_xq` VALUES (1624, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 04:15:29', 1);
INSERT INTO `t_admin_log_xq` VALUES (1625, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:15:30', 1);
INSERT INTO `t_admin_log_xq` VALUES (1626, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:15:41', 1);
INSERT INTO `t_admin_log_xq` VALUES (1627, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 04:15:43', 1);
INSERT INTO `t_admin_log_xq` VALUES (1628, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:15:43', 1);
INSERT INTO `t_admin_log_xq` VALUES (1629, 'chatFilter', 1, '/chatFilter', '{\"filterContent\":\"aa\",\"filterRule\":1,\"id\":12,\"replaceContent\":\"**\"}', '新增', NULL, '2024-01-06 04:18:28', 1);
INSERT INTO `t_admin_log_xq` VALUES (1630, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:18:28', 1);
INSERT INTO `t_admin_log_xq` VALUES (1631, 'chatFilter', 1, '/chatFilter', '{\"filterContent\":\"qq\",\"filterRule\":1,\"id\":13,\"replaceContent\":\"**\"}', '新增', NULL, '2024-01-06 04:23:24', 1);
INSERT INTO `t_admin_log_xq` VALUES (1632, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:23:24', 1);
INSERT INTO `t_admin_log_xq` VALUES (1633, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-06 04:28:32', 1);
INSERT INTO `t_admin_log_xq` VALUES (1634, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 04:28:45', 1);
INSERT INTO `t_admin_log_xq` VALUES (1635, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:28:51', 1);
INSERT INTO `t_admin_log_xq` VALUES (1636, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 04:28:57', 1);
INSERT INTO `t_admin_log_xq` VALUES (1637, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 04:28:57', 1);
INSERT INTO `t_admin_log_xq` VALUES (1638, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 04:28:57', 1);
INSERT INTO `t_admin_log_xq` VALUES (1639, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-01-06 04:29:15', 1);
INSERT INTO `t_admin_log_xq` VALUES (1640, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:29:17', 1);
INSERT INTO `t_admin_log_xq` VALUES (1641, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-06 04:29:17', 1);
INSERT INTO `t_admin_log_xq` VALUES (1642, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 04:29:17', 1);
INSERT INTO `t_admin_log_xq` VALUES (1643, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 04:29:17', 1);
INSERT INTO `t_admin_log_xq` VALUES (1644, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 04:29:17', 1);
INSERT INTO `t_admin_log_xq` VALUES (1645, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-01-06 04:29:42', 1);
INSERT INTO `t_admin_log_xq` VALUES (1646, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 04:29:46', 1);
INSERT INTO `t_admin_log_xq` VALUES (1647, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:29:46', 1);
INSERT INTO `t_admin_log_xq` VALUES (1648, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-06 04:29:47', 1);
INSERT INTO `t_admin_log_xq` VALUES (1649, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 04:40:55', 1);
INSERT INTO `t_admin_log_xq` VALUES (1650, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 04:40:55', 1);
INSERT INTO `t_admin_log_xq` VALUES (1651, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 04:40:55', 1);
INSERT INTO `t_admin_log_xq` VALUES (1652, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:40:57', 1);
INSERT INTO `t_admin_log_xq` VALUES (1653, 'chatFilter', 1, '/chatFilter', '{\"filterContent\":\"ww\",\"filterRule\":1,\"id\":14,\"replaceContent\":\"**\"}', '新增', NULL, '2024-01-06 04:41:08', 1);
INSERT INTO `t_admin_log_xq` VALUES (1654, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:41:08', 1);
INSERT INTO `t_admin_log_xq` VALUES (1655, 'chatFilter', 1, '/chatFilter', '{\"filterContent\":\"tt\",\"filterRule\":1,\"id\":15,\"replaceContent\":\"**\"}', '新增', NULL, '2024-01-06 04:46:21', 1);
INSERT INTO `t_admin_log_xq` VALUES (1656, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:46:21', 1);
INSERT INTO `t_admin_log_xq` VALUES (1657, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-01-06 04:50:56', 1);
INSERT INTO `t_admin_log_xq` VALUES (1658, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-06 04:51:02', 1);
INSERT INTO `t_admin_log_xq` VALUES (1659, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 04:51:08', 1);
INSERT INTO `t_admin_log_xq` VALUES (1660, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:51:11', 1);
INSERT INTO `t_admin_log_xq` VALUES (1661, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 04:51:13', 1);
INSERT INTO `t_admin_log_xq` VALUES (1662, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 04:51:13', 1);
INSERT INTO `t_admin_log_xq` VALUES (1663, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 04:51:13', 1);
INSERT INTO `t_admin_log_xq` VALUES (1664, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 04:51:32', 1);
INSERT INTO `t_admin_log_xq` VALUES (1665, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 04:51:32', 1);
INSERT INTO `t_admin_log_xq` VALUES (1666, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 04:51:32', 1);
INSERT INTO `t_admin_log_xq` VALUES (1667, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:51:33', 1);
INSERT INTO `t_admin_log_xq` VALUES (1668, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 04:51:33', 1);
INSERT INTO `t_admin_log_xq` VALUES (1669, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-06 04:51:34', 1);
INSERT INTO `t_admin_log_xq` VALUES (1670, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 04:51:35', 1);
INSERT INTO `t_admin_log_xq` VALUES (1671, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 04:51:36', 1);
INSERT INTO `t_admin_log_xq` VALUES (1672, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 04:51:36', 1);
INSERT INTO `t_admin_log_xq` VALUES (1673, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 04:51:36', 1);
INSERT INTO `t_admin_log_xq` VALUES (1674, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 04:51:36', 1);
INSERT INTO `t_admin_log_xq` VALUES (1675, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-01-06 04:51:37', 1);
INSERT INTO `t_admin_log_xq` VALUES (1676, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 04:51:37', 1);
INSERT INTO `t_admin_log_xq` VALUES (1677, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 04:51:37', 1);
INSERT INTO `t_admin_log_xq` VALUES (1678, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 04:51:37', 1);
INSERT INTO `t_admin_log_xq` VALUES (1679, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 04:51:37', 1);
INSERT INTO `t_admin_log_xq` VALUES (1680, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-06 04:51:37', 1);
INSERT INTO `t_admin_log_xq` VALUES (1681, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-06 05:12:51', 1);
INSERT INTO `t_admin_log_xq` VALUES (1682, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 05:12:53', 1);
INSERT INTO `t_admin_log_xq` VALUES (1683, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-06 05:12:55', 1);
INSERT INTO `t_admin_log_xq` VALUES (1684, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-06 05:12:55', 1);
INSERT INTO `t_admin_log_xq` VALUES (1685, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-06 05:12:55', 1);
INSERT INTO `t_admin_log_xq` VALUES (1686, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-06 05:13:10', 1);
INSERT INTO `t_admin_log_xq` VALUES (1687, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-06 05:13:11', 1);
INSERT INTO `t_admin_log_xq` VALUES (1688, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-28 07:44:29', 1);
INSERT INTO `t_admin_log_xq` VALUES (1689, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 07:44:30', 1);
INSERT INTO `t_admin_log_xq` VALUES (1690, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-28 07:44:32', 1);
INSERT INTO `t_admin_log_xq` VALUES (1691, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-28 07:44:32', 1);
INSERT INTO `t_admin_log_xq` VALUES (1692, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 07:44:33', 1);
INSERT INTO `t_admin_log_xq` VALUES (1693, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-28 07:44:34', 1);
INSERT INTO `t_admin_log_xq` VALUES (1694, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-28 07:44:34', 1);
INSERT INTO `t_admin_log_xq` VALUES (1695, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-28 07:45:13', 1);
INSERT INTO `t_admin_log_xq` VALUES (1696, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 07:45:14', 1);
INSERT INTO `t_admin_log_xq` VALUES (1697, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 07:49:55', 1);
INSERT INTO `t_admin_log_xq` VALUES (1698, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-28 07:53:37', 1);
INSERT INTO `t_admin_log_xq` VALUES (1699, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-28 07:53:37', 1);
INSERT INTO `t_admin_log_xq` VALUES (1700, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 07:53:38', 1);
INSERT INTO `t_admin_log_xq` VALUES (1701, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-28 07:53:40', 1);
INSERT INTO `t_admin_log_xq` VALUES (1702, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-28 07:53:40', 1);
INSERT INTO `t_admin_log_xq` VALUES (1703, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-28 07:53:40', 1);
INSERT INTO `t_admin_log_xq` VALUES (1704, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 07:53:40', 1);
INSERT INTO `t_admin_log_xq` VALUES (1705, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-28 07:53:41', 1);
INSERT INTO `t_admin_log_xq` VALUES (1706, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 07:58:45', 1);
INSERT INTO `t_admin_log_xq` VALUES (1707, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-28 08:01:34', 1);
INSERT INTO `t_admin_log_xq` VALUES (1708, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 08:12:31', 1);
INSERT INTO `t_admin_log_xq` VALUES (1709, 'chatFilter', 1, '/chatFilter', '{\"filterContent\":\"99\",\"filterRule\":1,\"id\":16,\"replaceContent\":\"**\"}', '新增', NULL, '2024-01-28 08:12:49', 1);
INSERT INTO `t_admin_log_xq` VALUES (1710, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 08:12:49', 1);
INSERT INTO `t_admin_log_xq` VALUES (1711, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 08:18:55', 1);
INSERT INTO `t_admin_log_xq` VALUES (1712, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-01-28 08:18:58', 1);
INSERT INTO `t_admin_log_xq` VALUES (1713, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-28 08:19:04', 1);
INSERT INTO `t_admin_log_xq` VALUES (1714, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-28 08:19:06', 1);
INSERT INTO `t_admin_log_xq` VALUES (1715, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 08:19:07', 1);
INSERT INTO `t_admin_log_xq` VALUES (1716, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-28 08:19:07', 1);
INSERT INTO `t_admin_log_xq` VALUES (1717, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-28 08:19:08', 1);
INSERT INTO `t_admin_log_xq` VALUES (1718, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-28 08:19:08', 1);
INSERT INTO `t_admin_log_xq` VALUES (1719, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-28 08:19:08', 1);
INSERT INTO `t_admin_log_xq` VALUES (1720, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-28 08:19:08', 1);
INSERT INTO `t_admin_log_xq` VALUES (1721, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-01-28 08:19:08', 1);
INSERT INTO `t_admin_log_xq` VALUES (1722, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 08:19:09', 1);
INSERT INTO `t_admin_log_xq` VALUES (1723, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-28 08:19:09', 1);
INSERT INTO `t_admin_log_xq` VALUES (1724, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-28 08:19:09', 1);
INSERT INTO `t_admin_log_xq` VALUES (1725, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-28 08:19:09', 1);
INSERT INTO `t_admin_log_xq` VALUES (1726, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-28 08:19:09', 1);
INSERT INTO `t_admin_log_xq` VALUES (1727, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-28 08:19:10', 1);
INSERT INTO `t_admin_log_xq` VALUES (1728, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-28 08:19:15', 1);
INSERT INTO `t_admin_log_xq` VALUES (1729, 'meeting', 1, '/admins/meeting/\"1751381170930585601\"', '', '删除', NULL, '2024-01-28 08:19:18', 1);
INSERT INTO `t_admin_log_xq` VALUES (1730, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 08:19:20', 1);
INSERT INTO `t_admin_log_xq` VALUES (1731, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-28 08:19:21', 1);
INSERT INTO `t_admin_log_xq` VALUES (1732, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-28 08:19:21', 1);
INSERT INTO `t_admin_log_xq` VALUES (1733, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-28 08:19:21', 1);
INSERT INTO `t_admin_log_xq` VALUES (1734, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-01-28 08:19:30', 1);
INSERT INTO `t_admin_log_xq` VALUES (1735, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-28 08:19:31', 1);
INSERT INTO `t_admin_log_xq` VALUES (1736, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-28 08:19:32', 1);
INSERT INTO `t_admin_log_xq` VALUES (1737, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 08:19:32', 1);
INSERT INTO `t_admin_log_xq` VALUES (1738, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 08:19:34', 1);
INSERT INTO `t_admin_log_xq` VALUES (1739, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-28 08:19:34', 1);
INSERT INTO `t_admin_log_xq` VALUES (1740, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-28 08:19:35', 1);
INSERT INTO `t_admin_log_xq` VALUES (1741, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-01-28 08:19:37', 1);
INSERT INTO `t_admin_log_xq` VALUES (1742, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-29 21:39:07', 1);
INSERT INTO `t_admin_log_xq` VALUES (1743, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-29 21:39:09', 1);
INSERT INTO `t_admin_log_xq` VALUES (1744, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-29 21:39:10', 1);
INSERT INTO `t_admin_log_xq` VALUES (1745, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-29 21:39:10', 1);
INSERT INTO `t_admin_log_xq` VALUES (1746, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-29 21:39:10', 1);
INSERT INTO `t_admin_log_xq` VALUES (1747, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-29 21:39:11', 1);
INSERT INTO `t_admin_log_xq` VALUES (1748, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-01-29 21:39:23', 1);
INSERT INTO `t_admin_log_xq` VALUES (1749, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-29 21:43:23', 1);
INSERT INTO `t_admin_log_xq` VALUES (1750, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-29 21:43:24', 1);
INSERT INTO `t_admin_log_xq` VALUES (1751, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-29 21:43:24', 1);
INSERT INTO `t_admin_log_xq` VALUES (1752, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-29 21:43:24', 1);
INSERT INTO `t_admin_log_xq` VALUES (1753, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-29 21:43:26', 1);
INSERT INTO `t_admin_log_xq` VALUES (1754, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-01-29 21:43:47', 1);
INSERT INTO `t_admin_log_xq` VALUES (1755, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-01-29 21:43:48', 1);
INSERT INTO `t_admin_log_xq` VALUES (1756, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-01-29 21:43:48', 1);
INSERT INTO `t_admin_log_xq` VALUES (1757, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-01-29 21:43:48', 1);
INSERT INTO `t_admin_log_xq` VALUES (1758, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-08-02 17:20:48', 1);
INSERT INTO `t_admin_log_xq` VALUES (1759, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-08-02 17:20:48', 1);
INSERT INTO `t_admin_log_xq` VALUES (1760, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-08-02 17:20:49', 1);
INSERT INTO `t_admin_log_xq` VALUES (1761, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-08-02 17:20:50', 1);
INSERT INTO `t_admin_log_xq` VALUES (1762, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-08-02 17:20:50', 1);
INSERT INTO `t_admin_log_xq` VALUES (1763, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-08-02 17:20:51', 1);
INSERT INTO `t_admin_log_xq` VALUES (1764, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-08-02 17:20:51', 1);
INSERT INTO `t_admin_log_xq` VALUES (1765, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-08-02 17:20:52', 1);
INSERT INTO `t_admin_log_xq` VALUES (1766, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-08-02 17:20:52', 1);
INSERT INTO `t_admin_log_xq` VALUES (1767, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-08-02 17:20:53', 1);
INSERT INTO `t_admin_log_xq` VALUES (1768, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-08-02 17:31:13', 1);
INSERT INTO `t_admin_log_xq` VALUES (1769, 'user', 1, '/admins/users/54/admin/1', '', '编辑', NULL, '2024-08-02 17:31:21', 1);
INSERT INTO `t_admin_log_xq` VALUES (1770, 'user', 1, '/admins/users/54/role', '', '查看', NULL, '2024-08-02 17:31:23', 1);
INSERT INTO `t_admin_log_xq` VALUES (1771, 'user', 1, '/admins/users/54/role', '{1:true,2:false,4:false,5:false,6:false,7:false}', '编辑', NULL, '2024-08-02 17:31:32', 1);
INSERT INTO `t_admin_log_xq` VALUES (1772, 'user', 1, '/admins/users/54/role', '', '查看', NULL, '2024-08-02 17:31:40', 1);
INSERT INTO `t_admin_log_xq` VALUES (1773, 'user', 1, '/admins/users/54/role', '{1:true,2:false,4:false,5:true,6:true,7:true}', '编辑', NULL, '2024-08-02 17:31:47', 1);
INSERT INTO `t_admin_log_xq` VALUES (1774, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-08-02 17:31:49', 1);
INSERT INTO `t_admin_log_xq` VALUES (1775, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-08-02 17:31:55', 1);
INSERT INTO `t_admin_log_xq` VALUES (1776, 'chatFilter', 1, '/chatFilter', '{\"filterContent\":\"dsa\",\"filterRule\":1,\"id\":17,\"replaceContent\":\"*\"}', '新增', NULL, '2024-08-02 17:32:13', 1);
INSERT INTO `t_admin_log_xq` VALUES (1777, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-08-02 17:32:13', 1);
INSERT INTO `t_admin_log_xq` VALUES (1778, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-08-02 17:32:54', 1);
INSERT INTO `t_admin_log_xq` VALUES (1779, 'chatFilter', 1, '/chatFilter/14/enable/0', '', '编辑', NULL, '2024-08-02 17:32:58', 1);
INSERT INTO `t_admin_log_xq` VALUES (1780, 'chatFilter', 1, '/chatFilter/14/enable/1', '', '编辑', NULL, '2024-08-02 17:33:00', 1);
INSERT INTO `t_admin_log_xq` VALUES (1781, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-08-02 17:33:05', 1);
INSERT INTO `t_admin_log_xq` VALUES (1782, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-08-02 17:33:05', 1);
INSERT INTO `t_admin_log_xq` VALUES (1783, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-08-02 17:33:05', 1);
INSERT INTO `t_admin_log_xq` VALUES (1784, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-08-02 17:33:32', 1);
INSERT INTO `t_admin_log_xq` VALUES (1785, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-09-18 21:33:02', 1);
INSERT INTO `t_admin_log_xq` VALUES (1786, 'user', 1, '/admins/users/55', '{\"email\":\"1234@qq.com\",\"id\":55,\"isAdmin\":true,\"name\":\"王俊凯\",\"password\":\"\",\"telephone\":\"13522303690\",\"username\":\"22\"}', '编辑', NULL, '2024-09-18 21:33:12', 1);
INSERT INTO `t_admin_log_xq` VALUES (1787, 'user', 1, '/admins/users/55/role', '', '查看', NULL, '2024-09-18 21:33:13', 1);
INSERT INTO `t_admin_log_xq` VALUES (1788, 'user', 1, '/admins/users/55/role', '{1:false,2:true,4:true,5:false,6:false,7:false}', '编辑', NULL, '2024-09-18 21:33:24', 1);
INSERT INTO `t_admin_log_xq` VALUES (1789, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-09-18 21:33:26', 1);
INSERT INTO `t_admin_log_xq` VALUES (1790, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-18 21:33:29', 1);
INSERT INTO `t_admin_log_xq` VALUES (1791, 'chatFilter', 1, '/chatFilter', '{\"filterContent\":\"ee\",\"filterRule\":1,\"id\":18,\"replaceContent\":\"111\"}', '新增', NULL, '2024-09-18 21:33:51', 1);
INSERT INTO `t_admin_log_xq` VALUES (1792, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-18 21:33:51', 1);
INSERT INTO `t_admin_log_xq` VALUES (1793, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-09-18 21:34:08', 1);
INSERT INTO `t_admin_log_xq` VALUES (1794, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-09-18 21:34:08', 1);
INSERT INTO `t_admin_log_xq` VALUES (1795, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-09-18 21:34:09', 1);
INSERT INTO `t_admin_log_xq` VALUES (1796, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-09-25 16:09:03', 1);
INSERT INTO `t_admin_log_xq` VALUES (1797, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-09-25 16:09:03', 1);
INSERT INTO `t_admin_log_xq` VALUES (1798, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:09:04', 1);
INSERT INTO `t_admin_log_xq` VALUES (1799, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-09-25 16:09:05', 1);
INSERT INTO `t_admin_log_xq` VALUES (1800, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-09-25 16:09:05', 1);
INSERT INTO `t_admin_log_xq` VALUES (1801, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-09-25 16:09:40', 1);
INSERT INTO `t_admin_log_xq` VALUES (1802, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:09:49', 1);
INSERT INTO `t_admin_log_xq` VALUES (1803, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-09-25 16:09:49', 1);
INSERT INTO `t_admin_log_xq` VALUES (1804, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-09-25 16:09:50', 1);
INSERT INTO `t_admin_log_xq` VALUES (1805, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-09-25 16:09:51', 1);
INSERT INTO `t_admin_log_xq` VALUES (1806, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:09:52', 1);
INSERT INTO `t_admin_log_xq` VALUES (1807, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-09-25 16:09:53', 1);
INSERT INTO `t_admin_log_xq` VALUES (1808, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-09-25 16:09:53', 1);
INSERT INTO `t_admin_log_xq` VALUES (1809, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-09-25 16:09:54', 1);
INSERT INTO `t_admin_log_xq` VALUES (1810, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-09-25 16:09:54', 1);
INSERT INTO `t_admin_log_xq` VALUES (1811, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:09:54', 1);
INSERT INTO `t_admin_log_xq` VALUES (1812, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-09-25 16:09:55', 1);
INSERT INTO `t_admin_log_xq` VALUES (1813, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-09-25 16:10:00', 1);
INSERT INTO `t_admin_log_xq` VALUES (1814, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:10:00', 1);
INSERT INTO `t_admin_log_xq` VALUES (1815, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-09-25 16:10:01', 1);
INSERT INTO `t_admin_log_xq` VALUES (1816, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-09-25 16:10:01', 1);
INSERT INTO `t_admin_log_xq` VALUES (1817, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-09-25 16:10:01', 1);
INSERT INTO `t_admin_log_xq` VALUES (1818, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-09-25 16:10:02', 1);
INSERT INTO `t_admin_log_xq` VALUES (1819, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-09-25 16:16:15', 1);
INSERT INTO `t_admin_log_xq` VALUES (1820, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-09-25 16:16:15', 1);
INSERT INTO `t_admin_log_xq` VALUES (1821, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:16:17', 1);
INSERT INTO `t_admin_log_xq` VALUES (1822, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-09-25 16:16:19', 1);
INSERT INTO `t_admin_log_xq` VALUES (1823, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-09-25 16:16:19', 1);
INSERT INTO `t_admin_log_xq` VALUES (1824, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-09-25 16:16:19', 1);
INSERT INTO `t_admin_log_xq` VALUES (1825, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-09-25 16:16:20', 1);
INSERT INTO `t_admin_log_xq` VALUES (1826, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-09-25 16:16:20', 1);
INSERT INTO `t_admin_log_xq` VALUES (1827, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-09-25 16:16:20', 1);
INSERT INTO `t_admin_log_xq` VALUES (1828, 'dataStatistics', 1, '/meeting/chatJieba/stopword', '', '查看', NULL, '2024-09-25 16:16:23', 1);
INSERT INTO `t_admin_log_xq` VALUES (1829, 'dataStatistics', 1, '/meeting/chatJieba/stopword', '', '编辑', NULL, '2024-09-25 16:16:25', 1);
INSERT INTO `t_admin_log_xq` VALUES (1830, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-09-25 16:16:33', 1);
INSERT INTO `t_admin_log_xq` VALUES (1831, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-09-25 16:16:34', 1);
INSERT INTO `t_admin_log_xq` VALUES (1832, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-09-25 16:16:35', 1);
INSERT INTO `t_admin_log_xq` VALUES (1833, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:16:35', 1);
INSERT INTO `t_admin_log_xq` VALUES (1834, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-09-25 16:16:36', 1);
INSERT INTO `t_admin_log_xq` VALUES (1835, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-09-25 16:16:36', 1);
INSERT INTO `t_admin_log_xq` VALUES (1836, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-09-25 16:16:36', 1);
INSERT INTO `t_admin_log_xq` VALUES (1837, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-09-25 16:16:37', 1);
INSERT INTO `t_admin_log_xq` VALUES (1838, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-09-25 16:16:38', 1);
INSERT INTO `t_admin_log_xq` VALUES (1839, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-09-25 16:16:38', 1);
INSERT INTO `t_admin_log_xq` VALUES (1840, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-09-25 16:16:38', 1);
INSERT INTO `t_admin_log_xq` VALUES (1841, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:16:39', 1);
INSERT INTO `t_admin_log_xq` VALUES (1842, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-09-25 16:16:40', 1);
INSERT INTO `t_admin_log_xq` VALUES (1843, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-09-25 16:16:41', 1);
INSERT INTO `t_admin_log_xq` VALUES (1844, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-09-25 16:16:43', 1);
INSERT INTO `t_admin_log_xq` VALUES (1845, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:16:44', 1);
INSERT INTO `t_admin_log_xq` VALUES (1846, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-09-25 16:16:44', 1);
INSERT INTO `t_admin_log_xq` VALUES (1847, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-09-25 16:16:44', 1);
INSERT INTO `t_admin_log_xq` VALUES (1848, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-09-25 16:16:44', 1);
INSERT INTO `t_admin_log_xq` VALUES (1849, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-09-25 16:16:45', 1);
INSERT INTO `t_admin_log_xq` VALUES (1850, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-09-25 16:16:46', 1);
INSERT INTO `t_admin_log_xq` VALUES (1851, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-09-25 16:16:46', 1);
INSERT INTO `t_admin_log_xq` VALUES (1852, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-09-25 16:16:46', 1);
INSERT INTO `t_admin_log_xq` VALUES (1853, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:16:46', 1);
INSERT INTO `t_admin_log_xq` VALUES (1854, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-09-25 16:16:46', 1);
INSERT INTO `t_admin_log_xq` VALUES (1855, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-09-25 16:16:47', 1);
INSERT INTO `t_admin_log_xq` VALUES (1856, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:16:48', 1);
INSERT INTO `t_admin_log_xq` VALUES (1857, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-09-25 16:16:48', 1);
INSERT INTO `t_admin_log_xq` VALUES (1858, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-09-25 16:16:49', 1);
INSERT INTO `t_admin_log_xq` VALUES (1859, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-09-25 16:16:49', 1);
INSERT INTO `t_admin_log_xq` VALUES (1860, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-09-25 16:16:49', 1);
INSERT INTO `t_admin_log_xq` VALUES (1861, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:16:49', 1);
INSERT INTO `t_admin_log_xq` VALUES (1862, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:25:20', 1);
INSERT INTO `t_admin_log_xq` VALUES (1863, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-09-25 16:30:33', 1);
INSERT INTO `t_admin_log_xq` VALUES (1864, 'user', 1, '/admins/users/55/role', '', '查看', NULL, '2024-09-25 16:30:47', 1);
INSERT INTO `t_admin_log_xq` VALUES (1865, 'user', 1, '/admins/users/55/role', '', '查看', NULL, '2024-09-25 16:30:48', 1);
INSERT INTO `t_admin_log_xq` VALUES (1866, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-09-25 16:30:59', 1);
INSERT INTO `t_admin_log_xq` VALUES (1867, 'meeting', 1, '/meeting/\"1751383935941611521\"/password', '', '查看', NULL, '2024-09-25 16:31:10', 1);
INSERT INTO `t_admin_log_xq` VALUES (1868, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:31:12', 1);
INSERT INTO `t_admin_log_xq` VALUES (1869, 'chatFilter', 1, '/chatFilter', '{\"filterContent\":\"nh\",\"filterRule\":1,\"id\":19,\"replaceContent\":\"**\"}', '新增', NULL, '2024-09-25 16:31:27', 1);
INSERT INTO `t_admin_log_xq` VALUES (1870, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:31:27', 1);
INSERT INTO `t_admin_log_xq` VALUES (1871, 'dataStatistics', 1, '/admins/meeting/startDate', '', '查看', NULL, '2024-09-25 16:31:31', 1);
INSERT INTO `t_admin_log_xq` VALUES (1872, 'dataStatistics', 1, '/admins/meeting/allStartDate', '', '查看', NULL, '2024-09-25 16:31:31', 1);
INSERT INTO `t_admin_log_xq` VALUES (1873, 'dataStatistics', 1, '/meeting/chatJieba', '', '查看', NULL, '2024-09-25 16:31:31', 1);
INSERT INTO `t_admin_log_xq` VALUES (1874, 'userAdvice', 1, '/userAdvice', '', '查看', NULL, '2024-09-25 16:31:42', 1);
INSERT INTO `t_admin_log_xq` VALUES (1875, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-09-25 16:31:49', 1);
INSERT INTO `t_admin_log_xq` VALUES (1876, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-09-25 16:31:50', 1);
INSERT INTO `t_admin_log_xq` VALUES (1877, 'user', 1, '/admins/users/1/-1', '', '查看', NULL, '2024-09-25 16:35:16', 1);
INSERT INTO `t_admin_log_xq` VALUES (1878, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:35:17', 1);
INSERT INTO `t_admin_log_xq` VALUES (1879, 'meeting', 1, '/admins/meeting/1/-1', '', '查看', NULL, '2024-09-25 16:35:18', 1);
INSERT INTO `t_admin_log_xq` VALUES (1880, 'chatFilter', 1, '/chatFilter', '', '查看', NULL, '2024-09-25 16:35:19', 1);

-- ----------------------------
-- Table structure for t_chat_filter_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_chat_filter_xq`;
CREATE TABLE `t_chat_filter_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT,
  `filter_content_xq` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '过滤内容',
  `filter_rule_xq` int(0) NOT NULL COMMENT '过滤规则 1 直接替换，2 正则表达式替换',
  `replace_content_xq` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '替换内容',
  `appender_id_xq` int(0) NOT NULL COMMENT '添加人的id',
  `append_time_xq` datetime(0) NOT NULL COMMENT '添加时间',
  `enable_xq` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用',
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `appender_id`(`appender_id_xq`) USING BTREE,
  CONSTRAINT `t_chat_filter_xq_ibfk_1` FOREIGN KEY (`appender_id_xq`) REFERENCES `t_users_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_chat_filter_xq
-- ----------------------------
INSERT INTO `t_chat_filter_xq` VALUES (10, 'sb', 1, '**', 1, '2024-01-06 02:50:57', 1);
INSERT INTO `t_chat_filter_xq` VALUES (11, 'mmp', 1, '***', 1, '2024-01-06 03:44:06', 1);
INSERT INTO `t_chat_filter_xq` VALUES (12, 'aa', 1, '**', 1, '2024-01-06 04:18:28', 1);
INSERT INTO `t_chat_filter_xq` VALUES (13, 'qq', 1, '**', 1, '2024-01-06 04:23:24', 1);
INSERT INTO `t_chat_filter_xq` VALUES (14, 'ww', 1, '**', 1, '2024-01-06 04:41:08', 1);
INSERT INTO `t_chat_filter_xq` VALUES (15, 'tt', 1, '**', 1, '2024-01-06 04:46:21', 1);
INSERT INTO `t_chat_filter_xq` VALUES (16, '99', 1, '**', 1, '2024-01-28 08:12:49', 1);
INSERT INTO `t_chat_filter_xq` VALUES (17, 'dsa', 1, '*', 1, '2024-08-02 17:32:13', 1);
INSERT INTO `t_chat_filter_xq` VALUES (18, 'ee', 1, '111', 1, '2024-09-18 21:33:51', 1);
INSERT INTO `t_chat_filter_xq` VALUES (19, 'nh', 1, '**', 1, '2024-09-25 16:31:27', 1);

-- ----------------------------
-- Table structure for t_meeting_application_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_meeting_application_xq`;
CREATE TABLE `t_meeting_application_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT,
  `applicant_id_xq` int(0) NOT NULL COMMENT '申请人id',
  `meeting_id_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '会议id',
  `state_xq` tinyint(0) NOT NULL COMMENT '0 未读  1 已读',
  `send_time_xq` datetime(0) NOT NULL,
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `mau`(`applicant_id_xq`) USING BTREE,
  INDEX `mam`(`meeting_id_xq`) USING BTREE,
  CONSTRAINT `mam` FOREIGN KEY (`meeting_id_xq`) REFERENCES `t_meeting_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mau` FOREIGN KEY (`applicant_id_xq`) REFERENCES `t_users_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_meeting_application_xq
-- ----------------------------
INSERT INTO `t_meeting_application_xq` VALUES (2, 54, '1743344860056858626', 1, '2024-01-06 02:59:09');
INSERT INTO `t_meeting_application_xq` VALUES (3, 55, '1743344860056858626', 1, '2024-01-06 03:14:24');
INSERT INTO `t_meeting_application_xq` VALUES (4, 56, '1743364967557644290', 1, '2024-01-06 04:14:22');
INSERT INTO `t_meeting_application_xq` VALUES (5, 56, '1743366121217736706', 1, '2024-01-06 04:19:18');
INSERT INTO `t_meeting_application_xq` VALUES (6, 56, '1743367390841946113', 1, '2024-01-06 04:23:59');
INSERT INTO `t_meeting_application_xq` VALUES (7, 56, '1743371673532514305', 1, '2024-01-06 04:40:20');
INSERT INTO `t_meeting_application_xq` VALUES (8, 56, '1743372967861174273', 1, '2024-01-06 04:45:22');
INSERT INTO `t_meeting_application_xq` VALUES (9, 56, '1743372967861174273', 1, '2024-01-06 05:10:17');
INSERT INTO `t_meeting_application_xq` VALUES (10, 59, '1751381170930585601', 1, '2024-01-28 07:10:23');
INSERT INTO `t_meeting_application_xq` VALUES (11, 61, '1751389561388294145', 1, '2024-01-28 07:40:25');
INSERT INTO `t_meeting_application_xq` VALUES (12, 62, '1751391620049166337', 1, '2024-01-28 07:48:34');
INSERT INTO `t_meeting_application_xq` VALUES (13, 63, '1751393908163633153', 1, '2024-01-28 07:57:35');
INSERT INTO `t_meeting_application_xq` VALUES (14, 64, '1751396026320707585', 1, '2024-01-28 08:06:01');
INSERT INTO `t_meeting_application_xq` VALUES (15, 65, '1751397366711214082', 1, '2024-01-28 08:11:20');
INSERT INTO `t_meeting_application_xq` VALUES (16, 65, '1751397366711214082', 1, '2024-01-29 21:40:45');
INSERT INTO `t_meeting_application_xq` VALUES (17, 65, '1751393908163633153', 1, '2024-02-18 17:51:50');
INSERT INTO `t_meeting_application_xq` VALUES (18, 1, '1819301722181443585', 1, '2024-08-02 17:25:42');
INSERT INTO `t_meeting_application_xq` VALUES (19, 1, '1836396606029606913', 1, '2024-09-18 21:28:10');
INSERT INTO `t_meeting_application_xq` VALUES (20, 68, '1838856810738528257', 1, '2024-09-25 16:24:17');

-- ----------------------------
-- Table structure for t_meeting_chat_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_meeting_chat_xq`;
CREATE TABLE `t_meeting_chat_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT,
  `meeting_id_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_id_xq` int(0) NOT NULL,
  `msg_xq` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `send_time_xq` datetime(0) NOT NULL,
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `user_id`(`user_id_xq`) USING BTREE,
  INDEX `meeting_id`(`meeting_id_xq`) USING BTREE,
  CONSTRAINT `t_meeting_chat_xq_ibfk_1` FOREIGN KEY (`user_id_xq`) REFERENCES `t_users_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_meeting_chat_xq_ibfk_2` FOREIGN KEY (`meeting_id_xq`) REFERENCES `t_meeting_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_meeting_chat_xq
-- ----------------------------
INSERT INTO `t_meeting_chat_xq` VALUES (26, '1743341549404631042', 53, '111111', '2024-01-06 02:41:58');
INSERT INTO `t_meeting_chat_xq` VALUES (27, '1743341549404631042', 53, '454545', '2024-01-06 02:42:02');
INSERT INTO `t_meeting_chat_xq` VALUES (28, '1743344860056858626', 1, '**', '2024-01-06 02:59:43');
INSERT INTO `t_meeting_chat_xq` VALUES (29, '1743344860056858626', 54, 'woshi', '2024-01-06 03:01:07');
INSERT INTO `t_meeting_chat_xq` VALUES (30, '1743344860056858626', 1, '1424242', '2024-01-06 03:30:25');
INSERT INTO `t_meeting_chat_xq` VALUES (31, '1743344860056858626', 1, '2424242', '2024-01-06 03:30:54');
INSERT INTO `t_meeting_chat_xq` VALUES (32, '1743363518740185090', 1, '24242424', '2024-01-06 04:07:34');
INSERT INTO `t_meeting_chat_xq` VALUES (33, '1743363518740185090', 56, '141414', '2024-01-06 04:10:02');
INSERT INTO `t_meeting_chat_xq` VALUES (34, '1743363518740185090', 1, '2222', '2024-01-06 04:10:18');
INSERT INTO `t_meeting_chat_xq` VALUES (35, '1743364967557644290', 1, '42424242', '2024-01-06 04:13:28');
INSERT INTO `t_meeting_chat_xq` VALUES (36, '1743364967557644290', 56, '24242424', '2024-01-06 04:15:08');
INSERT INTO `t_meeting_chat_xq` VALUES (37, '1743366121217736706', 1, '你是**', '2024-01-06 04:18:00');
INSERT INTO `t_meeting_chat_xq` VALUES (38, '1743366121217736706', 1, '**', '2024-01-06 04:18:33');
INSERT INTO `t_meeting_chat_xq` VALUES (39, '1743366121217736706', 56, '242424', '2024-01-06 04:19:50');
INSERT INTO `t_meeting_chat_xq` VALUES (40, '1743367390841946113', 1, '啊哈哈**', '2024-01-06 04:23:01');
INSERT INTO `t_meeting_chat_xq` VALUES (41, '1743367390841946113', 1, '**', '2024-01-06 04:23:28');
INSERT INTO `t_meeting_chat_xq` VALUES (42, '1743367390841946113', 56, '17272', '2024-01-06 04:24:25');
INSERT INTO `t_meeting_chat_xq` VALUES (43, '1743367390841946113', 1, '2727272727', '2024-01-06 04:24:32');
INSERT INTO `t_meeting_chat_xq` VALUES (44, '1743371673532514305', 56, '1111', '2024-01-06 04:40:39');
INSERT INTO `t_meeting_chat_xq` VALUES (45, '1743371673532514305', 1, '**', '2024-01-06 04:40:49');
INSERT INTO `t_meeting_chat_xq` VALUES (46, '1743371673532514305', 1, '**', '2024-01-06 04:41:15');
INSERT INTO `t_meeting_chat_xq` VALUES (47, '1743372967861174273', 56, 'hhh**', '2024-01-06 04:45:56');
INSERT INTO `t_meeting_chat_xq` VALUES (48, '1743372967861174273', 1, '**uuuu', '2024-01-06 04:46:29');
INSERT INTO `t_meeting_chat_xq` VALUES (49, '1743372967861174273', 1, '2757272', '2024-01-06 05:11:39');
INSERT INTO `t_meeting_chat_xq` VALUES (50, '1751381170930585601', 57, '888888', '2024-01-28 07:06:37');
INSERT INTO `t_meeting_chat_xq` VALUES (51, '1751381170930585601', 57, '45454545454', '2024-01-28 07:11:56');
INSERT INTO `t_meeting_chat_xq` VALUES (52, '1751389561388294145', 61, '2782782782872872782', '2024-01-28 07:41:30');
INSERT INTO `t_meeting_chat_xq` VALUES (53, '1751391620049166337', 62, '**1111', '2024-01-28 07:49:27');
INSERT INTO `t_meeting_chat_xq` VALUES (54, '1751391620049166337', 1, '**8888', '2024-01-28 07:50:20');
INSERT INTO `t_meeting_chat_xq` VALUES (55, '1751393908163633153', 63, '184848**', '2024-01-28 07:58:24');
INSERT INTO `t_meeting_chat_xq` VALUES (56, '1751397366711214082', 65, 'fsdfsdf**', '2024-01-28 08:12:15');
INSERT INTO `t_meeting_chat_xq` VALUES (57, '1751397366711214082', 1, '**', '2024-01-28 08:12:53');
INSERT INTO `t_meeting_chat_xq` VALUES (58, '1751397366711214082', 1, '**475742', '2024-01-29 21:41:36');
INSERT INTO `t_meeting_chat_xq` VALUES (59, '1819301722181443585', 1, '312312312321', '2024-08-02 17:26:29');
INSERT INTO `t_meeting_chat_xq` VALUES (60, '1819301722181443585', 67, '3312312321', '2024-08-02 17:26:43');
INSERT INTO `t_meeting_chat_xq` VALUES (61, '1819301722181443585', 67, '*', '2024-08-02 17:32:37');
INSERT INTO `t_meeting_chat_xq` VALUES (62, '1836396606029606913', 66, '1312312321', '2024-09-18 21:30:54');
INSERT INTO `t_meeting_chat_xq` VALUES (63, '1836396606029606913', 1, '3213123213213213', '2024-09-18 21:31:18');
INSERT INTO `t_meeting_chat_xq` VALUES (64, '1819305669784870913', 1, '3123213', '2024-09-25 16:13:26');
INSERT INTO `t_meeting_chat_xq` VALUES (65, '1838856810738528257', 68, '3213213123123', '2024-09-25 16:25:03');
INSERT INTO `t_meeting_chat_xq` VALUES (66, '1838856810738528257', 1, '***123', '2024-09-25 16:25:44');
INSERT INTO `t_meeting_chat_xq` VALUES (67, '1838856810738528257', 68, '3123213', '2024-09-25 16:26:55');
INSERT INTO `t_meeting_chat_xq` VALUES (68, '1838856810738528257', 1, '13123213', '2024-09-25 16:33:38');
INSERT INTO `t_meeting_chat_xq` VALUES (69, '1838856810738528257', 1, 'dajiah', '2024-09-25 16:33:43');

-- ----------------------------
-- Table structure for t_meeting_notice_users_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_meeting_notice_users_xq`;
CREATE TABLE `t_meeting_notice_users_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT,
  `user_id_xq` int(0) NOT NULL COMMENT '接收人id',
  `notice_id_xq` int(0) NOT NULL COMMENT '通知id',
  `state_xq` tinyint(1) UNSIGNED ZEROFILL NOT NULL DEFAULT 0 COMMENT '0 未读 1已读',
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `user_id`(`user_id_xq`) USING BTREE,
  INDEX `notice_id_xq`(`notice_id_xq`) USING BTREE,
  CONSTRAINT `t_meeting_notice_users_xq_ibfk_1` FOREIGN KEY (`user_id_xq`) REFERENCES `t_users_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_meeting_notice_users_xq_ibfk_2` FOREIGN KEY (`notice_id_xq`) REFERENCES `t_meeting_notice_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_meeting_notice_users_xq
-- ----------------------------
INSERT INTO `t_meeting_notice_users_xq` VALUES (35, 54, 163, 1);
INSERT INTO `t_meeting_notice_users_xq` VALUES (36, 55, 163, 1);
INSERT INTO `t_meeting_notice_users_xq` VALUES (37, 56, 164, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (38, 56, 165, 1);
INSERT INTO `t_meeting_notice_users_xq` VALUES (39, 56, 166, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (40, 56, 167, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (41, 56, 168, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (42, 56, 171, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (43, 56, 172, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (44, 56, 173, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (45, 56, 174, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (46, 56, 172, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (47, 56, 173, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (48, 59, 175, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (49, 61, 177, 1);
INSERT INTO `t_meeting_notice_users_xq` VALUES (50, 62, 178, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (51, 63, 179, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (52, 64, 180, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (53, 54, 181, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (54, 55, 181, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (55, 56, 182, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (56, 56, 183, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (57, 56, 184, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (58, 56, 186, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (59, 56, 187, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (60, 62, 188, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (61, 65, 189, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (62, 65, 191, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (63, 59, 192, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (64, 65, 189, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (65, 65, 179, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (66, 65, 193, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (67, 1, 195, 1);
INSERT INTO `t_meeting_notice_users_xq` VALUES (68, 63, 197, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (69, 65, 197, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (70, 64, 198, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (71, 65, 199, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (72, 65, 200, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (73, 1, 196, 1);
INSERT INTO `t_meeting_notice_users_xq` VALUES (74, 67, 202, 0);
INSERT INTO `t_meeting_notice_users_xq` VALUES (75, 1, 203, 1);
INSERT INTO `t_meeting_notice_users_xq` VALUES (76, 68, 204, 0);

-- ----------------------------
-- Table structure for t_meeting_notice_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_meeting_notice_xq`;
CREATE TABLE `t_meeting_notice_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT,
  `meeting_id_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '会议id',
  `sender_id_xq` int(0) NOT NULL COMMENT '发送人id',
  `title_xq` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '通知标题',
  `content_xq` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '通知内容',
  `type_xq` tinyint(1) NOT NULL DEFAULT 1 COMMENT '公告类型 1 普通公告 2 推送公告',
  `send_time_xq` datetime(0) NOT NULL COMMENT '发送时间',
  `update_time_xq` datetime(0) NOT NULL COMMENT '最近修改时间',
  `hidden_xq` tinyint(1) NOT NULL DEFAULT 0 COMMENT '隐藏，不会出现在公告列表里面，通常用来发送私有通知',
  PRIMARY KEY (`id_xq`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 205 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_meeting_notice_xq
-- ----------------------------
INSERT INTO `t_meeting_notice_xq` VALUES (161, '1743341549404631042', 53, '欢迎来参加 222 会议', '我们会议将于 2024-01-06 02:39 开始', 2, '2024-01-06 02:39:50', '2024-01-06 02:39:50', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (162, '1743341549404631042', 53, '222 会议已经结束', '222 会议已经结束', 1, '2024-01-06 02:42:13', '2024-01-06 02:42:13', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (163, '1743344860056858626', 1, '欢迎来参加 饭桶聚会 会议', '我们会议将于 2024-01-06 03:52 开始', 2, '2024-01-06 02:52:59', '2024-01-06 02:52:59', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (164, '1743363518740185090', 1, '欢迎来参加 饭桶聚会2.0 会议', '我们会议将于 2024-01-06 04:06 开始', 2, '2024-01-06 04:07:08', '2024-01-06 04:07:08', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (165, '1743364967557644290', 1, '欢迎来参加 饭桶3.0 会议', '我们会议将于 2024-01-06 04:12 开始', 2, '2024-01-06 04:12:53', '2024-01-06 04:12:53', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (166, '1743366121217736706', 1, '欢迎来参加 饭桶4.0 会议', '我们会议将于 2024-01-06 04:17 开始', 2, '2024-01-06 04:17:28', '2024-01-06 04:17:28', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (167, '1743367390841946113', 1, '欢迎来参加 饭桶5.0 会议', '我们会议将于 2024-01-06 04:22 开始', 2, '2024-01-06 04:22:31', '2024-01-06 04:22:31', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (168, '1743367390841946113', 1, '你已被踢出 饭桶5.0 会议', '你已被踢出 饭桶5.0 会议<br>会议号：1743367390841946113', 1, '2024-01-06 04:26:03', '2024-01-06 04:26:03', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (169, '1743370881979269122', 1, '欢迎来参加 饭桶11 会议', '我们会议将于 2024-01-06 04:36 开始', 2, '2024-01-06 04:36:23', '2024-01-06 04:36:23', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (170, '1743370881979269122', 1, '饭桶11 会议已经结束', '饭桶11 会议已经结束', 1, '2024-01-06 04:37:53', '2024-01-06 04:37:53', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (171, '1743371673532514305', 1, '欢迎来参加 饭桶吃饭了 会议', '我们会议将于 2024-01-06 04:39 开始', 2, '2024-01-06 04:39:32', '2024-01-06 04:39:32', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (172, '1743372967861174273', 1, '欢迎来参加 吃饭了饭桶 会议', '我们会议将于 2024-01-06 04:44 开始', 2, '2024-01-06 04:44:41', '2024-01-06 04:44:41', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (173, '1743372967861174273', 1, '1111', '快件老', 2, '2024-01-06 04:47:26', '2024-01-06 04:47:26', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (174, '1743372967861174273', 1, '你已被踢出 吃饭了饭桶 会议', '你已被踢出 吃饭了饭桶 会议<br>会议号：1743372967861174273', 1, '2024-01-06 04:48:40', '2024-01-06 04:48:40', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (175, '1751381170930585601', 57, '欢迎来参加 5555 会议', '我们会议将于 2024-01-28 07:06 开始', 2, '2024-01-28 07:06:25', '2024-01-28 07:06:25', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (176, '1751383935941611521', 59, '欢迎来参加 22222 会议', '我们会议将于 2024-01-28 07:17 开始', 2, '2024-01-28 07:17:24', '2024-01-28 07:17:24', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (177, '1751389561388294145', 59, '欢迎来参加 春节值班通知 会议', '我们会议将于 2024-01-28 07:39 开始', 2, '2024-01-28 07:39:45', '2024-01-28 07:39:45', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (178, '1751391620049166337', 1, '欢迎来参加 春节加班通知 会议', '我们会议将于 2024-01-28 07:47 开始', 2, '2024-01-28 07:47:56', '2024-01-28 07:47:56', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (179, '1751393908163633153', 1, '欢迎来参加 123 会议', '我们会议将于 2024-01-28 07:56 开始', 2, '2024-01-28 07:57:02', '2024-01-28 07:57:02', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (180, '1751396026320707585', 1, '欢迎来参加 156 会议', '我们会议将于 2024-01-28 08:05 开始', 2, '2024-01-28 08:05:27', '2024-01-28 08:05:27', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (181, '1743344860056858626', 1, '饭桶聚会 会议已经结束', '饭桶聚会 会议已经结束', 1, '2024-01-28 08:07:52', '2024-01-28 08:07:52', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (182, '1743363518740185090', 1, '饭桶聚会2.0 会议已经结束', '饭桶聚会2.0 会议已经结束', 1, '2024-01-28 08:07:54', '2024-01-28 08:07:54', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (183, '1743364967557644290', 1, '饭桶3.0 会议已经结束', '饭桶3.0 会议已经结束', 1, '2024-01-28 08:07:55', '2024-01-28 08:07:55', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (184, '1743366121217736706', 1, '饭桶4.0 会议已经结束', '饭桶4.0 会议已经结束', 1, '2024-01-28 08:07:55', '2024-01-28 08:07:55', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (185, '1743367390841946113', 1, '饭桶5.0 会议已经结束', '饭桶5.0 会议已经结束', 1, '2024-01-28 08:07:55', '2024-01-28 08:07:55', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (186, '1743371673532514305', 1, '饭桶吃饭了 会议已经结束', '饭桶吃饭了 会议已经结束', 1, '2024-01-28 08:07:56', '2024-01-28 08:07:56', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (187, '1743372967861174273', 1, '吃饭了饭桶 会议已经结束', '吃饭了饭桶 会议已经结束', 1, '2024-01-28 08:07:56', '2024-01-28 08:07:56', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (188, '1751391620049166337', 1, '春节加班通知 会议已经结束', '春节加班通知 会议已经结束', 1, '2024-01-28 08:07:56', '2024-01-28 08:07:56', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (189, '1751397366711214082', 1, '欢迎来参加 裁员通知 会议', '我们会议将于 2024-01-28 08:10 开始', 2, '2024-01-28 08:10:46', '2024-01-28 08:10:46', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (190, '1751397366711214082', 1, '2222222', '222222222222', 1, '2024-01-28 08:13:58', '2024-01-28 08:13:58', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (191, '1751397366711214082', 1, '你已被踢出 裁员通知 会议', '你已被踢出 裁员通知 会议<br>会议号：1751397366711214082', 1, '2024-01-28 08:15:43', '2024-01-28 08:15:43', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (192, '1751381170930585601', 1, '5555 会议已经结束', '5555 会议已经结束', 1, '2024-01-28 08:19:18', '2024-01-28 08:19:18', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (193, '1759153945111961602', 1, '欢迎来参加 11111 会议', '我们会议将于 2024-02-18 17:52 开始', 2, '2024-02-18 17:52:39', '2024-02-18 17:52:39', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (194, '1759440622262951937', 65, '欢迎来参加 1112121 会议', '我们会议将于 2024-02-19 12:51 开始', 2, '2024-02-19 12:51:48', '2024-02-19 12:51:48', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (195, '1759800657614761986', 65, '欢迎来参加 r5r5 会议', '我们会议将于 2024-02-20 12:42 开始', 2, '2024-02-20 12:42:27', '2024-02-20 12:42:27', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (196, '1819301722181443585', 67, '欢迎来参加 213 会议', '我们会议将于 2024-08-02 17:18 开始', 2, '2024-08-02 17:18:26', '2024-08-02 17:18:26', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (197, '1751393908163633153', 1, '123 会议已经结束', '123 会议已经结束', 1, '2024-08-02 17:21:14', '2024-08-02 17:21:14', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (198, '1751396026320707585', 1, '156 会议已经结束', '156 会议已经结束', 1, '2024-08-02 17:21:16', '2024-08-02 17:21:16', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (199, '1751397366711214082', 1, '裁员通知 会议已经结束', '裁员通知 会议已经结束', 1, '2024-08-02 17:21:17', '2024-08-02 17:21:17', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (200, '1759153945111961602', 1, '11111 会议已经结束', '11111 会议已经结束', 1, '2024-08-02 17:21:17', '2024-08-02 17:21:17', 1);
INSERT INTO `t_meeting_notice_xq` VALUES (201, '1819303315287154690', 67, '欢迎来参加 12111 会议', '我们会议将于 2024-08-02 17:24 开始', 2, '2024-08-02 17:24:46', '2024-08-02 17:24:46', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (202, '1819305669784870913', 1, '欢迎来参加 312 会议', '我们会议将于 2024-08-02 17:33 开始', 2, '2024-08-02 17:34:07', '2024-08-02 17:34:07', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (203, '1836396606029606913', 66, '欢迎来参加 qqqqq 会议', '我们会议将于 2024-09-18 21:27 开始', 2, '2024-09-18 21:27:24', '2024-09-18 21:27:24', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (204, '1838856810738528257', 1, '欢迎来参加 项目上线通知 会议', '我们会议将于 2024-09-25 16:23 开始', 2, '2024-09-25 16:23:23', '2024-09-25 16:23:23', 0);
INSERT INTO `t_meeting_notice_xq` VALUES (205, '1838856810738528257', 1, '123123', '3123123123', 1, '2024-09-25 16:27:55', '2024-09-25 16:27:55', 0);

-- ----------------------------
-- Table structure for t_meeting_password_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_meeting_password_xq`;
CREATE TABLE `t_meeting_password_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT,
  `meeting_id_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password_xq` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '会议密码',
  `enabled_xq` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否启用',
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `meeting_id`(`meeting_id_xq`) USING BTREE,
  CONSTRAINT `t_meeting_password_xq_ibfk_1` FOREIGN KEY (`meeting_id_xq`) REFERENCES `t_meeting_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_meeting_password_xq
-- ----------------------------
INSERT INTO `t_meeting_password_xq` VALUES (17, '1743341549404631042', '123456', 0);
INSERT INTO `t_meeting_password_xq` VALUES (18, '1743344860056858626', '123', 0);
INSERT INTO `t_meeting_password_xq` VALUES (19, '1743363518740185090', '123456', 1);
INSERT INTO `t_meeting_password_xq` VALUES (20, '1743364967557644290', '123456', 0);
INSERT INTO `t_meeting_password_xq` VALUES (21, '1743366121217736706', '123456', 0);
INSERT INTO `t_meeting_password_xq` VALUES (22, '1743367390841946113', '123456', 0);
INSERT INTO `t_meeting_password_xq` VALUES (23, '1743370881979269122', '123456', 1);
INSERT INTO `t_meeting_password_xq` VALUES (24, '1743371673532514305', '123456', 0);
INSERT INTO `t_meeting_password_xq` VALUES (25, '1743372967861174273', '123456', 0);
INSERT INTO `t_meeting_password_xq` VALUES (26, '1751381170930585601', '', 0);
INSERT INTO `t_meeting_password_xq` VALUES (27, '1751383935941611521', '', 0);
INSERT INTO `t_meeting_password_xq` VALUES (28, '1751389561388294145', '', 0);
INSERT INTO `t_meeting_password_xq` VALUES (29, '1751391620049166337', '', 0);
INSERT INTO `t_meeting_password_xq` VALUES (30, '1751393908163633153', '', 0);
INSERT INTO `t_meeting_password_xq` VALUES (31, '1751396026320707585', '', 0);
INSERT INTO `t_meeting_password_xq` VALUES (32, '1751397366711214082', '', 0);
INSERT INTO `t_meeting_password_xq` VALUES (33, '1759153945111961602', '', 0);
INSERT INTO `t_meeting_password_xq` VALUES (34, '1759440622262951937', '', 0);
INSERT INTO `t_meeting_password_xq` VALUES (35, '1759800657614761986', '', 0);
INSERT INTO `t_meeting_password_xq` VALUES (36, '1819301722181443585', '', 0);
INSERT INTO `t_meeting_password_xq` VALUES (37, '1819303315287154690', '', 0);
INSERT INTO `t_meeting_password_xq` VALUES (38, '1819305669784870913', '123456', 0);
INSERT INTO `t_meeting_password_xq` VALUES (39, '1836396606029606913', '', 0);
INSERT INTO `t_meeting_password_xq` VALUES (40, '1838856810738528257', '', 0);

-- ----------------------------
-- Table structure for t_meeting_screenshot_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_meeting_screenshot_xq`;
CREATE TABLE `t_meeting_screenshot_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT,
  `user_id_xq` int(0) NOT NULL,
  `meeting_id_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `path_xq` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `user_id`(`user_id_xq`) USING BTREE,
  INDEX `meeting_id`(`meeting_id_xq`) USING BTREE,
  CONSTRAINT `t_meeting_screenshot_xq_ibfk_1` FOREIGN KEY (`user_id_xq`) REFERENCES `t_users_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_meeting_screenshot_xq_ibfk_2` FOREIGN KEY (`meeting_id_xq`) REFERENCES `t_meeting_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_meeting_screenshot_xq
-- ----------------------------
INSERT INTO `t_meeting_screenshot_xq` VALUES (1, 56, '1743372967861174273', 'img/screenshot/e5053a81-a868-4f3b-ac7f-8566195b0f36.jpg');
INSERT INTO `t_meeting_screenshot_xq` VALUES (2, 65, '1751397366711214082', 'img/screenshot/922c0859-f2df-40a6-87bd-03849683c724.jpg');

-- ----------------------------
-- Table structure for t_meeting_users_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_meeting_users_xq`;
CREATE TABLE `t_meeting_users_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT,
  `meeting_id_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `users_id_xq` int(0) NOT NULL,
  `had_sign_in_xq` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否完成签到',
  `had_sign_in_time_xq` datetime(0) NULL DEFAULT NULL COMMENT '签到时间',
  `had_ban_xq` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否被加入黑名单',
  `had_muted_xq` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否被静言',
  `had_banup_xq` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否被禁止投屏',
  `uping_xq` tinyint(1) NOT NULL DEFAULT 0 COMMENT '投屏中',
  `speeching_xq` tinyint(1) NOT NULL DEFAULT 0 COMMENT '语音中',
  `exist_minute_xq` int(0) NOT NULL DEFAULT 0 COMMENT '参会累计时长(分钟)',
  `to_user_hidden_xq` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除了该会议的记录就对他隐藏',
  `is_founder_xq` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否为会议主持人',
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `users_id`(`users_id_xq`) USING BTREE,
  INDEX `meeting_id`(`meeting_id_xq`) USING BTREE,
  CONSTRAINT `t_meeting_users_xq_ibfk_1` FOREIGN KEY (`meeting_id_xq`) REFERENCES `t_meeting_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_id` FOREIGN KEY (`users_id_xq`) REFERENCES `t_users_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_meeting_users_xq
-- ----------------------------
INSERT INTO `t_meeting_users_xq` VALUES (104, '1743341549404631042', 53, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `t_meeting_users_xq` VALUES (105, '1743344860056858626', 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `t_meeting_users_xq` VALUES (106, '1743344860056858626', 54, 0, NULL, 0, 0, 0, 0, 0, 5, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (107, '1743344860056858626', 55, 0, NULL, 0, 0, 0, 0, 0, 2, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (108, '1743363518740185090', 56, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (109, '1743364967557644290', 56, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (110, '1743366121217736706', 56, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (112, '1743367390841946113', 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `t_meeting_users_xq` VALUES (113, '1743371673532514305', 56, 0, NULL, 0, 0, 0, 0, 0, 2, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (114, '1743371673532514305', 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `t_meeting_users_xq` VALUES (116, '1743372967861174273', 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `t_meeting_users_xq` VALUES (117, '1743372967861174273', 56, 0, NULL, 0, 0, 0, 0, 0, 4, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (118, '1751381170930585601', 59, 1, '2024-01-28 07:11:27', 0, 0, 0, 0, 0, 3, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (119, '1751389561388294145', 61, 0, NULL, 0, 0, 0, 0, 0, 4, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (120, '1751391620049166337', 62, 1, '2024-01-28 07:52:15', 0, 0, 0, 0, 0, 5, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (121, '1751391620049166337', 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `t_meeting_users_xq` VALUES (122, '1751393908163633153', 63, 0, NULL, 0, 0, 0, 0, 0, 2, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (123, '1751393908163633153', 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `t_meeting_users_xq` VALUES (124, '1751396026320707585', 64, 1, '2024-01-28 08:06:50', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (126, '1751397366711214082', 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `t_meeting_users_xq` VALUES (127, '1751397366711214082', 65, 0, NULL, 0, 0, 0, 0, 0, 33, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (128, '1751393908163633153', 65, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (129, '1759153945111961602', 65, 0, NULL, 0, 0, 0, 0, 0, 34, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (130, '1759153945111961602', 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `t_meeting_users_xq` VALUES (131, '1759800657614761986', 1, 0, NULL, 0, 1, 0, 0, 0, 54, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (132, '1759800657614761986', 65, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `t_meeting_users_xq` VALUES (133, '1819301722181443585', 1, 0, NULL, 0, 0, 0, 0, 0, 4, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (134, '1819305669784870913', 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `t_meeting_users_xq` VALUES (135, '1819305669784870913', 67, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (136, '1836396606029606913', 1, 0, NULL, 0, 0, 0, 0, 0, 2, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (137, '1836396606029606913', 66, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `t_meeting_users_xq` VALUES (138, '1838856810738528257', 68, 0, NULL, 0, 1, 1, 0, 0, 6, 0, 0);
INSERT INTO `t_meeting_users_xq` VALUES (139, '1838856810738528257', 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 1);

-- ----------------------------
-- Table structure for t_meeting_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_meeting_xq`;
CREATE TABLE `t_meeting_xq`  (
  `id_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'id',
  `name_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '会议名称',
  `user_id_xq` int(0) NOT NULL COMMENT '创建会议的用户id（主持人）',
  `create_date_xq` datetime(0) NOT NULL COMMENT '创建会议的时间',
  `start_date_xq` datetime(0) NOT NULL COMMENT '会议开始时间',
  `end_date_xq` datetime(0) NULL DEFAULT NULL COMMENT '会议结束时间',
  `haveLicence_xq` tinyint(1) NOT NULL DEFAULT 0 COMMENT '进入会议是否需要创建者认可',
  `end_xq` tinyint(1) NOT NULL DEFAULT 0 COMMENT '会议是否已经结束',
  `to_owner_hidden_xq` tinyint(1) NOT NULL DEFAULT 0 COMMENT '主持人删除了该会议的记录就对他隐藏',
  `max_number_xq` int(0) NOT NULL DEFAULT 50 COMMENT '参会最多人数',
  `need_face_xq` tinyint(1) NOT NULL DEFAULT 0 COMMENT '进入房间是否需要人脸验证',
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `userid`(`user_id_xq`) USING BTREE,
  CONSTRAINT `userid` FOREIGN KEY (`user_id_xq`) REFERENCES `t_users_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_meeting_xq
-- ----------------------------
INSERT INTO `t_meeting_xq` VALUES ('1743341549404631042', '222', 53, '2024-01-06 02:39:50', '2024-01-06 02:39:00', '2024-01-06 02:42:13', 1, 1, 0, 50, 0);
INSERT INTO `t_meeting_xq` VALUES ('1743344860056858626', '饭桶聚会', 1, '2024-01-06 02:52:59', '2024-01-06 03:52:00', '2024-01-28 08:07:52', 1, 1, 0, 50, 0);
INSERT INTO `t_meeting_xq` VALUES ('1743363518740185090', '饭桶聚会2.0', 1, '2024-01-06 04:07:08', '2024-01-06 04:06:00', '2024-01-28 08:07:54', 0, 1, 0, 50, 0);
INSERT INTO `t_meeting_xq` VALUES ('1743364967557644290', '饭桶3.0', 1, '2024-01-06 04:12:53', '2024-01-06 04:12:00', '2024-01-28 08:07:55', 1, 1, 0, 50, 0);
INSERT INTO `t_meeting_xq` VALUES ('1743366121217736706', '饭桶4.0', 1, '2024-01-06 04:17:28', '2024-01-06 04:17:00', '2024-01-28 08:07:55', 1, 1, 0, 50, 0);
INSERT INTO `t_meeting_xq` VALUES ('1743367390841946113', '饭桶5.0', 1, '2024-01-06 04:22:31', '2024-01-06 04:22:00', '2024-01-28 08:07:55', 1, 1, 0, 20, 0);
INSERT INTO `t_meeting_xq` VALUES ('1743370881979269122', '饭桶11', 1, '2024-01-06 04:36:23', '2024-01-06 04:36:00', '2024-01-06 04:37:53', 0, 1, 0, 50, 0);
INSERT INTO `t_meeting_xq` VALUES ('1743371673532514305', '饭桶吃饭了', 1, '2024-01-06 04:39:32', '2024-01-06 04:39:00', '2024-01-28 08:07:56', 1, 1, 0, 10, 0);
INSERT INTO `t_meeting_xq` VALUES ('1743372967861174273', '吃饭了饭桶', 1, '2024-01-06 04:44:41', '2024-01-06 04:44:00', '2024-01-28 08:07:56', 1, 1, 0, 50, 0);
INSERT INTO `t_meeting_xq` VALUES ('1751381170930585601', '5555', 57, '2024-01-28 07:06:25', '2024-01-28 07:06:00', '2024-01-28 08:19:18', 1, 1, 0, 50, 1);
INSERT INTO `t_meeting_xq` VALUES ('1751383935941611521', '22222', 59, '2024-01-28 07:17:24', '2024-01-28 07:17:00', NULL, 1, 0, 0, 100, 1);
INSERT INTO `t_meeting_xq` VALUES ('1751389561388294145', '春节值班通知', 59, '2024-01-28 07:39:45', '2024-01-28 07:39:00', NULL, 1, 0, 0, 50, 1);
INSERT INTO `t_meeting_xq` VALUES ('1751391620049166337', '春节加班通知', 1, '2024-01-28 07:47:56', '2024-01-28 07:47:00', '2024-01-28 08:07:56', 1, 1, 0, 50, 1);
INSERT INTO `t_meeting_xq` VALUES ('1751393908163633153', '123', 1, '2024-01-28 07:57:02', '2024-01-28 07:56:00', '2024-08-02 17:21:15', 1, 1, 0, 50, 1);
INSERT INTO `t_meeting_xq` VALUES ('1751396026320707585', '156', 1, '2024-01-28 08:05:27', '2024-01-28 08:05:00', '2024-08-02 17:21:16', 1, 1, 0, 50, 1);
INSERT INTO `t_meeting_xq` VALUES ('1751397366711214082', '裁员通知', 1, '2024-01-28 08:10:46', '2024-01-28 08:10:00', '2024-08-02 17:21:17', 1, 1, 0, 50, 1);
INSERT INTO `t_meeting_xq` VALUES ('1759153945111961602', '11111', 1, '2024-02-18 17:52:39', '2024-02-18 17:52:00', '2024-08-02 17:21:17', 0, 1, 0, 50, 0);
INSERT INTO `t_meeting_xq` VALUES ('1759440622262951937', '1112121', 65, '2024-02-19 12:51:48', '2024-02-19 12:51:00', NULL, 0, 0, 0, 100, 0);
INSERT INTO `t_meeting_xq` VALUES ('1759800657614761986', 'r5r5', 65, '2024-02-20 12:42:27', '2024-02-20 12:42:00', NULL, 0, 0, 0, 50, 0);
INSERT INTO `t_meeting_xq` VALUES ('1819301722181443585', '213', 67, '2024-08-02 17:18:26', '2024-08-02 17:18:00', NULL, 1, 0, 0, 50, 0);
INSERT INTO `t_meeting_xq` VALUES ('1819303315287154690', '12111', 67, '2024-08-02 17:24:46', '2024-08-02 17:24:00', NULL, 1, 0, 0, 45, 0);
INSERT INTO `t_meeting_xq` VALUES ('1819305669784870913', '312', 1, '2024-08-02 17:34:07', '2024-08-02 17:33:00', NULL, 0, 0, 0, 50, 0);
INSERT INTO `t_meeting_xq` VALUES ('1836396606029606913', 'qqqqq', 66, '2024-09-18 21:27:24', '2024-09-18 21:27:00', NULL, 1, 0, 0, 50, 0);
INSERT INTO `t_meeting_xq` VALUES ('1838856810738528257', '项目上线通知', 1, '2024-09-25 16:23:23', '2024-09-25 16:23:00', NULL, 1, 0, 0, 10, 0);

-- ----------------------------
-- Table structure for t_menu_role_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_menu_role_xq`;
CREATE TABLE `t_menu_role_xq`  (
  `id_xq` int(0) NOT NULL COMMENT 'id',
  `menu_id_xq` int(0) NULL DEFAULT NULL COMMENT 'menu_id',
  `role_id_xq` int(0) NULL DEFAULT NULL COMMENT 'role_id',
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `menu_id2`(`menu_id_xq`) USING BTREE,
  INDEX `role_id2`(`role_id_xq`) USING BTREE,
  CONSTRAINT `menu_id2` FOREIGN KEY (`menu_id_xq`) REFERENCES `t_menu_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_id2` FOREIGN KEY (`role_id_xq`) REFERENCES `t_role_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_menu_role_xq
-- ----------------------------
INSERT INTO `t_menu_role_xq` VALUES (1, 2, 1);
INSERT INTO `t_menu_role_xq` VALUES (2, 3, 2);
INSERT INTO `t_menu_role_xq` VALUES (3, 4, 1);
INSERT INTO `t_menu_role_xq` VALUES (4, 5, 2);
INSERT INTO `t_menu_role_xq` VALUES (5, 6, 4);
INSERT INTO `t_menu_role_xq` VALUES (6, 7, 4);
INSERT INTO `t_menu_role_xq` VALUES (7, 8, 5);
INSERT INTO `t_menu_role_xq` VALUES (8, 9, 5);
INSERT INTO `t_menu_role_xq` VALUES (9, 10, 6);
INSERT INTO `t_menu_role_xq` VALUES (10, 11, 6);
INSERT INTO `t_menu_role_xq` VALUES (11, 12, 7);
INSERT INTO `t_menu_role_xq` VALUES (12, 13, 7);

-- ----------------------------
-- Table structure for t_menu_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_menu_xq`;
CREATE TABLE `t_menu_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `url_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'url',
  `path_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'path',
  `component_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '组件',
  `name_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单名',
  `iconCls_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图标',
  `requireAuth_xq` tinyint(1) NULL DEFAULT NULL COMMENT '是否要求权限',
  `parentid_xq` int(0) NULL DEFAULT NULL COMMENT '父ID',
  `enabled_xq` tinyint(1) NULL DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id_xq`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_menu_xq
-- ----------------------------
INSERT INTO `t_menu_xq` VALUES (1, '/', '', NULL, '所有', NULL, NULL, NULL, 1);
INSERT INTO `t_menu_xq` VALUES (2, '/', '/home', 'Home', '用户管理', 'User', 1, NULL, 1);
INSERT INTO `t_menu_xq` VALUES (3, '/', '/home', 'Home', '会议管理', 'Comment', 1, NULL, 1);
INSERT INTO `t_menu_xq` VALUES (4, '/', '/userList', 'UserList', '用户列表', '', 1, 2, 1);
INSERT INTO `t_menu_xq` VALUES (5, '/', '/meetingList', 'MeetingList', '会议列表', '', 1, 3, 1);
INSERT INTO `t_menu_xq` VALUES (6, '/', '/home', 'Home', '聊天过滤', 'Filter', 1, NULL, 1);
INSERT INTO `t_menu_xq` VALUES (7, '/', '/chatFilter', 'ChatFilter', '聊天过滤', NULL, 1, 6, 1);
INSERT INTO `t_menu_xq` VALUES (8, '/', '/home', 'Home', '数据统计', 'Histogram', 1, NULL, 1);
INSERT INTO `t_menu_xq` VALUES (9, '/', '/dataStatistics', 'DataStatistics', '数据统计', NULL, 1, 8, 1);
INSERT INTO `t_menu_xq` VALUES (10, '/', '/home', 'Home', '管理日志', 'View', 1, NULL, 1);
INSERT INTO `t_menu_xq` VALUES (11, '/', '/adminLog', 'AdminLog', '管理日志', NULL, 1, 10, 1);
INSERT INTO `t_menu_xq` VALUES (12, '/', '/home', 'Home', '用户意见', 'Postcard', 1, NULL, 1);
INSERT INTO `t_menu_xq` VALUES (13, '/', '/userAdvice', 'UserAdvice', '用户意见', NULL, 1, 12, 1);

-- ----------------------------
-- Table structure for t_role_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_role_xq`;
CREATE TABLE `t_role_xq`  (
  `id_xq` int(0) NOT NULL COMMENT 'id',
  `perms_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '权限识别',
  `name_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '权限名',
  `remark_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `hidden_xq` tinyint(1) NULL DEFAULT 0 COMMENT '是否隐藏',
  PRIMARY KEY (`id_xq`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_role_xq
-- ----------------------------
INSERT INTO `t_role_xq` VALUES (1, 'user', '用户管理', '可以对用户增删改查', 0);
INSERT INTO `t_role_xq` VALUES (2, 'meeting', '会议管理', '可以对会议增删改查', 0);
INSERT INTO `t_role_xq` VALUES (3, 'role', '权限管理', '可以对权限增删改查', 1);
INSERT INTO `t_role_xq` VALUES (4, 'chatFilter', '聊天过滤', '管理聊天过滤词', 0);
INSERT INTO `t_role_xq` VALUES (5, 'dataStatistics', '数据统计', '查看数据统计表', 0);
INSERT INTO `t_role_xq` VALUES (6, 'adminLog', '管理日志', '管理操作日志', 0);
INSERT INTO `t_role_xq` VALUES (7, 'userAdvice', '用户建议', '管理用户建议', 0);

-- ----------------------------
-- Table structure for t_user_advice_img_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_user_advice_img_xq`;
CREATE TABLE `t_user_advice_img_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT,
  `advice_id_xq` int(0) NOT NULL COMMENT '意见id',
  `img_path_xq` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片路径',
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `advice_id_xq`(`advice_id_xq`) USING BTREE,
  CONSTRAINT `t_user_advice_img_xq_ibfk_1` FOREIGN KEY (`advice_id_xq`) REFERENCES `t_user_advice_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user_advice_img_xq
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_advice_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_user_advice_xq`;
CREATE TABLE `t_user_advice_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT,
  `user_id_xq` int(0) NOT NULL COMMENT '用户id',
  `type_xq` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '意见种类 建议改进  反馈BUG ',
  `title_xq` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '描述标题',
  `content_xq` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '描述内容',
  `time_xq` datetime(0) NOT NULL COMMENT '发起时间',
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `user_id`(`user_id_xq`) USING BTREE,
  CONSTRAINT `t_user_advice_xq_ibfk_1` FOREIGN KEY (`user_id_xq`) REFERENCES `t_users_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user_advice_xq
-- ----------------------------
INSERT INTO `t_user_advice_xq` VALUES (1, 56, '反馈BUG', '11111', '1111111111', '2024-01-06 04:29:37');
INSERT INTO `t_user_advice_xq` VALUES (2, 56, '反馈BUG', '4444', '44444444444', '2024-01-06 04:50:48');
INSERT INTO `t_user_advice_xq` VALUES (3, 65, '反馈BUG', 'fsdfsd', 'dfsdfsdfds', '2024-01-28 08:18:49');
INSERT INTO `t_user_advice_xq` VALUES (4, 67, '建议改进', '3123123123', '3123123123', '2024-08-02 17:30:57');
INSERT INTO `t_user_advice_xq` VALUES (5, 66, '建议改进', '3123123', '21312321321', '2024-09-18 21:32:55');
INSERT INTO `t_user_advice_xq` VALUES (6, 68, '反馈BUG', '声音小', '111111111111', '2024-09-25 16:30:22');

-- ----------------------------
-- Table structure for t_users_face_feature_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_users_face_feature_xq`;
CREATE TABLE `t_users_face_feature_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT,
  `user_id_xq` int(0) NOT NULL,
  `face_feature_xq` varchar(4096) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '面部特征信息',
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `user_id`(`user_id_xq`) USING BTREE,
  CONSTRAINT `t_users_face_feature_xq_ibfk_1` FOREIGN KEY (`user_id_xq`) REFERENCES `t_users_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_users_face_feature_xq
-- ----------------------------
INSERT INTO `t_users_face_feature_xq` VALUES (1, 57, '0.00093941373,0.11307028,-0.07743651,0.05651281,0.032177705,-0.041739658,0.13131225,-0.051640563,-0.17796296,0.05596023,0.04119691,0.25553894,0.15393585,-0.11443403,0.10895295,-0.078552455,-0.03674547,-0.12388797,0.058394797,0.1361453,-0.07945081,0.20596611,0.03586259,0.022443365,0.11987093,0.005610375,-0.06843365,-0.15303215,0.07000084,-0.00055055827,-0.11918992,0.12521121,0.049511712,0.096689306,0.10267787,0.09412933,0.064364396,0.019924184,-0.020358257,0.0066127465,0.01606044,-0.019857293,0.17944698,0.04023707,-0.0024306262,-0.06697679,0.014701462,-0.07467612,0.1499254,-0.10706908,0.060553785,0.109412834,0.015443927,0.24244985,-0.030477745,0.03936852,-0.0557925,0.010961093,0.05011023,0.0401215,-0.02404448,0.0035908986,0.0021982102,0.07286477,0.002345176,-0.017273767,0.04617402,-0.10434366,0.11439149,0.008629483,0.025679506,-0.10112399,-0.10344574,0.10043877,-0.0936867,-0.024268571,0.10613997,-0.016856533,0.14864102,0.163283,-0.08266664,0.14189808,0.13778107,0.06038084,0.02287894,0.06133466,0.108169,0.008246509,0.014786497,-0.1104966,-0.00025234575,0.059642263,0.05721597,-0.0011000843,0.00047635828,-0.14003855,0.0018122158,0.18302558,0.076675266,-0.024577543,0.01819115,0.009433093,-0.089931145,-0.039166324,0.02710429,-0.10778684,-0.0111322785,-0.083752796,0.13354501,0.06551383,-0.030432504,-0.10718125,0.035114743,-0.029395891,-0.08925074,0.046421792,-0.065315716,0.038804013,-0.04300376,-0.053051032,0.11359265,0.033271343,0.089692436,0.1196465,-0.12585446,0.0018257326,0.083226725,-0.09354079');
INSERT INTO `t_users_face_feature_xq` VALUES (2, 59, '0.03642142,0.059825215,0.004891365,0.04778652,-0.0022374059,-0.09198717,0.07662752,-0.028364424,-0.14193828,0.20250072,0.029402373,0.28860676,0.0008236799,-0.19382684,0.096878596,-0.02938317,-0.050615255,-0.1648848,-0.0074676797,0.18607259,0.03361502,0.16995138,0.031219054,0.030222325,0.03840799,0.05704646,-0.073513635,-0.09337125,0.082786106,0.106593825,-0.018088287,0.09220858,0.0047696363,0.080226064,0.040668335,0.11056476,0.09590666,-0.02365337,0.017332772,0.04280497,0.021936204,-0.059784032,0.14332458,-0.045667455,0.015236854,-0.041582417,0.0026651092,-0.10788838,0.064661875,-0.041253045,0.072681904,0.14487745,-0.12287069,0.1591209,-0.017056104,-0.037666593,-0.05596266,-0.0051646414,0.11053788,0.049293704,0.021229677,0.11781074,-0.021755451,0.098811164,-0.017463766,-0.07830045,0.11892978,-0.13941672,0.12604323,-0.022722397,-0.013316003,-0.048956055,-0.13369001,0.16933958,-0.0036414405,-0.044444583,0.04532695,-0.06292078,-0.01813551,0.17857146,-0.06312413,0.13567418,0.09469983,0.024720106,0.08479565,0.14682266,0.057663683,-0.017294824,0.030987889,-0.004641159,-0.042804,-0.08343776,0.04855087,0.07024516,-0.0038170414,-0.24677236,0.018488653,0.09581198,0.051410228,-0.113320515,-0.0041585327,-0.015755692,-0.051094975,0.0049022865,-0.013474262,-0.11855301,-0.1223091,-0.06616244,0.118055716,0.06281025,-0.011786171,-0.1402472,-0.018522335,-0.09873359,-0.06911395,0.032227967,-0.103813395,0.04962443,-0.035291918,-0.0483416,0.028276525,0.027499491,0.019915162,0.103969626,-0.120362565,0.017996509,0.0007655034,-0.07454532');
INSERT INTO `t_users_face_feature_xq` VALUES (3, 60, '-0.011277939,0.07814412,-0.07527799,0.09514574,-0.0029769512,0.027508738,0.1282703,0.0366802,-0.24084936,0.03293881,0.0015842865,0.23193473,0.043465935,-0.11172577,0.13235,0.044423565,-0.043166686,-0.07088463,-0.0033370547,0.0928831,-0.053492695,0.1149346,-0.10033325,0.046971586,0.063869044,0.03327954,-0.12673593,-0.185123,0.09966167,0.027551346,0.022511072,0.111655034,0.014488525,0.17171235,0.13463658,0.08143922,0.048411686,-0.022146467,0.029504482,-0.03093826,0.061061036,-0.098400295,0.17437038,-0.00015398042,0.0059545045,-0.056214362,0.019263146,-0.114560924,0.09944685,-0.015430408,-0.09600584,0.09379648,-0.042915598,0.22717808,-0.07027541,0.010956252,-0.050154828,0.011710096,0.09498107,0.09854001,-0.015225764,0.030457318,0.03221505,0.039386682,0.071101315,-0.058747694,0.069809794,-0.067980364,0.07630497,0.071648665,0.039241433,0.003386142,-0.09124336,0.1318925,-0.015558879,-0.05985558,0.06655953,-0.07207793,0.116217084,0.10589428,-0.08006753,0.1847576,0.1639594,0.057544142,0.041769173,0.11518025,0.15098196,-0.03461994,0.028398996,-0.0057420493,-0.07941452,0.040891416,0.050944168,0.035796534,0.1091825,-0.19182408,-0.0006789832,0.12261985,-0.07273553,-0.042875532,-0.06888551,-0.03658873,0.03948962,-0.06185627,-0.07444406,-0.06466683,0.044082306,-0.082688235,-0.03199953,-0.017158985,-0.08413924,-0.12855594,-0.054816596,-0.066417396,-0.10595146,0.023163516,-0.17605624,0.044848185,-0.04921162,-0.036963865,0.0684998,0.0374929,0.092686094,0.17937943,-0.053498123,-0.038616955,0.055138174,-0.080081426');
INSERT INTO `t_users_face_feature_xq` VALUES (4, 61, '-0.092945024,0.12167016,-0.008506574,0.05896052,0.0366085,-0.03847496,0.18400851,0.029094413,-0.17464152,0.08078271,0.13287888,0.21349303,0.1968875,0.03162424,-0.009913608,-0.04576672,0.069657035,-0.13501099,-0.13131213,0.029771464,-0.17689696,0.12582552,-0.12155963,0.045500785,0.08019794,-0.006866102,-0.053502142,-0.05115919,0.11016051,-0.023733968,-0.058729388,0.049877733,0.000801523,0.074228376,0.03662698,0.15058003,-0.02030392,0.0241047,0.042336576,0.046382453,0.119494624,-0.18372415,0.1805311,0.0511399,-0.013159386,-0.042844772,0.066022485,0.056266733,0.12421009,-0.03609573,0.085457794,0.06409555,-0.05547399,0.14764246,-0.103186406,0.07749194,-0.029352944,-0.038296927,0.052789833,-0.005424566,0.026408706,-0.02764167,0.05625543,0.030926827,0.048052717,0.041185576,0.018721975,0.011648881,0.12049521,0.03779101,0.006913796,-0.041350678,-0.07361233,0.01003999,0.0030458742,-0.019645993,-0.06326685,0.026961219,0.056001857,0.144448,-0.00873727,0.03743839,-0.01917409,-0.009919696,0.16587786,0.07890667,-0.041853487,-0.0979552,-0.13158903,-0.071722746,-0.06251305,0.12852785,0.0030551124,-0.03164817,-0.044043645,-0.028894959,-0.009516437,-0.01286287,0.08341585,-0.119301595,-0.06672492,-0.029854815,0.02207192,0.036347337,-0.04065299,-0.1041302,0.07630176,0.039790835,0.095341444,0.20651619,0.018194906,0.04499472,0.12376265,0.028210195,-0.08445923,-0.10765605,-0.22656886,0.032291755,-0.050845563,0.0074162064,0.017148077,-0.14586107,0.07318818,0.1528967,-0.22367693,-0.035556894,0.072064675,-0.008129628');
INSERT INTO `t_users_face_feature_xq` VALUES (5, 62, '-0.005728816,0.062101647,-0.039870907,0.08052913,0.0012871025,-0.020441521,0.1211951,0.025242576,-0.13895828,0.012956837,0.040395107,0.19550842,0.08512766,0.0034963056,-0.0024877738,0.0030100858,0.045850173,-0.06867013,-0.018767534,0.098248355,-0.04082334,0.020441892,-0.036364857,0.022089716,0.043042023,-0.0014700592,-0.126114,-0.09790976,-0.007379204,0.049000457,0.07163527,0.09249108,0.004694519,0.18244782,0.16351701,0.021198386,-0.0662437,0.016150136,0.09702087,0.009908651,0.10779303,-0.13741428,0.2619795,0.07667888,0.05172121,-0.08881473,-0.030325908,-0.054293603,0.18832476,-0.10150019,0.1015624,0.07813854,-0.07745024,0.29443565,0.06869097,-0.06508914,-0.064419664,-0.01288057,0.07011316,0.1368871,0.024152922,0.039739154,0.03084127,0.10975582,-0.0015778142,-0.0545271,0.009502113,0.0042566317,0.05521746,0.060603276,-0.10564822,0.0048618885,-0.12190926,0.15349363,0.062571175,-0.08871712,-0.07172993,-0.061876208,0.023777474,0.08347244,-0.124117374,0.10823384,-0.044802286,0.0074666287,0.10543604,0.090915434,0.07025191,-0.085078254,0.038426794,-0.06594981,-0.0744456,0.00042622967,-0.08466163,0.02392375,-0.013447754,-0.073412165,0.009263051,0.036319897,0.013687692,-0.10895141,-0.1326132,0.017541278,0.13786627,-0.06698012,-0.02900886,-0.098075606,0.037921935,-0.091669984,0.088535406,0.13997264,-0.02241039,-0.011964403,0.062442377,-0.029130453,-0.090236574,0.013509081,-0.18021555,-0.044766903,-0.095091626,-0.04517607,0.122771055,-0.112593226,0.08034078,0.14378199,-0.17054367,-0.0862947,0.072719716,-0.093408465');
INSERT INTO `t_users_face_feature_xq` VALUES (6, 63, '0.06533359,0.08779267,0.095806904,0.020468777,-0.14166315,0.052750263,0.07526289,0.08644748,-0.12018781,0.21022157,0.006702346,0.21729434,0.048170265,-0.13685468,0.100725986,0.053736363,-0.083239995,-0.15014552,-0.050746713,0.1545149,0.061078187,0.09089516,0.052284624,0.0127453,0.02960873,0.03642136,-0.16136755,-0.051075928,0.05204051,0.019524595,-0.08281108,0.14166793,0.027163306,0.073891014,0.06410358,0.09238558,0.030406132,0.04204029,0.062030375,-0.034296554,-0.042737182,-0.14110623,0.04692245,0.041895326,-0.10973662,-0.15271333,0.070674956,-0.104344666,0.008221908,-0.025729556,-0.064684026,0.083399676,-0.120743796,0.20144644,-0.023119759,0.011418447,0.010072318,0.03858182,0.12678881,0.073623866,-0.06189188,0.057373945,-0.08551511,0.08605575,-0.0132184625,-0.16496985,-0.044254955,-0.061346486,0.073398165,0.03797921,-0.0023404835,-0.11106912,-0.02928106,0.038396895,0.16738701,-0.035165183,-0.042781565,-0.07067763,-0.025510773,0.040675916,-0.0123196095,0.16442832,0.07971108,0.06681914,-0.044617277,0.16218531,0.066459164,0.02059374,0.13124056,-0.046139788,-0.11919267,-0.05847593,0.004555062,0.077832796,-0.019886756,-0.14931805,0.043675575,0.10173745,0.019671906,-0.11511155,0.07519846,-0.05399852,0.1064454,-0.1227645,-0.0935173,-0.042691633,-0.1310974,-0.05941923,0.07131768,0.11259359,-0.04623146,-0.12677877,0.08137649,-0.21172613,-0.054985464,0.016405018,-0.041777544,0.07589757,0.010070534,-0.07442967,0.038991492,-0.04983532,0.015032569,0.122340746,-0.056625832,0.0772202,0.008747072,-0.017407903');
INSERT INTO `t_users_face_feature_xq` VALUES (7, 64, '0.06510639,0.2640971,0.17076017,-0.0288692,0.018428477,0.07613162,0.09836262,-0.034019575,0.020520853,0.052848686,0.020577032,0.13991837,0.13187388,0.035024732,0.03113201,-0.10660961,-0.05366667,-0.11304427,-0.11857788,0.08342378,-0.0007667494,0.13278578,0.123852305,-0.053602595,0.15477882,-0.0057758666,-0.007842651,-0.036407635,-0.0010649905,-0.023708133,-0.1467992,-0.007578652,0.10524584,0.0032889838,0.025281677,0.19887368,0.09971015,0.12127745,-0.01429301,-0.00599089,0.0031249172,-0.01435021,0.05361096,-0.033209644,-0.06437041,-0.03339024,-0.0056219418,0.045361318,0.065674864,-0.11569263,0.12161025,0.10807229,0.027188478,0.101287335,0.11296497,-0.15293473,-0.019134426,0.11176582,0.09677137,0.09331246,-0.0327406,0.06815507,-0.13054083,0.037809853,0.027648266,-0.016928893,-0.032956496,-0.0024622276,-0.04075322,-0.0329913,0.005339842,-0.15248713,0.05467537,0.055179454,0.21379803,0.14338247,-0.1259227,-0.045336653,-0.0022470104,0.024774915,-0.008598376,0.15328364,-0.07512552,-0.011241276,-0.07782432,0.1126258,0.06502937,0.23796074,0.058564894,-0.08224067,0.052987482,0.035104964,-0.016197156,0.115948886,-0.052779283,-0.06285137,0.058888443,0.12458818,-0.059288617,-0.10048918,0.06935289,-0.12298813,0.057546083,-0.0083272755,0.057462726,0.010872398,-0.11695058,-0.057738546,-0.0009800614,0.101766184,0.042853806,0.017394753,0.1409292,-0.117012896,-0.0766814,-0.027598316,-0.061660443,0.18527967,-0.046238247,-0.002170598,-0.04420828,-0.15466267,-0.04428796,0.02309294,-0.06594538,0.06477694,0.041123196,0.011605763');
INSERT INTO `t_users_face_feature_xq` VALUES (8, 65, '-0.012994757,-0.05645565,-0.05469193,0.04472261,0.013750848,0.039343134,0.08483951,-0.057763528,-0.15348412,0.1491762,0.13041297,0.08773198,0.09188582,0.0074404767,0.032959815,-0.04495581,-0.036017597,-0.06066812,-0.05135161,0.13874632,-0.08569203,0.20647745,-0.04402854,0.031058786,0.022844039,-0.021513944,-0.18818942,-0.10640349,0.020853056,0.01176183,-0.023471994,0.013249886,0.12383481,0.02531084,0.13553187,0.16855878,0.020618236,0.07081406,0.04273603,0.04885687,-0.093097486,-0.117662385,0.15230915,-0.036354035,0.040977698,-0.019555546,0.026308546,0.0022302715,0.11299036,0.0062357425,-0.028864224,0.09476121,-0.1368244,0.1577211,-0.030740798,0.08024676,0.05490289,0.06753182,-0.07039986,-0.053286746,0.01093054,0.031645343,0.013328829,0.023969278,-0.01501223,-0.047775272,-0.011381124,-0.041154806,0.07183103,0.05994444,-0.0052848295,0.009923754,-0.068405256,0.1545922,-0.002934435,-0.12563644,0.09644159,-0.04033043,0.08367403,0.13137254,-0.09227864,0.048875447,0.11507865,0.0600928,0.015601962,0.12803897,-0.06270454,-0.03224328,-0.032319006,-0.1239838,0.013791685,0.1405448,0.0077650035,-0.06739024,-0.1158166,-0.2385693,-0.07378836,0.1512497,0.07805593,-0.06536109,0.03211239,0.0056778514,-0.03671441,-0.101965375,-0.14410236,-0.09310994,0.01843243,-0.017364884,0.09300654,0.1141653,-0.058425754,0.08102774,0.07851713,-0.098061845,0.029779427,0.037214153,-0.19227242,0.029725404,0.020191971,-0.010545196,0.019044029,0.056385227,0.12627022,0.20009454,-0.24802819,0.0058884216,0.06314721,-0.085454375');

-- ----------------------------
-- Table structure for t_users_friend_inform_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_users_friend_inform_xq`;
CREATE TABLE `t_users_friend_inform_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT,
  `type_xq` tinyint(0) NOT NULL COMMENT '通知消息类型 0 好友申请 1 好友消息',
  `from_id_xq` int(0) NOT NULL COMMENT '发送消息的userid',
  `to_id_xq` int(0) NOT NULL COMMENT '接收消息的userid',
  `content_xq` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '消息内容',
  `state_xq` tinyint(0) NOT NULL COMMENT '0 未读 1 已读',
  `send_time_xq` datetime(0) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `to_id`(`to_id_xq`) USING BTREE,
  CONSTRAINT `t_users_friend_inform_xq_ibfk_1` FOREIGN KEY (`to_id_xq`) REFERENCES `t_users_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 618 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_users_friend_inform_xq
-- ----------------------------
INSERT INTO `t_users_friend_inform_xq` VALUES (592, 0, 54, 53, '', 0, '2024-01-06 02:56:10');
INSERT INTO `t_users_friend_inform_xq` VALUES (598, 0, 56, 1, '', 1, '2024-01-06 04:49:46');
INSERT INTO `t_users_friend_inform_xq` VALUES (599, 1, 1, 56, '我同意了你的好友请求,现在可以进行聊天了', 1, '2024-01-06 04:49:56');
INSERT INTO `t_users_friend_inform_xq` VALUES (600, 1, 1, 56, '永远永远永远永远', 1, '2024-01-06 04:50:03');
INSERT INTO `t_users_friend_inform_xq` VALUES (601, 1, 1, 56, '**', 1, '2024-01-06 04:50:07');
INSERT INTO `t_users_friend_inform_xq` VALUES (611, 0, 1, 66, '', 1, '2024-09-18 21:32:14');
INSERT INTO `t_users_friend_inform_xq` VALUES (612, 1, 66, 1, '我同意了你的好友请求,现在可以进行聊天了', 1, '2024-09-18 21:32:20');
INSERT INTO `t_users_friend_inform_xq` VALUES (613, 1, 1, 66, '3123123123', 1, '2024-09-18 21:32:33');
INSERT INTO `t_users_friend_inform_xq` VALUES (614, 1, 66, 1, '321312321321', 1, '2024-09-18 21:32:40');
INSERT INTO `t_users_friend_inform_xq` VALUES (615, 0, 68, 1, '', 1, '2024-09-25 16:28:53');
INSERT INTO `t_users_friend_inform_xq` VALUES (616, 1, 1, 68, '我同意了你的好友请求,现在可以进行聊天了', 1, '2024-09-25 16:29:05');
INSERT INTO `t_users_friend_inform_xq` VALUES (617, 1, 68, 1, '你好', 1, '2024-09-25 16:29:19');
INSERT INTO `t_users_friend_inform_xq` VALUES (618, 1, 1, 68, '214423', 1, '2024-09-25 16:29:27');

-- ----------------------------
-- Table structure for t_users_friend_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_users_friend_xq`;
CREATE TABLE `t_users_friend_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT,
  `user_id1_xq` int(0) NULL DEFAULT NULL,
  `user_id2_xq` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `t_users_friend_ibfk_1`(`user_id1_xq`) USING BTREE,
  CONSTRAINT `t_users_friend_xq_ibfk_1` FOREIGN KEY (`user_id1_xq`) REFERENCES `t_users_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_users_friend_xq
-- ----------------------------
INSERT INTO `t_users_friend_xq` VALUES (95, 56, 1);
INSERT INTO `t_users_friend_xq` VALUES (98, 1, 66);
INSERT INTO `t_users_friend_xq` VALUES (99, 68, 1);

-- ----------------------------
-- Table structure for t_users_role_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_users_role_xq`;
CREATE TABLE `t_users_role_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id_xq` int(0) NOT NULL,
  `role_id_xq` int(0) NOT NULL,
  PRIMARY KEY (`id_xq`) USING BTREE,
  INDEX `userId2`(`user_id_xq`) USING BTREE,
  INDEX `roleId2`(`role_id_xq`) USING BTREE,
  CONSTRAINT `roleId2` FOREIGN KEY (`role_id_xq`) REFERENCES `t_role_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userId2` FOREIGN KEY (`user_id_xq`) REFERENCES `t_users_xq` (`id_xq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_users_role_xq
-- ----------------------------
INSERT INTO `t_users_role_xq` VALUES (1, 1, 1);
INSERT INTO `t_users_role_xq` VALUES (2, 1, 2);
INSERT INTO `t_users_role_xq` VALUES (3, 1, 3);
INSERT INTO `t_users_role_xq` VALUES (4, 1, 4);
INSERT INTO `t_users_role_xq` VALUES (5, 1, 5);
INSERT INTO `t_users_role_xq` VALUES (6, 1, 6);
INSERT INTO `t_users_role_xq` VALUES (7, 1, 7);
INSERT INTO `t_users_role_xq` VALUES (64, 54, 1);
INSERT INTO `t_users_role_xq` VALUES (65, 54, 5);
INSERT INTO `t_users_role_xq` VALUES (66, 54, 6);
INSERT INTO `t_users_role_xq` VALUES (67, 54, 7);
INSERT INTO `t_users_role_xq` VALUES (68, 55, 2);
INSERT INTO `t_users_role_xq` VALUES (69, 55, 4);

-- ----------------------------
-- Table structure for t_users_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_users_xq`;
CREATE TABLE `t_users_xq`  (
  `id_xq` int(0) NOT NULL AUTO_INCREMENT,
  `name_xq` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名称',
  `username_xq` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password_xq` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `telephone_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email_xq` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `headImage_xq` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `faceImage_xq` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '面部照片路径',
  `isAdmin_xq` tinyint(1) NULL DEFAULT 0 COMMENT '是否拥有后台权限',
  PRIMARY KEY (`id_xq`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_users_xq
-- ----------------------------
INSERT INTO `t_users_xq` VALUES (1, 'root', 'root', '$2a$10$ipQv5C49Y6SETYdtOG01TunR4uyqNNMIVaiUjUgRbt921gJd5Ihwq', NULL, NULL, 'img\\head\\default.jpg', NULL, 1);
INSERT INTO `t_users_xq` VALUES (53, '123456', '鹏宇垣', '', '13522303650', '123456@qq.com', 'img\\head\\default.jpg', NULL, 0);
INSERT INTO `t_users_xq` VALUES (54, '1234', '123', '$2a$10$0YBcGyEAgpmEQHQLKkTTdekrrvx9pUcGawtYQqf7Bn38QKfOwoUaq', '13544565434', '1234@qq.com', 'img\\head\\default.jpg', NULL, 1);
INSERT INTO `t_users_xq` VALUES (55, '王俊凯', '22', '', '13522303690', '1234@qq.com', 'img\\head\\default.jpg', NULL, 1);
INSERT INTO `t_users_xq` VALUES (56, '李小龙', '55', '$2a$10$xrc93Eu8IjRV0x8Cm2vlh.mSpkz.SajJS018Q/gVC0Z7qWwCKuiHG', '13566936203', '123@qq.com', 'img\\head\\default.jpg', NULL, 0);
INSERT INTO `t_users_xq` VALUES (57, '李主任', '888', '$2a$10$7/A7.UHTZMkR.bLKkcovBeFty2APnJ4utnQ3P.brhp3WRdJm9oMGi', '13633523652', '888@qq.cpm', 'img\\head\\default.jpg', 'img\\face\\969e86a5-b1be-46a7-83ec-ddb5bc1d7d2e.jpg', 0);
INSERT INTO `t_users_xq` VALUES (58, '成龙', 'main', '$2a$10$/19GNYGHr70hzHyTtG1PkehFkz1SSarZTwn7wmsGy3Lw55Dpev0Ue', '13522503965', '258@qq.com', 'img\\head\\default.jpg', NULL, 0);
INSERT INTO `t_users_xq` VALUES (59, '小卡拉米', 'aaaa', '$2a$10$iNohe0pFSXUzBiBO/zzL4.X/qxQ4Ynab8.2xFmjRHxNM8fEWCDTZa', '13566666666', 'aaaa@qq.com', 'img\\head\\default.jpg', 'img\\face\\5847ae3e-1075-42e2-abd3-457dafd739d2.jpg', 0);
INSERT INTO `t_users_xq` VALUES (60, '55', '45', '$2a$10$Li7szYfsscJCwzZDJ1N.judjl9mzI2BqzX4fnZzNS4TM5XqzqLKOW', '13699869696', '55@qq.com', 'img\\head\\default.jpg', 'img\\face\\e776569a-88b9-46bc-b65c-7a8ca4fc4088.jpg', 0);
INSERT INTO `t_users_xq` VALUES (61, '王老板', '王老板', '$2a$10$.HA2vHg1l62LwKGos.gEOuXbwhzjtmGZrSVSuYkpx0guGBsqbT0qa', '13566956236', '88@qq.com', 'img\\head\\default.jpg', 'img\\face\\59a103e9-4c4f-444e-87dc-988b4e41840f.jpg', 0);
INSERT INTO `t_users_xq` VALUES (62, '李老板', '李老板', '$2a$10$TJLKGbTiW9LKFy8Pf3NVg.Qsc4OzMOEmszum43g1gGCfp.JUduOpy', '13544626352', '77@qq.com', 'img\\head\\default.jpg', 'img\\face\\a4c2710e-5046-4f8c-939c-5351ee8c8813.jpg', 0);
INSERT INTO `t_users_xq` VALUES (63, '何老板', '何老板', '$2a$10$plP9dnKTmfTeSze.suX8He/ZsPfZE2N/gd6Th/m2YFaSOzQH/eP86', '15269856398', '4545@qq.com', 'img\\head\\default.jpg', 'img\\face\\d771b98b-d322-49f7-83d9-cbfdbaa3a507.jpg', 0);
INSERT INTO `t_users_xq` VALUES (64, '小二', '小二', '$2a$10$t579BEbFyc5tY7gTRbUyH.G5rRo0FSR8rsckHoKARdTYOfBw55rlG', '13566320365', '454554@qq.com', 'img\\head\\default.jpg', 'img\\face\\590606b4-76e8-456b-8b1b-cfa4782e3782.jpg', 0);
INSERT INTO `t_users_xq` VALUES (65, '李同学', '李同学', '$2a$10$VvhphoTeMle6gn2kZp.V0uAuKeqBgltcByIEr.0bGTtVbLP/T1Lhq', '13566953623', 'aa@qq.com', 'img\\head\\default.jpg', 'img\\face\\4058d995-1e56-4568-bf66-5163a66a8222.jpg', 0);
INSERT INTO `t_users_xq` VALUES (66, 'we', 'we', '$2a$10$GxmyNSLB8GCEJqHE.DSRXe8kDS3E.ZeYEKGgC.EDeGeeJBH5Ik6Ny', '13533245434', '22222@qq.com', 'img\\head\\default.jpg', NULL, 0);
INSERT INTO `t_users_xq` VALUES (67, 'ere', 'e12', '$2a$10$puR.lM5pAIx7ViU/aceMx.GVtY4TGqN9Ch.wDg0C3S6jvD/zLl0bO', '13433232323', '111@qq.com', 'img\\head\\default.jpg', NULL, 0);
INSERT INTO `t_users_xq` VALUES (68, 'wangwu', 'wangqi', '$2a$10$uyAKWPaZERmiEETX.s8pVOxImFEbwt0svx.mVUz5g7udaBS1EB8k.', '13433232323', '123456@123.com', 'img\\head\\default.jpg', NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
