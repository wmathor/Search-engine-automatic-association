/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50650 (5.6.50-log)
 Source Host           : localhost:3306
 Source Schema         : search

 Target Server Type    : MySQL
 Target Server Version : 50650 (5.6.50-log)
 File Encoding         : 65001

 Date: 02/05/2023 20:05:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for vocabulary
-- ----------------------------
DROP TABLE IF EXISTS `vocabulary`;
CREATE TABLE `vocabulary`  (
  `words` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`words`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vocabulary
-- ----------------------------
INSERT INTO `vocabulary` VALUES ('Nintendo of America');
INSERT INTO `vocabulary` VALUES ('Nintendo Official Site');
INSERT INTO `vocabulary` VALUES ('SONY');
INSERT INTO `vocabulary` VALUES ('SQUARE ENIX');
INSERT INTO `vocabulary` VALUES ('百度一下');
INSERT INTO `vocabulary` VALUES ('百度新闻');
INSERT INTO `vocabulary` VALUES ('百度汉语');
INSERT INTO `vocabulary` VALUES ('百度百科');
INSERT INTO `vocabulary` VALUES ('百度的微博');
INSERT INTO `vocabulary` VALUES ('百度集团');

-- ----------------------------
-- Procedure structure for proc_initData
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_initData`;
delimiter ;;
CREATE PROCEDURE `proc_initData`()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i<=10000 DO
        INSERT INTO vocabulary_cn(words) VALUES(i);
        SET i = i+1;
    END WHILE;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_while
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_while`;
delimiter ;;
CREATE PROCEDURE `proc_while`()
BEGIN

    DECLARE num INT ;
    SET num = 0 ;
    WHILE num < 10 DO
        SELECT
            num ;
        SET num = num + 1 ;
    END WHILE ;

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
