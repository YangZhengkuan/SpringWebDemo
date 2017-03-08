/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : db_spring_web_demo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-03-08 12:21:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('1', '开发部');
INSERT INTO `departments` VALUES ('2', '销售部');
INSERT INTO `departments` VALUES ('3', '后勤部');
INSERT INTO `departments` VALUES ('4', '管理部');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `birth` date DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbm6ku3vy4sve1hcv7vnpeoj22` (`departmentId`),
  CONSTRAINT `FKbm6ku3vy4sve1hcv7vnpeoj22` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES ('1', '2017-03-07', '2017-03-07 21:04:15', 'aa@yzk.com', 'AA', '2');
INSERT INTO `employees` VALUES ('2', '2017-03-07', '2017-03-07 21:04:18', 'bb@yzk.com', 'BB', '2');
INSERT INTO `employees` VALUES ('3', '2017-03-07', '2017-03-07 21:04:24', 'cc@yzk.com', 'CC', '3');
INSERT INTO `employees` VALUES ('4', '2017-03-07', '2017-03-07 21:04:26', 'dd@yzk.com', 'DD', '3');
INSERT INTO `employees` VALUES ('6', '2017-03-07', '2017-03-07 21:04:30', 'ff@yzk.com', 'FF', '2');
INSERT INTO `employees` VALUES ('7', '2017-03-07', '2017-03-07 21:04:33', 'gg@yzk.com', 'GG', '1');
INSERT INTO `employees` VALUES ('8', '1999-12-12', '2017-03-08 11:00:37', 'ss@yzk.com', 'SS', '1');
