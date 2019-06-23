/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_dorm

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-06-14 00:24:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '111', 'Yanxiang', '男', '17784414559');

-- ----------------------------
-- Table structure for `t_dorm`
-- ----------------------------
DROP TABLE IF EXISTS `t_dorm`;
CREATE TABLE `t_dorm` (
  `dormId` int(11) NOT NULL AUTO_INCREMENT,
  `dormBuildId` int(11) DEFAULT NULL,
  `dormName` varchar(20) DEFAULT NULL,
  `dormType` varchar(20) DEFAULT NULL,
  `dormNumber` int(11) DEFAULT NULL,
  `dormTel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dormId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dorm
-- ----------------------------
INSERT INTO `t_dorm` VALUES ('504', '1', '橘园一舍', '学生公寓', '6', '110');

-- ----------------------------
-- Table structure for `t_dormbuild`
-- ----------------------------
DROP TABLE IF EXISTS `t_dormbuild`;
CREATE TABLE `t_dormbuild` (
  `dormBuildId` int(11) NOT NULL AUTO_INCREMENT,
  `dormBuildName` varchar(20) DEFAULT NULL,
  `dormBuildDetail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dormBuildId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dormbuild
-- ----------------------------
INSERT INTO `t_dormbuild` VALUES ('1', '橘园一舍', '1栋');
INSERT INTO `t_dormbuild` VALUES ('2', '橘园二舍', '2栋');
INSERT INTO `t_dormbuild` VALUES ('3', '橘园三舍', '3栋');
INSERT INTO `t_dormbuild` VALUES ('4', '橘园四舍', '4栋');
INSERT INTO `t_dormbuild` VALUES ('5', '橘园五舍', '5栋');
INSERT INTO `t_dormbuild` VALUES ('6', '橘园六舍', '6栋');
INSERT INTO `t_dormbuild` VALUES ('7', '橘园七舍', '7栋');

-- ----------------------------
-- Table structure for `t_dormmanager`
-- ----------------------------
DROP TABLE IF EXISTS `t_dormmanager`;
CREATE TABLE `t_dormmanager` (
  `dormManId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `dormBuildId` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dormManId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dormmanager
-- ----------------------------
INSERT INTO `t_dormmanager` VALUES ('1', 'manager1', '123', '1', '小张', '男', '666');
INSERT INTO `t_dormmanager` VALUES ('2', 'manager2', '123', '2', '小李', '女', '666');
INSERT INTO `t_dormmanager` VALUES ('3', 'manager3', '123', '3', '小陈', '男', '666');
INSERT INTO `t_dormmanager` VALUES ('4', 'manager4', '123', '4', '小宋', '男', '666');
INSERT INTO `t_dormmanager` VALUES ('5', 'manager5', '123', '5', '小黑', '男', '666');
INSERT INTO `t_dormmanager` VALUES ('6', 'manager6', '123', '6', '小白', '女', '666');
INSERT INTO `t_dormmanager` VALUES ('7', 'manager7', '123', '7', '小明', '男', '666');

-- ----------------------------
-- Table structure for `t_record`
-- ----------------------------
DROP TABLE IF EXISTS `t_record`;
CREATE TABLE `t_record` (
  `recordId` int(11) NOT NULL AUTO_INCREMENT,
  `studentNumber` varchar(20) DEFAULT NULL,
  `studentName` varchar(30) DEFAULT NULL,
  `dormBuildId` int(11) DEFAULT NULL,
  `dormName` varchar(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `detail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`recordId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_record
-- ----------------------------
INSERT INTO `t_record` VALUES ('1', '001', 'A', '3', '橘园三舍', '2019-06-01', '缺勤');
INSERT INTO `t_record` VALUES ('2', '014', 'B', '5', '橘园五舍', '2019-06-03', '缺勤');
INSERT INTO `t_record` VALUES ('3', '013', 'C', '6', '橘园六舍', '2019-06-03', '缺勤');
INSERT INTO `t_record` VALUES ('4', '006', 'D', '4', '橘园四舍', '2019-06-04', '请假');
INSERT INTO `t_record` VALUES ('5', '004', 'E', '4', '橘园四舍', '2019-06-05', '缺勤');
INSERT INTO `t_record` VALUES ('6', '004', 'F', '1', '橘园一舍', '2019-06-05', '缺勤');

-- ----------------------------
-- Table structure for `t_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `studentId` int(11) NOT NULL AUTO_INCREMENT,
  `stuNum` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `dormBuildId` int(11) DEFAULT NULL,
  `dormName` varchar(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('1', '001', '233', 'A', '3', '橘园三舍', '女', '111');
INSERT INTO `t_student` VALUES ('2', '002', '233', 'B', '5', '橘园五舍', '男', '123');
INSERT INTO `t_student` VALUES ('3', '003', '233', 'C', '6', '橘园六舍', '男', '123');
INSERT INTO `t_student` VALUES ('4', '004', '233', 'D', '4', '橘园四舍', '男', '123');
INSERT INTO `t_student` VALUES ('5', '005', '233', 'E', '4', '橘园四舍', '男', '123');
INSERT INTO `t_student` VALUES ('6', '006', '233', 'F', '1', '橘园一舍', '女', '111');
INSERT INTO `t_student` VALUES ('7', '007', '233', 'G', '1', '橘园一舍', '女', '111');
INSERT INTO `t_student` VALUES ('8', '008', '233', 'H', '6', '橘园六舍', '男', '123');
INSERT INTO `t_student` VALUES ('9', '009', '233', 'I', '5', '橘园五舍', '男', '123');
INSERT INTO `t_student` VALUES ('10', '010', '233', 'J', '7', '橘园七舍', '男', '123');
