/*
Navicat MySQL Data Transfer

Source Server         : mysql8
Source Server Version : 80032
Source Host           : localhost:3306
Source Database       : mall

Target Server Type    : MYSQL
Target Server Version : 80032
File Encoding         : 65001

Date: 2023-03-27 14:02:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_help
-- ----------------------------
DROP TABLE IF EXISTS `cms_help`;
CREATE TABLE `cms_help` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_id` bigint DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `show_status` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `read_count` int DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='帮助表';

-- ----------------------------
-- Records of cms_help
-- ----------------------------

-- ----------------------------
-- Table structure for cms_help_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_help_category`;
CREATE TABLE `cms_help_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
  `help_count` int DEFAULT NULL COMMENT '专题数量',
  `show_status` int DEFAULT NULL,
  `sort` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='帮助分类表';

-- ----------------------------
-- Records of cms_help_category
-- ----------------------------

-- ----------------------------
-- Table structure for cms_member_report
-- ----------------------------
DROP TABLE IF EXISTS `cms_member_report`;
CREATE TABLE `cms_member_report` (
  `id` bigint DEFAULT NULL,
  `report_type` int DEFAULT NULL COMMENT '举报类型：0->商品评价；1->话题内容；2->用户评论',
  `report_member_name` varchar(100) DEFAULT NULL COMMENT '举报人',
  `create_time` datetime DEFAULT NULL,
  `report_object` varchar(100) DEFAULT NULL,
  `report_status` int DEFAULT NULL COMMENT '举报状态：0->未处理；1->已处理',
  `handle_status` int DEFAULT NULL COMMENT '处理结果：0->无效；1->有效；2->恶意',
  `note` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户举报表';

-- ----------------------------
-- Records of cms_member_report
-- ----------------------------

-- ----------------------------
-- Table structure for cms_preference_area
-- ----------------------------
DROP TABLE IF EXISTS `cms_preference_area`;
CREATE TABLE `cms_preference_area` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `pic` varbinary(500) DEFAULT NULL COMMENT '展示图片',
  `sort` int DEFAULT NULL,
  `show_status` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='优选专区';

-- ----------------------------
-- Records of cms_preference_area
-- ----------------------------
INSERT INTO `cms_preference_area` VALUES ('1', '让音质更出众', '音质不打折 完美现场感', null, null, '1');
INSERT INTO `cms_preference_area` VALUES ('2', '让音质更出众22', '让音质更出众22', null, null, null);
INSERT INTO `cms_preference_area` VALUES ('3', '让音质更出众33', null, null, null, null);
INSERT INTO `cms_preference_area` VALUES ('4', '让音质更出众44', null, null, null, null);

-- ----------------------------
-- Table structure for cms_preference_area_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `cms_preference_area_product_relation`;
CREATE TABLE `cms_preference_area_product_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `prefrence_area_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='优选专区和产品关系表';

-- ----------------------------
-- Records of cms_preference_area_product_relation
-- ----------------------------
INSERT INTO `cms_preference_area_product_relation` VALUES ('1', '1', '12');
INSERT INTO `cms_preference_area_product_relation` VALUES ('2', '1', '13');
INSERT INTO `cms_preference_area_product_relation` VALUES ('3', '1', '14');
INSERT INTO `cms_preference_area_product_relation` VALUES ('4', '1', '18');
INSERT INTO `cms_preference_area_product_relation` VALUES ('5', '1', '7');
INSERT INTO `cms_preference_area_product_relation` VALUES ('6', '2', '7');
INSERT INTO `cms_preference_area_product_relation` VALUES ('7', '1', '22');
INSERT INTO `cms_preference_area_product_relation` VALUES ('24', '1', '23');

-- ----------------------------
-- Table structure for cms_subject
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject`;
CREATE TABLE `cms_subject` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_id` bigint DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `pic` varchar(500) DEFAULT NULL COMMENT '专题主图',
  `product_count` int DEFAULT NULL COMMENT '关联产品数量',
  `recommend_status` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `collect_count` int DEFAULT NULL,
  `read_count` int DEFAULT NULL,
  `comment_count` int DEFAULT NULL,
  `album_pics` varchar(1000) DEFAULT NULL COMMENT '画册图片用逗号分割',
  `description` varchar(1000) DEFAULT NULL,
  `show_status` int DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
  `content` text,
  `forward_count` int DEFAULT NULL COMMENT '转发数',
  `category_name` varchar(200) DEFAULT NULL COMMENT '专题分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='专题表';

-- ----------------------------
-- Records of cms_subject
-- ----------------------------
INSERT INTO `cms_subject` VALUES ('1', '1', 'polo衬衫的也时尚', null, null, null, '2018-11-11 13:26:55', null, null, null, null, null, null, null, null, '服装专题');
INSERT INTO `cms_subject` VALUES ('2', '2', '大牌手机低价秒', null, null, null, '2018-11-12 13:27:00', null, null, null, null, null, null, null, null, '手机专题');
INSERT INTO `cms_subject` VALUES ('3', '2', '晓龙845新品上市', null, null, null, '2018-11-13 13:27:05', null, null, null, null, null, null, null, null, '手机专题');
INSERT INTO `cms_subject` VALUES ('4', '1', '夏天应该穿什么', null, null, null, '2018-11-01 13:27:09', null, null, null, null, null, null, null, null, '服装专题');
INSERT INTO `cms_subject` VALUES ('5', '1', '夏季精选', null, null, null, '2018-11-06 13:27:18', null, null, null, null, null, null, null, null, '服装专题');
INSERT INTO `cms_subject` VALUES ('6', '2', '品牌手机降价', null, null, null, '2018-11-07 13:27:21', null, null, null, null, null, null, null, null, '手机专题');

-- ----------------------------
-- Table structure for cms_subject_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject_category`;
CREATE TABLE `cms_subject_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
  `subject_count` int DEFAULT NULL COMMENT '专题数量',
  `show_status` int DEFAULT NULL,
  `sort` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='专题分类表';

-- ----------------------------
-- Records of cms_subject_category
-- ----------------------------
INSERT INTO `cms_subject_category` VALUES ('1', '服装专题', null, null, null, null);
INSERT INTO `cms_subject_category` VALUES ('2', '手机专题', null, null, null, null);

-- ----------------------------
-- Table structure for cms_subject_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject_comment`;
CREATE TABLE `cms_subject_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject_id` bigint DEFAULT NULL,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `member_icon` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `show_status` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='专题评论表';

-- ----------------------------
-- Records of cms_subject_comment
-- ----------------------------

-- ----------------------------
-- Table structure for cms_subject_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject_product_relation`;
CREATE TABLE `cms_subject_product_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='专题商品关系表';

-- ----------------------------
-- Records of cms_subject_product_relation
-- ----------------------------
INSERT INTO `cms_subject_product_relation` VALUES ('1', '1', '12');
INSERT INTO `cms_subject_product_relation` VALUES ('2', '1', '13');
INSERT INTO `cms_subject_product_relation` VALUES ('3', '1', '14');
INSERT INTO `cms_subject_product_relation` VALUES ('4', '1', '18');
INSERT INTO `cms_subject_product_relation` VALUES ('5', '1', '7');
INSERT INTO `cms_subject_product_relation` VALUES ('6', '2', '7');
INSERT INTO `cms_subject_product_relation` VALUES ('7', '1', '22');
INSERT INTO `cms_subject_product_relation` VALUES ('29', '1', '23');
INSERT INTO `cms_subject_product_relation` VALUES ('30', '4', '23');
INSERT INTO `cms_subject_product_relation` VALUES ('31', '5', '23');
INSERT INTO `cms_subject_product_relation` VALUES ('68', '2', '26');
INSERT INTO `cms_subject_product_relation` VALUES ('69', '3', '26');
INSERT INTO `cms_subject_product_relation` VALUES ('70', '6', '26');

-- ----------------------------
-- Table structure for cms_topic
-- ----------------------------
DROP TABLE IF EXISTS `cms_topic`;
CREATE TABLE `cms_topic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_id` bigint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `attend_count` int DEFAULT NULL COMMENT '参与人数',
  `attention_count` int DEFAULT NULL COMMENT '关注人数',
  `read_count` int DEFAULT NULL,
  `award_name` varchar(100) DEFAULT NULL COMMENT '奖品名称',
  `attend_type` varchar(100) DEFAULT NULL COMMENT '参与方式',
  `content` text COMMENT '话题内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='话题表';

-- ----------------------------
-- Records of cms_topic
-- ----------------------------

-- ----------------------------
-- Table structure for cms_topic_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_topic_category`;
CREATE TABLE `cms_topic_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
  `subject_count` int DEFAULT NULL COMMENT '专题数量',
  `show_status` int DEFAULT NULL,
  `sort` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='话题分类表';

-- ----------------------------
-- Records of cms_topic_category
-- ----------------------------

-- ----------------------------
-- Table structure for cms_topic_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_topic_comment`;
CREATE TABLE `cms_topic_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `topic_id` bigint DEFAULT NULL,
  `member_icon` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `show_status` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='专题评论表';

-- ----------------------------
-- Records of cms_topic_comment
-- ----------------------------

-- ----------------------------
-- Table structure for oms_cart_item
-- ----------------------------
DROP TABLE IF EXISTS `oms_cart_item`;
CREATE TABLE `oms_cart_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `product_sku_id` bigint DEFAULT NULL,
  `member_id` bigint DEFAULT NULL,
  `quantity` int DEFAULT NULL COMMENT '购买数量',
  `price` decimal(10,2) DEFAULT NULL COMMENT '添加到购物车的价格',
  `product_pic` varchar(1000) DEFAULT NULL COMMENT '商品主图',
  `product_name` varchar(500) DEFAULT NULL COMMENT '商品名称',
  `product_sub_title` varchar(500) DEFAULT NULL COMMENT '商品副标题（卖点）',
  `product_sku_code` varchar(200) DEFAULT NULL COMMENT '商品sku条码',
  `member_nickname` varchar(500) DEFAULT NULL COMMENT '会员昵称',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
  `delete_status` int DEFAULT '0' COMMENT '是否删除',
  `product_category_id` bigint DEFAULT NULL COMMENT '商品分类',
  `product_brand` varchar(200) DEFAULT NULL,
  `product_sn` varchar(200) DEFAULT NULL,
  `product_attr` varchar(500) DEFAULT NULL COMMENT '商品销售属性:[{"key":"颜色","value":"颜色"},{"key":"容量","value":"4G"}]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='购物车表';

-- ----------------------------
-- Records of oms_cart_item
-- ----------------------------
INSERT INTO `oms_cart_item` VALUES ('12', '26', '90', '1', '1', '3788.00', null, '华为 HUAWEI P20', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2018-08-27 16:53:44', null, '1', '19', null, null, null);
INSERT INTO `oms_cart_item` VALUES ('13', '27', '98', '1', '3', '2699.00', null, '小米8', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2018-08-27 17:11:53', null, '1', '19', null, null, null);
INSERT INTO `oms_cart_item` VALUES ('14', '28', '102', '1', '1', '649.00', null, '红米5A', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '201808270028001', 'windir', '2018-08-27 17:18:02', null, '1', '19', null, null, null);
INSERT INTO `oms_cart_item` VALUES ('15', '28', '103', '1', '1', '699.00', null, '红米5A', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '201808270028001', 'windir', '2018-08-28 10:22:45', null, '1', '19', null, null, null);
INSERT INTO `oms_cart_item` VALUES ('16', '29', '106', '1', '1', '5499.00', null, 'Apple iPhone 8 Plus', '【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。', '201808270029001', 'windir', '2018-08-28 10:50:50', null, '1', '19', null, null, null);
INSERT INTO `oms_cart_item` VALUES ('19', '36', '163', '1', '3', '100.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '202002210036001', 'windir', '2020-02-25 15:51:59', null, '1', '29', 'NIKE', '6799345', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `oms_cart_item` VALUES ('20', '36', '164', '1', '2', '120.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '202002210036001', 'windir', '2020-02-25 15:54:23', null, '1', '29', 'NIKE', '6799345', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `oms_cart_item` VALUES ('21', '36', '164', '1', '2', '120.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '202002210036001', 'windir', '2020-02-25 16:49:53', null, '1', '29', 'NIKE', '6799345', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `oms_cart_item` VALUES ('22', '26', '110', '1', '3', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-04 15:34:24', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('23', '27', '98', '1', '7', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-05-04 15:35:43', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('24', '26', '110', '1', '4', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-04 16:58:17', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('25', '27', '98', '1', '2', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-05-04 16:58:23', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('26', '28', '102', '1', '4', '649.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '201808270028001', 'windir', '2020-05-04 16:58:26', null, '1', '19', '小米', '7437789', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('27', '29', '106', '1', '1', '4999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', '【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。', '201808270029001', 'windir', '2020-05-04 16:58:29', null, '1', '19', '苹果', '7437799', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('28', '26', '110', '1', '2', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-04 17:07:20', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('29', '27', '98', '1', '1', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-05-04 17:07:23', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('30', '26', '110', '1', '1', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-04 17:08:14', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('31', '29', '106', '1', '1', '4999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', '【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。', '201808270029001', 'windir', '2020-05-04 17:09:56', null, '1', '19', '苹果', '7437799', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('32', '27', '98', '1', '1', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-05-04 17:13:50', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('33', '27', '98', '1', '2', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-05-04 17:16:15', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('34', '36', '164', '1', '1', '120.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '202002210036002', 'windir', '2020-05-04 17:19:20', null, '1', '29', 'NIKE', '6799345', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `oms_cart_item` VALUES ('35', '27', '98', '1', '1', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-05-05 10:41:39', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('36', '26', '110', '1', '2', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-05 10:41:55', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('37', '27', '98', '1', '1', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-05-05 10:42:57', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('38', '27', '98', '1', '1', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-05-05 14:29:28', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('39', '26', '110', '1', '1', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-05 14:32:52', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('40', '26', '110', '1', '2', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-05 14:33:20', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('41', '27', '98', '1', '2', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-05-05 14:49:13', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('42', '26', '111', '1', '1', '3999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026002', 'windir', '2020-05-05 15:26:05', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('43', '28', '102', '1', '1', '649.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '201808270028001', 'windir', '2020-05-16 15:16:04', null, '1', '19', '小米', '7437789', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('44', '26', '110', '1', '2', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-16 15:18:00', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('45', '26', '110', '1', '1', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-17 15:00:16', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('46', '27', '98', '1', '1', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-05-17 15:00:22', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('47', '26', '110', '1', '1', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-17 15:14:14', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('48', '26', '110', '1', '1', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-17 15:20:03', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('49', '26', '110', '1', '1', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-17 15:21:54', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('50', '26', '110', '1', '2', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-17 16:07:22', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('51', '27', '98', '1', '1', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-05-17 16:07:26', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('52', '26', '110', '1', '1', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-17 19:33:36', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('53', '27', '98', '1', '1', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-05-17 19:33:39', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('54', '26', '110', '1', '1', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-17 19:39:07', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('55', '26', '110', '1', '1', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-17 19:41:26', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('56', '26', '110', '1', '1', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-18 16:50:00', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('57', '26', '110', '1', '1', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-18 20:22:04', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('58', '27', '98', '1', '1', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-05-18 20:22:08', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('59', '27', '98', '1', '2', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-05-23 16:21:13', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('60', '27', '98', '1', '2', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-05-23 17:01:28', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('61', '26', '110', '1', '2', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-24 09:36:50', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('62', '26', '110', '1', '2', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-05-24 09:44:39', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('63', '27', '98', '1', '1', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-06-07 17:01:48', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('64', '27', '98', '1', '2', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-06-14 15:24:40', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('65', '26', '110', '1', '1', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-06-21 14:27:13', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('66', '27', '98', '1', '1', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-06-21 15:12:14', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('67', '26', '110', '1', '1', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-06-21 15:12:53', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('68', '26', '110', '1', '1', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2020-06-21 15:15:10', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('69', '27', '98', '1', '1', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2020-06-27 10:27:48', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('70', '27', '98', '1', '1', '2699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2022-10-28 14:50:46', null, '1', '19', '小米', '7437788', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('71', '37', '201', '1', '1', '5999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', 'Apple iPhone 14 (A2884) 128GB 紫色 支持移动联通电信5G 双卡双待手机', '【11.11大爱超大爱】指定iPhone14产品限时限量领券立减601元！！！部分iPhone产品现货抢购确认收货即送原厂手机壳10元优惠券！！！猛戳 ', '202210280037001', 'windir', '2022-10-28 15:27:32', null, '1', '19', '苹果', '100038005189', '[{\"key\":\"颜色\",\"value\":\"午夜色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('72', '40', '221', '1', '1', '2999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充 12GB+256GB 黑色 5G手机', '天玑9000+处理器、5160mAh大电量、2KAmoled超视感屏【点击购买小米11Ultra，戳】 ', '202211040040001', 'windir', '2022-11-09 15:14:46', null, '1', '19', '小米', '100027789721', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('73', '38', '213', '1', '1', '3599.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/ipad_001.jpg', 'Apple iPad 10.9英寸平板电脑 2022年款（64GB WLAN版/A14芯片/1200万像素/iPadOS MPQ03CH/A ）', '【11.11大爱超大爱】iPad9代限量抢购，价格优惠，更享以旧换新至高补贴325元！！快来抢购吧！！ ', '202210280038001', 'windir', '2022-11-09 15:25:28', null, '1', '53', '苹果', '100044025833', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"64G\"}]');
INSERT INTO `oms_cart_item` VALUES ('74', '37', '201', '1', '1', '5999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', 'Apple iPhone 14 (A2884) 128GB 支持移动联通电信5G 双卡双待手机', '【11.11大爱超大爱】指定iPhone14产品限时限量领券立减601元！！！部分iPhone产品现货抢购确认收货即送原厂手机壳10元优惠券！！！猛戳 ', '202210280037001', 'windir', '2022-11-09 15:26:04', null, '1', '19', '苹果', '100038005189', '[{\"key\":\"颜色\",\"value\":\"午夜色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('75', '45', '239', '1', '1', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/oppo_r8_01.jpg', 'OPPO Reno8 8GB+128GB 鸢尾紫 新配色上市 80W超级闪充 5000万水光人像三摄 3200万前置索尼镜头 5G手机', '【11.11提前购机享价保，好货不用等，系统申请一键价保补差!】【Reno8Pro爆款优惠】 ', '202211080045001', 'windir', '2022-11-09 16:16:23', null, '1', '19', 'OPPO', '10052147850350', '[{\"key\":\"颜色\",\"value\":\"鸢尾紫\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('76', '45', '239', '1', '1', '2299.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/oppo_r8_01.jpg', 'OPPO Reno8 8GB+128GB 鸢尾紫 新配色上市 80W超级闪充 5000万水光人像三摄 3200万前置索尼镜头 5G手机', '【11.11提前购机享价保，好货不用等，系统申请一键价保补差!】【Reno8Pro爆款优惠】 ', '202211080045001', 'windir', '2022-11-09 16:18:36', null, '1', '19', 'OPPO', '10052147850350', '[{\"key\":\"颜色\",\"value\":\"鸢尾紫\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('77', '41', '225', '1', '1', '2099.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_01.jpg', 'Redmi K50 天玑8100 2K柔性直屏 OIS光学防抖 67W快充 5500mAh大电量 墨羽 12GB+256GB 5G智能手机 小米 红米', '【品质好物】天玑8100，2K直屏，5500mAh大电量【Note12Pro火热抢购中】 ', '202211040041001', 'windir', '2022-11-10 15:19:36', null, '1', '19', '小米', '100035246702', '[{\"key\":\"颜色\",\"value\":\"墨羽\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('78', '37', '201', '1', '2', '5999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', 'Apple iPhone 14 (A2884) 128GB 支持移动联通电信5G 双卡双待手机', '【11.11大爱超大爱】指定iPhone14产品限时限量领券立减601元！！！部分iPhone产品现货抢购确认收货即送原厂手机壳10元优惠券！！！猛戳 ', '202210280037001', 'windir', '2022-11-10 15:19:44', null, '1', '19', '苹果', '100038005189', '[{\"key\":\"颜色\",\"value\":\"午夜色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('79', '38', '213', '1', '1', '3599.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/ipad_001.jpg', 'Apple iPad 10.9英寸平板电脑 2022年款（64GB WLAN版/A14芯片/1200万像素/iPadOS MPQ03CH/A ）', '【11.11大爱超大爱】iPad9代限量抢购，价格优惠，更享以旧换新至高补贴325元！！快来抢购吧！！ ', '202210280038001', 'windir', '2022-11-11 15:37:40', null, '1', '53', '苹果', '100044025833', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"64G\"}]');
INSERT INTO `oms_cart_item` VALUES ('80', '38', '213', '1', '1', '3599.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/ipad_001.jpg', 'Apple iPad 10.9英寸平板电脑 2022年款（64GB WLAN版/A14芯片/1200万像素/iPadOS MPQ03CH/A ）', '【11.11大爱超大爱】iPad9代限量抢购，价格优惠，更享以旧换新至高补贴325元！！快来抢购吧！！ ', '202210280038001', 'windir', '2022-11-11 15:38:12', null, '1', '53', '苹果', '100044025833', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"64G\"}]');
INSERT INTO `oms_cart_item` VALUES ('81', '38', '213', '1', '3', '3599.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/ipad_001.jpg', 'Apple iPad 10.9英寸平板电脑 2022年款（64GB WLAN版/A14芯片/1200万像素/iPadOS MPQ03CH/A ）', '【11.11大爱超大爱】iPad9代限量抢购，价格优惠，更享以旧换新至高补贴325元！！快来抢购吧！！ ', '202210280038001', 'windir', '2022-11-11 15:38:22', null, '1', '53', '苹果', '100044025833', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"64G\"}]');
INSERT INTO `oms_cart_item` VALUES ('82', '40', '221', '1', '1', '2999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充 12GB+256GB 黑色 5G手机', '天玑9000+处理器、5160mAh大电量、2KAmoled超视感屏【点击购买小米11Ultra，戳】 ', '202211040040001', 'windir', '2022-11-11 16:07:23', null, '1', '19', '小米', '100027789721', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('83', '40', '221', '1', '1', '2999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充 12GB+256GB 黑色 5G手机', '天玑9000+处理器、5160mAh大电量、2KAmoled超视感屏【点击购买小米11Ultra，戳】 ', '202211040040001', 'windir', '2022-11-11 16:13:11', null, '1', '19', '小米', '100027789721', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('84', '37', '201', '1', '1', '5999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', 'Apple iPhone 14 (A2884) 128GB 支持移动联通电信5G 双卡双待手机', '【11.11大爱超大爱】指定iPhone14产品限时限量领券立减601元！！！部分iPhone产品现货抢购确认收货即送原厂手机壳10元优惠券！！！猛戳 ', '202210280037001', 'windir', '2022-11-11 16:15:05', null, '1', '19', '苹果', '100038005189', '[{\"key\":\"颜色\",\"value\":\"午夜色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('85', '28', '102', '1', '1', '649.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '201808270028001', 'windir', '2022-11-11 16:21:05', null, '1', '19', '小米', '7437789', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('86', '40', '221', '1', '1', '2999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充', '天玑9000+处理器、5160mAh大电量、2KAmoled超视感屏【点击购买小米11Ultra，戳】 ', '202211040040001', 'windir', '2022-11-16 10:22:47', null, '1', '19', '小米', '100027789721', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('87', '41', '225', '1', '1', '2099.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_01.jpg', 'Redmi K50 天玑8100 2K柔性直屏 OIS光学防抖 67W快充 5500mAh大电量', '【品质好物】天玑8100，2K直屏，5500mAh大电量【Note12Pro火热抢购中】 ', '202211040041001', 'windir', '2022-11-16 10:22:51', null, '1', '19', '小米', '100035246702', '[{\"key\":\"颜色\",\"value\":\"墨羽\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('88', '39', '217', '1', '1', '5999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/xiaomi_computer_001.jpg', '小米 Xiaomi Book Pro 14 2022 锐龙版 2.8K超清大师屏 高端轻薄笔记本电脑', '【双十一大促来袭】指定型号至高优惠1000，以旧换新至高补贴1000元，晒单赢好礼', '202210280039001', 'windir', '2022-11-16 10:22:54', null, '1', '54', '小米', '100023207945', '[{\"key\":\"颜色\",\"value\":\"新小米Pro 14英寸 2.8K屏\"},{\"key\":\"版本\",\"value\":\"R7 16G 512\"}]');
INSERT INTO `oms_cart_item` VALUES ('89', '37', '201', '1', '1', '5999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', 'Apple iPhone 14 (A2884) 128GB 支持移动联通电信5G 双卡双待手机', '【11.11大爱超大爱】指定iPhone14产品限时限量领券立减601元！！！部分iPhone产品现货抢购确认收货即送原厂手机壳10元优惠券！！！猛戳 ', '202210280037001', 'windir', '2022-11-16 10:23:16', null, '1', '19', '苹果', '100038005189', '[{\"key\":\"颜色\",\"value\":\"午夜色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('90', '40', '221', '1', '1', '2999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充', '天玑9000+处理器、5160mAh大电量、2KAmoled超视感屏【点击购买小米11Ultra，戳】 ', '202211040040001', 'test', '2022-12-21 15:49:00', null, '1', '19', '小米', '100027789721', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('91', '37', '201', '1', '1', '5999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', 'Apple iPhone 14 (A2884) 128GB 支持移动联通电信5G 双卡双待手机', '【11.11大爱超大爱】指定iPhone14产品限时限量领券立减601元！！！部分iPhone产品现货抢购确认收货即送原厂手机壳10元优惠券！！！猛戳 ', '202210280037001', 'test', '2022-12-21 15:49:42', null, '1', '19', '苹果', '100038005189', '[{\"key\":\"颜色\",\"value\":\"午夜色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('92', '41', '225', '1', '1', '2099.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_01.jpg', 'Redmi K50 天玑8100 2K柔性直屏 OIS光学防抖 67W快充 5500mAh大电量', '【品质好物】天玑8100，2K直屏，5500mAh大电量【Note12Pro火热抢购中】 ', '202211040041001', 'test', '2022-12-21 15:49:53', null, '1', '19', '小米', '100035246702', '[{\"key\":\"颜色\",\"value\":\"墨羽\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('93', '40', '221', '1', '1', '2999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充', '天玑9000+处理器、5160mAh大电量、2KAmoled超视感屏【点击购买小米11Ultra，戳】 ', '202211040040001', 'test', '2022-12-21 15:51:03', null, '1', '19', '小米', '100027789721', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('94', '41', '225', '1', '1', '2099.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_01.jpg', 'Redmi K50 天玑8100 2K柔性直屏 OIS光学防抖 67W快充 5500mAh大电量', '【品质好物】天玑8100，2K直屏，5500mAh大电量【Note12Pro火热抢购中】 ', '202211040041001', 'test', '2022-12-21 15:51:28', null, '1', '19', '小米', '100035246702', '[{\"key\":\"颜色\",\"value\":\"墨羽\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('95', '41', '225', '1', '1', '2099.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_01.jpg', 'Redmi K50 天玑8100 2K柔性直屏 OIS光学防抖 67W快充 5500mAh大电量', '【品质好物】天玑8100，2K直屏，5500mAh大电量【Note12Pro火热抢购中】 ', '202211040041001', 'test', '2022-12-21 16:45:16', null, '1', '19', '小米', '100035246702', '[{\"key\":\"颜色\",\"value\":\"墨羽\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('96', '40', '221', '1', '2', '2999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充', '天玑9000+处理器、5160mAh大电量、2KAmoled超视感屏【点击购买小米11Ultra，戳】 ', '202211040040001', 'test', '2022-12-21 16:46:41', null, '1', '19', '小米', '100027789721', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('97', '40', '221', '1', '1', '2999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充', '天玑9000+处理器、5160mAh大电量、2KAmoled超视感屏【点击购买小米11Ultra，戳】 ', '202211040040001', 'test', '2022-12-21 16:50:10', null, '1', '19', '小米', '100027789721', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('98', '40', '221', '1', '2', '2999.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充', '天玑9000+处理器、5160mAh大电量、2KAmoled超视感屏【点击购买小米11Ultra，戳】 ', '202211040040001', 'test', '2022-12-23 09:55:11', null, '1', '19', '小米', '100027789721', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_cart_item` VALUES ('99', '26', '110', '1', '1', '3788.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'test', '2023-01-10 15:39:03', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_cart_item` VALUES ('100', '26', '111', '1', '1', '3899.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026002', 'test', '2023-01-10 16:58:08', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_cart_item` VALUES ('101', '26', '110', '1', '1', '3699.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'test', '2023-01-10 17:10:26', null, '1', '19', '华为', '6946605', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');

-- ----------------------------
-- Table structure for oms_company_address
-- ----------------------------
DROP TABLE IF EXISTS `oms_company_address`;
CREATE TABLE `oms_company_address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address_name` varchar(200) DEFAULT NULL COMMENT '地址名称',
  `send_status` int DEFAULT NULL COMMENT '默认发货地址：0->否；1->是',
  `receive_status` int DEFAULT NULL COMMENT '是否默认收货地址：0->否；1->是',
  `name` varchar(64) DEFAULT NULL COMMENT '收发货人姓名',
  `phone` varchar(64) DEFAULT NULL COMMENT '收货人电话',
  `province` varchar(64) DEFAULT NULL COMMENT '省/直辖市',
  `city` varchar(64) DEFAULT NULL COMMENT '市',
  `region` varchar(64) DEFAULT NULL COMMENT '区',
  `detail_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='公司收发货地址表';

-- ----------------------------
-- Records of oms_company_address
-- ----------------------------
INSERT INTO `oms_company_address` VALUES ('1', '深圳发货点', '1', '1', '大梨', '18000000000', '广东省', '深圳市', '南山区', '科兴科学园');
INSERT INTO `oms_company_address` VALUES ('2', '北京发货点', '0', '0', '大梨', '18000000000', '北京市', null, '南山区', '科兴科学园');
INSERT INTO `oms_company_address` VALUES ('3', '南京发货点', '0', '0', '大梨', '18000000000', '江苏省', '南京市', '南山区', '科兴科学园');

-- ----------------------------
-- Table structure for oms_order
-- ----------------------------
DROP TABLE IF EXISTS `oms_order`;
CREATE TABLE `oms_order` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `member_id` bigint NOT NULL,
  `coupon_id` bigint DEFAULT NULL,
  `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT NULL COMMENT '提交时间',
  `member_username` varchar(64) DEFAULT NULL COMMENT '用户帐号',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '订单总金额',
  `pay_amount` decimal(10,2) DEFAULT NULL COMMENT '应付金额（实际支付金额）',
  `freight_amount` decimal(10,2) DEFAULT NULL COMMENT '运费金额',
  `promotion_amount` decimal(10,2) DEFAULT NULL COMMENT '促销优化金额（促销价、满减、阶梯价）',
  `integration_amount` decimal(10,2) DEFAULT NULL COMMENT '积分抵扣金额',
  `coupon_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠券抵扣金额',
  `discount_amount` decimal(10,2) DEFAULT NULL COMMENT '管理员后台调整订单使用的折扣金额',
  `pay_type` int DEFAULT NULL COMMENT '支付方式：0->未支付；1->支付宝；2->微信',
  `source_type` int DEFAULT NULL COMMENT '订单来源：0->PC订单；1->app订单',
  `status` int DEFAULT NULL COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
  `order_type` int DEFAULT NULL COMMENT '订单类型：0->正常订单；1->秒杀订单',
  `delivery_company` varchar(64) DEFAULT NULL COMMENT '物流公司(配送方式)',
  `delivery_sn` varchar(64) DEFAULT NULL COMMENT '物流单号',
  `auto_confirm_day` int DEFAULT NULL COMMENT '自动确认时间（天）',
  `integration` int DEFAULT NULL COMMENT '可以获得的积分',
  `growth` int DEFAULT NULL COMMENT '可以活动的成长值',
  `promotion_info` varchar(100) DEFAULT NULL COMMENT '活动信息',
  `bill_type` int DEFAULT NULL COMMENT '发票类型：0->不开发票；1->电子发票；2->纸质发票',
  `bill_header` varchar(200) DEFAULT NULL COMMENT '发票抬头',
  `bill_content` varchar(200) DEFAULT NULL COMMENT '发票内容',
  `bill_receiver_phone` varchar(32) DEFAULT NULL COMMENT '收票人电话',
  `bill_receiver_email` varchar(64) DEFAULT NULL COMMENT '收票人邮箱',
  `receiver_name` varchar(100) NOT NULL COMMENT '收货人姓名',
  `receiver_phone` varchar(32) NOT NULL COMMENT '收货人电话',
  `receiver_post_code` varchar(32) DEFAULT NULL COMMENT '收货人邮编',
  `receiver_province` varchar(32) DEFAULT NULL COMMENT '省份/直辖市',
  `receiver_city` varchar(32) DEFAULT NULL COMMENT '城市',
  `receiver_region` varchar(32) DEFAULT NULL COMMENT '区',
  `receiver_detail_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `note` varchar(500) DEFAULT NULL COMMENT '订单备注',
  `confirm_status` int DEFAULT NULL COMMENT '确认收货状态：0->未确认；1->已确认',
  `delete_status` int NOT NULL DEFAULT '0' COMMENT '删除状态：0->未删除；1->已删除',
  `use_integration` int DEFAULT NULL COMMENT '下单时使用的积分',
  `payment_time` datetime DEFAULT NULL COMMENT '支付时间',
  `delivery_time` datetime DEFAULT NULL COMMENT '发货时间',
  `receive_time` datetime DEFAULT NULL COMMENT '确认收货时间',
  `comment_time` datetime DEFAULT NULL COMMENT '评价时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='订单表';

-- ----------------------------
-- Records of oms_order
-- ----------------------------
INSERT INTO `oms_order` VALUES ('12', '1', '2', '201809150101000001', '2018-09-15 12:24:27', 'test', '18732.00', '16377.75', '20.00', '2344.25', '0.00', '10.00', '10.00', '0', '1', '4', '0', '', '', '15', '13284', '13284', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '江苏省', '常州市', '天宁区', '东晓街道', '111', '0', '0', null, null, null, null, null, '2019-11-09 16:50:28');
INSERT INTO `oms_order` VALUES ('13', '1', '2', '201809150102000002', '2018-09-15 14:24:29', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '1', '1', '1', '0', '', '', '15', '13284', '13284', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', '1000', '2018-10-11 14:04:19', null, null, null, null);
INSERT INTO `oms_order` VALUES ('14', '1', '2', '201809130101000001', '2018-09-13 16:57:40', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '2', '1', '3', '0', '顺丰快递', '201707196398345', '15', '13284', '13284', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '1', '0', null, '2018-10-13 13:44:04', '2018-10-16 13:43:41', '2022-11-11 16:19:34', null, null);
INSERT INTO `oms_order` VALUES ('15', '1', '2', '201809130102000002', '2018-09-13 17:03:00', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '1', '1', '3', '0', '顺丰快递', '201707196398346', '15', '13284', '13284', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '1', '1', null, '2018-10-13 13:44:54', '2018-10-16 13:45:01', '2018-10-18 14:05:31', null, null);
INSERT INTO `oms_order` VALUES ('16', '1', '2', '201809140101000001', '2018-09-14 16:16:16', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '2', '1', '4', '0', null, null, '15', '13284', '13284', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '1', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('17', '1', '2', '201809150101000003', '2018-09-15 12:24:27', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '0', '1', '4', '0', '顺丰快递', '201707196398345', '15', null, null, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '1', null, null, '2018-10-12 14:01:28', null, null, null);
INSERT INTO `oms_order` VALUES ('18', '1', '2', '201809150102000004', '2018-09-15 14:24:29', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '1', '1', '1', '0', '圆通快递', 'xx', '15', null, null, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '1', '1000', null, '2018-10-16 14:42:17', null, null, null);
INSERT INTO `oms_order` VALUES ('19', '1', '2', '201809130101000003', '2018-09-13 16:57:40', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '2', '1', '2', '0', null, null, '15', null, null, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '1', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('20', '1', '2', '201809130102000004', '2018-09-13 17:03:00', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '1', '1', '3', '0', null, null, '15', null, null, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '1', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('21', '1', '2', '201809140101000002', '2018-09-14 16:16:16', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '2', '1', '4', '0', null, null, '15', '18682', '18682', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '1', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('22', '1', '2', '201809150101000005', '2018-09-15 12:24:27', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '0', '1', '4', '0', '顺丰快递', '201707196398345', '15', '0', '0', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '1', null, null, '2018-10-12 14:01:28', null, null, null);
INSERT INTO `oms_order` VALUES ('23', '1', '2', '201809150102000006', '2018-09-15 14:24:29', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '1', '1', '1', '0', '顺丰快递', 'xxx', '15', '0', '0', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '1', '1000', null, '2018-10-16 14:41:28', null, null, null);
INSERT INTO `oms_order` VALUES ('24', '1', '2', '201809130101000005', '2018-09-13 16:57:40', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '2', '1', '2', '0', null, null, '15', '18682', '18682', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '1', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('25', '1', '2', '201809130102000006', '2018-09-13 17:03:00', 'test', '18732.00', '16377.75', '10.00', '2344.25', '0.00', '10.00', '5.00', '1', '1', '4', '0', null, null, '15', '18682', '18682', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨22', '18033441849', '518000', '北京市', '北京城区', '东城区', '东城街道', 'xxx', '0', '1', null, null, null, null, null, '2018-10-30 15:08:31');
INSERT INTO `oms_order` VALUES ('26', '1', '2', '201809140101000003', '2018-09-14 16:16:16', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '2', '1', '4', '0', null, null, '15', '18682', '18682', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '1', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('27', '1', null, '202002250100000001', '2020-02-25 15:59:20', 'test', '540.00', '540.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '1', '4', '0', null, null, null, '0', '0', '无优惠,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', null, '0', '1', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('28', '1', null, '202002250100000002', '2020-02-25 16:05:47', 'test', '540.00', '540.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '1', '4', '0', null, null, null, '0', '0', '无优惠,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', null, '0', '1', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('29', '1', null, '202002250100000003', '2020-02-25 16:07:58', 'test', '540.00', '540.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '1', '4', '0', null, null, null, '0', '0', '无优惠,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('30', '1', null, '202002250100000004', '2020-02-25 16:50:13', 'test', '240.00', '240.00', '20.00', '0.00', '0.00', '0.00', '10.00', '0', '1', '3', '0', '顺丰快递', '12333333', null, '0', '0', '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', null, '1', '0', null, '2020-02-25 16:53:29', '2020-02-25 16:54:03', '2020-05-17 19:38:15', null, '2020-02-25 16:52:51');
INSERT INTO `oms_order` VALUES ('31', '1', '26', '202005160100000001', '2020-05-16 15:16:54', 'test', '13623.00', '11842.40', '0.00', '1629.60', '1.00', '150.00', '0.00', '0', '1', '4', '0', null, null, '15', '13623', '13623', '满减优惠：满5000.00元，减500.00元;打折优惠：满2件，打8.00折;满减优惠：满500.00元，减50.00元', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('32', '1', null, '202005170100000001', '2020-05-17 15:00:38', 'test', '6487.00', '6187.00', '0.00', '300.00', '0.00', '0.00', '0.00', '1', '1', '1', '0', null, null, '15', '6487', '6487', '满减优惠：满3000.00元，减300.00元;无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, '2020-05-17 15:33:28', null, null, null, null);
INSERT INTO `oms_order` VALUES ('33', '1', null, '202005170100000002', '2020-05-17 15:14:18', 'test', '3788.00', '3488.00', '0.00', '300.00', '0.00', '0.00', '0.00', '0', '1', '4', '0', null, null, '15', '3788', '3788', '满减优惠：满3000.00元，减300.00元', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '1', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('34', '1', null, '202005170100000003', '2020-05-17 15:20:10', 'test', '3788.00', '3488.00', '0.00', '300.00', '0.00', '0.00', '0.00', '0', '1', '4', '0', null, null, '15', '3788', '3788', '满减优惠：满3000.00元，减300.00元', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '1', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('35', '1', null, '202005170100000004', '2020-05-17 15:22:03', 'test', '3788.00', '3488.00', '0.00', '300.00', '0.00', '0.00', '0.00', '2', '1', '3', '0', '顺丰快递', '123', '15', '3788', '3788', '满减优惠：满3000.00元，减300.00元', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '1', '0', null, '2020-05-17 15:29:07', '2020-05-17 15:30:24', '2020-05-17 15:41:45', null, null);
INSERT INTO `oms_order` VALUES ('36', '1', null, '202005170100000005', '2020-05-17 16:59:26', 'test', '10275.00', '9775.00', '0.00', '500.00', '0.00', '0.00', '0.00', '0', '1', '4', '0', null, null, '15', '10275', '10275', '满减优惠：满5000.00元，减500.00元;无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('37', '1', null, '202005170100000006', '2020-05-17 19:33:48', 'test', '6487.00', '6187.00', '0.00', '300.00', '0.00', '0.00', '0.00', '1', '1', '3', '0', '顺丰快递', 'aadd', '15', '6487', '6487', '满减优惠：满3000.00元，减300.00元;无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '1', '0', null, '2020-05-17 19:33:59', '2020-05-17 19:34:59', '2020-05-17 19:35:50', null, null);
INSERT INTO `oms_order` VALUES ('38', '1', null, '202005170100000007', '2020-05-17 19:39:10', 'test', '3788.00', '3488.00', '0.00', '300.00', '0.00', '0.00', '0.00', '0', '1', '4', '0', null, null, '15', '3788', '3788', '满减优惠：满3000.00元，减300.00元', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('39', '1', null, '202005170100000008', '2020-05-17 19:41:30', 'test', '3788.00', '3488.00', '0.00', '300.00', '0.00', '0.00', '0.00', '1', '1', '3', '0', '顺丰快递', 'sdf', '15', '3788', '3788', '满减优惠：满3000.00元，减300.00元', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '1', '1', null, '2020-05-17 19:41:41', '2020-05-17 19:42:07', '2020-05-17 19:42:36', null, null);
INSERT INTO `oms_order` VALUES ('40', '1', null, '202005180100000001', '2020-05-18 16:50:03', 'test', '3788.00', '3488.00', '0.00', '300.00', '0.00', '0.00', '0.00', '2', '1', '1', '0', null, null, '15', '3788', '3788', '满减优惠：满3000.00元，减300.00元', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, '2020-05-18 16:50:29', null, null, null, null);
INSERT INTO `oms_order` VALUES ('41', '1', '26', '202005180100000002', '2020-05-18 20:22:24', 'test', '6487.00', '6037.00', '0.00', '300.00', '0.00', '150.00', '0.00', '1', '1', '3', '0', '顺丰快递', '12313', '15', '6487', '6487', '满减优惠：满3000.00元，减300.00元;无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '清水河街道', null, '1', '0', null, '2020-05-18 20:22:29', '2020-05-18 20:23:03', '2020-05-18 20:23:20', null, null);
INSERT INTO `oms_order` VALUES ('42', '1', null, '202005230100000001', '2020-05-23 16:21:27', 'test', '5398.00', '4318.40', '0.00', '1079.60', '0.00', '0.00', '0.00', '2', '1', '1', '0', null, null, '15', '5398', '5398', '打折优惠：满2件，打8.00折', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '清水河街道', null, '0', '0', null, '2020-05-23 16:21:30', null, null, null, null);
INSERT INTO `oms_order` VALUES ('43', '1', null, '202005230100000002', '2020-05-23 17:01:33', 'test', '5398.00', '4318.40', '0.00', '1079.60', '0.00', '0.00', '0.00', '0', '1', '4', '0', null, null, '15', '5398', '5398', '打折优惠：满2件，打8.00折', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('44', '1', null, '202005240100000001', '2020-05-24 09:37:07', 'test', '7576.00', '7076.00', '0.00', '500.00', '0.00', '0.00', '0.00', '0', '1', '4', '0', null, null, '15', '7576', '7576', '满减优惠：满5000.00元，减500.00元', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('45', '1', '25', '202006070100000001', '2020-06-07 17:02:04', 'test', '10275.00', '9674.90', '0.00', '500.00', '0.00', '100.10', '0.00', '1', '1', '1', '0', null, null, '15', '10275', '10275', '满减优惠：满5000.00元，减500.00元;无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '清水河街道', null, '0', '0', null, '2020-06-07 17:02:17', null, null, null, null);
INSERT INTO `oms_order` VALUES ('46', '1', '24', '202006210100000001', '2020-06-21 14:27:34', 'test', '9186.00', '7796.40', '0.00', '1379.60', '0.00', '10.00', '0.00', '2', '1', '1', '0', null, null, '15', '9186', '9186', '满减优惠：满3000.00元，减300.00元;打折优惠：满2件，打8.00折', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, '2020-06-21 14:27:38', null, null, null, null);
INSERT INTO `oms_order` VALUES ('47', '1', null, '202006210100000002', '2020-06-21 15:13:06', 'test', '6487.00', '6187.00', '0.00', '300.00', '0.00', '0.00', '0.00', '1', '1', '3', '0', '顺丰快递', '123131', '15', '6487', '6487', '满减优惠：满3000.00元，减300.00元;无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '清水河街道', null, '1', '0', null, '2020-06-21 15:13:12', '2020-06-21 15:13:44', '2020-06-21 15:13:58', null, null);
INSERT INTO `oms_order` VALUES ('48', '1', '26', '202006210100000003', '2020-06-21 15:15:18', 'test', '3788.00', '3338.00', '0.00', '300.00', '0.00', '150.00', '0.00', '2', '1', '3', '0', '圆通快递', '12313', '15', '3788', '3788', '满减优惠：满3000.00元，减300.00元', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '1', '0', null, '2020-06-21 15:15:20', '2020-06-21 15:15:48', '2020-06-21 15:15:58', null, null);
INSERT INTO `oms_order` VALUES ('49', '1', null, '202006270100000001', '2020-06-27 10:27:56', 'test', '2699.00', '2699.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', '1', '1', '0', null, null, '15', '2699', '2699', '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '清水河街道', null, '0', '0', null, '2020-06-27 10:27:58', null, null, null, null);
INSERT INTO `oms_order` VALUES ('50', '1', null, '202210280100000001', '2022-10-28 14:50:58', 'test', '2699.00', '2699.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', '1', '1', '0', null, null, '15', '2699', '2699', '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '清水河街道', null, '0', '0', null, '2022-10-28 14:51:02', null, null, null, null);
INSERT INTO `oms_order` VALUES ('51', '1', null, '202210280100000002', '2022-10-28 15:27:41', 'test', '5999.00', '5999.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', '1', '1', '0', null, null, '15', '0', '0', '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, '2022-10-28 15:27:44', null, null, null, null);
INSERT INTO `oms_order` VALUES ('52', '1', '30', '202211090100000001', '2022-11-09 15:14:58', 'test', '2999.00', '2799.00', '0.00', '0.00', '0.00', '200.00', '0.00', '2', '1', '3', '0', '顺丰快递', '1233', '15', '0', '0', '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '1', '0', null, '2022-11-09 15:15:00', '2022-11-09 15:16:12', '2022-11-09 15:16:31', null, null);
INSERT INTO `oms_order` VALUES ('53', '1', '27', '202211090100000002', '2022-11-09 15:25:38', 'test', '3599.00', '3589.00', '0.00', '0.00', '0.00', '10.00', '0.00', '2', '1', '1', '0', null, null, '15', '0', '0', '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, '2022-11-09 15:25:41', null, null, null, null);
INSERT INTO `oms_order` VALUES ('54', '1', '29', '202211090100000003', '2022-11-09 15:26:11', 'test', '5999.00', '5399.00', '0.00', '0.00', '0.00', '600.00', '0.00', '2', '1', '1', '0', null, null, '15', '0', '0', '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, '2022-11-09 15:26:13', null, null, null, null);
INSERT INTO `oms_order` VALUES ('55', '1', null, '202211100100000001', '2022-11-10 16:57:59', 'test', '11998.00', '11998.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '1', '4', '0', null, null, '15', '0', '0', '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('56', '1', '28', '202211110100000001', '2022-11-11 16:12:42', 'test', '2999.00', '2899.00', '0.00', '0.00', '0.00', '100.00', '0.00', '2', '1', '1', '0', null, null, '15', '0', '0', '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, '2022-11-11 16:12:48', null, null, null, null);
INSERT INTO `oms_order` VALUES ('57', '1', null, '202211110100000002', '2022-11-11 16:13:14', 'test', '2999.00', '2999.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', '1', '1', '0', null, null, '15', '0', '0', '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, '2022-11-11 16:13:21', null, null, null, null);
INSERT INTO `oms_order` VALUES ('58', '1', null, '202211110100000003', '2022-11-11 16:15:08', 'test', '5999.00', '5999.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', '1', '1', '0', null, null, '15', '0', '0', '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, '2022-11-11 16:17:46', null, null, null, null);
INSERT INTO `oms_order` VALUES ('59', '1', null, '202211110100000004', '2022-11-11 16:21:12', 'test', '649.00', '599.00', '0.00', '50.00', '0.00', '0.00', '0.00', '0', '1', '4', '0', null, null, '15', '649', '649', '满减优惠：满500.00元，减50.00元', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('60', '1', null, '202211160100000001', '2022-11-16 10:36:08', 'test', '11097.00', '11097.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', '1', '3', '0', '顺丰快递', '1234555', '15', '0', '0', '无优惠;无优惠;无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '1', '0', null, '2022-11-16 10:37:25', '2022-11-16 10:42:50', '2022-11-16 10:44:40', null, null);
INSERT INTO `oms_order` VALUES ('61', '1', null, '202212210100000001', '2022-12-21 15:49:08', 'test', '2999.00', '2999.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '1', '4', '0', null, null, '15', '0', '0', '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('62', '1', null, '202212210100000002', '2022-12-21 15:49:57', 'test', '8098.00', '8098.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', '1', '3', '0', '顺丰快递', 'SDFERR7845', '15', '0', '0', '无优惠;无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '1', '0', null, '2022-12-21 15:50:00', '2022-12-21 15:50:23', '2022-12-21 15:50:33', null, null);
INSERT INTO `oms_order` VALUES ('63', '1', null, '202212210100000003', '2022-12-21 15:51:09', 'test', '2999.00', '2999.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2', '1', '2', '0', '顺丰快递', '112', '15', '0', '0', '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, '2022-12-21 15:51:11', '2023-01-10 10:14:12', null, null, null);
INSERT INTO `oms_order` VALUES ('64', '1', null, '202212210100000004', '2022-12-21 15:51:35', 'test', '2099.00', '2099.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '1', '4', '0', null, null, '15', '0', '0', '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('65', '1', '28', '202212210100000005', '2022-12-21 16:53:07', 'test', '5098.00', '4788.00', '0.00', '200.00', '10.00', '100.00', '0.00', '2', '1', '2', '0', '圆通快递', '115', '15', '0', '0', '满减优惠：满2000.00元，减200.00元;无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, '2022-12-21 16:53:58', '2023-01-10 10:14:12', null, null, null);
INSERT INTO `oms_order` VALUES ('66', '1', null, '202301100100000001', '2023-01-10 15:34:59', 'test', '5998.00', '5798.00', '0.00', '200.00', '0.00', '0.00', '0.00', '0', '1', '4', '0', null, null, '15', '0', '0', '满减优惠：满2000.00元，减200.00元', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('67', '1', null, '202301100100000002', '2023-01-10 15:39:07', 'test', '3788.00', '3488.00', '0.00', '300.00', '0.00', '0.00', '0.00', '2', '1', '1', '0', null, null, '15', '3788', '3788', '满减优惠：满3000.00元，减300.00元', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, '2023-01-10 15:39:16', null, null, null, null);
INSERT INTO `oms_order` VALUES ('68', '1', null, '202301100100000003', '2023-01-10 16:58:19', 'test', '3999.00', '3899.00', '0.00', '100.00', '0.00', '0.00', '0.00', '2', '1', '1', '0', null, null, '15', '3788', '3788', '单品促销', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, '2023-01-10 16:58:21', null, null, null, null);

-- ----------------------------
-- Table structure for oms_order_item
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_item`;
CREATE TABLE `oms_order_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL COMMENT '订单id',
  `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
  `product_id` bigint DEFAULT NULL,
  `product_pic` varchar(500) DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `product_brand` varchar(200) DEFAULT NULL,
  `product_sn` varchar(64) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL COMMENT '销售价格',
  `product_quantity` int DEFAULT NULL COMMENT '购买数量',
  `product_sku_id` bigint DEFAULT NULL COMMENT '商品sku编号',
  `product_sku_code` varchar(50) DEFAULT NULL COMMENT '商品sku条码',
  `product_category_id` bigint DEFAULT NULL COMMENT '商品分类id',
  `promotion_name` varchar(200) DEFAULT NULL COMMENT '商品促销名称',
  `promotion_amount` decimal(10,2) DEFAULT NULL COMMENT '商品促销分解金额',
  `coupon_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠券优惠分解金额',
  `integration_amount` decimal(10,2) DEFAULT NULL COMMENT '积分优惠分解金额',
  `real_amount` decimal(10,2) DEFAULT NULL COMMENT '该商品经过优惠后的分解金额',
  `gift_integration` int DEFAULT '0',
  `gift_growth` int DEFAULT '0',
  `product_attr` varchar(500) DEFAULT NULL COMMENT '商品销售属性:[{"key":"颜色","value":"颜色"},{"key":"容量","value":"4G"}]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='订单中所包含的商品';

-- ----------------------------
-- Records of oms_order_item
-- ----------------------------
INSERT INTO `oms_order_item` VALUES ('21', '12', '201809150101000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', '3788.00', '1', '90', '201806070026001', '19', '单品促销', '200.00', '2.02', '0.00', '3585.98', '3788', '3788', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('22', '12', '201809150101000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', '2699.00', '3', '98', '201808270027001', '19', '打折优惠：满3件，打7.50折', '674.75', '1.44', '0.00', '2022.81', '2699', '2699', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('23', '12', '201809150101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '57.60', '0.35', '0.00', '591.05', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('24', '12', '201809150101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '699.00', '1', '103', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '62.40', '0.37', '0.00', '636.23', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('25', '12', '201809150101000001', '29', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', '5499.00', '1', '106', '201808270029001', '19', '无优惠', '0.00', '2.94', '0.00', '5496.06', '5499', '5499', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('26', '13', '201809150102000002', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', '3788.00', '1', '90', '201806070026001', '19', '单品促销', '200.00', '2.02', '0.00', '3585.98', '3788', '3788', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('27', '13', '201809150102000002', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', '2699.00', '3', '98', '201808270027001', '19', '打折优惠：满3件，打7.50折', '674.75', '1.44', '0.00', '2022.81', '2699', '2699', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('28', '13', '201809150102000002', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '57.60', '0.35', '0.00', '591.05', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('29', '13', '201809150102000002', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '699.00', '1', '103', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '62.40', '0.37', '0.00', '636.23', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('30', '13', '201809150102000002', '29', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', '5499.00', '1', '106', '201808270029001', '19', '无优惠', '0.00', '2.94', '0.00', '5496.06', '5499', '5499', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('31', '14', '201809130101000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', '3788.00', '1', '90', '201806070026001', '19', '单品促销', '200.00', '2.02', '0.00', '3585.98', '3788', '3788', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('32', '14', '201809130101000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', '2699.00', '3', '98', '201808270027001', '19', '打折优惠：满3件，打7.50折', '674.75', '1.44', '0.00', '2022.81', '2699', '2699', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('33', '14', '201809130101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '57.60', '0.35', '0.00', '591.05', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('34', '14', '201809130101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '699.00', '1', '103', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '62.40', '0.37', '0.00', '636.23', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('35', '14', '201809130101000001', '29', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', '5499.00', '1', '106', '201808270029001', '19', '无优惠', '0.00', '2.94', '0.00', '5496.06', '5499', '5499', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('36', '15', '201809130101000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', '3788.00', '1', '90', '201806070026001', '19', '单品促销', '200.00', '2.02', '0.00', '3585.98', '3788', '3788', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('37', '15', '201809130101000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', '2699.00', '3', '98', '201808270027001', '19', '打折优惠：满3件，打7.50折', '674.75', '1.44', '0.00', '2022.81', '2699', '2699', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('38', '15', '201809130101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '57.60', '0.35', '0.00', '591.05', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('39', '15', '201809130101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '699.00', '1', '103', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '62.40', '0.37', '0.00', '636.23', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('40', '15', '201809130101000001', '29', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', '5499.00', '1', '106', '201808270029001', '19', '无优惠', '0.00', '2.94', '0.00', '5496.06', '5499', '5499', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('41', '16', '201809140101000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', '3788.00', '1', '90', '201806070026001', '19', '单品促销', '200.00', '2.02', '0.00', '3585.98', '3788', '3788', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('42', '16', '201809140101000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', '2699.00', '3', '98', '201808270027001', '19', '打折优惠：满3件，打7.50折', '674.75', '1.44', '0.00', '2022.81', '2699', '2699', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('43', '16', '201809140101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '57.60', '0.35', '0.00', '591.05', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('44', '16', '201809140101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '699.00', '1', '103', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '62.40', '0.37', '0.00', '636.23', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('45', '16', '201809140101000001', '29', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', '5499.00', '1', '106', '201808270029001', '19', '无优惠', '0.00', '2.94', '0.00', '5496.06', '5499', '5499', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('46', '27', '202002250100000001', '36', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', '100.00', '3', '163', '202002210036001', '29', '无优惠', '0.00', '0.00', '0.00', '100.00', '0', '0', null);
INSERT INTO `oms_order_item` VALUES ('47', '27', '202002250100000001', '36', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', '120.00', '2', '164', '202002210036001', '29', '无优惠', '0.00', '0.00', '0.00', '120.00', '0', '0', null);
INSERT INTO `oms_order_item` VALUES ('48', '28', '202002250100000002', '36', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', '100.00', '3', '163', '202002210036001', '29', '无优惠', '0.00', '0.00', '0.00', '100.00', '0', '0', null);
INSERT INTO `oms_order_item` VALUES ('49', '28', '202002250100000002', '36', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', '120.00', '2', '164', '202002210036001', '29', '无优惠', '0.00', '0.00', '0.00', '120.00', '0', '0', null);
INSERT INTO `oms_order_item` VALUES ('50', '29', '202002250100000003', '36', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', '100.00', '3', '163', '202002210036001', '29', '无优惠', '0.00', '0.00', '0.00', '100.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `oms_order_item` VALUES ('51', '29', '202002250100000003', '36', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', '120.00', '2', '164', '202002210036001', '29', '无优惠', '0.00', '0.00', '0.00', '120.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `oms_order_item` VALUES ('52', '30', '202002250100000004', '36', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', '120.00', '2', '164', '202002210036001', '29', '无优惠', '0.00', '0.00', '0.00', '120.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `oms_order_item` VALUES ('53', '31', '202005160100000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '2', '110', '201806070026001', '19', '满减优惠：满5000.00元，减500.00元', '250.00', '75.00', '0.28', '3462.72', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('54', '31', '202005160100000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '小米', '7437788', '2699.00', '2', '98', '201808270027001', '19', '打折优惠：满2件，打8.00折', '539.80', '0.00', '0.20', '2159.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('55', '31', '202005160100000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', '满减优惠：满500.00元，减50.00元', '50.00', '0.00', '0.05', '598.95', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('56', '32', '202005170100000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '1', '110', '201806070026001', '19', '满减优惠：满3000.00元，减300.00元', '300.00', '0.00', '0.00', '3488.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('57', '32', '202005170100000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '小米', '7437788', '2699.00', '1', '98', '201808270027001', '19', '无优惠', '0.00', '0.00', '0.00', '2699.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('58', '33', '202005170100000002', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '1', '110', '201806070026001', '19', '满减优惠：满3000.00元，减300.00元', '300.00', '0.00', '0.00', '3488.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('59', '34', '202005170100000003', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '1', '110', '201806070026001', '19', '满减优惠：满3000.00元，减300.00元', '300.00', '0.00', '0.00', '3488.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('60', '35', '202005170100000004', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '1', '110', '201806070026001', '19', '满减优惠：满3000.00元，减300.00元', '300.00', '0.00', '0.00', '3488.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('61', '36', '202005170100000005', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '2', '110', '201806070026001', '19', '满减优惠：满5000.00元，减500.00元', '250.00', '0.00', '0.00', '3538.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('62', '36', '202005170100000005', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '小米', '7437788', '2699.00', '1', '98', '201808270027001', '19', '无优惠', '0.00', '0.00', '0.00', '2699.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('63', '37', '202005170100000006', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '1', '110', '201806070026001', '19', '满减优惠：满3000.00元，减300.00元', '300.00', '0.00', '0.00', '3488.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('64', '37', '202005170100000006', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '小米', '7437788', '2699.00', '1', '98', '201808270027001', '19', '无优惠', '0.00', '0.00', '0.00', '2699.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('65', '38', '202005170100000007', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '1', '110', '201806070026001', '19', '满减优惠：满3000.00元，减300.00元', '300.00', '0.00', '0.00', '3488.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('66', '39', '202005170100000008', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '1', '110', '201806070026001', '19', '满减优惠：满3000.00元，减300.00元', '300.00', '0.00', '0.00', '3488.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('67', '40', '202005180100000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '1', '110', '201806070026001', '19', '满减优惠：满3000.00元，减300.00元', '300.00', '0.00', '0.00', '3488.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('68', '41', '202005180100000002', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '1', '110', '201806070026001', '19', '满减优惠：满3000.00元，减300.00元', '300.00', '150.00', '0.00', '3338.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('69', '41', '202005180100000002', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '小米', '7437788', '2699.00', '1', '98', '201808270027001', '19', '无优惠', '0.00', '0.00', '0.00', '2699.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('70', '42', '202005230100000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '小米', '7437788', '2699.00', '2', '98', '201808270027001', '19', '打折优惠：满2件，打8.00折', '539.80', '0.00', '0.00', '2159.20', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('71', '43', '202005230100000002', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '小米', '7437788', '2699.00', '2', '98', '201808270027001', '19', '打折优惠：满2件，打8.00折', '539.80', '0.00', '0.00', '2159.20', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('72', '44', '202005240100000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '2', '110', '201806070026001', '19', '满减优惠：满5000.00元，减500.00元', '250.00', '0.00', '0.00', '3538.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('73', '45', '202006070100000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '2', '110', '201806070026001', '19', '满减优惠：满5000.00元，减500.00元', '250.00', '36.90', '0.00', '3501.10', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('74', '45', '202006070100000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '小米', '7437788', '2699.00', '1', '98', '201808270027001', '19', '无优惠', '0.00', '26.30', '0.00', '2672.70', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('75', '46', '202006210100000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '1', '110', '201806070026001', '19', '满减优惠：满3000.00元，减300.00元', '300.00', '4.12', '0.00', '3483.88', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('76', '46', '202006210100000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '小米', '7437788', '2699.00', '2', '98', '201808270027001', '19', '打折优惠：满2件，打8.00折', '539.80', '2.94', '0.00', '2156.26', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('77', '47', '202006210100000002', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '1', '110', '201806070026001', '19', '满减优惠：满3000.00元，减300.00元', '300.00', '0.00', '0.00', '3488.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('78', '47', '202006210100000002', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '小米', '7437788', '2699.00', '1', '98', '201808270027001', '19', '无优惠', '0.00', '0.00', '0.00', '2699.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('79', '48', '202006210100000003', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '1', '110', '201806070026001', '19', '满减优惠：满3000.00元，减300.00元', '300.00', '150.00', '0.00', '3338.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('80', '49', '202006270100000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '小米', '7437788', '2699.00', '1', '98', '201808270027001', '19', '无优惠', '0.00', '0.00', '0.00', '2699.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('81', '50', '202210280100000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '小米', '7437788', '2699.00', '1', '98', '201808270027001', '19', '无优惠', '0.00', '0.00', '0.00', '2699.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('82', '51', '202210280100000002', '37', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', 'Apple iPhone 14 (A2884) 128GB 紫色 支持移动联通电信5G 双卡双待手机', '苹果', '100038005189', '5999.00', '1', '201', '202210280037001', '19', '无优惠', '0.00', '0.00', '0.00', '5999.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"午夜色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('83', '52', '202211090100000001', '40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充 12GB+256GB 黑色 5G手机', '小米', '100027789721', '2999.00', '1', '221', '202211040040001', '19', '无优惠', '0.00', '200.00', '0.00', '2799.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('84', '53', '202211090100000002', '38', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/ipad_001.jpg', 'Apple iPad 10.9英寸平板电脑 2022年款（64GB WLAN版/A14芯片/1200万像素/iPadOS MPQ03CH/A ）', '苹果', '100044025833', '3599.00', '1', '213', '202210280038001', '53', '无优惠', '0.00', '10.00', '0.00', '3589.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"64G\"}]');
INSERT INTO `oms_order_item` VALUES ('85', '54', '202211090100000003', '37', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', 'Apple iPhone 14 (A2884) 128GB 支持移动联通电信5G 双卡双待手机', '苹果', '100038005189', '5999.00', '1', '201', '202210280037001', '19', '无优惠', '0.00', '600.00', '0.00', '5399.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"午夜色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('86', '55', '202211100100000001', '37', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', 'Apple iPhone 14 (A2884) 128GB 支持移动联通电信5G 双卡双待手机', '苹果', '100038005189', '5999.00', '2', '201', '202210280037001', '19', '无优惠', '0.00', '0.00', '0.00', '5999.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"午夜色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('87', '56', '202211110100000001', '40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充 12GB+256GB 黑色 5G手机', '小米', '100027789721', '2999.00', '1', '221', '202211040040001', '19', '无优惠', '0.00', '100.00', '0.00', '2899.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('88', '57', '202211110100000002', '40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充 12GB+256GB 黑色 5G手机', '小米', '100027789721', '2999.00', '1', '221', '202211040040001', '19', '无优惠', '0.00', '0.00', '0.00', '2999.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('89', '58', '202211110100000003', '37', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', 'Apple iPhone 14 (A2884) 128GB 支持移动联通电信5G 双卡双待手机', '苹果', '100038005189', '5999.00', '1', '201', '202210280037001', '19', '无优惠', '0.00', '0.00', '0.00', '5999.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"午夜色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('90', '59', '202211110100000004', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', '满减优惠：满500.00元，减50.00元', '50.00', '0.00', '0.00', '599.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('91', '60', '202211160100000001', '37', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', 'Apple iPhone 14 (A2884) 128GB 支持移动联通电信5G 双卡双待手机', '苹果', '100038005189', '5999.00', '1', '201', '202210280037001', '19', '无优惠', '0.00', '0.00', '0.00', '5999.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"午夜色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('92', '60', '202211160100000001', '40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充', '小米', '100027789721', '2999.00', '1', '221', '202211040040001', '19', '无优惠', '0.00', '0.00', '0.00', '2999.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('93', '60', '202211160100000001', '41', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_01.jpg', 'Redmi K50 天玑8100 2K柔性直屏 OIS光学防抖 67W快充 5500mAh大电量', '小米', '100035246702', '2099.00', '1', '225', '202211040041001', '19', '无优惠', '0.00', '0.00', '0.00', '2099.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"墨羽\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('94', '61', '202212210100000001', '40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充', '小米', '100027789721', '2999.00', '1', '221', '202211040040001', '19', '无优惠', '0.00', '0.00', '0.00', '2999.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('95', '62', '202212210100000002', '37', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', 'Apple iPhone 14 (A2884) 128GB 支持移动联通电信5G 双卡双待手机', '苹果', '100038005189', '5999.00', '1', '201', '202210280037001', '19', '无优惠', '0.00', '0.00', '0.00', '5999.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"午夜色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('96', '62', '202212210100000002', '41', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_01.jpg', 'Redmi K50 天玑8100 2K柔性直屏 OIS光学防抖 67W快充 5500mAh大电量', '小米', '100035246702', '2099.00', '1', '225', '202211040041001', '19', '无优惠', '0.00', '0.00', '0.00', '2099.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"墨羽\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('97', '63', '202212210100000003', '40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充', '小米', '100027789721', '2999.00', '1', '221', '202211040040001', '19', '无优惠', '0.00', '0.00', '0.00', '2999.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('98', '64', '202212210100000004', '41', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_01.jpg', 'Redmi K50 天玑8100 2K柔性直屏 OIS光学防抖 67W快充 5500mAh大电量', '小米', '100035246702', '2099.00', '1', '225', '202211040041001', '19', '无优惠', '0.00', '0.00', '0.00', '2099.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"墨羽\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('99', '65', '202212210100000005', '40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充', '小米', '100027789721', '2999.00', '1', '221', '202211040040001', '19', '满减优惠：满2000.00元，减200.00元', '200.00', '58.80', '5.88', '2734.32', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('100', '65', '202212210100000005', '41', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_01.jpg', 'Redmi K50 天玑8100 2K柔性直屏 OIS光学防抖 67W快充 5500mAh大电量', '小米', '100035246702', '2099.00', '1', '225', '202211040041001', '19', '无优惠', '0.00', '41.20', '4.12', '2053.68', '0', '0', '[{\"key\":\"颜色\",\"value\":\"墨羽\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('101', '66', '202301100100000001', '40', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充', '小米', '100027789721', '2999.00', '2', '221', '202211040040001', '19', '满减优惠：满2000.00元，减200.00元', '100.00', '0.00', '0.00', '2899.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `oms_order_item` VALUES ('102', '67', '202301100100000002', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3788.00', '1', '110', '201806070026001', '19', '满减优惠：满3000.00元，减300.00元', '300.00', '0.00', '0.00', '3488.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('103', '68', '202301100100000003', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20 ', '华为', '6946605', '3999.00', '1', '111', '201806070026002', '19', '单品促销', '100.00', '0.00', '0.00', '3899.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');

-- ----------------------------
-- Table structure for oms_order_operate_history
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_operate_history`;
CREATE TABLE `oms_order_operate_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL COMMENT '订单id',
  `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人：用户；系统；后台管理员',
  `create_time` datetime DEFAULT NULL COMMENT '操作时间',
  `order_status` int DEFAULT NULL COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='订单操作历史记录';

-- ----------------------------
-- Records of oms_order_operate_history
-- ----------------------------
INSERT INTO `oms_order_operate_history` VALUES ('5', '12', '后台管理员', '2018-10-12 14:01:29', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('6', '13', '后台管理员', '2018-10-12 14:01:29', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('7', '12', '后台管理员', '2018-10-12 14:13:10', '4', '订单关闭:买家退货');
INSERT INTO `oms_order_operate_history` VALUES ('8', '13', '后台管理员', '2018-10-12 14:13:10', '4', '订单关闭:买家退货');
INSERT INTO `oms_order_operate_history` VALUES ('9', '22', '后台管理员', '2018-10-15 16:31:48', '4', '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES ('10', '22', '后台管理员', '2018-10-15 16:35:08', '4', '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES ('11', '22', '后台管理员', '2018-10-15 16:35:59', '4', '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES ('12', '17', '后台管理员', '2018-10-15 16:43:40', '4', '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES ('13', '25', '后台管理员', '2018-10-15 16:52:14', '4', '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES ('14', '26', '后台管理员', '2018-10-15 16:52:14', '4', '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES ('15', '23', '后台管理员', '2018-10-16 14:41:28', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('16', '13', '后台管理员', '2018-10-16 14:42:17', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('17', '18', '后台管理员', '2018-10-16 14:42:17', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('18', '26', '后台管理员', '2018-10-30 14:37:44', '4', '订单关闭:关闭订单');
INSERT INTO `oms_order_operate_history` VALUES ('19', '25', '后台管理员', '2018-10-30 15:07:01', '0', '修改收货人信息');
INSERT INTO `oms_order_operate_history` VALUES ('20', '25', '后台管理员', '2018-10-30 15:08:13', '0', '修改费用信息');
INSERT INTO `oms_order_operate_history` VALUES ('21', '25', '后台管理员', '2018-10-30 15:08:31', '0', '修改备注信息：xxx');
INSERT INTO `oms_order_operate_history` VALUES ('22', '25', '后台管理员', '2018-10-30 15:08:39', '4', '订单关闭:2222');
INSERT INTO `oms_order_operate_history` VALUES ('23', '12', '后台管理员', '2019-11-09 16:50:28', '4', '修改备注信息：111');
INSERT INTO `oms_order_operate_history` VALUES ('24', '30', '后台管理员', '2020-02-25 16:52:37', '0', '修改费用信息');
INSERT INTO `oms_order_operate_history` VALUES ('25', '30', '后台管理员', '2020-02-25 16:52:51', '0', '修改费用信息');
INSERT INTO `oms_order_operate_history` VALUES ('26', '30', '后台管理员', '2020-02-25 16:54:03', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('27', '35', '后台管理员', '2020-05-17 15:30:24', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('28', '37', '后台管理员', '2020-05-17 19:35:00', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('29', '39', '后台管理员', '2020-05-17 19:42:08', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('30', '41', '后台管理员', '2020-05-18 20:23:04', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('31', '47', '后台管理员', '2020-06-21 15:13:44', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('32', '48', '后台管理员', '2020-06-21 15:15:49', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('33', '52', '后台管理员', '2022-11-09 15:16:13', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('34', '60', '后台管理员', '2022-11-16 10:42:50', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('35', '62', '后台管理员', '2022-12-21 15:50:24', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('36', '63', '后台管理员', '2023-01-10 10:08:34', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('37', '65', '后台管理员', '2023-01-10 10:08:34', '2', '完成发货');

-- ----------------------------
-- Table structure for oms_order_return_apply
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_return_apply`;
CREATE TABLE `oms_order_return_apply` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL COMMENT '订单id',
  `company_address_id` bigint DEFAULT NULL COMMENT '收货地址表id',
  `product_id` bigint DEFAULT NULL COMMENT '退货商品id',
  `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT NULL COMMENT '申请时间',
  `member_username` varchar(64) DEFAULT NULL COMMENT '会员用户名',
  `return_amount` decimal(10,2) DEFAULT NULL COMMENT '退款金额',
  `return_name` varchar(100) DEFAULT NULL COMMENT '退货人姓名',
  `return_phone` varchar(100) DEFAULT NULL COMMENT '退货人电话',
  `status` int DEFAULT NULL COMMENT '申请状态：0->待处理；1->退货中；2->已完成；3->已拒绝',
  `handle_time` datetime DEFAULT NULL COMMENT '处理时间',
  `product_pic` varchar(500) DEFAULT NULL COMMENT '商品图片',
  `product_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `product_brand` varchar(200) DEFAULT NULL COMMENT '商品品牌',
  `product_attr` varchar(500) DEFAULT NULL COMMENT '商品销售属性：颜色：红色；尺码：xl;',
  `product_count` int DEFAULT NULL COMMENT '退货数量',
  `product_price` decimal(10,2) DEFAULT NULL COMMENT '商品单价',
  `product_real_price` decimal(10,2) DEFAULT NULL COMMENT '商品实际支付单价',
  `reason` varchar(200) DEFAULT NULL COMMENT '原因',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `proof_pics` varchar(1000) DEFAULT NULL COMMENT '凭证图片，以逗号隔开',
  `handle_note` varchar(500) DEFAULT NULL COMMENT '处理备注',
  `handle_man` varchar(100) DEFAULT NULL COMMENT '处理人员',
  `receive_man` varchar(100) DEFAULT NULL COMMENT '收货人',
  `receive_time` datetime DEFAULT NULL COMMENT '收货时间',
  `receive_note` varchar(500) DEFAULT NULL COMMENT '收货备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='订单退货申请';

-- ----------------------------
-- Records of oms_order_return_apply
-- ----------------------------
INSERT INTO `oms_order_return_apply` VALUES ('3', '12', '1', '26', '201809150101000001', '2018-10-17 14:34:57', 'test', '0.00', '大梨', '18000000000', '2', '2022-11-11 10:16:18', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '111', 'admin', 'admin', '2022-11-11 10:16:26', null);
INSERT INTO `oms_order_return_apply` VALUES ('4', '12', '2', '27', '201809150101000001', '2018-10-17 14:40:21', 'test', '3585.98', '大梨', '18000000000', '1', '2018-10-18 13:54:10', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', '已经处理了', 'admin', null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('5', '12', '3', '28', '201809150101000001', '2018-10-17 14:44:18', 'test', '3585.98', '大梨', '18000000000', '2', '2018-10-18 13:55:28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', '已经处理了', 'admin', 'admin', '2018-10-18 13:55:58', '已经处理了');
INSERT INTO `oms_order_return_apply` VALUES ('8', '13', null, '28', '201809150102000002', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', '3', '2018-10-18 13:57:12', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', '理由不够充分', 'admin', null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('9', '14', '2', '26', '201809130101000001', '2018-10-17 14:34:57', 'test', '3500.00', '大梨', '18000000000', '2', '2018-10-24 15:44:56', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', '呵呵', 'admin', 'admin', '2018-10-24 15:46:35', '收货了');
INSERT INTO `oms_order_return_apply` VALUES ('10', '14', null, '27', '201809130101000001', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '3', '2018-10-24 15:46:57', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', '就是不退', 'admin', null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('11', '14', '2', '28', '201809130101000001', '2018-10-17 14:44:18', 'test', '591.05', '大梨', '18000000000', '1', '2018-10-24 17:09:04', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', '可以退款', 'admin', null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('12', '15', '3', '26', '201809130102000002', '2018-10-17 14:34:57', 'test', '3500.00', '大梨', '18000000000', '2', '2018-10-24 17:22:54', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', '退货了', 'admin', 'admin', '2018-10-24 17:23:06', '收货了');
INSERT INTO `oms_order_return_apply` VALUES ('13', '15', null, '27', '201809130102000002', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '3', '2018-10-24 17:23:30', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', '无法退货', 'admin', null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('15', '16', null, '26', '201809140101000001', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('16', '16', null, '27', '201809140101000001', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('17', '16', null, '28', '201809140101000001', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('18', '17', null, '26', '201809150101000003', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('19', '17', null, '27', '201809150101000003', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('20', '17', null, '28', '201809150101000003', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('21', '18', null, '26', '201809150102000004', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('22', '18', null, '27', '201809150102000004', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('23', '18', null, '28', '201809150102000004', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('24', '19', null, '26', '201809130101000003', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('25', '19', null, '27', '201809130101000003', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('26', '19', null, '28', '201809130101000003', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', null, null, null, null, null);

-- ----------------------------
-- Table structure for oms_order_return_reason
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_return_reason`;
CREATE TABLE `oms_order_return_reason` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '退货类型',
  `sort` int DEFAULT NULL,
  `status` int DEFAULT NULL COMMENT '状态：0->不启用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='退货原因表';

-- ----------------------------
-- Records of oms_order_return_reason
-- ----------------------------
INSERT INTO `oms_order_return_reason` VALUES ('1', '质量问题', '1', '1', '2018-10-17 10:00:45');
INSERT INTO `oms_order_return_reason` VALUES ('2', '尺码太大', '1', '1', '2018-10-17 10:01:03');
INSERT INTO `oms_order_return_reason` VALUES ('3', '颜色不喜欢', '1', '1', '2018-10-17 10:01:13');
INSERT INTO `oms_order_return_reason` VALUES ('4', '7天无理由退货', '1', '1', '2018-10-17 10:01:47');
INSERT INTO `oms_order_return_reason` VALUES ('5', '价格问题', '1', '0', '2018-10-17 10:01:57');
INSERT INTO `oms_order_return_reason` VALUES ('12', '发票问题', '0', '1', '2018-10-19 16:28:36');
INSERT INTO `oms_order_return_reason` VALUES ('13', '其他问题', '0', '1', '2018-10-19 16:28:51');
INSERT INTO `oms_order_return_reason` VALUES ('14', '物流问题', '0', '1', '2018-10-19 16:29:01');
INSERT INTO `oms_order_return_reason` VALUES ('15', '售后问题', '0', '1', '2018-10-19 16:29:11');

-- ----------------------------
-- Table structure for oms_order_setting
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_setting`;
CREATE TABLE `oms_order_setting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flash_order_overtime` int DEFAULT NULL COMMENT '秒杀订单超时关闭时间(分)',
  `normal_order_overtime` int DEFAULT NULL COMMENT '正常订单超时时间(分)',
  `confirm_overtime` int DEFAULT NULL COMMENT '发货后自动确认收货时间（天）',
  `finish_overtime` int DEFAULT NULL COMMENT '自动完成交易时间，不能申请售后（天）',
  `comment_overtime` int DEFAULT NULL COMMENT '订单完成后自动好评时间（天）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='订单设置表';

-- ----------------------------
-- Records of oms_order_setting
-- ----------------------------
INSERT INTO `oms_order_setting` VALUES ('1', '60', '120', '15', '7', '7');

-- ----------------------------
-- Table structure for pms_album
-- ----------------------------
DROP TABLE IF EXISTS `pms_album`;
CREATE TABLE `pms_album` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `cover_pic` varchar(1000) DEFAULT NULL,
  `pic_count` int DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='相册表';

-- ----------------------------
-- Records of pms_album
-- ----------------------------

-- ----------------------------
-- Table structure for pms_album_pic
-- ----------------------------
DROP TABLE IF EXISTS `pms_album_pic`;
CREATE TABLE `pms_album_pic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `album_id` bigint DEFAULT NULL,
  `pic` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='画册图片表';

-- ----------------------------
-- Records of pms_album_pic
-- ----------------------------

-- ----------------------------
-- Table structure for pms_brand
-- ----------------------------
DROP TABLE IF EXISTS `pms_brand`;
CREATE TABLE `pms_brand` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `first_letter` varchar(8) DEFAULT NULL COMMENT '首字母',
  `sort` int DEFAULT NULL,
  `factory_status` int DEFAULT NULL COMMENT '是否为品牌制造商：0->不是；1->是',
  `show_status` int DEFAULT NULL,
  `product_count` int DEFAULT NULL COMMENT '产品数量',
  `product_comment_count` int DEFAULT NULL COMMENT '产品评论数量',
  `logo` varchar(255) DEFAULT NULL COMMENT '品牌logo',
  `big_pic` varchar(255) DEFAULT NULL COMMENT '专区大图',
  `brand_story` text COMMENT '品牌故事',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='品牌表';

-- ----------------------------
-- Records of pms_brand
-- ----------------------------
INSERT INTO `pms_brand` VALUES ('1', '万和', 'W', '0', '1', '1', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5b07ca8aN4e127d2f.jpg', 'http://img13.360buyimg.com/cms/jfs/t1/121860/35/2430/187800/5ec4e294E22f3ffcc/1e233b65b94ba192.jpg', '万和成立于1993年8月，总部位于广东顺德国家级高新技术开发区内，是国内生产规模最大的燃气具专业制造企业，也是中国燃气具发展战略的首倡者和推动者、中国五金制品协会燃气用具分会第三届理事长单位。');
INSERT INTO `pms_brand` VALUES ('2', '三星', 'S', '100', '1', '1', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/57201b47N7bf15715.jpg', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/sanxing_banner_01.png', '三星集团（英文：SAMSUNG、韩文：삼성）是韩国最大的跨国企业集团，三星集团包括众多的国际下属企业，旗下子公司有：三星电子、三星物产、三星人寿保险等，业务涉及电子、金融、机械、化学等众多领域。');
INSERT INTO `pms_brand` VALUES ('3', '华为', 'H', '100', '1', '1', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5abf6f26N31658aa2.jpg', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/huawei_banner_01.png', '荣耀品牌成立于2013年,是华为旗下手机双品牌之一。荣耀以“创新、品质、服务”为核心战略,为全球年轻人提供潮酷的全场景智能化体验,打造年轻人向往的先锋文化和潮流生活方式');
INSERT INTO `pms_brand` VALUES ('4', '格力', 'G', '30', '1', '1', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (3).jpg', null, 'Victoria\'s Secret的故事');
INSERT INTO `pms_brand` VALUES ('5', '方太', 'F', '20', '1', '1', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (4).jpg', null, 'Victoria\'s Secret的故事');
INSERT INTO `pms_brand` VALUES ('6', '小米', 'M', '500', '1', '1', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5565f5a2N0b8169ae.jpg', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/xiaomi_banner_01.png', '小米公司正式成立于2010年4月，是一家专注于高端智能手机、互联网电视自主研发的创新型科技企业。主要由前谷歌、微软、摩托、金山等知名公司的顶尖人才组建。');
INSERT INTO `pms_brand` VALUES ('21', 'OPPO', 'O', '0', '1', '1', '88', '500', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg(6).jpg', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/oppo_banner_01.png', 'OPPO于2008年推出第一款“笑脸手机”，由此开启探索和引领至美科技之旅。今天，OPPO凭借以Find和R系列手机为核心的智能终端产品，以及OPPO+等互联网服务，让全球消费者尽享至美科技。');
INSERT INTO `pms_brand` VALUES ('49', '七匹狼', 'S', '200', '1', '1', '77', '400', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190525/qipilang.png', null, 'BOOB的故事');
INSERT INTO `pms_brand` VALUES ('50', '海澜之家', 'H', '200', '1', '1', '66', '300', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5a5c69b9N5d6c5696.jpg', 'http://img10.360buyimg.com/cms/jfs/t1/133148/4/1605/470028/5edaf5ccEd7a687a9/e0a007631361ff75.jpg', '“海澜之家”（英文缩写：HLA）是海澜之家股份有限公司旗下的服装品牌，总部位于中国江苏省无锡市江阴市，主要采用连锁零售的模式，销售男性服装、配饰与相关产品。');
INSERT INTO `pms_brand` VALUES ('51', '苹果', 'A', '200', '1', '1', '55', '200', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/49b30bb0377030d1.jpg', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/apple_banner_01.png', '苹果公司(Apple Inc. )是美国的一家高科技公司。 由史蒂夫·乔布斯、斯蒂夫·沃兹尼亚克和罗·韦恩(Ron Wayne)等人于1976年4月1日创立,并命名为美国苹果电脑公司(Apple Computer Inc. ),2007年1月9日更名为苹果公司,总部位于加利福尼亚州的...');
INSERT INTO `pms_brand` VALUES ('58', 'NIKE', 'N', '0', '1', '0', '33', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/timg (51).jpg', '', 'NIKE的故事');
INSERT INTO `pms_brand` VALUES ('59', '测试品牌', 'C', '0', '0', '0', null, null, 'http://localhost:9000/mall/20220609/Snipaste_2022-06-08_14-35-53.png', 'http://localhost:9000/mall/20220609/biji_05.jpg', '12345');

-- ----------------------------
-- Table structure for pms_comment
-- ----------------------------
DROP TABLE IF EXISTS `pms_comment`;
CREATE TABLE `pms_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `star` int DEFAULT NULL COMMENT '评价星数：0->5',
  `member_ip` varchar(64) DEFAULT NULL COMMENT '评价的ip',
  `create_time` datetime DEFAULT NULL,
  `show_status` int DEFAULT NULL,
  `product_attribute` varchar(255) DEFAULT NULL COMMENT '购买时的商品属性',
  `collect_couont` int DEFAULT NULL,
  `read_count` int DEFAULT NULL,
  `content` text,
  `pics` varchar(1000) DEFAULT NULL COMMENT '上传图片地址，以逗号隔开',
  `member_icon` varchar(255) DEFAULT NULL COMMENT '评论用户头像',
  `replay_count` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='商品评价表';

-- ----------------------------
-- Records of pms_comment
-- ----------------------------

-- ----------------------------
-- Table structure for pms_comment_replay
-- ----------------------------
DROP TABLE IF EXISTS `pms_comment_replay`;
CREATE TABLE `pms_comment_replay` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment_id` bigint DEFAULT NULL,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `member_icon` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `type` int DEFAULT NULL COMMENT '评论人员类型；0->会员；1->管理员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='产品评价回复表';

-- ----------------------------
-- Records of pms_comment_replay
-- ----------------------------

-- ----------------------------
-- Table structure for pms_freight_template
-- ----------------------------
DROP TABLE IF EXISTS `pms_freight_template`;
CREATE TABLE `pms_freight_template` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `charge_type` int DEFAULT NULL COMMENT '计费类型:0->按重量；1->按件数',
  `first_weight` decimal(10,2) DEFAULT NULL COMMENT '首重kg',
  `first_fee` decimal(10,2) DEFAULT NULL COMMENT '首费（元）',
  `continue_weight` decimal(10,2) DEFAULT NULL,
  `continme_fee` decimal(10,2) DEFAULT NULL,
  `dest` varchar(255) DEFAULT NULL COMMENT '目的地（省、市）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='运费模版';

-- ----------------------------
-- Records of pms_freight_template
-- ----------------------------

-- ----------------------------
-- Table structure for pms_member_price
-- ----------------------------
DROP TABLE IF EXISTS `pms_member_price`;
CREATE TABLE `pms_member_price` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `member_level_id` bigint DEFAULT NULL,
  `member_price` decimal(10,2) DEFAULT NULL COMMENT '会员价格',
  `member_level_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='商品会员价格表';

-- ----------------------------
-- Records of pms_member_price
-- ----------------------------
INSERT INTO `pms_member_price` VALUES ('26', '7', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('27', '8', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('28', '9', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('29', '10', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('30', '11', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('31', '12', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('32', '13', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('33', '14', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('37', '18', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('44', '7', '2', '480.00', null);
INSERT INTO `pms_member_price` VALUES ('45', '7', '3', '450.00', null);
INSERT INTO `pms_member_price` VALUES ('52', '22', '1', null, null);
INSERT INTO `pms_member_price` VALUES ('53', '22', '2', null, null);
INSERT INTO `pms_member_price` VALUES ('54', '22', '3', null, null);
INSERT INTO `pms_member_price` VALUES ('58', '24', '1', null, null);
INSERT INTO `pms_member_price` VALUES ('59', '24', '2', null, null);
INSERT INTO `pms_member_price` VALUES ('60', '24', '3', null, null);
INSERT INTO `pms_member_price` VALUES ('112', '23', '1', '88.00', '黄金会员');
INSERT INTO `pms_member_price` VALUES ('113', '23', '2', '88.00', '白金会员');
INSERT INTO `pms_member_price` VALUES ('114', '23', '3', '66.00', '钻石会员');
INSERT INTO `pms_member_price` VALUES ('246', '36', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('247', '36', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('248', '36', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('249', '35', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('250', '35', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('251', '35', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('258', '30', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('259', '30', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('260', '30', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('261', '31', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('262', '31', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('263', '31', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('264', '32', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('265', '32', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('266', '32', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('270', '33', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('271', '33', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('272', '33', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('273', '34', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('274', '34', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('275', '34', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('285', '27', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('286', '27', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('287', '27', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('294', '28', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('295', '28', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('296', '28', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('297', '29', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('298', '29', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('299', '29', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('315', '37', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('316', '37', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('317', '37', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('381', '38', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('382', '38', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('383', '38', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('384', '39', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('385', '39', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('386', '39', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('387', '41', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('388', '41', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('389', '41', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('390', '42', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('391', '42', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('392', '42', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('393', '43', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('394', '43', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('395', '43', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('396', '44', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('397', '44', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('398', '44', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('399', '45', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('400', '45', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('401', '45', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('402', '40', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('403', '40', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('404', '40', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('423', '26', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('424', '26', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('425', '26', '3', null, '钻石会员');

-- ----------------------------
-- Table structure for pms_product
-- ----------------------------
DROP TABLE IF EXISTS `pms_product`;
CREATE TABLE `pms_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `brand_id` bigint DEFAULT NULL,
  `product_category_id` bigint DEFAULT NULL,
  `feight_template_id` bigint DEFAULT NULL,
  `product_attribute_category_id` bigint DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `product_sn` varchar(64) NOT NULL COMMENT '货号',
  `delete_status` int DEFAULT NULL COMMENT '删除状态：0->未删除；1->已删除',
  `publish_status` int DEFAULT NULL COMMENT '上架状态：0->下架；1->上架',
  `new_status` int DEFAULT NULL COMMENT '新品状态:0->不是新品；1->新品',
  `recommand_status` int DEFAULT NULL COMMENT '推荐状态；0->不推荐；1->推荐',
  `verify_status` int DEFAULT NULL COMMENT '审核状态：0->未审核；1->审核通过',
  `sort` int DEFAULT NULL COMMENT '排序',
  `sale` int DEFAULT NULL COMMENT '销量',
  `price` decimal(10,2) DEFAULT NULL,
  `promotion_price` decimal(10,2) DEFAULT NULL COMMENT '促销价格',
  `gift_growth` int DEFAULT '0' COMMENT '赠送的成长值',
  `gift_point` int DEFAULT '0' COMMENT '赠送的积分',
  `use_point_limit` int DEFAULT NULL COMMENT '限制使用的积分数',
  `sub_title` varchar(255) DEFAULT NULL COMMENT '副标题',
  `description` text COMMENT '商品描述',
  `original_price` decimal(10,2) DEFAULT NULL COMMENT '市场价',
  `stock` int DEFAULT NULL COMMENT '库存',
  `low_stock` int DEFAULT NULL COMMENT '库存预警值',
  `unit` varchar(16) DEFAULT NULL COMMENT '单位',
  `weight` decimal(10,2) DEFAULT NULL COMMENT '商品重量，默认为克',
  `preview_status` int DEFAULT NULL COMMENT '是否为预告商品：0->不是；1->是',
  `service_ids` varchar(64) DEFAULT NULL COMMENT '以逗号分割的产品服务：1->无忧退货；2->快速退款；3->免费包邮',
  `keywords` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `album_pics` varchar(255) DEFAULT NULL COMMENT '画册图片，连产品图片限制为5张，以逗号分割',
  `detail_title` varchar(255) DEFAULT NULL,
  `detail_desc` text,
  `detail_html` text COMMENT '产品详情网页内容',
  `detail_mobile_html` text COMMENT '移动端网页详情',
  `promotion_start_time` datetime DEFAULT NULL COMMENT '促销开始时间',
  `promotion_end_time` datetime DEFAULT NULL COMMENT '促销结束时间',
  `promotion_per_limit` int DEFAULT NULL COMMENT '活动限购数量',
  `promotion_type` int DEFAULT NULL COMMENT '促销类型：0->没有促销使用原价;1->使用促销价；2->使用会员价；3->使用阶梯价格；4->使用满减价格；5->限时购',
  `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
  `product_category_name` varchar(255) DEFAULT NULL COMMENT '商品分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='商品信息';

-- ----------------------------
-- Records of pms_product
-- ----------------------------
INSERT INTO `pms_product` VALUES ('1', '49', '7', '0', '0', '银色星芒刺绣网纱底裤', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '1', '1', '1', '1', '100', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, null, null, '0', '七匹狼', '外套');
INSERT INTO `pms_product` VALUES ('2', '49', '7', '0', '0', '银色星芒刺绣网纱底裤2', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86578', '1', '1', '1', '1', '1', '1', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null, '银色星芒刺绣网纱底裤2', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '<p>银色星芒刺绣网纱底裤</p>', '<p>银色星芒刺绣网纱底裤</p>', null, null, null, '0', '七匹狼', '外套');
INSERT INTO `pms_product` VALUES ('3', '1', '7', '0', '0', '银色星芒刺绣网纱底裤3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86579', '1', '1', '1', '1', '1', '1', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null, '银色星芒刺绣网纱底裤3', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, null, null, '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('4', '1', '7', '0', '0', '银色星芒刺绣网纱底裤4', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86580', '1', '1', '1', '1', '1', '1', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null, '银色星芒刺绣网纱底裤4', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, null, null, '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('5', '1', '7', '0', '0', '银色星芒刺绣网纱底裤5', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86581', '1', '0', '1', '1', '1', '1', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null, '银色星芒刺绣网纱底裤5', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, null, null, '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('6', '1', '7', '0', '0', '银色星芒刺绣网纱底裤6', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86582', '1', '1', '1', '1', '1', '1', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null, '银色星芒刺绣网纱底裤6', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, null, null, '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('7', '1', '7', '0', '1', '女式超柔软拉毛运动开衫', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '0', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('8', '1', '7', '0', '1', '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '0', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('9', '1', '7', '0', '1', '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '0', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('10', '1', '7', '0', '1', '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '0', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('11', '1', '7', '0', '1', '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '1', '0', '1', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('12', '1', '7', '0', '1', '女式超柔软拉毛运动开衫2', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '1', '0', '1', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('13', '1', '7', '0', '1', '女式超柔软拉毛运动开衫3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '1', '0', '1', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('14', '1', '7', '0', '1', '女式超柔软拉毛运动开衫3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '1', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('18', '1', '7', '0', '1', '女式超柔软拉毛运动开衫3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '1', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('22', '6', '7', '0', '1', 'test', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', '', '1', '1', '0', '0', '0', '0', '0', '0.00', null, '0', '0', '0', 'test', '', '0.00', '100', '0', '', '0.00', '1', '1,2', '', '', '', '', '', '', '', null, null, '0', '0', '小米', '外套');
INSERT INTO `pms_product` VALUES ('23', '6', '19', '0', '1', '毛衫测试', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', 'NO.1098', '1', '1', '1', '1', '0', '0', '0', '99.00', null, '99', '99', '1000', '毛衫测试11', 'xxx', '109.00', '100', '0', '件', '1000.00', '1', '1,2,3', '毛衫测试', '毛衫测试', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', '毛衫测试', '毛衫测试', '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/155x54.bmp\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/APP登录bg1080.jpg\" width=\"500\" height=\"500\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/APP登录界面.jpg\" width=\"500\" height=\"500\" /></p>', '', null, null, '0', '2', '小米', '手机数码');
INSERT INTO `pms_product` VALUES ('24', '6', '7', '0', null, 'xxx', '', '', '1', '0', '0', '0', '0', '0', '0', '0.00', null, '0', '0', '0', 'xxx', '', '0.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '0', '小米', '外套');
INSERT INTO `pms_product` VALUES ('26', '3', '19', '0', '3', '华为 HUAWEI P20 ', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '6946605', '0', '1', '1', '1', '0', '100', '100', '3788.00', '3659.00', '3788', '3788', '0', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '', '4288.00', '1000', '0', '件', '0.00', '1', '2,3,1', '', '', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ab46a3cN616bdc41.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf5fN2522b9dc.jpg', '', '', '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44f1cNf51f3bb0.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44fa8Nfcf71c10.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44fa9N40e78ee0.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad457f4N1c94bdda.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad457f5Nd30de41d.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5b10fb0eN0eb053fb.jpg\" /></p>', '<p><img src=\"//img20.360buyimg.com/vc/jfs/t1/81293/35/5822/369414/5d3fe77cE619c5487/6e775a52850feea5.jpg!q70.dpg.webp\" alt=\"\" width=\"750\" height=\"776\" /></p>\n<p><img src=\"//img20.360buyimg.com/vc/jfs/t1/45300/25/11592/3658871/5d85ef66E92a8a911/083e47d8f662c582.jpg!q70.dpg.webp\" alt=\"\" width=\"596\" height=\"16383\" /></p>', '2023-01-10 15:49:38', '2023-01-31 00:00:00', '0', '1', '华为', '手机通讯');
INSERT INTO `pms_product` VALUES ('27', '6', '19', '0', '3', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '7437788', '0', '1', '1', '1', '0', '0', '99', '2699.00', null, '2699', '2699', '0', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '2699.00', '100', '0', '', '0.00', '0', '1', '', '', '', '', '', '<p style=\"text-align: center;\"><img src=\"//img30.360buyimg.com/popWareDetail/jfs/t1/95935/9/19330/159477/5e9ecc13E5b8db8ae/8e954021a0835fb7.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWareDetail/jfs/t1/99224/22/19596/137593/5e9ecc13E34ef2113/2b362b90d8378ee1.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWareDetail/jfs/t1/93131/25/19321/107691/5e9ecc13E41e8addf/202a5f84d9129878.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWareDetail/jfs/t1/101843/19/19533/66831/5e9ecc13Ecb7f9d53/4fdd807266583c1e.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWareDetail/jfs/t1/99629/36/19016/59882/5e9ecc13E1f5beef5/1e5af3528f366e70.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/72343/29/8945/84548/5d6e5c67Ea07b1125/702791816b90eb3d.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/65403/35/9017/129532/5d6e5c68E3f2d0546/9ec771eb6e04a75a.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/58261/33/9380/106603/5d6e5c68E05a99177/2b5b9e29eed05b08.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/51968/40/9688/113552/5d6e5c68E5052b312/8969d83124cb78a4.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/75491/9/9101/146883/5d6e5c68E3db89775/c1aa57e78ded4e44.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/75063/11/9107/127874/5d6e5c68E0b1dfc61/10dd6000ce213375.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/47452/25/9579/108279/5d6e5c68Ea9002f3b/865b5d32ffd9da75.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/82146/26/9077/87075/5d6e5c68Ef63bccc8/556de5665a35a3f2.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/82804/21/9019/124404/5d6e5c69E06a8f575/0f861f8c4636c546.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/46044/10/9734/107686/5d6e5c69Edd5e66c7/a8c7b9324e271dbd.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/40729/32/13755/45997/5d6e5c69Eafee3664/6a3457a4efdb79c5.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/76254/34/9039/96195/5d6e5c69E3c71c809/49033c0b7024c208.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/79825/20/9065/90864/5d6e5c69E1e62ef89/a4d3ce383425a666.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/49939/21/9618/106207/5d6e5c6aEf7b1d4fd/0f5e963c66be3d0c.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/64035/7/9001/115159/5d6e5c6aE6919dfdf/39dfe4840157ad81.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/53389/3/9616/99637/5d6e5c6aEa33b9f35/b8f6aa26e72616a3.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/63219/6/9026/81576/5d6e5c6aEa9c74b49/b4fa364437531012.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/42146/27/13902/80437/5d6e5c6bE30c31ce9/475d4d54c7334313.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/45317/28/9596/78175/5d6e5c6bEce31e4b7/5675858b6933565c.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/60080/1/9112/138722/5d6e5c6bEefd9fc62/7ece7460a36d2fcc.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/51525/13/9549/36018/5d6e5c73Ebbccae6c/99bc2770dccc042b.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/61948/20/9088/72918/5d6e5c73Eab7aef5c/6f21e2f85cf478fa.jpg!q70.dpg.webp\" /></p>', '<p style=\"text-align: center;\"><img src=\"//img30.360buyimg.com/popWareDetail/jfs/t1/95935/9/19330/159477/5e9ecc13E5b8db8ae/8e954021a0835fb7.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWareDetail/jfs/t1/99224/22/19596/137593/5e9ecc13E34ef2113/2b362b90d8378ee1.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWareDetail/jfs/t1/93131/25/19321/107691/5e9ecc13E41e8addf/202a5f84d9129878.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWareDetail/jfs/t1/101843/19/19533/66831/5e9ecc13Ecb7f9d53/4fdd807266583c1e.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWareDetail/jfs/t1/99629/36/19016/59882/5e9ecc13E1f5beef5/1e5af3528f366e70.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/72343/29/8945/84548/5d6e5c67Ea07b1125/702791816b90eb3d.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/65403/35/9017/129532/5d6e5c68E3f2d0546/9ec771eb6e04a75a.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/58261/33/9380/106603/5d6e5c68E05a99177/2b5b9e29eed05b08.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/51968/40/9688/113552/5d6e5c68E5052b312/8969d83124cb78a4.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/75491/9/9101/146883/5d6e5c68E3db89775/c1aa57e78ded4e44.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/75063/11/9107/127874/5d6e5c68E0b1dfc61/10dd6000ce213375.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/47452/25/9579/108279/5d6e5c68Ea9002f3b/865b5d32ffd9da75.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/82146/26/9077/87075/5d6e5c68Ef63bccc8/556de5665a35a3f2.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/82804/21/9019/124404/5d6e5c69E06a8f575/0f861f8c4636c546.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/46044/10/9734/107686/5d6e5c69Edd5e66c7/a8c7b9324e271dbd.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/40729/32/13755/45997/5d6e5c69Eafee3664/6a3457a4efdb79c5.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/76254/34/9039/96195/5d6e5c69E3c71c809/49033c0b7024c208.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/79825/20/9065/90864/5d6e5c69E1e62ef89/a4d3ce383425a666.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/49939/21/9618/106207/5d6e5c6aEf7b1d4fd/0f5e963c66be3d0c.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/64035/7/9001/115159/5d6e5c6aE6919dfdf/39dfe4840157ad81.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/53389/3/9616/99637/5d6e5c6aEa33b9f35/b8f6aa26e72616a3.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/63219/6/9026/81576/5d6e5c6aEa9c74b49/b4fa364437531012.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/42146/27/13902/80437/5d6e5c6bE30c31ce9/475d4d54c7334313.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/45317/28/9596/78175/5d6e5c6bEce31e4b7/5675858b6933565c.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/60080/1/9112/138722/5d6e5c6bEefd9fc62/7ece7460a36d2fcc.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/51525/13/9549/36018/5d6e5c73Ebbccae6c/99bc2770dccc042b.jpg!q70.dpg.webp\" /><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t1/61948/20/9088/72918/5d6e5c73Eab7aef5c/6f21e2f85cf478fa.jpg!q70.dpg.webp\" /></p>', null, null, '0', '3', '小米', '手机通讯');
INSERT INTO `pms_product` VALUES ('28', '6', '19', '0', '3', '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '7437789', '0', '1', '1', '1', '0', '0', '98', '649.00', null, '649', '649', '0', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '', '649.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '<div><img src=\"//img12.360buyimg.com/imgzone/jfs/t1/67362/12/14546/708984/5dc28512Eefdd817d/c82503af0da6c038.gif\" /><img src=\"//img13.360buyimg.com/imgzone/jfs/t1/61488/17/14551/995918/5dc28512E821c228d/41e52005ea5b1f36.gif\" /><img src=\"//img14.360buyimg.com/imgzone/jfs/t1/72961/36/14769/305883/5dc28512E65d77261/3df6be29e3d489d1.gif\" />\n<p>&nbsp;</p>\n</div>', null, null, '0', '4', '小米', '手机通讯');
INSERT INTO `pms_product` VALUES ('29', '51', '19', '0', '3', 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', '7437799', '0', '1', '1', '1', '0', '0', '97', '5499.00', '4799.00', '5499', '5499', '0', '【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。', '', '5499.00', '100', '0', '', '0.00', '0', '1,2,3', '', '', '', '', '', '', '<div><img src=\"//img10.360buyimg.com/cms/jfs/t1/20020/38/9725/228440/5c7f9208Eeaf4bf87/13a713066f71791d.jpg!q70.dpg.webp\" /> <img src=\"//img12.360buyimg.com/cms/jfs/t1/12128/39/9607/265349/5c7f9209Ecff29b88/08620ba570705634.jpg!q70.dpg.webp\" /> <img src=\"//img14.360buyimg.com/cms/jfs/t1/22731/40/9578/345163/5c7f9209E9ba056e5/a8a557060b84447e.jpg!q70.dpg.webp\" /> <img src=\"//img14.360buyimg.com/cms/jfs/t1/29506/38/9439/299492/5c7f9209E0e51eb29/15dedd95416f3c68.jpg!q70.dpg.webp\" /> <img src=\"//img14.360buyimg.com/cms/jfs/t1/26766/28/9574/257101/5c7f9209Eaca1b317/c7caa047b1566cf1.jpg!q70.dpg.webp\" /> <img src=\"//img13.360buyimg.com/cms/jfs/t1/11059/8/10473/286531/5c7f9208E05da0120/9034ad8799ad9553.jpg!q70.dpg.webp\" /> <img src=\"//img14.360buyimg.com/cms/jfs/t1/25641/2/9557/268826/5c7f9208Efbf0dc50/399580629e05e733.jpg!q70.dpg.webp\" /> <img src=\"//img13.360buyimg.com/cms/jfs/t1/28964/25/9527/305902/5c7f9208E275ffb9c/8464934d67e69b7a.jpg!q70.dpg.webp\" /></div>', '2020-05-04 15:12:54', '2020-05-30 00:00:00', '0', '1', '苹果', '手机通讯');
INSERT INTO `pms_product` VALUES ('30', '50', '8', '0', '1', 'HLA海澜之家简约动物印花短袖T恤', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5ad83a4fN6ff67ecd.jpg!cc_350x449.jpg', 'HNTBJ2E042A', '0', '1', '1', '1', '0', '0', '0', '98.00', null, '0', '0', '0', '2018夏季新品微弹舒适新款短T男生 6月6日-6月20日，满300减30，参与互动赢百元礼券，立即分享赢大奖', '', '98.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '0', '海澜之家', 'T恤');
INSERT INTO `pms_product` VALUES ('31', '50', '8', '0', '1', 'HLA海澜之家蓝灰花纹圆领针织布短袖T恤', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5ac98b64N70acd82f.jpg!cc_350x449.jpg', 'HNTBJ2E080A', '0', '1', '0', '0', '0', '0', '0', '98.00', null, '0', '0', '0', '2018夏季新品短袖T恤男HNTBJ2E080A 蓝灰花纹80 175/92A/L80A 蓝灰花纹80 175/92A/L', '', '98.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '0', '海澜之家', 'T恤');
INSERT INTO `pms_product` VALUES ('32', '50', '8', '0', '1', 'HLA海澜之家短袖T恤男基础款', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a51eb88Na4797877.jpg', 'HNTBJ2E153A', '0', '1', '0', '0', '0', '0', '0', '68.00', null, '0', '0', '0', 'HLA海澜之家短袖T恤男基础款简约圆领HNTBJ2E153A藏青(F3)175/92A(50)', '', '68.00', '100', '0', '', '0.00', '0', '1,2', '', '', '', '', '', '', '', null, null, '0', '0', '海澜之家', 'T恤');
INSERT INTO `pms_product` VALUES ('33', '6', '35', '0', '12', '小米（MI）小米电视4A ', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b02804dN66004d73.jpg', '4609652', '0', '1', '0', '0', '0', '0', '0', '2499.00', null, '0', '0', '0', '小米（MI）小米电视4A 55英寸 L55M5-AZ/L55M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视', '', '2499.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '0', '小米', '电视');
INSERT INTO `pms_product` VALUES ('34', '6', '35', '0', '12', '小米（MI）小米电视4A 65英寸', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b028530N51eee7d4.jpg', '4609660', '0', '1', '0', '0', '0', '0', '0', '3999.00', null, '0', '0', '0', ' L65M5-AZ/L65M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视', '', '3999.00', '100', '0', '', '0.00', '0', '1,2', '', '', '', '', '', '', '', null, null, '0', '0', '小米', '电视');
INSERT INTO `pms_product` VALUES ('35', '58', '29', '0', '11', '耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b235bb9Nf606460b.jpg', '6799342', '0', '1', '0', '0', '0', '0', '0', '369.00', null, '0', '0', '0', '耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码', '', '369.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '0', 'NIKE', '男鞋');
INSERT INTO `pms_product` VALUES ('36', '58', '29', '0', '11', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '6799345', '0', '1', '1', '1', '0', '0', '0', '499.00', null, '0', '0', '0', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '', '499.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '0', 'NIKE', '男鞋');
INSERT INTO `pms_product` VALUES ('37', '51', '19', '0', '3', 'Apple iPhone 14 (A2884) 128GB 支持移动联通电信5G 双卡双待手机', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', '100038005189', '0', '1', '0', '0', '0', '200', '0', '5999.00', null, '0', '0', '0', '【11.11大爱超大爱】指定iPhone14产品限时限量领券立减601元！！！部分iPhone产品现货抢购确认收货即送原厂手机壳10元优惠券！！！猛戳 ', '', '5999.00', '1000', '0', '', '208.00', '0', '1,2,3', '', '', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_002.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_003.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_004.jpg', '', '', '', '<div style=\"margin: 0 auto;\"><img style=\"max-width: 390px;\" src=\"//img13.360buyimg.com/cms/jfs/t1/58071/39/19839/119559/63190110Edac0cea7/b62a84f1b8775fef.jpg!q70.dpg.webp\" /> <img style=\"max-width: 390px;\" src=\"//img20.360buyimg.com/cms/jfs/t1/138903/36/29400/86115/63190110E0a98c819/d2efbef39eeb2995.jpg!q70.dpg.webp\" /> <img style=\"max-width: 390px;\" src=\"//img30.360buyimg.com/cms/jfs/t1/176347/20/28995/115695/63190110Ef5d766f9/aee3d2d866522f66.jpg!q70.dpg.webp\" /> <img style=\"max-width: 390px;\" src=\"//img14.360buyimg.com/cms/jfs/t1/120515/39/28721/142961/63190110Eec31e31a/3486d6a065a18ddc.jpg!q70.dpg.webp\" /> <img style=\"max-width: 390px;\" src=\"//img13.360buyimg.com/cms/jfs/t1/30161/12/17674/81508/63190110E1385cf61/f05a2a43f4d304ff.jpg!q70.dpg.webp\" /> <img style=\"max-width: 390px;\" src=\"//img14.360buyimg.com/cms/jfs/t1/100037/16/31071/62177/6319010fE871efe01/b01a6f981c268e38.jpg!q70.dpg.webp\" /> <img style=\"max-width: 390px;\" src=\"//img14.360buyimg.com/cms/jfs/t1/90843/33/25852/74752/63190110E373559f4/74b6b52a3fb08c66.jpg!q70.dpg.webp\" /> <img style=\"max-width: 390px;\" src=\"//img14.360buyimg.com/cms/jfs/t1/181914/22/28400/126094/63190110Edefb838c/802a16e758be2b1d.jpg!q70.dpg.webp\" /></div>', null, null, '0', '0', '苹果', '手机通讯');
INSERT INTO `pms_product` VALUES ('38', '51', '53', '0', '3', 'Apple iPad 10.9英寸平板电脑 2022年款', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/ipad_001.jpg', '100044025833', '0', '1', '0', '0', '0', '0', '0', '3599.00', null, '0', '0', '0', '【11.11大爱超大爱】iPad9代限量抢购，价格优惠，更享以旧换新至高补贴325元！！快来抢购吧！！ ', '', '3599.00', '1000', '0', '', '0.00', '0', '1,2,3', '', '', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/ipad_002.jpg', '', '', '', '<div style=\"margin: 0 auto;\"><img style=\"max-width: 390px;\" src=\"//img12.360buyimg.com/cms/jfs/t1/75040/28/21026/295081/634ed154E981e4d10/2ceef91d6f2b2273.jpg!q70.dpg.webp\" /> <img style=\"max-width: 390px;\" src=\"//img13.360buyimg.com/cms/jfs/t1/191028/1/28802/401291/634ed15eEb234dc40/5ab89f83531e1023.jpg!q70.dpg.webp\" /> <img style=\"max-width: 390px;\" src=\"//img14.360buyimg.com/cms/jfs/t1/32758/24/18599/330590/634ed15eEc3db173c/c52953dc8008a576.jpg!q70.dpg.webp\" /></div>', null, null, '0', '0', '苹果', '平板电脑');
INSERT INTO `pms_product` VALUES ('39', '6', '54', '0', '13', '小米 Xiaomi Book Pro 14 2022 锐龙版 2.8K超清大师屏 高端轻薄笔记本电脑', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/xiaomi_computer_001.jpg', '100023207945', '0', '1', '0', '1', '0', '0', '0', '5599.00', null, '0', '0', '0', '【双十一大促来袭】指定型号至高优惠1000，以旧换新至高补贴1000元，晒单赢好礼', '', '5599.00', '500', '0', '', '0.00', '0', '', '', '', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/xiaomi_computer_002.jpg', '', '', '', '<div class=\"ssd-module-mobile-wrap\">\n<div class=\"ssd-module M16667778180631\" data-id=\"M16667778180631\"><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/xiaomi_computer_snipaste_01.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/xiaomi_computer_snipaste_02.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/xiaomi_computer_snipaste_03.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/xiaomi_computer_snipaste_04.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/xiaomi_computer_snipaste_05.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/xiaomi_computer_snipaste_06.png\" /></div>\n<div class=\"ssd-module M16667778180631\" data-id=\"M16667778180631\">&nbsp;</div>\n<div class=\"ssd-module M16534569204241\" data-id=\"M16534569204241\">&nbsp;</div>\n<div class=\"ssd-module M16667778416884\" data-id=\"M16667778416884\">\n<div class=\"ssd-widget-text W16667778440496\">&nbsp;</div>\n</div>\n<div class=\"ssd-module M165303211067557\" data-id=\"M165303211067557\">&nbsp;</div>\n<div class=\"ssd-module M16530320459861\" data-id=\"M16530320459861\">&nbsp;</div>\n<div class=\"ssd-module M16530320460062\" data-id=\"M16530320460062\">&nbsp;</div>\n<div class=\"ssd-module M16530320460153\" data-id=\"M16530320460153\">&nbsp;</div>\n<div class=\"ssd-module M16530320460366\" data-id=\"M16530320460366\">&nbsp;</div>\n<div class=\"ssd-module M16530320460477\" data-id=\"M16530320460477\">&nbsp;</div>\n<div class=\"ssd-module M16530320460578\" data-id=\"M16530320460578\">&nbsp;</div>\n<div class=\"ssd-module M16530320460699\" data-id=\"M16530320460699\">&nbsp;</div>\n<div class=\"ssd-module M165303204608110\" data-id=\"M165303204608110\">&nbsp;</div>\n<div class=\"ssd-module M165303204609511\" data-id=\"M165303204609511\">&nbsp;</div>\n<div class=\"ssd-module M165303204611213\" data-id=\"M165303204611213\">&nbsp;</div>\n<div class=\"ssd-module M165303204612714\" data-id=\"M165303204612714\">&nbsp;</div>\n<div class=\"ssd-module M165303204614115\" data-id=\"M165303204614115\">&nbsp;</div>\n<div class=\"ssd-module M165303204615516\" data-id=\"M165303204615516\">&nbsp;</div>\n<div class=\"ssd-module M165303204617417\" data-id=\"M165303204617417\">&nbsp;</div>\n<div class=\"ssd-module M165303204618818\" data-id=\"M165303204618818\">&nbsp;</div>\n<div class=\"ssd-module M165303204620219\" data-id=\"M165303204620219\">&nbsp;</div>\n<div class=\"ssd-module M165303204621620\" data-id=\"M165303204621620\">&nbsp;</div>\n<div class=\"ssd-module M165303204622921\" data-id=\"M165303204622921\">&nbsp;</div>\n<div class=\"ssd-module M165303204624522\" data-id=\"M165303204624522\">&nbsp;</div>\n<div class=\"ssd-module M165303204626024\" data-id=\"M165303204626024\">&nbsp;</div>\n<div class=\"ssd-module M165303204627525\" data-id=\"M165303204627525\">&nbsp;</div>\n<div class=\"ssd-module M165303204629127\" data-id=\"M165303204629127\">&nbsp;</div>\n<div class=\"ssd-module M165303204632330\" data-id=\"M165303204632330\">&nbsp;</div>\n<div class=\"ssd-module M165303204634031\" data-id=\"M165303204634031\">&nbsp;</div>\n<div class=\"ssd-module M165303204635832\" data-id=\"M165303204635832\">&nbsp;</div>\n<div class=\"ssd-module M165303204637533\" data-id=\"M165303204637533\">&nbsp;</div>\n<div class=\"ssd-module M165303204639334\" data-id=\"M165303204639334\">&nbsp;</div>\n<div class=\"ssd-module M165303204642235\" data-id=\"M165303204642235\">&nbsp;</div>\n<div class=\"ssd-module M165303204647936\" data-id=\"M165303204647936\">&nbsp;</div>\n<div class=\"ssd-module M165303204651037\" data-id=\"M165303204651037\">&nbsp;</div>\n<div class=\"ssd-module M165303204653838\" data-id=\"M165303204653838\">&nbsp;</div>\n<div class=\"ssd-module M165303204656239\" data-id=\"M165303204656239\">&nbsp;</div>\n<div class=\"ssd-module M165303204659141\" data-id=\"M165303204659141\">&nbsp;</div>\n<div class=\"ssd-module M165303204661943\" data-id=\"M165303204661943\">&nbsp;</div>\n<div class=\"ssd-module M165303204665844\" data-id=\"M165303204665844\">&nbsp;</div>\n<div class=\"ssd-module M165303204668045\" data-id=\"M165303204668045\">&nbsp;</div>\n<div class=\"ssd-module M165303204670146\" data-id=\"M165303204670146\">&nbsp;</div>\n<div class=\"ssd-module M165303204672147\" data-id=\"M165303204672147\">&nbsp;</div>\n<div class=\"ssd-module M165303204674348\" data-id=\"M165303204674348\">&nbsp;</div>\n<div class=\"ssd-module M165303204676749\" data-id=\"M165303204676749\">&nbsp;</div>\n<div class=\"ssd-module M165303204681352\" data-id=\"M165303204681352\">&nbsp;</div>\n<div class=\"ssd-module M165303204683553\" data-id=\"M165303204683553\">&nbsp;</div>\n<div class=\"ssd-module M165303204685855\" data-id=\"M165303204685855\">&nbsp;</div>\n<div class=\"ssd-module M165303204688356\" data-id=\"M165303204688356\">&nbsp;</div>\n</div>', null, null, '0', '0', '小米', '笔记本');
INSERT INTO `pms_product` VALUES ('40', '6', '19', '0', '3', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', '100027789721', '0', '1', '0', '1', '0', '0', '0', '2999.00', null, '0', '0', '0', '天玑9000+处理器、5160mAh大电量、2KAmoled超视感屏【点击购买小米11Ultra，戳】 ', '', '2999.00', '500', '0', '', '0.00', '0', '', '', '', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_02.jpg', '', '', '', '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_snipaste_01.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_snipaste_02.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_snipaste_03.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_snipaste_04.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_snipaste_05.png\" /></p>', null, null, '0', '4', '小米', '手机通讯');
INSERT INTO `pms_product` VALUES ('41', '6', '19', '0', '3', 'Redmi K50 天玑8100 2K柔性直屏 OIS光学防抖 67W快充 5500mAh大电量', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_01.jpg', '100035246702', '0', '1', '0', '0', '0', '0', '0', '2099.00', null, '0', '0', '0', '【品质好物】天玑8100，2K直屏，5500mAh大电量【Note12Pro火热抢购中】 ', '', '2099.00', '1000', '0', '', '0.00', '0', '', '', '', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_02.jpg', '', '', '', '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_snipaste_01.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_snipaste_02.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_snipaste_03.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_snipaste_04.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_snipaste_05.png\" /></p>', null, null, '0', '0', '小米', '手机通讯');
INSERT INTO `pms_product` VALUES ('42', '3', '19', '0', '3', 'HUAWEI Mate 50 直屏旗舰 超光变XMAGE影像 北斗卫星消息', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/huawei_mate50_01.jpg', '100035295081', '0', '1', '0', '0', '0', '0', '0', '4999.00', null, '0', '0', '0', '【华为Mate50新品上市】内置66W华为充电套装，超光变XMAGE影像,北斗卫星消息，鸿蒙操作系统3.0！立即抢购！华为新品可持续计划，猛戳》 ', '', '4999.00', '1000', '0', '', '0.00', '0', '', '', '', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/huawei_mate50_02.jpg', '', '', '', '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/huawei_mate50_snipaste_01.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/huawei_mate50_snipaste_02.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/huawei_mate50_snipaste_03.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/huawei_mate50_snipaste_04.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/huawei_mate50_snipaste_05.png\" /></p>', null, null, '0', '0', '华为', '手机通讯');
INSERT INTO `pms_product` VALUES ('43', '1', '39', '0', '14', '万和（Vanward)燃气热水器天然气家用四重防冻直流变频节能全新升级增压水伺服恒温高抗风', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/wanhe_13L_01.png', '10044060351752', '0', '1', '0', '0', '0', '0', '0', '1799.00', null, '0', '0', '0', '【家电11.11享低价，抢到手价不高于1199】【发布种草秀享好礼！同价11.11买贵补差】爆款超一级能效零冷水】 ', '', '1799.00', '1000', '0', '', '0.00', '0', '', '', '', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/wanhe_16L_01.jpg', '', '', '', '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/wanhe_water_snipaste_01.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/wanhe_water_snipaste_02.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/wanhe_water_snipaste_03.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/wanhe_water_snipaste_04.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/wanhe_water_snipaste_05.png\" /></p>', null, null, '0', '0', '万和', '厨卫大电');
INSERT INTO `pms_product` VALUES ('44', '2', '55', '0', '15', '三星（SAMSUNG）500GB SSD固态硬盘 M.2接口(NVMe协议)', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/sanxing_ssd_02.jpg', '100018768480', '0', '1', '0', '0', '0', '0', '0', '369.00', null, '0', '0', '0', '【满血无缓存！进店抽百元E卡，部分型号白条三期免息】兼具速度与可靠性！读速高达3500MB/s，全功率模式！点击 ', '', '369.00', '1000', '0', '', '0.00', '0', '', '', '', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/sanxing_ssd_01.jpg', '', '', '', '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/sanxing_ssd_snipaste_01.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/sanxing_ssd_snipaste_02.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/sanxing_ssd_snipaste_03.png\" /></p>', null, null, '0', '0', '三星', '硬盘');
INSERT INTO `pms_product` VALUES ('45', '21', '19', '0', '3', 'OPPO Reno8 8GB+128GB 鸢尾紫 新配色上市 80W超级闪充 5000万水光人像三摄', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/oppo_r8_01.jpg', '10052147850350', '0', '1', '0', '0', '0', '0', '0', '2299.00', '999.00', '0', '0', '0', '【11.11提前购机享价保，好货不用等，系统申请一键价保补差!】【Reno8Pro爆款优惠】 ', '', '2299.00', '1000', '0', '', '0.00', '0', '', '', '', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/oppo_r8_02.jpg', '', '', '', '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/oppo_r8_snipaste_01.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/oppo_r8_snipaste_02.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/oppo_r8_snipaste_03.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/oppo_r8_snipaste_04.png\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/oppo_r8_snipaste_05.png\" /></p>', '2022-11-09 16:15:50', '2022-11-25 00:00:00', '0', '4', 'OPPO', '手机通讯');

-- ----------------------------
-- Table structure for pms_product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_attribute`;
CREATE TABLE `pms_product_attribute` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_attribute_category_id` bigint DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `select_type` int DEFAULT NULL COMMENT '属性选择类型：0->唯一；1->单选；2->多选',
  `input_type` int DEFAULT NULL COMMENT '属性录入方式：0->手工录入；1->从列表中选取',
  `input_list` varchar(255) DEFAULT NULL COMMENT '可选值列表，以逗号隔开',
  `sort` int DEFAULT NULL COMMENT '排序字段：最高的可以单独上传图片',
  `filter_type` int DEFAULT NULL COMMENT '分类筛选样式：1->普通；1->颜色',
  `search_type` int DEFAULT NULL COMMENT '检索类型；0->不需要进行检索；1->关键字检索；2->范围检索',
  `related_status` int DEFAULT NULL COMMENT '相同属性产品是否关联；0->不关联；1->关联',
  `hand_add_status` int DEFAULT NULL COMMENT '是否支持手动新增；0->不支持；1->支持',
  `type` int DEFAULT NULL COMMENT '属性的类型；0->规格；1->参数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='商品属性参数表';

-- ----------------------------
-- Records of pms_product_attribute
-- ----------------------------
INSERT INTO `pms_product_attribute` VALUES ('1', '1', '尺寸', '2', '1', 'M,X,XL,2XL,3XL,4XL', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('7', '1', '颜色', '2', '1', '黑色,红色,白色,粉色', '100', '0', '0', '0', '1', '0');
INSERT INTO `pms_product_attribute` VALUES ('13', '0', '上市年份', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('14', '0', '上市年份1', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('15', '0', '上市年份2', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('16', '0', '上市年份3', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('17', '0', '上市年份4', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('18', '0', '上市年份5', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('19', '0', '适用对象', '1', '1', '青年女性,中年女性', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('20', '0', '适用对象1', '2', '1', '青年女性,中年女性', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('21', '0', '适用对象3', '2', '1', '青年女性,中年女性', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('24', '1', '商品编号', '1', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('25', '1', '适用季节', '1', '1', '春季,夏季,秋季,冬季', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('32', '2', '适用人群', '0', '1', '老年,青年,中年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('33', '2', '风格', '0', '1', '嘻哈风格,基础大众,商务正装', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('35', '2', '颜色', '0', '0', '', '100', '0', '0', '0', '1', '0');
INSERT INTO `pms_product_attribute` VALUES ('37', '1', '适用人群', '1', '1', '儿童,青年,中年,老年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('38', '1', '上市时间', '1', '1', '2017年秋,2017年冬,2018年春,2018年夏', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('39', '1', '袖长', '1', '1', '短袖,长袖,中袖', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('40', '2', '尺码', '0', '1', '29,30,31,32,33,34', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('41', '2', '适用场景', '0', '1', '居家,运动,正装', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('42', '2', '上市时间', '0', '1', '2018年春,2018年夏', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('43', '3', '颜色', '0', '0', '', '100', '0', '0', '0', '1', '0');
INSERT INTO `pms_product_attribute` VALUES ('44', '3', '容量', '0', '1', '16G,32G,64G,128G,256G,512G', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('45', '3', '屏幕尺寸', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('46', '3', '网络', '0', '1', '3G,4G,5G,WLAN', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('47', '3', '系统', '0', '1', 'Android,IOS', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('48', '3', '电池容量', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('49', '11', '颜色', '0', '1', '红色,蓝色,绿色', '0', '1', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('50', '11', '尺寸', '0', '1', '38,39,40', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('51', '11', '风格', '0', '1', '夏季,秋季', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('52', '12', '尺寸', '0', '1', '50英寸,65英寸,70英寸', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('53', '12', '内存', '0', '1', '8G,16G,32G', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('54', '12', '商品编号', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('55', '12', '商品毛重', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('56', '12', '商品产地', '0', '1', '中国大陆,其他', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('57', '12', '电视类型', '0', '1', '大屏,教育电视,4K超清', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('58', '13', '颜色', '0', '0', '', '0', '0', '0', '0', '1', '0');
INSERT INTO `pms_product_attribute` VALUES ('59', '13', '版本', '0', '1', 'R7 16G 512,R5 16G 512,I5 16G 512,I7 16G 512', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('60', '13', '屏幕尺寸', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('61', '13', '屏幕分辨率', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('62', '13', 'CPU型号', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('63', '14', '系列', '0', '0', '', '0', '0', '0', '0', '1', '0');
INSERT INTO `pms_product_attribute` VALUES ('64', '14', '上市时间', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('65', '14', '毛重', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('66', '14', '额定功率', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('67', '15', '颜色', '0', '0', '', '0', '0', '0', '0', '1', '0');
INSERT INTO `pms_product_attribute` VALUES ('68', '15', '版本', '0', '1', '512GB,1TB', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('69', '15', '系列', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('70', '15', '型号', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('71', '15', '闪存类型', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('72', '15', '顺序读速', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('73', '15', '顺序写入', '0', '0', '', '0', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for pms_product_attribute_category
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_attribute_category`;
CREATE TABLE `pms_product_attribute_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `attribute_count` int DEFAULT '0' COMMENT '属性数量',
  `param_count` int DEFAULT '0' COMMENT '参数数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='产品属性分类表';

-- ----------------------------
-- Records of pms_product_attribute_category
-- ----------------------------
INSERT INTO `pms_product_attribute_category` VALUES ('1', '服装-T恤', '2', '5');
INSERT INTO `pms_product_attribute_category` VALUES ('2', '服装-裤装', '2', '4');
INSERT INTO `pms_product_attribute_category` VALUES ('3', '手机数码-手机通讯', '2', '4');
INSERT INTO `pms_product_attribute_category` VALUES ('4', '配件', '0', '0');
INSERT INTO `pms_product_attribute_category` VALUES ('5', '居家', '0', '0');
INSERT INTO `pms_product_attribute_category` VALUES ('6', '洗护', '0', '0');
INSERT INTO `pms_product_attribute_category` VALUES ('10', '测试分类', '0', '0');
INSERT INTO `pms_product_attribute_category` VALUES ('11', '服装-鞋帽', '3', '0');
INSERT INTO `pms_product_attribute_category` VALUES ('12', '家用电器-电视', '2', '4');
INSERT INTO `pms_product_attribute_category` VALUES ('13', '电脑办公-笔记本', '2', '3');
INSERT INTO `pms_product_attribute_category` VALUES ('14', '家用电器-厨卫大电', '1', '3');
INSERT INTO `pms_product_attribute_category` VALUES ('15', '电脑办公-硬盘', '2', '5');

-- ----------------------------
-- Table structure for pms_product_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_attribute_value`;
CREATE TABLE `pms_product_attribute_value` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `product_attribute_id` bigint DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL COMMENT '手动添加规格或参数的值，参数单值，规格有多个时以逗号隔开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=517 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='存储产品参数信息的表';

-- ----------------------------
-- Records of pms_product_attribute_value
-- ----------------------------
INSERT INTO `pms_product_attribute_value` VALUES ('1', '9', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('2', '10', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('3', '11', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('4', '12', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('5', '13', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('6', '14', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('7', '18', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('8', '7', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('9', '7', '1', 'XL');
INSERT INTO `pms_product_attribute_value` VALUES ('10', '7', '1', 'XXL');
INSERT INTO `pms_product_attribute_value` VALUES ('11', '22', '7', 'x,xx');
INSERT INTO `pms_product_attribute_value` VALUES ('12', '22', '24', 'no110');
INSERT INTO `pms_product_attribute_value` VALUES ('13', '22', '25', '春季');
INSERT INTO `pms_product_attribute_value` VALUES ('14', '22', '37', '青年');
INSERT INTO `pms_product_attribute_value` VALUES ('15', '22', '38', '2018年春');
INSERT INTO `pms_product_attribute_value` VALUES ('16', '22', '39', '长袖');
INSERT INTO `pms_product_attribute_value` VALUES ('124', '23', '7', '米白色,浅黄色');
INSERT INTO `pms_product_attribute_value` VALUES ('125', '23', '24', 'no1098');
INSERT INTO `pms_product_attribute_value` VALUES ('126', '23', '25', '春季');
INSERT INTO `pms_product_attribute_value` VALUES ('127', '23', '37', '青年');
INSERT INTO `pms_product_attribute_value` VALUES ('128', '23', '38', '2018年春');
INSERT INTO `pms_product_attribute_value` VALUES ('129', '23', '39', '长袖');
INSERT INTO `pms_product_attribute_value` VALUES ('130', '1', '13', null);
INSERT INTO `pms_product_attribute_value` VALUES ('131', '1', '14', null);
INSERT INTO `pms_product_attribute_value` VALUES ('132', '1', '15', null);
INSERT INTO `pms_product_attribute_value` VALUES ('133', '1', '16', null);
INSERT INTO `pms_product_attribute_value` VALUES ('134', '1', '17', null);
INSERT INTO `pms_product_attribute_value` VALUES ('135', '1', '18', null);
INSERT INTO `pms_product_attribute_value` VALUES ('136', '1', '19', null);
INSERT INTO `pms_product_attribute_value` VALUES ('137', '1', '20', null);
INSERT INTO `pms_product_attribute_value` VALUES ('138', '1', '21', null);
INSERT INTO `pms_product_attribute_value` VALUES ('139', '2', '13', null);
INSERT INTO `pms_product_attribute_value` VALUES ('140', '2', '14', null);
INSERT INTO `pms_product_attribute_value` VALUES ('141', '2', '15', null);
INSERT INTO `pms_product_attribute_value` VALUES ('142', '2', '16', null);
INSERT INTO `pms_product_attribute_value` VALUES ('143', '2', '17', null);
INSERT INTO `pms_product_attribute_value` VALUES ('144', '2', '18', null);
INSERT INTO `pms_product_attribute_value` VALUES ('145', '2', '19', null);
INSERT INTO `pms_product_attribute_value` VALUES ('146', '2', '20', null);
INSERT INTO `pms_product_attribute_value` VALUES ('147', '2', '21', null);
INSERT INTO `pms_product_attribute_value` VALUES ('243', '30', '7', '蓝色,白色');
INSERT INTO `pms_product_attribute_value` VALUES ('244', '30', '24', 'HNTBJ2E042A');
INSERT INTO `pms_product_attribute_value` VALUES ('245', '30', '25', '夏季');
INSERT INTO `pms_product_attribute_value` VALUES ('246', '30', '37', '青年');
INSERT INTO `pms_product_attribute_value` VALUES ('247', '30', '38', '2018年夏');
INSERT INTO `pms_product_attribute_value` VALUES ('248', '30', '39', '短袖');
INSERT INTO `pms_product_attribute_value` VALUES ('249', '31', '7', '浅灰色,深灰色');
INSERT INTO `pms_product_attribute_value` VALUES ('250', '31', '24', 'HNTBJ2E080A');
INSERT INTO `pms_product_attribute_value` VALUES ('251', '31', '25', '夏季');
INSERT INTO `pms_product_attribute_value` VALUES ('252', '31', '37', '青年');
INSERT INTO `pms_product_attribute_value` VALUES ('253', '31', '38', '2018年夏');
INSERT INTO `pms_product_attribute_value` VALUES ('254', '31', '39', '短袖');
INSERT INTO `pms_product_attribute_value` VALUES ('255', '32', '7', '黑色,白色');
INSERT INTO `pms_product_attribute_value` VALUES ('256', '32', '24', 'HNTBJ2E153A');
INSERT INTO `pms_product_attribute_value` VALUES ('257', '32', '25', '夏季');
INSERT INTO `pms_product_attribute_value` VALUES ('258', '32', '37', '青年');
INSERT INTO `pms_product_attribute_value` VALUES ('259', '32', '38', '2018年夏');
INSERT INTO `pms_product_attribute_value` VALUES ('260', '32', '39', '短袖');
INSERT INTO `pms_product_attribute_value` VALUES ('265', '33', '54', '4609652');
INSERT INTO `pms_product_attribute_value` VALUES ('266', '33', '55', '28.6kg');
INSERT INTO `pms_product_attribute_value` VALUES ('267', '33', '56', '中国大陆');
INSERT INTO `pms_product_attribute_value` VALUES ('268', '33', '57', '大屏');
INSERT INTO `pms_product_attribute_value` VALUES ('269', '34', '54', '4609660');
INSERT INTO `pms_product_attribute_value` VALUES ('270', '34', '55', '30.8kg');
INSERT INTO `pms_product_attribute_value` VALUES ('271', '34', '56', '中国大陆');
INSERT INTO `pms_product_attribute_value` VALUES ('272', '34', '57', '4K超清');
INSERT INTO `pms_product_attribute_value` VALUES ('288', '27', '43', '黑色,蓝色');
INSERT INTO `pms_product_attribute_value` VALUES ('289', '27', '45', '5.8');
INSERT INTO `pms_product_attribute_value` VALUES ('290', '27', '46', '4G');
INSERT INTO `pms_product_attribute_value` VALUES ('291', '27', '47', 'Android');
INSERT INTO `pms_product_attribute_value` VALUES ('292', '27', '48', '3000ml');
INSERT INTO `pms_product_attribute_value` VALUES ('303', '28', '43', '金色,银色');
INSERT INTO `pms_product_attribute_value` VALUES ('304', '28', '45', '5.0');
INSERT INTO `pms_product_attribute_value` VALUES ('305', '28', '46', '4G');
INSERT INTO `pms_product_attribute_value` VALUES ('306', '28', '47', 'Android');
INSERT INTO `pms_product_attribute_value` VALUES ('307', '28', '48', '2800ml');
INSERT INTO `pms_product_attribute_value` VALUES ('308', '29', '43', '金色,银色');
INSERT INTO `pms_product_attribute_value` VALUES ('309', '29', '45', '4.7');
INSERT INTO `pms_product_attribute_value` VALUES ('310', '29', '46', '4G');
INSERT INTO `pms_product_attribute_value` VALUES ('311', '29', '47', 'IOS');
INSERT INTO `pms_product_attribute_value` VALUES ('312', '29', '48', '1960ml');
INSERT INTO `pms_product_attribute_value` VALUES ('338', '37', '43', '午夜色,星光色,紫色,蓝色');
INSERT INTO `pms_product_attribute_value` VALUES ('339', '37', '45', '6.1英寸');
INSERT INTO `pms_product_attribute_value` VALUES ('340', '37', '46', '5G');
INSERT INTO `pms_product_attribute_value` VALUES ('341', '37', '47', 'IOS');
INSERT INTO `pms_product_attribute_value` VALUES ('342', '37', '48', '3000毫安');
INSERT INTO `pms_product_attribute_value` VALUES ('443', '38', '43', '银色,蓝色');
INSERT INTO `pms_product_attribute_value` VALUES ('444', '38', '45', '10.9英寸');
INSERT INTO `pms_product_attribute_value` VALUES ('445', '38', '46', 'WLAN');
INSERT INTO `pms_product_attribute_value` VALUES ('446', '38', '47', 'IOS');
INSERT INTO `pms_product_attribute_value` VALUES ('447', '38', '48', '6000毫安');
INSERT INTO `pms_product_attribute_value` VALUES ('448', '39', '58', '新小米Pro 14英寸 2.8K屏,新Redmi Pro 15英寸 3.2K屏');
INSERT INTO `pms_product_attribute_value` VALUES ('449', '39', '60', '15.6英寸');
INSERT INTO `pms_product_attribute_value` VALUES ('450', '39', '61', '3200*2000');
INSERT INTO `pms_product_attribute_value` VALUES ('451', '39', '62', 'R5 6600H');
INSERT INTO `pms_product_attribute_value` VALUES ('452', '41', '43', '墨羽,银迹');
INSERT INTO `pms_product_attribute_value` VALUES ('453', '41', '45', '6.67英寸');
INSERT INTO `pms_product_attribute_value` VALUES ('454', '41', '46', '5G');
INSERT INTO `pms_product_attribute_value` VALUES ('455', '41', '47', 'Android');
INSERT INTO `pms_product_attribute_value` VALUES ('456', '41', '48', '5500mAh');
INSERT INTO `pms_product_attribute_value` VALUES ('457', '42', '43', '曜金黑,冰霜银');
INSERT INTO `pms_product_attribute_value` VALUES ('458', '42', '45', '6.7英寸');
INSERT INTO `pms_product_attribute_value` VALUES ('459', '42', '46', '5G');
INSERT INTO `pms_product_attribute_value` VALUES ('460', '42', '47', 'Android');
INSERT INTO `pms_product_attribute_value` VALUES ('461', '42', '48', '4460mAh');
INSERT INTO `pms_product_attribute_value` VALUES ('462', '43', '63', 'JSQ25-565W13【13升】【恒温旗舰款】,JSQ30-565W16【16升】【恒温旗舰款】');
INSERT INTO `pms_product_attribute_value` VALUES ('463', '43', '64', '2021-05');
INSERT INTO `pms_product_attribute_value` VALUES ('464', '43', '65', '15.5kg');
INSERT INTO `pms_product_attribute_value` VALUES ('465', '43', '66', '30w');
INSERT INTO `pms_product_attribute_value` VALUES ('466', '44', '67', '新品980｜NVMe PCIe3.0*4,980 PRO｜NVMe PCIe 4.0');
INSERT INTO `pms_product_attribute_value` VALUES ('467', '44', '69', '980');
INSERT INTO `pms_product_attribute_value` VALUES ('468', '44', '70', 'MZ-V8V500BW');
INSERT INTO `pms_product_attribute_value` VALUES ('469', '44', '71', 'TLC');
INSERT INTO `pms_product_attribute_value` VALUES ('470', '44', '72', '3100MB/s');
INSERT INTO `pms_product_attribute_value` VALUES ('471', '44', '73', '2600MB/s');
INSERT INTO `pms_product_attribute_value` VALUES ('472', '45', '43', '鸢尾紫,晴空蓝');
INSERT INTO `pms_product_attribute_value` VALUES ('473', '45', '45', '6.43英寸');
INSERT INTO `pms_product_attribute_value` VALUES ('474', '45', '46', '5G');
INSERT INTO `pms_product_attribute_value` VALUES ('475', '45', '47', 'Android');
INSERT INTO `pms_product_attribute_value` VALUES ('476', '45', '48', '4500mAh');
INSERT INTO `pms_product_attribute_value` VALUES ('477', '40', '43', '黑色,蓝色');
INSERT INTO `pms_product_attribute_value` VALUES ('478', '40', '45', '6.73英寸');
INSERT INTO `pms_product_attribute_value` VALUES ('479', '40', '46', '5G');
INSERT INTO `pms_product_attribute_value` VALUES ('480', '40', '47', 'Android');
INSERT INTO `pms_product_attribute_value` VALUES ('481', '40', '48', '5160mAh');
INSERT INTO `pms_product_attribute_value` VALUES ('512', '26', '43', '金色,银色');
INSERT INTO `pms_product_attribute_value` VALUES ('513', '26', '45', '5.0');
INSERT INTO `pms_product_attribute_value` VALUES ('514', '26', '46', '4G');
INSERT INTO `pms_product_attribute_value` VALUES ('515', '26', '47', 'Android');
INSERT INTO `pms_product_attribute_value` VALUES ('516', '26', '48', '3000');

-- ----------------------------
-- Table structure for pms_product_category
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_category`;
CREATE TABLE `pms_product_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint DEFAULT NULL COMMENT '上机分类的编号：0表示一级分类',
  `name` varchar(64) DEFAULT NULL,
  `level` int DEFAULT NULL COMMENT '分类级别：0->1级；1->2级',
  `product_count` int DEFAULT NULL,
  `product_unit` varchar(64) DEFAULT NULL,
  `nav_status` int DEFAULT NULL COMMENT '是否显示在导航栏：0->不显示；1->显示',
  `show_status` int DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
  `sort` int DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `keywords` varchar(255) DEFAULT NULL,
  `description` text COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='产品分类';

-- ----------------------------
-- Records of pms_product_category
-- ----------------------------
INSERT INTO `pms_product_category` VALUES ('1', '0', '服装', '0', '100', '件', '1', '1', '1', null, '服装', '服装分类');
INSERT INTO `pms_product_category` VALUES ('2', '0', '手机数码', '0', '100', '件', '1', '1', '1', null, '手机数码', '手机数码');
INSERT INTO `pms_product_category` VALUES ('3', '0', '家用电器', '0', '100', '件', '1', '1', '1', null, '家用电器', '家用电器');
INSERT INTO `pms_product_category` VALUES ('4', '0', '家具家装', '0', '100', '件', '1', '1', '1', null, '家具家装', '家具家装');
INSERT INTO `pms_product_category` VALUES ('5', '0', '汽车用品', '0', '100', '件', '1', '1', '1', null, '汽车用品', '汽车用品');
INSERT INTO `pms_product_category` VALUES ('7', '1', '外套', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190519/5ac4780cN6087feb5.jpg', '外套', '外套');
INSERT INTO `pms_product_category` VALUES ('8', '1', 'T恤', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190519/5ac47ffaN8a7b2e14.png', 'T恤', 'T恤');
INSERT INTO `pms_product_category` VALUES ('9', '1', '休闲裤', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190519/5ac47845N7374a31d.jpg', '休闲裤', '休闲裤');
INSERT INTO `pms_product_category` VALUES ('10', '1', '牛仔裤', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190519/5ac47841Nff658599.jpg', '牛仔裤', '牛仔裤');
INSERT INTO `pms_product_category` VALUES ('11', '1', '衬衫', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190519/5ac48007Nb30b2118.jpg', '衬衫', '衬衫分类');
INSERT INTO `pms_product_category` VALUES ('13', '12', '家电子分类1', '1', '1', 'string', '0', '1', '0', 'string', 'string', 'string');
INSERT INTO `pms_product_category` VALUES ('14', '12', '家电子分类2', '1', '1', 'string', '0', '1', '0', 'string', 'string', 'string');
INSERT INTO `pms_product_category` VALUES ('19', '2', '手机通讯', '1', '0', '件', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190519/5ac48d27N3f5bb821.jpg', '手机通讯', '手机通讯');
INSERT INTO `pms_product_category` VALUES ('29', '1', '男鞋', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('30', '2', '手机配件', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190519/5ac48672N11cf61fe.jpg', '手机配件', '手机配件');
INSERT INTO `pms_product_category` VALUES ('31', '2', '摄影摄像', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190519/5a1679f2Nc2f659b6.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('32', '2', '影音娱乐', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190519/5a167859N01d8198b.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('33', '2', '数码配件', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190519/5a1676e9N1ba70a81.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('34', '2', '智能设备', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('35', '3', '电视', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5a17f71eN25360979.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('36', '3', '空调', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5a17f6f6Ndfe746aa.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('37', '3', '洗衣机', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5a17f6eaN9ec936de.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('38', '3', '冰箱', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5a17f6c5Ne56d7e26.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('39', '3', '厨卫大电', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5a17f369N6a55ff3f.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('40', '3', '厨房小电', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('41', '3', '生活电器', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('42', '3', '个护健康', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('43', '4', '厨房卫浴', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5a1eb12cN5ab932bb.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('44', '4', '灯饰照明', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5a1eb115Na5705672.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('45', '4', '五金工具', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5a28e743Nf6d99998.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('46', '4', '卧室家具', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5a1eb096N6326e0bd.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('47', '4', '客厅家具', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5a1eb080N38c2e7b7.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('48', '5', '全新整车', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/ebe31b9cc535e122.png', '', '');
INSERT INTO `pms_product_category` VALUES ('49', '5', '车载电器', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5a1fb8d2N53bbd2ba.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('50', '5', '维修保养', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5a1fb8baNbe801af8.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('51', '5', '汽车装饰', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20200607/5a28ae20N34461e66.jpg', '', '');
INSERT INTO `pms_product_category` VALUES ('52', '0', '电脑办公', '0', '0', '件', '1', '1', '1', '', '电脑办公', '电脑办公');
INSERT INTO `pms_product_category` VALUES ('53', '52', '平板电脑', '1', '0', '件', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/pad_category_01.jpg', '平板电脑', '平板电脑');
INSERT INTO `pms_product_category` VALUES ('54', '52', '笔记本', '1', '0', '件', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/computer_category_01.jpg', '笔记本', '笔记本');
INSERT INTO `pms_product_category` VALUES ('55', '52', '硬盘', '1', '0', '', '0', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/ssd_category_01.jpg', '硬盘', '');

-- ----------------------------
-- Table structure for pms_product_category_attribute_relation
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_category_attribute_relation`;
CREATE TABLE `pms_product_category_attribute_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint DEFAULT NULL,
  `product_attribute_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='产品的分类和属性的关系表，用于设置分类筛选条件（只支持一级分类）';

-- ----------------------------
-- Records of pms_product_category_attribute_relation
-- ----------------------------
INSERT INTO `pms_product_category_attribute_relation` VALUES ('1', '24', '24');
INSERT INTO `pms_product_category_attribute_relation` VALUES ('5', '26', '24');
INSERT INTO `pms_product_category_attribute_relation` VALUES ('7', '28', '24');
INSERT INTO `pms_product_category_attribute_relation` VALUES ('9', '25', '24');
INSERT INTO `pms_product_category_attribute_relation` VALUES ('10', '25', '25');

-- ----------------------------
-- Table structure for pms_product_full_reduction
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_full_reduction`;
CREATE TABLE `pms_product_full_reduction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `full_price` decimal(10,2) DEFAULT NULL,
  `reduce_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='产品满减表(只针对同商品)';

-- ----------------------------
-- Records of pms_product_full_reduction
-- ----------------------------
INSERT INTO `pms_product_full_reduction` VALUES ('1', '7', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('2', '8', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('3', '9', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('4', '10', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('5', '11', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('6', '12', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('7', '13', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('8', '14', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('9', '18', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('10', '7', '200.00', '50.00');
INSERT INTO `pms_product_full_reduction` VALUES ('11', '7', '300.00', '100.00');
INSERT INTO `pms_product_full_reduction` VALUES ('14', '22', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('16', '24', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('34', '23', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('78', '36', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('79', '35', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('83', '30', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('84', '31', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('85', '32', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('87', '33', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('88', '34', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('93', '27', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('96', '28', '500.00', '50.00');
INSERT INTO `pms_product_full_reduction` VALUES ('97', '28', '1000.00', '120.00');
INSERT INTO `pms_product_full_reduction` VALUES ('98', '29', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('104', '37', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('126', '38', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('127', '39', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('128', '41', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('129', '42', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('130', '43', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('131', '44', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('132', '45', '2000.00', '100.00');
INSERT INTO `pms_product_full_reduction` VALUES ('133', '40', '2000.00', '200.00');
INSERT INTO `pms_product_full_reduction` VALUES ('146', '26', '3000.00', '300.00');
INSERT INTO `pms_product_full_reduction` VALUES ('147', '26', '5000.00', '500.00');

-- ----------------------------
-- Table structure for pms_product_ladder
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_ladder`;
CREATE TABLE `pms_product_ladder` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `count` int DEFAULT NULL COMMENT '满足的商品数量',
  `discount` decimal(10,2) DEFAULT NULL COMMENT '折扣',
  `price` decimal(10,2) DEFAULT NULL COMMENT '折后价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='产品阶梯价格表(只针对同商品)';

-- ----------------------------
-- Records of pms_product_ladder
-- ----------------------------
INSERT INTO `pms_product_ladder` VALUES ('1', '7', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('2', '8', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('3', '9', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('4', '10', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('5', '11', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('6', '12', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('7', '13', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('8', '14', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('12', '18', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('14', '7', '4', '0.60', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('15', '7', '5', '0.50', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('18', '22', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('20', '24', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('38', '23', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('83', '36', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('84', '35', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('88', '30', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('89', '31', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('90', '32', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('92', '33', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('93', '34', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('99', '27', '2', '0.80', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('100', '27', '3', '0.75', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('103', '28', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('104', '29', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('110', '37', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('133', '38', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('134', '39', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('135', '41', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('136', '42', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('137', '43', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('138', '44', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('139', '45', '1', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('140', '40', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('147', '26', '0', '0.00', '0.00');

-- ----------------------------
-- Table structure for pms_product_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_operate_log`;
CREATE TABLE `pms_product_operate_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `price_old` decimal(10,2) DEFAULT NULL,
  `price_new` decimal(10,2) DEFAULT NULL,
  `sale_price_old` decimal(10,2) DEFAULT NULL,
  `sale_price_new` decimal(10,2) DEFAULT NULL,
  `gift_point_old` int DEFAULT NULL COMMENT '赠送的积分',
  `gift_point_new` int DEFAULT NULL,
  `use_point_limit_old` int DEFAULT NULL,
  `use_point_limit_new` int DEFAULT NULL,
  `operate_man` varchar(64) DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pms_product_operate_log
-- ----------------------------

-- ----------------------------
-- Table structure for pms_product_verify_record
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_verify_record`;
CREATE TABLE `pms_product_verify_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `vertify_man` varchar(64) DEFAULT NULL COMMENT '审核人',
  `status` int DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL COMMENT '反馈详情',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='商品审核记录';

-- ----------------------------
-- Records of pms_product_verify_record
-- ----------------------------
INSERT INTO `pms_product_verify_record` VALUES ('1', '1', '2018-04-27 16:36:41', 'test', '1', '验证通过');
INSERT INTO `pms_product_verify_record` VALUES ('2', '2', '2018-04-27 16:36:41', 'test', '1', '验证通过');

-- ----------------------------
-- Table structure for pms_sku_stock
-- ----------------------------
DROP TABLE IF EXISTS `pms_sku_stock`;
CREATE TABLE `pms_sku_stock` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `sku_code` varchar(64) NOT NULL COMMENT 'sku编码',
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int DEFAULT '0' COMMENT '库存',
  `low_stock` int DEFAULT NULL COMMENT '预警库存',
  `pic` varchar(255) DEFAULT NULL COMMENT '展示图片',
  `sale` int DEFAULT NULL COMMENT '销量',
  `promotion_price` decimal(10,2) DEFAULT NULL COMMENT '单品促销价格',
  `lock_stock` int DEFAULT '0' COMMENT '锁定库存',
  `sp_data` varchar(500) DEFAULT NULL COMMENT '商品销售属性，json格式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='sku的库存';

-- ----------------------------
-- Records of pms_sku_stock
-- ----------------------------
INSERT INTO `pms_sku_stock` VALUES ('98', '27', '201808270027001', '2699.00', '86', null, null, null, null, '-24', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('99', '27', '201808270027002', '2999.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"64G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('100', '27', '201808270027003', '2699.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('101', '27', '201808270027004', '2999.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"容量\",\"value\":\"64G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('102', '28', '201808270028001', '649.00', '99', null, null, null, null, '-8', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('103', '28', '201808270028002', '699.00', '99', null, null, null, null, '-8', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('104', '28', '201808270028003', '649.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('105', '28', '201808270028004', '699.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('106', '29', '201808270029001', '5499.00', '99', null, null, null, '4999.00', '-8', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('107', '29', '201808270029002', '6299.00', '100', null, null, null, '5799.00', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"64G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('108', '29', '201808270029003', '5499.00', '100', null, null, null, '4999.00', '0', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('109', '29', '201808270029004', '6299.00', '100', null, null, null, '5799.00', '0', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"64G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('110', '26', '201806070026001', '3788.00', '487', null, null, null, '3699.00', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('111', '26', '201806070026002', '3999.00', '499', null, null, null, '3899.00', '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('112', '26', '201806070026003', '3788.00', '500', null, null, null, '3699.00', '0', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('113', '26', '201806070026004', '3999.00', '500', null, null, null, '3899.00', '0', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('163', '36', '202002210036001', '100.00', '100', '25', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('164', '36', '202002210036002', '120.00', '98', '20', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('165', '36', '202002210036003', '100.00', '100', '20', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('166', '36', '202002210036004', '100.00', '100', '20', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('167', '36', '202002210036005', '100.00', '100', '20', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('168', '36', '202002210036006', '100.00', '100', '20', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('169', '36', '202002210036007', '100.00', '100', '20', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('170', '36', '202002210036008', '100.00', '100', '20', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('171', '35', '202002250035001', '200.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('172', '35', '202002250035002', '240.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('173', '35', '202002250035003', '200.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('174', '35', '202002250035004', '200.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('175', '35', '202002250035005', '200.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('176', '35', '202002250035006', '200.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('177', '35', '202002250035007', '200.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('178', '35', '202002250035008', '200.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('179', '30', '202004190030001', '88.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"X\"}]');
INSERT INTO `pms_sku_stock` VALUES ('180', '30', '202004190030002', '88.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"XL\"}]');
INSERT INTO `pms_sku_stock` VALUES ('181', '30', '202004190030003', '88.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"M\"}]');
INSERT INTO `pms_sku_stock` VALUES ('182', '30', '202004190030004', '88.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"白色\"},{\"key\":\"尺寸\",\"value\":\"X\"}]');
INSERT INTO `pms_sku_stock` VALUES ('183', '30', '202004190030005', '88.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"白色\"},{\"key\":\"尺寸\",\"value\":\"XL\"}]');
INSERT INTO `pms_sku_stock` VALUES ('184', '30', '202004190030006', '88.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"白色\"},{\"key\":\"尺寸\",\"value\":\"M\"}]');
INSERT INTO `pms_sku_stock` VALUES ('185', '31', '202004190031001', '88.00', '80', '10', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"浅灰色\"},{\"key\":\"尺寸\",\"value\":\"X\"}]');
INSERT INTO `pms_sku_stock` VALUES ('186', '31', '202004190031002', '88.00', '80', '10', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"浅灰色\"},{\"key\":\"尺寸\",\"value\":\"XL\"}]');
INSERT INTO `pms_sku_stock` VALUES ('187', '31', '202004190031003', '88.00', '80', '10', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"深灰色\"},{\"key\":\"尺寸\",\"value\":\"X\"}]');
INSERT INTO `pms_sku_stock` VALUES ('188', '31', '202004190031004', '88.00', '80', '10', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"深灰色\"},{\"key\":\"尺寸\",\"value\":\"XL\"}]');
INSERT INTO `pms_sku_stock` VALUES ('189', '32', '202004190032001', '99.00', '100', '10', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"尺寸\",\"value\":\"X\"}]');
INSERT INTO `pms_sku_stock` VALUES ('190', '32', '202004190032002', '99.00', '100', '10', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"尺寸\",\"value\":\"M\"}]');
INSERT INTO `pms_sku_stock` VALUES ('191', '32', '202004190032003', '99.00', '100', '10', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"白色\"},{\"key\":\"尺寸\",\"value\":\"X\"}]');
INSERT INTO `pms_sku_stock` VALUES ('192', '32', '202004190032004', '99.00', '100', '10', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"白色\"},{\"key\":\"尺寸\",\"value\":\"M\"}]');
INSERT INTO `pms_sku_stock` VALUES ('193', '33', '202004190033001', '2499.00', '500', '10', null, null, null, '0', '[{\"key\":\"尺寸\",\"value\":\"50英寸\"},{\"key\":\"内存\",\"value\":\"8G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('194', '33', '202004190033002', '2499.00', '500', '10', null, null, null, '0', '[{\"key\":\"尺寸\",\"value\":\"50英寸\"},{\"key\":\"内存\",\"value\":\"16G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('195', '33', '202004190033003', '2499.00', '500', '10', null, null, null, '0', '[{\"key\":\"尺寸\",\"value\":\"65英寸\"},{\"key\":\"内存\",\"value\":\"8G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('196', '33', '202004190033004', '2499.00', '500', '10', null, null, null, '0', '[{\"key\":\"尺寸\",\"value\":\"65英寸\"},{\"key\":\"内存\",\"value\":\"16G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('197', '34', '202004190034001', '3999.00', '500', '10', null, null, null, '0', '[{\"key\":\"尺寸\",\"value\":\"65英寸\"},{\"key\":\"内存\",\"value\":\"16G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('198', '34', '202004190034002', '3999.00', '500', '10', null, null, null, '0', '[{\"key\":\"尺寸\",\"value\":\"65英寸\"},{\"key\":\"内存\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('199', '34', '202004190034003', '3999.00', '500', '10', null, null, null, '0', '[{\"key\":\"尺寸\",\"value\":\"70英寸\"},{\"key\":\"内存\",\"value\":\"16G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('200', '34', '202004190034004', '3999.00', '500', '10', null, null, null, '0', '[{\"key\":\"尺寸\",\"value\":\"70英寸\"},{\"key\":\"内存\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('201', '37', '202210280037001', '5999.00', '195', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"午夜色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('202', '37', '202210280037002', '6899.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"午夜色\"},{\"key\":\"容量\",\"value\":\"256G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('203', '37', '202210280037003', '8699.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_001.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"午夜色\"},{\"key\":\"容量\",\"value\":\"512G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('204', '37', '202210280037004', '5999.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_002.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"星光色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('205', '37', '202210280037005', '6899.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_002.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"星光色\"},{\"key\":\"容量\",\"value\":\"256G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('206', '37', '202210280037006', '8699.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_002.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"星光色\"},{\"key\":\"容量\",\"value\":\"512G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('207', '37', '202210280037007', '5999.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_003.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"紫色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('208', '37', '202210280037008', '6899.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_003.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"紫色\"},{\"key\":\"容量\",\"value\":\"256G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('209', '37', '202210280037009', '8699.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_003.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"紫色\"},{\"key\":\"容量\",\"value\":\"512G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('210', '37', '202210280037010', '5999.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_004.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('211', '37', '202210280037011', '6899.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_004.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"容量\",\"value\":\"256G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('212', '37', '202210280037012', '8699.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/iphone14_004.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"容量\",\"value\":\"512G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('213', '38', '202210280038001', '3599.00', '199', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/ipad_001.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"64G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('214', '38', '202210280038002', '4799.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/ipad_001.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"256G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('215', '38', '202210280038003', '3599.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/ipad_002.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"容量\",\"value\":\"64G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('216', '38', '202210280038004', '4799.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/ipad_002.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"容量\",\"value\":\"256G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('217', '39', '202210280039001', '5999.00', '500', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/xiaomi_computer_001.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"新小米Pro 14英寸 2.8K屏\"},{\"key\":\"版本\",\"value\":\"R7 16G 512\"}]');
INSERT INTO `pms_sku_stock` VALUES ('218', '39', '202210280039002', '5599.00', '500', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/xiaomi_computer_001.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"新小米Pro 14英寸 2.8K屏\"},{\"key\":\"版本\",\"value\":\"R5 16G 512\"}]');
INSERT INTO `pms_sku_stock` VALUES ('219', '39', '202210280039003', '5499.00', '500', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/xiaomi_computer_002.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"新Redmi Pro 15英寸 3.2K屏\"},{\"key\":\"版本\",\"value\":\"R7 16G 512\"}]');
INSERT INTO `pms_sku_stock` VALUES ('220', '39', '202210280039004', '4999.00', '500', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221028/xiaomi_computer_002.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"新Redmi Pro 15英寸 3.2K屏\"},{\"key\":\"版本\",\"value\":\"R5 16G 512\"}]');
INSERT INTO `pms_sku_stock` VALUES ('221', '40', '202211040040001', '2999.00', '94', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('222', '40', '202211040040002', '3499.00', '100', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_01.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"256G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('223', '40', '202211040040003', '2999.00', '100', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_02.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('224', '40', '202211040040004', '3499.00', '100', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/xiaomi_12_pro_02.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"容量\",\"value\":\"256G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('225', '41', '202211040041001', '2099.00', '197', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_01.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"墨羽\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('226', '41', '202211040041002', '2299.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_01.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"墨羽\"},{\"key\":\"容量\",\"value\":\"256G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('227', '41', '202211040041003', '2099.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_02.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"银迹\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('228', '41', '202211040041004', '2299.00', '200', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/redmi_k50_02.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"银迹\"},{\"key\":\"容量\",\"value\":\"256G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('229', '42', '202211040042001', '4999.00', '100', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/huawei_mate50_01.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"曜金黑\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('230', '42', '202211040042002', '5499.00', '100', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/huawei_mate50_01.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"曜金黑\"},{\"key\":\"容量\",\"value\":\"256G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('231', '42', '202211040042003', '4999.00', '100', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/huawei_mate50_02.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"冰霜银\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('232', '42', '202211040042004', '5499.00', '100', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/huawei_mate50_02.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"冰霜银\"},{\"key\":\"容量\",\"value\":\"256G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('233', '43', '202211040043001', '1649.00', '500', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/wanhe_13L_01.png', null, null, '0', '[{\"key\":\"系列\",\"value\":\"JSQ25-565W13【13升】【恒温旗舰款】\"}]');
INSERT INTO `pms_sku_stock` VALUES ('234', '43', '202211040043002', '1799.00', '500', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221104/wanhe_13L_01.png', null, null, '0', '[{\"key\":\"系列\",\"value\":\"JSQ30-565W16【16升】【恒温旗舰款】\"}]');
INSERT INTO `pms_sku_stock` VALUES ('235', '44', '202211080044001', '369.00', '100', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/sanxing_ssd_02.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"新品980｜NVMe PCIe3.0*4\"},{\"key\":\"版本\",\"value\":\"512GB\"}]');
INSERT INTO `pms_sku_stock` VALUES ('236', '44', '202211080044002', '649.00', '100', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/sanxing_ssd_02.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"新品980｜NVMe PCIe3.0*4\"},{\"key\":\"版本\",\"value\":\"1TB\"}]');
INSERT INTO `pms_sku_stock` VALUES ('237', '44', '202211080044003', '549.00', '100', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/sanxing_ssd_01.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"980 PRO｜NVMe PCIe 4.0\"},{\"key\":\"版本\",\"value\":\"512GB\"}]');
INSERT INTO `pms_sku_stock` VALUES ('238', '44', '202211080044004', '899.00', '100', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/sanxing_ssd_01.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"980 PRO｜NVMe PCIe 4.0\"},{\"key\":\"版本\",\"value\":\"1TB\"}]');
INSERT INTO `pms_sku_stock` VALUES ('239', '45', '202211080045001', '2299.00', '250', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/oppo_r8_01.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"鸢尾紫\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('240', '45', '202211080045002', '2499.00', '250', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/oppo_r8_01.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"鸢尾紫\"},{\"key\":\"容量\",\"value\":\"256G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('241', '45', '202211080045003', '2299.00', '250', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/oppo_r8_02.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"晴空蓝\"},{\"key\":\"容量\",\"value\":\"128G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('242', '45', '202211080045004', '2499.00', '250', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/oppo_r8_02.jpg', null, null, '0', '[{\"key\":\"颜色\",\"value\":\"晴空蓝\"},{\"key\":\"容量\",\"value\":\"256G\"}]');

-- ----------------------------
-- Table structure for sms_coupon
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon`;
CREATE TABLE `sms_coupon` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` int DEFAULT NULL COMMENT '优惠券类型；0->全场赠券；1->会员赠券；2->购物赠券；3->注册赠券',
  `name` varchar(100) DEFAULT NULL,
  `platform` int DEFAULT NULL COMMENT '使用平台：0->全部；1->移动；2->PC',
  `count` int DEFAULT NULL COMMENT '数量',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `per_limit` int DEFAULT NULL COMMENT '每人限领张数',
  `min_point` decimal(10,2) DEFAULT NULL COMMENT '使用门槛；0表示无门槛',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `use_type` int DEFAULT NULL COMMENT '使用类型：0->全场通用；1->指定分类；2->指定商品',
  `note` varchar(200) DEFAULT NULL COMMENT '备注',
  `publish_count` int DEFAULT NULL COMMENT '发行数量',
  `use_count` int DEFAULT NULL COMMENT '已使用数量',
  `receive_count` int DEFAULT NULL COMMENT '领取数量',
  `enable_time` datetime DEFAULT NULL COMMENT '可以领取的日期',
  `code` varchar(64) DEFAULT NULL COMMENT '优惠码',
  `member_level` int DEFAULT NULL COMMENT '可领取的会员类型：0->无限时',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='优惠券表';

-- ----------------------------
-- Records of sms_coupon
-- ----------------------------
INSERT INTO `sms_coupon` VALUES ('27', '0', '全品类通用券', '0', '97', '10.00', '10', '100.00', '2022-11-08 00:00:00', '2023-11-30 00:00:00', '0', null, '100', '0', '3', '2022-11-08 00:00:00', null, null);
INSERT INTO `sms_coupon` VALUES ('28', '0', '手机分类专用券', '0', '997', '100.00', '5', '1000.00', '2022-11-08 00:00:00', '2023-11-30 00:00:00', '1', null, '1000', '0', '3', '2022-11-08 00:00:00', null, null);
INSERT INTO `sms_coupon` VALUES ('29', '0', '苹果手机专用券', '0', '999', '600.00', '1', '4000.00', '2022-11-08 00:00:00', '2023-11-30 00:00:00', '2', null, '1000', '0', '1', '2022-11-08 00:00:00', null, null);
INSERT INTO `sms_coupon` VALUES ('30', '0', '小米手机专用券', '0', '999', '200.00', '1', '2000.00', '2022-11-08 00:00:00', '2023-11-30 00:00:00', '2', null, '1000', '0', '1', '2022-11-08 00:00:00', null, null);
INSERT INTO `sms_coupon` VALUES ('31', '0', '限时优惠券', '0', '999', '20.00', '5', '500.00', '2022-12-01 00:00:00', '2022-12-22 00:00:00', '0', null, '1000', '0', '1', '2022-12-23 00:00:00', null, null);

-- ----------------------------
-- Table structure for sms_coupon_history
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon_history`;
CREATE TABLE `sms_coupon_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint DEFAULT NULL,
  `member_id` bigint DEFAULT NULL,
  `coupon_code` varchar(64) DEFAULT NULL,
  `member_nickname` varchar(64) DEFAULT NULL COMMENT '领取人昵称',
  `get_type` int DEFAULT NULL COMMENT '获取类型：0->后台赠送；1->主动获取',
  `create_time` datetime DEFAULT NULL,
  `use_status` int DEFAULT NULL COMMENT '使用状态：0->未使用；1->已使用；2->已过期',
  `use_time` datetime DEFAULT NULL COMMENT '使用时间',
  `order_id` bigint DEFAULT NULL COMMENT '订单编号',
  `order_sn` varchar(100) DEFAULT NULL COMMENT '订单号码',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_member_id` (`member_id`) USING BTREE,
  KEY `idx_coupon_id` (`coupon_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='优惠券使用、领取历史表';

-- ----------------------------
-- Records of sms_coupon_history
-- ----------------------------
INSERT INTO `sms_coupon_history` VALUES ('37', '30', '1', '7806895974110001', 'windir', '1', '2022-11-09 15:14:29', '1', '2022-11-09 15:14:58', null, null);
INSERT INTO `sms_coupon_history` VALUES ('38', '27', '1', '7872472849240001', 'windir', '1', '2022-11-09 15:25:25', '1', '2022-11-09 15:25:38', null, null);
INSERT INTO `sms_coupon_history` VALUES ('39', '29', '1', '7876204111480001', 'windir', '1', '2022-11-09 15:26:02', '1', '2022-11-09 15:26:11', null, null);
INSERT INTO `sms_coupon_history` VALUES ('40', '27', '1', '7911945030190001', 'windir', '1', '2022-11-09 15:31:59', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('41', '28', '1', '8194868687790001', 'windir', '1', '2022-11-09 16:19:09', '1', '2022-11-11 16:12:42', null, null);
INSERT INTO `sms_coupon_history` VALUES ('42', '28', '1', '1239565720390001', 'test', '1', '2022-12-21 16:46:36', '1', '2022-12-21 16:53:07', null, null);
INSERT INTO `sms_coupon_history` VALUES ('43', '31', '1', '6030247208280001', 'test', '1', '2022-12-23 09:51:42', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('44', '28', '1', '6050939443480001', 'test', '1', '2022-12-23 09:55:09', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('45', '27', '1', '4182437014580001', 'test', '1', '2023-01-10 17:10:24', '0', null, null, null);

-- ----------------------------
-- Table structure for sms_coupon_product_category_relation
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon_product_category_relation`;
CREATE TABLE `sms_coupon_product_category_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint DEFAULT NULL,
  `product_category_id` bigint DEFAULT NULL,
  `product_category_name` varchar(200) DEFAULT NULL COMMENT '产品分类名称',
  `parent_category_name` varchar(200) DEFAULT NULL COMMENT '父分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='优惠券和产品分类关系表';

-- ----------------------------
-- Records of sms_coupon_product_category_relation
-- ----------------------------
INSERT INTO `sms_coupon_product_category_relation` VALUES ('11', '28', '19', '手机通讯', '手机数码');

-- ----------------------------
-- Table structure for sms_coupon_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon_product_relation`;
CREATE TABLE `sms_coupon_product_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `product_name` varchar(500) DEFAULT NULL COMMENT '商品名称',
  `product_sn` varchar(200) DEFAULT NULL COMMENT '商品编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='优惠券和产品的关系表';

-- ----------------------------
-- Records of sms_coupon_product_relation
-- ----------------------------
INSERT INTO `sms_coupon_product_relation` VALUES ('18', '29', '37', 'Apple iPhone 14 (A2884) 128GB 支持移动联通电信5G 双卡双待手机', '100038005189');
INSERT INTO `sms_coupon_product_relation` VALUES ('19', '29', '29', 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', '7437799');
INSERT INTO `sms_coupon_product_relation` VALUES ('21', '30', '41', 'Redmi K50 天玑8100 2K柔性直屏 OIS光学防抖 67W快充 5500mAh大电量 墨羽 12GB+256GB 5G智能手机 小米 红米', '100035246702');
INSERT INTO `sms_coupon_product_relation` VALUES ('22', '30', '40', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充 12GB+256GB 黑色 5G手机', '100027789721');

-- ----------------------------
-- Table structure for sms_flash_promotion
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion`;
CREATE TABLE `sms_flash_promotion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '秒杀时间段名称',
  `start_date` date DEFAULT NULL COMMENT '开始日期',
  `end_date` date DEFAULT NULL COMMENT '结束日期',
  `status` int DEFAULT NULL COMMENT '上下线状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='限时购表';

-- ----------------------------
-- Records of sms_flash_promotion
-- ----------------------------
INSERT INTO `sms_flash_promotion` VALUES ('14', '双11特卖活动', '2022-11-09', '2023-06-30', '1', '2022-11-09 14:56:48');

-- ----------------------------
-- Table structure for sms_flash_promotion_log
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion_log`;
CREATE TABLE `sms_flash_promotion_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_id` int DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `member_phone` varchar(64) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `subscribe_time` datetime DEFAULT NULL COMMENT '会员订阅时间',
  `send_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='限时购通知记录';

-- ----------------------------
-- Records of sms_flash_promotion_log
-- ----------------------------

-- ----------------------------
-- Table structure for sms_flash_promotion_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion_product_relation`;
CREATE TABLE `sms_flash_promotion_product_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `flash_promotion_id` bigint DEFAULT NULL,
  `flash_promotion_session_id` bigint DEFAULT NULL COMMENT '编号',
  `product_id` bigint DEFAULT NULL,
  `flash_promotion_price` decimal(10,2) DEFAULT NULL COMMENT '限时购价格',
  `flash_promotion_count` int DEFAULT NULL COMMENT '限时购数量',
  `flash_promotion_limit` int DEFAULT NULL COMMENT '每人限购数量',
  `sort` int DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='商品限时购与商品关系表';

-- ----------------------------
-- Records of sms_flash_promotion_product_relation
-- ----------------------------
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('1', '2', '1', '26', '3000.00', '10', '1', '0');
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('2', '2', '1', '27', '2000.00', '10', '1', '20');
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('3', '2', '1', '28', '599.00', '19', '1', '0');
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('4', '2', '1', '29', '4999.00', '10', '1', '100');
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('9', '2', '2', '26', '2999.00', '100', '1', '0');
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('10', '2', '2', '27', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('11', '2', '2', '28', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('12', '2', '2', '29', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('13', '2', '2', '30', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('14', '2', '3', '31', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('15', '2', '3', '32', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('16', '2', '4', '33', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('17', '2', '4', '34', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('18', '2', '5', '36', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('19', '2', '6', '33', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('20', '2', '6', '34', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('21', '14', '1', '26', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('22', '14', '1', '27', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('23', '14', '1', '28', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('24', '14', '1', '29', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('25', '14', '2', '30', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('26', '14', '2', '31', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('27', '14', '2', '32', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('28', '14', '2', '35', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('29', '14', '3', '33', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('30', '14', '3', '34', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('31', '14', '3', '36', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('32', '14', '3', '37', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('33', '14', '4', '37', '5699.00', '10', '1', null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('34', '14', '4', '38', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('35', '14', '4', '39', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('36', '14', '4', '40', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('37', '14', '5', '41', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('38', '14', '5', '42', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('39', '14', '5', '43', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('40', '14', '5', '44', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('41', '14', '5', '45', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('42', '14', '6', '26', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('43', '14', '6', '27', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('44', '14', '6', '28', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('45', '14', '6', '29', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('46', '14', '6', '30', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('47', '14', '7', '31', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('48', '14', '7', '32', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('49', '14', '7', '33', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('50', '14', '7', '34', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('51', '14', '7', '35', null, null, null, null);

-- ----------------------------
-- Table structure for sms_flash_promotion_session
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion_session`;
CREATE TABLE `sms_flash_promotion_session` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '场次名称',
  `start_time` time DEFAULT NULL COMMENT '每日开始时间',
  `end_time` time DEFAULT NULL COMMENT '每日结束时间',
  `status` int DEFAULT NULL COMMENT '启用状态：0->不启用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='限时购场次表';

-- ----------------------------
-- Records of sms_flash_promotion_session
-- ----------------------------
INSERT INTO `sms_flash_promotion_session` VALUES ('1', '8:00', '08:00:00', '10:00:00', '1', '2018-11-16 13:22:17');
INSERT INTO `sms_flash_promotion_session` VALUES ('2', '10:00', '10:00:00', '12:00:00', '1', '2018-11-16 13:22:34');
INSERT INTO `sms_flash_promotion_session` VALUES ('3', '12:00', '12:00:00', '14:00:00', '1', '2018-11-16 13:22:37');
INSERT INTO `sms_flash_promotion_session` VALUES ('4', '14:00', '14:00:00', '16:00:00', '1', '2018-11-16 13:22:41');
INSERT INTO `sms_flash_promotion_session` VALUES ('5', '16:00', '16:00:00', '18:00:00', '1', '2018-11-16 13:22:45');
INSERT INTO `sms_flash_promotion_session` VALUES ('6', '18:00', '18:00:00', '20:00:00', '1', '2018-11-16 13:21:34');
INSERT INTO `sms_flash_promotion_session` VALUES ('7', '20:00', '20:00:00', '22:00:00', '1', '2018-11-16 13:22:55');

-- ----------------------------
-- Table structure for sms_home_advertise
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_advertise`;
CREATE TABLE `sms_home_advertise` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` int DEFAULT NULL COMMENT '轮播位置：0->PC首页轮播；1->app首页轮播',
  `pic` varchar(500) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` int DEFAULT NULL COMMENT '上下线状态：0->下线；1->上线',
  `click_count` int DEFAULT NULL COMMENT '点击数',
  `order_count` int DEFAULT NULL COMMENT '下单数',
  `url` varchar(500) DEFAULT NULL COMMENT '链接地址',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  `sort` int DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='首页轮播广告表';

-- ----------------------------
-- Records of sms_home_advertise
-- ----------------------------
INSERT INTO `sms_home_advertise` VALUES ('2', '夏季大热促销', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190525/ad1.jpg', '2018-11-01 14:01:37', '2018-11-15 14:01:37', '0', '0', '0', null, '夏季大热促销', '0');
INSERT INTO `sms_home_advertise` VALUES ('3', '夏季大热促销1', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190525/ad1.jpg', '2018-11-13 14:01:37', '2018-11-13 14:01:37', '0', '0', '0', null, '夏季大热促销1', '0');
INSERT INTO `sms_home_advertise` VALUES ('4', '夏季大热促销2', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190525/ad2.jpg', '2018-11-13 14:01:37', '2018-11-13 14:01:37', '0', '0', '0', null, '夏季大热促销2', '0');
INSERT INTO `sms_home_advertise` VALUES ('9', '电影推荐广告', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/movie_ad.jpg', '2018-11-01 00:00:00', '2018-11-24 00:00:00', '0', '0', '0', 'www.baidu.com', '电影推荐广告', '100');
INSERT INTO `sms_home_advertise` VALUES ('10', '汽车促销广告', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad.jpg', '2018-11-13 00:00:00', '2018-11-24 00:00:00', '0', '0', '0', 'xxx', null, '99');
INSERT INTO `sms_home_advertise` VALUES ('11', '汽车推荐广告', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad2.jpg', '2018-11-13 00:00:00', '2018-11-30 00:00:00', '0', '0', '0', 'xxx', null, '98');
INSERT INTO `sms_home_advertise` VALUES ('12', '小米推荐广告', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/xiaomi_banner_01.png', '2022-11-08 17:04:03', '2023-11-08 17:04:05', '1', '0', '0', '/pages/brand/brandDetail?id=6', null, '0');
INSERT INTO `sms_home_advertise` VALUES ('13', '华为推荐广告', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/huawei_banner_01.png', '2022-11-08 17:10:27', '2023-11-08 17:10:28', '1', '0', '0', '/pages/brand/brandDetail?id=3', null, '0');
INSERT INTO `sms_home_advertise` VALUES ('14', '苹果推荐广告', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/apple_banner_01.png', '2022-11-08 17:12:54', '2023-11-08 17:12:55', '1', '0', '0', '/pages/brand/brandDetail?id=51', null, '0');
INSERT INTO `sms_home_advertise` VALUES ('15', '三星推荐广告', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/sanxing_banner_01.png', '2022-11-08 17:15:38', '2023-11-08 17:15:39', '1', '0', '0', '/pages/brand/brandDetail?id=2', null, '0');
INSERT INTO `sms_home_advertise` VALUES ('16', 'OPPO推荐广告', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20221108/oppo_banner_01.png', '2022-11-08 17:20:10', '2023-11-08 17:20:11', '1', '0', '0', '/pages/brand/brandDetail?id=21', null, '0');

-- ----------------------------
-- Table structure for sms_home_brand
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_brand`;
CREATE TABLE `sms_home_brand` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `brand_id` bigint DEFAULT NULL,
  `brand_name` varchar(64) DEFAULT NULL,
  `recommend_status` int DEFAULT NULL,
  `sort` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='首页推荐品牌表';

-- ----------------------------
-- Records of sms_home_brand
-- ----------------------------
INSERT INTO `sms_home_brand` VALUES ('6', '6', '小米', '1', '300');
INSERT INTO `sms_home_brand` VALUES ('32', '50', '海澜之家', '1', '198');
INSERT INTO `sms_home_brand` VALUES ('33', '51', '苹果', '1', '199');
INSERT INTO `sms_home_brand` VALUES ('34', '2', '三星', '1', '195');
INSERT INTO `sms_home_brand` VALUES ('35', '3', '华为', '1', '200');
INSERT INTO `sms_home_brand` VALUES ('39', '21', 'OPPO', '1', '197');
INSERT INTO `sms_home_brand` VALUES ('45', '1', '万和', '1', '0');
INSERT INTO `sms_home_brand` VALUES ('46', '5', '方太', '1', '0');
INSERT INTO `sms_home_brand` VALUES ('47', '4', '格力', '1', '0');

-- ----------------------------
-- Table structure for sms_home_new_product
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_new_product`;
CREATE TABLE `sms_home_new_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `product_name` varchar(500) DEFAULT NULL,
  `recommend_status` int DEFAULT NULL,
  `sort` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='新鲜好物表';

-- ----------------------------
-- Records of sms_home_new_product
-- ----------------------------
INSERT INTO `sms_home_new_product` VALUES ('19', '37', 'Apple iPhone 14 (A2884) 128GB 支持移动联通电信5G 双卡双待手机', '1', '197');
INSERT INTO `sms_home_new_product` VALUES ('20', '38', 'Apple iPad 10.9英寸平板电脑 2022年款（64GB WLAN版/A14芯片/1200万像素/iPadOS MPQ03CH/A ）', '1', '0');
INSERT INTO `sms_home_new_product` VALUES ('21', '39', '小米 Xiaomi Book Pro 14 2022 锐龙版 2.8K超清大师屏 高端轻薄笔记本电脑(新R5-6600H标压 16G 512G win11)', '1', '198');
INSERT INTO `sms_home_new_product` VALUES ('22', '40', '小米12 Pro 天玑版 天玑9000+处理器 5000万疾速影像 2K超视感屏 120Hz高刷 67W快充 12GB+256GB 黑色 5G手机', '1', '200');
INSERT INTO `sms_home_new_product` VALUES ('23', '41', 'Redmi K50 天玑8100 2K柔性直屏 OIS光学防抖 67W快充 5500mAh大电量 墨羽 12GB+256GB 5G智能手机 小米 红米', '1', '199');
INSERT INTO `sms_home_new_product` VALUES ('24', '42', 'HUAWEI Mate 50 直屏旗舰 超光变XMAGE影像 北斗卫星消息 低电量应急模式 128GB曜金黑华为鸿蒙手机', '1', '0');
INSERT INTO `sms_home_new_product` VALUES ('25', '44', '三星（SAMSUNG）500GB SSD固态硬盘 M.2接口(NVMe协议) 980（MZ-V8V500BW）', '1', '0');
INSERT INTO `sms_home_new_product` VALUES ('26', '45', 'OPPO Reno8 8GB+128GB 鸢尾紫 新配色上市 80W超级闪充 5000万水光人像三摄 3200万前置索尼镜头 5G手机', '1', '0');
INSERT INTO `sms_home_new_product` VALUES ('27', '43', '万和（Vanward)燃气热水器天然气家用四重防冻直流变频节能全新升级增压水伺服恒温高抗风 JSQ30-565W16【16升】【恒温旗舰款】', '1', '0');

-- ----------------------------
-- Table structure for sms_home_recommend_product
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_recommend_product`;
CREATE TABLE `sms_home_recommend_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `product_name` varchar(500) DEFAULT NULL,
  `recommend_status` int DEFAULT NULL,
  `sort` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='人气推荐商品表';

-- ----------------------------
-- Records of sms_home_recommend_product
-- ----------------------------
INSERT INTO `sms_home_recommend_product` VALUES ('10', '38', 'Apple iPad 10.9英寸平板电脑 2022年款（64GB WLAN版/A14芯片/1200万像素/iPadOS MPQ03CH/A ）', '1', '0');
INSERT INTO `sms_home_recommend_product` VALUES ('11', '39', '小米 Xiaomi Book Pro 14 2022 锐龙版 2.8K超清大师屏 高端轻薄笔记本电脑(新R5-6600H标压 16G 512G win11)', '1', '0');
INSERT INTO `sms_home_recommend_product` VALUES ('12', '44', '三星（SAMSUNG）500GB SSD固态硬盘 M.2接口(NVMe协议) 980（MZ-V8V500BW）', '1', '0');
INSERT INTO `sms_home_recommend_product` VALUES ('13', '43', '万和（Vanward)燃气热水器天然气家用四重防冻直流变频节能全新升级增压水伺服恒温高抗风 JSQ30-565W16【16升】【恒温旗舰款】', '1', '0');
INSERT INTO `sms_home_recommend_product` VALUES ('14', '45', 'OPPO Reno8 8GB+128GB 鸢尾紫 新配色上市 80W超级闪充 5000万水光人像三摄 3200万前置索尼镜头 5G手机', '1', '0');

-- ----------------------------
-- Table structure for sms_home_recommend_subject
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_recommend_subject`;
CREATE TABLE `sms_home_recommend_subject` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject_id` bigint DEFAULT NULL,
  `subject_name` varchar(64) DEFAULT NULL,
  `recommend_status` int DEFAULT NULL,
  `sort` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='首页推荐专题表';

-- ----------------------------
-- Records of sms_home_recommend_subject
-- ----------------------------
INSERT INTO `sms_home_recommend_subject` VALUES ('14', '1', 'polo衬衫的也时尚', '1', '0');
INSERT INTO `sms_home_recommend_subject` VALUES ('15', '2', '大牌手机低价秒', '1', '0');
INSERT INTO `sms_home_recommend_subject` VALUES ('16', '3', '晓龙845新品上市', '1', '0');
INSERT INTO `sms_home_recommend_subject` VALUES ('17', '4', '夏天应该穿什么', '1', '0');
INSERT INTO `sms_home_recommend_subject` VALUES ('18', '5', '夏季精选', '1', '100');
INSERT INTO `sms_home_recommend_subject` VALUES ('19', '6', '品牌手机降价', '1', '0');

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` int NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='地区表';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('0', '中国', '0');
INSERT INTO `sys_area` VALUES ('110000', '北京市', '0');
INSERT INTO `sys_area` VALUES ('110100', '东城区', '110000');
INSERT INTO `sys_area` VALUES ('110200', '西城区', '110000');
INSERT INTO `sys_area` VALUES ('110500', '朝阳区', '110000');
INSERT INTO `sys_area` VALUES ('110600', '丰台区', '110000');
INSERT INTO `sys_area` VALUES ('110700', '石景山区', '110000');
INSERT INTO `sys_area` VALUES ('110800', '海淀区', '110000');
INSERT INTO `sys_area` VALUES ('110900', '门头沟区', '110000');
INSERT INTO `sys_area` VALUES ('111100', '房山区', '110000');
INSERT INTO `sys_area` VALUES ('111200', '通州区', '110000');
INSERT INTO `sys_area` VALUES ('111300', '顺义区', '110000');
INSERT INTO `sys_area` VALUES ('111400', '昌平区', '110000');
INSERT INTO `sys_area` VALUES ('111500', '大兴区', '110000');
INSERT INTO `sys_area` VALUES ('111600', '怀柔区', '110000');
INSERT INTO `sys_area` VALUES ('111700', '平谷区', '110000');
INSERT INTO `sys_area` VALUES ('112800', '密云县', '110000');
INSERT INTO `sys_area` VALUES ('112900', '延庆县', '110000');
INSERT INTO `sys_area` VALUES ('120000', '天津市', '0');
INSERT INTO `sys_area` VALUES ('120100', '和平区', '120000');
INSERT INTO `sys_area` VALUES ('120200', '河东区', '120000');
INSERT INTO `sys_area` VALUES ('120300', '河西区', '120000');
INSERT INTO `sys_area` VALUES ('120400', '南开区', '120000');
INSERT INTO `sys_area` VALUES ('120500', '河北区', '120000');
INSERT INTO `sys_area` VALUES ('120600', '红桥区', '120000');
INSERT INTO `sys_area` VALUES ('120900', '滨海新区', '120000');
INSERT INTO `sys_area` VALUES ('121000', '东丽区', '120000');
INSERT INTO `sys_area` VALUES ('121100', '西青区', '120000');
INSERT INTO `sys_area` VALUES ('121200', '津南区', '120000');
INSERT INTO `sys_area` VALUES ('121300', '北辰区', '120000');
INSERT INTO `sys_area` VALUES ('121400', '武清区', '120000');
INSERT INTO `sys_area` VALUES ('121500', '宝坻区', '120000');
INSERT INTO `sys_area` VALUES ('122100', '宁河县', '120000');
INSERT INTO `sys_area` VALUES ('122300', '静海县', '120000');
INSERT INTO `sys_area` VALUES ('122500', '蓟县', '120000');
INSERT INTO `sys_area` VALUES ('130000', '河北省', '0');
INSERT INTO `sys_area` VALUES ('130100', '石家庄市', '130000');
INSERT INTO `sys_area` VALUES ('130101', '市辖区', '130100');
INSERT INTO `sys_area` VALUES ('130102', '长安区', '130101');
INSERT INTO `sys_area` VALUES ('130103', '桥东区', '130101');
INSERT INTO `sys_area` VALUES ('130104', '桥西区', '130101');
INSERT INTO `sys_area` VALUES ('130105', '新华区', '130101');
INSERT INTO `sys_area` VALUES ('130107', '井陉矿区', '130101');
INSERT INTO `sys_area` VALUES ('130108', '裕华区', '130101');
INSERT INTO `sys_area` VALUES ('130121', '井陉县', '130100');
INSERT INTO `sys_area` VALUES ('130123', '正定县', '130100');
INSERT INTO `sys_area` VALUES ('130124', '栾城县', '130100');
INSERT INTO `sys_area` VALUES ('130125', '行唐县', '130100');
INSERT INTO `sys_area` VALUES ('130126', '灵寿县', '130100');
INSERT INTO `sys_area` VALUES ('130127', '高邑县', '130100');
INSERT INTO `sys_area` VALUES ('130128', '深泽县', '130100');
INSERT INTO `sys_area` VALUES ('130129', '赞皇县', '130100');
INSERT INTO `sys_area` VALUES ('130130', '无极县', '130100');
INSERT INTO `sys_area` VALUES ('130131', '平山县', '130100');
INSERT INTO `sys_area` VALUES ('130132', '元氏县', '130100');
INSERT INTO `sys_area` VALUES ('130133', '赵县', '130100');
INSERT INTO `sys_area` VALUES ('130181', '辛集市', '130100');
INSERT INTO `sys_area` VALUES ('130182', '藁城市', '130100');
INSERT INTO `sys_area` VALUES ('130183', '晋州市', '130100');
INSERT INTO `sys_area` VALUES ('130184', '新乐市', '130100');
INSERT INTO `sys_area` VALUES ('130185', '鹿泉市', '130100');
INSERT INTO `sys_area` VALUES ('130200', '唐山市', '130000');
INSERT INTO `sys_area` VALUES ('130201', '市辖区', '130200');
INSERT INTO `sys_area` VALUES ('130202', '路南区', '130201');
INSERT INTO `sys_area` VALUES ('130203', '路北区', '130201');
INSERT INTO `sys_area` VALUES ('130204', '古冶区', '130201');
INSERT INTO `sys_area` VALUES ('130205', '开平区', '130201');
INSERT INTO `sys_area` VALUES ('130207', '丰南区', '130201');
INSERT INTO `sys_area` VALUES ('130208', '丰润区', '130201');
INSERT INTO `sys_area` VALUES ('130223', '滦县', '130200');
INSERT INTO `sys_area` VALUES ('130224', '滦南县', '130200');
INSERT INTO `sys_area` VALUES ('130225', '乐亭县', '130200');
INSERT INTO `sys_area` VALUES ('130227', '迁西县', '130200');
INSERT INTO `sys_area` VALUES ('130229', '玉田县', '130200');
INSERT INTO `sys_area` VALUES ('130230', '唐海县', '130200');
INSERT INTO `sys_area` VALUES ('130281', '遵化市', '130200');
INSERT INTO `sys_area` VALUES ('130283', '迁安市', '130200');
INSERT INTO `sys_area` VALUES ('130300', '秦皇岛市', '130000');
INSERT INTO `sys_area` VALUES ('130301', '海港区', '130300');
INSERT INTO `sys_area` VALUES ('130303', '山海关区', '130300');
INSERT INTO `sys_area` VALUES ('130304', '北戴河区', '130300');
INSERT INTO `sys_area` VALUES ('130321', '青龙满族自治县', '130300');
INSERT INTO `sys_area` VALUES ('130322', '昌黎县', '130300');
INSERT INTO `sys_area` VALUES ('130323', '抚宁县', '130300');
INSERT INTO `sys_area` VALUES ('130324', '卢龙县', '130300');
INSERT INTO `sys_area` VALUES ('130400', '邯郸市', '130000');
INSERT INTO `sys_area` VALUES ('130401', '市辖区', '130400');
INSERT INTO `sys_area` VALUES ('130402', '邯山区', '130401');
INSERT INTO `sys_area` VALUES ('130403', '丛台区', '130401');
INSERT INTO `sys_area` VALUES ('130404', '复兴区', '130401');
INSERT INTO `sys_area` VALUES ('130406', '峰峰矿区', '130401');
INSERT INTO `sys_area` VALUES ('130421', '邯郸县', '130400');
INSERT INTO `sys_area` VALUES ('130423', '临漳县', '130400');
INSERT INTO `sys_area` VALUES ('130424', '成安县', '130400');
INSERT INTO `sys_area` VALUES ('130425', '大名县', '130400');
INSERT INTO `sys_area` VALUES ('130426', '涉县', '130400');
INSERT INTO `sys_area` VALUES ('130427', '磁县', '130400');
INSERT INTO `sys_area` VALUES ('130428', '肥乡县', '130400');
INSERT INTO `sys_area` VALUES ('130429', '永年县', '130400');
INSERT INTO `sys_area` VALUES ('130430', '邱县', '130400');
INSERT INTO `sys_area` VALUES ('130431', '鸡泽县', '130400');
INSERT INTO `sys_area` VALUES ('130432', '广平县', '130400');
INSERT INTO `sys_area` VALUES ('130433', '馆陶县', '130400');
INSERT INTO `sys_area` VALUES ('130434', '魏县', '130400');
INSERT INTO `sys_area` VALUES ('130435', '曲周县', '130400');
INSERT INTO `sys_area` VALUES ('130481', '武安市', '130400');
INSERT INTO `sys_area` VALUES ('130500', '邢台市', '130000');
INSERT INTO `sys_area` VALUES ('130501', '市辖区', '130500');
INSERT INTO `sys_area` VALUES ('130502', '桥东区', '130501');
INSERT INTO `sys_area` VALUES ('130503', '桥西区', '130501');
INSERT INTO `sys_area` VALUES ('130521', '邢台县', '130500');
INSERT INTO `sys_area` VALUES ('130522', '临城县', '130500');
INSERT INTO `sys_area` VALUES ('130523', '内丘县', '130500');
INSERT INTO `sys_area` VALUES ('130524', '柏乡县', '130500');
INSERT INTO `sys_area` VALUES ('130525', '隆尧县', '130500');
INSERT INTO `sys_area` VALUES ('130526', '任县', '130500');
INSERT INTO `sys_area` VALUES ('130527', '南和县', '130500');
INSERT INTO `sys_area` VALUES ('130528', '宁晋县', '130500');
INSERT INTO `sys_area` VALUES ('130529', '巨鹿县', '130529');
INSERT INTO `sys_area` VALUES ('130530', '新河县', '130500');
INSERT INTO `sys_area` VALUES ('130531', '广宗县', '130500');
INSERT INTO `sys_area` VALUES ('130532', '平乡县', '130500');
INSERT INTO `sys_area` VALUES ('130533', '威县', '130500');
INSERT INTO `sys_area` VALUES ('130534', '清河县', '130500');
INSERT INTO `sys_area` VALUES ('130535', '临西县', '130500');
INSERT INTO `sys_area` VALUES ('130581', '南宫市', '130500');
INSERT INTO `sys_area` VALUES ('130582', '沙河市', '130500');
INSERT INTO `sys_area` VALUES ('130600', '保定市', '130000');
INSERT INTO `sys_area` VALUES ('130601', '新市区', '130600');
INSERT INTO `sys_area` VALUES ('130603', '北市区', '130600');
INSERT INTO `sys_area` VALUES ('130604', '南市区', '130600');
INSERT INTO `sys_area` VALUES ('130621', '满城县', '130600');
INSERT INTO `sys_area` VALUES ('130622', '清苑县', '130600');
INSERT INTO `sys_area` VALUES ('130623', '涞水县', '130600');
INSERT INTO `sys_area` VALUES ('130624', '阜平县', '130600');
INSERT INTO `sys_area` VALUES ('130625', '徐水县', '130600');
INSERT INTO `sys_area` VALUES ('130626', '定兴县', '130600');
INSERT INTO `sys_area` VALUES ('130627', '唐县', '130600');
INSERT INTO `sys_area` VALUES ('130628', '高阳县', '130600');
INSERT INTO `sys_area` VALUES ('130629', '容城县', '130600');
INSERT INTO `sys_area` VALUES ('130630', '涞源县', '130600');
INSERT INTO `sys_area` VALUES ('130631', '望都县', '130600');
INSERT INTO `sys_area` VALUES ('130632', '安新县', '130600');
INSERT INTO `sys_area` VALUES ('130633', '易县', '130600');
INSERT INTO `sys_area` VALUES ('130634', '曲阳县', '130600');
INSERT INTO `sys_area` VALUES ('130635', '蠡县', '130600');
INSERT INTO `sys_area` VALUES ('130636', '顺平县', '130600');
INSERT INTO `sys_area` VALUES ('130637', '博野县', '130600');
INSERT INTO `sys_area` VALUES ('130638', '雄县', '130600');
INSERT INTO `sys_area` VALUES ('130681', '涿州市', '130600');
INSERT INTO `sys_area` VALUES ('130682', '定州市', '130600');
INSERT INTO `sys_area` VALUES ('130683', '安国市', '130600');
INSERT INTO `sys_area` VALUES ('130684', '高碑店市', '130600');
INSERT INTO `sys_area` VALUES ('130685', '白沟新城县', '130600');
INSERT INTO `sys_area` VALUES ('130700', '张家口市', '130000');
INSERT INTO `sys_area` VALUES ('130701', '市辖区', '130700');
INSERT INTO `sys_area` VALUES ('130702', '桥东区', '130701');
INSERT INTO `sys_area` VALUES ('130703', '桥西区', '130701');
INSERT INTO `sys_area` VALUES ('130705', '宣化区', '130701');
INSERT INTO `sys_area` VALUES ('130706', '下花园区', '130701');
INSERT INTO `sys_area` VALUES ('130721', '宣化县', '130700');
INSERT INTO `sys_area` VALUES ('130722', '张北县', '130700');
INSERT INTO `sys_area` VALUES ('130723', '康保县', '130700');
INSERT INTO `sys_area` VALUES ('130724', '沽源县', '130700');
INSERT INTO `sys_area` VALUES ('130725', '尚义县', '130700');
INSERT INTO `sys_area` VALUES ('130726', '蔚县', '130700');
INSERT INTO `sys_area` VALUES ('130727', '阳原县', '130700');
INSERT INTO `sys_area` VALUES ('130728', '怀安县', '130700');
INSERT INTO `sys_area` VALUES ('130729', '万全县', '130700');
INSERT INTO `sys_area` VALUES ('130730', '怀来县', '130700');
INSERT INTO `sys_area` VALUES ('130731', '涿鹿县', '130700');
INSERT INTO `sys_area` VALUES ('130732', '赤城县', '130700');
INSERT INTO `sys_area` VALUES ('130733', '崇礼县', '130700');
INSERT INTO `sys_area` VALUES ('130800', '承德市', '130000');
INSERT INTO `sys_area` VALUES ('130801', '市辖区', '130800');
INSERT INTO `sys_area` VALUES ('130802', '双桥区', '130801');
INSERT INTO `sys_area` VALUES ('130803', '双滦区', '130801');
INSERT INTO `sys_area` VALUES ('130804', '鹰手营子矿区', '130801');
INSERT INTO `sys_area` VALUES ('130821', '承德县', '130800');
INSERT INTO `sys_area` VALUES ('130822', '兴隆县', '130800');
INSERT INTO `sys_area` VALUES ('130823', '平泉县', '130800');
INSERT INTO `sys_area` VALUES ('130824', '滦平县', '130800');
INSERT INTO `sys_area` VALUES ('130825', '隆化县', '130800');
INSERT INTO `sys_area` VALUES ('130826', '丰宁满族自治县', '130800');
INSERT INTO `sys_area` VALUES ('130827', '宽城满族自治县', '130800');
INSERT INTO `sys_area` VALUES ('130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `sys_area` VALUES ('130900', '沧州市', '130000');
INSERT INTO `sys_area` VALUES ('130901', '市辖区', '130900');
INSERT INTO `sys_area` VALUES ('130902', '新华区', '130901');
INSERT INTO `sys_area` VALUES ('130903', '运河区', '130901');
INSERT INTO `sys_area` VALUES ('130921', '沧县', '130900');
INSERT INTO `sys_area` VALUES ('130922', '青县', '130900');
INSERT INTO `sys_area` VALUES ('130923', '东光县', '130900');
INSERT INTO `sys_area` VALUES ('130924', '海兴县', '130900');
INSERT INTO `sys_area` VALUES ('130925', '盐山县', '130900');
INSERT INTO `sys_area` VALUES ('130926', '肃宁县', '130900');
INSERT INTO `sys_area` VALUES ('130927', '南皮县', '130900');
INSERT INTO `sys_area` VALUES ('130928', '吴桥县', '130900');
INSERT INTO `sys_area` VALUES ('130929', '献县', '130900');
INSERT INTO `sys_area` VALUES ('130930', '孟村回族自治县', '130900');
INSERT INTO `sys_area` VALUES ('130981', '泊头市', '130900');
INSERT INTO `sys_area` VALUES ('130982', '任丘市', '130900');
INSERT INTO `sys_area` VALUES ('130983', '黄骅市', '130900');
INSERT INTO `sys_area` VALUES ('130984', '河间市', '130900');
INSERT INTO `sys_area` VALUES ('131000', '廊坊市', '130000');
INSERT INTO `sys_area` VALUES ('131001', '市辖区', '131000');
INSERT INTO `sys_area` VALUES ('131002', '安次区', '131001');
INSERT INTO `sys_area` VALUES ('131003', '广阳区', '131001');
INSERT INTO `sys_area` VALUES ('131022', '固安县', '131000');
INSERT INTO `sys_area` VALUES ('131023', '永清县', '131000');
INSERT INTO `sys_area` VALUES ('131024', '香河县', '131000');
INSERT INTO `sys_area` VALUES ('131025', '大城县', '131000');
INSERT INTO `sys_area` VALUES ('131026', '文安县', '131000');
INSERT INTO `sys_area` VALUES ('131028', '大厂回族自治县', '131000');
INSERT INTO `sys_area` VALUES ('131081', '霸州市', '131000');
INSERT INTO `sys_area` VALUES ('131082', '三河市', '131000');
INSERT INTO `sys_area` VALUES ('131100', '衡水市', '130000');
INSERT INTO `sys_area` VALUES ('131101', '市辖区', '131100');
INSERT INTO `sys_area` VALUES ('131102', '桃城区', '131101');
INSERT INTO `sys_area` VALUES ('131121', '枣强县', '131100');
INSERT INTO `sys_area` VALUES ('131122', '武邑县', '131100');
INSERT INTO `sys_area` VALUES ('131123', '武强县', '131100');
INSERT INTO `sys_area` VALUES ('131124', '饶阳县', '131100');
INSERT INTO `sys_area` VALUES ('131125', '安平县', '131100');
INSERT INTO `sys_area` VALUES ('131126', '故城县', '131100');
INSERT INTO `sys_area` VALUES ('131127', '景县', '131100');
INSERT INTO `sys_area` VALUES ('131128', '阜城县', '131100');
INSERT INTO `sys_area` VALUES ('131181', '冀州市', '131100');
INSERT INTO `sys_area` VALUES ('131182', '深州市', '131100');
INSERT INTO `sys_area` VALUES ('140000', '山西省', '0');
INSERT INTO `sys_area` VALUES ('140100', '太原市', '140000');
INSERT INTO `sys_area` VALUES ('140101', '市辖区', '140100');
INSERT INTO `sys_area` VALUES ('140105', '小店区', '140101');
INSERT INTO `sys_area` VALUES ('140106', '迎泽区', '140101');
INSERT INTO `sys_area` VALUES ('140107', '杏花岭区', '140101');
INSERT INTO `sys_area` VALUES ('140108', '尖草坪区', '140101');
INSERT INTO `sys_area` VALUES ('140109', '万柏林区', '140101');
INSERT INTO `sys_area` VALUES ('140110', '晋源区', '140101');
INSERT INTO `sys_area` VALUES ('140121', '清徐县', '140100');
INSERT INTO `sys_area` VALUES ('140122', '阳曲县', '140100');
INSERT INTO `sys_area` VALUES ('140123', '娄烦县', '140100');
INSERT INTO `sys_area` VALUES ('140181', '古交市', '140100');
INSERT INTO `sys_area` VALUES ('140200', '大同市', '140000');
INSERT INTO `sys_area` VALUES ('140201', '市辖区', '140200');
INSERT INTO `sys_area` VALUES ('140202', '城区', '140201');
INSERT INTO `sys_area` VALUES ('140203', '矿区', '140201');
INSERT INTO `sys_area` VALUES ('140211', '南郊区', '140201');
INSERT INTO `sys_area` VALUES ('140212', '新荣区', '140201');
INSERT INTO `sys_area` VALUES ('140221', '阳高县', '140200');
INSERT INTO `sys_area` VALUES ('140222', '天镇县', '140200');
INSERT INTO `sys_area` VALUES ('140223', '广灵县', '140200');
INSERT INTO `sys_area` VALUES ('140224', '灵丘县', '140200');
INSERT INTO `sys_area` VALUES ('140225', '浑源县', '140200');
INSERT INTO `sys_area` VALUES ('140226', '左云县', '140200');
INSERT INTO `sys_area` VALUES ('140227', '大同县', '140200');
INSERT INTO `sys_area` VALUES ('140300', '阳泉市', '140000');
INSERT INTO `sys_area` VALUES ('140301', '市辖区', '140300');
INSERT INTO `sys_area` VALUES ('140302', '城区', '140301');
INSERT INTO `sys_area` VALUES ('140303', '矿区', '140301');
INSERT INTO `sys_area` VALUES ('140311', '郊区', '140301');
INSERT INTO `sys_area` VALUES ('140321', '平定县', '140300');
INSERT INTO `sys_area` VALUES ('140322', '盂县', '140300');
INSERT INTO `sys_area` VALUES ('140400', '长治市', '140000');
INSERT INTO `sys_area` VALUES ('140401', '市辖区', '140400');
INSERT INTO `sys_area` VALUES ('140402', '城区', '140401');
INSERT INTO `sys_area` VALUES ('140411', '郊区', '140401');
INSERT INTO `sys_area` VALUES ('140421', '长治县', '140400');
INSERT INTO `sys_area` VALUES ('140423', '襄垣县', '140400');
INSERT INTO `sys_area` VALUES ('140424', '屯留县', '140400');
INSERT INTO `sys_area` VALUES ('140425', '平顺县', '140400');
INSERT INTO `sys_area` VALUES ('140426', '黎城县', '140400');
INSERT INTO `sys_area` VALUES ('140427', '壶关县', '140400');
INSERT INTO `sys_area` VALUES ('140428', '长子县', '140400');
INSERT INTO `sys_area` VALUES ('140429', '武乡县', '140400');
INSERT INTO `sys_area` VALUES ('140430', '沁县', '140400');
INSERT INTO `sys_area` VALUES ('140431', '沁源县', '140400');
INSERT INTO `sys_area` VALUES ('140481', '潞城市', '140400');
INSERT INTO `sys_area` VALUES ('140500', '晋城市', '140000');
INSERT INTO `sys_area` VALUES ('140501', '市辖区', '140500');
INSERT INTO `sys_area` VALUES ('140502', '城区', '140501');
INSERT INTO `sys_area` VALUES ('140521', '沁水县', '140500');
INSERT INTO `sys_area` VALUES ('140522', '阳城县', '140500');
INSERT INTO `sys_area` VALUES ('140524', '陵川县', '140500');
INSERT INTO `sys_area` VALUES ('140525', '泽州县', '140500');
INSERT INTO `sys_area` VALUES ('140581', '高平市', '140500');
INSERT INTO `sys_area` VALUES ('140600', '朔州市', '140000');
INSERT INTO `sys_area` VALUES ('140601', '市辖区', '140600');
INSERT INTO `sys_area` VALUES ('140602', '朔城区', '140601');
INSERT INTO `sys_area` VALUES ('140603', '平鲁区', '140601');
INSERT INTO `sys_area` VALUES ('140621', '山阴县', '140600');
INSERT INTO `sys_area` VALUES ('140622', '应县', '140600');
INSERT INTO `sys_area` VALUES ('140623', '右玉县', '140600');
INSERT INTO `sys_area` VALUES ('140624', '怀仁县', '140600');
INSERT INTO `sys_area` VALUES ('140700', '晋中市', '140000');
INSERT INTO `sys_area` VALUES ('140701', '市辖区', '140700');
INSERT INTO `sys_area` VALUES ('140702', '榆次区', '140701');
INSERT INTO `sys_area` VALUES ('140721', '榆社县', '140700');
INSERT INTO `sys_area` VALUES ('140722', '左权县', '140700');
INSERT INTO `sys_area` VALUES ('140723', '和顺县', '140700');
INSERT INTO `sys_area` VALUES ('140724', '昔阳县', '140700');
INSERT INTO `sys_area` VALUES ('140725', '寿阳县', '140700');
INSERT INTO `sys_area` VALUES ('140726', '太谷县', '140700');
INSERT INTO `sys_area` VALUES ('140727', '祁县', '140700');
INSERT INTO `sys_area` VALUES ('140728', '平遥县', '140700');
INSERT INTO `sys_area` VALUES ('140729', '灵石县', '140700');
INSERT INTO `sys_area` VALUES ('140781', '介休市', '140700');
INSERT INTO `sys_area` VALUES ('140800', '运城市', '140000');
INSERT INTO `sys_area` VALUES ('140801', '市辖区', '140800');
INSERT INTO `sys_area` VALUES ('140802', '盐湖区', '140801');
INSERT INTO `sys_area` VALUES ('140821', '临猗县', '140800');
INSERT INTO `sys_area` VALUES ('140822', '万荣县', '140800');
INSERT INTO `sys_area` VALUES ('140823', '闻喜县', '140800');
INSERT INTO `sys_area` VALUES ('140824', '稷山县', '140800');
INSERT INTO `sys_area` VALUES ('140825', '新绛县', '140800');
INSERT INTO `sys_area` VALUES ('140826', '绛县', '140800');
INSERT INTO `sys_area` VALUES ('140827', '垣曲县', '140800');
INSERT INTO `sys_area` VALUES ('140828', '夏县', '140800');
INSERT INTO `sys_area` VALUES ('140829', '平陆县', '140800');
INSERT INTO `sys_area` VALUES ('140830', '芮城县', '140800');
INSERT INTO `sys_area` VALUES ('140881', '永济市', '140800');
INSERT INTO `sys_area` VALUES ('140882', '河津市', '140800');
INSERT INTO `sys_area` VALUES ('140900', '忻州市', '140000');
INSERT INTO `sys_area` VALUES ('140901', '忻府区', '140900');
INSERT INTO `sys_area` VALUES ('140921', '定襄县', '140900');
INSERT INTO `sys_area` VALUES ('140922', '五台县', '140900');
INSERT INTO `sys_area` VALUES ('140923', '代县', '140900');
INSERT INTO `sys_area` VALUES ('140924', '繁峙县', '140900');
INSERT INTO `sys_area` VALUES ('140925', '宁武县', '140900');
INSERT INTO `sys_area` VALUES ('140926', '静乐县', '140900');
INSERT INTO `sys_area` VALUES ('140927', '神池县', '140900');
INSERT INTO `sys_area` VALUES ('140928', '五寨县', '140900');
INSERT INTO `sys_area` VALUES ('140929', '岢岚县', '140900');
INSERT INTO `sys_area` VALUES ('140930', '河曲县', '140900');
INSERT INTO `sys_area` VALUES ('140931', '保德县', '140900');
INSERT INTO `sys_area` VALUES ('140932', '偏关县', '140900');
INSERT INTO `sys_area` VALUES ('140981', '原平市', '140900');
INSERT INTO `sys_area` VALUES ('141000', '临汾市', '140000');
INSERT INTO `sys_area` VALUES ('141001', '市辖区', '141000');
INSERT INTO `sys_area` VALUES ('141002', '尧都区', '141000');
INSERT INTO `sys_area` VALUES ('141021', '曲沃县', '141000');
INSERT INTO `sys_area` VALUES ('141022', '翼城县', '141000');
INSERT INTO `sys_area` VALUES ('141023', '襄汾县', '141000');
INSERT INTO `sys_area` VALUES ('141024', '洪洞县', '141000');
INSERT INTO `sys_area` VALUES ('141025', '古县', '141000');
INSERT INTO `sys_area` VALUES ('141026', '安泽县', '141000');
INSERT INTO `sys_area` VALUES ('141027', '浮山县', '141000');
INSERT INTO `sys_area` VALUES ('141028', '吉县', '141000');
INSERT INTO `sys_area` VALUES ('141029', '乡宁县', '141000');
INSERT INTO `sys_area` VALUES ('141030', '大宁县', '141000');
INSERT INTO `sys_area` VALUES ('141031', '隰县', '141000');
INSERT INTO `sys_area` VALUES ('141032', '永和县', '141000');
INSERT INTO `sys_area` VALUES ('141033', '蒲县', '141000');
INSERT INTO `sys_area` VALUES ('141034', '汾西县', '141000');
INSERT INTO `sys_area` VALUES ('141081', '侯马市', '141000');
INSERT INTO `sys_area` VALUES ('141082', '霍州市', '141000');
INSERT INTO `sys_area` VALUES ('141100', '吕梁市', '140000');
INSERT INTO `sys_area` VALUES ('141101', '市辖区', '141100');
INSERT INTO `sys_area` VALUES ('141102', '离石区', '141101');
INSERT INTO `sys_area` VALUES ('141121', '文水县', '141100');
INSERT INTO `sys_area` VALUES ('141122', '交城县', '141100');
INSERT INTO `sys_area` VALUES ('141123', '兴县', '141100');
INSERT INTO `sys_area` VALUES ('141124', '临县', '141100');
INSERT INTO `sys_area` VALUES ('141125', '柳林县', '141100');
INSERT INTO `sys_area` VALUES ('141126', '石楼县', '141100');
INSERT INTO `sys_area` VALUES ('141127', '岚县', '141100');
INSERT INTO `sys_area` VALUES ('141128', '方山县', '141100');
INSERT INTO `sys_area` VALUES ('141129', '中阳县', '141100');
INSERT INTO `sys_area` VALUES ('141130', '交口县', '141100');
INSERT INTO `sys_area` VALUES ('141181', '孝义市', '141100');
INSERT INTO `sys_area` VALUES ('141182', '汾阳市', '141100');
INSERT INTO `sys_area` VALUES ('150000', '内蒙古自治区', '0');
INSERT INTO `sys_area` VALUES ('150100', '呼和浩特市', '150000');
INSERT INTO `sys_area` VALUES ('150101', '市辖区', '150100');
INSERT INTO `sys_area` VALUES ('150102', '新城区', '150101');
INSERT INTO `sys_area` VALUES ('150103', '回民区', '150101');
INSERT INTO `sys_area` VALUES ('150104', '玉泉区', '150101');
INSERT INTO `sys_area` VALUES ('150105', '赛罕区', '150101');
INSERT INTO `sys_area` VALUES ('150121', '土默特左旗', '150100');
INSERT INTO `sys_area` VALUES ('150122', '托克托县', '150100');
INSERT INTO `sys_area` VALUES ('150123', '和林格尔县', '150100');
INSERT INTO `sys_area` VALUES ('150124', '清水河县', '150100');
INSERT INTO `sys_area` VALUES ('150125', '武川县', '150100');
INSERT INTO `sys_area` VALUES ('150200', '包头市', '150000');
INSERT INTO `sys_area` VALUES ('150201', '市辖区', '150200');
INSERT INTO `sys_area` VALUES ('150202', '东河区', '150201');
INSERT INTO `sys_area` VALUES ('150203', '昆都仑区', '150201');
INSERT INTO `sys_area` VALUES ('150204', '青山区', '150201');
INSERT INTO `sys_area` VALUES ('150205', '石拐区', '150201');
INSERT INTO `sys_area` VALUES ('150206', '白云矿区', '150201');
INSERT INTO `sys_area` VALUES ('150207', '九原区', '150201');
INSERT INTO `sys_area` VALUES ('150221', '土默特右旗', '150200');
INSERT INTO `sys_area` VALUES ('150222', '固阳县', '150200');
INSERT INTO `sys_area` VALUES ('150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `sys_area` VALUES ('150300', '乌海市', '150000');
INSERT INTO `sys_area` VALUES ('150301', '市辖区', '150300');
INSERT INTO `sys_area` VALUES ('150302', '海勃湾区', '150301');
INSERT INTO `sys_area` VALUES ('150303', '海南区', '150301');
INSERT INTO `sys_area` VALUES ('150304', '乌达区', '150301');
INSERT INTO `sys_area` VALUES ('150400', '赤峰市', '150000');
INSERT INTO `sys_area` VALUES ('150401', '市辖区', '150400');
INSERT INTO `sys_area` VALUES ('150402', '红山区', '150401');
INSERT INTO `sys_area` VALUES ('150403', '元宝山区', '150401');
INSERT INTO `sys_area` VALUES ('150404', '松山区', '150401');
INSERT INTO `sys_area` VALUES ('150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `sys_area` VALUES ('150422', '巴林左旗', '150400');
INSERT INTO `sys_area` VALUES ('150423', '巴林右旗', '150400');
INSERT INTO `sys_area` VALUES ('150424', '林西县', '150400');
INSERT INTO `sys_area` VALUES ('150425', '克什克腾旗', '150400');
INSERT INTO `sys_area` VALUES ('150426', '翁牛特旗', '150400');
INSERT INTO `sys_area` VALUES ('150428', '喀喇沁旗', '150400');
INSERT INTO `sys_area` VALUES ('150429', '宁城县', '150400');
INSERT INTO `sys_area` VALUES ('150430', '敖汉旗', '150400');
INSERT INTO `sys_area` VALUES ('150500', '通辽市', '150000');
INSERT INTO `sys_area` VALUES ('150501', '市辖区', '150500');
INSERT INTO `sys_area` VALUES ('150502', '科尔沁区', '150501');
INSERT INTO `sys_area` VALUES ('150521', '科尔沁左翼中旗', '150500');
INSERT INTO `sys_area` VALUES ('150522', '科尔沁左翼后旗', '150500');
INSERT INTO `sys_area` VALUES ('150523', '开鲁县', '150500');
INSERT INTO `sys_area` VALUES ('150524', '库伦旗', '150500');
INSERT INTO `sys_area` VALUES ('150525', '奈曼旗', '150500');
INSERT INTO `sys_area` VALUES ('150526', '扎鲁特旗', '150500');
INSERT INTO `sys_area` VALUES ('150581', '霍林郭勒市', '150500');
INSERT INTO `sys_area` VALUES ('150600', '鄂尔多斯市', '150000');
INSERT INTO `sys_area` VALUES ('150602', '东胜区', '150600');
INSERT INTO `sys_area` VALUES ('150621', '达拉特旗', '150600');
INSERT INTO `sys_area` VALUES ('150622', '准格尔旗', '150600');
INSERT INTO `sys_area` VALUES ('150623', '鄂托克前旗', '150600');
INSERT INTO `sys_area` VALUES ('150624', '鄂托克旗', '150600');
INSERT INTO `sys_area` VALUES ('150625', '杭锦旗', '150600');
INSERT INTO `sys_area` VALUES ('150626', '乌审旗', '150600');
INSERT INTO `sys_area` VALUES ('150627', '伊金霍洛旗', '150600');
INSERT INTO `sys_area` VALUES ('150700', '呼伦贝尔市', '150000');
INSERT INTO `sys_area` VALUES ('150701', '市辖区', '150700');
INSERT INTO `sys_area` VALUES ('150702', '海拉尔区', '150701');
INSERT INTO `sys_area` VALUES ('150721', '阿荣旗', '150700');
INSERT INTO `sys_area` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `sys_area` VALUES ('150723', '鄂伦春自治旗', '150700');
INSERT INTO `sys_area` VALUES ('150724', '鄂温克族自治旗', '150700');
INSERT INTO `sys_area` VALUES ('150725', '陈巴尔虎旗', '150700');
INSERT INTO `sys_area` VALUES ('150726', '新巴尔虎左旗', '150700');
INSERT INTO `sys_area` VALUES ('150727', '新巴尔虎右旗', '150700');
INSERT INTO `sys_area` VALUES ('150781', '满洲里市', '150700');
INSERT INTO `sys_area` VALUES ('150782', '牙克石市', '150700');
INSERT INTO `sys_area` VALUES ('150783', '扎兰屯市', '150700');
INSERT INTO `sys_area` VALUES ('150784', '额尔古纳市', '150700');
INSERT INTO `sys_area` VALUES ('150785', '根河市', '150700');
INSERT INTO `sys_area` VALUES ('150800', '巴彦淖尔市', '150000');
INSERT INTO `sys_area` VALUES ('150801', '市辖区', '150800');
INSERT INTO `sys_area` VALUES ('150802', '临河区', '150800');
INSERT INTO `sys_area` VALUES ('150821', '五原县', '150800');
INSERT INTO `sys_area` VALUES ('150822', '磴口县', '150800');
INSERT INTO `sys_area` VALUES ('150823', '乌拉特前旗', '150800');
INSERT INTO `sys_area` VALUES ('150824', '乌拉特中旗', '150800');
INSERT INTO `sys_area` VALUES ('150825', '乌拉特后旗', '150800');
INSERT INTO `sys_area` VALUES ('150826', '杭锦后旗', '150800');
INSERT INTO `sys_area` VALUES ('150900', '乌兰察布市', '150000');
INSERT INTO `sys_area` VALUES ('150901', '市辖区', '150900');
INSERT INTO `sys_area` VALUES ('150902', '集宁区', '150901');
INSERT INTO `sys_area` VALUES ('150921', '卓资县', '150900');
INSERT INTO `sys_area` VALUES ('150922', '化德县', '150900');
INSERT INTO `sys_area` VALUES ('150923', '商都县', '150900');
INSERT INTO `sys_area` VALUES ('150924', '兴和县', '150900');
INSERT INTO `sys_area` VALUES ('150925', '凉城县', '150900');
INSERT INTO `sys_area` VALUES ('150926', '察哈尔右翼前旗', '150900');
INSERT INTO `sys_area` VALUES ('150927', '察哈尔右翼中旗', '150900');
INSERT INTO `sys_area` VALUES ('150928', '察哈尔右翼后旗', '150900');
INSERT INTO `sys_area` VALUES ('150929', '四子王旗', '150900');
INSERT INTO `sys_area` VALUES ('150981', '丰镇市', '150900');
INSERT INTO `sys_area` VALUES ('152200', '兴安盟', '150000');
INSERT INTO `sys_area` VALUES ('152201', '乌兰浩特市', '152200');
INSERT INTO `sys_area` VALUES ('152202', '阿尔山市', '152200');
INSERT INTO `sys_area` VALUES ('152221', '科尔沁右翼前旗', '152200');
INSERT INTO `sys_area` VALUES ('152222', '科尔沁右翼中旗', '152200');
INSERT INTO `sys_area` VALUES ('152223', '扎赉特旗', '152200');
INSERT INTO `sys_area` VALUES ('152224', '突泉县', '152200');
INSERT INTO `sys_area` VALUES ('152500', '锡林郭勒盟', '150000');
INSERT INTO `sys_area` VALUES ('152501', '二连浩特市', '152500');
INSERT INTO `sys_area` VALUES ('152502', '锡林浩特市', '152500');
INSERT INTO `sys_area` VALUES ('152522', '阿巴嘎旗', '152500');
INSERT INTO `sys_area` VALUES ('152523', '苏尼特左旗', '152500');
INSERT INTO `sys_area` VALUES ('152524', '苏尼特右旗', '152500');
INSERT INTO `sys_area` VALUES ('152525', '东乌珠穆沁旗', '152500');
INSERT INTO `sys_area` VALUES ('152526', '西乌珠穆沁旗', '152500');
INSERT INTO `sys_area` VALUES ('152527', '太仆寺旗', '152500');
INSERT INTO `sys_area` VALUES ('152528', '镶黄旗', '152500');
INSERT INTO `sys_area` VALUES ('152529', '正镶白旗', '152500');
INSERT INTO `sys_area` VALUES ('152530', '正蓝旗', '152500');
INSERT INTO `sys_area` VALUES ('152531', '多伦县', '152500');
INSERT INTO `sys_area` VALUES ('152900', '阿拉善盟', '150000');
INSERT INTO `sys_area` VALUES ('152921', '阿拉善左旗', '152900');
INSERT INTO `sys_area` VALUES ('152922', '阿拉善右旗', '152900');
INSERT INTO `sys_area` VALUES ('152923', '额济纳旗', '152900');
INSERT INTO `sys_area` VALUES ('210000', '辽宁省', '0');
INSERT INTO `sys_area` VALUES ('210100', '沈阳市', '210000');
INSERT INTO `sys_area` VALUES ('210101', '市辖区', '210100');
INSERT INTO `sys_area` VALUES ('210102', '和平区', '210101');
INSERT INTO `sys_area` VALUES ('210103', '沈河区', '210101');
INSERT INTO `sys_area` VALUES ('210104', '大东区', '210101');
INSERT INTO `sys_area` VALUES ('210105', '皇姑区', '210101');
INSERT INTO `sys_area` VALUES ('210106', '铁西区', '210101');
INSERT INTO `sys_area` VALUES ('210111', '苏家屯区', '210101');
INSERT INTO `sys_area` VALUES ('210112', '东陵区', '210101');
INSERT INTO `sys_area` VALUES ('210113', '新城子区', '210101');
INSERT INTO `sys_area` VALUES ('210114', '于洪区', '210101');
INSERT INTO `sys_area` VALUES ('210122', '辽中县', '210100');
INSERT INTO `sys_area` VALUES ('210123', '康平县', '210100');
INSERT INTO `sys_area` VALUES ('210124', '法库县', '210100');
INSERT INTO `sys_area` VALUES ('210181', '新民市', '210100');
INSERT INTO `sys_area` VALUES ('210182', '沈北新区', '210100');
INSERT INTO `sys_area` VALUES ('210200', '大连市', '210000');
INSERT INTO `sys_area` VALUES ('210201', '市辖区', '210200');
INSERT INTO `sys_area` VALUES ('210202', '中山区', '210201');
INSERT INTO `sys_area` VALUES ('210203', '西岗区', '210201');
INSERT INTO `sys_area` VALUES ('210204', '沙河口区', '210201');
INSERT INTO `sys_area` VALUES ('210211', '甘井子区', '210201');
INSERT INTO `sys_area` VALUES ('210212', '旅顺口区', '210201');
INSERT INTO `sys_area` VALUES ('210213', '金州区', '210201');
INSERT INTO `sys_area` VALUES ('210224', '长海县', '210200');
INSERT INTO `sys_area` VALUES ('210281', '瓦房店市', '210200');
INSERT INTO `sys_area` VALUES ('210282', '普兰店市', '210200');
INSERT INTO `sys_area` VALUES ('210283', '庄河市', '210200');
INSERT INTO `sys_area` VALUES ('210300', '鞍山市', '210000');
INSERT INTO `sys_area` VALUES ('210301', '市辖区', '210300');
INSERT INTO `sys_area` VALUES ('210302', '铁东区', '210301');
INSERT INTO `sys_area` VALUES ('210303', '铁西区', '210301');
INSERT INTO `sys_area` VALUES ('210304', '立山区', '210301');
INSERT INTO `sys_area` VALUES ('210311', '千山区', '210301');
INSERT INTO `sys_area` VALUES ('210321', '台安县', '210300');
INSERT INTO `sys_area` VALUES ('210323', '岫岩满族自治县', '210300');
INSERT INTO `sys_area` VALUES ('210381', '海城市', '210300');
INSERT INTO `sys_area` VALUES ('210400', '抚顺市', '210000');
INSERT INTO `sys_area` VALUES ('210401', '市辖区', '210400');
INSERT INTO `sys_area` VALUES ('210402', '新抚区', '210401');
INSERT INTO `sys_area` VALUES ('210403', '东洲区', '210401');
INSERT INTO `sys_area` VALUES ('210404', '望花区', '210401');
INSERT INTO `sys_area` VALUES ('210411', '顺城区', '210401');
INSERT INTO `sys_area` VALUES ('210421', '抚顺县', '210400');
INSERT INTO `sys_area` VALUES ('210422', '新宾满族自治县', '210400');
INSERT INTO `sys_area` VALUES ('210423', '清原满族自治县', '210400');
INSERT INTO `sys_area` VALUES ('210500', '本溪市', '210000');
INSERT INTO `sys_area` VALUES ('210501', '市辖区', '210500');
INSERT INTO `sys_area` VALUES ('210502', '平山区', '210501');
INSERT INTO `sys_area` VALUES ('210503', '溪湖??', '210501');
INSERT INTO `sys_area` VALUES ('210504', '明山区', '210501');
INSERT INTO `sys_area` VALUES ('210505', '南芬区', '210501');
INSERT INTO `sys_area` VALUES ('210521', '本溪满族自治县', '210500');
INSERT INTO `sys_area` VALUES ('210522', '桓仁满族自治县', '210500');
INSERT INTO `sys_area` VALUES ('210600', '丹东市', '210000');
INSERT INTO `sys_area` VALUES ('210601', '市辖区', '210600');
INSERT INTO `sys_area` VALUES ('210602', '元宝区', '210601');
INSERT INTO `sys_area` VALUES ('210603', '振兴区', '210601');
INSERT INTO `sys_area` VALUES ('210604', '振安区', '210601');
INSERT INTO `sys_area` VALUES ('210624', '宽甸满族自治县', '210600');
INSERT INTO `sys_area` VALUES ('210681', '东港市', '210600');
INSERT INTO `sys_area` VALUES ('210682', '凤城市', '210600');
INSERT INTO `sys_area` VALUES ('210700', '锦州市', '210000');
INSERT INTO `sys_area` VALUES ('210701', '市辖区', '210700');
INSERT INTO `sys_area` VALUES ('210702', '古塔区', '210701');
INSERT INTO `sys_area` VALUES ('210703', '凌河区', '210701');
INSERT INTO `sys_area` VALUES ('210711', '太和区', '210701');
INSERT INTO `sys_area` VALUES ('210726', '黑山县', '210700');
INSERT INTO `sys_area` VALUES ('210727', '义县', '210700');
INSERT INTO `sys_area` VALUES ('210781', '凌海市', '210700');
INSERT INTO `sys_area` VALUES ('210782', '北宁市', '210700');
INSERT INTO `sys_area` VALUES ('210800', '营口市', '210000');
INSERT INTO `sys_area` VALUES ('210801', '市辖区', '210800');
INSERT INTO `sys_area` VALUES ('210802', '站前区', '210801');
INSERT INTO `sys_area` VALUES ('210803', '西市区', '210801');
INSERT INTO `sys_area` VALUES ('210804', '鲅鱼圈区', '210801');
INSERT INTO `sys_area` VALUES ('210811', '老边区', '210801');
INSERT INTO `sys_area` VALUES ('210881', '盖州市', '210800');
INSERT INTO `sys_area` VALUES ('210882', '大石桥市', '210800');
INSERT INTO `sys_area` VALUES ('210900', '阜新市', '210000');
INSERT INTO `sys_area` VALUES ('210901', '市辖区', '210900');
INSERT INTO `sys_area` VALUES ('210902', '海州区', '210901');
INSERT INTO `sys_area` VALUES ('210903', '新邱区', '210901');
INSERT INTO `sys_area` VALUES ('210904', '太平区', '210901');
INSERT INTO `sys_area` VALUES ('210905', '清河门区', '210901');
INSERT INTO `sys_area` VALUES ('210911', '细河区', '210901');
INSERT INTO `sys_area` VALUES ('210921', '阜新蒙古族自治县', '210900');
INSERT INTO `sys_area` VALUES ('210922', '彰武县', '210900');
INSERT INTO `sys_area` VALUES ('211000', '辽阳市', '210000');
INSERT INTO `sys_area` VALUES ('211001', '市辖区', '211000');
INSERT INTO `sys_area` VALUES ('211002', '白塔区', '211001');
INSERT INTO `sys_area` VALUES ('211003', '文圣区', '211001');
INSERT INTO `sys_area` VALUES ('211004', '宏伟区', '211001');
INSERT INTO `sys_area` VALUES ('211005', '弓长岭区', '211001');
INSERT INTO `sys_area` VALUES ('211011', '太子河区', '211001');
INSERT INTO `sys_area` VALUES ('211021', '辽阳县', '211000');
INSERT INTO `sys_area` VALUES ('211081', '灯塔市', '211000');
INSERT INTO `sys_area` VALUES ('211100', '盘锦市', '210000');
INSERT INTO `sys_area` VALUES ('211101', '市辖区', '211100');
INSERT INTO `sys_area` VALUES ('211102', '双台子区', '211101');
INSERT INTO `sys_area` VALUES ('211103', '兴隆台区', '211101');
INSERT INTO `sys_area` VALUES ('211121', '大洼县', '211100');
INSERT INTO `sys_area` VALUES ('211122', '盘山县', '211100');
INSERT INTO `sys_area` VALUES ('211200', '铁岭市', '210000');
INSERT INTO `sys_area` VALUES ('211201', '市辖区', '211200');
INSERT INTO `sys_area` VALUES ('211202', '银州区', '211201');
INSERT INTO `sys_area` VALUES ('211204', '清河区', '211201');
INSERT INTO `sys_area` VALUES ('211221', '铁岭县', '211200');
INSERT INTO `sys_area` VALUES ('211223', '西丰县', '211200');
INSERT INTO `sys_area` VALUES ('211224', '昌图县', '211200');
INSERT INTO `sys_area` VALUES ('211281', '调兵山市', '211200');
INSERT INTO `sys_area` VALUES ('211282', '开原市', '211200');
INSERT INTO `sys_area` VALUES ('211300', '朝阳市', '210000');
INSERT INTO `sys_area` VALUES ('211301', '市辖区', '211300');
INSERT INTO `sys_area` VALUES ('211302', '双塔区', '211301');
INSERT INTO `sys_area` VALUES ('211303', '龙城区', '211301');
INSERT INTO `sys_area` VALUES ('211321', '朝阳县', '211300');
INSERT INTO `sys_area` VALUES ('211322', '建平县', '211300');
INSERT INTO `sys_area` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `sys_area` VALUES ('211381', '北票市', '211300');
INSERT INTO `sys_area` VALUES ('211382', '凌源市', '211300');
INSERT INTO `sys_area` VALUES ('211400', '葫芦岛市', '210000');
INSERT INTO `sys_area` VALUES ('211401', '市辖区', '211400');
INSERT INTO `sys_area` VALUES ('211402', '连山区', '211401');
INSERT INTO `sys_area` VALUES ('211403', '龙港区', '211401');
INSERT INTO `sys_area` VALUES ('211404', '南票区', '211401');
INSERT INTO `sys_area` VALUES ('211421', '绥中县', '211400');
INSERT INTO `sys_area` VALUES ('211422', '建昌县', '211400');
INSERT INTO `sys_area` VALUES ('211481', '兴城市', '211400');
INSERT INTO `sys_area` VALUES ('220000', '吉林省', '0');
INSERT INTO `sys_area` VALUES ('220100', '长春市', '220000');
INSERT INTO `sys_area` VALUES ('220101', '市辖区', '220100');
INSERT INTO `sys_area` VALUES ('220102', '南关区', '220101');
INSERT INTO `sys_area` VALUES ('220103', '宽城区', '220101');
INSERT INTO `sys_area` VALUES ('220104', '朝阳区', '220101');
INSERT INTO `sys_area` VALUES ('220105', '二道区', '220101');
INSERT INTO `sys_area` VALUES ('220106', '绿园区', '220101');
INSERT INTO `sys_area` VALUES ('220112', '双阳区', '220101');
INSERT INTO `sys_area` VALUES ('220122', '农安县', '220100');
INSERT INTO `sys_area` VALUES ('220181', '九台市', '220100');
INSERT INTO `sys_area` VALUES ('220182', '榆树市', '220100');
INSERT INTO `sys_area` VALUES ('220183', '德惠市', '220100');
INSERT INTO `sys_area` VALUES ('220200', '吉林市', '220000');
INSERT INTO `sys_area` VALUES ('220201', '市辖区', '220200');
INSERT INTO `sys_area` VALUES ('220202', '昌邑区', '220201');
INSERT INTO `sys_area` VALUES ('220203', '龙潭区', '220201');
INSERT INTO `sys_area` VALUES ('220204', '船营区', '220201');
INSERT INTO `sys_area` VALUES ('220211', '丰满区', '220201');
INSERT INTO `sys_area` VALUES ('220221', '永吉县', '220200');
INSERT INTO `sys_area` VALUES ('220281', '蛟河市', '220200');
INSERT INTO `sys_area` VALUES ('220282', '桦甸市', '220200');
INSERT INTO `sys_area` VALUES ('220283', '舒兰市', '220200');
INSERT INTO `sys_area` VALUES ('220284', '磐石市', '220200');
INSERT INTO `sys_area` VALUES ('220300', '四平市', '220000');
INSERT INTO `sys_area` VALUES ('220301', '市辖区', '220300');
INSERT INTO `sys_area` VALUES ('220302', '铁西区', '220301');
INSERT INTO `sys_area` VALUES ('220303', '铁东区', '220301');
INSERT INTO `sys_area` VALUES ('220322', '梨树县', '220300');
INSERT INTO `sys_area` VALUES ('220323', '伊通满族自治县', '220300');
INSERT INTO `sys_area` VALUES ('220381', '公主岭市', '220300');
INSERT INTO `sys_area` VALUES ('220382', '双辽市', '220300');
INSERT INTO `sys_area` VALUES ('220400', '辽源市', '220000');
INSERT INTO `sys_area` VALUES ('220401', '市辖区', '220400');
INSERT INTO `sys_area` VALUES ('220402', '龙山区', '220401');
INSERT INTO `sys_area` VALUES ('220403', '西安区', '220401');
INSERT INTO `sys_area` VALUES ('220421', '东丰县', '220400');
INSERT INTO `sys_area` VALUES ('220422', '东辽县', '220400');
INSERT INTO `sys_area` VALUES ('220500', '通化市', '220000');
INSERT INTO `sys_area` VALUES ('220501', '市辖区', '220500');
INSERT INTO `sys_area` VALUES ('220502', '东昌区', '220501');
INSERT INTO `sys_area` VALUES ('220503', '二道江区', '220501');
INSERT INTO `sys_area` VALUES ('220521', '通化县', '220500');
INSERT INTO `sys_area` VALUES ('220523', '辉南县', '220500');
INSERT INTO `sys_area` VALUES ('220524', '柳河县', '220500');
INSERT INTO `sys_area` VALUES ('220581', '梅河口市', '220500');
INSERT INTO `sys_area` VALUES ('220582', '集安市', '220500');
INSERT INTO `sys_area` VALUES ('220600', '白山市', '220000');
INSERT INTO `sys_area` VALUES ('220601', '市辖区', '220600');
INSERT INTO `sys_area` VALUES ('220602', '八道江区', '220601');
INSERT INTO `sys_area` VALUES ('220621', '抚松县', '220600');
INSERT INTO `sys_area` VALUES ('220622', '靖宇县', '220600');
INSERT INTO `sys_area` VALUES ('220623', '长白朝鲜族自治县', '220600');
INSERT INTO `sys_area` VALUES ('220625', '江源区', '220600');
INSERT INTO `sys_area` VALUES ('220681', '临江市', '220600');
INSERT INTO `sys_area` VALUES ('220700', '松原市', '220000');
INSERT INTO `sys_area` VALUES ('220701', '市辖区', '220700');
INSERT INTO `sys_area` VALUES ('220702', '宁江区', '220701');
INSERT INTO `sys_area` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `sys_area` VALUES ('220722', '长岭县', '220700');
INSERT INTO `sys_area` VALUES ('220723', '乾安县', '220700');
INSERT INTO `sys_area` VALUES ('220724', '扶余市', '220700');
INSERT INTO `sys_area` VALUES ('220800', '白城市', '220000');
INSERT INTO `sys_area` VALUES ('220801', '市辖区', '220800');
INSERT INTO `sys_area` VALUES ('220802', '洮北区', '220800');
INSERT INTO `sys_area` VALUES ('220821', '镇赉县', '220800');
INSERT INTO `sys_area` VALUES ('220822', '通榆县', '220800');
INSERT INTO `sys_area` VALUES ('220881', '洮南市', '220800');
INSERT INTO `sys_area` VALUES ('220882', '大安市', '220800');
INSERT INTO `sys_area` VALUES ('222400', '延边朝鲜族自治州', '220000');
INSERT INTO `sys_area` VALUES ('222401', '延吉市', '222400');
INSERT INTO `sys_area` VALUES ('222402', '图们市', '222400');
INSERT INTO `sys_area` VALUES ('222403', '敦化市', '222400');
INSERT INTO `sys_area` VALUES ('222404', '珲春市', '222400');
INSERT INTO `sys_area` VALUES ('222405', '龙井市', '222400');
INSERT INTO `sys_area` VALUES ('222406', '和龙市', '222400');
INSERT INTO `sys_area` VALUES ('222424', '汪清县', '222400');
INSERT INTO `sys_area` VALUES ('222426', '安图县', '222400');
INSERT INTO `sys_area` VALUES ('230000', '黑龙江省', '0');
INSERT INTO `sys_area` VALUES ('230100', '哈尔滨市', '230000');
INSERT INTO `sys_area` VALUES ('230101', '市辖区', '230100');
INSERT INTO `sys_area` VALUES ('230102', '道里区', '230101');
INSERT INTO `sys_area` VALUES ('230103', '南岗区', '230101');
INSERT INTO `sys_area` VALUES ('230104', '道外区', '230101');
INSERT INTO `sys_area` VALUES ('230106', '香坊区', '230101');
INSERT INTO `sys_area` VALUES ('230107', '动力区', '230101');
INSERT INTO `sys_area` VALUES ('230108', '平房区', '230101');
INSERT INTO `sys_area` VALUES ('230109', '松北区', '230101');
INSERT INTO `sys_area` VALUES ('230111', '呼兰区', '230101');
INSERT INTO `sys_area` VALUES ('230123', '依兰县', '230100');
INSERT INTO `sys_area` VALUES ('230124', '方正县', '230100');
INSERT INTO `sys_area` VALUES ('230125', '宾县', '230100');
INSERT INTO `sys_area` VALUES ('230126', '巴彦县', '230100');
INSERT INTO `sys_area` VALUES ('230127', '木兰县', '230100');
INSERT INTO `sys_area` VALUES ('230128', '通河县', '230100');
INSERT INTO `sys_area` VALUES ('230129', '延寿县', '230100');
INSERT INTO `sys_area` VALUES ('230181', '阿城市', '230100');
INSERT INTO `sys_area` VALUES ('230182', '双城市', '230100');
INSERT INTO `sys_area` VALUES ('230183', '尚志市', '230100');
INSERT INTO `sys_area` VALUES ('230184', '五常市', '230100');
INSERT INTO `sys_area` VALUES ('230200', '齐齐哈尔市', '230000');
INSERT INTO `sys_area` VALUES ('230201', '市辖区', '230200');
INSERT INTO `sys_area` VALUES ('230202', '龙沙区', '230201');
INSERT INTO `sys_area` VALUES ('230203', '建华区', '230201');
INSERT INTO `sys_area` VALUES ('230204', '铁锋区', '230201');
INSERT INTO `sys_area` VALUES ('230205', '昂昂溪区', '230201');
INSERT INTO `sys_area` VALUES ('230206', '富拉尔基区', '230201');
INSERT INTO `sys_area` VALUES ('230207', '碾子山区', '230201');
INSERT INTO `sys_area` VALUES ('230208', '梅里斯达斡尔族区', '230201');
INSERT INTO `sys_area` VALUES ('230221', '龙江县', '230200');
INSERT INTO `sys_area` VALUES ('230223', '依安县', '230200');
INSERT INTO `sys_area` VALUES ('230224', '泰来县', '230200');
INSERT INTO `sys_area` VALUES ('230225', '甘南县', '230200');
INSERT INTO `sys_area` VALUES ('230227', '富裕县', '230200');
INSERT INTO `sys_area` VALUES ('230229', '克山县', '230200');
INSERT INTO `sys_area` VALUES ('230230', '克东县', '230200');
INSERT INTO `sys_area` VALUES ('230231', '拜泉县', '230200');
INSERT INTO `sys_area` VALUES ('230281', '讷河市', '230200');
INSERT INTO `sys_area` VALUES ('230300', '鸡西市', '230000');
INSERT INTO `sys_area` VALUES ('230301', '市辖区', '230300');
INSERT INTO `sys_area` VALUES ('230302', '鸡冠区', '230301');
INSERT INTO `sys_area` VALUES ('230303', '恒山区', '230301');
INSERT INTO `sys_area` VALUES ('230304', '滴道区', '230301');
INSERT INTO `sys_area` VALUES ('230305', '梨树区', '230301');
INSERT INTO `sys_area` VALUES ('230306', '城子河区', '230301');
INSERT INTO `sys_area` VALUES ('230307', '麻山区', '230301');
INSERT INTO `sys_area` VALUES ('230321', '鸡东县', '230300');
INSERT INTO `sys_area` VALUES ('230381', '虎林市', '230300');
INSERT INTO `sys_area` VALUES ('230382', '密山市', '230300');
INSERT INTO `sys_area` VALUES ('230400', '鹤岗市', '230000');
INSERT INTO `sys_area` VALUES ('230401', '市辖区', '230400');
INSERT INTO `sys_area` VALUES ('230402', '向阳区', '230401');
INSERT INTO `sys_area` VALUES ('230403', '工农区', '230401');
INSERT INTO `sys_area` VALUES ('230404', '南山区', '230401');
INSERT INTO `sys_area` VALUES ('230405', '兴安区', '230401');
INSERT INTO `sys_area` VALUES ('230406', '东山区', '230401');
INSERT INTO `sys_area` VALUES ('230407', '兴山区', '230401');
INSERT INTO `sys_area` VALUES ('230421', '萝北县', '230400');
INSERT INTO `sys_area` VALUES ('230422', '绥滨县', '230400');
INSERT INTO `sys_area` VALUES ('230500', '双鸭山市', '230000');
INSERT INTO `sys_area` VALUES ('230501', '市辖区', '230500');
INSERT INTO `sys_area` VALUES ('230502', '尖山区', '230501');
INSERT INTO `sys_area` VALUES ('230503', '岭东区', '230501');
INSERT INTO `sys_area` VALUES ('230505', '四方台区', '230501');
INSERT INTO `sys_area` VALUES ('230506', '宝山区', '230501');
INSERT INTO `sys_area` VALUES ('230521', '集贤县', '230500');
INSERT INTO `sys_area` VALUES ('230522', '友谊县', '230500');
INSERT INTO `sys_area` VALUES ('230523', '宝清县', '230500');
INSERT INTO `sys_area` VALUES ('230524', '饶河县', '230500');
INSERT INTO `sys_area` VALUES ('230600', '大庆市', '230000');
INSERT INTO `sys_area` VALUES ('230601', '市辖区', '230600');
INSERT INTO `sys_area` VALUES ('230602', '萨尔图区', '230601');
INSERT INTO `sys_area` VALUES ('230603', '龙凤区', '230601');
INSERT INTO `sys_area` VALUES ('230604', '让胡路区', '230601');
INSERT INTO `sys_area` VALUES ('230605', '红岗区', '230601');
INSERT INTO `sys_area` VALUES ('230606', '大同区', '230601');
INSERT INTO `sys_area` VALUES ('230621', '肇州县', '230600');
INSERT INTO `sys_area` VALUES ('230622', '肇源县', '230600');
INSERT INTO `sys_area` VALUES ('230623', '林甸县', '230600');
INSERT INTO `sys_area` VALUES ('230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `sys_area` VALUES ('230700', '伊春市', '230000');
INSERT INTO `sys_area` VALUES ('230701', '市辖区', '230700');
INSERT INTO `sys_area` VALUES ('230702', '伊春区', '230701');
INSERT INTO `sys_area` VALUES ('230703', '南岔区', '230701');
INSERT INTO `sys_area` VALUES ('230704', '友好区', '230701');
INSERT INTO `sys_area` VALUES ('230705', '西林区', '230701');
INSERT INTO `sys_area` VALUES ('230706', '翠峦区', '230701');
INSERT INTO `sys_area` VALUES ('230707', '新青区', '230701');
INSERT INTO `sys_area` VALUES ('230708', '美溪区', '230701');
INSERT INTO `sys_area` VALUES ('230709', '金山屯区', '230701');
INSERT INTO `sys_area` VALUES ('230710', '五营区', '230701');
INSERT INTO `sys_area` VALUES ('230711', '乌马河区', '230701');
INSERT INTO `sys_area` VALUES ('230712', '汤旺河区', '230701');
INSERT INTO `sys_area` VALUES ('230713', '带岭区', '230701');
INSERT INTO `sys_area` VALUES ('230714', '乌伊岭区', '230701');
INSERT INTO `sys_area` VALUES ('230715', '红星区', '230701');
INSERT INTO `sys_area` VALUES ('230716', '上甘岭区', '230701');
INSERT INTO `sys_area` VALUES ('230722', '嘉荫县', '230700');
INSERT INTO `sys_area` VALUES ('230781', '铁力市', '230700');
INSERT INTO `sys_area` VALUES ('230800', '佳木斯市', '230000');
INSERT INTO `sys_area` VALUES ('230801', '市辖区', '230800');
INSERT INTO `sys_area` VALUES ('230803', '向阳区', '230801');
INSERT INTO `sys_area` VALUES ('230804', '前进区', '230801');
INSERT INTO `sys_area` VALUES ('230805', '东风区', '230801');
INSERT INTO `sys_area` VALUES ('230811', '郊区', '230801');
INSERT INTO `sys_area` VALUES ('230822', '桦南县', '230800');
INSERT INTO `sys_area` VALUES ('230826', '桦川县', '230800');
INSERT INTO `sys_area` VALUES ('230828', '汤原县', '230800');
INSERT INTO `sys_area` VALUES ('230833', '抚远县', '230800');
INSERT INTO `sys_area` VALUES ('230881', '同江市', '230800');
INSERT INTO `sys_area` VALUES ('230882', '富锦市', '230800');
INSERT INTO `sys_area` VALUES ('230900', '七台河市', '230000');
INSERT INTO `sys_area` VALUES ('230901', '市辖区', '230900');
INSERT INTO `sys_area` VALUES ('230902', '新兴区', '230901');
INSERT INTO `sys_area` VALUES ('230903', '桃山区', '230901');
INSERT INTO `sys_area` VALUES ('230904', '茄子河区', '230901');
INSERT INTO `sys_area` VALUES ('230921', '勃利县', '230900');
INSERT INTO `sys_area` VALUES ('231000', '牡丹江市', '230000');
INSERT INTO `sys_area` VALUES ('231001', '市辖区', '231000');
INSERT INTO `sys_area` VALUES ('231002', '东安区', '231001');
INSERT INTO `sys_area` VALUES ('231003', '阳明区', '231001');
INSERT INTO `sys_area` VALUES ('231004', '爱民区', '231001');
INSERT INTO `sys_area` VALUES ('231005', '西安区', '231001');
INSERT INTO `sys_area` VALUES ('231024', '东宁县', '231000');
INSERT INTO `sys_area` VALUES ('231025', '林口县', '231000');
INSERT INTO `sys_area` VALUES ('231081', '绥芬河市', '231000');
INSERT INTO `sys_area` VALUES ('231083', '海林市', '231000');
INSERT INTO `sys_area` VALUES ('231084', '宁安市', '231000');
INSERT INTO `sys_area` VALUES ('231085', '穆棱市', '231000');
INSERT INTO `sys_area` VALUES ('231100', '黑河市', '230000');
INSERT INTO `sys_area` VALUES ('231101', '市辖区', '231100');
INSERT INTO `sys_area` VALUES ('231102', '爱辉区', '231101');
INSERT INTO `sys_area` VALUES ('231121', '嫩江县', '231100');
INSERT INTO `sys_area` VALUES ('231123', '逊克县', '231100');
INSERT INTO `sys_area` VALUES ('231124', '孙吴县', '231100');
INSERT INTO `sys_area` VALUES ('231181', '北安市', '231100');
INSERT INTO `sys_area` VALUES ('231182', '五大连池市', '231100');
INSERT INTO `sys_area` VALUES ('231200', '绥化市', '230000');
INSERT INTO `sys_area` VALUES ('231201', '北林区', '231200');
INSERT INTO `sys_area` VALUES ('231221', '望奎县', '231200');
INSERT INTO `sys_area` VALUES ('231222', '兰西县', '231200');
INSERT INTO `sys_area` VALUES ('231223', '青冈县', '231200');
INSERT INTO `sys_area` VALUES ('231224', '庆安县', '231200');
INSERT INTO `sys_area` VALUES ('231225', '明水县', '231200');
INSERT INTO `sys_area` VALUES ('231226', '绥棱县', '231200');
INSERT INTO `sys_area` VALUES ('231281', '安达市', '231200');
INSERT INTO `sys_area` VALUES ('231282', '肇东市', '231200');
INSERT INTO `sys_area` VALUES ('231283', '海伦市', '231200');
INSERT INTO `sys_area` VALUES ('232700', '大兴安岭地区', '230000');
INSERT INTO `sys_area` VALUES ('232701', '加格达奇区', '232700');
INSERT INTO `sys_area` VALUES ('232702', '松岭区', '232700');
INSERT INTO `sys_area` VALUES ('232703', '新林区', '232700');
INSERT INTO `sys_area` VALUES ('232704', '呼中区', '232700');
INSERT INTO `sys_area` VALUES ('232721', '呼玛县', '232700');
INSERT INTO `sys_area` VALUES ('232722', '塔河县', '232700');
INSERT INTO `sys_area` VALUES ('232723', '漠河县', '232700');
INSERT INTO `sys_area` VALUES ('310000', '上海市', '0');
INSERT INTO `sys_area` VALUES ('310100', '黄浦区', '310000');
INSERT INTO `sys_area` VALUES ('310300', '卢湾区', '310000');
INSERT INTO `sys_area` VALUES ('310400', '徐汇区', '310000');
INSERT INTO `sys_area` VALUES ('310500', '长宁区', '310000');
INSERT INTO `sys_area` VALUES ('310600', '静安区', '310000');
INSERT INTO `sys_area` VALUES ('310700', '普陀区', '310000');
INSERT INTO `sys_area` VALUES ('310800', '闸北区', '310000');
INSERT INTO `sys_area` VALUES ('310900', '虹口区', '310000');
INSERT INTO `sys_area` VALUES ('311000', '杨浦区', '310000');
INSERT INTO `sys_area` VALUES ('311200', '闵行区', '310000');
INSERT INTO `sys_area` VALUES ('311300', '宝山区', '310000');
INSERT INTO `sys_area` VALUES ('311400', '嘉定区', '310000');
INSERT INTO `sys_area` VALUES ('311500', '浦东新区', '310000');
INSERT INTO `sys_area` VALUES ('311600', '金山区', '310000');
INSERT INTO `sys_area` VALUES ('311700', '松江区', '310000');
INSERT INTO `sys_area` VALUES ('311800', '青浦区', '310000');
INSERT INTO `sys_area` VALUES ('311900', '南汇区', '310000');
INSERT INTO `sys_area` VALUES ('312000', '奉贤区', '310000');
INSERT INTO `sys_area` VALUES ('313000', '崇明县', '310000');
INSERT INTO `sys_area` VALUES ('320000', '江苏省', '0');
INSERT INTO `sys_area` VALUES ('320100', '南京市', '320000');
INSERT INTO `sys_area` VALUES ('320101', '市辖区', '320100');
INSERT INTO `sys_area` VALUES ('320102', '玄武区', '320101');
INSERT INTO `sys_area` VALUES ('320103', '白下区', '320101');
INSERT INTO `sys_area` VALUES ('320104', '秦淮区', '320101');
INSERT INTO `sys_area` VALUES ('320105', '建邺区', '320101');
INSERT INTO `sys_area` VALUES ('320106', '鼓楼区', '320101');
INSERT INTO `sys_area` VALUES ('320107', '下关区', '320101');
INSERT INTO `sys_area` VALUES ('320111', '浦口区', '320101');
INSERT INTO `sys_area` VALUES ('320113', '栖霞区', '320101');
INSERT INTO `sys_area` VALUES ('320114', '雨花台区', '320101');
INSERT INTO `sys_area` VALUES ('320115', '江宁区', '320101');
INSERT INTO `sys_area` VALUES ('320116', '六合区', '320101');
INSERT INTO `sys_area` VALUES ('320124', '溧水区', '320100');
INSERT INTO `sys_area` VALUES ('320125', '高淳区', '320100');
INSERT INTO `sys_area` VALUES ('320200', '无锡市', '320000');
INSERT INTO `sys_area` VALUES ('320201', '市辖区', '320200');
INSERT INTO `sys_area` VALUES ('320202', '崇安区', '320201');
INSERT INTO `sys_area` VALUES ('320203', '南长区', '320201');
INSERT INTO `sys_area` VALUES ('320204', '北塘区', '320201');
INSERT INTO `sys_area` VALUES ('320205', '锡山区', '320201');
INSERT INTO `sys_area` VALUES ('320206', '惠山区', '320201');
INSERT INTO `sys_area` VALUES ('320211', '滨湖区', '320201');
INSERT INTO `sys_area` VALUES ('320281', '江阴市', '320200');
INSERT INTO `sys_area` VALUES ('320282', '宜兴市', '320200');
INSERT INTO `sys_area` VALUES ('320300', '徐州市', '320000');
INSERT INTO `sys_area` VALUES ('320301', '泉山区', '320300');
INSERT INTO `sys_area` VALUES ('320302', '鼓楼区', '320300');
INSERT INTO `sys_area` VALUES ('320303', '云龙区', '320300');
INSERT INTO `sys_area` VALUES ('320304', '九里区', '320301');
INSERT INTO `sys_area` VALUES ('320305', '贾汪区', '320300');
INSERT INTO `sys_area` VALUES ('320321', '丰县', '320300');
INSERT INTO `sys_area` VALUES ('320322', '沛县', '320300');
INSERT INTO `sys_area` VALUES ('320323', '铜山县', '320300');
INSERT INTO `sys_area` VALUES ('320324', '睢宁县', '320300');
INSERT INTO `sys_area` VALUES ('320381', '新沂市', '320300');
INSERT INTO `sys_area` VALUES ('320382', '邳州市', '320300');
INSERT INTO `sys_area` VALUES ('320400', '常州市', '320000');
INSERT INTO `sys_area` VALUES ('320401', '市辖区', '320400');
INSERT INTO `sys_area` VALUES ('320402', '天宁区', '320401');
INSERT INTO `sys_area` VALUES ('320404', '钟楼区', '320401');
INSERT INTO `sys_area` VALUES ('320405', '戚墅堰区', '320401');
INSERT INTO `sys_area` VALUES ('320411', '新北区', '320401');
INSERT INTO `sys_area` VALUES ('320412', '武进区', '320401');
INSERT INTO `sys_area` VALUES ('320481', '溧阳市', '320400');
INSERT INTO `sys_area` VALUES ('320482', '金坛市', '320400');
INSERT INTO `sys_area` VALUES ('320500', '苏州市', '320000');
INSERT INTO `sys_area` VALUES ('320501', '市辖区', '320500');
INSERT INTO `sys_area` VALUES ('320502', '沧浪区', '320501');
INSERT INTO `sys_area` VALUES ('320503', '平江区', '320501');
INSERT INTO `sys_area` VALUES ('320504', '金阊区', '320501');
INSERT INTO `sys_area` VALUES ('320505', '虎丘区', '320501');
INSERT INTO `sys_area` VALUES ('320506', '吴中区', '320501');
INSERT INTO `sys_area` VALUES ('320507', '相城区', '320501');
INSERT INTO `sys_area` VALUES ('320581', '常熟市', '320500');
INSERT INTO `sys_area` VALUES ('320582', '张家港市', '320500');
INSERT INTO `sys_area` VALUES ('320583', '昆山市', '320500');
INSERT INTO `sys_area` VALUES ('320584', '吴江市', '320500');
INSERT INTO `sys_area` VALUES ('320585', '太仓市', '320500');
INSERT INTO `sys_area` VALUES ('320600', '南通市', '320000');
INSERT INTO `sys_area` VALUES ('320601', '市辖区', '320600');
INSERT INTO `sys_area` VALUES ('320602', '崇川区', '320601');
INSERT INTO `sys_area` VALUES ('320611', '港闸区', '320601');
INSERT INTO `sys_area` VALUES ('320621', '海安县', '320600');
INSERT INTO `sys_area` VALUES ('320623', '如东县', '320600');
INSERT INTO `sys_area` VALUES ('320681', '启东市', '320600');
INSERT INTO `sys_area` VALUES ('320682', '如皋市', '320600');
INSERT INTO `sys_area` VALUES ('320683', '通州市', '320600');
INSERT INTO `sys_area` VALUES ('320684', '海门市', '320600');
INSERT INTO `sys_area` VALUES ('320700', '连云港市', '320000');
INSERT INTO `sys_area` VALUES ('320701', '市辖区', '320700');
INSERT INTO `sys_area` VALUES ('320703', '连云区', '320701');
INSERT INTO `sys_area` VALUES ('320705', '新浦区', '320701');
INSERT INTO `sys_area` VALUES ('320706', '海州区', '320701');
INSERT INTO `sys_area` VALUES ('320721', '赣榆县', '320700');
INSERT INTO `sys_area` VALUES ('320722', '东海县', '320700');
INSERT INTO `sys_area` VALUES ('320723', '灌云县', '320700');
INSERT INTO `sys_area` VALUES ('320724', '灌南县', '320700');
INSERT INTO `sys_area` VALUES ('320800', '淮安市', '320000');
INSERT INTO `sys_area` VALUES ('320801', '市辖区', '320800');
INSERT INTO `sys_area` VALUES ('320802', '清河区', '320801');
INSERT INTO `sys_area` VALUES ('320803', '楚州区', '320801');
INSERT INTO `sys_area` VALUES ('320804', '淮阴区', '320801');
INSERT INTO `sys_area` VALUES ('320811', '清浦区', '320801');
INSERT INTO `sys_area` VALUES ('320826', '涟水县', '320800');
INSERT INTO `sys_area` VALUES ('320829', '洪泽县', '320800');
INSERT INTO `sys_area` VALUES ('320830', '盱眙县', '320800');
INSERT INTO `sys_area` VALUES ('320831', '金湖县', '320800');
INSERT INTO `sys_area` VALUES ('320900', '盐城市', '320000');
INSERT INTO `sys_area` VALUES ('320901', '市辖区', '320900');
INSERT INTO `sys_area` VALUES ('320902', '亭湖区', '320901');
INSERT INTO `sys_area` VALUES ('320903', '盐都区', '320901');
INSERT INTO `sys_area` VALUES ('320921', '响水县', '320900');
INSERT INTO `sys_area` VALUES ('320922', '滨海县', '320900');
INSERT INTO `sys_area` VALUES ('320923', '阜宁县', '320900');
INSERT INTO `sys_area` VALUES ('320924', '射阳县', '320900');
INSERT INTO `sys_area` VALUES ('320925', '建湖县', '320900');
INSERT INTO `sys_area` VALUES ('320981', '东台市', '320900');
INSERT INTO `sys_area` VALUES ('320982', '大丰市', '320900');
INSERT INTO `sys_area` VALUES ('321000', '扬州市', '320000');
INSERT INTO `sys_area` VALUES ('321001', '市辖区', '321000');
INSERT INTO `sys_area` VALUES ('321002', '广陵区', '321001');
INSERT INTO `sys_area` VALUES ('321003', '邗江区', '321001');
INSERT INTO `sys_area` VALUES ('321011', '维扬区', '321001');
INSERT INTO `sys_area` VALUES ('321023', '宝应县', '321000');
INSERT INTO `sys_area` VALUES ('321081', '仪征市', '321000');
INSERT INTO `sys_area` VALUES ('321084', '高邮市', '321000');
INSERT INTO `sys_area` VALUES ('321088', '江都市', '321000');
INSERT INTO `sys_area` VALUES ('321100', '镇江市', '320000');
INSERT INTO `sys_area` VALUES ('321101', '市辖区', '321100');
INSERT INTO `sys_area` VALUES ('321102', '京口区', '321101');
INSERT INTO `sys_area` VALUES ('321111', '润州区', '321101');
INSERT INTO `sys_area` VALUES ('321112', '丹徒区', '321101');
INSERT INTO `sys_area` VALUES ('321181', '丹阳市', '321100');
INSERT INTO `sys_area` VALUES ('321182', '扬中市', '321100');
INSERT INTO `sys_area` VALUES ('321183', '句容市', '321100');
INSERT INTO `sys_area` VALUES ('321200', '泰州市', '320000');
INSERT INTO `sys_area` VALUES ('321201', '市辖区', '321200');
INSERT INTO `sys_area` VALUES ('321202', '海陵区', '321201');
INSERT INTO `sys_area` VALUES ('321203', '高港区', '321201');
INSERT INTO `sys_area` VALUES ('321281', '兴化市', '321200');
INSERT INTO `sys_area` VALUES ('321282', '靖江市', '321200');
INSERT INTO `sys_area` VALUES ('321283', '泰兴市', '321200');
INSERT INTO `sys_area` VALUES ('321284', '姜堰市', '321200');
INSERT INTO `sys_area` VALUES ('321300', '宿迁市', '320000');
INSERT INTO `sys_area` VALUES ('321301', '市辖区', '321300');
INSERT INTO `sys_area` VALUES ('321302', '宿城区', '321301');
INSERT INTO `sys_area` VALUES ('321311', '宿豫区', '321301');
INSERT INTO `sys_area` VALUES ('321322', '沭阳县', '321300');
INSERT INTO `sys_area` VALUES ('321323', '泗阳县', '321300');
INSERT INTO `sys_area` VALUES ('321324', '泗洪县', '321300');
INSERT INTO `sys_area` VALUES ('330000', '浙江省', '0');
INSERT INTO `sys_area` VALUES ('330100', '杭州市', '330000');
INSERT INTO `sys_area` VALUES ('330101', '市辖区', '330100');
INSERT INTO `sys_area` VALUES ('330102', '上城区', '330101');
INSERT INTO `sys_area` VALUES ('330103', '下城区', '330101');
INSERT INTO `sys_area` VALUES ('330104', '江干区', '330101');
INSERT INTO `sys_area` VALUES ('330105', '拱墅区', '330101');
INSERT INTO `sys_area` VALUES ('330106', '西湖区', '330101');
INSERT INTO `sys_area` VALUES ('330108', '滨江区', '330101');
INSERT INTO `sys_area` VALUES ('330109', '萧山区', '330101');
INSERT INTO `sys_area` VALUES ('330110', '余杭区', '330101');
INSERT INTO `sys_area` VALUES ('330122', '桐庐县', '330100');
INSERT INTO `sys_area` VALUES ('330127', '淳安县', '330100');
INSERT INTO `sys_area` VALUES ('330182', '建德市', '330100');
INSERT INTO `sys_area` VALUES ('330183', '富阳市', '330100');
INSERT INTO `sys_area` VALUES ('330185', '临安市', '330100');
INSERT INTO `sys_area` VALUES ('330200', '宁波市', '330000');
INSERT INTO `sys_area` VALUES ('330201', '市辖区', '330200');
INSERT INTO `sys_area` VALUES ('330203', '海曙区', '330201');
INSERT INTO `sys_area` VALUES ('330204', '江东区', '330201');
INSERT INTO `sys_area` VALUES ('330205', '江北区', '330201');
INSERT INTO `sys_area` VALUES ('330206', '北仑区', '330201');
INSERT INTO `sys_area` VALUES ('330211', '镇海区', '330201');
INSERT INTO `sys_area` VALUES ('330212', '鄞州区', '330201');
INSERT INTO `sys_area` VALUES ('330225', '象山县', '330200');
INSERT INTO `sys_area` VALUES ('330226', '宁海县', '330200');
INSERT INTO `sys_area` VALUES ('330281', '余姚市', '330200');
INSERT INTO `sys_area` VALUES ('330282', '慈溪市', '330200');
INSERT INTO `sys_area` VALUES ('330283', '奉化市', '330200');
INSERT INTO `sys_area` VALUES ('330300', '温州市', '330000');
INSERT INTO `sys_area` VALUES ('330301', '市辖区', '330300');
INSERT INTO `sys_area` VALUES ('330302', '鹿城区', '330301');
INSERT INTO `sys_area` VALUES ('330303', '龙湾区', '330301');
INSERT INTO `sys_area` VALUES ('330304', '瓯海区', '330301');
INSERT INTO `sys_area` VALUES ('330322', '洞头县', '330300');
INSERT INTO `sys_area` VALUES ('330324', '永嘉县', '330300');
INSERT INTO `sys_area` VALUES ('330326', '平阳县', '330300');
INSERT INTO `sys_area` VALUES ('330327', '苍南县', '330300');
INSERT INTO `sys_area` VALUES ('330328', '文成县', '330300');
INSERT INTO `sys_area` VALUES ('330329', '泰顺县', '330300');
INSERT INTO `sys_area` VALUES ('330381', '瑞安市', '330300');
INSERT INTO `sys_area` VALUES ('330382', '乐清市', '330300');
INSERT INTO `sys_area` VALUES ('330400', '嘉兴市', '330000');
INSERT INTO `sys_area` VALUES ('330401', '市辖区', '330400');
INSERT INTO `sys_area` VALUES ('330402', '南湖区', '330401');
INSERT INTO `sys_area` VALUES ('330411', '秀洲区', '330401');
INSERT INTO `sys_area` VALUES ('330421', '嘉善县', '330400');
INSERT INTO `sys_area` VALUES ('330424', '海盐县', '330400');
INSERT INTO `sys_area` VALUES ('330481', '海宁市', '330400');
INSERT INTO `sys_area` VALUES ('330482', '平湖市', '330400');
INSERT INTO `sys_area` VALUES ('330483', '桐乡市', '330400');
INSERT INTO `sys_area` VALUES ('330500', '湖州市', '330000');
INSERT INTO `sys_area` VALUES ('330501', '市辖区', '330500');
INSERT INTO `sys_area` VALUES ('330502', '吴兴区', '330501');
INSERT INTO `sys_area` VALUES ('330503', '南浔区', '330501');
INSERT INTO `sys_area` VALUES ('330521', '德清县', '330500');
INSERT INTO `sys_area` VALUES ('330522', '长兴县', '330500');
INSERT INTO `sys_area` VALUES ('330523', '安吉县', '330500');
INSERT INTO `sys_area` VALUES ('330600', '绍兴市', '330000');
INSERT INTO `sys_area` VALUES ('330601', '市辖区', '330600');
INSERT INTO `sys_area` VALUES ('330602', '越城区', '330601');
INSERT INTO `sys_area` VALUES ('330621', '绍兴县', '330600');
INSERT INTO `sys_area` VALUES ('330624', '新昌县', '330600');
INSERT INTO `sys_area` VALUES ('330681', '诸暨市', '330600');
INSERT INTO `sys_area` VALUES ('330682', '上虞市', '330600');
INSERT INTO `sys_area` VALUES ('330683', '嵊州市', '330600');
INSERT INTO `sys_area` VALUES ('330700', '金华市', '330000');
INSERT INTO `sys_area` VALUES ('330701', '市辖区', '330700');
INSERT INTO `sys_area` VALUES ('330702', '婺城区', '330701');
INSERT INTO `sys_area` VALUES ('330703', '金东区', '330701');
INSERT INTO `sys_area` VALUES ('330723', '武义县', '330700');
INSERT INTO `sys_area` VALUES ('330726', '浦江县', '330700');
INSERT INTO `sys_area` VALUES ('330727', '磐安县', '330700');
INSERT INTO `sys_area` VALUES ('330781', '兰溪市', '330700');
INSERT INTO `sys_area` VALUES ('330782', '义乌市', '330700');
INSERT INTO `sys_area` VALUES ('330783', '东阳市', '330700');
INSERT INTO `sys_area` VALUES ('330784', '永康市', '330700');
INSERT INTO `sys_area` VALUES ('330800', '衢州市', '330000');
INSERT INTO `sys_area` VALUES ('330801', '市辖区', '330800');
INSERT INTO `sys_area` VALUES ('330802', '柯城区', '330801');
INSERT INTO `sys_area` VALUES ('330803', '衢江区', '330801');
INSERT INTO `sys_area` VALUES ('330822', '常山县', '330800');
INSERT INTO `sys_area` VALUES ('330824', '开化县', '330800');
INSERT INTO `sys_area` VALUES ('330825', '龙游县', '330800');
INSERT INTO `sys_area` VALUES ('330881', '江山市', '330800');
INSERT INTO `sys_area` VALUES ('330900', '舟山市', '330000');
INSERT INTO `sys_area` VALUES ('330901', '市辖区', '330900');
INSERT INTO `sys_area` VALUES ('330902', '定海区', '330901');
INSERT INTO `sys_area` VALUES ('330903', '普陀区', '330901');
INSERT INTO `sys_area` VALUES ('330921', '岱山县', '330900');
INSERT INTO `sys_area` VALUES ('330922', '嵊泗县', '330900');
INSERT INTO `sys_area` VALUES ('331000', '台州市', '330000');
INSERT INTO `sys_area` VALUES ('331001', '市辖区', '331000');
INSERT INTO `sys_area` VALUES ('331002', '椒江区', '331001');
INSERT INTO `sys_area` VALUES ('331003', '黄岩区', '331001');
INSERT INTO `sys_area` VALUES ('331004', '路桥区', '331001');
INSERT INTO `sys_area` VALUES ('331021', '玉环县', '331000');
INSERT INTO `sys_area` VALUES ('331022', '三门县', '331000');
INSERT INTO `sys_area` VALUES ('331023', '天台县', '331000');
INSERT INTO `sys_area` VALUES ('331024', '仙居县', '331000');
INSERT INTO `sys_area` VALUES ('331081', '温岭市', '331000');
INSERT INTO `sys_area` VALUES ('331082', '临海市', '331000');
INSERT INTO `sys_area` VALUES ('331100', '丽水市', '330000');
INSERT INTO `sys_area` VALUES ('331101', '市辖区', '331100');
INSERT INTO `sys_area` VALUES ('331102', '莲都区', '331101');
INSERT INTO `sys_area` VALUES ('331121', '青田县', '331100');
INSERT INTO `sys_area` VALUES ('331122', '缙云县', '331100');
INSERT INTO `sys_area` VALUES ('331123', '遂昌县', '331100');
INSERT INTO `sys_area` VALUES ('331124', '松阳县', '331100');
INSERT INTO `sys_area` VALUES ('331125', '云和县', '331100');
INSERT INTO `sys_area` VALUES ('331126', '庆元县', '331100');
INSERT INTO `sys_area` VALUES ('331127', '景宁畲族自治县', '331100');
INSERT INTO `sys_area` VALUES ('331181', '龙泉市', '331100');
INSERT INTO `sys_area` VALUES ('340000', '安徽省', '0');
INSERT INTO `sys_area` VALUES ('340100', '合肥市', '340000');
INSERT INTO `sys_area` VALUES ('340101', '市辖区', '340100');
INSERT INTO `sys_area` VALUES ('340102', '瑶海区', '340101');
INSERT INTO `sys_area` VALUES ('340103', '庐阳区', '340101');
INSERT INTO `sys_area` VALUES ('340104', '蜀山区', '340101');
INSERT INTO `sys_area` VALUES ('340111', '包河区', '340101');
INSERT INTO `sys_area` VALUES ('340121', '长丰县', '340100');
INSERT INTO `sys_area` VALUES ('340122', '肥东县', '340100');
INSERT INTO `sys_area` VALUES ('340123', '肥西县', '340100');
INSERT INTO `sys_area` VALUES ('340124', '庐江县', '340100');
INSERT INTO `sys_area` VALUES ('340181', '巢湖市', '340100');
INSERT INTO `sys_area` VALUES ('340200', '芜湖市', '340000');
INSERT INTO `sys_area` VALUES ('340201', '市辖区', '340200');
INSERT INTO `sys_area` VALUES ('340202', '镜湖区', '340201');
INSERT INTO `sys_area` VALUES ('340203', '马塘区', '340201');
INSERT INTO `sys_area` VALUES ('340207', '鸠江区', '340201');
INSERT INTO `sys_area` VALUES ('340221', '芜湖县', '340200');
INSERT INTO `sys_area` VALUES ('340222', '繁昌县', '340200');
INSERT INTO `sys_area` VALUES ('340223', '南陵县', '340200');
INSERT INTO `sys_area` VALUES ('340225', '无为县', '340200');
INSERT INTO `sys_area` VALUES ('340300', '蚌埠市', '340000');
INSERT INTO `sys_area` VALUES ('340301', '市辖区', '340300');
INSERT INTO `sys_area` VALUES ('340302', '龙子湖区', '340301');
INSERT INTO `sys_area` VALUES ('340303', '蚌山区', '340301');
INSERT INTO `sys_area` VALUES ('340304', '禹会区', '340301');
INSERT INTO `sys_area` VALUES ('340311', '淮上区', '340301');
INSERT INTO `sys_area` VALUES ('340321', '怀远县', '340300');
INSERT INTO `sys_area` VALUES ('340322', '五河县', '340300');
INSERT INTO `sys_area` VALUES ('340323', '固镇县', '340300');
INSERT INTO `sys_area` VALUES ('340400', '淮南市', '340000');
INSERT INTO `sys_area` VALUES ('340401', '市辖区', '340400');
INSERT INTO `sys_area` VALUES ('340402', '大通区', '340401');
INSERT INTO `sys_area` VALUES ('340403', '田家庵区', '340401');
INSERT INTO `sys_area` VALUES ('340404', '谢家集区', '340401');
INSERT INTO `sys_area` VALUES ('340405', '八公山区', '340401');
INSERT INTO `sys_area` VALUES ('340406', '潘集区', '340401');
INSERT INTO `sys_area` VALUES ('340421', '凤台县', '340400');
INSERT INTO `sys_area` VALUES ('340500', '马鞍山市', '340000');
INSERT INTO `sys_area` VALUES ('340501', '市辖区', '340500');
INSERT INTO `sys_area` VALUES ('340502', '金家庄区', '340501');
INSERT INTO `sys_area` VALUES ('340503', '花山区', '340501');
INSERT INTO `sys_area` VALUES ('340504', '雨山区', '340501');
INSERT INTO `sys_area` VALUES ('340521', '当涂县', '340500');
INSERT INTO `sys_area` VALUES ('340522', '含山县', '340500');
INSERT INTO `sys_area` VALUES ('340523', '和县', '340500');
INSERT INTO `sys_area` VALUES ('340600', '淮北市', '340000');
INSERT INTO `sys_area` VALUES ('340601', '市辖区', '340600');
INSERT INTO `sys_area` VALUES ('340602', '杜集区', '340601');
INSERT INTO `sys_area` VALUES ('340603', '相山区', '340601');
INSERT INTO `sys_area` VALUES ('340604', '烈山区', '340601');
INSERT INTO `sys_area` VALUES ('340621', '濉溪县', '340600');
INSERT INTO `sys_area` VALUES ('340700', '铜陵市', '340000');
INSERT INTO `sys_area` VALUES ('340701', '市辖区', '340700');
INSERT INTO `sys_area` VALUES ('340702', '铜官山区', '340701');
INSERT INTO `sys_area` VALUES ('340703', '狮子山区', '340701');
INSERT INTO `sys_area` VALUES ('340711', '郊区', '340701');
INSERT INTO `sys_area` VALUES ('340721', '铜陵县', '340700');
INSERT INTO `sys_area` VALUES ('340800', '安庆市', '340000');
INSERT INTO `sys_area` VALUES ('340801', '市辖区', '340800');
INSERT INTO `sys_area` VALUES ('340802', '迎江区', '340801');
INSERT INTO `sys_area` VALUES ('340803', '大观区', '340801');
INSERT INTO `sys_area` VALUES ('340811', '宜秀区', '340801');
INSERT INTO `sys_area` VALUES ('340822', '怀宁县', '340800');
INSERT INTO `sys_area` VALUES ('340823', '枞阳县', '340800');
INSERT INTO `sys_area` VALUES ('340824', '潜山县', '340800');
INSERT INTO `sys_area` VALUES ('340825', '太湖县', '340800');
INSERT INTO `sys_area` VALUES ('340826', '宿松县', '340800');
INSERT INTO `sys_area` VALUES ('340827', '望江县', '340800');
INSERT INTO `sys_area` VALUES ('340828', '岳西县', '340800');
INSERT INTO `sys_area` VALUES ('340881', '桐城市', '340800');
INSERT INTO `sys_area` VALUES ('341000', '黄山市', '340000');
INSERT INTO `sys_area` VALUES ('341001', '黄山区', '341000');
INSERT INTO `sys_area` VALUES ('341002', '屯溪区', '341000');
INSERT INTO `sys_area` VALUES ('341004', '徽州区', '341000');
INSERT INTO `sys_area` VALUES ('341021', '歙县', '341000');
INSERT INTO `sys_area` VALUES ('341022', '休宁县', '341000');
INSERT INTO `sys_area` VALUES ('341023', '黟县', '341000');
INSERT INTO `sys_area` VALUES ('341024', '祁门县', '341000');
INSERT INTO `sys_area` VALUES ('341091', '汤口镇', '341000');
INSERT INTO `sys_area` VALUES ('341100', '滁州市', '340000');
INSERT INTO `sys_area` VALUES ('341101', '市辖区', '341100');
INSERT INTO `sys_area` VALUES ('341102', '琅琊区', '341101');
INSERT INTO `sys_area` VALUES ('341103', '南谯区', '341101');
INSERT INTO `sys_area` VALUES ('341122', '来安县', '341100');
INSERT INTO `sys_area` VALUES ('341124', '全椒县', '341100');
INSERT INTO `sys_area` VALUES ('341125', '定远县', '341100');
INSERT INTO `sys_area` VALUES ('341126', '凤阳县', '341100');
INSERT INTO `sys_area` VALUES ('341181', '天长市', '341100');
INSERT INTO `sys_area` VALUES ('341182', '明光市', '341100');
INSERT INTO `sys_area` VALUES ('341200', '阜阳市', '340000');
INSERT INTO `sys_area` VALUES ('341201', '颍泉区', '341200');
INSERT INTO `sys_area` VALUES ('341202', '颍州区', '341200');
INSERT INTO `sys_area` VALUES ('341203', '颍东区', '341200');
INSERT INTO `sys_area` VALUES ('341221', '临泉县', '341200');
INSERT INTO `sys_area` VALUES ('341222', '太和县', '341200');
INSERT INTO `sys_area` VALUES ('341225', '阜南县', '341200');
INSERT INTO `sys_area` VALUES ('341226', '颍上县', '341200');
INSERT INTO `sys_area` VALUES ('341282', '界首市', '341200');
INSERT INTO `sys_area` VALUES ('341300', '宿州市', '340000');
INSERT INTO `sys_area` VALUES ('341301', '市辖区', '341300');
INSERT INTO `sys_area` VALUES ('341302', '埇桥区', '341301');
INSERT INTO `sys_area` VALUES ('341321', '砀山县', '341300');
INSERT INTO `sys_area` VALUES ('341322', '萧县', '341300');
INSERT INTO `sys_area` VALUES ('341323', '灵璧县', '341300');
INSERT INTO `sys_area` VALUES ('341324', '泗县', '341300');
INSERT INTO `sys_area` VALUES ('341402', '居巢区', null);
INSERT INTO `sys_area` VALUES ('341500', '六安市', '340000');
INSERT INTO `sys_area` VALUES ('341501', '市辖区', '341500');
INSERT INTO `sys_area` VALUES ('341502', '金安区', '341501');
INSERT INTO `sys_area` VALUES ('341503', '裕安区', '341501');
INSERT INTO `sys_area` VALUES ('341521', '寿县', '341500');
INSERT INTO `sys_area` VALUES ('341522', '霍邱县', '341500');
INSERT INTO `sys_area` VALUES ('341523', '舒城县', '341500');
INSERT INTO `sys_area` VALUES ('341524', '金寨县', '341500');
INSERT INTO `sys_area` VALUES ('341525', '霍山县', '341500');
INSERT INTO `sys_area` VALUES ('341600', '亳州市', '340000');
INSERT INTO `sys_area` VALUES ('341601', '谯城区', '341600');
INSERT INTO `sys_area` VALUES ('341621', '涡阳县', '341600');
INSERT INTO `sys_area` VALUES ('341622', '蒙城县', '341600');
INSERT INTO `sys_area` VALUES ('341623', '利辛县', '341600');
INSERT INTO `sys_area` VALUES ('341700', '池州市', '340000');
INSERT INTO `sys_area` VALUES ('341701', '市辖区', '341700');
INSERT INTO `sys_area` VALUES ('341702', '贵池区', '341701');
INSERT INTO `sys_area` VALUES ('341721', '东至县', '341700');
INSERT INTO `sys_area` VALUES ('341722', '石台县', '341700');
INSERT INTO `sys_area` VALUES ('341723', '青阳县', '341700');
INSERT INTO `sys_area` VALUES ('341800', '宣城市', '340000');
INSERT INTO `sys_area` VALUES ('341801', '市辖区', '341800');
INSERT INTO `sys_area` VALUES ('341802', '宣州区', '341801');
INSERT INTO `sys_area` VALUES ('341821', '郎溪县', '341800');
INSERT INTO `sys_area` VALUES ('341822', '广德县', '341800');
INSERT INTO `sys_area` VALUES ('341823', '泾县', '341800');
INSERT INTO `sys_area` VALUES ('341824', '绩溪县', '341800');
INSERT INTO `sys_area` VALUES ('341825', '旌德县', '341800');
INSERT INTO `sys_area` VALUES ('341881', '宁国市', '341800');
INSERT INTO `sys_area` VALUES ('350000', '福建省', '0');
INSERT INTO `sys_area` VALUES ('350100', '福州市', '350000');
INSERT INTO `sys_area` VALUES ('350101', '市辖区', '350100');
INSERT INTO `sys_area` VALUES ('350102', '鼓楼区', '350101');
INSERT INTO `sys_area` VALUES ('350103', '台江区', '350101');
INSERT INTO `sys_area` VALUES ('350104', '仓山区', '350101');
INSERT INTO `sys_area` VALUES ('350105', '马尾区', '350101');
INSERT INTO `sys_area` VALUES ('350111', '晋安区', '350101');
INSERT INTO `sys_area` VALUES ('350121', '闽侯县', '350100');
INSERT INTO `sys_area` VALUES ('350122', '连江县', '350100');
INSERT INTO `sys_area` VALUES ('350123', '罗源县', '350100');
INSERT INTO `sys_area` VALUES ('350124', '闽清县', '350100');
INSERT INTO `sys_area` VALUES ('350125', '永泰县', '350100');
INSERT INTO `sys_area` VALUES ('350128', '平潭县', '350100');
INSERT INTO `sys_area` VALUES ('350181', '福清市', '350100');
INSERT INTO `sys_area` VALUES ('350182', '长乐市', '350100');
INSERT INTO `sys_area` VALUES ('350200', '厦门市', '350000');
INSERT INTO `sys_area` VALUES ('350201', '市辖区', '350200');
INSERT INTO `sys_area` VALUES ('350203', '思明区', '350201');
INSERT INTO `sys_area` VALUES ('350205', '海沧区', '350201');
INSERT INTO `sys_area` VALUES ('350206', '湖里区', '350201');
INSERT INTO `sys_area` VALUES ('350211', '集美区', '350201');
INSERT INTO `sys_area` VALUES ('350212', '同安区', '350201');
INSERT INTO `sys_area` VALUES ('350213', '翔安区', '350201');
INSERT INTO `sys_area` VALUES ('350300', '莆田市', '350000');
INSERT INTO `sys_area` VALUES ('350301', '市辖区', '350300');
INSERT INTO `sys_area` VALUES ('350302', '城厢区', '350301');
INSERT INTO `sys_area` VALUES ('350303', '涵江区', '350301');
INSERT INTO `sys_area` VALUES ('350304', '荔城区', '350301');
INSERT INTO `sys_area` VALUES ('350305', '秀屿区', '350301');
INSERT INTO `sys_area` VALUES ('350322', '仙游县', '350300');
INSERT INTO `sys_area` VALUES ('350400', '三明市', '350000');
INSERT INTO `sys_area` VALUES ('350401', '市辖区', '350400');
INSERT INTO `sys_area` VALUES ('350402', '梅列区', '350401');
INSERT INTO `sys_area` VALUES ('350403', '三元区', '350401');
INSERT INTO `sys_area` VALUES ('350421', '明溪县', '350400');
INSERT INTO `sys_area` VALUES ('350423', '清流县', '350400');
INSERT INTO `sys_area` VALUES ('350424', '宁化县', '350400');
INSERT INTO `sys_area` VALUES ('350425', '大田县', '350400');
INSERT INTO `sys_area` VALUES ('350426', '尤溪县', '350400');
INSERT INTO `sys_area` VALUES ('350427', '沙县', '350400');
INSERT INTO `sys_area` VALUES ('350428', '将乐县', '350400');
INSERT INTO `sys_area` VALUES ('350429', '泰宁县', '350400');
INSERT INTO `sys_area` VALUES ('350430', '建宁县', '350400');
INSERT INTO `sys_area` VALUES ('350481', '永安市', '350400');
INSERT INTO `sys_area` VALUES ('350500', '泉州市', '350000');
INSERT INTO `sys_area` VALUES ('350501', '市辖区', '350500');
INSERT INTO `sys_area` VALUES ('350502', '鲤城区', '350501');
INSERT INTO `sys_area` VALUES ('350503', '丰泽区', '350501');
INSERT INTO `sys_area` VALUES ('350504', '洛江区', '350501');
INSERT INTO `sys_area` VALUES ('350505', '泉港区', '350501');
INSERT INTO `sys_area` VALUES ('350521', '惠安县', '350500');
INSERT INTO `sys_area` VALUES ('350524', '安溪县', '350500');
INSERT INTO `sys_area` VALUES ('350525', '永春县', '350500');
INSERT INTO `sys_area` VALUES ('350526', '德化县', '350500');
INSERT INTO `sys_area` VALUES ('350527', '金门县', '350500');
INSERT INTO `sys_area` VALUES ('350581', '石狮市', '350500');
INSERT INTO `sys_area` VALUES ('350582', '晋江市', '350500');
INSERT INTO `sys_area` VALUES ('350583', '南安市', '350500');
INSERT INTO `sys_area` VALUES ('350600', '漳州市', '350000');
INSERT INTO `sys_area` VALUES ('350601', '市辖区', '350600');
INSERT INTO `sys_area` VALUES ('350602', '芗城区', '350601');
INSERT INTO `sys_area` VALUES ('350603', '龙文区', '350601');
INSERT INTO `sys_area` VALUES ('350622', '云霄县', '350600');
INSERT INTO `sys_area` VALUES ('350623', '漳浦县', '350600');
INSERT INTO `sys_area` VALUES ('350624', '诏安县', '350600');
INSERT INTO `sys_area` VALUES ('350625', '长泰县', '350600');
INSERT INTO `sys_area` VALUES ('350626', '东山县', '350600');
INSERT INTO `sys_area` VALUES ('350627', '南靖县', '350600');
INSERT INTO `sys_area` VALUES ('350628', '平和县', '350600');
INSERT INTO `sys_area` VALUES ('350629', '华安县', '350600');
INSERT INTO `sys_area` VALUES ('350681', '龙海市', '350600');
INSERT INTO `sys_area` VALUES ('350700', '南平市', '350000');
INSERT INTO `sys_area` VALUES ('350701', '市辖区', '350700');
INSERT INTO `sys_area` VALUES ('350702', '延平区', '350701');
INSERT INTO `sys_area` VALUES ('350721', '顺昌县', '350700');
INSERT INTO `sys_area` VALUES ('350722', '浦城县', '350700');
INSERT INTO `sys_area` VALUES ('350723', '光泽县', '350700');
INSERT INTO `sys_area` VALUES ('350724', '松溪县', '350700');
INSERT INTO `sys_area` VALUES ('350725', '政和县', '350700');
INSERT INTO `sys_area` VALUES ('350781', '邵武市', '350700');
INSERT INTO `sys_area` VALUES ('350782', '武夷山市', '350700');
INSERT INTO `sys_area` VALUES ('350783', '建瓯市', '350700');
INSERT INTO `sys_area` VALUES ('350784', '建阳市', '350700');
INSERT INTO `sys_area` VALUES ('350800', '龙岩市', '350000');
INSERT INTO `sys_area` VALUES ('350801', '市辖区', '350800');
INSERT INTO `sys_area` VALUES ('350802', '新罗区', '350801');
INSERT INTO `sys_area` VALUES ('350821', '长汀县', '350800');
INSERT INTO `sys_area` VALUES ('350822', '永定县', '350800');
INSERT INTO `sys_area` VALUES ('350823', '上杭县', '350800');
INSERT INTO `sys_area` VALUES ('350824', '武平县', '350800');
INSERT INTO `sys_area` VALUES ('350825', '连城县', '350800');
INSERT INTO `sys_area` VALUES ('350881', '漳平市', '350800');
INSERT INTO `sys_area` VALUES ('350900', '宁德市', '350000');
INSERT INTO `sys_area` VALUES ('350901', '市辖区', '350900');
INSERT INTO `sys_area` VALUES ('350902', '蕉城区', '350901');
INSERT INTO `sys_area` VALUES ('350921', '霞浦县', '350900');
INSERT INTO `sys_area` VALUES ('350922', '古田县', '350900');
INSERT INTO `sys_area` VALUES ('350923', '屏南县', '350900');
INSERT INTO `sys_area` VALUES ('350924', '寿宁县', '350900');
INSERT INTO `sys_area` VALUES ('350925', '周宁县', '350900');
INSERT INTO `sys_area` VALUES ('350926', '柘荣县', '350900');
INSERT INTO `sys_area` VALUES ('350981', '福安市', '350900');
INSERT INTO `sys_area` VALUES ('350982', '福鼎市', '350900');
INSERT INTO `sys_area` VALUES ('360000', '江西省', '0');
INSERT INTO `sys_area` VALUES ('360100', '南昌市', '360000');
INSERT INTO `sys_area` VALUES ('360101', '市辖区', '360100');
INSERT INTO `sys_area` VALUES ('360102', '东湖区', '360101');
INSERT INTO `sys_area` VALUES ('360103', '西湖区', '360101');
INSERT INTO `sys_area` VALUES ('360104', '青云谱区', '360101');
INSERT INTO `sys_area` VALUES ('360105', '湾里区', '360101');
INSERT INTO `sys_area` VALUES ('360111', '青山湖区', '360101');
INSERT INTO `sys_area` VALUES ('360121', '南昌县', '360100');
INSERT INTO `sys_area` VALUES ('360122', '新建县', '360100');
INSERT INTO `sys_area` VALUES ('360123', '安义县', '360100');
INSERT INTO `sys_area` VALUES ('360124', '进贤县', '360100');
INSERT INTO `sys_area` VALUES ('360200', '景德镇市', '360000');
INSERT INTO `sys_area` VALUES ('360201', '市辖区', '360200');
INSERT INTO `sys_area` VALUES ('360202', '昌江区', '360201');
INSERT INTO `sys_area` VALUES ('360203', '珠山区', '360201');
INSERT INTO `sys_area` VALUES ('360222', '浮梁县', '360200');
INSERT INTO `sys_area` VALUES ('360281', '乐平市', '360200');
INSERT INTO `sys_area` VALUES ('360300', '萍乡市', '360000');
INSERT INTO `sys_area` VALUES ('360301', '市辖区', '360300');
INSERT INTO `sys_area` VALUES ('360302', '安源区', '360301');
INSERT INTO `sys_area` VALUES ('360313', '湘东区', '360301');
INSERT INTO `sys_area` VALUES ('360321', '莲花县', '360300');
INSERT INTO `sys_area` VALUES ('360322', '上栗县', '360300');
INSERT INTO `sys_area` VALUES ('360323', '芦溪县', '360300');
INSERT INTO `sys_area` VALUES ('360400', '九江市', '360000');
INSERT INTO `sys_area` VALUES ('360401', '市辖区', '360400');
INSERT INTO `sys_area` VALUES ('360402', '庐山区', '360401');
INSERT INTO `sys_area` VALUES ('360403', '浔阳区', '360401');
INSERT INTO `sys_area` VALUES ('360421', '九江县', '360400');
INSERT INTO `sys_area` VALUES ('360423', '武宁县', '360400');
INSERT INTO `sys_area` VALUES ('360424', '修水县', '360400');
INSERT INTO `sys_area` VALUES ('360425', '永修县', '360400');
INSERT INTO `sys_area` VALUES ('360426', '德安县', '360400');
INSERT INTO `sys_area` VALUES ('360427', '星子县', '360400');
INSERT INTO `sys_area` VALUES ('360428', '都昌县', '360400');
INSERT INTO `sys_area` VALUES ('360429', '湖口县', '360400');
INSERT INTO `sys_area` VALUES ('360430', '彭泽县', '360400');
INSERT INTO `sys_area` VALUES ('360481', '瑞昌市', '360400');
INSERT INTO `sys_area` VALUES ('360482', '共青城市', '360400');
INSERT INTO `sys_area` VALUES ('360500', '新余市', '360000');
INSERT INTO `sys_area` VALUES ('360501', '市辖区', '360500');
INSERT INTO `sys_area` VALUES ('360502', '渝水区', '360501');
INSERT INTO `sys_area` VALUES ('360521', '分宜县', '360500');
INSERT INTO `sys_area` VALUES ('360600', '鹰潭市', '360000');
INSERT INTO `sys_area` VALUES ('360601', '市辖区', '360600');
INSERT INTO `sys_area` VALUES ('360602', '月湖区', '360601');
INSERT INTO `sys_area` VALUES ('360622', '余江县', '360600');
INSERT INTO `sys_area` VALUES ('360681', '贵溪市', '360600');
INSERT INTO `sys_area` VALUES ('360700', '赣州市', '360000');
INSERT INTO `sys_area` VALUES ('360701', '市辖区', '360700');
INSERT INTO `sys_area` VALUES ('360702', '章贡区', '360701');
INSERT INTO `sys_area` VALUES ('360721', '赣县', '360700');
INSERT INTO `sys_area` VALUES ('360722', '信丰县', '360700');
INSERT INTO `sys_area` VALUES ('360723', '大余县', '360700');
INSERT INTO `sys_area` VALUES ('360724', '上犹县', '360700');
INSERT INTO `sys_area` VALUES ('360725', '崇义县', '360700');
INSERT INTO `sys_area` VALUES ('360726', '安远县', '360700');
INSERT INTO `sys_area` VALUES ('360727', '龙南县', '360700');
INSERT INTO `sys_area` VALUES ('360728', '定南县', '360700');
INSERT INTO `sys_area` VALUES ('360729', '全南县', '360700');
INSERT INTO `sys_area` VALUES ('360730', '宁都县', '360700');
INSERT INTO `sys_area` VALUES ('360731', '于都县', '360700');
INSERT INTO `sys_area` VALUES ('360732', '兴国县', '360700');
INSERT INTO `sys_area` VALUES ('360733', '会昌县', '360700');
INSERT INTO `sys_area` VALUES ('360734', '寻乌县', '360700');
INSERT INTO `sys_area` VALUES ('360735', '石城县', '360700');
INSERT INTO `sys_area` VALUES ('360781', '瑞金市', '360700');
INSERT INTO `sys_area` VALUES ('360782', '南康市', '360700');
INSERT INTO `sys_area` VALUES ('360800', '吉安市', '360000');
INSERT INTO `sys_area` VALUES ('360801', '市辖区', '360800');
INSERT INTO `sys_area` VALUES ('360802', '吉州区', '360801');
INSERT INTO `sys_area` VALUES ('360803', '青原区', '360801');
INSERT INTO `sys_area` VALUES ('360821', '吉安县', '360800');
INSERT INTO `sys_area` VALUES ('360822', '吉水县', '360800');
INSERT INTO `sys_area` VALUES ('360823', '峡江县', '360800');
INSERT INTO `sys_area` VALUES ('360824', '新干县', '360800');
INSERT INTO `sys_area` VALUES ('360825', '永丰县', '360800');
INSERT INTO `sys_area` VALUES ('360826', '泰和县', '360800');
INSERT INTO `sys_area` VALUES ('360827', '遂川县', '360800');
INSERT INTO `sys_area` VALUES ('360828', '万安县', '360800');
INSERT INTO `sys_area` VALUES ('360829', '安福县', '360800');
INSERT INTO `sys_area` VALUES ('360830', '永新县', '360800');
INSERT INTO `sys_area` VALUES ('360881', '井冈山市', '360800');
INSERT INTO `sys_area` VALUES ('360900', '宜春市', '360000');
INSERT INTO `sys_area` VALUES ('360901', '市辖区', '360900');
INSERT INTO `sys_area` VALUES ('360902', '袁州区', '360901');
INSERT INTO `sys_area` VALUES ('360921', '奉新县', '360900');
INSERT INTO `sys_area` VALUES ('360922', '万载县', '360900');
INSERT INTO `sys_area` VALUES ('360923', '上高县', '360900');
INSERT INTO `sys_area` VALUES ('360924', '宜丰县', '360900');
INSERT INTO `sys_area` VALUES ('360925', '靖安县', '360900');
INSERT INTO `sys_area` VALUES ('360926', '铜鼓县', '360900');
INSERT INTO `sys_area` VALUES ('360981', '丰城市', '360900');
INSERT INTO `sys_area` VALUES ('360982', '樟树市', '360900');
INSERT INTO `sys_area` VALUES ('360983', '高安市', '360900');
INSERT INTO `sys_area` VALUES ('361000', '抚州市', '360000');
INSERT INTO `sys_area` VALUES ('361001', '市辖区', '361000');
INSERT INTO `sys_area` VALUES ('361002', '临川区', '361001');
INSERT INTO `sys_area` VALUES ('361021', '南城县', '361000');
INSERT INTO `sys_area` VALUES ('361022', '黎川县', '361000');
INSERT INTO `sys_area` VALUES ('361023', '南丰县', '361000');
INSERT INTO `sys_area` VALUES ('361024', '崇仁县', '361000');
INSERT INTO `sys_area` VALUES ('361025', '乐安县', '361000');
INSERT INTO `sys_area` VALUES ('361026', '宜黄县', '361000');
INSERT INTO `sys_area` VALUES ('361027', '金溪县', '361000');
INSERT INTO `sys_area` VALUES ('361028', '资溪县', '361000');
INSERT INTO `sys_area` VALUES ('361029', '东乡县', '361000');
INSERT INTO `sys_area` VALUES ('361030', '广昌县', '361000');
INSERT INTO `sys_area` VALUES ('361100', '上饶市', '360000');
INSERT INTO `sys_area` VALUES ('361101', '市辖区', '361100');
INSERT INTO `sys_area` VALUES ('361102', '信州区', '361101');
INSERT INTO `sys_area` VALUES ('361121', '上饶县', '361100');
INSERT INTO `sys_area` VALUES ('361122', '广丰县', '361100');
INSERT INTO `sys_area` VALUES ('361123', '玉山县', '361100');
INSERT INTO `sys_area` VALUES ('361124', '铅山县', '361100');
INSERT INTO `sys_area` VALUES ('361125', '横峰县', '361100');
INSERT INTO `sys_area` VALUES ('361126', '弋阳县', '361100');
INSERT INTO `sys_area` VALUES ('361127', '余干县', '361100');
INSERT INTO `sys_area` VALUES ('361128', '鄱阳县', '361100');
INSERT INTO `sys_area` VALUES ('361129', '万年县', '361100');
INSERT INTO `sys_area` VALUES ('361130', '婺源县', '361100');
INSERT INTO `sys_area` VALUES ('361181', '德兴市', '361100');
INSERT INTO `sys_area` VALUES ('370000', '山东省', '0');
INSERT INTO `sys_area` VALUES ('370100', '济南市', '370000');
INSERT INTO `sys_area` VALUES ('370101', '市辖区', '370100');
INSERT INTO `sys_area` VALUES ('370102', '历下区', '370101');
INSERT INTO `sys_area` VALUES ('370103', '市中区', '370101');
INSERT INTO `sys_area` VALUES ('370104', '槐荫区', '370101');
INSERT INTO `sys_area` VALUES ('370105', '天桥区', '370101');
INSERT INTO `sys_area` VALUES ('370112', '历城区', '370101');
INSERT INTO `sys_area` VALUES ('370113', '长清区', '370101');
INSERT INTO `sys_area` VALUES ('370124', '平阴县', '370100');
INSERT INTO `sys_area` VALUES ('370125', '济阳县', '370100');
INSERT INTO `sys_area` VALUES ('370126', '商河县', '370100');
INSERT INTO `sys_area` VALUES ('370181', '章丘市', '370100');
INSERT INTO `sys_area` VALUES ('370200', '青岛市', '370000');
INSERT INTO `sys_area` VALUES ('370201', '市辖区', '370200');
INSERT INTO `sys_area` VALUES ('370202', '市南区', '370201');
INSERT INTO `sys_area` VALUES ('370203', '市北区', '370201');
INSERT INTO `sys_area` VALUES ('370205', '四方区', '370201');
INSERT INTO `sys_area` VALUES ('370211', '黄岛区', '370201');
INSERT INTO `sys_area` VALUES ('370212', '崂山区', '370201');
INSERT INTO `sys_area` VALUES ('370213', '李沧区', '370201');
INSERT INTO `sys_area` VALUES ('370214', '城阳区', '370201');
INSERT INTO `sys_area` VALUES ('370281', '胶州市', '370200');
INSERT INTO `sys_area` VALUES ('370282', '即墨市', '370200');
INSERT INTO `sys_area` VALUES ('370283', '平度市', '370200');
INSERT INTO `sys_area` VALUES ('370284', '胶南市', '370200');
INSERT INTO `sys_area` VALUES ('370285', '莱西市', '370200');
INSERT INTO `sys_area` VALUES ('370300', '淄博市', '370000');
INSERT INTO `sys_area` VALUES ('370301', '市辖区', '370300');
INSERT INTO `sys_area` VALUES ('370302', '淄川区', '370301');
INSERT INTO `sys_area` VALUES ('370303', '张店区', '370301');
INSERT INTO `sys_area` VALUES ('370304', '博山区', '370301');
INSERT INTO `sys_area` VALUES ('370305', '临淄区', '370301');
INSERT INTO `sys_area` VALUES ('370306', '周村区', '370301');
INSERT INTO `sys_area` VALUES ('370321', '桓台县', '370300');
INSERT INTO `sys_area` VALUES ('370322', '高青县', '370300');
INSERT INTO `sys_area` VALUES ('370323', '沂源县', '370300');
INSERT INTO `sys_area` VALUES ('370400', '枣庄市', '370000');
INSERT INTO `sys_area` VALUES ('370401', '市辖区', '370400');
INSERT INTO `sys_area` VALUES ('370402', '市中区', '370401');
INSERT INTO `sys_area` VALUES ('370403', '薛城区', '370401');
INSERT INTO `sys_area` VALUES ('370404', '峄城区', '370401');
INSERT INTO `sys_area` VALUES ('370405', '台儿庄区', '370401');
INSERT INTO `sys_area` VALUES ('370406', '山亭区', '370401');
INSERT INTO `sys_area` VALUES ('370481', '滕州市', '370400');
INSERT INTO `sys_area` VALUES ('370500', '东营市', '370000');
INSERT INTO `sys_area` VALUES ('370501', '市辖区', '370500');
INSERT INTO `sys_area` VALUES ('370502', '东营区', '370501');
INSERT INTO `sys_area` VALUES ('370503', '河口区', '370501');
INSERT INTO `sys_area` VALUES ('370521', '垦利县', '370500');
INSERT INTO `sys_area` VALUES ('370522', '利津县', '370500');
INSERT INTO `sys_area` VALUES ('370523', '广饶县', '370500');
INSERT INTO `sys_area` VALUES ('370600', '烟台市', '370000');
INSERT INTO `sys_area` VALUES ('370601', '市辖区', '370600');
INSERT INTO `sys_area` VALUES ('370602', '芝罘区', '370601');
INSERT INTO `sys_area` VALUES ('370611', '福山区', '370601');
INSERT INTO `sys_area` VALUES ('370612', '牟平区', '370601');
INSERT INTO `sys_area` VALUES ('370613', '莱山区', '370601');
INSERT INTO `sys_area` VALUES ('370634', '长岛县', '370600');
INSERT INTO `sys_area` VALUES ('370681', '龙口市', '370600');
INSERT INTO `sys_area` VALUES ('370682', '莱阳市', '370600');
INSERT INTO `sys_area` VALUES ('370683', '莱州市', '370600');
INSERT INTO `sys_area` VALUES ('370684', '蓬莱市', '370600');
INSERT INTO `sys_area` VALUES ('370685', '招远市', '370600');
INSERT INTO `sys_area` VALUES ('370686', '栖霞市', '370600');
INSERT INTO `sys_area` VALUES ('370687', '海阳市', '370600');
INSERT INTO `sys_area` VALUES ('370700', '潍坊市', '370000');
INSERT INTO `sys_area` VALUES ('370701', '市辖区', '370700');
INSERT INTO `sys_area` VALUES ('370702', '潍城区', '370701');
INSERT INTO `sys_area` VALUES ('370703', '寒亭区', '370701');
INSERT INTO `sys_area` VALUES ('370704', '坊子区', '370701');
INSERT INTO `sys_area` VALUES ('370705', '奎文区', '370701');
INSERT INTO `sys_area` VALUES ('370724', '临朐县', '370700');
INSERT INTO `sys_area` VALUES ('370725', '昌乐县', '370700');
INSERT INTO `sys_area` VALUES ('370781', '青州市', '370700');
INSERT INTO `sys_area` VALUES ('370782', '诸城市', '370700');
INSERT INTO `sys_area` VALUES ('370783', '寿光市', '370700');
INSERT INTO `sys_area` VALUES ('370784', '安丘市', '370700');
INSERT INTO `sys_area` VALUES ('370785', '高密市', '370700');
INSERT INTO `sys_area` VALUES ('370786', '昌邑市', '370700');
INSERT INTO `sys_area` VALUES ('370800', '济宁市', '370000');
INSERT INTO `sys_area` VALUES ('370801', '市辖区', '370800');
INSERT INTO `sys_area` VALUES ('370802', '市中区', '370801');
INSERT INTO `sys_area` VALUES ('370811', '任城区', '370801');
INSERT INTO `sys_area` VALUES ('370826', '微山县', '370800');
INSERT INTO `sys_area` VALUES ('370827', '鱼台县', '370800');
INSERT INTO `sys_area` VALUES ('370828', '金乡县', '370800');
INSERT INTO `sys_area` VALUES ('370829', '嘉祥县', '370800');
INSERT INTO `sys_area` VALUES ('370830', '汶上县', '370800');
INSERT INTO `sys_area` VALUES ('370831', '泗水县', '370800');
INSERT INTO `sys_area` VALUES ('370832', '梁山县', '370800');
INSERT INTO `sys_area` VALUES ('370881', '曲阜市', '370800');
INSERT INTO `sys_area` VALUES ('370882', '兖州市', '370800');
INSERT INTO `sys_area` VALUES ('370883', '邹城市', '370800');
INSERT INTO `sys_area` VALUES ('370900', '泰安市', '370000');
INSERT INTO `sys_area` VALUES ('370901', '岱岳区', '370900');
INSERT INTO `sys_area` VALUES ('370902', '泰山区', '370900');
INSERT INTO `sys_area` VALUES ('370921', '宁阳县', '370900');
INSERT INTO `sys_area` VALUES ('370923', '东平县', '370900');
INSERT INTO `sys_area` VALUES ('370982', '新泰市', '370900');
INSERT INTO `sys_area` VALUES ('370983', '肥城市', '370900');
INSERT INTO `sys_area` VALUES ('371000', '威海市', '370000');
INSERT INTO `sys_area` VALUES ('371001', '市辖区', '371000');
INSERT INTO `sys_area` VALUES ('371002', '环翠区', '371001');
INSERT INTO `sys_area` VALUES ('371081', '文登市', '371000');
INSERT INTO `sys_area` VALUES ('371082', '荣成市', '371000');
INSERT INTO `sys_area` VALUES ('371083', '乳山市', '371000');
INSERT INTO `sys_area` VALUES ('371100', '日照市', '370000');
INSERT INTO `sys_area` VALUES ('371101', '市辖区', '371100');
INSERT INTO `sys_area` VALUES ('371102', '东港区', '371101');
INSERT INTO `sys_area` VALUES ('371103', '岚山区', '371101');
INSERT INTO `sys_area` VALUES ('371121', '五莲县', '371100');
INSERT INTO `sys_area` VALUES ('371122', '莒县', '371100');
INSERT INTO `sys_area` VALUES ('371200', '莱芜市', '370000');
INSERT INTO `sys_area` VALUES ('371201', '市辖区', '371200');
INSERT INTO `sys_area` VALUES ('371202', '莱城区', '371201');
INSERT INTO `sys_area` VALUES ('371203', '钢城区', '371201');
INSERT INTO `sys_area` VALUES ('371300', '临沂市', '370000');
INSERT INTO `sys_area` VALUES ('371301', '市辖区', '371300');
INSERT INTO `sys_area` VALUES ('371302', '兰山区', '371301');
INSERT INTO `sys_area` VALUES ('371311', '罗庄区', '371301');
INSERT INTO `sys_area` VALUES ('371312', '河东区', '371301');
INSERT INTO `sys_area` VALUES ('371321', '沂南县', '371300');
INSERT INTO `sys_area` VALUES ('371322', '郯城县', '371300');
INSERT INTO `sys_area` VALUES ('371323', '沂水县', '371300');
INSERT INTO `sys_area` VALUES ('371324', '苍山县', '371300');
INSERT INTO `sys_area` VALUES ('371325', '费县', '371300');
INSERT INTO `sys_area` VALUES ('371326', '平邑县', '371300');
INSERT INTO `sys_area` VALUES ('371327', '莒南县', '371300');
INSERT INTO `sys_area` VALUES ('371328', '蒙阴县', '371300');
INSERT INTO `sys_area` VALUES ('371329', '临沭县', '371300');
INSERT INTO `sys_area` VALUES ('371400', '德州市', '370000');
INSERT INTO `sys_area` VALUES ('371401', '市辖区', '371400');
INSERT INTO `sys_area` VALUES ('371402', '德城区', '371401');
INSERT INTO `sys_area` VALUES ('371421', '陵县', '371400');
INSERT INTO `sys_area` VALUES ('371422', '宁津县', '371400');
INSERT INTO `sys_area` VALUES ('371423', '庆云县', '371400');
INSERT INTO `sys_area` VALUES ('371424', '临邑县', '371400');
INSERT INTO `sys_area` VALUES ('371425', '齐河县', '371400');
INSERT INTO `sys_area` VALUES ('371426', '平原县', '371400');
INSERT INTO `sys_area` VALUES ('371427', '夏津县', '371400');
INSERT INTO `sys_area` VALUES ('371428', '武城县', '371400');
INSERT INTO `sys_area` VALUES ('371481', '乐陵市', '371400');
INSERT INTO `sys_area` VALUES ('371482', '禹城市', '371400');
INSERT INTO `sys_area` VALUES ('371500', '聊城市', '370000');
INSERT INTO `sys_area` VALUES ('371501', '市辖区', '371500');
INSERT INTO `sys_area` VALUES ('371502', '东昌府区', '371501');
INSERT INTO `sys_area` VALUES ('371521', '阳谷县', '371500');
INSERT INTO `sys_area` VALUES ('371522', '莘县', '371500');
INSERT INTO `sys_area` VALUES ('371523', '茌平县', '371500');
INSERT INTO `sys_area` VALUES ('371524', '东阿县', '371500');
INSERT INTO `sys_area` VALUES ('371525', '冠县', '371500');
INSERT INTO `sys_area` VALUES ('371526', '高唐县', '371500');
INSERT INTO `sys_area` VALUES ('371581', '临清市', '371500');
INSERT INTO `sys_area` VALUES ('371600', '滨州市', '370000');
INSERT INTO `sys_area` VALUES ('371601', '市辖区', '371600');
INSERT INTO `sys_area` VALUES ('371602', '滨城区', '371601');
INSERT INTO `sys_area` VALUES ('371621', '惠民县', '371600');
INSERT INTO `sys_area` VALUES ('371622', '阳信县', '371600');
INSERT INTO `sys_area` VALUES ('371623', '无棣县', '371600');
INSERT INTO `sys_area` VALUES ('371624', '沾化县', '371600');
INSERT INTO `sys_area` VALUES ('371625', '博兴县', '371600');
INSERT INTO `sys_area` VALUES ('371626', '邹平县', '371600');
INSERT INTO `sys_area` VALUES ('371700', '菏泽市', '370000');
INSERT INTO `sys_area` VALUES ('371701', '市辖区', '371700');
INSERT INTO `sys_area` VALUES ('371702', '牡丹区', '371701');
INSERT INTO `sys_area` VALUES ('371721', '曹县', '371700');
INSERT INTO `sys_area` VALUES ('371722', '单县', '371700');
INSERT INTO `sys_area` VALUES ('371723', '成武县', '371700');
INSERT INTO `sys_area` VALUES ('371724', '巨野县', '371700');
INSERT INTO `sys_area` VALUES ('371725', '郓城县', '371700');
INSERT INTO `sys_area` VALUES ('371726', '鄄城县', '371700');
INSERT INTO `sys_area` VALUES ('371727', '定陶县', '371700');
INSERT INTO `sys_area` VALUES ('371728', '东明县', '371700');
INSERT INTO `sys_area` VALUES ('410000', '河南省', '0');
INSERT INTO `sys_area` VALUES ('410100', '郑州市', '410000');
INSERT INTO `sys_area` VALUES ('410101', '金水区', '410100');
INSERT INTO `sys_area` VALUES ('410102', '中原区', '410100');
INSERT INTO `sys_area` VALUES ('410103', '二七区', '410100');
INSERT INTO `sys_area` VALUES ('410104', '管城回族区', '410100');
INSERT INTO `sys_area` VALUES ('410106', '上街区', '410100');
INSERT INTO `sys_area` VALUES ('410108', '惠济区', '410100');
INSERT INTO `sys_area` VALUES ('410122', '中牟县', '410100');
INSERT INTO `sys_area` VALUES ('410181', '巩义市', '410100');
INSERT INTO `sys_area` VALUES ('410182', '荥阳市', '410100');
INSERT INTO `sys_area` VALUES ('410183', '新密市', '410100');
INSERT INTO `sys_area` VALUES ('410184', '新郑市', '410100');
INSERT INTO `sys_area` VALUES ('410185', '登封市', '410100');
INSERT INTO `sys_area` VALUES ('410200', '开封市', '410000');
INSERT INTO `sys_area` VALUES ('410201', '市辖区', '410200');
INSERT INTO `sys_area` VALUES ('410202', '龙亭区', '410201');
INSERT INTO `sys_area` VALUES ('410203', '顺河回族区', '410201');
INSERT INTO `sys_area` VALUES ('410204', '鼓楼区', '410201');
INSERT INTO `sys_area` VALUES ('410205', '禹王台区', '410201');
INSERT INTO `sys_area` VALUES ('410211', '金明区', '410201');
INSERT INTO `sys_area` VALUES ('410221', '杞县', '410200');
INSERT INTO `sys_area` VALUES ('410222', '通许县', '410200');
INSERT INTO `sys_area` VALUES ('410223', '尉氏县', '410200');
INSERT INTO `sys_area` VALUES ('410224', '开封县', '410200');
INSERT INTO `sys_area` VALUES ('410225', '兰考县', '410200');
INSERT INTO `sys_area` VALUES ('410300', '洛阳市', '410000');
INSERT INTO `sys_area` VALUES ('410301', '市辖区', '410300');
INSERT INTO `sys_area` VALUES ('410302', '老城区', '410301');
INSERT INTO `sys_area` VALUES ('410303', '西工区', '410301');
INSERT INTO `sys_area` VALUES ('410304', '廛河回族区', '410301');
INSERT INTO `sys_area` VALUES ('410305', '涧西区', '410301');
INSERT INTO `sys_area` VALUES ('410306', '吉利区', '410301');
INSERT INTO `sys_area` VALUES ('410307', '洛龙区', '410301');
INSERT INTO `sys_area` VALUES ('410322', '孟津县', '410300');
INSERT INTO `sys_area` VALUES ('410323', '新安县', '410300');
INSERT INTO `sys_area` VALUES ('410324', '栾川县', '410300');
INSERT INTO `sys_area` VALUES ('410325', '嵩县', '410300');
INSERT INTO `sys_area` VALUES ('410326', '汝阳县', '410300');
INSERT INTO `sys_area` VALUES ('410327', '宜阳县', '410300');
INSERT INTO `sys_area` VALUES ('410328', '洛宁县', '410300');
INSERT INTO `sys_area` VALUES ('410329', '伊川县', '410300');
INSERT INTO `sys_area` VALUES ('410381', '偃师市', '410300');
INSERT INTO `sys_area` VALUES ('410400', '平顶山市', '410000');
INSERT INTO `sys_area` VALUES ('410401', '市辖区', '410400');
INSERT INTO `sys_area` VALUES ('410402', '新华区', '410401');
INSERT INTO `sys_area` VALUES ('410403', '卫东区', '410401');
INSERT INTO `sys_area` VALUES ('410404', '石龙区', '410401');
INSERT INTO `sys_area` VALUES ('410411', '湛河区', '410401');
INSERT INTO `sys_area` VALUES ('410421', '宝丰县', '410400');
INSERT INTO `sys_area` VALUES ('410422', '叶县', '410400');
INSERT INTO `sys_area` VALUES ('410423', '鲁山县', '410400');
INSERT INTO `sys_area` VALUES ('410425', '郏县', '410400');
INSERT INTO `sys_area` VALUES ('410481', '舞钢市', '410400');
INSERT INTO `sys_area` VALUES ('410482', '汝州市', '410400');
INSERT INTO `sys_area` VALUES ('410500', '安阳市', '410000');
INSERT INTO `sys_area` VALUES ('410501', '市辖区', '410500');
INSERT INTO `sys_area` VALUES ('410502', '文峰区', '410501');
INSERT INTO `sys_area` VALUES ('410503', '北关区', '410501');
INSERT INTO `sys_area` VALUES ('410505', '殷都区', '410501');
INSERT INTO `sys_area` VALUES ('410506', '龙安区', '410501');
INSERT INTO `sys_area` VALUES ('410522', '安阳县', '410500');
INSERT INTO `sys_area` VALUES ('410523', '汤阴县', '410500');
INSERT INTO `sys_area` VALUES ('410526', '滑县', '410500');
INSERT INTO `sys_area` VALUES ('410527', '内黄县', '410500');
INSERT INTO `sys_area` VALUES ('410581', '林州市', '410500');
INSERT INTO `sys_area` VALUES ('410600', '鹤壁市', '410000');
INSERT INTO `sys_area` VALUES ('410601', '市辖区', '410600');
INSERT INTO `sys_area` VALUES ('410602', '鹤山区', '410601');
INSERT INTO `sys_area` VALUES ('410603', '山城区', '410601');
INSERT INTO `sys_area` VALUES ('410611', '淇滨区', '410601');
INSERT INTO `sys_area` VALUES ('410621', '浚县', '410600');
INSERT INTO `sys_area` VALUES ('410622', '淇县', '410600');
INSERT INTO `sys_area` VALUES ('410700', '新乡市', '410000');
INSERT INTO `sys_area` VALUES ('410701', '市辖区', '410700');
INSERT INTO `sys_area` VALUES ('410702', '红旗区', '410700');
INSERT INTO `sys_area` VALUES ('410703', '卫滨区', '410700');
INSERT INTO `sys_area` VALUES ('410704', '凤泉区', '410700');
INSERT INTO `sys_area` VALUES ('410711', '牧野区', '410700');
INSERT INTO `sys_area` VALUES ('410721', '新乡县', '410700');
INSERT INTO `sys_area` VALUES ('410724', '获嘉县', '410700');
INSERT INTO `sys_area` VALUES ('410725', '原阳县', '410700');
INSERT INTO `sys_area` VALUES ('410726', '延津县', '410700');
INSERT INTO `sys_area` VALUES ('410727', '封丘县', '410700');
INSERT INTO `sys_area` VALUES ('410728', '长垣县', '410700');
INSERT INTO `sys_area` VALUES ('410781', '卫辉市', '410700');
INSERT INTO `sys_area` VALUES ('410782', '辉县市', '410700');
INSERT INTO `sys_area` VALUES ('410800', '焦作市', '410000');
INSERT INTO `sys_area` VALUES ('410801', '市辖区', '410800');
INSERT INTO `sys_area` VALUES ('410802', '解放区', '410801');
INSERT INTO `sys_area` VALUES ('410803', '中站区', '410801');
INSERT INTO `sys_area` VALUES ('410804', '马村区', '410801');
INSERT INTO `sys_area` VALUES ('410811', '山阳区', '410801');
INSERT INTO `sys_area` VALUES ('410821', '修武县', '410800');
INSERT INTO `sys_area` VALUES ('410822', '博爱县', '410800');
INSERT INTO `sys_area` VALUES ('410823', '武陟县', '410800');
INSERT INTO `sys_area` VALUES ('410825', '温县', '410800');
INSERT INTO `sys_area` VALUES ('410882', '沁阳市', '410800');
INSERT INTO `sys_area` VALUES ('410883', '孟州市', '410800');
INSERT INTO `sys_area` VALUES ('410900', '濮阳市', '410000');
INSERT INTO `sys_area` VALUES ('410901', '市辖区', '410900');
INSERT INTO `sys_area` VALUES ('410902', '华龙区', '410901');
INSERT INTO `sys_area` VALUES ('410922', '清丰县', '410900');
INSERT INTO `sys_area` VALUES ('410923', '南乐县', '410900');
INSERT INTO `sys_area` VALUES ('410926', '范县', '410900');
INSERT INTO `sys_area` VALUES ('410927', '台前县', '410900');
INSERT INTO `sys_area` VALUES ('410928', '濮阳县', '410900');
INSERT INTO `sys_area` VALUES ('411000', '许昌市', '410000');
INSERT INTO `sys_area` VALUES ('411001', '市辖区', '411000');
INSERT INTO `sys_area` VALUES ('411002', '魏都区', '411001');
INSERT INTO `sys_area` VALUES ('411023', '许昌县', '411000');
INSERT INTO `sys_area` VALUES ('411024', '鄢陵县', '411000');
INSERT INTO `sys_area` VALUES ('411025', '襄城县', '411000');
INSERT INTO `sys_area` VALUES ('411081', '禹州市', '411000');
INSERT INTO `sys_area` VALUES ('411082', '长葛市', '411000');
INSERT INTO `sys_area` VALUES ('411100', '漯河市', '410000');
INSERT INTO `sys_area` VALUES ('411101', '召陵区', '411100');
INSERT INTO `sys_area` VALUES ('411102', '源汇区', '411100');
INSERT INTO `sys_area` VALUES ('411103', '郾城区', '411100');
INSERT INTO `sys_area` VALUES ('411121', '舞阳县', '411100');
INSERT INTO `sys_area` VALUES ('411122', '临颍县', '411100');
INSERT INTO `sys_area` VALUES ('411200', '三门峡市', '410000');
INSERT INTO `sys_area` VALUES ('411201', '市辖区', '411200');
INSERT INTO `sys_area` VALUES ('411202', '湖滨区', '411201');
INSERT INTO `sys_area` VALUES ('411221', '渑池县', '411200');
INSERT INTO `sys_area` VALUES ('411222', '陕县', '411200');
INSERT INTO `sys_area` VALUES ('411224', '卢氏县', '411200');
INSERT INTO `sys_area` VALUES ('411281', '义马市', '411200');
INSERT INTO `sys_area` VALUES ('411282', '灵宝市', '411200');
INSERT INTO `sys_area` VALUES ('411300', '南阳市', '410000');
INSERT INTO `sys_area` VALUES ('411301', '市辖区', '411300');
INSERT INTO `sys_area` VALUES ('411302', '宛城区', '411301');
INSERT INTO `sys_area` VALUES ('411303', '卧龙区', '411301');
INSERT INTO `sys_area` VALUES ('411321', '南召县', '411300');
INSERT INTO `sys_area` VALUES ('411322', '方城县', '411300');
INSERT INTO `sys_area` VALUES ('411323', '西峡县', '411300');
INSERT INTO `sys_area` VALUES ('411324', '镇平县', '411300');
INSERT INTO `sys_area` VALUES ('411325', '内乡县', '411300');
INSERT INTO `sys_area` VALUES ('411326', '淅川县', '411300');
INSERT INTO `sys_area` VALUES ('411327', '社旗县', '411300');
INSERT INTO `sys_area` VALUES ('411328', '唐河县', '411300');
INSERT INTO `sys_area` VALUES ('411329', '新野县', '411300');
INSERT INTO `sys_area` VALUES ('411330', '桐柏县', '411300');
INSERT INTO `sys_area` VALUES ('411381', '邓州市', '411300');
INSERT INTO `sys_area` VALUES ('411400', '商丘市', '410000');
INSERT INTO `sys_area` VALUES ('411401', '市辖区', '411400');
INSERT INTO `sys_area` VALUES ('411402', '梁园区', '411400');
INSERT INTO `sys_area` VALUES ('411403', '睢阳区', '411400');
INSERT INTO `sys_area` VALUES ('411421', '民权县', '411400');
INSERT INTO `sys_area` VALUES ('411422', '睢县', '411400');
INSERT INTO `sys_area` VALUES ('411423', '宁陵县', '411400');
INSERT INTO `sys_area` VALUES ('411424', '柘城县', '411400');
INSERT INTO `sys_area` VALUES ('411425', '虞城县', '411400');
INSERT INTO `sys_area` VALUES ('411426', '夏邑县', '411400');
INSERT INTO `sys_area` VALUES ('411481', '永城市', '411400');
INSERT INTO `sys_area` VALUES ('411482', '新区', '411400');
INSERT INTO `sys_area` VALUES ('411500', '信阳市', '410000');
INSERT INTO `sys_area` VALUES ('411501', '市辖区', '411500');
INSERT INTO `sys_area` VALUES ('411502', '浉河区', '411501');
INSERT INTO `sys_area` VALUES ('411503', '平桥区', '411501');
INSERT INTO `sys_area` VALUES ('411521', '罗山县', '411500');
INSERT INTO `sys_area` VALUES ('411522', '光山县', '411500');
INSERT INTO `sys_area` VALUES ('411523', '新县', '411500');
INSERT INTO `sys_area` VALUES ('411524', '商城县', '411500');
INSERT INTO `sys_area` VALUES ('411525', '固始县', '411500');
INSERT INTO `sys_area` VALUES ('411526', '潢川县', '411500');
INSERT INTO `sys_area` VALUES ('411527', '淮滨县', '411500');
INSERT INTO `sys_area` VALUES ('411528', '息县', '411500');
INSERT INTO `sys_area` VALUES ('411600', '周口市', '410000');
INSERT INTO `sys_area` VALUES ('411601', '市辖区', '411600');
INSERT INTO `sys_area` VALUES ('411602', '川汇区', '411601');
INSERT INTO `sys_area` VALUES ('411621', '扶沟县', '411600');
INSERT INTO `sys_area` VALUES ('411622', '西华县', '411600');
INSERT INTO `sys_area` VALUES ('411623', '商水县', '411600');
INSERT INTO `sys_area` VALUES ('411624', '沈丘县', '411600');
INSERT INTO `sys_area` VALUES ('411625', '郸城县', '411600');
INSERT INTO `sys_area` VALUES ('411626', '淮阳县', '411600');
INSERT INTO `sys_area` VALUES ('411627', '太康县', '411600');
INSERT INTO `sys_area` VALUES ('411628', '鹿邑县', '411600');
INSERT INTO `sys_area` VALUES ('411681', '项城市', '411600');
INSERT INTO `sys_area` VALUES ('411700', '驻马店市', '410000');
INSERT INTO `sys_area` VALUES ('411701', '市辖区', '411700');
INSERT INTO `sys_area` VALUES ('411702', '驿城区', '411701');
INSERT INTO `sys_area` VALUES ('411721', '西平县', '411700');
INSERT INTO `sys_area` VALUES ('411722', '上蔡县', '411700');
INSERT INTO `sys_area` VALUES ('411723', '平舆县', '411700');
INSERT INTO `sys_area` VALUES ('411724', '正阳县', '411700');
INSERT INTO `sys_area` VALUES ('411725', '确山县', '411700');
INSERT INTO `sys_area` VALUES ('411726', '泌阳县', '411700');
INSERT INTO `sys_area` VALUES ('411727', '汝南县', '411700');
INSERT INTO `sys_area` VALUES ('411728', '遂平县', '411700');
INSERT INTO `sys_area` VALUES ('411729', '新蔡县', '411700');
INSERT INTO `sys_area` VALUES ('411800', '济源市', '410000');
INSERT INTO `sys_area` VALUES ('411801', '市辖区', '411800');
INSERT INTO `sys_area` VALUES ('420000', '湖北省', '0');
INSERT INTO `sys_area` VALUES ('420100', '武汉市', '420000');
INSERT INTO `sys_area` VALUES ('420101', '市辖区', '420100');
INSERT INTO `sys_area` VALUES ('420102', '江岸区', '420101');
INSERT INTO `sys_area` VALUES ('420103', '江汉区', '420101');
INSERT INTO `sys_area` VALUES ('420104', '硚口区', '420101');
INSERT INTO `sys_area` VALUES ('420105', '汉阳区', '420101');
INSERT INTO `sys_area` VALUES ('420106', '武昌区', '420101');
INSERT INTO `sys_area` VALUES ('420107', '青山区', '420101');
INSERT INTO `sys_area` VALUES ('420111', '洪山区', '420101');
INSERT INTO `sys_area` VALUES ('420112', '东西湖区', '420101');
INSERT INTO `sys_area` VALUES ('420113', '汉南区', '420101');
INSERT INTO `sys_area` VALUES ('420114', '蔡甸区', '420101');
INSERT INTO `sys_area` VALUES ('420115', '江夏区', '420101');
INSERT INTO `sys_area` VALUES ('420116', '黄陂区', '420101');
INSERT INTO `sys_area` VALUES ('420117', '新洲区', '420100');
INSERT INTO `sys_area` VALUES ('420200', '黄石市', '420000');
INSERT INTO `sys_area` VALUES ('420201', '市辖区', '420200');
INSERT INTO `sys_area` VALUES ('420202', '黄石港区', '420201');
INSERT INTO `sys_area` VALUES ('420203', '西塞山区', '420201');
INSERT INTO `sys_area` VALUES ('420204', '下陆区', '420201');
INSERT INTO `sys_area` VALUES ('420205', '铁山区', '420201');
INSERT INTO `sys_area` VALUES ('420222', '阳新县', '420200');
INSERT INTO `sys_area` VALUES ('420281', '大冶市', '420200');
INSERT INTO `sys_area` VALUES ('420300', '十堰市', '420000');
INSERT INTO `sys_area` VALUES ('420301', '市辖区', '420300');
INSERT INTO `sys_area` VALUES ('420302', '茅箭区', '420301');
INSERT INTO `sys_area` VALUES ('420303', '张湾区', '420301');
INSERT INTO `sys_area` VALUES ('420321', '郧县', '420300');
INSERT INTO `sys_area` VALUES ('420322', '郧西县', '420300');
INSERT INTO `sys_area` VALUES ('420323', '竹山县', '420300');
INSERT INTO `sys_area` VALUES ('420324', '竹溪县', '420300');
INSERT INTO `sys_area` VALUES ('420325', '房县', '420300');
INSERT INTO `sys_area` VALUES ('420381', '丹江口市', '420300');
INSERT INTO `sys_area` VALUES ('420500', '宜昌市', '420000');
INSERT INTO `sys_area` VALUES ('420501', '市辖区', '420500');
INSERT INTO `sys_area` VALUES ('420502', '西陵区', '420501');
INSERT INTO `sys_area` VALUES ('420503', '伍家岗区', '420501');
INSERT INTO `sys_area` VALUES ('420504', '点军区', '420501');
INSERT INTO `sys_area` VALUES ('420505', '猇亭区', '420501');
INSERT INTO `sys_area` VALUES ('420506', '夷陵区', '420501');
INSERT INTO `sys_area` VALUES ('420525', '远安县', '420500');
INSERT INTO `sys_area` VALUES ('420526', '兴山县', '420500');
INSERT INTO `sys_area` VALUES ('420527', '秭归县', '420500');
INSERT INTO `sys_area` VALUES ('420528', '长阳土家族自治县', '420500');
INSERT INTO `sys_area` VALUES ('420529', '五峰土家族自治县', '420500');
INSERT INTO `sys_area` VALUES ('420581', '宜都市', '420500');
INSERT INTO `sys_area` VALUES ('420582', '当阳市', '420500');
INSERT INTO `sys_area` VALUES ('420583', '枝江市', '420500');
INSERT INTO `sys_area` VALUES ('420600', '襄阳市', '420000');
INSERT INTO `sys_area` VALUES ('420601', '市辖区', '420600');
INSERT INTO `sys_area` VALUES ('420602', '襄城区', '420601');
INSERT INTO `sys_area` VALUES ('420606', '樊城区', '420601');
INSERT INTO `sys_area` VALUES ('420607', '襄州区', '420601');
INSERT INTO `sys_area` VALUES ('420624', '南漳县', '420600');
INSERT INTO `sys_area` VALUES ('420625', '谷城县', '420600');
INSERT INTO `sys_area` VALUES ('420626', '保康县', '420600');
INSERT INTO `sys_area` VALUES ('420682', '老河口市', '420600');
INSERT INTO `sys_area` VALUES ('420683', '枣阳市', '420600');
INSERT INTO `sys_area` VALUES ('420684', '宜城市', '420600');
INSERT INTO `sys_area` VALUES ('420700', '鄂州市', '420000');
INSERT INTO `sys_area` VALUES ('420701', '市辖区', '420700');
INSERT INTO `sys_area` VALUES ('420702', '梁子湖区', '420701');
INSERT INTO `sys_area` VALUES ('420703', '华容区', '420701');
INSERT INTO `sys_area` VALUES ('420704', '鄂城区', '420701');
INSERT INTO `sys_area` VALUES ('420800', '荆门市', '420000');
INSERT INTO `sys_area` VALUES ('420801', '市辖区', '420800');
INSERT INTO `sys_area` VALUES ('420802', '东宝区', '420801');
INSERT INTO `sys_area` VALUES ('420804', '掇刀区', '420801');
INSERT INTO `sys_area` VALUES ('420821', '京山县', '420800');
INSERT INTO `sys_area` VALUES ('420822', '沙洋县', '420800');
INSERT INTO `sys_area` VALUES ('420881', '钟祥市', '420800');
INSERT INTO `sys_area` VALUES ('420900', '孝感市', '420000');
INSERT INTO `sys_area` VALUES ('420901', '市辖区', '420900');
INSERT INTO `sys_area` VALUES ('420902', '孝南区', '420901');
INSERT INTO `sys_area` VALUES ('420921', '孝昌县', '420900');
INSERT INTO `sys_area` VALUES ('420922', '大悟县', '420900');
INSERT INTO `sys_area` VALUES ('420923', '云梦县', '420900');
INSERT INTO `sys_area` VALUES ('420981', '应城市', '420900');
INSERT INTO `sys_area` VALUES ('420982', '安陆市', '420900');
INSERT INTO `sys_area` VALUES ('420984', '汉川市', '420900');
INSERT INTO `sys_area` VALUES ('421000', '荆州市', '420000');
INSERT INTO `sys_area` VALUES ('421001', '市辖区', '421000');
INSERT INTO `sys_area` VALUES ('421002', '沙市区', '421001');
INSERT INTO `sys_area` VALUES ('421003', '荆州区', '421001');
INSERT INTO `sys_area` VALUES ('421022', '公安县', '421000');
INSERT INTO `sys_area` VALUES ('421023', '监利县', '421000');
INSERT INTO `sys_area` VALUES ('421024', '江陵县', '421000');
INSERT INTO `sys_area` VALUES ('421081', '石首市', '421000');
INSERT INTO `sys_area` VALUES ('421083', '洪湖市', '421000');
INSERT INTO `sys_area` VALUES ('421087', '松滋市', '421000');
INSERT INTO `sys_area` VALUES ('421100', '黄冈市', '420000');
INSERT INTO `sys_area` VALUES ('421101', '市辖区', '421100');
INSERT INTO `sys_area` VALUES ('421102', '黄州区', '421101');
INSERT INTO `sys_area` VALUES ('421121', '团风县', '421100');
INSERT INTO `sys_area` VALUES ('421122', '红安县', '421100');
INSERT INTO `sys_area` VALUES ('421123', '罗田县', '421100');
INSERT INTO `sys_area` VALUES ('421124', '英山县', '421100');
INSERT INTO `sys_area` VALUES ('421125', '浠水县', '421100');
INSERT INTO `sys_area` VALUES ('421126', '蕲春县', '421100');
INSERT INTO `sys_area` VALUES ('421127', '黄梅县', '421100');
INSERT INTO `sys_area` VALUES ('421181', '麻城市', '421100');
INSERT INTO `sys_area` VALUES ('421182', '武穴市', '421100');
INSERT INTO `sys_area` VALUES ('421200', '咸宁市', '420000');
INSERT INTO `sys_area` VALUES ('421201', '市辖区', '421200');
INSERT INTO `sys_area` VALUES ('421202', '咸安区', '421201');
INSERT INTO `sys_area` VALUES ('421221', '嘉鱼县', '421200');
INSERT INTO `sys_area` VALUES ('421222', '通城县', '421200');
INSERT INTO `sys_area` VALUES ('421223', '崇阳县', '421200');
INSERT INTO `sys_area` VALUES ('421224', '通山县', '421200');
INSERT INTO `sys_area` VALUES ('421281', '赤壁市', '421200');
INSERT INTO `sys_area` VALUES ('421300', '随州市', '420000');
INSERT INTO `sys_area` VALUES ('421301', '市辖区', '421300');
INSERT INTO `sys_area` VALUES ('421302', '曾都区', '421301');
INSERT INTO `sys_area` VALUES ('421381', '广水市', '421300');
INSERT INTO `sys_area` VALUES ('422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `sys_area` VALUES ('422801', '恩施市', '422800');
INSERT INTO `sys_area` VALUES ('422802', '利川市', '422800');
INSERT INTO `sys_area` VALUES ('422822', '建始县', '422800');
INSERT INTO `sys_area` VALUES ('422823', '巴东县', '422800');
INSERT INTO `sys_area` VALUES ('422825', '宣恩县', '422800');
INSERT INTO `sys_area` VALUES ('422826', '咸丰县', '422800');
INSERT INTO `sys_area` VALUES ('422827', '来凤县', '422800');
INSERT INTO `sys_area` VALUES ('422828', '鹤峰县', '422800');
INSERT INTO `sys_area` VALUES ('429000', '省直辖行政单位', '420000');
INSERT INTO `sys_area` VALUES ('429004', '仙桃市', '429000');
INSERT INTO `sys_area` VALUES ('429005', '潜江市', '429000');
INSERT INTO `sys_area` VALUES ('429006', '天门市', '429000');
INSERT INTO `sys_area` VALUES ('429021', '神农架林区', '429000');
INSERT INTO `sys_area` VALUES ('430000', '湖南省', '0');
INSERT INTO `sys_area` VALUES ('430100', '长沙市', '430000');
INSERT INTO `sys_area` VALUES ('430101', '市辖区', '430100');
INSERT INTO `sys_area` VALUES ('430102', '芙蓉区', '430101');
INSERT INTO `sys_area` VALUES ('430103', '天心区', '430101');
INSERT INTO `sys_area` VALUES ('430104', '岳麓区', '430101');
INSERT INTO `sys_area` VALUES ('430105', '开福区', '430101');
INSERT INTO `sys_area` VALUES ('430111', '雨花区', '430101');
INSERT INTO `sys_area` VALUES ('430121', '长沙县', '430100');
INSERT INTO `sys_area` VALUES ('430122', '望城县', '430100');
INSERT INTO `sys_area` VALUES ('430124', '宁乡县', '430100');
INSERT INTO `sys_area` VALUES ('430181', '浏阳市', '430100');
INSERT INTO `sys_area` VALUES ('430200', '株洲市', '430000');
INSERT INTO `sys_area` VALUES ('430201', '市辖区', '430200');
INSERT INTO `sys_area` VALUES ('430202', '荷塘区', '430201');
INSERT INTO `sys_area` VALUES ('430203', '芦淞区', '430201');
INSERT INTO `sys_area` VALUES ('430204', '石峰区', '430201');
INSERT INTO `sys_area` VALUES ('430211', '天元区', '430201');
INSERT INTO `sys_area` VALUES ('430221', '株洲县', '430200');
INSERT INTO `sys_area` VALUES ('430223', '攸县', '430200');
INSERT INTO `sys_area` VALUES ('430224', '茶陵县', '430200');
INSERT INTO `sys_area` VALUES ('430225', '炎陵县', '430200');
INSERT INTO `sys_area` VALUES ('430281', '醴陵市', '430200');
INSERT INTO `sys_area` VALUES ('430300', '湘潭市', '430000');
INSERT INTO `sys_area` VALUES ('430301', '市辖区', '430300');
INSERT INTO `sys_area` VALUES ('430302', '雨湖区', '430301');
INSERT INTO `sys_area` VALUES ('430304', '岳塘区', '430301');
INSERT INTO `sys_area` VALUES ('430321', '湘潭县', '430300');
INSERT INTO `sys_area` VALUES ('430381', '湘乡市', '430300');
INSERT INTO `sys_area` VALUES ('430382', '韶山市', '430300');
INSERT INTO `sys_area` VALUES ('430400', '衡阳市', '430000');
INSERT INTO `sys_area` VALUES ('430401', '市辖区', '430400');
INSERT INTO `sys_area` VALUES ('430405', '珠晖区', '430401');
INSERT INTO `sys_area` VALUES ('430406', '雁峰区', '430401');
INSERT INTO `sys_area` VALUES ('430407', '石鼓区', '430401');
INSERT INTO `sys_area` VALUES ('430408', '蒸湘区', '430401');
INSERT INTO `sys_area` VALUES ('430412', '南岳区', '430401');
INSERT INTO `sys_area` VALUES ('430421', '衡阳县', '430400');
INSERT INTO `sys_area` VALUES ('430422', '衡南县', '430400');
INSERT INTO `sys_area` VALUES ('430423', '衡山县', '430400');
INSERT INTO `sys_area` VALUES ('430424', '衡东县', '430400');
INSERT INTO `sys_area` VALUES ('430426', '祁东县', '430400');
INSERT INTO `sys_area` VALUES ('430481', '耒阳市', '430400');
INSERT INTO `sys_area` VALUES ('430482', '常宁市', '430400');
INSERT INTO `sys_area` VALUES ('430500', '邵阳市', '430000');
INSERT INTO `sys_area` VALUES ('430501', '市辖区', '430500');
INSERT INTO `sys_area` VALUES ('430502', '双清区', '430501');
INSERT INTO `sys_area` VALUES ('430503', '大祥区', '430501');
INSERT INTO `sys_area` VALUES ('430511', '北塔区', '430501');
INSERT INTO `sys_area` VALUES ('430521', '邵东县', '430500');
INSERT INTO `sys_area` VALUES ('430522', '新邵县', '430500');
INSERT INTO `sys_area` VALUES ('430523', '邵阳县', '430500');
INSERT INTO `sys_area` VALUES ('430524', '隆回县', '430500');
INSERT INTO `sys_area` VALUES ('430525', '洞口县', '430500');
INSERT INTO `sys_area` VALUES ('430527', '绥宁县', '430500');
INSERT INTO `sys_area` VALUES ('430528', '新宁县', '430500');
INSERT INTO `sys_area` VALUES ('430529', '城步苗族自治县', '430500');
INSERT INTO `sys_area` VALUES ('430581', '武冈市', '430500');
INSERT INTO `sys_area` VALUES ('430600', '岳阳市', '430000');
INSERT INTO `sys_area` VALUES ('430601', '市辖区', '430600');
INSERT INTO `sys_area` VALUES ('430602', '岳阳楼区', '430601');
INSERT INTO `sys_area` VALUES ('430603', '云溪区', '430601');
INSERT INTO `sys_area` VALUES ('430611', '君山区', '430601');
INSERT INTO `sys_area` VALUES ('430621', '岳阳县', '430600');
INSERT INTO `sys_area` VALUES ('430623', '华容县', '430600');
INSERT INTO `sys_area` VALUES ('430624', '湘阴县', '430600');
INSERT INTO `sys_area` VALUES ('430626', '平江县', '430600');
INSERT INTO `sys_area` VALUES ('430681', '汨罗市', '430600');
INSERT INTO `sys_area` VALUES ('430682', '临湘市', '430600');
INSERT INTO `sys_area` VALUES ('430700', '常德市', '430000');
INSERT INTO `sys_area` VALUES ('430701', '市辖区', '430700');
INSERT INTO `sys_area` VALUES ('430702', '武陵区', '430701');
INSERT INTO `sys_area` VALUES ('430703', '鼎城区', '430701');
INSERT INTO `sys_area` VALUES ('430721', '安乡县', '430700');
INSERT INTO `sys_area` VALUES ('430722', '汉寿县', '430700');
INSERT INTO `sys_area` VALUES ('430723', '澧县', '430700');
INSERT INTO `sys_area` VALUES ('430724', '临澧县', '430700');
INSERT INTO `sys_area` VALUES ('430725', '桃源县', '430700');
INSERT INTO `sys_area` VALUES ('430726', '石门县', '430700');
INSERT INTO `sys_area` VALUES ('430781', '津市市', '430700');
INSERT INTO `sys_area` VALUES ('430800', '张家界市', '430000');
INSERT INTO `sys_area` VALUES ('430801', '市辖区', '430800');
INSERT INTO `sys_area` VALUES ('430802', '永定区', '430801');
INSERT INTO `sys_area` VALUES ('430811', '武陵源区', '430801');
INSERT INTO `sys_area` VALUES ('430821', '慈利县', '430800');
INSERT INTO `sys_area` VALUES ('430822', '桑植县', '430800');
INSERT INTO `sys_area` VALUES ('430900', '益阳市', '430000');
INSERT INTO `sys_area` VALUES ('430901', '市辖区', '430900');
INSERT INTO `sys_area` VALUES ('430902', '资阳区', '430901');
INSERT INTO `sys_area` VALUES ('430903', '赫山区', '430901');
INSERT INTO `sys_area` VALUES ('430921', '南县', '430900');
INSERT INTO `sys_area` VALUES ('430922', '桃江县', '430900');
INSERT INTO `sys_area` VALUES ('430923', '安化县', '430900');
INSERT INTO `sys_area` VALUES ('430981', '沅江市', '430900');
INSERT INTO `sys_area` VALUES ('431000', '郴州市', '430000');
INSERT INTO `sys_area` VALUES ('431001', '市辖区', '431000');
INSERT INTO `sys_area` VALUES ('431002', '北湖区', '431001');
INSERT INTO `sys_area` VALUES ('431003', '苏仙区', '431001');
INSERT INTO `sys_area` VALUES ('431021', '桂阳县', '431000');
INSERT INTO `sys_area` VALUES ('431022', '宜章县', '431000');
INSERT INTO `sys_area` VALUES ('431023', '永兴县', '431000');
INSERT INTO `sys_area` VALUES ('431024', '嘉禾县', '431000');
INSERT INTO `sys_area` VALUES ('431025', '临武县', '431000');
INSERT INTO `sys_area` VALUES ('431026', '汝城县', '431000');
INSERT INTO `sys_area` VALUES ('431027', '桂东县', '431000');
INSERT INTO `sys_area` VALUES ('431028', '安仁县', '431000');
INSERT INTO `sys_area` VALUES ('431081', '资兴市', '431000');
INSERT INTO `sys_area` VALUES ('431100', '永州市', '430000');
INSERT INTO `sys_area` VALUES ('431101', '市辖区', '431100');
INSERT INTO `sys_area` VALUES ('431102', '零陵区', '431101');
INSERT INTO `sys_area` VALUES ('431103', '冷水滩区', '431101');
INSERT INTO `sys_area` VALUES ('431121', '祁阳县', '431100');
INSERT INTO `sys_area` VALUES ('431122', '东安县', '431100');
INSERT INTO `sys_area` VALUES ('431123', '双牌县', '431100');
INSERT INTO `sys_area` VALUES ('431124', '道县', '431100');
INSERT INTO `sys_area` VALUES ('431125', '江永县', '431100');
INSERT INTO `sys_area` VALUES ('431126', '宁远县', '431100');
INSERT INTO `sys_area` VALUES ('431127', '蓝山县', '431100');
INSERT INTO `sys_area` VALUES ('431128', '新田县', '431100');
INSERT INTO `sys_area` VALUES ('431129', '江华瑶族自治县', '431100');
INSERT INTO `sys_area` VALUES ('431200', '怀化市', '430000');
INSERT INTO `sys_area` VALUES ('431201', '市辖区', '431200');
INSERT INTO `sys_area` VALUES ('431202', '鹤城区', '431201');
INSERT INTO `sys_area` VALUES ('431221', '中方县', '431200');
INSERT INTO `sys_area` VALUES ('431222', '沅陵县', '431200');
INSERT INTO `sys_area` VALUES ('431223', '辰溪县', '431200');
INSERT INTO `sys_area` VALUES ('431224', '溆浦县', '431200');
INSERT INTO `sys_area` VALUES ('431225', '会同县', '431200');
INSERT INTO `sys_area` VALUES ('431226', '麻阳苗族自治县', '431200');
INSERT INTO `sys_area` VALUES ('431227', '新晃侗族自治县', '431200');
INSERT INTO `sys_area` VALUES ('431228', '芷江侗族自治县', '431200');
INSERT INTO `sys_area` VALUES ('431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `sys_area` VALUES ('431230', '通道侗族自治县', '431200');
INSERT INTO `sys_area` VALUES ('431281', '洪江市', '431200');
INSERT INTO `sys_area` VALUES ('431300', '娄底市', '430000');
INSERT INTO `sys_area` VALUES ('431301', '市辖区', '431300');
INSERT INTO `sys_area` VALUES ('431302', '娄星区', '431301');
INSERT INTO `sys_area` VALUES ('431321', '双峰县', '431300');
INSERT INTO `sys_area` VALUES ('431322', '新化县', '431300');
INSERT INTO `sys_area` VALUES ('431381', '冷水江市', '431300');
INSERT INTO `sys_area` VALUES ('431382', '涟源市', '431300');
INSERT INTO `sys_area` VALUES ('433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `sys_area` VALUES ('433101', '吉首市', '433100');
INSERT INTO `sys_area` VALUES ('433122', '泸溪县', '433100');
INSERT INTO `sys_area` VALUES ('433123', '凤凰县', '433100');
INSERT INTO `sys_area` VALUES ('433124', '花垣县', '433100');
INSERT INTO `sys_area` VALUES ('433125', '保靖县', '433100');
INSERT INTO `sys_area` VALUES ('433126', '古丈县', '433100');
INSERT INTO `sys_area` VALUES ('433127', '永顺县', '433100');
INSERT INTO `sys_area` VALUES ('433130', '龙山县', '433100');
INSERT INTO `sys_area` VALUES ('440000', '广东省', '0');
INSERT INTO `sys_area` VALUES ('440100', '广州市', '440000');
INSERT INTO `sys_area` VALUES ('440101', '市辖区', '440100');
INSERT INTO `sys_area` VALUES ('440103', '荔湾区', '440101');
INSERT INTO `sys_area` VALUES ('440104', '越秀区', '440101');
INSERT INTO `sys_area` VALUES ('440105', '海珠区', '440101');
INSERT INTO `sys_area` VALUES ('440106', '天河区', '440101');
INSERT INTO `sys_area` VALUES ('440111', '白云区', '440101');
INSERT INTO `sys_area` VALUES ('440112', '黄埔区', '440101');
INSERT INTO `sys_area` VALUES ('440113', '番禺区', '440101');
INSERT INTO `sys_area` VALUES ('440114', '花都区', '440101');
INSERT INTO `sys_area` VALUES ('440115', '南沙区', '440101');
INSERT INTO `sys_area` VALUES ('440116', '萝岗区', '440101');
INSERT INTO `sys_area` VALUES ('440183', '增城市', '440100');
INSERT INTO `sys_area` VALUES ('440184', '从化市', '440100');
INSERT INTO `sys_area` VALUES ('440200', '韶关市', '440000');
INSERT INTO `sys_area` VALUES ('440201', '市辖区', '440200');
INSERT INTO `sys_area` VALUES ('440203', '武江区', '440201');
INSERT INTO `sys_area` VALUES ('440204', '浈江区', '440201');
INSERT INTO `sys_area` VALUES ('440205', '曲江区', '440201');
INSERT INTO `sys_area` VALUES ('440222', '始兴县', '440200');
INSERT INTO `sys_area` VALUES ('440224', '仁化县', '440200');
INSERT INTO `sys_area` VALUES ('440229', '翁源县', '440200');
INSERT INTO `sys_area` VALUES ('440232', '乳源瑶族自治县', '440200');
INSERT INTO `sys_area` VALUES ('440233', '新丰县', '440200');
INSERT INTO `sys_area` VALUES ('440281', '乐昌市', '440200');
INSERT INTO `sys_area` VALUES ('440282', '南雄市', '440200');
INSERT INTO `sys_area` VALUES ('440300', '深圳市', '440000');
INSERT INTO `sys_area` VALUES ('440301', '市辖区', '440300');
INSERT INTO `sys_area` VALUES ('440303', '罗湖区', '440301');
INSERT INTO `sys_area` VALUES ('440304', '福田区', '440301');
INSERT INTO `sys_area` VALUES ('440305', '南山区', '440301');
INSERT INTO `sys_area` VALUES ('440306', '宝安区', '440301');
INSERT INTO `sys_area` VALUES ('440307', '龙岗区', '440301');
INSERT INTO `sys_area` VALUES ('440308', '盐田区', '440301');
INSERT INTO `sys_area` VALUES ('440400', '珠海市', '440000');
INSERT INTO `sys_area` VALUES ('440401', '市辖区', '440400');
INSERT INTO `sys_area` VALUES ('440402', '香洲区', '440401');
INSERT INTO `sys_area` VALUES ('440403', '斗门区', '440401');
INSERT INTO `sys_area` VALUES ('440404', '金湾区', '440401');
INSERT INTO `sys_area` VALUES ('440500', '汕头市', '440000');
INSERT INTO `sys_area` VALUES ('440501', '市辖区', '440500');
INSERT INTO `sys_area` VALUES ('440507', '龙湖区', '440501');
INSERT INTO `sys_area` VALUES ('440511', '金平区', '440501');
INSERT INTO `sys_area` VALUES ('440512', '濠江区', '440501');
INSERT INTO `sys_area` VALUES ('440513', '潮阳区', '440501');
INSERT INTO `sys_area` VALUES ('440514', '潮南区', '440501');
INSERT INTO `sys_area` VALUES ('440515', '澄海区', '440501');
INSERT INTO `sys_area` VALUES ('440523', '南澳县', '440500');
INSERT INTO `sys_area` VALUES ('440600', '佛山市', '440000');
INSERT INTO `sys_area` VALUES ('440601', '市辖区', '440600');
INSERT INTO `sys_area` VALUES ('440604', '禅城区', '440600');
INSERT INTO `sys_area` VALUES ('440605', '南海区', '440600');
INSERT INTO `sys_area` VALUES ('440606', '顺德区', '440600');
INSERT INTO `sys_area` VALUES ('440607', '三水区', '440600');
INSERT INTO `sys_area` VALUES ('440608', '高明区', '440600');
INSERT INTO `sys_area` VALUES ('440700', '江门市', '440000');
INSERT INTO `sys_area` VALUES ('440701', '市辖区', '440700');
INSERT INTO `sys_area` VALUES ('440703', '蓬江区', '440701');
INSERT INTO `sys_area` VALUES ('440704', '江海区', '440701');
INSERT INTO `sys_area` VALUES ('440705', '新会区', '440701');
INSERT INTO `sys_area` VALUES ('440781', '台山市', '440700');
INSERT INTO `sys_area` VALUES ('440783', '开平市', '440700');
INSERT INTO `sys_area` VALUES ('440784', '鹤山市', '440700');
INSERT INTO `sys_area` VALUES ('440785', '恩平市', '440700');
INSERT INTO `sys_area` VALUES ('440800', '湛江市', '440000');
INSERT INTO `sys_area` VALUES ('440801', '市辖区', '440800');
INSERT INTO `sys_area` VALUES ('440802', '赤坎区', '440801');
INSERT INTO `sys_area` VALUES ('440803', '霞山区', '440801');
INSERT INTO `sys_area` VALUES ('440804', '坡头区', '440801');
INSERT INTO `sys_area` VALUES ('440811', '麻章区', '440801');
INSERT INTO `sys_area` VALUES ('440823', '遂溪县', '440800');
INSERT INTO `sys_area` VALUES ('440825', '徐闻县', '440800');
INSERT INTO `sys_area` VALUES ('440881', '廉江市', '440800');
INSERT INTO `sys_area` VALUES ('440882', '雷州市', '440800');
INSERT INTO `sys_area` VALUES ('440883', '吴川市', '440800');
INSERT INTO `sys_area` VALUES ('440900', '茂名市', '440000');
INSERT INTO `sys_area` VALUES ('440901', '市辖区', '440900');
INSERT INTO `sys_area` VALUES ('440902', '茂南区', '440901');
INSERT INTO `sys_area` VALUES ('440903', '茂港区', '440901');
INSERT INTO `sys_area` VALUES ('440923', '电白县', '440900');
INSERT INTO `sys_area` VALUES ('440981', '高州市', '440900');
INSERT INTO `sys_area` VALUES ('440982', '化州市', '440900');
INSERT INTO `sys_area` VALUES ('440983', '信宜市', '440900');
INSERT INTO `sys_area` VALUES ('441200', '肇庆市', '440000');
INSERT INTO `sys_area` VALUES ('441201', '市辖区', '441200');
INSERT INTO `sys_area` VALUES ('441202', '端州区', '441201');
INSERT INTO `sys_area` VALUES ('441203', '鼎湖区', '441201');
INSERT INTO `sys_area` VALUES ('441223', '广宁县', '441200');
INSERT INTO `sys_area` VALUES ('441224', '怀集县', '441200');
INSERT INTO `sys_area` VALUES ('441225', '封开县', '441200');
INSERT INTO `sys_area` VALUES ('441226', '德庆县', '441200');
INSERT INTO `sys_area` VALUES ('441283', '高要市', '441200');
INSERT INTO `sys_area` VALUES ('441284', '四会市', '441200');
INSERT INTO `sys_area` VALUES ('441300', '惠州市', '440000');
INSERT INTO `sys_area` VALUES ('441301', '市辖区', '441300');
INSERT INTO `sys_area` VALUES ('441302', '惠城区', '441301');
INSERT INTO `sys_area` VALUES ('441303', '惠阳区', '441301');
INSERT INTO `sys_area` VALUES ('441322', '博罗县', '441300');
INSERT INTO `sys_area` VALUES ('441323', '惠东县', '441300');
INSERT INTO `sys_area` VALUES ('441324', '龙门县', '441300');
INSERT INTO `sys_area` VALUES ('441400', '梅州市', '440000');
INSERT INTO `sys_area` VALUES ('441401', '市辖区', '441400');
INSERT INTO `sys_area` VALUES ('441402', '梅江区', '441401');
INSERT INTO `sys_area` VALUES ('441421', '梅县', '441400');
INSERT INTO `sys_area` VALUES ('441422', '大埔县', '441400');
INSERT INTO `sys_area` VALUES ('441423', '丰顺县', '441400');
INSERT INTO `sys_area` VALUES ('441424', '五华县', '441400');
INSERT INTO `sys_area` VALUES ('441426', '平远县', '441400');
INSERT INTO `sys_area` VALUES ('441427', '蕉岭县', '441400');
INSERT INTO `sys_area` VALUES ('441481', '兴宁市', '441400');
INSERT INTO `sys_area` VALUES ('441500', '汕尾市', '440000');
INSERT INTO `sys_area` VALUES ('441501', '市辖区', '441500');
INSERT INTO `sys_area` VALUES ('441502', '城区', '441501');
INSERT INTO `sys_area` VALUES ('441521', '海丰县', '441500');
INSERT INTO `sys_area` VALUES ('441523', '陆河县', '441500');
INSERT INTO `sys_area` VALUES ('441581', '陆丰市', '441500');
INSERT INTO `sys_area` VALUES ('441600', '河源市', '440000');
INSERT INTO `sys_area` VALUES ('441601', '市辖区', '441600');
INSERT INTO `sys_area` VALUES ('441602', '源城区', '441601');
INSERT INTO `sys_area` VALUES ('441621', '紫金县', '441600');
INSERT INTO `sys_area` VALUES ('441622', '龙川县', '441600');
INSERT INTO `sys_area` VALUES ('441623', '连平县', '441600');
INSERT INTO `sys_area` VALUES ('441624', '和平县', '441600');
INSERT INTO `sys_area` VALUES ('441625', '东源县', '441600');
INSERT INTO `sys_area` VALUES ('441700', '阳江市', '440000');
INSERT INTO `sys_area` VALUES ('441701', '市辖区', '441700');
INSERT INTO `sys_area` VALUES ('441702', '江城区', '441701');
INSERT INTO `sys_area` VALUES ('441721', '阳西县', '441700');
INSERT INTO `sys_area` VALUES ('441723', '阳东县', '441700');
INSERT INTO `sys_area` VALUES ('441781', '阳春市', '441700');
INSERT INTO `sys_area` VALUES ('441800', '清远市', '440000');
INSERT INTO `sys_area` VALUES ('441801', '市辖区', '441800');
INSERT INTO `sys_area` VALUES ('441802', '清城区', '441801');
INSERT INTO `sys_area` VALUES ('441821', '佛冈县', '441800');
INSERT INTO `sys_area` VALUES ('441823', '阳山县', '441800');
INSERT INTO `sys_area` VALUES ('441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `sys_area` VALUES ('441826', '连南瑶族自治县', '441800');
INSERT INTO `sys_area` VALUES ('441827', '清新县', '441800');
INSERT INTO `sys_area` VALUES ('441881', '英德市', '441800');
INSERT INTO `sys_area` VALUES ('441882', '连州市', '441800');
INSERT INTO `sys_area` VALUES ('441900', '东莞市', '440000');
INSERT INTO `sys_area` VALUES ('442000', '中山市', '440000');
INSERT INTO `sys_area` VALUES ('445100', '潮州市', '440000');
INSERT INTO `sys_area` VALUES ('445101', '市辖区', '445100');
INSERT INTO `sys_area` VALUES ('445102', '湘桥区', '445101');
INSERT INTO `sys_area` VALUES ('445121', '潮安区', '445100');
INSERT INTO `sys_area` VALUES ('445122', '饶平县', '445100');
INSERT INTO `sys_area` VALUES ('445200', '揭阳市', '440000');
INSERT INTO `sys_area` VALUES ('445201', '市辖区', '445200');
INSERT INTO `sys_area` VALUES ('445202', '榕城区', '445201');
INSERT INTO `sys_area` VALUES ('445221', '揭东县', '445200');
INSERT INTO `sys_area` VALUES ('445222', '揭西县', '445200');
INSERT INTO `sys_area` VALUES ('445224', '惠来县', '445200');
INSERT INTO `sys_area` VALUES ('445281', '普宁市', '445200');
INSERT INTO `sys_area` VALUES ('445300', '云浮市', '440000');
INSERT INTO `sys_area` VALUES ('445301', '市辖区', '445300');
INSERT INTO `sys_area` VALUES ('445302', '云城区', '445301');
INSERT INTO `sys_area` VALUES ('445321', '新兴县', '445300');
INSERT INTO `sys_area` VALUES ('445322', '郁南县', '445300');
INSERT INTO `sys_area` VALUES ('445323', '云安县', '445300');
INSERT INTO `sys_area` VALUES ('445381', '罗定市', '445300');
INSERT INTO `sys_area` VALUES ('450000', '广西壮族自治区', '0');
INSERT INTO `sys_area` VALUES ('450100', '南宁市', '450000');
INSERT INTO `sys_area` VALUES ('450101', '市辖区', '450100');
INSERT INTO `sys_area` VALUES ('450102', '兴宁区', '450101');
INSERT INTO `sys_area` VALUES ('450103', '青秀区', '450101');
INSERT INTO `sys_area` VALUES ('450105', '江南区', '450101');
INSERT INTO `sys_area` VALUES ('450107', '西乡塘区', '450101');
INSERT INTO `sys_area` VALUES ('450108', '良庆区', '450101');
INSERT INTO `sys_area` VALUES ('450109', '邕宁区', '450101');
INSERT INTO `sys_area` VALUES ('450122', '武鸣县', '450100');
INSERT INTO `sys_area` VALUES ('450123', '隆安县', '450100');
INSERT INTO `sys_area` VALUES ('450124', '马山县', '450100');
INSERT INTO `sys_area` VALUES ('450125', '上林县', '450100');
INSERT INTO `sys_area` VALUES ('450126', '宾阳县', '450100');
INSERT INTO `sys_area` VALUES ('450127', '横县', '450100');
INSERT INTO `sys_area` VALUES ('450200', '柳州市', '450000');
INSERT INTO `sys_area` VALUES ('450201', '市辖区', '450200');
INSERT INTO `sys_area` VALUES ('450202', '城中区', '450201');
INSERT INTO `sys_area` VALUES ('450203', '鱼峰区', '450201');
INSERT INTO `sys_area` VALUES ('450204', '柳南区', '450201');
INSERT INTO `sys_area` VALUES ('450205', '柳北区', '450201');
INSERT INTO `sys_area` VALUES ('450221', '柳江县', '450200');
INSERT INTO `sys_area` VALUES ('450222', '柳城县', '450200');
INSERT INTO `sys_area` VALUES ('450223', '鹿寨县', '450200');
INSERT INTO `sys_area` VALUES ('450224', '融安县', '450200');
INSERT INTO `sys_area` VALUES ('450225', '融水苗族自治县', '450200');
INSERT INTO `sys_area` VALUES ('450226', '三江侗族自治县', '450200');
INSERT INTO `sys_area` VALUES ('450300', '桂林市', '450000');
INSERT INTO `sys_area` VALUES ('450301', '市辖区', '450300');
INSERT INTO `sys_area` VALUES ('450302', '秀峰区', '450301');
INSERT INTO `sys_area` VALUES ('450303', '叠彩区', '450301');
INSERT INTO `sys_area` VALUES ('450304', '象山区', '450301');
INSERT INTO `sys_area` VALUES ('450305', '七星区', '450301');
INSERT INTO `sys_area` VALUES ('450311', '雁山区', '450301');
INSERT INTO `sys_area` VALUES ('450321', '阳朔县', '450300');
INSERT INTO `sys_area` VALUES ('450322', '临桂区', '450300');
INSERT INTO `sys_area` VALUES ('450323', '灵川县', '450300');
INSERT INTO `sys_area` VALUES ('450324', '全州县', '450300');
INSERT INTO `sys_area` VALUES ('450325', '兴安县', '450300');
INSERT INTO `sys_area` VALUES ('450326', '永福县', '450300');
INSERT INTO `sys_area` VALUES ('450327', '灌阳县', '450300');
INSERT INTO `sys_area` VALUES ('450328', '龙胜各族自治县', '450300');
INSERT INTO `sys_area` VALUES ('450329', '资源县', '450300');
INSERT INTO `sys_area` VALUES ('450330', '平乐县', '450300');
INSERT INTO `sys_area` VALUES ('450331', '荔浦县', '450300');
INSERT INTO `sys_area` VALUES ('450332', '恭城瑶族自治县', '450300');
INSERT INTO `sys_area` VALUES ('450400', '梧州市', '450000');
INSERT INTO `sys_area` VALUES ('450401', '市辖区', '450400');
INSERT INTO `sys_area` VALUES ('450403', '万秀区', '450401');
INSERT INTO `sys_area` VALUES ('450404', '蝶山区', '450401');
INSERT INTO `sys_area` VALUES ('450405', '长洲区', '450401');
INSERT INTO `sys_area` VALUES ('450421', '苍梧县', '450400');
INSERT INTO `sys_area` VALUES ('450422', '藤县', '450400');
INSERT INTO `sys_area` VALUES ('450423', '蒙山县', '450400');
INSERT INTO `sys_area` VALUES ('450481', '岑溪市', '450400');
INSERT INTO `sys_area` VALUES ('450500', '北海市', '450000');
INSERT INTO `sys_area` VALUES ('450501', '市辖区', '450500');
INSERT INTO `sys_area` VALUES ('450502', '海城区', '450501');
INSERT INTO `sys_area` VALUES ('450503', '银海区', '450501');
INSERT INTO `sys_area` VALUES ('450512', '铁山港区', '450501');
INSERT INTO `sys_area` VALUES ('450521', '合浦县', '450500');
INSERT INTO `sys_area` VALUES ('450600', '防城港市', '450000');
INSERT INTO `sys_area` VALUES ('450601', '市辖区', '450600');
INSERT INTO `sys_area` VALUES ('450602', '港口区', '450601');
INSERT INTO `sys_area` VALUES ('450603', '防城区', '450601');
INSERT INTO `sys_area` VALUES ('450621', '上思县', '450600');
INSERT INTO `sys_area` VALUES ('450681', '东兴市', '450600');
INSERT INTO `sys_area` VALUES ('450700', '钦州市', '450000');
INSERT INTO `sys_area` VALUES ('450701', '市辖区', '450700');
INSERT INTO `sys_area` VALUES ('450702', '钦南区', '450700');
INSERT INTO `sys_area` VALUES ('450703', '钦北区', '450700');
INSERT INTO `sys_area` VALUES ('450721', '灵山县', '450700');
INSERT INTO `sys_area` VALUES ('450722', '浦北县', '450700');
INSERT INTO `sys_area` VALUES ('450800', '贵港市', '450000');
INSERT INTO `sys_area` VALUES ('450801', '市辖区', '450800');
INSERT INTO `sys_area` VALUES ('450802', '港北区', '450801');
INSERT INTO `sys_area` VALUES ('450803', '港南区', '450801');
INSERT INTO `sys_area` VALUES ('450804', '覃塘区', '450801');
INSERT INTO `sys_area` VALUES ('450821', '平南县', '450800');
INSERT INTO `sys_area` VALUES ('450881', '桂平市', '450800');
INSERT INTO `sys_area` VALUES ('450900', '玉林市', '450000');
INSERT INTO `sys_area` VALUES ('450901', '市辖区', '450900');
INSERT INTO `sys_area` VALUES ('450902', '玉州区', '450901');
INSERT INTO `sys_area` VALUES ('450921', '容县', '450900');
INSERT INTO `sys_area` VALUES ('450922', '陆川县', '450900');
INSERT INTO `sys_area` VALUES ('450923', '博白县', '450900');
INSERT INTO `sys_area` VALUES ('450924', '兴业县', '450900');
INSERT INTO `sys_area` VALUES ('450981', '北流市', '450900');
INSERT INTO `sys_area` VALUES ('451000', '百色市', '450000');
INSERT INTO `sys_area` VALUES ('451001', '市辖区', '451000');
INSERT INTO `sys_area` VALUES ('451002', '右江区', '451001');
INSERT INTO `sys_area` VALUES ('451021', '田阳县', '451000');
INSERT INTO `sys_area` VALUES ('451022', '田东县', '451000');
INSERT INTO `sys_area` VALUES ('451023', '平果县', '451000');
INSERT INTO `sys_area` VALUES ('451024', '德保县', '451000');
INSERT INTO `sys_area` VALUES ('451025', '靖西县', '451000');
INSERT INTO `sys_area` VALUES ('451026', '那坡县', '451000');
INSERT INTO `sys_area` VALUES ('451027', '凌云县', '451000');
INSERT INTO `sys_area` VALUES ('451028', '乐业县', '451000');
INSERT INTO `sys_area` VALUES ('451029', '田林县', '451000');
INSERT INTO `sys_area` VALUES ('451030', '西林县', '451000');
INSERT INTO `sys_area` VALUES ('451031', '隆林各族自治县', '451000');
INSERT INTO `sys_area` VALUES ('451100', '贺州市', '450000');
INSERT INTO `sys_area` VALUES ('451101', '市辖区', '451100');
INSERT INTO `sys_area` VALUES ('451102', '八步区', '451101');
INSERT INTO `sys_area` VALUES ('451121', '昭平县', '451100');
INSERT INTO `sys_area` VALUES ('451122', '钟山县', '451100');
INSERT INTO `sys_area` VALUES ('451123', '富川瑶族自治县', '451100');
INSERT INTO `sys_area` VALUES ('451200', '河池市', '450000');
INSERT INTO `sys_area` VALUES ('451201', '市辖区', '451200');
INSERT INTO `sys_area` VALUES ('451202', '金城江区', '451201');
INSERT INTO `sys_area` VALUES ('451221', '南丹县', '451200');
INSERT INTO `sys_area` VALUES ('451222', '天峨县', '451200');
INSERT INTO `sys_area` VALUES ('451223', '凤山县', '451200');
INSERT INTO `sys_area` VALUES ('451224', '东兰县', '451200');
INSERT INTO `sys_area` VALUES ('451225', '罗城仫佬族自治县', '451200');
INSERT INTO `sys_area` VALUES ('451226', '环江毛南族自治县', '451200');
INSERT INTO `sys_area` VALUES ('451227', '巴马瑶族自治县', '451200');
INSERT INTO `sys_area` VALUES ('451228', '都安瑶族自治县', '451200');
INSERT INTO `sys_area` VALUES ('451229', '大化瑶族自治县', '451200');
INSERT INTO `sys_area` VALUES ('451281', '宜州市', '451200');
INSERT INTO `sys_area` VALUES ('451300', '来宾市', '450000');
INSERT INTO `sys_area` VALUES ('451301', '市辖区', '451300');
INSERT INTO `sys_area` VALUES ('451302', '兴宾区', '451301');
INSERT INTO `sys_area` VALUES ('451321', '忻城县', '451300');
INSERT INTO `sys_area` VALUES ('451322', '象州县', '451300');
INSERT INTO `sys_area` VALUES ('451323', '武宣县', '451300');
INSERT INTO `sys_area` VALUES ('451324', '金秀瑶族自治县', '451300');
INSERT INTO `sys_area` VALUES ('451381', '合山市', '451300');
INSERT INTO `sys_area` VALUES ('451400', '崇左市', '450000');
INSERT INTO `sys_area` VALUES ('451401', '市辖区', '451400');
INSERT INTO `sys_area` VALUES ('451402', '江洲区', '451401');
INSERT INTO `sys_area` VALUES ('451421', '扶绥县', '451400');
INSERT INTO `sys_area` VALUES ('451422', '宁明县', '451400');
INSERT INTO `sys_area` VALUES ('451423', '龙州县', '451400');
INSERT INTO `sys_area` VALUES ('451424', '大新县', '451400');
INSERT INTO `sys_area` VALUES ('451425', '天等县', '451400');
INSERT INTO `sys_area` VALUES ('451481', '凭祥市', '451400');
INSERT INTO `sys_area` VALUES ('460000', '海南省', '0');
INSERT INTO `sys_area` VALUES ('460100', '海口市', '460000');
INSERT INTO `sys_area` VALUES ('460101', '市辖区', '460100');
INSERT INTO `sys_area` VALUES ('460105', '秀英区', '460101');
INSERT INTO `sys_area` VALUES ('460106', '龙华区', '460101');
INSERT INTO `sys_area` VALUES ('460107', '琼山区', '460101');
INSERT INTO `sys_area` VALUES ('460108', '美兰区', '460101');
INSERT INTO `sys_area` VALUES ('460200', '三亚市', '460000');
INSERT INTO `sys_area` VALUES ('460201', '市辖区', '460200');
INSERT INTO `sys_area` VALUES ('469000', '省直辖县级行政单位', '460000');
INSERT INTO `sys_area` VALUES ('469001', '五指山市', '469000');
INSERT INTO `sys_area` VALUES ('469002', '琼海市', '469000');
INSERT INTO `sys_area` VALUES ('469003', '儋州市', '469000');
INSERT INTO `sys_area` VALUES ('469005', '文昌市', '469000');
INSERT INTO `sys_area` VALUES ('469006', '万宁市', '469000');
INSERT INTO `sys_area` VALUES ('469007', '东方市', '469000');
INSERT INTO `sys_area` VALUES ('469025', '定安县', '469000');
INSERT INTO `sys_area` VALUES ('469026', '屯昌县', '469000');
INSERT INTO `sys_area` VALUES ('469027', '澄迈县', '469000');
INSERT INTO `sys_area` VALUES ('469028', '临高县', '469000');
INSERT INTO `sys_area` VALUES ('469030', '白沙黎族自治县', '469000');
INSERT INTO `sys_area` VALUES ('469031', '昌江黎族自治县', '469000');
INSERT INTO `sys_area` VALUES ('469033', '乐东黎族自治县', '469000');
INSERT INTO `sys_area` VALUES ('469034', '陵水黎族自治县', '469000');
INSERT INTO `sys_area` VALUES ('469035', '保亭黎族苗族自治县', '469000');
INSERT INTO `sys_area` VALUES ('469036', '琼中黎族苗族自治县', '469000');
INSERT INTO `sys_area` VALUES ('469037', '西沙群岛', '469000');
INSERT INTO `sys_area` VALUES ('469038', '南沙群岛', '469000');
INSERT INTO `sys_area` VALUES ('469039', '中沙群岛的岛礁及其海域', '469000');
INSERT INTO `sys_area` VALUES ('500000', '重庆市', '0');
INSERT INTO `sys_area` VALUES ('500100', '万州区', '500000');
INSERT INTO `sys_area` VALUES ('500101', '万州区', '500100');
INSERT INTO `sys_area` VALUES ('500200', '涪陵区', '500000');
INSERT INTO `sys_area` VALUES ('500201', '涪陵区', '500200');
INSERT INTO `sys_area` VALUES ('500300', '渝中区', '500000');
INSERT INTO `sys_area` VALUES ('500301', '渝中区', '500300');
INSERT INTO `sys_area` VALUES ('500400', '大渡口区', '500000');
INSERT INTO `sys_area` VALUES ('500401', '大渡口区', '500400');
INSERT INTO `sys_area` VALUES ('500500', '江北区', '500000');
INSERT INTO `sys_area` VALUES ('500501', '江北区', '500500');
INSERT INTO `sys_area` VALUES ('500600', '沙坪坝区', '500000');
INSERT INTO `sys_area` VALUES ('500601', '沙坪坝区', '500600');
INSERT INTO `sys_area` VALUES ('500700', '九龙坡区', '500000');
INSERT INTO `sys_area` VALUES ('500701', '九龙坡区', '500700');
INSERT INTO `sys_area` VALUES ('500800', '南岸区', '500000');
INSERT INTO `sys_area` VALUES ('500801', '南岸区', '500800');
INSERT INTO `sys_area` VALUES ('500900', '北碚区', '500000');
INSERT INTO `sys_area` VALUES ('500901', '北碚区', '500900');
INSERT INTO `sys_area` VALUES ('501000', '万盛区', '500000');
INSERT INTO `sys_area` VALUES ('501001', '万盛区', '501000');
INSERT INTO `sys_area` VALUES ('501100', '双桥区', '500000');
INSERT INTO `sys_area` VALUES ('501101', '双桥区', '501100');
INSERT INTO `sys_area` VALUES ('501200', '渝北区', '500000');
INSERT INTO `sys_area` VALUES ('501201', '渝北区', '501200');
INSERT INTO `sys_area` VALUES ('501300', '巴南区', '500000');
INSERT INTO `sys_area` VALUES ('501301', '巴南区', '501300');
INSERT INTO `sys_area` VALUES ('501400', '黔江区', '500000');
INSERT INTO `sys_area` VALUES ('501401', '黔江区', '501400');
INSERT INTO `sys_area` VALUES ('501500', '长寿区', '500000');
INSERT INTO `sys_area` VALUES ('501501', '长寿区', '501500');
INSERT INTO `sys_area` VALUES ('502200', '綦江区', '500000');
INSERT INTO `sys_area` VALUES ('502201', '綦江区', '502200');
INSERT INTO `sys_area` VALUES ('502300', '潼南县', '500000');
INSERT INTO `sys_area` VALUES ('502301', '潼南县', '502300');
INSERT INTO `sys_area` VALUES ('502400', '铜梁县', '500000');
INSERT INTO `sys_area` VALUES ('502401', '铜梁县', '502400');
INSERT INTO `sys_area` VALUES ('502500', '大足区', '500000');
INSERT INTO `sys_area` VALUES ('502501', '大足区', '502500');
INSERT INTO `sys_area` VALUES ('502600', '荣昌县', '500000');
INSERT INTO `sys_area` VALUES ('502601', '荣昌县', '502600');
INSERT INTO `sys_area` VALUES ('502700', '璧山县', '500000');
INSERT INTO `sys_area` VALUES ('502701', '璧山县', '502700');
INSERT INTO `sys_area` VALUES ('502800', '梁平县', '500000');
INSERT INTO `sys_area` VALUES ('502801', '梁平县', '502800');
INSERT INTO `sys_area` VALUES ('502900', '城口县', '500000');
INSERT INTO `sys_area` VALUES ('502901', '城口县', '502900');
INSERT INTO `sys_area` VALUES ('503000', '丰都县', '500000');
INSERT INTO `sys_area` VALUES ('503001', '丰都县', '503000');
INSERT INTO `sys_area` VALUES ('503100', '垫江县', '500000');
INSERT INTO `sys_area` VALUES ('503101', '垫江县', '503100');
INSERT INTO `sys_area` VALUES ('503200', '武隆县', '500000');
INSERT INTO `sys_area` VALUES ('503201', '武隆县', '503200');
INSERT INTO `sys_area` VALUES ('503300', '忠县', '500000');
INSERT INTO `sys_area` VALUES ('503301', '忠县', '503300');
INSERT INTO `sys_area` VALUES ('503400', '开县', '500000');
INSERT INTO `sys_area` VALUES ('503401', '开县', '503400');
INSERT INTO `sys_area` VALUES ('503500', '云阳县', '500000');
INSERT INTO `sys_area` VALUES ('503501', '云阳县', '503500');
INSERT INTO `sys_area` VALUES ('503600', '奉节县', '500000');
INSERT INTO `sys_area` VALUES ('503601', '奉节县', '503600');
INSERT INTO `sys_area` VALUES ('503700', '巫山县', '500000');
INSERT INTO `sys_area` VALUES ('503701', '巫山县', '503700');
INSERT INTO `sys_area` VALUES ('503800', '巫溪县', '500000');
INSERT INTO `sys_area` VALUES ('503801', '巫溪县', '503800');
INSERT INTO `sys_area` VALUES ('504000', '石柱县', '500000');
INSERT INTO `sys_area` VALUES ('504001', '石柱县', '504000');
INSERT INTO `sys_area` VALUES ('504100', '秀山县', '500000');
INSERT INTO `sys_area` VALUES ('504101', '秀山县', '504100');
INSERT INTO `sys_area` VALUES ('504200', '酉阳县', '500000');
INSERT INTO `sys_area` VALUES ('504201', '酉阳县', '504200');
INSERT INTO `sys_area` VALUES ('504300', '彭水县', '500000');
INSERT INTO `sys_area` VALUES ('504301', '彭水县', '504300');
INSERT INTO `sys_area` VALUES ('508100', '江津区', '500000');
INSERT INTO `sys_area` VALUES ('508101', '江津区', '508100');
INSERT INTO `sys_area` VALUES ('508200', '合川区', '500000');
INSERT INTO `sys_area` VALUES ('508201', '合川区', '508200');
INSERT INTO `sys_area` VALUES ('508300', '永川区', '500000');
INSERT INTO `sys_area` VALUES ('508301', '永川区', '508300');
INSERT INTO `sys_area` VALUES ('508400', '南川区', '500000');
INSERT INTO `sys_area` VALUES ('508401', '南川区', '508400');
INSERT INTO `sys_area` VALUES ('510000', '四川省', '0');
INSERT INTO `sys_area` VALUES ('510100', '成都市', '510000');
INSERT INTO `sys_area` VALUES ('510101', '市辖区', '510100');
INSERT INTO `sys_area` VALUES ('510104', '锦江区', '510101');
INSERT INTO `sys_area` VALUES ('510105', '青羊区', '510101');
INSERT INTO `sys_area` VALUES ('510106', '金牛区', '510101');
INSERT INTO `sys_area` VALUES ('510107', '武侯区', '510101');
INSERT INTO `sys_area` VALUES ('510108', '成华区', '510101');
INSERT INTO `sys_area` VALUES ('510112', '龙泉驿区', '510100');
INSERT INTO `sys_area` VALUES ('510113', '青白江区', '510101');
INSERT INTO `sys_area` VALUES ('510114', '新都区', '510101');
INSERT INTO `sys_area` VALUES ('510115', '温江区', '510101');
INSERT INTO `sys_area` VALUES ('510121', '金堂县', '510100');
INSERT INTO `sys_area` VALUES ('510122', '双流县', '510100');
INSERT INTO `sys_area` VALUES ('510124', '郫县', '510100');
INSERT INTO `sys_area` VALUES ('510129', '大邑县', '510100');
INSERT INTO `sys_area` VALUES ('510131', '蒲江县', '510100');
INSERT INTO `sys_area` VALUES ('510132', '新津县', '510100');
INSERT INTO `sys_area` VALUES ('510181', '都江堰市', '510100');
INSERT INTO `sys_area` VALUES ('510182', '彭州市', '510100');
INSERT INTO `sys_area` VALUES ('510183', '邛崃市', '510100');
INSERT INTO `sys_area` VALUES ('510184', '崇州市', '510100');
INSERT INTO `sys_area` VALUES ('510300', '自贡市', '510000');
INSERT INTO `sys_area` VALUES ('510301', '市辖区', '510300');
INSERT INTO `sys_area` VALUES ('510302', '自流井区', '510301');
INSERT INTO `sys_area` VALUES ('510303', '贡井区', '510301');
INSERT INTO `sys_area` VALUES ('510304', '大安区', '510301');
INSERT INTO `sys_area` VALUES ('510311', '沿滩区', '510301');
INSERT INTO `sys_area` VALUES ('510321', '荣县', '510300');
INSERT INTO `sys_area` VALUES ('510322', '富顺县', '510300');
INSERT INTO `sys_area` VALUES ('510400', '攀枝花市', '510000');
INSERT INTO `sys_area` VALUES ('510401', '市辖区', '510400');
INSERT INTO `sys_area` VALUES ('510402', '东区', '510401');
INSERT INTO `sys_area` VALUES ('510403', '西区', '510401');
INSERT INTO `sys_area` VALUES ('510411', '仁和区', '510401');
INSERT INTO `sys_area` VALUES ('510421', '米易县', '510400');
INSERT INTO `sys_area` VALUES ('510422', '盐边县', '510400');
INSERT INTO `sys_area` VALUES ('510500', '泸州市', '510000');
INSERT INTO `sys_area` VALUES ('510501', '市辖区', '510500');
INSERT INTO `sys_area` VALUES ('510502', '江阳区', '510501');
INSERT INTO `sys_area` VALUES ('510503', '纳溪区', '510501');
INSERT INTO `sys_area` VALUES ('510504', '龙马潭区', '510501');
INSERT INTO `sys_area` VALUES ('510521', '泸县', '510500');
INSERT INTO `sys_area` VALUES ('510522', '合江县', '510500');
INSERT INTO `sys_area` VALUES ('510524', '叙永县', '510500');
INSERT INTO `sys_area` VALUES ('510525', '古蔺县', '510500');
INSERT INTO `sys_area` VALUES ('510600', '德阳市', '510000');
INSERT INTO `sys_area` VALUES ('510601', '市辖区', '510600');
INSERT INTO `sys_area` VALUES ('510603', '旌阳区', '510601');
INSERT INTO `sys_area` VALUES ('510623', '中江县', '510600');
INSERT INTO `sys_area` VALUES ('510626', '罗江县', '510600');
INSERT INTO `sys_area` VALUES ('510681', '广汉市', '510600');
INSERT INTO `sys_area` VALUES ('510682', '什邡市', '510600');
INSERT INTO `sys_area` VALUES ('510683', '绵竹市', '510600');
INSERT INTO `sys_area` VALUES ('510700', '绵阳市', '510000');
INSERT INTO `sys_area` VALUES ('510701', '市辖区', '510700');
INSERT INTO `sys_area` VALUES ('510703', '涪城区', '510701');
INSERT INTO `sys_area` VALUES ('510704', '游仙区', '510701');
INSERT INTO `sys_area` VALUES ('510722', '三台县', '510700');
INSERT INTO `sys_area` VALUES ('510723', '盐亭县', '510700');
INSERT INTO `sys_area` VALUES ('510724', '安县', '510700');
INSERT INTO `sys_area` VALUES ('510725', '梓潼县', '510700');
INSERT INTO `sys_area` VALUES ('510726', '北川羌族自治县', '510700');
INSERT INTO `sys_area` VALUES ('510727', '平武县', '510700');
INSERT INTO `sys_area` VALUES ('510781', '江油市', '510700');
INSERT INTO `sys_area` VALUES ('510800', '广元市', '510000');
INSERT INTO `sys_area` VALUES ('510801', '市辖区', '510800');
INSERT INTO `sys_area` VALUES ('510802', '市中区', '510801');
INSERT INTO `sys_area` VALUES ('510811', '元坝区', '510801');
INSERT INTO `sys_area` VALUES ('510812', '朝天区', '510801');
INSERT INTO `sys_area` VALUES ('510821', '旺苍县', '510800');
INSERT INTO `sys_area` VALUES ('510822', '青川县', '510800');
INSERT INTO `sys_area` VALUES ('510823', '剑阁县', '510800');
INSERT INTO `sys_area` VALUES ('510824', '苍溪县', '510800');
INSERT INTO `sys_area` VALUES ('510900', '遂宁市', '510000');
INSERT INTO `sys_area` VALUES ('510901', '市辖区', '510900');
INSERT INTO `sys_area` VALUES ('510903', '船山区', '510901');
INSERT INTO `sys_area` VALUES ('510904', '安居区', '510901');
INSERT INTO `sys_area` VALUES ('510921', '蓬溪县', '510900');
INSERT INTO `sys_area` VALUES ('510922', '射洪县', '510900');
INSERT INTO `sys_area` VALUES ('510923', '大英县', '510900');
INSERT INTO `sys_area` VALUES ('511000', '内江市', '510000');
INSERT INTO `sys_area` VALUES ('511001', '市辖区', '511000');
INSERT INTO `sys_area` VALUES ('511002', '市中区', '511001');
INSERT INTO `sys_area` VALUES ('511011', '东兴区', '511001');
INSERT INTO `sys_area` VALUES ('511024', '威远县', '511000');
INSERT INTO `sys_area` VALUES ('511025', '资中县', '511000');
INSERT INTO `sys_area` VALUES ('511028', '隆昌县', '511000');
INSERT INTO `sys_area` VALUES ('511100', '乐山市', '510000');
INSERT INTO `sys_area` VALUES ('511101', '市辖区', '511100');
INSERT INTO `sys_area` VALUES ('511102', '市中区', '511101');
INSERT INTO `sys_area` VALUES ('511111', '沙湾区', '511101');
INSERT INTO `sys_area` VALUES ('511112', '五通桥区', '511101');
INSERT INTO `sys_area` VALUES ('511113', '金口河区', '511101');
INSERT INTO `sys_area` VALUES ('511123', '犍为县', '511100');
INSERT INTO `sys_area` VALUES ('511124', '井研县', '511100');
INSERT INTO `sys_area` VALUES ('511126', '夹江县', '511100');
INSERT INTO `sys_area` VALUES ('511129', '沐川县', '511100');
INSERT INTO `sys_area` VALUES ('511132', '峨边彝族自治县', '511100');
INSERT INTO `sys_area` VALUES ('511133', '马边彝族自治县', '511100');
INSERT INTO `sys_area` VALUES ('511181', '峨眉山市', '511100');
INSERT INTO `sys_area` VALUES ('511300', '南充市', '510000');
INSERT INTO `sys_area` VALUES ('511301', '市辖区', '511300');
INSERT INTO `sys_area` VALUES ('511302', '顺庆区', '511301');
INSERT INTO `sys_area` VALUES ('511303', '高坪区', '511301');
INSERT INTO `sys_area` VALUES ('511304', '嘉陵区', '511301');
INSERT INTO `sys_area` VALUES ('511321', '南部县', '511300');
INSERT INTO `sys_area` VALUES ('511322', '营山县', '511300');
INSERT INTO `sys_area` VALUES ('511323', '蓬安县', '511300');
INSERT INTO `sys_area` VALUES ('511324', '仪陇县', '511300');
INSERT INTO `sys_area` VALUES ('511325', '西充县', '511300');
INSERT INTO `sys_area` VALUES ('511381', '阆中市', '511300');
INSERT INTO `sys_area` VALUES ('511400', '眉山市', '510000');
INSERT INTO `sys_area` VALUES ('511401', '市辖区', '511400');
INSERT INTO `sys_area` VALUES ('511402', '东坡区', '511401');
INSERT INTO `sys_area` VALUES ('511421', '仁寿县', '511400');
INSERT INTO `sys_area` VALUES ('511422', '彭山县', '511400');
INSERT INTO `sys_area` VALUES ('511423', '洪雅县', '511400');
INSERT INTO `sys_area` VALUES ('511424', '丹棱县', '511400');
INSERT INTO `sys_area` VALUES ('511425', '青神县', '511400');
INSERT INTO `sys_area` VALUES ('511500', '宜宾市', '510000');
INSERT INTO `sys_area` VALUES ('511501', '市辖区', '511500');
INSERT INTO `sys_area` VALUES ('511502', '翠屏区', '511500');
INSERT INTO `sys_area` VALUES ('511521', '宜宾县', '511500');
INSERT INTO `sys_area` VALUES ('511522', '南溪县', '511500');
INSERT INTO `sys_area` VALUES ('511523', '江安县', '511500');
INSERT INTO `sys_area` VALUES ('511524', '长宁县', '511500');
INSERT INTO `sys_area` VALUES ('511525', '高县', '511500');
INSERT INTO `sys_area` VALUES ('511526', '珙县', '511500');
INSERT INTO `sys_area` VALUES ('511527', '筠连县', '511500');
INSERT INTO `sys_area` VALUES ('511528', '兴文县', '511500');
INSERT INTO `sys_area` VALUES ('511529', '屏山县', '511500');
INSERT INTO `sys_area` VALUES ('511600', '广安市', '510000');
INSERT INTO `sys_area` VALUES ('511601', '市辖区', '511600');
INSERT INTO `sys_area` VALUES ('511602', '广安区', '511601');
INSERT INTO `sys_area` VALUES ('511621', '岳池县', '511600');
INSERT INTO `sys_area` VALUES ('511622', '武胜县', '511600');
INSERT INTO `sys_area` VALUES ('511623', '邻水县', '511600');
INSERT INTO `sys_area` VALUES ('511681', '华蓥市', '511600');
INSERT INTO `sys_area` VALUES ('511682', '广安区', '511600');
INSERT INTO `sys_area` VALUES ('511700', '达州市', '510000');
INSERT INTO `sys_area` VALUES ('511701', '市辖区', '511700');
INSERT INTO `sys_area` VALUES ('511702', '通川区', '511701');
INSERT INTO `sys_area` VALUES ('511721', '达川区', '511700');
INSERT INTO `sys_area` VALUES ('511722', '宣汉县', '511700');
INSERT INTO `sys_area` VALUES ('511723', '开江县', '511700');
INSERT INTO `sys_area` VALUES ('511724', '大竹县', '511700');
INSERT INTO `sys_area` VALUES ('511725', '渠县', '511700');
INSERT INTO `sys_area` VALUES ('511781', '万源市', '511700');
INSERT INTO `sys_area` VALUES ('511800', '雅安市', '510000');
INSERT INTO `sys_area` VALUES ('511801', '雨城区', '511800');
INSERT INTO `sys_area` VALUES ('511802', '雨城区', '511801');
INSERT INTO `sys_area` VALUES ('511821', '名山区', '511800');
INSERT INTO `sys_area` VALUES ('511822', '荥经县', '511800');
INSERT INTO `sys_area` VALUES ('511823', '汉源县', '511800');
INSERT INTO `sys_area` VALUES ('511824', '石棉县', '511800');
INSERT INTO `sys_area` VALUES ('511825', '天全县', '511800');
INSERT INTO `sys_area` VALUES ('511826', '芦山县', '511800');
INSERT INTO `sys_area` VALUES ('511827', '宝兴县', '511800');
INSERT INTO `sys_area` VALUES ('511900', '巴中市', '510000');
INSERT INTO `sys_area` VALUES ('511901', '市辖区', '511900');
INSERT INTO `sys_area` VALUES ('511902', '巴州区', '511901');
INSERT INTO `sys_area` VALUES ('511921', '通江县', '511900');
INSERT INTO `sys_area` VALUES ('511922', '南江县', '511900');
INSERT INTO `sys_area` VALUES ('511923', '平昌县', '511900');
INSERT INTO `sys_area` VALUES ('512000', '资阳市', '510000');
INSERT INTO `sys_area` VALUES ('512001', '市辖区', '512000');
INSERT INTO `sys_area` VALUES ('512002', '雁江区', '512001');
INSERT INTO `sys_area` VALUES ('512021', '安岳县', '512000');
INSERT INTO `sys_area` VALUES ('512022', '乐至县', '512000');
INSERT INTO `sys_area` VALUES ('512081', '简阳市', '512000');
INSERT INTO `sys_area` VALUES ('513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `sys_area` VALUES ('513221', '汶川县', '513200');
INSERT INTO `sys_area` VALUES ('513222', '理县', '513200');
INSERT INTO `sys_area` VALUES ('513223', '茂县', '513200');
INSERT INTO `sys_area` VALUES ('513224', '松潘县', '513200');
INSERT INTO `sys_area` VALUES ('513225', '九寨沟县', '513200');
INSERT INTO `sys_area` VALUES ('513226', '金川县', '513200');
INSERT INTO `sys_area` VALUES ('513227', '小金县', '513200');
INSERT INTO `sys_area` VALUES ('513228', '黑水县', '513200');
INSERT INTO `sys_area` VALUES ('513229', '马尔康县', '513200');
INSERT INTO `sys_area` VALUES ('513230', '壤塘县', '513200');
INSERT INTO `sys_area` VALUES ('513231', '阿坝县', '513200');
INSERT INTO `sys_area` VALUES ('513232', '若尔盖县', '513200');
INSERT INTO `sys_area` VALUES ('513233', '红原县', '513200');
INSERT INTO `sys_area` VALUES ('513300', '甘孜藏族自治州', '510000');
INSERT INTO `sys_area` VALUES ('513321', '康定县', '513300');
INSERT INTO `sys_area` VALUES ('513322', '泸定县', '513300');
INSERT INTO `sys_area` VALUES ('513323', '丹巴县', '513300');
INSERT INTO `sys_area` VALUES ('513324', '九龙县', '513300');
INSERT INTO `sys_area` VALUES ('513325', '雅江县', '513300');
INSERT INTO `sys_area` VALUES ('513326', '道孚县', '513300');
INSERT INTO `sys_area` VALUES ('513327', '炉霍县', '513300');
INSERT INTO `sys_area` VALUES ('513328', '甘孜县', '513300');
INSERT INTO `sys_area` VALUES ('513329', '新龙县', '513300');
INSERT INTO `sys_area` VALUES ('513330', '德格县', '513300');
INSERT INTO `sys_area` VALUES ('513331', '白玉县', '513300');
INSERT INTO `sys_area` VALUES ('513332', '石渠县', '513300');
INSERT INTO `sys_area` VALUES ('513333', '色达县', '513300');
INSERT INTO `sys_area` VALUES ('513334', '理塘县', '513300');
INSERT INTO `sys_area` VALUES ('513335', '巴塘县', '513300');
INSERT INTO `sys_area` VALUES ('513336', '乡城县', '513300');
INSERT INTO `sys_area` VALUES ('513337', '稻城县', '513300');
INSERT INTO `sys_area` VALUES ('513338', '得荣县', '513300');
INSERT INTO `sys_area` VALUES ('513400', '凉山彝族自治州', '510000');
INSERT INTO `sys_area` VALUES ('513401', '西昌市', '513400');
INSERT INTO `sys_area` VALUES ('513422', '木里藏族自治县', '513400');
INSERT INTO `sys_area` VALUES ('513423', '盐源县', '513400');
INSERT INTO `sys_area` VALUES ('513424', '德昌县', '513400');
INSERT INTO `sys_area` VALUES ('513425', '会理县', '513400');
INSERT INTO `sys_area` VALUES ('513426', '会东县', '513400');
INSERT INTO `sys_area` VALUES ('513427', '宁南县', '513400');
INSERT INTO `sys_area` VALUES ('513428', '普格县', '513400');
INSERT INTO `sys_area` VALUES ('513429', '布拖县', '513400');
INSERT INTO `sys_area` VALUES ('513430', '金阳县', '513400');
INSERT INTO `sys_area` VALUES ('513431', '昭觉县', '513400');
INSERT INTO `sys_area` VALUES ('513432', '喜德县', '513400');
INSERT INTO `sys_area` VALUES ('513433', '冕宁县', '513400');
INSERT INTO `sys_area` VALUES ('513434', '越西县', '513400');
INSERT INTO `sys_area` VALUES ('513435', '甘洛县', '513400');
INSERT INTO `sys_area` VALUES ('513436', '美姑县', '513400');
INSERT INTO `sys_area` VALUES ('513437', '雷波县', '513400');
INSERT INTO `sys_area` VALUES ('520000', '贵州省', '0');
INSERT INTO `sys_area` VALUES ('520100', '贵阳市', '520000');
INSERT INTO `sys_area` VALUES ('520101', '市辖区', '520100');
INSERT INTO `sys_area` VALUES ('520102', '南明区', '520101');
INSERT INTO `sys_area` VALUES ('520103', '云岩区', '520101');
INSERT INTO `sys_area` VALUES ('520111', '花溪区', '520101');
INSERT INTO `sys_area` VALUES ('520112', '乌当区', '520100');
INSERT INTO `sys_area` VALUES ('520113', '白云区', '520101');
INSERT INTO `sys_area` VALUES ('520114', '小河区', '520101');
INSERT INTO `sys_area` VALUES ('520121', '开阳县', '520100');
INSERT INTO `sys_area` VALUES ('520122', '息烽县', '520100');
INSERT INTO `sys_area` VALUES ('520123', '修文县', '520100');
INSERT INTO `sys_area` VALUES ('520181', '清镇市', '520100');
INSERT INTO `sys_area` VALUES ('520200', '六盘水市', '520000');
INSERT INTO `sys_area` VALUES ('520201', '钟山区', '520200');
INSERT INTO `sys_area` VALUES ('520203', '六枝特区', '520200');
INSERT INTO `sys_area` VALUES ('520221', '水城县', '520200');
INSERT INTO `sys_area` VALUES ('520222', '盘县', '520200');
INSERT INTO `sys_area` VALUES ('520300', '遵义市', '520000');
INSERT INTO `sys_area` VALUES ('520301', '市辖区', '520300');
INSERT INTO `sys_area` VALUES ('520302', '红花岗区', '520301');
INSERT INTO `sys_area` VALUES ('520303', '汇川区', '520301');
INSERT INTO `sys_area` VALUES ('520321', '遵义县', '520300');
INSERT INTO `sys_area` VALUES ('520322', '桐梓县', '520300');
INSERT INTO `sys_area` VALUES ('520323', '绥阳县', '520300');
INSERT INTO `sys_area` VALUES ('520324', '正安县', '520300');
INSERT INTO `sys_area` VALUES ('520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `sys_area` VALUES ('520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `sys_area` VALUES ('520327', '凤冈县', '520300');
INSERT INTO `sys_area` VALUES ('520328', '湄潭县', '520300');
INSERT INTO `sys_area` VALUES ('520329', '余庆县', '520300');
INSERT INTO `sys_area` VALUES ('520330', '习水县', '520300');
INSERT INTO `sys_area` VALUES ('520381', '赤水市', '520300');
INSERT INTO `sys_area` VALUES ('520382', '仁怀市', '520300');
INSERT INTO `sys_area` VALUES ('520400', '安顺市', '520000');
INSERT INTO `sys_area` VALUES ('520401', '市辖区', '520400');
INSERT INTO `sys_area` VALUES ('520402', '西秀区', '520401');
INSERT INTO `sys_area` VALUES ('520421', '平坝县', '520400');
INSERT INTO `sys_area` VALUES ('520422', '普定县', '520400');
INSERT INTO `sys_area` VALUES ('520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `sys_area` VALUES ('520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `sys_area` VALUES ('520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `sys_area` VALUES ('522200', '铜仁市', '520000');
INSERT INTO `sys_area` VALUES ('522201', '碧江区', '522200');
INSERT INTO `sys_area` VALUES ('522222', '江口县', '522200');
INSERT INTO `sys_area` VALUES ('522223', '玉屏侗族自治县', '522200');
INSERT INTO `sys_area` VALUES ('522224', '石阡县', '522200');
INSERT INTO `sys_area` VALUES ('522225', '思南县', '522200');
INSERT INTO `sys_area` VALUES ('522226', '印江土家族苗族自治县', '522200');
INSERT INTO `sys_area` VALUES ('522227', '德江县', '522200');
INSERT INTO `sys_area` VALUES ('522228', '沿河土家族自治县', '522200');
INSERT INTO `sys_area` VALUES ('522229', '松桃苗族自治县', '522200');
INSERT INTO `sys_area` VALUES ('522230', '万山区', '522200');
INSERT INTO `sys_area` VALUES ('522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `sys_area` VALUES ('522301', '兴义市', '522300');
INSERT INTO `sys_area` VALUES ('522322', '兴仁县', '522300');
INSERT INTO `sys_area` VALUES ('522323', '普安县', '522300');
INSERT INTO `sys_area` VALUES ('522324', '晴隆县', '522300');
INSERT INTO `sys_area` VALUES ('522325', '贞丰县', '522300');
INSERT INTO `sys_area` VALUES ('522326', '望谟县', '522300');
INSERT INTO `sys_area` VALUES ('522327', '册亨县', '522300');
INSERT INTO `sys_area` VALUES ('522328', '安龙县', '522300');
INSERT INTO `sys_area` VALUES ('522400', '毕节市', '520000');
INSERT INTO `sys_area` VALUES ('522401', '七星关区', '522400');
INSERT INTO `sys_area` VALUES ('522422', '大方县', '522400');
INSERT INTO `sys_area` VALUES ('522423', '黔西县', '522400');
INSERT INTO `sys_area` VALUES ('522424', '金沙县', '522400');
INSERT INTO `sys_area` VALUES ('522425', '织金县', '522400');
INSERT INTO `sys_area` VALUES ('522426', '纳雍县', '522400');
INSERT INTO `sys_area` VALUES ('522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `sys_area` VALUES ('522428', '赫章县', '522400');
INSERT INTO `sys_area` VALUES ('522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `sys_area` VALUES ('522601', '凯里市', '522600');
INSERT INTO `sys_area` VALUES ('522622', '黄平县', '522600');
INSERT INTO `sys_area` VALUES ('522623', '施秉县', '522600');
INSERT INTO `sys_area` VALUES ('522624', '三穗县', '522600');
INSERT INTO `sys_area` VALUES ('522625', '镇远县', '522600');
INSERT INTO `sys_area` VALUES ('522626', '岑巩县', '522600');
INSERT INTO `sys_area` VALUES ('522627', '天柱县', '522600');
INSERT INTO `sys_area` VALUES ('522628', '锦屏县', '522600');
INSERT INTO `sys_area` VALUES ('522629', '剑河县', '522600');
INSERT INTO `sys_area` VALUES ('522630', '台江县', '522600');
INSERT INTO `sys_area` VALUES ('522631', '黎平县', '522600');
INSERT INTO `sys_area` VALUES ('522632', '榕江县', '522600');
INSERT INTO `sys_area` VALUES ('522633', '从江县', '522600');
INSERT INTO `sys_area` VALUES ('522634', '雷山县', '522600');
INSERT INTO `sys_area` VALUES ('522635', '麻江县', '522600');
INSERT INTO `sys_area` VALUES ('522636', '丹寨县', '522600');
INSERT INTO `sys_area` VALUES ('522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `sys_area` VALUES ('522701', '都匀市', '522700');
INSERT INTO `sys_area` VALUES ('522702', '福泉市', '522700');
INSERT INTO `sys_area` VALUES ('522722', '荔波县', '522700');
INSERT INTO `sys_area` VALUES ('522723', '贵定县', '522700');
INSERT INTO `sys_area` VALUES ('522725', '瓮安县', '522700');
INSERT INTO `sys_area` VALUES ('522726', '独山县', '522700');
INSERT INTO `sys_area` VALUES ('522727', '平塘县', '522700');
INSERT INTO `sys_area` VALUES ('522728', '罗甸县', '522700');
INSERT INTO `sys_area` VALUES ('522729', '长顺县', '522700');
INSERT INTO `sys_area` VALUES ('522730', '龙里县', '522700');
INSERT INTO `sys_area` VALUES ('522731', '惠水县', '522700');
INSERT INTO `sys_area` VALUES ('522732', '三都水族自治县', '522700');
INSERT INTO `sys_area` VALUES ('530000', '云南省', '0');
INSERT INTO `sys_area` VALUES ('530100', '昆明市', '530000');
INSERT INTO `sys_area` VALUES ('530101', '市辖区', '530100');
INSERT INTO `sys_area` VALUES ('530102', '五华区', '530101');
INSERT INTO `sys_area` VALUES ('530103', '盘龙区', '530101');
INSERT INTO `sys_area` VALUES ('530111', '官渡区', '530101');
INSERT INTO `sys_area` VALUES ('530112', '西山区', '530101');
INSERT INTO `sys_area` VALUES ('530113', '东川区', '530101');
INSERT INTO `sys_area` VALUES ('530121', '呈贡县', '530100');
INSERT INTO `sys_area` VALUES ('530122', '晋宁县', '530100');
INSERT INTO `sys_area` VALUES ('530124', '富民县', '530100');
INSERT INTO `sys_area` VALUES ('530125', '宜良县', '530100');
INSERT INTO `sys_area` VALUES ('530126', '石林彝族自治县', '530100');
INSERT INTO `sys_area` VALUES ('530127', '嵩明县', '530100');
INSERT INTO `sys_area` VALUES ('530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `sys_area` VALUES ('530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `sys_area` VALUES ('530181', '安宁市', '530100');
INSERT INTO `sys_area` VALUES ('530300', '曲靖市', '530000');
INSERT INTO `sys_area` VALUES ('530301', '市辖区', '530300');
INSERT INTO `sys_area` VALUES ('530302', '麒麟区', '530301');
INSERT INTO `sys_area` VALUES ('530321', '马龙县', '530300');
INSERT INTO `sys_area` VALUES ('530322', '陆良县', '530300');
INSERT INTO `sys_area` VALUES ('530323', '师宗县', '530300');
INSERT INTO `sys_area` VALUES ('530324', '罗平县', '530300');
INSERT INTO `sys_area` VALUES ('530325', '富源县', '530300');
INSERT INTO `sys_area` VALUES ('530326', '会泽县', '530300');
INSERT INTO `sys_area` VALUES ('530328', '沾益县', '530300');
INSERT INTO `sys_area` VALUES ('530381', '宣威市', '530300');
INSERT INTO `sys_area` VALUES ('530400', '玉溪市', '530000');
INSERT INTO `sys_area` VALUES ('530401', '市辖区', '530400');
INSERT INTO `sys_area` VALUES ('530402', '红塔区', '530401');
INSERT INTO `sys_area` VALUES ('530421', '江川县', '530400');
INSERT INTO `sys_area` VALUES ('530422', '澄江县', '530400');
INSERT INTO `sys_area` VALUES ('530423', '通海县', '530400');
INSERT INTO `sys_area` VALUES ('530424', '华宁县', '530400');
INSERT INTO `sys_area` VALUES ('530425', '易门县', '530400');
INSERT INTO `sys_area` VALUES ('530426', '峨山彝族自治县', '530400');
INSERT INTO `sys_area` VALUES ('530427', '新平彝族傣族自治县', '530400');
INSERT INTO `sys_area` VALUES ('530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `sys_area` VALUES ('530500', '保山市', '530000');
INSERT INTO `sys_area` VALUES ('530501', '市辖区', '530500');
INSERT INTO `sys_area` VALUES ('530502', '隆阳区', '530500');
INSERT INTO `sys_area` VALUES ('530521', '施甸县', '530500');
INSERT INTO `sys_area` VALUES ('530522', '腾冲县', '530500');
INSERT INTO `sys_area` VALUES ('530523', '龙陵县', '530500');
INSERT INTO `sys_area` VALUES ('530524', '昌宁县', '530500');
INSERT INTO `sys_area` VALUES ('530600', '昭通市', '530000');
INSERT INTO `sys_area` VALUES ('530601', '市辖区', '530600');
INSERT INTO `sys_area` VALUES ('530602', '昭阳区', '530601');
INSERT INTO `sys_area` VALUES ('530621', '鲁甸县', '530600');
INSERT INTO `sys_area` VALUES ('530622', '巧家县', '530600');
INSERT INTO `sys_area` VALUES ('530623', '盐津县', '530600');
INSERT INTO `sys_area` VALUES ('530624', '大关县', '530600');
INSERT INTO `sys_area` VALUES ('530625', '永善县', '530600');
INSERT INTO `sys_area` VALUES ('530626', '绥江县', '530600');
INSERT INTO `sys_area` VALUES ('530627', '镇雄县', '530600');
INSERT INTO `sys_area` VALUES ('530628', '彝良县', '530600');
INSERT INTO `sys_area` VALUES ('530629', '威信县', '530600');
INSERT INTO `sys_area` VALUES ('530630', '水富县', '530600');
INSERT INTO `sys_area` VALUES ('530700', '丽江市', '530000');
INSERT INTO `sys_area` VALUES ('530701', '市辖区', '530700');
INSERT INTO `sys_area` VALUES ('530702', '古城区', '530701');
INSERT INTO `sys_area` VALUES ('530721', '玉龙纳西族自治县', '530700');
INSERT INTO `sys_area` VALUES ('530722', '永胜县', '530700');
INSERT INTO `sys_area` VALUES ('530723', '华坪县', '530700');
INSERT INTO `sys_area` VALUES ('530724', '宁蒗彝族自治县', '530700');
INSERT INTO `sys_area` VALUES ('530800', '普洱市', '530000');
INSERT INTO `sys_area` VALUES ('530801', '市辖区', '530800');
INSERT INTO `sys_area` VALUES ('530802', '翠云区', '530801');
INSERT INTO `sys_area` VALUES ('530821', '宁洱哈尼族彝族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530822', '墨江哈尼族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530823', '景东彝族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530829', '西盟佤族自治县', '530800');
INSERT INTO `sys_area` VALUES ('530900', '临沧市', '530000');
INSERT INTO `sys_area` VALUES ('530901', '市辖区', '530900');
INSERT INTO `sys_area` VALUES ('530902', '临翔区', '530901');
INSERT INTO `sys_area` VALUES ('530921', '凤庆县', '530900');
INSERT INTO `sys_area` VALUES ('530922', '云县', '530900');
INSERT INTO `sys_area` VALUES ('530923', '永德县', '530900');
INSERT INTO `sys_area` VALUES ('530924', '镇康县', '530900');
INSERT INTO `sys_area` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `sys_area` VALUES ('530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `sys_area` VALUES ('530927', '沧源佤族自治县', '530900');
INSERT INTO `sys_area` VALUES ('532300', '楚雄彝族自治州', '530000');
INSERT INTO `sys_area` VALUES ('532301', '楚雄市', '532300');
INSERT INTO `sys_area` VALUES ('532322', '双柏县', '532300');
INSERT INTO `sys_area` VALUES ('532323', '牟定县', '532300');
INSERT INTO `sys_area` VALUES ('532324', '南华县', '532300');
INSERT INTO `sys_area` VALUES ('532325', '姚安县', '532300');
INSERT INTO `sys_area` VALUES ('532326', '大姚县', '532300');
INSERT INTO `sys_area` VALUES ('532327', '永仁县', '532300');
INSERT INTO `sys_area` VALUES ('532328', '元谋县', '532300');
INSERT INTO `sys_area` VALUES ('532329', '武定县', '532300');
INSERT INTO `sys_area` VALUES ('532331', '禄丰县', '532300');
INSERT INTO `sys_area` VALUES ('532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `sys_area` VALUES ('532501', '个旧市', '532500');
INSERT INTO `sys_area` VALUES ('532502', '开远市', '532500');
INSERT INTO `sys_area` VALUES ('532522', '蒙自市', '532500');
INSERT INTO `sys_area` VALUES ('532523', '屏边苗族自治县', '532500');
INSERT INTO `sys_area` VALUES ('532524', '建水县', '532500');
INSERT INTO `sys_area` VALUES ('532525', '石屏县', '532500');
INSERT INTO `sys_area` VALUES ('532526', '弥勒市', '532500');
INSERT INTO `sys_area` VALUES ('532527', '泸西县', '532500');
INSERT INTO `sys_area` VALUES ('532528', '元阳县', '532500');
INSERT INTO `sys_area` VALUES ('532529', '红河县', '532500');
INSERT INTO `sys_area` VALUES ('532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `sys_area` VALUES ('532531', '绿春县', '532500');
INSERT INTO `sys_area` VALUES ('532532', '河口瑶族自治县', '532500');
INSERT INTO `sys_area` VALUES ('532600', '文山壮族苗族自治州', '530000');
INSERT INTO `sys_area` VALUES ('532621', '文山市', '532600');
INSERT INTO `sys_area` VALUES ('532622', '砚山县', '532600');
INSERT INTO `sys_area` VALUES ('532623', '西畴县', '532600');
INSERT INTO `sys_area` VALUES ('532624', '麻栗坡县', '532600');
INSERT INTO `sys_area` VALUES ('532625', '马关县', '532600');
INSERT INTO `sys_area` VALUES ('532626', '丘北县', '532600');
INSERT INTO `sys_area` VALUES ('532627', '广南县', '532600');
INSERT INTO `sys_area` VALUES ('532628', '富宁县', '532600');
INSERT INTO `sys_area` VALUES ('532800', '西双版纳傣族自治州', '530000');
INSERT INTO `sys_area` VALUES ('532801', '景洪市', '532800');
INSERT INTO `sys_area` VALUES ('532822', '勐海县', '532800');
INSERT INTO `sys_area` VALUES ('532823', '勐腊县', '532800');
INSERT INTO `sys_area` VALUES ('532900', '大理白族自治州', '530000');
INSERT INTO `sys_area` VALUES ('532901', '大理市', '532900');
INSERT INTO `sys_area` VALUES ('532922', '漾濞彝族自治县', '532900');
INSERT INTO `sys_area` VALUES ('532923', '祥云县', '532900');
INSERT INTO `sys_area` VALUES ('532924', '宾川县', '532900');
INSERT INTO `sys_area` VALUES ('532925', '弥渡县', '532900');
INSERT INTO `sys_area` VALUES ('532926', '南涧彝族自治县', '532900');
INSERT INTO `sys_area` VALUES ('532927', '巍山彝族回族自治县', '532900');
INSERT INTO `sys_area` VALUES ('532928', '永平县', '532900');
INSERT INTO `sys_area` VALUES ('532929', '云龙县', '532900');
INSERT INTO `sys_area` VALUES ('532930', '洱源县', '532900');
INSERT INTO `sys_area` VALUES ('532931', '剑川县', '532900');
INSERT INTO `sys_area` VALUES ('532932', '鹤庆县', '532900');
INSERT INTO `sys_area` VALUES ('533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `sys_area` VALUES ('533102', '瑞丽市', '533100');
INSERT INTO `sys_area` VALUES ('533103', '潞西市', '533100');
INSERT INTO `sys_area` VALUES ('533122', '梁河县', '533100');
INSERT INTO `sys_area` VALUES ('533123', '盈江县', '533100');
INSERT INTO `sys_area` VALUES ('533124', '陇川县', '533100');
INSERT INTO `sys_area` VALUES ('533300', '怒江傈僳族自治州', '530000');
INSERT INTO `sys_area` VALUES ('533321', '泸水县', '533300');
INSERT INTO `sys_area` VALUES ('533323', '福贡县', '533300');
INSERT INTO `sys_area` VALUES ('533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `sys_area` VALUES ('533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `sys_area` VALUES ('533400', '迪庆藏族自治州', '530000');
INSERT INTO `sys_area` VALUES ('533421', '香格里拉县', '533400');
INSERT INTO `sys_area` VALUES ('533422', '德钦县', '533400');
INSERT INTO `sys_area` VALUES ('533423', '维西傈僳族自治县', '533400');
INSERT INTO `sys_area` VALUES ('540000', '西藏自治区', '0');
INSERT INTO `sys_area` VALUES ('540100', '拉萨市', '540000');
INSERT INTO `sys_area` VALUES ('540101', '市辖区', '540100');
INSERT INTO `sys_area` VALUES ('540102', '城关区', '540101');
INSERT INTO `sys_area` VALUES ('540121', '林周县', '540100');
INSERT INTO `sys_area` VALUES ('540122', '当雄县', '540100');
INSERT INTO `sys_area` VALUES ('540123', '尼木县', '540100');
INSERT INTO `sys_area` VALUES ('540124', '曲水县', '540100');
INSERT INTO `sys_area` VALUES ('540125', '堆龙德庆县', '540100');
INSERT INTO `sys_area` VALUES ('540126', '达孜县', '540100');
INSERT INTO `sys_area` VALUES ('540127', '墨竹工卡县', '540100');
INSERT INTO `sys_area` VALUES ('542100', '昌都地区', '540000');
INSERT INTO `sys_area` VALUES ('542121', '昌都县', '542100');
INSERT INTO `sys_area` VALUES ('542122', '江达县', '542100');
INSERT INTO `sys_area` VALUES ('542123', '贡觉县', '542100');
INSERT INTO `sys_area` VALUES ('542124', '类乌齐县', '542100');
INSERT INTO `sys_area` VALUES ('542125', '丁青县', '542100');
INSERT INTO `sys_area` VALUES ('542126', '察雅县', '542100');
INSERT INTO `sys_area` VALUES ('542127', '八宿县', '542100');
INSERT INTO `sys_area` VALUES ('542128', '左贡县', '542100');
INSERT INTO `sys_area` VALUES ('542129', '芒康县', '542100');
INSERT INTO `sys_area` VALUES ('542132', '洛隆县', '542100');
INSERT INTO `sys_area` VALUES ('542133', '边坝县', '542100');
INSERT INTO `sys_area` VALUES ('542200', '山南地区', '540000');
INSERT INTO `sys_area` VALUES ('542221', '乃东县', '542200');
INSERT INTO `sys_area` VALUES ('542222', '扎囊县', '542200');
INSERT INTO `sys_area` VALUES ('542223', '贡嘎县', '542200');
INSERT INTO `sys_area` VALUES ('542224', '桑日县', '542200');
INSERT INTO `sys_area` VALUES ('542225', '琼结县', '542200');
INSERT INTO `sys_area` VALUES ('542226', '曲松县', '542200');
INSERT INTO `sys_area` VALUES ('542227', '措美县', '542200');
INSERT INTO `sys_area` VALUES ('542228', '洛扎县', '542200');
INSERT INTO `sys_area` VALUES ('542229', '加查县', '542200');
INSERT INTO `sys_area` VALUES ('542231', '隆子县', '542200');
INSERT INTO `sys_area` VALUES ('542232', '错那县', '542200');
INSERT INTO `sys_area` VALUES ('542233', '浪卡子县', '542200');
INSERT INTO `sys_area` VALUES ('542300', '日喀则地区', '540000');
INSERT INTO `sys_area` VALUES ('542301', '日喀则市', '542300');
INSERT INTO `sys_area` VALUES ('542322', '南木林县', '542300');
INSERT INTO `sys_area` VALUES ('542323', '江孜县', '542300');
INSERT INTO `sys_area` VALUES ('542324', '定日县', '542300');
INSERT INTO `sys_area` VALUES ('542325', '萨迦县', '542300');
INSERT INTO `sys_area` VALUES ('542326', '拉孜县', '542300');
INSERT INTO `sys_area` VALUES ('542327', '昂仁县', '542300');
INSERT INTO `sys_area` VALUES ('542328', '谢通门县', '542300');
INSERT INTO `sys_area` VALUES ('542329', '白朗县', '542300');
INSERT INTO `sys_area` VALUES ('542330', '仁布县', '542300');
INSERT INTO `sys_area` VALUES ('542331', '康马县', '542300');
INSERT INTO `sys_area` VALUES ('542332', '定结县', '542300');
INSERT INTO `sys_area` VALUES ('542333', '仲巴县', '542300');
INSERT INTO `sys_area` VALUES ('542334', '亚东县', '542300');
INSERT INTO `sys_area` VALUES ('542335', '吉隆县', '542300');
INSERT INTO `sys_area` VALUES ('542336', '聂拉木县', '542300');
INSERT INTO `sys_area` VALUES ('542337', '萨嘎县', '542300');
INSERT INTO `sys_area` VALUES ('542338', '岗巴县', '542300');
INSERT INTO `sys_area` VALUES ('542400', '那曲地区', '540000');
INSERT INTO `sys_area` VALUES ('542421', '那曲县', '542400');
INSERT INTO `sys_area` VALUES ('542422', '嘉黎县', '542400');
INSERT INTO `sys_area` VALUES ('542423', '比如县', '542400');
INSERT INTO `sys_area` VALUES ('542424', '聂荣县', '542400');
INSERT INTO `sys_area` VALUES ('542425', '安多县', '542400');
INSERT INTO `sys_area` VALUES ('542426', '申扎县', '542400');
INSERT INTO `sys_area` VALUES ('542427', '索县', '542400');
INSERT INTO `sys_area` VALUES ('542428', '班戈县', '542400');
INSERT INTO `sys_area` VALUES ('542429', '巴青县', '542400');
INSERT INTO `sys_area` VALUES ('542430', '尼玛县', '542400');
INSERT INTO `sys_area` VALUES ('542500', '阿里地区', '540000');
INSERT INTO `sys_area` VALUES ('542521', '普兰县', '542500');
INSERT INTO `sys_area` VALUES ('542522', '札达县', '542500');
INSERT INTO `sys_area` VALUES ('542523', '噶尔县', '542500');
INSERT INTO `sys_area` VALUES ('542524', '日土县', '542500');
INSERT INTO `sys_area` VALUES ('542525', '革吉县', '542500');
INSERT INTO `sys_area` VALUES ('542526', '改则县', '542500');
INSERT INTO `sys_area` VALUES ('542527', '措勤县', '542500');
INSERT INTO `sys_area` VALUES ('542600', '林芝地区', '540000');
INSERT INTO `sys_area` VALUES ('542621', '林芝县', '542600');
INSERT INTO `sys_area` VALUES ('542622', '工布江达县', '542600');
INSERT INTO `sys_area` VALUES ('542623', '米林县', '542600');
INSERT INTO `sys_area` VALUES ('542624', '墨脱县', '542600');
INSERT INTO `sys_area` VALUES ('542625', '波密县', '542600');
INSERT INTO `sys_area` VALUES ('542626', '察隅县', '542600');
INSERT INTO `sys_area` VALUES ('542627', '朗县', '542600');
INSERT INTO `sys_area` VALUES ('610000', '陕西省', '0');
INSERT INTO `sys_area` VALUES ('610100', '西安市', '610000');
INSERT INTO `sys_area` VALUES ('610101', '长安区', '610100');
INSERT INTO `sys_area` VALUES ('610102', '新城区', '610100');
INSERT INTO `sys_area` VALUES ('610103', '碑林区', '610100');
INSERT INTO `sys_area` VALUES ('610104', '莲湖区', '610100');
INSERT INTO `sys_area` VALUES ('610111', '灞桥区', '610100');
INSERT INTO `sys_area` VALUES ('610112', '未央区', '610100');
INSERT INTO `sys_area` VALUES ('610113', '雁塔区', '610100');
INSERT INTO `sys_area` VALUES ('610114', '阎良区', '610100');
INSERT INTO `sys_area` VALUES ('610115', '临潼区', '610100');
INSERT INTO `sys_area` VALUES ('610122', '蓝田县', '610100');
INSERT INTO `sys_area` VALUES ('610124', '周至县', '610100');
INSERT INTO `sys_area` VALUES ('610125', '户县', '610100');
INSERT INTO `sys_area` VALUES ('610126', '高陵县', '610100');
INSERT INTO `sys_area` VALUES ('610200', '铜川市', '610000');
INSERT INTO `sys_area` VALUES ('610201', '市辖区', '610200');
INSERT INTO `sys_area` VALUES ('610202', '王益区', '610201');
INSERT INTO `sys_area` VALUES ('610203', '印台区', '610201');
INSERT INTO `sys_area` VALUES ('610204', '耀州区', '610201');
INSERT INTO `sys_area` VALUES ('610222', '宜君县', '610200');
INSERT INTO `sys_area` VALUES ('610300', '宝鸡市', '610000');
INSERT INTO `sys_area` VALUES ('610301', '市辖区', '610300');
INSERT INTO `sys_area` VALUES ('610302', '渭滨区', '610301');
INSERT INTO `sys_area` VALUES ('610303', '金台区', '610301');
INSERT INTO `sys_area` VALUES ('610304', '陈仓区', '610301');
INSERT INTO `sys_area` VALUES ('610322', '凤翔县', '610300');
INSERT INTO `sys_area` VALUES ('610323', '岐山县', '610300');
INSERT INTO `sys_area` VALUES ('610324', '扶风县', '610300');
INSERT INTO `sys_area` VALUES ('610326', '眉县', '610300');
INSERT INTO `sys_area` VALUES ('610327', '陇县', '610300');
INSERT INTO `sys_area` VALUES ('610328', '千阳县', '610300');
INSERT INTO `sys_area` VALUES ('610329', '麟游县', '610300');
INSERT INTO `sys_area` VALUES ('610330', '凤县', '610300');
INSERT INTO `sys_area` VALUES ('610331', '太白县', '610300');
INSERT INTO `sys_area` VALUES ('610400', '咸阳市', '610000');
INSERT INTO `sys_area` VALUES ('610401', '市辖区', '610400');
INSERT INTO `sys_area` VALUES ('610402', '秦都区', '610401');
INSERT INTO `sys_area` VALUES ('610404', '渭城区', '610401');
INSERT INTO `sys_area` VALUES ('610422', '三原县', '610400');
INSERT INTO `sys_area` VALUES ('610423', '泾阳县', '610400');
INSERT INTO `sys_area` VALUES ('610424', '乾县', '610400');
INSERT INTO `sys_area` VALUES ('610425', '礼泉县', '610400');
INSERT INTO `sys_area` VALUES ('610426', '永寿县', '610400');
INSERT INTO `sys_area` VALUES ('610427', '彬县', '610400');
INSERT INTO `sys_area` VALUES ('610428', '长武县', '610400');
INSERT INTO `sys_area` VALUES ('610429', '旬邑县', '610400');
INSERT INTO `sys_area` VALUES ('610430', '淳化县', '610400');
INSERT INTO `sys_area` VALUES ('610431', '武功县', '610400');
INSERT INTO `sys_area` VALUES ('610481', '兴平市', '610400');
INSERT INTO `sys_area` VALUES ('610500', '渭南市', '610000');
INSERT INTO `sys_area` VALUES ('610501', '市辖区', '610500');
INSERT INTO `sys_area` VALUES ('610502', '临渭区', '610501');
INSERT INTO `sys_area` VALUES ('610521', '华县', '610500');
INSERT INTO `sys_area` VALUES ('610522', '潼关县', '610500');
INSERT INTO `sys_area` VALUES ('610523', '大荔县', '610500');
INSERT INTO `sys_area` VALUES ('610524', '合阳县', '610500');
INSERT INTO `sys_area` VALUES ('610525', '澄城县', '610500');
INSERT INTO `sys_area` VALUES ('610526', '蒲城县', '610500');
INSERT INTO `sys_area` VALUES ('610527', '白水县', '610500');
INSERT INTO `sys_area` VALUES ('610528', '富平县', '610500');
INSERT INTO `sys_area` VALUES ('610581', '韩城市', '610500');
INSERT INTO `sys_area` VALUES ('610582', '华阴市', '610500');
INSERT INTO `sys_area` VALUES ('610600', '延安市', '610000');
INSERT INTO `sys_area` VALUES ('610601', '市辖区', '610600');
INSERT INTO `sys_area` VALUES ('610602', '宝塔区', '610601');
INSERT INTO `sys_area` VALUES ('610621', '延长县', '610600');
INSERT INTO `sys_area` VALUES ('610622', '延川县', '610600');
INSERT INTO `sys_area` VALUES ('610623', '子长县', '610600');
INSERT INTO `sys_area` VALUES ('610624', '安塞县', '610600');
INSERT INTO `sys_area` VALUES ('610625', '志丹县', '610600');
INSERT INTO `sys_area` VALUES ('610626', '吴起县', '610600');
INSERT INTO `sys_area` VALUES ('610627', '甘泉县', '610600');
INSERT INTO `sys_area` VALUES ('610628', '富县', '610600');
INSERT INTO `sys_area` VALUES ('610629', '洛川县', '610600');
INSERT INTO `sys_area` VALUES ('610630', '宜川县', '610600');
INSERT INTO `sys_area` VALUES ('610631', '黄龙县', '610600');
INSERT INTO `sys_area` VALUES ('610632', '黄陵县', '610600');
INSERT INTO `sys_area` VALUES ('610700', '汉中市', '610000');
INSERT INTO `sys_area` VALUES ('610701', '市辖区', '610700');
INSERT INTO `sys_area` VALUES ('610702', '汉台区', '610701');
INSERT INTO `sys_area` VALUES ('610721', '南郑县', '610700');
INSERT INTO `sys_area` VALUES ('610722', '城固县', '610700');
INSERT INTO `sys_area` VALUES ('610723', '洋县', '610700');
INSERT INTO `sys_area` VALUES ('610724', '西乡县', '610700');
INSERT INTO `sys_area` VALUES ('610725', '勉县', '610700');
INSERT INTO `sys_area` VALUES ('610726', '宁强县', '610700');
INSERT INTO `sys_area` VALUES ('610727', '略阳县', '610700');
INSERT INTO `sys_area` VALUES ('610728', '镇巴县', '610700');
INSERT INTO `sys_area` VALUES ('610729', '留坝县', '610700');
INSERT INTO `sys_area` VALUES ('610730', '佛坪县', '610700');
INSERT INTO `sys_area` VALUES ('610800', '榆林市', '610000');
INSERT INTO `sys_area` VALUES ('610801', '市辖区', '610800');
INSERT INTO `sys_area` VALUES ('610802', '榆阳区', '610800');
INSERT INTO `sys_area` VALUES ('610821', '神木县', '610800');
INSERT INTO `sys_area` VALUES ('610822', '府谷县', '610800');
INSERT INTO `sys_area` VALUES ('610823', '横山县', '610800');
INSERT INTO `sys_area` VALUES ('610824', '靖边县', '610800');
INSERT INTO `sys_area` VALUES ('610825', '定边县', '610800');
INSERT INTO `sys_area` VALUES ('610826', '绥德县', '610800');
INSERT INTO `sys_area` VALUES ('610827', '米脂县', '610800');
INSERT INTO `sys_area` VALUES ('610828', '佳县', '610800');
INSERT INTO `sys_area` VALUES ('610829', '吴堡县', '610800');
INSERT INTO `sys_area` VALUES ('610830', '清涧县', '610800');
INSERT INTO `sys_area` VALUES ('610831', '子洲县', '610800');
INSERT INTO `sys_area` VALUES ('610900', '安康市', '610000');
INSERT INTO `sys_area` VALUES ('610901', '市辖区', '610900');
INSERT INTO `sys_area` VALUES ('610902', '汉滨区', '610901');
INSERT INTO `sys_area` VALUES ('610921', '汉阴县', '610900');
INSERT INTO `sys_area` VALUES ('610922', '石泉县', '610900');
INSERT INTO `sys_area` VALUES ('610923', '宁陕县', '610900');
INSERT INTO `sys_area` VALUES ('610924', '紫阳县', '610900');
INSERT INTO `sys_area` VALUES ('610925', '岚皋县', '610900');
INSERT INTO `sys_area` VALUES ('610926', '平利县', '610900');
INSERT INTO `sys_area` VALUES ('610927', '镇坪县', '610900');
INSERT INTO `sys_area` VALUES ('610928', '旬阳县', '610900');
INSERT INTO `sys_area` VALUES ('610929', '白河县', '610900');
INSERT INTO `sys_area` VALUES ('611000', '商洛市', '610000');
INSERT INTO `sys_area` VALUES ('611001', '市辖区', '611000');
INSERT INTO `sys_area` VALUES ('611002', '商州区', '611001');
INSERT INTO `sys_area` VALUES ('611021', '洛南县', '611000');
INSERT INTO `sys_area` VALUES ('611022', '丹凤县', '611000');
INSERT INTO `sys_area` VALUES ('611023', '商南县', '611000');
INSERT INTO `sys_area` VALUES ('611024', '山阳县', '611000');
INSERT INTO `sys_area` VALUES ('611025', '镇安县', '611000');
INSERT INTO `sys_area` VALUES ('611026', '柞水县', '611000');
INSERT INTO `sys_area` VALUES ('611100', '杨凌示范区', '610000');
INSERT INTO `sys_area` VALUES ('611103', '杨凌区', '611100');
INSERT INTO `sys_area` VALUES ('620000', '甘肃省', '0');
INSERT INTO `sys_area` VALUES ('620100', '兰州市', '620000');
INSERT INTO `sys_area` VALUES ('620101', '市辖区', '620100');
INSERT INTO `sys_area` VALUES ('620102', '城关区', '620101');
INSERT INTO `sys_area` VALUES ('620103', '七里河区', '620101');
INSERT INTO `sys_area` VALUES ('620104', '西固区', '620101');
INSERT INTO `sys_area` VALUES ('620105', '安宁区', '620101');
INSERT INTO `sys_area` VALUES ('620111', '红古区', '620101');
INSERT INTO `sys_area` VALUES ('620121', '永登县', '620100');
INSERT INTO `sys_area` VALUES ('620122', '皋兰县', '620100');
INSERT INTO `sys_area` VALUES ('620123', '榆中县', '620100');
INSERT INTO `sys_area` VALUES ('620200', '嘉峪关市', '620000');
INSERT INTO `sys_area` VALUES ('620201', '市辖区', '620200');
INSERT INTO `sys_area` VALUES ('620300', '金昌市', '620000');
INSERT INTO `sys_area` VALUES ('620301', '金川区', '620300');
INSERT INTO `sys_area` VALUES ('620321', '永昌县', '620300');
INSERT INTO `sys_area` VALUES ('620400', '白银市', '620000');
INSERT INTO `sys_area` VALUES ('620401', '市辖区', '620400');
INSERT INTO `sys_area` VALUES ('620402', '白银区', '620401');
INSERT INTO `sys_area` VALUES ('620403', '平川区', '620401');
INSERT INTO `sys_area` VALUES ('620421', '靖远县', '620400');
INSERT INTO `sys_area` VALUES ('620422', '会宁县', '620400');
INSERT INTO `sys_area` VALUES ('620423', '景泰县', '620400');
INSERT INTO `sys_area` VALUES ('620500', '天水市', '620000');
INSERT INTO `sys_area` VALUES ('620501', '麦积区', '620500');
INSERT INTO `sys_area` VALUES ('620502', '秦州区', '620500');
INSERT INTO `sys_area` VALUES ('620521', '清水县', '620500');
INSERT INTO `sys_area` VALUES ('620522', '秦安县', '620500');
INSERT INTO `sys_area` VALUES ('620523', '甘谷县', '620500');
INSERT INTO `sys_area` VALUES ('620524', '武山县', '620500');
INSERT INTO `sys_area` VALUES ('620525', '张家川回族自治县', '620500');
INSERT INTO `sys_area` VALUES ('620600', '武威市', '620000');
INSERT INTO `sys_area` VALUES ('620601', '市辖区', '620600');
INSERT INTO `sys_area` VALUES ('620602', '凉州区', '620601');
INSERT INTO `sys_area` VALUES ('620621', '民勤县', '620600');
INSERT INTO `sys_area` VALUES ('620622', '古浪县', '620600');
INSERT INTO `sys_area` VALUES ('620623', '天祝藏族自治县', '620600');
INSERT INTO `sys_area` VALUES ('620700', '张掖市', '620000');
INSERT INTO `sys_area` VALUES ('620701', '市辖区', '620700');
INSERT INTO `sys_area` VALUES ('620702', '甘州区', '620701');
INSERT INTO `sys_area` VALUES ('620721', '肃南裕固族自治县', '620700');
INSERT INTO `sys_area` VALUES ('620722', '民乐县', '620700');
INSERT INTO `sys_area` VALUES ('620723', '临泽县', '620700');
INSERT INTO `sys_area` VALUES ('620724', '高台县', '620700');
INSERT INTO `sys_area` VALUES ('620725', '山丹县', '620700');
INSERT INTO `sys_area` VALUES ('620800', '平凉市', '620000');
INSERT INTO `sys_area` VALUES ('620801', '市辖区', '620800');
INSERT INTO `sys_area` VALUES ('620802', '崆峒区', '620801');
INSERT INTO `sys_area` VALUES ('620821', '泾川县', '620800');
INSERT INTO `sys_area` VALUES ('620822', '灵台县', '620800');
INSERT INTO `sys_area` VALUES ('620823', '崇信县', '620800');
INSERT INTO `sys_area` VALUES ('620824', '华亭县', '620800');
INSERT INTO `sys_area` VALUES ('620825', '庄浪县', '620800');
INSERT INTO `sys_area` VALUES ('620826', '静宁县', '620800');
INSERT INTO `sys_area` VALUES ('620900', '酒泉市', '620000');
INSERT INTO `sys_area` VALUES ('620901', '市辖区', '620900');
INSERT INTO `sys_area` VALUES ('620902', '肃州区', '620901');
INSERT INTO `sys_area` VALUES ('620921', '金塔县', '620900');
INSERT INTO `sys_area` VALUES ('620922', '瓜洲县', '620900');
INSERT INTO `sys_area` VALUES ('620923', '肃北蒙古族自治县', '620900');
INSERT INTO `sys_area` VALUES ('620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `sys_area` VALUES ('620981', '玉门市', '620900');
INSERT INTO `sys_area` VALUES ('620982', '敦煌市', '620900');
INSERT INTO `sys_area` VALUES ('621000', '庆阳市', '620000');
INSERT INTO `sys_area` VALUES ('621001', '市辖区', '621000');
INSERT INTO `sys_area` VALUES ('621002', '西峰区', '621001');
INSERT INTO `sys_area` VALUES ('621021', '庆城县', '621000');
INSERT INTO `sys_area` VALUES ('621022', '环县', '621000');
INSERT INTO `sys_area` VALUES ('621023', '华池县', '621000');
INSERT INTO `sys_area` VALUES ('621024', '合水县', '621000');
INSERT INTO `sys_area` VALUES ('621025', '正宁县', '621000');
INSERT INTO `sys_area` VALUES ('621026', '宁县', '621000');
INSERT INTO `sys_area` VALUES ('621027', '镇原县', '621000');
INSERT INTO `sys_area` VALUES ('621100', '定西市', '620000');
INSERT INTO `sys_area` VALUES ('621101', '市辖区', '621100');
INSERT INTO `sys_area` VALUES ('621102', '安定区', '621101');
INSERT INTO `sys_area` VALUES ('621121', '通渭县', '621100');
INSERT INTO `sys_area` VALUES ('621122', '陇西县', '621100');
INSERT INTO `sys_area` VALUES ('621123', '渭源县', '621100');
INSERT INTO `sys_area` VALUES ('621124', '临洮县', '621100');
INSERT INTO `sys_area` VALUES ('621125', '漳县', '621100');
INSERT INTO `sys_area` VALUES ('621126', '岷县', '621100');
INSERT INTO `sys_area` VALUES ('621200', '陇南市', '620000');
INSERT INTO `sys_area` VALUES ('621201', '武都区', '621200');
INSERT INTO `sys_area` VALUES ('621221', '成县', '621200');
INSERT INTO `sys_area` VALUES ('621222', '文县', '621200');
INSERT INTO `sys_area` VALUES ('621223', '宕昌县', '621200');
INSERT INTO `sys_area` VALUES ('621224', '康县', '621200');
INSERT INTO `sys_area` VALUES ('621225', '西和县', '621200');
INSERT INTO `sys_area` VALUES ('621226', '礼县', '621200');
INSERT INTO `sys_area` VALUES ('621227', '徽县', '621200');
INSERT INTO `sys_area` VALUES ('621228', '两当县', '621200');
INSERT INTO `sys_area` VALUES ('622900', '临夏回族自治州', '620000');
INSERT INTO `sys_area` VALUES ('622901', '临夏市', '622900');
INSERT INTO `sys_area` VALUES ('622921', '临夏县', '622900');
INSERT INTO `sys_area` VALUES ('622922', '康乐县', '622900');
INSERT INTO `sys_area` VALUES ('622923', '永靖县', '622900');
INSERT INTO `sys_area` VALUES ('622924', '广河县', '622900');
INSERT INTO `sys_area` VALUES ('622925', '和政县', '622900');
INSERT INTO `sys_area` VALUES ('622926', '东乡族自治县', '622900');
INSERT INTO `sys_area` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `sys_area` VALUES ('623000', '甘南藏族自治州', '620000');
INSERT INTO `sys_area` VALUES ('623001', '合作市', '623000');
INSERT INTO `sys_area` VALUES ('623021', '临潭县', '623000');
INSERT INTO `sys_area` VALUES ('623022', '卓尼县', '623000');
INSERT INTO `sys_area` VALUES ('623023', '舟曲县', '623000');
INSERT INTO `sys_area` VALUES ('623024', '迭部县', '623000');
INSERT INTO `sys_area` VALUES ('623025', '玛曲县', '623000');
INSERT INTO `sys_area` VALUES ('623026', '碌曲县', '623000');
INSERT INTO `sys_area` VALUES ('623027', '夏河县', '623000');
INSERT INTO `sys_area` VALUES ('630000', '青海省', '0');
INSERT INTO `sys_area` VALUES ('630100', '西宁市', '630000');
INSERT INTO `sys_area` VALUES ('630101', '市辖区', '630100');
INSERT INTO `sys_area` VALUES ('630102', '城东区', '630101');
INSERT INTO `sys_area` VALUES ('630103', '城中区', '630101');
INSERT INTO `sys_area` VALUES ('630104', '城西区', '630101');
INSERT INTO `sys_area` VALUES ('630105', '城北区', '630101');
INSERT INTO `sys_area` VALUES ('630121', '大通回族土族自治县', '630100');
INSERT INTO `sys_area` VALUES ('630122', '湟中县', '630100');
INSERT INTO `sys_area` VALUES ('630123', '湟源县', '630100');
INSERT INTO `sys_area` VALUES ('632100', '海东市', '630000');
INSERT INTO `sys_area` VALUES ('632121', '平安县', '632100');
INSERT INTO `sys_area` VALUES ('632122', '民和回族土族自治县', '632100');
INSERT INTO `sys_area` VALUES ('632123', '乐都区', '632100');
INSERT INTO `sys_area` VALUES ('632126', '互助土族自治县', '632100');
INSERT INTO `sys_area` VALUES ('632127', '化隆回族自治县', '632100');
INSERT INTO `sys_area` VALUES ('632128', '循化撒拉族自治县', '632100');
INSERT INTO `sys_area` VALUES ('632200', '海北藏族自治州', '630000');
INSERT INTO `sys_area` VALUES ('632221', '门源回族自治县', '632200');
INSERT INTO `sys_area` VALUES ('632222', '祁连县', '632200');
INSERT INTO `sys_area` VALUES ('632223', '海晏县', '632200');
INSERT INTO `sys_area` VALUES ('632224', '刚察县', '632200');
INSERT INTO `sys_area` VALUES ('632300', '黄南藏族自治州', '630000');
INSERT INTO `sys_area` VALUES ('632321', '同仁县', '632300');
INSERT INTO `sys_area` VALUES ('632322', '尖扎县', '632300');
INSERT INTO `sys_area` VALUES ('632323', '泽库县', '632300');
INSERT INTO `sys_area` VALUES ('632324', '河南蒙古族自治县', '632300');
INSERT INTO `sys_area` VALUES ('632500', '海南藏族自治州', '630000');
INSERT INTO `sys_area` VALUES ('632521', '共和县', '632500');
INSERT INTO `sys_area` VALUES ('632522', '同德县', '632500');
INSERT INTO `sys_area` VALUES ('632523', '贵德县', '632500');
INSERT INTO `sys_area` VALUES ('632524', '兴海县', '632500');
INSERT INTO `sys_area` VALUES ('632525', '贵南县', '632500');
INSERT INTO `sys_area` VALUES ('632600', '果洛藏族自治州', '630000');
INSERT INTO `sys_area` VALUES ('632621', '玛沁县', '632600');
INSERT INTO `sys_area` VALUES ('632622', '班玛县', '632600');
INSERT INTO `sys_area` VALUES ('632623', '甘德县', '632600');
INSERT INTO `sys_area` VALUES ('632624', '达日县', '632600');
INSERT INTO `sys_area` VALUES ('632625', '久治县', '632600');
INSERT INTO `sys_area` VALUES ('632626', '玛多县', '632600');
INSERT INTO `sys_area` VALUES ('632700', '玉树藏族自治州', '630000');
INSERT INTO `sys_area` VALUES ('632721', '玉树县', '632700');
INSERT INTO `sys_area` VALUES ('632722', '杂多县', '632700');
INSERT INTO `sys_area` VALUES ('632723', '称多县', '632700');
INSERT INTO `sys_area` VALUES ('632724', '治多县', '632700');
INSERT INTO `sys_area` VALUES ('632725', '囊谦县', '632700');
INSERT INTO `sys_area` VALUES ('632726', '曲麻莱县', '632700');
INSERT INTO `sys_area` VALUES ('632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `sys_area` VALUES ('632801', '格尔木市', '632800');
INSERT INTO `sys_area` VALUES ('632802', '德令哈市', '632800');
INSERT INTO `sys_area` VALUES ('632821', '乌兰县', '632800');
INSERT INTO `sys_area` VALUES ('632822', '都兰县', '632800');
INSERT INTO `sys_area` VALUES ('632823', '天峻县', '632800');
INSERT INTO `sys_area` VALUES ('640000', '宁夏回族自治区', '0');
INSERT INTO `sys_area` VALUES ('640100', '银川市', '640000');
INSERT INTO `sys_area` VALUES ('640104', '兴庆区', '640100');
INSERT INTO `sys_area` VALUES ('640105', '西夏区', '640100');
INSERT INTO `sys_area` VALUES ('640106', '金凤区', '640100');
INSERT INTO `sys_area` VALUES ('640121', '永宁县', '640100');
INSERT INTO `sys_area` VALUES ('640122', '贺兰县', '640100');
INSERT INTO `sys_area` VALUES ('640181', '灵武市', '640100');
INSERT INTO `sys_area` VALUES ('640200', '石嘴山市', '640000');
INSERT INTO `sys_area` VALUES ('640202', '大武口区', '640200');
INSERT INTO `sys_area` VALUES ('640205', '惠农县', '640200');
INSERT INTO `sys_area` VALUES ('640221', '平罗县', '640200');
INSERT INTO `sys_area` VALUES ('640300', '吴忠市', '640000');
INSERT INTO `sys_area` VALUES ('640301', '红寺堡区', '640300');
INSERT INTO `sys_area` VALUES ('640302', '利通区', '640300');
INSERT INTO `sys_area` VALUES ('640323', '盐池县', '640300');
INSERT INTO `sys_area` VALUES ('640324', '同心县', '640300');
INSERT INTO `sys_area` VALUES ('640381', '青铜峡市', '640300');
INSERT INTO `sys_area` VALUES ('640400', '固原市', '640000');
INSERT INTO `sys_area` VALUES ('640401', '市辖区', '640400');
INSERT INTO `sys_area` VALUES ('640402', '原州区', '640400');
INSERT INTO `sys_area` VALUES ('640422', '西吉县', '640400');
INSERT INTO `sys_area` VALUES ('640423', '隆德县', '640400');
INSERT INTO `sys_area` VALUES ('640424', '泾源县', '640400');
INSERT INTO `sys_area` VALUES ('640425', '彭阳县', '640400');
INSERT INTO `sys_area` VALUES ('640500', '中卫市', '640000');
INSERT INTO `sys_area` VALUES ('640501', '市辖区', '640500');
INSERT INTO `sys_area` VALUES ('640502', '沙坡头区', '640500');
INSERT INTO `sys_area` VALUES ('640521', '中宁县', '640500');
INSERT INTO `sys_area` VALUES ('640522', '海原县', '640500');
INSERT INTO `sys_area` VALUES ('650000', '新疆维吾尔自治区', '0');
INSERT INTO `sys_area` VALUES ('650100', '乌鲁木齐市', '650000');
INSERT INTO `sys_area` VALUES ('650101', '市辖区', '650100');
INSERT INTO `sys_area` VALUES ('650102', '天山区', '650101');
INSERT INTO `sys_area` VALUES ('650103', '沙依巴克区', '650101');
INSERT INTO `sys_area` VALUES ('650104', '新市区', '650101');
INSERT INTO `sys_area` VALUES ('650105', '水磨沟区', '650101');
INSERT INTO `sys_area` VALUES ('650106', '头屯河区', '650101');
INSERT INTO `sys_area` VALUES ('650107', '达坂城区', '650101');
INSERT INTO `sys_area` VALUES ('650108', '东山区', '650101');
INSERT INTO `sys_area` VALUES ('650121', '乌鲁木齐县', '650100');
INSERT INTO `sys_area` VALUES ('650200', '克拉玛依市', '650000');
INSERT INTO `sys_area` VALUES ('650201', '市辖区', '650200');
INSERT INTO `sys_area` VALUES ('650202', '独山子区', '650201');
INSERT INTO `sys_area` VALUES ('650203', '克拉玛依区', '650201');
INSERT INTO `sys_area` VALUES ('650204', '白碱滩区', '650201');
INSERT INTO `sys_area` VALUES ('650205', '乌尔禾区', '650201');
INSERT INTO `sys_area` VALUES ('652100', '吐鲁番地区', '650000');
INSERT INTO `sys_area` VALUES ('652101', '吐鲁番市', '652100');
INSERT INTO `sys_area` VALUES ('652122', '鄯善县', '652100');
INSERT INTO `sys_area` VALUES ('652123', '托克逊县', '652100');
INSERT INTO `sys_area` VALUES ('652200', '哈密地区', '650000');
INSERT INTO `sys_area` VALUES ('652201', '哈密市', '652200');
INSERT INTO `sys_area` VALUES ('652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `sys_area` VALUES ('652223', '伊吾县', '652200');
INSERT INTO `sys_area` VALUES ('652300', '昌吉回族自治州', '650000');
INSERT INTO `sys_area` VALUES ('652301', '昌吉市', '652300');
INSERT INTO `sys_area` VALUES ('652302', '阜康市', '652300');
INSERT INTO `sys_area` VALUES ('652303', '米泉市', '652300');
INSERT INTO `sys_area` VALUES ('652323', '呼图壁县', '652300');
INSERT INTO `sys_area` VALUES ('652324', '玛纳斯县', '652300');
INSERT INTO `sys_area` VALUES ('652325', '奇台县', '652300');
INSERT INTO `sys_area` VALUES ('652327', '吉木萨尔县', '652300');
INSERT INTO `sys_area` VALUES ('652328', '木垒哈萨克自治县', '652300');
INSERT INTO `sys_area` VALUES ('652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `sys_area` VALUES ('652701', '博乐市', '652700');
INSERT INTO `sys_area` VALUES ('652722', '精河县', '652700');
INSERT INTO `sys_area` VALUES ('652723', '温泉县', '652700');
INSERT INTO `sys_area` VALUES ('652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `sys_area` VALUES ('652801', '库尔勒市', '652800');
INSERT INTO `sys_area` VALUES ('652822', '轮台县', '652800');
INSERT INTO `sys_area` VALUES ('652823', '尉犁县', '652800');
INSERT INTO `sys_area` VALUES ('652824', '若羌县', '652800');
INSERT INTO `sys_area` VALUES ('652825', '且末县', '652800');
INSERT INTO `sys_area` VALUES ('652826', '焉耆回族自治县', '652800');
INSERT INTO `sys_area` VALUES ('652827', '和静县', '652800');
INSERT INTO `sys_area` VALUES ('652828', '和硕县', '652800');
INSERT INTO `sys_area` VALUES ('652829', '博湖县', '652800');
INSERT INTO `sys_area` VALUES ('652900', '阿克苏地区', '650000');
INSERT INTO `sys_area` VALUES ('652901', '阿克苏市', '652900');
INSERT INTO `sys_area` VALUES ('652922', '温宿县', '652900');
INSERT INTO `sys_area` VALUES ('652923', '库车县', '652900');
INSERT INTO `sys_area` VALUES ('652924', '沙雅县', '652900');
INSERT INTO `sys_area` VALUES ('652925', '新和县', '652900');
INSERT INTO `sys_area` VALUES ('652926', '拜城县', '652900');
INSERT INTO `sys_area` VALUES ('652927', '乌什县', '652900');
INSERT INTO `sys_area` VALUES ('652928', '阿瓦提县', '652900');
INSERT INTO `sys_area` VALUES ('652929', '柯坪县', '652900');
INSERT INTO `sys_area` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `sys_area` VALUES ('653001', '阿图什市', '653000');
INSERT INTO `sys_area` VALUES ('653022', '阿克陶县', '653000');
INSERT INTO `sys_area` VALUES ('653023', '阿合奇县', '653000');
INSERT INTO `sys_area` VALUES ('653024', '乌恰县', '653000');
INSERT INTO `sys_area` VALUES ('653100', '喀什地区', '650000');
INSERT INTO `sys_area` VALUES ('653101', '喀什市', '653100');
INSERT INTO `sys_area` VALUES ('653121', '疏附县', '653100');
INSERT INTO `sys_area` VALUES ('653122', '疏勒县', '653100');
INSERT INTO `sys_area` VALUES ('653123', '英吉沙县', '653100');
INSERT INTO `sys_area` VALUES ('653124', '泽普县', '653100');
INSERT INTO `sys_area` VALUES ('653125', '莎车县', '653100');
INSERT INTO `sys_area` VALUES ('653126', '叶城县', '653100');
INSERT INTO `sys_area` VALUES ('653127', '麦盖提县', '653100');
INSERT INTO `sys_area` VALUES ('653128', '岳普湖县', '653100');
INSERT INTO `sys_area` VALUES ('653129', '伽师县', '653100');
INSERT INTO `sys_area` VALUES ('653130', '巴楚县', '653100');
INSERT INTO `sys_area` VALUES ('653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `sys_area` VALUES ('653200', '和田地区', '650000');
INSERT INTO `sys_area` VALUES ('653201', '和田市', '653200');
INSERT INTO `sys_area` VALUES ('653221', '和田县', '653200');
INSERT INTO `sys_area` VALUES ('653222', '墨玉县', '653200');
INSERT INTO `sys_area` VALUES ('653223', '皮山县', '653200');
INSERT INTO `sys_area` VALUES ('653224', '洛浦县', '653200');
INSERT INTO `sys_area` VALUES ('653225', '策勒县', '653200');
INSERT INTO `sys_area` VALUES ('653226', '于田县', '653200');
INSERT INTO `sys_area` VALUES ('653227', '民丰县', '653200');
INSERT INTO `sys_area` VALUES ('654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `sys_area` VALUES ('654002', '伊宁市', '654000');
INSERT INTO `sys_area` VALUES ('654003', '奎屯市', '654000');
INSERT INTO `sys_area` VALUES ('654021', '伊宁县', '654000');
INSERT INTO `sys_area` VALUES ('654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `sys_area` VALUES ('654023', '霍城县', '654000');
INSERT INTO `sys_area` VALUES ('654024', '巩留县', '654000');
INSERT INTO `sys_area` VALUES ('654025', '新源县', '654000');
INSERT INTO `sys_area` VALUES ('654026', '昭苏县', '654000');
INSERT INTO `sys_area` VALUES ('654027', '特克斯县', '654000');
INSERT INTO `sys_area` VALUES ('654028', '尼勒克县', '654000');
INSERT INTO `sys_area` VALUES ('654200', '塔城地区', '650000');
INSERT INTO `sys_area` VALUES ('654201', '塔城市', '654200');
INSERT INTO `sys_area` VALUES ('654202', '乌苏市', '654200');
INSERT INTO `sys_area` VALUES ('654221', '额敏县', '654200');
INSERT INTO `sys_area` VALUES ('654223', '沙湾县', '654200');
INSERT INTO `sys_area` VALUES ('654224', '托里县', '654200');
INSERT INTO `sys_area` VALUES ('654225', '裕民县', '654200');
INSERT INTO `sys_area` VALUES ('654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `sys_area` VALUES ('654300', '阿勒泰地区', '650000');
INSERT INTO `sys_area` VALUES ('654301', '阿勒泰市', '654300');
INSERT INTO `sys_area` VALUES ('654321', '布尔津县', '654300');
INSERT INTO `sys_area` VALUES ('654322', '富蕴县', '654300');
INSERT INTO `sys_area` VALUES ('654323', '福海县', '654300');
INSERT INTO `sys_area` VALUES ('654324', '哈巴河县', '654300');
INSERT INTO `sys_area` VALUES ('654325', '青河县', '654300');
INSERT INTO `sys_area` VALUES ('654326', '吉木乃县', '654300');
INSERT INTO `sys_area` VALUES ('659000', '省直辖行政单位', '650000');
INSERT INTO `sys_area` VALUES ('659001', '石河子市', '659000');
INSERT INTO `sys_area` VALUES ('659002', '阿拉尔市', '659000');
INSERT INTO `sys_area` VALUES ('659003', '图木舒克市', '659000');
INSERT INTO `sys_area` VALUES ('659004', '五家渠市', '659000');
INSERT INTO `sys_area` VALUES ('990000', '新疆建设兵团', '0');
INSERT INTO `sys_area` VALUES ('990100', '第一师', '990000');
INSERT INTO `sys_area` VALUES ('990200', '第二师', '990000');
INSERT INTO `sys_area` VALUES ('990300', '第三师', '990000');
INSERT INTO `sys_area` VALUES ('990400', '第四师', '990000');
INSERT INTO `sys_area` VALUES ('990500', '第五师', '990000');
INSERT INTO `sys_area` VALUES ('990600', '第六师', '990000');
INSERT INTO `sys_area` VALUES ('990700', '第七师', '990000');
INSERT INTO `sys_area` VALUES ('990800', '第八师', '990000');
INSERT INTO `sys_area` VALUES ('990900', '第九师', '990000');
INSERT INTO `sys_area` VALUES ('991000', '第十师', '990000');
INSERT INTO `sys_area` VALUES ('991100', '建工师', '990000');
INSERT INTO `sys_area` VALUES ('991200', '第十二师', '990000');
INSERT INTO `sys_area` VALUES ('991300', '第十三师', '990000');
INSERT INTO `sys_area` VALUES ('991400', '第十四师', '990000');

-- ----------------------------
-- Table structure for ums_admin
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin`;
CREATE TABLE `ums_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `nick_name` varchar(200) DEFAULT NULL COMMENT '昵称',
  `note` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` int DEFAULT '1' COMMENT '帐号启用状态：0->禁用；1->启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='后台用户表';

-- ----------------------------
-- Records of ums_admin
-- ----------------------------
INSERT INTO `ums_admin` VALUES ('1', 'test', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'https://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/icon/github_icon_02.png', 'test@qq.com', '测试账号', null, '2018-09-29 13:55:30', '2018-09-29 13:55:39', '1');
INSERT INTO `ums_admin` VALUES ('3', 'admin', '$2a$10$.E1FokumK5GIXWgKlg.Hc.i/0/2.qdAwYFL1zc5QHdyzpXOr38RZO', 'https://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/icon/github_icon_01.png', 'admin@163.com', '系统管理员', '系统管理员', '2018-10-08 13:32:47', '2019-04-20 12:45:16', '1');
INSERT INTO `ums_admin` VALUES ('4', 'macro', '$2a$10$Bx4jZPR7GhEpIQfefDQtVeS58GfT5n6mxs/b4nLLK65eMFa16topa', 'https://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/icon/github_icon_01.png', 'macro@qq.com', 'macro', 'macro专用', '2019-10-06 15:53:51', '2020-02-03 14:55:55', '1');
INSERT INTO `ums_admin` VALUES ('6', 'productAdmin', '$2a$10$6/.J.p.6Bhn7ic4GfoB5D.pGd7xSiD1a9M6ht6yO0fxzlKJPjRAGm', 'https://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/icon/github_icon_03.png', 'product@qq.com', '商品管理员', '只有商品权限', '2020-02-07 16:15:08', null, '1');
INSERT INTO `ums_admin` VALUES ('7', 'orderAdmin', '$2a$10$UqEhA9UZXjHHA3B.L9wNG.6aerrBjC6WHTtbv1FdvYPUI.7lkL6E.', 'https://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/icon/github_icon_04.png', 'order@qq.com', '订单管理员', '只有订单管理权限', '2020-02-07 16:15:50', null, '1');
INSERT INTO `ums_admin` VALUES ('8', 'test123', '$2a$10$M1qJguEzwoAN0la7PB8UO.HOGe1xZGku7xw1iTaUUpY0ZVRCxrxoO', 'string', 'abc@qq.com', 'string', 'string', '2022-08-07 14:45:42', null, '1');
INSERT INTO `ums_admin` VALUES ('9', 'test256', '$2a$10$kTMBrt8mkXcO8T4eHThFWOf3KuNK6tqevkiAf4YbtXtaCJ6ocYkJa', 'string', 'abc@qq.com', 'string', 'string', '2022-08-07 14:52:57', null, '1');
INSERT INTO `ums_admin` VALUES ('10', 'test1267', '$2a$10$VUywDhXVPY13YZxMD/uPWeDqkzSozN7o8u/3MX6sBig2NK2VaTJZ2', null, 'test1267@qq.com', 'test1267', 'test1267', '2023-01-04 16:13:34', null, '1');

-- ----------------------------
-- Table structure for ums_admin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_login_log`;
CREATE TABLE `ums_admin_login_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_agent` varchar(100) DEFAULT NULL COMMENT '浏览器登录类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=412 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='后台用户登录日志表';

-- ----------------------------
-- Records of ums_admin_login_log
-- ----------------------------
INSERT INTO `ums_admin_login_log` VALUES ('1', '3', '2018-12-23 14:27:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('2', '3', '2019-04-07 16:04:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('3', '3', '2019-04-08 21:47:52', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('4', '3', '2019-04-08 21:48:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('5', '3', '2019-04-18 22:18:40', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('6', '3', '2019-04-20 12:45:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('7', '3', '2019-05-19 14:52:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('8', '3', '2019-05-25 15:00:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('9', '3', '2019-06-19 20:11:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('10', '3', '2019-06-30 10:33:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('11', '3', '2019-06-30 10:34:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('12', '3', '2019-06-30 10:35:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('13', '3', '2019-07-27 17:11:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('14', '3', '2019-07-27 17:13:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('15', '3', '2019-07-27 17:15:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('16', '3', '2019-07-27 17:17:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('17', '3', '2019-07-27 17:18:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('18', '3', '2019-07-27 21:21:52', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('19', '3', '2019-07-27 21:34:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('20', '3', '2019-07-27 21:35:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('21', '3', '2019-07-27 21:35:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('22', '3', '2019-07-27 21:40:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('23', '3', '2019-08-18 16:00:38', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('24', '3', '2019-08-18 16:01:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('25', '3', '2019-08-18 16:47:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('26', '3', '2019-10-06 15:54:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('27', '3', '2019-10-06 16:03:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('28', '3', '2019-10-06 16:04:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('29', '3', '2019-10-06 16:06:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('30', '3', '2019-10-06 16:14:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('31', '1', '2019-10-06 16:15:09', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('32', '1', '2019-10-06 16:16:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('33', '3', '2019-10-06 16:16:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('34', '3', '2019-10-06 16:16:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('35', '3', '2019-10-07 15:20:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('36', '3', '2019-10-07 15:40:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('37', '3', '2019-10-07 16:34:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('38', '3', '2019-10-09 21:19:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('39', '4', '2019-10-09 21:30:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('40', '4', '2019-10-09 21:31:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('41', '4', '2019-10-09 21:32:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('42', '4', '2019-10-09 21:33:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('43', '4', '2019-10-09 21:33:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('44', '3', '2019-10-20 16:02:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('45', '3', '2019-10-23 21:20:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('46', '3', '2019-10-27 21:41:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('47', '3', '2019-11-09 16:44:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('48', '3', '2019-11-09 16:46:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('49', '3', '2019-11-09 16:49:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('50', '3', '2019-11-23 14:17:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('51', '6', '2019-11-23 14:52:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('52', '3', '2019-11-23 15:07:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('53', '3', '2019-11-30 21:25:30', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('54', '3', '2019-11-30 21:27:54', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('55', '3', '2019-12-28 15:23:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('56', '3', '2020-01-01 15:21:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('57', '3', '2020-01-04 16:00:54', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('58', '3', '2020-02-01 15:05:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('59', '3', '2020-02-01 15:36:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('60', '3', '2020-02-01 15:36:36', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('61', '3', '2020-02-01 15:37:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('62', '3', '2020-02-01 15:37:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('63', '3', '2020-02-01 15:38:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('64', '3', '2020-02-01 15:38:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('65', '3', '2020-02-01 15:39:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('66', '3', '2020-02-01 15:41:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('67', '3', '2020-02-01 15:43:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('68', '3', '2020-02-01 15:44:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('69', '3', '2020-02-01 15:45:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('70', '3', '2020-02-01 15:46:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('71', '3', '2020-02-01 15:48:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('72', '3', '2020-02-01 16:00:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('73', '3', '2020-02-01 16:07:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('74', '3', '2020-02-01 16:08:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('75', '3', '2020-02-02 15:28:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('76', '3', '2020-02-02 15:44:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('77', '3', '2020-02-02 15:45:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('78', '3', '2020-02-02 15:52:32', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('79', '3', '2020-02-02 15:53:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('80', '3', '2020-02-02 15:54:36', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('81', '3', '2020-02-02 16:01:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('82', '3', '2020-02-02 16:05:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('83', '3', '2020-02-02 16:06:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('84', '3', '2020-02-02 16:17:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('85', '3', '2020-02-02 16:18:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('86', '3', '2020-02-02 16:19:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('87', '3', '2020-02-02 16:19:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('88', '3', '2020-02-02 16:22:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('89', '3', '2020-02-02 16:23:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('90', '3', '2020-02-02 16:23:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('91', '3', '2020-02-02 16:24:38', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('92', '3', '2020-02-02 16:25:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('93', '3', '2020-02-02 16:26:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('94', '3', '2020-02-02 16:26:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('95', '3', '2020-02-02 16:27:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('96', '3', '2020-02-02 16:31:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('97', '3', '2020-02-02 16:31:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('98', '3', '2020-02-02 16:31:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('99', '3', '2020-02-02 16:31:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('100', '3', '2020-02-02 16:33:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('101', '3', '2020-02-02 16:33:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('102', '3', '2020-02-02 16:34:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('103', '3', '2020-02-02 16:38:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('104', '3', '2020-02-02 16:39:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('105', '3', '2020-02-02 16:42:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('106', '3', '2020-02-02 16:46:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('107', '3', '2020-02-02 16:50:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('108', '3', '2020-02-02 16:51:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('109', '3', '2020-02-02 16:51:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('110', '3', '2020-02-02 16:52:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('111', '3', '2020-02-02 17:01:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('112', '3', '2020-02-03 10:43:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('113', '3', '2020-02-03 10:45:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('114', '3', '2020-02-03 10:46:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('115', '3', '2020-02-03 10:54:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('116', '3', '2020-02-03 14:24:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('117', '3', '2020-02-03 14:25:38', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('118', '5', '2020-02-03 15:22:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('119', '5', '2020-02-03 15:23:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('120', '5', '2020-02-03 15:24:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('121', '3', '2020-02-03 15:24:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('122', '5', '2020-02-03 15:27:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('123', '3', '2020-02-03 15:27:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('124', '3', '2020-02-03 15:29:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('125', '5', '2020-02-03 15:33:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('126', '3', '2020-02-03 15:33:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('127', '1', '2020-02-03 15:34:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('128', '3', '2020-02-03 15:34:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('129', '3', '2020-02-04 14:14:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('130', '3', '2020-02-05 10:33:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('131', '3', '2020-02-05 10:36:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('132', '3', '2020-02-05 16:34:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('133', '4', '2020-02-05 16:58:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('134', '3', '2020-02-05 16:59:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('135', '3', '2020-02-06 10:25:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('136', '3', '2020-02-07 14:34:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('137', '3', '2020-02-07 14:36:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('138', '1', '2020-02-07 14:43:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('139', '3', '2020-02-07 15:18:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('140', '3', '2020-02-07 15:20:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('141', '3', '2020-02-07 15:22:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('142', '3', '2020-02-07 15:22:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('143', '3', '2020-02-07 15:55:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('144', '3', '2020-02-07 15:56:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('145', '3', '2020-02-07 15:58:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('146', '6', '2020-02-07 16:16:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('147', '7', '2020-02-07 16:16:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('148', '3', '2020-02-07 16:18:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('149', '7', '2020-02-07 16:20:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('150', '3', '2020-02-07 16:20:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('151', '3', '2020-02-07 16:32:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('152', '3', '2020-02-07 19:32:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('153', '3', '2020-02-07 19:32:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('154', '3', '2020-02-07 19:33:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('155', '3', '2020-02-07 19:33:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('156', '3', '2020-02-07 19:33:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('157', '3', '2020-02-07 19:35:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('158', '3', '2020-02-07 19:37:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('159', '3', '2020-02-07 19:37:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('160', '3', '2020-02-07 19:37:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('161', '3', '2020-02-07 19:45:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('162', '3', '2020-02-07 19:47:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('163', '3', '2020-02-07 20:02:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('164', '6', '2020-02-07 20:10:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('165', '6', '2020-02-07 20:11:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('166', '6', '2020-02-07 20:13:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('167', '6', '2020-02-07 20:17:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('168', '3', '2020-02-07 20:17:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('169', '6', '2020-02-07 20:18:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('170', '3', '2020-02-10 10:28:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('171', '3', '2020-02-10 10:45:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('172', '3', '2020-02-10 10:57:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('173', '3', '2020-02-10 10:59:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('174', '3', '2020-02-10 11:04:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('175', '3', '2020-02-10 11:05:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('176', '3', '2020-02-10 11:06:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('177', '3', '2020-02-10 11:07:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('178', '3', '2020-02-10 11:08:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('179', '3', '2020-02-10 11:10:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('180', '6', '2020-02-10 14:25:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('181', '6', '2020-02-10 14:29:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('182', '3', '2020-02-10 16:09:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('183', '3', '2020-02-20 14:39:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('184', '8', '2020-02-20 17:14:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('185', '8', '2020-02-20 17:17:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('186', '8', '2020-02-20 17:17:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('187', '8', '2020-02-21 10:26:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('188', '8', '2020-02-21 10:28:54', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('189', '8', '2020-02-21 10:32:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('190', '8', '2020-02-21 10:33:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('191', '8', '2020-02-21 10:35:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('192', '8', '2020-02-21 10:36:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('193', '3', '2020-02-21 11:10:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('194', '3', '2020-02-25 16:11:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('195', '3', '2020-02-25 16:46:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('196', '3', '2020-03-07 16:33:59', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('197', '6', '2020-03-07 16:35:38', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('198', '3', '2020-03-07 17:00:09', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('199', '3', '2020-03-14 14:32:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('200', '8', '2020-03-14 14:32:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('201', '3', '2020-03-14 14:33:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('202', '8', '2020-03-14 14:34:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('203', '3', '2020-03-14 14:35:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('204', '8', '2020-03-14 14:36:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('205', '3', '2020-03-14 14:36:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('206', '8', '2020-03-14 14:37:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('207', '3', '2020-03-14 14:37:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('208', '8', '2020-03-14 14:38:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('209', '3', '2020-03-14 14:38:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('210', '8', '2020-03-14 14:39:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('211', '3', '2020-03-14 14:39:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('212', '3', '2020-03-15 14:23:54', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('213', '3', '2020-03-22 14:33:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('214', '3', '2020-03-22 14:59:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('215', '3', '2020-03-22 15:04:32', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('216', '3', '2020-03-29 16:14:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('217', '3', '2020-03-29 17:17:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('218', '3', '2020-04-06 16:54:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('219', '3', '2020-04-12 15:01:40', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('220', '3', '2020-04-19 09:50:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('221', '3', '2020-05-04 10:45:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('222', '3', '2020-05-05 11:02:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('223', '3', '2020-05-16 15:17:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('224', '3', '2020-05-17 14:58:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('225', '3', '2020-05-18 15:47:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('226', '3', '2020-05-23 16:51:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('227', '3', '2020-05-23 16:54:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('228', '3', '2020-05-23 17:00:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('229', '3', '2020-05-24 10:38:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('230', '3', '2020-06-07 09:39:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('231', '3', '2020-06-14 14:23:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('232', '3', '2020-06-14 17:11:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('233', '3', '2020-06-20 14:53:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('234', '3', '2020-06-21 14:57:36', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('235', '3', '2020-06-27 10:41:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('236', '3', '2020-07-05 15:54:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('237', '3', '2020-07-11 10:40:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('238', '3', '2020-07-11 10:45:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('239', '3', '2020-07-19 11:00:16', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('240', '3', '2020-07-19 11:46:27', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('241', '3', '2020-07-19 11:53:47', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('242', '3', '2020-07-19 14:17:37', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('243', '3', '2020-07-19 14:44:24', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('244', '3', '2020-07-19 14:44:58', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('245', '3', '2020-07-19 14:48:27', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('246', '3', '2020-07-19 14:48:57', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('247', '3', '2020-07-19 14:49:30', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('248', '3', '2020-07-19 14:50:18', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('249', '3', '2020-07-19 14:51:51', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('250', '3', '2020-07-19 14:55:27', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('251', '3', '2020-07-19 14:58:14', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('252', '6', '2020-07-19 15:04:21', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('253', '3', '2020-07-19 15:38:49', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('254', '6', '2020-07-19 16:26:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('255', '3', '2020-08-08 10:39:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('256', '3', '2020-08-09 11:06:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('257', '3', '2020-08-10 20:41:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('258', '3', '2020-08-15 10:12:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('259', '1', '2020-08-19 21:23:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('260', '1', '2020-08-19 21:25:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('261', '3', '2020-09-05 16:14:50', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('262', '3', '2020-09-05 16:15:37', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('263', '3', '2020-09-12 16:07:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('264', '6', '2020-09-12 16:08:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('265', '1', '2020-09-12 16:08:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('266', '6', '2020-09-12 16:09:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('267', '1', '2020-09-12 16:09:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('268', '3', '2020-09-13 14:22:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('269', '3', '2020-09-13 14:23:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('270', '3', '2020-09-13 14:24:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('271', '3', '2020-09-13 14:32:32', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('272', '1', '2020-09-19 15:43:31', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('273', '3', '2020-09-19 15:43:58', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('274', '3', '2020-09-19 15:49:44', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('275', '6', '2020-09-19 15:50:12', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('276', '6', '2020-09-19 15:50:18', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('277', '1', '2020-09-19 15:50:41', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('278', '6', '2020-09-19 15:52:28', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('279', '1', '2020-09-19 15:53:01', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('280', '1', '2020-09-19 15:53:48', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('281', '6', '2020-09-19 15:54:37', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('282', '3', '2020-09-20 11:13:50', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('283', '1', '2020-10-08 14:26:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('284', '1', '2020-10-08 14:30:49', '192.168.3.185', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('285', '3', '2021-04-11 10:27:43', '192.168.3.227', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('286', '1', '2021-04-11 10:29:19', '192.168.3.227', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('287', '3', '2021-04-11 10:30:40', '192.168.3.227', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('288', '3', '2021-04-11 10:37:50', '192.168.3.227', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('289', '3', '2021-12-08 10:44:09', '192.168.3.4', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('290', '3', '2022-04-15 15:04:51', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('291', '1', '2022-05-10 15:25:58', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('292', '1', '2022-05-10 15:31:08', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('293', '1', '2022-05-10 15:32:18', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('294', '1', '2022-05-10 15:34:17', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('295', '1', '2022-05-10 15:34:38', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('296', '1', '2022-05-10 15:54:50', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('297', '1', '2022-05-10 16:31:20', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('298', '1', '2022-05-10 16:33:45', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('299', '1', '2022-05-10 16:39:07', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('300', '1', '2022-05-18 14:53:41', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('301', '3', '2022-06-07 17:28:29', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('302', '3', '2022-06-08 09:48:32', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('303', '3', '2022-06-08 10:34:20', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('304', '3', '2022-06-08 17:09:29', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('305', '3', '2022-06-08 17:10:11', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('306', '6', '2022-06-08 17:10:55', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('307', '3', '2022-06-08 17:23:05', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('308', '3', '2022-06-08 17:30:51', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('309', '3', '2022-06-08 17:31:42', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('310', '3', '2022-06-08 17:31:48', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('311', '3', '2022-06-08 21:03:56', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('312', '3', '2022-06-09 10:41:31', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('313', '3', '2022-06-09 15:18:46', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('314', '3', '2022-06-10 15:43:15', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('315', '3', '2022-06-10 15:52:27', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('316', '3', '2022-06-15 14:41:59', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('317', '3', '2022-06-23 16:24:09', '192.168.3.6', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('318', '3', '2022-06-23 16:41:33', '192.168.3.6', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('319', '3', '2022-06-23 16:42:50', '192.168.3.6', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('320', '3', '2022-06-23 16:42:51', '192.168.3.6', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('321', '3', '2022-06-23 16:42:52', '192.168.3.6', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('322', '3', '2022-06-23 16:42:53', '192.168.3.6', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('323', '3', '2022-06-23 16:43:07', '192.168.3.6', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('324', '3', '2022-06-23 16:44:56', '192.168.3.6', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('325', '3', '2022-06-23 16:45:42', '192.168.3.6', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('326', '3', '2022-06-23 16:50:08', '192.168.3.6', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('327', '3', '2022-06-24 15:19:04', '192.168.3.227', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('328', '3', '2022-06-24 15:25:52', '192.168.3.227', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('329', '3', '2022-06-24 15:40:29', '192.168.3.227', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('330', '3', '2022-06-25 15:13:52', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('331', '3', '2022-06-25 15:25:12', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('332', '3', '2022-06-27 16:38:37', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('333', '3', '2022-07-24 10:10:06', '192.168.3.227', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('334', '1', '2022-07-25 17:15:55', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('335', '3', '2022-07-27 09:41:32', '192.168.3.227', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('336', '1', '2022-07-28 16:56:10', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('337', '1', '2022-07-28 16:56:25', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('338', '8', '2022-08-07 14:46:00', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('339', '9', '2022-08-07 14:53:32', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('340', '9', '2022-08-07 14:53:46', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('341', '9', '2022-08-07 14:56:19', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('342', '1', '2022-08-09 10:53:55', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('343', '1', '2022-08-09 10:54:36', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('344', '1', '2022-08-09 11:00:06', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('345', '1', '2022-08-09 11:02:04', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('346', '1', '2022-08-09 15:48:14', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('347', '1', '2022-08-16 16:35:24', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('348', '1', '2022-08-17 15:03:52', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('349', '1', '2022-08-20 16:49:19', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('350', '1', '2022-08-23 14:54:06', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('351', '1', '2022-08-31 17:16:35', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('352', '3', '2022-10-14 15:31:42', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('353', '3', '2022-10-14 15:42:39', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('354', '3', '2022-10-14 15:44:08', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('355', '3', '2022-10-14 15:46:23', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('356', '3', '2022-10-14 15:46:35', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('357', '3', '2022-10-14 16:06:11', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('358', '3', '2022-10-14 16:24:08', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('359', '3', '2022-10-17 16:44:52', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('360', '3', '2022-10-17 16:49:42', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('361', '3', '2022-10-17 16:49:53', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('362', '3', '2022-10-17 17:03:10', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('363', '3', '2022-10-17 17:03:22', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('364', '3', '2022-10-17 21:00:48', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('365', '3', '2022-10-24 16:32:31', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('366', '3', '2022-10-26 16:31:17', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('367', '3', '2022-10-26 16:50:48', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('368', '3', '2022-10-26 16:52:28', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('369', '3', '2022-10-27 17:21:28', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('370', '3', '2022-10-28 10:52:22', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('371', '3', '2022-11-04 16:09:08', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('372', '3', '2022-11-08 10:27:27', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('373', '3', '2022-11-09 10:42:30', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('374', '3', '2022-11-10 15:03:08', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('375', '3', '2022-11-11 10:11:11', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('376', '3', '2022-11-14 16:33:30', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('377', '3', '2022-11-15 10:54:02', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('378', '3', '2022-11-15 15:16:35', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('379', '3', '2022-11-15 15:17:41', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('380', '3', '2022-11-15 15:17:47', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('381', '1', '2022-11-15 15:19:56', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('382', '3', '2022-11-15 15:20:12', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('383', '3', '2022-11-15 15:22:22', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('384', '3', '2022-11-16 10:39:08', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('385', '1', '2022-11-24 20:02:12', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('386', '3', '2022-11-28 15:24:02', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('387', '3', '2022-11-30 09:34:28', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('388', '3', '2022-12-05 09:43:58', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('389', '3', '2022-12-09 17:18:09', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('390', '3', '2022-12-15 14:53:39', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('391', '3', '2022-12-15 16:11:54', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('392', '3', '2022-12-20 15:55:18', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('393', '3', '2022-12-21 14:49:30', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('394', '3', '2022-12-23 09:49:50', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('395', '3', '2023-01-04 10:17:44', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('396', '3', '2023-01-04 15:28:47', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('397', '3', '2023-01-05 10:13:43', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('398', '3', '2023-01-06 09:49:23', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('399', '3', '2023-01-06 10:04:19', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('400', '3', '2023-01-06 10:07:06', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('401', '3', '2023-01-06 16:21:31', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('402', '3', '2023-01-09 16:50:30', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('403', '3', '2023-01-10 10:05:52', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('404', '3', '2023-01-10 17:09:44', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('405', '3', '2023-01-11 10:17:17', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('406', '3', '2023-01-13 09:35:37', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('407', '3', '2023-01-13 09:40:51', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('408', '3', '2023-01-31 10:46:52', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('409', '3', '2023-02-08 17:11:11', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('410', '3', '2023-02-09 15:46:41', '192.168.56.1', null, null);
INSERT INTO `ums_admin_login_log` VALUES ('411', '3', '2023-02-10 17:23:52', '192.168.56.1', null, null);

-- ----------------------------
-- Table structure for ums_admin_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_permission_relation`;
CREATE TABLE `ums_admin_permission_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `permission_id` bigint DEFAULT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='后台用户和权限关系表(除角色中定义的权限以外的加减权限)';

-- ----------------------------
-- Records of ums_admin_permission_relation
-- ----------------------------

-- ----------------------------
-- Table structure for ums_admin_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_role_relation`;
CREATE TABLE `ums_admin_role_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='后台用户和角色关系表';

-- ----------------------------
-- Records of ums_admin_role_relation
-- ----------------------------
INSERT INTO `ums_admin_role_relation` VALUES ('26', '3', '5');
INSERT INTO `ums_admin_role_relation` VALUES ('27', '6', '1');
INSERT INTO `ums_admin_role_relation` VALUES ('28', '7', '2');
INSERT INTO `ums_admin_role_relation` VALUES ('29', '1', '5');
INSERT INTO `ums_admin_role_relation` VALUES ('30', '4', '5');
INSERT INTO `ums_admin_role_relation` VALUES ('31', '8', '1');

-- ----------------------------
-- Table structure for ums_growth_change_history
-- ----------------------------
DROP TABLE IF EXISTS `ums_growth_change_history`;
CREATE TABLE `ums_growth_change_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `change_type` int DEFAULT NULL COMMENT '改变类型：0->增加；1->减少',
  `change_count` int DEFAULT NULL COMMENT '积分改变数量',
  `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人员',
  `operate_note` varchar(200) DEFAULT NULL COMMENT '操作备注',
  `source_type` int DEFAULT NULL COMMENT '积分来源：0->购物；1->管理员修改',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='成长值变化历史记录表';

-- ----------------------------
-- Records of ums_growth_change_history
-- ----------------------------
INSERT INTO `ums_growth_change_history` VALUES ('1', '1', '2018-08-29 17:16:35', '0', '1000', 'test', '测试使用', '1');

-- ----------------------------
-- Table structure for ums_integration_change_history
-- ----------------------------
DROP TABLE IF EXISTS `ums_integration_change_history`;
CREATE TABLE `ums_integration_change_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `change_type` int DEFAULT NULL COMMENT '改变类型：0->增加；1->减少',
  `change_count` int DEFAULT NULL COMMENT '积分改变数量',
  `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人员',
  `operate_note` varchar(200) DEFAULT NULL COMMENT '操作备注',
  `source_type` int DEFAULT NULL COMMENT '积分来源：0->购物；1->管理员修改',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='积分变化历史记录表';

-- ----------------------------
-- Records of ums_integration_change_history
-- ----------------------------

-- ----------------------------
-- Table structure for ums_integration_consume_setting
-- ----------------------------
DROP TABLE IF EXISTS `ums_integration_consume_setting`;
CREATE TABLE `ums_integration_consume_setting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `deduction_per_amount` int DEFAULT NULL COMMENT '每一元需要抵扣的积分数量',
  `max_percent_per_order` int DEFAULT NULL COMMENT '每笔订单最高抵用百分比',
  `use_unit` int DEFAULT NULL COMMENT '每次使用积分最小单位100',
  `coupon_status` int DEFAULT NULL COMMENT '是否可以和优惠券同用；0->不可以；1->可以',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='积分消费设置';

-- ----------------------------
-- Records of ums_integration_consume_setting
-- ----------------------------
INSERT INTO `ums_integration_consume_setting` VALUES ('1', '100', '50', '100', '1');

-- ----------------------------
-- Table structure for ums_member
-- ----------------------------
DROP TABLE IF EXISTS `ums_member`;
CREATE TABLE `ums_member` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_level_id` bigint DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(64) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(64) DEFAULT NULL COMMENT '手机号码',
  `status` int DEFAULT NULL COMMENT '帐号启用状态:0->禁用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '注册时间',
  `icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `gender` int DEFAULT NULL COMMENT '性别：0->未知；1->男；2->女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `city` varchar(64) DEFAULT NULL COMMENT '所做城市',
  `job` varchar(100) DEFAULT NULL COMMENT '职业',
  `personalized_signature` varchar(200) DEFAULT NULL COMMENT '个性签名',
  `source_type` int DEFAULT NULL COMMENT '用户来源',
  `integration` int DEFAULT NULL COMMENT '积分',
  `growth` int DEFAULT NULL COMMENT '成长值',
  `luckey_count` int DEFAULT NULL COMMENT '剩余抽奖次数',
  `history_integration` int DEFAULT NULL COMMENT '历史积分数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_username` (`username`) USING BTREE,
  UNIQUE KEY `idx_phone` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='会员表';

-- ----------------------------
-- Records of ums_member
-- ----------------------------
INSERT INTO `ums_member` VALUES ('1', '4', 'test', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'test', '18061581849', '1', '2018-08-02 10:35:44', 'https://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/icon/github_icon_03.png', '1', '2009-06-01', '上海', '学生', 'test', null, '3900', '1000', null, null);
INSERT INTO `ums_member` VALUES ('3', '4', 'windy', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'windy', '18061581848', '1', '2018-08-03 16:46:38', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ums_member` VALUES ('4', '4', 'zhengsan', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'zhengsan', '18061581847', '1', '2018-11-12 14:12:04', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ums_member` VALUES ('5', '4', 'lisi', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'lisi', '18061581841', '1', '2018-11-12 14:12:38', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ums_member` VALUES ('6', '4', 'wangwu', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'wangwu', '18061581842', '1', '2018-11-12 14:13:09', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ums_member` VALUES ('7', '4', 'lion', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'lion', '18061581845', '1', '2018-11-12 14:21:39', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ums_member` VALUES ('8', '4', 'shari', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'shari', '18061581844', '1', '2018-11-12 14:22:00', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ums_member` VALUES ('9', '4', 'aewen', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'aewen', '18061581843', '1', '2018-11-12 14:22:55', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ums_member` VALUES ('10', '4', 'guest', '$2a$10$WQiD4RzEs1iJVWU.2HVu8OdSlExJHWKmwndaw3SUfMyqfKZmXe1vq', null, '18911111111', '1', '2020-03-14 14:52:18', null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for ums_member_level
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_level`;
CREATE TABLE `ums_member_level` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `growth_point` int DEFAULT NULL,
  `default_status` int DEFAULT NULL COMMENT '是否为默认等级：0->不是；1->是',
  `free_freight_point` decimal(10,2) DEFAULT NULL COMMENT '免运费标准',
  `comment_growth_point` int DEFAULT NULL COMMENT '每次评价获取的成长值',
  `priviledge_free_freight` int DEFAULT NULL COMMENT '是否有免邮特权',
  `priviledge_sign_in` int DEFAULT NULL COMMENT '是否有签到特权',
  `priviledge_comment` int DEFAULT NULL COMMENT '是否有评论获奖励特权',
  `priviledge_promotion` int DEFAULT NULL COMMENT '是否有专享活动特权',
  `priviledge_member_price` int DEFAULT NULL COMMENT '是否有会员价格特权',
  `priviledge_birthday` int DEFAULT NULL COMMENT '是否有生日特权',
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='会员等级表';

-- ----------------------------
-- Records of ums_member_level
-- ----------------------------
INSERT INTO `ums_member_level` VALUES ('1', '黄金会员', '1000', '0', '199.00', '5', '1', '1', '1', '1', '1', '1', null);
INSERT INTO `ums_member_level` VALUES ('2', '白金会员', '5000', '0', '99.00', '10', '1', '1', '1', '1', '1', '1', null);
INSERT INTO `ums_member_level` VALUES ('3', '钻石会员', '15000', '0', '69.00', '15', '1', '1', '1', '1', '1', '1', null);
INSERT INTO `ums_member_level` VALUES ('4', '普通会员', '1', '1', '199.00', '20', '1', '1', '1', '1', '0', '0', null);

-- ----------------------------
-- Table structure for ums_member_login_log
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_login_log`;
CREATE TABLE `ums_member_login_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `login_type` int DEFAULT NULL COMMENT '登录类型：0->PC；1->android;2->ios;3->小程序',
  `province` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='会员登录记录';

-- ----------------------------
-- Records of ums_member_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for ums_member_member_tag_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_member_tag_relation`;
CREATE TABLE `ums_member_member_tag_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `tag_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户和标签关系表';

-- ----------------------------
-- Records of ums_member_member_tag_relation
-- ----------------------------

-- ----------------------------
-- Table structure for ums_member_product_category_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_product_category_relation`;
CREATE TABLE `ums_member_product_category_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `product_category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='会员与产品分类关系表（用户喜欢的分类）';

-- ----------------------------
-- Records of ums_member_product_category_relation
-- ----------------------------

-- ----------------------------
-- Table structure for ums_member_receive_address
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_receive_address`;
CREATE TABLE `ums_member_receive_address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '收货人名称',
  `phone_number` varchar(64) DEFAULT NULL,
  `default_status` int DEFAULT NULL COMMENT '是否为默认',
  `post_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `province` varchar(100) DEFAULT NULL COMMENT '省份/直辖市',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `region` varchar(100) DEFAULT NULL COMMENT '区',
  `detail_address` varchar(128) DEFAULT NULL COMMENT '详细地址(街道)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='会员收货地址表';

-- ----------------------------
-- Records of ums_member_receive_address
-- ----------------------------
INSERT INTO `ums_member_receive_address` VALUES ('1', '1', '大梨', '18033441849', '0', '518000', '广东省', '深圳市', '南山区', '科兴科学园');
INSERT INTO `ums_member_receive_address` VALUES ('3', '1', '大梨', '18033441849', '0', '518000', '广东省', '深圳市', '福田区', '清水河街道');
INSERT INTO `ums_member_receive_address` VALUES ('4', '1', '大梨', '18033441849', '1', '518000', '广东省', '深圳市', '福田区', '东晓街道');

-- ----------------------------
-- Table structure for ums_member_rule_setting
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_rule_setting`;
CREATE TABLE `ums_member_rule_setting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `continue_sign_day` int DEFAULT NULL COMMENT '连续签到天数',
  `continue_sign_point` int DEFAULT NULL COMMENT '连续签到赠送数量',
  `consume_per_point` decimal(10,2) DEFAULT NULL COMMENT '每消费多少元获取1个点',
  `low_order_amount` decimal(10,2) DEFAULT NULL COMMENT '最低获取点数的订单金额',
  `max_point_per_order` int DEFAULT NULL COMMENT '每笔订单最高获取点数',
  `type` int DEFAULT NULL COMMENT '类型：0->积分规则；1->成长值规则',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='会员积分成长规则表';

-- ----------------------------
-- Records of ums_member_rule_setting
-- ----------------------------

-- ----------------------------
-- Table structure for ums_member_statistics_info
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_statistics_info`;
CREATE TABLE `ums_member_statistics_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `consume_amount` decimal(10,2) DEFAULT NULL COMMENT '累计消费金额',
  `order_count` int DEFAULT NULL COMMENT '订单数量',
  `coupon_count` int DEFAULT NULL COMMENT '优惠券数量',
  `comment_count` int DEFAULT NULL COMMENT '评价数',
  `return_order_count` int DEFAULT NULL COMMENT '退货数量',
  `login_count` int DEFAULT NULL COMMENT '登录次数',
  `attend_count` int DEFAULT NULL COMMENT '关注数量',
  `fans_count` int DEFAULT NULL COMMENT '粉丝数量',
  `collect_product_count` int DEFAULT NULL,
  `collect_subject_count` int DEFAULT NULL,
  `collect_topic_count` int DEFAULT NULL,
  `collect_comment_count` int DEFAULT NULL,
  `invite_friend_count` int DEFAULT NULL,
  `recent_order_time` datetime DEFAULT NULL COMMENT '最后一次下订单时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='会员统计信息';

-- ----------------------------
-- Records of ums_member_statistics_info
-- ----------------------------

-- ----------------------------
-- Table structure for ums_member_tag
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_tag`;
CREATE TABLE `ums_member_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `finish_order_count` int DEFAULT NULL COMMENT '自动打标签完成订单数量',
  `finish_order_amount` decimal(10,2) DEFAULT NULL COMMENT '自动打标签完成订单金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户标签表';

-- ----------------------------
-- Records of ums_member_tag
-- ----------------------------

-- ----------------------------
-- Table structure for ums_member_task
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_task`;
CREATE TABLE `ums_member_task` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `growth` int DEFAULT NULL COMMENT '赠送成长值',
  `intergration` int DEFAULT NULL COMMENT '赠送积分',
  `type` int DEFAULT NULL COMMENT '任务类型：0->新手任务；1->日常任务',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='会员任务表';

-- ----------------------------
-- Records of ums_member_task
-- ----------------------------

-- ----------------------------
-- Table structure for ums_menu
-- ----------------------------
DROP TABLE IF EXISTS `ums_menu`;
CREATE TABLE `ums_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint DEFAULT NULL COMMENT '父级ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `title` varchar(100) DEFAULT NULL COMMENT '菜单名称',
  `level` int DEFAULT NULL COMMENT '菜单级数',
  `sort` int DEFAULT NULL COMMENT '菜单排序',
  `name` varchar(100) DEFAULT NULL COMMENT '前端名称',
  `icon` varchar(200) DEFAULT NULL COMMENT '前端图标',
  `hidden` int DEFAULT NULL COMMENT '前端隐藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='后台菜单表';

-- ----------------------------
-- Records of ums_menu
-- ----------------------------
INSERT INTO `ums_menu` VALUES ('1', '0', '2020-02-02 14:50:36', '商品', '0', '0', 'pms', 'product', '0');
INSERT INTO `ums_menu` VALUES ('2', '1', '2020-02-02 14:51:50', '商品列表', '1', '0', 'product', 'product-list', '0');
INSERT INTO `ums_menu` VALUES ('3', '1', '2020-02-02 14:52:44', '添加商品', '1', '0', 'addProduct', 'product-add', '0');
INSERT INTO `ums_menu` VALUES ('4', '1', '2020-02-02 14:53:51', '商品分类', '1', '0', 'productCate', 'product-cate', '0');
INSERT INTO `ums_menu` VALUES ('5', '1', '2020-02-02 14:54:51', '商品类型', '1', '0', 'productAttr', 'product-attr', '0');
INSERT INTO `ums_menu` VALUES ('6', '1', '2020-02-02 14:56:29', '品牌管理', '1', '0', 'brand', 'product-brand', '0');
INSERT INTO `ums_menu` VALUES ('7', '0', '2020-02-02 16:54:07', '订单', '0', '0', 'oms', 'order', '0');
INSERT INTO `ums_menu` VALUES ('8', '7', '2020-02-02 16:55:18', '订单列表', '1', '0', 'order', 'product-list', '0');
INSERT INTO `ums_menu` VALUES ('9', '7', '2020-02-02 16:56:46', '订单设置', '1', '0', 'orderSetting', 'order-setting', '0');
INSERT INTO `ums_menu` VALUES ('10', '7', '2020-02-02 16:57:39', '退货申请处理', '1', '0', 'returnApply', 'order-return', '0');
INSERT INTO `ums_menu` VALUES ('11', '7', '2020-02-02 16:59:40', '退货原因设置', '1', '0', 'returnReason', 'order-return-reason', '0');
INSERT INTO `ums_menu` VALUES ('12', '0', '2020-02-04 16:18:00', '营销', '0', '0', 'sms', 'sms', '0');
INSERT INTO `ums_menu` VALUES ('13', '12', '2020-02-04 16:19:22', '秒杀活动列表', '1', '0', 'flash', 'sms-flash', '0');
INSERT INTO `ums_menu` VALUES ('14', '12', '2020-02-04 16:20:16', '优惠券列表', '1', '0', 'coupon', 'sms-coupon', '0');
INSERT INTO `ums_menu` VALUES ('16', '12', '2020-02-07 16:22:38', '品牌推荐', '1', '0', 'homeBrand', 'product-brand', '0');
INSERT INTO `ums_menu` VALUES ('17', '12', '2020-02-07 16:23:14', '新品推荐', '1', '0', 'homeNew', 'sms-new', '0');
INSERT INTO `ums_menu` VALUES ('18', '12', '2020-02-07 16:26:38', '人气推荐', '1', '0', 'homeHot', 'sms-hot', '0');
INSERT INTO `ums_menu` VALUES ('19', '12', '2020-02-07 16:28:16', '专题推荐', '1', '0', 'homeSubject', 'sms-subject', '0');
INSERT INTO `ums_menu` VALUES ('20', '12', '2020-02-07 16:28:42', '广告列表', '1', '0', 'homeAdvertise', 'sms-ad', '0');
INSERT INTO `ums_menu` VALUES ('21', '0', '2020-02-07 16:29:13', '权限', '0', '0', 'ums', 'ums', '0');
INSERT INTO `ums_menu` VALUES ('22', '21', '2020-02-07 16:29:51', '用户列表', '1', '0', 'admin', 'ums-admin', '0');
INSERT INTO `ums_menu` VALUES ('23', '21', '2020-02-07 16:30:13', '角色列表', '1', '0', 'role', 'ums-role', '0');
INSERT INTO `ums_menu` VALUES ('24', '21', '2020-02-07 16:30:53', '菜单列表', '1', '0', 'menu', 'ums-menu', '0');
INSERT INTO `ums_menu` VALUES ('25', '21', '2020-02-07 16:31:13', '资源列表', '1', '0', 'resource', 'ums-resource', '0');

-- ----------------------------
-- Table structure for ums_permission
-- ----------------------------
DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE `ums_permission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pid` bigint DEFAULT NULL COMMENT '父级权限id',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `value` varchar(200) DEFAULT NULL COMMENT '权限值',
  `icon` varchar(500) DEFAULT NULL COMMENT '图标',
  `type` int DEFAULT NULL COMMENT '权限类型：0->目录；1->菜单；2->按钮（接口绑定权限）',
  `uri` varchar(200) DEFAULT NULL COMMENT '前端资源路径',
  `status` int DEFAULT NULL COMMENT '启用状态；0->禁用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `sort` int DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='后台用户权限表';

-- ----------------------------
-- Records of ums_permission
-- ----------------------------
INSERT INTO `ums_permission` VALUES ('1', '0', '商品', null, null, '0', null, '1', '2018-09-29 16:15:14', '0');
INSERT INTO `ums_permission` VALUES ('2', '1', '商品列表', 'pms:product:read', null, '1', '/pms/product/index', '1', '2018-09-29 16:17:01', '0');
INSERT INTO `ums_permission` VALUES ('3', '1', '添加商品', 'pms:product:create', null, '1', '/pms/product/add', '1', '2018-09-29 16:18:51', '0');
INSERT INTO `ums_permission` VALUES ('4', '1', '商品分类', 'pms:productCategory:read', null, '1', '/pms/productCate/index', '1', '2018-09-29 16:23:07', '0');
INSERT INTO `ums_permission` VALUES ('5', '1', '商品类型', 'pms:productAttribute:read', null, '1', '/pms/productAttr/index', '1', '2018-09-29 16:24:43', '0');
INSERT INTO `ums_permission` VALUES ('6', '1', '品牌管理', 'pms:brand:read', null, '1', '/pms/brand/index', '1', '2018-09-29 16:25:45', '0');
INSERT INTO `ums_permission` VALUES ('7', '2', '编辑商品', 'pms:product:update', null, '2', '/pms/product/updateProduct', '1', '2018-09-29 16:34:23', '0');
INSERT INTO `ums_permission` VALUES ('8', '2', '删除商品', 'pms:product:delete', null, '2', '/pms/product/delete', '1', '2018-09-29 16:38:33', '0');
INSERT INTO `ums_permission` VALUES ('9', '4', '添加商品分类', 'pms:productCategory:create', null, '2', '/pms/productCate/create', '1', '2018-09-29 16:43:23', '0');
INSERT INTO `ums_permission` VALUES ('10', '4', '修改商品分类', 'pms:productCategory:update', null, '2', '/pms/productCate/update', '1', '2018-09-29 16:43:55', '0');
INSERT INTO `ums_permission` VALUES ('11', '4', '删除商品分类', 'pms:productCategory:delete', null, '2', '/pms/productAttr/delete', '1', '2018-09-29 16:44:38', '0');
INSERT INTO `ums_permission` VALUES ('12', '5', '添加商品类型', 'pms:productAttribute:create', null, '2', '/pms/productAttr/create', '1', '2018-09-29 16:45:25', '0');
INSERT INTO `ums_permission` VALUES ('13', '5', '修改商品类型', 'pms:productAttribute:update', null, '2', '/pms/productAttr/update', '1', '2018-09-29 16:48:08', '0');
INSERT INTO `ums_permission` VALUES ('14', '5', '删除商品类型', 'pms:productAttribute:delete', null, '2', '/pms/productAttr/delete', '1', '2018-09-29 16:48:44', '0');
INSERT INTO `ums_permission` VALUES ('15', '6', '添加品牌', 'pms:brand:create', null, '2', '/pms/brand/add', '1', '2018-09-29 16:49:34', '0');
INSERT INTO `ums_permission` VALUES ('16', '6', '修改品牌', 'pms:brand:update', null, '2', '/pms/brand/update', '1', '2018-09-29 16:50:55', '0');
INSERT INTO `ums_permission` VALUES ('17', '6', '删除品牌', 'pms:brand:delete', null, '2', '/pms/brand/delete', '1', '2018-09-29 16:50:59', '0');
INSERT INTO `ums_permission` VALUES ('18', '0', '首页', null, null, '0', null, '1', '2018-09-29 16:51:57', '0');

-- ----------------------------
-- Table structure for ums_resource
-- ----------------------------
DROP TABLE IF EXISTS `ums_resource`;
CREATE TABLE `ums_resource` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) DEFAULT NULL COMMENT '资源URL',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `category_id` bigint DEFAULT NULL COMMENT '资源分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='后台资源表';

-- ----------------------------
-- Records of ums_resource
-- ----------------------------
INSERT INTO `ums_resource` VALUES ('1', '2020-02-04 17:04:55', '商品品牌管理', '/brand/**', null, '1');
INSERT INTO `ums_resource` VALUES ('2', '2020-02-04 17:05:35', '商品属性分类管理', '/productAttribute/category/**', null, '1');
INSERT INTO `ums_resource` VALUES ('3', '2020-02-04 17:06:13', '商品属性管理', '/productAttribute/**', null, '1');
INSERT INTO `ums_resource` VALUES ('4', '2020-02-04 17:07:15', '商品分类管理', '/productCategory/**', null, '1');
INSERT INTO `ums_resource` VALUES ('5', '2020-02-04 17:09:16', '商品管理', '/product/**', null, '1');
INSERT INTO `ums_resource` VALUES ('6', '2020-02-04 17:09:53', '商品库存管理', '/sku/**', null, '1');
INSERT INTO `ums_resource` VALUES ('8', '2020-02-05 14:43:37', '订单管理', '/order/**', '', '2');
INSERT INTO `ums_resource` VALUES ('9', '2020-02-05 14:44:22', ' 订单退货申请管理', '/returnApply/**', '', '2');
INSERT INTO `ums_resource` VALUES ('10', '2020-02-05 14:45:08', '退货原因管理', '/returnReason/**', '', '2');
INSERT INTO `ums_resource` VALUES ('11', '2020-02-05 14:45:43', '订单设置管理', '/orderSetting/**', '', '2');
INSERT INTO `ums_resource` VALUES ('12', '2020-02-05 14:46:23', '收货地址管理', '/companyAddress/**', '', '2');
INSERT INTO `ums_resource` VALUES ('13', '2020-02-07 16:37:22', '优惠券管理', '/coupon/**', '', '3');
INSERT INTO `ums_resource` VALUES ('14', '2020-02-07 16:37:59', '优惠券领取记录管理', '/couponHistory/**', '', '3');
INSERT INTO `ums_resource` VALUES ('15', '2020-02-07 16:38:28', '限时购活动管理', '/flash/**', '', '3');
INSERT INTO `ums_resource` VALUES ('16', '2020-02-07 16:38:59', '限时购商品关系管理', '/flashProductRelation/**', '', '3');
INSERT INTO `ums_resource` VALUES ('17', '2020-02-07 16:39:22', '限时购场次管理', '/flashSession/**', '', '3');
INSERT INTO `ums_resource` VALUES ('18', '2020-02-07 16:40:07', '首页轮播广告管理', '/home/advertise/**', '', '3');
INSERT INTO `ums_resource` VALUES ('19', '2020-02-07 16:40:34', '首页品牌管理', '/home/brand/**', '', '3');
INSERT INTO `ums_resource` VALUES ('20', '2020-02-07 16:41:06', '首页新品管理', '/home/newProduct/**', '', '3');
INSERT INTO `ums_resource` VALUES ('21', '2020-02-07 16:42:16', '首页人气推荐管理', '/home/recommendProduct/**', '', '3');
INSERT INTO `ums_resource` VALUES ('22', '2020-02-07 16:42:48', '首页专题推荐管理', '/home/recommendSubject/**', '', '3');
INSERT INTO `ums_resource` VALUES ('23', '2020-02-07 16:44:56', ' 商品优选管理', '/prefrenceArea/**', '', '5');
INSERT INTO `ums_resource` VALUES ('24', '2020-02-07 16:45:39', '商品专题管理', '/subject/**', '', '5');
INSERT INTO `ums_resource` VALUES ('25', '2020-02-07 16:47:34', '后台用户管理', '/admin/**', '', '4');
INSERT INTO `ums_resource` VALUES ('26', '2020-02-07 16:48:24', '后台用户角色管理', '/role/**', '', '4');
INSERT INTO `ums_resource` VALUES ('27', '2020-02-07 16:48:48', '后台菜单管理', '/menu/**', '', '4');
INSERT INTO `ums_resource` VALUES ('28', '2020-02-07 16:49:18', '后台资源分类管理', '/resourceCategory/**', '', '4');
INSERT INTO `ums_resource` VALUES ('29', '2020-02-07 16:49:45', '后台资源管理', '/resource/**', '', '4');
INSERT INTO `ums_resource` VALUES ('30', '2020-09-19 15:47:57', '会员等级管理', '/memberLevel/**', '', '7');
INSERT INTO `ums_resource` VALUES ('31', '2020-09-19 15:51:29', '获取登录用户信息', '/admin/info', '用户登录必配', '4');
INSERT INTO `ums_resource` VALUES ('32', '2020-09-19 15:53:34', '用户登出', '/admin/logout', '用户登出必配', '4');

-- ----------------------------
-- Table structure for ums_resource_category
-- ----------------------------
DROP TABLE IF EXISTS `ums_resource_category`;
CREATE TABLE `ums_resource_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `sort` int DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='资源分类表';

-- ----------------------------
-- Records of ums_resource_category
-- ----------------------------
INSERT INTO `ums_resource_category` VALUES ('1', '2020-02-05 10:21:44', '商品模块', '0');
INSERT INTO `ums_resource_category` VALUES ('2', '2020-02-05 10:22:34', '订单模块', '0');
INSERT INTO `ums_resource_category` VALUES ('3', '2020-02-05 10:22:48', '营销模块', '0');
INSERT INTO `ums_resource_category` VALUES ('4', '2020-02-05 10:23:04', '权限模块', '0');
INSERT INTO `ums_resource_category` VALUES ('5', '2020-02-07 16:34:27', '内容模块', '0');
INSERT INTO `ums_resource_category` VALUES ('7', '2020-09-19 15:49:08', '其他模块', '0');

-- ----------------------------
-- Table structure for ums_role
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `admin_count` int DEFAULT NULL COMMENT '后台用户数量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int DEFAULT '1' COMMENT '启用状态：0->禁用；1->启用',
  `sort` int DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='后台用户角色表';

-- ----------------------------
-- Records of ums_role
-- ----------------------------
INSERT INTO `ums_role` VALUES ('1', '商品管理员', '只能查看及操作商品', '0', '2020-02-03 16:50:37', '1', '0');
INSERT INTO `ums_role` VALUES ('2', '订单管理员', '只能查看及操作订单', '0', '2018-09-30 15:53:45', '1', '0');
INSERT INTO `ums_role` VALUES ('5', '超级管理员', '拥有所有查看和操作功能', '0', '2020-02-02 15:11:05', '1', '0');

-- ----------------------------
-- Table structure for ums_role_menu_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_menu_relation`;
CREATE TABLE `ums_role_menu_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='后台角色菜单关系表';

-- ----------------------------
-- Records of ums_role_menu_relation
-- ----------------------------
INSERT INTO `ums_role_menu_relation` VALUES ('53', '2', '7');
INSERT INTO `ums_role_menu_relation` VALUES ('54', '2', '8');
INSERT INTO `ums_role_menu_relation` VALUES ('55', '2', '9');
INSERT INTO `ums_role_menu_relation` VALUES ('56', '2', '10');
INSERT INTO `ums_role_menu_relation` VALUES ('57', '2', '11');
INSERT INTO `ums_role_menu_relation` VALUES ('72', '5', '1');
INSERT INTO `ums_role_menu_relation` VALUES ('73', '5', '2');
INSERT INTO `ums_role_menu_relation` VALUES ('74', '5', '3');
INSERT INTO `ums_role_menu_relation` VALUES ('75', '5', '4');
INSERT INTO `ums_role_menu_relation` VALUES ('76', '5', '5');
INSERT INTO `ums_role_menu_relation` VALUES ('77', '5', '6');
INSERT INTO `ums_role_menu_relation` VALUES ('78', '5', '7');
INSERT INTO `ums_role_menu_relation` VALUES ('79', '5', '8');
INSERT INTO `ums_role_menu_relation` VALUES ('80', '5', '9');
INSERT INTO `ums_role_menu_relation` VALUES ('81', '5', '10');
INSERT INTO `ums_role_menu_relation` VALUES ('82', '5', '11');
INSERT INTO `ums_role_menu_relation` VALUES ('83', '5', '12');
INSERT INTO `ums_role_menu_relation` VALUES ('84', '5', '13');
INSERT INTO `ums_role_menu_relation` VALUES ('85', '5', '14');
INSERT INTO `ums_role_menu_relation` VALUES ('86', '5', '16');
INSERT INTO `ums_role_menu_relation` VALUES ('87', '5', '17');
INSERT INTO `ums_role_menu_relation` VALUES ('88', '5', '18');
INSERT INTO `ums_role_menu_relation` VALUES ('89', '5', '19');
INSERT INTO `ums_role_menu_relation` VALUES ('90', '5', '20');
INSERT INTO `ums_role_menu_relation` VALUES ('91', '5', '21');
INSERT INTO `ums_role_menu_relation` VALUES ('92', '5', '22');
INSERT INTO `ums_role_menu_relation` VALUES ('93', '5', '23');
INSERT INTO `ums_role_menu_relation` VALUES ('94', '5', '24');
INSERT INTO `ums_role_menu_relation` VALUES ('95', '5', '25');
INSERT INTO `ums_role_menu_relation` VALUES ('121', '1', '1');
INSERT INTO `ums_role_menu_relation` VALUES ('122', '1', '2');
INSERT INTO `ums_role_menu_relation` VALUES ('123', '1', '3');
INSERT INTO `ums_role_menu_relation` VALUES ('124', '1', '4');
INSERT INTO `ums_role_menu_relation` VALUES ('125', '1', '5');
INSERT INTO `ums_role_menu_relation` VALUES ('126', '1', '6');

-- ----------------------------
-- Table structure for ums_role_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_permission_relation`;
CREATE TABLE `ums_role_permission_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL,
  `permission_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='后台用户角色和权限关系表';

-- ----------------------------
-- Records of ums_role_permission_relation
-- ----------------------------
INSERT INTO `ums_role_permission_relation` VALUES ('1', '1', '1');
INSERT INTO `ums_role_permission_relation` VALUES ('2', '1', '2');
INSERT INTO `ums_role_permission_relation` VALUES ('3', '1', '3');
INSERT INTO `ums_role_permission_relation` VALUES ('4', '1', '7');
INSERT INTO `ums_role_permission_relation` VALUES ('5', '1', '8');
INSERT INTO `ums_role_permission_relation` VALUES ('6', '2', '4');
INSERT INTO `ums_role_permission_relation` VALUES ('7', '2', '9');
INSERT INTO `ums_role_permission_relation` VALUES ('8', '2', '10');
INSERT INTO `ums_role_permission_relation` VALUES ('9', '2', '11');
INSERT INTO `ums_role_permission_relation` VALUES ('10', '3', '5');
INSERT INTO `ums_role_permission_relation` VALUES ('11', '3', '12');
INSERT INTO `ums_role_permission_relation` VALUES ('12', '3', '13');
INSERT INTO `ums_role_permission_relation` VALUES ('13', '3', '14');
INSERT INTO `ums_role_permission_relation` VALUES ('14', '4', '6');
INSERT INTO `ums_role_permission_relation` VALUES ('15', '4', '15');
INSERT INTO `ums_role_permission_relation` VALUES ('16', '4', '16');
INSERT INTO `ums_role_permission_relation` VALUES ('17', '4', '17');

-- ----------------------------
-- Table structure for ums_role_resource_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_resource_relation`;
CREATE TABLE `ums_role_resource_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL COMMENT '角色ID',
  `resource_id` bigint DEFAULT NULL COMMENT '资源ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='后台角色资源关系表';

-- ----------------------------
-- Records of ums_role_resource_relation
-- ----------------------------
INSERT INTO `ums_role_resource_relation` VALUES ('194', '5', '1');
INSERT INTO `ums_role_resource_relation` VALUES ('195', '5', '2');
INSERT INTO `ums_role_resource_relation` VALUES ('196', '5', '3');
INSERT INTO `ums_role_resource_relation` VALUES ('197', '5', '4');
INSERT INTO `ums_role_resource_relation` VALUES ('198', '5', '5');
INSERT INTO `ums_role_resource_relation` VALUES ('199', '5', '6');
INSERT INTO `ums_role_resource_relation` VALUES ('200', '5', '8');
INSERT INTO `ums_role_resource_relation` VALUES ('201', '5', '9');
INSERT INTO `ums_role_resource_relation` VALUES ('202', '5', '10');
INSERT INTO `ums_role_resource_relation` VALUES ('203', '5', '11');
INSERT INTO `ums_role_resource_relation` VALUES ('204', '5', '12');
INSERT INTO `ums_role_resource_relation` VALUES ('205', '5', '13');
INSERT INTO `ums_role_resource_relation` VALUES ('206', '5', '14');
INSERT INTO `ums_role_resource_relation` VALUES ('207', '5', '15');
INSERT INTO `ums_role_resource_relation` VALUES ('208', '5', '16');
INSERT INTO `ums_role_resource_relation` VALUES ('209', '5', '17');
INSERT INTO `ums_role_resource_relation` VALUES ('210', '5', '18');
INSERT INTO `ums_role_resource_relation` VALUES ('211', '5', '19');
INSERT INTO `ums_role_resource_relation` VALUES ('212', '5', '20');
INSERT INTO `ums_role_resource_relation` VALUES ('213', '5', '21');
INSERT INTO `ums_role_resource_relation` VALUES ('214', '5', '22');
INSERT INTO `ums_role_resource_relation` VALUES ('215', '5', '23');
INSERT INTO `ums_role_resource_relation` VALUES ('216', '5', '24');
INSERT INTO `ums_role_resource_relation` VALUES ('217', '5', '25');
INSERT INTO `ums_role_resource_relation` VALUES ('218', '5', '26');
INSERT INTO `ums_role_resource_relation` VALUES ('219', '5', '27');
INSERT INTO `ums_role_resource_relation` VALUES ('220', '5', '28');
INSERT INTO `ums_role_resource_relation` VALUES ('221', '5', '29');
INSERT INTO `ums_role_resource_relation` VALUES ('222', '5', '30');
INSERT INTO `ums_role_resource_relation` VALUES ('232', '2', '8');
INSERT INTO `ums_role_resource_relation` VALUES ('233', '2', '9');
INSERT INTO `ums_role_resource_relation` VALUES ('234', '2', '10');
INSERT INTO `ums_role_resource_relation` VALUES ('235', '2', '11');
INSERT INTO `ums_role_resource_relation` VALUES ('236', '2', '12');
INSERT INTO `ums_role_resource_relation` VALUES ('237', '2', '31');
INSERT INTO `ums_role_resource_relation` VALUES ('238', '2', '32');
INSERT INTO `ums_role_resource_relation` VALUES ('239', '1', '1');
INSERT INTO `ums_role_resource_relation` VALUES ('240', '1', '2');
INSERT INTO `ums_role_resource_relation` VALUES ('241', '1', '3');
INSERT INTO `ums_role_resource_relation` VALUES ('242', '1', '4');
INSERT INTO `ums_role_resource_relation` VALUES ('243', '1', '5');
INSERT INTO `ums_role_resource_relation` VALUES ('244', '1', '6');
INSERT INTO `ums_role_resource_relation` VALUES ('245', '1', '23');
INSERT INTO `ums_role_resource_relation` VALUES ('246', '1', '24');
INSERT INTO `ums_role_resource_relation` VALUES ('247', '1', '31');
INSERT INTO `ums_role_resource_relation` VALUES ('248', '1', '32');
