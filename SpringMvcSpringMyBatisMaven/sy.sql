/*
Navicat MySQL Data Transfer

Source Server         : aaaa
Source Server Version : 50514
Source Host           : localhost:3306
Source Database       : sy

Target Server Type    : MYSQL
Target Server Version : 50514
File Encoding         : 65001

Date: 2015-05-09 11:15:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbug`
-- ----------------------------
DROP TABLE IF EXISTS `tbug`;
CREATE TABLE `tbug` (
  `ID` varchar(255) NOT NULL DEFAULT '',
  `CREATEDATETIME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NOTE` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbug
-- ----------------------------

-- ----------------------------
-- Table structure for `tmenu`
-- ----------------------------
DROP TABLE IF EXISTS `tmenu`;
CREATE TABLE `tmenu` (
  `ID` varchar(255) NOT NULL DEFAULT '',
  `ICONCLS` varchar(255) DEFAULT NULL,
  `SEQ` decimal(10,0) DEFAULT NULL,
  `TEXT` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `PID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmenu
-- ----------------------------

-- ----------------------------
-- Table structure for `tonline`
-- ----------------------------
DROP TABLE IF EXISTS `tonline`;
CREATE TABLE `tonline` (
  `ID` varchar(255) NOT NULL DEFAULT '',
  `IP` varchar(255) DEFAULT NULL,
  `LOGINDATETIME` varchar(255) DEFAULT NULL,
  `LOGINNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tonline
-- ----------------------------

-- ----------------------------
-- Table structure for `tresource`
-- ----------------------------
DROP TABLE IF EXISTS `tresource`;
CREATE TABLE `tresource` (
  `ID` varchar(255) NOT NULL DEFAULT '',
  `SEQ` decimal(22,0) DEFAULT NULL,
  `TEXT` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `PID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `2` FOREIGN KEY (`ID`) REFERENCES `trole_resource` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tresource
-- ----------------------------

-- ----------------------------
-- Table structure for `trole`
-- ----------------------------
DROP TABLE IF EXISTS `trole`;
CREATE TABLE `trole` (
  `ID` varchar(255) NOT NULL DEFAULT '',
  `TEXT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `4` FOREIGN KEY (`ID`) REFERENCES `tuser_trole` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trole
-- ----------------------------

-- ----------------------------
-- Table structure for `trole_resource`
-- ----------------------------
DROP TABLE IF EXISTS `trole_resource`;
CREATE TABLE `trole_resource` (
  `ID` varchar(255) NOT NULL DEFAULT '',
  `RESOURCE_ID` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `1` FOREIGN KEY (`ID`) REFERENCES `trole` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trole_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `tuser`
-- ----------------------------
DROP TABLE IF EXISTS `tuser`;
CREATE TABLE `tuser` (
  `ID` varchar(255) NOT NULL DEFAULT '',
  `CREATEDATETIME` varchar(255) DEFAULT NULL,
  `MODIFYDATETIME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PWD` varchar(255) DEFAULT NULL,
  `CREATE_TIME` varchar(255) DEFAULT NULL,
  `UPDATE_TIME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuser
-- ----------------------------

-- ----------------------------
-- Table structure for `tuser_trole`
-- ----------------------------
DROP TABLE IF EXISTS `tuser_trole`;
CREATE TABLE `tuser_trole` (
  `ID` varchar(255) NOT NULL DEFAULT '',
  `ROLE_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `5` FOREIGN KEY (`ID`) REFERENCES `tuser` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuser_trole
-- ----------------------------
