/*
Navicat MySQL Data Transfer

Source Server         : sora
Source Server Version : 50527
Source Host           : 127.0.0.1:3306
Source Database       : miaosha

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-09-03 20:54:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales` int(11) NOT NULL DEFAULT '0',
  `img_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('36', 'IphoneXs', '6999.00', '最好用iphone', '3', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554471598717&di=a491803743fdee79ea12b084a3087e8c&imgtype=0&src=http%3A%2F%2Fp0.ifengimg.com%2Fpmop%2F2018%2F1115%2F4A8B1763143DD802B10DBBD9D7D643EB0AD6D570_size71_w600_h400.jpeg');
INSERT INTO `item` VALUES ('40', '小米水壶', '299.00', '小水杯', '6', 'https://i8.mifile.cn/a1/pms_1504498936.11861982.jpg');
INSERT INTO `item` VALUES ('41', '手机', '15.00', '很好', '2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567396992645&di=ff7dc0dc384d82f601a35536f518df0a&imgtype=0&src=http%3A%2F%2Fimg.sccnn.com%2Fbimg%2F337%2F21772.jpg');

-- ----------------------------
-- Table structure for item_stock
-- ----------------------------
DROP TABLE IF EXISTS `item_stock`;
CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of item_stock
-- ----------------------------
INSERT INTO `item_stock` VALUES ('20', '94', '36');
INSERT INTO `item_stock` VALUES ('21', '100', '37');
INSERT INTO `item_stock` VALUES ('22', '100', '38');
INSERT INTO `item_stock` VALUES ('23', '100', '39');
INSERT INTO `item_stock` VALUES ('24', '96', '40');
INSERT INTO `item_stock` VALUES ('25', '12', '41');

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` int(11) NOT NULL DEFAULT '0',
  `order_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `promo_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('2019041000000000', '9', '36', '6999.00', '1', '6999.00', '0');
INSERT INTO `order_info` VALUES ('2019041000000100', '9', '36', '6999.00', '1', '6999.00', '0');
INSERT INTO `order_info` VALUES ('2019041000000200', '9', '36', '6999.00', '1', '6999.00', '0');
INSERT INTO `order_info` VALUES ('2019041200000300', '9', '40', '200.00', '1', '200.00', '2');
INSERT INTO `order_info` VALUES ('2019090200000400', '11', '36', '6999.00', '1', '6999.00', '0');
INSERT INTO `order_info` VALUES ('2019090200000500', '11', '36', '6999.00', '1', '6999.00', '0');
INSERT INTO `order_info` VALUES ('2019090200000600', '11', '36', '6999.00', '1', '6999.00', '0');
INSERT INTO `order_info` VALUES ('2019090200000700', '11', '41', '15.00', '1', '15.00', '0');
INSERT INTO `order_info` VALUES ('2019090200000800', '11', '40', '200.00', '1', '200.00', '2');
INSERT INTO `order_info` VALUES ('2019090200000900', '11', '40', '200.00', '1', '200.00', '2');
INSERT INTO `order_info` VALUES ('2019090200001000', '11', '40', '299.00', '1', '299.00', '0');
INSERT INTO `order_info` VALUES ('2019090200001100', '11', '41', '15.00', '1', '15.00', '0');

-- ----------------------------
-- Table structure for promo
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `promo_item_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of promo
-- ----------------------------
INSERT INTO `promo` VALUES ('2', '小米水壶限时抢购', '2019-07-08 00:00:00', '2019-08-22 00:00:00', '40', '200.00');

-- ----------------------------
-- Table structure for sequence_info
-- ----------------------------
DROP TABLE IF EXISTS `sequence_info`;
CREATE TABLE `sequence_info` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `current_value` int(11) NOT NULL DEFAULT '0',
  `step` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sequence_info
-- ----------------------------
INSERT INTO `sequence_info` VALUES ('order_info', '12', '1');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '""',
  `gender` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '1为男性，2为女性',
  `age` int(11) NOT NULL DEFAULT '0',
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '“”',
  `regist_mode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '“”' COMMENT '//byphone,bywechar,byalipay',
  `third_party_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '“”',
  PRIMARY KEY (`id`),
  UNIQUE KEY `telphone_unique_index` (`telephone`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '第一个用户', '1', '30', '15094944785', 'byphone', '123');
INSERT INTO `user_info` VALUES ('6', 'test', '1', '22', '12312312311', 'byphone', '“”');
INSERT INTO `user_info` VALUES ('9', 'root', '1', '22', '123456', 'byphone', '“”');
INSERT INTO `user_info` VALUES ('10', 'aaaa', '1', '12', '222', 'byPhone', '“”');
INSERT INTO `user_info` VALUES ('11', 'zhangziwei', '0', '21', '555', 'byPhone', '“”');

-- ----------------------------
-- Table structure for user_password
-- ----------------------------
DROP TABLE IF EXISTS `user_password`;
CREATE TABLE `user_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrpt_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '“”',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_password
-- ----------------------------
INSERT INTO `user_password` VALUES ('1', 'asdfasdf', '1');
INSERT INTO `user_password` VALUES ('3', 'ICy5YqxZB1uWSwcVLSNLcA==', '0');
INSERT INTO `user_password` VALUES ('5', '4QrcOUm6Wau+VuBX8g+IPg==', '9');
INSERT INTO `user_password` VALUES ('6', 'gdyb21LQTcIANtvYMT7QVQ==', '10');
INSERT INTO `user_password` VALUES ('7', 'Y6nw6nu5gFB5a2SehUgYRQ==', '11');
