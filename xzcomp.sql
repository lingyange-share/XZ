/*
Navicat MySQL Data Transfer

Source Server         : xz
Source Server Version : 50155
Source Host           : localhost:3306
Source Database       : xzcomp

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2018-11-28 11:33:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `accupload`
-- ----------------------------
DROP TABLE IF EXISTS `accupload`;
CREATE TABLE `accupload` (
  `atid` int(50) NOT NULL AUTO_INCREMENT,
  `accurl` varchar(100) DEFAULT NULL,
  `accname` varchar(100) DEFAULT NULL,
  `pid` int(50) DEFAULT NULL,
  PRIMARY KEY (`atid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of accupload
-- ----------------------------
INSERT INTO `accupload` VALUES ('10', 'http://172.16.66.110:9000/xload/debug/1540802393590', '', null);

-- ----------------------------
-- Table structure for `back_login`
-- ----------------------------
DROP TABLE IF EXISTS `back_login`;
CREATE TABLE `back_login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of back_login
-- ----------------------------
INSERT INTO `back_login` VALUES ('1', 'admin', 'admin');
INSERT INTO `back_login` VALUES ('2', 'test', 'test');
INSERT INTO `back_login` VALUES ('3', 'test1', 'test1');
INSERT INTO `back_login` VALUES ('4', 'test2', null);
INSERT INTO `back_login` VALUES ('5', 'test3', null);
INSERT INTO `back_login` VALUES ('6', 'test4', null);
INSERT INTO `back_login` VALUES ('7', 'test7', null);
INSERT INTO `back_login` VALUES ('8', 'test0', 'testPass0');
INSERT INTO `back_login` VALUES ('9', 'test0', 'testPass0');
INSERT INTO `back_login` VALUES ('10', 'test1', 'testPass1');
INSERT INTO `back_login` VALUES ('11', 'test1', 'testPass1');
INSERT INTO `back_login` VALUES ('12', 'test2', 'testPass2');
INSERT INTO `back_login` VALUES ('13', 'test2', 'testPass2');
INSERT INTO `back_login` VALUES ('14', 'test3', 'testPass3');
INSERT INTO `back_login` VALUES ('15', 'test3', 'testPass3');
INSERT INTO `back_login` VALUES ('16', 'test4', 'testPass4');
INSERT INTO `back_login` VALUES ('17', 'test4', 'testPass4');
INSERT INTO `back_login` VALUES ('18', 'test5', 'testPass5');
INSERT INTO `back_login` VALUES ('19', 'test5', 'testPass5');
INSERT INTO `back_login` VALUES ('20', 'test6', 'testPass6');
INSERT INTO `back_login` VALUES ('21', 'test6', 'testPass6');
INSERT INTO `back_login` VALUES ('22', 'test7', 'testPass7');
INSERT INTO `back_login` VALUES ('23', 'test7', 'testPass7');
INSERT INTO `back_login` VALUES ('24', 'test8', 'testPass8');
INSERT INTO `back_login` VALUES ('25', 'test8', 'testPass8');
INSERT INTO `back_login` VALUES ('26', 'test9', 'testPass9');
INSERT INTO `back_login` VALUES ('27', 'test9', 'testPass9');
INSERT INTO `back_login` VALUES ('28', '炫迈不太甜', '123q321');
INSERT INTO `back_login` VALUES ('29', 'admin001@zjtek.com', '1234');

-- ----------------------------
-- Table structure for `debug`
-- ----------------------------
DROP TABLE IF EXISTS `debug`;
CREATE TABLE `debug` (
  `qid` int(30) NOT NULL AUTO_INCREMENT,
  `dscr` varchar(100) DEFAULT NULL,
  `detail` text,
  `acc` varchar(100) DEFAULT NULL COMMENT '附件',
  `whoid` int(10) DEFAULT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of debug
-- ----------------------------
INSERT INTO `debug` VALUES ('13', '405静态资源css js 问题', '<p><span style=\"color:#FF0000\">主要是考虑资源被拦截 改为*.do</span></p>\r\n\r\n<div>spring 中&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp; &lt;servlet-mapping&gt;</div>\r\n\r\n<div>&nbsp; &nbsp; &lt;servlet-name&gt;springMVC&lt;/servlet-name&gt;</div>\r\n\r\n<div>&nbsp; &nbsp; &lt;url-pattern&gt;/&lt;/url-pattern&gt;</div>\r\n\r\n<div>&nbsp; &lt;/servlet-mapping&gt;</div>\r\n\r\n<div>会拦截 静态资源&nbsp; 所以需要在springmvc中进行配置 &lt;mvc:default-servlet-handler/&gt;</div>\r\n\r\n<div><span style=\"color:#8B4513\"><span style=\"background-color:#FFD700\">其他方法 ： 但当时并未成功</span></span></div>\r\n\r\n<div>参考 ： <a href=\"http://spring 中  					   &lt;servlet-mapping&gt;     &lt;servlet-name&gt;springMVC&lt;/servlet-name&gt;     &lt;url-pattern&gt;/&lt;/url-pattern&gt;   &lt;/servlet-mapping&gt; 会拦截 静态资源  所以需要在springmvc中进行配置	&lt;mvc:default-servlet-handler/&gt;  参考 ： https://blog.csdn.net/Scryhuaihuai/article/details/78934192  	https://blog.csdn.net/FarAwayWL/article/details/69527392\">https://blog.csdn.net/Scryhuaihuai/article/details/78934192</a></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><a href=\"http://spring 中  					   &lt;servlet-mapping&gt;     &lt;servlet-name&gt;springMVC&lt;/servlet-name&gt;     &lt;url-pattern&gt;/&lt;/url-pattern&gt;   &lt;/servlet-mapping&gt; 会拦截 静态资源  所以需要在springmvc中进行配置	&lt;mvc:default-servlet-handler/&gt;  参考 ： https://blog.csdn.net/Scryhuaihuai/article/details/78934192  	https://blog.csdn.net/FarAwayWL/article/details/69527392\">https://blog.csdn.net/FarAwayWL/article/details/69527392&nbsp; </a>&nbsp;</div>\r\n', '10', '0');

-- ----------------------------
-- Table structure for `ls`
-- ----------------------------
DROP TABLE IF EXISTS `ls`;
CREATE TABLE `ls` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `money` int(50) DEFAULT NULL,
  `gg` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ls
-- ----------------------------
INSERT INTO `ls` VALUES ('1', '9998', 'testPass0');
INSERT INTO `ls` VALUES ('2', '12312', 'testPass2');

-- ----------------------------
-- Table structure for `zs`
-- ----------------------------
DROP TABLE IF EXISTS `zs`;
CREATE TABLE `zs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `money` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of zs
-- ----------------------------
INSERT INTO `zs` VALUES ('1', '1091');
