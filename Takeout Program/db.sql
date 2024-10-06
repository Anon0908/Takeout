/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost:3306
 Source Schema         : waimaifuwu

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 03/10/2024 15:28:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间 show3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收货地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 2, '收货人1', '17703786901', '地址1', 1, '2022-03-19 16:10:58', '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `address` VALUES (2, 1, '收货人2', '17703786902', '地址2', 2, '2022-03-19 16:10:58', '2022-03-19 16:43:42', '2022-03-19 16:10:58');
INSERT INTO `address` VALUES (3, 2, '收货人3', '17703786903', '地址3', 1, '2022-03-19 16:10:58', '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `address` VALUES (4, 3, '收货人4', '17703786904', '地址4', 1, '2022-03-19 16:10:58', '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `address` VALUES (5, 1, '收货人5', '17703786905', '地址5', 1, '2022-03-19 16:10:58', '2022-03-19 16:43:36', '2022-03-19 16:10:58');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) NULL DEFAULT NULL COMMENT '所属用户',
  `waimai_id` int(11) NULL DEFAULT NULL COMMENT '外卖',
  `buy_number` int(11) NULL DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (5, 1, 5, 1, '2024-10-03 15:14:45', NULL, '2024-10-03 15:14:45');
INSERT INTO `cart` VALUES (6, 2, 3, 1, '2024-10-03 15:16:11', NULL, '2024-10-03 15:16:11');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, '轮播图1', 'http://localhost:8080/waimaifuwu/upload/config1.jpg');
INSERT INTO `config` VALUES (2, '轮播图2', 'http://localhost:8080/waimaifuwu/upload/config2.jpg');
INSERT INTO `config` VALUES (3, '轮播图3', 'http://localhost:8080/waimaifuwu/upload/config3.jpg');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) NULL DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) NULL DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-19 16:07:44');
INSERT INTO `dictionary` VALUES (2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-19 16:07:44');
INSERT INTO `dictionary` VALUES (3, 'huiyuandengji_types', '会员等级类型', 1, '青铜会员', NULL, '0.98', '2022-03-19 16:07:44');
INSERT INTO `dictionary` VALUES (4, 'huiyuandengji_types', '会员等级类型', 2, '白银会员', NULL, '0.96', '2022-03-19 16:07:44');
INSERT INTO `dictionary` VALUES (5, 'huiyuandengji_types', '会员等级类型', 3, '黄金会员', NULL, '0.94', '2022-03-19 16:07:44');
INSERT INTO `dictionary` VALUES (6, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (7, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (8, 'waimai_types', '外卖类型', 1, '包子粥类', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (9, 'waimai_types', '外卖类型', 2, '面条米粉', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (10, 'waimai_types', '外卖类型', 3, '炸鸡炸串', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (11, 'waimai_types', '外卖类型', 4, '甜点饮料', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (12, 'waimai_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (13, 'waimai_order_types', '订单类型', 1, '已评价', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (14, 'waimai_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (15, 'waimai_order_types', '订单类型', 3, '已支付', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (16, 'waimai_order_types', '订单类型', 4, '已发货', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (17, 'waimai_order_types', '订单类型', 5, '已收货', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (18, 'waimai_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (19, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (20, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (21, 'gonggao_types', '公告类型', 1, '通知', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (22, 'gonggao_types', '公告类型', 2, '热点', NULL, NULL, '2022-03-19 16:07:45');

-- ----------------------------
-- Table structure for gonggao
-- ----------------------------
DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE `gonggao`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公告详情 ',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gonggao
-- ----------------------------
INSERT INTO `gonggao` VALUES (8, '外卖上新！', 'http://localhost:8080/waimaifuwu/upload/1727939237466.jpg', 1, '2024-10-03 15:08:28', '<p>新增多款外卖，欢迎大家点餐！</p>', '2024-10-03 15:08:28');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 6, 'admin', 'users', '管理员', 'n9cgjg9q7pdf0zpygn9keww5k2kxqpuf', '2022-03-19 16:15:04', '2024-10-03 16:25:01');
INSERT INTO `token` VALUES (2, 1, 'a1', 'yonghu', '用户', 'f8fvq33gabvn7dq4p7s347oc043nnal5', '2022-03-19 16:17:15', '2024-10-03 16:15:18');
INSERT INTO `token` VALUES (3, 2, 'a2', 'yonghu', '用户', 'h1bfkmlksi9cig3k93vnz7k9i6i9i3mz', '2024-10-03 15:15:53', '2024-10-03 16:27:34');
INSERT INTO `token` VALUES (4, 3, 'a3', 'yonghu', '用户', '6z1z3alfn6eg6fosqkqw5y4m25jq84yw', '2024-10-03 15:16:37', '2024-10-03 16:27:42');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (6, 'admin', 'admin', '管理员', '2022-05-02 14:51:13');

-- ----------------------------
-- Table structure for waimai
-- ----------------------------
DROP TABLE IF EXISTS `waimai`;
CREATE TABLE `waimai`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `waimai_uuid_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外卖编号  Search111 ',
  `waimai_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外卖名称  Search111 ',
  `waimai_photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外卖照片',
  `waimai_types` int(11) NULL DEFAULT NULL COMMENT '外卖类型 Search111',
  `waimai_kucun_number` int(11) NULL DEFAULT NULL COMMENT '外卖库存',
  `waimai_price` int(11) NULL DEFAULT NULL COMMENT '购买获得积分 ',
  `waimai_old_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '外卖原价 ',
  `waimai_new_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '现价',
  `waimai_clicknum` int(11) NULL DEFAULT NULL COMMENT '点击次数 ',
  `waimai_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '菜品介绍 ',
  `shangxia_types` int(11) NULL DEFAULT NULL COMMENT '是否上架 ',
  `waimai_delete` int(11) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '外卖' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waimai
-- ----------------------------
INSERT INTO `waimai` VALUES (1, '16476774584284', '外卖名称1', 'http://localhost:8080/waimaifuwu/upload/waimai1.jpg', 3, 101, 246, 609.91, 483.97, 34, '菜品介绍1', 1, 2, '2022-03-19 16:10:58');
INSERT INTO `waimai` VALUES (2, '16476774584284', '意识肉酱面', 'http://localhost:8080/waimaifuwu/upload/waimai2.jpg', 2, 102, 478, 20.00, 18.00, 165, '<p>豪赤</p>', 1, 1, '2022-03-19 16:10:58');
INSERT INTO `waimai` VALUES (3, '164767745842811', '提拉米苏', 'http://localhost:8080/waimaifuwu/upload/1727940145137.jpg', 4, 5, 482, 20.00, 15.00, 439, '<p>经典美味</p>', 1, 1, '2022-03-19 16:10:58');
INSERT INTO `waimai` VALUES (4, '164767745842818', '小笼包', 'http://localhost:8080/waimaifuwu/upload/1727940054011.jpg', 1, 999, 412, 12.00, 8.00, 54, '<p>香喷喷！</p>', 1, 1, '2022-03-19 16:10:58');
INSERT INTO `waimai` VALUES (5, '16476774584286', '一整只炸鸡', 'http://localhost:8080/waimaifuwu/upload/1727940035881.jpg', 3, 99, 77, 25.00, 20.00, 49, '<p>好吃有味</p>', 1, 1, '2022-03-19 16:10:58');

-- ----------------------------
-- Table structure for waimai_collection
-- ----------------------------
DROP TABLE IF EXISTS `waimai_collection`;
CREATE TABLE `waimai_collection`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `waimai_id` int(11) NULL DEFAULT NULL COMMENT '外卖',
  `yonghu_id` int(11) NULL DEFAULT NULL COMMENT '用户',
  `waimai_collection_types` int(11) NULL DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '外卖收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waimai_collection
-- ----------------------------
INSERT INTO `waimai_collection` VALUES (7, 5, 1, 1, '2024-10-03 15:14:43', '2024-10-03 15:14:43');
INSERT INTO `waimai_collection` VALUES (8, 4, 1, 1, '2024-10-03 15:14:50', '2024-10-03 15:14:50');
INSERT INTO `waimai_collection` VALUES (9, 3, 2, 1, '2024-10-03 15:16:13', '2024-10-03 15:16:13');
INSERT INTO `waimai_collection` VALUES (10, 2, 2, 1, '2024-10-03 15:16:20', '2024-10-03 15:16:20');

-- ----------------------------
-- Table structure for waimai_commentback
-- ----------------------------
DROP TABLE IF EXISTS `waimai_commentback`;
CREATE TABLE `waimai_commentback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `waimai_id` int(11) NULL DEFAULT NULL COMMENT '外卖',
  `yonghu_id` int(11) NULL DEFAULT NULL COMMENT '用户',
  `waimai_commentback_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '评价内容',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '外卖评价' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waimai_commentback
-- ----------------------------
INSERT INTO `waimai_commentback` VALUES (7, 4, 3, '好吃！！！', '2024-10-03 15:24:31', '赞', '2024-10-03 15:25:17', '2024-10-03 15:24:31');

-- ----------------------------
-- Table structure for waimai_order
-- ----------------------------
DROP TABLE IF EXISTS `waimai_order`;
CREATE TABLE `waimai_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `waimai_order_uuid_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) NULL DEFAULT NULL COMMENT '收货地址 ',
  `waimai_id` int(11) NULL DEFAULT NULL COMMENT '外卖',
  `yonghu_id` int(11) NULL DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) NULL DEFAULT NULL COMMENT '购买数量',
  `waimai_order_true_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '实付价格',
  `waimai_order_courier_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '送餐人姓名',
  `waimai_order_courier_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '送餐人电话',
  `waimai_order_types` int(11) NULL DEFAULT NULL COMMENT '订单类型',
  `waimai_order_payment_types` int(11) NULL DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '外卖订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waimai_order
-- ----------------------------
INSERT INTO `waimai_order` VALUES (7, '1727939694024', 2, 4, 1, 1, 182.72, '大牛', '19357088820', 4, 1, '2024-10-03 15:14:54', '2024-10-03 15:14:54');
INSERT INTO `waimai_order` VALUES (8, '1727939788743', 3, 5, 2, 1, 192.83, '二蛋子', '19357088820', 5, 1, '2024-10-03 15:16:29', '2024-10-03 15:16:29');
INSERT INTO `waimai_order` VALUES (9, '1727939804171', 4, 4, 3, 1, 182.72, '二蛋子', '19357088820', 1, 1, '2024-10-03 15:16:44', '2024-10-03 15:16:44');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) NULL DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10, 2) NULL DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10, 2) NULL DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int(11) NULL DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, 'a1', '123456', '张三', '17703786901', '410224199610232001', 'http://localhost:8080/waimaifuwu/upload/yonghu1.jpg', 1, '1@qq.com', 9307.71, 4307.62, 3733.41, 1, '2022-03-19 16:10:58');
INSERT INTO `yonghu` VALUES (2, 'a2', '123456', '李四', '17703786902', '410224199610232002', 'http://localhost:8080/waimaifuwu/upload/yonghu2.jpg', 2, '2@qq.com', 415.14, 636.05, 349.54, 1, '2022-03-19 16:10:58');
INSERT INTO `yonghu` VALUES (3, 'a3', '123456', '王五', '17703786903', '410224199610232003', 'http://localhost:8080/waimaifuwu/upload/yonghu3.jpg', 2, '3@qq.com', 323.24, 1013.66, 465.00, 1, '2022-03-19 16:10:58');

SET FOREIGN_KEY_CHECKS = 1;
