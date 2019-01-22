/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50552
Source Host           : localhost:3306
Source Database       : search

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2019-01-22 22:42:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for vocabulary_cn
-- ----------------------------
DROP TABLE IF EXISTS `vocabulary_cn`;
CREATE TABLE `vocabulary_cn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sentence` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vocabulary_cn
-- ----------------------------
INSERT INTO `vocabulary_cn` VALUES ('1', '淘宝网');
INSERT INTO `vocabulary_cn` VALUES ('2', '京东商城');
INSERT INTO `vocabulary_cn` VALUES ('3', '百度网盘');
INSERT INTO `vocabulary_cn` VALUES ('4', '知乎日报');
INSERT INTO `vocabulary_cn` VALUES ('5', '简书');
INSERT INTO `vocabulary_cn` VALUES ('6', '淘米游戏');
INSERT INTO `vocabulary_cn` VALUES ('7', '京东快递');
INSERT INTO `vocabulary_cn` VALUES ('8', '百度翻译');
INSERT INTO `vocabulary_cn` VALUES ('9', '知识付费');
INSERT INTO `vocabulary_cn` VALUES ('10', '简单搜索');
INSERT INTO `vocabulary_cn` VALUES ('11', '淘宝网天猫');
INSERT INTO `vocabulary_cn` VALUES ('12', '京沪高铁');
INSERT INTO `vocabulary_cn` VALUES ('13', '百世快递');
INSERT INTO `vocabulary_cn` VALUES ('14', '知识就是力量');
INSERT INTO `vocabulary_cn` VALUES ('15', '简欧风格');
INSERT INTO `vocabulary_cn` VALUES ('16', '淘宝年货合家欢');
INSERT INTO `vocabulary_cn` VALUES ('17', '京东生鲜');
INSERT INTO `vocabulary_cn` VALUES ('18', '百度地图');
INSERT INTO `vocabulary_cn` VALUES ('19', '知识产权');
INSERT INTO `vocabulary_cn` VALUES ('20', '简单学习');

-- ----------------------------
-- Table structure for vocabulary_en
-- ----------------------------
DROP TABLE IF EXISTS `vocabulary_en`;
CREATE TABLE `vocabulary_en` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sentence` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vocabulary_en
-- ----------------------------
INSERT INTO `vocabulary_en` VALUES ('1', 'hello world');
INSERT INTO `vocabulary_en` VALUES ('2', 'hello my friend');
INSERT INTO `vocabulary_en` VALUES ('3', 'hello my sister');
INSERT INTO `vocabulary_en` VALUES ('4', 'how are you');
INSERT INTO `vocabulary_en` VALUES ('5', 'what happend');
INSERT INTO `vocabulary_en` VALUES ('6', 'where are you');
INSERT INTO `vocabulary_en` VALUES ('7', 'what\'s your name');
INSERT INTO `vocabulary_en` VALUES ('8', 'why do you do this');
