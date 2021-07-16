/*
 Navicat Premium Data Transfer

 Source Server         : 孔钦阿里云
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : rm-wz96ki4xk34976ywfyo.mysql.rds.aliyuncs.com:3306
 Source Schema         : shuiguo

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 15/07/2021 19:45:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `address_id` mediumint unsigned NOT NULL COMMENT '地址ID',
  `member_id` mediumint unsigned NOT NULL COMMENT '会员ID',
  `true_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '会员姓名',
  `area_id` mediumint unsigned NOT NULL COMMENT '地区ID',
  `city_id` mediumint(0) DEFAULT NULL COMMENT '市级ID',
  `province_id` mediumint(0) DEFAULT 0 COMMENT '省级id',
  `area_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '地区内容',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `tel_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '座机电话',
  `mob_phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机电话',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '1默认收货地址',
  PRIMARY KEY (`address_id`) USING BTREE,
  INDEX `member_id`(`member_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '买家地址信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 57, '毛兴峰', 2920, 275, 18, '湖南 长沙市 芙蓉区', '职院街长沙治安管理支队宿舍 南栋206', NULL, '15869836000', '0');
INSERT INTO `address` VALUES (2, 57, '小毛毛', 1620, 121, 7, '吉林 长春市 二道区', '就在那嘎达', NULL, '15526489554', '0');
INSERT INTO `address` VALUES (3, 58, '邓希同学', 2134, 175, 11, '浙江 杭州市 上城区', '阿里巴巴大厦1607', NULL, '15526464358', '1');
INSERT INTO `address` VALUES (4, 66, '003号', 1647, 124, 7, '吉林 辽源市 龙山区', '那嘎达', NULL, '15869836968', '1');

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`  (
  `area_id` int unsigned NOT NULL COMMENT '索引ID',
  `area_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地区名称',
  `parent_id` int unsigned NOT NULL COMMENT '地区父ID',
  `area_sort` tinyint unsigned NOT NULL COMMENT '排序',
  `area_deep` tinyint unsigned NOT NULL COMMENT '地区深度，从1开始',
  `area_region` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '大区名称',
  PRIMARY KEY (`area_id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45074 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地区表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES (1, '北京', 0, 0, 1, '华北');
INSERT INTO `area` VALUES (2, '天津', 0, 0, 1, '华北');
INSERT INTO `area` VALUES (3, '河北', 0, 0, 1, '华北');
INSERT INTO `area` VALUES (4, '山西', 0, 0, 1, '华北');
INSERT INTO `area` VALUES (5, '内蒙古', 0, 0, 1, '华北');
INSERT INTO `area` VALUES (6, '辽宁', 0, 0, 1, '东北');
INSERT INTO `area` VALUES (7, '吉林', 0, 0, 1, '东北');
INSERT INTO `area` VALUES (8, '黑龙江', 0, 0, 1, '东北');
INSERT INTO `area` VALUES (9, '上海', 0, 0, 1, '华东');
INSERT INTO `area` VALUES (10, '江苏', 0, 0, 1, '华东');
INSERT INTO `area` VALUES (11, '浙江', 0, 0, 1, '华东');
INSERT INTO `area` VALUES (12, '安徽', 0, 0, 1, '华东');
INSERT INTO `area` VALUES (13, '福建', 0, 0, 1, '华南');
INSERT INTO `area` VALUES (14, '江西', 0, 0, 1, '华东');
INSERT INTO `area` VALUES (15, '山东', 0, 0, 1, '华东');
INSERT INTO `area` VALUES (16, '河南', 0, 0, 1, '华中');
INSERT INTO `area` VALUES (17, '湖北', 0, 0, 1, '华中');
INSERT INTO `area` VALUES (18, '湖南', 0, 0, 1, '华中');
INSERT INTO `area` VALUES (19, '广东', 0, 0, 1, '华南');
INSERT INTO `area` VALUES (20, '广西', 0, 0, 1, '华南');
INSERT INTO `area` VALUES (21, '海南', 0, 0, 1, '华南');
INSERT INTO `area` VALUES (22, '重庆', 0, 0, 1, '西南');
INSERT INTO `area` VALUES (23, '四川', 0, 0, 1, '西南');
INSERT INTO `area` VALUES (24, '贵州', 0, 0, 1, '西南');
INSERT INTO `area` VALUES (25, '云南', 0, 0, 1, '西南');
INSERT INTO `area` VALUES (26, '西藏', 0, 0, 1, '西南');
INSERT INTO `area` VALUES (27, '陕西', 0, 0, 1, '西北');
INSERT INTO `area` VALUES (28, '甘肃', 0, 0, 1, '西北');
INSERT INTO `area` VALUES (29, '青海', 0, 0, 1, '西北');
INSERT INTO `area` VALUES (30, '宁夏', 0, 0, 1, '西北');
INSERT INTO `area` VALUES (31, '新疆', 0, 0, 1, '西北');
INSERT INTO `area` VALUES (32, '台湾', 0, 0, 1, '港澳台');
INSERT INTO `area` VALUES (33, '香港', 0, 0, 1, '港澳台');
INSERT INTO `area` VALUES (34, '澳门', 0, 0, 1, '港澳台');
INSERT INTO `area` VALUES (35, '海外', 0, 0, 1, '海外');
INSERT INTO `area` VALUES (36, '北京市', 1, 0, 2, NULL);
INSERT INTO `area` VALUES (37, '东城区', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (38, '西城区', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (39, '上海市', 9, 0, 2, NULL);
INSERT INTO `area` VALUES (40, '天津市', 2, 0, 2, NULL);
INSERT INTO `area` VALUES (41, '朝阳区', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (42, '丰台区', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (43, '石景山区', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (44, '海淀区', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (45, '门头沟区', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (46, '房山区', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (47, '通州区', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (48, '顺义区', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (49, '昌平区', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (50, '大兴区', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (51, '怀柔区', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (52, '平谷区', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (53, '密云县', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (54, '延庆县', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (55, '和平区', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (56, '河东区', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (57, '河西区', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (58, '南开区', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (59, '河北区', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (60, '红桥区', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (61, '塘沽区', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (62, '重庆市', 22, 0, 2, NULL);
INSERT INTO `area` VALUES (64, '东丽区', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (65, '西青区', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (66, '津南区', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (67, '北辰区', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (68, '武清区', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (69, '宝坻区', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (70, '宁河县', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (71, '静海县', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (72, '蓟县', 40, 0, 3, NULL);
INSERT INTO `area` VALUES (73, '石家庄市', 3, 0, 2, NULL);
INSERT INTO `area` VALUES (74, '唐山市', 3, 0, 2, NULL);
INSERT INTO `area` VALUES (75, '秦皇岛市', 3, 0, 2, NULL);
INSERT INTO `area` VALUES (76, '邯郸市', 3, 0, 2, NULL);
INSERT INTO `area` VALUES (77, '邢台市', 3, 0, 2, NULL);
INSERT INTO `area` VALUES (78, '保定市', 3, 0, 2, NULL);
INSERT INTO `area` VALUES (79, '张家口市', 3, 0, 2, NULL);
INSERT INTO `area` VALUES (80, '承德市', 3, 0, 2, NULL);
INSERT INTO `area` VALUES (81, '衡水市', 3, 0, 2, NULL);
INSERT INTO `area` VALUES (82, '廊坊市', 3, 0, 2, NULL);
INSERT INTO `area` VALUES (83, '沧州市', 3, 0, 2, NULL);
INSERT INTO `area` VALUES (84, '太原市', 4, 0, 2, NULL);
INSERT INTO `area` VALUES (85, '大同市', 4, 0, 2, NULL);
INSERT INTO `area` VALUES (86, '阳泉市', 4, 0, 2, NULL);
INSERT INTO `area` VALUES (87, '长治市', 4, 0, 2, NULL);
INSERT INTO `area` VALUES (88, '晋城市', 4, 0, 2, NULL);
INSERT INTO `area` VALUES (89, '朔州市', 4, 0, 2, NULL);
INSERT INTO `area` VALUES (90, '晋中市', 4, 0, 2, NULL);
INSERT INTO `area` VALUES (91, '运城市', 4, 0, 2, NULL);
INSERT INTO `area` VALUES (92, '忻州市', 4, 0, 2, NULL);
INSERT INTO `area` VALUES (93, '临汾市', 4, 0, 2, NULL);
INSERT INTO `area` VALUES (94, '吕梁市', 4, 0, 2, NULL);
INSERT INTO `area` VALUES (95, '呼和浩特市', 5, 0, 2, NULL);
INSERT INTO `area` VALUES (96, '包头市', 5, 0, 2, NULL);
INSERT INTO `area` VALUES (97, '乌海市', 5, 0, 2, NULL);
INSERT INTO `area` VALUES (98, '赤峰市', 5, 0, 2, NULL);
INSERT INTO `area` VALUES (99, '通辽市', 5, 0, 2, NULL);
INSERT INTO `area` VALUES (100, '鄂尔多斯市', 5, 0, 2, NULL);
INSERT INTO `area` VALUES (101, '呼伦贝尔市', 5, 0, 2, NULL);
INSERT INTO `area` VALUES (102, '巴彦淖尔市', 5, 0, 2, NULL);
INSERT INTO `area` VALUES (103, '乌兰察布市', 5, 0, 2, NULL);
INSERT INTO `area` VALUES (104, '兴安盟', 5, 0, 2, NULL);
INSERT INTO `area` VALUES (105, '锡林郭勒盟', 5, 0, 2, NULL);
INSERT INTO `area` VALUES (106, '阿拉善盟', 5, 0, 2, NULL);
INSERT INTO `area` VALUES (107, '沈阳市', 6, 0, 2, NULL);
INSERT INTO `area` VALUES (108, '大连市', 6, 0, 2, NULL);
INSERT INTO `area` VALUES (109, '鞍山市', 6, 0, 2, NULL);
INSERT INTO `area` VALUES (110, '抚顺市', 6, 0, 2, NULL);
INSERT INTO `area` VALUES (111, '本溪市', 6, 0, 2, NULL);
INSERT INTO `area` VALUES (112, '丹东市', 6, 0, 2, NULL);
INSERT INTO `area` VALUES (113, '锦州市', 6, 0, 2, NULL);
INSERT INTO `area` VALUES (114, '营口市', 6, 0, 2, NULL);
INSERT INTO `area` VALUES (115, '阜新市', 6, 0, 2, NULL);
INSERT INTO `area` VALUES (116, '辽阳市', 6, 0, 2, NULL);
INSERT INTO `area` VALUES (117, '盘锦市', 6, 0, 2, NULL);
INSERT INTO `area` VALUES (118, '铁岭市', 6, 0, 2, NULL);
INSERT INTO `area` VALUES (119, '朝阳市', 6, 0, 2, NULL);
INSERT INTO `area` VALUES (120, '葫芦岛市', 6, 0, 2, NULL);
INSERT INTO `area` VALUES (121, '长春市', 7, 0, 2, NULL);
INSERT INTO `area` VALUES (122, '吉林市', 7, 0, 2, NULL);
INSERT INTO `area` VALUES (123, '四平市', 7, 0, 2, NULL);
INSERT INTO `area` VALUES (124, '辽源市', 7, 0, 2, NULL);
INSERT INTO `area` VALUES (125, '通化市', 7, 0, 2, NULL);
INSERT INTO `area` VALUES (126, '白山市', 7, 0, 2, NULL);
INSERT INTO `area` VALUES (127, '松原市', 7, 0, 2, NULL);
INSERT INTO `area` VALUES (128, '白城市', 7, 0, 2, NULL);
INSERT INTO `area` VALUES (129, '延边朝鲜族自治州', 7, 0, 2, NULL);
INSERT INTO `area` VALUES (130, '哈尔滨市', 8, 0, 2, NULL);
INSERT INTO `area` VALUES (131, '齐齐哈尔市', 8, 0, 2, NULL);
INSERT INTO `area` VALUES (132, '鸡西市', 8, 0, 2, NULL);
INSERT INTO `area` VALUES (133, '鹤岗市', 8, 0, 2, NULL);
INSERT INTO `area` VALUES (134, '双鸭山市', 8, 0, 2, NULL);
INSERT INTO `area` VALUES (135, '大庆市', 8, 0, 2, NULL);
INSERT INTO `area` VALUES (136, '伊春市', 8, 0, 2, NULL);
INSERT INTO `area` VALUES (137, '佳木斯市', 8, 0, 2, NULL);
INSERT INTO `area` VALUES (138, '七台河市', 8, 0, 2, NULL);
INSERT INTO `area` VALUES (139, '牡丹江市', 8, 0, 2, NULL);
INSERT INTO `area` VALUES (140, '黑河市', 8, 0, 2, NULL);
INSERT INTO `area` VALUES (141, '绥化市', 8, 0, 2, NULL);
INSERT INTO `area` VALUES (142, '大兴安岭地区', 8, 0, 2, NULL);
INSERT INTO `area` VALUES (143, '黄浦区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (144, '卢湾区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (145, '徐汇区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (146, '长宁区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (147, '静安区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (148, '普陀区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (149, '闸北区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (150, '虹口区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (151, '杨浦区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (152, '闵行区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (153, '宝山区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (154, '嘉定区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (155, '浦东新区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (156, '金山区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (157, '松江区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (158, '青浦区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (159, '南汇区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (160, '奉贤区', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (161, '崇明县', 39, 0, 3, NULL);
INSERT INTO `area` VALUES (162, '南京市', 10, 0, 2, NULL);
INSERT INTO `area` VALUES (163, '无锡市', 10, 0, 2, NULL);
INSERT INTO `area` VALUES (164, '徐州市', 10, 0, 2, NULL);
INSERT INTO `area` VALUES (165, '常州市', 10, 0, 2, NULL);
INSERT INTO `area` VALUES (166, '苏州市', 10, 0, 2, NULL);
INSERT INTO `area` VALUES (167, '南通市', 10, 0, 2, NULL);
INSERT INTO `area` VALUES (168, '连云港市', 10, 0, 2, NULL);
INSERT INTO `area` VALUES (169, '淮安市', 10, 0, 2, NULL);
INSERT INTO `area` VALUES (170, '盐城市', 10, 0, 2, NULL);
INSERT INTO `area` VALUES (171, '扬州市', 10, 0, 2, NULL);
INSERT INTO `area` VALUES (172, '镇江市', 10, 0, 2, NULL);
INSERT INTO `area` VALUES (173, '泰州市', 10, 0, 2, NULL);
INSERT INTO `area` VALUES (174, '宿迁市', 10, 0, 2, NULL);
INSERT INTO `area` VALUES (175, '杭州市', 11, 0, 2, NULL);
INSERT INTO `area` VALUES (176, '宁波市', 11, 0, 2, NULL);
INSERT INTO `area` VALUES (177, '温州市', 11, 0, 2, NULL);
INSERT INTO `area` VALUES (178, '嘉兴市', 11, 0, 2, NULL);
INSERT INTO `area` VALUES (179, '湖州市', 11, 0, 2, NULL);
INSERT INTO `area` VALUES (180, '绍兴市', 11, 0, 2, NULL);
INSERT INTO `area` VALUES (181, '舟山市', 11, 0, 2, NULL);
INSERT INTO `area` VALUES (182, '衢州市', 11, 0, 2, NULL);
INSERT INTO `area` VALUES (183, '金华市', 11, 0, 2, NULL);
INSERT INTO `area` VALUES (184, '台州市', 11, 0, 2, NULL);
INSERT INTO `area` VALUES (185, '丽水市', 11, 0, 2, NULL);
INSERT INTO `area` VALUES (186, '合肥市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (187, '芜湖市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (188, '蚌埠市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (189, '淮南市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (190, '马鞍山市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (191, '淮北市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (192, '铜陵市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (193, '安庆市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (194, '黄山市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (195, '滁州市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (196, '阜阳市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (197, '宿州市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (198, '巢湖市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (199, '六安市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (200, '亳州市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (201, '池州市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (202, '宣城市', 12, 0, 2, NULL);
INSERT INTO `area` VALUES (203, '福州市', 13, 0, 2, NULL);
INSERT INTO `area` VALUES (204, '厦门市', 13, 0, 2, NULL);
INSERT INTO `area` VALUES (205, '莆田市', 13, 0, 2, NULL);
INSERT INTO `area` VALUES (206, '三明市', 13, 0, 2, NULL);
INSERT INTO `area` VALUES (207, '泉州市', 13, 0, 2, NULL);
INSERT INTO `area` VALUES (208, '漳州市', 13, 0, 2, NULL);
INSERT INTO `area` VALUES (209, '南平市', 13, 0, 2, NULL);
INSERT INTO `area` VALUES (210, '龙岩市', 13, 0, 2, NULL);
INSERT INTO `area` VALUES (211, '宁德市', 13, 0, 2, NULL);
INSERT INTO `area` VALUES (212, '南昌市', 14, 0, 2, NULL);
INSERT INTO `area` VALUES (213, '景德镇市', 14, 0, 2, NULL);
INSERT INTO `area` VALUES (214, '萍乡市', 14, 0, 2, NULL);
INSERT INTO `area` VALUES (215, '九江市', 14, 0, 2, NULL);
INSERT INTO `area` VALUES (216, '新余市', 14, 0, 2, NULL);
INSERT INTO `area` VALUES (217, '鹰潭市', 14, 0, 2, NULL);
INSERT INTO `area` VALUES (218, '赣州市', 14, 0, 2, NULL);
INSERT INTO `area` VALUES (219, '吉安市', 14, 0, 2, NULL);
INSERT INTO `area` VALUES (220, '宜春市', 14, 0, 2, NULL);
INSERT INTO `area` VALUES (221, '抚州市', 14, 0, 2, NULL);
INSERT INTO `area` VALUES (222, '上饶市', 14, 0, 2, NULL);
INSERT INTO `area` VALUES (223, '济南市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (224, '青岛市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (225, '淄博市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (226, '枣庄市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (227, '东营市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (228, '烟台市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (229, '潍坊市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (230, '济宁市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (231, '泰安市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (232, '威海市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (233, '日照市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (234, '莱芜市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (235, '临沂市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (236, '德州市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (237, '聊城市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (238, '滨州市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (239, '菏泽市', 15, 0, 2, NULL);
INSERT INTO `area` VALUES (240, '郑州市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (241, '开封市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (242, '洛阳市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (243, '平顶山市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (244, '安阳市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (245, '鹤壁市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (246, '新乡市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (247, '焦作市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (248, '濮阳市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (249, '许昌市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (250, '漯河市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (251, '三门峡市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (252, '南阳市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (253, '商丘市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (254, '信阳市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (255, '周口市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (256, '驻马店市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (257, '济源市', 16, 0, 2, NULL);
INSERT INTO `area` VALUES (258, '武汉市', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (259, '黄石市', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (260, '十堰市', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (261, '宜昌市', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (262, '襄樊市', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (263, '鄂州市', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (264, '荆门市', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (265, '孝感市', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (266, '荆州市', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (267, '黄冈市', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (268, '咸宁市', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (269, '随州市', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (270, '恩施土家族苗族自治州', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (271, '仙桃市', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (272, '潜江市', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (273, '天门市', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (274, '神农架林区', 17, 0, 2, NULL);
INSERT INTO `area` VALUES (275, '长沙市', 18, 0, 2, NULL);
INSERT INTO `area` VALUES (276, '株洲市', 18, 0, 2, NULL);
INSERT INTO `area` VALUES (277, '湘潭市', 18, 0, 2, NULL);
INSERT INTO `area` VALUES (278, '衡阳市', 18, 0, 2, NULL);
INSERT INTO `area` VALUES (279, '邵阳市', 18, 0, 2, NULL);
INSERT INTO `area` VALUES (280, '岳阳市', 18, 0, 2, NULL);
INSERT INTO `area` VALUES (281, '常德市', 18, 0, 2, NULL);
INSERT INTO `area` VALUES (282, '张家界市', 18, 0, 2, NULL);
INSERT INTO `area` VALUES (283, '益阳市', 18, 0, 2, NULL);
INSERT INTO `area` VALUES (284, '郴州市', 18, 0, 2, NULL);
INSERT INTO `area` VALUES (285, '永州市', 18, 0, 2, NULL);
INSERT INTO `area` VALUES (286, '怀化市', 18, 0, 2, NULL);
INSERT INTO `area` VALUES (287, '娄底市', 18, 0, 2, NULL);
INSERT INTO `area` VALUES (288, '湘西土家族苗族自治州', 18, 0, 2, NULL);
INSERT INTO `area` VALUES (289, '广州市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (290, '韶关市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (291, '深圳市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (292, '珠海市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (293, '汕头市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (294, '佛山市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (295, '江门市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (296, '湛江市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (297, '茂名市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (298, '肇庆市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (299, '惠州市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (300, '梅州市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (301, '汕尾市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (302, '河源市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (303, '阳江市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (304, '清远市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (305, '东莞市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (306, '中山市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (307, '潮州市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (308, '揭阳市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (309, '云浮市', 19, 0, 2, NULL);
INSERT INTO `area` VALUES (310, '南宁市', 20, 0, 2, NULL);
INSERT INTO `area` VALUES (311, '柳州市', 20, 0, 2, NULL);
INSERT INTO `area` VALUES (312, '桂林市', 20, 0, 2, NULL);
INSERT INTO `area` VALUES (313, '梧州市', 20, 0, 2, NULL);
INSERT INTO `area` VALUES (314, '北海市', 20, 0, 2, NULL);
INSERT INTO `area` VALUES (315, '防城港市', 20, 0, 2, NULL);
INSERT INTO `area` VALUES (316, '钦州市', 20, 0, 2, NULL);
INSERT INTO `area` VALUES (317, '贵港市', 20, 0, 2, NULL);
INSERT INTO `area` VALUES (318, '玉林市', 20, 0, 2, NULL);
INSERT INTO `area` VALUES (319, '百色市', 20, 0, 2, NULL);
INSERT INTO `area` VALUES (320, '贺州市', 20, 0, 2, NULL);
INSERT INTO `area` VALUES (321, '河池市', 20, 0, 2, NULL);
INSERT INTO `area` VALUES (322, '来宾市', 20, 0, 2, NULL);
INSERT INTO `area` VALUES (323, '崇左市', 20, 0, 2, NULL);
INSERT INTO `area` VALUES (324, '海口市', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (325, '三亚市', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (326, '五指山市', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (327, '琼海市', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (328, '儋州市', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (329, '文昌市', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (330, '万宁市', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (331, '东方市', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (332, '定安县', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (333, '屯昌县', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (334, '澄迈县', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (335, '临高县', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (336, '白沙黎族自治县', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (337, '昌江黎族自治县', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (338, '乐东黎族自治县', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (339, '陵水黎族自治县', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (340, '保亭黎族苗族自治县', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (341, '琼中黎族苗族自治县', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (342, '西沙群岛', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (343, '南沙群岛', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (344, '中沙群岛的岛礁及其海域', 21, 0, 2, NULL);
INSERT INTO `area` VALUES (345, '万州区', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (346, '涪陵区', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (347, '渝中区', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (348, '大渡口区', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (349, '江北区', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (350, '沙坪坝区', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (351, '九龙坡区', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (352, '南岸区', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (353, '北碚区', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (354, '双桥区', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (355, '万盛区', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (356, '渝北区', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (357, '巴南区', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (358, '黔江区', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (359, '长寿区', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (360, '綦江县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (361, '潼南县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (362, '铜梁县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (363, '大足县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (364, '荣昌县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (365, '璧山县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (366, '梁平县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (367, '城口县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (368, '丰都县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (369, '垫江县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (370, '武隆县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (371, '忠县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (372, '开县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (373, '云阳县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (374, '奉节县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (375, '巫山县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (376, '巫溪县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (377, '石柱土家族自治县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (378, '秀山土家族苗族自治县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (379, '酉阳土家族苗族自治县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (380, '彭水苗族土家族自治县', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (381, '江津市', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (382, '合川市', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (383, '永川市', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (384, '南川市', 62, 0, 3, NULL);
INSERT INTO `area` VALUES (385, '成都市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (386, '自贡市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (387, '攀枝花市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (388, '泸州市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (389, '德阳市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (390, '绵阳市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (391, '广元市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (392, '遂宁市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (393, '内江市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (394, '乐山市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (395, '南充市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (396, '眉山市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (397, '宜宾市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (398, '广安市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (399, '达州市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (400, '雅安市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (401, '巴中市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (402, '资阳市', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (403, '阿坝藏族羌族自治州', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (404, '甘孜藏族自治州', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (405, '凉山彝族自治州', 23, 0, 2, NULL);
INSERT INTO `area` VALUES (406, '贵阳市', 24, 0, 2, NULL);
INSERT INTO `area` VALUES (407, '六盘水市', 24, 0, 2, NULL);
INSERT INTO `area` VALUES (408, '遵义市', 24, 0, 2, NULL);
INSERT INTO `area` VALUES (409, '安顺市', 24, 0, 2, NULL);
INSERT INTO `area` VALUES (410, '铜仁地区', 24, 0, 2, NULL);
INSERT INTO `area` VALUES (411, '黔西南布依族苗族自治州', 24, 0, 2, NULL);
INSERT INTO `area` VALUES (412, '毕节地区', 24, 0, 2, NULL);
INSERT INTO `area` VALUES (413, '黔东南苗族侗族自治州', 24, 0, 2, NULL);
INSERT INTO `area` VALUES (414, '黔南布依族苗族自治州', 24, 0, 2, NULL);
INSERT INTO `area` VALUES (415, '昆明市', 25, 0, 2, NULL);
INSERT INTO `area` VALUES (416, '曲靖市', 25, 0, 2, NULL);
INSERT INTO `area` VALUES (417, '玉溪市', 25, 0, 2, NULL);
INSERT INTO `area` VALUES (418, '保山市', 25, 0, 2, NULL);
INSERT INTO `area` VALUES (419, '昭通市', 25, 0, 2, NULL);
INSERT INTO `area` VALUES (420, '丽江市', 25, 0, 2, NULL);
INSERT INTO `area` VALUES (421, '普洱市', 25, 0, 2, '');
INSERT INTO `area` VALUES (422, '临沧市', 25, 0, 2, NULL);
INSERT INTO `area` VALUES (423, '楚雄彝族自治州', 25, 0, 2, NULL);
INSERT INTO `area` VALUES (424, '红河哈尼族彝族自治州', 25, 0, 2, NULL);
INSERT INTO `area` VALUES (425, '文山壮族苗族自治州', 25, 0, 2, NULL);
INSERT INTO `area` VALUES (426, '西双版纳傣族自治州', 25, 0, 2, NULL);
INSERT INTO `area` VALUES (427, '大理白族自治州', 25, 0, 2, NULL);
INSERT INTO `area` VALUES (428, '德宏傣族景颇族自治州', 25, 0, 2, NULL);
INSERT INTO `area` VALUES (429, '怒江傈僳族自治州', 25, 0, 2, NULL);
INSERT INTO `area` VALUES (430, '迪庆藏族自治州', 25, 0, 2, NULL);
INSERT INTO `area` VALUES (431, '拉萨市', 26, 0, 2, NULL);
INSERT INTO `area` VALUES (432, '昌都地区', 26, 0, 2, NULL);
INSERT INTO `area` VALUES (433, '山南地区', 26, 0, 2, NULL);
INSERT INTO `area` VALUES (434, '日喀则地区', 26, 0, 2, NULL);
INSERT INTO `area` VALUES (435, '那曲地区', 26, 0, 2, NULL);
INSERT INTO `area` VALUES (436, '阿里地区', 26, 0, 2, NULL);
INSERT INTO `area` VALUES (437, '林芝地区', 26, 0, 2, NULL);
INSERT INTO `area` VALUES (438, '西安市', 27, 0, 2, NULL);
INSERT INTO `area` VALUES (439, '铜川市', 27, 0, 2, NULL);
INSERT INTO `area` VALUES (440, '宝鸡市', 27, 0, 2, NULL);
INSERT INTO `area` VALUES (441, '咸阳市', 27, 0, 2, NULL);
INSERT INTO `area` VALUES (442, '渭南市', 27, 0, 2, NULL);
INSERT INTO `area` VALUES (443, '延安市', 27, 0, 2, NULL);
INSERT INTO `area` VALUES (444, '汉中市', 27, 0, 2, NULL);
INSERT INTO `area` VALUES (445, '榆林市', 27, 0, 2, NULL);
INSERT INTO `area` VALUES (446, '安康市', 27, 0, 2, NULL);
INSERT INTO `area` VALUES (447, '商洛市', 27, 0, 2, NULL);
INSERT INTO `area` VALUES (448, '兰州市', 28, 0, 2, NULL);
INSERT INTO `area` VALUES (449, '嘉峪关市', 28, 0, 2, NULL);
INSERT INTO `area` VALUES (450, '金昌市', 28, 0, 2, NULL);
INSERT INTO `area` VALUES (451, '白银市', 28, 0, 2, NULL);
INSERT INTO `area` VALUES (452, '天水市', 28, 0, 2, NULL);
INSERT INTO `area` VALUES (453, '武威市', 28, 0, 2, NULL);
INSERT INTO `area` VALUES (454, '张掖市', 28, 0, 2, NULL);
INSERT INTO `area` VALUES (455, '平凉市', 28, 0, 2, NULL);
INSERT INTO `area` VALUES (456, '酒泉市', 28, 0, 2, NULL);
INSERT INTO `area` VALUES (457, '庆阳市', 28, 0, 2, NULL);
INSERT INTO `area` VALUES (458, '定西市', 28, 0, 2, NULL);
INSERT INTO `area` VALUES (459, '陇南市', 28, 0, 2, NULL);
INSERT INTO `area` VALUES (460, '临夏回族自治州', 28, 0, 2, NULL);
INSERT INTO `area` VALUES (461, '甘南藏族自治州', 28, 0, 2, NULL);
INSERT INTO `area` VALUES (462, '西宁市', 29, 0, 2, NULL);
INSERT INTO `area` VALUES (463, '海东地区', 29, 0, 2, NULL);
INSERT INTO `area` VALUES (464, '海北藏族自治州', 29, 0, 2, NULL);
INSERT INTO `area` VALUES (465, '黄南藏族自治州', 29, 0, 2, NULL);
INSERT INTO `area` VALUES (466, '海南藏族自治州', 29, 0, 2, NULL);
INSERT INTO `area` VALUES (467, '果洛藏族自治州', 29, 0, 2, NULL);
INSERT INTO `area` VALUES (468, '玉树藏族自治州', 29, 0, 2, NULL);
INSERT INTO `area` VALUES (469, '海西蒙古族藏族自治州', 29, 0, 2, NULL);
INSERT INTO `area` VALUES (470, '银川市', 30, 0, 2, NULL);
INSERT INTO `area` VALUES (471, '石嘴山市', 30, 0, 2, NULL);
INSERT INTO `area` VALUES (472, '吴忠市', 30, 0, 2, NULL);
INSERT INTO `area` VALUES (473, '固原市', 30, 0, 2, NULL);
INSERT INTO `area` VALUES (474, '中卫市', 30, 0, 2, NULL);
INSERT INTO `area` VALUES (475, '乌鲁木齐市', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (476, '克拉玛依市', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (477, '吐鲁番地区', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (478, '哈密地区', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (479, '昌吉回族自治州', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (480, '博尔塔拉蒙古自治州', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (481, '巴音郭楞蒙古自治州', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (482, '阿克苏地区', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (483, '克孜勒苏柯尔克孜自治州', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (484, '喀什地区', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (485, '和田地区', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (486, '伊犁哈萨克自治州', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (487, '塔城地区', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (488, '阿勒泰地区', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (489, '石河子市', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (490, '阿拉尔市', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (491, '图木舒克市', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (492, '五家渠市', 31, 0, 2, NULL);
INSERT INTO `area` VALUES (493, '台北市', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (494, '高雄市', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (495, '基隆市', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (496, '台中市', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (497, '台南市', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (498, '新竹市', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (499, '嘉义市', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (500, '台北县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (501, '宜兰县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (502, '桃园县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (503, '新竹县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (504, '苗栗县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (505, '台中县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (506, '彰化县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (507, '南投县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (508, '云林县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (509, '嘉义县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (510, '台南县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (511, '高雄县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (512, '屏东县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (513, '澎湖县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (514, '台东县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (515, '花莲县', 32, 0, 2, NULL);
INSERT INTO `area` VALUES (516, '中西区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (517, '东区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (518, '九龙城区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (519, '观塘区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (520, '南区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (521, '深水埗区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (522, '黄大仙区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (523, '湾仔区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (524, '油尖旺区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (525, '离岛区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (526, '葵青区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (527, '北区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (528, '西贡区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (529, '沙田区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (530, '屯门区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (531, '大埔区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (532, '荃湾区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (533, '元朗区', 33, 0, 2, NULL);
INSERT INTO `area` VALUES (534, '澳门特别行政区', 34, 0, 2, NULL);
INSERT INTO `area` VALUES (535, '美国', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (536, '加拿大', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (537, '澳大利亚', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (538, '新西兰', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (539, '英国', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (540, '法国', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (541, '德国', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (542, '捷克', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (543, '荷兰', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (544, '瑞士', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (545, '希腊', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (546, '挪威', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (547, '瑞典', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (548, '丹麦', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (549, '芬兰', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (550, '爱尔兰', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (551, '奥地利', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (552, '意大利', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (553, '乌克兰', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (554, '俄罗斯', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (555, '西班牙', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (556, '韩国', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (557, '新加坡', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (558, '马来西亚', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (559, '印度', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (560, '泰国', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (561, '日本', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (562, '巴西', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (563, '阿根廷', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (564, '南非', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (565, '埃及', 45055, 0, 3, NULL);
INSERT INTO `area` VALUES (566, '其他', 36, 0, 3, NULL);
INSERT INTO `area` VALUES (1126, '井陉县', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1127, '井陉矿区', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1128, '元氏县', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1129, '平山县', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1130, '新乐市', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1131, '新华区', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1132, '无极县', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1133, '晋州市', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1134, '栾城县', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1135, '桥东区', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1136, '桥西区', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1137, '正定县', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1138, '深泽县', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1139, '灵寿县', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1140, '藁城市', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1141, '行唐县', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1142, '裕华区', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1143, '赞皇县', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1144, '赵县', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1145, '辛集市', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1146, '长安区', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1147, '高邑县', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1148, '鹿泉市', 73, 0, 3, NULL);
INSERT INTO `area` VALUES (1149, '丰南区', 74, 0, 3, NULL);
INSERT INTO `area` VALUES (1150, '丰润区', 74, 0, 3, NULL);
INSERT INTO `area` VALUES (1151, '乐亭县', 74, 0, 3, NULL);
INSERT INTO `area` VALUES (1152, '古冶区', 74, 0, 3, NULL);
INSERT INTO `area` VALUES (1153, '唐海县', 74, 0, 3, NULL);
INSERT INTO `area` VALUES (1154, '开平区', 74, 0, 3, NULL);
INSERT INTO `area` VALUES (1155, '滦南县', 74, 0, 3, NULL);
INSERT INTO `area` VALUES (1156, '滦县', 74, 0, 3, NULL);
INSERT INTO `area` VALUES (1157, '玉田县', 74, 0, 3, NULL);
INSERT INTO `area` VALUES (1158, '路北区', 74, 0, 3, NULL);
INSERT INTO `area` VALUES (1159, '路南区', 74, 0, 3, NULL);
INSERT INTO `area` VALUES (1160, '迁安市', 74, 0, 3, NULL);
INSERT INTO `area` VALUES (1161, '迁西县', 74, 0, 3, NULL);
INSERT INTO `area` VALUES (1162, '遵化市', 74, 0, 3, NULL);
INSERT INTO `area` VALUES (1163, '北戴河区', 75, 0, 3, NULL);
INSERT INTO `area` VALUES (1164, '卢龙县', 75, 0, 3, NULL);
INSERT INTO `area` VALUES (1165, '山海关区', 75, 0, 3, NULL);
INSERT INTO `area` VALUES (1166, '抚宁县', 75, 0, 3, NULL);
INSERT INTO `area` VALUES (1167, '昌黎县', 75, 0, 3, NULL);
INSERT INTO `area` VALUES (1168, '海港区', 75, 0, 3, NULL);
INSERT INTO `area` VALUES (1169, '青龙满族自治县', 75, 0, 3, NULL);
INSERT INTO `area` VALUES (1170, '丛台区', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1171, '临漳县', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1172, '复兴区', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1173, '大名县', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1174, '峰峰矿区', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1175, '广平县', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1176, '成安县', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1177, '曲周县', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1178, '武安市', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1179, '永年县', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1180, '涉县', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1181, '磁县', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1182, '肥乡县', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1183, '邯山区', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1184, '邯郸县', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1185, '邱县', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1186, '馆陶县', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1187, '魏县', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1188, '鸡泽县', 76, 0, 3, NULL);
INSERT INTO `area` VALUES (1189, '临城县', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1190, '临西县', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1191, '任县', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1192, '内丘县', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1193, '南和县', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1194, '南宫市', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1195, '威县', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1196, '宁晋县', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1197, '巨鹿县', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1198, '平乡县', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1199, '广宗县', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1200, '新河县', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1201, '柏乡县', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1202, '桥东区', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1203, '桥西区', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1204, '沙河市', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1205, '清河县', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1206, '邢台县', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1207, '隆尧县', 77, 0, 3, NULL);
INSERT INTO `area` VALUES (1210, '博野县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1211, '唐县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1212, '安国市', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1213, '安新县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1214, '定兴县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1215, '定州市', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1216, '容城县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1217, '徐水县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1218, '新市区', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1219, '易县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1220, '曲阳县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1221, '望都县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1222, '涞水县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1223, '涞源县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1224, '涿州市', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1225, '清苑区', 78, 0, 3, '');
INSERT INTO `area` VALUES (1226, '满城区', 78, 0, 3, '');
INSERT INTO `area` VALUES (1227, '蠡县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1228, '阜平县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1229, '雄县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1230, '顺平县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1231, '高碑店市', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1232, '高阳县', 78, 0, 3, NULL);
INSERT INTO `area` VALUES (1233, '万全县', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1234, '下花园区', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1235, '宣化区', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1236, '宣化县', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1237, '尚义县', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1238, '崇礼县', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1239, '康保县', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1240, '张北县', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1241, '怀安县', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1242, '怀来县', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1243, '桥东区', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1244, '桥西区', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1245, '沽源县', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1246, '涿鹿县', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1247, '蔚县', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1248, '赤城县', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1249, '阳原县', 79, 0, 3, NULL);
INSERT INTO `area` VALUES (1250, '丰宁满族自治县', 80, 0, 3, NULL);
INSERT INTO `area` VALUES (1251, '兴隆县', 80, 0, 3, NULL);
INSERT INTO `area` VALUES (1252, '双桥区', 80, 0, 3, NULL);
INSERT INTO `area` VALUES (1253, '双滦区', 80, 0, 3, NULL);
INSERT INTO `area` VALUES (1254, '围场满族蒙古族自治县', 80, 0, 3, NULL);
INSERT INTO `area` VALUES (1255, '宽城满族自治县', 80, 0, 3, NULL);
INSERT INTO `area` VALUES (1256, '平泉县', 80, 0, 3, NULL);
INSERT INTO `area` VALUES (1257, '承德县', 80, 0, 3, NULL);
INSERT INTO `area` VALUES (1258, '滦平县', 80, 0, 3, NULL);
INSERT INTO `area` VALUES (1259, '隆化县', 80, 0, 3, NULL);
INSERT INTO `area` VALUES (1260, '鹰手营子矿区', 80, 0, 3, NULL);
INSERT INTO `area` VALUES (1261, '冀州市', 81, 0, 3, NULL);
INSERT INTO `area` VALUES (1262, '安平县', 81, 0, 3, NULL);
INSERT INTO `area` VALUES (1263, '故城县', 81, 0, 3, NULL);
INSERT INTO `area` VALUES (1264, '景县', 81, 0, 3, NULL);
INSERT INTO `area` VALUES (1265, '枣强县', 81, 0, 3, NULL);
INSERT INTO `area` VALUES (1266, '桃城区', 81, 0, 3, NULL);
INSERT INTO `area` VALUES (1267, '武强县', 81, 0, 3, NULL);
INSERT INTO `area` VALUES (1268, '武邑县', 81, 0, 3, NULL);
INSERT INTO `area` VALUES (1269, '深州市', 81, 0, 3, NULL);
INSERT INTO `area` VALUES (1270, '阜城县', 81, 0, 3, NULL);
INSERT INTO `area` VALUES (1271, '饶阳县', 81, 0, 3, NULL);
INSERT INTO `area` VALUES (1272, '三河市', 82, 0, 3, NULL);
INSERT INTO `area` VALUES (1273, '固安县', 82, 0, 3, NULL);
INSERT INTO `area` VALUES (1274, '大厂回族自治县', 82, 0, 3, NULL);
INSERT INTO `area` VALUES (1275, '大城县', 82, 0, 3, NULL);
INSERT INTO `area` VALUES (1276, '安次区', 82, 0, 3, NULL);
INSERT INTO `area` VALUES (1277, '广阳区', 82, 0, 3, NULL);
INSERT INTO `area` VALUES (1278, '文安县', 82, 0, 3, NULL);
INSERT INTO `area` VALUES (1279, '永清县', 82, 0, 3, NULL);
INSERT INTO `area` VALUES (1280, '霸州市', 82, 0, 3, NULL);
INSERT INTO `area` VALUES (1281, '香河县', 82, 0, 3, NULL);
INSERT INTO `area` VALUES (1282, '东光县', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1283, '任丘市', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1284, '南皮县', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1285, '吴桥县', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1286, '孟村回族自治县', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1287, '新华区', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1288, '沧县', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1289, '河间市', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1290, '泊头市', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1291, '海兴县', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1292, '献县', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1293, '盐山县', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1294, '肃宁县', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1295, '运河区', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1296, '青县', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1297, '黄骅市', 83, 0, 3, NULL);
INSERT INTO `area` VALUES (1298, '万柏林区', 84, 0, 3, NULL);
INSERT INTO `area` VALUES (1299, '古交市', 84, 0, 3, NULL);
INSERT INTO `area` VALUES (1300, '娄烦县', 84, 0, 3, NULL);
INSERT INTO `area` VALUES (1301, '小店区', 84, 0, 3, NULL);
INSERT INTO `area` VALUES (1302, '尖草坪区', 84, 0, 3, NULL);
INSERT INTO `area` VALUES (1303, '晋源区', 84, 0, 3, NULL);
INSERT INTO `area` VALUES (1304, '杏花岭区', 84, 0, 3, NULL);
INSERT INTO `area` VALUES (1305, '清徐县', 84, 0, 3, NULL);
INSERT INTO `area` VALUES (1306, '迎泽区', 84, 0, 3, NULL);
INSERT INTO `area` VALUES (1307, '阳曲县', 84, 0, 3, NULL);
INSERT INTO `area` VALUES (1308, '南郊区', 85, 0, 3, NULL);
INSERT INTO `area` VALUES (1309, '城区', 85, 0, 3, NULL);
INSERT INTO `area` VALUES (1310, '大同县', 85, 0, 3, NULL);
INSERT INTO `area` VALUES (1311, '天镇县', 85, 0, 3, NULL);
INSERT INTO `area` VALUES (1312, '左云县', 85, 0, 3, NULL);
INSERT INTO `area` VALUES (1313, '广灵县', 85, 0, 3, NULL);
INSERT INTO `area` VALUES (1314, '新荣区', 85, 0, 3, NULL);
INSERT INTO `area` VALUES (1315, '浑源县', 85, 0, 3, NULL);
INSERT INTO `area` VALUES (1316, '灵丘县', 85, 0, 3, NULL);
INSERT INTO `area` VALUES (1317, '矿区', 85, 0, 3, NULL);
INSERT INTO `area` VALUES (1318, '阳高县', 85, 0, 3, NULL);
INSERT INTO `area` VALUES (1319, '城区', 86, 0, 3, NULL);
INSERT INTO `area` VALUES (1320, '平定县', 86, 0, 3, NULL);
INSERT INTO `area` VALUES (1321, '盂县', 86, 0, 3, NULL);
INSERT INTO `area` VALUES (1322, '矿区', 86, 0, 3, NULL);
INSERT INTO `area` VALUES (1323, '郊区', 86, 0, 3, NULL);
INSERT INTO `area` VALUES (1324, '城区', 87, 0, 3, NULL);
INSERT INTO `area` VALUES (1325, '壶关县', 87, 0, 3, NULL);
INSERT INTO `area` VALUES (1326, '屯留县', 87, 0, 3, NULL);
INSERT INTO `area` VALUES (1327, '平顺县', 87, 0, 3, NULL);
INSERT INTO `area` VALUES (1328, '武乡县', 87, 0, 3, NULL);
INSERT INTO `area` VALUES (1329, '沁县', 87, 0, 3, NULL);
INSERT INTO `area` VALUES (1330, '沁源县', 87, 0, 3, NULL);
INSERT INTO `area` VALUES (1331, '潞城市', 87, 0, 3, NULL);
INSERT INTO `area` VALUES (1332, '襄垣县', 87, 0, 3, NULL);
INSERT INTO `area` VALUES (1333, '郊区', 87, 0, 3, NULL);
INSERT INTO `area` VALUES (1334, '长子县', 87, 0, 3, NULL);
INSERT INTO `area` VALUES (1335, '长治县', 87, 0, 3, NULL);
INSERT INTO `area` VALUES (1336, '黎城县', 87, 0, 3, NULL);
INSERT INTO `area` VALUES (1337, '城区', 88, 0, 3, NULL);
INSERT INTO `area` VALUES (1338, '沁水县', 88, 0, 3, NULL);
INSERT INTO `area` VALUES (1339, '泽州县', 88, 0, 3, NULL);
INSERT INTO `area` VALUES (1340, '阳城县', 88, 0, 3, NULL);
INSERT INTO `area` VALUES (1341, '陵川县', 88, 0, 3, NULL);
INSERT INTO `area` VALUES (1342, '高平市', 88, 0, 3, NULL);
INSERT INTO `area` VALUES (1343, '右玉县', 89, 0, 3, NULL);
INSERT INTO `area` VALUES (1344, '山阴县', 89, 0, 3, NULL);
INSERT INTO `area` VALUES (1345, '平鲁区', 89, 0, 3, NULL);
INSERT INTO `area` VALUES (1346, '应县', 89, 0, 3, NULL);
INSERT INTO `area` VALUES (1347, '怀仁县', 89, 0, 3, NULL);
INSERT INTO `area` VALUES (1348, '朔城区', 89, 0, 3, NULL);
INSERT INTO `area` VALUES (1349, '介休市', 90, 0, 3, NULL);
INSERT INTO `area` VALUES (1350, '和顺县', 90, 0, 3, NULL);
INSERT INTO `area` VALUES (1351, '太谷县', 90, 0, 3, NULL);
INSERT INTO `area` VALUES (1352, '寿阳县', 90, 0, 3, NULL);
INSERT INTO `area` VALUES (1353, '左权县', 90, 0, 3, NULL);
INSERT INTO `area` VALUES (1354, '平遥县', 90, 0, 3, NULL);
INSERT INTO `area` VALUES (1355, '昔阳县', 90, 0, 3, NULL);
INSERT INTO `area` VALUES (1356, '榆次区', 90, 0, 3, NULL);
INSERT INTO `area` VALUES (1357, '榆社县', 90, 0, 3, NULL);
INSERT INTO `area` VALUES (1358, '灵石县', 90, 0, 3, NULL);
INSERT INTO `area` VALUES (1359, '祁县', 90, 0, 3, NULL);
INSERT INTO `area` VALUES (1360, '万荣县', 91, 0, 3, NULL);
INSERT INTO `area` VALUES (1361, '临猗县', 91, 0, 3, NULL);
INSERT INTO `area` VALUES (1362, '垣曲县', 91, 0, 3, NULL);
INSERT INTO `area` VALUES (1363, '夏县', 91, 0, 3, NULL);
INSERT INTO `area` VALUES (1364, '平陆县', 91, 0, 3, NULL);
INSERT INTO `area` VALUES (1365, '新绛县', 91, 0, 3, NULL);
INSERT INTO `area` VALUES (1366, '永济市', 91, 0, 3, NULL);
INSERT INTO `area` VALUES (1367, '河津市', 91, 0, 3, NULL);
INSERT INTO `area` VALUES (1368, '盐湖区', 91, 0, 3, NULL);
INSERT INTO `area` VALUES (1369, '稷山县', 91, 0, 3, NULL);
INSERT INTO `area` VALUES (1370, '绛县', 91, 0, 3, NULL);
INSERT INTO `area` VALUES (1371, '芮城县', 91, 0, 3, NULL);
INSERT INTO `area` VALUES (1372, '闻喜县', 91, 0, 3, NULL);
INSERT INTO `area` VALUES (1373, '五台县', 92, 0, 3, NULL);
INSERT INTO `area` VALUES (1374, '五寨县', 92, 0, 3, NULL);
INSERT INTO `area` VALUES (1375, '代县', 92, 0, 3, NULL);
INSERT INTO `area` VALUES (1376, '保德县', 92, 0, 3, NULL);
INSERT INTO `area` VALUES (1377, '偏关县', 92, 0, 3, NULL);
INSERT INTO `area` VALUES (1378, '原平市', 92, 0, 3, NULL);
INSERT INTO `area` VALUES (1379, '宁武县', 92, 0, 3, NULL);
INSERT INTO `area` VALUES (1380, '定襄县', 92, 0, 3, NULL);
INSERT INTO `area` VALUES (1381, '岢岚县', 92, 0, 3, NULL);
INSERT INTO `area` VALUES (1382, '忻府区', 92, 0, 3, NULL);
INSERT INTO `area` VALUES (1383, '河曲县', 92, 0, 3, NULL);
INSERT INTO `area` VALUES (1384, '神池县', 92, 0, 3, NULL);
INSERT INTO `area` VALUES (1385, '繁峙县', 92, 0, 3, NULL);
INSERT INTO `area` VALUES (1386, '静乐县', 92, 0, 3, NULL);
INSERT INTO `area` VALUES (1387, '乡宁县', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1388, '侯马市', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1389, '古县', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1390, '吉县', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1391, '大宁县', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1392, '安泽县', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1393, '尧都区', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1394, '曲沃县', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1395, '永和县', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1396, '汾西县', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1397, '洪洞县', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1398, '浮山县', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1399, '翼城县', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1400, '蒲县', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1401, '襄汾县', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1402, '隰县', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1403, '霍州市', 93, 0, 3, NULL);
INSERT INTO `area` VALUES (1404, '中阳县', 94, 0, 3, NULL);
INSERT INTO `area` VALUES (1405, '临县', 94, 0, 3, NULL);
INSERT INTO `area` VALUES (1406, '交口县', 94, 0, 3, NULL);
INSERT INTO `area` VALUES (1407, '交城县', 94, 0, 3, NULL);
INSERT INTO `area` VALUES (1408, '兴县', 94, 0, 3, NULL);
INSERT INTO `area` VALUES (1409, '孝义市', 94, 0, 3, NULL);
INSERT INTO `area` VALUES (1410, '岚县', 94, 0, 3, NULL);
INSERT INTO `area` VALUES (1411, '文水县', 94, 0, 3, NULL);
INSERT INTO `area` VALUES (1412, '方山县', 94, 0, 3, NULL);
INSERT INTO `area` VALUES (1413, '柳林县', 94, 0, 3, NULL);
INSERT INTO `area` VALUES (1414, '汾阳市', 94, 0, 3, NULL);
INSERT INTO `area` VALUES (1415, '石楼县', 94, 0, 3, NULL);
INSERT INTO `area` VALUES (1416, '离石区', 94, 0, 3, NULL);
INSERT INTO `area` VALUES (1417, '和林格尔县', 95, 0, 3, NULL);
INSERT INTO `area` VALUES (1418, '回民区', 95, 0, 3, NULL);
INSERT INTO `area` VALUES (1419, '土默特左旗', 95, 0, 3, NULL);
INSERT INTO `area` VALUES (1420, '托克托县', 95, 0, 3, NULL);
INSERT INTO `area` VALUES (1421, '新城区', 95, 0, 3, NULL);
INSERT INTO `area` VALUES (1422, '武川县', 95, 0, 3, NULL);
INSERT INTO `area` VALUES (1423, '清水河县', 95, 0, 3, NULL);
INSERT INTO `area` VALUES (1424, '玉泉区', 95, 0, 3, NULL);
INSERT INTO `area` VALUES (1425, '赛罕区', 95, 0, 3, NULL);
INSERT INTO `area` VALUES (1426, '东河区', 96, 0, 3, NULL);
INSERT INTO `area` VALUES (1427, '九原区', 96, 0, 3, NULL);
INSERT INTO `area` VALUES (1428, '固阳县', 96, 0, 3, NULL);
INSERT INTO `area` VALUES (1429, '土默特右旗', 96, 0, 3, NULL);
INSERT INTO `area` VALUES (1430, '昆都仑区', 96, 0, 3, NULL);
INSERT INTO `area` VALUES (1431, '白云矿区', 96, 0, 3, NULL);
INSERT INTO `area` VALUES (1432, '石拐区', 96, 0, 3, NULL);
INSERT INTO `area` VALUES (1433, '达尔罕茂明安联合旗', 96, 0, 3, NULL);
INSERT INTO `area` VALUES (1434, '青山区', 96, 0, 3, NULL);
INSERT INTO `area` VALUES (1435, '乌达区', 97, 0, 3, NULL);
INSERT INTO `area` VALUES (1436, '海勃湾区', 97, 0, 3, NULL);
INSERT INTO `area` VALUES (1437, '海南区', 97, 0, 3, NULL);
INSERT INTO `area` VALUES (1438, '元宝山区', 98, 0, 3, NULL);
INSERT INTO `area` VALUES (1439, '克什克腾旗', 98, 0, 3, NULL);
INSERT INTO `area` VALUES (1440, '喀喇沁旗', 98, 0, 3, NULL);
INSERT INTO `area` VALUES (1441, '宁城县', 98, 0, 3, NULL);
INSERT INTO `area` VALUES (1442, '巴林右旗', 98, 0, 3, NULL);
INSERT INTO `area` VALUES (1443, '巴林左旗', 98, 0, 3, NULL);
INSERT INTO `area` VALUES (1444, '敖汉旗', 98, 0, 3, NULL);
INSERT INTO `area` VALUES (1445, '松山区', 98, 0, 3, NULL);
INSERT INTO `area` VALUES (1446, '林西县', 98, 0, 3, NULL);
INSERT INTO `area` VALUES (1447, '红山区', 98, 0, 3, NULL);
INSERT INTO `area` VALUES (1448, '翁牛特旗', 98, 0, 3, NULL);
INSERT INTO `area` VALUES (1449, '阿鲁科尔沁旗', 98, 0, 3, NULL);
INSERT INTO `area` VALUES (1450, '奈曼旗', 99, 0, 3, NULL);
INSERT INTO `area` VALUES (1451, '库伦旗', 99, 0, 3, NULL);
INSERT INTO `area` VALUES (1452, '开鲁县', 99, 0, 3, NULL);
INSERT INTO `area` VALUES (1453, '扎鲁特旗', 99, 0, 3, NULL);
INSERT INTO `area` VALUES (1454, '科尔沁区', 99, 0, 3, NULL);
INSERT INTO `area` VALUES (1455, '科尔沁左翼中旗', 99, 0, 3, NULL);
INSERT INTO `area` VALUES (1456, '科尔沁左翼后旗', 99, 0, 3, NULL);
INSERT INTO `area` VALUES (1457, '霍林郭勒市', 99, 0, 3, NULL);
INSERT INTO `area` VALUES (1458, '东胜区', 100, 0, 3, NULL);
INSERT INTO `area` VALUES (1459, '乌审旗', 100, 0, 3, NULL);
INSERT INTO `area` VALUES (1460, '伊金霍洛旗', 100, 0, 3, NULL);
INSERT INTO `area` VALUES (1461, '准格尔旗', 100, 0, 3, NULL);
INSERT INTO `area` VALUES (1462, '杭锦旗', 100, 0, 3, NULL);
INSERT INTO `area` VALUES (1463, '达拉特旗', 100, 0, 3, NULL);
INSERT INTO `area` VALUES (1464, '鄂东胜区', 100, 0, 3, NULL);
INSERT INTO `area` VALUES (1465, '鄂托克前旗', 100, 0, 3, NULL);
INSERT INTO `area` VALUES (1466, '鄂托克旗', 100, 0, 3, NULL);
INSERT INTO `area` VALUES (1467, '扎兰屯市', 101, 0, 3, NULL);
INSERT INTO `area` VALUES (1468, '新巴尔虎右旗', 101, 0, 3, NULL);
INSERT INTO `area` VALUES (1469, '新巴尔虎左旗', 101, 0, 3, NULL);
INSERT INTO `area` VALUES (1470, '根河市', 101, 0, 3, NULL);
INSERT INTO `area` VALUES (1471, '海拉尔区', 101, 0, 3, NULL);
INSERT INTO `area` VALUES (1472, '满洲里市', 101, 0, 3, NULL);
INSERT INTO `area` VALUES (1473, '牙克石市', 101, 0, 3, NULL);
INSERT INTO `area` VALUES (1474, '莫力达瓦达斡尔族自治旗', 101, 0, 3, NULL);
INSERT INTO `area` VALUES (1475, '鄂伦春自治旗', 101, 0, 3, NULL);
INSERT INTO `area` VALUES (1476, '鄂温克族自治旗', 101, 0, 3, NULL);
INSERT INTO `area` VALUES (1477, '阿荣旗', 101, 0, 3, NULL);
INSERT INTO `area` VALUES (1478, '陈巴尔虎旗', 101, 0, 3, NULL);
INSERT INTO `area` VALUES (1479, '额尔古纳市', 101, 0, 3, NULL);
INSERT INTO `area` VALUES (1480, '临河区', 102, 0, 3, NULL);
INSERT INTO `area` VALUES (1481, '乌拉特中旗', 102, 0, 3, NULL);
INSERT INTO `area` VALUES (1482, '乌拉特前旗', 102, 0, 3, NULL);
INSERT INTO `area` VALUES (1483, '乌拉特后旗', 102, 0, 3, NULL);
INSERT INTO `area` VALUES (1484, '五原县', 102, 0, 3, NULL);
INSERT INTO `area` VALUES (1485, '杭锦后旗', 102, 0, 3, NULL);
INSERT INTO `area` VALUES (1486, '磴口县', 102, 0, 3, NULL);
INSERT INTO `area` VALUES (1487, '丰镇市', 103, 0, 3, NULL);
INSERT INTO `area` VALUES (1488, '兴和县', 103, 0, 3, NULL);
INSERT INTO `area` VALUES (1489, '凉城县', 103, 0, 3, NULL);
INSERT INTO `area` VALUES (1490, '化德县', 103, 0, 3, NULL);
INSERT INTO `area` VALUES (1491, '卓资县', 103, 0, 3, NULL);
INSERT INTO `area` VALUES (1492, '商都县', 103, 0, 3, NULL);
INSERT INTO `area` VALUES (1493, '四子王旗', 103, 0, 3, NULL);
INSERT INTO `area` VALUES (1494, '察哈尔右翼中旗', 103, 0, 3, NULL);
INSERT INTO `area` VALUES (1495, '察哈尔右翼前旗', 103, 0, 3, NULL);
INSERT INTO `area` VALUES (1496, '察哈尔右翼后旗', 103, 0, 3, NULL);
INSERT INTO `area` VALUES (1497, '集宁区', 103, 0, 3, NULL);
INSERT INTO `area` VALUES (1498, '乌兰浩特市', 104, 0, 3, NULL);
INSERT INTO `area` VALUES (1499, '扎赉特旗', 104, 0, 3, NULL);
INSERT INTO `area` VALUES (1500, '科尔沁右翼中旗', 104, 0, 3, NULL);
INSERT INTO `area` VALUES (1501, '科尔沁右翼前旗', 104, 0, 3, NULL);
INSERT INTO `area` VALUES (1502, '突泉县', 104, 0, 3, NULL);
INSERT INTO `area` VALUES (1503, '阿尔山市', 104, 0, 3, NULL);
INSERT INTO `area` VALUES (1504, '东乌珠穆沁旗', 105, 0, 3, NULL);
INSERT INTO `area` VALUES (1505, '二连浩特市', 105, 0, 3, NULL);
INSERT INTO `area` VALUES (1506, '多伦县', 105, 0, 3, NULL);
INSERT INTO `area` VALUES (1507, '太仆寺旗', 105, 0, 3, NULL);
INSERT INTO `area` VALUES (1508, '正蓝旗', 105, 0, 3, NULL);
INSERT INTO `area` VALUES (1509, '正镶白旗', 105, 0, 3, NULL);
INSERT INTO `area` VALUES (1510, '苏尼特右旗', 105, 0, 3, NULL);
INSERT INTO `area` VALUES (1511, '苏尼特左旗', 105, 0, 3, NULL);
INSERT INTO `area` VALUES (1512, '西乌珠穆沁旗', 105, 0, 3, NULL);
INSERT INTO `area` VALUES (1513, '锡林浩特市', 105, 0, 3, NULL);
INSERT INTO `area` VALUES (1514, '镶黄旗', 105, 0, 3, NULL);
INSERT INTO `area` VALUES (1515, '阿巴嘎旗', 105, 0, 3, NULL);
INSERT INTO `area` VALUES (1516, '阿拉善右旗', 106, 0, 3, NULL);
INSERT INTO `area` VALUES (1517, '阿拉善左旗', 106, 0, 3, NULL);
INSERT INTO `area` VALUES (1518, '额济纳旗', 106, 0, 3, NULL);
INSERT INTO `area` VALUES (1519, '东陵区', 107, 0, 3, NULL);
INSERT INTO `area` VALUES (1520, '于洪区', 107, 0, 3, NULL);
INSERT INTO `area` VALUES (1521, '和平区', 107, 0, 3, NULL);
INSERT INTO `area` VALUES (1522, '大东区', 107, 0, 3, NULL);
INSERT INTO `area` VALUES (1523, '康平县', 107, 0, 3, NULL);
INSERT INTO `area` VALUES (1524, '新民市', 107, 0, 3, NULL);
INSERT INTO `area` VALUES (1525, '沈北新区', 107, 0, 3, NULL);
INSERT INTO `area` VALUES (1526, '沈河区', 107, 0, 3, NULL);
INSERT INTO `area` VALUES (1527, '法库县', 107, 0, 3, NULL);
INSERT INTO `area` VALUES (1528, '皇姑区', 107, 0, 3, NULL);
INSERT INTO `area` VALUES (1529, '苏家屯区', 107, 0, 3, NULL);
INSERT INTO `area` VALUES (1530, '辽中县', 107, 0, 3, NULL);
INSERT INTO `area` VALUES (1531, '铁西区', 107, 0, 3, NULL);
INSERT INTO `area` VALUES (1532, '中山区', 108, 0, 3, NULL);
INSERT INTO `area` VALUES (1533, '庄河市', 108, 0, 3, NULL);
INSERT INTO `area` VALUES (1534, '旅顺口区', 108, 0, 3, NULL);
INSERT INTO `area` VALUES (1535, '普兰店市', 108, 0, 3, NULL);
INSERT INTO `area` VALUES (1536, '沙河口区', 108, 0, 3, NULL);
INSERT INTO `area` VALUES (1537, '瓦房店市', 108, 0, 3, NULL);
INSERT INTO `area` VALUES (1538, '甘井子区', 108, 0, 3, NULL);
INSERT INTO `area` VALUES (1539, '西岗区', 108, 0, 3, NULL);
INSERT INTO `area` VALUES (1540, '金州区', 108, 0, 3, NULL);
INSERT INTO `area` VALUES (1541, '长海县', 108, 0, 3, NULL);
INSERT INTO `area` VALUES (1542, '千山区', 109, 0, 3, NULL);
INSERT INTO `area` VALUES (1543, '台安县', 109, 0, 3, NULL);
INSERT INTO `area` VALUES (1544, '岫岩满族自治县', 109, 0, 3, NULL);
INSERT INTO `area` VALUES (1545, '海城市', 109, 0, 3, NULL);
INSERT INTO `area` VALUES (1546, '立山区', 109, 0, 3, NULL);
INSERT INTO `area` VALUES (1547, '铁东区', 109, 0, 3, NULL);
INSERT INTO `area` VALUES (1548, '铁西区', 109, 0, 3, NULL);
INSERT INTO `area` VALUES (1549, '东洲区', 110, 0, 3, NULL);
INSERT INTO `area` VALUES (1550, '抚顺县', 110, 0, 3, NULL);
INSERT INTO `area` VALUES (1551, '新宾满族自治县', 110, 0, 3, NULL);
INSERT INTO `area` VALUES (1552, '新抚区', 110, 0, 3, NULL);
INSERT INTO `area` VALUES (1553, '望花区', 110, 0, 3, NULL);
INSERT INTO `area` VALUES (1554, '清原满族自治县', 110, 0, 3, NULL);
INSERT INTO `area` VALUES (1555, '顺城区', 110, 0, 3, NULL);
INSERT INTO `area` VALUES (1556, '南芬区', 111, 0, 3, NULL);
INSERT INTO `area` VALUES (1557, '平山区', 111, 0, 3, NULL);
INSERT INTO `area` VALUES (1558, '明山区', 111, 0, 3, NULL);
INSERT INTO `area` VALUES (1559, '本溪满族自治县', 111, 0, 3, NULL);
INSERT INTO `area` VALUES (1560, '桓仁满族自治县', 111, 0, 3, NULL);
INSERT INTO `area` VALUES (1561, '溪湖区', 111, 0, 3, NULL);
INSERT INTO `area` VALUES (1562, '东港市', 112, 0, 3, NULL);
INSERT INTO `area` VALUES (1563, '元宝区', 112, 0, 3, NULL);
INSERT INTO `area` VALUES (1564, '凤城市', 112, 0, 3, NULL);
INSERT INTO `area` VALUES (1565, '宽甸满族自治县', 112, 0, 3, NULL);
INSERT INTO `area` VALUES (1566, '振兴区', 112, 0, 3, NULL);
INSERT INTO `area` VALUES (1567, '振安区', 112, 0, 3, NULL);
INSERT INTO `area` VALUES (1568, '义县', 113, 0, 3, NULL);
INSERT INTO `area` VALUES (1569, '凌河区', 113, 0, 3, NULL);
INSERT INTO `area` VALUES (1570, '凌海市', 113, 0, 3, NULL);
INSERT INTO `area` VALUES (1571, '北镇市', 113, 0, 3, NULL);
INSERT INTO `area` VALUES (1572, '古塔区', 113, 0, 3, NULL);
INSERT INTO `area` VALUES (1573, '太和区', 113, 0, 3, NULL);
INSERT INTO `area` VALUES (1574, '黑山县', 113, 0, 3, NULL);
INSERT INTO `area` VALUES (1575, '大石桥市', 114, 0, 3, NULL);
INSERT INTO `area` VALUES (1576, '盖州市', 114, 0, 3, NULL);
INSERT INTO `area` VALUES (1577, '站前区', 114, 0, 3, NULL);
INSERT INTO `area` VALUES (1578, '老边区', 114, 0, 3, NULL);
INSERT INTO `area` VALUES (1579, '西市区', 114, 0, 3, NULL);
INSERT INTO `area` VALUES (1580, '鲅鱼圈区', 114, 0, 3, NULL);
INSERT INTO `area` VALUES (1581, '太平区', 115, 0, 3, NULL);
INSERT INTO `area` VALUES (1582, '彰武县', 115, 0, 3, NULL);
INSERT INTO `area` VALUES (1583, '新邱区', 115, 0, 3, NULL);
INSERT INTO `area` VALUES (1584, '海州区', 115, 0, 3, NULL);
INSERT INTO `area` VALUES (1585, '清河门区', 115, 0, 3, NULL);
INSERT INTO `area` VALUES (1586, '细河区', 115, 0, 3, NULL);
INSERT INTO `area` VALUES (1587, '蒙古族自治县', 115, 0, 3, NULL);
INSERT INTO `area` VALUES (1588, '太子河区', 116, 0, 3, NULL);
INSERT INTO `area` VALUES (1589, '宏伟区', 116, 0, 3, NULL);
INSERT INTO `area` VALUES (1590, '弓长岭区', 116, 0, 3, NULL);
INSERT INTO `area` VALUES (1591, '文圣区', 116, 0, 3, NULL);
INSERT INTO `area` VALUES (1592, '灯塔市', 116, 0, 3, NULL);
INSERT INTO `area` VALUES (1593, '白塔区', 116, 0, 3, NULL);
INSERT INTO `area` VALUES (1594, '辽阳县', 116, 0, 3, NULL);
INSERT INTO `area` VALUES (1595, '兴隆台区', 117, 0, 3, NULL);
INSERT INTO `area` VALUES (1596, '双台子区', 117, 0, 3, NULL);
INSERT INTO `area` VALUES (1597, '大洼县', 117, 0, 3, NULL);
INSERT INTO `area` VALUES (1598, '盘山县', 117, 0, 3, NULL);
INSERT INTO `area` VALUES (1599, '开原市', 118, 0, 3, NULL);
INSERT INTO `area` VALUES (1600, '昌图县', 118, 0, 3, NULL);
INSERT INTO `area` VALUES (1601, '清河区', 118, 0, 3, NULL);
INSERT INTO `area` VALUES (1602, '西丰县', 118, 0, 3, NULL);
INSERT INTO `area` VALUES (1603, '调兵山市', 118, 0, 3, NULL);
INSERT INTO `area` VALUES (1604, '铁岭县', 118, 0, 3, NULL);
INSERT INTO `area` VALUES (1605, '银州区', 118, 0, 3, NULL);
INSERT INTO `area` VALUES (1606, '凌源市', 119, 0, 3, NULL);
INSERT INTO `area` VALUES (1607, '北票市', 119, 0, 3, NULL);
INSERT INTO `area` VALUES (1608, '双塔区', 119, 0, 3, NULL);
INSERT INTO `area` VALUES (1609, '喀喇沁左翼蒙古族自治县', 119, 0, 3, NULL);
INSERT INTO `area` VALUES (1610, '建平县', 119, 0, 3, NULL);
INSERT INTO `area` VALUES (1611, '朝阳县', 119, 0, 3, NULL);
INSERT INTO `area` VALUES (1612, '龙城区', 119, 0, 3, NULL);
INSERT INTO `area` VALUES (1613, '兴城市', 120, 0, 3, NULL);
INSERT INTO `area` VALUES (1614, '南票区', 120, 0, 3, NULL);
INSERT INTO `area` VALUES (1615, '建昌县', 120, 0, 3, NULL);
INSERT INTO `area` VALUES (1616, '绥中县', 120, 0, 3, NULL);
INSERT INTO `area` VALUES (1617, '连山区', 120, 0, 3, NULL);
INSERT INTO `area` VALUES (1618, '龙港区', 120, 0, 3, NULL);
INSERT INTO `area` VALUES (1619, '九台市', 121, 0, 3, NULL);
INSERT INTO `area` VALUES (1620, '二道区', 121, 0, 3, NULL);
INSERT INTO `area` VALUES (1621, '农安县', 121, 0, 3, NULL);
INSERT INTO `area` VALUES (1622, '南关区', 121, 0, 3, NULL);
INSERT INTO `area` VALUES (1623, '双阳区', 121, 0, 3, NULL);
INSERT INTO `area` VALUES (1624, '宽城区', 121, 0, 3, NULL);
INSERT INTO `area` VALUES (1625, '德惠市', 121, 0, 3, NULL);
INSERT INTO `area` VALUES (1626, '朝阳区', 121, 0, 3, NULL);
INSERT INTO `area` VALUES (1627, '榆树市', 121, 0, 3, NULL);
INSERT INTO `area` VALUES (1628, '绿园区', 121, 0, 3, NULL);
INSERT INTO `area` VALUES (1629, '丰满区', 122, 0, 3, NULL);
INSERT INTO `area` VALUES (1630, '昌邑区', 122, 0, 3, NULL);
INSERT INTO `area` VALUES (1631, '桦甸市', 122, 0, 3, NULL);
INSERT INTO `area` VALUES (1632, '永吉县', 122, 0, 3, NULL);
INSERT INTO `area` VALUES (1633, '磐石市', 122, 0, 3, NULL);
INSERT INTO `area` VALUES (1634, '舒兰市', 122, 0, 3, NULL);
INSERT INTO `area` VALUES (1635, '船营区', 122, 0, 3, NULL);
INSERT INTO `area` VALUES (1636, '蛟河市', 122, 0, 3, NULL);
INSERT INTO `area` VALUES (1637, '龙潭区', 122, 0, 3, NULL);
INSERT INTO `area` VALUES (1638, '伊通满族自治县', 123, 0, 3, NULL);
INSERT INTO `area` VALUES (1639, '公主岭市', 123, 0, 3, NULL);
INSERT INTO `area` VALUES (1640, '双辽市', 123, 0, 3, NULL);
INSERT INTO `area` VALUES (1641, '梨树县', 123, 0, 3, NULL);
INSERT INTO `area` VALUES (1642, '铁东区', 123, 0, 3, NULL);
INSERT INTO `area` VALUES (1643, '铁西区', 123, 0, 3, NULL);
INSERT INTO `area` VALUES (1644, '东丰县', 124, 0, 3, NULL);
INSERT INTO `area` VALUES (1645, '东辽县', 124, 0, 3, NULL);
INSERT INTO `area` VALUES (1646, '西安区', 124, 0, 3, NULL);
INSERT INTO `area` VALUES (1647, '龙山区', 124, 0, 3, NULL);
INSERT INTO `area` VALUES (1648, '东昌区', 125, 0, 3, NULL);
INSERT INTO `area` VALUES (1649, '二道江区', 125, 0, 3, NULL);
INSERT INTO `area` VALUES (1650, '柳河县', 125, 0, 3, NULL);
INSERT INTO `area` VALUES (1651, '梅河口市', 125, 0, 3, NULL);
INSERT INTO `area` VALUES (1652, '辉南县', 125, 0, 3, NULL);
INSERT INTO `area` VALUES (1653, '通化县', 125, 0, 3, NULL);
INSERT INTO `area` VALUES (1654, '集安市', 125, 0, 3, NULL);
INSERT INTO `area` VALUES (1655, '临江市', 126, 0, 3, NULL);
INSERT INTO `area` VALUES (1656, '八道江区', 126, 0, 3, NULL);
INSERT INTO `area` VALUES (1657, '抚松县', 126, 0, 3, NULL);
INSERT INTO `area` VALUES (1658, '江源区', 126, 0, 3, NULL);
INSERT INTO `area` VALUES (1659, '长白朝鲜族自治县', 126, 0, 3, NULL);
INSERT INTO `area` VALUES (1660, '靖宇县', 126, 0, 3, NULL);
INSERT INTO `area` VALUES (1661, '干安县', 127, 0, 3, NULL);
INSERT INTO `area` VALUES (1662, '前郭尔罗斯蒙古族自治县', 127, 0, 3, NULL);
INSERT INTO `area` VALUES (1663, '宁江区', 127, 0, 3, NULL);
INSERT INTO `area` VALUES (1664, '扶余县', 127, 0, 3, NULL);
INSERT INTO `area` VALUES (1665, '长岭县', 127, 0, 3, NULL);
INSERT INTO `area` VALUES (1666, '大安市', 128, 0, 3, NULL);
INSERT INTO `area` VALUES (1667, '洮北区', 128, 0, 3, NULL);
INSERT INTO `area` VALUES (1668, '洮南市', 128, 0, 3, NULL);
INSERT INTO `area` VALUES (1669, '通榆县', 128, 0, 3, NULL);
INSERT INTO `area` VALUES (1670, '镇赉县', 128, 0, 3, NULL);
INSERT INTO `area` VALUES (1671, '和龙市', 129, 0, 3, NULL);
INSERT INTO `area` VALUES (1672, '图们市', 129, 0, 3, NULL);
INSERT INTO `area` VALUES (1673, '安图县', 129, 0, 3, NULL);
INSERT INTO `area` VALUES (1674, '延吉市', 129, 0, 3, NULL);
INSERT INTO `area` VALUES (1675, '敦化市', 129, 0, 3, NULL);
INSERT INTO `area` VALUES (1676, '汪清县', 129, 0, 3, NULL);
INSERT INTO `area` VALUES (1677, '珲春市', 129, 0, 3, NULL);
INSERT INTO `area` VALUES (1678, '龙井市', 129, 0, 3, NULL);
INSERT INTO `area` VALUES (1679, '五常市', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1680, '依兰县', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1681, '南岗区', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1682, '双城市', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1683, '呼兰区', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1684, '哈尔滨市道里区', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1685, '宾县', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1686, '尚志市', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1687, '巴彦县', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1688, '平房区', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1689, '延寿县', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1690, '方正县', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1691, '木兰县', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1692, '松北区', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1693, '通河县', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1694, '道外区', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1695, '阿城区', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1696, '香坊区', 130, 0, 3, NULL);
INSERT INTO `area` VALUES (1697, '依安县', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1698, '克东县', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1699, '克山县', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1700, '富拉尔基区', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1701, '富裕县', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1702, '建华区', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1703, '拜泉县', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1704, '昂昂溪区', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1705, '梅里斯达斡尔族区', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1706, '泰来县', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1707, '甘南县', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1708, '碾子山区', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1709, '讷河市', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1710, '铁锋区', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1711, '龙江县', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1712, '龙沙区', 131, 0, 3, NULL);
INSERT INTO `area` VALUES (1713, '城子河区', 132, 0, 3, NULL);
INSERT INTO `area` VALUES (1714, '密山市', 132, 0, 3, NULL);
INSERT INTO `area` VALUES (1715, '恒山区', 132, 0, 3, NULL);
INSERT INTO `area` VALUES (1716, '梨树区', 132, 0, 3, NULL);
INSERT INTO `area` VALUES (1717, '滴道区', 132, 0, 3, NULL);
INSERT INTO `area` VALUES (1718, '虎林市', 132, 0, 3, NULL);
INSERT INTO `area` VALUES (1719, '鸡东县', 132, 0, 3, NULL);
INSERT INTO `area` VALUES (1720, '鸡冠区', 132, 0, 3, NULL);
INSERT INTO `area` VALUES (1721, '麻山区', 132, 0, 3, NULL);
INSERT INTO `area` VALUES (1722, '东山区', 133, 0, 3, NULL);
INSERT INTO `area` VALUES (1723, '兴安区', 133, 0, 3, NULL);
INSERT INTO `area` VALUES (1724, '兴山区', 133, 0, 3, NULL);
INSERT INTO `area` VALUES (1725, '南山区', 133, 0, 3, NULL);
INSERT INTO `area` VALUES (1726, '向阳区', 133, 0, 3, NULL);
INSERT INTO `area` VALUES (1727, '工农区', 133, 0, 3, NULL);
INSERT INTO `area` VALUES (1728, '绥滨县', 133, 0, 3, NULL);
INSERT INTO `area` VALUES (1729, '萝北县', 133, 0, 3, NULL);
INSERT INTO `area` VALUES (1730, '友谊县', 134, 0, 3, NULL);
INSERT INTO `area` VALUES (1731, '四方台区', 134, 0, 3, NULL);
INSERT INTO `area` VALUES (1732, '宝山区', 134, 0, 3, NULL);
INSERT INTO `area` VALUES (1733, '宝清县', 134, 0, 3, NULL);
INSERT INTO `area` VALUES (1734, '尖山区', 134, 0, 3, NULL);
INSERT INTO `area` VALUES (1735, '岭东区', 134, 0, 3, NULL);
INSERT INTO `area` VALUES (1736, '集贤县', 134, 0, 3, NULL);
INSERT INTO `area` VALUES (1737, '饶河县', 134, 0, 3, NULL);
INSERT INTO `area` VALUES (1738, '大同区', 135, 0, 3, NULL);
INSERT INTO `area` VALUES (1739, '杜尔伯特蒙古族自治县', 135, 0, 3, NULL);
INSERT INTO `area` VALUES (1740, '林甸县', 135, 0, 3, NULL);
INSERT INTO `area` VALUES (1741, '红岗区', 135, 0, 3, NULL);
INSERT INTO `area` VALUES (1742, '肇州县', 135, 0, 3, NULL);
INSERT INTO `area` VALUES (1743, '肇源县', 135, 0, 3, NULL);
INSERT INTO `area` VALUES (1744, '胡路区', 135, 0, 3, NULL);
INSERT INTO `area` VALUES (1745, '萨尔图区', 135, 0, 3, NULL);
INSERT INTO `area` VALUES (1746, '龙凤区', 135, 0, 3, NULL);
INSERT INTO `area` VALUES (1747, '上甘岭区', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1748, '乌伊岭区', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1749, '乌马河区', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1750, '五营区', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1751, '伊春区', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1752, '南岔区', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1753, '友好区', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1754, '嘉荫县', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1755, '带岭区', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1756, '新青区', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1757, '汤旺河区', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1758, '红星区', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1759, '美溪区', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1760, '翠峦区', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1761, '西林区', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1762, '金山屯区', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1763, '铁力市', 136, 0, 3, NULL);
INSERT INTO `area` VALUES (1764, '东风区', 137, 0, 3, NULL);
INSERT INTO `area` VALUES (1765, '前进区', 137, 0, 3, NULL);
INSERT INTO `area` VALUES (1766, '同江市', 137, 0, 3, NULL);
INSERT INTO `area` VALUES (1767, '向阳区', 137, 0, 3, NULL);
INSERT INTO `area` VALUES (1768, '富锦市', 137, 0, 3, NULL);
INSERT INTO `area` VALUES (1769, '抚远县', 137, 0, 3, NULL);
INSERT INTO `area` VALUES (1770, '桦南县', 137, 0, 3, NULL);
INSERT INTO `area` VALUES (1771, '桦川县', 137, 0, 3, NULL);
INSERT INTO `area` VALUES (1772, '汤原县', 137, 0, 3, NULL);
INSERT INTO `area` VALUES (1773, '郊区', 137, 0, 3, NULL);
INSERT INTO `area` VALUES (1774, '勃利县', 138, 0, 3, NULL);
INSERT INTO `area` VALUES (1775, '新兴区', 138, 0, 3, NULL);
INSERT INTO `area` VALUES (1776, '桃山区', 138, 0, 3, NULL);
INSERT INTO `area` VALUES (1777, '茄子河区', 138, 0, 3, NULL);
INSERT INTO `area` VALUES (1778, '东宁县', 139, 0, 3, NULL);
INSERT INTO `area` VALUES (1779, '东安区', 139, 0, 3, NULL);
INSERT INTO `area` VALUES (1780, '宁安市', 139, 0, 3, NULL);
INSERT INTO `area` VALUES (1781, '林口县', 139, 0, 3, NULL);
INSERT INTO `area` VALUES (1782, '海林市', 139, 0, 3, NULL);
INSERT INTO `area` VALUES (1783, '爱民区', 139, 0, 3, NULL);
INSERT INTO `area` VALUES (1784, '穆棱市', 139, 0, 3, NULL);
INSERT INTO `area` VALUES (1785, '绥芬河市', 139, 0, 3, NULL);
INSERT INTO `area` VALUES (1786, '西安区', 139, 0, 3, NULL);
INSERT INTO `area` VALUES (1787, '阳明区', 139, 0, 3, NULL);
INSERT INTO `area` VALUES (1788, '五大连池市', 140, 0, 3, NULL);
INSERT INTO `area` VALUES (1789, '北安市', 140, 0, 3, NULL);
INSERT INTO `area` VALUES (1790, '嫩江县', 140, 0, 3, NULL);
INSERT INTO `area` VALUES (1791, '孙吴县', 140, 0, 3, NULL);
INSERT INTO `area` VALUES (1792, '爱辉区', 140, 0, 3, NULL);
INSERT INTO `area` VALUES (1793, '车逊克县', 140, 0, 3, NULL);
INSERT INTO `area` VALUES (1794, '逊克县', 140, 0, 3, NULL);
INSERT INTO `area` VALUES (1795, '兰西县', 141, 0, 3, NULL);
INSERT INTO `area` VALUES (1796, '安达市', 141, 0, 3, NULL);
INSERT INTO `area` VALUES (1797, '庆安县', 141, 0, 3, NULL);
INSERT INTO `area` VALUES (1798, '明水县', 141, 0, 3, NULL);
INSERT INTO `area` VALUES (1799, '望奎县', 141, 0, 3, NULL);
INSERT INTO `area` VALUES (1800, '海伦市', 141, 0, 3, NULL);
INSERT INTO `area` VALUES (1801, '绥化市北林区', 141, 0, 3, NULL);
INSERT INTO `area` VALUES (1802, '绥棱县', 141, 0, 3, NULL);
INSERT INTO `area` VALUES (1803, '肇东市', 141, 0, 3, NULL);
INSERT INTO `area` VALUES (1804, '青冈县', 141, 0, 3, NULL);
INSERT INTO `area` VALUES (1805, '呼玛县', 142, 0, 3, NULL);
INSERT INTO `area` VALUES (1806, '塔河县', 142, 0, 3, NULL);
INSERT INTO `area` VALUES (1807, '大兴安岭地区加格达奇区', 142, 0, 3, NULL);
INSERT INTO `area` VALUES (1808, '大兴安岭地区呼中区', 142, 0, 3, NULL);
INSERT INTO `area` VALUES (1809, '大兴安岭地区新林区', 142, 0, 3, NULL);
INSERT INTO `area` VALUES (1810, '大兴安岭地区松岭区', 142, 0, 3, NULL);
INSERT INTO `area` VALUES (1811, '漠河县', 142, 0, 3, NULL);
INSERT INTO `area` VALUES (2027, '下关区', 162, 0, 3, NULL);
INSERT INTO `area` VALUES (2028, '六合区', 162, 0, 3, NULL);
INSERT INTO `area` VALUES (2029, '建邺区', 162, 0, 3, NULL);
INSERT INTO `area` VALUES (2030, '栖霞区', 162, 0, 3, NULL);
INSERT INTO `area` VALUES (2031, '江宁区', 162, 0, 3, NULL);
INSERT INTO `area` VALUES (2032, '浦口区', 162, 0, 3, NULL);
INSERT INTO `area` VALUES (2033, '溧水县', 162, 0, 3, NULL);
INSERT INTO `area` VALUES (2034, '玄武区', 162, 0, 3, NULL);
INSERT INTO `area` VALUES (2035, '白下区', 162, 0, 3, NULL);
INSERT INTO `area` VALUES (2036, '秦淮区', 162, 0, 3, NULL);
INSERT INTO `area` VALUES (2037, '雨花台区', 162, 0, 3, NULL);
INSERT INTO `area` VALUES (2038, '高淳县', 162, 0, 3, NULL);
INSERT INTO `area` VALUES (2039, '鼓楼区', 162, 0, 3, NULL);
INSERT INTO `area` VALUES (2040, '北塘区', 163, 0, 3, NULL);
INSERT INTO `area` VALUES (2041, '南长区', 163, 0, 3, NULL);
INSERT INTO `area` VALUES (2042, '宜兴市', 163, 0, 3, NULL);
INSERT INTO `area` VALUES (2043, '崇安区', 163, 0, 3, NULL);
INSERT INTO `area` VALUES (2044, '惠山区', 163, 0, 3, NULL);
INSERT INTO `area` VALUES (2045, '江阴市', 163, 0, 3, NULL);
INSERT INTO `area` VALUES (2046, '滨湖区', 163, 0, 3, NULL);
INSERT INTO `area` VALUES (2047, '锡山区', 163, 0, 3, NULL);
INSERT INTO `area` VALUES (2048, '丰县', 164, 0, 3, NULL);
INSERT INTO `area` VALUES (2049, '九里区', 164, 0, 3, NULL);
INSERT INTO `area` VALUES (2050, '云龙区', 164, 0, 3, NULL);
INSERT INTO `area` VALUES (2051, '新沂市', 164, 0, 3, NULL);
INSERT INTO `area` VALUES (2052, '沛县', 164, 0, 3, NULL);
INSERT INTO `area` VALUES (2053, '泉山区', 164, 0, 3, NULL);
INSERT INTO `area` VALUES (2054, '睢宁县', 164, 0, 3, NULL);
INSERT INTO `area` VALUES (2055, '贾汪区', 164, 0, 3, NULL);
INSERT INTO `area` VALUES (2056, '邳州市', 164, 0, 3, NULL);
INSERT INTO `area` VALUES (2057, '铜山县', 164, 0, 3, NULL);
INSERT INTO `area` VALUES (2058, '鼓楼区', 164, 0, 3, NULL);
INSERT INTO `area` VALUES (2059, '天宁区', 165, 0, 3, NULL);
INSERT INTO `area` VALUES (2060, '戚墅堰区', 165, 0, 3, NULL);
INSERT INTO `area` VALUES (2061, '新北区', 165, 0, 3, NULL);
INSERT INTO `area` VALUES (2062, '武进区', 165, 0, 3, NULL);
INSERT INTO `area` VALUES (2063, '溧阳市', 165, 0, 3, NULL);
INSERT INTO `area` VALUES (2064, '金坛市', 165, 0, 3, NULL);
INSERT INTO `area` VALUES (2065, '钟楼区', 165, 0, 3, NULL);
INSERT INTO `area` VALUES (2066, '吴中区', 166, 0, 3, NULL);
INSERT INTO `area` VALUES (2067, '吴江市', 166, 0, 3, NULL);
INSERT INTO `area` VALUES (2068, '太仓市', 166, 0, 3, NULL);
INSERT INTO `area` VALUES (2069, '常熟市', 166, 0, 3, NULL);
INSERT INTO `area` VALUES (2070, '平江区', 166, 0, 3, NULL);
INSERT INTO `area` VALUES (2071, '张家港市', 166, 0, 3, NULL);
INSERT INTO `area` VALUES (2072, '昆山市', 166, 0, 3, NULL);
INSERT INTO `area` VALUES (2073, '沧浪区', 166, 0, 3, NULL);
INSERT INTO `area` VALUES (2074, '相城区', 166, 0, 3, NULL);
INSERT INTO `area` VALUES (2075, '苏州工业园区', 166, 0, 3, NULL);
INSERT INTO `area` VALUES (2076, '虎丘区', 166, 0, 3, NULL);
INSERT INTO `area` VALUES (2077, '金阊区', 166, 0, 3, NULL);
INSERT INTO `area` VALUES (2078, '启东市', 167, 0, 3, NULL);
INSERT INTO `area` VALUES (2079, '如东县', 167, 0, 3, NULL);
INSERT INTO `area` VALUES (2080, '如皋市', 167, 0, 3, NULL);
INSERT INTO `area` VALUES (2081, '崇川区', 167, 0, 3, NULL);
INSERT INTO `area` VALUES (2082, '海安县', 167, 0, 3, NULL);
INSERT INTO `area` VALUES (2083, '海门市', 167, 0, 3, NULL);
INSERT INTO `area` VALUES (2084, '港闸区', 167, 0, 3, NULL);
INSERT INTO `area` VALUES (2085, '通州市', 167, 0, 3, NULL);
INSERT INTO `area` VALUES (2086, '东海县', 168, 0, 3, NULL);
INSERT INTO `area` VALUES (2087, '新浦区', 168, 0, 3, NULL);
INSERT INTO `area` VALUES (2088, '海州区', 168, 0, 3, NULL);
INSERT INTO `area` VALUES (2089, '灌云县', 168, 0, 3, NULL);
INSERT INTO `area` VALUES (2090, '灌南县', 168, 0, 3, NULL);
INSERT INTO `area` VALUES (2091, '赣榆县', 168, 0, 3, NULL);
INSERT INTO `area` VALUES (2092, '连云区', 168, 0, 3, NULL);
INSERT INTO `area` VALUES (2093, '楚州区', 169, 0, 3, NULL);
INSERT INTO `area` VALUES (2094, '洪泽县', 169, 0, 3, NULL);
INSERT INTO `area` VALUES (2095, '涟水县', 169, 0, 3, NULL);
INSERT INTO `area` VALUES (2096, '淮阴区', 169, 0, 3, NULL);
INSERT INTO `area` VALUES (2097, '清河区', 169, 0, 3, NULL);
INSERT INTO `area` VALUES (2098, '清浦区', 169, 0, 3, NULL);
INSERT INTO `area` VALUES (2099, '盱眙县', 169, 0, 3, NULL);
INSERT INTO `area` VALUES (2100, '金湖县', 169, 0, 3, NULL);
INSERT INTO `area` VALUES (2101, '东台市', 170, 0, 3, NULL);
INSERT INTO `area` VALUES (2102, '亭湖区', 170, 0, 3, NULL);
INSERT INTO `area` VALUES (2103, '响水县', 170, 0, 3, NULL);
INSERT INTO `area` VALUES (2104, '大丰市', 170, 0, 3, NULL);
INSERT INTO `area` VALUES (2105, '射阳县', 170, 0, 3, NULL);
INSERT INTO `area` VALUES (2106, '建湖县', 170, 0, 3, NULL);
INSERT INTO `area` VALUES (2107, '滨海县', 170, 0, 3, NULL);
INSERT INTO `area` VALUES (2108, '盐都区', 170, 0, 3, NULL);
INSERT INTO `area` VALUES (2109, '阜宁县', 170, 0, 3, NULL);
INSERT INTO `area` VALUES (2110, '仪征市', 171, 0, 3, NULL);
INSERT INTO `area` VALUES (2111, '宝应县', 171, 0, 3, NULL);
INSERT INTO `area` VALUES (2112, '广陵区', 171, 0, 3, NULL);
INSERT INTO `area` VALUES (2113, '江都市', 171, 0, 3, NULL);
INSERT INTO `area` VALUES (2114, '维扬区', 171, 0, 3, NULL);
INSERT INTO `area` VALUES (2115, '邗江区', 171, 0, 3, NULL);
INSERT INTO `area` VALUES (2116, '高邮市', 171, 0, 3, NULL);
INSERT INTO `area` VALUES (2117, '丹徒区', 172, 0, 3, NULL);
INSERT INTO `area` VALUES (2118, '丹阳市', 172, 0, 3, NULL);
INSERT INTO `area` VALUES (2119, '京口区', 172, 0, 3, NULL);
INSERT INTO `area` VALUES (2120, '句容市', 172, 0, 3, NULL);
INSERT INTO `area` VALUES (2121, '扬中市', 172, 0, 3, NULL);
INSERT INTO `area` VALUES (2122, '润州区', 172, 0, 3, NULL);
INSERT INTO `area` VALUES (2123, '兴化市', 173, 0, 3, NULL);
INSERT INTO `area` VALUES (2124, '姜堰市', 173, 0, 3, NULL);
INSERT INTO `area` VALUES (2125, '泰兴市', 173, 0, 3, NULL);
INSERT INTO `area` VALUES (2126, '海陵区', 173, 0, 3, NULL);
INSERT INTO `area` VALUES (2127, '靖江市', 173, 0, 3, NULL);
INSERT INTO `area` VALUES (2128, '高港区', 173, 0, 3, NULL);
INSERT INTO `area` VALUES (2129, '宿城区', 174, 0, 3, NULL);
INSERT INTO `area` VALUES (2130, '宿豫区', 174, 0, 3, NULL);
INSERT INTO `area` VALUES (2131, '沭阳县', 174, 0, 3, NULL);
INSERT INTO `area` VALUES (2132, '泗洪县', 174, 0, 3, NULL);
INSERT INTO `area` VALUES (2133, '泗阳县', 174, 0, 3, NULL);
INSERT INTO `area` VALUES (2134, '上城区', 175, 0, 3, NULL);
INSERT INTO `area` VALUES (2135, '下城区', 175, 0, 3, NULL);
INSERT INTO `area` VALUES (2136, '临安市', 175, 0, 3, NULL);
INSERT INTO `area` VALUES (2137, '余杭区', 175, 0, 3, NULL);
INSERT INTO `area` VALUES (2138, '富阳市', 175, 0, 3, NULL);
INSERT INTO `area` VALUES (2139, '建德市', 175, 0, 3, NULL);
INSERT INTO `area` VALUES (2140, '拱墅区', 175, 0, 3, NULL);
INSERT INTO `area` VALUES (2141, '桐庐县', 175, 0, 3, NULL);
INSERT INTO `area` VALUES (2142, '江干区', 175, 0, 3, NULL);
INSERT INTO `area` VALUES (2143, '淳安县', 175, 0, 3, NULL);
INSERT INTO `area` VALUES (2144, '滨江区', 175, 0, 3, NULL);
INSERT INTO `area` VALUES (2145, '萧山区', 175, 0, 3, NULL);
INSERT INTO `area` VALUES (2146, '西湖区', 175, 0, 3, NULL);
INSERT INTO `area` VALUES (2147, '余姚市', 176, 0, 3, NULL);
INSERT INTO `area` VALUES (2148, '北仑区', 176, 0, 3, NULL);
INSERT INTO `area` VALUES (2149, '奉化市', 176, 0, 3, NULL);
INSERT INTO `area` VALUES (2150, '宁海县', 176, 0, 3, NULL);
INSERT INTO `area` VALUES (2151, '慈溪市', 176, 0, 3, NULL);
INSERT INTO `area` VALUES (2152, '江东区', 176, 0, 3, NULL);
INSERT INTO `area` VALUES (2153, '江北区', 176, 0, 3, NULL);
INSERT INTO `area` VALUES (2154, '海曙区', 176, 0, 3, NULL);
INSERT INTO `area` VALUES (2155, '象山县', 176, 0, 3, NULL);
INSERT INTO `area` VALUES (2156, '鄞州区', 176, 0, 3, NULL);
INSERT INTO `area` VALUES (2157, '镇海区', 176, 0, 3, NULL);
INSERT INTO `area` VALUES (2158, '乐清市', 177, 0, 3, NULL);
INSERT INTO `area` VALUES (2159, '平阳县', 177, 0, 3, NULL);
INSERT INTO `area` VALUES (2160, '文成县', 177, 0, 3, NULL);
INSERT INTO `area` VALUES (2161, '永嘉县', 177, 0, 3, NULL);
INSERT INTO `area` VALUES (2162, '泰顺县', 177, 0, 3, NULL);
INSERT INTO `area` VALUES (2163, '洞头县', 177, 0, 3, NULL);
INSERT INTO `area` VALUES (2164, '瑞安市', 177, 0, 3, NULL);
INSERT INTO `area` VALUES (2165, '瓯海区', 177, 0, 3, NULL);
INSERT INTO `area` VALUES (2166, '苍南县', 177, 0, 3, NULL);
INSERT INTO `area` VALUES (2167, '鹿城区', 177, 0, 3, NULL);
INSERT INTO `area` VALUES (2168, '龙湾区', 177, 0, 3, NULL);
INSERT INTO `area` VALUES (2169, '南湖区', 178, 0, 3, NULL);
INSERT INTO `area` VALUES (2170, '嘉善县', 178, 0, 3, NULL);
INSERT INTO `area` VALUES (2171, '平湖市', 178, 0, 3, NULL);
INSERT INTO `area` VALUES (2172, '桐乡市', 178, 0, 3, NULL);
INSERT INTO `area` VALUES (2173, '海宁市', 178, 0, 3, NULL);
INSERT INTO `area` VALUES (2174, '海盐县', 178, 0, 3, NULL);
INSERT INTO `area` VALUES (2175, '秀洲区', 178, 0, 3, NULL);
INSERT INTO `area` VALUES (2176, '南浔区', 179, 0, 3, NULL);
INSERT INTO `area` VALUES (2177, '吴兴区', 179, 0, 3, NULL);
INSERT INTO `area` VALUES (2178, '安吉县', 179, 0, 3, NULL);
INSERT INTO `area` VALUES (2179, '德清县', 179, 0, 3, NULL);
INSERT INTO `area` VALUES (2180, '长兴县', 179, 0, 3, NULL);
INSERT INTO `area` VALUES (2181, '上虞市', 180, 0, 3, NULL);
INSERT INTO `area` VALUES (2182, '嵊州市', 180, 0, 3, NULL);
INSERT INTO `area` VALUES (2183, '新昌县', 180, 0, 3, NULL);
INSERT INTO `area` VALUES (2184, '绍兴县', 180, 0, 3, NULL);
INSERT INTO `area` VALUES (2185, '诸暨市', 180, 0, 3, NULL);
INSERT INTO `area` VALUES (2186, '越城区', 180, 0, 3, NULL);
INSERT INTO `area` VALUES (2187, '定海区', 181, 0, 3, NULL);
INSERT INTO `area` VALUES (2188, '岱山县', 181, 0, 3, NULL);
INSERT INTO `area` VALUES (2189, '嵊泗县', 181, 0, 3, NULL);
INSERT INTO `area` VALUES (2190, '普陀区', 181, 0, 3, NULL);
INSERT INTO `area` VALUES (2191, '常山县', 182, 0, 3, NULL);
INSERT INTO `area` VALUES (2192, '开化县', 182, 0, 3, NULL);
INSERT INTO `area` VALUES (2193, '柯城区', 182, 0, 3, NULL);
INSERT INTO `area` VALUES (2194, '江山市', 182, 0, 3, NULL);
INSERT INTO `area` VALUES (2195, '衢江区', 182, 0, 3, NULL);
INSERT INTO `area` VALUES (2196, '龙游县', 182, 0, 3, NULL);
INSERT INTO `area` VALUES (2197, '东阳市', 183, 0, 3, NULL);
INSERT INTO `area` VALUES (2198, '义乌市', 183, 0, 3, NULL);
INSERT INTO `area` VALUES (2199, '兰溪市', 183, 0, 3, NULL);
INSERT INTO `area` VALUES (2200, '婺城区', 183, 0, 3, NULL);
INSERT INTO `area` VALUES (2201, '武义县', 183, 0, 3, NULL);
INSERT INTO `area` VALUES (2202, '永康市', 183, 0, 3, NULL);
INSERT INTO `area` VALUES (2203, '浦江县', 183, 0, 3, NULL);
INSERT INTO `area` VALUES (2204, '磐安县', 183, 0, 3, NULL);
INSERT INTO `area` VALUES (2205, '金东区', 183, 0, 3, NULL);
INSERT INTO `area` VALUES (2206, '三门县', 184, 0, 3, NULL);
INSERT INTO `area` VALUES (2207, '临海市', 184, 0, 3, NULL);
INSERT INTO `area` VALUES (2208, '仙居县', 184, 0, 3, NULL);
INSERT INTO `area` VALUES (2209, '天台县', 184, 0, 3, NULL);
INSERT INTO `area` VALUES (2210, '椒江区', 184, 0, 3, NULL);
INSERT INTO `area` VALUES (2211, '温岭市', 184, 0, 3, NULL);
INSERT INTO `area` VALUES (2212, '玉环县', 184, 0, 3, NULL);
INSERT INTO `area` VALUES (2213, '路桥区', 184, 0, 3, NULL);
INSERT INTO `area` VALUES (2214, '黄岩区', 184, 0, 3, NULL);
INSERT INTO `area` VALUES (2215, '云和县', 185, 0, 3, NULL);
INSERT INTO `area` VALUES (2216, '庆元县', 185, 0, 3, NULL);
INSERT INTO `area` VALUES (2217, '景宁畲族自治县', 185, 0, 3, NULL);
INSERT INTO `area` VALUES (2218, '松阳县', 185, 0, 3, NULL);
INSERT INTO `area` VALUES (2219, '缙云县', 185, 0, 3, NULL);
INSERT INTO `area` VALUES (2220, '莲都区', 185, 0, 3, NULL);
INSERT INTO `area` VALUES (2221, '遂昌县', 185, 0, 3, NULL);
INSERT INTO `area` VALUES (2222, '青田县', 185, 0, 3, NULL);
INSERT INTO `area` VALUES (2223, '龙泉市', 185, 0, 3, NULL);
INSERT INTO `area` VALUES (2224, '包河区', 186, 0, 3, NULL);
INSERT INTO `area` VALUES (2225, '庐阳区', 186, 0, 3, NULL);
INSERT INTO `area` VALUES (2226, '瑶海区', 186, 0, 3, NULL);
INSERT INTO `area` VALUES (2227, '肥东县', 186, 0, 3, NULL);
INSERT INTO `area` VALUES (2228, '肥西县', 186, 0, 3, NULL);
INSERT INTO `area` VALUES (2229, '蜀山区', 186, 0, 3, NULL);
INSERT INTO `area` VALUES (2230, '长丰县', 186, 0, 3, NULL);
INSERT INTO `area` VALUES (2231, '三山区', 187, 0, 3, NULL);
INSERT INTO `area` VALUES (2232, '南陵县', 187, 0, 3, NULL);
INSERT INTO `area` VALUES (2233, '弋江区', 187, 0, 3, NULL);
INSERT INTO `area` VALUES (2234, '繁昌县', 187, 0, 3, NULL);
INSERT INTO `area` VALUES (2235, '芜湖县', 187, 0, 3, NULL);
INSERT INTO `area` VALUES (2236, '镜湖区', 187, 0, 3, NULL);
INSERT INTO `area` VALUES (2237, '鸠江区', 187, 0, 3, NULL);
INSERT INTO `area` VALUES (2238, '五河县', 188, 0, 3, NULL);
INSERT INTO `area` VALUES (2239, '固镇县', 188, 0, 3, NULL);
INSERT INTO `area` VALUES (2240, '怀远县', 188, 0, 3, NULL);
INSERT INTO `area` VALUES (2241, '淮上区', 188, 0, 3, NULL);
INSERT INTO `area` VALUES (2242, '禹会区', 188, 0, 3, NULL);
INSERT INTO `area` VALUES (2243, '蚌山区', 188, 0, 3, NULL);
INSERT INTO `area` VALUES (2244, '龙子湖区', 188, 0, 3, NULL);
INSERT INTO `area` VALUES (2245, '八公山区', 189, 0, 3, NULL);
INSERT INTO `area` VALUES (2246, '凤台县', 189, 0, 3, NULL);
INSERT INTO `area` VALUES (2247, '大通区', 189, 0, 3, NULL);
INSERT INTO `area` VALUES (2248, '潘集区', 189, 0, 3, NULL);
INSERT INTO `area` VALUES (2249, '田家庵区', 189, 0, 3, NULL);
INSERT INTO `area` VALUES (2250, '谢家集区', 189, 0, 3, NULL);
INSERT INTO `area` VALUES (2251, '当涂县', 190, 0, 3, NULL);
INSERT INTO `area` VALUES (2252, '花山区', 190, 0, 3, NULL);
INSERT INTO `area` VALUES (2253, '金家庄区', 190, 0, 3, NULL);
INSERT INTO `area` VALUES (2254, '雨山区', 190, 0, 3, NULL);
INSERT INTO `area` VALUES (2255, '杜集区', 191, 0, 3, NULL);
INSERT INTO `area` VALUES (2256, '濉溪县', 191, 0, 3, NULL);
INSERT INTO `area` VALUES (2257, '烈山区', 191, 0, 3, NULL);
INSERT INTO `area` VALUES (2258, '相山区', 191, 0, 3, NULL);
INSERT INTO `area` VALUES (2259, '狮子山区', 192, 0, 3, NULL);
INSERT INTO `area` VALUES (2260, '郊区', 192, 0, 3, NULL);
INSERT INTO `area` VALUES (2261, '铜官山区', 192, 0, 3, NULL);
INSERT INTO `area` VALUES (2262, '铜陵县', 192, 0, 3, NULL);
INSERT INTO `area` VALUES (2263, '大观区', 193, 0, 3, NULL);
INSERT INTO `area` VALUES (2264, '太湖县', 193, 0, 3, NULL);
INSERT INTO `area` VALUES (2265, '宜秀区', 193, 0, 3, NULL);
INSERT INTO `area` VALUES (2266, '宿松县', 193, 0, 3, NULL);
INSERT INTO `area` VALUES (2267, '岳西县', 193, 0, 3, NULL);
INSERT INTO `area` VALUES (2268, '怀宁县', 193, 0, 3, NULL);
INSERT INTO `area` VALUES (2269, '望江县', 193, 0, 3, NULL);
INSERT INTO `area` VALUES (2270, '枞阳县', 193, 0, 3, NULL);
INSERT INTO `area` VALUES (2271, '桐城市', 193, 0, 3, NULL);
INSERT INTO `area` VALUES (2272, '潜山县', 193, 0, 3, NULL);
INSERT INTO `area` VALUES (2273, '迎江区', 193, 0, 3, NULL);
INSERT INTO `area` VALUES (2274, '休宁县', 194, 0, 3, NULL);
INSERT INTO `area` VALUES (2275, '屯溪区', 194, 0, 3, NULL);
INSERT INTO `area` VALUES (2276, '徽州区', 194, 0, 3, NULL);
INSERT INTO `area` VALUES (2277, '歙县', 194, 0, 3, NULL);
INSERT INTO `area` VALUES (2278, '祁门县', 194, 0, 3, NULL);
INSERT INTO `area` VALUES (2279, '黄山区', 194, 0, 3, NULL);
INSERT INTO `area` VALUES (2280, '黟县', 194, 0, 3, NULL);
INSERT INTO `area` VALUES (2281, '全椒县', 195, 0, 3, NULL);
INSERT INTO `area` VALUES (2282, '凤阳县', 195, 0, 3, NULL);
INSERT INTO `area` VALUES (2283, '南谯区', 195, 0, 3, NULL);
INSERT INTO `area` VALUES (2284, '天长市', 195, 0, 3, NULL);
INSERT INTO `area` VALUES (2285, '定远县', 195, 0, 3, NULL);
INSERT INTO `area` VALUES (2286, '明光市', 195, 0, 3, NULL);
INSERT INTO `area` VALUES (2287, '来安县', 195, 0, 3, NULL);
INSERT INTO `area` VALUES (2288, '琅玡区', 195, 0, 3, NULL);
INSERT INTO `area` VALUES (2289, '临泉县', 196, 0, 3, NULL);
INSERT INTO `area` VALUES (2290, '太和县', 196, 0, 3, NULL);
INSERT INTO `area` VALUES (2291, '界首市', 196, 0, 3, NULL);
INSERT INTO `area` VALUES (2292, '阜南县', 196, 0, 3, NULL);
INSERT INTO `area` VALUES (2293, '颍东区', 196, 0, 3, NULL);
INSERT INTO `area` VALUES (2294, '颍州区', 196, 0, 3, NULL);
INSERT INTO `area` VALUES (2295, '颍泉区', 196, 0, 3, NULL);
INSERT INTO `area` VALUES (2296, '颖上县', 196, 0, 3, NULL);
INSERT INTO `area` VALUES (2297, '埇桥区', 197, 0, 3, NULL);
INSERT INTO `area` VALUES (2298, '泗县辖', 197, 0, 3, NULL);
INSERT INTO `area` VALUES (2299, '灵璧县', 197, 0, 3, NULL);
INSERT INTO `area` VALUES (2300, '砀山县', 197, 0, 3, NULL);
INSERT INTO `area` VALUES (2301, '萧县', 197, 0, 3, NULL);
INSERT INTO `area` VALUES (2302, '含山县', 198, 0, 3, NULL);
INSERT INTO `area` VALUES (2303, '和县', 198, 0, 3, NULL);
INSERT INTO `area` VALUES (2304, '居巢区', 198, 0, 3, NULL);
INSERT INTO `area` VALUES (2305, '庐江县', 198, 0, 3, NULL);
INSERT INTO `area` VALUES (2306, '无为县', 198, 0, 3, NULL);
INSERT INTO `area` VALUES (2307, '寿县', 199, 0, 3, NULL);
INSERT INTO `area` VALUES (2308, '舒城县', 199, 0, 3, NULL);
INSERT INTO `area` VALUES (2309, '裕安区', 199, 0, 3, NULL);
INSERT INTO `area` VALUES (2310, '金安区', 199, 0, 3, NULL);
INSERT INTO `area` VALUES (2311, '金寨县', 199, 0, 3, NULL);
INSERT INTO `area` VALUES (2312, '霍山县', 199, 0, 3, NULL);
INSERT INTO `area` VALUES (2313, '霍邱县', 199, 0, 3, NULL);
INSERT INTO `area` VALUES (2314, '利辛县', 200, 0, 3, NULL);
INSERT INTO `area` VALUES (2315, '涡阳县', 200, 0, 3, NULL);
INSERT INTO `area` VALUES (2316, '蒙城县', 200, 0, 3, NULL);
INSERT INTO `area` VALUES (2317, '谯城区', 200, 0, 3, NULL);
INSERT INTO `area` VALUES (2318, '东至县', 201, 0, 3, NULL);
INSERT INTO `area` VALUES (2319, '石台县', 201, 0, 3, NULL);
INSERT INTO `area` VALUES (2320, '贵池区', 201, 0, 3, NULL);
INSERT INTO `area` VALUES (2321, '青阳县', 201, 0, 3, NULL);
INSERT INTO `area` VALUES (2322, '宁国市', 202, 0, 3, NULL);
INSERT INTO `area` VALUES (2323, '宣州区', 202, 0, 3, NULL);
INSERT INTO `area` VALUES (2324, '广德县', 202, 0, 3, NULL);
INSERT INTO `area` VALUES (2325, '旌德县', 202, 0, 3, NULL);
INSERT INTO `area` VALUES (2326, '泾县', 202, 0, 3, NULL);
INSERT INTO `area` VALUES (2327, '绩溪县', 202, 0, 3, NULL);
INSERT INTO `area` VALUES (2328, '郎溪县', 202, 0, 3, NULL);
INSERT INTO `area` VALUES (2329, '仓山区', 203, 0, 3, NULL);
INSERT INTO `area` VALUES (2330, '台江区', 203, 0, 3, NULL);
INSERT INTO `area` VALUES (2331, '平潭县', 203, 0, 3, NULL);
INSERT INTO `area` VALUES (2332, '晋安区', 203, 0, 3, NULL);
INSERT INTO `area` VALUES (2333, '永泰县', 203, 0, 3, NULL);
INSERT INTO `area` VALUES (2334, '福清市', 203, 0, 3, NULL);
INSERT INTO `area` VALUES (2335, '罗源县', 203, 0, 3, NULL);
INSERT INTO `area` VALUES (2336, '连江县', 203, 0, 3, NULL);
INSERT INTO `area` VALUES (2337, '长乐市', 203, 0, 3, NULL);
INSERT INTO `area` VALUES (2338, '闽侯县', 203, 0, 3, NULL);
INSERT INTO `area` VALUES (2339, '闽清县', 203, 0, 3, NULL);
INSERT INTO `area` VALUES (2340, '马尾区', 203, 0, 3, NULL);
INSERT INTO `area` VALUES (2341, '鼓楼区', 203, 0, 3, NULL);
INSERT INTO `area` VALUES (2342, '同安区', 204, 0, 3, NULL);
INSERT INTO `area` VALUES (2343, '思明区', 204, 0, 3, NULL);
INSERT INTO `area` VALUES (2344, '海沧区', 204, 0, 3, NULL);
INSERT INTO `area` VALUES (2345, '湖里区', 204, 0, 3, NULL);
INSERT INTO `area` VALUES (2346, '翔安区', 204, 0, 3, NULL);
INSERT INTO `area` VALUES (2347, '集美区', 204, 0, 3, NULL);
INSERT INTO `area` VALUES (2348, '仙游县', 205, 0, 3, NULL);
INSERT INTO `area` VALUES (2349, '城厢区', 205, 0, 3, NULL);
INSERT INTO `area` VALUES (2350, '涵江区', 205, 0, 3, NULL);
INSERT INTO `area` VALUES (2351, '秀屿区', 205, 0, 3, NULL);
INSERT INTO `area` VALUES (2352, '荔城区', 205, 0, 3, NULL);
INSERT INTO `area` VALUES (2353, '三元区', 206, 0, 3, NULL);
INSERT INTO `area` VALUES (2354, '大田县', 206, 0, 3, NULL);
INSERT INTO `area` VALUES (2355, '宁化县', 206, 0, 3, NULL);
INSERT INTO `area` VALUES (2356, '将乐县', 206, 0, 3, NULL);
INSERT INTO `area` VALUES (2357, '尤溪县', 206, 0, 3, NULL);
INSERT INTO `area` VALUES (2358, '建宁县', 206, 0, 3, NULL);
INSERT INTO `area` VALUES (2359, '明溪县', 206, 0, 3, NULL);
INSERT INTO `area` VALUES (2360, '梅列区', 206, 0, 3, NULL);
INSERT INTO `area` VALUES (2361, '永安市', 206, 0, 3, NULL);
INSERT INTO `area` VALUES (2362, '沙县', 206, 0, 3, NULL);
INSERT INTO `area` VALUES (2363, '泰宁县', 206, 0, 3, NULL);
INSERT INTO `area` VALUES (2364, '清流县', 206, 0, 3, NULL);
INSERT INTO `area` VALUES (2365, '丰泽区', 207, 0, 3, NULL);
INSERT INTO `area` VALUES (2366, '南安市', 207, 0, 3, NULL);
INSERT INTO `area` VALUES (2367, '安溪县', 207, 0, 3, NULL);
INSERT INTO `area` VALUES (2368, '德化县', 207, 0, 3, NULL);
INSERT INTO `area` VALUES (2369, '惠安县', 207, 0, 3, NULL);
INSERT INTO `area` VALUES (2370, '晋江市', 207, 0, 3, NULL);
INSERT INTO `area` VALUES (2371, '永春县', 207, 0, 3, NULL);
INSERT INTO `area` VALUES (2372, '泉港区', 207, 0, 3, NULL);
INSERT INTO `area` VALUES (2373, '洛江区', 207, 0, 3, NULL);
INSERT INTO `area` VALUES (2374, '石狮市', 207, 0, 3, NULL);
INSERT INTO `area` VALUES (2375, '金门县', 207, 0, 3, NULL);
INSERT INTO `area` VALUES (2376, '鲤城区', 207, 0, 3, NULL);
INSERT INTO `area` VALUES (2377, '东山县', 208, 0, 3, NULL);
INSERT INTO `area` VALUES (2378, '云霄县', 208, 0, 3, NULL);
INSERT INTO `area` VALUES (2379, '华安县', 208, 0, 3, NULL);
INSERT INTO `area` VALUES (2380, '南靖县', 208, 0, 3, NULL);
INSERT INTO `area` VALUES (2381, '平和县', 208, 0, 3, NULL);
INSERT INTO `area` VALUES (2382, '漳浦县', 208, 0, 3, NULL);
INSERT INTO `area` VALUES (2383, '芗城区', 208, 0, 3, NULL);
INSERT INTO `area` VALUES (2384, '诏安县', 208, 0, 3, NULL);
INSERT INTO `area` VALUES (2385, '长泰县', 208, 0, 3, NULL);
INSERT INTO `area` VALUES (2386, '龙文区', 208, 0, 3, NULL);
INSERT INTO `area` VALUES (2387, '龙海市', 208, 0, 3, NULL);
INSERT INTO `area` VALUES (2388, '光泽县', 209, 0, 3, NULL);
INSERT INTO `area` VALUES (2389, '延平区', 209, 0, 3, NULL);
INSERT INTO `area` VALUES (2390, '建瓯市', 209, 0, 3, NULL);
INSERT INTO `area` VALUES (2391, '建阳市', 209, 0, 3, NULL);
INSERT INTO `area` VALUES (2392, '政和县', 209, 0, 3, NULL);
INSERT INTO `area` VALUES (2393, '松溪县', 209, 0, 3, NULL);
INSERT INTO `area` VALUES (2394, '武夷山市', 209, 0, 3, NULL);
INSERT INTO `area` VALUES (2395, '浦城县', 209, 0, 3, NULL);
INSERT INTO `area` VALUES (2396, '邵武市', 209, 0, 3, NULL);
INSERT INTO `area` VALUES (2397, '顺昌县', 209, 0, 3, NULL);
INSERT INTO `area` VALUES (2398, '上杭县', 210, 0, 3, NULL);
INSERT INTO `area` VALUES (2399, '新罗区', 210, 0, 3, NULL);
INSERT INTO `area` VALUES (2400, '武平县', 210, 0, 3, NULL);
INSERT INTO `area` VALUES (2401, '永定县', 210, 0, 3, NULL);
INSERT INTO `area` VALUES (2402, '漳平市', 210, 0, 3, NULL);
INSERT INTO `area` VALUES (2403, '连城县', 210, 0, 3, NULL);
INSERT INTO `area` VALUES (2404, '长汀县', 210, 0, 3, NULL);
INSERT INTO `area` VALUES (2405, '古田县', 211, 0, 3, NULL);
INSERT INTO `area` VALUES (2406, '周宁县', 211, 0, 3, NULL);
INSERT INTO `area` VALUES (2407, '寿宁县', 211, 0, 3, NULL);
INSERT INTO `area` VALUES (2408, '屏南县', 211, 0, 3, NULL);
INSERT INTO `area` VALUES (2409, '柘荣县', 211, 0, 3, NULL);
INSERT INTO `area` VALUES (2410, '福安市', 211, 0, 3, NULL);
INSERT INTO `area` VALUES (2411, '福鼎市', 211, 0, 3, NULL);
INSERT INTO `area` VALUES (2412, '蕉城区', 211, 0, 3, NULL);
INSERT INTO `area` VALUES (2413, '霞浦县', 211, 0, 3, NULL);
INSERT INTO `area` VALUES (2414, '东湖区', 212, 0, 3, NULL);
INSERT INTO `area` VALUES (2415, '南昌县', 212, 0, 3, NULL);
INSERT INTO `area` VALUES (2416, '安义县', 212, 0, 3, NULL);
INSERT INTO `area` VALUES (2417, '新建县', 212, 0, 3, NULL);
INSERT INTO `area` VALUES (2418, '湾里区', 212, 0, 3, NULL);
INSERT INTO `area` VALUES (2419, '西湖区', 212, 0, 3, NULL);
INSERT INTO `area` VALUES (2420, '进贤县', 212, 0, 3, NULL);
INSERT INTO `area` VALUES (2421, '青云谱区', 212, 0, 3, NULL);
INSERT INTO `area` VALUES (2422, '青山湖区', 212, 0, 3, NULL);
INSERT INTO `area` VALUES (2423, '乐平市', 213, 0, 3, NULL);
INSERT INTO `area` VALUES (2424, '昌江区', 213, 0, 3, NULL);
INSERT INTO `area` VALUES (2425, '浮梁县', 213, 0, 3, NULL);
INSERT INTO `area` VALUES (2426, '珠山区', 213, 0, 3, NULL);
INSERT INTO `area` VALUES (2427, '上栗县', 214, 0, 3, NULL);
INSERT INTO `area` VALUES (2428, '安源区', 214, 0, 3, NULL);
INSERT INTO `area` VALUES (2429, '湘东区', 214, 0, 3, NULL);
INSERT INTO `area` VALUES (2430, '芦溪县', 214, 0, 3, NULL);
INSERT INTO `area` VALUES (2431, '莲花县', 214, 0, 3, NULL);
INSERT INTO `area` VALUES (2432, '九江县', 215, 0, 3, NULL);
INSERT INTO `area` VALUES (2433, '修水县', 215, 0, 3, NULL);
INSERT INTO `area` VALUES (2434, '庐山区', 215, 0, 3, NULL);
INSERT INTO `area` VALUES (2435, '彭泽县', 215, 0, 3, NULL);
INSERT INTO `area` VALUES (2436, '德安县', 215, 0, 3, NULL);
INSERT INTO `area` VALUES (2437, '星子县', 215, 0, 3, NULL);
INSERT INTO `area` VALUES (2438, '武宁县', 215, 0, 3, NULL);
INSERT INTO `area` VALUES (2439, '永修县', 215, 0, 3, NULL);
INSERT INTO `area` VALUES (2440, '浔阳区', 215, 0, 3, NULL);
INSERT INTO `area` VALUES (2441, '湖口县', 215, 0, 3, NULL);
INSERT INTO `area` VALUES (2442, '瑞昌市', 215, 0, 3, NULL);
INSERT INTO `area` VALUES (2443, '都昌县', 215, 0, 3, NULL);
INSERT INTO `area` VALUES (2444, '分宜县', 216, 0, 3, NULL);
INSERT INTO `area` VALUES (2445, '渝水区', 216, 0, 3, NULL);
INSERT INTO `area` VALUES (2446, '余江县', 217, 0, 3, NULL);
INSERT INTO `area` VALUES (2447, '月湖区', 217, 0, 3, NULL);
INSERT INTO `area` VALUES (2448, '贵溪市', 217, 0, 3, NULL);
INSERT INTO `area` VALUES (2449, '上犹县', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2450, '于都县', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2451, '会昌县', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2452, '信丰县', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2453, '全南县', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2454, '兴国县', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2455, '南康市', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2456, '大余县', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2457, '宁都县', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2458, '安远县', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2459, '定南县', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2460, '寻乌县', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2461, '崇义县', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2462, '瑞金市', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2463, '石城县', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2464, '章贡区', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2465, '赣县', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2466, '龙南县', 218, 0, 3, NULL);
INSERT INTO `area` VALUES (2467, '万安县', 219, 0, 3, NULL);
INSERT INTO `area` VALUES (2468, '井冈山市', 219, 0, 3, NULL);
INSERT INTO `area` VALUES (2469, '吉安县', 219, 0, 3, NULL);
INSERT INTO `area` VALUES (2470, '吉州区', 219, 0, 3, NULL);
INSERT INTO `area` VALUES (2471, '吉水县', 219, 0, 3, NULL);
INSERT INTO `area` VALUES (2472, '安福县', 219, 0, 3, NULL);
INSERT INTO `area` VALUES (2473, '峡江县', 219, 0, 3, NULL);
INSERT INTO `area` VALUES (2474, '新干县', 219, 0, 3, NULL);
INSERT INTO `area` VALUES (2475, '永丰县', 219, 0, 3, NULL);
INSERT INTO `area` VALUES (2476, '永新县', 219, 0, 3, NULL);
INSERT INTO `area` VALUES (2477, '泰和县', 219, 0, 3, NULL);
INSERT INTO `area` VALUES (2478, '遂川县', 219, 0, 3, NULL);
INSERT INTO `area` VALUES (2479, '青原区', 219, 0, 3, NULL);
INSERT INTO `area` VALUES (2480, '万载县', 220, 0, 3, NULL);
INSERT INTO `area` VALUES (2481, '上高县', 220, 0, 3, NULL);
INSERT INTO `area` VALUES (2482, '丰城市', 220, 0, 3, NULL);
INSERT INTO `area` VALUES (2483, '奉新县', 220, 0, 3, NULL);
INSERT INTO `area` VALUES (2484, '宜丰县', 220, 0, 3, NULL);
INSERT INTO `area` VALUES (2485, '樟树市', 220, 0, 3, NULL);
INSERT INTO `area` VALUES (2486, '袁州区', 220, 0, 3, NULL);
INSERT INTO `area` VALUES (2487, '铜鼓县', 220, 0, 3, NULL);
INSERT INTO `area` VALUES (2488, '靖安县', 220, 0, 3, NULL);
INSERT INTO `area` VALUES (2489, '高安市', 220, 0, 3, NULL);
INSERT INTO `area` VALUES (2490, '东乡县', 221, 0, 3, NULL);
INSERT INTO `area` VALUES (2491, '临川区', 221, 0, 3, NULL);
INSERT INTO `area` VALUES (2492, '乐安县', 221, 0, 3, NULL);
INSERT INTO `area` VALUES (2493, '南丰县', 221, 0, 3, NULL);
INSERT INTO `area` VALUES (2494, '南城县', 221, 0, 3, NULL);
INSERT INTO `area` VALUES (2495, '宜黄县', 221, 0, 3, NULL);
INSERT INTO `area` VALUES (2496, '崇仁县', 221, 0, 3, NULL);
INSERT INTO `area` VALUES (2497, '广昌县', 221, 0, 3, NULL);
INSERT INTO `area` VALUES (2498, '资溪县', 221, 0, 3, NULL);
INSERT INTO `area` VALUES (2499, '金溪县', 221, 0, 3, NULL);
INSERT INTO `area` VALUES (2500, '黎川县', 221, 0, 3, NULL);
INSERT INTO `area` VALUES (2501, '万年县', 222, 0, 3, NULL);
INSERT INTO `area` VALUES (2502, '上饶县', 222, 0, 3, NULL);
INSERT INTO `area` VALUES (2503, '余干县', 222, 0, 3, NULL);
INSERT INTO `area` VALUES (2504, '信州区', 222, 0, 3, NULL);
INSERT INTO `area` VALUES (2505, '婺源县', 222, 0, 3, NULL);
INSERT INTO `area` VALUES (2506, '广丰县', 222, 0, 3, NULL);
INSERT INTO `area` VALUES (2507, '弋阳县', 222, 0, 3, NULL);
INSERT INTO `area` VALUES (2508, '德兴市', 222, 0, 3, NULL);
INSERT INTO `area` VALUES (2509, '横峰县', 222, 0, 3, NULL);
INSERT INTO `area` VALUES (2510, '玉山县', 222, 0, 3, NULL);
INSERT INTO `area` VALUES (2511, '鄱阳县', 222, 0, 3, NULL);
INSERT INTO `area` VALUES (2512, '铅山县', 222, 0, 3, NULL);
INSERT INTO `area` VALUES (2513, '历下区', 223, 0, 3, NULL);
INSERT INTO `area` VALUES (2514, '历城区', 223, 0, 3, NULL);
INSERT INTO `area` VALUES (2515, '商河县', 223, 0, 3, NULL);
INSERT INTO `area` VALUES (2516, '天桥区', 223, 0, 3, NULL);
INSERT INTO `area` VALUES (2517, '市中区', 223, 0, 3, NULL);
INSERT INTO `area` VALUES (2518, '平阴县', 223, 0, 3, NULL);
INSERT INTO `area` VALUES (2519, '槐荫区', 223, 0, 3, NULL);
INSERT INTO `area` VALUES (2520, '济阳县', 223, 0, 3, NULL);
INSERT INTO `area` VALUES (2521, '章丘市', 223, 0, 3, NULL);
INSERT INTO `area` VALUES (2522, '长清区', 223, 0, 3, NULL);
INSERT INTO `area` VALUES (2523, '即墨市', 224, 0, 3, NULL);
INSERT INTO `area` VALUES (2524, '四方区', 224, 0, 3, NULL);
INSERT INTO `area` VALUES (2525, '城阳区', 224, 0, 3, NULL);
INSERT INTO `area` VALUES (2526, '崂山区', 224, 0, 3, NULL);
INSERT INTO `area` VALUES (2527, '市北区', 224, 0, 3, NULL);
INSERT INTO `area` VALUES (2528, '市南区', 224, 0, 3, NULL);
INSERT INTO `area` VALUES (2529, '平度市', 224, 0, 3, NULL);
INSERT INTO `area` VALUES (2530, '李沧区', 224, 0, 3, NULL);
INSERT INTO `area` VALUES (2531, '胶南市', 224, 0, 3, NULL);
INSERT INTO `area` VALUES (2532, '胶州市', 224, 0, 3, NULL);
INSERT INTO `area` VALUES (2533, '莱西市', 224, 0, 3, NULL);
INSERT INTO `area` VALUES (2534, '黄岛区', 224, 0, 3, NULL);
INSERT INTO `area` VALUES (2535, '临淄区', 225, 0, 3, NULL);
INSERT INTO `area` VALUES (2536, '博山区', 225, 0, 3, NULL);
INSERT INTO `area` VALUES (2537, '周村区', 225, 0, 3, NULL);
INSERT INTO `area` VALUES (2538, '张店区', 225, 0, 3, NULL);
INSERT INTO `area` VALUES (2539, '桓台县', 225, 0, 3, NULL);
INSERT INTO `area` VALUES (2540, '沂源县', 225, 0, 3, NULL);
INSERT INTO `area` VALUES (2541, '淄川区', 225, 0, 3, NULL);
INSERT INTO `area` VALUES (2542, '高青县', 225, 0, 3, NULL);
INSERT INTO `area` VALUES (2543, '台儿庄区', 226, 0, 3, NULL);
INSERT INTO `area` VALUES (2544, '山亭区', 226, 0, 3, NULL);
INSERT INTO `area` VALUES (2545, '峄城区', 226, 0, 3, NULL);
INSERT INTO `area` VALUES (2546, '市中区', 226, 0, 3, NULL);
INSERT INTO `area` VALUES (2547, '滕州市', 226, 0, 3, NULL);
INSERT INTO `area` VALUES (2548, '薛城区', 226, 0, 3, NULL);
INSERT INTO `area` VALUES (2549, '东营区', 227, 0, 3, NULL);
INSERT INTO `area` VALUES (2550, '利津县', 227, 0, 3, NULL);
INSERT INTO `area` VALUES (2551, '垦利县', 227, 0, 3, NULL);
INSERT INTO `area` VALUES (2552, '广饶县', 227, 0, 3, NULL);
INSERT INTO `area` VALUES (2553, '河口区', 227, 0, 3, NULL);
INSERT INTO `area` VALUES (2554, '招远市', 228, 0, 3, NULL);
INSERT INTO `area` VALUES (2555, '栖霞市', 228, 0, 3, NULL);
INSERT INTO `area` VALUES (2556, '海阳市', 228, 0, 3, NULL);
INSERT INTO `area` VALUES (2557, '牟平区', 228, 0, 3, NULL);
INSERT INTO `area` VALUES (2558, '福山区', 228, 0, 3, NULL);
INSERT INTO `area` VALUES (2559, '芝罘区', 228, 0, 3, NULL);
INSERT INTO `area` VALUES (2560, '莱山区', 228, 0, 3, NULL);
INSERT INTO `area` VALUES (2561, '莱州市', 228, 0, 3, NULL);
INSERT INTO `area` VALUES (2562, '莱阳市', 228, 0, 3, NULL);
INSERT INTO `area` VALUES (2563, '蓬莱市', 228, 0, 3, NULL);
INSERT INTO `area` VALUES (2564, '长岛县', 228, 0, 3, NULL);
INSERT INTO `area` VALUES (2565, '龙口市', 228, 0, 3, NULL);
INSERT INTO `area` VALUES (2566, '临朐县', 229, 0, 3, NULL);
INSERT INTO `area` VALUES (2567, '坊子区', 229, 0, 3, NULL);
INSERT INTO `area` VALUES (2568, '奎文区', 229, 0, 3, NULL);
INSERT INTO `area` VALUES (2569, '安丘市', 229, 0, 3, NULL);
INSERT INTO `area` VALUES (2570, '寒亭区', 229, 0, 3, NULL);
INSERT INTO `area` VALUES (2571, '寿光市', 229, 0, 3, NULL);
INSERT INTO `area` VALUES (2572, '昌乐县', 229, 0, 3, NULL);
INSERT INTO `area` VALUES (2573, '昌邑市', 229, 0, 3, NULL);
INSERT INTO `area` VALUES (2574, '潍城区', 229, 0, 3, NULL);
INSERT INTO `area` VALUES (2575, '诸城市', 229, 0, 3, NULL);
INSERT INTO `area` VALUES (2576, '青州市', 229, 0, 3, NULL);
INSERT INTO `area` VALUES (2577, '高密市', 229, 0, 3, NULL);
INSERT INTO `area` VALUES (2578, '任城区', 230, 0, 3, NULL);
INSERT INTO `area` VALUES (2579, '兖州市', 230, 0, 3, NULL);
INSERT INTO `area` VALUES (2580, '嘉祥县', 230, 0, 3, NULL);
INSERT INTO `area` VALUES (2581, '市中区', 230, 0, 3, NULL);
INSERT INTO `area` VALUES (2582, '微山县', 230, 0, 3, NULL);
INSERT INTO `area` VALUES (2583, '曲阜市', 230, 0, 3, NULL);
INSERT INTO `area` VALUES (2584, '梁山县', 230, 0, 3, NULL);
INSERT INTO `area` VALUES (2585, '汶上县', 230, 0, 3, NULL);
INSERT INTO `area` VALUES (2586, '泗水县', 230, 0, 3, NULL);
INSERT INTO `area` VALUES (2587, '邹城市', 230, 0, 3, NULL);
INSERT INTO `area` VALUES (2588, '金乡县', 230, 0, 3, NULL);
INSERT INTO `area` VALUES (2589, '鱼台县', 230, 0, 3, NULL);
INSERT INTO `area` VALUES (2590, '东平县', 231, 0, 3, NULL);
INSERT INTO `area` VALUES (2591, '宁阳县', 231, 0, 3, NULL);
INSERT INTO `area` VALUES (2592, '岱岳区', 231, 0, 3, NULL);
INSERT INTO `area` VALUES (2593, '新泰市', 231, 0, 3, NULL);
INSERT INTO `area` VALUES (2594, '泰山区', 231, 0, 3, NULL);
INSERT INTO `area` VALUES (2595, '肥城市', 231, 0, 3, NULL);
INSERT INTO `area` VALUES (2596, '乳山市', 232, 0, 3, NULL);
INSERT INTO `area` VALUES (2597, '文登市', 232, 0, 3, NULL);
INSERT INTO `area` VALUES (2598, '环翠区', 232, 0, 3, NULL);
INSERT INTO `area` VALUES (2599, '荣成市', 232, 0, 3, NULL);
INSERT INTO `area` VALUES (2600, '东港区', 233, 0, 3, NULL);
INSERT INTO `area` VALUES (2601, '五莲县', 233, 0, 3, NULL);
INSERT INTO `area` VALUES (2602, '岚山区', 233, 0, 3, NULL);
INSERT INTO `area` VALUES (2603, '莒县', 233, 0, 3, NULL);
INSERT INTO `area` VALUES (2604, '莱城区', 234, 0, 3, NULL);
INSERT INTO `area` VALUES (2605, '钢城区', 234, 0, 3, NULL);
INSERT INTO `area` VALUES (2606, '临沭县', 235, 0, 3, NULL);
INSERT INTO `area` VALUES (2607, '兰山区', 235, 0, 3, NULL);
INSERT INTO `area` VALUES (2608, '平邑县', 235, 0, 3, NULL);
INSERT INTO `area` VALUES (2609, '沂南县', 235, 0, 3, NULL);
INSERT INTO `area` VALUES (2610, '沂水县', 235, 0, 3, NULL);
INSERT INTO `area` VALUES (2611, '河东区', 235, 0, 3, NULL);
INSERT INTO `area` VALUES (2612, '罗庄区', 235, 0, 3, NULL);
INSERT INTO `area` VALUES (2613, '苍山县', 235, 0, 3, NULL);
INSERT INTO `area` VALUES (2614, '莒南县', 235, 0, 3, NULL);
INSERT INTO `area` VALUES (2615, '蒙阴县', 235, 0, 3, NULL);
INSERT INTO `area` VALUES (2616, '费县', 235, 0, 3, NULL);
INSERT INTO `area` VALUES (2617, '郯城县', 235, 0, 3, NULL);
INSERT INTO `area` VALUES (2618, '临邑县', 236, 0, 3, NULL);
INSERT INTO `area` VALUES (2619, '乐陵市', 236, 0, 3, NULL);
INSERT INTO `area` VALUES (2620, '夏津县', 236, 0, 3, NULL);
INSERT INTO `area` VALUES (2621, '宁津县', 236, 0, 3, NULL);
INSERT INTO `area` VALUES (2622, '平原县', 236, 0, 3, NULL);
INSERT INTO `area` VALUES (2623, '庆云县', 236, 0, 3, NULL);
INSERT INTO `area` VALUES (2624, '德城区', 236, 0, 3, NULL);
INSERT INTO `area` VALUES (2625, '武城县', 236, 0, 3, NULL);
INSERT INTO `area` VALUES (2626, '禹城市', 236, 0, 3, NULL);
INSERT INTO `area` VALUES (2627, '陵县', 236, 0, 3, NULL);
INSERT INTO `area` VALUES (2628, '齐河县', 236, 0, 3, NULL);
INSERT INTO `area` VALUES (2629, '东昌府区', 237, 0, 3, NULL);
INSERT INTO `area` VALUES (2630, '东阿县', 237, 0, 3, NULL);
INSERT INTO `area` VALUES (2631, '临清市', 237, 0, 3, NULL);
INSERT INTO `area` VALUES (2632, '冠县', 237, 0, 3, NULL);
INSERT INTO `area` VALUES (2633, '茌平县', 237, 0, 3, NULL);
INSERT INTO `area` VALUES (2634, '莘县', 237, 0, 3, NULL);
INSERT INTO `area` VALUES (2635, '阳谷县', 237, 0, 3, NULL);
INSERT INTO `area` VALUES (2636, '高唐县', 237, 0, 3, NULL);
INSERT INTO `area` VALUES (2637, '博兴县', 238, 0, 3, NULL);
INSERT INTO `area` VALUES (2638, '惠民县', 238, 0, 3, NULL);
INSERT INTO `area` VALUES (2639, '无棣县', 238, 0, 3, NULL);
INSERT INTO `area` VALUES (2640, '沾化县', 238, 0, 3, NULL);
INSERT INTO `area` VALUES (2641, '滨城区', 238, 0, 3, NULL);
INSERT INTO `area` VALUES (2642, '邹平县', 238, 0, 3, NULL);
INSERT INTO `area` VALUES (2643, '阳信县', 238, 0, 3, NULL);
INSERT INTO `area` VALUES (2644, '东明县', 239, 0, 3, NULL);
INSERT INTO `area` VALUES (2645, '单县', 239, 0, 3, NULL);
INSERT INTO `area` VALUES (2646, '定陶县', 239, 0, 3, NULL);
INSERT INTO `area` VALUES (2647, '巨野县', 239, 0, 3, NULL);
INSERT INTO `area` VALUES (2648, '成武县', 239, 0, 3, NULL);
INSERT INTO `area` VALUES (2649, '曹县', 239, 0, 3, NULL);
INSERT INTO `area` VALUES (2650, '牡丹区', 239, 0, 3, NULL);
INSERT INTO `area` VALUES (2651, '郓城县', 239, 0, 3, NULL);
INSERT INTO `area` VALUES (2652, '鄄城县', 239, 0, 3, NULL);
INSERT INTO `area` VALUES (2653, '上街区', 240, 0, 3, NULL);
INSERT INTO `area` VALUES (2654, '中原区', 240, 0, 3, NULL);
INSERT INTO `area` VALUES (2655, '中牟县', 240, 0, 3, NULL);
INSERT INTO `area` VALUES (2656, '二七区', 240, 0, 3, NULL);
INSERT INTO `area` VALUES (2657, '巩义市', 240, 0, 3, NULL);
INSERT INTO `area` VALUES (2658, '惠济区', 240, 0, 3, NULL);
INSERT INTO `area` VALUES (2659, '新密市', 240, 0, 3, NULL);
INSERT INTO `area` VALUES (2660, '新郑市', 240, 0, 3, NULL);
INSERT INTO `area` VALUES (2661, '登封市', 240, 0, 3, NULL);
INSERT INTO `area` VALUES (2662, '管城回族区', 240, 0, 3, NULL);
INSERT INTO `area` VALUES (2663, '荥阳市', 240, 0, 3, NULL);
INSERT INTO `area` VALUES (2664, '金水区', 240, 0, 3, NULL);
INSERT INTO `area` VALUES (2665, '兰考县', 241, 0, 3, NULL);
INSERT INTO `area` VALUES (2666, '尉氏县', 241, 0, 3, NULL);
INSERT INTO `area` VALUES (2667, '开封县', 241, 0, 3, NULL);
INSERT INTO `area` VALUES (2668, '杞县', 241, 0, 3, NULL);
INSERT INTO `area` VALUES (2669, '禹王台区', 241, 0, 3, NULL);
INSERT INTO `area` VALUES (2670, '通许县', 241, 0, 3, NULL);
INSERT INTO `area` VALUES (2671, '金明区', 241, 0, 3, NULL);
INSERT INTO `area` VALUES (2672, '顺河回族区', 241, 0, 3, NULL);
INSERT INTO `area` VALUES (2673, '鼓楼区', 241, 0, 3, NULL);
INSERT INTO `area` VALUES (2674, '龙亭区', 241, 0, 3, NULL);
INSERT INTO `area` VALUES (2675, '伊川县', 242, 0, 3, NULL);
INSERT INTO `area` VALUES (2676, '偃师市', 242, 0, 3, NULL);
INSERT INTO `area` VALUES (2677, '吉利区', 242, 0, 3, NULL);
INSERT INTO `area` VALUES (2678, '孟津县', 242, 0, 3, NULL);
INSERT INTO `area` VALUES (2679, '宜阳县', 242, 0, 3, NULL);
INSERT INTO `area` VALUES (2680, '嵩县', 242, 0, 3, NULL);
INSERT INTO `area` VALUES (2681, '新安县', 242, 0, 3, NULL);
INSERT INTO `area` VALUES (2682, '栾川县', 242, 0, 3, NULL);
INSERT INTO `area` VALUES (2683, '汝阳县', 242, 0, 3, NULL);
INSERT INTO `area` VALUES (2684, '洛宁县', 242, 0, 3, NULL);
INSERT INTO `area` VALUES (2685, '洛龙区', 242, 0, 3, NULL);
INSERT INTO `area` VALUES (2686, '涧西区', 242, 0, 3, NULL);
INSERT INTO `area` VALUES (2687, '瀍河回族区', 242, 0, 3, NULL);
INSERT INTO `area` VALUES (2688, '老城区', 242, 0, 3, NULL);
INSERT INTO `area` VALUES (2689, '西工区', 242, 0, 3, NULL);
INSERT INTO `area` VALUES (2690, '卫东区', 243, 0, 3, NULL);
INSERT INTO `area` VALUES (2691, '叶县', 243, 0, 3, NULL);
INSERT INTO `area` VALUES (2692, '宝丰县', 243, 0, 3, NULL);
INSERT INTO `area` VALUES (2693, '新华区', 243, 0, 3, NULL);
INSERT INTO `area` VALUES (2694, '汝州市', 243, 0, 3, NULL);
INSERT INTO `area` VALUES (2695, '湛河区', 243, 0, 3, NULL);
INSERT INTO `area` VALUES (2696, '石龙区', 243, 0, 3, NULL);
INSERT INTO `area` VALUES (2697, '舞钢市', 243, 0, 3, NULL);
INSERT INTO `area` VALUES (2698, '郏县', 243, 0, 3, NULL);
INSERT INTO `area` VALUES (2699, '鲁山县', 243, 0, 3, NULL);
INSERT INTO `area` VALUES (2700, '内黄县', 244, 0, 3, NULL);
INSERT INTO `area` VALUES (2701, '北关区', 244, 0, 3, NULL);
INSERT INTO `area` VALUES (2702, '安阳县', 244, 0, 3, NULL);
INSERT INTO `area` VALUES (2703, '文峰区', 244, 0, 3, NULL);
INSERT INTO `area` VALUES (2704, '林州市', 244, 0, 3, NULL);
INSERT INTO `area` VALUES (2705, '殷都区', 244, 0, 3, NULL);
INSERT INTO `area` VALUES (2706, '汤阴县', 244, 0, 3, NULL);
INSERT INTO `area` VALUES (2707, '滑县', 244, 0, 3, NULL);
INSERT INTO `area` VALUES (2708, '龙安区', 244, 0, 3, NULL);
INSERT INTO `area` VALUES (2709, '山城区', 245, 0, 3, NULL);
INSERT INTO `area` VALUES (2710, '浚县', 245, 0, 3, NULL);
INSERT INTO `area` VALUES (2711, '淇县', 245, 0, 3, NULL);
INSERT INTO `area` VALUES (2712, '淇滨区', 245, 0, 3, NULL);
INSERT INTO `area` VALUES (2713, '鹤山区', 245, 0, 3, NULL);
INSERT INTO `area` VALUES (2714, '凤泉区', 246, 0, 3, NULL);
INSERT INTO `area` VALUES (2715, '卫滨区', 246, 0, 3, NULL);
INSERT INTO `area` VALUES (2716, '卫辉市', 246, 0, 3, NULL);
INSERT INTO `area` VALUES (2717, '原阳县', 246, 0, 3, NULL);
INSERT INTO `area` VALUES (2718, '封丘县', 246, 0, 3, NULL);
INSERT INTO `area` VALUES (2719, '延津县', 246, 0, 3, NULL);
INSERT INTO `area` VALUES (2720, '新乡县', 246, 0, 3, NULL);
INSERT INTO `area` VALUES (2721, '牧野区', 246, 0, 3, NULL);
INSERT INTO `area` VALUES (2722, '红旗区', 246, 0, 3, NULL);
INSERT INTO `area` VALUES (2723, '获嘉县', 246, 0, 3, NULL);
INSERT INTO `area` VALUES (2724, '辉县市', 246, 0, 3, NULL);
INSERT INTO `area` VALUES (2725, '长垣县', 246, 0, 3, NULL);
INSERT INTO `area` VALUES (2726, '中站区', 247, 0, 3, NULL);
INSERT INTO `area` VALUES (2727, '修武县', 247, 0, 3, NULL);
INSERT INTO `area` VALUES (2728, '博爱县', 247, 0, 3, NULL);
INSERT INTO `area` VALUES (2729, '孟州市', 247, 0, 3, NULL);
INSERT INTO `area` VALUES (2730, '山阳区', 247, 0, 3, NULL);
INSERT INTO `area` VALUES (2731, '武陟县', 247, 0, 3, NULL);
INSERT INTO `area` VALUES (2732, '沁阳市', 247, 0, 3, NULL);
INSERT INTO `area` VALUES (2733, '温县', 247, 0, 3, NULL);
INSERT INTO `area` VALUES (2734, '解放区', 247, 0, 3, NULL);
INSERT INTO `area` VALUES (2735, '马村区', 247, 0, 3, NULL);
INSERT INTO `area` VALUES (2736, '华龙区', 248, 0, 3, NULL);
INSERT INTO `area` VALUES (2737, '南乐县', 248, 0, 3, NULL);
INSERT INTO `area` VALUES (2738, '台前县', 248, 0, 3, NULL);
INSERT INTO `area` VALUES (2739, '清丰县', 248, 0, 3, NULL);
INSERT INTO `area` VALUES (2740, '濮阳县', 248, 0, 3, NULL);
INSERT INTO `area` VALUES (2741, '范县', 248, 0, 3, NULL);
INSERT INTO `area` VALUES (2742, '禹州市', 249, 0, 3, NULL);
INSERT INTO `area` VALUES (2743, '襄城县', 249, 0, 3, NULL);
INSERT INTO `area` VALUES (2744, '许昌县', 249, 0, 3, NULL);
INSERT INTO `area` VALUES (2745, '鄢陵县', 249, 0, 3, NULL);
INSERT INTO `area` VALUES (2746, '长葛市', 249, 0, 3, NULL);
INSERT INTO `area` VALUES (2747, '魏都区', 249, 0, 3, NULL);
INSERT INTO `area` VALUES (2748, '临颍县', 250, 0, 3, NULL);
INSERT INTO `area` VALUES (2749, '召陵区', 250, 0, 3, NULL);
INSERT INTO `area` VALUES (2750, '源汇区', 250, 0, 3, NULL);
INSERT INTO `area` VALUES (2751, '舞阳县', 250, 0, 3, NULL);
INSERT INTO `area` VALUES (2752, '郾城区', 250, 0, 3, NULL);
INSERT INTO `area` VALUES (2753, '义马市', 251, 0, 3, NULL);
INSERT INTO `area` VALUES (2754, '卢氏县', 251, 0, 3, NULL);
INSERT INTO `area` VALUES (2755, '渑池县', 251, 0, 3, NULL);
INSERT INTO `area` VALUES (2756, '湖滨区', 251, 0, 3, NULL);
INSERT INTO `area` VALUES (2757, '灵宝市', 251, 0, 3, NULL);
INSERT INTO `area` VALUES (2758, '陕县', 251, 0, 3, NULL);
INSERT INTO `area` VALUES (2759, '内乡县', 252, 0, 3, NULL);
INSERT INTO `area` VALUES (2760, '南召县', 252, 0, 3, NULL);
INSERT INTO `area` VALUES (2761, '卧龙区', 252, 0, 3, NULL);
INSERT INTO `area` VALUES (2762, '唐河县', 252, 0, 3, NULL);
INSERT INTO `area` VALUES (2763, '宛城区', 252, 0, 3, NULL);
INSERT INTO `area` VALUES (2764, '新野县', 252, 0, 3, NULL);
INSERT INTO `area` VALUES (2765, '方城县', 252, 0, 3, NULL);
INSERT INTO `area` VALUES (2766, '桐柏县', 252, 0, 3, NULL);
INSERT INTO `area` VALUES (2767, '淅川县', 252, 0, 3, NULL);
INSERT INTO `area` VALUES (2768, '社旗县', 252, 0, 3, NULL);
INSERT INTO `area` VALUES (2769, '西峡县', 252, 0, 3, NULL);
INSERT INTO `area` VALUES (2770, '邓州市', 252, 0, 3, NULL);
INSERT INTO `area` VALUES (2771, '镇平县', 252, 0, 3, NULL);
INSERT INTO `area` VALUES (2772, '夏邑县', 253, 0, 3, NULL);
INSERT INTO `area` VALUES (2773, '宁陵县', 253, 0, 3, NULL);
INSERT INTO `area` VALUES (2774, '柘城县', 253, 0, 3, NULL);
INSERT INTO `area` VALUES (2775, '民权县', 253, 0, 3, NULL);
INSERT INTO `area` VALUES (2776, '永城市', 253, 0, 3, NULL);
INSERT INTO `area` VALUES (2777, '睢县', 253, 0, 3, NULL);
INSERT INTO `area` VALUES (2778, '睢阳区', 253, 0, 3, NULL);
INSERT INTO `area` VALUES (2779, '粱园区', 253, 0, 3, NULL);
INSERT INTO `area` VALUES (2780, '虞城县', 253, 0, 3, NULL);
INSERT INTO `area` VALUES (2781, '光山县', 254, 0, 3, NULL);
INSERT INTO `area` VALUES (2782, '商城县', 254, 0, 3, NULL);
INSERT INTO `area` VALUES (2783, '固始县', 254, 0, 3, NULL);
INSERT INTO `area` VALUES (2784, '平桥区', 254, 0, 3, NULL);
INSERT INTO `area` VALUES (2785, '息县', 254, 0, 3, NULL);
INSERT INTO `area` VALUES (2786, '新县', 254, 0, 3, NULL);
INSERT INTO `area` VALUES (2787, '浉河区', 254, 0, 3, NULL);
INSERT INTO `area` VALUES (2788, '淮滨县', 254, 0, 3, NULL);
INSERT INTO `area` VALUES (2789, '潢川县', 254, 0, 3, NULL);
INSERT INTO `area` VALUES (2790, '罗山县', 254, 0, 3, NULL);
INSERT INTO `area` VALUES (2791, '商水县', 255, 0, 3, NULL);
INSERT INTO `area` VALUES (2792, '太康县', 255, 0, 3, NULL);
INSERT INTO `area` VALUES (2793, '川汇区', 255, 0, 3, NULL);
INSERT INTO `area` VALUES (2794, '扶沟县', 255, 0, 3, NULL);
INSERT INTO `area` VALUES (2795, '沈丘县', 255, 0, 3, NULL);
INSERT INTO `area` VALUES (2796, '淮阳县', 255, 0, 3, NULL);
INSERT INTO `area` VALUES (2797, '西华县', 255, 0, 3, NULL);
INSERT INTO `area` VALUES (2798, '郸城县', 255, 0, 3, NULL);
INSERT INTO `area` VALUES (2799, '项城市', 255, 0, 3, NULL);
INSERT INTO `area` VALUES (2800, '鹿邑县', 255, 0, 3, NULL);
INSERT INTO `area` VALUES (2801, '上蔡县', 256, 0, 3, NULL);
INSERT INTO `area` VALUES (2802, '平舆县', 256, 0, 3, NULL);
INSERT INTO `area` VALUES (2803, '新蔡县', 256, 0, 3, NULL);
INSERT INTO `area` VALUES (2804, '正阳县', 256, 0, 3, NULL);
INSERT INTO `area` VALUES (2805, '汝南县', 256, 0, 3, NULL);
INSERT INTO `area` VALUES (2806, '泌阳县', 256, 0, 3, NULL);
INSERT INTO `area` VALUES (2807, '确山县', 256, 0, 3, NULL);
INSERT INTO `area` VALUES (2808, '西平县', 256, 0, 3, NULL);
INSERT INTO `area` VALUES (2809, '遂平县', 256, 0, 3, NULL);
INSERT INTO `area` VALUES (2810, '驿城区', 256, 0, 3, NULL);
INSERT INTO `area` VALUES (2811, '济源市', 257, 0, 3, NULL);
INSERT INTO `area` VALUES (2812, '东西湖区', 258, 0, 3, NULL);
INSERT INTO `area` VALUES (2813, '新洲区', 258, 0, 3, NULL);
INSERT INTO `area` VALUES (2814, '武昌区', 258, 0, 3, NULL);
INSERT INTO `area` VALUES (2815, '汉南区', 258, 0, 3, NULL);
INSERT INTO `area` VALUES (2816, '汉阳区', 258, 0, 3, NULL);
INSERT INTO `area` VALUES (2817, '江夏区', 258, 0, 3, NULL);
INSERT INTO `area` VALUES (2818, '江岸区', 258, 0, 3, NULL);
INSERT INTO `area` VALUES (2819, '江汉区', 258, 0, 3, NULL);
INSERT INTO `area` VALUES (2820, '洪山区', 258, 0, 3, NULL);
INSERT INTO `area` VALUES (2821, '硚口区', 258, 0, 3, NULL);
INSERT INTO `area` VALUES (2822, '蔡甸区', 258, 0, 3, NULL);
INSERT INTO `area` VALUES (2823, '青山区', 258, 0, 3, NULL);
INSERT INTO `area` VALUES (2824, '黄陂区', 258, 0, 3, NULL);
INSERT INTO `area` VALUES (2825, '下陆区', 259, 0, 3, NULL);
INSERT INTO `area` VALUES (2826, '大冶市', 259, 0, 3, NULL);
INSERT INTO `area` VALUES (2827, '西塞山区', 259, 0, 3, NULL);
INSERT INTO `area` VALUES (2828, '铁山区', 259, 0, 3, NULL);
INSERT INTO `area` VALUES (2829, '阳新县', 259, 0, 3, NULL);
INSERT INTO `area` VALUES (2830, '黄石港区', 259, 0, 3, NULL);
INSERT INTO `area` VALUES (2831, '丹江口市', 260, 0, 3, NULL);
INSERT INTO `area` VALUES (2832, '张湾区', 260, 0, 3, NULL);
INSERT INTO `area` VALUES (2833, '房县', 260, 0, 3, NULL);
INSERT INTO `area` VALUES (2834, '竹山县', 260, 0, 3, NULL);
INSERT INTO `area` VALUES (2835, '竹溪县', 260, 0, 3, NULL);
INSERT INTO `area` VALUES (2836, '茅箭区', 260, 0, 3, NULL);
INSERT INTO `area` VALUES (2837, '郧县', 260, 0, 3, NULL);
INSERT INTO `area` VALUES (2838, '郧西县', 260, 0, 3, NULL);
INSERT INTO `area` VALUES (2839, '五峰土家族自治县', 261, 0, 3, NULL);
INSERT INTO `area` VALUES (2840, '伍家岗区', 261, 0, 3, NULL);
INSERT INTO `area` VALUES (2841, '兴山县', 261, 0, 3, NULL);
INSERT INTO `area` VALUES (2842, '夷陵区', 261, 0, 3, NULL);
INSERT INTO `area` VALUES (2843, '宜都市', 261, 0, 3, NULL);
INSERT INTO `area` VALUES (2844, '当阳市', 261, 0, 3, NULL);
INSERT INTO `area` VALUES (2845, '枝江市', 261, 0, 3, NULL);
INSERT INTO `area` VALUES (2846, '点军区', 261, 0, 3, NULL);
INSERT INTO `area` VALUES (2847, '秭归县', 261, 0, 3, NULL);
INSERT INTO `area` VALUES (2848, '虢亭区', 261, 0, 3, NULL);
INSERT INTO `area` VALUES (2849, '西陵区', 261, 0, 3, NULL);
INSERT INTO `area` VALUES (2850, '远安县', 261, 0, 3, NULL);
INSERT INTO `area` VALUES (2851, '长阳土家族自治县', 261, 0, 3, NULL);
INSERT INTO `area` VALUES (2852, '保康县', 262, 0, 3, NULL);
INSERT INTO `area` VALUES (2853, '南漳县', 262, 0, 3, NULL);
INSERT INTO `area` VALUES (2854, '宜城市', 262, 0, 3, NULL);
INSERT INTO `area` VALUES (2855, '枣阳市', 262, 0, 3, NULL);
INSERT INTO `area` VALUES (2856, '樊城区', 262, 0, 3, NULL);
INSERT INTO `area` VALUES (2857, '老河口市', 262, 0, 3, NULL);
INSERT INTO `area` VALUES (2858, '襄城区', 262, 0, 3, NULL);
INSERT INTO `area` VALUES (2859, '襄阳区', 262, 0, 3, NULL);
INSERT INTO `area` VALUES (2860, '谷城县', 262, 0, 3, NULL);
INSERT INTO `area` VALUES (2861, '华容区', 263, 0, 3, NULL);
INSERT INTO `area` VALUES (2862, '粱子湖', 263, 0, 3, NULL);
INSERT INTO `area` VALUES (2863, '鄂城区', 263, 0, 3, NULL);
INSERT INTO `area` VALUES (2864, '东宝区', 264, 0, 3, NULL);
INSERT INTO `area` VALUES (2865, '京山县', 264, 0, 3, NULL);
INSERT INTO `area` VALUES (2866, '掇刀区', 264, 0, 3, NULL);
INSERT INTO `area` VALUES (2867, '沙洋县', 264, 0, 3, NULL);
INSERT INTO `area` VALUES (2868, '钟祥市', 264, 0, 3, NULL);
INSERT INTO `area` VALUES (2869, '云梦县', 265, 0, 3, NULL);
INSERT INTO `area` VALUES (2870, '大悟县', 265, 0, 3, NULL);
INSERT INTO `area` VALUES (2871, '孝南区', 265, 0, 3, NULL);
INSERT INTO `area` VALUES (2872, '孝昌县', 265, 0, 3, NULL);
INSERT INTO `area` VALUES (2873, '安陆市', 265, 0, 3, NULL);
INSERT INTO `area` VALUES (2874, '应城市', 265, 0, 3, NULL);
INSERT INTO `area` VALUES (2875, '汉川市', 265, 0, 3, NULL);
INSERT INTO `area` VALUES (2876, '公安县', 266, 0, 3, NULL);
INSERT INTO `area` VALUES (2877, '松滋市', 266, 0, 3, NULL);
INSERT INTO `area` VALUES (2878, '江陵县', 266, 0, 3, NULL);
INSERT INTO `area` VALUES (2879, '沙市区', 266, 0, 3, NULL);
INSERT INTO `area` VALUES (2880, '洪湖市', 266, 0, 3, NULL);
INSERT INTO `area` VALUES (2881, '监利县', 266, 0, 3, NULL);
INSERT INTO `area` VALUES (2882, '石首市', 266, 0, 3, NULL);
INSERT INTO `area` VALUES (2883, '荆州区', 266, 0, 3, NULL);
INSERT INTO `area` VALUES (2884, '团风县', 267, 0, 3, NULL);
INSERT INTO `area` VALUES (2885, '武穴市', 267, 0, 3, NULL);
INSERT INTO `area` VALUES (2886, '浠水县', 267, 0, 3, NULL);
INSERT INTO `area` VALUES (2887, '红安县', 267, 0, 3, NULL);
INSERT INTO `area` VALUES (2888, '罗田县', 267, 0, 3, NULL);
INSERT INTO `area` VALUES (2889, '英山县', 267, 0, 3, NULL);
INSERT INTO `area` VALUES (2890, '蕲春县', 267, 0, 3, NULL);
INSERT INTO `area` VALUES (2891, '麻城市', 267, 0, 3, NULL);
INSERT INTO `area` VALUES (2892, '黄州区', 267, 0, 3, NULL);
INSERT INTO `area` VALUES (2893, '黄梅县', 267, 0, 3, NULL);
INSERT INTO `area` VALUES (2894, '咸安区', 268, 0, 3, NULL);
INSERT INTO `area` VALUES (2895, '嘉鱼县', 268, 0, 3, NULL);
INSERT INTO `area` VALUES (2896, '崇阳县', 268, 0, 3, NULL);
INSERT INTO `area` VALUES (2897, '赤壁市', 268, 0, 3, NULL);
INSERT INTO `area` VALUES (2898, '通城县', 268, 0, 3, NULL);
INSERT INTO `area` VALUES (2899, '通山县', 268, 0, 3, NULL);
INSERT INTO `area` VALUES (2900, '广水市', 269, 0, 3, NULL);
INSERT INTO `area` VALUES (2901, '曾都区', 269, 0, 3, NULL);
INSERT INTO `area` VALUES (2902, '利川市', 270, 0, 3, NULL);
INSERT INTO `area` VALUES (2903, '咸丰县', 270, 0, 3, NULL);
INSERT INTO `area` VALUES (2904, '宣恩县', 270, 0, 3, NULL);
INSERT INTO `area` VALUES (2905, '巴东县', 270, 0, 3, NULL);
INSERT INTO `area` VALUES (2906, '建始县', 270, 0, 3, NULL);
INSERT INTO `area` VALUES (2907, '恩施市', 270, 0, 3, NULL);
INSERT INTO `area` VALUES (2908, '来凤县', 270, 0, 3, NULL);
INSERT INTO `area` VALUES (2909, '鹤峰县', 270, 0, 3, NULL);
INSERT INTO `area` VALUES (2910, '仙桃市', 271, 0, 3, NULL);
INSERT INTO `area` VALUES (2911, '潜江市', 272, 0, 3, NULL);
INSERT INTO `area` VALUES (2912, '天门市', 273, 0, 3, NULL);
INSERT INTO `area` VALUES (2913, '神农架林区', 274, 0, 3, NULL);
INSERT INTO `area` VALUES (2914, '天心区', 275, 0, 3, NULL);
INSERT INTO `area` VALUES (2915, '宁乡县', 275, 0, 3, NULL);
INSERT INTO `area` VALUES (2916, '岳麓区', 275, 0, 3, NULL);
INSERT INTO `area` VALUES (2917, '开福区', 275, 0, 3, NULL);
INSERT INTO `area` VALUES (2918, '望城县', 275, 0, 3, NULL);
INSERT INTO `area` VALUES (2919, '浏阳市', 275, 0, 3, NULL);
INSERT INTO `area` VALUES (2920, '芙蓉区', 275, 0, 3, NULL);
INSERT INTO `area` VALUES (2921, '长沙县', 275, 0, 3, NULL);
INSERT INTO `area` VALUES (2922, '雨花区', 275, 0, 3, NULL);
INSERT INTO `area` VALUES (2923, '天元区', 276, 0, 3, NULL);
INSERT INTO `area` VALUES (2924, '攸县', 276, 0, 3, NULL);
INSERT INTO `area` VALUES (2925, '株洲县', 276, 0, 3, NULL);
INSERT INTO `area` VALUES (2926, '炎陵县', 276, 0, 3, NULL);
INSERT INTO `area` VALUES (2927, '石峰区', 276, 0, 3, NULL);
INSERT INTO `area` VALUES (2928, '芦淞区', 276, 0, 3, NULL);
INSERT INTO `area` VALUES (2929, '茶陵县', 276, 0, 3, NULL);
INSERT INTO `area` VALUES (2930, '荷塘区', 276, 0, 3, NULL);
INSERT INTO `area` VALUES (2931, '醴陵市', 276, 0, 3, NULL);
INSERT INTO `area` VALUES (2932, '岳塘区', 277, 0, 3, NULL);
INSERT INTO `area` VALUES (2933, '湘乡市', 277, 0, 3, NULL);
INSERT INTO `area` VALUES (2934, '湘潭县', 277, 0, 3, NULL);
INSERT INTO `area` VALUES (2935, '雨湖区', 277, 0, 3, NULL);
INSERT INTO `area` VALUES (2936, '韶山市', 277, 0, 3, NULL);
INSERT INTO `area` VALUES (2937, '南岳区', 278, 0, 3, NULL);
INSERT INTO `area` VALUES (2938, '常宁市', 278, 0, 3, NULL);
INSERT INTO `area` VALUES (2939, '珠晖区', 278, 0, 3, NULL);
INSERT INTO `area` VALUES (2940, '石鼓区', 278, 0, 3, NULL);
INSERT INTO `area` VALUES (2941, '祁东县', 278, 0, 3, NULL);
INSERT INTO `area` VALUES (2942, '耒阳市', 278, 0, 3, NULL);
INSERT INTO `area` VALUES (2943, '蒸湘区', 278, 0, 3, NULL);
INSERT INTO `area` VALUES (2944, '衡东县', 278, 0, 3, NULL);
INSERT INTO `area` VALUES (2945, '衡南县', 278, 0, 3, NULL);
INSERT INTO `area` VALUES (2946, '衡山县', 278, 0, 3, NULL);
INSERT INTO `area` VALUES (2947, '衡阳县', 278, 0, 3, NULL);
INSERT INTO `area` VALUES (2948, '雁峰区', 278, 0, 3, NULL);
INSERT INTO `area` VALUES (2949, '北塔区', 279, 0, 3, NULL);
INSERT INTO `area` VALUES (2950, '双清区', 279, 0, 3, NULL);
INSERT INTO `area` VALUES (2951, '城步苗族自治县', 279, 0, 3, NULL);
INSERT INTO `area` VALUES (2952, '大祥区', 279, 0, 3, NULL);
INSERT INTO `area` VALUES (2953, '新宁县', 279, 0, 3, NULL);
INSERT INTO `area` VALUES (2954, '新邵县', 279, 0, 3, NULL);
INSERT INTO `area` VALUES (2955, '武冈市', 279, 0, 3, NULL);
INSERT INTO `area` VALUES (2956, '洞口县', 279, 0, 3, NULL);
INSERT INTO `area` VALUES (2957, '绥宁县', 279, 0, 3, NULL);
INSERT INTO `area` VALUES (2958, '邵东县', 279, 0, 3, NULL);
INSERT INTO `area` VALUES (2959, '邵阳县', 279, 0, 3, NULL);
INSERT INTO `area` VALUES (2960, '隆回县', 279, 0, 3, NULL);
INSERT INTO `area` VALUES (2961, '临湘市', 280, 0, 3, NULL);
INSERT INTO `area` VALUES (2962, '云溪区', 280, 0, 3, NULL);
INSERT INTO `area` VALUES (2963, '华容县', 280, 0, 3, NULL);
INSERT INTO `area` VALUES (2964, '君山区', 280, 0, 3, NULL);
INSERT INTO `area` VALUES (2965, '岳阳县', 280, 0, 3, NULL);
INSERT INTO `area` VALUES (2966, '岳阳楼区', 280, 0, 3, NULL);
INSERT INTO `area` VALUES (2967, '平江县', 280, 0, 3, NULL);
INSERT INTO `area` VALUES (2968, '汨罗市', 280, 0, 3, NULL);
INSERT INTO `area` VALUES (2969, '湘阴县', 280, 0, 3, NULL);
INSERT INTO `area` VALUES (2970, '临澧县', 281, 0, 3, NULL);
INSERT INTO `area` VALUES (2971, '安乡县', 281, 0, 3, NULL);
INSERT INTO `area` VALUES (2972, '桃源县', 281, 0, 3, NULL);
INSERT INTO `area` VALUES (2973, '武陵区', 281, 0, 3, NULL);
INSERT INTO `area` VALUES (2974, '汉寿县', 281, 0, 3, NULL);
INSERT INTO `area` VALUES (2975, '津市市', 281, 0, 3, NULL);
INSERT INTO `area` VALUES (2976, '澧县', 281, 0, 3, NULL);
INSERT INTO `area` VALUES (2977, '石门县', 281, 0, 3, NULL);
INSERT INTO `area` VALUES (2978, '鼎城区', 281, 0, 3, NULL);
INSERT INTO `area` VALUES (2979, '慈利县', 282, 0, 3, NULL);
INSERT INTO `area` VALUES (2980, '桑植县', 282, 0, 3, NULL);
INSERT INTO `area` VALUES (2981, '武陵源区', 282, 0, 3, NULL);
INSERT INTO `area` VALUES (2982, '永定区', 282, 0, 3, NULL);
INSERT INTO `area` VALUES (2983, '南县', 283, 0, 3, NULL);
INSERT INTO `area` VALUES (2984, '安化县', 283, 0, 3, NULL);
INSERT INTO `area` VALUES (2985, '桃江县', 283, 0, 3, NULL);
INSERT INTO `area` VALUES (2986, '沅江市', 283, 0, 3, NULL);
INSERT INTO `area` VALUES (2987, '资阳区', 283, 0, 3, NULL);
INSERT INTO `area` VALUES (2988, '赫山区', 283, 0, 3, NULL);
INSERT INTO `area` VALUES (2989, '临武县', 284, 0, 3, NULL);
INSERT INTO `area` VALUES (2990, '北湖区', 284, 0, 3, NULL);
INSERT INTO `area` VALUES (2991, '嘉禾县', 284, 0, 3, NULL);
INSERT INTO `area` VALUES (2992, '安仁县', 284, 0, 3, NULL);
INSERT INTO `area` VALUES (2993, '宜章县', 284, 0, 3, NULL);
INSERT INTO `area` VALUES (2994, '桂东县', 284, 0, 3, NULL);
INSERT INTO `area` VALUES (2995, '桂阳县', 284, 0, 3, NULL);
INSERT INTO `area` VALUES (2996, '永兴县', 284, 0, 3, NULL);
INSERT INTO `area` VALUES (2997, '汝城县', 284, 0, 3, NULL);
INSERT INTO `area` VALUES (2998, '苏仙区', 284, 0, 3, NULL);
INSERT INTO `area` VALUES (2999, '资兴市', 284, 0, 3, NULL);
INSERT INTO `area` VALUES (3000, '东安县', 285, 0, 3, NULL);
INSERT INTO `area` VALUES (3001, '冷水滩区', 285, 0, 3, NULL);
INSERT INTO `area` VALUES (3002, '双牌县', 285, 0, 3, NULL);
INSERT INTO `area` VALUES (3003, '宁远县', 285, 0, 3, NULL);
INSERT INTO `area` VALUES (3004, '新田县', 285, 0, 3, NULL);
INSERT INTO `area` VALUES (3005, '江华瑶族自治县', 285, 0, 3, NULL);
INSERT INTO `area` VALUES (3006, '江永县', 285, 0, 3, NULL);
INSERT INTO `area` VALUES (3007, '祁阳县', 285, 0, 3, NULL);
INSERT INTO `area` VALUES (3008, '蓝山县', 285, 0, 3, NULL);
INSERT INTO `area` VALUES (3009, '道县', 285, 0, 3, NULL);
INSERT INTO `area` VALUES (3010, '零陵区', 285, 0, 3, NULL);
INSERT INTO `area` VALUES (3011, '中方县', 286, 0, 3, NULL);
INSERT INTO `area` VALUES (3012, '会同县', 286, 0, 3, NULL);
INSERT INTO `area` VALUES (3013, '新晃侗族自治县', 286, 0, 3, NULL);
INSERT INTO `area` VALUES (3014, '沅陵县', 286, 0, 3, NULL);
INSERT INTO `area` VALUES (3015, '洪江市/洪江区', 286, 0, 3, NULL);
INSERT INTO `area` VALUES (3016, '溆浦县', 286, 0, 3, NULL);
INSERT INTO `area` VALUES (3017, '芷江侗族自治县', 286, 0, 3, NULL);
INSERT INTO `area` VALUES (3018, '辰溪县', 286, 0, 3, NULL);
INSERT INTO `area` VALUES (3019, '通道侗族自治县', 286, 0, 3, NULL);
INSERT INTO `area` VALUES (3020, '靖州苗族侗族自治县', 286, 0, 3, NULL);
INSERT INTO `area` VALUES (3021, '鹤城区', 286, 0, 3, NULL);
INSERT INTO `area` VALUES (3022, '麻阳苗族自治县', 286, 0, 3, NULL);
INSERT INTO `area` VALUES (3023, '冷水江市', 287, 0, 3, NULL);
INSERT INTO `area` VALUES (3024, '双峰县', 287, 0, 3, NULL);
INSERT INTO `area` VALUES (3025, '娄星区', 287, 0, 3, NULL);
INSERT INTO `area` VALUES (3026, '新化县', 287, 0, 3, NULL);
INSERT INTO `area` VALUES (3027, '涟源市', 287, 0, 3, NULL);
INSERT INTO `area` VALUES (3028, '保靖县', 288, 0, 3, NULL);
INSERT INTO `area` VALUES (3029, '凤凰县', 288, 0, 3, NULL);
INSERT INTO `area` VALUES (3030, '古丈县', 288, 0, 3, NULL);
INSERT INTO `area` VALUES (3031, '吉首市', 288, 0, 3, NULL);
INSERT INTO `area` VALUES (3032, '永顺县', 288, 0, 3, NULL);
INSERT INTO `area` VALUES (3033, '泸溪县', 288, 0, 3, NULL);
INSERT INTO `area` VALUES (3034, '花垣县', 288, 0, 3, NULL);
INSERT INTO `area` VALUES (3035, '龙山县', 288, 0, 3, NULL);
INSERT INTO `area` VALUES (3036, '萝岗区', 289, 0, 3, NULL);
INSERT INTO `area` VALUES (3037, '南沙区', 289, 0, 3, NULL);
INSERT INTO `area` VALUES (3038, '从化市', 289, 0, 3, NULL);
INSERT INTO `area` VALUES (3039, '增城市', 289, 0, 3, NULL);
INSERT INTO `area` VALUES (3040, '天河区', 289, 0, 3, NULL);
INSERT INTO `area` VALUES (3041, '海珠区', 289, 0, 3, NULL);
INSERT INTO `area` VALUES (3042, '番禺区', 289, 0, 3, NULL);
INSERT INTO `area` VALUES (3043, '白云区', 289, 0, 3, NULL);
INSERT INTO `area` VALUES (3044, '花都区', 289, 0, 3, NULL);
INSERT INTO `area` VALUES (3045, '荔湾区', 289, 0, 3, NULL);
INSERT INTO `area` VALUES (3046, '越秀区', 289, 0, 3, NULL);
INSERT INTO `area` VALUES (3047, '黄埔区', 289, 0, 3, NULL);
INSERT INTO `area` VALUES (3048, '乐昌市', 290, 0, 3, NULL);
INSERT INTO `area` VALUES (3049, '乳源瑶族自治县', 290, 0, 3, NULL);
INSERT INTO `area` VALUES (3050, '仁化县', 290, 0, 3, NULL);
INSERT INTO `area` VALUES (3051, '南雄市', 290, 0, 3, NULL);
INSERT INTO `area` VALUES (3052, '始兴县', 290, 0, 3, NULL);
INSERT INTO `area` VALUES (3053, '新丰县', 290, 0, 3, NULL);
INSERT INTO `area` VALUES (3054, '曲江区', 290, 0, 3, NULL);
INSERT INTO `area` VALUES (3055, '武江区', 290, 0, 3, NULL);
INSERT INTO `area` VALUES (3056, '浈江区', 290, 0, 3, NULL);
INSERT INTO `area` VALUES (3057, '翁源县', 290, 0, 3, NULL);
INSERT INTO `area` VALUES (3058, '南山区', 291, 0, 3, NULL);
INSERT INTO `area` VALUES (3059, '宝安区', 291, 0, 3, NULL);
INSERT INTO `area` VALUES (3060, '盐田区', 291, 0, 3, NULL);
INSERT INTO `area` VALUES (3061, '福田区', 291, 0, 3, NULL);
INSERT INTO `area` VALUES (3062, '罗湖区', 291, 0, 3, NULL);
INSERT INTO `area` VALUES (3063, '龙岗区', 291, 0, 3, NULL);
INSERT INTO `area` VALUES (3064, '斗门区', 292, 0, 3, NULL);
INSERT INTO `area` VALUES (3065, '金湾区', 292, 0, 3, NULL);
INSERT INTO `area` VALUES (3066, '香洲区', 292, 0, 3, NULL);
INSERT INTO `area` VALUES (3067, '南澳县', 293, 0, 3, NULL);
INSERT INTO `area` VALUES (3068, '潮南区', 293, 0, 3, NULL);
INSERT INTO `area` VALUES (3069, '潮阳区', 293, 0, 3, NULL);
INSERT INTO `area` VALUES (3070, '澄海区', 293, 0, 3, NULL);
INSERT INTO `area` VALUES (3071, '濠江区', 293, 0, 3, NULL);
INSERT INTO `area` VALUES (3072, '金平区', 293, 0, 3, NULL);
INSERT INTO `area` VALUES (3073, '龙湖区', 293, 0, 3, NULL);
INSERT INTO `area` VALUES (3074, '三水区', 294, 0, 3, NULL);
INSERT INTO `area` VALUES (3075, '南海区', 294, 0, 3, NULL);
INSERT INTO `area` VALUES (3076, '禅城区', 294, 0, 3, NULL);
INSERT INTO `area` VALUES (3077, '顺德区', 294, 0, 3, NULL);
INSERT INTO `area` VALUES (3078, '高明区', 294, 0, 3, NULL);
INSERT INTO `area` VALUES (3079, '台山市', 295, 0, 3, NULL);
INSERT INTO `area` VALUES (3080, '开平市', 295, 0, 3, NULL);
INSERT INTO `area` VALUES (3081, '恩平市', 295, 0, 3, NULL);
INSERT INTO `area` VALUES (3082, '新会区', 295, 0, 3, NULL);
INSERT INTO `area` VALUES (3083, '江海区', 295, 0, 3, NULL);
INSERT INTO `area` VALUES (3084, '蓬江区', 295, 0, 3, NULL);
INSERT INTO `area` VALUES (3085, '鹤山市', 295, 0, 3, NULL);
INSERT INTO `area` VALUES (3086, '吴川市', 296, 0, 3, NULL);
INSERT INTO `area` VALUES (3087, '坡头区', 296, 0, 3, NULL);
INSERT INTO `area` VALUES (3088, '廉江市', 296, 0, 3, NULL);
INSERT INTO `area` VALUES (3089, '徐闻县', 296, 0, 3, NULL);
INSERT INTO `area` VALUES (3090, '赤坎区', 296, 0, 3, NULL);
INSERT INTO `area` VALUES (3091, '遂溪县', 296, 0, 3, NULL);
INSERT INTO `area` VALUES (3092, '雷州市', 296, 0, 3, NULL);
INSERT INTO `area` VALUES (3093, '霞山区', 296, 0, 3, NULL);
INSERT INTO `area` VALUES (3094, '麻章区', 296, 0, 3, NULL);
INSERT INTO `area` VALUES (3095, '信宜市', 297, 0, 3, NULL);
INSERT INTO `area` VALUES (3096, '化州市', 297, 0, 3, NULL);
INSERT INTO `area` VALUES (3097, '电白县', 297, 0, 3, NULL);
INSERT INTO `area` VALUES (3098, '茂南区', 297, 0, 3, NULL);
INSERT INTO `area` VALUES (3099, '茂港区', 297, 0, 3, NULL);
INSERT INTO `area` VALUES (3100, '高州市', 297, 0, 3, NULL);
INSERT INTO `area` VALUES (3101, '四会市', 298, 0, 3, NULL);
INSERT INTO `area` VALUES (3102, '封开县', 298, 0, 3, NULL);
INSERT INTO `area` VALUES (3103, '广宁县', 298, 0, 3, NULL);
INSERT INTO `area` VALUES (3104, '德庆县', 298, 0, 3, NULL);
INSERT INTO `area` VALUES (3105, '怀集县', 298, 0, 3, NULL);
INSERT INTO `area` VALUES (3106, '端州区', 298, 0, 3, NULL);
INSERT INTO `area` VALUES (3107, '高要市', 298, 0, 3, NULL);
INSERT INTO `area` VALUES (3108, '鼎湖区', 298, 0, 3, NULL);
INSERT INTO `area` VALUES (3109, '博罗县', 299, 0, 3, NULL);
INSERT INTO `area` VALUES (3110, '惠东县', 299, 0, 3, NULL);
INSERT INTO `area` VALUES (3111, '惠城区', 299, 0, 3, NULL);
INSERT INTO `area` VALUES (3112, '惠阳区', 299, 0, 3, NULL);
INSERT INTO `area` VALUES (3113, '龙门县', 299, 0, 3, NULL);
INSERT INTO `area` VALUES (3114, '丰顺县', 300, 0, 3, NULL);
INSERT INTO `area` VALUES (3115, '五华县', 300, 0, 3, NULL);
INSERT INTO `area` VALUES (3116, '兴宁市', 300, 0, 3, NULL);
INSERT INTO `area` VALUES (3117, '大埔县', 300, 0, 3, NULL);
INSERT INTO `area` VALUES (3118, '平远县', 300, 0, 3, NULL);
INSERT INTO `area` VALUES (3119, '梅县', 300, 0, 3, NULL);
INSERT INTO `area` VALUES (3120, '梅江区', 300, 0, 3, NULL);
INSERT INTO `area` VALUES (3121, '蕉岭县', 300, 0, 3, NULL);
INSERT INTO `area` VALUES (3122, '城区', 301, 0, 3, NULL);
INSERT INTO `area` VALUES (3123, '海丰县', 301, 0, 3, NULL);
INSERT INTO `area` VALUES (3124, '陆丰市', 301, 0, 3, NULL);
INSERT INTO `area` VALUES (3125, '陆河县', 301, 0, 3, NULL);
INSERT INTO `area` VALUES (3126, '东源县', 302, 0, 3, NULL);
INSERT INTO `area` VALUES (3127, '和平县', 302, 0, 3, NULL);
INSERT INTO `area` VALUES (3128, '源城区', 302, 0, 3, NULL);
INSERT INTO `area` VALUES (3129, '紫金县', 302, 0, 3, NULL);
INSERT INTO `area` VALUES (3130, '连平县', 302, 0, 3, NULL);
INSERT INTO `area` VALUES (3131, '龙川县', 302, 0, 3, NULL);
INSERT INTO `area` VALUES (3132, '江城区', 303, 0, 3, NULL);
INSERT INTO `area` VALUES (3133, '阳东县', 303, 0, 3, NULL);
INSERT INTO `area` VALUES (3134, '阳春市', 303, 0, 3, NULL);
INSERT INTO `area` VALUES (3135, '阳西县', 303, 0, 3, NULL);
INSERT INTO `area` VALUES (3136, '佛冈县', 304, 0, 3, NULL);
INSERT INTO `area` VALUES (3137, '清城区', 304, 0, 3, NULL);
INSERT INTO `area` VALUES (3138, '清新县', 304, 0, 3, NULL);
INSERT INTO `area` VALUES (3139, '英德市', 304, 0, 3, NULL);
INSERT INTO `area` VALUES (3140, '连南瑶族自治县', 304, 0, 3, NULL);
INSERT INTO `area` VALUES (3141, '连山壮族瑶族自治县', 304, 0, 3, NULL);
INSERT INTO `area` VALUES (3142, '连州市', 304, 0, 3, NULL);
INSERT INTO `area` VALUES (3143, '阳山县', 304, 0, 3, NULL);
INSERT INTO `area` VALUES (3144, '东莞市', 305, 0, 3, NULL);
INSERT INTO `area` VALUES (3145, '中山市', 306, 0, 3, NULL);
INSERT INTO `area` VALUES (3146, '湘桥区', 307, 0, 3, NULL);
INSERT INTO `area` VALUES (3147, '潮安县', 307, 0, 3, NULL);
INSERT INTO `area` VALUES (3148, '饶平县', 307, 0, 3, NULL);
INSERT INTO `area` VALUES (3149, '惠来县', 308, 0, 3, NULL);
INSERT INTO `area` VALUES (3150, '揭东县', 308, 0, 3, NULL);
INSERT INTO `area` VALUES (3151, '揭西县', 308, 0, 3, NULL);
INSERT INTO `area` VALUES (3152, '普宁市', 308, 0, 3, NULL);
INSERT INTO `area` VALUES (3153, '榕城区', 308, 0, 3, NULL);
INSERT INTO `area` VALUES (3154, '云城区', 309, 0, 3, NULL);
INSERT INTO `area` VALUES (3155, '云安县', 309, 0, 3, NULL);
INSERT INTO `area` VALUES (3156, '新兴县', 309, 0, 3, NULL);
INSERT INTO `area` VALUES (3157, '罗定市', 309, 0, 3, NULL);
INSERT INTO `area` VALUES (3158, '郁南县', 309, 0, 3, NULL);
INSERT INTO `area` VALUES (3159, '上林县', 310, 0, 3, NULL);
INSERT INTO `area` VALUES (3160, '兴宁区', 310, 0, 3, NULL);
INSERT INTO `area` VALUES (3161, '宾阳县', 310, 0, 3, NULL);
INSERT INTO `area` VALUES (3162, '横县', 310, 0, 3, NULL);
INSERT INTO `area` VALUES (3163, '武鸣县', 310, 0, 3, NULL);
INSERT INTO `area` VALUES (3164, '江南区', 310, 0, 3, NULL);
INSERT INTO `area` VALUES (3165, '良庆区', 310, 0, 3, NULL);
INSERT INTO `area` VALUES (3166, '西乡塘区', 310, 0, 3, NULL);
INSERT INTO `area` VALUES (3167, '邕宁区', 310, 0, 3, NULL);
INSERT INTO `area` VALUES (3168, '隆安县', 310, 0, 3, NULL);
INSERT INTO `area` VALUES (3169, '青秀区', 310, 0, 3, NULL);
INSERT INTO `area` VALUES (3170, '马山县', 310, 0, 3, NULL);
INSERT INTO `area` VALUES (3171, '三江侗族自治县', 311, 0, 3, NULL);
INSERT INTO `area` VALUES (3172, '城中区', 311, 0, 3, NULL);
INSERT INTO `area` VALUES (3173, '柳北区', 311, 0, 3, NULL);
INSERT INTO `area` VALUES (3174, '柳南区', 311, 0, 3, NULL);
INSERT INTO `area` VALUES (3175, '柳城县', 311, 0, 3, NULL);
INSERT INTO `area` VALUES (3176, '柳江县', 311, 0, 3, NULL);
INSERT INTO `area` VALUES (3177, '融安县', 311, 0, 3, NULL);
INSERT INTO `area` VALUES (3178, '融水苗族自治县', 311, 0, 3, NULL);
INSERT INTO `area` VALUES (3179, '鱼峰区', 311, 0, 3, NULL);
INSERT INTO `area` VALUES (3180, '鹿寨县', 311, 0, 3, NULL);
INSERT INTO `area` VALUES (3181, '七星区', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3182, '临桂县', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3183, '全州县', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3184, '兴安县', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3185, '叠彩区', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3186, '平乐县', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3187, '恭城瑶族自治县', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3188, '永福县', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3189, '灌阳县', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3190, '灵川县', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3191, '秀峰区', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3192, '荔浦县', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3193, '象山区', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3194, '资源县', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3195, '阳朔县', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3196, '雁山区', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3197, '龙胜各族自治县', 312, 0, 3, NULL);
INSERT INTO `area` VALUES (3198, '万秀区', 313, 0, 3, NULL);
INSERT INTO `area` VALUES (3199, '岑溪市', 313, 0, 3, NULL);
INSERT INTO `area` VALUES (3200, '苍梧县', 313, 0, 3, NULL);
INSERT INTO `area` VALUES (3201, '蒙山县', 313, 0, 3, NULL);
INSERT INTO `area` VALUES (3202, '藤县', 313, 0, 3, NULL);
INSERT INTO `area` VALUES (3203, '蝶山区', 313, 0, 3, NULL);
INSERT INTO `area` VALUES (3204, '长洲区', 313, 0, 3, NULL);
INSERT INTO `area` VALUES (3205, '合浦县', 314, 0, 3, NULL);
INSERT INTO `area` VALUES (3206, '海城区', 314, 0, 3, NULL);
INSERT INTO `area` VALUES (3207, '铁山港区', 314, 0, 3, NULL);
INSERT INTO `area` VALUES (3208, '银海区', 314, 0, 3, NULL);
INSERT INTO `area` VALUES (3209, '上思县', 315, 0, 3, NULL);
INSERT INTO `area` VALUES (3210, '东兴市', 315, 0, 3, NULL);
INSERT INTO `area` VALUES (3211, '港口区', 315, 0, 3, NULL);
INSERT INTO `area` VALUES (3212, '防城区', 315, 0, 3, NULL);
INSERT INTO `area` VALUES (3213, '浦北县', 316, 0, 3, NULL);
INSERT INTO `area` VALUES (3214, '灵山县', 316, 0, 3, NULL);
INSERT INTO `area` VALUES (3215, '钦北区', 316, 0, 3, NULL);
INSERT INTO `area` VALUES (3216, '钦南区', 316, 0, 3, NULL);
INSERT INTO `area` VALUES (3217, '平南县', 317, 0, 3, NULL);
INSERT INTO `area` VALUES (3218, '桂平市', 317, 0, 3, NULL);
INSERT INTO `area` VALUES (3219, '港北区', 317, 0, 3, NULL);
INSERT INTO `area` VALUES (3220, '港南区', 317, 0, 3, NULL);
INSERT INTO `area` VALUES (3221, '覃塘区', 317, 0, 3, NULL);
INSERT INTO `area` VALUES (3222, '兴业县', 318, 0, 3, NULL);
INSERT INTO `area` VALUES (3223, '北流市', 318, 0, 3, NULL);
INSERT INTO `area` VALUES (3224, '博白县', 318, 0, 3, NULL);
INSERT INTO `area` VALUES (3225, '容县', 318, 0, 3, NULL);
INSERT INTO `area` VALUES (3226, '玉州区', 318, 0, 3, NULL);
INSERT INTO `area` VALUES (3227, '陆川县', 318, 0, 3, NULL);
INSERT INTO `area` VALUES (3228, '乐业县', 319, 0, 3, NULL);
INSERT INTO `area` VALUES (3229, '凌云县', 319, 0, 3, NULL);
INSERT INTO `area` VALUES (3230, '右江区', 319, 0, 3, NULL);
INSERT INTO `area` VALUES (3231, '平果县', 319, 0, 3, NULL);
INSERT INTO `area` VALUES (3232, '德保县', 319, 0, 3, NULL);
INSERT INTO `area` VALUES (3233, '田东县', 319, 0, 3, NULL);
INSERT INTO `area` VALUES (3234, '田林县', 319, 0, 3, NULL);
INSERT INTO `area` VALUES (3235, '田阳县', 319, 0, 3, NULL);
INSERT INTO `area` VALUES (3236, '西林县', 319, 0, 3, NULL);
INSERT INTO `area` VALUES (3237, '那坡县', 319, 0, 3, NULL);
INSERT INTO `area` VALUES (3238, '隆林各族自治县', 319, 0, 3, NULL);
INSERT INTO `area` VALUES (3239, '靖西县', 319, 0, 3, NULL);
INSERT INTO `area` VALUES (3240, '八步区', 320, 0, 3, NULL);
INSERT INTO `area` VALUES (3241, '富川瑶族自治县', 320, 0, 3, NULL);
INSERT INTO `area` VALUES (3242, '昭平县', 320, 0, 3, NULL);
INSERT INTO `area` VALUES (3243, '钟山县', 320, 0, 3, NULL);
INSERT INTO `area` VALUES (3244, '东兰县', 321, 0, 3, NULL);
INSERT INTO `area` VALUES (3245, '凤山县', 321, 0, 3, NULL);
INSERT INTO `area` VALUES (3246, '南丹县', 321, 0, 3, NULL);
INSERT INTO `area` VALUES (3247, '大化瑶族自治县', 321, 0, 3, NULL);
INSERT INTO `area` VALUES (3248, '天峨县', 321, 0, 3, NULL);
INSERT INTO `area` VALUES (3249, '宜州市', 321, 0, 3, NULL);
INSERT INTO `area` VALUES (3250, '巴马瑶族自治县', 321, 0, 3, NULL);
INSERT INTO `area` VALUES (3251, '环江毛南族自治县', 321, 0, 3, NULL);
INSERT INTO `area` VALUES (3252, '罗城仫佬族自治县', 321, 0, 3, NULL);
INSERT INTO `area` VALUES (3253, '都安瑶族自治县', 321, 0, 3, NULL);
INSERT INTO `area` VALUES (3254, '金城江区', 321, 0, 3, NULL);
INSERT INTO `area` VALUES (3255, '兴宾区', 322, 0, 3, NULL);
INSERT INTO `area` VALUES (3256, '合山市', 322, 0, 3, NULL);
INSERT INTO `area` VALUES (3257, '忻城县', 322, 0, 3, NULL);
INSERT INTO `area` VALUES (3258, '武宣县', 322, 0, 3, NULL);
INSERT INTO `area` VALUES (3259, '象州县', 322, 0, 3, NULL);
INSERT INTO `area` VALUES (3260, '金秀瑶族自治县', 322, 0, 3, NULL);
INSERT INTO `area` VALUES (3261, '凭祥市', 323, 0, 3, NULL);
INSERT INTO `area` VALUES (3262, '大新县', 323, 0, 3, NULL);
INSERT INTO `area` VALUES (3263, '天等县', 323, 0, 3, NULL);
INSERT INTO `area` VALUES (3264, '宁明县', 323, 0, 3, NULL);
INSERT INTO `area` VALUES (3265, '扶绥县', 323, 0, 3, NULL);
INSERT INTO `area` VALUES (3266, '江州区', 323, 0, 3, NULL);
INSERT INTO `area` VALUES (3267, '龙州县', 323, 0, 3, NULL);
INSERT INTO `area` VALUES (3268, '琼山区', 324, 0, 3, NULL);
INSERT INTO `area` VALUES (3269, '秀英区', 324, 0, 3, NULL);
INSERT INTO `area` VALUES (3270, '美兰区', 324, 0, 3, NULL);
INSERT INTO `area` VALUES (3271, '龙华区', 324, 0, 3, NULL);
INSERT INTO `area` VALUES (3272, '三亚市', 325, 0, 3, NULL);
INSERT INTO `area` VALUES (3273, '五指山市', 326, 0, 3, NULL);
INSERT INTO `area` VALUES (3274, '琼海市', 327, 0, 3, NULL);
INSERT INTO `area` VALUES (3275, '儋州市', 328, 0, 3, NULL);
INSERT INTO `area` VALUES (3276, '文昌市', 329, 0, 3, NULL);
INSERT INTO `area` VALUES (3277, '万宁市', 330, 0, 3, NULL);
INSERT INTO `area` VALUES (3278, '东方市', 331, 0, 3, NULL);
INSERT INTO `area` VALUES (3279, '定安县', 332, 0, 3, NULL);
INSERT INTO `area` VALUES (3280, '屯昌县', 333, 0, 3, NULL);
INSERT INTO `area` VALUES (3281, '澄迈县', 334, 0, 3, NULL);
INSERT INTO `area` VALUES (3282, '临高县', 335, 0, 3, NULL);
INSERT INTO `area` VALUES (3283, '白沙黎族自治县', 336, 0, 3, NULL);
INSERT INTO `area` VALUES (3284, '昌江黎族自治县', 337, 0, 3, NULL);
INSERT INTO `area` VALUES (3285, '乐东黎族自治县', 338, 0, 3, NULL);
INSERT INTO `area` VALUES (3286, '陵水黎族自治县', 339, 0, 3, NULL);
INSERT INTO `area` VALUES (3287, '保亭黎族苗族自治县', 340, 0, 3, NULL);
INSERT INTO `area` VALUES (3288, '琼中黎族苗族自治县', 341, 0, 3, NULL);
INSERT INTO `area` VALUES (4209, '双流区', 385, 0, 3, '');
INSERT INTO `area` VALUES (4210, '大邑县', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4211, '崇州市', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4212, '彭州市', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4213, '成华区', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4214, '新津县', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4215, '新都区', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4216, '武侯区', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4217, '温江区', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4218, '蒲江县', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4219, '邛崃市', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4220, '郫县', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4221, '都江堰市', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4222, '金堂县', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4223, '金牛区', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4224, '锦江区', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4225, '青白江区', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4226, '青羊区', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4227, '龙泉驿区', 385, 0, 3, NULL);
INSERT INTO `area` VALUES (4228, '大安区', 386, 0, 3, NULL);
INSERT INTO `area` VALUES (4229, '富顺县', 386, 0, 3, NULL);
INSERT INTO `area` VALUES (4230, '沿滩区', 386, 0, 3, NULL);
INSERT INTO `area` VALUES (4231, '自流井区', 386, 0, 3, NULL);
INSERT INTO `area` VALUES (4232, '荣县', 386, 0, 3, NULL);
INSERT INTO `area` VALUES (4233, '贡井区', 386, 0, 3, NULL);
INSERT INTO `area` VALUES (4234, '东区', 387, 0, 3, NULL);
INSERT INTO `area` VALUES (4235, '仁和区', 387, 0, 3, NULL);
INSERT INTO `area` VALUES (4236, '盐边县', 387, 0, 3, NULL);
INSERT INTO `area` VALUES (4237, '米易县', 387, 0, 3, NULL);
INSERT INTO `area` VALUES (4238, '西区', 387, 0, 3, NULL);
INSERT INTO `area` VALUES (4239, '叙永县', 388, 0, 3, NULL);
INSERT INTO `area` VALUES (4240, '古蔺县', 388, 0, 3, NULL);
INSERT INTO `area` VALUES (4241, '合江县', 388, 0, 3, NULL);
INSERT INTO `area` VALUES (4242, '江阳区', 388, 0, 3, NULL);
INSERT INTO `area` VALUES (4243, '泸县', 388, 0, 3, NULL);
INSERT INTO `area` VALUES (4244, '纳溪区', 388, 0, 3, NULL);
INSERT INTO `area` VALUES (4245, '龙马潭区', 388, 0, 3, NULL);
INSERT INTO `area` VALUES (4246, '中江县', 389, 0, 3, NULL);
INSERT INTO `area` VALUES (4247, '什邡市', 389, 0, 3, NULL);
INSERT INTO `area` VALUES (4248, '广汉市', 389, 0, 3, NULL);
INSERT INTO `area` VALUES (4249, '旌阳区', 389, 0, 3, NULL);
INSERT INTO `area` VALUES (4250, '绵竹市', 389, 0, 3, NULL);
INSERT INTO `area` VALUES (4251, '罗江县', 389, 0, 3, NULL);
INSERT INTO `area` VALUES (4252, '三台县', 390, 0, 3, NULL);
INSERT INTO `area` VALUES (4253, '北川羌族自治县', 390, 0, 3, NULL);
INSERT INTO `area` VALUES (4254, '安县', 390, 0, 3, NULL);
INSERT INTO `area` VALUES (4255, '平武县', 390, 0, 3, NULL);
INSERT INTO `area` VALUES (4256, '梓潼县', 390, 0, 3, NULL);
INSERT INTO `area` VALUES (4257, '江油市', 390, 0, 3, NULL);
INSERT INTO `area` VALUES (4258, '涪城区', 390, 0, 3, NULL);
INSERT INTO `area` VALUES (4259, '游仙区', 390, 0, 3, NULL);
INSERT INTO `area` VALUES (4260, '盐亭县', 390, 0, 3, NULL);
INSERT INTO `area` VALUES (4261, '元坝区', 391, 0, 3, NULL);
INSERT INTO `area` VALUES (4262, '利州区', 391, 0, 3, NULL);
INSERT INTO `area` VALUES (4263, '剑阁县', 391, 0, 3, NULL);
INSERT INTO `area` VALUES (4264, '旺苍县', 391, 0, 3, NULL);
INSERT INTO `area` VALUES (4265, '朝天区', 391, 0, 3, NULL);
INSERT INTO `area` VALUES (4266, '苍溪县', 391, 0, 3, NULL);
INSERT INTO `area` VALUES (4267, '青川县', 391, 0, 3, NULL);
INSERT INTO `area` VALUES (4268, '大英县', 392, 0, 3, NULL);
INSERT INTO `area` VALUES (4269, '安居区', 392, 0, 3, NULL);
INSERT INTO `area` VALUES (4270, '射洪县', 392, 0, 3, NULL);
INSERT INTO `area` VALUES (4271, '船山区', 392, 0, 3, NULL);
INSERT INTO `area` VALUES (4272, '蓬溪县', 392, 0, 3, NULL);
INSERT INTO `area` VALUES (4273, '东兴区', 393, 0, 3, NULL);
INSERT INTO `area` VALUES (4274, '威远县', 393, 0, 3, NULL);
INSERT INTO `area` VALUES (4275, '市中区', 393, 0, 3, NULL);
INSERT INTO `area` VALUES (4276, '资中县', 393, 0, 3, NULL);
INSERT INTO `area` VALUES (4277, '隆昌县', 393, 0, 3, NULL);
INSERT INTO `area` VALUES (4278, '五通桥区', 394, 0, 3, NULL);
INSERT INTO `area` VALUES (4279, '井研县', 394, 0, 3, NULL);
INSERT INTO `area` VALUES (4280, '夹江县', 394, 0, 3, NULL);
INSERT INTO `area` VALUES (4281, '峨眉山市', 394, 0, 3, NULL);
INSERT INTO `area` VALUES (4282, '峨边彝族自治县', 394, 0, 3, NULL);
INSERT INTO `area` VALUES (4283, '市中区', 394, 0, 3, NULL);
INSERT INTO `area` VALUES (4284, '沐川县', 394, 0, 3, NULL);
INSERT INTO `area` VALUES (4285, '沙湾区', 394, 0, 3, NULL);
INSERT INTO `area` VALUES (4286, '犍为县', 394, 0, 3, NULL);
INSERT INTO `area` VALUES (4287, '金口河区', 394, 0, 3, NULL);
INSERT INTO `area` VALUES (4288, '马边彝族自治县', 394, 0, 3, NULL);
INSERT INTO `area` VALUES (4289, '仪陇县', 395, 0, 3, NULL);
INSERT INTO `area` VALUES (4290, '南充市嘉陵区', 395, 0, 3, NULL);
INSERT INTO `area` VALUES (4291, '南部县', 395, 0, 3, NULL);
INSERT INTO `area` VALUES (4292, '嘉陵区', 395, 0, 3, NULL);
INSERT INTO `area` VALUES (4293, '营山县', 395, 0, 3, NULL);
INSERT INTO `area` VALUES (4294, '蓬安县', 395, 0, 3, NULL);
INSERT INTO `area` VALUES (4295, '西充县', 395, 0, 3, NULL);
INSERT INTO `area` VALUES (4296, '阆中市', 395, 0, 3, NULL);
INSERT INTO `area` VALUES (4297, '顺庆区', 395, 0, 3, NULL);
INSERT INTO `area` VALUES (4298, '高坪区', 395, 0, 3, NULL);
INSERT INTO `area` VALUES (4299, '东坡区', 396, 0, 3, NULL);
INSERT INTO `area` VALUES (4300, '丹棱县', 396, 0, 3, NULL);
INSERT INTO `area` VALUES (4301, '仁寿县', 396, 0, 3, NULL);
INSERT INTO `area` VALUES (4302, '彭山县', 396, 0, 3, NULL);
INSERT INTO `area` VALUES (4303, '洪雅县', 396, 0, 3, NULL);
INSERT INTO `area` VALUES (4304, '青神县', 396, 0, 3, NULL);
INSERT INTO `area` VALUES (4305, '兴文县', 397, 0, 3, NULL);
INSERT INTO `area` VALUES (4306, '南溪县', 397, 0, 3, NULL);
INSERT INTO `area` VALUES (4307, '宜宾县', 397, 0, 3, NULL);
INSERT INTO `area` VALUES (4308, '屏山县', 397, 0, 3, NULL);
INSERT INTO `area` VALUES (4309, '江安县', 397, 0, 3, NULL);
INSERT INTO `area` VALUES (4310, '珙县', 397, 0, 3, NULL);
INSERT INTO `area` VALUES (4311, '筠连县', 397, 0, 3, NULL);
INSERT INTO `area` VALUES (4312, '翠屏区', 397, 0, 3, NULL);
INSERT INTO `area` VALUES (4313, '长宁县', 397, 0, 3, NULL);
INSERT INTO `area` VALUES (4314, '高县', 397, 0, 3, NULL);
INSERT INTO `area` VALUES (4315, '华蓥市', 398, 0, 3, NULL);
INSERT INTO `area` VALUES (4316, '岳池县', 398, 0, 3, NULL);
INSERT INTO `area` VALUES (4317, '广安区', 398, 0, 3, NULL);
INSERT INTO `area` VALUES (4318, '武胜县', 398, 0, 3, NULL);
INSERT INTO `area` VALUES (4319, '邻水县', 398, 0, 3, NULL);
INSERT INTO `area` VALUES (4320, '万源市', 399, 0, 3, NULL);
INSERT INTO `area` VALUES (4321, '大竹县', 399, 0, 3, NULL);
INSERT INTO `area` VALUES (4322, '宣汉县', 399, 0, 3, NULL);
INSERT INTO `area` VALUES (4323, '开江县', 399, 0, 3, NULL);
INSERT INTO `area` VALUES (4324, '渠县', 399, 0, 3, NULL);
INSERT INTO `area` VALUES (4325, '达县', 399, 0, 3, NULL);
INSERT INTO `area` VALUES (4326, '通川区', 399, 0, 3, NULL);
INSERT INTO `area` VALUES (4327, '名山县', 400, 0, 3, NULL);
INSERT INTO `area` VALUES (4328, '天全县', 400, 0, 3, NULL);
INSERT INTO `area` VALUES (4329, '宝兴县', 400, 0, 3, NULL);
INSERT INTO `area` VALUES (4330, '汉源县', 400, 0, 3, NULL);
INSERT INTO `area` VALUES (4331, '石棉县', 400, 0, 3, NULL);
INSERT INTO `area` VALUES (4332, '芦山县', 400, 0, 3, NULL);
INSERT INTO `area` VALUES (4333, '荥经县', 400, 0, 3, NULL);
INSERT INTO `area` VALUES (4334, '雨城区', 400, 0, 3, NULL);
INSERT INTO `area` VALUES (4335, '南江县', 401, 0, 3, NULL);
INSERT INTO `area` VALUES (4336, '巴州区', 401, 0, 3, NULL);
INSERT INTO `area` VALUES (4337, '平昌县', 401, 0, 3, NULL);
INSERT INTO `area` VALUES (4338, '通江县', 401, 0, 3, NULL);
INSERT INTO `area` VALUES (4339, '乐至县', 402, 0, 3, NULL);
INSERT INTO `area` VALUES (4340, '安岳县', 402, 0, 3, NULL);
INSERT INTO `area` VALUES (4341, '简阳市', 402, 0, 3, NULL);
INSERT INTO `area` VALUES (4342, '雁江区', 402, 0, 3, NULL);
INSERT INTO `area` VALUES (4343, '九寨沟县', 403, 0, 3, NULL);
INSERT INTO `area` VALUES (4344, '壤塘县', 403, 0, 3, NULL);
INSERT INTO `area` VALUES (4345, '小金县', 403, 0, 3, NULL);
INSERT INTO `area` VALUES (4346, '松潘县', 403, 0, 3, NULL);
INSERT INTO `area` VALUES (4347, '汶川县', 403, 0, 3, NULL);
INSERT INTO `area` VALUES (4348, '理县', 403, 0, 3, NULL);
INSERT INTO `area` VALUES (4349, '红原县', 403, 0, 3, NULL);
INSERT INTO `area` VALUES (4350, '若尔盖县', 403, 0, 3, NULL);
INSERT INTO `area` VALUES (4351, '茂县', 403, 0, 3, NULL);
INSERT INTO `area` VALUES (4352, '金川县', 403, 0, 3, NULL);
INSERT INTO `area` VALUES (4353, '阿坝县', 403, 0, 3, NULL);
INSERT INTO `area` VALUES (4354, '马尔康县', 403, 0, 3, NULL);
INSERT INTO `area` VALUES (4355, '黑水县', 403, 0, 3, NULL);
INSERT INTO `area` VALUES (4356, '丹巴县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4357, '乡城县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4358, '巴塘县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4359, '康定县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4360, '得荣县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4361, '德格县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4362, '新龙县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4363, '泸定县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4364, '炉霍县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4365, '理塘县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4366, '甘孜县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4367, '白玉县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4368, '石渠县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4369, '稻城县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4370, '色达县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4371, '道孚县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4372, '雅江县', 404, 0, 3, NULL);
INSERT INTO `area` VALUES (4373, '会东县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4374, '会理县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4375, '冕宁县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4376, '喜德县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4377, '宁南县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4378, '布拖县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4379, '德昌县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4380, '昭觉县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4381, '普格县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4382, '木里藏族自治县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4383, '甘洛县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4384, '盐源县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4385, '美姑县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4386, '西昌', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4387, '越西县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4388, '金阳县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4389, '雷波县', 405, 0, 3, NULL);
INSERT INTO `area` VALUES (4390, '乌当区', 406, 0, 3, NULL);
INSERT INTO `area` VALUES (4391, '云岩区', 406, 0, 3, NULL);
INSERT INTO `area` VALUES (4392, '修文县', 406, 0, 3, NULL);
INSERT INTO `area` VALUES (4393, '南明区', 406, 0, 3, NULL);
INSERT INTO `area` VALUES (4394, '小河区', 406, 0, 3, NULL);
INSERT INTO `area` VALUES (4395, '开阳县', 406, 0, 3, NULL);
INSERT INTO `area` VALUES (4396, '息烽县', 406, 0, 3, NULL);
INSERT INTO `area` VALUES (4397, '清镇市', 406, 0, 3, NULL);
INSERT INTO `area` VALUES (4398, '白云区', 406, 0, 3, NULL);
INSERT INTO `area` VALUES (4399, '花溪区', 406, 0, 3, NULL);
INSERT INTO `area` VALUES (4400, '六枝特区', 407, 0, 3, NULL);
INSERT INTO `area` VALUES (4401, '水城县', 407, 0, 3, NULL);
INSERT INTO `area` VALUES (4402, '盘县', 407, 0, 3, NULL);
INSERT INTO `area` VALUES (4403, '钟山区', 407, 0, 3, NULL);
INSERT INTO `area` VALUES (4404, '习水县', 408, 0, 3, NULL);
INSERT INTO `area` VALUES (4405, '仁怀市', 408, 0, 3, NULL);
INSERT INTO `area` VALUES (4406, '余庆县', 408, 0, 3, NULL);
INSERT INTO `area` VALUES (4407, '凤冈县', 408, 0, 3, NULL);
INSERT INTO `area` VALUES (4408, '务川仡佬族苗族自治县', 408, 0, 3, NULL);
INSERT INTO `area` VALUES (4409, '桐梓县', 408, 0, 3, NULL);
INSERT INTO `area` VALUES (4410, '正安县', 408, 0, 3, NULL);
INSERT INTO `area` VALUES (4411, '汇川区', 408, 0, 3, NULL);
INSERT INTO `area` VALUES (4412, '湄潭县', 408, 0, 3, NULL);
INSERT INTO `area` VALUES (4413, '红花岗区', 408, 0, 3, NULL);
INSERT INTO `area` VALUES (4414, '绥阳县', 408, 0, 3, NULL);
INSERT INTO `area` VALUES (4415, '赤水市', 408, 0, 3, NULL);
INSERT INTO `area` VALUES (4416, '道真仡佬族苗族自治县', 408, 0, 3, NULL);
INSERT INTO `area` VALUES (4417, '遵义县', 408, 0, 3, NULL);
INSERT INTO `area` VALUES (4418, '关岭布依族苗族自治县', 409, 0, 3, NULL);
INSERT INTO `area` VALUES (4419, '平坝县', 409, 0, 3, NULL);
INSERT INTO `area` VALUES (4420, '普定县', 409, 0, 3, NULL);
INSERT INTO `area` VALUES (4421, '紫云苗族布依族自治县', 409, 0, 3, NULL);
INSERT INTO `area` VALUES (4422, '西秀区', 409, 0, 3, NULL);
INSERT INTO `area` VALUES (4423, '镇宁布依族苗族自治县', 409, 0, 3, NULL);
INSERT INTO `area` VALUES (4424, '万山特区', 410, 0, 3, NULL);
INSERT INTO `area` VALUES (4425, '印江土家族苗族自治县', 410, 0, 3, NULL);
INSERT INTO `area` VALUES (4426, '德江县', 410, 0, 3, NULL);
INSERT INTO `area` VALUES (4427, '思南县', 410, 0, 3, NULL);
INSERT INTO `area` VALUES (4428, '松桃苗族自治县', 410, 0, 3, NULL);
INSERT INTO `area` VALUES (4429, '江口县', 410, 0, 3, NULL);
INSERT INTO `area` VALUES (4430, '沿河土家族自治县', 410, 0, 3, NULL);
INSERT INTO `area` VALUES (4431, '玉屏侗族自治县', 410, 0, 3, NULL);
INSERT INTO `area` VALUES (4432, '石阡县', 410, 0, 3, NULL);
INSERT INTO `area` VALUES (4433, '铜仁市', 410, 0, 3, NULL);
INSERT INTO `area` VALUES (4434, '兴义市', 411, 0, 3, NULL);
INSERT INTO `area` VALUES (4435, '兴仁县', 411, 0, 3, NULL);
INSERT INTO `area` VALUES (4436, '册亨县', 411, 0, 3, NULL);
INSERT INTO `area` VALUES (4437, '安龙县', 411, 0, 3, NULL);
INSERT INTO `area` VALUES (4438, '普安县', 411, 0, 3, NULL);
INSERT INTO `area` VALUES (4439, '晴隆县', 411, 0, 3, NULL);
INSERT INTO `area` VALUES (4440, '望谟县', 411, 0, 3, NULL);
INSERT INTO `area` VALUES (4441, '贞丰县', 411, 0, 3, NULL);
INSERT INTO `area` VALUES (4442, '大方县', 412, 0, 3, NULL);
INSERT INTO `area` VALUES (4443, '威宁彝族回族苗族自治县', 412, 0, 3, NULL);
INSERT INTO `area` VALUES (4444, '毕节市', 412, 0, 3, NULL);
INSERT INTO `area` VALUES (4445, '纳雍县', 412, 0, 3, NULL);
INSERT INTO `area` VALUES (4446, '织金县', 412, 0, 3, NULL);
INSERT INTO `area` VALUES (4447, '赫章县', 412, 0, 3, NULL);
INSERT INTO `area` VALUES (4448, '金沙县', 412, 0, 3, NULL);
INSERT INTO `area` VALUES (4449, '黔西县', 412, 0, 3, NULL);
INSERT INTO `area` VALUES (4450, '三穗县', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4451, '丹寨县', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4452, '从江县', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4453, '凯里市', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4454, '剑河县', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4455, '台江县', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4456, '天柱县', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4457, '岑巩县', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4458, '施秉县', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4459, '榕江县', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4460, '锦屏县', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4461, '镇远县', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4462, '雷山县', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4463, '麻江县', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4464, '黄平县', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4465, '黎平县', 413, 0, 3, NULL);
INSERT INTO `area` VALUES (4466, '三都水族自治县', 414, 0, 3, NULL);
INSERT INTO `area` VALUES (4467, '平塘县', 414, 0, 3, NULL);
INSERT INTO `area` VALUES (4468, '惠水县', 414, 0, 3, NULL);
INSERT INTO `area` VALUES (4469, '独山县', 414, 0, 3, NULL);
INSERT INTO `area` VALUES (4470, '瓮安县', 414, 0, 3, NULL);
INSERT INTO `area` VALUES (4471, '福泉市', 414, 0, 3, NULL);
INSERT INTO `area` VALUES (4472, '罗甸县', 414, 0, 3, NULL);
INSERT INTO `area` VALUES (4473, '荔波县', 414, 0, 3, NULL);
INSERT INTO `area` VALUES (4474, '贵定县', 414, 0, 3, NULL);
INSERT INTO `area` VALUES (4475, '都匀市', 414, 0, 3, NULL);
INSERT INTO `area` VALUES (4476, '长顺县', 414, 0, 3, NULL);
INSERT INTO `area` VALUES (4477, '龙里县', 414, 0, 3, NULL);
INSERT INTO `area` VALUES (4478, '东川区', 415, 0, 3, NULL);
INSERT INTO `area` VALUES (4479, '五华区', 415, 0, 3, NULL);
INSERT INTO `area` VALUES (4480, '呈贡县', 415, 0, 3, NULL);
INSERT INTO `area` VALUES (4481, '安宁市', 415, 0, 3, NULL);
INSERT INTO `area` VALUES (4482, '官渡区', 415, 0, 3, NULL);
INSERT INTO `area` VALUES (4483, '宜良县', 415, 0, 3, NULL);
INSERT INTO `area` VALUES (4484, '富民县', 415, 0, 3, NULL);
INSERT INTO `area` VALUES (4485, '寻甸回族彝族自治县', 415, 0, 3, NULL);
INSERT INTO `area` VALUES (4486, '嵩明县', 415, 0, 3, NULL);
INSERT INTO `area` VALUES (4487, '晋宁县', 415, 0, 3, NULL);
INSERT INTO `area` VALUES (4488, '盘龙区', 415, 0, 3, NULL);
INSERT INTO `area` VALUES (4489, '石林彝族自治县', 415, 0, 3, NULL);
INSERT INTO `area` VALUES (4490, '禄劝彝族苗族自治县', 415, 0, 3, NULL);
INSERT INTO `area` VALUES (4491, '西山区', 415, 0, 3, NULL);
INSERT INTO `area` VALUES (4492, '会泽县', 416, 0, 3, NULL);
INSERT INTO `area` VALUES (4493, '宣威市', 416, 0, 3, NULL);
INSERT INTO `area` VALUES (4494, '富源县', 416, 0, 3, NULL);
INSERT INTO `area` VALUES (4495, '师宗县', 416, 0, 3, NULL);
INSERT INTO `area` VALUES (4496, '沾益县', 416, 0, 3, NULL);
INSERT INTO `area` VALUES (4497, '罗平县', 416, 0, 3, NULL);
INSERT INTO `area` VALUES (4498, '陆良县', 416, 0, 3, NULL);
INSERT INTO `area` VALUES (4499, '马龙县', 416, 0, 3, NULL);
INSERT INTO `area` VALUES (4500, '麒麟区', 416, 0, 3, NULL);
INSERT INTO `area` VALUES (4501, '元江哈尼族彝族傣族自治县', 417, 0, 3, NULL);
INSERT INTO `area` VALUES (4502, '华宁县', 417, 0, 3, NULL);
INSERT INTO `area` VALUES (4503, '峨山彝族自治县', 417, 0, 3, NULL);
INSERT INTO `area` VALUES (4504, '新平彝族傣族自治县', 417, 0, 3, NULL);
INSERT INTO `area` VALUES (4505, '易门县', 417, 0, 3, NULL);
INSERT INTO `area` VALUES (4506, '江川县', 417, 0, 3, NULL);
INSERT INTO `area` VALUES (4507, '澄江县', 417, 0, 3, NULL);
INSERT INTO `area` VALUES (4508, '红塔区', 417, 0, 3, NULL);
INSERT INTO `area` VALUES (4509, '通海县', 417, 0, 3, NULL);
INSERT INTO `area` VALUES (4510, '施甸县', 418, 0, 3, NULL);
INSERT INTO `area` VALUES (4511, '昌宁县', 418, 0, 3, NULL);
INSERT INTO `area` VALUES (4512, '腾冲县', 418, 0, 3, NULL);
INSERT INTO `area` VALUES (4513, '隆阳区', 418, 0, 3, NULL);
INSERT INTO `area` VALUES (4514, '龙陵县', 418, 0, 3, NULL);
INSERT INTO `area` VALUES (4515, '大关县', 419, 0, 3, NULL);
INSERT INTO `area` VALUES (4516, '威信县', 419, 0, 3, NULL);
INSERT INTO `area` VALUES (4517, '巧家县', 419, 0, 3, NULL);
INSERT INTO `area` VALUES (4518, '彝良县', 419, 0, 3, NULL);
INSERT INTO `area` VALUES (4519, '昭阳区', 419, 0, 3, NULL);
INSERT INTO `area` VALUES (4520, '水富县', 419, 0, 3, NULL);
INSERT INTO `area` VALUES (4521, '永善县', 419, 0, 3, NULL);
INSERT INTO `area` VALUES (4522, '盐津县', 419, 0, 3, NULL);
INSERT INTO `area` VALUES (4523, '绥江县', 419, 0, 3, NULL);
INSERT INTO `area` VALUES (4524, '镇雄县', 419, 0, 3, NULL);
INSERT INTO `area` VALUES (4525, '鲁甸县', 419, 0, 3, NULL);
INSERT INTO `area` VALUES (4526, '华坪县', 420, 0, 3, NULL);
INSERT INTO `area` VALUES (4527, '古城区', 420, 0, 3, NULL);
INSERT INTO `area` VALUES (4528, '宁蒗彝族自治县', 420, 0, 3, NULL);
INSERT INTO `area` VALUES (4529, '永胜县', 420, 0, 3, NULL);
INSERT INTO `area` VALUES (4530, '玉龙纳西族自治县', 420, 0, 3, NULL);
INSERT INTO `area` VALUES (4531, '临翔区', 422, 0, 3, NULL);
INSERT INTO `area` VALUES (4532, '云县', 422, 0, 3, NULL);
INSERT INTO `area` VALUES (4533, '凤庆县', 422, 0, 3, NULL);
INSERT INTO `area` VALUES (4534, '双江拉祜族佤族布朗族傣族自治县', 422, 0, 3, NULL);
INSERT INTO `area` VALUES (4535, '永德县', 422, 0, 3, NULL);
INSERT INTO `area` VALUES (4536, '沧源佤族自治县', 422, 0, 3, NULL);
INSERT INTO `area` VALUES (4537, '耿马傣族佤族自治县', 422, 0, 3, NULL);
INSERT INTO `area` VALUES (4538, '镇康县', 422, 0, 3, NULL);
INSERT INTO `area` VALUES (4539, '元谋县', 423, 0, 3, NULL);
INSERT INTO `area` VALUES (4540, '南华县', 423, 0, 3, NULL);
INSERT INTO `area` VALUES (4541, '双柏县', 423, 0, 3, NULL);
INSERT INTO `area` VALUES (4542, '大姚县', 423, 0, 3, NULL);
INSERT INTO `area` VALUES (4543, '姚安县', 423, 0, 3, NULL);
INSERT INTO `area` VALUES (4544, '楚雄市', 423, 0, 3, NULL);
INSERT INTO `area` VALUES (4545, '武定县', 423, 0, 3, NULL);
INSERT INTO `area` VALUES (4546, '永仁县', 423, 0, 3, NULL);
INSERT INTO `area` VALUES (4547, '牟定县', 423, 0, 3, NULL);
INSERT INTO `area` VALUES (4548, '禄丰县', 423, 0, 3, NULL);
INSERT INTO `area` VALUES (4549, '个旧市', 424, 0, 3, NULL);
INSERT INTO `area` VALUES (4550, '元阳县', 424, 0, 3, NULL);
INSERT INTO `area` VALUES (4551, '屏边苗族自治县', 424, 0, 3, NULL);
INSERT INTO `area` VALUES (4552, '建水县', 424, 0, 3, NULL);
INSERT INTO `area` VALUES (4553, '开远市', 424, 0, 3, NULL);
INSERT INTO `area` VALUES (4554, '弥勒县', 424, 0, 3, NULL);
INSERT INTO `area` VALUES (4555, '河口瑶族自治县', 424, 0, 3, NULL);
INSERT INTO `area` VALUES (4556, '泸西县', 424, 0, 3, NULL);
INSERT INTO `area` VALUES (4557, '石屏县', 424, 0, 3, NULL);
INSERT INTO `area` VALUES (4558, '红河县', 424, 0, 3, NULL);
INSERT INTO `area` VALUES (4559, '绿春县', 424, 0, 3, NULL);
INSERT INTO `area` VALUES (4560, '蒙自县', 424, 0, 3, NULL);
INSERT INTO `area` VALUES (4561, '金平苗族瑶族傣族自治县', 424, 0, 3, NULL);
INSERT INTO `area` VALUES (4562, '丘北县', 425, 0, 3, NULL);
INSERT INTO `area` VALUES (4563, '富宁县', 425, 0, 3, NULL);
INSERT INTO `area` VALUES (4564, '广南县', 425, 0, 3, NULL);
INSERT INTO `area` VALUES (4565, '文山县', 425, 0, 3, NULL);
INSERT INTO `area` VALUES (4566, '砚山县', 425, 0, 3, NULL);
INSERT INTO `area` VALUES (4567, '西畴县', 425, 0, 3, NULL);
INSERT INTO `area` VALUES (4568, '马关县', 425, 0, 3, NULL);
INSERT INTO `area` VALUES (4569, '麻栗坡县', 425, 0, 3, NULL);
INSERT INTO `area` VALUES (4570, '勐海县', 426, 0, 3, NULL);
INSERT INTO `area` VALUES (4571, '勐腊县', 426, 0, 3, NULL);
INSERT INTO `area` VALUES (4572, '景洪市', 426, 0, 3, NULL);
INSERT INTO `area` VALUES (4573, '云龙县', 427, 0, 3, NULL);
INSERT INTO `area` VALUES (4574, '剑川县', 427, 0, 3, NULL);
INSERT INTO `area` VALUES (4575, '南涧彝族自治县', 427, 0, 3, NULL);
INSERT INTO `area` VALUES (4576, '大理市', 427, 0, 3, NULL);
INSERT INTO `area` VALUES (4577, '宾川县', 427, 0, 3, NULL);
INSERT INTO `area` VALUES (4578, '巍山彝族回族自治县', 427, 0, 3, NULL);
INSERT INTO `area` VALUES (4579, '弥渡县', 427, 0, 3, NULL);
INSERT INTO `area` VALUES (4580, '永平县', 427, 0, 3, NULL);
INSERT INTO `area` VALUES (4581, '洱源县', 427, 0, 3, NULL);
INSERT INTO `area` VALUES (4582, '漾濞彝族自治县', 427, 0, 3, NULL);
INSERT INTO `area` VALUES (4583, '祥云县', 427, 0, 3, NULL);
INSERT INTO `area` VALUES (4584, '鹤庆县', 427, 0, 3, NULL);
INSERT INTO `area` VALUES (4585, '梁河县', 428, 0, 3, NULL);
INSERT INTO `area` VALUES (4586, '潞西市', 428, 0, 3, NULL);
INSERT INTO `area` VALUES (4587, '瑞丽市', 428, 0, 3, NULL);
INSERT INTO `area` VALUES (4588, '盈江县', 428, 0, 3, NULL);
INSERT INTO `area` VALUES (4589, '陇川县', 428, 0, 3, NULL);
INSERT INTO `area` VALUES (4590, '德钦县', 430, 0, 3, NULL);
INSERT INTO `area` VALUES (4591, '维西傈僳族自治县', 430, 0, 3, NULL);
INSERT INTO `area` VALUES (4592, '香格里拉县', 430, 0, 3, NULL);
INSERT INTO `area` VALUES (4593, '城关区', 431, 0, 3, NULL);
INSERT INTO `area` VALUES (4594, '堆龙德庆县', 431, 0, 3, NULL);
INSERT INTO `area` VALUES (4595, '墨竹工卡县', 431, 0, 3, NULL);
INSERT INTO `area` VALUES (4596, '尼木县', 431, 0, 3, NULL);
INSERT INTO `area` VALUES (4597, '当雄县', 431, 0, 3, NULL);
INSERT INTO `area` VALUES (4598, '曲水县', 431, 0, 3, NULL);
INSERT INTO `area` VALUES (4599, '林周县', 431, 0, 3, NULL);
INSERT INTO `area` VALUES (4600, '达孜县', 431, 0, 3, NULL);
INSERT INTO `area` VALUES (4601, '丁青县', 432, 0, 3, NULL);
INSERT INTO `area` VALUES (4602, '八宿县', 432, 0, 3, NULL);
INSERT INTO `area` VALUES (4603, '察雅县', 432, 0, 3, NULL);
INSERT INTO `area` VALUES (4604, '左贡县', 432, 0, 3, NULL);
INSERT INTO `area` VALUES (4605, '昌都县', 432, 0, 3, NULL);
INSERT INTO `area` VALUES (4606, '江达县', 432, 0, 3, NULL);
INSERT INTO `area` VALUES (4607, '洛隆县', 432, 0, 3, NULL);
INSERT INTO `area` VALUES (4608, '类乌齐县', 432, 0, 3, NULL);
INSERT INTO `area` VALUES (4609, '芒康县', 432, 0, 3, NULL);
INSERT INTO `area` VALUES (4610, '贡觉县', 432, 0, 3, NULL);
INSERT INTO `area` VALUES (4611, '边坝县', 432, 0, 3, NULL);
INSERT INTO `area` VALUES (4612, '乃东县', 433, 0, 3, NULL);
INSERT INTO `area` VALUES (4613, '加查县', 433, 0, 3, NULL);
INSERT INTO `area` VALUES (4614, '扎囊县', 433, 0, 3, NULL);
INSERT INTO `area` VALUES (4615, '措美县', 433, 0, 3, NULL);
INSERT INTO `area` VALUES (4616, '曲松县', 433, 0, 3, NULL);
INSERT INTO `area` VALUES (4617, '桑日县', 433, 0, 3, NULL);
INSERT INTO `area` VALUES (4618, '洛扎县', 433, 0, 3, NULL);
INSERT INTO `area` VALUES (4619, '浪卡子县', 433, 0, 3, NULL);
INSERT INTO `area` VALUES (4620, '琼结县', 433, 0, 3, NULL);
INSERT INTO `area` VALUES (4621, '贡嘎县', 433, 0, 3, NULL);
INSERT INTO `area` VALUES (4622, '错那县', 433, 0, 3, NULL);
INSERT INTO `area` VALUES (4623, '隆子县', 433, 0, 3, NULL);
INSERT INTO `area` VALUES (4624, '亚东县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4625, '仁布县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4626, '仲巴县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4627, '南木林县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4628, '吉隆县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4629, '定日县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4630, '定结县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4631, '岗巴县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4632, '康马县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4633, '拉孜县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4634, '日喀则市', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4635, '昂仁县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4636, '江孜县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4637, '白朗县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4638, '聂拉木县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4639, '萨嘎县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4640, '萨迦县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4641, '谢通门县', 434, 0, 3, NULL);
INSERT INTO `area` VALUES (4642, '嘉黎县', 435, 0, 3, NULL);
INSERT INTO `area` VALUES (4643, '安多县', 435, 0, 3, NULL);
INSERT INTO `area` VALUES (4644, '尼玛县', 435, 0, 3, NULL);
INSERT INTO `area` VALUES (4645, '巴青县', 435, 0, 3, NULL);
INSERT INTO `area` VALUES (4646, '比如县', 435, 0, 3, NULL);
INSERT INTO `area` VALUES (4647, '班戈县', 435, 0, 3, NULL);
INSERT INTO `area` VALUES (4648, '申扎县', 435, 0, 3, NULL);
INSERT INTO `area` VALUES (4649, '索县', 435, 0, 3, NULL);
INSERT INTO `area` VALUES (4650, '聂荣县', 435, 0, 3, NULL);
INSERT INTO `area` VALUES (4651, '那曲县', 435, 0, 3, NULL);
INSERT INTO `area` VALUES (4652, '噶尔县', 436, 0, 3, NULL);
INSERT INTO `area` VALUES (4653, '措勤县', 436, 0, 3, NULL);
INSERT INTO `area` VALUES (4654, '改则县', 436, 0, 3, NULL);
INSERT INTO `area` VALUES (4655, '日土县', 436, 0, 3, NULL);
INSERT INTO `area` VALUES (4656, '普兰县', 436, 0, 3, NULL);
INSERT INTO `area` VALUES (4657, '札达县', 436, 0, 3, NULL);
INSERT INTO `area` VALUES (4658, '革吉县', 436, 0, 3, NULL);
INSERT INTO `area` VALUES (4659, '墨脱县', 437, 0, 3, NULL);
INSERT INTO `area` VALUES (4660, '察隅县', 437, 0, 3, NULL);
INSERT INTO `area` VALUES (4661, '工布江达县', 437, 0, 3, NULL);
INSERT INTO `area` VALUES (4662, '朗县', 437, 0, 3, NULL);
INSERT INTO `area` VALUES (4663, '林芝县', 437, 0, 3, NULL);
INSERT INTO `area` VALUES (4664, '波密县', 437, 0, 3, NULL);
INSERT INTO `area` VALUES (4665, '米林县', 437, 0, 3, NULL);
INSERT INTO `area` VALUES (4666, '临潼区', 438, 0, 3, NULL);
INSERT INTO `area` VALUES (4667, '周至县', 438, 0, 3, NULL);
INSERT INTO `area` VALUES (4668, '户县', 438, 0, 3, NULL);
INSERT INTO `area` VALUES (4669, '新城区', 438, 0, 3, NULL);
INSERT INTO `area` VALUES (4670, '未央区', 438, 0, 3, NULL);
INSERT INTO `area` VALUES (4671, '灞桥区', 438, 0, 3, NULL);
INSERT INTO `area` VALUES (4672, '碑林区', 438, 0, 3, NULL);
INSERT INTO `area` VALUES (4673, '莲湖区', 438, 0, 3, NULL);
INSERT INTO `area` VALUES (4674, '蓝田县', 438, 0, 3, NULL);
INSERT INTO `area` VALUES (4675, '长安区', 438, 0, 3, NULL);
INSERT INTO `area` VALUES (4676, '阎良区', 438, 0, 3, NULL);
INSERT INTO `area` VALUES (4677, '雁塔区', 438, 0, 3, NULL);
INSERT INTO `area` VALUES (4678, '高陵县', 438, 0, 3, NULL);
INSERT INTO `area` VALUES (4679, '印台区', 439, 0, 3, NULL);
INSERT INTO `area` VALUES (4680, '宜君县', 439, 0, 3, NULL);
INSERT INTO `area` VALUES (4681, '王益区', 439, 0, 3, NULL);
INSERT INTO `area` VALUES (4682, '耀州区', 439, 0, 3, NULL);
INSERT INTO `area` VALUES (4683, '凤县', 440, 0, 3, NULL);
INSERT INTO `area` VALUES (4684, '凤翔县', 440, 0, 3, NULL);
INSERT INTO `area` VALUES (4685, '千阳县', 440, 0, 3, NULL);
INSERT INTO `area` VALUES (4686, '太白县', 440, 0, 3, NULL);
INSERT INTO `area` VALUES (4687, '岐山县', 440, 0, 3, NULL);
INSERT INTO `area` VALUES (4688, '扶风县', 440, 0, 3, NULL);
INSERT INTO `area` VALUES (4689, '渭滨区', 440, 0, 3, NULL);
INSERT INTO `area` VALUES (4690, '眉县', 440, 0, 3, NULL);
INSERT INTO `area` VALUES (4691, '金台区', 440, 0, 3, NULL);
INSERT INTO `area` VALUES (4692, '陇县', 440, 0, 3, NULL);
INSERT INTO `area` VALUES (4693, '陈仓区', 440, 0, 3, NULL);
INSERT INTO `area` VALUES (4694, '麟游县', 440, 0, 3, NULL);
INSERT INTO `area` VALUES (4695, '三原县', 441, 0, 3, NULL);
INSERT INTO `area` VALUES (4696, '干县', 441, 0, 3, NULL);
INSERT INTO `area` VALUES (4697, '兴平市', 441, 0, 3, NULL);
INSERT INTO `area` VALUES (4698, '彬县', 441, 0, 3, NULL);
INSERT INTO `area` VALUES (4699, '旬邑县', 441, 0, 3, NULL);
INSERT INTO `area` VALUES (4700, '杨陵区', 441, 0, 3, NULL);
INSERT INTO `area` VALUES (4701, '武功县', 441, 0, 3, NULL);
INSERT INTO `area` VALUES (4702, '永寿县', 441, 0, 3, NULL);
INSERT INTO `area` VALUES (4703, '泾阳县', 441, 0, 3, NULL);
INSERT INTO `area` VALUES (4704, '淳化县', 441, 0, 3, NULL);
INSERT INTO `area` VALUES (4705, '渭城区', 441, 0, 3, NULL);
INSERT INTO `area` VALUES (4706, '礼泉县', 441, 0, 3, NULL);
INSERT INTO `area` VALUES (4707, '秦都区', 441, 0, 3, NULL);
INSERT INTO `area` VALUES (4708, '长武县', 441, 0, 3, NULL);
INSERT INTO `area` VALUES (4709, '临渭区', 442, 0, 3, NULL);
INSERT INTO `area` VALUES (4710, '华县', 442, 0, 3, NULL);
INSERT INTO `area` VALUES (4711, '华阴市', 442, 0, 3, NULL);
INSERT INTO `area` VALUES (4712, '合阳县', 442, 0, 3, NULL);
INSERT INTO `area` VALUES (4713, '大荔县', 442, 0, 3, NULL);
INSERT INTO `area` VALUES (4714, '富平县', 442, 0, 3, NULL);
INSERT INTO `area` VALUES (4715, '潼关县', 442, 0, 3, NULL);
INSERT INTO `area` VALUES (4716, '澄城县', 442, 0, 3, NULL);
INSERT INTO `area` VALUES (4717, '白水县', 442, 0, 3, NULL);
INSERT INTO `area` VALUES (4718, '蒲城县', 442, 0, 3, NULL);
INSERT INTO `area` VALUES (4719, '韩城市', 442, 0, 3, NULL);
INSERT INTO `area` VALUES (4720, '吴起县', 443, 0, 3, NULL);
INSERT INTO `area` VALUES (4721, '子长县', 443, 0, 3, NULL);
INSERT INTO `area` VALUES (4722, '安塞县', 443, 0, 3, NULL);
INSERT INTO `area` VALUES (4723, '宜川县', 443, 0, 3, NULL);
INSERT INTO `area` VALUES (4724, '宝塔区', 443, 0, 3, NULL);
INSERT INTO `area` VALUES (4725, '富县', 443, 0, 3, NULL);
INSERT INTO `area` VALUES (4726, '延川县', 443, 0, 3, NULL);
INSERT INTO `area` VALUES (4727, '延长县', 443, 0, 3, NULL);
INSERT INTO `area` VALUES (4728, '志丹县', 443, 0, 3, NULL);
INSERT INTO `area` VALUES (4729, '洛川县', 443, 0, 3, NULL);
INSERT INTO `area` VALUES (4730, '甘泉县', 443, 0, 3, NULL);
INSERT INTO `area` VALUES (4731, '黄陵县', 443, 0, 3, NULL);
INSERT INTO `area` VALUES (4732, '黄龙县', 443, 0, 3, NULL);
INSERT INTO `area` VALUES (4733, '佛坪县', 444, 0, 3, NULL);
INSERT INTO `area` VALUES (4734, '勉县', 444, 0, 3, NULL);
INSERT INTO `area` VALUES (4735, '南郑县', 444, 0, 3, NULL);
INSERT INTO `area` VALUES (4736, '城固县', 444, 0, 3, NULL);
INSERT INTO `area` VALUES (4737, '宁强县', 444, 0, 3, NULL);
INSERT INTO `area` VALUES (4738, '汉台区', 444, 0, 3, NULL);
INSERT INTO `area` VALUES (4739, '洋县', 444, 0, 3, NULL);
INSERT INTO `area` VALUES (4740, '留坝县', 444, 0, 3, NULL);
INSERT INTO `area` VALUES (4741, '略阳县', 444, 0, 3, NULL);
INSERT INTO `area` VALUES (4742, '西乡县', 444, 0, 3, NULL);
INSERT INTO `area` VALUES (4743, '镇巴县', 444, 0, 3, NULL);
INSERT INTO `area` VALUES (4744, '佳县', 445, 0, 3, NULL);
INSERT INTO `area` VALUES (4745, '吴堡县', 445, 0, 3, NULL);
INSERT INTO `area` VALUES (4746, '子洲县', 445, 0, 3, NULL);
INSERT INTO `area` VALUES (4747, '定边县', 445, 0, 3, NULL);
INSERT INTO `area` VALUES (4748, '府谷县', 445, 0, 3, NULL);
INSERT INTO `area` VALUES (4749, '榆林市榆阳区', 445, 0, 3, NULL);
INSERT INTO `area` VALUES (4750, '横山县', 445, 0, 3, NULL);
INSERT INTO `area` VALUES (4751, '清涧县', 445, 0, 3, NULL);
INSERT INTO `area` VALUES (4752, '神木县', 445, 0, 3, NULL);
INSERT INTO `area` VALUES (4753, '米脂县', 445, 0, 3, NULL);
INSERT INTO `area` VALUES (4754, '绥德县', 445, 0, 3, NULL);
INSERT INTO `area` VALUES (4755, '靖边县', 445, 0, 3, NULL);
INSERT INTO `area` VALUES (4756, '宁陕县', 446, 0, 3, NULL);
INSERT INTO `area` VALUES (4757, '岚皋县', 446, 0, 3, NULL);
INSERT INTO `area` VALUES (4758, '平利县', 446, 0, 3, NULL);
INSERT INTO `area` VALUES (4759, '旬阳县', 446, 0, 3, NULL);
INSERT INTO `area` VALUES (4760, '汉滨区', 446, 0, 3, NULL);
INSERT INTO `area` VALUES (4761, '汉阴县', 446, 0, 3, NULL);
INSERT INTO `area` VALUES (4762, '白河县', 446, 0, 3, NULL);
INSERT INTO `area` VALUES (4763, '石泉县', 446, 0, 3, NULL);
INSERT INTO `area` VALUES (4764, '紫阳县', 446, 0, 3, NULL);
INSERT INTO `area` VALUES (4765, '镇坪县', 446, 0, 3, NULL);
INSERT INTO `area` VALUES (4766, '丹凤县', 447, 0, 3, NULL);
INSERT INTO `area` VALUES (4767, '商南县', 447, 0, 3, NULL);
INSERT INTO `area` VALUES (4768, '商州区', 447, 0, 3, NULL);
INSERT INTO `area` VALUES (4769, '山阳县', 447, 0, 3, NULL);
INSERT INTO `area` VALUES (4770, '柞水县', 447, 0, 3, NULL);
INSERT INTO `area` VALUES (4771, '洛南县', 447, 0, 3, NULL);
INSERT INTO `area` VALUES (4772, '镇安县', 447, 0, 3, NULL);
INSERT INTO `area` VALUES (4773, '七里河区', 448, 0, 3, NULL);
INSERT INTO `area` VALUES (4774, '城关区', 448, 0, 3, NULL);
INSERT INTO `area` VALUES (4775, '安宁区', 448, 0, 3, NULL);
INSERT INTO `area` VALUES (4776, '榆中县', 448, 0, 3, NULL);
INSERT INTO `area` VALUES (4777, '永登县', 448, 0, 3, NULL);
INSERT INTO `area` VALUES (4778, '皋兰县', 448, 0, 3, NULL);
INSERT INTO `area` VALUES (4779, '红古区', 448, 0, 3, NULL);
INSERT INTO `area` VALUES (4780, '西固区', 448, 0, 3, NULL);
INSERT INTO `area` VALUES (4781, '嘉峪关市', 449, 0, 3, NULL);
INSERT INTO `area` VALUES (4782, '永昌县', 450, 0, 3, NULL);
INSERT INTO `area` VALUES (4783, '金川区', 450, 0, 3, NULL);
INSERT INTO `area` VALUES (4784, '会宁县', 451, 0, 3, NULL);
INSERT INTO `area` VALUES (4785, '平川区', 451, 0, 3, NULL);
INSERT INTO `area` VALUES (4786, '景泰县', 451, 0, 3, NULL);
INSERT INTO `area` VALUES (4787, '白银区', 451, 0, 3, NULL);
INSERT INTO `area` VALUES (4788, '靖远县', 451, 0, 3, NULL);
INSERT INTO `area` VALUES (4789, '张家川回族自治县', 452, 0, 3, NULL);
INSERT INTO `area` VALUES (4790, '武山县', 452, 0, 3, NULL);
INSERT INTO `area` VALUES (4791, '清水县', 452, 0, 3, NULL);
INSERT INTO `area` VALUES (4792, '甘谷县', 452, 0, 3, NULL);
INSERT INTO `area` VALUES (4793, '秦安县', 452, 0, 3, NULL);
INSERT INTO `area` VALUES (4794, '秦州区', 452, 0, 3, NULL);
INSERT INTO `area` VALUES (4795, '麦积区', 452, 0, 3, NULL);
INSERT INTO `area` VALUES (4796, '凉州区', 453, 0, 3, NULL);
INSERT INTO `area` VALUES (4797, '古浪县', 453, 0, 3, NULL);
INSERT INTO `area` VALUES (4798, '天祝藏族自治县', 453, 0, 3, NULL);
INSERT INTO `area` VALUES (4799, '民勤县', 453, 0, 3, NULL);
INSERT INTO `area` VALUES (4800, '临泽县', 454, 0, 3, NULL);
INSERT INTO `area` VALUES (4801, '山丹县', 454, 0, 3, NULL);
INSERT INTO `area` VALUES (4802, '民乐县', 454, 0, 3, NULL);
INSERT INTO `area` VALUES (4803, '甘州区', 454, 0, 3, NULL);
INSERT INTO `area` VALUES (4804, '肃南裕固族自治县', 454, 0, 3, NULL);
INSERT INTO `area` VALUES (4805, '高台县', 454, 0, 3, NULL);
INSERT INTO `area` VALUES (4806, '华亭县', 455, 0, 3, NULL);
INSERT INTO `area` VALUES (4807, '崆峒区', 455, 0, 3, NULL);
INSERT INTO `area` VALUES (4808, '崇信县', 455, 0, 3, NULL);
INSERT INTO `area` VALUES (4809, '庄浪县', 455, 0, 3, NULL);
INSERT INTO `area` VALUES (4810, '泾川县', 455, 0, 3, NULL);
INSERT INTO `area` VALUES (4811, '灵台县', 455, 0, 3, NULL);
INSERT INTO `area` VALUES (4812, '静宁县', 455, 0, 3, NULL);
INSERT INTO `area` VALUES (4813, '敦煌市', 456, 0, 3, NULL);
INSERT INTO `area` VALUES (4814, '玉门市', 456, 0, 3, NULL);
INSERT INTO `area` VALUES (4815, '瓜州县（原安西县）', 456, 0, 3, NULL);
INSERT INTO `area` VALUES (4816, '肃北蒙古族自治县', 456, 0, 3, NULL);
INSERT INTO `area` VALUES (4817, '肃州区', 456, 0, 3, NULL);
INSERT INTO `area` VALUES (4818, '金塔县', 456, 0, 3, NULL);
INSERT INTO `area` VALUES (4819, '阿克塞哈萨克族自治县', 456, 0, 3, NULL);
INSERT INTO `area` VALUES (4820, '华池县', 457, 0, 3, NULL);
INSERT INTO `area` VALUES (4821, '合水县', 457, 0, 3, NULL);
INSERT INTO `area` VALUES (4822, '宁县', 457, 0, 3, NULL);
INSERT INTO `area` VALUES (4823, '庆城县', 457, 0, 3, NULL);
INSERT INTO `area` VALUES (4824, '正宁县', 457, 0, 3, NULL);
INSERT INTO `area` VALUES (4825, '环县', 457, 0, 3, NULL);
INSERT INTO `area` VALUES (4826, '西峰区', 457, 0, 3, NULL);
INSERT INTO `area` VALUES (4827, '镇原县', 457, 0, 3, NULL);
INSERT INTO `area` VALUES (4828, '临洮县', 458, 0, 3, NULL);
INSERT INTO `area` VALUES (4829, '安定区', 458, 0, 3, NULL);
INSERT INTO `area` VALUES (4830, '岷县', 458, 0, 3, NULL);
INSERT INTO `area` VALUES (4831, '渭源县', 458, 0, 3, NULL);
INSERT INTO `area` VALUES (4832, '漳县', 458, 0, 3, NULL);
INSERT INTO `area` VALUES (4833, '通渭县', 458, 0, 3, NULL);
INSERT INTO `area` VALUES (4834, '陇西县', 458, 0, 3, NULL);
INSERT INTO `area` VALUES (4835, '两当县', 459, 0, 3, NULL);
INSERT INTO `area` VALUES (4836, '宕昌县', 459, 0, 3, NULL);
INSERT INTO `area` VALUES (4837, '康县', 459, 0, 3, NULL);
INSERT INTO `area` VALUES (4838, '徽县', 459, 0, 3, NULL);
INSERT INTO `area` VALUES (4839, '成县', 459, 0, 3, NULL);
INSERT INTO `area` VALUES (4840, '文县', 459, 0, 3, NULL);
INSERT INTO `area` VALUES (4841, '武都区', 459, 0, 3, NULL);
INSERT INTO `area` VALUES (4842, '礼县', 459, 0, 3, NULL);
INSERT INTO `area` VALUES (4843, '西和县', 459, 0, 3, NULL);
INSERT INTO `area` VALUES (4844, '东乡族自治县', 460, 0, 3, NULL);
INSERT INTO `area` VALUES (4845, '临夏县', 460, 0, 3, NULL);
INSERT INTO `area` VALUES (4846, '临夏市', 460, 0, 3, NULL);
INSERT INTO `area` VALUES (4847, '和政县', 460, 0, 3, NULL);
INSERT INTO `area` VALUES (4848, '广河县', 460, 0, 3, NULL);
INSERT INTO `area` VALUES (4849, '康乐县', 460, 0, 3, NULL);
INSERT INTO `area` VALUES (4850, '永靖县', 460, 0, 3, NULL);
INSERT INTO `area` VALUES (4851, '积石山保安族东乡族撒拉族自治县', 460, 0, 3, NULL);
INSERT INTO `area` VALUES (4852, '临潭县', 461, 0, 3, NULL);
INSERT INTO `area` VALUES (4853, '卓尼县', 461, 0, 3, NULL);
INSERT INTO `area` VALUES (4854, '合作市', 461, 0, 3, NULL);
INSERT INTO `area` VALUES (4855, '夏河县', 461, 0, 3, NULL);
INSERT INTO `area` VALUES (4856, '玛曲县', 461, 0, 3, NULL);
INSERT INTO `area` VALUES (4857, '碌曲县', 461, 0, 3, NULL);
INSERT INTO `area` VALUES (4858, '舟曲县', 461, 0, 3, NULL);
INSERT INTO `area` VALUES (4859, '迭部县', 461, 0, 3, NULL);
INSERT INTO `area` VALUES (4860, '城东区', 462, 0, 3, NULL);
INSERT INTO `area` VALUES (4861, '城中区', 462, 0, 3, NULL);
INSERT INTO `area` VALUES (4862, '城北区', 462, 0, 3, NULL);
INSERT INTO `area` VALUES (4863, '城西区', 462, 0, 3, NULL);
INSERT INTO `area` VALUES (4864, '大通回族土族自治县', 462, 0, 3, NULL);
INSERT INTO `area` VALUES (4865, '湟中县', 462, 0, 3, NULL);
INSERT INTO `area` VALUES (4866, '湟源县', 462, 0, 3, NULL);
INSERT INTO `area` VALUES (4867, '乐都县', 463, 0, 3, NULL);
INSERT INTO `area` VALUES (4868, '互助土族自治县', 463, 0, 3, NULL);
INSERT INTO `area` VALUES (4869, '化隆回族自治县', 463, 0, 3, NULL);
INSERT INTO `area` VALUES (4870, '平安县', 463, 0, 3, NULL);
INSERT INTO `area` VALUES (4871, '循化撒拉族自治县', 463, 0, 3, NULL);
INSERT INTO `area` VALUES (4872, '民和回族土族自治县', 463, 0, 3, NULL);
INSERT INTO `area` VALUES (4873, '刚察县', 464, 0, 3, NULL);
INSERT INTO `area` VALUES (4874, '海晏县', 464, 0, 3, NULL);
INSERT INTO `area` VALUES (4875, '祁连县', 464, 0, 3, NULL);
INSERT INTO `area` VALUES (4876, '门源回族自治县', 464, 0, 3, NULL);
INSERT INTO `area` VALUES (4877, '同仁县', 465, 0, 3, NULL);
INSERT INTO `area` VALUES (4878, '尖扎县', 465, 0, 3, NULL);
INSERT INTO `area` VALUES (4879, '河南蒙古族自治县', 465, 0, 3, NULL);
INSERT INTO `area` VALUES (4880, '泽库县', 465, 0, 3, NULL);
INSERT INTO `area` VALUES (4881, '共和县', 466, 0, 3, NULL);
INSERT INTO `area` VALUES (4882, '兴海县', 466, 0, 3, NULL);
INSERT INTO `area` VALUES (4883, '同德县', 466, 0, 3, NULL);
INSERT INTO `area` VALUES (4884, '贵南县', 466, 0, 3, NULL);
INSERT INTO `area` VALUES (4885, '贵德县', 466, 0, 3, NULL);
INSERT INTO `area` VALUES (4886, '久治县', 467, 0, 3, NULL);
INSERT INTO `area` VALUES (4887, '玛多县', 467, 0, 3, NULL);
INSERT INTO `area` VALUES (4888, '玛沁县', 467, 0, 3, NULL);
INSERT INTO `area` VALUES (4889, '班玛县', 467, 0, 3, NULL);
INSERT INTO `area` VALUES (4890, '甘德县', 467, 0, 3, NULL);
INSERT INTO `area` VALUES (4891, '达日县', 467, 0, 3, NULL);
INSERT INTO `area` VALUES (4892, '囊谦县', 468, 0, 3, NULL);
INSERT INTO `area` VALUES (4893, '曲麻莱县', 468, 0, 3, NULL);
INSERT INTO `area` VALUES (4894, '杂多县', 468, 0, 3, NULL);
INSERT INTO `area` VALUES (4895, '治多县', 468, 0, 3, NULL);
INSERT INTO `area` VALUES (4896, '玉树县', 468, 0, 3, NULL);
INSERT INTO `area` VALUES (4897, '称多县', 468, 0, 3, NULL);
INSERT INTO `area` VALUES (4898, '乌兰县', 469, 0, 3, NULL);
INSERT INTO `area` VALUES (4899, '冷湖行委', 469, 0, 3, NULL);
INSERT INTO `area` VALUES (4900, '大柴旦行委', 469, 0, 3, NULL);
INSERT INTO `area` VALUES (4901, '天峻县', 469, 0, 3, NULL);
INSERT INTO `area` VALUES (4902, '德令哈市', 469, 0, 3, NULL);
INSERT INTO `area` VALUES (4903, '格尔木市', 469, 0, 3, NULL);
INSERT INTO `area` VALUES (4904, '茫崖行委', 469, 0, 3, NULL);
INSERT INTO `area` VALUES (4905, '都兰县', 469, 0, 3, NULL);
INSERT INTO `area` VALUES (4906, '兴庆区', 470, 0, 3, NULL);
INSERT INTO `area` VALUES (4907, '永宁县', 470, 0, 3, NULL);
INSERT INTO `area` VALUES (4908, '灵武市', 470, 0, 3, NULL);
INSERT INTO `area` VALUES (4909, '西夏区', 470, 0, 3, NULL);
INSERT INTO `area` VALUES (4910, '贺兰县', 470, 0, 3, NULL);
INSERT INTO `area` VALUES (4911, '金凤区', 470, 0, 3, NULL);
INSERT INTO `area` VALUES (4912, '大武口区', 471, 0, 3, NULL);
INSERT INTO `area` VALUES (4913, '平罗县', 471, 0, 3, NULL);
INSERT INTO `area` VALUES (4914, '惠农区', 471, 0, 3, NULL);
INSERT INTO `area` VALUES (4915, '利通区', 472, 0, 3, NULL);
INSERT INTO `area` VALUES (4916, '同心县', 472, 0, 3, NULL);
INSERT INTO `area` VALUES (4917, '盐池县', 472, 0, 3, NULL);
INSERT INTO `area` VALUES (4918, '青铜峡市', 472, 0, 3, NULL);
INSERT INTO `area` VALUES (4919, '原州区', 473, 0, 3, NULL);
INSERT INTO `area` VALUES (4920, '彭阳县', 473, 0, 3, NULL);
INSERT INTO `area` VALUES (4921, '泾源县', 473, 0, 3, NULL);
INSERT INTO `area` VALUES (4922, '西吉县', 473, 0, 3, NULL);
INSERT INTO `area` VALUES (4923, '隆德县', 473, 0, 3, NULL);
INSERT INTO `area` VALUES (4924, '中宁县', 474, 0, 3, NULL);
INSERT INTO `area` VALUES (4925, '沙坡头区', 474, 0, 3, NULL);
INSERT INTO `area` VALUES (4926, '海原县', 474, 0, 3, NULL);
INSERT INTO `area` VALUES (4927, '东山区', 475, 0, 3, NULL);
INSERT INTO `area` VALUES (4928, '乌鲁木齐县', 475, 0, 3, NULL);
INSERT INTO `area` VALUES (4929, '天山区', 475, 0, 3, NULL);
INSERT INTO `area` VALUES (4930, '头屯河区', 475, 0, 3, NULL);
INSERT INTO `area` VALUES (4931, '新市区', 475, 0, 3, NULL);
INSERT INTO `area` VALUES (4932, '水磨沟区', 475, 0, 3, NULL);
INSERT INTO `area` VALUES (4933, '沙依巴克区', 475, 0, 3, NULL);
INSERT INTO `area` VALUES (4934, '达坂城区', 475, 0, 3, NULL);
INSERT INTO `area` VALUES (4935, '乌尔禾区', 476, 0, 3, NULL);
INSERT INTO `area` VALUES (4936, '克拉玛依区', 476, 0, 3, NULL);
INSERT INTO `area` VALUES (4937, '独山子区', 476, 0, 3, NULL);
INSERT INTO `area` VALUES (4938, '白碱滩区', 476, 0, 3, NULL);
INSERT INTO `area` VALUES (4939, '吐鲁番市', 477, 0, 3, NULL);
INSERT INTO `area` VALUES (4940, '托克逊县', 477, 0, 3, NULL);
INSERT INTO `area` VALUES (4941, '鄯善县', 477, 0, 3, NULL);
INSERT INTO `area` VALUES (4942, '伊吾县', 478, 0, 3, NULL);
INSERT INTO `area` VALUES (4943, '哈密市', 478, 0, 3, NULL);
INSERT INTO `area` VALUES (4944, '巴里坤哈萨克自治县', 478, 0, 3, NULL);
INSERT INTO `area` VALUES (4945, '吉木萨尔县', 479, 0, 3, NULL);
INSERT INTO `area` VALUES (4946, '呼图壁县', 479, 0, 3, NULL);
INSERT INTO `area` VALUES (4947, '奇台县', 479, 0, 3, NULL);
INSERT INTO `area` VALUES (4948, '昌吉市', 479, 0, 3, NULL);
INSERT INTO `area` VALUES (4949, '木垒哈萨克自治县', 479, 0, 3, NULL);
INSERT INTO `area` VALUES (4950, '玛纳斯县', 479, 0, 3, NULL);
INSERT INTO `area` VALUES (4951, '米泉市', 479, 0, 3, NULL);
INSERT INTO `area` VALUES (4952, '阜康市', 479, 0, 3, NULL);
INSERT INTO `area` VALUES (4953, '博乐市', 480, 0, 3, NULL);
INSERT INTO `area` VALUES (4954, '温泉县', 480, 0, 3, NULL);
INSERT INTO `area` VALUES (4955, '精河县', 480, 0, 3, NULL);
INSERT INTO `area` VALUES (4956, '博湖县', 481, 0, 3, NULL);
INSERT INTO `area` VALUES (4957, '和硕县', 481, 0, 3, NULL);
INSERT INTO `area` VALUES (4958, '和静县', 481, 0, 3, NULL);
INSERT INTO `area` VALUES (4959, '尉犁县', 481, 0, 3, NULL);
INSERT INTO `area` VALUES (4960, '库尔勒市', 481, 0, 3, NULL);
INSERT INTO `area` VALUES (4961, '焉耆回族自治县', 481, 0, 3, NULL);
INSERT INTO `area` VALUES (4962, '若羌县', 481, 0, 3, NULL);
INSERT INTO `area` VALUES (4963, '轮台县', 481, 0, 3, NULL);
INSERT INTO `area` VALUES (4964, '乌什县', 482, 0, 3, NULL);
INSERT INTO `area` VALUES (4965, '库车县', 482, 0, 3, NULL);
INSERT INTO `area` VALUES (4966, '拜城县', 482, 0, 3, NULL);
INSERT INTO `area` VALUES (4967, '新和县', 482, 0, 3, NULL);
INSERT INTO `area` VALUES (4968, '柯坪县', 482, 0, 3, NULL);
INSERT INTO `area` VALUES (4969, '沙雅县', 482, 0, 3, NULL);
INSERT INTO `area` VALUES (4970, '温宿县', 482, 0, 3, NULL);
INSERT INTO `area` VALUES (4971, '阿克苏市', 482, 0, 3, NULL);
INSERT INTO `area` VALUES (4972, '阿瓦提县', 482, 0, 3, NULL);
INSERT INTO `area` VALUES (4973, '乌恰县', 483, 0, 3, NULL);
INSERT INTO `area` VALUES (4974, '阿克陶县', 483, 0, 3, NULL);
INSERT INTO `area` VALUES (4975, '阿合奇县', 483, 0, 3, NULL);
INSERT INTO `area` VALUES (4976, '阿图什市', 483, 0, 3, NULL);
INSERT INTO `area` VALUES (4977, '伽师县', 484, 0, 3, NULL);
INSERT INTO `area` VALUES (4978, '叶城县', 484, 0, 3, NULL);
INSERT INTO `area` VALUES (4979, '喀什市', 484, 0, 3, NULL);
INSERT INTO `area` VALUES (4980, '塔什库尔干塔吉克自治县', 484, 0, 3, NULL);
INSERT INTO `area` VALUES (4981, '岳普湖县', 484, 0, 3, NULL);
INSERT INTO `area` VALUES (4982, '巴楚县', 484, 0, 3, NULL);
INSERT INTO `area` VALUES (4983, '泽普县', 484, 0, 3, NULL);
INSERT INTO `area` VALUES (4984, '疏勒县', 484, 0, 3, NULL);
INSERT INTO `area` VALUES (4985, '疏附县', 484, 0, 3, NULL);
INSERT INTO `area` VALUES (4986, '英吉沙县', 484, 0, 3, NULL);
INSERT INTO `area` VALUES (4987, '莎车县', 484, 0, 3, NULL);
INSERT INTO `area` VALUES (4988, '麦盖提县', 484, 0, 3, NULL);
INSERT INTO `area` VALUES (4989, '于田县', 485, 0, 3, NULL);
INSERT INTO `area` VALUES (4990, '和田县', 485, 0, 3, NULL);
INSERT INTO `area` VALUES (4991, '和田市', 485, 0, 3, NULL);
INSERT INTO `area` VALUES (4992, '墨玉县', 485, 0, 3, NULL);
INSERT INTO `area` VALUES (4993, '民丰县', 485, 0, 3, NULL);
INSERT INTO `area` VALUES (4994, '洛浦县', 485, 0, 3, NULL);
INSERT INTO `area` VALUES (4995, '皮山县', 485, 0, 3, NULL);
INSERT INTO `area` VALUES (4996, '策勒县', 485, 0, 3, NULL);
INSERT INTO `area` VALUES (4997, '伊宁县', 486, 0, 3, NULL);
INSERT INTO `area` VALUES (4998, '伊宁市', 486, 0, 3, NULL);
INSERT INTO `area` VALUES (4999, '奎屯市', 486, 0, 3, NULL);
INSERT INTO `area` VALUES (5000, '察布查尔锡伯自治县', 486, 0, 3, NULL);
INSERT INTO `area` VALUES (5001, '尼勒克县', 486, 0, 3, NULL);
INSERT INTO `area` VALUES (5002, '巩留县', 486, 0, 3, NULL);
INSERT INTO `area` VALUES (5003, '新源县', 486, 0, 3, NULL);
INSERT INTO `area` VALUES (5004, '昭苏县', 486, 0, 3, NULL);
INSERT INTO `area` VALUES (5005, '特克斯县', 486, 0, 3, NULL);
INSERT INTO `area` VALUES (5006, '霍城县', 486, 0, 3, NULL);
INSERT INTO `area` VALUES (5007, '乌苏市', 487, 0, 3, NULL);
INSERT INTO `area` VALUES (5008, '和布克赛尔蒙古自治县', 487, 0, 3, NULL);
INSERT INTO `area` VALUES (5009, '塔城市', 487, 0, 3, NULL);
INSERT INTO `area` VALUES (5010, '托里县', 487, 0, 3, NULL);
INSERT INTO `area` VALUES (5011, '沙湾县', 487, 0, 3, NULL);
INSERT INTO `area` VALUES (5012, '裕民县', 487, 0, 3, NULL);
INSERT INTO `area` VALUES (5013, '额敏县', 487, 0, 3, NULL);
INSERT INTO `area` VALUES (5014, '吉木乃县', 488, 0, 3, NULL);
INSERT INTO `area` VALUES (5015, '哈巴河县', 488, 0, 3, NULL);
INSERT INTO `area` VALUES (5016, '富蕴县', 488, 0, 3, NULL);
INSERT INTO `area` VALUES (5017, '布尔津县', 488, 0, 3, NULL);
INSERT INTO `area` VALUES (5018, '福海县', 488, 0, 3, NULL);
INSERT INTO `area` VALUES (5019, '阿勒泰市', 488, 0, 3, NULL);
INSERT INTO `area` VALUES (5020, '青河县', 488, 0, 3, NULL);
INSERT INTO `area` VALUES (5021, '石河子市', 489, 0, 3, NULL);
INSERT INTO `area` VALUES (5022, '阿拉尔市', 490, 0, 3, NULL);
INSERT INTO `area` VALUES (5023, '图木舒克市', 491, 0, 3, NULL);
INSERT INTO `area` VALUES (5024, '五家渠市', 492, 0, 3, NULL);
INSERT INTO `area` VALUES (45055, '海外', 35, 0, 2, NULL);
INSERT INTO `area` VALUES (45056, '滨海新区', 40, 0, 3, '');
INSERT INTO `area` VALUES (45057, '泸水市', 429, 0, 3, '');
INSERT INTO `area` VALUES (45058, '福贡县', 429, 0, 3, '');
INSERT INTO `area` VALUES (45059, '贡山独龙族怒族自治县', 429, 0, 3, '');
INSERT INTO `area` VALUES (45060, '兰坪白族普米族自治县 ', 429, 0, 3, '');
INSERT INTO `area` VALUES (45061, '莲池区', 78, 0, 3, '');
INSERT INTO `area` VALUES (45062, '竞秀区', 78, 0, 3, '');
INSERT INTO `area` VALUES (45063, '乾县', 441, 0, 3, '');
INSERT INTO `area` VALUES (45064, '思茅区', 421, 0, 3, '');
INSERT INTO `area` VALUES (45065, '宁洱哈尼族彝族自治县', 421, 0, 3, '');
INSERT INTO `area` VALUES (45066, '墨江哈尼族自治县', 421, 0, 3, '');
INSERT INTO `area` VALUES (45067, '景东彝族自治县', 421, 0, 3, '');
INSERT INTO `area` VALUES (45068, '景谷傣族彝族自治县', 421, 0, 3, '');
INSERT INTO `area` VALUES (45069, '镇沅彝族哈尼族拉祜族自治县', 421, 0, 3, '');
INSERT INTO `area` VALUES (45070, '江城哈尼族彝族自治县', 421, 0, 3, '');
INSERT INTO `area` VALUES (45071, '孟连傣族拉祜族佤族自治县', 421, 0, 3, '');
INSERT INTO `area` VALUES (45072, '澜沧拉祜族自治县', 421, 0, 3, '');
INSERT INTO `area` VALUES (45073, '西盟佤族自治县', 421, 0, 3, '');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int unsigned NOT NULL COMMENT 'ID',
  `class_id` int(0) DEFAULT NULL COMMENT '公告分类ID',
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `desc` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '简介',
  `logo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'logo图片',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '内容',
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '1显示 0不显示',
  `create_time` int(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (11, 1, '江西南昌一托管所发生凶案 两女教师和8岁男孩被房东杀害', '据江西南昌市公安局官方微博@南昌公安通报，2019年8月16日上午10时30分许，南昌市青山湖区佛塔魏村一出租屋内发生一起故意伤害致人死亡案。犯罪嫌疑人魏某福（男，54岁，青山湖区人）在自己家中持刀将租客肖某婷（女）、韦某（女）和喻某达（男）伤害致死。', 'http://images.tinakj.com/upload/avatar1566119536.jpg', '<p class=\"ql-align-justify\"><img src=\"http://dingyue.ws.126.net/T72VljRybOXbDCGUXWeYDAk9VajLh0C63QuXrvtO9vBad1566111497380compressflag.png\" alt=\"江西南昌一托管所发生凶案 两女教师和8岁男孩被房东杀害\"></p><p><span style=\"color: rgb(64, 64, 64);\">8月18日上午，红星新闻记者从受害人家属处了解到，事发出租屋系一家名叫知明教育辅导机构租的房子；死者肖某婷、韦某为南昌大学科学技术学院大三学生，两人系同班同学，在该托管所做辅导老师；死者喻某达今年8岁，另有一7岁小孩樊某脑部受伤，正在南昌大学一附院重症监护室抢救。</span></p><p><br></p><p><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(64, 64, 64);\">﻿	</span><img src=\"http://dingyue.ws.126.net/OQ1UCbG3IvmAinoWI2A=NJnPMwIAlMfQZhs2agoD3DcZr1566111498073compressflag.jpg\" alt=\"江西南昌一托管所发生凶案 两女教师和8岁男孩被房东杀害\"></p><p><span style=\"color: rgb(64, 64, 64);\">韦某（左）与肖某婷（右）为同班同学受害人喻某达的亲属喻先生称，家人是在16日下午2点接到托管所出事的消息的，“当时看到其他家长在微信群里说出事了”，到达出事地点后，“发现原来托管所外面的广告牌已经撤下，现场有很多警察”。“喻某达是8月1号送到这家托管所的，费用1500元，想着暑假大人都在忙工作，怕孩子去玩水，所以送到托管所，想着安全一点”，喻先生告诉红星新闻记者，以前喻某达上学时也在这家托管所辅导过，但事发至今仍未见到这家托管所的负责人。红星新闻记者查询国家企业信用信息公示系统以及天眼查等，并未发现这家辅导机构的注册信息。受害人韦某的亲属韦女士称，家人是在16号晚上10点才得知韦某出事的，“当时是青山湖区公安分局的民警打的电话，说让家属尽快赶过来，当时根本没想到事情这么严重”。韦女士告诉红星新闻记者，韦某今年23岁，和死者肖某婷同为南昌大学科学技术学院大三学生，今年暑假在这家机构做辅导老师，“她以前也在这家机构负责人手下干过活”。喻先生称，事发后通过附近居民处得知，事发时该辅导机构有20多个孩子，凶手行凶时有孩子跑出来才报的警。</span></p>', '1', NULL, 1566119709);

-- ----------------------------
-- Table structure for article_class
-- ----------------------------
DROP TABLE IF EXISTS `article_class`;
CREATE TABLE `article_class`  (
  `id` int unsigned NOT NULL,
  `class_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `update_time` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_class
-- ----------------------------
INSERT INTO `article_class` VALUES (1, '平台公告', 'http://images.tinakj.com/upload/avatar1565014689.png', NULL);
INSERT INTO `article_class` VALUES (2, '商城公告', 'http://images.tinakj.com/upload/avatar1565014756.jpg', NULL);

-- ----------------------------
-- Table structure for balance
-- ----------------------------
DROP TABLE IF EXISTS `balance`;
CREATE TABLE `balance`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `member_id` int(0) DEFAULT NULL COMMENT '会员ID',
  `balance` decimal(16, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '余额',
  `total_balance` decimal(16, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '总金额',
  `balance_type` int(0) NOT NULL COMMENT '账本类型',
  `use_balance` decimal(16, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '已使用金额',
  `is_tixian` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '是否可以体现',
  `is_transfer` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '是否可以转账',
  `create_time` int(0) NOT NULL DEFAULT 0 COMMENT '有效开始时间',
  `update_time` int(0) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `end_time` int(0) NOT NULL DEFAULT 0 COMMENT '有效结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for balance_log
-- ----------------------------
DROP TABLE IF EXISTS `balance_log`;
CREATE TABLE `balance_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `member_id` int(0) DEFAULT NULL,
  `balance` decimal(11, 4) DEFAULT NULL COMMENT '增加或减少的钱',
  `balance_id` int(0) DEFAULT NULL COMMENT '账本标识',
  `balance_type` int(0) DEFAULT NULL COMMENT '账本类型',
  `source_type` int(0) DEFAULT 0 COMMENT '//来源类型\r\n1,会员转帐 2交易卖出,3交易买入 4兑换',
  `log_type` int(0) DEFAULT NULL COMMENT '日志类型（增加1、减少0）',
  `source_id` bigint(0) DEFAULT NULL COMMENT '如果来源为订单，即为订单id,如果来源为分红，则为分红日志id',
  `old_balance` decimal(11, 4) DEFAULT 0.0000 COMMENT '上次金额',
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '备注',
  `bonus_from` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分红的来源',
  `create_time` int(0) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `time`(`create_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for balance_operate
-- ----------------------------
DROP TABLE IF EXISTS `balance_operate`;
CREATE TABLE `balance_operate`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `member_id` int(0) DEFAULT NULL COMMENT '会员ID',
  `member_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `nums` decimal(16, 2) DEFAULT NULL COMMENT '金额',
  `balance_type` tinyint(0) DEFAULT NULL COMMENT '账本类型',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型 1增加 2减少',
  `remark` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `operator` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '操作人',
  `create_time` int(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '账本操作' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for balance_type
-- ----------------------------
DROP TABLE IF EXISTS `balance_type`;
CREATE TABLE `balance_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `type` int(0) NOT NULL DEFAULT 0 COMMENT '账本类型',
  `type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账本类型名称',
  `is_tixian` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '能否提现',
  `is_transfer` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '能否转账',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '能否在后台操作',
  `create_time` int(0) DEFAULT NULL,
  `update_time` int(0) NOT NULL,
  `end_time` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of balance_type
-- ----------------------------
INSERT INTO `balance_type` VALUES (1, 1, '余额', '0', '0', '0', 1546492493, 1546492493, 1846492493);

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int unsigned NOT NULL,
  `img_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '类型 如 1商城，用来定义不同页面的轮播图片',
  `link` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '链接地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '轮播图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (21, 'http://images.tinakj.com/upload/avatar1581866132.jpg', '1', '');
INSERT INTO `banner` VALUES (22, 'http://images.tinakj.com/upload/avatar1581866140.jpg', '1', '');
INSERT INTO `banner` VALUES (23, 'http://images.tinakj.com/upload/avatar1581866147.jpg', '1', '');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cart_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `buyer_id` int unsigned NOT NULL COMMENT '买家id',
  `goods_id` int unsigned NOT NULL COMMENT '商品id',
  `goods_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `goods_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '商品价格',
  `goods_num` smallint unsigned NOT NULL COMMENT '购买商品数量',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '1加入购物车购买（默认） 2直接购买',
  `goods_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品图片',
  PRIMARY KEY (`cart_id`) USING BTREE,
  INDEX `member_id`(`buyer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (8, 58, 34, '洽洽 皇葵瓜子 坚果炒货休闲零食110g/袋 包邮', 15.80, 1, '2', 'http://images.tinakj.com/upload/avatar1581864924.jpg');

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `coupons_instance_id` int(0) NOT NULL COMMENT '优惠券实例id',
  `coupons_money` decimal(10, 2) DEFAULT 0.00 COMMENT '优惠券金额',
  `member_id` int(0) DEFAULT NULL COMMENT '领取优惠券的会员id',
  `order_id` int(0) DEFAULT NULL COMMENT '使用优惠券的订单id',
  `end_time` int(0) DEFAULT 0 COMMENT '优惠券有效期止时间',
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态 1未用 2已用 3过期 4失效',
  `create_time` int(0) DEFAULT NULL,
  `update_time` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for coupons_instance
-- ----------------------------
DROP TABLE IF EXISTS `coupons_instance`;
CREATE TABLE `coupons_instance`  (
  `instance_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '优惠券名称',
  `coupons_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '优惠券名称',
  `coupons_desc` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '优惠券描述',
  `get_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '领取方式 1免费领取 ...',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '1 满减券 2折扣券',
  `time_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '时间类型 1时间段 2 N天后有效',
  `start_time` int(0) NOT NULL COMMENT '优惠券开始时间',
  `end_time` int(0) NOT NULL COMMENT '优惠券结束时间',
  `useful_day` tinyint(0) DEFAULT 0 COMMENT '有效天数',
  `discount` decimal(6, 1) DEFAULT 0.0 COMMENT '优惠折扣',
  `coupons_money` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '优惠券面额',
  `total_nums` tinyint(0) NOT NULL COMMENT '发放总数',
  `limit_nums` tinyint(0) NOT NULL COMMENT '每人限领数量',
  `giveout_nums` tinyint(0) DEFAULT 0 COMMENT '已发放数量',
  `consume_amount` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '消费金额可用',
  `coupons_image` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '优惠券图片',
  `use_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '可用类型 1通用券 2分类下使用 3单品使用',
  `type_id` int(0) DEFAULT 0 COMMENT '类型对应的id 分类为产品分类id 单品为产品id',
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '状态 1有效 0失效',
  `create_time` int(0) DEFAULT NULL,
  `update_time` int(0) DEFAULT NULL,
  PRIMARY KEY (`instance_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券实例' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for evaluate_goods
-- ----------------------------
DROP TABLE IF EXISTS `evaluate_goods`;
CREATE TABLE `evaluate_goods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '评价ID',
  `order_id` int(0) NOT NULL COMMENT '订单ID',
  `goods_id` int(0) NOT NULL COMMENT '商品ID',
  `goods_commonid` int(0) NOT NULL COMMENT '商品共公id',
  `goods_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `goods_price` decimal(10, 2) DEFAULT NULL COMMENT '商品价格',
  `goods_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品图片',
  `scores` tinyint(1) DEFAULT 5 COMMENT '1-5分',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '信誉评价内容',
  `is_anonymous` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0表示不是 1表示是匿名评价',
  `create_time` int(0) NOT NULL COMMENT '评价时间',
  `member_id` int(0) NOT NULL COMMENT '评价人ID',
  `member_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '评价人名称',
  `member_avatar` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '评价人头像',
  `explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商家回复',
  `eval_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '晒单图片',
  `content_again` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '追加评价内容',
  `eval_addtime_again` int unsigned COMMENT '追加评价时间',
  `eval_image_again` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '追加评价图片',
  `explain_again` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '追加解释内容',
  `eval_top` tinyint(1) DEFAULT 100 COMMENT '置顶',
  `eval_top_time` int unsigned COMMENT '置顶时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE,
  INDEX `goods_commonid`(`goods_commonid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品评价表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for express
-- ----------------------------
DROP TABLE IF EXISTS `express`;
CREATE TABLE `express`  (
  `id` tinyint unsigned NOT NULL COMMENT '索引ID',
  `e_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司名称',
  `e_state` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态',
  `e_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `e_code_kdniao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '快递鸟快递公司代码',
  `e_letter` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '首字母',
  `e_order` enum('1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2' COMMENT '1常用2不常用',
  `e_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司网址',
  `e_zt_state` tinyint(0) DEFAULT 0 COMMENT '是否支持服务站配送0否1是',
  `e_chose` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '是否为常用快递 1是',
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '快递公司' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of express
-- ----------------------------
INSERT INTO `express` VALUES (1, '安信达', '0', 'anxindakuaixi', 'AXD', 'A', '2', 'http://www.anxinda.com', 0, '0');
INSERT INTO `express` VALUES (2, '包裹平邮', '1', 'youzhengguonei', 'YZPY', 'B', '2', 'http://yjcx.chinapost.com.cn', 0, '0');
INSERT INTO `express` VALUES (3, 'CCES', '1', 'cces', 'CCES', 'C', '2', 'http://www.cces.com.cn', 0, '0');
INSERT INTO `express` VALUES (4, '传喜物流', '1', 'chuanxiwuliu', 'CXWL', 'C', '2', 'http://www.cxcod.com', 0, '0');
INSERT INTO `express` VALUES (5, 'DHL快递', '1', 'dhl', 'DHL_C', 'D', '2', 'http://www.cn.dhl.com', 0, '0');
INSERT INTO `express` VALUES (6, '大田物流', '1', 'datianwuliu', 'DTWL', 'D', '2', 'http://www.dtw.com.cn', 0, '0');
INSERT INTO `express` VALUES (7, '德邦物流', '1', 'debangwuliu', 'DBL', 'D', '2', 'http://www.deppon.com', 0, '0');
INSERT INTO `express` VALUES (8, 'EMS', '1', 'ems', 'EMS', 'E', '2', 'http://www.ems.com.cn', 0, '0');
INSERT INTO `express` VALUES (9, 'EMS国际', '1', 'emsguoji', 'EMSGJ', 'E', '2', '###', 0, '0');
INSERT INTO `express` VALUES (10, '飞康达', '1', 'feikangda', 'FKD', 'F', '2', 'http://www.fkd.com.cn', 0, '0');
INSERT INTO `express` VALUES (11, 'FedEx(国际)', '1', 'fedex', 'FEDEX', 'F', '2', 'http://fedex.com/cn', 0, '0');
INSERT INTO `express` VALUES (12, '凡客如风达', '1', 'rufengda', 'RFD', 'F', '2', 'http://www.rufengda.com', 0, '0');
INSERT INTO `express` VALUES (13, '港中能达', '1', 'ganzhongnengda', 'NEDA', 'G', '2', 'http://www.nd56.com', 0, '0');
INSERT INTO `express` VALUES (14, '挂号信', '1', 'youzhengguonei', 'YZPY', 'G', '2', 'http://yjcx.chinapost.com.cn', 0, '0');
INSERT INTO `express` VALUES (15, '共速达', '1', 'gongsuda', 'GSD', 'G', '2', 'http://www.gongsuda.com/mall/Search.aspx', 0, '0');
INSERT INTO `express` VALUES (16, '汇通快递', '1', 'huitongkuaidi', 'HTKY', 'H', '2', 'http://www.htky365.com', 0, '0');
INSERT INTO `express` VALUES (17, '华宇物流', '1', 'tiandihuayu', 'HOAU', 'H', '2', 'http://www.hoau.net', 0, '0');
INSERT INTO `express` VALUES (18, '佳吉快运', '1', 'jiajiwuliu', 'JJKY', 'J', '2', 'http://www.jiaji.com', 0, '0');
INSERT INTO `express` VALUES (19, '佳怡物流', '1', 'jiayiwuliu', 'JYWL', 'J', '2', 'http://www.jiayi56.com', 0, '0');
INSERT INTO `express` VALUES (20, '急先达', '1', 'jixianda', 'JXD', 'J', '2', 'http://www.joust.cn', 0, '0');
INSERT INTO `express` VALUES (21, '快捷速递', '1', 'kuaijiesudi', 'FAST', 'K', '2', 'http://www.fastexpress.com.cn', 0, '0');
INSERT INTO `express` VALUES (22, '龙邦快递', '1', 'longbanwuliu', 'LB', 'L', '2', 'http://www.lbex.com.cn', 0, '0');
INSERT INTO `express` VALUES (23, '联邦快递', '1', 'lianbangkuaidi', 'LBKD', 'L', '2', 'http://cndxp.apac.fedex.com/dxp.html', 0, '0');
INSERT INTO `express` VALUES (24, '联昊通', '1', 'lianhaowuliu', 'LHT', 'L', '2', 'http://www.lhtex.com.cn', 0, '0');
INSERT INTO `express` VALUES (25, '全一快递', '1', 'quanyikuaidi', 'UAPEX', 'Q', '2', 'http://www.unitop-apex.com', 0, '0');
INSERT INTO `express` VALUES (26, '全峰快递', '1', 'quanfengkuaidi', 'QFKD', 'Q', '2', 'http://www.qfkd.com.cn', 0, '0');
INSERT INTO `express` VALUES (27, '全日通', '1', 'quanritongkuaidi', 'QRT', 'Q', '2', 'http://www.at-express.com', 0, '0');
INSERT INTO `express` VALUES (28, '申通快递', '1', 'shentong', 'STO', 'S', '1', 'http://www.sto.cn', 0, '1');
INSERT INTO `express` VALUES (29, '顺丰快递', '1', 'shunfeng', 'SF', 'S', '1', 'http://www.sf-express.com', 0, '1');
INSERT INTO `express` VALUES (30, '速尔快递', '1', 'suer', 'SURE', 'S', '2', 'http://www.sure56.com', 0, '0');
INSERT INTO `express` VALUES (31, 'TNT快递', '1', 'tnt', 'TNT', 'T', '2', 'http://www.tnt.com.cn', 0, '0');
INSERT INTO `express` VALUES (32, '天天快递', '1', 'tiantian', 'HHTT', 'T', '2', 'http://www.ttkdex.com', 0, '0');
INSERT INTO `express` VALUES (33, '天地华宇', '1', 'tiandihuayu', 'HOAU', 'T', '2', 'http://www.hoau.net', 0, '0');
INSERT INTO `express` VALUES (34, 'UPS快递', '1', 'ups', 'UPS', 'U', '2', 'http://www.ups.com/cn', 0, '0');
INSERT INTO `express` VALUES (35, 'USPS', '1', 'usps', 'USPS', 'U', '2', 'http://www.ups.com/us', 0, '0');
INSERT INTO `express` VALUES (36, '新邦物流', '1', 'xinbangwuliu', 'XBWL', 'X', '2', 'http://www.xbwl.cn', 0, '0');
INSERT INTO `express` VALUES (37, '信丰物流', '1', 'xinfengwuliu', 'XFEX', 'X', '2', 'http://www.xf-express.com.cn', 0, '0');
INSERT INTO `express` VALUES (38, '希伊艾斯', '1', 'cces', 'CCES', 'X', '2', 'http://www.cces.com.cn', 0, '0');
INSERT INTO `express` VALUES (39, '新蛋物流', '1', 'neweggozzo', 'OZZO', 'X', '2', 'http://www.ozzo.com.cn', 0, '0');
INSERT INTO `express` VALUES (40, '圆通快递', '1', 'yuantong', 'YTO', 'Y', '1', 'http://www.yto.net.cn', 0, '1');
INSERT INTO `express` VALUES (41, '韵达快递', '1', 'yunda', 'YD', 'Y', '1', 'http://www.yundaex.com', 0, '1');
INSERT INTO `express` VALUES (42, '邮政包裹', '1', 'youzhengguonei', 'YZPY', 'Y', '1', 'http://yjcx.chinapost.com.cn', 0, '0');
INSERT INTO `express` VALUES (43, '优速快递', '1', 'youshuwuliu', 'UC', 'Y', '2', 'http://www.uce.cn', 0, '0');
INSERT INTO `express` VALUES (44, '中通快递', '1', 'zhongtong', 'ZTO', 'Z', '1', 'http://www.zto.cn', 0, '1');
INSERT INTO `express` VALUES (45, '中铁快运', '1', 'zhongtiewuliu', 'ZTKY', 'Z', '2', 'http://www.cre.cn', 0, '0');
INSERT INTO `express` VALUES (46, '宅急送', '1', 'zhaijisong', 'ZJS', 'Z', '2', 'http://www.zjs.com.cn', 0, '0');
INSERT INTO `express` VALUES (47, '中邮物流', '1', 'zhongyouwuliu', 'ZYWL', 'Z', '2', 'http://www.cnpl.com.cn', 0, '0');
INSERT INTO `express` VALUES (48, '百世汇通', '1', 'BEST', 'BEST', 'B', '1', 'http://www.htky365.com/', 0, '1');
INSERT INTO `express` VALUES (49, '安能物流', '1', 'ANE', 'ANE', 'A', '2', 'http://www.ane56.com', 0, '0');
INSERT INTO `express` VALUES (50, '国通快递', '1', 'GTO', 'GTO', 'G', '2', 'http://www.gto365.com', 0, '0');
INSERT INTO `express` VALUES (51, '品骏快递', '1', 'PJKD', 'PJKD', 'P', '2', 'http://www.pjbest.com/index', 0, '0');
INSERT INTO `express` VALUES (52, '京东物流', '1', 'JDWL', 'JDWL', 'J', '2', 'http://www.jdwl.com/', 0, '0');
INSERT INTO `express` VALUES (53, '优速快递', '1', 'yousuwuliu', 'UC', 'Y', '2', 'http://www.uc56.com/index.html', 0, '0');
INSERT INTO `express` VALUES (54, '壹米滴答', '1', 'YMDD', 'Y', 'Y', '2', 'https://www.yimidida.com/home/home.jsp', 0, '0');

-- ----------------------------
-- Table structure for favorites
-- ----------------------------
DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites`  (
  `id` int unsigned NOT NULL COMMENT '记录ID',
  `member_id` int unsigned NOT NULL COMMENT '会员ID',
  `member_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '会员名',
  `goods_commonid` int unsigned NOT NULL COMMENT '商品ID',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `goods_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品图片',
  `gc_id` int unsigned COMMENT '商品分类ID',
  `goods_price` decimal(10, 2) DEFAULT 0.00 COMMENT '商品收藏时价格',
  `log_msg` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收藏备注',
  `create_time` int unsigned NOT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `member_id`(`member_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favorites
-- ----------------------------
INSERT INTO `favorites` VALUES (1, 58, '001号', 116, '坚果pro2', 'http://images.tinakj.com/goods/20190608/1560003736.jpg', 0, 1998.00, NULL, 1561819918);
INSERT INTO `favorites` VALUES (2, 58, '001号', 117, '锤子ML1', 'http://images.tinakj.com/goods/20190630/1561861131.jpg', 0, 2999.00, NULL, 1561867528);

-- ----------------------------
-- Table structure for fx_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `fx_auth_rule`;
CREATE TABLE `fx_auth_rule`  (
  `id` int unsigned NOT NULL,
  `pid` int(0) DEFAULT NULL COMMENT '父id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `path` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '路径',
  `sort` int(0) DEFAULT 1 COMMENT '排序 ',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '1内部 2外部',
  `is_menu` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '是否为菜单 1是',
  `desc` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图标',
  `create_time` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '节点表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fx_auth_rule
-- ----------------------------
INSERT INTO `fx_auth_rule` VALUES (8, 0, '菜单权限管理', '', 1, '1', '1', '菜单管理', 'iconfont icon-fenlei', 1553950935);
INSERT INTO `fx_auth_rule` VALUES (33, 8, '菜单列表', '/page/auth/menu_list', 1, '1', '1', '菜单列表', 'iconfont icon-gouxuan1', 1555163817);
INSERT INTO `fx_auth_rule` VALUES (37, 8, '角色列表', '/page/auth/role_list', 2, '1', '1', '用户角色', 'iconfont icon-gouxuan1', 1553951425);
INSERT INTO `fx_auth_rule` VALUES (38, 8, '用户列表', '/page/auth/user_list', 3, '1', '1', '用户列表', 'iconfont icon-gouxuan1', 1560696510);
INSERT INTO `fx_auth_rule` VALUES (47, 0, '商品管理', '', 3, '1', '1', '商品管理', 'iconfont icon-fenlei', 1555765177);
INSERT INTO `fx_auth_rule` VALUES (48, 47, '分类管理', '/page/goods/class_list', 1, '1', '1', '商品分类', 'iconfont icon-gouxuan1', 1556358016);
INSERT INTO `fx_auth_rule` VALUES (50, 47, '商品规格', '/page/goods/goods_spec', 2, '1', '1', '商品规格管理', 'iconfont icon-gouxuan1', 1556358004);
INSERT INTO `fx_auth_rule` VALUES (51, 47, '规格值', '/page/goods/goods_spec_value', 4, '1', '0', '规格的值', '', 1556360789);
INSERT INTO `fx_auth_rule` VALUES (52, 47, '规格分组', '/page/goods/spec_group', 3, '1', '1', '把规格分成不同的组，用于满足不同的分类', 'iconfont icon-gouxuan1', 1556367763);
INSERT INTO `fx_auth_rule` VALUES (53, 47, '商品列表', '/page/goods/goods_list', 1, '1', '1', '', 'iconfont icon-gouxuan1', 1557408198);
INSERT INTO `fx_auth_rule` VALUES (54, 47, '商品编辑', '/page/goods/goods_edit', 2, '1', '0', '商品编辑', 'iconfont icon-gouxuan1', 1559220266);
INSERT INTO `fx_auth_rule` VALUES (55, 0, '订单管理', '', 4, '1', '1', '订单管理', 'iconfont icon-fenlei', 1562468864);
INSERT INTO `fx_auth_rule` VALUES (56, 55, '订单列表', '/page/order/order_list', 1, '1', '1', '订单列表', 'iconfont icon-gouxuan1', 1562468892);
INSERT INTO `fx_auth_rule` VALUES (57, 55, '订单详情', '/page/order/order_detail', 1, '1', '0', '订单详情', '', 1562474480);
INSERT INTO `fx_auth_rule` VALUES (58, 0, '物流管理', '', 5, '1', '1', '物流管理', 'iconfont icon-fenlei', 1565187700);
INSERT INTO `fx_auth_rule` VALUES (59, 58, '物流公司设置', '/page/logistics/express', 1, '1', '1', '物流公司设置', 'iconfont icon-gouxuan1', 1562488658);
INSERT INTO `fx_auth_rule` VALUES (60, 0, '会员管理', '', 2, '1', '1', '会员管理', 'iconfont icon-fenlei', 1563088855);
INSERT INTO `fx_auth_rule` VALUES (62, 60, '会员列表', '/page/member/member_list', 1, '1', '1', '会员列表', 'iconfont icon-gouxuan1', 1563088851);
INSERT INTO `fx_auth_rule` VALUES (63, 60, '会员修改', '/page/member/member_edit', 2, '1', '0', '会员修改', '', 1564798818);
INSERT INTO `fx_auth_rule` VALUES (64, 60, '会员添加', '/page/member/member_add', 3, '1', '0', '会员添加', 'iconfont icon-gouxuan1', 1564803358);
INSERT INTO `fx_auth_rule` VALUES (65, 0, '平台设置', '', 6, '1', '1', '平台设置', 'iconfont icon-fenlei', 1565187713);
INSERT INTO `fx_auth_rule` VALUES (66, 65, '轮播图', '/page/platform/banner', 1, '1', '1', '轮播图', 'iconfont icon-gouxuan1', 1564822734);
INSERT INTO `fx_auth_rule` VALUES (69, 65, '文章管理', '/page/platform/article', 2, '1', '1', '文章管理', 'iconfont icon-gouxuan1', 1565008896);
INSERT INTO `fx_auth_rule` VALUES (71, 0, '财务管理', '', 7, '1', '1', '财务管理', 'iconfont icon-fenlei', 1565188447);
INSERT INTO `fx_auth_rule` VALUES (72, 71, '账本管理', '/page/balance/balance_manage', 1, '1', '1', '账本管理', 'iconfont icon-gouxuan1', 1565188614);
INSERT INTO `fx_auth_rule` VALUES (73, 69, '编辑文章', '/page/platform/article_edit', 1, '1', '0', '编辑文章', '', 1566119480);
INSERT INTO `fx_auth_rule` VALUES (74, 0, '促销活动', '', 4, '1', '1', '促销活动', 'iconfont icon-fenlei', 1576396098);
INSERT INTO `fx_auth_rule` VALUES (75, 74, '拼团活动', '/page/promotion/pintuan/pintuan', 1, '1', '1', '拼团活动', 'iconfont icon-gouxuan1', 1576396461);
INSERT INTO `fx_auth_rule` VALUES (76, 75, '添加拼团实例', '/page/promotion/pintuan/pintuan_instance_edit', 2, '1', '0', '添加拼团实例', 'iconfont icon-gouxuan1', 1576677071);
INSERT INTO `fx_auth_rule` VALUES (77, 75, '拼团商品', '/page/promotion/pintuan/pintuan_goods', 3, '1', '0', '', 'iconfont icon-gouxuan1', 1576931601);
INSERT INTO `fx_auth_rule` VALUES (79, 74, '秒杀活动', '/page/promotion/seckill/seckill', 2, '1', '1', '秒杀活动', 'iconfont icon-gouxuan1', 1578229488);
INSERT INTO `fx_auth_rule` VALUES (80, 79, '编辑秒杀实例', '/page/promotion/seckill/seckill_instance_edit', 2, '1', '0', '', '', 1578234376);
INSERT INTO `fx_auth_rule` VALUES (81, 79, '秒杀产品', '/page/promotion/seckill/seckill_goods', 3, '1', '0', '秒杀产品列表', '', 1578234555);
INSERT INTO `fx_auth_rule` VALUES (82, 75, '开团订单', '/page/promotion/pintuan/pintuan_order', 3, '1', '0', '开团订单', '', 1578922134);
INSERT INTO `fx_auth_rule` VALUES (83, 74, '优惠券', '/page/promotion/coupons/coupons', 3, '1', '1', '优惠券', 'iconfont icon-gouxuan1', 1581081392);
INSERT INTO `fx_auth_rule` VALUES (84, 83, '编辑优惠券', '/page/promotion/coupons/coupons_edit', 1, '1', '0', '编辑优惠券', '', 1581081954);

-- ----------------------------
-- Table structure for fx_role
-- ----------------------------
DROP TABLE IF EXISTS `fx_role`;
CREATE TABLE `fx_role`  (
  `id` int unsigned NOT NULL COMMENT '角色ID',
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名称',
  `rule_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '菜单id 用,隔开',
  `role_desc` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色描述',
  `uid` int(0) DEFAULT NULL COMMENT '创建人id 对应admin表中的',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '状态 1正常',
  `create_time` int(0) DEFAULT NULL,
  `update_time` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fx_role
-- ----------------------------
INSERT INTO `fx_role` VALUES (1, 'superadmin', '超级管理员', '', '超级管理员拥有所有权限 这个角色是由系统定的，不要更改', 0, '1', NULL, NULL);
INSERT INTO `fx_role` VALUES (4, NULL, '订单管理', NULL, '订单管理', 2, '1', 1555165413, NULL);
INSERT INTO `fx_role` VALUES (6, NULL, 'test11', '53,8,37,38', 'test11', 4, '1', 1560696593, NULL);
INSERT INTO `fx_role` VALUES (7, NULL, 'h1', '8,37,38', 'h1', 5, '1', 1560696646, NULL);
INSERT INTO `fx_role` VALUES (8, NULL, '商品管理员', '47,48,53,50,54,52,51,71,72', '商品管理员', 1, '1', 1563700735, 1565447065);

-- ----------------------------
-- Table structure for fx_user
-- ----------------------------
DROP TABLE IF EXISTS `fx_user`;
CREATE TABLE `fx_user`  (
  `id` int unsigned NOT NULL,
  `role_id` int(0) DEFAULT NULL,
  `pid` int(0) DEFAULT NULL COMMENT '父级id',
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `auth_key` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '令牌',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '状态 1正常 0禁用',
  `avatar` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `creater_id` int(0) DEFAULT 0 COMMENT '创建人id',
  `login_time` int(0) DEFAULT NULL COMMENT '登录时间',
  `last_login_time` int(0) DEFAULT NULL COMMENT '上次登录时间',
  `create_time` int(0) DEFAULT NULL,
  `update_time` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fx_user
-- ----------------------------
INSERT INTO `fx_user` VALUES (1, 1, 0, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '0Dk2Bwx-F5r6V1CMjkqcZ_wQF5xVC2G2', '1', 'http://images.tinakj.com/avatar/1560004492.jpg', 0, 1581748938, 1581413518, NULL, 1560004493);
INSERT INTO `fx_user` VALUES (2, 8, 1, 'test', 'e10adc3949ba59abbe56e057f20f883e', 'DjXXkuQa_wPrJTLMb5hd6SWQVkR_EPMw', '1', 'http://images.tinakj.com/avatar/1560004361.jpg', 1, 1565446963, 1565445339, NULL, 1565444681);
INSERT INTO `fx_user` VALUES (5, 6, 4, 't1', 'e10adc3949ba59abbe56e057f20f883e', 'y6cxGXmTLCIClsNwuiYwAN-pOYZrMJgg', '1', NULL, 4, 1560696625, 1560696625, 1560696616, NULL);
INSERT INTO `fx_user` VALUES (6, 7, 5, 'h_user', 'e10adc3949ba59abbe56e057f20f883e', 'RDP4LGp7S3NpcimX-a5XnJTipy-M5MUV', '1', NULL, 5, 1560696678, 1560696678, 1560696661, NULL);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goods_id` int unsigned NOT NULL COMMENT '商品id(SKU)',
  `goods_commonid` int unsigned NOT NULL COMMENT '商品公共表id',
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称（+规格名称）',
  `gc_id1` int unsigned COMMENT '一级分类id',
  `gc_id2` int(0) DEFAULT 0 COMMENT '二级分类ID',
  `gc_id3` int(0) DEFAULT 0 COMMENT '三级分类ID',
  `gc_id` int(0) NOT NULL DEFAULT 0 COMMENT '最终分类',
  `spec_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格名称',
  `goods_spec` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品规格序列化',
  `promotion_type` tinyint(0) DEFAULT 0 COMMENT '0普通产品 1拼团产品 2秒杀产品',
  `goods_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '商品价格',
  `goods_costprice` decimal(10, 2) DEFAULT NULL,
  `goods_marketprice` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '市场价',
  `goods_storage_alarm` tinyint unsigned NOT NULL COMMENT '库存报警值',
  `goods_click` int unsigned NOT NULL COMMENT '商品点击数量',
  `goods_salenum` int unsigned NOT NULL COMMENT '销售数量',
  `goods_collect` int unsigned NOT NULL COMMENT '收藏数量',
  `goods_storage` int unsigned NOT NULL COMMENT '商品库存',
  `goods_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品主图',
  `goods_body` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '商品描述',
  `mobile_body` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '手机端商品描述',
  `goods_state` tinyint unsigned NOT NULL COMMENT '商品状态 0下架，1正常，10违规（禁售）',
  `goods_verify` tinyint unsigned NOT NULL COMMENT '商品审核 1通过，0未通过，10审核中',
  `create_time` int unsigned NOT NULL COMMENT '商品添加时间',
  `update_time` int unsigned COMMENT '商品更新时间',
  `color_id` int unsigned COMMENT '颜色规格id',
  `goods_freight` decimal(10, 2) UNSIGNED DEFAULT 0.00 COMMENT '运费 0为免运费',
  `goods_vat` tinyint unsigned COMMENT '是否开具增值税发票 1是，0否',
  `goods_commend` tinyint unsigned COMMENT '商品推荐 1是，0否 默认0',
  `is_virtual` tinyint unsigned NOT NULL COMMENT '是否为虚拟商品 1是，0否',
  `goods_trans_v` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '重量或体积',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (4, 2, '智利进口车厘子J级（26-28mm）3斤/5斤/8斤装礼盒 顺丰包邮 3斤装', 1, 5, NULL, 5, '{\"2\":\"重量\"}', '{\"1\":\"3斤装\"}', 1, 150.00, 100.00, 160.00, 10, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581837880.jpg', NULL, NULL, 1, 1, 1581837883, 1581866342, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (5, 2, '智利进口车厘子J级（26-28mm）3斤/5斤/8斤装礼盒 顺丰包邮 5斤装', 1, 5, NULL, 5, '{\"2\":\"重量\"}', '{\"2\":\"5斤装\"}', 1, 250.00, 100.00, 160.00, 10, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581837880.jpg', NULL, NULL, 1, 1, 1581837883, 1581866342, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (6, 2, '智利进口车厘子J级（26-28mm）3斤/5斤/8斤装礼盒 顺丰包邮 8斤装', 1, 5, NULL, 5, '{\"2\":\"重量\"}', '{\"3\":\"8斤装\"}', 1, 360.00, 100.00, 160.00, 10, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581837880.jpg', NULL, NULL, 1, 1, 1581837883, 1581866342, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (10, 6, '智利车厘子JJ级（28-30mm） 2斤/4斤/5斤礼盒装 顺丰包邮 JJ级2斤装（28-30mm）', 1, 5, NULL, 5, '{\"2\":\"重量\"}', '{\"4\":\"JJ级2斤装（28-30mm）\"}', 2, 139.00, 100.00, 200.00, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581839386.jpg', NULL, NULL, 1, 1, 1581839454, 1581866420, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (11, 6, '智利车厘子JJ级（28-30mm） 2斤/4斤/5斤礼盒装 顺丰包邮  JJ级4斤装（28-30mm）', 1, 5, NULL, 5, '{\"2\":\"重量\"}', '{\"5\":\" JJ级4斤装（28-30mm）\"}', 2, 249.00, 100.00, 200.00, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581839386.jpg', NULL, NULL, 1, 1, 1581839454, 1581866420, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (12, 6, '智利车厘子JJ级（28-30mm） 2斤/4斤/5斤礼盒装 顺丰包邮  JJ级5斤装（28-30mm）', 1, 5, NULL, 5, '{\"2\":\"重量\"}', '{\"6\":\" JJ级5斤装（28-30mm）\"}', 2, 319.00, 100.00, 200.00, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581839386.jpg', NULL, NULL, 1, 1, 1581839454, 1581866420, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (13, 7, '阿克苏冰糖心苹果 新鲜水果 包邮 3斤装', 1, 6, NULL, 6, '{\"2\":\"重量\"}', '{\"1\":\"3斤装\"}', 0, 39.90, 28.00, 30.00, 1, 0, 0, 0, 200, 'http://images.tinakj.com/upload/avatar1581839916.jpg', NULL, NULL, 1, 1, 1581839961, 1581839961, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (14, 7, '阿克苏冰糖心苹果 新鲜水果 包邮 5斤装', 1, 6, NULL, 6, '{\"2\":\"重量\"}', '{\"2\":\"5斤装\"}', 0, 49.90, 28.00, 30.00, 1, 0, 0, 0, 200, 'http://images.tinakj.com/upload/avatar1581839916.jpg', NULL, NULL, 1, 1, 1581839961, 1581839961, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (15, 7, '阿克苏冰糖心苹果 新鲜水果 包邮 8斤装', 1, 6, NULL, 6, '{\"2\":\"重量\"}', '{\"3\":\"8斤装\"}', 0, 79.90, 28.00, 30.00, 1, 0, 0, 0, 200, 'http://images.tinakj.com/upload/avatar1581839916.jpg', NULL, NULL, 1, 1, 1581839961, 1581839961, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (16, 8, '山东奶油富士苹果 5斤/8斤装 包邮 5斤装', 1, 6, NULL, 6, '{\"2\":\"重量\"}', '{\"2\":\"5斤装\"}', 0, 40.00, 25.00, 30.00, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581840176.jpg', NULL, NULL, 1, 1, 1581840196, 1581840196, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (17, 8, '山东奶油富士苹果 5斤/8斤装 包邮 8斤装', 1, 6, NULL, 6, '{\"2\":\"重量\"}', '{\"3\":\"8斤装\"}', 0, 65.00, 25.00, 30.00, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581840176.jpg', NULL, NULL, 1, 1, 1581840196, 1581840196, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (18, 9, '新鲜草莓三斤装 果园直邮 辽宁丹东九九红颜牛奶草莓 精选头等大果 顺丰航空包邮 3斤装', 1, 7, NULL, 7, '{\"2\":\"重量\"}', '{\"1\":\"3斤装\"}', 1, 98.00, 80.00, 100.00, 1, 0, 0, 0, 40, 'http://images.tinakj.com/upload/avatar1581840841.jpg', NULL, NULL, 1, 1, 1581840860, 1581866355, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (19, 9, '新鲜草莓三斤装 果园直邮 辽宁丹东九九红颜牛奶草莓 精选头等大果 顺丰航空包邮 5斤装', 1, 7, NULL, 7, '{\"2\":\"重量\"}', '{\"2\":\"5斤装\"}', 1, 168.00, 80.00, 100.00, 1, 0, 0, 0, 40, 'http://images.tinakj.com/upload/avatar1581840841.jpg', NULL, NULL, 1, 1, 1581840860, 1581866355, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (20, 10, '【露天】四川大凉山巧克力草莓 3斤 红颜草莓 自然生长无膨大剂 顺丰包邮 4盒装（2.8-3斤）', 1, 7, NULL, 7, '{\"2\":\"重量\"}', '{\"7\":\"4盒装（2.8-3斤）\"}', 0, 119.00, 100.00, 120.00, 1, 0, 0, 0, 50, 'http://images.tinakj.com/upload/avatar1581841192.jpg', NULL, NULL, 1, 1, 1581841220, 1581841220, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (21, 10, '【露天】四川大凉山巧克力草莓 3斤 红颜草莓 自然生长无膨大剂 顺丰包邮 6盒装（4.2-6.5斤）', 1, 7, NULL, 7, '{\"2\":\"重量\"}', '{\"8\":\"6盒装（4.2-6.5斤）\"}', 0, 149.00, 100.00, 120.00, 1, 0, 1, 0, 49, 'http://images.tinakj.com/upload/avatar1581841192.jpg', NULL, NULL, 1, 1, 1581841220, 1581841220, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (22, 11, '进口水果新西兰佳沛阳光金果22-27个奇异果黄心猕猴桃新鲜非红心包邮', 1, 10, NULL, 10, '[]', '[]', 0, 330.00, 300.00, 400.00, 10, 0, 0, 0, 400, 'http://images.tinakj.com/upload/avatar1581841500.png', NULL, NULL, 1, 1, 1581841509, 1581841509, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (23, 12, '湖南黔阳冰糖橙 5斤/8斤装 果径55mm+ 包邮 5斤装', 1, 9, NULL, 9, '{\"2\":\"重量\"}', '{\"2\":\"5斤装\"}', 0, 29.90, 19.90, 21.90, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581857837.jpg', NULL, NULL, 1, 1, 1581857854, 1581857854, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (24, 12, '湖南黔阳冰糖橙 5斤/8斤装 果径55mm+ 包邮 8斤装', 1, 9, NULL, 9, '{\"2\":\"重量\"}', '{\"3\":\"8斤装\"}', 0, 39.90, 19.90, 21.90, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581857837.jpg', NULL, NULL, 1, 1, 1581857854, 1581857854, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (25, 13, '百草味红豆薏仁粉 420gx2盒 包邮', 11, 12, NULL, 12, '[]', '[]', 1, 32.90, 26.00, 32.90, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581858072.jpg', NULL, NULL, 1, 1, 1581858079, 1581866362, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (26, 14, '百草味冻干榴莲干30g*3袋 包邮', 11, 12, NULL, 12, '[]', '[]', 0, 39.90, 30.00, 39.90, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581858237.jpg', NULL, NULL, 1, 1, 1581858244, 1581858244, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (27, 15, '百草味香甜软糯板栗仁80gx2袋 包邮', 11, 12, NULL, 12, '[]', '[]', 1, 39.80, 30.00, 39.80, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581858368.jpg', NULL, NULL, 1, 1, 1581858375, 1581866371, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (28, 16, '新农哥 梅见菓 黑糖话梅味 花生果70g/袋*2袋 酸甘脆 包邮', 11, 15, NULL, 15, '[]', '[]', 0, 21.90, 15.00, 21.90, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581858560.jpg', NULL, NULL, 1, 1, 1581858651, 1581858651, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (29, 17, '新农哥 原滋原味 坚果零食大礼包 992g 8种美味 送礼自吃 包邮', 11, 15, NULL, 15, '[]', '[]', 2, 79.90, 60.00, 79.90, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581858787.jpg', NULL, NULL, 1, 1, 1581858794, 1581866427, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (30, 18, '三只松鼠 休闲零食箱 5袋装 718g 水果干炒货休闲零食组合装 包邮', 11, 13, NULL, 13, '[]', '[]', 2, 49.90, 29.00, 49.90, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581858921.jpg', NULL, NULL, 1, 1, 1581858931, 1581866434, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (31, 19, '三只松鼠 肥宅鲜切饲料 45gx3袋 薯片 休闲膨化网红零食吃货薄片 包邮', 11, 13, NULL, 13, '[]', '[]', 0, 14.90, 10.00, 14.90, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581859150.jpg', NULL, NULL, 1, 1, 1581859157, 1581859157, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (32, 20, '三只松鼠 坚果礼包红黄款礼盒 8袋装 1473g 坚果炒货水果干休闲零食组合装 包邮', 11, 13, NULL, 13, '[]', '[]', 0, 98.00, 80.00, 98.00, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581864259.jpg', NULL, NULL, 1, 1, 1581864222, 1581864222, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (33, 21, '洽洽 珍品夏威夷果仁休闲零食50g/袋 包邮', 11, 14, NULL, 14, '[]', '[]', 0, 25.80, 20.00, 25.80, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581864733.jpg', NULL, NULL, 1, 1, 1581864739, 1581864739, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (34, 22, '洽洽 皇葵瓜子 坚果炒货休闲零食110g/袋 包邮', 11, 14, NULL, 14, '[]', '[]', 0, 15.80, 10.00, 15.80, 1, 0, 0, 0, 10, 'http://images.tinakj.com/upload/avatar1581864924.jpg', NULL, NULL, 1, 1, 1581864951, 1581864951, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (35, 23, '【正品保障】Anna Sui/安娜苏独角兽筑梦天马女士淡香水30ml', 16, 17, NULL, 17, '[]', '[]', 0, 415.00, 300.00, 415.00, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581865450.png', NULL, NULL, 1, 1, 1581865457, 1581865457, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (36, 24, '珀莱雅全网火爆限量供应海盐泡泡面膜【包邮】', 16, 18, NULL, 18, '[]', '[]', 0, 99.90, 80.00, 99.90, 1, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581865595.jpg', NULL, NULL, 1, 1, 1581865602, 1581865602, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (37, 25, '智利原装进口 浪琴慕莎 迷你小瓶干红葡萄酒187mL*6瓶礼品盒酒整箱包邮', 22, 23, NULL, 23, '[]', '[]', 0, 69.00, 30.00, 69.00, 0, 0, 0, 0, 100, 'http://images.tinakj.com/upload/avatar1581865709.jpg', NULL, NULL, 1, 1, 1581865715, 1581865715, 0, 0.00, 0, 1, 0, 0.00);
INSERT INTO `goods` VALUES (38, 26, '【武夷原产 蜜甜醇和】八马茶叶 武夷金骏眉红茶罐装250g/罐 半斤装大分量包邮', 22, 25, NULL, 25, '[]', '[]', 0, 118.00, 80.00, 118.00, 0, 0, 0, 0, 1000, 'http://images.tinakj.com/upload/avatar1581865807.jpg', NULL, NULL, 1, 1, 1581865816, 1581865816, 0, 0.00, 0, 1, 0, 0.00);

-- ----------------------------
-- Table structure for goods_browse
-- ----------------------------
DROP TABLE IF EXISTS `goods_browse`;
CREATE TABLE `goods_browse`  (
  `id` int unsigned NOT NULL COMMENT 'id',
  `goods_commonid` int(0) NOT NULL COMMENT '商品ID',
  `goods_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goods_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `member_id` int(0) NOT NULL COMMENT '会员ID',
  `gc_id` int(0) NOT NULL COMMENT '商品分类',
  `date` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '浏览日期',
  `views` int(0) DEFAULT 1 COMMENT '当天浏览次数',
  `update_time` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品浏览历史表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_browse
-- ----------------------------
INSERT INTO `goods_browse` VALUES (1, 1, 'http://images.tinakj.com/upload/avatar1581837177.jpg', '智利进口车厘子J级（26-28mm）3斤/5斤/8斤装礼盒 顺丰包邮', 58, 5, '2020-02-16', 1, 1581837562);
INSERT INTO `goods_browse` VALUES (2, 2, 'http://images.tinakj.com/upload/avatar1581837880.jpg', '智利进口车厘子J级（26-28mm）3斤/5斤/8斤装礼盒 顺丰包邮', 58, 5, '2020-02-16', 13, 1581866627);
INSERT INTO `goods_browse` VALUES (3, 6, 'http://images.tinakj.com/upload/avatar1581839386.jpg', '智利车厘子JJ级（28-30mm） 2斤/4斤/5斤礼盒装 顺丰包邮', 58, 5, '2020-02-16', 2, 1581839555);
INSERT INTO `goods_browse` VALUES (4, 8, 'http://images.tinakj.com/upload/avatar1581840176.jpg', '山东奶油富士苹果 5斤/8斤装 包邮', 58, 6, '2020-02-16', 1, 1581840309);
INSERT INTO `goods_browse` VALUES (5, 12, 'http://images.tinakj.com/upload/avatar1581857837.jpg', '湖南黔阳冰糖橙 5斤/8斤装 果径55mm+ 包邮', 58, 9, '2020-02-16', 2, 1581859337);
INSERT INTO `goods_browse` VALUES (6, 19, 'http://images.tinakj.com/upload/avatar1581859150.jpg', '三只松鼠 肥宅鲜切饲料 45gx3袋 薯片 休闲膨化网红零食吃货薄片 包邮', 58, 13, '2020-02-16', 1, 1581859274);
INSERT INTO `goods_browse` VALUES (7, 14, 'http://images.tinakj.com/upload/avatar1581858237.jpg', '百草味冻干榴莲干30g*3袋 包邮', 58, 12, '2020-02-16', 3, 1581859305);
INSERT INTO `goods_browse` VALUES (8, 10, 'http://images.tinakj.com/upload/avatar1581841192.jpg', '【露天】四川大凉山巧克力草莓 3斤 红颜草莓 自然生长无膨大剂 顺丰包邮', 58, 7, '2020-02-16', 2, 1581863500);
INSERT INTO `goods_browse` VALUES (9, 17, 'http://images.tinakj.com/upload/avatar1581858787.jpg', '新农哥 原滋原味 坚果零食大礼包 992g 8种美味 送礼自吃 包邮', 58, 15, '2020-02-16', 1, 1581859317);
INSERT INTO `goods_browse` VALUES (10, 16, 'http://images.tinakj.com/upload/avatar1581858560.jpg', '新农哥 梅见菓 黑糖话梅味 花生果70g/袋*2袋 酸甘脆 包邮', 58, 15, '2020-02-16', 1, 1581859323);
INSERT INTO `goods_browse` VALUES (11, 15, 'http://images.tinakj.com/upload/avatar1581858368.jpg', '百草味香甜软糯板栗仁80gx2袋 包邮', 58, 12, '2020-02-16', 1, 1581859332);
INSERT INTO `goods_browse` VALUES (12, 13, 'http://images.tinakj.com/upload/avatar1581858072.jpg', '百草味红豆薏仁粉 420gx2盒 包邮', 58, 12, '2020-02-16', 7, 1581863492);
INSERT INTO `goods_browse` VALUES (13, 11, 'http://images.tinakj.com/upload/avatar1581841500.png', '进口水果新西兰佳沛阳光金果22-27个奇异果黄心猕猴桃新鲜非红心包邮', 58, 10, '2020-02-16', 2, 1581863429);
INSERT INTO `goods_browse` VALUES (14, 22, 'http://images.tinakj.com/upload/avatar1581864924.jpg', '洽洽 皇葵瓜子 坚果炒货休闲零食110g/袋 包邮', 58, 14, '2020-02-16', 4, 1581865300);
INSERT INTO `goods_browse` VALUES (15, 26, 'http://images.tinakj.com/upload/avatar1581865807.jpg', '【武夷原产 蜜甜醇和】八马茶叶 武夷金骏眉红茶罐装250g/罐 半斤装大分量包邮', 58, 25, '2020-02-16', 1, 1581865841);
INSERT INTO `goods_browse` VALUES (16, 21, 'http://images.tinakj.com/upload/avatar1581864733.jpg', '洽洽 珍品夏威夷果仁休闲零食50g/袋 包邮', 58, 14, '2020-02-16', 1, 1581865850);
INSERT INTO `goods_browse` VALUES (17, 9, 'http://images.tinakj.com/upload/avatar1581840841.jpg', '新鲜草莓三斤装 果园直邮 辽宁丹东九九红颜牛奶草莓 精选头等大果 顺丰航空包邮', 58, 7, '2020-02-16', 1, 1581866730);

-- ----------------------------
-- Table structure for goods_category
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category`  (
  `id` int unsigned NOT NULL COMMENT '分类ID',
  `category_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `type_id` int unsigned COMMENT '规格类型分组id',
  `parent_id` int(0) DEFAULT 0 COMMENT '上级分类',
  `img` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分类图片',
  `desc` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分类描述',
  `index_menu` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '是否显示在手机端首页',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_category
-- ----------------------------
INSERT INTO `goods_category` VALUES (1, '新鲜果蔬', 1, 0, 'http://images.tinakj.com/upload/avatar1581827858.jpg', '新鲜果蔬', '1');
INSERT INTO `goods_category` VALUES (5, '车厘子', 1, 1, 'http://images.tinakj.com/upload/avatar1581827096.jpg', '车厘子', '0');
INSERT INTO `goods_category` VALUES (6, '苹果', 1, 1, 'http://images.tinakj.com/upload/avatar1581827407.jpg', '苹果', '0');
INSERT INTO `goods_category` VALUES (7, '草莓', 1, 1, 'http://images.tinakj.com/upload/avatar1581827539.jpg', '草莓', '0');
INSERT INTO `goods_category` VALUES (8, '芒果', 1, 1, 'http://images.tinakj.com/upload/avatar1581827943.jpg', '芒果', '0');
INSERT INTO `goods_category` VALUES (9, '橙子', 1, 1, 'http://images.tinakj.com/upload/avatar1581827733.jpg', '橙', '0');
INSERT INTO `goods_category` VALUES (10, '猕猴桃', 1, 1, 'http://images.tinakj.com/upload/avatar1581828028.jpg', '猕猴桃', '0');
INSERT INTO `goods_category` VALUES (11, '食品零食', 0, 0, 'http://images.tinakj.com/upload/avatar1581828195.jpg', '食品零食', '1');
INSERT INTO `goods_category` VALUES (12, '百草味', 0, 11, 'http://images.tinakj.com/upload/avatar1581828444.jpg', '百草味', '0');
INSERT INTO `goods_category` VALUES (13, '三只松鼠', 0, 11, 'http://images.tinakj.com/upload/avatar1581828457.jpg', '三只松鼠', '0');
INSERT INTO `goods_category` VALUES (14, '洽洽', 0, 11, 'http://images.tinakj.com/upload/avatar1581828523.jpg', '洽洽', '0');
INSERT INTO `goods_category` VALUES (15, '新农哥', 0, 11, 'http://images.tinakj.com/upload/avatar1581828685.jpg', '新农哥', '0');
INSERT INTO `goods_category` VALUES (16, '美妆个护', 0, 0, 'http://images.tinakj.com/upload/avatar1581833940.jpg', '美妆个护', '1');
INSERT INTO `goods_category` VALUES (17, '大牌香水', 0, 16, 'http://images.tinakj.com/upload/avatar1581833759.jpg', '大牌香水', '0');
INSERT INTO `goods_category` VALUES (18, '水乳', 0, 16, 'http://images.tinakj.com/upload/avatar1581833809.jpg', '水乳', '0');
INSERT INTO `goods_category` VALUES (19, '彩妆', 0, 16, 'http://images.tinakj.com/upload/avatar1581833844.jpg', '彩妆', '0');
INSERT INTO `goods_category` VALUES (20, '洗护', 0, 16, 'http://images.tinakj.com/upload/avatar1581833891.jpg', '洗护', '0');
INSERT INTO `goods_category` VALUES (21, '口红', 0, 16, 'http://images.tinakj.com/upload/avatar1581833677.jpg', '口红', '0');
INSERT INTO `goods_category` VALUES (22, '酒水饮料', 0, 0, 'http://images.tinakj.com/upload/avatar1581835704.jpg', '酒水饮料', '1');
INSERT INTO `goods_category` VALUES (23, '红酒', 0, 22, 'http://images.tinakj.com/upload/avatar1581835755.jpg', '红酒', '0');
INSERT INTO `goods_category` VALUES (24, '白酒', 0, 22, 'http://images.tinakj.com/upload/avatar1581835869.jpg', '白酒', '0');
INSERT INTO `goods_category` VALUES (25, '茶叶', 0, 22, 'http://images.tinakj.com/upload/avatar1581835955.jpg', '茶叶', '0');
INSERT INTO `goods_category` VALUES (26, '果酒', 0, 22, 'http://images.tinakj.com/upload/avatar1581836025.jpg', '果酒', '0');
INSERT INTO `goods_category` VALUES (27, '牛奶', 0, 22, 'http://images.tinakj.com/upload/avatar1581836087.jpg', '牛奶', '0');
INSERT INTO `goods_category` VALUES (28, '啤酒', 0, 22, 'http://images.tinakj.com/upload/avatar1581836172.jpg', '啤酒', '0');
INSERT INTO `goods_category` VALUES (29, '饮料', 0, 22, 'http://images.tinakj.com/upload/avatar1581836190.jpg', '饮料', '0');

-- ----------------------------
-- Table structure for goods_common
-- ----------------------------
DROP TABLE IF EXISTS `goods_common`;
CREATE TABLE `goods_common`  (
  `goods_commonid` int unsigned NOT NULL COMMENT '商品公共表id',
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `gc_id1` int unsigned NOT NULL COMMENT '一级分类',
  `gc_id2` int(0) DEFAULT 0 COMMENT '二级分类',
  `gc_id3` int(0) DEFAULT 0 COMMENT '三级分类',
  `gc_id` int(0) DEFAULT 0 COMMENT '最终分类',
  `spec_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格名称',
  `spec_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格值',
  `type_id` int unsigned NOT NULL COMMENT '类型id',
  `promotion_type` tinyint(0) DEFAULT 0 COMMENT '0普通产品 1拼团产品 2秒杀产品   一个商品同时只能是一种类型',
  `goods_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品主图',
  `goods_storage` int unsigned COMMENT '总库存',
  `goods_salenum` int(0) DEFAULT 0 COMMENT '商品销量',
  `goods_click` int(0) DEFAULT 0 COMMENT '点击量',
  `goods_collect` int(0) DEFAULT 0 COMMENT '收藏量',
  `goods_body` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '商品内容',
  `mobile_body` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '手机端商品描述',
  `goods_state` tinyint unsigned COMMENT '商品状态 0下架，1正常，10违规（禁售）',
  `goods_lock` tinyint unsigned COMMENT '商品锁定 0未锁，1已锁',
  `create_time` int unsigned NOT NULL COMMENT '商品添加时间',
  `update_time` int(0) DEFAULT NULL,
  `goods_price` decimal(10, 2) NOT NULL COMMENT '商品价格',
  `goods_marketprice` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '市场价',
  `goods_costprice` decimal(10, 2) DEFAULT 0.00 COMMENT '成本价',
  `goods_storage_alarm` tinyint unsigned NOT NULL COMMENT '库存报警值',
  `goods_barcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '商品条形码',
  `goods_commend` tinyint unsigned NOT NULL COMMENT '商品推荐 1是，0否，默认为0',
  `goods_freight` decimal(10, 2) UNSIGNED DEFAULT 0.00 COMMENT '运费 0为免运费',
  `is_virtual` tinyint unsigned COMMENT '是否为虚拟商品 1是，0否',
  `goods_trans_v` decimal(10, 2) UNSIGNED DEFAULT 0.00 COMMENT '重量或体积',
  PRIMARY KEY (`goods_commonid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品公共内容表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_common
-- ----------------------------
INSERT INTO `goods_common` VALUES (2, '智利进口车厘子J级（26-28mm）3斤/5斤/8斤装礼盒 顺丰包邮', 1, 5, NULL, 5, '{\"2\":\"重量\"}', '{\"2\":{\"1\":\"3斤装\",\"2\":\"5斤装\",\"3\":\"8斤装\"}}', 1, 1, 'http://images.tinakj.com/upload/avatar1581837880.jpg', 300, 0, 13, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581837339.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837349.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837357.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837365.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837375.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837384.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837391.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837399.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837408.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837418.jpg\"></p>', NULL, 1, 0, 1581837883, 1581866342, 150.00, 160.00, 100.00, 10, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (6, '智利车厘子JJ级（28-30mm） 2斤/4斤/5斤礼盒装 顺丰包邮', 1, 5, NULL, 5, '{\"2\":\"重量\"}', '{\"2\":{\"4\":\"JJ级2斤装（28-30mm）\",\"5\":\" JJ级4斤装（28-30mm）\",\"6\":\" JJ级5斤装（28-30mm）\"}}', 1, 2, 'http://images.tinakj.com/upload/avatar1581839386.jpg', 300, 0, 2, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581839498.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837339.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837349.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837357.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837365.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837375.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837384.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837391.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837399.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837408.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581837418.jpg\"></p>', NULL, 1, 0, 1581839454, 1581866420, 139.00, 200.00, 100.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (7, '阿克苏冰糖心苹果 新鲜水果 包邮', 1, 6, NULL, 6, '{\"2\":\"重量\"}', '{\"2\":{\"1\":\"3斤装\",\"2\":\"5斤装\",\"3\":\"8斤装\"}}', 1, 0, 'http://images.tinakj.com/upload/avatar1581839916.jpg', 600, 0, 0, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581839966.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581839976.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581839969.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581839984.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581839995.jpg\"></p>', NULL, 1, 0, 1581839961, 1581839998, 39.90, 30.00, 28.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (8, '山东奶油富士苹果 5斤/8斤装 包邮', 1, 6, NULL, 6, '{\"2\":\"重量\"}', '{\"2\":{\"2\":\"5斤装\",\"3\":\"8斤装\"}}', 1, 0, 'http://images.tinakj.com/upload/avatar1581840176.jpg', 200, 0, 1, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581840221.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581840205.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581840210.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581840213.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581840216.jpg\"></p>', NULL, 1, 0, 1581840196, 1581840231, 40.00, 30.00, 25.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (9, '新鲜草莓三斤装 果园直邮 辽宁丹东九九红颜牛奶草莓 精选头等大果 顺丰航空包邮', 1, 7, NULL, 7, '{\"2\":\"重量\"}', '{\"2\":{\"1\":\"3斤装\",\"2\":\"5斤装\"}}', 1, 1, 'http://images.tinakj.com/upload/avatar1581840841.jpg', 80, 0, 1, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581840866.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581840868.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581840871.jpg\"><img src=\"http://images.tinakj.com/upload/avatar1581840873.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581840875.jpg\"></p>', NULL, 1, 0, 1581840860, 1581866355, 98.00, 100.00, 80.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (10, '【露天】四川大凉山巧克力草莓 3斤 红颜草莓 自然生长无膨大剂 顺丰包邮', 1, 7, NULL, 7, '{\"2\":\"重量\"}', '{\"2\":{\"7\":\"4盒装（2.8-3斤）\",\"8\":\"6盒装（4.2-6.5斤）\"}}', 1, 0, 'http://images.tinakj.com/upload/avatar1581841192.jpg', 99, 1, 2, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581841225.jpg\"><img src=\"http://images.tinakj.com/upload/avatar1581841227.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581841230.jpg\"><img src=\"http://images.tinakj.com/upload/avatar1581841233.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581841236.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581841238.jpg\"><img src=\"http://images.tinakj.com/upload/avatar1581841240.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581841243.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581841245.jpg\"></p>', NULL, 1, 0, 1581841219, 1581841267, 119.90, 120.00, 100.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (11, '进口水果新西兰佳沛阳光金果22-27个奇异果黄心猕猴桃新鲜非红心包邮', 1, 10, NULL, 10, '[]', '[]', 1, 0, 'http://images.tinakj.com/upload/avatar1581841500.png', 400, 0, 2, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581841513.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581841516.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581841518.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581841520.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581841522.jpg\"></p>', NULL, 1, 0, 1581841509, 1581841536, 330.00, 400.00, 300.00, 10, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (12, '湖南黔阳冰糖橙 5斤/8斤装 果径55mm+ 包邮', 1, 9, NULL, 9, '{\"2\":\"重量\"}', '{\"2\":{\"2\":\"5斤装\",\"3\":\"8斤装\"}}', 1, 0, 'http://images.tinakj.com/upload/avatar1581857837.jpg', 200, 0, 2, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581857859.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581857861.jpg\"><img src=\"http://images.tinakj.com/upload/avatar1581857864.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581857866.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581857879.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581857881.jpg\"></p>', NULL, 1, 0, 1581857853, 1581857898, 29.90, 21.90, 19.90, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (13, '百草味红豆薏仁粉 420gx2盒 包邮', 11, 12, NULL, 12, '[]', '[]', 0, 1, 'http://images.tinakj.com/upload/avatar1581858072.jpg', 100, 0, 7, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581858083.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858088.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858090.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858094.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858096.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858099.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858101.jpg\"></p>', NULL, 1, 0, 1581858079, 1581866362, 32.90, 32.90, 26.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (14, '百草味冻干榴莲干30g*3袋 包邮', 11, 12, NULL, 12, '[]', '[]', 0, 0, 'http://images.tinakj.com/upload/avatar1581858237.jpg', 100, 0, 3, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581858248.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858251.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858254.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858257.jpg\"><img src=\"http://images.tinakj.com/upload/avatar1581858259.jpg\"><img src=\"http://images.tinakj.com/upload/avatar1581858262.jpg\"><img src=\"http://images.tinakj.com/upload/avatar1581858265.jpg\"></p>', NULL, 1, 0, 1581858244, 1581858278, 39.90, 39.90, 30.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (15, '百草味香甜软糯板栗仁80gx2袋 包邮', 11, 12, NULL, 12, '[]', '[]', 0, 1, 'http://images.tinakj.com/upload/avatar1581858368.jpg', 100, 0, 1, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581858380.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858383.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858387.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858391.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858393.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858395.jpg\"></p>', NULL, 1, 0, 1581858375, 1581866371, 39.80, 39.80, 30.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (16, '新农哥 梅见菓 黑糖话梅味 花生果70g/袋*2袋 酸甘脆 包邮', 11, 15, NULL, 15, '[]', '[]', 0, 0, 'http://images.tinakj.com/upload/avatar1581858560.jpg', 100, 0, 1, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581858656.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858659.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858662.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858665.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858667.jpg\"></p>', NULL, 1, 0, 1581858651, 1581858678, 21.90, 21.90, 15.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (17, '新农哥 原滋原味 坚果零食大礼包 992g 8种美味 送礼自吃 包邮', 11, 15, NULL, 15, '[]', '[]', 0, 2, 'http://images.tinakj.com/upload/avatar1581858787.jpg', 100, 0, 1, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581858801.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858808.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858813.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858819.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858823.jpg\"></p>', NULL, 1, 0, 1581858794, 1581866427, 79.90, 79.90, 60.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (18, '三只松鼠 休闲零食箱 5袋装 718g 水果干炒货休闲零食组合装 包邮', 11, 13, NULL, 13, '[]', '[]', 0, 2, 'http://images.tinakj.com/upload/avatar1581858921.jpg', 100, 0, 0, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581858939.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858955.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581858959.jpg\"></p>', NULL, 1, 0, 1581858931, 1581866434, 49.90, 49.90, 29.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (19, '三只松鼠 肥宅鲜切饲料 45gx3袋 薯片 休闲膨化网红零食吃货薄片 包邮', 11, 13, NULL, 13, '[]', '[]', 0, 0, 'http://images.tinakj.com/upload/avatar1581859150.jpg', 100, 0, 1, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581859163.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581859165.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581859168.jpg\"></p>', NULL, 1, 0, 1581859157, 1581859174, 14.90, 14.90, 10.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (20, '三只松鼠 坚果礼包红黄款礼盒 8袋装 1473g 坚果炒货水果干休闲零食组合装 包邮', 11, 13, NULL, 13, '[]', '[]', 0, 0, 'http://images.tinakj.com/upload/avatar1581864211.jpg', 100, 0, 0, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581864229.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581864233.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581864236.jpg\"></p>', NULL, 1, 0, 1581864222, 1581864245, 98.00, 98.00, 80.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (21, '洽洽 珍品夏威夷果仁休闲零食50g/袋 包邮', 11, 14, NULL, 14, '[]', '[]', 0, 0, 'http://images.tinakj.com/upload/avatar1581864733.jpg', 100, 0, 1, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581864744.jpg\"><img src=\"http://images.tinakj.com/upload/avatar1581864746.jpg\"><img src=\"http://images.tinakj.com/upload/avatar1581864749.jpg\"><img src=\"http://images.tinakj.com/upload/avatar1581864751.jpg\"><img src=\"http://images.tinakj.com/upload/avatar1581864753.jpg\"><img src=\"http://images.tinakj.com/upload/avatar1581864755.jpg\"></p>', NULL, 1, 0, 1581864739, 1581864758, 25.80, 25.80, 20.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (22, '洽洽 皇葵瓜子 坚果炒货休闲零食110g/袋 包邮', 11, 14, NULL, 14, '[]', '[]', 0, 0, 'http://images.tinakj.com/upload/avatar1581864924.jpg', 10, 0, 4, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581864955.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581864957.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581864959.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581864963.jpg\"></p>', NULL, 1, 0, 1581864951, 1581864973, 15.80, 15.80, 10.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (23, '【正品保障】Anna Sui/安娜苏独角兽筑梦天马女士淡香水30ml', 16, 17, NULL, 17, '[]', '[]', 0, 0, 'http://images.tinakj.com/upload/avatar1581865450.png', 100, 0, 0, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581865461.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581865463.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581865466.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581865468.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581865470.jpg\"></p>', NULL, 1, 0, 1581865457, 1581865480, 415.00, 415.00, 300.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (24, '珀莱雅全网火爆限量供应海盐泡泡面膜【包邮】', 16, 18, NULL, 18, '[]', '[]', 0, 0, 'http://images.tinakj.com/upload/avatar1581865595.jpg', 100, 0, 0, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581865609.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581865612.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581865614.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581865616.jpg\"></p>', NULL, 1, 0, 1581865602, 1581865625, 99.90, 99.90, 80.00, 1, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (25, '智利原装进口 浪琴慕莎 迷你小瓶干红葡萄酒187mL*6瓶礼品盒酒整箱包邮', 22, 23, NULL, 23, '[]', '[]', 0, 0, 'http://images.tinakj.com/upload/avatar1581865709.jpg', 100, 0, 0, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581865721.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581865723.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581865725.jpg\"></p>', NULL, 1, 0, 1581865715, 1581865730, 69.00, 69.00, 30.00, 0, '', 1, 0.00, 0, 0.00);
INSERT INTO `goods_common` VALUES (26, '【武夷原产 蜜甜醇和】八马茶叶 武夷金骏眉红茶罐装250g/罐 半斤装大分量包邮', 22, 25, NULL, 25, '[]', '[]', 0, 0, 'http://images.tinakj.com/upload/avatar1581865807.jpg', 1000, 0, 1, 0, '<p><img src=\"http://images.tinakj.com/upload/avatar1581865820.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581865823.jpg\"></p><p><img src=\"http://images.tinakj.com/upload/avatar1581865826.jpg\"></p>', NULL, 1, 0, 1581865816, 1581865830, 118.00, 118.00, 80.00, 0, '', 1, 0.00, 0, 0.00);

-- ----------------------------
-- Table structure for goods_images
-- ----------------------------
DROP TABLE IF EXISTS `goods_images`;
CREATE TABLE `goods_images`  (
  `id` int unsigned NOT NULL COMMENT '商品图片id',
  `goods_commonid` int unsigned NOT NULL COMMENT '商品id',
  `color_id` int unsigned NOT NULL COMMENT '颜色规格值id',
  `image_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品图片',
  `sort` tinyint unsigned NOT NULL COMMENT '排序',
  `is_default` tinyint unsigned NOT NULL COMMENT '默认主题，1是，0否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品图片' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_images
-- ----------------------------
INSERT INTO `goods_images` VALUES (1, 2, 0, 'http://images.tinakj.com/upload/avatar1581837880.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (2, 2, 0, 'http://images.tinakj.com/upload/avatar1581837929.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (3, 2, 0, 'http://images.tinakj.com/upload/avatar1581837940.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (4, 2, 0, 'http://images.tinakj.com/upload/avatar1581837949.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (5, 6, 0, 'http://images.tinakj.com/upload/avatar1581839386.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (6, 6, 0, 'http://images.tinakj.com/upload/avatar1581839522.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (7, 7, 0, 'http://images.tinakj.com/upload/avatar1581839916.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (8, 7, 0, 'http://images.tinakj.com/upload/avatar1581840009.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (9, 7, 0, 'http://images.tinakj.com/upload/avatar1581840019.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (10, 8, 0, 'http://images.tinakj.com/upload/avatar1581840176.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (11, 8, 0, 'http://images.tinakj.com/upload/avatar1581840243.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (12, 8, 0, 'http://images.tinakj.com/upload/avatar1581840255.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (13, 8, 0, 'http://images.tinakj.com/upload/avatar1581840265.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (14, 9, 0, 'http://images.tinakj.com/upload/avatar1581840841.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (15, 9, 0, 'http://images.tinakj.com/upload/avatar1581840948.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (16, 9, 0, 'http://images.tinakj.com/upload/avatar1581840953.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (17, 9, 0, 'http://images.tinakj.com/upload/avatar1581840957.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (18, 10, 0, 'http://images.tinakj.com/upload/avatar1581841192.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (19, 10, 0, 'http://images.tinakj.com/upload/avatar1581841275.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (20, 10, 0, 'http://images.tinakj.com/upload/avatar1581841278.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (21, 10, 0, 'http://images.tinakj.com/upload/avatar1581841281.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (22, 10, 0, 'http://images.tinakj.com/upload/avatar1581841284.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (27, 11, 0, 'http://images.tinakj.com/upload/avatar1581841500.png', 0, 0);
INSERT INTO `goods_images` VALUES (28, 11, 0, 'http://images.tinakj.com/upload/avatar1581841540.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (29, 11, 0, 'http://images.tinakj.com/upload/avatar1581841543.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (30, 11, 0, 'http://images.tinakj.com/upload/avatar1581841546.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (31, 12, 0, 'http://images.tinakj.com/upload/avatar1581857837.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (32, 12, 0, 'http://images.tinakj.com/upload/avatar1581857905.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (33, 12, 0, 'http://images.tinakj.com/upload/avatar1581857908.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (34, 13, 0, 'http://images.tinakj.com/upload/avatar1581858072.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (35, 13, 0, 'http://images.tinakj.com/upload/avatar1581858132.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (36, 13, 0, 'http://images.tinakj.com/upload/avatar1581858136.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (39, 15, 0, 'http://images.tinakj.com/upload/avatar1581858368.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (40, 15, 0, 'http://images.tinakj.com/upload/avatar1581858450.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (45, 16, 0, 'http://images.tinakj.com/upload/avatar1581858560.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (46, 16, 0, 'http://images.tinakj.com/upload/avatar1581858683.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (47, 16, 0, 'http://images.tinakj.com/upload/avatar1581858687.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (48, 16, 0, 'http://images.tinakj.com/upload/avatar1581858695.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (52, 17, 0, 'http://images.tinakj.com/upload/avatar1581858787.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (53, 17, 0, 'http://images.tinakj.com/upload/avatar1581858840.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (54, 17, 0, 'http://images.tinakj.com/upload/avatar1581858846.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (57, 18, 0, 'http://images.tinakj.com/upload/avatar1581858921.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (58, 18, 0, 'http://images.tinakj.com/upload/avatar1581858971.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (65, 19, 0, 'http://images.tinakj.com/upload/avatar1581859150.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (66, 19, 0, 'http://images.tinakj.com/upload/avatar1581859229.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (67, 20, 0, 'http://images.tinakj.com/upload/avatar1581864259.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (68, 20, 0, 'http://images.tinakj.com/upload/avatar1581864337.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (69, 21, 0, 'http://images.tinakj.com/upload/avatar1581864733.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (70, 21, 0, 'http://images.tinakj.com/upload/avatar1581864839.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (71, 22, 0, 'http://images.tinakj.com/upload/avatar1581864924.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (72, 22, 0, 'http://images.tinakj.com/upload/avatar1581864979.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (73, 22, 0, 'http://images.tinakj.com/upload/avatar1581864981.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (74, 23, 0, 'http://images.tinakj.com/upload/avatar1581865450.png', 0, 0);
INSERT INTO `goods_images` VALUES (75, 23, 0, 'http://images.tinakj.com/upload/avatar1581865485.png', 0, 0);
INSERT INTO `goods_images` VALUES (76, 23, 0, 'http://images.tinakj.com/upload/avatar1581865489.png', 0, 0);
INSERT INTO `goods_images` VALUES (77, 24, 0, 'http://images.tinakj.com/upload/avatar1581865595.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (78, 24, 0, 'http://images.tinakj.com/upload/avatar1581865629.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (79, 25, 0, 'http://images.tinakj.com/upload/avatar1581865709.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (80, 25, 0, 'http://images.tinakj.com/upload/avatar1581865735.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (81, 25, 0, 'http://images.tinakj.com/upload/avatar1581865738.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (82, 26, 0, 'http://images.tinakj.com/upload/avatar1581865807.jpg', 0, 0);
INSERT INTO `goods_images` VALUES (83, 26, 0, 'http://images.tinakj.com/upload/avatar1581865835.jpg', 0, 0);

-- ----------------------------
-- Table structure for goods_spec
-- ----------------------------
DROP TABLE IF EXISTS `goods_spec`;
CREATE TABLE `goods_spec`  (
  `id` int unsigned NOT NULL COMMENT '规格ID',
  `spec_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格名称',
  `sort` int(0) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品规格表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_spec
-- ----------------------------
INSERT INTO `goods_spec` VALUES (1, '颜色', 0);
INSERT INTO `goods_spec` VALUES (2, '重量', 0);

-- ----------------------------
-- Table structure for goods_spec_value
-- ----------------------------
DROP TABLE IF EXISTS `goods_spec_value`;
CREATE TABLE `goods_spec_value`  (
  `id` int unsigned NOT NULL COMMENT 'ID',
  `value_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规格值',
  `show_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spec_id` int unsigned COMMENT '规格ID',
  `category_id` int unsigned COMMENT '产品分类id',
  `sort` tinyint unsigned COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品规格值表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_spec_value
-- ----------------------------
INSERT INTO `goods_spec_value` VALUES (1, '3斤装', '3斤装', 2, NULL, 1);
INSERT INTO `goods_spec_value` VALUES (2, '5斤装', '5斤装', 2, NULL, 2);
INSERT INTO `goods_spec_value` VALUES (3, '8斤装', '8斤装', 2, NULL, 3);
INSERT INTO `goods_spec_value` VALUES (4, 'JJ级2斤装（28-30mm）', 'JJ级2斤装（28-30mm）', 2, NULL, 4);
INSERT INTO `goods_spec_value` VALUES (5, ' JJ级4斤装（28-30mm）', ' JJ级4斤装（28-30mm）', 2, NULL, 5);
INSERT INTO `goods_spec_value` VALUES (6, ' JJ级5斤装（28-30mm）', ' JJ级5斤装（28-30mm）', 2, NULL, 6);
INSERT INTO `goods_spec_value` VALUES (7, '4盒装（2.8-3斤）', '4盒装（2.8-3斤）', 2, NULL, 6);
INSERT INTO `goods_spec_value` VALUES (8, '6盒装（4.2-6.5斤）', '6盒装（4.2-6.5斤）', 2, NULL, 7);

-- ----------------------------
-- Table structure for http_log
-- ----------------------------
DROP TABLE IF EXISTS `http_log`;
CREATE TABLE `http_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp(0) DEFAULT NULL COMMENT '请求时间',
  `finish_at` timestamp(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '结束时间',
  `full_url` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '请求链接',
  `http_status` int(0) DEFAULT 0 COMMENT '请求状态',
  `response` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '返回参数',
  `request` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '请求参数',
  `ips` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '请求ip',
  `method` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '请求方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `member_id` int unsigned NOT NULL,
  `member_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '会员姓名',
  `member_mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '会员电话',
  `loginpwd` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录密码',
  `paypwd` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付密码',
  `auth_key` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '会员令牌',
  `invite_id` int(0) DEFAULT 0 COMMENT '推荐人',
  `openid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信openid',
  `member_avatar` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户头像',
  `grade` tinyint(0) DEFAULT 0 COMMENT '用户等级',
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '用户状态 1正常 0冻结',
  `create_time` int(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`member_id`) USING BTREE,
  INDEX `member_mobile`(`member_mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (58, '001号', '15869836012', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 'F9UVkR2rjCK2wmWqtZZnX3Zdt1IzjcXd', 57, NULL, 'http://images.tinakj.com/upload/avatar1567515778', 0, '1', 1567516057, 1567516057);
INSERT INTO `member` VALUES (64, 'aa', '123', 'd78ff0ef526543e2174540afdfea0154', 'd78ff0ef526543e2174540afdfea0154', 'I58E3U4v_pA9oLIi_xMGgwF1bMMW7_BN', 0, NULL, NULL, 0, '1', 1564804446, NULL);
INSERT INTO `member` VALUES (65, 'bb', '456', '1b4e689adc0aace535c9dcfec3b3c351', '1b4e689adc0aace535c9dcfec3b3c351', 'n5qQ_vyu0OaI54vuboc26OnhTOpG9OKX', 0, NULL, NULL, 0, '1', 1564804513, NULL);
INSERT INTO `member` VALUES (66, '毛毛', '15869836013', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 'hvXESoDDDCL0__2lL5CFK1KemR7BPgap', 0, NULL, NULL, 0, '1', NULL, NULL);

-- ----------------------------
-- Table structure for member_sms
-- ----------------------------
DROP TABLE IF EXISTS `member_sms`;
CREATE TABLE `member_sms`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话号码',
  `member_id` int(0) NOT NULL COMMENT '会员ID',
  `auth_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '短信/邮件验证码',
  `send_time` int unsigned NOT NULL COMMENT '短信/邮件验证码发送时间',
  `send_times` tinyint(0) NOT NULL DEFAULT 0 COMMENT '发送手机验证码次数',
  `expire_time` int(0) NOT NULL DEFAULT 0 COMMENT '有效时间',
  PRIMARY KEY (`id`, `member_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员短信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_common
-- ----------------------------
DROP TABLE IF EXISTS `order_common`;
CREATE TABLE `order_common`  (
  `id` int unsigned NOT NULL,
  `order_id` int(0) NOT NULL COMMENT '订单索引id',
  `shipping_time` int unsigned NOT NULL COMMENT '配送时间(发货时间)',
  `shipping_express_id` tinyint(1) NOT NULL DEFAULT 0 COMMENT '配送公司ID',
  `shipping_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '物流单号',
  `evaluation_time` int unsigned NOT NULL COMMENT '评价时间',
  `order_message` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单留言',
  `coupon_info` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '优惠券信息',
  `deliver_explain` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '发货备注',
  `daddress_id` mediumint(0) NOT NULL DEFAULT 0 COMMENT '发货地址ID',
  `reciver_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人姓名',
  `reciver_phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收货人电话',
  `reciver_info` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人其它信息',
  `reciver_province_id` mediumint unsigned NOT NULL COMMENT '收货人省级ID',
  `reciver_city_id` mediumint unsigned NOT NULL COMMENT '收货人市级ID',
  `invoice_info` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '发票信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ordersid`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单信息扩展表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_common
-- ----------------------------
INSERT INTO `order_common` VALUES (1, 1, 0, 0, NULL, 0, '', '[]', NULL, 0, '邓希同学', '15526464358', '{\"address_id\":\"3\",\"member_id\":\"58\",\"true_name\":\"邓希同学\",\"area_id\":\"2134\",\"city_id\":\"175\",\"province_id\":\"11\",\"area_info\":\"浙江 杭州市 上城区\",\"address\":\"阿里巴巴大厦1607\",\"tel_phone\":null,\"mob_phone\":\"15526464358\",\"is_default\":\"1\"}', 11, 175, '');

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '订单商品表索引id',
  `order_id` int(0) NOT NULL COMMENT '订单id',
  `goods_id` int(0) NOT NULL COMMENT '商品id',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `goods_price` decimal(10, 2) NOT NULL COMMENT '商品价格',
  `goods_num` smallint unsigned NOT NULL COMMENT '商品数量',
  `goods_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品图片',
  `buyer_id` int unsigned NOT NULL COMMENT '买家ID',
  `goods_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '1默认 2拼团',
  `promotions_id` mediumint unsigned NOT NULL COMMENT '促销活动ID（抢购ID/限时折扣ID/优惠套装ID）与goods_type搭配使用',
  `commis_rate` smallint unsigned NOT NULL COMMENT '佣金比例',
  `gc_id` mediumint unsigned NOT NULL COMMENT '商品最底级分类ID',
  `goods_spec` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品规格',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_goods
-- ----------------------------
INSERT INTO `order_goods` VALUES (1, 1, 21, '【露天】四川大凉山巧克力草莓 3斤 红颜草莓 自然生长无膨大剂 顺丰包邮 6盒装（4.2-6.5斤）', 149.00, 1, 'http://images.tinakj.com/upload/avatar1581841192.jpg', 58, '1', 0, 0, 7, '重量：6盒装（4.2-6.5斤）');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '订单索引id',
  `pay_sn` bigint unsigned NOT NULL COMMENT '支付单号',
  `buyer_id` int unsigned NOT NULL COMMENT '买家id',
  `buyer_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '买家姓名',
  `buyer_phone` bigint unsigned NOT NULL COMMENT '买家手机',
  `order_type` tinyint(0) DEFAULT 1 COMMENT '订单类型1普通订单(默认),2拼团订单,3秒杀订单,4门店自提订单',
  `order_state` tinyint(0) NOT NULL DEFAULT 1 COMMENT '订单状态：0(已取消)1(默认):未付款;2:已付款;3:已发货;4:已收货;',
  `order_amount` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '订单总价格',
  `goods_amount` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '商品总价格',
  `payment_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付方式',
  `shipping_fee` decimal(10, 2) UNSIGNED DEFAULT 0.00 COMMENT '运费',
  `pintuan_state` tinyint(0) DEFAULT 0 COMMENT '拼团状态 针对拼团订单 0未付款状态 1拼团中 2拼团完成 3拼团失败，4拼团失败退款完成',
  `join_order_id` int(0) DEFAULT 0 COMMENT '加入的拼团订单id 开团人为0',
  `evaluation_state` tinyint(0) DEFAULT 0 COMMENT '评价状态 0未评价，1已评价，2已过期未评价',
  `evaluation_again_state` tinyint unsigned NOT NULL COMMENT '追加评价状态 0未评价，1已评价，2已过期未评价',
  `refund_state` tinyint unsigned COMMENT '退款状态:0是无退款,1是部分退款,2是全部退款',
  `refund_amount` decimal(10, 2) DEFAULT 0.00 COMMENT '退款金额',
  `delete_state` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除状态0未删除1放入回收站2彻底删除',
  `payment_time` int unsigned COMMENT '支付(付款)时间',
  `shipping_time` int(0) DEFAULT 0 COMMENT '发货时间',
  `create_time` int unsigned NOT NULL COMMENT '订单生成时间',
  `finnshed_time` int unsigned NOT NULL COMMENT '订单完成时间',
  `trade_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '外部交易订单号',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 840635207515538058, 58, '001号', 15869836012, 1, 1, 149.00, 149.00, NULL, 0.00, 0, 0, 0, 0, 0, 0.00, 0, 0, 0, 1581863515, 0, NULL);

-- ----------------------------
-- Table structure for pintuan_activity
-- ----------------------------
DROP TABLE IF EXISTS `pintuan_activity`;
CREATE TABLE `pintuan_activity`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动名称',
  `intro` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pintuan_image` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '拼团活动图片',
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '1开启 0关闭',
  `update_time` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '拼团活动（拼团模块）1' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pintuan_activity
-- ----------------------------
INSERT INTO `pintuan_activity` VALUES (3, '拼出最低价', '拼出最低价', 'http://images.tinakj.com/upload/avatar1581866247.jpg', '1', 1581866261);

-- ----------------------------
-- Table structure for pintuan_goods
-- ----------------------------
DROP TABLE IF EXISTS `pintuan_goods`;
CREATE TABLE `pintuan_goods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `instance_id` int(0) NOT NULL COMMENT '拼团实例id',
  `goods_commonid` int(0) NOT NULL,
  `goods_id` int(0) NOT NULL,
  `pintuan_price` decimal(10, 2) NOT NULL COMMENT '拼团价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '拼团产品表 3' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pintuan_goods
-- ----------------------------
INSERT INTO `pintuan_goods` VALUES (1, 4, 2, 4, 120.00);
INSERT INTO `pintuan_goods` VALUES (2, 4, 2, 5, 220.00);
INSERT INTO `pintuan_goods` VALUES (3, 4, 2, 6, 310.00);
INSERT INTO `pintuan_goods` VALUES (4, 4, 9, 18, 78.00);
INSERT INTO `pintuan_goods` VALUES (5, 4, 9, 19, 148.00);
INSERT INTO `pintuan_goods` VALUES (6, 4, 13, 25, 22.90);
INSERT INTO `pintuan_goods` VALUES (7, 4, 15, 27, 29.80);

-- ----------------------------
-- Table structure for pintuan_instance
-- ----------------------------
DROP TABLE IF EXISTS `pintuan_instance`;
CREATE TABLE `pintuan_instance`  (
  `instance_id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '拼团活动标题',
  `image` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '图片',
  `start_time` int(0) NOT NULL COMMENT '拼团开始时间',
  `end_time` int(0) NOT NULL COMMENT '拼团结束时间',
  `trailer_time` int(0) DEFAULT NULL COMMENT '预告时间',
  `min_nums` tinyint(0) NOT NULL DEFAULT 2 COMMENT '最少开团人数',
  `time_limit` tinyint(0) DEFAULT 60 COMMENT '成团时间限制 在规定时间内完成拼团 否则全都失败 单位：分',
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '1开启 0关闭',
  `end_goods_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '活动结束后 1 产品变成普通产品 2 下架',
  `is_end` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '是否已经结束 1已结束 0未结束',
  `update_time` int(0) DEFAULT NULL,
  PRIMARY KEY (`instance_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '拼团活动实例 2' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pintuan_instance
-- ----------------------------
INSERT INTO `pintuan_instance` VALUES (4, '214两人一起拼', 'http://images.tinakj.com/upload/avatar1581777835.jpg', 1581777840, 1585584000, 1581609600, 2, 60, '1', '1', '0', 1581866391);

-- ----------------------------
-- Table structure for pintuan_member_order
-- ----------------------------
DROP TABLE IF EXISTS `pintuan_member_order`;
CREATE TABLE `pintuan_member_order`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `open_order_id` int(0) NOT NULL COMMENT '开团订单id',
  `order_id` int(0) DEFAULT NULL COMMENT '订单id',
  `member_id` int(0) NOT NULL,
  `member_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goods_id` int(0) NOT NULL COMMENT '开团的商品',
  `goods_num` tinyint(0) DEFAULT NULL,
  `open_goods_price` decimal(10, 2) DEFAULT NULL COMMENT '拼团产品价格',
  `is_open` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '是否为开团订单',
  `create_time` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '拼团会员订单5' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pintuan_open_order
-- ----------------------------
DROP TABLE IF EXISTS `pintuan_open_order`;
CREATE TABLE `pintuan_open_order`  (
  `open_order_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '开团订单id',
  `order_id` int(0) NOT NULL COMMENT '订单id',
  `open_member_id` int(0) NOT NULL COMMENT '开团会员id',
  `instance_id` int(0) DEFAULT NULL COMMENT '实例id',
  `goods_commonid` int(0) DEFAULT NULL,
  `goods_id` int(0) NOT NULL COMMENT '拼团产品',
  `start_time` int(0) NOT NULL COMMENT '开团时间',
  `end_time` int(0) DEFAULT NULL COMMENT '开团结束时间',
  `open_nums` tinyint(0) DEFAULT 2 COMMENT '开团需要的人数',
  `join_nums` tinyint(0) DEFAULT 1 COMMENT '参与拼团人数',
  `join_order_ids` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参与的订单id',
  `pay_state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '是否支付 0未支付 1已支付',
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '0拼团失败 1拼团中  2拼团成功 3拼团超时',
  `complete_time` int(0) DEFAULT NULL,
  PRIMARY KEY (`open_order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '拼团开团订单4' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for seckill_activity
-- ----------------------------
DROP TABLE IF EXISTS `seckill_activity`;
CREATE TABLE `seckill_activity`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动名称',
  `intro` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `seckill_image` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '秒杀活动图片',
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '1开启 0关闭',
  `update_time` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '秒杀活动/秒杀模块 1' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seckill_activity
-- ----------------------------
INSERT INTO `seckill_activity` VALUES (1, '手速秒杀', '手速秒杀', 'http://images.tinakj.com/upload/avatar1581866268.jpg', '1', 1581866282);

-- ----------------------------
-- Table structure for seckill_goods
-- ----------------------------
DROP TABLE IF EXISTS `seckill_goods`;
CREATE TABLE `seckill_goods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `instance_id` int(0) NOT NULL COMMENT '秒杀实例id',
  `goods_commonid` int(0) NOT NULL,
  `goods_id` int(0) NOT NULL,
  `seckill_price` decimal(10, 2) NOT NULL COMMENT '秒杀价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '秒杀产品表 3' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seckill_goods
-- ----------------------------
INSERT INTO `seckill_goods` VALUES (1, 3, 6, 10, 99.00);
INSERT INTO `seckill_goods` VALUES (2, 3, 6, 11, 199.00);
INSERT INTO `seckill_goods` VALUES (3, 3, 6, 12, 249.00);
INSERT INTO `seckill_goods` VALUES (4, 3, 17, 29, 59.90);
INSERT INTO `seckill_goods` VALUES (5, 3, 18, 30, 39.90);

-- ----------------------------
-- Table structure for seckill_instance
-- ----------------------------
DROP TABLE IF EXISTS `seckill_instance`;
CREATE TABLE `seckill_instance`  (
  `instance_id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '秒杀活动标题',
  `image` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '图片',
  `start_time` int(0) NOT NULL COMMENT '秒杀开始时间',
  `end_time` int(0) NOT NULL COMMENT '秒杀结束时间',
  `trailer_time` int(0) DEFAULT NULL COMMENT '预告时间',
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '1开启 0关闭',
  `end_goods_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '活动结束后 1 产品变成普通产品 2 下架',
  `is_end` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '是否已经结束 1已结束 0未结束',
  `update_time` int(0) DEFAULT NULL,
  PRIMARY KEY (`instance_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '秒杀活动实例 2' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seckill_instance
-- ----------------------------
INSERT INTO `seckill_instance` VALUES (3, '情人劫', 'http://images.tinakj.com/upload/avatar1581822883.jpg', 1581782400, 1585152000, 1581696000, '1', '1', '0', 1581866487);

-- ----------------------------
-- Table structure for sms_log
-- ----------------------------
DROP TABLE IF EXISTS `sms_log`;
CREATE TABLE `sms_log`  (
  `id` int unsigned NOT NULL COMMENT '记录ID',
  `mobile` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `captcha` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '短信验证码',
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求IP',
  `msg` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '短信内容',
  `type` tinyint unsigned NOT NULL COMMENT '短信类型:1为注册,2为登录,3为找回密码,默认为1',
  `res` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发送结果',
  `create_time` date NOT NULL COMMENT '添加时间',
  `member_id` int unsigned COMMENT '会员ID,注册为0',
  `member_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '会员名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '手机短信记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spec_type_group
-- ----------------------------
DROP TABLE IF EXISTS `spec_type_group`;
CREATE TABLE `spec_type_group`  (
  `id` int unsigned NOT NULL,
  `type_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分组名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '规格类型分组表（将规格分组）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spec_type_group
-- ----------------------------
INSERT INTO `spec_type_group` VALUES (1, '水果类');

-- ----------------------------
-- Table structure for type_spec
-- ----------------------------
DROP TABLE IF EXISTS `type_spec`;
CREATE TABLE `type_spec`  (
  `id` int unsigned NOT NULL,
  `type_id` int(0) NOT NULL DEFAULT 0 COMMENT '规格分组ID',
  `spec_id` int(0) DEFAULT 0 COMMENT '规格ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '规格类型表 (规格分组中对应的规格)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_spec
-- ----------------------------
INSERT INTO `type_spec` VALUES (2, 1, 2);

SET FOREIGN_KEY_CHECKS = 1;
